id sub_1D8F85520(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_1D8F8566C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B08, &qword_1D9199738);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1D8DB5EC8(v19, v20, v21);
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

void *sub_1D8F85824(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_1D8F85984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4240, &qword_1D9188D88);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_1D8F85AE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = (*(v2 + 48) + 96 * v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v26[11] = *(v18 + 75);
        v25[3] = v20;
        *v26 = v21;
        v22 = v18[1];
        v25[0] = *v18;
        v25[1] = v22;
        v25[2] = v19;
        v23 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 96 * v17), v18, 0x5BuLL);
        *(*(v4 + 56) + 8 * v17) = v23;
        sub_1D8F0C914(v25, &v24);
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

void *sub_1D8F85C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AF0, &qword_1D9199728);
  v2 = *v0;
  v3 = sub_1D917977C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_1D8F85DE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        result = sub_1D8D1C3BC(v19, v20, v21);
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

void *sub_1D8F85F60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A88, &unk_1D91A6B40);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D917977C();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;

        result = sub_1D8D1C3BC(v20, v21, v22);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_1D8F86124()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE8, &unk_1D91A6BD0);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1D8D80148(*(v4 + 56) + v23, v26, type metadata accessor for EpisodePlayState);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1D8F86EDC(v22, *(v24 + 56) + v23, type metadata accessor for EpisodePlayState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_1D8F8635C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void sub_1D8F864A8()
{
  v1 = v0;
  v33 = sub_1D9176EAC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void sub_1D8F86728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v2 = *v0;
  v3 = sub_1D917977C();
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

void sub_1D8F86884()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        *v25 = v20;
        v25[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v24;
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

void *sub_1D8F86A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B38, &unk_1D91A6CA0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void sub_1D8F86B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1D8F86CF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AD8, &unk_1D91A6BB0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

unint64_t sub_1D8F86E60(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1D9179E1C();

  return sub_1D8D04DE4(a1, a2, v4);
}

uint64_t sub_1D8F86EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8F86F44()
{
  result = qword_1EDCD76D0;
  if (!qword_1EDCD76D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD76D0);
  }

  return result;
}

uint64_t AnalyticsUserIdentifier.clientId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId);

  return v1;
}

id sub_1D8F86FE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t AnalyticsUserIdentifier.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId);

  return v1;
}

id AnalyticsUserIdentifier.__allocating_init(clientId:userId:userAllowsPersonalization:userUnder13YearsOld:userIsManagedAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v17 = a3;
  v17[1] = a4;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a5;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a6;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id AnalyticsUserIdentifier.init(clientId:userId:userAllowsPersonalization:userUnder13YearsOld:userIsManagedAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v17 = a3;
  v17[1] = a4;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a5;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a6;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a7;
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id AnalyticsUserIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsUserIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8F87480()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
    if (qword_1EDCD2AB0 != -1)
    {
      swift_once();
    }

    [v4 setClientInfo_];
    [v4 setResetInterval_];
    v5 = [*(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore) ams_activeiTunesAccount];
    [v4 setAccount_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1D8F8763C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8F87694(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1D8F877BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDCD0708;
    sub_1D91772DC(v3, &dword_1D8CEC000, v4, "Resetting identifiers for analytics", 35, 2, MEMORY[0x1E69E7CC0]);

    v5 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock];
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v5 + 4);
    sub_1D8D04F40(v8);
    os_unfair_lock_unlock(v5 + 4);

    v9 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v9 setBool:0 forKey:v10];

    sub_1D8DAAEA4();
  }
}

void sub_1D8F879B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  if ([*(a1 + v2) isFinished])
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E698CA58]) init];
    v4 = *(a1 + v2);
    *(a1 + v2) = v3;
  }

  v5 = sub_1D8F87480();
  [v5 reset];
}

uint64_t static AnalyticsIdentifierManager.hashDSIDWithSalt(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9177FBC();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177FAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D917825C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D91782EC() < 1)
  {
    return 0;
  }

  v25 = v8;
  v29[0] = a1;
  v29[1] = a2;

  MEMORY[0x1DA7298F0](0xD000000000000020, 0x80000001D91CF990);
  sub_1D917824C();
  v15 = sub_1D917821C();
  v17 = v16;

  (*(v12 + 8))(v14, v11);
  if (v17 >> 60 == 15)
  {
    return 0;
  }

  sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v19 = v15;
  sub_1D9177F9C();
  sub_1D8D752C4(v15, v17);
  sub_1D8F88024(v15, v17, v6);
  sub_1D8D75668(v15, v17);
  sub_1D9177F8C();
  (*(v26 + 8))(v6, v4);
  v30 = v7;
  v31 = sub_1D8CFBD60(&qword_1ECAB01E8, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  v21 = v25;
  (*(v25 + 16))(boxed_opaque_existential_0, v10, v7);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  sub_1D91768EC();
  (*(v21 + 8))(v10, v7);
  v22 = v27;
  v23 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v24 = sub_1D9176C7C();
  sub_1D8D7567C(v22, v23);
  sub_1D8D75668(v19, v17);
  return v24;
}

id AnalyticsIdentifierManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsIdentifierManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_1D8F87F90@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D8F883F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D8F884B0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D8F8852C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1D8F88024(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1D9177FBC();
      sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1D9177F7C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1D8F88318(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1D8F88318(v5, v6);
  }

  sub_1D9177FBC();
  sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1D9177F7C();
}

uint64_t sub_1D8F88318(uint64_t a1, uint64_t a2)
{
  result = sub_1D917681C();
  if (!result || (result = sub_1D917683C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D917682C();
      sub_1D9177FBC();
      sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1D9177F7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F883F8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D8F884B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D917684C();
  swift_allocObject();
  result = sub_1D917680C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D9176C5C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D8F8852C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D917684C();
  swift_allocObject();
  result = sub_1D917680C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id FeedUpdateMetricsAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D8F89388(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1D8F893FC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1D8F89458(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1D8F894A0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D8F894AC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D8F894DC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8F89530(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

unint64_t MetricsActionContext.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

unint64_t sub_1D8F89608()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

void *MetricsActionContext.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D8F8978C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_1D9179ADC();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t MetricsActionContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1D8F898F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

unint64_t sub_1D8F89A44()
{
  result = qword_1ECAB7B88;
  if (!qword_1ECAB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B88);
  }

  return result;
}

unint64_t MetricsActionResult.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_1D8F89B40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

void *MetricsActionResult.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsActionResult.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F89DA0()
{
  result = qword_1ECAB7B90;
  if (!qword_1ECAB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B90);
  }

  return result;
}

unint64_t MetricsActionType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1D8F89E9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

void *MetricsActionType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsActionType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8A500()
{
  result = qword_1ECAB7B98;
  if (!qword_1ECAB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B98);
  }

  return result;
}

unint64_t MetricsContentKind.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8A5FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

void *MetricsContentKind.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsContentKind.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8A870()
{
  result = qword_1ECAB7BA0;
  if (!qword_1ECAB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BA0);
  }

  return result;
}

uint64_t MetricsEngagementThresholdMet.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x6465636E79736E75;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 28526;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8F8A944(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6465636E79736E75;
  if (v3 != 2)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE800000000000000;
  v12 = 0x6465636E79736E75;
  if (*a2 != 2)
  {
    v12 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

unint64_t sub_1D8F8AA68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8F8AA98(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D8F8AB04()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F8ABB4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F8AC50(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t MetricsEngagementThresholdMet.debugDescription.getter(unsigned __int8 a1)
{
  sub_1D917946C();

  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (a1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1DA7298F0](v6, v7);

  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8ADD8()
{
  v1 = *v0;
  sub_1D917946C();

  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1DA7298F0](v6, v7);

  return 0xD00000000000001ELL;
}

unint64_t _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8F8AF00()
{
  result = qword_1ECAB7BA8;
  if (!qword_1ECAB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BA8);
  }

  return result;
}

uint64_t sub_1D8F8AF6C()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F8AFE0(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v2);
  return sub_1D9179E1C();
}

unint64_t MetricsEventVersion.debugDescription.getter()
{
  sub_1D917946C();

  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8B110()
{
  result = qword_1ECAB7BB0;
  if (!qword_1ECAB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BB0);
  }

  return result;
}

void *MetricsEventVersion.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179B1C();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D8F8B264@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1D9179B1C();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v5;
  return result;
}

uint64_t MetricsEventVersion.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179BAC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1D8F8B3B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D9179BAC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

unint64_t sub_1D8F8B478()
{
  result = qword_1ECAB7BB8;
  if (!qword_1ECAB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BB8);
  }

  return result;
}

unint64_t MetricsIDType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D8F8B570()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

void *MetricsIDType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsIDType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8B7FC()
{
  result = qword_1ECAB7BC0;
  if (!qword_1ECAB7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BC0);
  }

  return result;
}

unint64_t MetricsImpressionsQueue.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000023;
}

unint64_t sub_1D8F8B8F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000023;
}

void *MetricsImpressionsQueue.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsImpressionsQueue.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8BB3C()
{
  result = qword_1ECAB7BC8;
  if (!qword_1ECAB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BC8);
  }

  return result;
}

unint64_t MetricsOfferType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001CLL;
}

unint64_t sub_1D8F8BC38()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001CLL;
}

void *MetricsOfferType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsOfferType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8BEAC()
{
  result = qword_1ECAB7BD0;
  if (!qword_1ECAB7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BD0);
  }

  return result;
}

unint64_t MetricsPageContext.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8BFA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

void *MetricsPageContext.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsPageContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8C328()
{
  result = qword_1ECAB7BD8;
  if (!qword_1ECAB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BD8);
  }

  return result;
}

unsigned __int8 *MetricsPageID.adamID.getter(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

uint64_t static MetricsPageID.unique()()
{
  v0 = sub_1D9176EAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v1 + 8))(v3, v0);
  v4 = sub_1D917827C();
  v6 = v5;

  v11[2] = v4;
  v11[3] = v6;
  v11[0] = 45;
  v11[1] = 0xE100000000000000;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v7 = sub_1D8D447DC();
  v8 = sub_1D917922C(v11, v10, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v7, v7, v7);

  return v8;
}

unint64_t MetricsPageID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D8F8C630()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

void *MetricsPageID.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsPageID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8CB08()
{
  result = qword_1ECAB7BE0;
  if (!qword_1ECAB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BE0);
  }

  return result;
}

unint64_t MetricsPageType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8F8CC04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

void *MetricsPageType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsPageType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8D054()
{
  result = qword_1ECAB7BE8;
  if (!qword_1ECAB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BE8);
  }

  return result;
}

unint64_t MetricsPageVariant.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8D150()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

void *MetricsPageVariant.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsPageVariant.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8D3C8()
{
  result = qword_1ECAB7BF0;
  if (!qword_1ECAB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BF0);
  }

  return result;
}

unint64_t MetricsSearchHintsFilter.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000024;
}

unint64_t sub_1D8F8D4C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000024;
}

void *MetricsSearchHintsFilter.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsSearchHintsFilter.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8D72C()
{
  result = qword_1ECAB7BF8;
  if (!qword_1ECAB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BF8);
  }

  return result;
}

unsigned __int8 *MetricsTargetID.adamID.getter(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

uint64_t MetricsTargetID.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1D917852C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

unint64_t MetricsTargetID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8F8D950()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

void *MetricsTargetID.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsTargetID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8DF1C()
{
  result = qword_1ECAB7C00;
  if (!qword_1ECAB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C00);
  }

  return result;
}

unint64_t MetricsTargetType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1D8F8E018()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

void *MetricsTargetType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsTargetType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8E488()
{
  result = qword_1ECAB7C08;
  if (!qword_1ECAB7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C08);
  }

  return result;
}

unint64_t MetricsTopic.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1D8F8E584()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000018;
}

void *MetricsTopic.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t MetricsTopic.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1D8F8E850()
{
  result = qword_1ECAB7C10;
  if (!qword_1ECAB7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C10);
  }

  return result;
}

