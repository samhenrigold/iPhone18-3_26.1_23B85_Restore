uint64_t sub_229575E64(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22A4DCCAC();
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
    sub_229573C10(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229576BD0(MEMORY[0x277D173F0], &unk_27D87CF28, &qword_22A577D60);
      goto LABEL_12;
    }

    sub_229577FD0(v10 + 1);
  }

  v12 = *v3;
  sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
  v13 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_27D87CF20, MEMORY[0x277D173F0], MEMORY[0x277D17400]);
      v21 = sub_22A4DD58C();
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_22957612C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22A4DB7DC();
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
    sub_229573F6C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229576BD0(MEMORY[0x277CC95F0], &qword_27D87CF40, &qword_22A577D70);
      goto LABEL_12;
    }

    sub_2295782EC(v10 + 1);
  }

  v12 = *v3;
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22A4DD58C();
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295763F4(uint64_t result, unint64_t a2, char a3)
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
    sub_2295742DC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576E08(&qword_27D87CF10, &qword_22A577D58);
      goto LABEL_12;
    }

    sub_229578608(v7 + 1);
  }

  v9 = *v3;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  result = sub_22A4DE7BC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AssertionHandle.Assertion(0);
    do
    {

      v12 = sub_22A4DB78C();

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
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

void *sub_2295765E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  v2 = *v0;
  v3 = sub_22A4DE19C();
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

  return result;
}

void *sub_22957673C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_22A4DE19C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_229579FEC(*(v13 + 48) + v28, v12, a4);
        result = sub_22957A0B4(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void *sub_229576944(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_229576A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  v2 = *v0;
  v3 = sub_22A4DE19C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22956C148(v18, *(&v18 + 1));
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

void *sub_229576BD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_22A4DE19C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
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
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
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

  return result;
}

void *sub_229576E08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_229576F48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_229577088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1AC();
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
      sub_22A4DE77C();

      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_2295772C0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
  result = sub_22A4DE1AC();
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
      sub_229579FEC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeDeviceEntity);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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
      result = sub_22957A0B4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeDeviceEntity);
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

uint64_t sub_2295775E4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFB8, &qword_22A577DD0);
  result = sub_22A4DE1AC();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
      v21 = *(v32 + 72);
      sub_229579FEC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeGroupEntity);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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
      result = sub_22957A0B4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeGroupEntity);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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

uint64_t sub_229577914(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_22A4DE77C();
      a4(v19);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }

  return result;
}

uint64_t sub_229577B54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
  result = sub_22A4DE1AC();
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      result = sub_22A4DD4EC();
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

uint64_t sub_229577D94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1AC();
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
      sub_22A4DE77C();
      sub_22956C148(v18, v19);
      sub_22A4DB63C();
      result = sub_22A4DE7BC();
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

uint64_t sub_229577FD0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22A4DCCAC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CF28, &qword_22A577D60);
  v7 = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
      result = sub_22A4DD4EC();
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

uint64_t sub_2295782EC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22A4DB7DC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  v7 = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
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

uint64_t sub_229578608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
  result = sub_22A4DE1AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_229578890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22A4DDECC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_229578A9C(void *a1)
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
    v6 = sub_22A4DE13C();

    if (v6)
    {
      v7 = sub_2295793BC(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for DemoAccessoryServer(0);
  v10 = sub_22A4DDECC();
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
    v15 = sub_22A4DDEDC();

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
    sub_229576F48(&unk_27D87CEB8, &qword_22A577D30);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_229579E4C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

id sub_229578C34()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  if (result)
  {
    return [result accessoryServerBrowser_didRemoveAccessoryServer_error_];
  }

  return result;
}

uint64_t sub_229578C84(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = a1;
    v14 = sub_22A4DE13C();

    if (v14)
    {
      v15 = sub_2295796D8(v12, v13, a4, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v26 = v5;
  sub_229562F68(0, a2, a3);
  v17 = sub_22A4DDECC();
  v18 = -1 << *(v9 + 32);
  v19 = v17 & ~v18;
  if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v9 + 48) + 8 * v19);
    v22 = sub_22A4DDEDC();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v26;
  v27 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229576F48(a4, a5);
    v24 = v27;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_229579E4C(v19);
  result = v25;
  *v26 = v27;
  return result;
}

uint64_t sub_229578E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_22A4DD4EC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_22A4DD58C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_229576BD0(MEMORY[0x277CC95F0], &qword_27D87CF40, &qword_22A577D70);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_229579928(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_229579104(uint64_t a1)
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

    v5 = sub_22A4DE13C();

    if (v5)
    {
      v6 = sub_229579514(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  v8 = sub_22A4DE7BC();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = sub_22A4DB78C();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229576E08(&qword_27D87CF10, &qword_22A577D58);
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_229579C30(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_2295793BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22A4DE0EC();
  v5 = swift_unknownObjectRetain();
  v6 = sub_229572298(v5, v4);
  v15 = v6;

  v7 = sub_22A4DDECC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for DemoAccessoryServer(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22A4DDEDC();

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
  sub_229579E4C(v9);
  result = sub_22A4DDEDC();
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

uint64_t sub_229579514(uint64_t a1, uint64_t a2)
{

  v3 = sub_22A4DE0EC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2295728C8(v4, v3);
  v13 = v5;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  sub_22A4DD4FC();
  v6 = sub_22A4DE7BC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_22A4DB78C();

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
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v8);
  sub_229579C30(v8);
  result = sub_22A4DB78C();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2295796D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = v6;

  v12 = sub_22A4DE0EC();
  v13 = swift_unknownObjectRetain();
  v14 = sub_2295724BC(v13, v12, a3, a4, a5, a6);
  v23 = v14;

  v15 = sub_22A4DDECC();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_229562F68(0, a5, a6);
    while (1)
    {
      v19 = *(*(v14 + 48) + 8 * v17);
      v20 = sub_22A4DDEDC();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
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

  v21 = *(*(v14 + 48) + 8 * v17);
  sub_229579E4C(v17);
  result = sub_22A4DDEDC();
  if (result)
  {
    *v11 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229579858(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2295798D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_229579928(int64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_22A4DE05C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_22A4DD4EC();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_229579C30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22A4DE05C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22A4DE77C();
        sub_22A4DB7DC();
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        sub_22A4DD4FC();
        v10 = sub_22A4DE7BC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_229579E4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22A4DE05C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22A4DDECC();

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

uint64_t sub_229579FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957A054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22957A0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22957A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v8 = *(a5 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer(0);
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer, MEMORY[0x277D85378]);
    sub_22A4DDBAC();
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = v34;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
    v9 = v8;
    swift_bridgeObjectRetain_n();
    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while (1)
      {
        v23 = v9;
        v24 = v22;
        v25 = sub_22A4DD5AC();
        v26 = sub_22A4DD5AC();
        v27 = [v24 matchesSetupID:v25 serverIdentifier:v26];

        if (v27)
        {
          break;
        }

        v12 = v20;
        v13 = v21;
        v9 = v23;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22A4DE12C())
        {
          type metadata accessor for DemoAccessoryServer(0);
          swift_dynamicCast();
          v22 = v29;
          v20 = v12;
          v21 = v13;
          if (v29)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_22953EE84(v23);

      (*(a6 + 16))(a6, 1, v24);
    }

    else
    {
LABEL_19:
      sub_22953EE84(v9);

      (*(a6 + 16))(a6, 0, 0);
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t HMMediaShuffleState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x697463656C6C6F43;
      }

      return 0x746C7561666564;
    }

    return 0x736D657449;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_22957A544()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x697463656C6C6F43;
      }

      return 0x746C7561666564;
    }

    return 0x736D657449;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_22957A5E0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87CFE0);
  __swift_project_value_buffer(v0, qword_27D87CFE0);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22957AC7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v10 = a1;
  v11 = [v10 cameraRecordingEventObserver];
  v12 = sub_22A4DB6AC();
  [v11 deleteCountersBefore:a4 & 1 date:v12];

  return (*(v7 + 8))(v9, v6);
}

HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory __swiftcall HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.cameraRecordingEventObserver = v2;
  result.super.isa = v1;
  return result;
}

void *sub_22957AE68(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 40) = 0x800000022A58A3A0;
      v6 = CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = v6;
      v7 = sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);

      return v7;
    }

LABEL_9:
    if (qword_27D87B8A8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v9 = sub_22A4DD07C();
  __swift_project_value_buffer(v9, qword_27D87CFE0);

  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v10, v11))
  {
LABEL_17:

    return 0;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  v13 = result;
  *v12 = 138412290;
  if (!v2)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_16:
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_229538000, v10, v11, "Failed to cast log event: %@ to CameraRecordingDailySummaryLogEvent", v12, 0xCu);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_22957B11C(uint64_t a1)
{
  sub_22A4DE18C();
  if (!*(a1 + 16) || (v2 = sub_2295402E8(v14), (v3 & 1) == 0))
  {
    sub_22954045C(v14);
    goto LABEL_7;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v2, v15);
  sub_22954045C(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27D87B8A8 != -1)
    {
      swift_once();
    }

    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D87CFE0);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing CameraRecordingEventDailySummaryLogEvent in serialized events";
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(type metadata accessor for CameraRecordingEventDailySummaryLogEvent());
  v5 = CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(0xD00000000000002BLL);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    result = swift_allocObject();
    *(result + 16) = xmmword_22A576190;
    *(result + 32) = v6;
    return result;
  }

  if (qword_27D87B8A8 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DD07C();
  __swift_project_value_buffer(v13, qword_27D87CFE0);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to create CameraRecordingEventDailySummaryLogEvent from dictionary";
LABEL_11:
    _os_log_impl(&dword_229538000, v9, v10, v12, v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_22957B390(unint64_t a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v31 = v5;
    v32 = result;
    v30 = a2;
    if (!v9)
    {
      goto LABEL_15;
    }

    if (v9 < 1)
    {
      __break(1u);
      return result;
    }

    v10 = v8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    a2 = (a1 + 32);
    a1 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    v11 = 0;
    v5 = 0;
    v12 = 0;
    v23 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions;
    v8 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads;
    v24 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds;
    while (1)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        v25 = *(result + v23);
        v14 = __OFADD__(v12, v25);
        v12 += v25;
        if (v14)
        {
          goto LABEL_27;
        }

        v26 = *(result + v8);
        v14 = __OFADD__(v5, v26);
        v5 += v26;
        if (v14)
        {
          goto LABEL_28;
        }

        v27 = *(result + v24);
        v14 = __OFADD__(v11, v27);
        v11 += v27;
        if (v14)
        {
          break;
        }
      }

      ++a2;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v28 = result;
    v9 = sub_22A4DE0EC();
    result = v28;
  }

  v11 = 0;
  v5 = 0;
  v12 = 0;
  a2 = 0;
  while (1)
  {
    MEMORY[0x22AAD13F0](a2, a1);
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v13 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions);
    v14 = __OFADD__(v12, v13);
    v12 += v13;
    if (v14)
    {
      goto LABEL_25;
    }

    v15 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads);
    v14 = __OFADD__(v5, v15);
    v5 += v15;
    if (v14)
    {
      goto LABEL_26;
    }

    v8 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds);
    swift_unknownObjectRelease();
    v14 = __OFADD__(v11, v8);
    v11 += v8;
    if (v14)
    {
      break;
    }

