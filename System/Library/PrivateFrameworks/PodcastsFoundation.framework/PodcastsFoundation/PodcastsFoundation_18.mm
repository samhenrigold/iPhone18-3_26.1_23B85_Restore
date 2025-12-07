void sub_1D8F00040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  v2 = *v0;
  v3 = sub_1D91793FC();
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

void *sub_1D8F0019C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  v2 = *v0;
  v3 = sub_1D91793FC();
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

id sub_1D8F002F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D91793FC();
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

void *sub_1D8F00430()
{
  v1 = v0;
  v2 = sub_1D9176EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB67A8, &qword_1D9193748);
  v6 = *v0;
  v7 = sub_1D91793FC();
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

void *sub_1D8F00668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6798, &qword_1D9193738);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
        result = sub_1D8D9A2A4(*(v2 + 48) + v17, v21);
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

void *sub_1D8F007E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6790, &qword_1D9193730);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1D8DB5EC8(v19, v20, v21);
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

void *sub_1D8F00948(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_1D91793FC();
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
        v21 = 24 * (v18 | (v12 << 6));
        v22 = *(v6 + 48) + v21;
        v23 = *(v22 + 8);
        v24 = *(v8 + 48) + v21;
        v25 = *(v22 + 16);
        *v24 = *v22;
        *(v24 + 8) = v23;
        *(v24 + 16) = v25;
        result = a3();
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

void sub_1D8F00AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6730, &qword_1D91936E8);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_1D8F00C00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D91793FC();
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

void *sub_1D8F00D30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 9) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 9);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
      *(v21 + 8) = v20;
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

void *sub_1D8F00E8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_1D8D1808C(v23, v22);
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

void *sub_1D8F0101C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6770, &qword_1D9193710);
  v2 = *v0;
  v3 = sub_1D91793FC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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

uint64_t sub_1D8F01160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6848, &qword_1D9193788);
  result = sub_1D917940C();
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
      result = sub_1D9179DAC();
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

        goto LABEL_26;
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

  return result;
}

uint64_t sub_1D8F01360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6840, &qword_1D9193780);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9179DBC();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1DA72B390](1);
          v22 = v20;
          sub_1D917915C();
        }

        else
        {
          MEMORY[0x1DA72B390](2);

          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        }
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v20);
      }

      result = sub_1D9179E1C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_31;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8F015F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  result = sub_1D917940C();
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
      result = sub_1D9179DAC();
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

        goto LABEL_26;
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

  return result;
}

uint64_t sub_1D8F017E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6830, &qword_1D9193778);
  result = sub_1D917940C();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_1D8F01A20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D917940C();
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
      result = sub_1D917913C();
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

uint64_t sub_1D8F01C2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6798, &qword_1D9193738);
  result = sub_1D917940C();
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
      sub_1D8D9A2A4(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_1D91793CC();
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

uint64_t sub_1D8F01E58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6790, &qword_1D9193730);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9179DBC();
      if (v21 == 1)
      {
        MEMORY[0x1DA72B390](1);

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v19);
      }

      result = sub_1D9179E1C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8F020D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
  result = sub_1D917940C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_40:
    *v2 = v5;
    return result;
  }

  v30 = v3;
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
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    sub_1D9179DBC();
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = 8;
      }

      else if (v19 > 1)
      {
        if (v19 ^ 2 | v20)
        {
          v22 = 6;
        }

        else
        {
          v22 = 4;
        }
      }

      else if (v19 | v20)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_20;
    }

    if (!v21)
    {
      v22 = 3;
LABEL_20:
      MEMORY[0x1DA72B390](v22);
      goto LABEL_22;
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_22:
    result = sub_1D9179E1C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
        v29 = *(v12 + 8 * v25);
        if (v29 != -1)
        {
          v13 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_42;
    }

    v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 24 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v21;
    ++*(v5 + 16);
    v3 = v30;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_40;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D8F02398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6730, &qword_1D91936E8);
  result = sub_1D917940C();
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
      v19 = *v17;
      v18 = v17[1];
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v18)
      {

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8F025EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6780, &unk_1D9193720);
  result = sub_1D917940C();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_1D8F028A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(v3 + 48) + 16 * (v18 | (v6 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 9);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v23 != 1)
      {
        MEMORY[0x1DA72B3C0](v22);
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v13) >> 6;
        while (++v15 != v26 || (v25 & 1) == 0)
        {
          v27 = v15 == v26;
          if (v15 == v26)
          {
            v15 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v15);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v5 + 48) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 9) = v24;
      ++*(v5 + 16);
      v3 = v29;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v20 = *(v7 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8F02B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  result = sub_1D917940C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_36:
    *v2 = v5;
    return result;
  }

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
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v20 = *(v3 + 48) + 72 * (v17 | (v6 << 6));
    v22 = *(v20 + 32);
    v21 = *(v20 + 48);
    v23 = *(v20 + 16);
    v40 = *(v20 + 64);
    v38 = v22;
    v39 = v21;
    v36 = *v20;
    v37 = v23;
    sub_1D9179DBC();
    sub_1D8D1808C(&v36, v35);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    if (BYTE8(v37) == 1)
    {
      sub_1D9179DDC();
      v24 = v39;
      if (!v39)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = v37;
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v26);
      v24 = v39;
      if (!v39)
      {
LABEL_21:
        v25 = 0;
        goto LABEL_23;
      }
    }

    if (v24 == 1)
    {
      v25 = 1;
      goto LABEL_23;
    }

    if (v24 == 2)
    {
      v25 = 3;
LABEL_23:
      MEMORY[0x1DA72B390](v25);
      goto LABEL_25;
    }

    v34 = v40;
    MEMORY[0x1DA72B390](2);
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v34);
LABEL_25:
    result = sub_1D9179E1C();
    v27 = -1 << *(v5 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v27) >> 6;
      while (++v29 != v31 || (v30 & 1) == 0)
      {
        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        v33 = *(v11 + 8 * v29);
        if (v33 != -1)
        {
          v12 = __clz(__rbit64(~v33)) + (v29 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v5 + 48) + 72 * v12;
    v14 = v37;
    v15 = v38;
    v16 = v39;
    *(v13 + 64) = v40;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    *v13 = v36;
    ++*(v5 + 16);
  }

  v18 = v6;
  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_36;
    }

    v19 = *(v3 + 56 + 8 * v6);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v9 = (v19 - 1) & v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D8F02EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6770, &qword_1D9193710);
  result = sub_1D917940C();
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
      sub_1D9179DBC();
      sub_1D9179FAC();
      result = sub_1D9179E1C();
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

uint64_t sub_1D8F0312C(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_1D8F83490();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1D9006290(v4, v5);
  return 1;
}

uint64_t sub_1D8F0318C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D8F031D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8F03228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F0, &qword_1D9192190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F032B0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1D8F032C8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v38 = a2;

  v37 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = (a1 + 40);
    v10 = (a2 + 40);
    v36 = a4;
    do
    {
      v15 = *(v38 + 16);
      if (v8 == v15)
      {
        break;
      }

      if (v8 >= v15)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_1D9179CFC();
        __break(1u);
        return;
      }

      v17 = *(v9 - 1);
      v16 = *v9;
      v18 = *v10;
      v39 = *(v10 - 1);
      v40 = v8;
      v19 = *a4;

      v21 = sub_1D8D33C70(v17, v16);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_18;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((a3 & 1) == 0)
        {
          sub_1D8F83318();
        }
      }

      else
      {
        sub_1D9005FD0(v24, a3 & 1);
        v26 = sub_1D8D33C70(v17, v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_20;
        }

        v21 = v26;
      }

      v28 = *a4;
      v29 = 16 * v21;
      if (v25)
      {
        v11 = (v28[7] + v29);
        v13 = *v11;
        v12 = v11[1];

        v14 = (v28[7] + v29);
        *v14 = v13;
        v14[1] = v12;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v28[6] + v29);
        *v30 = v17;
        v30[1] = v16;
        v31 = (v28[7] + v29);
        *v31 = v39;
        v31[1] = v18;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_19;
        }

        v28[2] = v34;
      }

      v8 = v40 + 1;
      v9 += 2;
      v10 += 2;
      a3 = 1;
      a4 = v36;
    }

    while (v37 != v40 + 1);
  }
}

uint64_t sub_1D8F034F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F03634(uint64_t a1, char a2)
{
  sub_1D9179DBC();
  sub_1D9179DEC();
  return sub_1D9179E1C();
}

uint64_t sub_1D8F03684(uint64_t a1, unsigned __int8 a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F0378C(uint64_t a1, unsigned int a2)
{
  sub_1D9179DBC();
  sub_1D9179DEC();
  return sub_1D9179E1C();
}

uint64_t DownloadStateReport.collectionTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9176E3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double DownloadStateReport.shows.getter()
{
  type metadata accessor for DownloadStateReport(0);

  return result;
}

uint64_t type metadata accessor for DownloadStateReport(uint64_t a1)
{
  result = qword_1ECAB6958;
  if (!qword_1ECAB6958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8F038B8()
{
  if (*v0)
  {
    return 0x73776F6873;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

void sub_1D8F038FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00656D69546E6FLL;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73776F6873 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8F039DC(uint64_t a1)
{
  v2 = sub_1D8F03C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F03A18(uint64_t a1)
{
  v2 = sub_1D8F03C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadStateReport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6860, &qword_1D91937C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F03C38();
  sub_1D9179F1C();
  v12 = 0;
  sub_1D9176E3C();
  sub_1D8F0CA8C(&qword_1ECAB2C80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D91799FC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DownloadStateReport(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6870, &qword_1D91937C8);
    sub_1D8F03C8C();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D8F03C38()
{
  result = qword_1ECAB6868;
  if (!qword_1ECAB6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6868);
  }

  return result;
}

unint64_t sub_1D8F03C8C()
{
  result = qword_1ECAB6878;
  if (!qword_1ECAB6878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6870, &qword_1D91937C8);
    sub_1D8F03D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6878);
  }

  return result;
}

unint64_t sub_1D8F03D10()
{
  result = qword_1ECAB6880;
  if (!qword_1ECAB6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6880);
  }

  return result;
}

uint64_t DownloadStateReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1D9176E3C();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6888, &unk_1D91937D0);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for DownloadStateReport(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F03C38();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1D8F0CA8C(&unk_1EDCD7610, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v15 = v26;
  v16 = v24;
  sub_1D91798FC();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6870, &qword_1D91937C8);
  v28 = 1;
  sub_1D8F04100();
  sub_1D91798FC();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1D8F0C9C4(v18, v22, type metadata accessor for DownloadStateReport);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D8F0CA2C(v18, type metadata accessor for DownloadStateReport);
}

unint64_t sub_1D8F04100()
{
  result = qword_1ECAB6890;
  if (!qword_1ECAB6890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6870, &qword_1D91937C8);
    sub_1D8F04184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6890);
  }

  return result;
}

unint64_t sub_1D8F04184()
{
  result = qword_1ECAB6898;
  if (!qword_1ECAB6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6898);
  }

  return result;
}

uint64_t ShowDownloadReport.showID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShowDownloadReport.autoDownloadExplaination.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D8F04254(v2);
}