uint64_t MetricsWidgetContext.widgetID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsWidgetContext.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetricsWidgetContext.subjectID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall MetricsWidgetContext.init(widgetID:name:size:subjectID:)(PodcastsFoundation::MetricsWidgetContext *__return_ptr retstr, Swift::String widgetID, Swift::String name, Swift::Int size, Swift::String_optional subjectID)
{
  retstr->widgetID = widgetID;
  retstr->name = name;
  retstr->size = size;
  retstr->subjectID = subjectID;
}

uint64_t sub_1D8F8E958()
{
  v1 = 0x4449746567646977;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 0x497463656A627573;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_1D8F8E9C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F901B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F8E9F0(uint64_t a1)
{
  v2 = sub_1D8F8FF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F8EA2C(uint64_t a1)
{
  v2 = sub_1D8F8FF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsWidgetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C18, &qword_1D919B580);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F8FF2C();
  sub_1D9179F1C();
  v15 = 0;
  v9 = v11[5];
  sub_1D91799BC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1D91799BC();
  v13 = 2;
  sub_1D91799EC();
  v12 = 3;
  sub_1D917994C();
  return (*(v4 + 8))(v6, v3);
}

void MetricsWidgetContext.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C20, &qword_1D919B588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F8FF2C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v29 = 0;
    v9 = sub_1D91798BC();
    v25 = v10;
    v28 = 1;
    v23 = sub_1D91798BC();
    v24 = v11;
    v27 = 2;
    v22 = sub_1D91798EC();
    v26 = 3;
    v12 = sub_1D917984C();
    v14 = v13;
    v15 = *(v6 + 8);
    v21 = v12;
    v15(v8, v5);
    v17 = v24;
    v16 = v25;
    *a2 = v9;
    a2[1] = v16;
    v18 = v22;
    a2[2] = v23;
    a2[3] = v17;
    v19 = v21;
    a2[4] = v18;
    a2[5] = v19;
    a2[6] = v14;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

Swift::String_optional __swiftcall MetricsWidgetContext.encodeToString()()
{
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  sub_1D8F8FF80();
  v0 = sub_1D91765AC();
  v2 = v1;

  v3 = sub_1D9176C7C();
  v5 = v4;
  sub_1D8D7567C(v0, v2);
  v6 = v5;
  v7 = v3;
  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

double static MetricsWidgetContext.decodeFromString(_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2 || (v4 = sub_1D9176C4C(), v5 >> 60 == 15))
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v6 = v4;
    v7 = v5;
    sub_1D917656C();
    swift_allocObject();
    sub_1D917655C();
    sub_1D8F8FFD4();
    sub_1D917654C();
    sub_1D8D75668(v6, v7);

    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
    result = *&v12;
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t URL.widgetContext.getter@<X0>(_OWORD *a1@<X8>)
{
  v40 = sub_1D91766EC();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C28, &unk_1D919B590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1D917673C();
  v39 = v13;
  sub_1D8F90028(v13, v10);
  v14 = sub_1D91767FC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_1D8D08A50(v10, &qword_1ECAB76F0, &qword_1D91B6700);
LABEL_19:
    result = sub_1D8D08A50(v39, &qword_1ECAB76F0, &qword_1D91B6700);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *(a1 + 6) = 0;
    return result;
  }

  v38 = v7;
  v16 = sub_1D917670C();
  result = (*(v15 + 8))(v10, v14);
  if (!v16)
  {
    goto LABEL_19;
  }

  v37 = a1;
  v18 = *(v16 + 16);
  v19 = v40;
  if (!v18)
  {
LABEL_11:

    v25 = 1;
    a1 = v37;
    v26 = v38;
LABEL_14:
    (*(v2 + 56))(v26, v25, 1, v19);
    if ((*(v2 + 48))(v26, 1, v19) == 1)
    {
      sub_1D8D08A50(v26, &qword_1ECAB7C28, &unk_1D919B590);
    }

    else
    {
      sub_1D91766DC();
      v28 = v27;
      (*(v2 + 8))(v26, v19);
      if (v28)
      {
        v29 = sub_1D9176C4C();
        if (v30 >> 60 != 15)
        {
          v31 = v29;
          v32 = v30;
          sub_1D917656C();
          swift_allocObject();
          sub_1D917655C();
          sub_1D8F8FFD4();
          sub_1D917654C();
          sub_1D8D75668(v31, v32);

          result = sub_1D8D08A50(v39, &qword_1ECAB76F0, &qword_1D91B6700);
          v33 = v42;
          v34 = v43;
          v35 = v45;
          v36 = v37;
          *v37 = v41;
          *(v36 + 2) = v33;
          *(v36 + 3) = v34;
          v36[2] = v44;
          *(v36 + 6) = v35;
          return result;
        }

        a1 = v37;
      }
    }

    goto LABEL_19;
  }

  v20 = 0;
  v21 = 0x6F43746567646977;
  while (v20 < *(v16 + 16))
  {
    (*(v2 + 16))(v4, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v19);
    if (sub_1D91766CC() == v21 && v22 == 0xED0000747865746ELL)
    {

LABEL_13:

      v26 = v38;
      v19 = v40;
      (*(v2 + 32))(v38, v4, v40);
      v25 = 0;
      a1 = v37;
      goto LABEL_14;
    }

    v23 = v21;
    v24 = sub_1D9179ACC();

    if (v24)
    {
      goto LABEL_13;
    }

    ++v20;
    v19 = v40;
    result = (*(v2 + 8))(v4, v40);
    v21 = v23;
    if (v18 == v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t URL.appending(widgetContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - v6;
  v7 = sub_1D91766EC();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_1D91767FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v21 = a1[4];
  v53 = a1[5];
  v54 = v3;
  v22 = a1[6];
  v24 = v23;
  v26 = v25;
  sub_1D917673C();
  if ((*(v24 + 48))(v13, 1, v26) == 1)
  {
    sub_1D8D08A50(v13, &qword_1ECAB76F0, &qword_1D91B6700);
    v28 = sub_1D9176C2C();
    return (*(*(v28 - 8) + 16))(v55, v54, v28);
  }

  else
  {
    (*(v24 + 32))(v16, v13, v26);
    sub_1D91765CC();
    swift_allocObject();
    v47 = v16;
    v27 = v24;
    sub_1D91765BC();
    v56 = v17;
    v57 = v18;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v61 = v53;
    v62 = v22;
    sub_1D8F8FF80();
    v30 = sub_1D91765AC();
    v32 = v31;
    v53 = v26;

    sub_1D9176C7C();
    sub_1D8D7567C(v30, v32);
    v33 = v49;
    sub_1D91766BC();

    v34 = v47;
    v35 = sub_1D917670C();
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    v38 = v50;
    v37 = v51;
    v39 = v48;
    (*(v50 + 16))(v48, v33, v51);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1D8D8EDF4(0, v36[2] + 1, 1, v36);
    }

    v40 = v52;
    v42 = v36[2];
    v41 = v36[3];
    if (v42 >= v41 >> 1)
    {
      v36 = sub_1D8D8EDF4((v41 > 1), v42 + 1, 1, v36);
    }

    v36[2] = v42 + 1;
    (*(v38 + 32))(v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v42, v39, v37);
    sub_1D917671C();
    sub_1D917674C();
    (*(v38 + 8))(v33, v37);
    (*(v27 + 8))(v34, v53);
    v43 = sub_1D9176C2C();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    if (v45(v40, 1, v43) == 1)
    {
      (*(v44 + 16))(v55, v54, v43);
      result = v45(v40, 1, v43);
      if (result != 1)
      {
        return sub_1D8D08A50(v40, &unk_1ECAB5910, &qword_1D9188C90);
      }
    }

    else
    {
      return (*(v44 + 32))(v55, v40, v43);
    }
  }

  return result;
}

unint64_t MetricsWidgetContext.metricsDictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0x6449746567646977;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v9;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v9;
  *(inited + 128) = 1702521203;
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v5;

  v10 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  v16 = v10;
  if (v7)
  {
    v15 = v9;
    *&v14 = v6;
    *(&v14 + 1) = v7;
    sub_1D8D65618(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v13, 0x497463656A627573, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    return v10;
  }

  else
  {
    sub_1D8F7ECD4(&v14);
    sub_1D8D08A50(&v14, &qword_1ECAB57F0, &unk_1D9190AA0);
    return v16;
  }
}

uint64_t _s18PodcastsFoundation20MetricsWidgetContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v10)
    {
      return 0;
    }

LABEL_10:
    if (v6)
    {
      if (!v11 || (v5 != v9 || v6 != v11) && (sub_1D9179ACC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1D9179ACC();
  result = 0;
  if ((v12 & 1) != 0 && v4 == v10)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1D8F8FF2C()
{
  result = qword_1EDCD6288;
  if (!qword_1EDCD6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6288);
  }

  return result;
}

unint64_t sub_1D8F8FF80()
{
  result = qword_1EDCD3970;
  if (!qword_1EDCD3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3970);
  }

  return result;
}

unint64_t sub_1D8F8FFD4()
{
  result = qword_1ECAB1DB0;
  if (!qword_1ECAB1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1DB0);
  }

  return result;
}

uint64_t sub_1D8F90028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8F900AC()
{
  result = qword_1ECAB7C30;
  if (!qword_1ECAB7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C30);
  }

  return result;
}

unint64_t sub_1D8F90104()
{
  result = qword_1EDCD6278;
  if (!qword_1EDCD6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6278);
  }

  return result;
}

unint64_t sub_1D8F9015C()
{
  result = qword_1EDCD6280;
  if (!qword_1EDCD6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6280);
  }

  return result;
}

uint64_t sub_1D8F901B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746567646977 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x497463656A627573 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t PageContextTracker.__allocating_init(historySize:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = a1;
  }

  v3 = swift_allocObject();
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  return v3;
}

uint64_t PageContextTracker.copy()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v2;
  *(v4 + 16) = v5;
  return v4;
}

unint64_t sub_1D8F90464(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      return result;
    }

    v2 = *(*v1 + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (!v3)
    {
      goto LABEL_8;
    }

    return sub_1D8F908B0(result, v2, sub_1D8D58388, sub_1D8F906DC);
  }

  return result;
}

PodcastsFoundation::MetricsPageContext_optional __swiftcall PageContextTracker.pop()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];

    sub_1D8F908B0(0, 1, sub_1D8D58388, sub_1D8F906DC);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  os_unfair_lock_unlock((v1 + 24));
  v6 = v3;
  v7 = v4;
  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall PageContextTracker.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t PageContextTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D8F90608(unint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    *(v9 + 8) = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D8F906DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D8F907B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = v13 + 64 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F908B0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

PodcastsFoundation::ContentRating_optional __swiftcall ContentRating.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ContentRating_explicit;
  }

  else
  {
    v2.value = PodcastsFoundation_ContentRating_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ContentRating.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746963696C707865;
  }

  else
  {
    return 0x6E61656C63;
  }
}

uint64_t sub_1D8F90A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746963696C707865;
  }

  else
  {
    v3 = 0x6E61656C63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746963696C707865;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

unint64_t sub_1D8F90AB8()
{
  result = qword_1ECAB7C40;
  if (!qword_1ECAB7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C40);
  }

  return result;
}

uint64_t sub_1D8F90B0C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F90B8C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F90BF8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8F90C74(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8F90CD4(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C63;
  if (*v1)
  {
    v2 = 0x746963696C707865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D8F90DD0()
{
  result = qword_1EDCD5560[0];
  if (!qword_1EDCD5560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5560);
  }

  return result;
}

uint64_t DisplayType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701147238;
  }

  if (a1 == 1)
  {
    return 1684627824;
  }

  return 0x646972627968;
}