LABEL_8:
    a2 = (a2 + 1);
    if (v9 == a2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  v10 = v8;
  v11 = 0;
  v5 = 0;
  v12 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22A576190;
  v17 = v31;
  v18 = v32;
  (*(v31 + 16))(v10, v30, v32);
  v19 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v12;
  *&v20[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v5;
  *&v20[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v11;
  v20[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 1;
  v21 = sub_22A4DB77C();
  v33.receiver = v20;
  v33.super_class = v19;
  v22 = objc_msgSendSuper2(&v33, sel_initWithHomeUUID_, v21);

  (*(v17 + 8))(v10, v18);
  *(v16 + 32) = v22;
  return v16;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22957B74C()
{
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask))
  {

    sub_22A4DDA7C();
  }

  sub_22957F360(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_home);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s8ObserverCMa(uint64_t a1)
{
  result = qword_27D87D0A0;
  if (!qword_27D87D0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22957B88C(uint64_t a1)
{
  result = _s20ControlBlockInternalVMa(319);
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

uint64_t sub_22957B95C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v6, &unk_27D881FF0, &qword_22A57A380);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_22957F2F8(v6, v13 + v12, &unk_27D881FF0, &qword_22A57A380);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask) = sub_22957F3C0(0, 0, v9, &unk_22A577F70, v13);
}

uint64_t sub_22957BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E0, &qword_22A577F78);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F450, &qword_22A577F80);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22957BCA8, 0, 0);
}

uint64_t sub_22957BCA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[14];
    v5 = v0[15];
    v6 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_adapter);

    (*(v5 + 16))(v2, v6 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_events, v4);

    (*(v5 + 32))(v3, v2, v4);
    sub_22A4DDA3C();
    swift_beginAccess();
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_22957BE80;
    v8 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22957BE80()
{

  return MEMORY[0x2822009F8](sub_22957BF7C, 0, 0);
}

uint64_t sub_22957BF7C()
{
  v1 = v0[8];
  v0[19] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_22957C090, Strong, 0);
    }
  }

  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22957C090()
{
  sub_22957C1B0(*(v0 + 80), *(v0 + 152));

  return MEMORY[0x2822009F8](sub_22957C0FC, 0, 0);
}

uint64_t sub_22957C0FC()
{
  v1 = v0[19];

  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_22957BE80;
  v3 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v3);
}

void sub_22957C1B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v42 = a1;
  v38 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0F0, &qword_22A577F88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = _s13MicroLocationO5EventVMa(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = v8;
    v22 = Strong;
    sub_22957C7A8(v22, a2, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_22953EAE4(v13, &qword_27D87D0F0, &qword_22A577F88);
    }

    else
    {
      v36 = v22;
      sub_22957F290(v13, v20, _s13MicroLocationO5EventVMa);
      v23 = v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock;
      swift_beginAccess();
      if (v23[*(_s20ControlBlockInternalVMa(0) + 20)])
      {
        sub_229541CB0(v38, &off_283CDCC10);
        sub_22957F228(v20, v18, _s13MicroLocationO5EventVMa);

        v24 = sub_22A4DD05C();
        v25 = sub_22A4DDCDC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v44[0] = v38;
          *v26 = 136315394;
          *(v26 + 4) = sub_2295A3E30(*(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description), *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description + 8), v44);
          *(v26 + 12) = 2080;
          v27 = sub_229890C50();
          v29 = v28;
          sub_22957F360(v18, _s13MicroLocationO5EventVMa);
          v30 = sub_2295A3E30(v27, v29, v44);

          *(v26 + 14) = v30;
          _os_log_impl(&dword_229538000, v24, v25, "%s received event %s", v26, 0x16u);
          v31 = v38;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v31, -1, -1);
          MEMORY[0x22AAD4E50](v26, -1, -1);
        }

        else
        {

          sub_22957F360(v18, _s13MicroLocationO5EventVMa);
        }

        (*(v37 + 8))(v10, v7);
        v32 = v36;
        v44[3] = v14;
        v44[4] = sub_22957F17C(&qword_27D87D0F8, _s13MicroLocationO5EventVMa, &unk_22A57C424);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
        sub_22957F228(v20, boxed_opaque_existential_1, _s13MicroLocationO5EventVMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
        sub_22957F1C4(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v34 = v39;
        sub_22A4DDA0C();

        (*(v40 + 8))(v34, v41);
        sub_22957F360(v20, _s13MicroLocationO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        sub_22957F360(v20, _s13MicroLocationO5EventVMa);
      }
    }
  }
}