uint64_t sub_1D8F04254(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t ShowDownloadReport.autoRemovalExplaination.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D8F04254(v2);
}

unint64_t *ShowDownloadReport.asTable()()
{
  v1 = *(v0 + 24);
  if (!v1[2])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v66 = v3;
  v67 = *(v0 + 24);
  v6 = *(v2 + 16);
  v61 = v5;
  if (v6)
  {
    v7 = sub_1D8D1B39C(v6, 0, &qword_1ECAB4D60, &qword_1D918A700);
    v8 = sub_1D8F0C1D0(&v76, v7 + 4, v6, v2);
    v72 = v76;
    v74 = v8;

    sub_1D8F04254(v3);
    sub_1D8F04254(v4);
    sub_1D8F04254(v5);

    sub_1D8D1B144(v72);
    if (v74 != v6)
    {
      goto LABEL_65;
    }
  }

  else
  {

    sub_1D8F04254(v3);
    sub_1D8F04254(v4);
    sub_1D8F04254(v5);
    v7 = MEMORY[0x1E69E7CC0];
  }

  v76 = v7;
  sub_1D8D6DD80(&v76);
  v10 = v67;
  v11 = v76;
  v12 = *(v67 + 16);
  v2 = &property descriptor for CategoryModel.parent;
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v76 = &unk_1F545D9C8;
    sub_1D8E2FE30(v11);
    v59 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4718, &qword_1D9192180);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1D9189080;
    *(v60 + 32) = v59;
    v76 = v60;
    sub_1D8E2FD2C(v15);

    sub_1D8F032B0(v3);
    sub_1D8F032B0(v4);
    sub_1D8F032B0(v61);
    return v76;
  }

  v76 = MEMORY[0x1E69E7CC0];
  v63 = v12;
  sub_1D8E3153C(0, v12, 0);
  v14 = 0;
  v15 = v76;
  v65 = *(v11 + 2);
  v62 = (v11 + 40);
  v64 = v11;
  while (v14 < *(v10 + 16))
  {
    v73 = v15;
    v71 = v14;
    v16 = (v67 + 32 + 56 * v14);
    v17 = v16[2];
    v19 = v16[3];
    v18 = v16[4];
    v21 = v16[5];
    v20 = v16[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D9189080;
    v23 = *(v19 + 16);
    v75 = v22;
    v70 = v20;
    v69 = v21;
    v68 = v18;
    if (v23)
    {

      sub_1D8F04254(v18);
      sub_1D8F04254(v21);
      sub_1D8F04254(v20);
      sub_1D8D41BE0(0, v23, 0);
      v24 = v13;
      v25 = (v19 + 32);
      do
      {
        v26 = *v25++;
        v27 = 0xEA00000000006465;
        v28 = 0x64616F6C6E776F64;
        switch(v26)
        {
          case 1:
            v28 = 0xD000000000000010;
            v27 = 0x80000001D91C79B0;
            break;
          case 2:
            v28 = 0x655265426C6C6977;
            v27 = 0xED00006465766F6DLL;
            break;
          case 3:
            v28 = 0xD000000000000014;
            v27 = 0x80000001D91C79D0;
            break;
          case 4:
            v28 = 0x6E776F4472657375;
            v27 = 0xEE00646564616F6CLL;
            break;
          case 5:
            v28 = 0x4C616964654D6E69;
            v27 = 0xEE00797261726269;
            break;
          case 6:
            v28 = 0x4D524464696C6176;
            v27 = 0xED00006E656B6F54;
            break;
          case 7:
            v28 = 0x4464657269707865;
            v27 = 0xEF6E656B6F544D52;
            break;
          case 8:
            v28 = 0xD000000000000017;
            v27 = 0x80000001D91C7A30;
            break;
          case 9:
            v28 = 0xD000000000000015;
            v27 = 0x80000001D91C7A50;
            break;
          case 10:
            v28 = 0xD000000000000017;
            v27 = 0x80000001D91C7A70;
            break;
          case 11:
            v28 = 0xD000000000000014;
            v27 = 0x80000001D91C7A90;
            break;
          case 12:
            v28 = 0xD000000000000015;
            v27 = 0x80000001D91C7AB0;
            break;
          case 13:
            v28 = 0xD000000000000012;
            v27 = 0x80000001D91C7AD0;
            break;
          default:
            break;
        }

        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D8D41BE0((v29 > 1), v30 + 1, 1);
        }

        *(v24 + 16) = v30 + 1;
        v31 = v24 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        --v23;
      }

      while (v23);
      v13 = MEMORY[0x1E69E7CC0];
      v32 = v75;
    }

    else
    {
      v32 = v22;

      sub_1D8F04254(v18);
      sub_1D8F04254(v21);
      sub_1D8F04254(v20);
    }

    v2 = &qword_1D918DE30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v33 = sub_1D917817C();
    v35 = v34;

    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v36 = v65;
    if (v65)
    {
      sub_1D8D41BE0(0, v65, 0);
      v37 = v13;
      v38 = v62;
      while (*(v17 + 16))
      {
        v39 = *(v38 - 1);
        v40 = *v38;

        v41 = sub_1D8D30E1C(v39, v40, MEMORY[0x1E69E60C8], sub_1D8D04DE4);
        if ((v42 & 1) == 0)
        {
          goto LABEL_59;
        }

        v43 = (*(v17 + 56) + 16 * v41);
        v45 = *v43;
        v44 = v43[1];

        v2 = *(v37 + 16);
        v46 = *(v37 + 24);
        v47 = v2 + 1;
        if (v2 >= v46 >> 1)
        {
          sub_1D8D41BE0((v46 > 1), v2 + 1, 1);
        }

        *(v37 + 16) = v47;
        v48 = v37 + 16 * v2;
        *(v48 + 32) = v45;
        *(v48 + 40) = v44;
        v38 += 2;
        if (!--v36)
        {
          v13 = MEMORY[0x1E69E7CC0];
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
      break;
    }

    v47 = *(v13 + 16);
    v37 = v13;
LABEL_40:
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = v50 + v47;
    if (__OFADD__(v50, v47))
    {
      goto LABEL_61;
    }

    v52 = *(v75 + 24) >> 1;
    v2 = &property descriptor for CategoryModel.parent;
    v11 = v64;
    if (v52 < v51)
    {
      if (v50 <= v51)
      {
        v56 = v50 + v47;
      }

      else
      {
        v56 = *(v75 + 16);
      }

      v49 = sub_1D8D4241C(1, v56, 1, v75);
      v50 = *(v49 + 2);
      v52 = *(v49 + 3) >> 1;
      if (*(v37 + 16))
      {
LABEL_43:
        if ((v52 - v50) < v47)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v47)
        {
          v53 = *(v49 + 2);
          v54 = __OFADD__(v53, v47);
          v55 = v53 + v47;
          if (v54)
          {
            goto LABEL_64;
          }

          *(v49 + 2) = v55;
        }

        goto LABEL_52;
      }
    }

    else if (v47)
    {
      goto LABEL_43;
    }

    if (v47)
    {
      goto LABEL_62;
    }

LABEL_52:

    sub_1D8F032B0(v68);
    sub_1D8F032B0(v69);
    sub_1D8F032B0(v70);
    v15 = v73;
    v76 = v73;
    v58 = *(v73 + 2);
    v57 = *(v73 + 3);
    if (v58 >= v57 >> 1)
    {
      sub_1D8E3153C((v57 > 1), v58 + 1, 1);
      v15 = v76;
    }

    v14 = v71 + 1;
    *(v15 + 2) = v58 + 1;
    *&v15[8 * v58 + 32] = v49;
    v3 = v66;
    v10 = v67;
    if (v71 + 1 == v63)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t EpisodeDownloadReport.DownloadState.rawValue.getter()
{
  result = 0x64616F6C6E776F64;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x655265426C6C6977;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E776F4472657375;
      break;
    case 5:
      result = 0x4C616964654D6E69;
      break;
    case 6:
      result = 0x4D524464696C6176;
      break;
    case 7:
      result = 0x4464657269707865;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 9:
    case 0xC:
      result = 0xD000000000000015;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8F04CD4()
{
  v1 = *v0;
  v2 = 0x4449776F6873;
  v3 = 0x7365646F73697065;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69747265706F7270;
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

uint64_t sub_1D8F04D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F0C484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F04DA0(uint64_t a1)
{
  v2 = sub_1D8F0B48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F04DDC(uint64_t a1)
{
  v2 = sub_1D8F0B48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShowDownloadReport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68A0, &unk_1D91937E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F0B48C();
  sub_1D9179F1C();
  LOBYTE(v20) = 0;
  v9 = v18;
  sub_1D91799BC();
  if (!v9)
  {
    v10 = v15;
    v11 = v16;
    v12 = v14;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
    sub_1D8F0B60C(&qword_1ECAB68B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D91799FC();
    v20 = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68C0, &qword_1D91937F0);
    sub_1D8F0B4E0();
    sub_1D91799FC();
    v20 = v10;
    v19 = 3;
    sub_1D8F04254(v10);
    sub_1D8F0B5B8();
    sub_1D917999C();
    sub_1D8F032B0(v20);
    v20 = v12;
    v19 = 4;
    sub_1D8F04254(v12);
    sub_1D917999C();
    sub_1D8F032B0(v20);
  }

  return (*(v4 + 8))(v6, v3);
}

void ShowDownloadReport.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68E0, &qword_1D91937F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F0B48C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v21) = 0;
    v9 = sub_1D91798BC();
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
    v20 = 1;
    sub_1D8F0B60C(&qword_1ECAB68E8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D91798FC();
    v18 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68C0, &qword_1D91937F0);
    v20 = 2;
    sub_1D8F0B678();
    sub_1D91798FC();
    v17 = v21;
    v20 = 3;
    v16[1] = sub_1D8F0B750();
    sub_1D917989C();
    v16[0] = v21;
    v20 = 4;
    sub_1D917989C();
    (*(v6 + 8))(v8, v5);
    v11 = v21;
    v13 = v18;
    v12 = v19;
    *a2 = v9;
    a2[1] = v12;
    v14 = v17;
    a2[2] = v13;
    a2[3] = v14;
    v15 = v16[0];
    a2[4] = v16[0];
    a2[5] = v11;

    sub_1D8F04254(v15);
    sub_1D8F04254(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_1D8F032B0(v15);
    sub_1D8F032B0(v11);
  }
}

uint64_t EpisodeDownloadReport.episodeID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EpisodeDownloadReport.autoDownloadExplanation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D8F04254(v2);
}

uint64_t EpisodeDownloadReport.autoRemovalExplanation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D8F04254(v2);
}

uint64_t EpisodeDownloadReport.cacheDeleteExplanation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D8F04254(v2);
}

PodcastsFoundation::EpisodeDownloadReport::DownloadState_optional __swiftcall EpisodeDownloadReport.DownloadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8F055FC()
{
  v0 = EpisodeDownloadReport.DownloadState.rawValue.getter();
  v2 = v1;
  if (v0 == EpisodeDownloadReport.DownloadState.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9179ACC();
  }

  return v5 & 1;
}

