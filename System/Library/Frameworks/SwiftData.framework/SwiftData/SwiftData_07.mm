void sub_19747A934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1E0, &qword_19752D370);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1973FDED4(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1974028A0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_19747AADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B298, &qword_19752D430);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_1974028EC(v20, v21);
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

id sub_19747AC60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        v24 = *(v20 + 8);
        *v23 = *v20;
        *(v23 + 8) = v24;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_1974028EC(v21, v24);
        result = v22;
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

void *sub_19747ADC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B440, &qword_19752D600);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        v24 = *(v20 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        v25 = *(v4 + 56) + v17;
        *v25 = v21;
        *(v25 + 8) = v24;
        sub_1974028EC(v19, v23);
        result = sub_1974028EC(v21, v24);
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

void sub_19747AFBC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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
}

id sub_19747B128(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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

        result = v22;
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

void *sub_19747B284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3F8, &qword_19752D5B8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void sub_19747B404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1F8, &qword_19752D388);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_19747B580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B230, &unk_19752D3C0);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = 32 * v17;
        sub_19742FE50(*(v2 + 56) + 32 * v17, v25);
        v23 = *(v4 + 48) + v18;
        *v23 = v20;
        *(v23 + 8) = v21;
        sub_197433E8C(v25, *(v4 + 56) + v22);
        result = sub_1974028EC(v20, v21);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_19747B730(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        v24 = *(v20 + 8);
        *v23 = *v20;
        *(v23 + 8) = v24;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_1974028EC(v21, v24);
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
}

void *sub_19747B898()
{
  v1 = v0;
  v33 = sub_1975213EC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
  v4 = *v0;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
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
    v30 = v35 + 32;
    for (i = v35 + 16; v14; result = (*(v22 + 32))(*(v27 + 56) + v23, v25, v26))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = 16 * v19;
      v21 = *(v4 + 56);
      v22 = v35;
      v23 = *(v35 + 72) * v19;
      v24 = *(v35 + 16);
      v36 = *(*(v4 + 48) + v20);
      v25 = v32;
      v26 = v33;
      v24(v32, v21 + v23, v33);
      v27 = v34;
      *(*(v34 + 48) + v20) = v36;
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

        v1 = v29;
        v6 = v34;
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

  return result;
}

void sub_19747BB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
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
        v22 = 32 * v17;
        sub_197404790(*(v2 + 56) + 32 * v17, v27, &qword_1EAF2AF20, &unk_19752F320);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_19747BCCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B0, &qword_19752D570);
  v2 = *v0;
  v3 = sub_19752242C();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

void *sub_19747BE2C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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

void sub_19747BF8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  v2 = *v0;
  v3 = sub_19752242C();
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
}

void *sub_19747C0E8()
{
  v1 = v0;
  v31 = sub_197520DAC();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
  v4 = *v0;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v22 = v30;
        v23 = v31;
        (*(v33 + 16))(v30, *(v4 + 48) + v21, v31);
        v19 <<= 6;
        sub_197408378(*(v4 + 56) + v19, v35);
        v24 = v32;
        result = (*(v20 + 32))(*(v32 + 48) + v21, v22, v23);
        v25 = (*(v24 + 56) + v19);
        v27 = v35[2];
        v26 = v35[3];
        v28 = v35[1];
        *v25 = v35[0];
        v25[1] = v28;
        v25[2] = v27;
        v25[3] = v26;
        v14 = v34;
      }

      while (v34);
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

        v1 = v29[0];
        v6 = v32;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
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

uint64_t sub_19747C374(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1974795F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_197477BC0(v16, a4 & 1);
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;

    return sub_197480E18(a1, v22);
  }

  else
  {

    return sub_1974D9FFC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19747C4B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7814(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_197479770();
      v11 = v19;
      goto LABEL_8;
    }

    sub_197477E60(v16, a4 & 1);
    v11 = sub_1973F7814(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_19752202C();
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_1974DA06C(v11, a3, a1, a2, v21);
  }
}

void sub_19747C5F0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1974798E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FA674(v16, a4 & 1);
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (*(v21 + 56) + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v22);

    sub_1973FA938(a1, v22);
  }

  else
  {
    sub_1974DA0B4(v11, a2, a3, a1, v21);
  }
}