uint64_t sub_22957C7A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v187 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v172 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v173 = &v162 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v9 - 8);
  v195 = &v162 - v10;
  v11 = _s21EventMetadataInternalV6DeviceVMa(0);
  v196 = *(v11 - 8);
  v197 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v182 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v179 = &v162 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v162 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v170 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v171 = &v162 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v181 = &v162 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v185 = &v162 - v26;
  MEMORY[0x28223BE20](v25);
  v184 = (&v162 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v28 - 8);
  v192 = &v162 - v29;
  v30 = sub_22A4DB7DC();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v201 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v180 = &v162 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v183 = &v162 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v162 - v38;
  v176 = _s21EventMetadataInternalV4HomeVMa(0);
  MEMORY[0x28223BE20](v176);
  v193 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22A4DB74C();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v194 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = _s21EventMetadataInternalVMa(0);
  MEMORY[0x28223BE20](v174);
  v175 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s13MicroLocationO5EventVMa(0);
  v186 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204[1] = a2;
  v49 = *(v46 + 20);
  v202 = v31;
  v203 = v30;
  v50 = *(v31 + 56);
  v188 = v49;
  v190 = v50;
  v191 = v31 + 56;
  v50(&v48[v49], 1, 1, v30);
  v51 = *(v45 + 24);
  v178 = v42;
  v53 = *(v42 + 56);
  v52 = v42 + 56;
  v198 = v48;
  v169 = v53;
  v53(&v48[v51], 1, 1, v41);
  v54 = [a1 currentDevice];
  if (!v54)
  {
    goto LABEL_6;
  }

  v189 = v54;
  v177 = [a1 currentUser];
  if (!v177)
  {

    a1 = v189;
LABEL_6:

    v57 = v198;
    sub_22953EAE4(&v198[v188], &qword_27D87CBF0, &qword_22A577898);
    sub_22953EAE4(v57 + v51, &qword_27D87D100, &unk_22A583B00);
    return (*(v186 + 56))(v187, 1, 1, v45);
  }

  v168 = v45;
  v55 = [a1 homeManager];
  v165 = v41;
  if (v55)
  {
    v56 = v55;
    v167 = [v55 isThisDesignatedFMFDevice];
  }

  else
  {
    v167 = 0;
  }

  sub_22A4DB71C();
  v59 = [a1 uuid];
  sub_22A4DB79C();

  v60 = [a1 users];
  v166 = a2;
  if (!v60)
  {
    goto LABEL_13;
  }

  v61 = v60;
  sub_229562F68(0, &qword_281401790, off_278666348);
  v62 = sub_22A4DD83C();

  if (v62 >> 62)
  {
    goto LABEL_81;
  }

  v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (1)
  {
    if (HIDWORD(v63))
    {
      __break(1u);
LABEL_13:
      LODWORD(v63) = 1;
    }

    v164 = v52;
    v162 = a1;
    v65 = v202;
    v64 = v203;
    v66 = v193;
    v199 = *(v202 + 32);
    v200 = v202 + 32;
    v199(v193, v39, v203);
    *(v66 + *(v176 + 20)) = v63;
    v67 = [v189 identifier];
    v68 = v183;
    sub_22A4DB79C();

    v69 = v184;
    v70 = v190;
    v190(v184, 1, 1, v64);
    v71 = v197;
    v72 = v197[5];
    v70(&v17[v72], 1, 1, v64);
    v73 = &v17[v71[9]];
    v74 = *(v65 + 16);
    *v73 = 0;
    v73[1] = 0;
    v176 = v74;
    v74(v17, v68, v64);
    v39 = &unk_27D87D2A0;
    v75 = v69;
    v76 = v185;
    sub_229564F88(v75, v185, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(&v17[v72], &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v76, &v17[v72], &unk_27D87D2A0, &unk_22A578BD0);
    v17[v71[6]] = 1;
    v17[v71[7]] = v167;
    v17[v71[8]] = 0;
    v77 = MobileGestalt_get_current_device();
    if (!v77)
    {
      break;
    }

    v78 = v77;
    v79 = MobileGestalt_copy_deviceColor_obj();

    v163 = v51;
    if (v79)
    {
      v80 = sub_22A4DD5EC();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    sub_22953EAE4(v184, &unk_27D87D2A0, &unk_22A578BD0);
    v83 = v203;
    v52 = v202 + 8;
    v184 = *(v202 + 8);
    (v184)(v183, v203);
    *v73 = v80;
    v73[1] = v82;
    v84 = v192;
    sub_22957F290(v17, v192, _s21EventMetadataInternalV6DeviceVMa);
    v85 = v197;
    v86 = *(v196 + 56);
    v196 += 56;
    v183 = v86;
    (v86)(v84, 0, 1, v197);
    v87 = [v189 identifier];
    v88 = v180;
    sub_22A4DB79C();

    v89 = v181;
    v90 = v190;
    v190(v181, 1, 1, v83);
    v39 = v85[5];
    v91 = v182;
    v90(v182 + v39, 1, 1, v83);
    v92 = (v91 + v85[9]);
    *v92 = 0;
    v92[1] = 0;
    (v176)(v91, v88, v83);
    v93 = v185;
    sub_229564F88(v89, v185, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v91 + v39, &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v93, v91 + v39, &unk_27D87D2A0, &unk_22A578BD0);
    *(v91 + v85[6]) = 1;
    *(v91 + v85[7]) = v167;
    *(v91 + v85[8]) = 0;
    v94 = MobileGestalt_get_current_device();
    if (!v94)
    {
      goto LABEL_86;
    }

    v95 = v94;
    v96 = MobileGestalt_copy_deviceColor_obj();

    v51 = v201;
    v97 = v175;
    if (v96)
    {
      v98 = sub_22A4DD5EC();
      v100 = v99;
    }

    else
    {
      v98 = 0;
      v100 = 0;
    }

    sub_22953EAE4(v181, &unk_27D87D2A0, &unk_22A578BD0);
    (v184)(v180, v203);
    *v92 = v98;
    v92[1] = v100;
    sub_22957F290(v182, v179, _s21EventMetadataInternalV6DeviceVMa);
    v101 = v177;
    v39 = [v177 uuid];
    v102 = v195;
    sub_22A4DB79C();

    v103 = [v101 privilege];
    if (!HIDWORD(v103))
    {
      v104 = v103;
      v105 = _s21EventMetadataInternalV4UserVMa(0);
      *&v102[*(v105 + 20)] = v104;
      v106 = *(*(v105 - 8) + 56);
      v106(v195, 0, 1, v105);
      *v97 = 1;
      v107 = v174;
      sub_22A4DB7CC();
      v108 = v107[9];
      (v183)(v97 + v108, 1, 1, v197);
      v52 = v107[11];
      v109 = v105;
      v96 = v179;
      v106((v97 + v52), 1, 1, v109);
      *(v97 + 8) = 0xD000000000000013;
      *(v97 + 16) = 0x800000022A58A4C0;
      v110 = v165;
      (*(v178 + 16))(v97 + v107[7], v194, v165);
      sub_22957F228(v193, v97 + v107[8], _s21EventMetadataInternalV4HomeVMa);
      v39 = v195;
      sub_229564B7C(v192, v97 + v108, &qword_27D87CBE8, &qword_22A577890);
      sub_22957F228(v96, v97 + v107[10], _s21EventMetadataInternalV6DeviceVMa);
      sub_229564B7C(v39, v97 + v52, &qword_27D87CBE0, &unk_22A577880);
      v111 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
      [v111 systemUptime];
      v113 = v112;

      v114 = v113 * 1000.0;
      if (COERCE__INT64(fabs(v113 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v114 > -1.0)
        {
          if (v114 < 1.84467441e19)
          {
            *(v97 + v107[12]) = v114;
            v115 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
            [v115 timeIntervalSince1970];
            v117 = v116;

            sub_22953EAE4(v39, &qword_27D87CBE0, &unk_22A577880);
            sub_22957F360(v96, _s21EventMetadataInternalV6DeviceVMa);
            sub_22953EAE4(v192, &qword_27D87CBE8, &qword_22A577890);
            sub_22957F360(v193, _s21EventMetadataInternalV4HomeVMa);
            (*(v178 + 8))(v194, v110);
            v118 = v117 * 1000.0;
            if (COERCE__INT64(fabs(v117 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v118 > -1.0)
              {
                if (v118 < 1.84467441e19)
                {
                  *(v97 + v107[13]) = v118;
                  v119 = v198;
                  sub_22957F290(v97, v198, _s21EventMetadataInternalVMa);
                  v120 = v166;
                  v121 = [v166 requestIdentifier];
                  if (v121)
                  {
                    v122 = v170;
                    v123 = v121;
                    sub_22A4DB79C();

                    v124 = 0;
                    v125 = v172;
                    v126 = v171;
                  }

                  else
                  {
                    v124 = 1;
                    v125 = v172;
                    v126 = v171;
                    v122 = v170;
                  }

                  v127 = 1;
                  v190(v122, v124, 1, v203);
                  sub_22957F2F8(v122, v126, &unk_27D87D2A0, &unk_22A578BD0);
                  v128 = v188;
                  sub_22953EAE4(v119 + v188, &qword_27D87CBF0, &qword_22A577898);
                  sub_22957F2F8(v126, v119 + v128, &unk_27D87D2A0, &unk_22A578BD0);
                  v129 = [v120 time];
                  if (v129)
                  {
                    v130 = v129;
                    sub_22A4DB70C();

                    v127 = 0;
                  }

                  v131 = v173;
                  v169(v125, v127, 1, v110);
                  sub_22957F2F8(v125, v131, &unk_27D881AA0, &qword_22A57BC20);
                  v132 = v163;
                  sub_22953EAE4(v119 + v163, &qword_27D87D100, &unk_22A583B00);
                  sub_22957F2F8(v131, v119 + v132, &unk_27D881AA0, &qword_22A57BC20);
                  v52 = &off_281891ED8;
                  v39 = off_281891F18[0];
                  v97 = sub_229562F68(0, &qword_27D87F410, 0x277D287F0);
                  v133 = (v39)(v97, &off_281891ED8);
                  v96 = v133;
                  if (!(v133 >> 62))
                  {
                    v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    goto LABEL_36;
                  }

                  goto LABEL_75;
                }

                goto LABEL_74;
              }

              goto LABEL_73;
            }

            goto LABEL_72;
          }

          goto LABEL_71;
        }

        goto LABEL_70;
      }

      goto LABEL_69;
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      v134 = sub_22A4DE0EC();
LABEL_36:
      a1 = MEMORY[0x277D84F90];
      v197 = v97;
      if (!v134)
      {
        break;
      }

      v204[0] = MEMORY[0x277D84F90];
      sub_229583374(0, v134 & ~(v134 >> 63), 0);
      if (v134 < 0)
      {
        goto LABEL_83;
      }

      v52 = 0;
      v97 = v204[0];
      while (1)
      {
        v135 = (v96 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0](v52, v96) : *(v96 + 8 * v52 + 32);
        v136 = v135;
        v137 = [v135 confidenceReasonEnum];

        if (HIDWORD(v137))
        {
          break;
        }

        v204[0] = v97;
        v139 = *(v97 + 16);
        v138 = *(v97 + 24);
        v39 = v139 + 1;
        if (v139 >= v138 >> 1)
        {
          sub_229583374((v138 > 1), v139 + 1, 1);
          v97 = v204[0];
        }

        ++v52;
        *(v97 + 16) = v39;
        *(v97 + 4 * v139 + 32) = v137;
        v51 = v201;
        if (v134 == v52)
        {

          v52 = &off_281891ED8;
          goto LABEL_48;
        }
      }

      __break(1u);
    }

    v97 = MEMORY[0x277D84F90];
LABEL_48:
    v140 = v168;
    v141 = v197;
    v17 = v198;
    *&v198[v168[7]] = v97;
    (*(v52 + 0x48))(v141, v52);

    v204[0] = sub_22957EE00(v142);
    sub_22957E0FC(v204);

    v39 = v204[0];
    if (v204[0] < 0 || (v204[0] & 0x4000000000000000) != 0)
    {
      v143 = sub_22A4DE0EC();
      if (v143)
      {
LABEL_51:
        v204[0] = a1;
        v201 = v143 & ~(v143 >> 63);
        sub_22958345C(0, v201, 0);
        if (v143 < 0)
        {
          goto LABEL_84;
        }

        v144 = 0;
        v145 = v204[0];
        v146 = v39 & 0xC000000000000001;
        do
        {
          if (v146)
          {
            v147 = MEMORY[0x22AAD13F0](v144, v39);
          }

          else
          {
            v147 = *(v39 + 8 * v144 + 32);
          }

          v148 = v147;
          v149 = [v147 identifier];
          sub_22A4DB79C();

          v204[0] = v145;
          v151 = *(v145 + 16);
          v150 = *(v145 + 24);
          if (v151 >= v150 >> 1)
          {
            sub_22958345C((v150 > 1), v151 + 1, 1);
            v145 = v204[0];
          }

          ++v144;
          *(v145 + 16) = v151 + 1;
          v199(v145 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v151, v51, v203);
        }

        while (v143 != v144);
        *&v198[v168[8]] = v145;
        v204[0] = a1;
        sub_229583354(0, v201, 0);
        v152 = 0;
        a1 = v204[0];
        do
        {
          if (v146)
          {
            v153 = MEMORY[0x22AAD13F0](v152, v39);
          }

          else
          {
            v153 = *(v39 + 8 * v152 + 32);
          }

          v154 = v153;
          v155 = [v153 score];
          sub_22A4DDB4C();
          v157 = v156;

          v204[0] = a1;
          v52 = a1[2];
          v158 = a1[3];
          if (v52 >= v158 >> 1)
          {
            sub_229583354((v158 > 1), v52 + 1, 1);
            a1 = v204[0];
          }

          ++v152;
          a1[2] = v52 + 1;
          *(a1 + v52 + 8) = v157;
        }

        while (v143 != v152);

        v140 = v168;
        v17 = v198;
        goto LABEL_78;
      }
    }

    else
    {
      v143 = *(v204[0] + 16);
      if (v143)
      {
        goto LABEL_51;
      }
    }

    *&v17[v140[8]] = a1;
LABEL_78:
    *&v17[v140[9]] = a1;
    v159 = v166;
    v160 = [v166 confidence];

    if (!HIDWORD(v160))
    {
      *&v17[v140[10]] = v160;
      v161 = v187;
      sub_22957F228(v17, v187, _s13MicroLocationO5EventVMa);
      (*(v186 + 56))(v161, 0, 1, v140);
      return sub_22957F360(v17, _s13MicroLocationO5EventVMa);
    }

    __break(1u);
LABEL_81:
    v63 = sub_22A4DE0EC();

    if ((v63 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22957DDF0()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_22957DE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock;
  swift_beginAccess();
  return sub_22957F228(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

uint64_t sub_22957DF40()
{
  v1 = *(*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description);

  return v1;
}

uint64_t sub_22957DF9C(uint64_t a1)
{
  *(a1 + 16) = sub_22957F17C(&qword_27D87D0B0, _s8ObserverCMa, &unk_22A577EB8);
  result = sub_22957F17C(&qword_27D87D0B8, _s8ObserverCMa, &unk_22A577F34);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22957E020(uint64_t a1)
{
  result = sub_22957F17C(&qword_27D87D0B8, _s8ObserverCMa, &unk_22A577F34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22957E078(uint64_t a1)
{
  *(a1 + 8) = sub_22957F17C(&qword_27D87D0C0, _s8ObserverCMa, &unk_22A577EE0);
  result = sub_22957F17C(&qword_27D87D0C8, _s8ObserverCMa, &unk_22A577EFC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22957E0FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_229669DB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22957E178(v6);
  return sub_22A4DE28C();
}

void sub_22957E178(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22A4DE5BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_229562F68(0, &qword_27D87D108, 0x277D287E8);
        v6 = sub_22A4DD86C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22957E3B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22957E28C(0, v2, 1, a1);
  }
}

void sub_22957E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v19 = a3;
    v7 = *(v4 + 8 * a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 score];
      v12 = [v10 score];
      v13 = [v11 compare_];

      if (v13 != 1)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 8;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v14;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22957E3B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_229668AF0(v5);
    }

    v95 = *(v5 + 2);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v95 - 1);
        v97 = *&v5[16 * v95];
        v98 = *&v5[16 * v95 + 24];
        sub_22957EAB8((v96 + 8 * v97), (v96 + 8 * *&v5[16 * v95 + 16]), (v96 + 8 * v98), v10);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_229668AF0(v5);
        }

        if (v95 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v5[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        sub_229668A64(v95 - 1);
        v95 = *(v5 + 2);
        v7 = a3;
      }

      while (v95 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v104 = v6;
      v108 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v14 = *v13;
      v5 = (v13 + 2);
      v15 = *(*v7 + 8 * v12);
      v16 = v14;
      v17 = [v15 score];
      v18 = [v16 score];
      v112 = [v17 compare_];

      v102 = v11;
      v19 = v11 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v19)
        {
          break;
        }

        v20 = v10;
        v21 = *(v5 - 1);
        v22 = *v5;
        v23 = v21;
        v24 = [v22 score];
        v25 = [v23 score];
        v26 = [v24 compare_];

        v27 = v26 == 1;
        v10 = v20;
        v28 = !v27;
        ++v19;
        v5 += 8;
        if ((((v112 == 1) ^ v28) & 1) == 0)
        {
          v12 = v19 - 1;
          break;
        }
      }

      v11 = v102;
      v6 = v104;
      v7 = a3;
      v29 = v108;
      if (v112 == 1)
      {
        if (v12 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v12)
        {
          v30 = 8 * v12 - 8;
          v31 = v12;
          v32 = v102;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v29);
              *(v34 + v29) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = v7[1];
    if (v12 < v35)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v36 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v36 >= v35)
        {
          v36 = v7[1];
        }

        if (v36 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v36)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22958A414(0, *(v10 + 2) + 1, 1, v10);
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v10 = sub_22958A414((v49 > 1), v50 + 1, 1, v10);
    }

    *(v10 + 2) = v51;
    v52 = &v10[16 * v50];
    *(v52 + 4) = v11;
    *(v52 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v114 = v12;
    if (v50)
    {
      while (1)
      {
        v53 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v10 + 4);
          v55 = *(v10 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_58:
          if (v57)
          {
            goto LABEL_105;
          }

          v70 = &v10[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_108;
          }

          v76 = &v10[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_112;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v80 = &v10[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_107;
        }

        v83 = &v10[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        v91 = v53 - 1;
        if (v53 - 1 >= v51)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v92 = *&v10[16 * v91 + 32];
        v93 = *&v10[16 * v53 + 40];
        sub_22957EAB8((*v7 + 8 * v92), (*v7 + 8 * *&v10[16 * v53 + 32]), (*v7 + 8 * v93), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v93 < v92)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_229668AF0(v10);
        }

        if (v91 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v94 = &v10[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        sub_229668A64(v53);
        v51 = *(v10 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v10[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_103;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_104;
      }

      v65 = &v10[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_106;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_109;
      }

      if (v69 >= v61)
      {
        v87 = &v10[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v114;
    if (v114 >= v8)
    {
      goto LABEL_89;
    }
  }

  v100 = v10;
  v103 = v11;
  v105 = v6;
  v37 = *v7;
  v38 = *v7 + 8 * v12 - 8;
  v39 = v11 - v12;
  v109 = v36;
LABEL_31:
  v111 = v38;
  v113 = v12;
  v40 = *(v37 + 8 * v12);
  v41 = v39;
  while (1)
  {
    v42 = *v38;
    v43 = v40;
    v44 = v42;
    v5 = [v43 score];
    v45 = [v44 score];
    v46 = [v5 compare_];

    if (v46 != 1)
    {
LABEL_30:
      v12 = v113 + 1;
      v38 = v111 + 8;
      --v39;
      if (v113 + 1 != v109)
      {
        goto LABEL_31;
      }

      v12 = v109;
      v11 = v103;
      v6 = v105;
      v7 = a3;
      v10 = v100;
      goto LABEL_38;
    }

    if (!v37)
    {
      break;
    }

    v47 = *v38;
    v40 = *(v38 + 8);
    *v38 = v40;
    *(v38 + 8) = v47;
    v38 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_22957EAB8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v25;
    }

    v24 = a2;
    v41 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v40 = v14;
      v38 = v5;
LABEL_27:
      __dst = v24;
      v26 = v24 - 1;
      --v4;
      v27 = v41;
      do
      {
        v28 = v4 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        v34 = [v32 score];
        v35 = [v33 score];
        v36 = [v34 compare_];

        if (v36 == 1)
        {
          if (v28 != __dst)
          {
            *v4 = *v30;
          }

          v14 = v40;
          if (v41 <= v40 || (v24 = v30, v30 <= v38))
          {
            v24 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v41)
        {
          *v4 = *v27;
        }

        --v4;
        v41 = v27;
        v26 = v30;
      }

      while (v27 > v40);
      v41 = v27;
      v14 = v40;
      v24 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v41 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 score];
        v20 = [v18 score];
        v21 = [v19 compare_];

        if (v21 != 1)
        {
          break;
        }

        v22 = v15;
        v23 = v5 == v15++;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v41 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v22 = v14;
      v23 = v5 == v14++;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v24 = v5;
  }

LABEL_38:
  if (v24 != v14 || v24 >= (v14 + ((v41 - v14 + (v41 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v14, 8 * (v41 - v14));
  }

  return 1;
}

unint64_t sub_22957EE00(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22A4DE0EC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_229716310();
  sub_2296F3BA0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22957EE94(uint64_t a1)
{
  v2 = _s20ControlBlockInternalVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5 = swift_allocObject();
  if (qword_27D87B950 != -1)
  {
    swift_once();
  }

  *(v5 + 16) = qword_27D8AB730;
  v6 = qword_27D87B940;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v5 + 24) = qword_27D8AB720;
  *(v1 + 112) = v5 | 0x4000000000000000;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask) = 0;
  v7 = (v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description);
  *v7 = 0xD000000000000036;
  v7[1] = 0x800000022A58A480;
  swift_unknownObjectWeakAssign();

  sub_22A4DB7CC();
  v4[*(v2 + 20)] = 0;
  sub_22957F290(v4, v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock, _s20ControlBlockInternalVMa);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_adapter) = [objc_allocWithZone(_s7AdapterCMa(0)) init];
  return v1;
}

uint64_t sub_22957F078(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22957BB68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22957F17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22957F1C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22957F228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957F290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957F2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22957F360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22957F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_229569C24(a3, v25 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22A4DD8CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22A4DD67C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22957F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_229569C24(a3, v25 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22A4DD8CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22A4DD67C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D150, &qword_22A578068);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D150, &qword_22A578068);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22957F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_229569C24(a3, v25 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22A4DD8CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22A4DD67C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id static AddACWGKeysToExistingHomesOperation.predicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AddACWGKeysToExistingHomesOperation.main()()
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = [v0 homeManager];
  v37 = v10;
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DBD4C();

  if (!v1)
  {
    v11 = v36[1];
    v12 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
    swift_beginAccess();
    v13 = *&v0[v12];
    v29 = v13;
    v14 = [v11 homes];
    if (!v14)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v15 = v14;
    v31 = v9;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v16 = sub_22A4DD83C();

    if (v16 >> 62)
    {
      goto LABEL_18;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v13;
    if (v17)
    {
      while (1)
      {
        v27 = ObjectType;
        v28 = v11;
        v33 = v4;
        v37 = MEMORY[0x277D84F90];
        sub_2295834A0(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          break;
        }

        v18 = 0;
        v13 = v37;
        v19 = v16;
        v11 = (v16 & 0xC000000000000001);
        v32 = v16 & 0xFFFFFFFFFFFFFF8;
        v34 = v16;
        while (1)
        {
          ObjectType = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v11)
          {
            v20 = MEMORY[0x22AAD13F0](v18, v19);
          }

          else
          {
            if (v18 >= *(v32 + 16))
            {
              goto LABEL_17;
            }

            v20 = *(v19 + 8 * v18 + 32);
          }

          v21 = v20;
          v36[0] = v20;
          sub_2295801C0(v36, &v35, v6);

          v37 = v13;
          v4 = v13[2];
          v22 = v13[3];
          v16 = v4 + 1;
          if (v4 >= v22 >> 1)
          {
            sub_2295834A0((v22 > 1), v4 + 1, 1);
            v13 = v37;
          }

          v13[2] = v16;
          sub_2295834E0(v6, v13 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v4);
          ++v18;
          v19 = v34;
          if (ObjectType == v17)
          {

            ObjectType = v27;
            v11 = v28;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v17 = sub_22A4DE0EC();
        v30 = v13;
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_19:

    v13 = MEMORY[0x277D84F90];
LABEL_20:
    v23 = sub_22A4DD9DC();
    v24 = v31;
    (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v30;
    v25[5] = v13;
    v25[6] = ObjectType;
    sub_22957F3C0(0, 0, v24, &unk_22A577FC8, v25);
  }
}

void sub_2295801C0(id *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v30 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - v14;
  v29 = *a1;
  v16 = [v29 uuid];
  sub_22A4DB79C();

  v17 = *(v7 + 32);
  v17(v15, v12, v6);
  (*(v7 + 56))(v15, 0, 1, v6);
  v28 = "MicroLocation.Event";
  sub_22A4DBD4C();
  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
  if (v3)
  {
    *v30 = v3;
  }

  else
  {
    v27 = v17;
    v18 = [v29 currentUser];
    v32 = v18;
    sub_229562F68(0, &qword_281401790, off_278666348);
    sub_22A4DBD4C();
    v26[1] = v7;

    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
    v19 = *(v26[0] + 48);
    v20 = v33;
    v21 = [v33 uuid];

    sub_22A4DB79C();
    v27(&a3[v19], v10, v6);
    v22 = [v29 backingStore];
    v31 = v22;
    sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();

    v23 = *(v26[0] + 64);
    v24 = v32;
    v25 = [v32 context];

    *&a3[v23] = v25;
  }
}

uint64_t sub_22958060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_229580630, 0, 0);
}

uint64_t sub_229580630()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = sub_22A4DD5EC();
  v4 = v3;
  *(v0 + 80) = v3;
  v5 = sub_22A4DBCEC();
  v7 = v6;
  *(v0 + 88) = v6;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_229580754;
  v9 = *(v0 + 48);

  return MEMORY[0x2821677F0](v8, v9, v2, v4, v5, v7, &unk_22A578278, v1);
}

uint64_t sub_229580754()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_229580898;
  }

  else
  {

    v2 = sub_229580884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229580898()
{
  v1 = *(v0 + 104);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A58A850);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22958098C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return static AddACWGKeysToExistingHomesOperation.run(withHomeData:)(a2);
}

uint64_t static AddACWGKeysToExistingHomesOperation.run(withHomeData:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_229580A44, 0, 0);
}

uint64_t sub_229580A44()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D128, &qword_22A577FE8);
  v5 = sub_229579858(&unk_281401CD0, &qword_27D87D128, &qword_22A577FE8);
  *v3 = v0;
  v3[1] = sub_229580B68;

  return MEMORY[0x282167818](&unk_22A577FE0, v2, v4, v5);
}

uint64_t sub_229580B68()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229580CA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229580CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AddACWGKeysToExistingHomesOperation.flow.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AddACWGKeysToExistingHomesOperation.flow.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_229580F34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229580F54, 0, 0);
}

uint64_t sub_229580F54()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  v3 = *(v2 + 48);
  v4 = *(v1 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_22958101C;
  v6 = *(v0 + 16);

  return sub_229581110(v6, v1 + v3, v4);
}

uint64_t sub_22958101C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229581110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[283] = v3;
  v4[277] = a3;
  v4[271] = a2;
  v4[265] = a1;
  v5 = sub_22A4DB7DC();
  v4[289] = v5;
  v6 = *(v5 - 8);
  v4[295] = v6;
  v4[301] = *(v6 + 64);
  v4[307] = swift_task_alloc();
  v4[313] = swift_task_alloc();
  v4[319] = swift_task_alloc();
  v4[325] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229581208, 0, 0);
}

uint64_t sub_229581208()
{
  v1 = v0[325];
  v2 = v0[301];
  v20 = v2;
  v21 = v0[319];
  v3 = v0[295];
  v26 = v0[307];
  v27 = v0[289];
  v4 = v0[283];
  v25 = v4;
  v5 = v0[277];
  v22 = v0[271];
  v23 = v0[313];
  v29 = v0[265];
  v18 = *(v3 + 16);
  v18(v1);
  v6 = *(v3 + 80);
  v19 = ((v6 + 16) & ~v6) + v2;
  v28 = (v6 + 16) & ~v6;
  v24 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v17 = *(v3 + 32);
  v17(v7 + v28, v1, v27);
  *(v7 + v24) = v5;
  *(v7 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8 = swift_allocObject();
  v0[331] = v8;
  *(v8 + 16) = &unk_22A5781C8;
  *(v8 + 24) = v7;
  v16 = v5;
  swift_asyncLet_begin();
  (v18)(v21, v29, v27);
  (v18)(v23, v22, v27);
  v9 = (v19 + v6) & ~v6;
  v10 = swift_allocObject();
  v17(v10 + v28, v21, v27);
  v17(v10 + v9, v23, v27);
  *(v10 + ((v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v11 = swift_allocObject();
  v0[337] = v11;
  *(v11 + 16) = &unk_22A5781E8;
  *(v11 + 24) = v10;
  v12 = v16;
  swift_asyncLet_begin();
  (v18)(v26, v29, v27);
  v13 = swift_allocObject();
  v17(v13 + v28, v26, v27);
  *(v13 + v24) = v25;
  v14 = swift_allocObject();
  v0[343] = v14;
  *(v14 + 16) = &unk_22A578208;
  *(v14 + 24) = v13;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_22958159C()
{
  *(v1 + 2792) = v0;
  if (v0)
  {
    v2 = sub_2295818BC;
  }

  else
  {
    v2 = sub_2295815D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229581600()
{
  *(v1 + 2800) = v0;
  if (v0)
  {
    v2 = sub_229581A88;
  }

  else
  {
    v2 = sub_229581634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229581634()
{
  v1 = v0[263];
  v2 = v0[264];
  v0[258] = MEMORY[0x277CC9318];
  v0[255] = v1;
  v0[256] = v2;
  sub_22956C148(v1, v2);

  return MEMORY[0x282200930](v0 + 162);
}

uint64_t sub_2295816B4()
{
  *(v1 + 2808) = v0;
  if (v0)
  {
    v2 = sub_229581C5C;
  }

  else
  {
    v2 = sub_2295816E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295816E8()
{
  *(v0 + 2096) = MEMORY[0x277D84F78] + 8;
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_229581800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295818BC()
{
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_2295819C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229581A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2008));
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_229581B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229581C5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2040));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2008));
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_229581D74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229581E38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22958530C(a1, a2);
}

uint64_t sub_229581ED4(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_229586D38;

  return v5();
}

uint64_t sub_229581FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229581FE0, 0, 0);
}

uint64_t sub_229581FE0()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2295820BC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(v4, v2, v3, 0);
}

uint64_t sub_2295820BC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2295821CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2295822B8;

  return v5();
}

uint64_t sub_2295822B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2295823D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229569B30;

  return sub_229585B28(a1);
}

uint64_t sub_229582468()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  [v1 findHomeWithModelID_];

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    v4 = [v18 matCredGRK];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22A4DB62C();
      v8 = v7;

      sub_2295798D4(v6, v8);
    }

    else
    {
      v9 = [objc_opt_self() createGroupResolvingKey];
      if (v9)
      {
        v10 = v9;
        v11 = sub_22A4DB62C();
        v13 = v12;

        v14 = sub_22A4DB61C();
        [v18 setMatCredGRK_];

        sub_2297082C0();
        sub_22A4DE1FC();

        v15 = sub_22A4DB5AC();
        MEMORY[0x22AAD08C0](v15);

        MEMORY[0x22AAD08C0](0x656D6F68206F7420, 0xEA0000000000203ALL);
        sub_22A4DB7DC();
        sub_229586A3C();
        v16 = sub_22A4DE5CC();
        MEMORY[0x22AAD08C0](v16);

        sub_22A4DBD0C();

        swift_unknownObjectRelease();
        return sub_2295798D4(v11, v13);
      }

      sub_22A4DBD3C();
      [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_229582764(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_229582870(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229582894, 0, 0);
}

uint64_t sub_229582894()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_229582980;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000035, 0x800000022A58A660, sub_229586B30, v1, v3);
}

uint64_t sub_229582980()
{

  return MEMORY[0x2822009F8](sub_229566EE4, 0, 0);
}

void sub_229582A98(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_22A4DBCFC();
  if (!v10)
  {
    v10 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  v11 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_229586B38;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229582E94;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  [a2 getOrCreateUniqueIDForAccessoriesForUser:v15 flow:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_229582C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003ALL, 0x800000022A58A720);
    v9 = [a3 uuid];
    sub_22A4DB79C();

    sub_229586A3C();
    v10 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v10);

    (*(v6 + 8))(v8, v5);
    MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
    v14[1] = a2;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D288, &qword_22A578240);
    v12 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v12);

    sub_22A4DBD3C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

void sub_229582E94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id AddACWGKeysToExistingHomesOperation.__allocating_init(uuid:userData:backGroundOpsManager:scheduledDate:expirationDate:dataSource:dependentOperations:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = sub_22A4DB77C();
  v15 = sub_22A4DD47C();

  v24 = a4;
  v16 = sub_22A4DB6AC();
  v17 = sub_22A4DB6AC();
  if (a7)
  {
    v18 = sub_22A4DDB5C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(v8) initWithUUID:v14 userData:v15 backGroundOpsManager:a3 scheduledDate:v16 expirationDate:v17 dataSource:a6 dependentOperations:v18];

  swift_unknownObjectRelease();
  v20 = sub_22A4DB74C();
  v21 = *(*(v20 - 8) + 8);
  v21(a5, v20);
  v21(v24, v20);
  v22 = sub_22A4DB7DC();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v19;
}

id AddACWGKeysToExistingHomesOperation.init(uuid:userData:backGroundOpsManager:scheduledDate:expirationDate:dataSource:dependentOperations:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_229586134(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v8;
}

id AddACWGKeysToExistingHomesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddACWGKeysToExistingHomesOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_229583334(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229583BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583354(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229583CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583374(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229583DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583394(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D230, &qword_22A578178, &qword_27D87D238, &qword_22A578180);
  *v3 = result;
  return result;
}

void *sub_2295833D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D2B0, &qword_22A578290, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
  *v3 = result;
  return result;
}

void *sub_229583418(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D2B8, qword_22A578298, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
  *v3 = result;
  return result;
}

void *sub_22958345C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D180, &qword_22A5780B0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_2295834A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D298, &unk_22A578280, &qword_27D87D110, &unk_22A577FB0);
  *v3 = result;
  return result;
}

uint64_t sub_2295834E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229583550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22958060C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229583618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229580F34(a1, v4);
}

void *sub_2295836B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D248, &qword_22A578190, &qword_27D87D250, &qword_22A578198);
  *v3 = result;
  return result;
}

char *sub_2295836F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229583EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &unk_27D87D380, &unk_22A578500, &unk_27D87C370, &qword_22A578090);
  *v3 = result;
  return result;
}

void *sub_229583754(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D158, &qword_22A578078, &qword_27D87D160, &unk_22A578080);
  *v3 = result;
  return result;
}

void *sub_229583794(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D268, &qword_22A5781B0, MEMORY[0x277D0EFB0]);
  *v3 = result;
  return result;
}

void *sub_2295837D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D240, &qword_22A578188, MEMORY[0x277D17408]);
  *v3 = result;
  return result;
}