uint64_t sub_1D8F05698()
{
  sub_1D9179DBC();
  EpisodeDownloadReport.DownloadState.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F05700(uint64_t a1)
{
  EpisodeDownloadReport.DownloadState.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F05764(uint64_t a1)
{
  sub_1D9179DBC();
  EpisodeDownloadReport.DownloadState.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F057D4@<X0>(unint64_t *a1@<X8>)
{
  result = EpisodeDownloadReport.DownloadState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D8F058BC()
{
  v1 = *v0;
  v2 = 0x4965646F73697065;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x69747265706F7270;
  if (v1 != 1)
  {
    v4 = 0x736574617473;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8F0598C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F0C644(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F059B4(uint64_t a1)
{
  v2 = sub_1D8F0B7A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F059F0(uint64_t a1)
{
  v2 = sub_1D8F0B7A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeDownloadReport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6908, &qword_1D9193800);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = v1[2];
  v19 = v1[3];
  v20 = v7;
  v8 = v1[4];
  v17 = v1[5];
  v18 = v8;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F0B7A4();
  sub_1D9179F1C();
  LOBYTE(v23) = 0;
  v9 = v21;
  sub_1D91799BC();
  if (!v9)
  {
    v10 = v18;
    v11 = v19;
    v12 = v16;
    v13 = v17;
    v23 = v20;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
    sub_1D8F0B60C(&qword_1ECAB68B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D91799FC();
    v23 = v11;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6918, &qword_1D9193808);
    sub_1D8F0B7F8();
    sub_1D91799FC();
    v23 = v10;
    v22 = 3;
    sub_1D8F04254(v10);
    sub_1D8F0B5B8();
    sub_1D917999C();
    sub_1D8F032B0(v23);
    v23 = v13;
    v22 = 4;
    sub_1D8F04254(v13);
    sub_1D917999C();
    sub_1D8F032B0(v23);
    v23 = v12;
    v22 = 5;
    sub_1D8F04254(v12);
    sub_1D917999C();
    sub_1D8F032B0(v23);
  }

  return (*(v4 + 8))(v6, v3);
}

void EpisodeDownloadReport.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6930, &qword_1D9193810);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F0B7A4();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v24) = 0;
    v9 = sub_1D91798BC();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
    v23 = 1;
    sub_1D8F0B60C(&qword_1ECAB68E8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D91798FC();
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6918, &qword_1D9193808);
    v23 = 2;
    sub_1D8F0B8D0();
    sub_1D91798FC();
    v21 = v24;
    v23 = 3;
    v19 = sub_1D8F0B750();
    v20 = 0;
    sub_1D917989C();
    v18 = v24;
    v23 = 4;
    sub_1D917989C();
    v17 = v24;
    v23 = 5;
    sub_1D917989C();
    (*(v6 + 8))(v8, v5);
    v12 = v24;
    *a2 = v9;
    a2[1] = v11;
    v13 = v21;
    a2[2] = v22;
    a2[3] = v13;
    v15 = v17;
    v14 = v18;
    a2[4] = v18;
    a2[5] = v15;
    a2[6] = v12;

    sub_1D8F04254(v14);
    sub_1D8F04254(v15);
    sub_1D8F04254(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_1D8F032B0(v14);
    sub_1D8F032B0(v15);
    sub_1D8F032B0(v12);
  }
}

void *sub_1D8F06268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_1D8F062F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1D8F0638C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F0, &qword_1D918A058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

unint64_t sub_1D8F06430(unsigned __int8 *a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F07300(a1, v2);
}

unint64_t sub_1D8F06554(unsigned __int8 *a1)
{
  v3 = sub_1D8D947C0(*(v1 + 40), *a1);

  return sub_1D8F0754C(a1, v3);
}

unint64_t sub_1D8F06598(unsigned __int8 *a1)
{
  v4[39] = *a1;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)(v4);
  v2 = sub_1D9179E1C();

  return sub_1D8F07840(a1, v2);
}

unint64_t sub_1D8F0660C(unsigned __int8 *a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F07B9C(a1, v2);
}

unint64_t sub_1D8F0671C(void **a1)
{
  sub_1D9179DBC();
  v2 = *a1;
  if (*a1)
  {
    sub_1D9179DDC();
    v3 = v2;
    sub_1D917915C();
  }

  else
  {
    sub_1D9179DDC();
  }

  MediaIdentifier.hash(into:)(v6);
  v4 = sub_1D9179E1C();

  return sub_1D8F07DC0(a1, v4);
}

unint64_t sub_1D8F067D4(uint64_t a1)
{
  v1 = a1;
  v4[39] = a1;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)(v4);
  v2 = sub_1D9179E1C();

  return sub_1D8F0800C(v1, v2);
}

unint64_t sub_1D8F06844(double *a1)
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)(v11, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_1D9179E1C();

  return sub_1D8F088DC(a1, v9);
}

unint64_t sub_1D8F06900(uint64_t a1)
{
  sub_1D917820C();
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1D9179E1C();

  return sub_1D8F089A4(a1, v2);
}

unint64_t sub_1D8F06994(uint64_t a1)
{
  v2 = sub_1D917913C();

  return sub_1D8F08AA8(a1, v2);
}

unint64_t sub_1D8F069D8(uint64_t a1)
{
  sub_1D917653C();
  v2 = MEMORY[0x1E6967EC8];
  sub_1D8F0CA8C(&qword_1ECAB2CC8, MEMORY[0x1E6967EC8], MEMORY[0x1E6967ED0]);
  v3 = sub_1D917813C();
  return sub_1D8F08B6C(a1, v3, MEMORY[0x1E6967EC8], &qword_1ECAB2CC0, v2, MEMORY[0x1E6967ED8]);
}

unint64_t sub_1D8F06AAC(uint64_t *a1)
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)(v4);
  v2 = sub_1D9179E1C();

  return sub_1D8F08D0C(a1, v2);
}

unint64_t sub_1D8F06BC0(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(void, double), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_1D9179DBC();
  a2(v12);
  v10 = sub_1D9179E1C();
  return sub_1D8F08E24(a1, v10, a3, a4, a5);
}

unint64_t sub_1D8F06C58(uint64_t a1)
{
  v1 = a1;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F09568(v1, v2);
}

unint64_t sub_1D8F06DCC(uint64_t a1)
{
  v1 = a1;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F09774(v1, v2);
}

unint64_t sub_1D8F06EDC(uint64_t a1)
{
  v1 = a1;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F09960(v1, v2, v3);
}

unint64_t sub_1D8F06F8C(uint64_t a1)
{
  v1 = a1;
  sub_1D9179DBC();
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1D9179E1C();

  return sub_1D8F09A4C(v1, v2);
}

uint64_t sub_1D8F07018(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1D9179DBC();
  a2(a1);
  v5 = sub_1D9179E1C();

  return a3(a1, v5);
}

unint64_t sub_1D8F07098(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (a2)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v4 = sub_1D9179E1C();

  return sub_1D8F09F70(a1, a2, v4);
}

unint64_t sub_1D8F0712C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  v6 = sub_1D9179E1C();

  return sub_1D8F0A03C(a1, a2, a3 & 1, v6);
}

unint64_t sub_1D8F071DC(__int128 *a1)
{
  v2 = a1[3];
  *&v6[13] = a1[2];
  *&v6[15] = v2;
  v7[0] = a1[4];
  *(v7 + 11) = *(a1 + 75);
  v3 = a1[1];
  *&v6[9] = *a1;
  *&v6[11] = v3;
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v6);
  v4 = sub_1D9179E1C();

  return sub_1D8F0A12C(a1, v4);
}