void sub_19747C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1973F4028(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_197479AB0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_19747813C(v18, a5 & 1);
    v13 = sub_1973F4028(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1974DA124(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_19747C894(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1973F7814(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_197479DB8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1973F9030(v14, a3 & 1);
    v9 = sub_1973F7814(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_19752202C();
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1974DD110(v9, a2, a1, v19);
  }
}

id sub_19747C9E8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19749EDE0(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_19747A224();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1974783FC(v15, a4 & 1);
    v10 = sub_19749EDE0(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for CFRunLoopObserver(0);
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_1974DA174(v10, a3, a1, a2, v20);

    return a3;
  }
}

id sub_19747CB50(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_197403C30(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747B730(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197478988(v22, a4 & 1, a5, a6);
    v17 = sub_197403C30(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    return sub_1974028EC(a2, a3);
  }
}

uint64_t sub_19747CD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1973F7950(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19747B898();
      goto LABEL_7;
    }

    sub_197478D8C(v15, a4 & 1);
    v26 = sub_1973F7950(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1975213EC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:

  return sub_1974DA208(v12, a2, a3, a1, v18);
}

unint64_t sub_19747CE90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747BCCC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1974790F4(v16, a4 & 1);
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_1974DA2B8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19747CFD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1974A188C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19741E5C8(&qword_1EAF2B390, &qword_19752D548);
      v11 = v19;
      goto LABEL_8;
    }

    sub_19741359C(v16, a4 & 1, &qword_1EAF2B390, &qword_19752D548);
    v11 = sub_1974A188C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {

    return sub_1974DD140(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19747D134(void *a1, void *a2)
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

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Entity();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_19747DC14(v7, result + 1, &qword_1EAF2B180, &qword_19752D310, type metadata accessor for Schema.Entity);
    v23 = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {

      sub_197417660(v19 + 1, &qword_1EAF2B180, &qword_19752D310);
      v20 = v23;
    }

    else
    {
      v20 = v18;
    }

    sub_19747EC28(a2, v20);

    *v3 = v20;
    goto LABEL_18;
  }

  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  v10 = sub_197522A9C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_1974188C0(v17, v12, isUniquelyReferenced_nonNull_native, &qword_1EAF2B180, &qword_19752D310, type metadata accessor for Schema.Entity, _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0);
    *v2 = v22;
LABEL_18:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {

    v15 = _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v14, a2);

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_19747D408(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v80 = type metadata accessor for ModelConfiguration(0);
  v4 = *(v80 - 1);
  v6 = MEMORY[0x1EEE9AC00](v80, v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v60 = &v60 - v10;
  v61 = v2;
  v11 = *v2;
  sub_197522A5C();
  v12 = sub_1975212CC();
  sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v78 = v12;
  sub_1975216BC();
  v13 = sub_197522A9C();
  v79 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  v77 = v11 + 56;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v75 = ~v14;
    v76 = *(v4 + 72);
    v74 = xmmword_19752D100;
    v63 = a2;
    do
    {
      v16 = v76 * v15;
      sub_19741598C(*(v79 + 48) + v76 * v15, v8);
      sub_197413D04(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      if ((sub_19752173C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = v80[5];
      v18 = *&v8[v17];
      v19 = *&v8[v17 + 8];
      v20 = (a2 + v17);
      v21 = v18 == *v20 && v19 == v20[1];
      if (!v21 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v22 = v80[10];
      v23 = *&v8[v22];
      v24 = *(a2 + v22);
      if (v23)
      {
        if (!v24)
        {
          goto LABEL_4;
        }

        v71 = v24;
        v72 = v16;
        v26 = v23[5];
        v25 = v23[6];
        v70 = v23;
        v27 = v23[7];
        v28 = v24[5];
        v69 = v24[6];
        v29 = v24[7];
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
        inited = swift_initStackObject();
        *(inited + 16) = v74;
        v65 = v26;
        v66 = v25;
        *(inited + 32) = v26;
        *(inited + 40) = v25;
        v67 = v27;
        *(inited + 48) = v27;
        v64 = v30;
        v32 = swift_initStackObject();
        *(v32 + 16) = v74;
        v73 = v28;
        *(v32 + 32) = v28;
        v33 = v69;
        *(v32 + 40) = v69;
        *(v32 + 48) = v29;
        v68 = v29;
        if (inited == v32 || *(inited + 32) == v73 && *(inited + 40) == v33 && *(inited + 48) == v68)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          a2 = v63;
          v34 = v71;
          v16 = v72;
          v35 = v70;
        }

        else
        {
          v36 = sub_19749ED2C(v32, inited);
          swift_setDeallocating();
          swift_setDeallocating();
          a2 = v63;
          v34 = v71;
          v16 = v72;
          v35 = v70;
          if (v36)
          {
            goto LABEL_4;
          }
        }

        v37 = swift_initStackObject();
        *(v37 + 16) = v74;
        *(v37 + 32) = v73;
        *(v37 + 40) = v33;
        *(v37 + 48) = v68;
        v38 = swift_initStackObject();
        *(v38 + 16) = v74;
        v40 = v65;
        v39 = v66;
        *(v38 + 32) = v65;
        *(v38 + 40) = v39;
        v41 = v67;
        *(v38 + 48) = v67;
        if (v37 == v38 || *(v37 + 32) == v40 && *(v37 + 40) == v39 && *(v37 + 48) == v41)
        {
          swift_setDeallocating();
          swift_setDeallocating();
        }

        else
        {
          v42 = sub_19749ED2C(v38, v37);
          swift_setDeallocating();
          swift_setDeallocating();
          if (v42)
          {
            goto LABEL_4;
          }
        }

        v43 = v35[8];
        v44 = v34[8];

        LOBYTE(v43) = sub_197421268(v43, v44);

        if ((v43 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v24)
      {
        goto LABEL_4;
      }

      v45 = v80[6];
      v46 = &v8[v45];
      v47 = *&v8[v45 + 8];
      v48 = (a2 + v45);
      v49 = v48[1];
      if (v47)
      {
        if (!v49)
        {
          goto LABEL_4;
        }

        v50 = *v46 == *v48 && v47 == v49;
        if (!v50 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v49)
      {
        goto LABEL_4;
      }

      v51 = v80[7];
      v52 = &v8[v51];
      v53 = *&v8[v51 + 8];
      v54 = (a2 + v51);
      v55 = v54[1];
      if (v53)
      {
        if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v55)
      {
        goto LABEL_4;
      }

      if (v8[v80[12]] == *(a2 + v80[12]) && v8[v80[11]] == *(a2 + v80[11]))
      {
        sub_19740B2C8(v8);
        sub_19740B2C8(a2);
        sub_19741598C(*(v79 + 48) + v16, v62);
        return 0;
      }

LABEL_4:
      sub_19740B2C8(v8);
      v15 = (v15 + 1) & v75;
    }

    while (((*(v77 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  v57 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v60;
  sub_19741598C(a2, v60);
  v81 = *v57;
  sub_19747EF74(v59, v15, isUniquelyReferenced_nonNull_native);
  *v57 = v81;
  sub_19740B38C(a2, v62);
  return 1;
}

uint64_t sub_19747D9D8(uint64_t *a1, uint64_t a2)
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

    v8 = sub_1975220FC();

    if (v8)
    {

      sub_19752202C();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_19747DE54(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_19747E9CC(v17 + 1);
    }

    sub_19747EEC8(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_19752202C();
  v10 = sub_1975216AC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_19747F524(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_19752173C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_19747DC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1975221BC();
    v21 = v8;
    sub_1975220AC();
    if (sub_19752212C())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_197417660(v15 + 1, a3, a4);
        }

        v8 = v21;
        sub_197522A5C();
        swift_beginAccess();

        sub_19752180C();

        result = sub_197522A9C();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_19752212C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_19747DE54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
    v2 = sub_1975221BC();
    v15 = v2;
    sub_1975220AC();
    if (sub_19752212C())
    {
      sub_19752202C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_19747E9CC(v9 + 1);
        }

        v2 = v15;
        result = sub_1975216AC();
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

      while (sub_19752212C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_19747E054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  result = sub_1975221AC();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 40 * (v17 | (v6 << 6));
      v21 = *(v20 + 32);
      v22 = *(v20 + 16);
      v31 = *v20;
      v32 = v22;
      v33 = v21;
      sub_197522A5C();
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      sub_1975216BC();
      result = sub_197522A9C();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      v15 = v31;
      v16 = v32;
      *(v14 + 32) = v33;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_19747E2E8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModelConfiguration(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  result = sub_1975221AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v1;
    v32 = v7;
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
      v21 = *(v7 + 48);
      v22 = *(v33 + 72);
      sub_19740B38C(v21 + v22 * (v18 | (v10 << 6)), v6);
      sub_197522A5C();
      sub_1975212CC();
      sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1975216BC();
      result = sub_197522A9C();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_19740B38C(v6, *(v9 + 48) + v17 * v22);
      ++*(v9 + 16);
      v7 = v32;
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

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero(v11, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_19747E614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_197522A5C();
      if (v20)
      {
        if (v20 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (*(v19 + 24))
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v3 = v29;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
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

LABEL_39:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_39;
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
      bzero(v7, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_19747E9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
  result = sub_1975221AC();
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
      sub_19752202C();
      result = sub_1975216AC();
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

unint64_t sub_19747EC28(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  sub_197522A9C();
  result = sub_19752208C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_19747ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v10);
  v7 = v10;
  if (v11)
  {
    if (v11 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v7, 1);
      sub_197452CB8(v12);
      sub_1974028C8(v7, 1);
      sub_1974028C8(v7, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v7, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v7, 2);
      sub_1974028C8(v7, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v7, 0);
    sub_197521F4C();
    sub_1974028C8(v7, 0);
    sub_1974028C8(v7, 0);
  }

  sub_197522A9C();
  result = sub_19752208C();
  *(a3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v9 = (*(a3 + 48) + 16 * result);
  *v9 = a1;
  v9[1] = a2;
  ++*(a3 + 16);
  return result;
}

unint64_t sub_19747EEC8(uint64_t a1, uint64_t a2)
{
  sub_19752202C();
  sub_1975216AC();
  result = sub_19752208C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_19747EF74(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ModelConfiguration(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v69 = v8;
  v70 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_52;
  }

  if (a3)
  {
    sub_19747E2E8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_19747F990();
      goto LABEL_52;
    }

    sub_19747FF84(v12 + 1);
  }

  v14 = *v3;
  sub_197522A5C();
  v15 = sub_1975212CC();
  sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1975216BC();
  v16 = sub_197522A9C();
  v79 = v14 + 56;
  v80 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v78 = ~v17;
    v77 = *(v8 + 72);
    v76 = xmmword_19752D100;
    v63 = a1;
    v64 = v7;
    v62 = v15;
    do
    {
      sub_19741598C(*(v80 + 48) + v77 * a2, v11);
      sub_197413D04(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      if ((sub_19752173C() & 1) == 0)
      {
        goto LABEL_11;
      }

      v18 = v7[5];
      v19 = *&v11[v18];
      v20 = *&v11[v18 + 8];
      v21 = (a1 + v18);
      v22 = v19 == *v21 && v20 == v21[1];
      if (!v22 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_11;
      }

      v23 = v7[10];
      v24 = *&v11[v23];
      v25 = *(a1 + v23);
      if (v24)
      {
        if (!v25)
        {
          goto LABEL_11;
        }

        v27 = v24[5];
        v26 = v24[6];
        v73 = v24;
        v74 = v25;
        v28 = v24[7];
        v29 = v25[5];
        v72 = v25[6];
        v30 = v25[7];
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
        inited = swift_initStackObject();
        *(inited + 16) = v76;
        v66 = v27;
        v67 = v26;
        *(inited + 32) = v27;
        *(inited + 40) = v26;
        v68 = v28;
        *(inited + 48) = v28;
        v65 = v31;
        v33 = swift_initStackObject();
        *(v33 + 16) = v76;
        v75 = v29;
        *(v33 + 32) = v29;
        v34 = v72;
        *(v33 + 40) = v72;
        *(v33 + 48) = v30;
        v71 = v30;
        if (inited == v33 || *(inited + 32) == v75 && *(inited + 40) == v34 && *(inited + 48) == v71)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          a1 = v63;
          v36 = v73;
          v35 = v74;
        }

        else
        {
          v37 = sub_19749ED2C(v33, inited);
          swift_setDeallocating();
          swift_setDeallocating();
          a1 = v63;
          v7 = v64;
          v36 = v73;
          v35 = v74;
          if (v37)
          {
            goto LABEL_11;
          }
        }

        v38 = swift_initStackObject();
        *(v38 + 16) = v76;
        *(v38 + 32) = v75;
        *(v38 + 40) = v34;
        *(v38 + 48) = v71;
        v39 = swift_initStackObject();
        *(v39 + 16) = v76;
        v41 = v66;
        v40 = v67;
        *(v39 + 32) = v66;
        *(v39 + 40) = v40;
        v42 = v68;
        *(v39 + 48) = v68;
        if (v38 == v39 || *(v38 + 32) == v41 && *(v38 + 40) == v40 && *(v38 + 48) == v42)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          v7 = v64;
        }

        else
        {
          v43 = sub_19749ED2C(v39, v38);
          swift_setDeallocating();
          swift_setDeallocating();
          v7 = v64;
          if (v43)
          {
            goto LABEL_11;
          }
        }

        v44 = v36[8];
        v45 = v35[8];

        LOBYTE(v44) = sub_197421268(v44, v45);

        if ((v44 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v25)
      {
        goto LABEL_11;
      }

      v46 = v7[6];
      v47 = &v11[v46];
      v48 = *&v11[v46 + 8];
      v49 = (a1 + v46);
      v50 = v49[1];
      if (v48)
      {
        if (!v50)
        {
          goto LABEL_11;
        }

        v51 = *v47 == *v49 && v48 == v50;
        if (!v51 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v50)
      {
        goto LABEL_11;
      }

      v52 = v7[7];
      v53 = &v11[v52];
      v54 = *&v11[v52 + 8];
      v55 = (a1 + v52);
      v56 = v55[1];
      if (v54)
      {
        if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v56)
      {
        goto LABEL_11;
      }

      if (v11[v7[12]] == *(a1 + v7[12]) && v11[v7[11]] == *(a1 + v7[11]))
      {
        sub_19740B2C8(v11);
        sub_1975229BC();
        __break(1u);
        break;
      }

LABEL_11:
      sub_19740B2C8(v11);
      a2 = (a2 + 1) & v78;
    }

    while (((*(v79 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_52:
  v57 = *v70;
  *(*v70 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_19740B38C(a1, *(v57 + 48) + *(v69 + 72) * a2);
  v59 = *(v57 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v57 + 16) = v61;
  }

  return result;
}

uint64_t sub_19747F524(uint64_t result, unint64_t a2, char a3)
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
    sub_19747E9CC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_19747FE44(&qword_1EAF2B210, &qword_19752D3A0);
      goto LABEL_12;
    }

    sub_197480280(v6 + 1);
  }

  v8 = *v3;
  sub_19752202C();
  result = sub_1975216AC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_19752173C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

void sub_19747F6BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  v2 = *v0;
  v3 = sub_19752219C();
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

void *sub_19747F818()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  v2 = *v0;
  v3 = sub_19752219C();
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
        result = sub_197414BA4(*(v2 + 48) + v17, v21);
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

void *sub_19747F990()
{
  v1 = v0;
  v2 = type metadata accessor for ModelConfiguration(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  v7 = *v0;
  v8 = sub_19752219C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_19741598C(*(v7 + 48) + v22, v6);
        result = sub_19740B38C(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_19747FB74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  v2 = *v0;
  v3 = sub_19752219C();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        result = sub_1974028EC(v19, v21);
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

void *sub_19747FCD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  v2 = *v0;
  v3 = sub_19752219C();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
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

void *sub_19747FE44(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752219C();
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

uint64_t sub_19747FF84(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModelConfiguration(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  result = sub_1975221AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v30 = v1;
    v31 = v7;
    v10 = 0;
    v11 = v7 + 56;
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
      v21 = *(v7 + 48);
      v22 = *(v32 + 72);
      sub_19741598C(v21 + v22 * (v18 | (v10 << 6)), v6);
      sub_197522A5C();
      sub_1975212CC();
      sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1975216BC();
      result = sub_197522A9C();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_19740B38C(v6, *(v9 + 48) + v17 * v22);
      ++*(v9 + 16);
      v7 = v31;
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

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v9;
  }

  return result;
}

uint64_t sub_197480280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
  result = sub_1975221AC();
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
      sub_19752202C();

      result = sub_1975216AC();
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

uint64_t (*sub_1974804BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8E0960](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_19748053C;
  }

  __break(1u);
  return result;
}

void (*sub_197480544(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8E0960](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1974805C4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1974805CC(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8E0960](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_197480F64;
  }

  __break(1u);
  return result;
}

void sub_19748064C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v12 = sub_1973F4028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19747B284();
      goto LABEL_7;
    }

    sub_19740CAD4(v15, a4 & 1);
    v20 = sub_1973F4028(a2, a3);
    if ((v16 & 1) == (v21 & 1))
    {
      v12 = v20;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1975229CC();
    __break(1u);
    return;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    v18 = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore, &protocol conformance descriptor for DefaultStore);
    v19 = (*(*a5 + 56) + 16 * v12);
    *v19 = a1;
    v19[1] = v18;

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  sub_1974807D0(v12, a2, a3, a1, *a5);
}

uint64_t sub_1974807D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore, &protocol conformance descriptor for DefaultStore);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void sub_197480890(uint64_t a1)
{
  if (qword_1EAF2AD10 != -1)
  {
    swift_once();
  }

  v1 = sub_19752157C();
  __swift_project_value_buffer(v1, qword_1EAF33E80);

  oslog = sub_19752155C();
  v2 = sub_197521DDC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    type metadata accessor for ModelConfiguration(0);
    sub_197413D04(&qword_1ED7C9B70, type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
    v5 = sub_197521BDC();
    v7 = v6;

    v8 = sub_197462310(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1973F2000, oslog, v2, "Configurations were improperly mutated after the model container was initialized with values: '%s'.  This is unsupported.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v4);
    MEMORY[0x19A8E1B50](v4, -1, -1);
    MEMORY[0x19A8E1B50](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_197480C58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_197480CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_197480D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197480D60(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_197480DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_197480F68(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = a3;
  v39 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = sub_1975220EC();
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_197411CB8(0, v8 & ~(v8 >> 63), 0);
    v9 = v47;
    if (v39)
    {
      v10 = sub_19752209C();
    }

    else
    {
      v10 = sub_19752206C();
      v11 = v7[9];
    }

    v44 = v10;
    v45 = v11;
    v46 = v39 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v36 = v7 + 14;
      v35 = v7 + 16;
      v37 = v8;
      while (v12 < v8)
      {
        v14 = __OFADD__(v12, 1);
        v15 = v12 + 1;
        if (v14)
        {
          goto LABEL_38;
        }

        v40 = v15;
        v5 = v44;
        LODWORD(v4) = v46;
        v8 = v45;
        v16 = v7;
        sub_197499B38(v44, v45, v46, v7);
        v7 = v17;
        v43 = v17;
        a1(&v41, &v43);
        if (v6)
        {
          goto LABEL_43;
        }

        v6 = 0;

        v18 = v41;
        v19 = v42;
        v20 = v9;
        v47 = v9;
        v21 = *(v9 + 16);
        v22 = *(v20 + 24);
        v7 = (v21 + 1);
        if (v21 >= v22 >> 1)
        {
          v34 = v42;
          sub_197411CB8((v22 > 1), v21 + 1, 1);
          v19 = v34;
          v20 = v47;
        }

        *(v20 + 16) = v7;
        v23 = v20 + 16 * v21;
        *(v23 + 32) = v18;
        *(v23 + 40) = v19;
        if (v39)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v9 = v20;
          v7 = v16;
          if (sub_1975220BC())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B0, &qword_19752EA00);
          v13 = sub_197521BFC();
          sub_19752214C();
          v13(&v41, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v7 = v16;
          v24 = 1 << *(v16 + 32);
          if (v5 >= v24)
          {
            goto LABEL_39;
          }

          v9 = v20;
          v25 = v5 >> 6;
          v26 = *&v36[2 * (v5 >> 6)];
          if (((v26 >> v5) & 1) == 0)
          {
            goto LABEL_40;
          }

          v27 = v8;
          if (v16[9] != v8)
          {
            goto LABEL_41;
          }

          v28 = v26 & (-2 << (v5 & 0x3F));
          if (v28)
          {
            v24 = __clz(__rbit64(v28)) | v5 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v25 << 6;
            v29 = v25 + 1;
            v30 = &v35[2 * v25];
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v4 += 64;
              ++v29;
              if (v32)
              {
                sub_19749B23C(v5, v27, 0);
                v24 = __clz(__rbit64(v31)) + v4;
                goto LABEL_34;
              }
            }

            sub_19749B23C(v5, v27, 0);
          }

LABEL_34:
          v33 = v16[9];
          v44 = v24;
          v45 = v33;
          v46 = 0;
        }

        v8 = v37;
        v12 = v40;
        if (v40 == v37)
        {
          sub_19749B23C(v44, v45, v46);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_19749B23C(v5, v8, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void *sub_1974812FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = sub_197441730(v7);
  v6[4] = a3;
  v6[5] = a1;
  v6[6] = a2;
  return v6;
}

uint64_t sub_19748135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CompositeKeyedEncoding(0, a2, a3, a4);
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[6];
  v8 = v4[7];
  v10 = v4[4];
  v9 = v4[5];
  v11 = swift_allocObject();
  v11[6] = v6;
  v11[7] = v5;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v11[5] = v7;

  v12 = v8;

  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_197481434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[6] = a1;
  result[7] = a2;
  result[2] = a3;
  result[3] = a5;
  result[4] = a6;
  result[5] = a4;
  return result;
}

void sub_19748149C(void *a1@<X8>)
{
  v3 = v1[6];
  swift_beginAccess();
  v4 = *(v3 + 128);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1975221EC();
    v1 = v14;
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x80000001975259C0);
    type metadata accessor for Schema.CompositeAttribute();
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    goto LABEL_9;
  }

  if (!sub_1975220EC())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v5 = MEMORY[0x19A8E0960](0, v4);

    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);

LABEL_6:
    swift_beginAccess();
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);

    v8 = v1[7];
    v10 = v1[4];
    v9 = v1[5];
    v11 = type metadata accessor for CompositeSingleValueEncoding();
    v12 = swift_allocObject();
    v12[6] = v7;
    v12[7] = v6;
    v12[4] = v8;
    v12[5] = v3;
    v12[2] = v10;
    v12[3] = v9;
    a1[3] = v11;
    a1[4] = sub_19749B3F4(&qword_1EAF2ACA8, type metadata accessor for CompositeSingleValueEncoding, &unk_19752E538);
    *a1 = v12;
    v13 = v8;

    return;
  }

  __break(1u);
}

uint64_t sub_1974816C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1974817EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CompositeKeyedDecoding(0, a2, a3, a4);
  v5 = v4[2];
  v6 = v4[3];
  v8 = v4 + 4;
  v7 = v4[4];
  v9 = v8[1];

  sub_19749A170(v9, v5, v6, v7);

  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_1974818D4@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v7 = v1 + 4;
  v5 = v1[4];
  v6 = v7[1];
  v8 = type metadata accessor for CompositeSingleValueDecoding();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v5;
  a1[3] = v8;
  a1[4] = sub_19749B3F4(&qword_1EAF2ACB0, type metadata accessor for CompositeSingleValueDecoding, &unk_19752E480);
  *a1 = v9;
  v10 = v6;
}

uint64_t sub_197481998()
{

  return swift_deallocClassInstance();
}

uint64_t sub_197481AE0()
{
  v1 = *(v0 + 16);
  v4 = sub_197522B4C();
  [v1 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

uint64_t sub_197481B88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_197522B4C();
  v5 = v4;
  v6 = sub_197521B0C();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481C54(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = sub_19752178C();
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481D24(double a1)
{
  v2 = *(v1 + 16);
  v3 = sub_197522B4C();
  v5 = v4;
  v6 = sub_197521B8C();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481DF8(float a1)
{
  v2 = *(v1 + 16);
  v3 = sub_197522B4C();
  v5 = v4;
  v6 = sub_197521BAC();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482000(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  v7 = sub_197522B4C();
  v9 = v8;
  v10 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482100(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  v7 = sub_197522B4C();
  v9 = v8;
  v10 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  v7 = sub_197522B4C();
  v9 = v8;
  v10 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482300(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  v7 = sub_197522B4C();
  v9 = v8;
  v10 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

void sub_1974823D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v5 = v4;
  v69 = a1;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[5];
  v12 = *(v11 + 80);
  v13 = *(v11 + 88);
  v70 = v14;
  v68 = v12;
  v77 = v13;
  v15 = sub_197522B4C();
  v17 = v16;
  swift_beginAccess();
  v18 = *(v10 + 136);
  if (!*(v18 + 16))
  {

    goto LABEL_24;
  }

  v19 = sub_1973F4028(v15, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_24:
    swift_endAccess();
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197525980);
    v64 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v64);

    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x80000001975259A0);
    *&v71[0] = v10;
    type metadata accessor for Schema.CompositeAttribute();
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    return;
  }

  v22 = *(*(v18 + 56) + 8 * v19);
  swift_endAccess();
  if ((*(v22 + 120) & 0x60) != 0)
  {
    v23 = v5[2];

    v24 = sub_197522B4C();
    v26 = v25;
    v27 = sub_19752281C();
    v73 = v24;
    v74 = v26;
    [v23 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return;
  }

  (*(v7 + 16))(v9, v69, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
  v28 = swift_dynamicCast();
  v29 = v70;
  if (v28)
  {
    sub_197438DC8(v71, &v73);
    v30 = swift_conformsToProtocol2();
    v31 = v67;
    if (v30)
    {
      sub_197482B54(a3, v5, v29, &v73, a3, a3, v66, v30);
LABEL_19:

      __swift_destroy_boxed_opaque_existential_1Tm_1(&v73);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_1(&v73);
  }

  else
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    sub_1973FE58C(v71, &qword_1EAF2B5E0, &qword_19752EA28);
    v31 = v67;
  }

  v32 = sub_197522B4C();
  v34 = v33;
  swift_beginAccess();
  v35 = *(v10 + 136);
  if (!*(v35 + 16))
  {
    swift_endAccess();

    goto LABEL_17;
  }

  v36 = sub_1973F4028(v32, v34);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_17;
  }

  v39 = *(*(v35 + 56) + 8 * v36);
  swift_endAccess();
  type metadata accessor for Schema.CompositeAttribute();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
LABEL_17:
    v49 = sub_197522B4C();
    v51 = v50;
    v52 = type metadata accessor for CompositeEncoder();
    v53 = swift_allocObject();
    v54 = MEMORY[0x1E69E7CC0];
    *(v53 + 32) = MEMORY[0x1E69E7CC0];

    *(v53 + 40) = sub_197441730(v54);
    v55 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *(v53 + 16) = v49;
    *(v53 + 24) = v51;
    *(v53 + 48) = v10;
    *(v53 + 56) = v55;
    v75 = v52;
    v76 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
    v73 = v53;

    sub_19752169C();
    if (v31)
    {

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_1(&v73);
    v56 = v5[2];
    v57 = *(v53 + 56);
    v73 = sub_197522B4C();
    v74 = v58;
    v59 = v57;
    [v56 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();

    return;
  }

  v41 = v40;

  v42 = sub_197522B4C();
  v65 = v43;
  v44 = type metadata accessor for CompositeEncoder();
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E7CC0];
  *(v45 + 32) = MEMORY[0x1E69E7CC0];
  v67 = v39;

  *(v45 + 40) = sub_197441730(v46);
  v47 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v48 = v65;
  *(v45 + 16) = v42;
  *(v45 + 24) = v48;
  *(v45 + 48) = v41;
  *(v45 + 56) = v47;
  v75 = v44;
  v76 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
  v73 = v45;

  sub_19752169C();
  if (v31)
  {

    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_1(&v73);
  v60 = v5[2];
  v61 = *(v45 + 56);
  v73 = sub_197522B4C();
  v74 = v62;
  v63 = v61;
  [v60 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
}

uint64_t sub_197482B54(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v22[0] = swift_getAssociatedTypeWitness();
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2910(v22, MetatypeMetadata))
  {
    v12 = a2[2];
    v13 = sub_197522B4C();
    v15 = v14;
    __swift_project_boxed_opaque_existential_1Tm_0(a4, a4[3]);
    v16 = sub_19752281C();
    *&v22[0] = v13;
    *(&v22[0] + 1) = v15;
    [v12 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_19749B32C(a4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v20, 0, sizeof(v20));
    sub_1973FE58C(v20, &qword_1EAF2B5D0, &unk_197534040);
LABEL_9:
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v22[0] = 0xD00000000000001ALL;
    *(&v22[0] + 1) = 0x8000000197525960;
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_19749B314(v20, v22);
  v18 = dynamic_cast_existential_2_conditional(a6, a6, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v22);
    goto LABEL_9;
  }

  sub_197482E00(v18, v22, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v22);
}

uint64_t sub_197482E00(uint64_t a1, void *a2, uint64_t *a3)
{
  __swift_project_boxed_opaque_existential_1Tm_0(a2, a2[3]);
  sub_197520BAC();
  swift_allocObject();
  sub_197520B9C();
  v4 = sub_197520B8C();
  v6 = v5;

  v7 = a3[2];
  sub_197522B4C();
  v8 = sub_1975212FC();
  [v7 __swift_setObject_forKeyedSubscript_];
  sub_19744D0E0(v4, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_197482F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_197522B4C();
  v9 = v8;
  v10 = v4[5];
  swift_beginAccess();
  v11 = *(v10 + 136);
  if (*(v11 + 16) && (v12 = sub_1973F4028(v7, v9), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = 0;
  }

  swift_endAccess();

  v15 = v5[2];
  *&v38 = sub_197522B4C();
  *(&v38 + 1) = v16;
  v17 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_1973FE58C(v40, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:
    v18 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v40[0] = sub_197522B4C();
    *(&v40[0] + 1) = v20;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
  v18 = sub_197521D6C();

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_14:
  type metadata accessor for Schema.CompositeAttribute();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    type metadata accessor for CompositeKeyedEncoding(0, a3, a4, v19);
    v23 = sub_197522B4C();
    v25 = v24;
    v27 = v5[3];
    v26 = v5[4];
    v28 = swift_allocObject();
    v28[6] = v23;
    v28[7] = v25;
    v28[2] = v18;
    v28[3] = v27;
    v28[4] = v26;
    v28[5] = v22;
    *&v40[0] = v28;

    swift_getWitnessTable();
    return sub_19752279C();
  }

LABEL_16:
  type metadata accessor for CompositeKeyedEncoding(0, a3, a4, v19);
  v30 = sub_197522B4C();
  v32 = v31;
  v34 = v5[3];
  v33 = v5[4];
  v35 = swift_allocObject();
  v35[6] = v30;
  v35[7] = v32;
  v35[2] = v18;
  v35[3] = v34;
  v35[4] = v33;
  v35[5] = v10;
  *&v40[0] = v35;

  swift_getWitnessTable();
  sub_19752279C();
}

uint64_t sub_1974833A0@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_197521F5C();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v14 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v14 - v11;
  sub_197522B5C();
  result = (*(v9 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    sub_197483548(a1);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_197483548@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  v6 = type metadata accessor for CompositeEncoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[4] = MEMORY[0x1E69E7CC0];

  v7[5] = sub_197441730(v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v7[2] = v4;
  v7[3] = v3;
  v7[6] = v5;
  v7[7] = v9;
  a1[3] = v6;
  result = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_197483628()
{

  return v0;
}

uint64_t sub_197483668()
{
  sub_197483628();

  return swift_deallocClassInstance();
}

uint64_t sub_19748409C()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B8, &qword_19752EA08);
  sub_19749B2B0();
  v0 = sub_19752190C();

  return v0;
}

uint64_t sub_197484180()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  v2 = sub_197522B4C();
  v4 = sub_1974248B8(v2, v3, v1);

  return v4 & 1;
}

BOOL sub_197484238()
{
  v1 = *(v0 + 40);
  *&v5[0] = sub_197522B4C();
  *(&v5[0] + 1) = v2;
  v3 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1973FE58C(v5, &qword_1EAF2AF20, &unk_19752F320);
  return v3 == 0;
}

id sub_197484330()
{
  v1 = *(v0 + 40);
  *&v12[0] = sub_197522B4C();
  *(&v12[0] + 1) = v2;
  v3 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  sub_1973FE14C(v12, &v10, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v11 + 1))
  {
    sub_1973FE58C(v12, &qword_1EAF2AF20, &unk_19752F320);
    v6 = &v10;
LABEL_10:
    sub_1973FE58C(v6, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

  sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = v12;
    goto LABEL_10;
  }

  result = sub_1973FE14C(v12, &v8, &qword_1EAF2AF20, &unk_19752F320);
  if (v9)
  {
    sub_1974028B8(&v8, &v10);
    swift_dynamicCast();
    v5 = [v7 BOOLValue];

    sub_1973FE58C(v12, &qword_1EAF2AF20, &unk_19752F320);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19748454C()
{
  v1 = *(v0 + 40);
  *&v7 = sub_197522B4C();
  *(&v7 + 1) = v2;

  v3 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v3)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    swift_dynamicCast();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484660()
{
  v1 = *(v0 + 40);
  *&v6 = sub_197522B4C();
  *(&v6 + 1) = v2;

  v3 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v3)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484774()
{
  v1 = *(v0 + 40);
  *&v6 = sub_197522B4C();
  *(&v6 + 1) = v2;

  v3 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v3)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484968(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484AA4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484BE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484D1C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_197484E38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v8 = *v5;
  v44 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_197521F5C();
  v41 = *(v10 - 8);
  v42 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v40 - v16;
  v18 = v5[5];
  v19 = *(v8 + 80);
  v20 = *(v8 + 88);
  *&v49 = sub_197522B4C();
  *(&v49 + 1) = v21;
  v22 = [v18 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v52 = v49;
  v53 = v50;
  *&v49 = a3;
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2C24(&v49, MetatypeMetadata))
  {
    v49 = v52;
    v50 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_dynamicCast();
    return;
  }

  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v25 = v24;
    sub_1973FE14C(&v52, &v49, &qword_1EAF2AF20, &unk_19752F320);
    if (*(&v50 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_19744D0E0(v47, v48);
        v26 = v44;
        (*(v44 + 56))(v17, 1, 1, a3);
        sub_197485460(a3, v17, &v52, v19, a3, a3, v20, v45, v25);
        swift_beginAccess();
        v28 = v41;
        v27 = v42;
        (*(v41 + 16))(v14, v17, v42);
        v29 = *(v28 + 8);
        v29(v17, v27);
        v30 = *(v26 + 48);
        if (v30(v14, 1, a3) == 1)
        {
          v49 = v52;
          v50 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          swift_dynamicCast();
          if (v30(v14, 1, a3) != 1)
          {
            v29(v14, v27);
          }
        }

        else
        {
          sub_1973FE58C(&v52, &qword_1EAF2AF20, &unk_19752F320);
          (*(v26 + 32))(v46, v14, a3);
        }

        return;
      }
    }

    else
    {
      sub_1973FE58C(&v49, &qword_1EAF2AF20, &unk_19752F320);
    }
  }

  sub_1973FE14C(&v52, &v49, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v50 + 1))
  {
    sub_1973FE58C(&v49, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_19;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v49 = v52;
    v50 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_dynamicCast();
    return;
  }

  v31 = v47;
  v32 = v6[4];
  v33 = type metadata accessor for CompositeDecoder();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  v34[2] = MEMORY[0x1E69E7CC0];
  v36 = v31;

  v37 = sub_197441730(v35);
  v34[4] = v32;
  v34[5] = v36;
  v34[3] = v37;
  *(&v50 + 1) = v33;
  v51 = sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder, &unk_19752E8E8);
  *&v49 = v34;

  v38 = v43;
  v39 = v54;
  sub_197521B9C();
  sub_1973FE58C(&v52, &qword_1EAF2AF20, &unk_19752F320);

  if (!v39)
  {
    (*(v44 + 32))(v46, v38, a3);
  }
}

uint64_t sub_197485460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[1] = a1;
  v27 = a7;
  v15 = sub_197521F5C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2910(&AssociatedTypeWitness, MetatypeMetadata))
  {
    sub_1973FE14C(a3, &AssociatedTypeWitness, &qword_1EAF2AF20, &unk_19752F320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v21 = swift_dynamicCast();
    (*(*(a5 - 8) + 56))(v19, v21 ^ 1u, 1, a5);
    swift_beginAccess();
    return (*(v16 + 40))(a2, v19, v15);
  }

  else
  {
    v23 = dynamic_cast_existential_2_conditional(a6, a6, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    if (v23)
    {
      return sub_197485708(v23, a3, a2, a4, a5, a6, v23, v27, a8, a9, v24);
    }

    else
    {
      AssociatedTypeWitness = 0;
      v29 = 0xE000000000000000;
      sub_1975221EC();

      AssociatedTypeWitness = 0xD00000000000001ALL;
      v29 = 0x8000000197525960;
      v25 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v25);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_197485708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a3;
  v33 = a5;
  v13 = sub_197521F5C();
  v34 = *(v13 - 8);
  v35 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v32 - v16;
  v18 = *(a7 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v32 - v24;
  sub_197520B7C();
  swift_allocObject();
  sub_197520B6C();
  sub_1973FE14C(a2, &v39, &qword_1EAF2AF20, &unk_19752F320);
  if (v40)
  {
    sub_1974028B8(&v39, &v41);
    swift_dynamicCast();
    v26 = v37;
    v27 = v38;
    sub_197520B5C();

    sub_19744D0E0(v26, v27);
    (*(v18 + 32))(v22, v25, a7);
    v28 = v33;
    v29 = swift_dynamicCast();
    (*(*(v28 - 8) + 56))(v17, v29 ^ 1u, 1, v28);
    v30 = v36;
    swift_beginAccess();
    return (*(v34 + 40))(v30, v17, v35);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1974859DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = v4[5];
  *&v18 = sub_197522B4C();
  *(&v18 + 1) = v9;
  v10 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1973FE58C(v20, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_8;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v12 = v8;
    goto LABEL_9;
  }

  v12 = v21;
LABEL_9:
  type metadata accessor for CompositeKeyedDecoding(0, a3, a4, v11);
  v13 = v5[2];
  v14 = v5[3];
  v15 = v5[4];
  v16 = v12;

  v17 = sub_19749A170(v16, v13, v14, v15);

  *&v20[0] = v17;

  swift_getWitnessTable();
  sub_19752265C();
}

uint64_t sub_197485C5C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_197521F5C();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v14 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v14 - v11;
  sub_197522B5C();
  result = (*(v9 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    sub_197485E1C(v12, a1);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_197485E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v6 = v2[4];
  v5 = v2[5];
  v7 = type metadata accessor for CompositeDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = MEMORY[0x1E69E7CC0];
  v10 = v5;

  v11 = sub_197441730(v9);
  v8[4] = v6;
  v8[5] = v10;
  v8[3] = v11;
  v12 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2A8, &qword_19752D440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752C280;
  v14 = *(v4 + 80);
  *(inited + 56) = v14;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0((inited + 32));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_2Tm_0, a1, v14);

  sub_1974EE690(inited);
  v8[2] = v12;

  a2[3] = v7;
  result = sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder, &unk_19752E8E8);
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_197485FB8()
{
  sub_197438E58(MEMORY[0x1E69E7CF8]);

  return swift_deallocClassInstance();
}

unint64_t sub_1974866F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for CompositeKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_19748679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for CompositeKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_197486830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for CompositeKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_197486998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[6] = a3;
  v5 = v4;
  v7 = v3[6];
  v6 = v3[7];
  v8 = v3[5];
  v9 = type metadata accessor for CompositeEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v10[4] = MEMORY[0x1E69E7CC0];

  v10[5] = sub_197441730(v11);
  v12 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v10[2] = v7;
  v10[3] = v6;
  v10[6] = v8;
  v10[7] = v12;
  v17[3] = v9;
  v17[4] = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
  v17[0] = v10;

  sub_19752169C();
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
    v14 = v10[7];
    v15 = v3[4];
    v17[0] = v7;
    v17[1] = v6;

    v16 = v14;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_197486B34()
{

  return swift_deallocClassInstance();
}

uint64_t sub_197486BB0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);

  [v2 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

uint64_t sub_197486C2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);

  v6 = sub_197521B0C();
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486CC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *(v3 + 48);
  v5 = *(v3 + 56);

  v7 = sub_19752178C();
  [v4 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486D6C(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);

  v6 = sub_197521B8C();
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486E10(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);

  v6 = sub_197521BAC();
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1974870D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1974871A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487350()
{
  v1 = [*(v0 + 16) allKeys];
  v2 = sub_1975219CC();
  if (*(v2 + 16))
  {

    if (*(v2 + 16))
    {
      sub_197404860(v2 + 32, v5);

      sub_1974028B8(v5, &v6);
      swift_dynamicCast();
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197487410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  type metadata accessor for CompositeDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v8 = v4;

  v9 = sub_197441730(v7);
  v6[4] = v5;
  v6[5] = v8;
  v6[3] = v9;
  sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder, &unk_19752E8E8);
  return sub_197521B9C();
}

uint64_t sub_19748750C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_197487974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 88);
  v14 = *(*v3 + 80);
  v15 = a2;
  v16 = v4;
  v17 = a3;
  type metadata accessor for ManagedObjectKeyedDecoding(0, &v14);
  v5 = *(v3 + 48);
  v7 = *(v3 + 64);
  v14 = *(v3 + 56);
  v6 = v14;
  LOBYTE(v15) = v7;
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 40);
  v11 = *(v3 + 32);

  sub_1974028EC(v6, v7);

  v12 = sub_19749A398(v11, v5, &v14, v9, v8, v10);

  v14 = v12;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_197487B70(void *a1)
{
  sub_19749B32C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Attribute();
  if (!swift_dynamicCast())
  {
    v5 = *(v1 + 72);
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm_0(a1, v6);
    v8 = *(v7 + 32);

    v9 = v8(v6, v7);
    LOBYTE(v6) = sub_1974248B8(v9, v10, v5);

    if (v6)
    {
      v11 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm_0(a1, v11);
      v13 = *(v12 + 32);

      v14 = v13(v11, v12);
      v16 = sub_197488090(v14, v15);

      v4 = v16 ^ 1;
      return v4 & 1;
    }

LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *(v18 + 120);

  if ((v3 & 0x20) != 0)
  {
    goto LABEL_6;
  }

  v4 = (v3 & 0x99) != 0;
  return v4 & 1;
}

uint64_t sub_197487CE4()
{

  sub_1974028C8(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_197487D38()
{
  sub_197487CE4();

  return swift_deallocClassInstance();
}

uint64_t sub_197487DF0(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_197521F5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = [a1 objectID];
  swift_beginAccess();
  v16 = v9;
  v17 = 0;
  sub_197405108();
  v10 = v9;

  sub_19752167C();

  sub_1974028C8(v16, v17);
  if ((*(*(v3 - 8) + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v11 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1[3];
    v1[3] = 0x8000000000000000;
    sub_197424C58(v11, v9, 0, isUniquelyReferenced_nonNull_native);

    v1[3] = v15;
    return swift_endAccess();
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_197488024(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  v4 = sub_197488090(v3, v2);

  return v4 & 1;
}

uint64_t sub_197488090(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  LOBYTE(a2) = sub_1974248B8(a1, a2, v5);

  return a2 & 1;
}

void sub_1974880E8(uint64_t a1)
{
  v2 = sub_197521B0C();
  v3 = *(v1 + 16);
  v4 = v2;
  sub_197522B4C();
  v5 = sub_19752178C();

  [v3 setValue:v4 forKey:v5];
}

void sub_1974881AC(double a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_197522B4C();
  v4 = sub_19752178C();

  [v2 setValue:v3 forKey:v4];
}

void sub_19748827C(float a1)
{
  v3 = *(v1 + 16);
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = a1;
  v6 = [v4 initWithFloat_];
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v6 forKey:v7];
}

void sub_19748834C(char a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  sub_197522B4C();
  v4 = sub_19752178C();

  [v2 setValue:v3 forKey:v4];
}

void sub_197488454(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  sub_197522B4C();
  v4 = sub_19752178C();

  [v2 setValue:v3 forKey:v4];
}

void sub_19748851C(unsigned __int16 a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  sub_197522B4C();
  v4 = sub_19752178C();

  [v2 setValue:v3 forKey:v4];
}

void sub_197488604(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(v3 + 16);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  sub_197522B4C();
  v6 = sub_19752178C();

  [v4 setValue:v5 forKey:v6];
}

uint64_t sub_1974886F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v15[0] = *(*v4 + 80);
  v15[1] = a3;
  v15[2] = v5;
  v15[3] = a4;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v15);
  v6 = v4[2];
  v7 = v4[6];
  v8 = v4[7];
  v11 = v4 + 4;
  v9 = v4[4];
  v10 = v11[1];
  v12 = v6;

  v13 = sub_1974425BC(v12, v10, v7, v8, v9);

  v15[0] = v13;
  swift_getWitnessTable();
  return sub_19752279C();
}

uint64_t sub_197488868@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = sub_197521F5C();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v15 - v11;
  sub_197522B5C();
  result = (*(v9 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    sub_197488A14(v14, a1);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_197488A14@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = type metadata accessor for ManagedObjectEncoder(0, *(*v2 + 80), *(*v2 + 96), a1);
  v5 = v2[2];
  v8 = v2 + 4;
  v6 = v2[4];
  v7 = v8[1];
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v11 = v5;

  v9[3] = sub_197441730(v10);
  v9[4] = v6;
  v9[5] = v11;
  v9[6] = v7;
  a2[3] = v4;
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v9;
  return result;
}

void *sub_197488AF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 120);
  sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
  v5 = sub_197521D6C();
  v6 = v5;
  if ((v4 & 2) != 0)
  {
    v7 = [v5 allKeys];
    v8 = sub_1975219CC();

    if (!*(v8 + 16))
    {
      goto LABEL_8;
    }

    sub_197404860(v8 + 32, v35);

    v9 = MEMORY[0x1E69E6158];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v10 = a2[18];

    v11 = sub_1974248B8(v32, *(&v32 + 1), v10);

    if ((v11 & 1) == 0)
    {
LABEL_8:

      if ((v4 & 4) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B590, &qword_19752E9C8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19752C280;
    *(v12 + 32) = v32;
    *(v12 + 88) = v9;
    *(v12 + 56) = v9;
    *(v12 + 64) = v32;

    v13 = sub_197521D8C();

    v6 = v13;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    return v6;
  }

LABEL_9:
  result = swift_beginAccess();
  v15 = a2[16];
  if (v15 >> 62)
  {
    result = sub_1975220EC();
    v16 = result;
    if (!result)
    {
      return v6;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return v6;
    }
  }

  if (v16 >= 1)
  {
    v17 = v15 & 0xC000000000000001;

    v18 = 0;
    v30 = v15;
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x19A8E0960](v18, v15);
        if ((*(v19 + 120) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);

        if ((*(v19 + 120) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        swift_beginAccess();
        v33 = *(v19 + 16);

        v22 = [v6 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
        }

        v35[0] = v33;
        v35[1] = v34;
        if (*(&v34 + 1))
        {
          sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
          if (swift_dynamicCast())
          {
            v23 = v16;
            v24 = v17;
            v25 = v6;
            v26 = v3;
            v27 = *(v19 + 16);
            v28 = *(v19 + 24);

            v29 = sub_197488AF8(v31, v21);
            *&v35[0] = v27;
            *(&v35[0] + 1) = v28;
            v3 = v26;
            v6 = v25;
            v17 = v24;
            v16 = v23;
            v15 = v30;
            [v6 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        else
        {

          sub_1973FE58C(v35, &qword_1EAF2AF20, &unk_19752F320);
        }

        goto LABEL_14;
      }

LABEL_13:

LABEL_14:
      if (v16 == ++v18)
      {

        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197489178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 96);
  v14[0] = *(a4 + 80);
  v14[1] = v11;
  v12 = type metadata accessor for ManagedObjectKeyedEncoding(0, v14);
  return a6(a1, a2, a3, v12, a5);
}

uint64_t sub_1974891F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 96);
  v8[0] = *(a5 + 80);
  v8[1] = v6;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v8);
  return sub_19752296C();
}

uint64_t sub_197489278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 96);
  v6[0] = *(a3 + 80);
  v6[1] = v4;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v6);
  return sub_19752294C();
}

uint64_t sub_1974892E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 96);
  v7[0] = *(a4 + 80);
  v7[1] = v5;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v7);
  return sub_19752293C();
}

uint64_t sub_197489510(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 96);
  v12[0] = *(a3 + 80);
  v12[1] = v9;
  v10 = type metadata accessor for ManagedObjectKeyedEncoding(0, v12);
  return a5(a1 & 0x1FF, a2, v10, a4);
}

uint64_t sub_1974895B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 96);
  v12[0] = *(a3 + 80);
  v12[1] = v9;
  v10 = type metadata accessor for ManagedObjectKeyedEncoding(0, v12);
  return a5(a1 & 0x1FFFF, a2, v10, a4);
}

uint64_t sub_197489658(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 96);
  v12[0] = *(a3 + 80);
  v12[1] = v9;
  v10 = type metadata accessor for ManagedObjectKeyedEncoding(0, v12);
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v10, a4);
}

uint64_t sub_197489704(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 96);
  v14[0] = *(a4 + 80);
  v14[1] = v11;
  v12 = type metadata accessor for ManagedObjectKeyedEncoding(0, v14);
  return a6(a1, a2 & 1, a3, v12, a5);
}

uint64_t sub_1974897B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 96);
  v16[0] = *(a5 + 80);
  v16[1] = v13;
  v14 = type metadata accessor for ManagedObjectKeyedEncoding(0, v16);
  return a7(a1, a2, a3 & 1, a4, v14, a6);
}

uint64_t sub_197489840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 96);
  v8[0] = *(a5 + 80);
  v8[1] = v6;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v8);
  return sub_19752295C();
}

uint64_t sub_197489950()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B8, &qword_19752EA08);
  sub_19749B2B0();
  v0 = sub_19752190C();

  return v0;
}

uint64_t sub_197489A68()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = sub_197522B4C();
  v4 = sub_1974248B8(v2, v3, v1);

  return v4 & 1;
}

BOOL sub_197489B20()
{
  v1 = v0;
  v2 = sub_197522B4C();
  v4 = v3;
  v5 = *(v0 + 32);
  swift_beginAccess();
  v6 = *(v5 + 104);
  if (*(v6 + 16) && (v7 = sub_1973F4028(v2, v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    if (*(v9 + 168) == 1)
    {
      v10 = *(v1 + 16);

      v11 = sub_19752178C();

      v12 = [v10 objectIDsForRelationshipNamed_];

      sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
      v13 = sub_1975219CC();

      if (v13 >> 62)
      {
        v14 = sub_1975220EC();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v14 == 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
    v16 = *(v1 + 16);
    v17 = sub_19752178C();

    v18 = [v16 valueForKey_];

    v15 = v18 == 0;
    if (v18)
    {
      sub_197521FDC();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    sub_1973FE58C(v20, &qword_1EAF2AF20, &unk_19752F320);
  }

  return v15;
}

id sub_197489D48()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  sub_1973FE14C(v11, &v9, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v10 + 1))
  {
    sub_1973FE58C(&v9, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_9;
  }

  sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1973FE58C(v11, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

  result = sub_1973FE14C(v11, &v7, &qword_1EAF2AF20, &unk_19752F320);
  if (v8)
  {
    sub_1974028B8(&v7, &v9);
    swift_dynamicCast();
    v5 = [v6 BOOLValue];

    sub_1973FE58C(v11, &qword_1EAF2AF20, &unk_19752F320);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_197489F44()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v4, &v5);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A03C()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v4 = v7;
    [v7 doubleValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A16C()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v4 = v7;
    [v7 floatValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A2BC()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v4 charValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A3E4()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v4 shortValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A54C(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  sub_197522B4C();
  v5 = sub_19752178C();

  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v7 = v10;
    [v10 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A69C()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v4 unsignedCharValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A7C4()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v5, &v6);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v4 unsignedShortValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A90C(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  sub_197522B4C();
  v5 = sub_19752178C();

  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v7 = v10;
    [v10 *a2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19748AA5C@<X0>(uint64_t a2@<X1>, _UNKNOWN **a3@<X2>, _UNKNOWN **a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v223 = a4;
  v11 = *v5;
  v12 = sub_197521F5C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v220 - v14;
  v16 = *(v11 + 88);
  v17 = *(v11 + 104);
  v231 = a2;
  v224 = v17;
  v225 = v16;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v18)
  {

    goto LABEL_15;
  }

  v20 = sub_19752282C();

  if (v20)
  {
LABEL_15:
    *&v229 = [v7[2] objectID];
    BYTE8(v229) = 0;
    return swift_dynamicCast();
  }

  v221 = a3;
  v222 = a5;
  v220 = v6;
  v21 = swift_dynamicCastMetatype();
  v22 = v7[4];
  v23 = sub_197522B4C();
  v25 = v24;
  if (!v21)
  {
    swift_beginAccess();
    v43 = *(v22 + 96);
    if (*(v43 + 16))
    {
      v44 = sub_1973F4028(v23, v25);
      v46 = v45;

      v47 = v221;
      if (v46)
      {
        v48 = *(*(v43 + 56) + 8 * v44);
        swift_endAccess();
        if ((*(v48 + 120) & 0x90) == 0)
        {

          v128 = sub_197522B4C();
          sub_19748CAB0(v128, v129, v7[2], v47, v47, v15);

          v130 = *(v47 - 8);
          v131 = (*(v130 + 48))(v15, 1, v47);
          v132 = v222;
          if (v131 != 1)
          {

            return (*(v130 + 32))(v132, v15, v47);
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v49 = v7[2];
        swift_beginAccess();

        v50 = sub_19752178C();

        v51 = [v49 valueForKey_];

        if (v51)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_beginAccess();
          sub_1973FE14C(v48 + 64, &v227, &qword_1EAF2AF20, &unk_19752F320);
          if (!*(&v228 + 1))
          {
            sub_1973FE58C(&v227, &qword_1EAF2AF20, &unk_19752F320);
            v193 = [v49 entity];
            v194 = [v193 attributesByName];

            sub_197438EA8(0, &qword_1ED7C7700, 0x1E695D530);
            v195 = sub_1975215FC();

            if (*(v195 + 16) && (v196 = *(v48 + 16), v197 = *(v48 + 24), , v198 = sub_1973F4028(v196, v197), v200 = v199, , (v200 & 1) != 0))
            {
              v201 = *(*(v195 + 56) + 8 * v198);

              *&v229 = 0;
              *(&v229 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197525620);
              v202 = *(v48 + 16);
              v203 = *(v48 + 24);

              MEMORY[0x19A8DFF80](v202, v203);

              MEMORY[0x19A8DFF80](0x206D6F72662027, 0xE700000000000000);
              v204 = [v49 description];
              v205 = sub_1975217BC();
              v207 = v206;

              MEMORY[0x19A8DFF80](v205, v207);

              MEMORY[0x19A8DFF80](0xD000000000000029, 0x80000001975256C0);
              v208 = [v201 description];
              v209 = sub_1975217BC();
              v211 = v210;

              MEMORY[0x19A8DFF80](v209, v211);

              v219 = 0;
            }

            else
            {

              *&v229 = 0;
              *(&v229 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197525620);
              v212 = *(v48 + 16);
              v213 = *(v48 + 24);

              MEMORY[0x19A8DFF80](v212, v213);

              MEMORY[0x19A8DFF80](0x206D6F72662027, 0xE700000000000000);
              v214 = [v49 description];
              v215 = sub_1975217BC();
              v217 = v216;

              MEMORY[0x19A8DFF80](v215, v217);

              MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197525680);
              v219 = 0;
            }

            goto LABEL_113;
          }

          sub_1974028B8(&v227, &v229);
        }

        type metadata accessor for Schema.Attribute();
        v136 = sub_1974480F8(&v229, v48);
        v138 = v137;

        __swift_destroy_boxed_opaque_existential_1Tm_1(&v229);
        *&v227 = v136;
        *(&v227 + 1) = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A8, &qword_19752E9F8);
        return swift_dynamicCast();
      }
    }

    else
    {

      v47 = v221;
    }

    swift_endAccess();
    v85 = sub_197522B4C();
    v87 = v86;
    swift_beginAccess();
    v88 = *(v22 + 104);
    if (*(v88 + 16))
    {
      v89 = sub_1973F4028(v85, v87);
      v91 = v90;

      if (v91)
      {
        v92 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v93 = *(v92 + 168);

        v95 = sub_197488024(v94);
        if (v93)
        {
          if (v95)
          {
            v96 = v7[2];
            sub_197522B4C();
            v97 = sub_19752178C();

            v98 = [v96 valueForKey_];

            if (v98)
            {
              sub_197521FDC();
              swift_unknownObjectRelease();
            }

            else
            {
              v227 = 0u;
              v228 = 0u;
            }

            v229 = v227;
            v230 = v228;
            sub_1973FE14C(&v229, &v227, &qword_1EAF2AF20, &unk_19752F320);
            if (*(&v228 + 1))
            {
              sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
              if (swift_dynamicCast())
              {
                v139 = v226;
                sub_197487DF0(v226);
                v140 = [v139 objectID];

                sub_1973FE58C(&v229, &qword_1EAF2AF20, &unk_19752F320);
                *&v227 = v140;
                BYTE8(v227) = 0;
                return swift_dynamicCast();
              }
            }

            else
            {
              sub_1973FE58C(&v227, &qword_1EAF2AF20, &unk_19752F320);
            }

            *&v227 = 0;
            *(&v227 + 1) = 0xE000000000000000;
            sub_1975221EC();
            v226 = v227;
            MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975255E0);
            sub_19752280C();
            MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
            sub_1973FE14C(&v229, &v227, &qword_1EAF2AF20, &unk_19752F320);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v189 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v189);

            v219 = 0;
            goto LABEL_113;
          }

          v110 = v7[2];
          sub_197522B4C();
          v111 = sub_19752178C();

          v112 = [v110 objectIDsForRelationshipNamed_];

          v64 = sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
          v52 = sub_1975219CC();

          if (!(v52 >> 62))
          {
            v113 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v113 <= 1)
            {
              if (!v113)
              {
LABEL_86:

                v115 = 0;
                v116 = -1;
                goto LABEL_87;
              }

LABEL_50:
              if ((v52 & 0xC000000000000001) == 0)
              {
                if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v114 = *(v52 + 32);
LABEL_53:
                  v115 = v114;

                  v116 = 0;
LABEL_87:
                  *&v229 = v115;
                  BYTE8(v229) = v116;
                  v155 = &qword_1EAF2B5A0;
                  v156 = &qword_19752E9F0;
LABEL_91:
                  __swift_instantiateConcreteTypeFromMangledNameV2(v155, v156);
                  return swift_dynamicCast();
                }

                __break(1u);
                goto LABEL_96;
              }

LABEL_94:
              v114 = MEMORY[0x19A8E0960](0, v52);
              goto LABEL_53;
            }

LABEL_108:
            *&v229 = 0;
            *(&v229 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v229 = 0xD000000000000025;
            *(&v229 + 1) = 0x80000001975255B0;
            v192 = MEMORY[0x19A8E0100](v52, v64);
            MEMORY[0x19A8DFF80](v192);

            v219 = 0;
            goto LABEL_113;
          }

LABEL_84:
          if (sub_1975220EC() < 2)
          {
            if (!sub_1975220EC())
            {
              goto LABEL_86;
            }

            goto LABEL_50;
          }

          goto LABEL_108;
        }

        if (v95)
        {
          v99 = v7[2];
          sub_197522B4C();
          v100 = sub_19752178C();

          v101 = [v99 valueForKey_];

          if (v101)
          {
            sub_197521FDC();
            swift_unknownObjectRelease();
          }

          else
          {
            v227 = 0u;
            v228 = 0u;
          }

          v229 = v227;
          v230 = v228;
          sub_1973FE14C(&v229, &v227, &qword_1EAF2AF20, &unk_19752F320);
          if (*(&v228 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
            v141 = swift_dynamicCast();
            if (v141)
            {
              v143 = v226;
              MEMORY[0x1EEE9AC00](v141, v142);
              v144 = v223;
              *(&v220 - 4) = v47;
              *(&v220 - 3) = v144;
              v218 = v7;
              sub_197480F68(sub_19749B1D8, (&v220 - 6), v143);
              v146 = v145;

              sub_1973FE58C(&v229, &qword_1EAF2AF20, &unk_19752F320);
              *&v227 = v146;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              return swift_dynamicCast();
            }
          }

          else
          {
            sub_1973FE58C(&v227, &qword_1EAF2AF20, &unk_19752F320);
          }

          *&v227 = 0;
          *(&v227 + 1) = 0xE000000000000000;
          sub_1975221EC();
          v226 = v227;
          MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197525570);
          sub_1973FE14C(&v229, &v227, &qword_1EAF2AF20, &unk_19752F320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          v190 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v190);

          MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
          sub_1973FE14C(&v229, &v227, &qword_1EAF2AF20, &unk_19752F320);
          v191 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v191);

          v219 = 0;
          goto LABEL_113;
        }

        v117 = v7[2];
        sub_197522B4C();
        v118 = sub_19752178C();

        v119 = [v117 objectIDsForRelationshipNamed_];

        sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
        v52 = sub_1975219CC();

        if (v52 >> 62)
        {
          v120 = sub_1975220EC();
          if (v120)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v120 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v120)
          {
LABEL_56:
            *&v229 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v120 & ~(v120 >> 63), 0);
            if (v120 < 0)
            {
              __break(1u);
              goto LABEL_94;
            }

            v121 = 0;
            v122 = v229;
            do
            {
              if ((v52 & 0xC000000000000001) != 0)
              {
                v123 = MEMORY[0x19A8E0960](v121, v52);
              }

              else
              {
                v123 = *(v52 + 8 * v121 + 32);
              }

              *&v229 = v122;
              v125 = *(v122 + 16);
              v124 = *(v122 + 24);
              if (v125 >= v124 >> 1)
              {
                v127 = v123;
                sub_197411CB8((v124 > 1), v125 + 1, 1);
                v123 = v127;
                v122 = v229;
              }

              ++v121;
              *(v122 + 16) = v125 + 1;
              v126 = v122 + 16 * v125;
              *(v126 + 32) = v123;
              *(v126 + 40) = 0;
            }

            while (v120 != v121);

LABEL_90:
            *&v229 = v122;
            v155 = &qword_1EAF2AEE0;
            v156 = &qword_19752E9C0;
            goto LABEL_91;
          }
        }

        v122 = MEMORY[0x1E69E7CC0];
        goto LABEL_90;
      }
    }

    else
    {
    }

    swift_endAccess();
    *&v229 = 0;
    *(&v229 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v229 = 0xD000000000000011;
    *(&v229 + 1) = 0x8000000197525550;
    v158 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v158);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    v159 = [v7[2] description];
    v160 = sub_1975217BC();
    v162 = v161;

    MEMORY[0x19A8DFF80](v160, v162);

    v219 = 0;
    goto LABEL_113;
  }

  swift_beginAccess();
  v26 = *(v22 + 96);
  if (!*(v26 + 16))
  {

LABEL_22:
    swift_endAccess();
    v52 = v7[2];
    v53 = [v52 entity];
    v54 = [v53 relationshipsByName];

    sub_197438EA8(0, &qword_1ED7C9350, 0x1E695D6E8);
    v55 = sub_1975215FC();

    v56 = sub_197522B4C();
    if (!*(v55 + 16))
    {
LABEL_97:

      goto LABEL_98;
    }

    v58 = sub_1973F4028(v56, v57);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
LABEL_98:

      *&v229 = 0;
      *(&v229 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000036, 0x80000001975256F0);
      sub_19752280C();
      MEMORY[0x19A8DFF80](0x6570797420666F20, 0xE900000000000020);
      v157 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v157);

      v219 = 0;
      goto LABEL_113;
    }

    v61 = *(*(v55 + 56) + 8 * v58);

    v62 = v61;
    v63 = [v62 name];
    if (!v63)
    {
      sub_1975217BC();
      v63 = sub_19752178C();
    }

    v64 = [v52 objectIDsForRelationshipNamed_];

    sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
    v65 = sub_1975219CC();

    if ([v62 isToMany])
    {
      v67 = *(v7 + 72);
      *&v229 = v7[8];
      v66 = v229;
      BYTE8(v229) = v67;

      sub_1974028EC(v66, v67);
      v68 = sub_197522B4C();
      sub_19746C2F4(v65, &v229, v68, v69);

      sub_1974028C8(v229, SBYTE8(v229));
      v70 = [v62 name];

      v71 = sub_1975217BC();
      v73 = v72;

      *&v229 = v71;
      *(&v229 + 1) = v73;
      v74 = 4;
LABEL_34:
      LOBYTE(v230) = v74;
      return swift_dynamicCast();
    }

    if (v65 >> 62)
    {
      if (sub_1975220EC())
      {
        goto LABEL_30;
      }
    }

    else if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      if ((v65 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x19A8E0960](0, v65);
        goto LABEL_33;
      }

      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v75 = *(v65 + 32);
LABEL_33:
        v76 = v75;

        v78 = *(v7 + 72);
        *&v229 = v7[8];
        v77 = v229;
        BYTE8(v229) = v78;

        sub_1974028EC(v77, v78);
        v79 = sub_197522B4C();
        sub_19746C188(v76, &v229, v79, v80);

        sub_1974028C8(v229, SBYTE8(v229));
        v81 = [v62 name];

        v82 = sub_1975217BC();
        v84 = v83;

        *&v229 = v82;
        *(&v229 + 1) = v84;
        v74 = 3;
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_84;
    }

    *&v229 = 0;
    *(&v229 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197523E30);
    v147 = [v62 name];

    v148 = sub_1975217BC();
    v150 = v149;

    MEMORY[0x19A8DFF80](v148, v150);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v151 = [v52 description];
    v152 = sub_1975217BC();
    v154 = v153;

    MEMORY[0x19A8DFF80](v152, v154);

    v219 = 0;
    goto LABEL_113;
  }

  v27 = sub_1973F4028(v23, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = *(*(v26 + 56) + 8 * v27);
  swift_endAccess();
  v31 = *(v30 + 120);
  if (v31)
  {
    v32 = v7[2];

    sub_197522B4C();
    v33 = sub_19752178C();

    v34 = [v32 valueForKey_];

    if (v34)
    {
      sub_197521FDC();
      swift_unknownObjectRelease();
      if ((v31 & 1) == 0)
      {
        v36 = *(v7 + 72);
        *&v227 = v7[8];
        v35 = v227;
        BYTE8(v227) = v36;

        sub_1974028EC(v35, v36);
        v37 = sub_197522B4C();
        if ((v31 & 0x90) != 0)
        {
          sub_1973FF4F8(&v229, &v227, v37, v38);

          sub_1974028C8(v227, SBYTE8(v227));
          v39 = sub_197522B4C();
          v41 = v40;

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v229);
          *&v227 = v39;
          *(&v227 + 1) = v41;
          LOBYTE(v228) = 1;
        }

        else
        {
          sub_19746BD5C(&v229, &v227, v37, v38);

          sub_1974028C8(v227, SBYTE8(v227));
          v133 = sub_197522B4C();
          v135 = v134;

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v229);
          *&v227 = v133;
          *(&v227 + 1) = v135;
          LOBYTE(v228) = 0;
        }

        return swift_dynamicCast();
      }

      sub_197404860(&v229, &v227);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        v102 = v226;
        v104 = *(v7 + 72);
        *&v227 = v7[8];
        v103 = v227;
        BYTE8(v227) = v104;

        sub_1974028EC(v103, v104);
        v105 = sub_197522B4C();
        sub_19746BEBC(v102, &v227, v105, v106);

        sub_1974028C8(v227, SBYTE8(v227));
        v107 = sub_197522B4C();
        v109 = v108;

        __swift_destroy_boxed_opaque_existential_1Tm_1(&v229);
        *&v227 = v107;
        *(&v227 + 1) = v109;
        LOBYTE(v228) = 2;
        return swift_dynamicCast();
      }

      *&v227 = 0;
      *(&v227 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
      v179 = sub_197522B4C();
      MEMORY[0x19A8DFF80](v179);

      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v180 = [v32 objectID];
      v181 = [v180 description];
      v182 = sub_1975217BC();
      v184 = v183;

      MEMORY[0x19A8DFF80](v182, v184);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      v185 = [v32 description];
      v186 = sub_1975217BC();
      v188 = v187;

      MEMORY[0x19A8DFF80](v186, v188);

      v219 = 0;
    }

    else
    {
      *&v229 = 0;
      *(&v229 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
      v169 = sub_197522B4C();
      MEMORY[0x19A8DFF80](v169);

      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v170 = [v32 objectID];
      v171 = [v170 description];
      v172 = sub_1975217BC();
      v174 = v173;

      MEMORY[0x19A8DFF80](v172, v174);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      v175 = [v32 description];
      v176 = sub_1975217BC();
      v178 = v177;

      MEMORY[0x19A8DFF80](v176, v178);

      v219 = 0;
    }
  }

  else
  {
    *&v229 = 0;
    *(&v229 + 1) = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000057, 0x8000000197525730);
    v163 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v163);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v164 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v164);

    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v165 = [v7[2] description];
    v166 = sub_1975217BC();
    v168 = v167;

    MEMORY[0x19A8DFF80](v166, v168);

    v219 = 0;
  }

LABEL_113:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19748C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v15 = *(*v4 + 80);
  v16 = a3;
  v17 = v5;
  v18 = a4;
  type metadata accessor for ManagedObjectKeyedDecoding(0, &v15);
  v7 = *(v4 + 72);
  v15 = *(v4 + 64);
  v6 = v15;
  LOBYTE(v16) = v7;
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v4 + 48);
  v11 = *(v4 + 24);
  v12 = *(v4 + 16);

  sub_1974028EC(v6, v7);

  v13 = sub_19749A398(v12, v8, &v15, v9, v10, v11);

  v15 = v13;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_19748C808@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = sub_197521F5C();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v15 - v11;
  sub_197522B5C();
  result = (*(v9 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    sub_19748C9C4(v14, a1);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_19748C9C4@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ManagedObjectDecoder(0, *(*v2 + 80), *(*v2 + 96), a1);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 16);

  v9 = sub_19749AE94(v7, v5, v6, v8);

  a2[3] = v4;
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_19748CAB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, ProtocolDescriptor *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = *v6;
  v83 = a6;
  v12 = sub_197521F5C();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v79 - v19;
  v21 = v6[4];
  swift_beginAccess();
  v22 = v21[12];
  if (!*(v22 + 16) || (v23 = sub_1973F4028(a1, a2), (v24 & 1) == 0))
  {
    swift_endAccess();
    *&v86[0] = 0;
    *(&v86[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000028, 0x80000001975254B0);
    MEMORY[0x19A8DFF80](a1, a2);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v68 = [(ProtocolDescriptor *)a3 description];
    a1 = sub_1975217BC();
    v70 = v69;

    MEMORY[0x19A8DFF80](a1, v70);

    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    *&v85[0] = v21;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_58;
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();

  v26 = sub_19752178C();
  v27 = [(ProtocolDescriptor *)a3 valueForKey:v26];

  if (!v27)
  {

    return (*(*(a5 - 8) + 56))(v83, 1, 1, a5);
  }

  sub_197521FDC();
  swift_unknownObjectRelease();
  sub_1974028B8(v85, v86);
  v28 = v25[120];
  if (v28)
  {
    sub_197404860(v86, v85);
    sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
    if (!swift_dynamicCast())
    {
      goto LABEL_59;
    }

    v35 = v84[0];
    type metadata accessor for Schema.CompositeAttribute();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      if ((v28 & 6) != 0)
      {
        v38 = sub_19748D7F0(v35, v36);
      }

      else
      {
        v38 = v35;
      }

      a1 = v38;
      v84[0] = v38;
      *&v85[0] = a4;
      a3 = &protocol descriptor for _Optional;
      v39 = swift_conformsToProtocol2();
      v40 = a4;
      if (v39)
      {
        v40 = a4;
        if (a4)
        {
          v41 = v39;
          v40 = a4;
          do
          {
            sub_1973F732C(v40, v85, v40, v41);
            v40 = *&v85[0];
            v41 = swift_conformsToProtocol2();
            if (v41)
            {
              v42 = v40 == 0;
            }

            else
            {
              v42 = 1;
            }
          }

          while (!v42);
        }
      }

      v43 = dynamic_cast_existential_2_conditional(v40, v40, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (v43)
      {
        v45 = MEMORY[0x1EEE9AC00](v43, v44);
        sub_19748DFDC(v45, v84, v37, v82[10], v82[11], a5, v45, v82[12], v82[13], v46);

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        v47 = v83;
        v48 = swift_dynamicCast();
        return (*(*(a5 - 8) + 56))(v47, v48 ^ 1u, 1, a5);
      }

      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v85[0] = 0xD000000000000023;
      *(&v85[0] + 1) = 0x8000000197524170;
      v78 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v78);
    }

    else
    {
      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
      v74 = [(ProtocolDescriptor *)a3 description];
      v75 = sub_1975217BC();
      v77 = v76;

      MEMORY[0x19A8DFF80](v75, v77);

      MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
      v84[0] = v25;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
    }

    while (1)
    {
LABEL_58:
      sub_1975223EC();
      __break(1u);
LABEL_59:
      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000019, 0x80000001975254E0);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197525500);
      v71 = [(ProtocolDescriptor *)a3 description];
      a1 = sub_1975217BC();
      v73 = v72;

      MEMORY[0x19A8DFF80](a1, v73);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      sub_19752235C();
    }
  }

  *&v85[0] = a4;
  v29 = swift_conformsToProtocol2();
  if (v29 && a4)
  {
    v30 = v29;
    do
    {
      sub_1973F732C(a4, v85, a4, v30);
      a4 = *&v85[0];
      v30 = swift_conformsToProtocol2();
      if (v30)
      {
        v31 = a4 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    while (!v31);
  }

  if (sub_1973F6EEC(a4))
  {
    if (swift_dynamicCastMetatype())
    {
      sub_197404860(v86, v85);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v32 = v84[0];
        v33 = [v84[0] unsignedCharValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        LOBYTE(v85[0]) = v33;
LABEL_53:
        v66 = v83;
        v67 = swift_dynamicCast();
        return (*(*(a5 - 8) + 56))(v66, v67 ^ 1u, 1, a5);
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v86, v85);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v49 = v84[0];
        v50 = [v84[0] unsignedShortValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        LOWORD(v85[0]) = v50;
        goto LABEL_53;
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v86, v85);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v51 = v84[0];
        v52 = [v84[0] unsignedIntValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        LODWORD(v85[0]) = v52;
        goto LABEL_53;
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v86, v85);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v53 = v84[0];
        v54 = [v84[0] unsignedLongLongValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        *&v85[0] = v54;
        goto LABEL_53;
      }
    }

    else
    {
      if (!swift_dynamicCastMetatype())
      {
LABEL_52:

        sub_1974028B8(v86, v85);
        goto LABEL_53;
      }

      sub_197404860(v86, v85);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v55 = v84[0];
        v56 = [v84[0] unsignedIntegerValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
        *&v85[0] = v56;
        goto LABEL_53;
      }
    }
  }

  v57 = swift_conformsToProtocol2();
  if (!v57)
  {
    goto LABEL_52;
  }

  if (!a4)
  {
    goto LABEL_52;
  }

  v58 = v57;
  sub_197404860(v86, v85);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_19744D0E0(v84[0], v84[1]);
  v59 = *(a5 - 8);
  v60 = *(v59 + 56);
  v60(v20, 1, 1, a5);
  sub_19748E27C(a4, v86, v20, v82[10], v82[11], a5, a4, v82[12], v82[13], v58);

  swift_beginAccess();
  v62 = v80;
  v61 = v81;
  (*(v81 + 16))(v17, v20, v80);
  v63 = *(v61 + 8);
  v81 = v61 + 8;
  v63(v20, v62);
  v64 = *(v59 + 48);
  if (v64(v17, 1, a5) == 1)
  {
    sub_1974028B8(v86, v85);
    v65 = v83;
    swift_dynamicCast();
    if (v64(v17, 1, a5) != 1)
    {
      v63(v17, v62);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v86);
    v65 = v83;
    (*(v59 + 32))(v83, v17, a5);
  }

  return (v60)(v65, 0, 1, a5);
}

id sub_19748D7F0(void *a1, uint64_t *a2)
{
  if ((a2[15] & 2) != 0)
  {
    sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
    v4 = sub_197521D6C();
    sub_197521D7C();
    sub_197521D9C();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    for (i = v35; *(&v33 + 1); i = v35)
    {
      sub_1974028B8(&v36, &v32);
      sub_1974028B8(&v38, &v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        sub_19748DE08(v41);
        v6 = v5;

        if (v6)
        {
          __swift_project_boxed_opaque_existential_1Tm_0(&v32, *(&v33 + 1));
          [v4 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm_1(&v32);
      sub_197521D9C();
      v36 = v32;
      v37 = v33;
      v38 = v34;
    }

    v7 = [v4 allKeys];
    v8 = sub_1975219CC();

    if (*(v8 + 16))
    {
      sub_197404860(v8 + 32, &v36);

      v9 = MEMORY[0x1E69E6158];
      if ((swift_dynamicCast() & 1) == 0)
      {
        return v4;
      }

      v10 = v32;
      swift_beginAccess();
      v11 = a2[18];

      v12 = sub_1974248B8(v10, *(&v10 + 1), v11);

      if (v12)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B590, &qword_19752E9C8);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_19752C280;
        *(v13 + 56) = v9;
        *(v13 + 32) = v10;
        v14 = sub_1974BF988(MEMORY[0x1E69E7CC0]);
        *(v13 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B598, &unk_19752E9D0);
        *(v13 + 64) = v14;
        v15 = sub_197521D8C();

        return v15;
      }
    }

LABEL_39:

    return v4;
  }

  if ((a2[15] & 4) != 0)
  {
    sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
    v4 = sub_197521D6C();
    result = swift_beginAccess();
    v16 = a2[16];
    if (v16 >> 62)
    {
      result = sub_1975220EC();
      v17 = result;
      if (!result)
      {
        return v4;
      }

      goto LABEL_18;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_18:
      if (v17 < 1)
      {
        __break(1u);
        return result;
      }

      for (j = 0; j != v17; ++j)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x19A8E0960](j, v16);
        }

        else
        {
          v19 = *(v16 + 8 * j + 32);
        }

        v20 = *(v19 + 120);
        if ((v20 & 6) != 0 && (v21 = swift_dynamicCastClass()) != 0)
        {
          v22 = v21;
          swift_beginAccess();
          v23 = v22[3];
          *&v32 = v22[2];
          *(&v32 + 1) = v23;
          swift_retain_n();

          v24 = [v4 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v24)
          {
            sub_197521FDC();
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
          }

          v36 = v32;
          v37 = v33;
          if (*(&v33 + 1))
          {
            sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
            if (swift_dynamicCast())
            {
              v25 = v40;
              if ((v20 & 2) != 0 && ![v40 count])
              {
                v29 = v22[2];
                v30 = v22[3];

                *&v36 = v29;
                *(&v36 + 1) = v30;
                [v4 __swift_setObject_forKeyedSubscript_];
              }

              else
              {
                v26 = v22[2];
                v27 = v22[3];

                v28 = sub_19748D7F0(v25, v22);
                *&v36 = v26;
                *(&v36 + 1) = v27;
                [v4 __swift_setObject_forKeyedSubscript_];
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {

            sub_1973FE58C(&v36, &qword_1EAF2AF20, &unk_19752F320);
          }
        }

        else
        {
        }
      }

      goto LABEL_39;
    }

    return v4;
  }

  return a1;
}

void sub_19748DE08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_13:
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v8 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_197404860(*(a1 + 56) + 32 * v12, v16);
        *&v17 = v14;
        *(&v17 + 1) = v15;
        sub_1974028B8(v16, &v18);

        v10 = v8;
LABEL_14:
        v20 = v17;
        v21[0] = v18;
        v21[1] = v19;
        if (!*(&v17 + 1))
        {
          break;
        }

        sub_1974028B8(v21, &v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        sub_19748DE08(*&v16[0]);

        v7 = v10;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (v6 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 1;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v6)
        {
          v5 = 0;
          v18 = 0u;
          v19 = 0u;
          v17 = 0u;
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
        if (v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_19748DFDC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  v12 = *a2;
  type metadata accessor for CompositeDecoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v13[2] = MEMORY[0x1E69E7CC0];
  v15 = v12;
  v16 = sub_197441730(v14);
  v13[4] = a3;
  v13[5] = v15;
  v13[3] = v16;
  sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder, &unk_19752E8E8);

  sub_197521B9C();
}

uint64_t sub_19748E27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = dynamic_cast_existential_2_conditional(a7, a7, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (result)
  {
    return sub_19748E324(result, a2, a3, a4, a5, a6, a7, result, a8, a9, a10, v18);
  }

  return result;
}

uint64_t sub_19748E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a3;
  v33[1] = a12;
  v15 = sub_197521F5C();
  v34 = *(v15 - 8);
  v35 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v33 - v18;
  v20 = *(a8 - 8);
  v22 = MEMORY[0x1EEE9AC00](v17, v21);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v33 - v26;
  sub_197520B7C();
  swift_allocObject();
  sub_197520B6C();
  sub_197404860(a2, v39);
  swift_dynamicCast();
  v28 = v37;
  v29 = v38;
  sub_197520B5C();

  sub_19744D0E0(v28, v29);
  (*(v20 + 32))(v24, v27, a8);
  v30 = swift_dynamicCast();
  (*(*(a6 - 8) + 56))(v19, v30 ^ 1u, 1, a6);
  v31 = v36;
  swift_beginAccess();
  return (*(v34 + 40))(v31, v19, v35);
}

uint64_t sub_19748E5D0()
{

  sub_1974028C8(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_19748E624()
{
  sub_19748E5D0();

  return swift_deallocClassInstance();
}

uint64_t sub_19748E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 96);
  v10[0] = *(a2 + 80);
  v10[1] = v7;
  v8 = type metadata accessor for ManagedObjectKeyedDecoding(0, v10);
  return a4(a1, v8, a3);
}

uint64_t sub_19748EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  v5[0] = *(a2 + 80);
  v5[1] = v3;
  type metadata accessor for ManagedObjectKeyedDecoding(0, v5);
  return sub_1975228AC();
}

uint64_t sub_19748EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  v5[0] = *(a2 + 80);
  v5[1] = v3;
  type metadata accessor for ManagedObjectKeyedDecoding(0, v5);
  return sub_19752289C();
}

uint64_t sub_19748EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 96);
  v10[0] = *(a2 + 80);
  v10[1] = v7;
  v8 = type metadata accessor for ManagedObjectKeyedDecoding(0, v10);
  return a4(a1, v8, a3) & 0x1FF;
}

uint64_t sub_19748ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 96);
  v10[0] = *(a2 + 80);
  v10[1] = v7;
  v8 = type metadata accessor for ManagedObjectKeyedDecoding(0, v10);
  return a4(a1, v8, a3) & 0x1FFFF;
}

unint64_t sub_19748EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 96);
  v11[0] = *(a2 + 80);
  v11[1] = v7;
  v8 = type metadata accessor for ManagedObjectKeyedDecoding(0, v11);
  v9 = a4(a1, v8, a3);
  return v9 | ((HIDWORD(v9) & 1) << 32);
}

uint64_t sub_19748EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 96);
  v12[0] = *(a2 + 80);
  v12[1] = v8;
  v9 = type metadata accessor for ManagedObjectKeyedDecoding(0, v12);
  result = a4(a1, v9, a3);
  if (v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_19748EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 96);
  v12[0] = *(a2 + 80);
  v12[1] = v8;
  v9 = type metadata accessor for ManagedObjectKeyedDecoding(0, v12);
  result = a4(a1, v9, a3);
  if (v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_19748EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 96);
  v8[0] = *(a5 + 80);
  v8[1] = v6;
  type metadata accessor for ManagedObjectKeyedDecoding(0, v8);
  return sub_1975228EC();
}

uint64_t sub_19748F0AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v12 + 16))(&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  if (swift_dynamicCast())
  {
    sub_1973FE14C(a3, &v72, &qword_1EAF2AF20, &unk_19752F320);

    sub_197511DB4(&v72, a1, a2);
  }

  v67 = v5;
  sub_1973F51F0(AssociatedTypeWitness, AssociatedConformanceWitness, v74);
  sub_1974D4CB4(a1, a2, &v72);
  v77 = v74[0];
  sub_1973FE58C(&v77, &qword_1EAF2B568, &qword_19752E990);
  v18 = v74[2];
  v76 = v74[1];
  sub_1973FE58C(&v76, &qword_1EAF2B570, &qword_19752E998);
  v75 = v18;
  sub_1973FE58C(&v75, &qword_1EAF2B578, &qword_19752E9A0);
  if (!*(&v72 + 1))
  {
    goto LABEL_67;
  }

  v19 = v73;

  sub_1973F82A8(&v72);
  v66 = v19;
  if (sub_197521FFC() != AssociatedTypeWitness)
  {
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197525030);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197525060);
    *&v70 = v66;
    sub_19752202C();
    sub_19752235C();
    goto LABEL_79;
  }

  sub_197521FFC();
  v21 = v20;
  if (swift_conformsToProtocol2())
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  v65 = v23;
  sub_197521FFC();
  v25 = v24;
  *&v72 = v24;
  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    v27 = v26;
    do
    {
      sub_1973F732C(v25, &v72, v25, v27);
      v25 = v72;
      v27 = swift_conformsToProtocol2();
      if (v27)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  type metadata accessor for Schema.Entity();
  v29 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v30 = *(v29 + 96);
  if (!*(v30 + 16) || (v31 = sub_1973F4028(a1, a2), (v32 & 1) == 0))
  {
    swift_endAccess();
LABEL_28:
    v35 = sub_1975214EC();
    v36 = sub_1975214EC();
    if (v35)
    {
      if (v36 && v35 == v36)
      {
        goto LABEL_31;
      }
    }

    else if (!v36)
    {
LABEL_31:
      sub_1975214DC();
      if (v37 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v37)
        {
          *&v72 = 0;
          *(&v72 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v72 = 0xD00000000000001DLL;
          *(&v72 + 1) = 0x8000000197524E70;
          v58 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v58);

          goto LABEL_79;
        }

        v38 = sub_1975214DC();
        if (v39 >= 1)
        {
          v40 = *v38;
          v41 = swift_conformsToProtocol2();
          if (v41 && v40)
          {
            if (v65)
            {
              sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);
              if (v71)
              {
                sub_1974028B8(&v70, &v72);
                sub_197490CD4(&v72, v66, v43, a4, v40, a5);
                goto LABEL_53;
              }

LABEL_77:
              sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
              *&v72 = 0;
              *(&v72 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197525080);
              *&v70 = v66;
              sub_19752202C();
              sub_19752235C();
              goto LABEL_79;
            }

            sub_197490998(a3, v66, v42, a4, v40, a5, v41);
          }

          else
          {
            v53 = dynamic_cast_existential_2_conditional(v40, v40, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
            if (!v53)
            {
              *&v72 = 0;
              *(&v72 + 1) = 0xE000000000000000;
              sub_1975221EC();

              *&v72 = 0xD00000000000002FLL;
              *(&v72 + 1) = 0x80000001975250B0;
              v60 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v60);

              goto LABEL_79;
            }

            v56 = v53;
            if (v65)
            {
              sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);
              if (!v71)
              {
                sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
                *&v72 = 0;
                *(&v72 + 1) = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975250E0);
                *&v70 = v66;
                sub_19752202C();
                sub_19752235C();
                MEMORY[0x19A8DFF80](0xD000000000000033, 0x8000000197525100);
                goto LABEL_79;
              }

              sub_1974028B8(&v70, &v72);
              sub_197491310(&v72, v66, v57, a4, v56, a5);
LABEL_53:

              return __swift_destroy_boxed_opaque_existential_1Tm_1(&v72);
            }

            sub_197490F5C(a3, v66, v54, a4, v53, a5, v55, v54);
          }

          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_67:
      sub_1973FE58C(&v72, &qword_1EAF2B580, &qword_19752E9A8);
      *&v72 = 0;
      *(&v72 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x6620746F6E6E6143, 0xEC00000020646E69);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x8000000197525000);
      sub_1975227FC();
      goto LABEL_79;
    }

    v44 = swift_conformsToProtocol2();
    if (v44 && v25)
    {
      v45 = v44;
      if (v65)
      {
        sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);
        if (v71)
        {
          sub_1974028B8(&v70, &v72);
          sub_19749171C(&v72, v66, v46, a4, v25, a5, v45);
          goto LABEL_53;
        }

        goto LABEL_77;
      }

      sub_197491598(a3, v66, v25, a4, v25, a5, v44);
    }

    else
    {
      v47 = dynamic_cast_existential_2_conditional(v25, v25, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (!v47)
      {
        *&v72 = 0;
        *(&v72 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v72 = 0xD000000000000029;
        *(&v72 + 1) = 0x8000000197524E40;
        v59 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v59);

        goto LABEL_79;
      }

      v50 = v47;
      v51 = v48;
      if (v65)
      {
        sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);
        if (v71)
        {
          sub_1974028B8(&v70, &v72);
          sub_197491EC8(&v72, v66, v50, a4, v50, a5, v52, v51);
          goto LABEL_53;
        }

        goto LABEL_77;
      }

      sub_197491984(a3, v66, v48, a4, v47, a5, v49, v48);
    }

LABEL_57:
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  swift_endAccess();
  if ((*(v33 + 120) & 0x90) == 0)
  {
    goto LABEL_28;
  }

  if (!*(a3 + 24))
  {
    v72 = 0u;
    v73 = 0u;

    goto LABEL_60;
  }

  sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);
  if (!v71)
  {

    sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_73;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_73:
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197525180);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x80000001975251B0);
    v61 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v61);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8DFF80](a1, a2);
    goto LABEL_79;
  }

  v34 = v68;
  type metadata accessor for Schema.Attribute();
  sub_19744D340(v34, *(&v34 + 1), v33, &v72);
  sub_19744D0E0(v34, *(&v34 + 1));
LABEL_60:
  if ((v65 & 1) == 0)
  {
    sub_1974900B0(&v72, v66, v25, a4, v25, a5);

    return sub_1973FE58C(&v72, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE14C(&v72, &v68, &qword_1EAF2AF20, &unk_19752F320);
  if (v69)
  {
    sub_1974028B8(&v68, &v70);
    sub_1974905D0(&v70, v66, v25, a4, v25, a5);

    __swift_destroy_boxed_opaque_existential_1Tm_1(&v70);
    return sub_1973FE58C(&v72, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE58C(&v68, &qword_1EAF2AF20, &unk_19752F320);
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v68 = v70;
  MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197525140);
  swift_beginAccess();
  v62 = *(v33 + 16);
  v63 = *(v33 + 24);

  MEMORY[0x19A8DFF80](v62, v63);

  MEMORY[0x19A8DFF80](0x6C696E206F7420, 0xE700000000000000);
LABEL_79:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974900B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a1;
  v36 = sub_197521F5C();
  v37 = *(v36 - 8);
  v12 = MEMORY[0x1EEE9AC00](v36, v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v33 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16, v20);
  v34 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v33[0] = a2;
  v33[1] = a3;
  v23 = sub_19749AEF0(AssociatedTypeWitness, a3, AssociatedTypeWitness, a5);
  sub_1973FE14C(v35, &v39, &qword_1EAF2AF20, &unk_19752F320);
  if (v40)
  {
    sub_1974028B8(&v39, v41);
    sub_197404860(v41, &v39);

    v24 = swift_dynamicCast();
    v25 = *(v19 + 56);
    if (v24)
    {
      v25(v18, 0, 1, a5);
      v26 = v34;
      (*(v19 + 32))(v34, v18, a5);
      (*(v19 + 16))(v14, v26, a5);
      v25(v14, 0, 1, a5);
      v27 = a6;
      v28 = *(a6 + 152);
      v29 = v36;
      v28(v23, v14, v36, a4, v27);

      (*(v37 + 8))(v14, v29);
      (*(v19 + 8))(v26, a5);
      return __swift_destroy_boxed_opaque_existential_1Tm_1(v41);
    }

    else
    {
      v25(v18, 1, 1, a5);
      (*(v37 + 8))(v18, v36);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975251E0);
      v38 = v33[0];
      sub_19752202C();
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525200);
      v32 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v32);

      MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525220);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v39, &qword_1EAF2AF20, &unk_19752F320);
    (*(v19 + 56))(v14, 1, 1, a5);
    v31 = v36;
    (*(a6 + 152))(v23, v14, v36, a4, a6);

    return (*(v37 + 8))(v14, v31);
  }

  return result;
}

uint64_t sub_1974905D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v11 = sub_197521F5C();
  v29 = *(v11 - 8);
  v30 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v28 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = a3;
  v21 = a3;
  v22 = v33;
  v23 = sub_19749B068(AssociatedTypeWitness, v21, AssociatedTypeWitness, a5);
  v32 = a1;
  sub_197404860(a1, v35);

  v24 = swift_dynamicCast();
  v25 = *(v16 + 56);
  if (v24)
  {
    v25(v15, 0, 1, a5);
    (*(v16 + 32))(v19, v15, a5);
    (*(a6 + 152))(v23, v19, a5, a4, a6);

    return (*(v16 + 8))(v19, a5);
  }

  else
  {
    v25(v15, 1, 1, a5);
    (*(v29 + 8))(v15, v30);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975251E0);
    v34 = v22;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525200);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);

    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525220);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197490998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v13 = sub_19749AEF0(AssociatedTypeWitness, v12, AssociatedTypeWitness, v12);
  sub_1973FE14C(a1, v22, &qword_1EAF2AF20, &unk_19752F320);
  if (!v22[3])
  {

    sub_1973FE58C(v22, &qword_1EAF2AF20, &unk_19752F320);
    v14 = 0;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v14 = v21;
LABEL_5:
    v22[0] = v14;
    v15 = *(a6 + 136);
    v16 = sub_197521F5C();
    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v15(v13, v22, v16, a5, WitnessTable, a4, a6);
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
  v22[0] = v13;
  sub_197521F5C();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
  v19 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v19);

  MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
  sub_1973FE14C(a1, v22, &qword_1EAF2AF20, &unk_19752F320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v20 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v20);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197490CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v12 = sub_19749B068(AssociatedTypeWitness, v11, AssociatedTypeWitness, v11);
  sub_197404860(a1, v18);

  if (swift_dynamicCast())
  {
    v18[0] = v17;
    v13 = *(a6 + 136);
    WitnessTable = swift_getWitnessTable();
    v13(v12, v18, v11, a5, WitnessTable, a4, a6);
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v16 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v16);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197490F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v13 = sub_19749AEF0(AssociatedTypeWitness, v12, AssociatedTypeWitness, v12);
  sub_1973FE14C(a1, &v23, &qword_1EAF2AF20, &unk_19752F320);
  if (v24)
  {
    sub_1974028B8(&v23, v25);
    sub_197404860(v25, &v23);

    if (swift_dynamicCast())
    {
      *&v23 = v22;
      v14 = *(a6 + 112);
      v15 = sub_197521F5C();
      swift_getWitnessTable();
      WitnessTable = swift_getWitnessTable();
      v14(v13, &v23, v15, WitnessTable, a4, a6);

      return __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
    }

    else
    {
      *&v23 = 0;
      *(&v23 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
      sub_197521F5C();
      sub_197522B2C();
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
      v21 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v21);

      MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v23, &qword_1EAF2AF20, &unk_19752F320);
    *&v25[0] = 0;
    v18 = *(a6 + 112);
    v19 = sub_197521F5C();
    swift_getWitnessTable();
    v20 = swift_getWitnessTable();
    v18(v13, v25, v19, v20, a4, a6);
  }

  return result;
}