char *sub_22958381C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229583FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22958383C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D220, &unk_22A5785F0, &qword_27D87D228, &qword_22A578170);
  *v3 = result;
  return result;
}

char *sub_22958387C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295840C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22958389C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D188, &qword_22A5780B8, &qword_27D87D190, &qword_22A5780C0);
  *v3 = result;
  return result;
}

void *sub_2295838DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D178, &qword_22A5780A8, _s13PresenceStateOMa);
  *v3 = result;
  return result;
}

void *sub_229583920(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D200, &unk_22A5785D0, &qword_27D87D208, &qword_22A578150);
  *v3 = result;
  return result;
}

void *sub_229583960(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D210, &qword_22A578158, &qword_27D87D218, &unk_22A578160);
  *v3 = result;
  return result;
}

void *sub_2295839A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295843B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2295839C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295844EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2295839E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2295845F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583A00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583A20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584830(a1, a2, a3, *v3, &qword_27D87D1E0, &qword_22A578128, &qword_27D87D1E8, &qword_22A578130);
  *v3 = result;
  return result;
}

void *sub_229583A60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584830(a1, a2, a3, *v3, &qword_27D87D1F0, &qword_22A578138, &qword_27D87D1F8, &unk_22A578140);
  *v3 = result;
  return result;
}