uint64_t sub_1D8F90E68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701147238;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684627824;
  if (*a2 != 1)
  {
    v8 = 0x646972627968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701147238;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F90F48()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F90FD8(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F91054(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F910E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8D39C58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8F91110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701147238;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D8F91210()
{
  result = qword_1ECAB7C48;
  if (!qword_1ECAB7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C48);
  }

  return result;
}

unint64_t sub_1D8F91274()
{
  result = qword_1ECAB2AB0;
  if (!qword_1ECAB2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AB0);
  }

  return result;
}

PodcastsFoundation::SectionContext_optional __swiftcall SectionContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

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

uint64_t SectionContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x72656C69617254;
  }

  else
  {
    return 0x6E6F73616553;
  }
}

uint64_t sub_1D8F91364(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656C69617254;
  }

  else
  {
    v3 = 0x6E6F73616553;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656C69617254;
  }

  else
  {
    v5 = 0x6E6F73616553;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8F91408()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F91488(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F914F4(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8F91570(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8F915D0(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F73616553;
  if (*v1)
  {
    v2 = 0x72656C69617254;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D8F91610(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D75736572;
    v6 = 7824750;
    if (a1 != 2)
    {
      v6 = 1954047342;
    }

    if (a1)
    {
      v5 = 0x6961674179616C70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x796C746E65636572;
    v2 = 0x6465766173;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6465776F6C6C6F66;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8F9173C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F94000(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F91770(uint64_t a1)
{
  v2 = sub_1D8F93430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F917AC(uint64_t a1)
{
  v2 = sub_1D8F93430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F917F4(uint64_t a1)
{
  v2 = sub_1D8F93580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91830(uint64_t a1)
{
  v2 = sub_1D8F93580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9186C(uint64_t a1)
{
  v2 = sub_1D8F9367C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F918A8(uint64_t a1)
{
  v2 = sub_1D8F9367C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F918E4(uint64_t a1)
{
  v2 = sub_1D8F93628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91920(uint64_t a1)
{
  v2 = sub_1D8F93628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9195C(uint64_t a1)
{
  v2 = sub_1D8F936D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91998(uint64_t a1)
{
  v2 = sub_1D8F936D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8F919F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63537478654E7075 && a2 == 0xEB0000000065726FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8F91A80(uint64_t a1)
{
  v2 = sub_1D8F93484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91ABC(uint64_t a1)
{
  v2 = sub_1D8F93484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91AF8(uint64_t a1)
{
  v2 = sub_1D8F935D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91B34(uint64_t a1)
{
  v2 = sub_1D8F935D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91B70(uint64_t a1)
{
  v2 = sub_1D8F9352C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91BAC(uint64_t a1)
{
  v2 = sub_1D8F9352C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91BE8(uint64_t a1)
{
  v2 = sub_1D8F93724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91C24(uint64_t a1)
{
  v2 = sub_1D8F93724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91C60(uint64_t a1)
{
  v2 = sub_1D8F934D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91C9C(uint64_t a1)
{
  v2 = sub_1D8F934D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListenNowReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C50, &qword_1D919BA70);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C58, &qword_1D919BA78);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C60, &qword_1D919BA80);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C68, &qword_1D919BA88);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C70, &qword_1D919BA90);
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C78, &qword_1D919BA98);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C80, &qword_1D919BAA0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v39 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C88, &qword_1D919BAA8);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v39 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C90, &qword_1D919BAB0);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C98, &qword_1D919BAB8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v23 = *v1;
  v24 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F93430();
  sub_1D9179F1C();
  if (v24 != 1)
  {
    v73[0] = 8;
    sub_1D8F93484();
    v29 = v62;
    sub_1D917993C();
    v30 = v64;
    sub_1D91799DC();
    (*(v63 + 8))(v29, v30);
    return (*(v20 + 8))(v22, v19);
  }

  v25 = (v20 + 8);
  if (v23 <= 3)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v68 = 3;
        sub_1D8F93628();
        v38 = v47;
        sub_1D917993C();
        v37 = v49;
        v26 = *(v48 + 8);
        v27 = v38;
        goto LABEL_18;
      }

      v67 = 2;
      sub_1D8F9367C();
      v35 = v44;
      sub_1D917993C();
      v26 = *(v45 + 8);
      v27 = v35;
      v28 = &v76;
    }

    else if (v23)
    {
      v66 = 1;
      sub_1D8F936D0();
      v36 = v41;
      sub_1D917993C();
      v26 = *(v42 + 8);
      v27 = v36;
      v28 = &v75;
    }

    else
    {
      v65 = 0;
      sub_1D8F93724();
      sub_1D917993C();
      v26 = *(v39 + 8);
      v27 = v18;
      v28 = &v74;
    }

    v37 = *(v28 - 32);
LABEL_18:
    v26(v27, v37);
    return (*v25)(v22, v19);
  }

  if (v23 > 5)
  {
    if (v23 == 6)
    {
      v71 = 6;
      sub_1D8F9352C();
      v32 = v56;
      sub_1D917993C();
      v34 = v57;
      v33 = v58;
    }

    else
    {
      v72 = 7;
      sub_1D8F934D8();
      v32 = v59;
      sub_1D917993C();
      v34 = v60;
      v33 = v61;
    }
  }

  else if (v23 == 4)
  {
    v69 = 4;
    sub_1D8F935D4();
    v32 = v50;
    sub_1D917993C();
    v34 = v51;
    v33 = v52;
  }

  else
  {
    v70 = 5;
    sub_1D8F93580();
    v32 = v53;
    sub_1D917993C();
    v34 = v54;
    v33 = v55;
  }

  (*(v34 + 8))(v32, v33);
  return (*v25)(v22, v19);
}

uint64_t EpisodeListenNowReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7CF0, &qword_1D919BAC0);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7CF8, &qword_1D919BAC8);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D00, &qword_1D919BAD0);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v50 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D08, &qword_1D919BAD8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v75 = &v50 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D10, &qword_1D919BAE0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v74 = &v50 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D18, &qword_1D919BAE8);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v73 = &v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D20, &qword_1D919BAF0);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v70 = &v50 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D28, &qword_1D919BAF8);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D30, &qword_1D919BB00);
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D38, &unk_1D919BB08);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D8F93430();
  v24 = v79;
  sub_1D9179EEC();
  if (v24)
  {
    goto LABEL_10;
  }

  v51 = v18;
  v50 = v16;
  v52 = v15;
  v25 = v73;
  v26 = v74;
  v28 = v75;
  v27 = v76;
  v79 = v20;
  v29 = v77;
  v30 = sub_1D917991C();
  v31 = (2 * *(v30 + 16)) | 1;
  v81 = v30;
  v82 = v30 + 32;
  v83 = 0;
  v84 = v31;
  v32 = sub_1D8E89BDC();
  if (v32 == 9 || v83 != v84 >> 1)
  {
    v37 = sub_1D917951C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
    *v39 = &type metadata for EpisodeListenNowReason;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v79 + 8))(v22, v19);
    swift_unknownObjectRelease();
LABEL_10:
    v40 = v78;
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  if (v32 <= 3u)
  {
    if (v32 > 1u)
    {
      v43 = v79;
      if (v32 == 2)
      {
        v80 = 2;
        sub_1D8F9367C();
        v44 = v70;
        sub_1D917982C();
        (*(v56 + 8))(v44, v57);
        (*(v43 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v35 = 1;
        v36 = 2;
      }

      else
      {
        v80 = 3;
        sub_1D8F93628();
        sub_1D917982C();
        (*(v58 + 8))(v25, v59);
        (*(v43 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v35 = 1;
        v36 = 3;
      }
    }

    else if (v32)
    {
      v80 = 1;
      sub_1D8F936D0();
      v46 = v52;
      sub_1D917982C();
      (*(v54 + 8))(v46, v55);
      (*(v79 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 1;
    }

    else
    {
      v80 = 0;
      sub_1D8F93724();
      v42 = v51;
      sub_1D917982C();
      (*(v53 + 8))(v42, v50);
      (*(v79 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 0;
    }
  }

  else if (v32 <= 5u)
  {
    v45 = v79;
    if (v32 == 4)
    {
      v80 = 4;
      sub_1D8F935D4();
      sub_1D917982C();
      (*(v61 + 8))(v26, v60);
      (*(v45 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 4;
    }

    else
    {
      v80 = 5;
      sub_1D8F93580();
      sub_1D917982C();
      (*(v62 + 8))(v28, v63);
      (*(v45 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 5;
    }
  }

  else
  {
    v33 = v79;
    if (v32 == 6)
    {
      v80 = 6;
      sub_1D8F9352C();
      sub_1D917982C();
      (*(v64 + 8))(v27, v65);
      (*(v33 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 6;
    }

    else if (v32 == 7)
    {
      v80 = 7;
      sub_1D8F934D8();
      v34 = v72;
      sub_1D917982C();
      (*(v66 + 8))(v34, v67);
      (*(v33 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 7;
    }

    else
    {
      v80 = 8;
      sub_1D8F93484();
      v47 = v71;
      sub_1D917982C();
      v48 = v68;
      sub_1D91798DC();
      v36 = v49;
      (*(v69 + 8))(v47, v48);
      (*(v33 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 0;
    }
  }

  v40 = v78;
  *v29 = v36;
  *(v29 + 8) = v35;
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

BOOL _s18PodcastsFoundation22EpisodeListenNowReasonO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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

  if (*&v2 > 3)
  {
    if (*&v2 > 5)
    {
      if (*&v2 == 6)
      {
        if (*&v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 <= 6uLL)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    else
    {
      if (*&v2 == 4)
      {
        if (*&v3 != 4)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 != 5)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }
  }

  else
  {
    if (*&v2 <= 1)
    {
      if (v2 == 0.0)
      {
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 != 1)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v2 == 2)
    {
      if (*&v3 != 2)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }
}

unint64_t sub_1D8F93430()
{
  result = qword_1ECAB7CA0;
  if (!qword_1ECAB7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CA0);
  }

  return result;
}

unint64_t sub_1D8F93484()
{
  result = qword_1ECAB7CA8;
  if (!qword_1ECAB7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CA8);
  }

  return result;
}

unint64_t sub_1D8F934D8()
{
  result = qword_1ECAB7CB0;
  if (!qword_1ECAB7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CB0);
  }

  return result;
}

unint64_t sub_1D8F9352C()
{
  result = qword_1ECAB7CB8;
  if (!qword_1ECAB7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CB8);
  }

  return result;
}

unint64_t sub_1D8F93580()
{
  result = qword_1ECAB7CC0;
  if (!qword_1ECAB7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CC0);
  }

  return result;
}

unint64_t sub_1D8F935D4()
{
  result = qword_1ECAB7CC8;
  if (!qword_1ECAB7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CC8);
  }

  return result;
}

unint64_t sub_1D8F93628()
{
  result = qword_1ECAB7CD0;
  if (!qword_1ECAB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CD0);
  }

  return result;
}

unint64_t sub_1D8F9367C()
{
  result = qword_1ECAB7CD8;
  if (!qword_1ECAB7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CD8);
  }

  return result;
}

unint64_t sub_1D8F936D0()
{
  result = qword_1ECAB7CE0;
  if (!qword_1ECAB7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CE0);
  }

  return result;
}

unint64_t sub_1D8F93724()
{
  result = qword_1ECAB7CE8;
  if (!qword_1ECAB7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CE8);
  }

  return result;
}

unint64_t sub_1D8F9377C()
{
  result = qword_1ECAB7D40;
  if (!qword_1ECAB7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D40);
  }

  return result;
}

unint64_t sub_1D8F93874()
{
  result = qword_1ECAB7D48;
  if (!qword_1ECAB7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D48);
  }

  return result;
}

unint64_t sub_1D8F938CC()
{
  result = qword_1ECAB7D50;
  if (!qword_1ECAB7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D50);
  }

  return result;
}

unint64_t sub_1D8F93924()
{
  result = qword_1ECAB7D58;
  if (!qword_1ECAB7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D58);
  }

  return result;
}

unint64_t sub_1D8F9397C()
{
  result = qword_1ECAB7D60;
  if (!qword_1ECAB7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D60);
  }

  return result;
}

unint64_t sub_1D8F939D4()
{
  result = qword_1ECAB7D68;
  if (!qword_1ECAB7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D68);
  }

  return result;
}

unint64_t sub_1D8F93A2C()
{
  result = qword_1ECAB7D70;
  if (!qword_1ECAB7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D70);
  }

  return result;
}

unint64_t sub_1D8F93A84()
{
  result = qword_1ECAB7D78;
  if (!qword_1ECAB7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D78);
  }

  return result;
}

unint64_t sub_1D8F93ADC()
{
  result = qword_1ECAB7D80;
  if (!qword_1ECAB7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D80);
  }

  return result;
}

unint64_t sub_1D8F93B34()
{
  result = qword_1ECAB7D88;
  if (!qword_1ECAB7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D88);
  }

  return result;
}

unint64_t sub_1D8F93B8C()
{
  result = qword_1ECAB7D90;
  if (!qword_1ECAB7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D90);
  }

  return result;
}

unint64_t sub_1D8F93BE4()
{
  result = qword_1ECAB7D98;
  if (!qword_1ECAB7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D98);
  }

  return result;
}

unint64_t sub_1D8F93C3C()
{
  result = qword_1ECAB7DA0;
  if (!qword_1ECAB7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DA0);
  }

  return result;
}

unint64_t sub_1D8F93C94()
{
  result = qword_1ECAB7DA8;
  if (!qword_1ECAB7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DA8);
  }

  return result;
}

unint64_t sub_1D8F93CEC()
{
  result = qword_1ECAB7DB0;
  if (!qword_1ECAB7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DB0);
  }

  return result;
}

unint64_t sub_1D8F93D44()
{
  result = qword_1ECAB7DB8;
  if (!qword_1ECAB7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DB8);
  }

  return result;
}

unint64_t sub_1D8F93D9C()
{
  result = qword_1ECAB7DC0;
  if (!qword_1ECAB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DC0);
  }

  return result;
}

unint64_t sub_1D8F93DF4()
{
  result = qword_1ECAB7DC8;
  if (!qword_1ECAB7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DC8);
  }

  return result;
}