unint64_t sub_1D8F0726C(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_1D9179DBC();
  if (v2 == 2)
  {
    MEMORY[0x1DA72B390](1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();
  }

  v3 = sub_1D9179E1C();

  return sub_1D8F0A27C(v1, v3);
}

unint64_t sub_1D8F07300(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0x7365646F73697065;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x80000001D91C7F20;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        if (v6 > 1)
        {
LABEL_20:
          v10 = 0x7372657470616863;
          if (v6 == 3)
          {
            v10 = 0x697263736E617274;
          }

          v11 = 0xEB00000000737470;
          if (v6 != 3)
          {
            v11 = 0xE800000000000000;
          }

          if (v6 == 2)
          {
            v12 = 0x2D74736163646F70;
          }

          else
          {
            v12 = v10;
          }

          if (v6 == 2)
          {
            v13 = 0xEF736E6F73616573;
          }

          else
          {
            v13 = v11;
          }

          if (v8 != v12)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x2D74736163646F70;
        v9 = 0xEF736E6F73616573;
        if (v6 > 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x697263736E617274;
        }

        else
        {
          v8 = 0x7372657470616863;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000737470;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        if (v6 > 1)
        {
          goto LABEL_20;
        }
      }

      if (v6)
      {
        v13 = 0x80000001D91C7F20;
        if (v8 != 0xD000000000000010)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v8 != 0x7365646F73697065)
        {
          goto LABEL_38;
        }
      }

LABEL_37:
      if (v9 == v13)
      {

        return v4;
      }

LABEL_38:
      v14 = sub_1D9179ACC();

      if ((v14 & 1) == 0)
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

unint64_t sub_1D8F0754C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7374736163646F70;
          }

          else
          {
            v8 = 0xD000000000000010;
          }

          if (v7 == 1)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0x80000001D91C7F40;
          }

          if (v6 > 2)
          {
LABEL_23:
            v10 = 0x69726F6765746163;
            if (v6 != 5)
            {
              v10 = 0x6970652D7478656ELL;
            }

            v11 = 0xED00007365646F73;
            if (v6 == 5)
            {
              v11 = 0xEA00000000007365;
            }

            v12 = 0xD000000000000010;
            if (v6 != 3)
            {
              v12 = 0x697263736E617274;
            }

            v13 = 0xEB00000000737470;
            if (v6 == 3)
            {
              v13 = 0x80000001D91C7F60;
            }

            if (v6 <= 4)
            {
              v14 = v12;
            }

            else
            {
              v14 = v10;
            }

            if (v6 <= 4)
            {
              v15 = v13;
            }

            else
            {
              v15 = v11;
            }

            if (v8 != v14)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }

        else
        {
          v8 = 0xD000000000000010;
          v9 = 0x80000001D91C7F20;
          if (v6 > 2)
          {
            goto LABEL_23;
          }
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x69726F6765746163;
          v9 = 0xEA00000000007365;
          if (v6 > 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v8 = 0x6970652D7478656ELL;
          v9 = 0xED00007365646F73;
          if (v6 > 2)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v7 == 3)
      {
        v8 = 0xD000000000000010;
        v9 = 0x80000001D91C7F60;
        if (v6 > 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = 0x697263736E617274;
        v9 = 0xEB00000000737470;
        if (v6 > 2)
        {
          goto LABEL_23;
        }
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v16 = 0x7374736163646F70;
        }

        else
        {
          v16 = 0xD000000000000010;
        }

        if (v6 == 1)
        {
          v15 = 0xE800000000000000;
        }

        else
        {
          v15 = 0x80000001D91C7F40;
        }

        if (v8 != v16)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0x80000001D91C7F20;
        if (v8 != 0xD000000000000010)
        {
          goto LABEL_51;
        }
      }

LABEL_50:
      if (v9 == v15)
      {

        return v4;
      }

LABEL_51:
      v17 = sub_1D9179ACC();

      if ((v17 & 1) == 0)
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

unint64_t sub_1D8F07840(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v28 = ~v3;
    do
    {
      v6 = (*(v30 + 48) + 2 * v4);
      v7 = *v6;
      if (v7 <= 2)
      {
        if (*v6)
        {
          if (v7 == 1)
          {
            v9 = 0xE800000000000000;
            v8 = 0x7374736163646F70;
          }

          else
          {
            v8 = 0xD000000000000010;
            v9 = 0x80000001D91C7F40;
          }
        }

        else
        {
          v8 = 0xD000000000000010;
          v9 = 0x80000001D91C7F20;
        }
      }

      else if (*v6 > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x69726F6765746163;
          v9 = 0xEA00000000007365;
        }

        else
        {
          v8 = 0x6970652D7478656ELL;
          v9 = 0xED00007365646F73;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0x697263736E617274;
        }

        if (v7 == 3)
        {
          v9 = 0x80000001D91C7F60;
        }

        else
        {
          v9 = 0xEB00000000737470;
        }
      }

      v10 = v6[1];
      v11 = *a1;
      v12 = a1[1];
      v13 = 0x69726F6765746163;
      if (v11 != 5)
      {
        v13 = 0x6970652D7478656ELL;
      }

      v14 = 0xED00007365646F73;
      if (v11 == 5)
      {
        v14 = 0xEA00000000007365;
      }

      v15 = 0x697263736E617274;
      if (v11 == 3)
      {
        v15 = 0xD000000000000010;
      }

      v16 = 0xEB00000000737470;
      if (v11 == 3)
      {
        v16 = 0x80000001D91C7F60;
      }

      if (*a1 <= 4u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x7374736163646F70;
      if (v11 != 1)
      {
        v17 = 0xD000000000000010;
      }

      v18 = 0x80000001D91C7F40;
      if (v11 == 1)
      {
        v18 = 0xE800000000000000;
      }

      if (!*a1)
      {
        v17 = 0xD000000000000010;
        v18 = 0x80000001D91C7F20;
      }

      if (*a1 <= 2u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (*a1 <= 2u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (v8 == v19 && v9 == v20)
      {
      }

      else
      {
        v21 = sub_1D9179ACC();

        if ((v21 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v10 == 26)
      {
        if (v12 == 26)
        {
          return v4;
        }
      }

      else if (v12 != 26)
      {
        v22 = MediaRequest.IncludeExtendTypes.rawValue.getter();
        v24 = v23;
        if (v22 == MediaRequest.IncludeExtendTypes.rawValue.getter() && v24 == v25)
        {

          return v4;
        }

        v26 = sub_1D9179ACC();

        if (v26)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v28;
    }

    while (((*(v29 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D8F07B9C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0xD000000000000016;
        }

        else
        {
          v8 = 0x656C75646F6DLL;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x80000001D91C81C0;
        }

        else
        {
          v9 = 0xE600000000000000;
        }

        if (v6 > 1)
        {
LABEL_20:
          v10 = 0x4B79616C70736964;
          if (v6 == 3)
          {
            v10 = 0x6449636E7973;
          }

          v11 = 0xEC00000073646E69;
          if (v6 == 3)
          {
            v11 = 0xE600000000000000;
          }

          if (v6 == 2)
          {
            v12 = 0x6C725564656566;
          }

          else
          {
            v12 = v10;
          }

          if (v6 == 2)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = v11;
          }

          if (v8 != v12)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE700000000000000;
        v8 = 0x6C725564656566;
        if (v6 > 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6449636E7973;
        }

        else
        {
          v8 = 0x4B79616C70736964;
        }

        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xEC00000073646E69;
        }

        if (v6 > 1)
        {
          goto LABEL_20;
        }
      }

      if (v6)
      {
        v13 = 0x80000001D91C81C0;
        if (v8 != 0xD000000000000016)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v8 != 0x656C75646F6DLL)
        {
          goto LABEL_38;
        }
      }

LABEL_37:
      if (v9 == v13)
      {

        return v4;
      }

LABEL_38:
      v14 = sub_1D9179ACC();

      if ((v14 & 1) == 0)
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

unint64_t sub_1D8F07DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v20 = v2 + 64;
    v21 = ~v4;
    v22 = *a1;
    v32 = *(a1 + 8);
    v33 = *(a1 + 24);
    v34 = *(a1 + 40);
    do
    {
      v6 = *(v2 + 48) + 48 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      if (*v6)
      {
        if (!v22)
        {
          goto LABEL_4;
        }

        v13 = v2;
        sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
        v14 = v7;
        sub_1D8D092C0(v8, v10, v9, v11, v12);
        v15 = v22;
        v16 = v14;
        v17 = sub_1D917914C();

        if ((v17 & 1) == 0)
        {

          sub_1D8CFEACC(v8, v10, v9, v11, v12);
          v2 = v13;
          v3 = v20;
          goto LABEL_4;
        }

        v2 = v13;
        v3 = v20;
      }

      else
      {
        if (v22)
        {
          goto LABEL_4;
        }

        sub_1D8D092C0(v8, v10, v9, v11, v12);
        v16 = 0;
      }

      v27 = v8;
      v28 = v10;
      v29 = v9;
      v30 = v11;
      v31 = v12;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      sub_1D8D092C0(v8, v10, v9, v11, v12);
      sub_1D8E3ACE0(&v32, v23);
      v18 = _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(&v27, &v24);
      sub_1D8CFEACC(v24, *(&v24 + 1), v25, *(&v25 + 1), v26);
      sub_1D8CFEACC(v27, v28, v29, v30, v31);

      sub_1D8CFEACC(v8, v10, v9, v11, v12);
      if (v18)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v21;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D8F0800C(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v29 = HIBYTE(a1);
    v30 = ~v3;
    v5 = a1;
    do
    {
      v6 = (*(v31 + 48) + 2 * v4);
      v7 = *v6;
      if (v7 <= 2)
      {
        if (*v6)
        {
          if (v7 == 1)
          {
            v9 = 0xE800000000000000;
            v8 = 0x7374736163646F70;
          }

          else
          {
            v8 = 0xD000000000000010;
            v9 = 0x80000001D91C7F40;
          }
        }

        else
        {
          v8 = 0xD000000000000010;
          v9 = 0x80000001D91C7F20;
        }
      }

      else if (*v6 > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x69726F6765746163;
          v9 = 0xEA00000000007365;
        }

        else
        {
          v8 = 0x6970652D7478656ELL;
          v9 = 0xED00007365646F73;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0x697263736E617274;
        }

        if (v7 == 3)
        {
          v9 = 0x80000001D91C7F60;
        }

        else
        {
          v9 = 0xEB00000000737470;
        }
      }

      v10 = v6[1];
      v11 = 0x69726F6765746163;
      if (v5 != 5)
      {
        v11 = 0x6970652D7478656ELL;
      }

      v12 = 0xED00007365646F73;
      if (v5 == 5)
      {
        v12 = 0xEA00000000007365;
      }

      v13 = 0x697263736E617274;
      if (v5 == 3)
      {
        v13 = 0xD000000000000010;
      }

      v14 = 0xEB00000000737470;
      if (v5 == 3)
      {
        v14 = 0x80000001D91C7F60;
      }

      if (v5 <= 4)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x7374736163646F70;
      if (v5 != 1)
      {
        v15 = 0xD000000000000010;
      }

      v16 = 0xE800000000000000;
      if (v5 != 1)
      {
        v16 = 0x80000001D91C7F40;
      }

      if (!v5)
      {
        v15 = 0xD000000000000010;
        v16 = 0x80000001D91C7F20;
      }

      if (v5 <= 2)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (v5 <= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      if (v8 == v17 && v9 == v18)
      {
      }

      else
      {
        v19 = sub_1D9179ACC();

        if ((v19 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v20 = 0xE700000000000000;
      v21 = 0x6B726F77747261;
      v22 = 0x6B726F77747261;
      switch(v10)
      {
        case 0:
          break;
        case 1:
          v22 = 0x7263736275537369;
          v20 = 0xEC00000064656269;
          break;
        case 2:
          v22 = 0x72617262694C6E69;
          v20 = 0xE900000000000079;
          break;
        case 3:
          v22 = 0xD00000000000001ELL;
          v20 = 0x80000001D91C7FD0;
          break;
        case 4:
          v22 = 0xD000000000000012;
          v20 = 0x80000001D91C7FF0;
          break;
        case 5:
          v22 = 0xD000000000000010;
          v20 = 0x80000001D91C8010;
          break;
        case 6:
          v22 = 0xD000000000000012;
          v20 = 0x80000001D91C8030;
          break;
        case 7:
          v22 = 0xD000000000000011;
          v20 = 0x80000001D91C8050;
          break;
        case 8:
          v20 = 0xE800000000000000;
          v22 = 0x7365646F73697065;
          break;
        case 9:
          v22 = 0x74736163646F70;
          break;
        case 10:
          v20 = 0xE800000000000000;
          v22 = 0x7374736163646F70;
          break;
        case 11:
          v22 = 0x637365446C6C7566;
          v20 = 0xEF6E6F6974706972;
          break;
        case 12:
          v22 = 0xD000000000000017;
          v20 = 0x80000001D91C8080;
          break;
        case 13:
          v22 = 0x6C725564656566;
          break;
        case 14:
          v22 = 0x6C656E6E616863;
          break;
        case 15:
          v20 = 0xE600000000000000;
          v22 = 0x6C6C65737075;
          break;
        case 16:
          v22 = 0xD000000000000013;
          v20 = 0x80000001D91C80B0;
          break;
        case 17:
          v22 = 0xD000000000000010;
          v20 = 0x80000001D91C80D0;
          break;
        case 18:
          v22 = 0xD000000000000010;
          v20 = 0x80000001D91C80F0;
          break;
        case 19:
          v22 = 0x697263736E617274;
          v20 = 0xEB00000000737470;
          break;
        case 20:
          v22 = 0x74657070696E73;
          break;
        case 21:
          v22 = 0x69726F6765746163;
          goto LABEL_65;
        case 22:
          v20 = 0xE600000000000000;
          v22 = 0x746E65726170;
          break;
        case 23:
          v20 = 0xE800000000000000;
          v22 = 0x6E6572646C696863;
          break;
        case 24:
          v20 = 0xE800000000000000;
          v22 = 0x7372657470616863;
          break;
        case 25:
          v22 = 0x6D617266656D6974;
LABEL_65:
          v20 = 0xEA00000000007365;
          break;
        default:
          if (v29 != 26)
          {
            goto LABEL_4;
          }

          return v4;
      }

      v23 = 0xE700000000000000;
      switch(v29)
      {
        case 0:
          goto LABEL_122;
        case 1:
          v23 = 0xEC00000064656269;
          if (v22 != 0x7263736275537369)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 2:
          v23 = 0xE900000000000079;
          if (v22 != 0x72617262694C6E69)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 3:
          v23 = 0x80000001D91C7FD0;
          if (v22 != 0xD00000000000001ELL)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 4:
          v23 = 0x80000001D91C7FF0;
          if (v22 != 0xD000000000000012)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 5:
          v23 = 0x80000001D91C8010;
          if (v22 != 0xD000000000000010)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 6:
          v23 = 0x80000001D91C8030;
          if (v22 != 0xD000000000000012)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 7:
          v23 = 0x80000001D91C8050;
          if (v22 != 0xD000000000000011)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 8:
          v23 = 0xE800000000000000;
          if (v22 != 0x7365646F73697065)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 9:
          v25 = 0x736163646F70;
          goto LABEL_101;
        case 10:
          v23 = 0xE800000000000000;
          if (v22 != 0x7374736163646F70)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 11:
          v23 = 0xEF6E6F6974706972;
          if (v22 != 0x637365446C6C7566)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 12:
          v23 = 0x80000001D91C8080;
          if (v22 != 0xD000000000000017)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 13:
          v24 = 0x725564656566;
          goto LABEL_109;
        case 14:
          v24 = 0x656E6E616863;
LABEL_109:
          if (v22 != (v24 & 0xFFFFFFFFFFFFLL | 0x6C000000000000))
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 15:
          v23 = 0xE600000000000000;
          if (v22 != 0x6C6C65737075)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 16:
          v23 = 0x80000001D91C80B0;
          if (v22 != 0xD000000000000013)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 17:
          v23 = 0x80000001D91C80D0;
          if (v22 != 0xD000000000000010)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 18:
          v23 = 0x80000001D91C80F0;
          if (v22 != 0xD000000000000010)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 19:
          v21 = 0x697263736E617274;
          v23 = 0xEB00000000737470;
LABEL_122:
          if (v22 == v21)
          {
            goto LABEL_123;
          }

          goto LABEL_124;
        case 20:
          v25 = 0x657070696E73;
LABEL_101:
          if (v22 != (v25 & 0xFFFFFFFFFFFFLL | 0x74000000000000))
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 21:
          v26 = 0x69726F6765746163;
          goto LABEL_106;
        case 22:
          v23 = 0xE600000000000000;
          if (v22 != 0x746E65726170)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 23:
          v23 = 0xE800000000000000;
          if (v22 != 0x6E6572646C696863)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 24:
          v23 = 0xE800000000000000;
          if (v22 != 0x7372657470616863)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        case 25:
          v26 = 0x6D617266656D6974;
LABEL_106:
          v23 = 0xEA00000000007365;
          if (v22 != v26)
          {
            goto LABEL_124;
          }

LABEL_123:
          if (v20 == v23)
          {

            return v4;
          }

LABEL_124:
          v27 = sub_1D9179ACC();

          if (v27)
          {
            return v4;
          }

          break;
        default:
          break;
      }

LABEL_4:
      v4 = (v4 + 1) & v30;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D8F088DC(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D8D41388(*(v2 + 48) + 264 * v4, v9);
      v7 = _s18PodcastsFoundation14ArtworkRequestV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_1D8D58578(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D8F089A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D917820C();
      v8 = v7;
      if (v6 == sub_1D917820C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D9179ACC();

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

unint64_t sub_1D8F08AA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for FairPlayAsset();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D917914C();

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

unint64_t sub_1D8F08B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1D8F0CA8C(v24, v25, v26);
      v20 = sub_1D91781BC();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1D8F08D0C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    do
    {
      sub_1D8EC8C5C(*(v2 + 48) + 72 * v4, v12);
      if (v12[0] == v7 && (v12[1] == a1[1] ? (v8 = v12[2] == a1[2]) : (v8 = 0), v8 || (sub_1D9179ACC() & 1) != 0))
      {
        v9 = flt_1D918CD50[v13];
        v10 = flt_1D918CD50[*(a1 + 24)];
        sub_1D8EC8D90(v12);
        if (v9 == v10)
        {
          return v4;
        }
      }

      else
      {
        sub_1D8EC8D90(v12);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D8F08E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v59 = a4;
  v60 = a5;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v47 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v16 = &v47 - v15;
  v53 = a3(0, v14);
  MEMORY[0x1EEE9AC00](v53);
  v19 = &v47 - v18;
  v58 = v5;
  v20 = -1 << *(v5 + 32);
  v21 = a2 & ~v20;
  v56 = v5 + 64;
  if ((*(v5 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = *(v17 + 72);
    v54 = ~v20;
    v55 = v22;
    v23 = (v10 + 48);
    v48 = v16;
    v49 = (v10 + 32);
    v52 = (v10 + 8);
    v24 = v51;
    do
    {
      sub_1D8F0C9C4(*(v58 + 48) + v55 * v21, v19, v59);
      v25 = *(v57 + 48);
      sub_1D8ECA48C(v19, v16);
      sub_1D8ECA48C(a1, &v16[v25]);
      v26 = *v23;
      if ((*v23)(v16, 1, v9) == 1)
      {
        if (v26(&v16[v25], 1, v9) != 1)
        {
          goto LABEL_4;
        }

        sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      }

      else
      {
        sub_1D8ECA48C(v16, v24);
        if (v26(&v16[v25], 1, v9) == 1)
        {
          (*v52)(v24, v9);
LABEL_4:
          sub_1D8D08A50(v16, &qword_1ECAB6178, &unk_1D9193430);
LABEL_5:
          sub_1D8F0CA2C(v19, v60);
          goto LABEL_6;
        }

        v27 = v50;
        (*v49)(v50, &v16[v25], v9);
        sub_1D8F0CA8C(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v28 = sub_1D91781BC();
        v29 = *v52;
        v30 = v27;
        v24 = v51;
        (*v52)(v30, v9);
        v29(v24, v9);
        v16 = v48;
        sub_1D8D08A50(v48, &unk_1ECAB5910, &qword_1D9188C90);
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = v53[5];
      v32 = v19[v31];
      v33 = *(a1 + v31);
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          if (v32 != 2)
          {
            goto LABEL_5;
          }
        }

        else if (v32 != 3)
        {
          goto LABEL_5;
        }
      }

      else if (v33)
      {
        if (v32 != 1)
        {
          goto LABEL_5;
        }
      }

      else if (v32)
      {
        goto LABEL_5;
      }

      v34 = v53[6];
      v35 = *&v19[v34];
      v36 = *&v19[v34 + 8];
      v37 = (a1 + v34);
      v38 = v35 == *v37 && v36 == v37[1];
      if (!v38 && (sub_1D9179ACC() & 1) == 0)
      {
        goto LABEL_5;
      }

      v39 = v53[7];
      v40 = v19[v39];
      if (v40 <= 3)
      {
        if (v19[v39] > 1u)
        {
          v41 = 0xE400000000000000;
          if (v40 == 2)
          {
            v42 = 1734701162;
          }

          else
          {
            v42 = 1667851624;
          }
        }

        else if (v19[v39])
        {
          v42 = 6778986;
          v41 = 0xE300000000000000;
        }

        else
        {
          v41 = 0xE300000000000000;
          v42 = 6778480;
        }
      }

      else if (v19[v39] <= 5u)
      {
        if (v40 == 4)
        {
          v41 = 0xE300000000000000;
          v42 = 7633012;
        }

        else
        {
          v41 = 0xE500000000000000;
          v42 = 0x7473696C70;
        }
      }

      else if (v40 == 6)
      {
        v42 = 0x69736D617A616873;
        v41 = 0xEF65727574616E67;
      }

      else if (v40 == 7)
      {
        v41 = 0xE400000000000000;
        v42 = 1819112564;
      }

      else
      {
        v41 = 0xE300000000000000;
        v42 = 7105912;
      }

      v43 = *(a1 + v39);
      if (v43 <= 3)
      {
        if (v43 > 1)
        {
          v44 = 0xE400000000000000;
          if (v43 == 2)
          {
            if (v42 == 1734701162)
            {
              goto LABEL_69;
            }
          }

          else if (v42 == 1667851624)
          {
            goto LABEL_69;
          }
        }

        else if (v43)
        {
          v44 = 0xE300000000000000;
          if (v42 == 6778986)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v44 = 0xE300000000000000;
          if (v42 == 6778480)
          {
            goto LABEL_69;
          }
        }
      }

      else if (v43 <= 5)
      {
        if (v43 == 4)
        {
          v44 = 0xE300000000000000;
          if (v42 == 7633012)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v44 = 0xE500000000000000;
          if (v42 == 0x7473696C70)
          {
LABEL_69:
            if (v41 == v44)
            {

              sub_1D8F0CA2C(v19, v60);
              return v21;
            }
          }
        }
      }

      else if (v43 == 6)
      {
        v44 = 0xEF65727574616E67;
        if (v42 == 0x69736D617A616873)
        {
          goto LABEL_69;
        }
      }

      else if (v43 == 7)
      {
        v44 = 0xE400000000000000;
        if (v42 == 1819112564)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v44 = 0xE300000000000000;
        if (v42 == 7105912)
        {
          goto LABEL_69;
        }
      }

      v45 = sub_1D9179ACC();

      sub_1D8F0CA2C(v19, v60);
      if (v45)
      {
        return v21;
      }

LABEL_6:
      v21 = (v21 + 1) & v54;
    }

    while (((*(v56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

unint64_t sub_1D8F09568(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0xD000000000000010 : 0x7365646F73697065;
        v8 = *(*(v19 + 48) + v4) ? 0x80000001D91C7F20 : 0xE800000000000000;
      }

      else if (v6 == 2)
      {
        v7 = 0x2D74736163646F70;
        v8 = 0xEF736E6F73616573;
      }

      else
      {
        v7 = v6 == 3 ? 0x697263736E617274 : 0x7372657470616863;
        v8 = v6 == 3 ? 0xEB00000000737470 : 0xE800000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0x697263736E617274;
      }

      else
      {
        v9 = 0x7372657470616863;
      }

      if (v5 == 3)
      {
        v10 = 0xEB00000000737470;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (v5 == 2)
      {
        v9 = 0x2D74736163646F70;
        v10 = 0xEF736E6F73616573;
      }

      v11 = v5 ? 0xD000000000000010 : 0x7365646F73697065;
      v12 = v5 ? 0x80000001D91C7F20 : 0xE800000000000000;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_1D9179ACC();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D8F09774(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xD000000000000016;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v19 + 48) + v4) ? 0xD000000000000016 : 0x656C75646F6DLL;
        v9 = *(*(v19 + 48) + v4) ? 0x80000001D91C81C0 : 0xE600000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE700000000000000;
        v8 = 0x6C725564656566;
      }

      else
      {
        v8 = v7 == 3 ? 0x6449636E7973 : 0x4B79616C70736964;
        v9 = v7 == 3 ? 0xE600000000000000 : 0xEC00000073646E69;
      }

      if (v6 == 3)
      {
        v10 = 0x6449636E7973;
      }

      else
      {
        v10 = 0x4B79616C70736964;
      }

      if (v6 == 3)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xEC00000073646E69;
      }

      if (v6 == 2)
      {
        v10 = 0x6C725564656566;
        v11 = 0xE700000000000000;
      }

      if (v6)
      {
        v12 = 0x80000001D91C81C0;
      }

      else
      {
        v5 = 0x656C75646F6DLL;
        v12 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v5 : v10;
      v14 = v6 <= 1 ? v12 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_1D9179ACC();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xD000000000000016;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D8F09960(char a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *&aStdq_6[8 * a1];
    while (*&aStdq_6[8 * *(*(v3 + 48) + v5)] != v7)
    {
      v8 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    swift_bridgeObjectRelease_n();
  }

  return v5;
}

unint64_t sub_1D8F09A4C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 1684632949;
      v8 = 0xE400000000000000;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0x5565646F73697065;
          goto LABEL_21;
        case 2:
          v7 = 0xD000000000000011;
          v8 = 0x80000001D91C8520;
          break;
        case 3:
          v7 = 0x61725465726F7473;
          v8 = 0xEC00000064496B63;
          break;
        case 4:
          v7 = 0x6B63616279616C70;
          v8 = 0xED0000726564724FLL;
          break;
        case 5:
          v7 = 0x4674736163646F70;
          v8 = 0xEE004C5255646565;
          break;
        case 6:
          v7 = 1684632420;
          break;
        case 7:
          v7 = 0x49746E65746E6F63;
          v8 = 0xED000064496D6574;
          break;
        case 8:
          v7 = 0x4765646F73697065;
LABEL_21:
          v8 = 0xEB00000000646975;
          break;
        case 9:
          v7 = 0x5465646F73697065;
          goto LABEL_19;
        case 0xA:
          v7 = 0x5474736163646F70;
LABEL_19:
          v8 = 0xEC000000656C7469;
          break;
        case 0xB:
          v7 = 0x72556D6165727473;
          v8 = 0xE90000000000006CLL;
          break;
        case 0xC:
          v8 = 0xE800000000000000;
          v7 = 0x6461656879616C70;
          break;
        case 0xD:
          v7 = 0x7361655279616C70;
          v8 = 0xEA00000000006E6FLL;
          break;
        case 0xE:
          v8 = 0xE700000000000000;
          v7 = 0x747865746E6F63;
          break;
        case 0xF:
          v7 = 0x53747865746E6F63;
          v8 = 0xEF6570795474726FLL;
          break;
        case 0x10:
          v7 = 0x7265756575716E65;
          v8 = 0xEC00000044495344;
          break;
        default:
          break;
      }

      v9 = 1684632949;
      v10 = 0xE400000000000000;
      switch(a1)
      {
        case 1:
          v11 = 0x5565646F73697065;
          goto LABEL_56;
        case 2:
          v10 = 0x80000001D91C8520;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 3:
          v12 = 0x61725465726F7473;
          v13 = 1682533219;
          goto LABEL_38;
        case 4:
          v14 = 0x6B63616279616C70;
          v15 = 0x726564724FLL;
          goto LABEL_41;
        case 5:
          v10 = 0xEE004C5255646565;
          if (v7 != 0x4674736163646F70)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 6:
          if (v7 != 1684632420)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 7:
          v14 = 0x49746E65746E6F63;
          v15 = 0x64496D6574;
LABEL_41:
          v10 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v7 != v14)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 8:
          v11 = 0x4765646F73697065;
LABEL_56:
          v10 = 0xEB00000000646975;
          if (v7 != v11)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 9:
          v12 = 0x5465646F73697065;
          v13 = 1701606505;
          goto LABEL_38;
        case 10:
          v9 = 0x5474736163646F70;
          v10 = 0xEC000000656C7469;
          goto LABEL_50;
        case 11:
          v10 = 0xE90000000000006CLL;
          if (v7 != 0x72556D6165727473)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 12:
          v10 = 0xE800000000000000;
          if (v7 != 0x6461656879616C70)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 13:
          v10 = 0xEA00000000006E6FLL;
          if (v7 != 0x7361655279616C70)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 14:
          v10 = 0xE700000000000000;
          if (v7 != 0x747865746E6F63)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 15:
          v10 = 0xEF6570795474726FLL;
          if (v7 != 0x53747865746E6F63)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 16:
          v12 = 0x7265756575716E65;
          v13 = 1145656132;
LABEL_38:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v7 != v12)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        default:
LABEL_50:
          if (v7 != v9)
          {
            goto LABEL_52;
          }

LABEL_51:
          if (v8 == v10)
          {

            return v4;
          }

LABEL_52:
          v16 = sub_1D9179ACC();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1D8F09F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1D9179ACC() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D8F0A03C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      if (*(v13 + 16) == 1)
      {
        if (a3)
        {
          v15 = v14 == a1 && v13[1] == a2;
          if (v15 || (sub_1D9179ACC() & 1) != 0)
          {
            return v7;
          }
        }
      }

      else if ((a3 & 1) == 0 && v14 == a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1D8F0A12C(_OWORD *a1, uint64_t a2)
{
  v3 = a1[3];
  v29[2] = a1[2];
  v29[3] = v3;
  v30[0] = a1[4];
  *(v30 + 11) = *(a1 + 75);
  v4 = a1[1];
  v29[0] = *a1;
  v29[1] = v4;
  v5 = -1 << *(v2 + 32);
  v6 = a2 & ~v5;
  if ((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v2 + 48) + 96 * v6);
      v9 = v8[1];
      v25[0] = *v8;
      v25[1] = v9;
      v11 = v8[3];
      v10 = v8[4];
      v12 = v8[2];
      *(v26 + 11) = *(v8 + 75);
      v25[3] = v11;
      v26[0] = v10;
      v25[2] = v12;
      v13 = v8[1];
      v20 = *v8;
      v21 = v13;
      v14 = v8[2];
      v15 = v8[3];
      v16 = v8[4];
      *(v24 + 11) = *(v8 + 75);
      v23 = v15;
      v24[0] = v16;
      v22 = v14;
      sub_1D8F0C914(v25, &v19);
      v17 = _s18PodcastsFoundation17EpisodeStateModelV2eeoiySbAC_ACtFZ_0(&v20, v29);
      v27[2] = v22;
      v27[3] = v23;
      v28[0] = v24[0];
      *(v28 + 11) = *(v24 + 11);
      v27[0] = v20;
      v27[1] = v21;
      sub_1D8F0C970(v27);
      if (v17)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D8F0A27C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D8F0A30C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D9179ACC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D8F0A3DC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D8F5DE20(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D8F0A9B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D9179ACC();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1D9179ACC()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D8ECC734((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D8F0A9B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8F5DE20(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D8F5DD94(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1D9179ACC() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D8F0A9B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D9179ACC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D9179ACC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D8F0ABE0(void (**a1)(char *, char *, uint64_t), char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D91774DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v33 - v14;
  v15 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for NSFileManager.DirectoryContents(0) + 20);
  v20 = *(v16 + 28);
  v41 = v9;
  v21 = *(v9 + 16);
  v36 = v9 + 16;
  v37 = v20;
  v35 = v21;
  v21(&v18[v20], v4 + v19, v8);
  v22 = *v4;
  sub_1D91774AC();
  v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v24 = [v22 enumeratorAtPath_];

  v42 = v18;
  *v18 = v24;
  result = sub_1D8F0CA2C(v4, type metadata accessor for NSFileManager.DirectoryContents);
  if (!a2)
  {
LABEL_15:
    v27 = 0;
    goto LABEL_21;
  }

  v27 = a3;
  if (!a3)
  {
LABEL_21:
    sub_1D8F0C85C(v42, a1, v26);
    return v27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    a1 = (v41 + 32);
    v28 = 1;
    while (1)
    {
      if (!v24)
      {
        v27 = 0;
        v45 = 0u;
        v46 = 0u;
LABEL_18:
        sub_1D8D08A50(&v45, &qword_1ECAB57F0, &unk_1D9190AA0);
        goto LABEL_20;
      }

      if ([v24 nextObject])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45 = v43;
      v46 = v44;
      if (!*(&v44 + 1))
      {
        v27 = v28 - 1;
        goto LABEL_18;
      }

      if (!swift_dynamicCast())
      {
        break;
      }

      v35(v40, &v42[v37], v8);
      v29 = v39;
      sub_1D91774BC();
      v30 = *a1;
      v31 = v38;
      (*a1)(v38, v29, v8);
      v30(a2, v31, v8);
      if (a3 == v28)
      {
        goto LABEL_20;
      }

      a2 += *(v41 + 72);
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v27 = v28 - 1;
LABEL_20:
    a1 = v34;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *sub_1D8F0AF70(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_1D8DB5EC8(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_1D8DB5EC8(v19, v20, v21);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D8F0B0D0(uint64_t result, void *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v21 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v10 = v23 & *(v4 + 64);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v11 = 0;
    a3 = 0;
    goto LABEL_33;
  }

  result = sub_1D917969C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v11 = 0;
    goto LABEL_33;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v25 = v9;
  v26 = v7;
  v7 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  v27 = a3;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1D91796CC())
      {
        goto LABEL_30;
      }

      sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
      swift_dynamicCast();
      v19 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C8, &qword_1D918B148);
      result = swift_dynamicCast();
      v18 = v28;
      if (!v28)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (v15 << 9) | (8 * v16);
    v18 = *(*(v4 + 56) + v17);
    v19 = *(*(v4 + 48) + v17);

    if (!v19)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = v19;
    a2[1] = v18;
    a3 = v27;
    if (v13 == v27)
    {
      goto LABEL_31;
    }

    a2 += 2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
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

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v24 = v11 + 1;
  }

  else
  {
    v24 = v12;
  }

  v11 = v24 - 1;
LABEL_30:
  a3 = v7;
LABEL_31:
  v9 = v25;
  v7 = v26;
LABEL_33:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v11;
  v7[4] = v10;
  return a3;
}

void *sub_1D8F0B310(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1D8F0B48C()
{
  result = qword_1ECAB68A8;
  if (!qword_1ECAB68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68A8);
  }

  return result;
}

unint64_t sub_1D8F0B4E0()
{
  result = qword_1ECAB68C8;
  if (!qword_1ECAB68C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB68C0, &qword_1D91937F0);
    sub_1D8F0B564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68C8);
  }

  return result;
}

unint64_t sub_1D8F0B564()
{
  result = qword_1ECAB68D0;
  if (!qword_1ECAB68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68D0);
  }

  return result;
}

unint64_t sub_1D8F0B5B8()
{
  result = qword_1ECAB68D8;
  if (!qword_1ECAB68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68D8);
  }

  return result;
}

uint64_t sub_1D8F0B60C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB68B0, qword_1D91AC4E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8F0B678()
{
  result = qword_1ECAB68F0;
  if (!qword_1ECAB68F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB68C0, &qword_1D91937F0);
    sub_1D8F0B6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68F0);
  }

  return result;
}

unint64_t sub_1D8F0B6FC()
{
  result = qword_1ECAB68F8;
  if (!qword_1ECAB68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB68F8);
  }

  return result;
}

unint64_t sub_1D8F0B750()
{
  result = qword_1ECAB6900;
  if (!qword_1ECAB6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6900);
  }

  return result;
}

unint64_t sub_1D8F0B7A4()
{
  result = qword_1ECAB6910;
  if (!qword_1ECAB6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6910);
  }

  return result;
}

unint64_t sub_1D8F0B7F8()
{
  result = qword_1ECAB6920;
  if (!qword_1ECAB6920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6918, &qword_1D9193808);
    sub_1D8F0B87C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6920);
  }

  return result;
}

unint64_t sub_1D8F0B87C()
{
  result = qword_1ECAB6928;
  if (!qword_1ECAB6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6928);
  }

  return result;
}

unint64_t sub_1D8F0B8D0()
{
  result = qword_1ECAB6938;
  if (!qword_1ECAB6938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6918, &qword_1D9193808);
    sub_1D8F0B954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6938);
  }

  return result;
}

unint64_t sub_1D8F0B954()
{
  result = qword_1ECAB6940;
  if (!qword_1ECAB6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6940);
  }

  return result;
}

unint64_t sub_1D8F0B9AC()
{
  result = qword_1ECAB6948;
  if (!qword_1ECAB6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6948);
  }

  return result;
}

void sub_1D8F0BA6C(uint64_t a1)
{
  sub_1D9176E3C();
  if (v1 <= 0x3F)
  {
    sub_1D8F0BAF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8F0BAF0()
{
  if (!qword_1ECAB6968)
  {
    v0 = sub_1D91786FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB6968);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_So11NSPredicateC18PodcastsFoundationE14EvaluationTreeOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for EpisodeDownloadReport.DownloadState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EpisodeDownloadReport.DownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8F0BD1C()
{
  result = qword_1ECAB6970;
  if (!qword_1ECAB6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6970);
  }

  return result;
}

unint64_t sub_1D8F0BD74()
{
  result = qword_1ECAB6978;
  if (!qword_1ECAB6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6978);
  }

  return result;
}

unint64_t sub_1D8F0BDCC()
{
  result = qword_1ECAB6980;
  if (!qword_1ECAB6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6980);
  }

  return result;
}

unint64_t sub_1D8F0BE24()
{
  result = qword_1ECAB6988;
  if (!qword_1ECAB6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6988);
  }

  return result;
}

unint64_t sub_1D8F0BE7C()
{
  result = qword_1ECAB6990;
  if (!qword_1ECAB6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6990);
  }

  return result;
}

unint64_t sub_1D8F0BED4()
{
  result = qword_1ECAB6998;
  if (!qword_1ECAB6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6998);
  }

  return result;
}

unint64_t sub_1D8F0BF2C()
{
  result = qword_1ECAB69A0;
  if (!qword_1ECAB69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB69A0);
  }

  return result;
}

unint64_t sub_1D8F0BF84()
{
  result = qword_1ECAB69A8;
  if (!qword_1ECAB69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB69A8);
  }

  return result;
}

unint64_t sub_1D8F0BFDC()
{
  result = qword_1ECAB69B0;
  if (!qword_1ECAB69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB69B0);
  }

  return result;
}

void *sub_1D8F0C030(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1D8CFAD1C(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D8F0C1D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D8F0C328(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D8F0C484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F6873 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91CCC50 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91CCC70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8F0C644(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965646F73697065 && a2 == 0xE900000000000044;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736574617473 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91CCC90 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91CCCB0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91CCCD0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8F0C85C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8F0C8C0()
{
  result = qword_1ECAB69B8;
  if (!qword_1ECAB69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB69B8);
  }

  return result;
}

uint64_t sub_1D8F0C9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8F0CA2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8F0CA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id DownloadStateReportCollector.__allocating_init(managedObjectContext:episodePropertiesToReport:showPropertiesToReport:allEpisodes:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___PFDownloadsStateReportCollector_checker];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  v10[24] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id DownloadStateReportCollector.init(managedObjectContext:episodePropertiesToReport:showPropertiesToReport:allEpisodes:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &v4[OBJC_IVAR___PFDownloadsStateReportCollector_checker];
  *v5 = a1;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  v5[24] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DownloadStateReportCollector();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D8F0CBA4(uint64_t a1, uint64_t a2)
{
  v6 = *&v2[OBJC_IVAR___PFDownloadsStateReportCollector_checker];
  v5 = *&v2[OBJC_IVAR___PFDownloadsStateReportCollector_checker + 8];
  v7 = *&v2[OBJC_IVAR___PFDownloadsStateReportCollector_checker + 16];
  v8 = v2[OBJC_IVAR___PFDownloadsStateReportCollector_checker + 24];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 40) = v8;
  *(v10 + 48) = v11;
  *(v10 + 56) = sub_1D8F0D120;
  *(v10 + 64) = v9;
  v16[4] = sub_1D8EF54F8;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_30;
  v12 = _Block_copy(v16);

  v13 = v2;
  v14 = v6;

  [v14 performBlock_];
  _Block_release(v12);
}

uint64_t sub_1D8F0CD20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t))
{
  v6 = sub_1D917658C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB67B0, &unk_1D9193750);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8 + 32;
  v10 = type metadata accessor for DownloadStateReport(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_1D8F0D394(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D8F0D404(v9);
    if (a2)
    {
      swift_getErrorValue();
      v14 = sub_1D9179D2C();
      v16 = v15;
    }

    else
    {
      v16 = 0xE900000000000064;
      v14 = 0x656E696665646E75;
    }

    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1D917946C();

    strcpy(v25, "{ 'error': '");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    MEMORY[0x1DA7298F0](v14, v16);

    MEMORY[0x1DA7298F0](32039, 0xE200000000000000);
    sub_1D91765CC();
    swift_allocObject();
    sub_1D91765BC();
    sub_1D917657C();
    sub_1D917659C();
    v21 = sub_1D91765AC();
    v23 = v22;

    a3(v21, v23);
    return sub_1D8D7567C(v21, v23);
  }

  else
  {
    sub_1D8F0D46C(v9, v13);
    sub_1D91765CC();
    swift_allocObject();
    sub_1D91765BC();
    sub_1D917657C();
    sub_1D917659C();
    sub_1D8F0D4D0();
    v17 = sub_1D91765AC();
    v19 = v18;

    a3(v17, v19);
    sub_1D8D7567C(v17, v19);
    return sub_1D8F0D528(v13);
  }
}

id DownloadStateReportCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadStateReportCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadStateReportCollector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8F0D33C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_1D8F0D394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB67B0, &unk_1D9193750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F0D404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB67B0, &unk_1D9193750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8F0D46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadStateReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8F0D4D0()
{
  result = qword_1ECAB69D0;
  if (!qword_1ECAB69D0)
  {
    type metadata accessor for DownloadStateReport(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB69D0);
  }

  return result;
}

uint64_t sub_1D8F0D528(uint64_t a1)
{
  v2 = type metadata accessor for DownloadStateReport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D8F0D584@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D9177ACC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1D8F0D60C(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D9177ADC();
}

uint64_t sub_1D8F0D698()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D9177ACC();
}

uint64_t sub_1D8F0D710(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t sub_1D8F0D788(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177ABC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1D8F0D90C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t MediaSpaceCalculator.mediaPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaSpaceCalculator.init(mediaPath:calculationQueue:managedObjectContext:notificationCenter:fileManager:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v65 = a5;
  v79 = a4;
  v53 = a2;
  v71 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v52 - v11;
  v12 = sub_1D9178DFC();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9178FBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E0, &qword_1D91942F8);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v22 = &v52 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E8, &qword_1D9194300);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v52 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F0, &qword_1D9194308);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v52 - v24;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F8, &qword_1D9194310);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v58 = &v52 - v25;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A00, &qword_1D9194318);
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v52 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A08, &unk_1D9194320);
  v28 = *(v27 - 8);
  v75 = v27;
  v76 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v64 = &v52 - v29;
  *(v5 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = 0;
  v30 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v70 = sub_1D9176C2C();
  v74 = *(v70 - 8);
  (*(v74 + 16))(v6 + v30, a1, v70);
  swift_beginAccess();
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1D9177A9C();
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_managedObjectContext) = a3;
  sub_1D8CFD9D8(a5, v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager);
  v31 = v53;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_workQueue) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  swift_allocObject();
  v60 = a3;
  v32 = v31;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject) = sub_1D91778DC();
  sub_1D9178FCC();
  sub_1D9178FCC();
  sub_1D8D11A14(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D9177BFC();
  v33 = *(v15 + 8);
  v33(v17, v14);
  v33(v20, v14);
  sub_1D8CF48EC(&qword_1ECAB0518, &qword_1ECAB69E0, &qword_1D91942F8, MEMORY[0x1E695BE80]);
  v34 = v52;
  v35 = v55;
  sub_1D9177B9C();
  (*(v56 + 8))(v22, v35);
  *&v80 = *(v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);
  sub_1D8CF48EC(&qword_1ECAB0760, &qword_1ECAB69E8, &qword_1D9194300, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF88]);
  v36 = v54;
  v37 = v57;
  sub_1D9177BEC();
  (*(v59 + 8))(v34, v37);
  v38 = v66;
  sub_1D9178DCC();
  *&v80 = v32;
  v39 = v32;
  v40 = sub_1D9178DBC();
  v41 = v72;
  (*(*(v40 - 8) + 56))(v72, 1, 1, v40);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB06C8, &qword_1ECAB69F0, &qword_1D9194308, MEMORY[0x1E695BDC0]);
  sub_1D8D02DF0();
  v42 = v58;
  v43 = v61;
  sub_1D9177CFC();
  sub_1D8D08A50(v41, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v77 + 8))(v38, v78);
  (*(v62 + 8))(v36, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1D8F125AC;
  *(v44 + 24) = v6;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A10, &qword_1D9194330);
  sub_1D8CF48EC(&qword_1ECAB0538, &qword_1ECAB69F8, &qword_1D9194310, MEMORY[0x1E695BE50]);
  sub_1D8CF48EC(&qword_1ECAB06D0, &qword_1ECAB6A10, &qword_1D9194330, MEMORY[0x1E695BDA0]);
  v45 = v63;
  v46 = v67;
  sub_1D9177DDC();

  (*(v68 + 8))(v42, v46);
  sub_1D8CF48EC(&qword_1ECAB0558, &qword_1ECAB6A00, &qword_1D9194318, MEMORY[0x1E695BE40]);
  v47 = v64;
  v48 = v69;
  sub_1D9177B2C();
  (*(v73 + 8))(v45, v48);
  swift_getKeyPath();
  *&v80 = v6;
  sub_1D8CF48EC(&qword_1ECAB0B88, &qword_1ECAB6A08, &unk_1D9194320, MEMORY[0x1E695BC80]);
  v49 = v75;
  v50 = sub_1D9177DAC();

  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  (*(v74 + 8))(v71, v70);
  (*(v76 + 8))(v47, v49);
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = v50;

  return v6;
}