void *sub_229583AA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D1B0, &qword_22A5780E0, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
  *v3 = result;
  return result;
}

char *sub_229583AE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583B04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D1C0, &qword_22A5780F0, &qword_27D87D1C8, &qword_22A5780F8);
  *v3 = result;
  return result;
}

void *sub_229583B44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &unk_27D87D130, &qword_22A578028, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_229583B88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D148, &unk_22A578040, &qword_27D87C410, &qword_22A576EE0);
  *v3 = result;
  return result;
}

char *sub_229583BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_229583CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D258, &qword_22A5781A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_229583DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D260, &qword_22A5781A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_229583EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D140, &unk_22A57A950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_229583FD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D1B8, &qword_22A5780E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2295840C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D198, &qword_22A5780C8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2295841D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2295843B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1A0, &unk_22A5780D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2295844EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2295845F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D170, &qword_22A5780A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_229584710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D168, &qword_22A578098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_229584830(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_229584978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_229584A88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_229584BD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_229584DAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_229584EE0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_229584FD4;

  return v5(v2 + 32);
}

uint64_t sub_229584FD4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2295850E8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2295851DC;

  return v5(v2 + 16);
}

uint64_t sub_2295851DC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22958530C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_22A4DB7DC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295853D4, 0, 0);
}

uint64_t sub_2295853D4()
{
  sub_22A4DE1FC();

  v0[14] = sub_229586A3C();
  v1 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v1);

  sub_22A4DBD0C();

  v2 = [objc_opt_self() driver];
  v3 = [v2 homeManager];

  v4 = [v3 homes];
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = v0[8];
  v14 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v15 = sub_22A4DD83C();

  v16 = swift_task_alloc();
  *(v16 + 16) = v13;
  v17 = sub_22968FFF0(sub_229586BC8, v16, v15);

  v0[6] = v17;
  sub_22A4DBD4C();

  v18 = v0[5];
  v0[15] = v18;
  if ([v18 isOwnerUser])
  {
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[10];
    v22 = v0[11];
    v23 = v0[9];
    (*(v22 + 16))(v19, v0[8], v21);
    v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v0[16] = v26;
    (*(v22 + 32))(v26 + v24, v19, v21);
    *(v26 + v25) = v23;
    v27 = v23;
    v28 = swift_task_alloc();
    v0[17] = v28;
    v28[2] = v27;
    v28[3] = sub_229586BE8;
    v28[4] = v26;
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_22958583C;
    v10 = sub_229586C80;
    v9 = 0x800000022A58A7E0;
    v12 = MEMORY[0x277D84F78] + 8;
    v6 = 0;
    v7 = 0;
    v8 = 0xD000000000000016;
    v11 = v28;

    return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58A6A0);
  v29 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v29);

  MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58A7B0);
  sub_22A4DBD0C();

  v30 = v0[1];

  return v30();
}