uint64_t sub_197491310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v11 = sub_19749B068(AssociatedTypeWitness, v10, AssociatedTypeWitness, v10);
  sub_197404860(a1, v17);

  if (swift_dynamicCast())
  {
    v17[0] = v16;
    v12 = *(a6 + 112);
    WitnessTable = swift_getWitnessTable();
    v12(v11, v17, v10, WitnessTable, a4, a6);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v15 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v15);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197491598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = sub_19749AEF0(AssociatedTypeWitness, a5, AssociatedTypeWitness, a5);
  sub_1973FE14C(a1, &v17, &qword_1EAF2AF20, &unk_19752F320);
  if (v18)
  {
    sub_1974028B8(&v17, v19);

    sub_19749171C(v19, a2, v15, a4, a5, a6, a7);

    return __swift_destroy_boxed_opaque_existential_1Tm_1(v19);
  }

  else
  {

    sub_1973FE58C(&v17, &qword_1EAF2AF20, &unk_19752F320);
    (*(a6 + 128))(v14, 0, a5, a7, a4, a6);
  }
}

uint64_t sub_19749171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_19749AEF0(AssociatedTypeWitness, a5, AssociatedTypeWitness, a5);
  sub_197404860(a1, v18);

  if (swift_dynamicCast())
  {
    v14 = *(a6 + 128);
    swift_unknownObjectRetain();
    v14(v13, v17, a5, a7, a4, a6);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197521F5C();
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v16 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v16);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197491984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v40 = a2;
  v12 = sub_197521F5C();
  v13 = sub_197521F5C();
  v38 = *(v13 - 8);
  v39 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v16;
  v43 = *(v12 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v38 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = a4;
  swift_getAssociatedConformanceWitness();
  v26 = sub_19749AEF0(AssociatedTypeWitness, a5, AssociatedTypeWitness, a5);
  v40 = a1;
  sub_1973FE14C(a1, &v47, &qword_1EAF2AF20, &unk_19752F320);
  if (v48)
  {
    v27 = v41;
    sub_1974028B8(&v47, v49);
    sub_197404860(v49, &v47);

    v28 = swift_dynamicCast();
    v29 = *(v43 + 56);
    if (v28)
    {
      v29(v17, 0, 1, v12);
      v30 = v43;
      (*(v43 + 32))(v24, v17, v12);
      v31 = *(a6 + 112);
      v44 = v27;
      WitnessTable = swift_getWitnessTable();
      v31(v26, v24, v12, WitnessTable, v42, a6);

      (*(v30 + 8))(v24, v12);
      return __swift_destroy_boxed_opaque_existential_1Tm_1(v49);
    }

    else
    {
      v29(v17, 1, 1, v12);
      (*(v38 + 8))(v17, v39);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v45 = v47;
      MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
      *&v47 = v26;
      sub_197522B2C();
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
      v36 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v36);

      MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
      sub_1973FE14C(v40, &v47, &qword_1EAF2AF20, &unk_19752F320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v37 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v37);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v47, &qword_1EAF2AF20, &unk_19752F320);
    (*(*(a5 - 8) + 56))(v21, 1, 1, a5);
    v34 = *(a6 + 112);
    v46 = v41;
    v35 = swift_getWitnessTable();
    v34(v26, v21, v12, v35, v42, a6);

    return (*(v43 + 8))(v21, v12);
  }

  return result;
}

uint64_t sub_197491EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a3;
  v41 = a8;
  v42 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_197521F5C();
  v39 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v38 - v18;
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_197404860(a1, &v46);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v25(v19, 0, 1, a5);
    (*(v20 + 32))(v23, v19, a5);
    v26 = sub_197521FFC();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v26 == AssociatedTypeWitness)
    {
      swift_getAssociatedConformanceWitness();
      sub_19749B068(AssociatedTypeWitness, a5, AssociatedTypeWitness, a5);
      v33 = *(a6 + 112);

      v33(v34, v23, a5, v41, a4, a6);
      goto LABEL_6;
    }

    (*(v42 + 16))(v14, v44, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
    if (swift_dynamicCast())
    {

      v30 = sub_1973F8364(a2);
      v32 = v31;
      sub_197404860(v43, &v46);
      sub_197511DB4(&v46, v30, v32);

LABEL_6:

      return (*(v20 + 8))(v23, a5);
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1975221EC();

    v46 = 0xD00000000000002BLL;
    v47 = 0x80000001975252E0;
    v37 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v37);
  }

  else
  {
    v25(v19, 1, 1, a5);
    (*(v39 + 8))(v19, v15);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    v45 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v36 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v36);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}