void *MediaSpaceCalculator.MediaSpaceDistribution.init(volumeSpace:volumeAvailableCapacity:totalUsedSpace:autoDownloadSpace:manualDownloadSpace:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  *a6 = *result;
  a6[1] = v6;
  a6[2] = v7;
  a6[3] = v8;
  a6[4] = v9;
  return result;
}

__n128 sub_1D8F0E628@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D8F0E644@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A78, &qword_1D9194640);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A80, &qword_1D9194648);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A88, &qword_1D9194650);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A90, &qword_1D9194658);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v36 - v14;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F20);
  v16 = sub_1D917741C();
  v17 = sub_1D9178CDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Attempting to recompute media storage distribution", v18, 2u);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v19 = sub_1D9176C2C();
  swift_allocBox();
  (*(*(v19 - 8) + 16))(v20, v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath, v19);
  v21 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_managedObjectContext);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = sub_1D8F1250C;
  v22[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A98, &qword_1D9194660);
  swift_allocObject();

  v23 = v21;
  v24 = sub_1D9177A5C();
  v25 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_workQueue);
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v48 = v24;
  v49 = v25;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0258, &qword_1ECAB6A98, &qword_1D9194660, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A08, &qword_1ECAB6A78, &qword_1D9194640, MEMORY[0x1E695BCB8]);
  v27 = v37;
  v28 = v38;
  sub_1D9177CEC();

  (*(v36 + 8))(v5, v27);
  sub_1D8D08A50(v8, &qword_1ECAB4D70, &unk_1D918BCE0);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8F12534;
  *(v29 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AA0, &qword_1D9194668);
  sub_1D8CF48EC(&qword_1ECAB0428, &qword_1ECAB6A80, &qword_1D9194648, MEMORY[0x1E695BE98]);
  v30 = v39;
  v31 = v41;
  sub_1D9177C6C();

  (*(v40 + 8))(v28, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AA8, &qword_1D9194670);
  v32 = v43;
  v33 = v44;
  sub_1D91776EC();

  (*(v42 + 8))(v30, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB0, &unk_1D9194678);
  sub_1D8CF48EC(&qword_1ECAB0650, &qword_1ECAB6A90, &qword_1D9194658, MEMORY[0x1E695BE28]);
  sub_1D8CF48EC(&qword_1ECAB02D0, &qword_1ECAB6AB0, &unk_1D9194678, MEMORY[0x1E695C008]);
  v34 = v46;
  sub_1D9177BDC();
  (*(v45 + 8))(v33, v34);
}