uint64_t sub_22958583C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2295859CC;
  }

  else
  {

    v2 = sub_229585960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229585960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295859CC()
{
  v1 = *(v0 + 120);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000020, 0x800000022A58A800);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229585B48()
{
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000039, 0x800000022A58A620);
  sub_22A4DB7DC();
  sub_229586A3C();
  v1 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v1);

  sub_22A4DBD0C();

  v2 = [objc_opt_self() driver];
  v3 = [v2 homeManager];

  v4 = [v3 homes];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v0[5];
  v10 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v11 = sub_22A4DD83C();

  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  v13 = sub_22968FFF0(sub_229586D3C, v12, v11);

  v0[3] = v13;
  sub_22A4DBD4C();

  v14 = v0[2];
  v0[6] = v14;
  if ([v14 isOwnerUser])
  {
    v5 = [v14 users];
    if (v5)
    {
      v15 = v5;
      sub_229562F68(0, &qword_281401790, off_278666348);
      v16 = sub_22A4DD83C();
      v0[7] = v16;

      v0[4] = v16;
      v17 = swift_task_alloc();
      v0[8] = v17;
      *(v17 + 16) = v14;
      v18 = swift_task_alloc();
      v0[9] = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D270, &unk_22A578230);
      v8 = sub_229579858(&qword_281401C88, &unk_27D87D270, &unk_22A578230);
      *v18 = v0;
      v18[1] = sub_229585F8C;
      v5 = &unk_22A578228;
      v6 = v17;
      v7 = v19;

      return MEMORY[0x282167808](v5, v6, v7, v8);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x282167808](v5, v6, v7, v8);
  }

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58A6A0);
  v20 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v20);

  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58A6C0);
  sub_22A4DBD0C();

  v21 = v0[1];

  return v21();
}

void sub_229585F8C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2295860D0, 0, 0);
  }
}

uint64_t sub_2295860D0()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_229586134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow] = 0;
  v13 = sub_22A4DB77C();
  v14 = sub_22A4DD47C();

  v15 = sub_22A4DB6AC();
  v16 = sub_22A4DB6AC();
  if (a7)
  {
    v17 = sub_22A4DDB5C();
  }

  else
  {
    v17 = 0;
  }

  v25.receiver = v8;
  v25.super_class = type metadata accessor for AddACWGKeysToExistingHomesOperation();
  v18 = objc_msgSendSuper2(&v25, sel_initWithUUID_userData_backGroundOpsManager_scheduledDate_expirationDate_dataSource_dependentOperations_, v13, v14, a3, v15, v16, a6, v17);

  v19 = sub_22A4DB74C();
  v20 = *(*(v19 - 8) + 8);
  v20(a5, v19);
  v20(a4, v19);
  v21 = sub_22A4DB7DC();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v18;
}

uint64_t sub_229586324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229584EE0(a1, v4);
}

uint64_t sub_2295863DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2295850E8(a1, v4);
}

uint64_t sub_229586494()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229581E38(v0 + v3, v4);
}

uint64_t sub_2295865A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229581ED4(a1, v4);
}

uint64_t sub_229586660()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586774;

  return sub_229581FBC(v0 + v4, v0 + v6, v7);
}

uint64_t sub_229586774(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_229586880(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_2295821CC(a1, v4);
}

uint64_t sub_229586938()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2295823D4(v0 + v3);
}

unint64_t sub_229586A3C()
{
  result = qword_281403860;
  if (!qword_281403860)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403860);
  }

  return result;
}

uint64_t sub_229586A94(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229582870(a1, v4);
}

uint64_t sub_229586B38(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v5 = *(v2 + 16);

  return sub_229582C9C(a1, a2, v5);
}

uint64_t sub_229586C8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22958098C(a1, v4);
}