unint64_t sub_1D8F93E4C()
{
  result = qword_1ECAB7DD0;
  if (!qword_1ECAB7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DD0);
  }

  return result;
}

unint64_t sub_1D8F93EA4()
{
  result = qword_1ECAB7DD8;
  if (!qword_1ECAB7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DD8);
  }

  return result;
}

unint64_t sub_1D8F93EFC()
{
  result = qword_1ECAB7DE0;
  if (!qword_1ECAB7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DE0);
  }

  return result;
}

unint64_t sub_1D8F93F54()
{
  result = qword_1ECAB7DE8;
  if (!qword_1ECAB7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DE8);
  }

  return result;
}

unint64_t sub_1D8F93FAC()
{
  result = qword_1ECAB7DF0;
  if (!qword_1ECAB7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DF0);
  }

  return result;
}

uint64_t sub_1D8F94000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961674179616C70 && a2 == 0xE90000000000006ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7824750 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D0790 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xED00006465766153 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465766173 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D07B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D8F9448C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F958DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F944C0(uint64_t a1)
{
  v2 = sub_1D8D02070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F944FC(uint64_t a1)
{
  v2 = sub_1D8D02070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListSettings.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E00, &qword_1D919C4C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D8D02070();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v10 = v6;
  v47 = 0;
  sub_1D8F955F0();
  v11 = v5;
  sub_1D91798FC();
  v57 = v50;
  v58 = v51;
  v59 = v52;
  v55 = v48;
  v56 = v49;
  LOBYTE(v29) = 1;
  sub_1D8F95644();
  sub_1D91798FC();
  v12 = LOBYTE(v34[0]);
  type metadata accessor for MTEpisodePubDateLimit(0);
  LOBYTE(v29) = 2;
  sub_1D8D00734(&qword_1ECAB7E18, &protocol conformance descriptor for MTEpisodePubDateLimit);
  sub_1D91798FC();
  v28 = v12;
  v13 = *&v34[0];
  LOBYTE(v34[0]) = 3;
  v14 = sub_1D91798CC();
  v26 = v13;
  v27 = v14;
  LOBYTE(v34[0]) = 4;
  v25 = sub_1D91798CC();
  LOBYTE(v34[0]) = 5;
  v24 = sub_1D91798CC();
  LOBYTE(v34[0]) = 6;
  HIDWORD(v23) = sub_1D91798CC();
  v45 = 7;
  sub_1D8F95698();
  sub_1D91798FC();
  v15 = v27 & 1;
  v16 = v25 & 1;
  v27 = v25 & 1;
  LOBYTE(v24) = v24 & 1;
  v24 = v24;
  v23 = __PAIR64__(HIDWORD(v23), v15) & 0x1FFFFFFFFLL;
  (*(v10 + 8))(v8, v11);
  v25 = v46;
  v31 = v57;
  v32 = v58;
  LOBYTE(v33[0]) = v59;
  v29 = v55;
  v30 = v56;
  v17 = v28;
  BYTE1(v33[0]) = v28;
  *(v33 + 2) = v53;
  WORD3(v33[0]) = v54;
  v18 = v26;
  *(&v33[0] + 1) = v26;
  LOBYTE(v10) = v23;
  LOBYTE(v33[1]) = v23;
  BYTE1(v33[1]) = v16;
  v19 = BYTE4(v23);
  LOBYTE(v11) = v24;
  BYTE2(v33[1]) = v24;
  BYTE3(v33[1]) = BYTE4(v23);
  BYTE4(v33[1]) = v46;
  *(a2 + 77) = *(v33 + 13);
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  v21 = v30;
  *a2 = v29;
  *(a2 + 16) = v21;
  *(a2 + 64) = v33[0];
  sub_1D8D0841C(&v29, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  v34[2] = v57;
  v34[3] = v58;
  v35 = v59;
  v34[0] = v55;
  v34[1] = v56;
  v36 = v17;
  v37 = v53;
  v38 = v54;
  v39 = v18;
  v40 = v10;
  v41 = v27;
  v42 = v11;
  v43 = v19;
  v44 = v25;
  return sub_1D8F3D204(v34);
}

uint64_t sub_1D8F94A0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F95B7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F94A34(uint64_t a1)
{
  v2 = sub_1D8D0DA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94A70(uint64_t a1)
{
  v2 = sub_1D8D0DA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94AAC(uint64_t a1)
{
  v2 = sub_1D8F956EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94AE8(uint64_t a1)
{
  v2 = sub_1D8F956EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94B24(uint64_t a1)
{
  v2 = sub_1D8D0DAB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94B60(uint64_t a1)
{
  v2 = sub_1D8D0DAB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94B9C(uint64_t a1)
{
  v2 = sub_1D8F95740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94BD8(uint64_t a1)
{
  v2 = sub_1D8F95740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListSettings.InitialItemBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t EpisodeListSettings.InitialItemBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E58, &qword_1D919C4F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E60, &qword_1D919C4F8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E68, &qword_1D919C500);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E70, &unk_1D919C508);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8D0DA60();
  v15 = v36;
  sub_1D9179EEC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D917991C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D8E89BD4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D917951C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
      *v24 = &type metadata for EpisodeListSettings.InitialItemBehavior;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8F956EC();
          sub_1D917982C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8D0DAB4();
          v26 = v17;
          sub_1D917982C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8F95740();
        sub_1D917982C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

id EpisodeListSettings.playPredicate.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 64);
  if (v9 == 3)
  {
    goto LABEL_8;
  }

  if (v9 != 8)
  {
    return EpisodeListSettings.predicate.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  a1 = EpisodeUserFilter.canonical.getter(*(v8 + 16), *(v8 + 24));
  if (!a2)
  {
LABEL_8:
    v11 = EpisodeListSettings.predicate.getter(a1, a2, a3, a4, a5, a6, a7, a8);
    v12 = [objc_opt_self() predicateForEpisodeTypeFilter_];
    v13 = [v11 AND_];

    return v13;
  }

  if (a2 == 2)
  {
    if (a1 < 2)
    {
      goto LABEL_8;
    }

    return EpisodeListSettings.predicate.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1D8F95794(a1, 1);
  result = sub_1D91796DC();
  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation19EpisodeListSettingsV2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v2;
  v28 = *(a1 + 64);
  v3 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v3;
  v4 = *(a1 + 65);
  v5 = *(a1 + 72);
  v24 = *(a1 + 81);
  v25 = *(a1 + 80);
  v23 = *(a1 + 82);
  v26 = *(a1 + 83);
  v6 = *(a1 + 84);
  v7 = a2[3];
  v29[2] = a2[2];
  v29[3] = v7;
  v30 = a2[4].i8[0];
  v8 = a2[1];
  v29[0] = *a2;
  v29[1] = v8;
  v9 = a2[4].i8[1];
  v10 = a2[4].i64[1];
  v11 = a2[5].u8[0];
  v12 = a2[5].u8[1];
  v13 = a2[5].u8[2];
  v14 = a2[5].u8[3];
  v15 = a2[5].i8[4];
  if (_s18PodcastsFoundation15EpisodeListTypeO2eeoiySbAC_ACtFZ_0(v27, v29))
  {
    v22 = v6;
    v16 = EpisodeSortType.rawValue.getter(v4);
    v18 = v17;
    if (v16 == EpisodeSortType.rawValue.getter(v9) && v18 == v19)
    {

      return (v22 == v15) & ~((v5 != v10) | v25 ^ v11 | v24 ^ v12 | v23 ^ v13 | v26 ^ v14);
    }

    v20 = sub_1D9179ACC();

    if (v20)
    {
      return (v22 == v15) & ~((v5 != v10) | v25 ^ v11 | v24 ^ v12 | v23 ^ v13 | v26 ^ v14);
    }
  }

  return 0;
}

unint64_t sub_1D8F955F0()
{
  result = qword_1ECAB7E08;
  if (!qword_1ECAB7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E08);
  }

  return result;
}

unint64_t sub_1D8F95644()
{
  result = qword_1ECAB7E10;
  if (!qword_1ECAB7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E10);
  }

  return result;
}

unint64_t sub_1D8F95698()
{
  result = qword_1ECAB7E20;
  if (!qword_1ECAB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E20);
  }

  return result;
}

unint64_t sub_1D8F956EC()
{
  result = qword_1ECAB7E48;
  if (!qword_1ECAB7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E48);
  }

  return result;
}

unint64_t sub_1D8F95740()
{
  result = qword_1ECAB7E50;
  if (!qword_1ECAB7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E50);
  }

  return result;
}

uint64_t sub_1D8F95794(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1D8F957AC()
{
  result = qword_1ECAB7E78;
  if (!qword_1ECAB7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17EpisodeUserFilterO(uint64_t a1)
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

unint64_t sub_1D8F95830()
{
  result = qword_1ECAB7E80;
  if (!qword_1ECAB7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E80);
  }

  return result;
}

unint64_t sub_1D8F95888()
{
  result = qword_1ECAB7E88;
  if (!qword_1ECAB7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E88);
  }

  return result;
}

uint64_t sub_1D8F958DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079547473696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953656691 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C65746144627570 && a2 == 0xEC00000074696D69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0820 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6961725465646968 && a2 == 0xEC0000007372656CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0840 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D0860 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0880 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8F95B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646165486D697274 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6F7270 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D08A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8F95C9C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

void EpisodeListSettings.init(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    LOBYTE(v5) = MTPodcastHidesPlayedEpisodesResolved([a1 hidesPlayedEpisodes]);
    v9 = a1;
    v10 = sub_1D8FA1BFC(v9);
    v12 = v11;
    sub_1D8F95C9C(v10, v11);
    v13 = MTPodcast.episodeSortType.getter();
    sub_1D8F95794(v10, v12);

    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 64) = 8;
    *(a2 + 65) = v13;
    *(a2 + 80) = v5;
    v14 = 3;
    *(a2 + 81) = 0;
  }

  else
  {

    v14 = 0;
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 84) = 0;
    *(a2 + 80) = 2;
  }

  *(a2 + 72) = v14;
}

BOOL sub_1D8F95DB0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D9176F0C();
    ++v2;
    sub_1D8F9C824(&qword_1ECAB80F0, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  }

  while ((sub_1D91781BC() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1D8F95EBC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x65746144627570;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000010;
        v8 = 0x80000001D91C8310;
        break;
      case 2:
        v9 = 0xD000000000000012;
        v8 = 0x80000001D91C8330;
        break;
      case 3:
        v9 = 0xD00000000000001BLL;
        v8 = 0x80000001D91C8350;
        break;
      case 4:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C8370;
        break;
      case 5:
        v9 = 0xD000000000000014;
        v8 = 0x80000001D91C8390;
        break;
      case 6:
        v9 = 0xD000000000000014;
        v8 = 0x80000001D91C83B0;
        break;
      case 7:
        v9 = 0x6B72616D6B6F6F62;
        goto LABEL_17;
      case 8:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C83E0;
        break;
      case 9:
        v9 = 0x64616F6C6E776F64;
LABEL_17:
        v8 = 0xEE00657461446465;
        break;
      case 0xA:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C8410;
        break;
      case 0xB:
        v8 = 0xE500000000000000;
        v9 = 0x656C746974;
        break;
      case 0xC:
        v9 = 0x796C746E65636572;
        v8 = 0xEE00646579616C50;
        break;
      case 0xD:
        v9 = 0x6F4E6E657473696CLL;
        v8 = 0xE900000000000077;
        break;
      case 0xE:
        v9 = 0x53794270756F7267;
        v8 = 0xEC00000073776F68;
        break;
      case 0xF:
        v9 = 0x7079746F746F7270;
        v8 = 0xEF7478654E705565;
        break;
      case 0x10:
        v9 = 0x706F546863746177;
        v8 = 0xED00006C6576654CLL;
        break;
      default:
        break;
    }

    v10 = 0xE700000000000000;
    v11 = 0x65746144627570;
    switch(a1)
    {
      case 1:
        v10 = 0x80000001D91C8310;
        if (v9 == 0xD000000000000010)
        {
          goto LABEL_54;
        }

        goto LABEL_2;
      case 2:
        v10 = 0x80000001D91C8330;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 3:
        v10 = 0x80000001D91C8350;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 4:
        v10 = 0x80000001D91C8370;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 5:
        v10 = 0x80000001D91C8390;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 6:
        v10 = 0x80000001D91C83B0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 7:
        v12 = 0x6B72616D6B6F6F62;
        goto LABEL_43;
      case 8:
        v10 = 0x80000001D91C83E0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 9:
        v12 = 0x64616F6C6E776F64;
LABEL_43:
        v13 = 0x657461446465;
        goto LABEL_44;
      case 10:
        v11 = 0xD000000000000017;
        v10 = 0x80000001D91C8410;
        goto LABEL_53;
      case 11:
        v10 = 0xE500000000000000;
        if (v9 != 0x656C746974)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 12:
        v12 = 0x796C746E65636572;
        v13 = 0x646579616C50;
LABEL_44:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 13:
        v10 = 0xE900000000000077;
        if (v9 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 14:
        v10 = 0xEC00000073776F68;
        if (v9 != 0x53794270756F7267)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 15:
        v10 = 0xEF7478654E705565;
        if (v9 != 0x7079746F746F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 16:
        v10 = 0xED00006C6576654CLL;
        if (v9 != 0x706F546863746177)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      default:
LABEL_53:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_54:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_1D9179ACC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t EpisodeListType.defaultSortType.getter()
{
  v1 = *(v0 + 64);
  if (v1 <= 4)
  {
    if (v1 == 2)
    {
      v4 = 9;
    }

    else
    {
      v4 = 2;
    }

    if (*(v0 + 64) <= 1u)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 64) > 7u)
  {
    if (v1 == 8 || v1 == 9)
    {
      return 0;
    }

    v5 = *v0;
    v6 = v0[1];
    v7 = v0[5];
    v8 = v0[6] | v0[7];
    v9 = v0[4] | v0[3] | v0[2];
    if (!(v8 | *v0 | v7 | v9 | v6))
    {
      return 14;
    }

    v10 = v8 | v7 | v9 | v6;
    if (v5 == 1 && !v10)
    {
      return 12;
    }

    if (v5 == 2 && !v10)
    {
      return 15;
    }

    if (v5 == 3 && !v10)
    {
      return 0;
    }

    if (v5 != 4 || v10)
    {
      if (v5 != 5 || v10)
      {
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v5 == 6;
        }

        if (v11)
        {
          return 7;
        }

        else
        {
          return 16;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (v1 == 6)
    {
      v2 = 13;
    }

    else
    {
      v2 = *(v0 + 64);
    }

    if (v1 == 5)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8F964E4(uint64_t a1)
{
  v2 = sub_1D8F996B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96520(uint64_t a1)
{
  v2 = sub_1D8F996B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9655C()
{
  v1 = 0x7265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x796C6C6175736976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5574736163646F70;
  }
}

uint64_t sub_1D8F965C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F998AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F965F0(uint64_t a1)
{
  v2 = sub_1D8F99660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9662C(uint64_t a1)
{
  v2 = sub_1D8F99660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96668(uint64_t a1)
{
  v2 = sub_1D8F99468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F966A4(uint64_t a1)
{
  v2 = sub_1D8F99468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F966E0(uint64_t a1)
{
  v2 = sub_1D8F99414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9671C(uint64_t a1)
{
  v2 = sub_1D8F99414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96778(uint64_t a1)
{
  v2 = sub_1D8F99858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F967B4(uint64_t a1)
{
  v2 = sub_1D8F99858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F967F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F999CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F96824(uint64_t a1)
{
  v2 = sub_1D8CFFEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96860(uint64_t a1)
{
  v2 = sub_1D8CFFEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9689C(uint64_t a1)
{
  v2 = sub_1D8F99510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F968D8(uint64_t a1)
{
  v2 = sub_1D8F99510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96914(uint64_t a1)
{
  v2 = sub_1D8F997B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96950(uint64_t a1)
{
  v2 = sub_1D8F997B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9698C(uint64_t a1)
{
  v2 = sub_1D8F9975C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F969C8(uint64_t a1)
{
  v2 = sub_1D8F9975C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96A04(uint64_t a1)
{
  v2 = sub_1D8F994BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96A40(uint64_t a1)
{
  v2 = sub_1D8F994BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8F96A7C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D0A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x656761506C6C7566 && a2 == 0xEC0000007473694CLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D8F96B68(uint64_t a1)
{
  v2 = sub_1D8CFFF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96BA4(uint64_t a1)
{
  v2 = sub_1D8CFFF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96BE0(uint64_t a1)
{
  v2 = sub_1D8F99564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96C1C(uint64_t a1)
{
  v2 = sub_1D8F99564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8F96C58(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000734952)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8F96CE4(uint64_t a1)
{
  v2 = sub_1D8F99804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96D20(uint64_t a1)
{
  v2 = sub_1D8F99804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96D5C(uint64_t a1)
{
  v2 = sub_1D8F995B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96D98(uint64_t a1)
{
  v2 = sub_1D8F995B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96DD4(uint64_t a1)
{
  v2 = sub_1D8F99708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96E10(uint64_t a1)
{
  v2 = sub_1D8F99708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96E4C()
{
  if (*v0)
  {
    return 0x7265746C6966;
  }

  else
  {
    return 0x5574736163646F70;
  }
}

void sub_1D8F96E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
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

uint64_t sub_1D8F96F68(uint64_t a1)
{
  v2 = sub_1D8F9936C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96FA4(uint64_t a1)
{
  v2 = sub_1D8F9936C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96FE0()
{
  v1 = 0x556E6F6974617473;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x5574736163646F70;
  }

  if (*v0)
  {
    v1 = 0x536E6F6974617473;
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

uint64_t sub_1D8F97068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F99FB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F97090(uint64_t a1)
{
  v2 = sub_1D8F9960C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F970CC(uint64_t a1)
{
  v2 = sub_1D8F9960C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8F97108(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8F97194(uint64_t a1)
{
  v2 = sub_1D8F99318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F971D0(uint64_t a1)
{
  v2 = sub_1D8F99318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9720C(uint64_t a1)
{
  v2 = sub_1D8F992C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F97248(uint64_t a1)
{
  v2 = sub_1D8F992C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 EpisodeListType.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D8F9A124(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D8F972D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return static EpisodeListType.== infix(_:_:)(v7, v9) & 1;
}

__n128 sub_1D8F97334@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D8F9A124(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t EpisodeListType.libraryShowUUID.getter()
{
  v1 = 0;
  v2 = *(v0 + 64);
  if (v2 <= 9)
  {
    if (((1 << v2) & 0x39C) != 0)
    {
      v1 = *v0;
    }

    else
    {
      if (v2 != 5)
      {
        return v1;
      }

      v1 = v0[6];
    }
  }

  return v1;
}

uint64_t EpisodeListType.importantKeys.getter()
{
  v11 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 64) != 10 || (v1 = v0[5], v2 = *v0, v3 = v0[1], v4 = v0[6] | v0[7], v5 = v0[4] | v0[3] | v0[2], v4 | *v0 | v1 | v5 | v3) && ((v6 = v4 | v1 | v5 | v3, v2 != 1) || v6) && (v2 != 5 || v6))
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = sub_1D917820C();
    *(inited + 40) = v8;
    v9 = inited;
  }

  sub_1D8E2FE30(v9);
  return v11;
}

uint64_t EpisodeListType.sortTypeFromUserDefaults.getter()
{
  result = 0;
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *v0;
  v5 = *(v0 + 64);
  if (v5 > 4)
  {
    if (*(v0 + 64) <= 7u)
    {
      if (v5 == 5)
      {
        return 2;
      }

      if (v5 == 6)
      {
        return 13;
      }

      goto LABEL_5;
    }

    if (v5 - 8 < 2)
    {
      return result;
    }

    v6 = v0[5];
    v7 = v0[1];
    v8 = v0[6] | v0[7];
    v9 = v0[4] | v0[3] | v0[2];
    if (v8 | v4 | v6 | v9 | v7)
    {
      v10 = v8 | v6 | v9 | v7;
      if (v4 != 1 || v10)
      {
        if (v4 == 2 && !v10)
        {
          return 15;
        }

        if (v4 == 3 && !v10)
        {
          return 0;
        }

        if (v4 == 4 && !v10)
        {
          return 12;
        }

        if (v4 != 5 || v10)
        {
          result = 16;
          if (v4 != 6 || v10)
          {
            return result;
          }

LABEL_5:
          v2 = 0xE900000000000073;
          v3 = 0x6B72616D6B6F6F62;
          goto LABEL_14;
        }

        v2 = 0xEE007365646F7369;
        v3 = 0x704574736574616CLL;
      }

      else
      {
        v2 = 0xEE00646579616C50;
        v3 = 0x796C746E65636572;
      }
    }

LABEL_14:
    v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v12 = [v11 episodeListSortTypeDictionary];

    if (v12)
    {
      v13 = sub_1D917805C();

      if (*(v13 + 16))
      {
        v14 = v0;
        v15 = sub_1D8D33C70(v3, v2);
        v17 = v16;

        if (v17)
        {
          sub_1D8CFAD1C(*(v13 + 56) + 32 * v15, v36);

          v0 = v14;
          if (swift_dynamicCast())
          {
            v18 = _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0(v34, v35);
            if (v18 != 17)
            {
              if (v5 >= 0xA)
              {
                v25 = v14[5];
                v26 = v14[1];
                v27 = v14[6] | v14[7];
                v28 = v14[4] | v14[3] | v14[2];
                if (v27 | v4 | v25 | v28 | v26)
                {
                  v29 = v27 | v25 | v28 | v26;
                  v19 = MEMORY[0x1E69E7CC0];
                  if ((v4 - 1) > 3 || v29)
                  {
                    if (v4 != 5 || v29)
                    {
                      if (v29)
                      {
                        v30 = 0;
                      }

                      else
                      {
                        v30 = v4 == 6;
                      }

                      if (v30)
                      {
                        v19 = &unk_1F5460E38;
                      }
                    }

                    else
                    {
                      v19 = &unk_1F5460E88;
                    }
                  }
                }

                else
                {
                  v19 = &unk_1F5460E60;
                }
              }

              else
              {
                v19 = MEMORY[0x1E69E7CC0];
              }

              v31 = v18;
              v32 = sub_1D8F95EBC(v18, v19);

              result = v31;
              if (!v32)
              {
                return EpisodeListType.defaultSortType.getter();
              }

              return result;
            }
          }

          goto LABEL_25;
        }

        v0 = v14;
      }

      else
      {
      }
    }

LABEL_25:
    if (v5 <= 6)
    {
      if (v5 == 2)
      {
        return 9;
      }

      return 2;
    }

    if (v5 - 8 < 2)
    {
      return 0;
    }

    if (v5 == 7)
    {
      return 7;
    }

    v20 = v0[5];
    v21 = v0[1];
    v22 = v0[6] | v0[7];
    v23 = v0[4] | v0[3] | v0[2];
    if (!(v22 | v4 | v20 | v23 | v21))
    {
      return 14;
    }

    v24 = v22 | v20 | v23 | v21;
    if (v4 == 1 && !v24)
    {
      return 12;
    }

    if (v4 == 2 && !v24)
    {
      return 15;
    }

    if (v4 == 3 && !v24)
    {
      return 0;
    }

    if (v4 == 4 && !v24)
    {
      return 12;
    }

    if (v4 != 5 || v24)
    {
      if (v24)
      {
        v33 = 0;
      }

      else
      {
        v33 = v4 == 6;
      }

      if (v33)
      {
        return 7;
      }

      else
      {
        return 16;
      }
    }

    return 2;
  }

  if (*(v0 + 64) > 2u)
  {
    return 2;
  }

  if (v5 >= 2)
  {
    goto LABEL_14;
  }

  return result;
}

void EpisodeListType.sortTypeFromUserDefaults.setter(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 episodeListSortTypeDictionary];

    if (v14)
    {
      v15 = MEMORY[0x1E69E6158];
      v16 = sub_1D917805C();

      v29 = v15;
      *&v28 = EpisodeSortType.rawValue.getter(v5);
      *(&v28 + 1) = v17;
      sub_1D8D65618(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8F502C0(v27, v3, v2, isUniquelyReferenced_nonNull_native);

      v19 = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = v3;
      *(inited + 40) = v2;
      v21 = EpisodeSortType.rawValue.getter(v5);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v21;
      *(inited + 56) = v22;
      v19 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
    }

    v23 = [v12 _applePodcastsFoundationSharedUserDefaults];
    if (v19)
    {
      v24 = sub_1D917802C();
    }

    else
    {
      v24 = 0;
    }

    [v23 setEpisodeListSortTypeDictionary_];

    v25 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v25 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v26 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v26 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

void *EpisodeListType.allowedSortTypes.getter()
{
  if (*(v0 + 64) < 0xAu)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return &unk_1F5460E60;
  }

  v7 = v5 | v2 | v6 | v4;
  result = MEMORY[0x1E69E7CC0];
  if ((v3 - 1) > 3 || v7)
  {
    if (v3 != 5 || v7)
    {
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == 6;
      }

      if (v8)
      {
        return &unk_1F5460E38;
      }
    }

    else
    {
      return &unk_1F5460E88;
    }
  }

  return result;
}

void (*EpisodeListType.sortTypeFromUserDefaults.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EpisodeListType.sortTypeFromUserDefaults.getter();
  return sub_1D8F97E14;
}

uint64_t EpisodeListType.defaultNonGroupByShowSortType.getter()
{
  v1 = *(v0 + 64);
  if (v1 <= 4)
  {
    if (v1 == 2)
    {
      v4 = 9;
    }

    else
    {
      v4 = 2;
    }

    if (*(v0 + 64) <= 1u)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 64) > 7u)
  {
    if (v1 == 8 || v1 == 9)
    {
      return 0;
    }

    v5 = v0[2];
    v6 = v0[3];
    v7 = *v0;
    v8 = v0[1];
    v9 = v0[6] | v0[7];
    v10 = v0[5] | v0[4];
    v11 = v9 | v10 | v6 | v5 | v8;
    if (!(v11 | *v0))
    {
      return 9;
    }

    if (!(v9 | v7 | v10 | v6 | v5 | v8))
    {
      return 14;
    }

    if (v7 == 1 && !v11)
    {
      return 12;
    }

    if (v7 == 2 && !v11)
    {
      return 15;
    }

    if (v7 == 3 && !v11)
    {
      return 0;
    }

    if (v7 != 4 || v11)
    {
      if (v7 != 5 || v11)
      {
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 6;
        }

        if (v12)
        {
          return 7;
        }

        else
        {
          return 16;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (v1 == 6)
    {
      v2 = 13;
    }

    else
    {
      v2 = *(v0 + 64);
    }

    if (v1 == 5)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }
}

void *EpisodeListType.availableSortTypes.getter()
{
  if (*(v0 + 64) < 0xAu)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return &unk_1F5460ED8;
  }

  v7 = v5 | v2 | v6 | v4;
  result = MEMORY[0x1E69E7CC0];
  if ((v3 - 1) > 3 || v7)
  {
    if (v3 != 5 || v7)
    {
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == 6;
      }

      if (v8)
      {
        return &unk_1F5460EB0;
      }
    }

    else
    {
      return &unk_1F5460F00;
    }
  }

  return result;
}

uint64_t EpisodeListType.pubDateLimit.getter()
{
  if (v0[4].i8[0] != 10)
  {
    return 3;
  }

  v1 = vorrq_s8(v0[2], v0[3]);
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[1].i64[1] | v0[1].i64[0] | v0->i64[1];
  if (v0->i64[0] != 5 || v2 != 0)
  {
    return 3;
  }

  v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v6 = [v5 dictionaryForKey_];

  if (v6)
  {
    v7 = sub_1D917805C();

    if (*(v7 + 16) && (v8 = sub_1D8D33C70(0x704574736574616CLL, 0xEE007365646F7369), (v9 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v7 + 56) + 32 * v8, v11);

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  return 2;
}

void EpisodeListType.pubDateLimit.setter(uint64_t a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 dictionaryForKey_];

    if (v14)
    {
      sub_1D917805C();
    }

    else
    {
      sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
    }

    v22 = MEMORY[0x1E69E6530];
    *&v21 = v5;
    sub_1D8D65618(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v20, v3, v2, isUniquelyReferenced_nonNull_native);

    v16 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v17 = sub_1D917802C();

    [v16 setObject:v17 forKey:@"kEpisodeListPubDateLimitKey"];

    v18 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v18 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v19 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v19 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t EpisodeListType.defaultPubDateLimit.getter()
{
  if (v0[4].i8[0] == 10 && ((v1 = vorrq_s8(v0[2], v0[3]), v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[1].i64[1] | v0[1].i64[0] | v0->i64[1], v0->i64[0] == 5) ? (v3 = v2 == 0) : (v3 = 0), v3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void (*EpisodeListType.pubDateLimit.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = EpisodeListType.pubDateLimit.getter();
  return sub_1D8F9853C;
}

uint64_t EpisodeListType.hidePlayedEpisodes.getter()
{
  v1 = 0xEA00000000006465;
  v2 = 0x64616F6C6E776F64;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 64);
  if (v9 == 2)
  {
    goto LABEL_10;
  }

  if (v9 != 7)
  {
    if (v9 != 10)
    {
      return 0;
    }

    v10 = v0[4] | v0[5] | v8;
    if (v5 | v3 | v4 | v6 | v10 | v7)
    {
      result = 0;
      if ((v4 - 5) > 1)
      {
        return result;
      }

      v12 = v5 | v3 | v6 | v10;
      if (v12 | v7)
      {
        return result;
      }

      if (v4 == 5 && !v12)
      {
        v22 = v0[4];
        v23 = v0[5];
        v24 = v0[2];
        v1 = 0xEE007365646F7369;
        v2 = 0x704574736574616CLL;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v22 = v0[4];
    v23 = v0[5];
    v24 = v0[2];
    goto LABEL_12;
  }

LABEL_11:
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[2];
  v1 = 0xE900000000000073;
  v2 = 0x6B72616D6B6F6F62;
LABEL_12:
  v13 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v14 = [v13 dictionaryForKey_];

  if (v14)
  {
    v21 = v3;
    v15 = sub_1D917805C();

    if (*(v15 + 16))
    {
      v16 = sub_1D8D33C70(v2, v1);
      v18 = v17;

      if (v18)
      {
        sub_1D8CFAD1C(*(v15 + 56) + 32 * v16, v26);

        if (swift_dynamicCast())
        {
          return v25;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_21:
    v3 = v21;
    return v4 == 5 && (v24 | v3 | v6 | v22 | v23 | v8 | v7) == 0 && v9 == 10;
  }

  return v4 == 5 && (v24 | v3 | v6 | v22 | v23 | v8 | v7) == 0 && v9 == 10;
}

void EpisodeListType.hidePlayedEpisodes.setter(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 dictionaryForKey_];

    if (v14)
    {
      sub_1D917805C();
    }

    else
    {
      sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
    }

    v22 = MEMORY[0x1E69E6370];
    LOBYTE(v21) = v5 & 1;
    sub_1D8D65618(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v20, v3, v2, isUniquelyReferenced_nonNull_native);

    v16 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v17 = sub_1D917802C();

    [v16 setObject:v17 forKey:@"kEpisodeListHidePlayedEpisodesKey"];

    v18 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v18 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v19 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v19 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

BOOL EpisodeListType.allowsHidePlayedEpisodes.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 2 || v1 == 7)
  {
    return 1;
  }

  if (v1 != 10)
  {
    return 0;
  }

  v4 = v0[5];
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[6] | v0[7];
  v8 = v0[4] | v0[3] | v0[2];
  if (!(v7 | *v0 | v4 | v8 | v6))
  {
    return 1;
  }

  v9 = v7 | v4 | v8 | v6;
  if (v5 == 5 && !v9)
  {
    return 1;
  }

  return v5 == 6 && v9 == 0;
}

BOOL _s18PodcastsFoundation15EpisodeListTypeO21allowsPubDateLimitingSbvg_0()
{
  v1 = vorrq_s8(*(v0 + 8), *(v0 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 40) | *(v0 + 48) | *(v0 + 56);
  return *v0 == 5 && v2 == 0 && *(v0 + 64) == 10;
}

void (*EpisodeListType.hidePlayedEpisodes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EpisodeListType.hidePlayedEpisodes.getter() & 1;
  return sub_1D8F98BE8;
}

BOOL EpisodeListType.showsHidePlayedEpisodesControls.getter()
{
  result = 0;
  if (*(v0 + 64) == 10)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 8);
    v3 = *(v0 + 48) | *(v0 + 56);
    v4 = *(v0 + 32) | *(v0 + 24) | *(v0 + 16);
    if (!(v3 | *v0 | v1 | v4 | v2) || (*v0 - 5) <= 1 && !(v3 | v1 | v4 | v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t EpisodeListType.shelfImpressionMetricsID.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 6)
  {
    return 0x7478654E7055;
  }

  if (v1 != 10)
  {
    return 0;
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return 0x64616F6C6E776F44;
  }

  v7 = v5 | v2 | v6 | v4;
  if (v3 == 1 && !v7)
  {
    return 0x796C746E65636552;
  }

  if (v3 == 5 && !v7)
  {
    return 0x704574736574614CLL;
  }

  if (v3 == 6 && v7 == 0)
  {
    return 0x6465766153;
  }

  return 0;
}

uint64_t _s18PodcastsFoundation15EpisodeListTypeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a1[64];
  v9 = v3 | (v4 << 8) | (*(a1 + 2) << 16) | (*(a1 + 3) << 48);
  if (v8 <= 4)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        if (a2[4].i8[0] == 2)
        {
          goto LABEL_58;
        }
      }

      else if (v8 == 3)
      {
        if (a2[4].i8[0] == 3)
        {
          goto LABEL_58;
        }
      }

      else if (a2[4].i8[0] == 4)
      {
        v23 = a2[1].i64[0];
        v24 = a2[1].u8[8];
        if (v9 == a2->i64[0] && v5 == a2->i64[1])
        {
          if (v6 != v23)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v26 = sub_1D9179ACC();
          v14 = 0;
          if ((v26 & 1) == 0 || v6 != v23)
          {
            return v14 & 1;
          }
        }

        if (v7 == 2)
        {
          if (v24 == 2)
          {
            goto LABEL_113;
          }
        }

        else if (v24 != 2 && ((v7 ^ v24) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

LABEL_114:
      v14 = 0;
      return v14 & 1;
    }

    if (v8)
    {
      if (a2[4].i8[0] != 1)
      {
        goto LABEL_114;
      }
    }

    else if (a2[4].i8[0])
    {
      goto LABEL_114;
    }

    v27 = a2->i64[0];

    return sub_1D8E84300(v9, v27);
  }

  else
  {
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v13 = *(a1 + 6);
    v12 = *(a1 + 7);
    if (v8 <= 7)
    {
      if (v8 == 5)
      {
        if (a2[4].i8[0] != 5)
        {
          goto LABEL_114;
        }

        v16 = a2[1].i64[0];
        v15 = a2[1].i64[1];
        v18 = a2[2].i64[0];
        v17 = a2[2].i64[1];
        v33 = a2[3].i64[1];
        v34 = a2[3].i64[0];
        if ((v9 != a2->i64[0] || v5 != a2->i64[1]) && (sub_1D9179ACC() & 1) == 0)
        {
          goto LABEL_114;
        }

        if ((v6 != v16 || v7 != v15) && (sub_1D9179ACC() & 1) == 0)
        {
          goto LABEL_114;
        }

        if (v11)
        {
          if (!v17 || (v10 != v18 || v11 != v17) && (sub_1D9179ACC() & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        else if (v17)
        {
          goto LABEL_114;
        }

        if (v13 != v34 || v12 != v33)
        {
          goto LABEL_62;
        }

        goto LABEL_113;
      }

      if (v8 == 6)
      {
        if (a2[4].i8[0] == 6)
        {
          v14 = v4 ^ a2->i8[1] ^ 1;
          if ((v3 ^ a2->i8[0]))
          {
            v14 = 0;
          }

          return v14 & 1;
        }

        goto LABEL_114;
      }

      if (a2[4].i8[0] == 7)
      {
LABEL_58:
        if (v9 != a2->i64[0] || v5 != a2->i64[1])
        {
LABEL_62:

          return sub_1D9179ACC();
        }

LABEL_113:
        v14 = 1;
        return v14 & 1;
      }

      goto LABEL_114;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        if (a2[4].i8[0] == 9)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = v6 | v5 | v7;
        if (v29 | v10 | v11 | v9 | v13 | v12)
        {
          v30 = v29 | v10 | v11 | v13 | v12;
          if (v9 != 1 || v30)
          {
            if (v9 != 2 || v30)
            {
              if (v9 != 3 || v30)
              {
                if (v9 != 4 || v30)
                {
                  if (v9 != 5 || v30)
                  {
                    if (v9 != 6 || v30)
                    {
                      if (a2[4].i8[0] != 10 || a2->i64[0] != 7)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (a2[4].i8[0] != 10 || a2->i64[0] != 6)
                    {
                      goto LABEL_114;
                    }
                  }

                  else if (a2[4].i8[0] != 10 || a2->i64[0] != 5)
                  {
                    goto LABEL_114;
                  }
                }

                else if (a2[4].i8[0] != 10 || a2->i64[0] != 4)
                {
                  goto LABEL_114;
                }
              }

              else if (a2[4].i8[0] != 10 || a2->i64[0] != 3)
              {
                goto LABEL_114;
              }
            }

            else if (a2[4].i8[0] != 10 || a2->i64[0] != 2)
            {
              goto LABEL_114;
            }
          }

          else if (a2[4].i8[0] != 10 || a2->i64[0] != 1)
          {
            goto LABEL_114;
          }

          v32 = vorrq_s8(a2[2], a2[3]);
          if (!(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1]))
          {
            goto LABEL_113;
          }
        }

        else if (a2[4].i8[0] == 10)
        {
          v31 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)))
          {
            goto LABEL_113;
          }
        }
      }

      goto LABEL_114;
    }

    if (a2[4].i8[0] != 8)
    {
      goto LABEL_114;
    }

    v19 = a2[1].i64[0];
    v20 = a2[1].i8[8];
    v21 = v9 == a2->i64[0] && v5 == a2->i64[1];
    if (!v21 && (sub_1D9179ACC() & 1) == 0)
    {
      goto LABEL_114;
    }

    return static EpisodeUserFilter.== infix(_:_:)(v6, v7, v19, v20);
  }
}

unint64_t sub_1D8F992C4()
{
  result = qword_1ECAB7F28;
  if (!qword_1ECAB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F28);
  }

  return result;
}

unint64_t sub_1D8F99318()
{
  result = qword_1ECAB7F30;
  if (!qword_1ECAB7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F30);
  }

  return result;
}

unint64_t sub_1D8F9936C()
{
  result = qword_1ECAB7F38;
  if (!qword_1ECAB7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F38);
  }

  return result;
}

unint64_t sub_1D8F993C0()
{
  result = qword_1ECAB7F40;
  if (!qword_1ECAB7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F40);
  }

  return result;
}

unint64_t sub_1D8F99414()
{
  result = qword_1ECAB7F48;
  if (!qword_1ECAB7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F48);
  }

  return result;
}

unint64_t sub_1D8F99468()
{
  result = qword_1ECAB7F50;
  if (!qword_1ECAB7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F50);
  }

  return result;
}

unint64_t sub_1D8F994BC()
{
  result = qword_1ECAB7F58;
  if (!qword_1ECAB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F58);
  }

  return result;
}

unint64_t sub_1D8F99510()
{
  result = qword_1ECAB7F60;
  if (!qword_1ECAB7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F60);
  }

  return result;
}

unint64_t sub_1D8F99564()
{
  result = qword_1ECAB7F68;
  if (!qword_1ECAB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F68);
  }

  return result;
}

unint64_t sub_1D8F995B8()
{
  result = qword_1ECAB7F70;
  if (!qword_1ECAB7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F70);
  }

  return result;
}

unint64_t sub_1D8F9960C()
{
  result = qword_1ECAB7F78;
  if (!qword_1ECAB7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F78);
  }

  return result;
}

unint64_t sub_1D8F99660()
{
  result = qword_1ECAB7F80;
  if (!qword_1ECAB7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F80);
  }

  return result;
}

unint64_t sub_1D8F996B4()
{
  result = qword_1ECAB7F90;
  if (!qword_1ECAB7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F90);
  }

  return result;
}

unint64_t sub_1D8F99708()
{
  result = qword_1ECAB7F98;
  if (!qword_1ECAB7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F98);
  }

  return result;
}

unint64_t sub_1D8F9975C()
{
  result = qword_1ECAB7FA0;
  if (!qword_1ECAB7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FA0);
  }

  return result;
}

unint64_t sub_1D8F997B0()
{
  result = qword_1ECAB7FA8;
  if (!qword_1ECAB7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FA8);
  }

  return result;
}

unint64_t sub_1D8F99804()
{
  result = qword_1ECAB7FB0;
  if (!qword_1ECAB7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FB0);
  }

  return result;
}

unint64_t sub_1D8F99858()
{
  result = qword_1ECAB7FC0;
  if (!qword_1ECAB7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FC0);
  }

  return result;
}

uint64_t sub_1D8F998AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6C6175736976 && a2 == 0xEE00646579616C50)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8F999CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001D91D09A0 == a2;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0980 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D09C0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEE00646579616C50 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C696176416C6C61 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D09E0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0A00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4E6E657473696CLL && a2 == 0xEF7478654E705577 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7079746F746F7270 && a2 == 0xEF7478654E705565 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F7369704577656ELL && a2 == 0xEB00000000736564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF676E6979616C50 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x704574736574616CLL && a2 == 0xEE007365646F7369 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0A20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D0A40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x706F546863746177 && a2 == 0xED00006C6576654CLL)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D8F99FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556E6F6974617473 && a2 == 0xEB00000000646975;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536E6F6974617473 && a2 == 0xEF64697555776F68 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8F9A124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8040, &qword_1D919E280);
  v161 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v179 = &v129 - v3;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8048, &qword_1D919E288);
  v163 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v184 = &v129 - v4;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8050, &qword_1D919E290);
  v166 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v183 = &v129 - v5;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8058, &qword_1D919E298);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v178 = &v129 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8060, &qword_1D919E2A0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v177 = &v129 - v7;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8068, &qword_1D919E2A8);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v176 = &v129 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8070, &qword_1D919E2B0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v175 = &v129 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8078, &qword_1D919E2B8);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v174 = &v129 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8080, &qword_1D919E2C0);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v172 = &v129 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8088, &qword_1D919E2C8);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v173 = &v129 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8090, &qword_1D919E2D0);
  v167 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v182 = &v129 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8098, &qword_1D919E2D8);
  v168 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v181 = &v129 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80A0, &qword_1D919E2E0);
  v144 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v171 = &v129 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80A8, &qword_1D919E2E8);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v170 = &v129 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80B0, &qword_1D919E2F0);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v180 = &v129 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80B8, &qword_1D919E2F8);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v169 = &v129 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80C0, &qword_1D919E300);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v20 = &v129 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80C8, &qword_1D919E308);
  v134 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v129 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80D0, &unk_1D919E310);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v129 - v26;
  v28 = a1[3];
  v186 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D8CFFEF4();
  v29 = v187;
  sub_1D9179EEC();
  v187 = v29;
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v186);
  }

  v131 = v23;
  v130 = v21;
  v132 = v20;
  v30 = v180;
  v31 = v181;
  v32 = v182;
  v33 = v183;
  v34 = v184;
  v133 = v25;
  v35 = v185;
  v36 = sub_1D917991C();
  v37 = (2 * *(v36 + 16)) | 1;
  v190 = v36;
  v191 = v36 + 32;
  v192 = 0;
  v193 = v37;
  v38 = sub_1D8E87E88();
  if (v192 != v193 >> 1)
  {
LABEL_7:
    v49 = sub_1D917951C();
    v50 = swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
    *v52 = &type metadata for EpisodeListType;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v49 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v49);
    v187 = v50;
    swift_willThrow();
LABEL_8:
    (*(v133 + 8))(v27, v24);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v186);
  }

  switch(v38)
  {
    case 0:
      LOBYTE(v188) = 0;
      sub_1D8F99858();
      v39 = v131;
      v40 = v187;
      sub_1D917982C();
      v187 = v40;
      if (v40)
      {
        goto LABEL_8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
      sub_1D8F9C788(&qword_1ECAB80E8, &qword_1ECAB2C98, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      v41 = v130;
      v42 = v187;
      sub_1D91798FC();
      v43 = v133;
      v187 = v42;
      v44 = &v166;
      if (v42)
      {
        goto LABEL_34;
      }

      (*(v134 + 8))(v39, v41);
      v46 = *(v43 + 8);
      v45 = v43 + 8;
      v46(v27, v24);
      swift_unknownObjectRelease();
      v47 = 0;
      LOBYTE(v39) = v188;
      v183 = (v188 >> 8);
      v184 = 0;
      v48 = v188 & 0xFFFFFFFFFFFF0000;
      goto LABEL_51;
    case 1:
      LOBYTE(v188) = 1;
      sub_1D8F99804();
      v39 = v132;
      v85 = v187;
      sub_1D917982C();
      v187 = v85;
      if (v85)
      {
        goto LABEL_8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
      sub_1D8F9C788(&qword_1ECAB80E8, &qword_1ECAB2C98, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      v41 = v138;
      v86 = v187;
      sub_1D91798FC();
      v43 = v133;
      v187 = v86;
      v44 = &v169;
      if (v86)
      {
LABEL_34:
        (*(*(v44 - 32) + 1))(v39, v41);
        (*(v43 + 8))(v27, v24);
        goto LABEL_9;
      }

      (*(v137 + 8))(v39, v41);
      v112 = *(v43 + 8);
      v45 = v43 + 8;
      v112(v27, v24);
      swift_unknownObjectRelease();
      LOBYTE(v39) = v188;
      v183 = (v188 >> 8);
      v184 = 0;
      v48 = v188 & 0xFFFFFFFFFFFF0000;
      v47 = 1;
      goto LABEL_51;
    case 2:
      LOBYTE(v188) = 2;
      sub_1D8F997B0();
      v72 = v169;
      v73 = v187;
      sub_1D917982C();
      v187 = v73;
      if (v73)
      {
        goto LABEL_8;
      }

      (*(v135 + 8))(v72, v136);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      LOBYTE(v39) = 0;
      v48 = 0;
      v47 = 10;
      goto LABEL_51;
    case 3:
      LOBYTE(v188) = 3;
      sub_1D8F9975C();
      v32 = v30;
      v77 = v187;
      sub_1D917982C();
      v187 = v77;
      if (v77)
      {
        goto LABEL_8;
      }

      v78 = v142;
      v45 = v30;
      v79 = sub_1D91798BC();
      v187 = 0;
      v80 = *(v140 + 8);
      v39 = v79;
      v182 = v81;
      v80(v32, v78);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v183 = (v39 >> 8);
      v184 = 0;
      v48 = v39 & 0xFFFFFFFFFFFF0000;
      v47 = 2;
      goto LABEL_51;
    case 4:
      LOBYTE(v188) = 4;
      sub_1D8F99708();
      v66 = v170;
      v67 = v187;
      sub_1D917982C();
      v187 = v67;
      if (v67)
      {
        goto LABEL_8;
      }

      (*(v141 + 8))(v66, v143);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 1;
      goto LABEL_51;
    case 5:
      LOBYTE(v188) = 5;
      sub_1D8F996B4();
      v32 = v171;
      v88 = v187;
      sub_1D917982C();
      v187 = v88;
      if (v88)
      {
        goto LABEL_8;
      }

      v89 = v139;
      v90 = sub_1D91798BC();
      v187 = 0;
      v39 = v90;
      v45 = v113;
      (*(v144 + 8))(v32, v89);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v184 = 0;
      v182 = v45;
      v183 = (v39 >> 8);
      v48 = v39 & 0xFFFFFFFFFFFF0000;
      v47 = 3;
      goto LABEL_51;
    case 6:
      LOBYTE(v188) = 6;
      sub_1D8F99660();
      v32 = v31;
      v93 = v187;
      sub_1D917982C();
      v187 = v93;
      if (v93)
      {
        goto LABEL_8;
      }

      LOBYTE(v188) = 0;
      v31 = v145;
      v94 = sub_1D91798BC();
      v187 = 0;
      v116 = v94;
      v118 = v117;
      type metadata accessor for MTEpisodeTypeFilter(0);
      v194 = 1;
      sub_1D8F9C824(&qword_1ECAB80E0, type metadata accessor for MTEpisodeTypeFilter, &protocol conformance descriptor for MTEpisodeTypeFilter);
      v119 = v187;
      sub_1D91798FC();
      v187 = v119;
      v120 = v168;
      if (v119)
      {

        (*(v120 + 8))(v32, v31);
        goto LABEL_8;
      }

      v123 = v116;
      v39 = v24;
      v180 = v188;
      v194 = 2;
      v45 = v32;
      v124 = sub_1D917985C();
      v187 = 0;
      LOBYTE(v24) = v124;
      (*(v168 + 8))(v32, v31);
      (*(v133 + 8))(v27, v39);
      swift_unknownObjectRelease();
      v184 = 0;
      LOBYTE(v39) = v123;
      v182 = v118;
      v183 = (v123 >> 8);
      v48 = v123 & 0xFFFFFFFFFFFF0000;
      v47 = 4;
      goto LABEL_51;
    case 7:
      LOBYTE(v188) = 7;
      sub_1D8F9960C();
      v82 = v187;
      sub_1D917982C();
      v187 = v82;
      if (v82)
      {
        goto LABEL_8;
      }

      LOBYTE(v188) = 0;
      v83 = v148;
      v84 = sub_1D91798BC();
      v187 = 0;
      v39 = v84;
      v108 = v107;
      LOBYTE(v188) = 1;
      v109 = sub_1D91798BC();
      v187 = 0;
      v180 = v109;
      v181 = v110;
      LOBYTE(v188) = 2;
      v111 = sub_1D917984C();
      v187 = 0;
      v178 = v111;
      v179 = v126;
      LOBYTE(v188) = 3;
      v127 = sub_1D91798BC();
      v176 = v128;
      v177 = v127;
      v187 = 0;
      (*(v167 + 8))(v32, v83);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = v108;
      v183 = (v39 >> 8);
      v48 = v39 & 0xFFFFFFFFFFFF0000;
      LOBYTE(v24) = v181;
      v184 = v181 & 0xFFFFFFFFFFFFFF00;
      v47 = 5;
      v45 = v178;
      v31 = v179;
      v27 = v176;
      v32 = v177;
      goto LABEL_51;
    case 8:
      LOBYTE(v188) = 8;
      sub_1D8CFFF48();
      v97 = v173;
      v98 = v187;
      sub_1D917982C();
      v187 = v98;
      if (v98)
      {
        goto LABEL_8;
      }

      LOBYTE(v188) = 0;
      v99 = v150;
      v100 = sub_1D91798CC();
      v101 = v133;
      v187 = 0;
      v121 = v100;
      LOBYTE(v188) = 1;
      v122 = sub_1D91798CC();
      v187 = 0;
      v45 = v122;
      (*(v149 + 8))(v97, v99);
      v125 = *(v101 + 8);
      v32 = v101 + 8;
      v125(v27, v24);
      swift_unknownObjectRelease();
      v48 = 0;
      LOBYTE(v39) = v121 & 1;
      v183 = (v45 & 1);
      v184 = 0;
      v47 = 6;
      goto LABEL_51;
    case 9:
      LOBYTE(v188) = 9;
      sub_1D8F995B8();
      v70 = v172;
      v71 = v187;
      sub_1D917982C();
      v187 = v71;
      if (v71)
      {
        goto LABEL_8;
      }

      (*(v146 + 8))(v70, v147);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 2;
      goto LABEL_51;
    case 10:
      LOBYTE(v188) = 10;
      sub_1D8F99564();
      v95 = v174;
      v96 = v187;
      sub_1D917982C();
      v187 = v96;
      if (v96)
      {
        goto LABEL_8;
      }

      (*(v151 + 8))(v95, v152);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 3;
      goto LABEL_51;
    case 11:
      LOBYTE(v188) = 11;
      sub_1D8F99510();
      v64 = v175;
      v65 = v187;
      sub_1D917982C();
      v187 = v65;
      if (v65)
      {
        goto LABEL_8;
      }

      (*(v153 + 8))(v64, v154);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 4;
      goto LABEL_51;
    case 12:
      LOBYTE(v188) = 12;
      sub_1D8F994BC();
      v68 = v176;
      v69 = v187;
      sub_1D917982C();
      v187 = v69;
      if (v69)
      {
        goto LABEL_8;
      }

      (*(v155 + 8))(v68, v156);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 5;
      goto LABEL_51;
    case 13:
      LOBYTE(v188) = 13;
      sub_1D8F99468();
      v91 = v177;
      v92 = v187;
      sub_1D917982C();
      v187 = v92;
      if (v92)
      {
        goto LABEL_8;
      }

      (*(v157 + 8))(v91, v158);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 6;
      goto LABEL_51;
    case 14:
      LOBYTE(v188) = 14;
      sub_1D8F99414();
      v60 = v178;
      v61 = v187;
      sub_1D917982C();
      v187 = v61;
      if (v61)
      {
        goto LABEL_8;
      }

      v62 = v160;
      v45 = v60;
      v63 = sub_1D91798BC();
      v187 = 0;
      v102 = *(v159 + 8);
      v32 = v63;
      v182 = v103;
      v102(v60, v62);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v183 = (v32 >> 8);
      v184 = 0;
      v48 = v32 & 0xFFFFFFFFFFFF0000;
      v47 = 7;
      goto LABEL_47;
    case 15:
      LOBYTE(v188) = 15;
      sub_1D8F9936C();
      v74 = v187;
      sub_1D917982C();
      v187 = v74;
      if (v74)
      {
        goto LABEL_8;
      }

      LOBYTE(v188) = 0;
      v75 = v165;
      v76 = sub_1D91798BC();
      v187 = 0;
      v32 = v76;
      v39 = v104;
      v194 = 1;
      sub_1D8F9C734();
      v105 = v187;
      sub_1D91798FC();
      v106 = v166;
      v187 = v105;
      if (v105)
      {

        (*(v106 + 8))(v33, v75);
        goto LABEL_8;
      }

      v45 = v166 + 8;
      (*(v166 + 8))(v33, v75);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = v39;
      LOBYTE(v39) = v32;
      v180 = v188;
      LOBYTE(v24) = v189;
      v183 = (v32 >> 8);
      v184 = 0;
      v48 = v32 & 0xFFFFFFFFFFFF0000;
      v47 = 8;
LABEL_51:
      result = __swift_destroy_boxed_opaque_existential_1Tm(v186);
      *v35 = v48 | (v183 << 8) | v39;
      v114 = v184 | v24;
      v115 = v180;
      *(v35 + 8) = v182;
      *(v35 + 16) = v115;
      *(v35 + 24) = v114;
      *(v35 + 32) = v45;
      *(v35 + 40) = v31;
      *(v35 + 48) = v32;
      *(v35 + 56) = v27;
      *(v35 + 64) = v47;
      break;
    case 16:
      LOBYTE(v188) = 16;
      sub_1D8F99318();
      v54 = v34;
      v55 = v187;
      sub_1D917982C();
      v187 = v55;
      if (v55)
      {
        goto LABEL_8;
      }

      v56 = v162;
      v45 = v54;
      v57 = sub_1D91798BC();
      v187 = 0;
      v58 = *(v163 + 8);
      v32 = v57;
      v182 = v59;
      v58(v54, v56);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v183 = (v32 >> 8);
      v184 = 0;
      v48 = v32 & 0xFFFFFFFFFFFF0000;
      v47 = 9;
LABEL_47:
      LOBYTE(v39) = v32;
      goto LABEL_51;
    case 17:
      LOBYTE(v188) = 17;
      sub_1D8F992C4();
      v39 = v179;
      v87 = v187;
      sub_1D917982C();
      v187 = v87;
      if (v87)
      {
        goto LABEL_8;
      }

      (*(v161 + 8))(v39, v164);
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v45 = 0;
      v31 = 0;
      v32 = 0;
      v27 = 0;
      LOBYTE(v24) = 0;
      v184 = 0;
      v48 = 0;
      v47 = 10;
      LOBYTE(v39) = 7;
      goto LABEL_51;
    default:
      goto LABEL_7;
  }

  return result;
}