void sub_1D8F0EDEC(uint64_t *a1@<X8>)
{
  v3 = sub_1D8F11E40();
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v4 = sub_1D917908C();

  if (!v1)
  {
    *a1 = v4;
  }
}

void sub_1D8F0EE64(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917697C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1D9176B7C();
  swift_endAccess();
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB8, &qword_1D9194688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  v15 = *MEMORY[0x1E695DE98];
  *(inited + 32) = *MEMORY[0x1E695DE98];
  v16 = *MEMORY[0x1E695DD60];
  *(inited + 40) = *MEMORY[0x1E695DD60];
  v17 = v15;
  v18 = v16;
  sub_1D8DB9EE8(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1D9176ADC();
  if (v3)
  {
    (*(v6 + 8))(v8, v5);

    return;
  }

  (*(v6 + 8))(v8, v5);

  v19 = sub_1D917694C();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if (v21 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v22 = sub_1D917695C();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v24 < 0)
  {
    goto LABEL_14;
  }

  sub_1D8F0F190(&unk_1F545DB98, v12, &v34);
  v25 = v34;
  sub_1D8F0F190(&unk_1F545DBD8, v12, &v33);
  v26 = v33;
  sub_1D8F0F190(&unk_1F545DC08, v12, &v32);
  (*(v29 + 8))(v11, v30);
  v28 = v31;
  v27 = v32;
  *v31 = v21;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  v28[4] = v27;
  *(v28 + 40) = 0;
}

_BYTE *sub_1D8F0F190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D8E3148C(0, v5, 0);
    v6 = v26;
    v8 = (a1 + 32);
    v9 = *(v26 + 16);
    do
    {
      v11 = *v8++;
      v10 = v11;
      v12 = *(v26 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1D8E3148C((v12 > 1), v9 + 1, 1);
      }

      *(v26 + 16) = v9 + 1;
      *(v26 + 8 * v9++ + 32) = v10;
      --v5;
    }

    while (v5);
  }

  sub_1D8FC1078(v6);

  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1D8F120E4(a2, sub_1D8F125A0);

  result = v14;
  v16 = 0;
  v17 = 0;
  v18 = 1 << result[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 8);
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v22 = v16;
LABEL_15:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = *(*(result + 7) + ((v22 << 9) | (8 * v23)));
    v25 = __CFADD__(v17, v24);
    v17 += v24;
    if (v25)
    {
      __break(1u);
LABEL_18:

      *a3 = v17;
      return result;
    }
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      goto LABEL_18;
    }

    v20 = *&result[8 * v22 + 64];
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F0F36C(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v13[0] = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Encountered error while computing space distribution values: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AA8, &qword_1D9194670);
  return sub_1D9177A0C();
}