uint64_t sub_229586D58@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v8 - 8);
  v148 = &v140 - v9;
  v10 = _s21EventMetadataInternalV6DeviceVMa(0);
  v163 = *(v10 - 8);
  v164 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v154 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v147 = &v140 - v14;
  MEMORY[0x28223BE20](v13);
  v157 = &v140 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v153 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v140 - v20;
  MEMORY[0x28223BE20](v19);
  v156 = (&v140 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v22 - 8);
  v160 = &v140 - v23;
  v149 = _s21EventMetadataInternalV4HomeVMa(0);
  MEMORY[0x28223BE20](v149);
  v161 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22A4DB74C();
  v151 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v162 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = _s21EventMetadataInternalVMa(0);
  MEMORY[0x28223BE20](v146);
  v145 = (&v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_22A4DB7DC();
  v28 = *(v27 - 8);
  v170 = v27;
  v171 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v152 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v155 = &v140 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v140 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v150 = &v140 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v166 = &v140 - v39;
  MEMORY[0x28223BE20](v38);
  v165 = &v140 - v40;
  v41 = sub_22A4DD07C();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s24AppleMediaAccessoryStateO5EventVMa(0);
  v168 = *(v45 - 8);
  v169 = v45;
  MEMORY[0x28223BE20](v45);
  v167 = &v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229588CF8(a2);
  v47 = *a2;
  v48 = a2[3];
  if (!(*a2 | v48))
  {

    v49 = 1;
    return (*(v168 + 56))(a4, v49, 1, v169);
  }

  v159 = a1;
  KeyPath = swift_getKeyPath();
  v51 = sub_22956ECE8(KeyPath, a3);

  if (v51)
  {

    if ((v47 - 1) >= 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = v47;
    }

LABEL_14:
    v55 = v159;
    *(v167 + *(v169 + 20)) = v52;
    v56 = [v55 currentAccessory];
    if (!v56)
    {

      v49 = 1;
      return (*(v168 + 56))(a4, v49, 1, v169);
    }

    v57 = v56;
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (!v58)
    {

      v49 = 1;
      return (*(v168 + 56))(a4, v49, 1, v169);
    }

    v59 = v58;
    v60 = v57;
    v61 = [v59 uuid];
    sub_22A4DB79C();

    v62 = [v59 room];
    v141 = v60;

    v63 = [v62 uuid];
    sub_22A4DB79C();

    v64 = sub_229723AE0(v59);
    v65 = v64;
    if (v64 >> 62)
    {
      v66 = sub_22A4DE0EC();
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = a4;
    if (v66)
    {
      v172 = MEMORY[0x277D84F90];
      sub_22958345C(0, v66 & ~(v66 >> 63), 0);
      if (v66 < 0)
      {
        goto LABEL_62;
      }

      v67 = 0;
      v68 = v172;
      do
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x22AAD13F0](v67, v65);
        }

        else
        {
          v69 = *(v65 + 8 * v67 + 32);
        }

        v70 = v69;
        v71 = [v69 uuid];
        sub_22A4DB79C();

        v172 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22958345C((v72 > 1), v73 + 1, 1);
          v68 = v172;
        }

        ++v67;
        *(v68 + 16) = v73 + 1;
        (*(v171 + 32))(v68 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v73, v35, v170);
      }

      while (v66 != v67);

      v55 = v159;
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
    }

    *(v167 + *(v169 + 24)) = v68;
    sub_22A4DB71C();
    v77 = [v55 uuid];
    v78 = v150;
    sub_22A4DB79C();

    v79 = [v55 users];
    if (!v79)
    {
LABEL_38:
      LODWORD(v82) = 1;
      goto LABEL_39;
    }

    v80 = v79;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v81 = sub_22A4DD83C();

    if (v81 >> 62)
    {
      goto LABEL_63;
    }

    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (HIDWORD(v82))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_39:
    while (1)
    {
      v83 = v170;
      v84 = v171;
      v85 = v161;
      (*(v171 + 32))(v161, v78, v170);
      *(v85 + *(v149 + 20)) = v82;
      v82 = *(v84 + 16);
      v86 = v155;
      (v82)(v155, v165, v83);
      v87 = v156;
      (v82)(v156, v166, v83);
      v88 = *(v84 + 56);
      v88(v87, 0, 1, v83);
      LODWORD(v150) = [v55 isCurrentDevicePrimaryResident];
      v89 = v164;
      v90 = v164[5];
      v91 = v157;
      v142 = v88;
      v88(v157 + v90, 1, 1, v83);
      v92 = (v91 + v89[9]);
      *v92 = 0;
      v92[1] = 0;
      v149 = v82;
      (v82)(v91, v86, v83);
      v93 = v158;
      sub_229564F88(v87, v158, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v91 + v90, &qword_27D87CBF0, &qword_22A577898);
      sub_229564B0C(v93, v91 + v90);
      *(v91 + v89[6]) = 1;
      *(v91 + v89[7]) = 0;
      *(v91 + v89[8]) = v150;
      v94 = MobileGestalt_get_current_device();
      if (v94)
      {
        break;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v55 = v159;
      v78 = v150;
      if (HIDWORD(v82))
      {
        goto LABEL_37;
      }
    }

    v95 = v94;
    v96 = MobileGestalt_copy_deviceColor_obj();

    if (v96)
    {
      v97 = sub_22A4DD5EC();
      v99 = v98;
    }

    else
    {
      v97 = 0;
      v99 = 0;
    }

    sub_22953EAE4(v156, &unk_27D87D2A0, &unk_22A578BD0);
    v100 = v170;
    v101 = *(v171 + 8);
    v171 += 8;
    v156 = v101;
    (v101)(v155, v170);
    *v92 = v97;
    v92[1] = v99;
    v102 = v160;
    sub_229589154(v157, v160, _s21EventMetadataInternalV6DeviceVMa);
    v103 = v164;
    v104 = *(v163 + 56);
    v163 += 56;
    v155 = v104;
    (v104)(v102, 0, 1, v164);
    v105 = v152;
    v106 = v149;
    (v149)(v152, v165, v100);
    v107 = v153;
    v106(v153, v166, v100);
    v108 = v142;
    v142(v107, 0, 1, v100);
    LODWORD(v157) = [v159 isCurrentDevicePrimaryResident];
    v109 = v103[5];
    v82 = v154;
    v108(v154 + v109, 1, 1, v100);
    v110 = (v82 + v103[9]);
    *v110 = 0;
    v110[1] = 0;
    v106(v82, v105, v100);
    v111 = v107;
    v112 = v158;
    sub_229564F88(v111, v158, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v82 + v109, &qword_27D87CBF0, &qword_22A577898);
    sub_229564B0C(v112, v82 + v109);
    *(v82 + v103[6]) = 1;
    *(v82 + v103[7]) = 0;
    *(v82 + v103[8]) = v157;
    v113 = MobileGestalt_get_current_device();
    if (!v113)
    {
      goto LABEL_66;
    }

    v114 = v113;
    v115 = MobileGestalt_copy_deviceColor_obj();

    v116 = v148;
    v117 = v147;
    v118 = v146;
    if (v115)
    {
      v119 = sub_22A4DD5EC();
      v121 = v120;
    }

    else
    {
      v119 = 0;
      v121 = 0;
    }

    sub_22953EAE4(v153, &unk_27D87D2A0, &unk_22A578BD0);
    (v156)(v152, v170);
    *v110 = v119;
    v110[1] = v121;
    sub_229589154(v154, v117, _s21EventMetadataInternalV6DeviceVMa);
    v122 = _s21EventMetadataInternalV4UserVMa(0);
    v123 = *(*(v122 - 8) + 56);
    v123(v116, 1, 1, v122);
    v124 = v145;
    *v145 = 1;
    sub_22A4DB7CC();
    v125 = v118[9];
    (v155)(v124 + v125, 1, 1, v164);
    v126 = v118[11];
    v123(v124 + v126, 1, 1, v122);
    *(v124 + 8) = 0xD00000000000001ELL;
    *(v124 + 16) = 0x800000022A58A8B0;
    v127 = v144;
    (*(v151 + 16))(v124 + v118[7], v162, v144);
    sub_229564EB8(v161, v124 + v118[8], _s21EventMetadataInternalV4HomeVMa);
    sub_229564B7C(v160, v124 + v125, &qword_27D87CBE8, &qword_22A577890);
    sub_229564EB8(v117, v124 + v118[10], _s21EventMetadataInternalV6DeviceVMa);
    sub_229564B7C(v116, v124 + v126, &qword_27D87CBE0, &unk_22A577880);
    v128 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v128 systemUptime];
    v130 = v129;

    v131 = v130 * 1000.0;
    if (COERCE__INT64(fabs(v130 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v131 > -1.0)
    {
      a4 = v143;
      if (v131 < 1.84467441e19)
      {
        *(v124 + v118[12]) = v131;
        v132 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
        [v132 timeIntervalSince1970];
        v134 = v133;

        sub_22953EAE4(v116, &qword_27D87CBE0, &unk_22A577880);
        sub_229564BE4(v117, _s21EventMetadataInternalV6DeviceVMa);
        sub_22953EAE4(v160, &qword_27D87CBE8, &qword_22A577890);
        sub_229564BE4(v161, _s21EventMetadataInternalV4HomeVMa);
        (*(v151 + 8))(v162, v127);
        v135 = v170;
        v136 = v156;
        (v156)(v166, v170);
        v136(v165, v135);
        v137 = v134 * 1000.0;
        if (COERCE__INT64(fabs(v134 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v137 > -1.0)
          {
            if (v137 < 1.84467441e19)
            {
              *(v124 + v118[13]) = v137;
              v138 = v167;
              sub_229589154(v124, v167, _s21EventMetadataInternalVMa);
              sub_229589154(v138, a4, _s24AppleMediaAccessoryStateO5EventVMa);
              v49 = 0;
              return (*(v168 + 56))(a4, v49, 1, v169);
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v82 = sub_22A4DE0EC();

          if ((v82 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
          goto LABEL_65;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_58;
  }

  v53 = swift_getKeyPath();
  v54 = sub_22956ECE8(v53, a3);

  if (v54)
  {
    if (v48 == 1)
    {
      v52 = 7;
    }

    else
    {
      v52 = 0;
    }

    if (v48 == 2)
    {
      v52 = 8;
    }

    goto LABEL_14;
  }

  sub_22A4DD5EC();
  sub_229709260(v169, &off_283CDD040);
  sub_22A4DD06C();
  v74 = sub_22A4DD05C();
  v75 = sub_22A4DDCEC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_229538000, v74, v75, "keyPaths does not contain either playbackState or sleepWakeState", v76, 2u);
    MEMORY[0x22AAD4E50](v76, -1, -1);
  }

  (*(v42 + 8))(v44, v41);
  v49 = 1;
  return (*(v168 + 56))(a4, v49, 1, v169);
}

uint64_t sub_229587FF4(uint64_t a1)
{
  v10 = _s21EventMetadataInternalVMa(0);
  v11 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_229564EB8(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v9);
  sub_22953EAE4(v9, &qword_27D882000, &qword_22A578390);
  v4 = _s24AppleMediaAccessoryStateO5EventVMa(0);
  v5 = *(v1 + *(v4 + 20));
  v10 = MEMORY[0x277D84CC0];
  v11 = &off_283CDFC58;
  LODWORD(v9[0]) = v5;
  sub_229890DC4(v9, 0xD000000000000013, 0x800000022A58A890);
  v6 = *(v1 + *(v4 + 24));
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v11 = sub_22958872C();
  v9[0] = sub_2295887A8(v12, v6);
  return sub_229890DC4(v9, 0x6F7247616964656DLL, 0xEF73444955557075);
}

uint64_t sub_229588160(__int128 *a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  *(&v15 + 1) = _s21EventMetadataInternalVMa(0);
  v16 = sub_229588C5C(&qword_27D87CC28, _s21EventMetadataInternalVMa, &unk_22A57FD08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_229564EB8(v2, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679928(KeyPath, &v14);

  if (*(&v15 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  v6 = _s24AppleMediaAccessoryStateO5EventVMa(0);
  v7 = *(v2 + *(v6 + 20));
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D320, &qword_22A5784A8) + 36));
  v9 = v8 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 28);
  *v9 = v7;
  v9[4] = 0;
  v10 = *(v2 + *(v6 + 24));
  LOBYTE(v16) = *(a1 + 32);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  v12 = sub_2295887A8(&v14, v10);

  *v8 = v12;
  return result;
}

uint64_t sub_2295882B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_229564F88(a1 + *(v7 + 24), v6, &qword_27D87CC38, &unk_22A5784B0);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_229589154(v6, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_229588460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564EB8(a1, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 24);
  sub_22953EAE4(a2 + v8, &qword_27D87CC38, &unk_22A5784B0);
  sub_229589154(v7, a2 + v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance HMDAppleMediaAccessory(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_22A4DE60C();
  }

  return v12 & 1;
}

unint64_t sub_22958866C()
{
  result = qword_27D87D2C0;
  if (!qword_27D87D2C0)
  {
    sub_229562F68(255, &qword_281401920, off_278666038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2C0);
  }

  return result;
}

uint64_t _s24AppleMediaAccessoryStateO5EventVMa(uint64_t a1)
{
  result = qword_27D87D2E0;
  if (!qword_27D87D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22958872C()
{
  result = qword_27D87D2C8;
  if (!qword_27D87D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E400, "ll\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2C8);
  }

  return result;
}

uint64_t sub_2295887A8(uint64_t a1, uint64_t a2)
{
  v46 = sub_22A4DD34C();
  v4 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v7;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v59 = MEMORY[0x277D84F90];
    v54 = v15;
    sub_229583334(0, v15, 0);
    v47 = 0;
    result = v59;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v43 = a1;
    v50 = *(a1 + 32);
    v49 = *(v18 + 56);
    v42 = (v4 + 8);
    v48 = (v18 - 8);
    v51 = v19;
    v52 = v18;
    v55 = v8;
    do
    {
      v53 = result;
      v17(v14, v20, v8);
      if (v50)
      {
        v17(v12, v14, v8);
      }

      else
      {
        v21 = v43;
        v60 = *v43;
        v58 = *v43;
        sub_229588C00(&v60, &v56);
        v22 = v45;
        sub_22A4DD33C();
        v23 = *(v21 + 2);
        v24 = *(v21 + 3);

        *&v58 = sub_22958F6F4(v23, v24);
        *(&v58 + 1) = v25;
        v56 = sub_22970DA38();
        v57 = v26;
        sub_22A4DD36C();
        sub_229588C5C(&qword_27D87D2D0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        sub_229588CA4();
        v27 = v44;
        sub_22A4DD35C();
        v28 = *v42;
        v29 = v22;
        v30 = v46;
        (*v42)(v29, v46);
        sub_2295798D4(v56, v57);
        sub_2295798D4(v58, *(&v58 + 1));
        v31 = v47;
        sub_22A4DD32C();
        v47 = v31;
        v32 = v27;
        v8 = v55;
        v28(v32, v30);
      }

      v33 = sub_22A4DB76C();
      v35 = v34;
      v36 = *v48;
      v37 = v12;
      (*v48)(v12, v8);
      v36(v14, v8);
      result = v53;
      v59 = v53;
      v39 = *(v53 + 16);
      v38 = *(v53 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_229583334((v38 > 1), v39 + 1, 1);
        result = v59;
      }

      *(result + 16) = v39 + 1;
      v40 = result + 16 * v39;
      *(v40 + 32) = v33;
      *(v40 + 40) = v35;
      v20 += v49;
      v8 = v55;
      --v54;
      v17 = v51;
      v12 = v37;
    }

    while (v54);
  }

  return result;
}

uint64_t sub_229588C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_229588CA4()
{
  result = qword_27D87D2D8;
  if (!qword_27D87D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2D8);
  }

  return result;
}

uint64_t sub_229588D4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_229583374(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_229583374((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_229588E04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_229583354(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_229583354((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 4 * v7 + 32) = v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_229588F00(uint64_t a1)
{
  _s21EventMetadataInternalVMa(319);
  if (v1 <= 0x3F)
  {
    sub_229564D4C(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_229588F9C(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_229588F9C(uint64_t a1)
{
  if (!qword_27D87D2F0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D2F8, &unk_22A585F10);
    v3 = sub_22958900C();
    v5 = _s7SecuredVMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D87D2F0);
    }
  }
}

unint64_t sub_22958900C()
{
  result = qword_27D87D300;
  if (!qword_27D87D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D2F8, &unk_22A585F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D300);
  }

  return result;
}

uint64_t sub_2295890D0(uint64_t a1)
{
  *(a1 + 16) = sub_229588C5C(&qword_27D87D310, _s24AppleMediaAccessoryStateO5EventVMa, &unk_22A578400);
  result = sub_229588C5C(&qword_27D87D318, _s24AppleMediaAccessoryStateO5EventVMa, &unk_22A578428);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229589154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RestrictedGuestFeatureLogEvent.numEnabledResidentsInHome.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestFeatureLogEvent.numEnabledResidentsInHome.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestFeatureLogEvent.init(home:)(void *a1)
{
  v3 = sub_22A4DB7DC();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v1[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName];
  *v5 = 0xD000000000000028;
  v5[1] = 0x800000022A589260;
  v62 = a1;
  v63 = v1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions] = 2;
  v6 = [a1 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
LABEL_49:
    v66 = v7 & 0xFFFFFFFFFFFFFF8;
    v68 = sub_22A4DE0EC();
  }

  else
  {
    v66 = v7 & 0xFFFFFFFFFFFFFF8;
    v68 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v67 = v7 & 0xC000000000000001;
  v64 = v7;
  v65 = v7 + 32;
  do
  {
    v11 = v8;
    if (v8 == v68)
    {
      break;
    }

    if (v67)
    {
      v12 = MEMORY[0x22AAD13F0](v8, v7);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v8 >= *(v66 + 16))
      {
        goto LABEL_47;
      }

      v12 = *(v65 + 8 * v8);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_46;
      }
    }

    v69 = v12;
    v70 = v13;
    v14 = [v12 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v15 = sub_22A4DD83C();

    if (v15 >> 62)
    {
      v16 = sub_22A4DE0EC();
      v71 = v11;
      if (v16)
      {
LABEL_11:
        v7 = 0;
        v72 = v15 & 0xC000000000000001;
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v72)
          {
            v18 = MEMORY[0x22AAD13F0](v7, v15);
          }

          else
          {
            if (v7 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(v15 + 8 * v7 + 32);
          }

          v19 = v18;
          v20 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v21 = v16;
          v22 = [v18 serviceType];
          v23 = sub_22A4DD5EC();
          v25 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_22958A53C(0, *(v17 + 2) + 1, 1, v17);
          }

          v27 = *(v17 + 2);
          v26 = *(v17 + 3);
          if (v27 >= v26 >> 1)
          {
            v17 = sub_22958A53C((v26 > 1), v27 + 1, 1, v17);
          }

          *(v17 + 2) = v27 + 1;
          v28 = &v17[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          ++v7;
          v16 = v21;
          if (v20 == v21)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v11;
      if (v16)
      {
        goto LABEL_11;
      }
    }

LABEL_4:

    v9 = objc_opt_self();
    v10 = sub_22A4DD81C();

    LOBYTE(v9) = [v9 doesAccessoryHaveRestrictedGuestCapableServiceTypes_];

    v7 = v64;
    v8 = v70;
    v11 = v71;
  }

  while ((v9 & 1) == 0);
  v29 = v11 != v68;

  v30 = v62;
  v63[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_hasRGSupportedAccessory] = v29;
  result = [v30 users];
  if (result)
  {
    v32 = result;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v33 = sub_22A4DD83C();

    if (v33 >> 62)
    {
      v7 = sub_22A4DE0EC();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v7 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_31:
        v34 = 0;
        v35 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x22AAD13F0](v34, v33);
          }

          else
          {
            if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v36 = *(v33 + 8 * v34 + 32);
          }

          v37 = v36;
          v38 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v39 = [v36 isRestrictedGuest];

          if (v39)
          {
            v40 = __OFADD__(v35++, 1);
            if (v40)
            {
              goto LABEL_48;
            }
          }

          ++v34;
          if (v38 == v7)
          {
            goto LABEL_52;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v35 = 0;
LABEL_52:

    v41 = v62;
    *&v63[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numberOfRGs] = v35;
    v42 = [objc_msgSend(v41 residentDeviceManager)];
    swift_unknownObjectRelease();
    sub_229562F68(0, &qword_281401B10, off_278666300);
    v43 = sub_22A4DD83C();

    if (v43 >> 62)
    {
      goto LABEL_70;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v45 = 0;
      v46 = 0;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x22AAD13F0](v45, v43);
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v47 = *(v43 + 8 * v45 + 32);
        }

        v48 = v47;
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v50 = [v47 capabilities];
        if (v50)
        {
          v51 = [v50 supportsRestrictedGuest];
          swift_unknownObjectRelease();

          if (v51)
          {
            v40 = __OFADD__(v46++, 1);
            if (v40)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
        }

        ++v45;
        if (v49 == i)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      ;
    }

    v46 = 0;
LABEL_72:

    v53 = v62;
    v52 = v63;
    *&v63[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome] = v46;
    v54 = [v53 uuid];
    v55 = v59;
    sub_22A4DB79C();

    v56 = sub_22A4DB77C();
    (*(v60 + 8))(v55, v61);
    v57 = type metadata accessor for RestrictedGuestFeatureLogEvent();
    v73.receiver = v52;
    v73.super_class = v57;
    v58 = objc_msgSendSuper2(&v73, sel_initWithHomeUUID_, v56);

    return v58;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

unint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761B0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000022A58A8E0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x664F7265626D756ELL;
  *(inited + 64) = 0xEB00000000734752;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000022A58A900;
  v2 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  swift_beginAccess();
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v3;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventOptions.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestFeatureLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id RestrictedGuestFeatureLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RestrictedGuestFeatureLogEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RestrictedGuestFeatureLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_22958A310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3C0, &qword_22A578540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22958A414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D458, &qword_22A57BC90);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}