uint64_t sub_1D8F0F524(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A70, &unk_1D91949A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  isUniquelyReferenced_nonNull_native = &v60 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v73 = (&v60 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v60 - v14;
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v64 = v6;
    v66 = v4;
    v67 = v2;
    swift_retain_n();
    if (!i)
    {
      break;
    }

    v2 = 0;
    v71 = (a1 & 0xC000000000000001);
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = v74 + 48;
    v17 = MEMORY[0x1E69E7CC0];
    *&v68 = a1;
    while (1)
    {
      if (v71)
      {
        v18 = MEMORY[0x1DA72AA90](v2, a1);
      }

      else
      {
        if (v2 >= *(v16 + 16))
        {
          goto LABEL_60;
        }

        v18 = *(a1 + 8 * v2 + 32);
      }

      v19 = v18;
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_1D8F0FDB0(v18, isUniquelyReferenced_nonNull_native);

      if ((*v4)(isUniquelyReferenced_nonNull_native, 1, v77) == 1)
      {
        sub_1D8D08A50(isUniquelyReferenced_nonNull_native, &qword_1ECAB6A70, &unk_1D91949A0);
      }

      else
      {
        v20 = v69;
        sub_1D8F1242C(isUniquelyReferenced_nonNull_native, v69);
        sub_1D8F1242C(v20, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D8ECCCBC(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1D8ECCCBC((v21 > 1), v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        sub_1D8F1242C(v72, v17 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v22);
        a1 = v68;
      }

      ++v2;
      if (v6 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:

  a1 = v17[2];
  if (!a1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v67;
    goto LABEL_39;
  }

  v24 = 0;
  v71 = v65 + 1;
  v72 = v65 + 2;
  v69 = a1 - 1;
  v25 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = &unk_1D9194630;
  *&v23 = 136315650;
  v68 = v23;
  v26 = v67;
LABEL_21:
  v27 = v24;
  while (1)
  {
    if (v27 >= v17[2])
    {
      goto LABEL_64;
    }

    v28 = v73;
    sub_1D8F1249C(v17 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v27, v73);
    v2 = *v28;
    v6 = *(v77 + 48);
    v29 = v28 + v6;
    v4 = v70;
    sub_1D8F1016C(v29, &v75);
    if (v26)
    {
      break;
    }

    if ((v76 & 1) == 0)
    {
      v67 = v75;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v30 = sub_1D917744C();
      __swift_project_value_buffer(v30, qword_1EDCD0F20);
      (v72->isa)(v64, v73 + v6, v66);
      v31 = sub_1D917741C();
      v32 = sub_1D9178CDC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v62 = v32;
        v34 = v33;
        v63 = swift_slowAlloc();
        v75 = v63;
        *v34 = v68;
        sub_1D8D11A14(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v65 = v31;
        v35 = v64;
        v36 = sub_1D9179A4C();
        v60 = v37;
        v61 = v36;
        (v71->isa)(v35, v66);
        v61 = sub_1D8CFA924(v61, v60, &v75);

        *(v34 + 4) = v61;
        *(v34 + 12) = 2048;
        v38 = v67;
        *(v34 + 14) = v67 >> 20;
        *(v34 + 22) = 2048;
        *(v34 + 24) = v38;
        _os_log_impl(&dword_1D8CEC000, v65, v62, "Found downloaded file at %s with size: %llu MB (%lluB)", v34, 0x20u);
        v39 = v63;
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1DA72CB90](v39, -1, -1);
        MEMORY[0x1DA72CB90](v34, -1, -1);
      }

      else
      {

        (v71->isa)(v64, v66);
      }

      sub_1D8D08A50(v73, &qword_1ECAB6C60, &unk_1D9194630);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D8ECCBB8(0, *(v25 + 2) + 1, 1, v25);
      }

      v6 = *(v25 + 2);
      v40 = *(v25 + 3);
      v4 = v6 + 1;
      if (v6 >= v40 >> 1)
      {
        v25 = sub_1D8ECCBB8((v40 > 1), v6 + 1, 1, v25);
      }

      v24 = v27 + 1;
      *(v25 + 2) = v4;
      v41 = &v25[16 * v6];
      v42 = v67;
      *(v41 + 4) = v2;
      *(v41 + 5) = v42;
      if (v69 == v27)
      {
LABEL_39:
        v67 = v26;

        a1 = *(v25 + 2);
        if (!a1)
        {
          v4 = MEMORY[0x1E69E7CC8];
LABEL_57:

          return v4;
        }

        v43 = 0;
        v44 = (v25 + 40);
        v4 = MEMORY[0x1E69E7CC8];
        while (2)
        {
          if (v43 >= *(v25 + 2))
          {
            goto LABEL_61;
          }

          v2 = *(v44 - 1);
          v45 = *v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v4;
          v46 = sub_1D8D490F4(v2);
          v48 = *(v4 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_62;
          }

          v6 = v47;
          if (*(v4 + 24) >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_47;
            }

            isUniquelyReferenced_nonNull_native = v46;
            sub_1D8F834A4();
            v46 = isUniquelyReferenced_nonNull_native;
            v4 = v75;
            if ((v6 & 1) == 0)
            {
LABEL_48:
              *(v4 + 8 * (v46 >> 6) + 64) |= 1 << v46;
              *(*(v4 + 48) + 8 * v46) = v2;
              *(*(v4 + 56) + 8 * v46) = 0;
              v53 = *(v4 + 16);
              v50 = __OFADD__(v53, 1);
              v54 = v53 + 1;
              if (v50)
              {
                goto LABEL_65;
              }

              *(v4 + 16) = v54;
            }
          }

          else
          {
            sub_1D90062A4(v51, isUniquelyReferenced_nonNull_native);
            v4 = v75;
            v46 = sub_1D8D490F4(v2);
            if ((v6 & 1) != (v52 & 1))
            {
              result = sub_1D9179CFC();
              __break(1u);
              return result;
            }

LABEL_47:
            if ((v6 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v55 = *(v4 + 56);
          v56 = *(v55 + 8 * v46);
          v57 = __CFADD__(v56, v45);
          v58 = v56 + v45;
          if (v57)
          {
            goto LABEL_63;
          }

          ++v43;
          *(v55 + 8 * v46) = v58;
          v44 += 2;
          if (a1 == v43)
          {
            goto LABEL_57;
          }

          continue;
        }
      }

      goto LABEL_21;
    }

    ++v27;
    sub_1D8D08A50(v73, &qword_1ECAB6C60, &unk_1D9194630);
    if (a1 == v27)
    {
      goto LABEL_39;
    }
  }

  sub_1D8D08A50(v73, &qword_1ECAB6C60, &unk_1D9194630);

  return v4;
}