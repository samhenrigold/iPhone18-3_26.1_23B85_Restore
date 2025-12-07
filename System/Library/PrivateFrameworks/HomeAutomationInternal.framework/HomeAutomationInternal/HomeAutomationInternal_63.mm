void *sub_252E038BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_252974E7C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_252A00AF4(v25, (*(v4 + 56) + v22));
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

void *sub_252E03A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v2 = *v0;
  v3 = sub_252E37B34();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_252ADFB08(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

  return result;
}

char *sub_252E03C44()
{
  v1 = v0;
  v35 = sub_252E35EF4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546340, &qword_252E61AA0);
  v3 = *v0;
  v4 = sub_252E37B34();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

void *sub_252E03EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545280, &qword_252E5A600);
  v2 = *v0;
  v3 = sub_252E37B34();
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

id sub_252E0403C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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

void *sub_252E04198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v20 = 504 * v17;
        memcpy(__dst, (*(v2 + 56) + 504 * v17), 0x1F8uLL);
        *(*(v4 + 48) + v18) = v19;
        memcpy((*(v4 + 56) + v20), __dst, 0x1F8uLL);
        result = sub_2529353AC(__dst, v21);
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

void *sub_252E04330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452D0, &qword_252E5A650);
  v2 = *v0;
  v3 = sub_252E37B34();
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

id sub_252E044C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
  v2 = *v0;
  v3 = sub_252E37B34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v22 = v1;
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
        v18 = *(v2 + 48);
        v19 = 8 * v17;
        v20 = 504 * v17;
        memcpy(__dst, (v18 + 504 * v17), 0x1F8uLL);
        v21 = *(*(v2 + 56) + v19);
        memmove((*(v4 + 48) + v20), (v18 + v20), 0x1F8uLL);
        *(*(v4 + 56) + v19) = v21;
        sub_2529353AC(__dst, v23);
        result = v21;
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

        v1 = v22;
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

void *sub_252E04690(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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

void *sub_252E04804(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37B34();
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

void *sub_252E04964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_252E04ACC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
  v2 = *v0;
  v3 = sub_252E37B34();
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

void *sub_252E04C4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546338, &qword_252E61A98);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_252929E74(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_252927BEC(v25, *(v4 + 56) + v22);
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

uint64_t sub_252E04DF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541390, &qword_27F541388, &qword_252E404A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541388, &qword_252E404A8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E04F94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Service(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05124(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541868, &qword_27F541840, &qword_252E40AD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Accessory(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E052B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546300, &qword_27F5462F8, &qword_252E61A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462F8, &qword_252E61A70);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540388, 0x277D47338);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05454(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E055F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeUserTaskResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546440, &qword_27F546438, &qword_252E61B18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546438, &qword_252E61B18);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeEntityResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F544358, &qword_27F541EA8, qword_252E51A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeUserTask();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F544A80, &qword_27F5429C8, &unk_252E47580);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeFilter();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05C34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541C38, &qword_27F541C30, &qword_252E41DE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C30, &qword_252E41DE8);
            v9 = sub_2529FBF08(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_252E34554();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05DC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541380, &qword_27F541378, &qword_252E404A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541378, &qword_252E404A0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E05F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E062A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F541370, &qword_27F541368, &qword_252E40498);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546330, &qword_27F546328, &qword_252E61A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546328, &qword_252E61A90);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E065E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546358, &qword_27F546350, &qword_252E61AA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546350, &qword_252E61AA8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F542128, 0x277D052B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463D8, &qword_27F540A70, &qword_252E3DF98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A70, &qword_252E3DF98);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Entity(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06C34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546320, &qword_27F546318, &qword_252E61A88);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546318, &qword_252E61A88);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DeviceEntity(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06DC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463A0, &qword_27F546398, &qword_252E61AC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546398, &qword_252E61AC0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540170, 0x277CD1760);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E06F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F545A08, &qword_27F545A00, &unk_252E5DBB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A00, &unk_252E5DBB0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463B0, &qword_27F5463A8, &qword_252E61AC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463A8, &qword_252E61AC8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E072A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463C0, &qword_27F5463B8, &qword_252E61AD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463B8, &qword_252E61AD0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546390, &qword_27F546388, &qword_252E61AB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546388, &qword_252E61AB8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F546380, 0x277CD19B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E075E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546378, &qword_27F546370, &qword_252E61AB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546370, &qword_252E61AB0);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F546368, 0x277CD1988);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546400, &qword_27F5463F8, &qword_252E61AF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463F8, &qword_252E61AF0);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MutableHomeEntityResponse();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07914(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546418, &qword_27F546410, &qword_252E61B00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546410, &qword_252E61B00);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07AB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546348, &qword_27F543F78, &qword_252E52860);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F78, &qword_252E52860);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAutomationTappableCommand(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07C44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546428, &qword_27F546420, &qword_252E61B08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546420, &qword_252E61B08);
            v9 = sub_2529FBE00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_252E34D94();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F546360, &qword_27F540030, &qword_252E491C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
            v9 = sub_2529FBE80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HomeAttributeValue();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252E07F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252E378C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_252E378C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_252A00B04(&qword_27F5463D0, &qword_27F5463C8, &qword_252E61AD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463C8, &qword_252E61AD8);
            v9 = sub_2529FBD80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25293F638(0, &qword_27F540898, 0x277CD3CF8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_252E08154(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_252E082D0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *sub_252E0845C(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_252E37874();
  a5(0);
  sub_252E11098(a6, a7, MEMORY[0x277D85378]);
  result = sub_252E373E4();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_252E37904())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_252E08698(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_252E08794(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_252E088B0(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_252E37874();
  sub_25293F638(0, a5, a6);
  sub_252C768DC(a7, a5, a6);
  result = sub_252E373E4();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_252E37904())
      {
        goto LABEL_30;
      }

      sub_25293F638(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_252E08AE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_252E08BE0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
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

void *sub_252E08D9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v25 = -1 << *(a4 + 32);
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

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_252E08F10(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_252E09068(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v28 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 152 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v30[0] = *v18;
      v30[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v30[4] = v18[4];
      v30[5] = v20;
      v30[2] = v22;
      v30[3] = v21;
      v24 = v18[7];
      v23 = v18[8];
      v25 = v18[6];
      v31 = *(v18 + 72);
      v30[7] = v24;
      v30[8] = v23;
      v30[6] = v25;
      memmove(v11, v18, 0x92uLL);
      if (v14 == v10)
      {
        sub_25297DE08(v30, v29);
        goto LABEL_23;
      }

      v11 += 152;
      sub_25297DE08(v30, v29);
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
      v27 = v12 + 1;
    }

    else
    {
      v27 = v13;
    }

    v12 = v27 - 1;
    v10 = result;
LABEL_23:
    v7 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_252E092B4(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v15 = 0;
    v23 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  sub_252E37874();
  a5(0);
  sub_252E11098(a6, a7, protocol conformance descriptor for Entity);
  result = sub_252E373E4();
  v8 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v16 = v35;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = v14;
  v28 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (v8 < 0)
  {
    if (!sub_252E37904())
    {
      goto LABEL_29;
    }

    v28(0);
    swift_dynamicCast();
    result = v30;
    v17 = a3;
    if (!v30)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_29;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v20 = v15;
  if (v16)
  {
LABEL_12:
    v16 &= v16 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_12;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v26 = v15 + 1;
  }

  else
  {
    v26 = v18;
  }

  v15 = v26 - 1;
LABEL_29:
  v14 = v27;
LABEL_31:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_252E094F0(void *result, char *a2, uint64_t a3, uint64_t a4)
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
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 504 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x1F8uLL);
      memmove(v11, v18, 0x1F8uLL);
      if (v14 == v10)
      {
        sub_2529353AC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 504;
      sub_2529353AC(__dst, v22);
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_252E09680(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_252E096E8(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 5);
  v7 = *(a2 + 24);
  v13 = *a1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v9 = *a2;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  return sub_252C5FF90(&v13, &v9) & 1;
}

unint64_t sub_252E09764(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v5 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v36)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v31);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v7;
      v9 = v3;
      sub_252DFA164(&v41, a2, &v40);
      if (v3)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v11 = v40 >> 62;
      if (v40 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_252E378C4();
        v15 = v28 + v12;
        if (__OFADD__(v28, v12))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v6;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v13)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v11)
      {
        v20 = v16;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_45;
        }

        v38 = v6;
        v21 = v16 + 8 * v17 + 32;
        v32 = v16;
        if (v11)
        {
          if (v19 < 1)
          {
            goto LABEL_47;
          }

          sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v23 = sub_2529FBD80(v39, j, v10);
            v25 = *v24;
            (v23)(v39, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          type metadata accessor for HomeAttributeTargetArea();
          swift_arrayInitWithCopy();
        }

        v6 = v38;
        v3 = v9;
        if (v12 >= 1)
        {
          v26 = *(v32 + 16);
          v8 = __OFADD__(v26, v12);
          v27 = v26 + v12;
          if (v8)
          {
            goto LABEL_46;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v12 > 0)
        {
          goto LABEL_44;
        }
      }

      if (v5 == v33)
      {
        return v6;
      }
    }

    if (v5 >= *(v35 + 16))
    {
      goto LABEL_43;
    }

    v7 = *(v34 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

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
LABEL_47:
    __break(1u);
LABEL_48:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252E09AE4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 192);
  result = sub_252CC618C(&unk_2864A4470);
  v4 = result;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v2 + 16))
    {
      if (*(v4 + 16))
      {
        result = sub_252A4509C(*(v2 + 32 + v6));
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * result);

          return v8;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    if (sub_2529A6F1C(65, v1))
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

char *sub_252E09BA8(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!(*(result + 31) | *(result + 34)))
  {
    v31 = *(result + 14);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 18;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v6 = *v4;
        v7 = *(*v4 + 16);
        v8 = *(v5 + 2);
        v9 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_50;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v9 <= *(v5 + 3) >> 1)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 <= v9)
          {
            v10 = v8 + v7;
          }

          else
          {
            v10 = v8;
          }

          result = sub_2529F7A80(result, v10, 1, v5);
          v5 = result;
          if (!*(v6 + 16))
          {
LABEL_4:

            if (v7)
            {
              goto LABEL_52;
            }

            goto LABEL_5;
          }
        }

        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v5 + 2);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_56;
          }

          *(v5 + 2) = v13;
        }

LABEL_5:
        ++v3;
        v4 += 63;
        if (v2 == v3)
        {
          goto LABEL_39;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_39:
    v32 = v31;

    sub_25297A744(v5);
    v24 = sub_252C75848(v31);

    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_46;
    }

    v26 = sub_252DFA3E0(*(v24 + 16), 0);
    v27 = sub_252E082D0(&v32, v26 + 4, v25, v24);
    sub_25291AE30(v32);
    if (v27 == v25)
    {
      return v26;
    }

    __break(1u);
LABEL_42:
    v16 = MEMORY[0x277D84F90];
LABEL_43:
    v32 = v31;

    sub_25297A744(v16);
    v28 = sub_252C75848(v32);

    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_46;
    }

    v26 = sub_252DFA3E0(*(v28 + 16), 0);
    v30 = sub_252E082D0(&v32, v26 + 4, v29, v28);
    sub_25291AE30(v32);
    if (v30 != v29)
    {
      __break(1u);
LABEL_46:

      return MEMORY[0x277D84F90];
    }

    return v26;
  }

  v31 = *(result + 13);
  if (!v2)
  {
    goto LABEL_42;
  }

  v14 = 0;
  v15 = v1 + 17;
  v16 = MEMORY[0x277D84F90];
  while (v14 < v1[2])
  {
    v17 = *v15;
    v18 = *(*v15 + 16);
    v19 = *(v16 + 2);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_51;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v20 <= *(v16 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_2529F7A80(result, v21, 1, v16);
      v16 = result;
      if (*(v17 + 16))
      {
LABEL_34:
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v18)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v22 = *(v16 + 2);
          v12 = __OFADD__(v22, v18);
          v23 = v22 + v18;
          if (v12)
          {
            goto LABEL_57;
          }

          *(v16 + 2) = v23;
        }

        goto LABEL_23;
      }
    }

    if (v18)
    {
      goto LABEL_53;
    }

LABEL_23:
    ++v14;
    v15 += 63;
    if (v2 == v14)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

char *sub_252E09F40(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!(*(result + 31) | *(result + 34)))
  {
    v31 = *(result + 15);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 19;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v6 = *v4;
        v7 = *(*v4 + 16);
        v8 = *(v5 + 2);
        v9 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_50;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v9 <= *(v5 + 3) >> 1)
        {
          if (!*(v6 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 <= v9)
          {
            v10 = v8 + v7;
          }

          else
          {
            v10 = v8;
          }

          result = sub_2529F7A80(result, v10, 1, v5);
          v5 = result;
          if (!*(v6 + 16))
          {
LABEL_4:

            if (v7)
            {
              goto LABEL_52;
            }

            goto LABEL_5;
          }
        }

        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v5 + 2);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_56;
          }

          *(v5 + 2) = v13;
        }

LABEL_5:
        ++v3;
        v4 += 63;
        if (v2 == v3)
        {
          goto LABEL_39;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_39:
    v32 = v31;

    sub_25297A744(v5);
    v24 = sub_252C75848(v31);

    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_46;
    }

    v26 = sub_252DFA3E0(*(v24 + 16), 0);
    v27 = sub_252E082D0(&v32, v26 + 4, v25, v24);
    sub_25291AE30(v32);
    if (v27 == v25)
    {
      return v26;
    }

    __break(1u);
LABEL_42:
    v16 = MEMORY[0x277D84F90];
LABEL_43:
    v32 = v31;

    sub_25297A744(v16);
    v28 = sub_252C75848(v32);

    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_46;
    }

    v26 = sub_252DFA3E0(*(v28 + 16), 0);
    v30 = sub_252E082D0(&v32, v26 + 4, v29, v28);
    sub_25291AE30(v32);
    if (v30 != v29)
    {
      __break(1u);
LABEL_46:

      return MEMORY[0x277D84F90];
    }

    return v26;
  }

  v31 = *(result + 28);
  if (!v2)
  {
    goto LABEL_42;
  }

  v14 = 0;
  v15 = v1 + 32;
  v16 = MEMORY[0x277D84F90];
  while (v14 < v1[2])
  {
    v17 = *v15;
    v18 = *(*v15 + 16);
    v19 = *(v16 + 2);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_51;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v20 <= *(v16 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_2529F7A80(result, v21, 1, v16);
      v16 = result;
      if (*(v17 + 16))
      {
LABEL_34:
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v18)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v22 = *(v16 + 2);
          v12 = __OFADD__(v22, v18);
          v23 = v22 + v18;
          if (v12)
          {
            goto LABEL_57;
          }

          *(v16 + 2) = v23;
        }

        goto LABEL_23;
      }
    }

    if (v18)
    {
      goto LABEL_53;
    }

LABEL_23:
    ++v14;
    v15 += 63;
    if (v2 == v14)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_252E0A2D8(unint64_t a1, unint64_t a2, void *a3)
{
  v95 = sub_252E32E84();
  v6 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  v8 = *(a2 + 16);
  if (!v8 || !a3[2])
  {
    return 0;
  }

  v9 = a3[5];
  v82 = a3[4];
  v83 = v9;
  v102 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_125;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v10)
  {
    v11 = 0;
    v92 = a1 & 0xFFFFFFFFFFFFFF8;
    v93 = a1 & 0xC000000000000001;
    v90 = a1 + 32;
    v91 = (v6 + 8);
    v76 = "Modified user task: ";
    v85 = "tity with accessoryID ";
    v84 = ". Returning .robotVacuumCleaner";
    v81 = "MatterAccessory.swift";
    v80 = "for accessoryID ";
    v79 = "MatterAccessoryManager.swift";
    v78 = "deviceEntity(for:)";
    v87 = (v77 + 40);
    v86 = v8 + 1;
    v89 = a1;
    v88 = v10;
    while (1)
    {
      if (v93)
      {
        v12 = MEMORY[0x2530ADF00](v11, a1);
        v13 = __OFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v11 >= *(v92 + 16))
        {
          goto LABEL_123;
        }

        v13 = __OFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
          goto LABEL_122;
        }
      }

      v97 = v14;
      v96 = v12;
      v15 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v16 = v94;
      sub_252E32E64();

      v17 = sub_252E32E24();
      v99 = v18;
      v19 = (*v91)(v16, v95);
      v20 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v19);
      v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v21 = *&v20[v6];
      v98 = v20;
      v22 = v21 >> 62 ? sub_252E378C4() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v22)
      {
        break;
      }

      v23 = 0;
      a1 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v23, v21);
          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v6 = *(v21 + 8 * v23 + 32);

          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }
        }

        sub_252E36744();

        if (v101)
        {
          if (v100 == v17 && v101 == v99)
          {

            goto LABEL_33;
          }

          v24 = sub_252E37DB4();

          if (v24)
          {
            break;
          }
        }

        ++v23;
        if (v8 == v22)
        {
          goto LABEL_27;
        }
      }

LABEL_33:

      v27 = sub_252BF8258();
      v8 = 0xD00000000000001FLL;
      if (!v27)
      {
        goto LABEL_39;
      }

      if (!*(v27 + 2))
      {

LABEL_39:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544CB8);
        v100 = 0;
        v101 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v76 | 0x8000000000000000);
        MEMORY[0x2530AD570](v17, v99);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v85 | 0x8000000000000000);
        sub_252CC4050(v100, v101, 0xD000000000000075, v84 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_42:

        a1 = v89;
        v30 = v88;
        v11 = v97;
        goto LABEL_43;
      }

      v28 = v27;

      if (!*(v28 + 2))
      {
        goto LABEL_124;
      }

      v29 = *(v28 + 4);

      a1 = v89;
      v30 = v88;
      v11 = v97;
      if (v29 == 46)
      {
LABEL_43:
        v8 = v86;
        v32 = v87;
        while (--v8)
        {
          v33 = v32 + 2;
          v34 = *(v32 - 1);
          v6 = *v32;

          LOBYTE(v34) = sub_25292C010(v34, v6);

          v32 = v33;
          if ((v34 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        sub_252E37A94();
        v6 = *(v102 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v11 == v30)
        {
LABEL_52:
          v35 = v102;
          goto LABEL_54;
        }
      }

      else
      {
LABEL_46:

        if (v11 == v30)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_27:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544EC8);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v81 | 0x8000000000000000);
    v26 = v99;
    MEMORY[0x2530AD570](v17, v99);
    sub_252CC4050(v100, v101, 0xD00000000000007CLL, v80 | 0x8000000000000000, 0xD000000000000012, v79 | 0x8000000000000000, 375);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v25, qword_27F544CB8);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v78 | 0x8000000000000000);
    MEMORY[0x2530AD570](v17, v26);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v85 | 0x8000000000000000);
    sub_252CC4050(v100, v101, 0xD000000000000075, v84 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    goto LABEL_42;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_54:
  v6 = v77;

  sub_252E09764(v35, v6);

  v97 = v35;
  v36 = sub_252B10C8C(v35);
  v37 = v36;
  v8 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    v38 = sub_252E378C4();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
    v99 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  v39 = 0;
  v99 = MEMORY[0x277D84F90];
  do
  {
    v6 = v39;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x2530ADF00](v6, v37);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_119;
        }

        v40 = *(v37 + 8 * v6 + 32);
      }

      a1 = v40;
      v39 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_118;
      }

      v41 = [v40 name];
      if (!v41)
      {
        goto LABEL_59;
      }

      v42 = v41;
      v43 = sub_252E36F34();
      v45 = v44;

      if (v43 == v82 && v45 == v83)
      {
        break;
      }

      v47 = sub_252E37DB4();

      if (v47)
      {
        goto LABEL_73;
      }

LABEL_59:

      ++v6;
      if (v39 == v38)
      {
        goto LABEL_80;
      }
    }

LABEL_73:
    [a1 mapID];
    v49 = v48;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_2529F7D44(0, *(v99 + 2) + 1, 1, v99);
    }

    a1 = *(v99 + 2);
    v50 = *(v99 + 3);
    v6 = a1 + 1;
    if (a1 >= v50 >> 1)
    {
      v99 = sub_2529F7D44((v50 > 1), a1 + 1, 1, v99);
    }

    v51 = v99;
    *(v99 + 2) = v6;
    *&v51[8 * a1 + 32] = v49;
  }

  while (v39 != v38);
LABEL_80:

  v52 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v53 = v97;
  if ((v97 & 0x8000000000000000) != 0 || (v97 & 0x4000000000000000) != 0)
  {
    v6 = v97;
    v8 = sub_252E378C4();
    v53 = v6;
    if (!v8)
    {
      goto LABEL_128;
    }

LABEL_83:
    v54 = 0;
    v95 = v53 + 32;
    v96 = v53 & 0xC000000000000001;
    v98 = v99 + 32;
    while (1)
    {
      if (v96)
      {
        v55 = MEMORY[0x2530ADF00](v54, v53);
        a1 = v55;
        v13 = __OFADD__(v54++, 1);
        if (v13)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v54 >= *(v53 + 16))
        {
          goto LABEL_121;
        }

        a1 = *(v95 + 8 * v54);

        v13 = __OFADD__(v54++, 1);
        if (v13)
        {
          goto LABEL_120;
        }
      }

      v56 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v55);
      v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v57 = *&v56[v6];
      if (v57 >> 62)
      {
        v71 = sub_252E378C4();

        if (!v71)
        {
LABEL_111:
          v62 = v52;
          if (!(v52 >> 62))
          {
            goto LABEL_94;
          }

          goto LABEL_112;
        }
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v58)
        {
          goto LABEL_111;
        }
      }

      v60 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v59);
      v61 = sub_252AC0F68(a1);

      if (v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v52;
      }

      if (!(v62 >> 62))
      {
LABEL_94:
        v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          goto LABEL_95;
        }

        goto LABEL_113;
      }

LABEL_112:
      v63 = sub_252E378C4();
      if (v63)
      {
LABEL_95:
        v64 = 0;
        v6 = v62 + 32;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x2530ADF00](v64, v62);
          }

          else
          {
            if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_117;
            }

            v65 = *(v6 + 8 * v64);
          }

          v66 = v65;
          v13 = __OFADD__(v64++, 1);
          if (v13)
          {
            break;
          }

          [v65 mapID];
          v68 = v98;
          v69 = *(v99 + 2);
          while (v69)
          {
            v70 = *v68++;
            --v69;
            if (v70 == v67)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_84;
            }
          }

          if (v64 == v63)
          {
            goto LABEL_113;
          }
        }

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
        v10 = sub_252E378C4();
        goto LABEL_5;
      }

LABEL_113:

LABEL_84:
      v53 = v97;
      v52 = MEMORY[0x277D84F90];
      if (v54 == v8)
      {
        goto LABEL_128;
      }
    }
  }

  v8 = *(v97 + 16);
  if (v8)
  {
    goto LABEL_83;
  }

LABEL_128:

  result = v102;
  if (v102 < 0 || (v102 & 0x4000000000000000) != 0)
  {
    v73 = v102;
    v74 = sub_252E378C4();
    result = v73;
    if (v74)
    {
      return result;
    }

LABEL_131:

    return 0;
  }

  if (!*(v102 + 16))
  {
    goto LABEL_131;
  }

  return result;
}

unint64_t sub_252E0AF28(unint64_t a1, const void *a2)
{
  v75 = a1;
  v74 = sub_252E32E84();
  v81 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v86, a2, sizeof(v86));
  memcpy(v85, a2, sizeof(v85));
  v4 = sub_252E09BA8(v85);
  memcpy(v85, a2, sizeof(v85));
  v5 = sub_252E09F40(v85);
  if (qword_27F53F4B0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v6 = 0xD00000000000007DLL;
  v7 = sub_252E36AD4();
  v8 = __swift_project_value_buffer(v7, qword_27F544CB8);
  v85[0] = 0;
  v85[1] = 0xE000000000000000;
  sub_252E379F4();
  v83 = v85[0];
  v84 = v85[1];
  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9E940);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x2530AD730](v4, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E9E960);
  v11 = MEMORY[0x2530AD730](v5, v9);
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0x69206D6F72660A29, 0xEF203A746E65746ELL);
  memcpy(v85, v86, sizeof(v85));
  v12 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0x2020202020202020, 0xEF20202020202020);
  v13 = " explicit clean utterance.";
  sub_252CC3D90(v83, v84, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v14 = sub_252E0A2D8(v75, v4, v5);
  if (!v14)
  {
    v61 = 0xD000000000000012;
    v62 = v7;
    v55 = " explicit clean utterance.";
    v22 = *(v4 + 16);
    v72 = v8;
    if (v22)
    {

      v82 = MEMORY[0x277D84F90];
      v23 = v75;
      if (v75 >> 62)
      {
        goto LABEL_78;
      }

      for (i = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v23 = v75)
      {
        v25 = 0;
        v70 = v23 & 0xFFFFFFFFFFFFFF8;
        v71 = v23 & 0xC000000000000001;
        v68 = v23 + 32;
        v69 = (v81 + 8);
        v56 = "Modified user task: ";
        v63 = ". Returning .robotVacuumCleaner";
        v64 = "tity with accessoryID ";
        v59 = "for accessoryID ";
        v60 = "MatterAccessory.swift";
        v57 = "deviceEntity(for:)";
        v58 = "MatterAccessoryManager.swift";
        v65 = (v4 + 40);
        v66 = i;
        v80 = -v22;
        v67 = v4;
        while (1)
        {
          if (v71)
          {
            v81 = MEMORY[0x2530ADF00](v25, v75);
            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v25 >= *(v70 + 16))
            {
              goto LABEL_74;
            }

            v81 = *(v68 + 8 * v25);

            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_73;
            }
          }

          v28 = [*(v81 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
          v29 = v73;
          sub_252E32E64();

          v30 = sub_252E32E24();
          v78 = v31;
          v79 = v30;
          v32 = (*v69)(v29, v74);
          v33 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v32);
          v34 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v35 = *&v33[v34];
          v76 = v33;
          v77 = v27;
          if (v35 >> 62)
          {
            v36 = sub_252E378C4();
          }

          else
          {
            v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v36)
          {
LABEL_32:

            if (qword_27F53F560 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v62, qword_27F544EC8);
            v83 = 0;
            v84 = 0xE000000000000000;
            sub_252E379F4();
            v6 = 0xD00000000000007DLL;
            MEMORY[0x2530AD570](0xD000000000000040, v60 | 0x8000000000000000);
            v38 = v78;
            v39 = v79;
            MEMORY[0x2530AD570](v79, v78);
            sub_252CC4050(v83, v84, 0xD00000000000007CLL, v59 | 0x8000000000000000, v61, v58 | 0x8000000000000000, 375);

            v83 = 0;
            v84 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000027, v57 | 0x8000000000000000);
            MEMORY[0x2530AD570](v39, v38);

            MEMORY[0x2530AD570](0xD00000000000001FLL, v64 | 0x8000000000000000);
            v5 = v84;
            sub_252CC4050(v83, v84, 0xD000000000000075, v63 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
            v4 = v67;
            v25 = v77;
LABEL_43:

LABEL_44:
            v42 = -1;
            v43 = v65;
            while (1)
            {
              if (v80 + v42 == -1)
              {
                sub_252E37A94();
                v5 = *(v82 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_12;
              }

              if (++v42 >= *(v4 + 16))
              {
                break;
              }

              v44 = v43 + 2;
              v45 = *(v43 - 1);
              v5 = *v43;

              LOBYTE(v45) = sub_25292C010(v45, v5);

              v43 = v44;
              if ((v45 & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v5 = 0;
          while (1)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v5, v35);
              v4 = (v5 + 1);
              if (__OFADD__(v5, 1))
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (v5 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v4 = (v5 + 1);
              if (__OFADD__(v5, 1))
              {
                goto LABEL_71;
              }
            }

            sub_252E36744();

            if (v84)
            {
              if (v83 == v79 && v84 == v78)
              {

                goto LABEL_36;
              }

              v37 = sub_252E37DB4();

              if (v37)
              {
                break;
              }
            }

            ++v5;
            if (v4 == v36)
            {
              goto LABEL_32;
            }
          }

LABEL_36:

          v40 = sub_252BF8258();
          v6 = 0xD00000000000007DLL;
          v4 = v67;
          v25 = v77;
          if (!v40)
          {
            goto LABEL_42;
          }

          if (!*(v40 + 2))
          {

LABEL_42:
            v83 = 0;
            v84 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000036, v56 | 0x8000000000000000);
            MEMORY[0x2530AD570](v79, v78);

            MEMORY[0x2530AD570](0xD00000000000001FLL, v64 | 0x8000000000000000);
            v5 = v84;
            sub_252CC4050(v83, v84, 0xD000000000000075, v63 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

            goto LABEL_43;
          }

          v22 = v40;

          if (!*(v22 + 2))
          {
            break;
          }

          v41 = *(v22 + 4);

          if (v41 == 46)
          {
            goto LABEL_44;
          }

LABEL_48:

LABEL_12:
          if (v25 == v66)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_78:
        i = sub_252E378C4();
      }

      v15 = MEMORY[0x277D84F90];
LABEL_80:

      if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
          goto LABEL_83;
        }
      }

      else if (*(v15 + 16))
      {
LABEL_83:
        v17 = v6 - 95;
        v18 = 0x8000000252E9E980;
        v13 = v55;
        goto LABEL_5;
      }

LABEL_86:
      v15 = v75;

      v13 = v55;
      goto LABEL_6;
    }

    if (!*(v5 + 2))
    {

      goto LABEL_86;
    }

    v47 = *(v5 + 4);
    v46 = *(v5 + 5);

    v85[0] = MEMORY[0x277D84F90];
    v48 = v75;
    if (v75 >> 62)
    {
      v52 = sub_252E378C4();
      v48 = v75;
      v5 = v52;
      if (v52)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v5 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_56:
        v49 = 0;
        v50 = v48 & 0xC000000000000001;
        v4 = v48 & 0xFFFFFFFFFFFFFF8;
        v81 = v48 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v50)
          {
            v6 = MEMORY[0x2530ADF00](v49);
            v51 = (v49 + 1);
            if (__OFADD__(v49, 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v49 >= *(v4 + 16))
            {
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            v6 = *(v48 + 8 * v49 + 32);

            v51 = (v49 + 1);
            if (__OFADD__(v49, 1))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              v15 = v82;
              goto LABEL_80;
            }
          }

          if (sub_25292C028(v47, v46))
          {
            sub_252E37A94();
            sub_252E37AC4();
            v4 = v81;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v49;
          v48 = v75;
          if (v51 == v5)
          {
            v15 = v85[0];
            v6 = 0xD00000000000007DLL;
            goto LABEL_89;
          }
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_89:

    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      v53 = sub_252E378C4();
      v13 = v55;
      if (v53)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v13 = v55;
      if (*(v15 + 16))
      {
LABEL_92:
        v16 = "the targeted service areas: ";
        v17 = 0xD00000000000001DLL;
        goto LABEL_4;
      }
    }

    v15 = v75;

    goto LABEL_6;
  }

  v15 = v14;

  v16 = "Found RVC(s) that support map";
  v17 = 0xD000000000000032;
LABEL_4:
  v18 = v16 | 0x8000000000000000;
LABEL_5:
  sub_252CC3D90(v17, v18, 0xD00000000000007DLL, v13 | 0x8000000000000000);
LABEL_6:
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_252E379F4();

  v83 = v6 - 81;
  v84 = 0x8000000252E9E9A0;
  v19 = type metadata accessor for MatterAccessory(0);
  v20 = MEMORY[0x2530AD730](v15, v19);
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(v83, v84, 0xD00000000000007DLL, v13 | 0x8000000000000000);

  return v15;
}

void *sub_252E0BAE8(unint64_t a1, uint64_t a2)
{
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  MEMORY[0x28223BE20](v5);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 368);
  v70 = *(a2 + 168);
  v71 = v8;
  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v10 = 0;
      v72 = a1 & 0xFFFFFFFFFFFFFF8;
      v73 = a1 & 0xC000000000000001;
      v64 = a1 + 32;
      v69 = v9;
      while (v73)
      {
        v12 = MEMORY[0x2530ADF00](v10, a1);
        v11 = v12;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v11 = v2;
LABEL_52:

          v41 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v40);
          v42 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v43 = *&v41[v42];
          if (v43 >> 62)
          {
            v59 = sub_252E378C4();

            if (!v59)
            {
              goto LABEL_55;
            }

LABEL_54:
            v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v45);
            v47 = sub_252AC0884(v11);

            if (!v47)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v44)
            {
              goto LABEL_54;
            }

LABEL_55:
            v47 = sub_252CC479C(MEMORY[0x277D84F90]);
          }

          if (*(v47 + 16))
          {
            v48 = sub_252A488EC();
            if (v49)
            {
              v20 = *(*(v47 + 56) + 8 * v48);

              v74 = MEMORY[0x277D84F90];
              v65 = v11;
              v18 = v20 & 0xFFFFFFFFFFFFFF8;
              if (v20 >> 62)
              {
                goto LABEL_97;
              }

              v2 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:
              v50 = 0;
              a1 = MEMORY[0x277D84F90];
              while (v2 != v50)
              {
                if ((v20 & 0xC000000000000001) != 0)
                {
                  v51 = MEMORY[0x2530ADF00](v50, v20);
                }

                else
                {
                  if (v50 >= *(v18 + 16))
                  {
                    goto LABEL_85;
                  }

                  v51 = *(v20 + 8 * v50 + 32);
                }

                v52 = v51;
                v53 = (v50 + 1);
                if (__OFADD__(v50, 1))
                {
                  goto LABEL_84;
                }

                v54 = [v51 cleaningJob];

                ++v50;
                if (v54)
                {
                  MEMORY[0x2530AD700]();
                  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  a1 = v74;
                  v50 = v53;
                }
              }

              if (a1 >> 62)
              {
                if (sub_252E378C4())
                {
                  goto LABEL_73;
                }
              }

              else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_73:
                if (Array<A>.contains(_:)(&unk_2864A45A0, a1))
                {

                  return &unk_2864A45A0;
                }

                if (Array<A>.contains(_:)(&unk_2864A45D0, a1))
                {

                  return &unk_2864A45D0;
                }

                v56 = Array<A>.contains(_:)(&unk_2864A45F8, a1);

                if (v56)
                {

                  return &unk_2864A45F8;
                }

                goto LABEL_100;
              }
            }
          }

LABEL_100:
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v60 = sub_252E36AD4();
          __swift_project_value_buffer(v60, qword_27F544D90);
          sub_252CC4050(0xD00000000000003ALL, 0x8000000252E9E770, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000034, 0x8000000252E9E830, 231);

          return 0;
        }

LABEL_7:
        v14 = (v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v15 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v75 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v76 = v15;
        MEMORY[0x28223BE20](v12);
        *(&v61 - 2) = &v75;
        v16 = sub_2529ED970(sub_25296A69C, (&v61 - 4), v71);
        if (v16)
        {
          goto LABEL_52;
        }

        v17 = a1;
        v2 = v11;
        v18 = v14[1];
        v75 = *v14;
        v76 = v18;
        MEMORY[0x28223BE20](v16);
        *(&v61 - 2) = &v75;

        v19 = sub_2529ED970(sub_25296A724, (&v61 - 4), v70);

        if (v19)
        {
          goto LABEL_14;
        }

        ++v10;
        if (v13 == v69)
        {
          v20 = 0;
          v2 = (v68 + 8);
          v21 = &off_279711000;
          v22 = &unk_27F542000;
          v61 = (v68 + 8);
          while (1)
          {
            if (v73)
            {
              v23 = MEMORY[0x2530ADF00](v20, a1);
              v24 = __OFADD__(v20++, 1);
              if (v24)
              {
                goto LABEL_94;
              }
            }

            else
            {
              if (v20 >= *(v72 + 16))
              {
                goto LABEL_95;
              }

              v24 = __OFADD__(v20++, 1);
              if (v24)
              {
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                v2 = sub_252E378C4();
                goto LABEL_60;
              }
            }

            v65 = v23;
            v25 = [*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) v21[199]];
            v26 = v66;
            sub_252E32E64();

            v68 = sub_252E32E24();
            v70 = v27;
            v28 = (*v2)(v26, v67);
            a1 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v28);
            v29 = v22[429];
            swift_beginAccess();
            v30 = *(a1 + v29);
            v62 = v20;
            v63 = a1;
            if (v30 >> 62)
            {
              v31 = sub_252E378C4();
            }

            else
            {
              v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v31)
            {
LABEL_46:

              if (qword_27F53F560 != -1)
              {
                swift_once();
              }

              v37 = sub_252E36AD4();
              __swift_project_value_buffer(v37, qword_27F544EC8);
              v75 = 0;
              v76 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
              v38 = v68;
              v39 = v70;
              MEMORY[0x2530AD570](v68, v70);
              sub_252CC4050(v75, v76, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

              v11 = v65;
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v37, qword_27F544CB8);
              v75 = 0;
              v76 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E6B930);
              MEMORY[0x2530AD570](v38, v39);

              MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
              sub_252CC4050(v75, v76, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 96);
              goto LABEL_51;
            }

            v32 = 0;
            v71 = v30 & 0xC000000000000001;
            v20 = v30 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v71)
              {
                v2 = MEMORY[0x2530ADF00](v32, v30);
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_86;
                }
              }

              else
              {
                if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_87;
                }

                v2 = *(v30 + 8 * v32 + 32);

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_86;
                }
              }

              sub_252E36744();

              a1 = v76;
              if (v76)
              {
                if (v75 == v68 && v76 == v70)
                {

                  goto LABEL_35;
                }

                v18 = sub_252E37DB4();

                if (v18)
                {
                  break;
                }
              }

              ++v32;
              if (v33 == v31)
              {
                goto LABEL_46;
              }
            }

LABEL_35:

            v34 = sub_252BF8258();
            v11 = v65;
            if (!v34)
            {
              goto LABEL_80;
            }

            v35 = v34;
            if (!*(v34 + 2))
            {

LABEL_80:
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v57 = sub_252E36AD4();
              __swift_project_value_buffer(v57, qword_27F544CB8);
              v75 = 0;
              v76 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6B760);
              MEMORY[0x2530AD570](v68, v70);

              MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
              sub_252CC4050(v75, v76, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 102);

LABEL_51:

              goto LABEL_52;
            }

            if (!*(v35 + 2))
            {
              goto LABEL_96;
            }

            v36 = *(v35 + 4);

            if (v36 == 46)
            {
              goto LABEL_52;
            }

            v2 = v61;
            v20 = v62;
            a1 = v17;
            v21 = &off_279711000;
            v22 = &unk_27F542000;
            if (v62 == v69)
            {
              goto LABEL_89;
            }
          }
        }
      }

      if (v10 < *(v72 + 16))
      {
        break;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      v9 = sub_252E378C4();
      if (!v9)
      {
        goto LABEL_89;
      }
    }

    v11 = *(a1 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_89:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v58 = sub_252E36AD4();
  __swift_project_value_buffer(v58, qword_27F544D90);
  sub_252CC4050(0xD000000000000053, 0x8000000252E9E870, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000034, 0x8000000252E9E830, 210);
  return 0;
}

uint64_t sub_252E0C6DC(unint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v66 = *a2;
  v67 = v2;
  v3 = a2[3];
  v68 = a2[2];
  v69 = v3;
  v40 = *(a2 + 64);
  v4 = *(a2 + 81);
  v5 = *(a2 + 113);
  v64 = *(a2 + 97);
  v65[0] = v5;
  v6 = *(a2 + 17);
  *(v65 + 15) = *(a2 + 16);
  v62 = *(a2 + 65);
  v63 = v4;
  v7 = *(a2 + 24);
  v61 = *(a2 + 23);
  v8 = *(a2 + 18);
  v9 = *(a2 + 168);
  v59 = *(a2 + 152);
  v60 = v9;
  memcpy(__dst, a2 + 200, sizeof(__dst));
  v43 = v8;
  if (sub_2529A78C8(50, v8) || (, v10 = sub_2529A78C8(50, v6), , v10))
  {
    v11 = 0;
  }

  else
  {

    v12 = sub_2529A78B0(57, v7);

    v11 = !v12;
  }

  result = sub_2529A78C8(51, v43);
  if (result & 1) != 0 || (, v14 = sub_2529A78C8(51, v6), result = , v14) || (, v15 = sub_2529A78B0(58, v7), result = , ((v11 | v15)))
  {
    v16 = &unk_2864A4648;
  }

  else
  {
    v16 = &unk_2864A4620;
  }

  v36 = v16;
  v37 = *(v7 + 16);
  if (v37)
  {
    v17 = 0;
    v38 = v6;
    while (v17 < *(v7 + 16))
    {
      v44 = *(v7 + 32 + v17);
      v42 = sub_2529A78B0(57, v7) || sub_2529A78B0(58, v7) || sub_2529A78C8(51, v43);
      v41 = sub_2529A78B0(56, v7) || sub_2529A78B0(0, v7);
      if (qword_27F53F920 != -1)
      {
        swift_once();
      }

      ++v17;
      v18 = qword_27F575E00;

      v19 = sub_252C76E88();
      v20 = v19;
      v21 = v19 + 56;
      v22 = 1 << *(v19 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v19 + 56);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      do
      {
        if (!v24)
        {
          while (1)
          {
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v27 >= v25)
            {
              v29 = 0;
              goto LABEL_35;
            }

            v24 = *(v21 + 8 * v27);
            ++v26;
            if (v24)
            {
              v26 = v27;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

        v27 = v26;
LABEL_32:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        result = sub_2529A78B0(*(*(v20 + 48) + (v28 | (v27 << 6))), v7);
      }

      while ((result & 1) == 0);
      v29 = 1;
LABEL_35:

      v45[0] = v66;
      v45[1] = v67;
      v45[2] = v68;
      v45[3] = v69;
      v48 = v63;
      v49 = v64;
      *v50 = v65[0];
      v47 = v62;
      v54 = v60;
      v46 = v40;
      *&v50[15] = *(v65 + 15);
      v51 = v38;
      v52 = v43;
      v55 = v61;
      v53 = v59;
      v56 = v7;
      memcpy(v57, __dst, sizeof(v57));
      v30 = sub_252E0BAE8(a1, v45);
      LOBYTE(v45[0]) = v44;
      if (StateSemantic.rawValue.getter() == 0x656D75736572 && v31 == 0xE600000000000000)
      {

LABEL_53:

        return MEMORY[0x277D84F90];
      }

      v32 = sub_252E37DB4();

      if (v32)
      {
        goto LABEL_53;
      }

      if (!v30)
      {
        goto LABEL_41;
      }

      if (v42 || !v41 && (v29 & 1) == 0)
      {

LABEL_41:
        if (*(v18 + 16))
        {
          goto LABEL_42;
        }

        goto LABEL_11;
      }

      v36 = v30;
      if (!*(v18 + 16))
      {
        goto LABEL_11;
      }

LABEL_42:
      result = sub_252A4509C(v44);
      if (v33)
      {
        v34 = *(*(v18 + 56) + 8 * result);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402D0, &qword_252E3C108);
        v35 = swift_allocObject();
        v35[1] = xmmword_252E3C290;
        *(v35 + 4) = v34;
        *&v45[0] = v36;
        goto LABEL_56;
      }

LABEL_11:
      if (v17 == v37)
      {
        goto LABEL_48;
      }
    }

LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_48:
    if (v40 == 4)
    {
      return v36;
    }

    else if (sub_252A0CE08(v40, 2u))
    {
      *&v45[0] = v36;
      v35 = &unk_2864A4670;
LABEL_56:
      sub_25297B164(v35);
      return *&v45[0];
    }

    else
    {
      return v36;
    }
  }

  return result;
}

void *sub_252E0CBE8(unint64_t a1, const void *a2)
{
  v17 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    v2 = a1;
    v3 = a2;
    v4 = sub_252E378C4();
    a2 = v3;
    v5 = v4;
    a1 = v2;
    if (v5 >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    sub_252DA74DC(v16, 14);
    goto LABEL_9;
  }

  v6 = a1;
  memcpy(v16, a2, sizeof(v16));
  v7 = sub_252E0C6DC(v6, v16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      sub_252DA74DC(v16, *(v7 + v9));
      v9 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_9:
  v10 = v17;
  v11 = *(v17 + 16);
  if (!v11)
  {

    return MEMORY[0x277D84F90];
  }

  v12 = sub_252DFA500(*(v17 + 16), 0, &qword_27F5402D0, &qword_252E3C108);
  v13 = sub_252E08794(v16, v12 + 4, v11, v10);
  v14 = *v16;

  result = sub_25291AE30(v14);
  if (v13 == v11)
  {

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252E0CD80(uint64_t a1)
{
  v1 = sub_252CC61DC(&unk_2864A4718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462E8, &qword_252E61A60);
  swift_arrayDestroy();

  v3 = sub_252C75D8C(v2);

  v4 = sub_252C76E88();
  v5 = sub_252DFAC78(v4, v3, sub_252DFE39C, sub_252DFE39C);

  if (sub_252DA0454(57, v5) & 1) != 0 && (sub_252DA0454(58, v5))
  {
    v6 = 59;
LABEL_6:

    goto LABEL_7;
  }

  v6 = 59;
  if (sub_252DA0454(59, v5))
  {
    goto LABEL_6;
  }

  v6 = 57;
  if (sub_252DA0454(57, v5))
  {
    goto LABEL_6;
  }

  v6 = 58;
  v11 = sub_252DA0454(58, v5);

  if ((v11 & 1) == 0)
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D90);
    sub_252CC4050(0xD00000000000003BLL, 0x8000000252E9E8D0, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000022, 0x8000000252E9E910, 254);
    return 0;
  }

LABEL_7:
  if (*(v1 + 16))
  {
    v7 = sub_252A4509C(v6);
    if (v8)
    {
      v9 = *(*(v1 + 56) + 8 * v7);

      return v9;
    }
  }

  return 0;
}

void *sub_252E0CFA4(unint64_t a1, uint64_t a2, void *__src)
{
  v20 = MEMORY[0x277D84FA0];
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_252E378C4() >= 2)
  {
LABEL_3:
    sub_252DA74DC(v19, 14);
  }

LABEL_4:
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      sub_252DA74DC(v19, v8);
      --v6;
    }

    while (v6);
  }

  memcpy(v19, __src, sizeof(v19));
  v9 = sub_252E0C6DC(a1, v19);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      sub_252DA74DC(v19, v12);
      --v10;
    }

    while (v10);
  }

  v13 = v20;
  v14 = *(v20 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = sub_252DFA500(*(v20 + 16), 0, &qword_27F5402D0, &qword_252E3C108);
  v16 = sub_252E08794(v19, v15 + 4, v14, v13);
  v17 = *v19;

  result = sub_25291AE30(v17);
  if (v16 == v14)
  {

    return v15;
  }

  __break(1u);
  return result;
}

void sub_252E0D150(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAttributeTargetArea();
    sub_252E11098(&qword_27F5447E8, type metadata accessor for HomeAttributeTargetArea, MEMORY[0x277D85378]);
    sub_252E373E4();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
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

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        sub_252DF9D70(&v25, a2, a3);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_252E37904())
        {
          break;
        }

        type metadata accessor for HomeAttributeTargetArea();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_25291AE30(v5);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_252E0D364(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = v7;
      sub_252E0D150(a2, v9, a3);

      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 8 * v6 + 32);
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_252E0D464(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 168);
  if (qword_27F53F4B0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v6 = 0xD00000000000007DLL;
  v7 = sub_252E36AD4();
  v8 = __swift_project_value_buffer(v7, qword_27F544CB8);
  v107 = 0;
  v108 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9EF70);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x656D614E70616D0ALL, 0xEB00000000203A73);
  v98 = a2;
  v11 = MEMORY[0x2530AD730](a2, v9);
  MEMORY[0x2530AD570](v11);

  a2 = " explicit clean utterance.";
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v12 = MEMORY[0x277D84F90];
  v101 = v8;
  if (v5[2])
  {
    v100 = a1;
    v13 = v5[4];
    v5 = v5[5];
    type metadata accessor for HomeStore(0);

    v15 = static HomeStore.shared.getter(v14);
    v16 = sub_2529DA2BC();

    v107 = v12;
    if (v16 >> 62)
    {
      v6 = sub_252E378C4();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        v17 = 0;
        a1 = v16 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2530ADF00](v17, v16);
            a2 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              v20 = (v6 - 74);
              v21 = (v6 - 53);
              v22 = 0x8000000252E9F120;
              v23 = a2 | 0x8000000000000000;
              v24 = 396;
LABEL_70:
              sub_252CC4050(v21, v22, 0xD00000000000007DLL, v23, v20, 0x8000000252E9F0E0, v24);
              return MEMORY[0x277D84F90];
            }
          }

          else
          {
            if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_25;
            }

            v18 = *(v16 + 8 * v17 + 32);

            a2 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_20;
            }
          }

          v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v13 && *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v5;
          if (v19 || (sub_252E37DB4() & 1) != 0)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v17;
          if (a2 == v6)
          {
            v25 = v107;
            goto LABEL_28;
          }
        }
      }
    }

    v25 = MEMORY[0x277D84F90];
LABEL_28:

    a1 = v100;
  }

  else
  {
    v26 = type metadata accessor for HomeStore(0);
    v27 = static HomeStore.shared.getter(v26);
    v25 = sub_2529DA2BC();
  }

  sub_252E379F4();

  v107 = 0xD00000000000002DLL;
  v108 = 0x8000000252E9EFB0;
  v102 = type metadata accessor for MatterAccessory(0);
  v28 = MEMORY[0x2530AD730](v25);
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E9EFB0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v105 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_51;
  }

  v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_31:
    v30 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x2530ADF00](v30, v25);
        v31 = v32;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v30 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v31 = *(v25 + 8 * v30 + 32);

        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v29 = sub_252E378C4();
          if (!v29)
          {
            break;
          }

          goto LABEL_31;
        }
      }

      v34 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v32);
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v36 = *&v34[v35];
      if (v36 >> 62)
      {
        v41 = sub_252E378C4();

        if (v41)
        {
LABEL_39:
          v39 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v38);
          v40 = sub_252AC0F68(v31);

          if (!v40)
          {
            v40 = MEMORY[0x277D84F90];
          }

          goto LABEL_47;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v37)
        {
          goto LABEL_39;
        }
      }

      v40 = MEMORY[0x277D84F90];
LABEL_47:
      v42 = Array<A>.contains(_:)(a1, v40);

      if (v42)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v30;
    }

    while (v33 != v29);
  }

  v43 = v105;
  sub_252E379F4();

  v105 = 0xD00000000000002FLL;
  v106 = 0x8000000252E9EFE0;
  v44 = MEMORY[0x2530AD730](v43, v102);
  MEMORY[0x2530AD570](v44);

  v45 = v101;
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9EFE0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if ((v43 & 0x8000000000000000) == 0 && (v43 & 0x4000000000000000) == 0)
  {
    v46 = *(v43 + 16);
    if (v46)
    {
      goto LABEL_55;
    }

LABEL_69:

    v20 = 0xD000000000000033;
    v21 = 0xD000000000000034;
    v22 = 0x8000000252E9F0A0;
    v23 = 0x8000000252E9E7B0;
    v24 = 425;
    goto LABEL_70;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_69;
  }

  v46 = sub_252E378C4();
LABEL_55:
  v47 = v43 & 0xC000000000000001;
  if (v46 == 1)
  {
    if (v47)
    {
      goto LABEL_71;
    }

    v47 = *(v43 + 16);
    if (v47)
    {
LABEL_61:
      v48 = *(v43 + 32);

      goto LABEL_62;
    }

    __break(1u);
  }

  if (!v47)
  {
    if (!*(v43 + 16))
    {
      __break(1u);
LABEL_125:
      v82 = sub_252E378C4();
      goto LABEL_99;
    }

    goto LABEL_61;
  }

LABEL_71:
  v48 = MEMORY[0x2530ADF00](0, v43);
LABEL_62:

  sub_252E379F4();

  v105 = 0xD000000000000015;
  v106 = 0x8000000252E9F010;
  v97 = v48;
  v49 = sub_252D69924();
  MEMORY[0x2530AD570](v49);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E9F010, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v51 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v50);
  v52 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v53 = *&v51[v52];
  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v54)
    {
      goto LABEL_64;
    }

LABEL_73:

    v58 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v60 = sub_252E378C4();

  if (!v60)
  {
    goto LABEL_73;
  }

LABEL_64:
  v56 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v55);
  v57 = sub_252AC0F68(v97);

  if (v57)
  {
    v58 = v57;
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

LABEL_74:
  v59 = Array<A>.filter(_:)(a1, v58);

  if (!*(v98 + 2))
  {
    goto LABEL_130;
  }

  v100 = *(v98 + 4);
  v102 = *(v98 + 5);

  v45 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v61);
  v62 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v63 = *(v45 + v62);
  if (v63 >> 62)
  {
    goto LABEL_121;
  }

  v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v66 = MEMORY[0x277D84F90];
    if (v64)
    {
      v67 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v65);
      v68 = sub_252AC11C8(v97);

      if (v68)
      {
        v66 = v68;
      }
    }

    v99 = v59;
    if (v66 >> 62)
    {
      v45 = sub_252E378C4();
      if (!v45)
      {
LABEL_123:

        v59 = v99;
        goto LABEL_129;
      }
    }

    else
    {
      v45 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_123;
      }
    }

    v69 = 0;
    v59 = v66 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x2530ADF00](v69, v66);
      }

      else
      {
        if (v69 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_118;
        }

        v70 = *(v66 + 8 * v69 + 32);
      }

      v43 = v70;
      v71 = (v69 + 1);
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v72 = [v70 name];
      if (!v72)
      {
        goto LABEL_83;
      }

      v73 = v72;
      v74 = sub_252E36F34();
      v76 = v75;

      if (v74 == v100 && v76 == v102)
      {
        break;
      }

      v78 = sub_252E37DB4();

      if (v78)
      {
        goto LABEL_97;
      }

LABEL_83:

      ++v69;
      if (v71 == v45)
      {
        goto LABEL_123;
      }
    }

LABEL_97:

    v45 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v79);
    v80 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v81 = *(v45 + v80);
    if (v81 >> 62)
    {
      goto LABEL_125;
    }

    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_99:

    v84 = MEMORY[0x277D84F90];
    if (v82)
    {
      v45 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v83);
      v85 = sub_252AC0F68(v97);

      if (v85)
      {
        v86 = v85;
      }

      else
      {
        v86 = v84;
      }
    }

    else
    {
      v86 = MEMORY[0x277D84F90];
    }

    v103 = v84;
    if (v86 >> 62)
    {
      v59 = sub_252E378C4();
      if (!v59)
      {
        goto LABEL_127;
      }

LABEL_106:
      v87 = 0;
      while (1)
      {
        if ((v86 & 0xC000000000000001) != 0)
        {
          v88 = MEMORY[0x2530ADF00](v87, v86);
        }

        else
        {
          if (v87 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_120;
          }

          v88 = *(v86 + 8 * v87 + 32);
        }

        v89 = v88;
        v90 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        [v88 mapID];
        v92 = v91;
        [v43 mapID];
        if (v92 == v93)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          v45 = &v103;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v87;
        if (v90 == v59)
        {
          v59 = v103;
          goto LABEL_128;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      v64 = sub_252E378C4();
      continue;
    }

    break;
  }

  v59 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v59)
  {
    goto LABEL_106;
  }

LABEL_127:
  v59 = MEMORY[0x277D84F90];
LABEL_128:

  v103 = 0;
  v104 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E9F030);
  MEMORY[0x2530AD570](v100, v102);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F050);
  sub_252CC3D90(v103, v104, 0xD00000000000007DLL, 0x8000000252E9E7B0);

LABEL_129:

LABEL_130:
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_252E379F4();

  v103 = 0xD00000000000002BLL;
  v104 = 0x8000000252E9F070;
  v94 = type metadata accessor for HomeAttributeTargetArea();
  v95 = MEMORY[0x2530AD730](v59, v94);
  MEMORY[0x2530AD570](v95);

  sub_252CC3D90(v103, v104, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  return v59;
}

uint64_t sub_252E0E100(unint64_t a1, uint64_t a2, char *a3, const void *a4)
{
  v125 = a3;
  v139 = sub_252E32E84();
  v7 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v151, a4, sizeof(v151));
  v149 = MEMORY[0x277D84F90];
  v123 = a1;
  v140 = a2;
  if (a1 >> 62)
  {
    goto LABEL_79;
  }

  v9 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = 0xD00000000000007DLL;
  if (v9)
  {
    v11 = 0;
    v136 = v123 & 0xFFFFFFFFFFFFFF8;
    v137 = v123 & 0xC000000000000001;
    v134 = v123 + 32;
    v135 = (v7 + 8);
    v124 = "Modified user task: ";
    v130 = ". Returning .robotVacuumCleaner";
    v131 = "tity with accessoryID ";
    v128 = "for accessoryID ";
    v129 = "MatterAccessory.swift";
    v126 = "deviceEntity(for:)";
    v127 = "MatterAccessoryManager.swift";
    v132 = (v140 + 40);
    v133 = v9;
    while (1)
    {
      if (v137)
      {
        v12 = MEMORY[0x2530ADF00](v11, v123);
        v13 = __OFADD__(v11, 1);
        v14 = (v11 + 1);
        if (v13)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v11 >= *(v136 + 16))
        {
          goto LABEL_77;
        }

        v12 = *(v134 + 8 * v11);

        v13 = __OFADD__(v11, 1);
        v14 = (v11 + 1);
        if (v13)
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v9 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v141 = v14;
      v15 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v16 = v138;
      sub_252E32E64();

      v144 = sub_252E32E24();
      v145 = v17;
      v18 = (*v135)(v16, v139);
      v19 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v18);
      v7 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v20 = *&v19[v7];
      v142 = v19;
      v143 = v12;
      if (v20 >> 62)
      {
        v21 = sub_252E378C4();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21)
      {
        v22 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v22, v20);
            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }
          }

          sub_252E36744();

          v7 = v150[1];
          if (v150[1])
          {
            if (v150[0] == v144 && v150[1] == v145)
            {

              goto LABEL_32;
            }

            a2 = sub_252E37DB4();

            if (a2)
            {
              break;
            }
          }

          ++v22;
          if (v23 == v21)
          {
            goto LABEL_26;
          }
        }

LABEL_32:

        v28 = sub_252BF8258();
        v10 = 0xD00000000000007DLL;
        v27 = v133;
        if (v28)
        {
          if (*(v28 + 2))
          {
            v7 = v28;

            if (!*(v7 + 16))
            {
              goto LABEL_78;
            }

            v7 = *(v7 + 32);

            if (v7 != 46)
            {
LABEL_45:

              goto LABEL_6;
            }

            goto LABEL_42;
          }
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v29 = sub_252E36AD4();
        a2 = __swift_project_value_buffer(v29, qword_27F544CB8);
        v150[0] = 0;
        v150[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v124 | 0x8000000000000000);
        MEMORY[0x2530AD570](v144, v145);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v131 | 0x8000000000000000);
        sub_252CC4050(v150[0], v150[1], 0xD000000000000075, v130 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);
      }

      else
      {
LABEL_26:

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544EC8);
        v150[0] = 0;
        v150[1] = 0xE000000000000000;
        sub_252E379F4();
        v10 = 0xD00000000000007DLL;
        MEMORY[0x2530AD570](0xD000000000000040, v129 | 0x8000000000000000);
        v26 = v144;
        v25 = v145;
        MEMORY[0x2530AD570](v144, v145);
        sub_252CC4050(v150[0], v150[1], 0xD00000000000007CLL, v128 | 0x8000000000000000, 0xD000000000000012, v127 | 0x8000000000000000, 375);

        v27 = v133;
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        a2 = __swift_project_value_buffer(v24, qword_27F544CB8);
        v150[0] = 0;
        v150[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, v126 | 0x8000000000000000);
        MEMORY[0x2530AD570](v26, v25);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v131 | 0x8000000000000000);
        sub_252CC4050(v150[0], v150[1], 0xD000000000000075, v130 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
      }

LABEL_42:
      v30 = *(v140 + 16) + 1;
      v31 = v132;
      while (--v30)
      {
        a2 = (v31 + 2);
        v32 = *(v31 - 1);
        v33 = *v31;

        v7 = sub_25292C010(v32, v33);

        v31 = a2;
        if ((v7 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      v7 = &v149;
      sub_252E37AA4();
LABEL_6:
      v11 = v141;
      if (v141 == v27)
      {
        v34 = v149;
        goto LABEL_52;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_52:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  v36 = __swift_project_value_buffer(v35, qword_27F544CB8);
  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  sub_252E379F4();

  v150[0] = 0xD000000000000026;
  v150[1] = 0x8000000252E9ECC0;
  v37 = MEMORY[0x2530AD730](v140, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v37);

  MEMORY[0x2530AD570](2112041, 0xE300000000000000);
  v38 = type metadata accessor for MatterAccessory(0);
  v39 = MEMORY[0x2530AD730](v34, v38);
  MEMORY[0x2530AD570](v39);

  v141 = " explicit clean utterance.";
  v142 = v36;
  sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if (v34 < 0)
  {
    v40 = 1;
  }

  else
  {
    v40 = (v34 >> 62) & 1;
  }

  if (v40 == 1)
  {
    if (!sub_252E378C4())
    {
LABEL_64:
      if (v40)
      {
        if (sub_252E378C4() < 2)
        {
LABEL_66:

          memcpy(v150, v151, 0x1F8uLL);
          v41 = sub_252E0D464(v140, v125, v150);
          v150[0] = 0;
          v150[1] = 0xE000000000000000;
          sub_252E379F4();
          v42 = "t the target area(s) (";
          v43 = 0xD00000000000003ELL;
LABEL_73:
          MEMORY[0x2530AD570](v43, v42 | 0x8000000000000000);
          v56 = type metadata accessor for HomeAttributeTargetArea();
          v57 = MEMORY[0x2530AD730](v41, v56);
          MEMORY[0x2530AD570](v57);

          sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

          return v41;
        }
      }

      else if (*(v34 + 16) < 2)
      {
        goto LABEL_66;
      }

      v44 = v140;
      v45 = *(v140 + 16);
      v41 = MEMORY[0x277D84F90];
      if (v45)
      {
        v144 = v38;
        v145 = v34;
        v150[0] = MEMORY[0x277D84F90];
        sub_252E37AB4();
        v46 = type metadata accessor for HomeAttributeTargetArea();
        v47 = v44 + 40;
        do
        {
          v48 = objc_allocWithZone(v46);

          v49 = sub_252E36F04();
          v50 = [v48 initWithIdentifier:0 displayString:v49];

          v51 = v50;
          v52 = sub_252E36F04();

          [v51 setName_];

          [v51 setAreaID_];
          [v51 setMapID_];

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v47 += 16;
          --v45;
        }

        while (v45);
        v41 = v150[0];
        v38 = v144;
        v34 = v145;
      }

      v150[0] = 0;
      v150[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E9ED30);
      v53 = MEMORY[0x2530AD730](v34, v38);
      v55 = v54;

      MEMORY[0x2530AD570](v53, v55);

      v42 = "pport the area: ";
      v43 = 0xD00000000000001ALL;
      goto LABEL_73;
    }
  }

  else if (!*(v34 + 16))
  {
    goto LABEL_64;
  }

  if ((v34 & 0xC000000000000001) == 0)
  {
    if (!*(v34 + 16))
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    a2 = *(v34 + 32);

    if (v40)
    {
      goto LABEL_62;
    }

LABEL_83:
    if (*(v34 + 16) != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_84;
  }

  a2 = MEMORY[0x2530ADF00](0, v34);
  if (!v40)
  {
    goto LABEL_83;
  }

LABEL_62:
  if (sub_252E378C4() != 1)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_84:

  v40 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v58);
  v38 = &unk_27F542000;
  v59 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v60 = *(v40 + v59);
  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_86;
  }

LABEL_113:
  v61 = sub_252E378C4();
LABEL_86:

  v63 = MEMORY[0x277D84F90];
  if (v61)
  {
    v64 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v62);
    v65 = sub_252AC0F68(a2);

    if (v65)
    {
      v40 = v65;
    }

    else
    {
      v40 = v63;
    }
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v147[0] = v63;
  if (v40 >> 62)
  {
    v145 = v40 & 0xFFFFFFFFFFFFFF8;
    v66 = sub_252E378C4();
    v138 = a2;
    if (v66)
    {
      goto LABEL_93;
    }

LABEL_115:
    v139 = MEMORY[0x277D84F90];
    goto LABEL_116;
  }

  v145 = v40 & 0xFFFFFFFFFFFFFF8;
  v66 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v138 = a2;
  if (!v66)
  {
    goto LABEL_115;
  }

LABEL_93:
  a2 = 0;
  v144 = v40 & 0xC000000000000001;
  v139 = MEMORY[0x277D84F90];
  v143 = v40;
  do
  {
    v67 = a2;
    while (1)
    {
      if (v144)
      {
        v68 = MEMORY[0x2530ADF00](v67, v40);
      }

      else
      {
        if (v67 >= *(v145 + 16))
        {
          goto LABEL_111;
        }

        v68 = *(v40 + 8 * v67 + 32);
      }

      v69 = v68;
      a2 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v70 = [v68 name];
      if (v70)
      {
        break;
      }

LABEL_96:

      ++v67;
      if (a2 == v66)
      {
        v38 = &unk_27F542000;
        goto LABEL_116;
      }
    }

    v71 = v70;
    v72 = sub_252E36F34();
    v38 = v73;

    v150[0] = v72;
    v150[1] = v38;
    MEMORY[0x28223BE20](v74);
    *(&v123 - 2) = v150;

    LOBYTE(v71) = sub_2529ED970(sub_25296A724, (&v123 - 4), v140);
    v75 = swift_bridgeObjectRelease_n();
    if ((v71 & 1) == 0)
    {
      v10 = 0xD00000000000007DLL;
      v40 = v143;
      goto LABEL_96;
    }

    MEMORY[0x2530AD700](v75);
    v10 = 0xD00000000000007DLL;
    if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v139 = v147[0];
    v38 = &unk_27F542000;
    v40 = v143;
  }

  while (a2 != v66);
LABEL_116:

  v76 = sub_252C75DC0(v139);

  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9ED80);
  v77 = type metadata accessor for HomeAttributeTargetArea();
  sub_252E11098(&qword_27F5447E8, type metadata accessor for HomeAttributeTargetArea, MEMORY[0x277D85378]);
  v137 = v77;
  v78 = sub_252E373B4();
  MEMORY[0x2530AD570](v78);

  sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

  v148 = sub_252CC62F8(MEMORY[0x277D84F90]);
  v79 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v148);
  v80 = v38[429];
  swift_beginAccess();
  v81 = *&v79[v80];
  if (v81 >> 62)
  {
    goto LABEL_141;
  }

  v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v84 = MEMORY[0x277D84F90];
    if (v82)
    {
      v85 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v83);
      v86 = sub_252AC11C8(v138);

      if (v86)
      {
        v87 = v86;
      }

      else
      {
        v87 = v84;
      }
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    sub_252E0D364(v87, v76, &v148);

    swift_bridgeObjectRelease_n();
    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_252E379F4();

    v150[0] = v10 - 77;
    v150[1] = 0x8000000252E9EDC0;
    v88 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
    v89 = sub_252E36E54();
    MEMORY[0x2530AD570](v89);

    sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

    v139 = v88;
    v90 = sub_252DF81D0(v88);
    v76 = sub_252DF9B90(v90, sub_252E10AC0, sub_252A00B74);

    v146 = v84;
    if (!(v76 >> 62))
    {
      v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v79)
      {
        break;
      }

      goto LABEL_125;
    }

    v79 = sub_252E378C4();
    if (v79)
    {
LABEL_125:
      v10 = 0;
      v144 = v76 & 0xFFFFFFFFFFFFFF8;
      v145 = v76 & 0xC000000000000001;
      v143 = v79;
      while (1)
      {
        if (v145)
        {
          v91 = MEMORY[0x2530ADF00](v10, v76);
        }

        else
        {
          if (v10 >= *(v144 + 16))
          {
            goto LABEL_140;
          }

          v91 = *(v76 + 8 * v10 + 32);
        }

        v92 = v91;
        v93 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v94 = [v91 name];
        if (v94)
        {
          v95 = v94;
          v96 = sub_252E36F34();
          v98 = v97;
        }

        else
        {
          v96 = 0;
          v98 = 0xE000000000000000;
        }

        v150[0] = v96;
        v150[1] = v98;
        MEMORY[0x28223BE20](v94);
        *(&v123 - 2) = v150;
        v99 = sub_2529ED970(sub_25296A724, (&v123 - 4), v125);

        if (v99)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v79 = v143;
        ++v10;
        if (v93 == v143)
        {
          v100 = v146;
          v10 = 0xD00000000000007DLL;
          goto LABEL_144;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      v82 = sub_252E378C4();
      continue;
    }

    break;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_144:

  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  sub_252E379F4();

  v150[0] = v10 - 81;
  v150[1] = 0x8000000252E9EE00;
  v101 = type metadata accessor for HomeAttributeTargetMap();
  v102 = MEMORY[0x2530AD730](v100, v101);
  MEMORY[0x2530AD570](v102);

  sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

  if (v100 < 0 || (v100 & 0x4000000000000000) != 0)
  {
    if (sub_252E378C4() != 1)
    {
      goto LABEL_155;
    }

    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_155;
    }

LABEL_147:
    if ((v100 & 0xC000000000000001) != 0)
    {
      v104 = MEMORY[0x2530ADF00](0, v100);
    }

    else
    {
      if (!*(v100 + 16))
      {
        __break(1u);
        return result;
      }

      v104 = *(v100 + 32);
    }

    v105 = v104;

    v106 = [v105 name];
    if (!v106)
    {

      goto LABEL_156;
    }

    v107 = v106;
    v108 = sub_252E36F34();
    v110 = v109;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_252E3C290;
    *(v111 + 32) = v108;
    *(v111 + 40) = v110;
    memcpy(v150, v151, 0x1F8uLL);
    v41 = sub_252E0D464(v140, v111, v150);

    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v10 - 63, 0x8000000252E9EF30);
    v112 = MEMORY[0x2530AD730](v41, v137);
    MEMORY[0x2530AD570](v112);

    sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

    goto LABEL_163;
  }

  if (*(v100 + 16) == 1)
  {
    goto LABEL_147;
  }

LABEL_155:

LABEL_156:
  v113 = v139;
  v114 = sub_252DF8544(v139);
  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v10 - 43, 0x8000000252E9EE30);
  v115 = MEMORY[0x2530AD730](v114, v137);
  MEMORY[0x2530AD570](v115);

  sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

  v116 = *(v113 + 16);
  if (v114 >> 62)
  {
    v117 = sub_252E378C4();
    if (!v116)
    {
      goto LABEL_161;
    }

LABEL_158:
    if (v116 >= v117)
    {
      goto LABEL_161;
    }

    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v10 - 102, 0x8000000252E9EEF0);
    v146 = v117;
    v118 = sub_252E37D94();
    MEMORY[0x2530AD570](v118);

    MEMORY[0x2530AD570](0x70616D20726F6620, 0xEB00000000282073);
    v146 = v116;
    v119 = sub_252E37D94();
    MEMORY[0x2530AD570](v119);

    MEMORY[0x2530AD570](v10 - 99, 0x8000000252E9EF10);
    sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);

    v41 = sub_252DF9B90(v114, sub_252E10A90, sub_252A00B74);
  }

  else
  {
    v117 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v116)
    {
      goto LABEL_158;
    }

LABEL_161:

    memcpy(v150, v151, 0x1F8uLL);
    v41 = sub_252E0D464(v140, v125, v150);
    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6120746567726174, 0xEE00282073616572);
    v146 = v117;
    v120 = sub_252E37D94();
    MEMORY[0x2530AD570](v120);

    MEMORY[0x2530AD570](v10 - 88, 0x8000000252E9EE90);
    v146 = v116;
    v121 = sub_252E37D94();
    MEMORY[0x2530AD570](v121);

    MEMORY[0x2530AD570](v10 - 86, 0x8000000252E9EEC0);
    v122 = MEMORY[0x2530AD730](v41, v137);
    MEMORY[0x2530AD570](v122);

    sub_252CC3D90(v150[0], v150[1], 0xD00000000000007DLL, v141 | 0x8000000000000000);
  }

LABEL_163:

  return v41;
}

id sub_252E0F8A8(unint64_t a1)
{
  if (qword_27F53F4B0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v68 = sub_252E36AD4();
    __swift_project_value_buffer(v68, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9EB60);
    v2 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v2);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

    v67 = a1;
    v73 = *(a1 + 16);
    if (!v73)
    {
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v68, qword_27F544D90);
      v47 = 0x8000000252E9EC80;
      v48 = 550;
LABEL_82:
      sub_252CC4050(0xD000000000000033, v47, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000028, 0x8000000252E9EC10, v48);
      return 0;
    }

    v3 = type metadata accessor for HomeStore(0);
    v4 = static HomeStore.shared.getter(v3);
    v5 = sub_2529DA2BC();

    v75 = MEMORY[0x277D84F90];
    v66 = v5;
    if (v5 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (!v6)
    {
      v46 = MEMORY[0x277D84F90];
      goto LABEL_57;
    }

    a1 = 0;
    v71 = v5 & 0xFFFFFFFFFFFFFF8;
    v72 = v5 & 0xC000000000000001;
    v69 = v6;
    v70 = v5 + 32;
LABEL_7:
    if (v72)
    {
      v9 = MEMORY[0x2530ADF00](a1, v66);
      v8 = v9;
      v10 = __OFADD__(a1++, 1);
      if (v10)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (a1 >= *(v71 + 16))
      {
        goto LABEL_74;
      }

      v8 = *(v70 + 8 * a1);

      v10 = __OFADD__(a1++, 1);
      if (v10)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }
    }

    v11 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v9);
    v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v13 = *&v11[v12];
    if (v13 >> 62)
    {
      v31 = sub_252E378C4();

      if (!v31)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v15);
    v17 = sub_252AC11C8(v8);

    if (v17)
    {
      v7 = v17;
    }

LABEL_14:
    if (v7 >> 62)
    {
      v18 = sub_252E378C4();
      v74 = a1;
      if (!v18)
      {
LABEL_34:

        v20 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }

    else
    {
      v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v74 = a1;
      if (!v18)
      {
        goto LABEL_34;
      }
    }

    v76 = MEMORY[0x277D84F90];
    sub_2529AA380(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v19 = 0;
  v20 = v76;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x2530ADF00](v19, v7);
    }

    else
    {
      v21 = *(v7 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 name];
    if (v23)
    {
      v24 = v23;
      v25 = sub_252E36F34();
      v27 = v26;
    }

    else
    {

      v25 = 0;
      v27 = 0;
    }

    v29 = *(v76 + 16);
    v28 = *(v76 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_2529AA380((v28 > 1), v29 + 1, 1);
    }

    ++v19;
    *(v76 + 16) = v29 + 1;
    v30 = v76 + 16 * v29;
    *(v30 + 32) = v25;
    *(v30 + 40) = v27;
  }

  while (v18 != v19);

LABEL_35:
  v32 = sub_252C75A1C(v20);

  v33 = 0;
  a1 = v32 + 56;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (!*(v32 + 16))
    {
      break;
    }

    v35 = (v67 + 32 + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    sub_252E37EC4();
    sub_252E37EE4();
    swift_bridgeObjectRetain_n();
    sub_252E37044();
    v38 = sub_252E37F14();
    v39 = -1 << *(v32 + 32);
    v40 = v38 & ~v39;
    if (((*(a1 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_49:
      swift_bridgeObjectRelease_n();
      break;
    }

    ++v33;
    v41 = ~v39;
    v42 = *(v32 + 48);
    while (1)
    {
      v43 = (v42 + 16 * v40);
      v44 = v43[1];
      if (v44)
      {
        v45 = *v43 == v37 && v44 == v36;
        if (v45 || (sub_252E37DB4() & 1) != 0)
        {
          break;
        }
      }

      v40 = (v40 + 1) & v41;
      if (((*(a1 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    swift_bridgeObjectRelease_n();
    if (v34 == v73)
    {

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      goto LABEL_51;
    }
  }

LABEL_51:
  a1 = v74;
  v7 = MEMORY[0x277D84F90];
  if (v74 != v69)
  {
    goto LABEL_7;
  }

  v46 = v75;
LABEL_57:

  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
    result = *(v46 + 16);
    if (result)
    {
      goto LABEL_60;
    }

LABEL_80:

    if (qword_27F53F4F8 == -1)
    {
LABEL_81:
      __swift_project_value_buffer(v68, qword_27F544D90);
      v47 = 0x8000000252E9EC40;
      v48 = 569;
      goto LABEL_82;
    }

LABEL_104:
    swift_once();
    goto LABEL_81;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_80;
  }

  result = sub_252E378C4();
LABEL_60:
  v50 = v46 & 0xC000000000000001;
  if (result != 1)
  {
LABEL_64:
    if (!v50)
    {
      if (*(v46 + 16))
      {
        goto LABEL_66;
      }

      __break(1u);
      return result;
    }

LABEL_84:
    v51 = MEMORY[0x2530ADF00](0, v46);
    goto LABEL_67;
  }

  if (v50)
  {
    goto LABEL_84;
  }

  v50 = *(v46 + 16);
  if (!v50)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_66:
  v51 = *(v46 + 32);

LABEL_67:

  sub_252E379F4();

  v52 = sub_252D69924();
  MEMORY[0x2530AD570](v52);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9EBA0, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  v54 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v53);
  v55 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v56 = *&v54[v55];
  if (v56 >> 62)
  {
    v61 = sub_252E378C4();

    if (v61)
    {
      goto LABEL_69;
    }

    goto LABEL_86;
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v57)
  {
LABEL_86:

    v60 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

LABEL_69:
  v59 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v58);
  v60 = sub_252AC11C8(v51);

  if (!v60)
  {
    v60 = v7;
  }

LABEL_87:
  v62 = Array<A>.filter(_:)(v67, v60);

  if (v62 >> 62)
  {
    if (sub_252E378C4() >= 2)
    {
LABEL_89:
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v68, qword_27F544D90);
      sub_252E379F4();
      MEMORY[0x2530AD570](0x656C7069746C754DLL, 0xEA00000000002820);
      v63 = sub_252E37D94();
      MEMORY[0x2530AD570](v63);

      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9EBD0);
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000028, 0x8000000252E9EC10, 577);
    }
  }

  else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_89;
  }

  if (!(v62 >> 62))
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_94;
    }

LABEL_99:

    return 0;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_99;
  }

LABEL_94:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x2530ADF00](0, v62);
  }

  else
  {
    if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_104;
    }

    v64 = *(v62 + 32);
  }

  v65 = v64;

  return v65;
}

id sub_252E10290(unint64_t a1, void *a2)
{
  if (!a2[2])
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E9EB40, 0xD00000000000007DLL, 0x8000000252E9E7B0);
    return 0;
  }

  v2 = a1;
  v3 = a2[4];
  v4 = a2[5];
  v51 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v50 = v3;
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v8 = v51;
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v5 = sub_252E378C4();
          goto LABEL_4;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      if (sub_25292C028(v3, v4))
      {
        sub_252E37A94();
        sub_252E37AC4();
        v3 = v50;
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      if (v7 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544CB8);
  sub_252E379F4();

  v51 = 0xD000000000000022;
  MEMORY[0x2530AD570](v3, v4);
  MEMORY[0x2530AD570](2112041, 0xE300000000000000);
  v12 = type metadata accessor for MatterAccessory(0);
  v13 = MEMORY[0x2530AD730](v8, v12);
  MEMORY[0x2530AD570](v13);

  v2 = 0x8000000252E9EA30;
  sub_252CC3D90(0xD000000000000022, 0x8000000252E9EA30, 0xD00000000000007DLL, 0x8000000252E9E7B0);

  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    v15 = *(v8 + 16);
    if (v15 == 1)
    {
      goto LABEL_26;
    }

LABEL_63:

    if (v15 >= 2)
    {
      sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E9EAA0, 0xD00000000000007DLL, 0x8000000252E9E7B0);
      v37 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v38 = sub_252E36F04();
      v39 = [v37 initWithIdentifier:0 displayString:v38];

      v10 = v39;
      v40 = sub_252E36F04();

      [v10 setName_];

      [v10 setMapID_];
      return v10;
    }

LABEL_75:

    v10 = sub_252E0F8A8(a2);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E9EA60);
    v47 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A20, &unk_252E5DE50);
    v48 = sub_252E36F94();
    MEMORY[0x2530AD570](v48);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007DLL, 0x8000000252E9E7B0);

    return v10;
  }

  v15 = sub_252E378C4();
  if (v15 != 1)
  {
    goto LABEL_63;
  }

  result = sub_252E378C4();
  if (!result)
  {
LABEL_74:

    goto LABEL_75;
  }

LABEL_26:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2530ADF00](0, v8);
LABEL_29:

    v18 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v17);
    v19 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (v20 >> 62)
    {
      v21 = sub_252E378C4();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D84F90];
    if (v21)
    {
      v24 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v22);
      v2 = sub_252AC11C8(v16);

      if (v2)
      {
        v25 = v2;
      }

      else
      {
        v25 = v23;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v52 = v23;
    if (v25 >> 62)
    {
      v26 = sub_252E378C4();
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_38:
        v3 = 0;
        v27 = v4;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2530ADF00](v3, v25);
          }

          else
          {
            if (v3 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v28 = *(v25 + 8 * v3 + 32);
          }

          v4 = v28;
          v29 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_57;
          }

          v30 = [v28 name];
          if (v30)
          {
            v31 = v30;
            v32 = sub_252E36F34();
            v34 = v33;

            if (v32 == v50 && v34 == v27)
            {

LABEL_53:
              sub_252E37A94();
              v2 = *(v52 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_40;
            }

            v2 = sub_252E37DB4();

            if (v2)
            {
              goto LABEL_53;
            }
          }

LABEL_40:
          ++v3;
          if (v29 == v26)
          {
            v36 = v52;
            goto LABEL_69;
          }
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_69:

    v41 = sub_252C75E08(v36);

    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = sub_252E378C4();
    }

    else
    {
      v42 = *(v41 + 2);
    }

    if (v42 >= 2)
    {
      sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E9EAF0, 0xD00000000000007DLL, 0x8000000252E9E7B0);
      v43 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v44 = sub_252E36F04();
      v45 = [v43 initWithIdentifier:0 displayString:v44];

      v10 = v45;
      v46 = sub_252E36F04();

      [v10 setName_];

      [v10 setMapID_];

      return v10;
    }

    goto LABEL_74;
  }

  if (*(v8 + 16))
  {
    v16 = *(v8 + 32);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_252E10C30(__int128 *a1)
{
  v1 = a1[9];
  v38 = a1[8];
  v39 = v1;
  v2 = a1[11];
  v40 = a1[10];
  v41 = v2;
  v3 = a1[5];
  v34 = a1[4];
  v35 = v3;
  v4 = a1[7];
  v36 = a1[6];
  v37 = v4;
  v5 = a1[1];
  v30 = *a1;
  v31 = v5;
  v6 = a1[3];
  v32 = a1[2];
  v33 = v6;
  memcpy(__dst, a1 + 200, sizeof(__dst));

  v8 = sub_252C75D8C(v7);

  v9 = sub_252C75D8C(&unk_2864A9268);
  if (qword_27F53F920 != -1)
  {
    swift_once();
  }

  v10 = sub_252C76E88();

  v11 = sub_252DFAC78(v9, v8, sub_252DFE39C, sub_252DFE39C);
  v12 = sub_252A11F64(v10, v8);
  v13 = *(v8 + 16);
  v14 = v11[2];

  if (!v14)
  {
    if ((v13 != 1) | v12 & 1)
    {
      goto LABEL_9;
    }

LABEL_13:

    v17 = 1;
    return v17 & 1;
  }

  if (v13 == 1)
  {
    goto LABEL_13;
  }

  if (v14 != 1)
  {
LABEL_9:

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D90);
    sub_252E379F4();

    *&v28 = 0xD00000000000002DLL;
    *(&v28 + 1) = 0x8000000252E9F170;
    memcpy(v27, __dst, sizeof(v27));
    v19 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v19);

    v21 = *(&v28 + 1);
    v20 = v28;
    v22 = 69;
    goto LABEL_12;
  }

  v15 = sub_2529F261C(v10, v9);
  v16 = sub_252938DFC(v15, v8);

  if ((v16 & 1) == 0)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544D90);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v28 = v26;
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E9F1D0);
    memcpy(v27, __dst, sizeof(v27));
    v25 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v25);

    v21 = *(&v28 + 1);
    v20 = v28;
    v22 = 76;
LABEL_12:
    sub_252CC4050(v20, v21, 0xD00000000000007DLL, 0x8000000252E9E7B0, 0xD000000000000024, 0x8000000252E9F1A0, v22);

    v17 = 0;
    return v17 & 1;
  }

  v17 = v12 ^ 1;
  return v17 & 1;
}

uint64_t sub_252E11098(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_252E1119C(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v2, sizeof(v4));
  return _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_252E11264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v14[8] = *(a1 + 128);
  v15 = *(a1 + 144);
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(v2 + 112);
  v12[6] = *(v2 + 96);
  v12[7] = v7;
  v12[8] = *(v2 + 128);
  v13 = *(v2 + 144);
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v9 = *(v2 + 80);
  v12[4] = *(v2 + 64);
  v12[5] = v9;
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  return sub_252A39200(v14, v12) & 1;
}

char *sub_252E1139C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v51 = v1;
  if (v1)
  {
    v2 = 0;
    v48 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v52 = v3;
      memcpy(__dst, (v48 + 504 * v2), sizeof(__dst));
      v50 = v2 + 1;
      v4 = __dst[4];
      v5 = *(__dst[4] + 16);
      sub_2529353AC(__dst, v55);
      v6 = (v4 + 32);
      v7 = (v4 + 32);
      while (1)
      {
        if (!v5)
        {
          v10 = *(v4 + 16);
          while (v10)
          {
            v12 = *v6;
            if (v12 > 2 && v12 != 4)
            {
              goto LABEL_23;
            }

            v11 = sub_252E37DB4();

            ++v6;
            --v10;
            if (v11)
            {
              goto LABEL_24;
            }
          }

          v13 = *(__dst[11] + 16);
          v14 = (__dst[11] + 32);
          while (2)
          {
            if (v13)
            {
              switch(*v14)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v15 = sub_252E37DB4();

                  ++v14;
                  --v13;
                  if ((v15 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_24;
                default:
                  goto LABEL_23;
              }
            }

            break;
          }

LABEL_3:
          sub_252935408(__dst);
          v1 = v51;
          v3 = v52;
          v2 = v50;
          goto LABEL_4;
        }

        v9 = *v7;
        if (v9 > 1 && v9 != 3 && v9 != 4)
        {
          break;
        }

        v8 = sub_252E37DB4();

        ++v7;
        --v5;
        if (v8)
        {
          goto LABEL_24;
        }
      }

LABEL_23:

LABEL_24:
      memcpy(v55, __dst, sizeof(v55));
      if (sub_252A13FE0())
      {
        goto LABEL_3;
      }

      memcpy(v54, __dst, sizeof(v54));
      v1 = v51;
      v3 = v52;
      v2 = v50;
      if (sub_252A13BEC() & 1) != 0 || (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4()) || *(__dst[21] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A13FE0() & 1) == 0) || *(__dst[19] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A13BEC() & 1) == 0) || *(__dst[20] + 16) && (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4() & 1) == 0))
      {
        sub_252935408(__dst);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v52 + 16) + 1, 1);
          v3 = v57;
        }

        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2529AA480((v17 > 1), v18 + 1, 1);
          v3 = v57;
        }

        *(v3 + 16) = v18 + 1;
        memcpy((v3 + 504 * v18 + 32), __dst, 0x1F8uLL);
      }

LABEL_4:
      if (v2 == v1)
      {
        goto LABEL_40;
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_40:
  v53 = v3;
  if (v1)
  {
    v19 = 0;
    v49 = MEMORY[0x277D84F90];
    while (v19 < v1)
    {
      memcpy(__dst, (a1 + 32 + 504 * v19), sizeof(__dst));
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_95;
      }

      v21 = __dst[4];
      v22 = *(__dst[4] + 16);
      sub_2529353AC(__dst, v55);
      v23 = (v21 + 32);
      v24 = (v21 + 32);
      while (1)
      {
        if (!v22)
        {
          v27 = *(v21 + 16);
          while (v27)
          {
            v29 = *v23;
            if (v29 > 2 && v29 != 4)
            {
              goto LABEL_66;
            }

            v28 = sub_252E37DB4();

            ++v23;
            --v27;
            if (v28)
            {
              goto LABEL_67;
            }
          }

          v30 = *(__dst[11] + 16);
          v31 = (__dst[11] + 32);
          while (2)
          {
            if (v30)
            {
              switch(*v31)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v32 = sub_252E37DB4();

                  ++v31;
                  --v30;
                  if ((v32 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_67;
                default:
                  goto LABEL_66;
              }
            }

            break;
          }

          sub_252935408(__dst);
          v1 = v51;
          goto LABEL_43;
        }

        v26 = *v24;
        if (v26 > 1 && v26 != 3 && v26 != 4)
        {
          break;
        }

        v25 = sub_252E37DB4();

        ++v24;
        --v22;
        if (v25)
        {
          goto LABEL_67;
        }
      }

LABEL_66:

LABEL_67:
      memcpy(v55, __dst, sizeof(v55));
      if (sub_252A13FE0())
      {
        v1 = v51;
      }

      else
      {
        memcpy(v54, __dst, sizeof(v54));
        v1 = v51;
        if ((sub_252A13BEC() & 1) == 0)
        {
          memcpy(v55, __dst, sizeof(v55));
          if ((sub_252A143D4() & 1) == 0)
          {
            if (!*(__dst[21] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A13FE0() & 1) != 0))
            {
              if (!*(__dst[19] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A13BEC() & 1) != 0))
              {
                if (!*(__dst[20] + 16) || (memcpy(v55, __dst, sizeof(v55)), (sub_252A143D4() & 1) != 0))
                {
                  sub_252935408(__dst);
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v49;
      v57 = v49;
      if ((v33 & 1) == 0)
      {
        sub_2529AA480(0, *(v49 + 16) + 1, 1);
        v34 = v57;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2529AA480((v35 > 1), v36 + 1, 1);
        v34 = v57;
      }

      *(v34 + 16) = v36 + 1;
      v49 = v34;
      memcpy((v34 + 504 * v36 + 32), __dst, 0x1F8uLL);
LABEL_43:
      if (v19 == v1)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_84:
  v37 = *(v53 + 16);

  if (v37)
  {

    v39 = sub_252C76D88(v38);

    v40 = sub_252C76D88(v49);

    if (*(v40 + 16) <= *(v39 + 16) >> 3)
    {
      __dst[0] = v39;
      sub_2529AAC78(v40);

      v41 = __dst[0];
      v42 = *(__dst[0] + 16);
      if (v42)
      {
LABEL_87:
        v43 = sub_252DFA57C(v42, 0);
        v44 = sub_252E094F0(__dst, v43 + 32, v42, v41);
        sub_25291AE30(__dst[0]);
        if (v44 == v42)
        {
          return v43;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v41 = sub_2529AC7A8(v40);

      v42 = *(v41 + 16);
      if (v42)
      {
        goto LABEL_87;
      }
    }

    return MEMORY[0x277D84F90];
  }

  if (qword_27F53F520 != -1)
  {
LABEL_97:
    swift_once();
  }

  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544E08);
  sub_252CC3D90(0xD000000000000058, 0x8000000252E9F210, 0xD0000000000000A7, 0x8000000252E9F270);
  return MEMORY[0x277D84F90];
}

uint64_t sub_252E120A4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x277D84F90];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, *(v25 + 16) + 1, 1);
          v25 = v42;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_252E1238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546450, &qword_252E61BB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_252E35EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25293847C(a1, &qword_27F546450, &qword_252E61BB0);
    sub_252E16C28(a2, a3, v9);

    return sub_25293847C(v9, &qword_27F546450, &qword_252E61BB0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2529FB0B4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_252E12564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2529FB94C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_252A44A10(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_252E047F0();
        v14 = v16;
      }

      result = sub_252AEF114(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_252E1265C(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_252E35ED4();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546458, &qword_252E61BB8);
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_252E35EA4();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E127B4, 0, 0);
}

uint64_t sub_252E127B4()
{
  v1 = *(v0 + 72);
  v2 = sub_252E36F04();
  [v1 _setLaunchId_];

  v3 = sub_252E36F04();
  [v1 setDomain_];

  v4 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v1 response:0];
  [v4 _setDonatedBySiri_];
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D30);
  sub_252E379F4();

  v6 = [v4 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E9F750, 0xD000000000000072, 0x8000000252E9F3C0);

  swift_allocBox();
  v11 = v10;
  sub_252E374A4();
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  sub_252E12EF8(*(v0 + 72), *(v0 + 144), v14);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_25293847C(*(v0 + 112), &qword_27F546458, &qword_252E61BB8);
  }

  else
  {
    v15 = *(v0 + 128);
    v27 = *(v0 + 136);
    v28 = *(v0 + 120);
    v16 = *(v0 + 80);
    (*(v15 + 32))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546460, &unk_252E61BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    v18 = *(v16 + 48);
    v19 = *(v16 + 56);
    *(inited + 32) = v18;
    *(inited + 40) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D8, &qword_252E3C000);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    (*(v15 + 16))(v21 + v20, v27, v28);
    *(inited + 48) = v21;

    sub_252CC6E20(inited);
    swift_setDeallocating();
    sub_25293847C(inited + 32, &qword_27F546468, &unk_252E61BD0);
    sub_252E35EC4();
    (*(v15 + 8))(v27, v28);
  }

  v22 = *(v0 + 104);
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  (*(v24 + 16))(v22, v11, v23);

  sub_252E35EB4();

  (*(v24 + 8))(v22, v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252E12C0C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_252E35ED4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  if (a2)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D30);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9F770);
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v15, v16, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000028, 0x8000000252E9F790, 96);
  }

  else
  {
    v11 = v9;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D30);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_252E379F4();
    v17 = v15;
    v18 = v16;
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F7C0);
    swift_beginAccess();
    (*(v6 + 16))(v8, v11, v5);
    sub_252E37AE4();
    (*(v6 + 8))(v8, v5);
    sub_252CC3D90(v17, v18, 0xD000000000000072, 0x8000000252E9F3C0);
  }
}

uint64_t sub_252E12EF8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v5 = sub_252E35EF4();
  v72 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v76 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546450, &qword_252E61BB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_252E32E84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252E35EA4();
  v68 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v67 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 userTask];
  v24 = [a1 filters];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for HomeFilter();
    v71 = sub_252E37264();

    if (v23)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v71 = 0;
    if (v23)
    {
      goto LABEL_9;
    }
  }

  if (!v71)
  {
    v26 = *(v68 + 56);

    return v26(a3, 1, 1, v21);
  }

LABEL_9:
  v61 = v21;
  v64 = a3;
  v28 = v67;
  sub_252E35E94();

  sub_252E35E64();
  sub_252E32E74();
  sub_252E32E24();
  (*(v18 + 8))(v20, v17);
  sub_252E35E54();
  v69 = v5;
  v63 = v23;
  if (v23)
  {
    v29 = v63;
    [v29 taskType];
    sub_252E37404();
    v30 = *(v72 + 56);
    v30(v16, 0, 1, v5);
    v31 = sub_252E35E74();
    sub_252E1238C(v16, 0x657079546B736174, 0xE800000000000000);
    v31(v77, 0);
    [v29 attribute];
    sub_252E37404();
    v30(v16, 0, 1, v5);
    v32 = sub_252E35E74();
    sub_252E1238C(v16, 0x7475626972747461, 0xE900000000000065);
    v32(v77, 0);
    v33 = [v29 value];
    if (v33)
    {
      v75 = v33;
      v34 = [v33 description];
      sub_252E36F34();

      sub_252E36FF4();
      v28 = v67;

      v30(v16, 0, 1, v5);
      v35 = sub_252E35E74();
      sub_252E1238C(v16, 0x65756C6176, 0xE500000000000000);
      v35(v77, 0);

      v29 = v75;
    }

    v5 = v69;
  }

  v62 = v16;
  v36 = v64;
  v37 = v71;
  if (v71)
  {
    v38 = v71 & 0xFFFFFFFFFFFFFF8;
    if (v71 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v40 = 0;
      v75 = v37 & 0xC000000000000001;
      v41 = (v72 + 48);
      v42 = (v72 + 32);
      v43 = MEMORY[0x277D84F90];
      v73 = i;
      v74 = v38;
      while (1)
      {
        if (v75)
        {
          v45 = MEMORY[0x2530ADF00](v40, v37);
        }

        else
        {
          if (v40 >= *(v38 + 16))
          {
            goto LABEL_31;
          }

          v45 = *(v37 + 8 * v40 + 32);
        }

        v46 = v45;
        v38 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v77[0] = v45;
        sub_252E138E8(v77, v14);

        if ((*v41)(v14, 1, v5) == 1)
        {
          sub_25293847C(v14, &qword_27F546450, &qword_252E61BB0);
        }

        else
        {
          v47 = *v42;
          v48 = v70;
          (*v42)(v70, v14, v5);
          v47(v76, v48, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_2529F88F4(0, v43[2] + 1, 1, v43);
          }

          v50 = v43[2];
          v49 = v43[3];
          if (v50 >= v49 >> 1)
          {
            v43 = sub_2529F88F4((v49 > 1), v50 + 1, 1, v43);
          }

          v43[2] = v50 + 1;
          v51 = v43 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v50;
          v5 = v69;
          v47(v51, v76, v69);
          v37 = v71;
        }

        ++v40;
        v44 = v38 == v73;
        v38 = v74;
        if (v44)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:

    v52 = v62;
    sub_252E37284();

    (*(v72 + 56))(v52, 0, 1, v5);
    v28 = v67;
    v53 = sub_252E35E74();
    sub_252E1238C(v52, 0x737265746C6966, 0xE700000000000000);
    v53(v77, 0);
    v36 = v64;
  }

  v54 = v66;
  sub_252E36FF4();

  v55 = *(v72 + 56);
  v55(v54, 0, 1, v5);
  v56 = sub_252E35E74();
  sub_252E1238C(v54, 0x7463617265746E69, 0xEF657079546E6F69);
  v56(v77, 0);
  v57 = v62;
  sub_252E36FF4();
  v55(v57, 0, 1, v5);
  v58 = sub_252E35E74();
  sub_252E1238C(v57, 0x6449656C646E7562, 0xE800000000000000);
  v58(v77, 0);

  v59 = v61;
  (*(v68 + 32))(v36, v28, v61);
  return (*(v68 + 56))(v36, 0, 1, v59);
}

uint64_t sub_252E138E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 isExcludeFilter];
  if (v4)
  {

    v5 = [v3 isExcludeFilter];
    sub_252956D08();
    v6 = sub_252E37674();
    v7 = v6;
    if (v5)
    {
      v8 = sub_252E37694();

      if (v8)
      {
        v9 = sub_252E35EF4();
        return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
      }
    }

    else
    {
    }
  }

  v93 = a2;
  v100 = [v3 entityType];
  sub_252E16B10();
  v11 = sub_252E377E4();
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D60028];
  v98 = MEMORY[0x277D837D0];
  v99 = MEMORY[0x277D60028];
  *&v97 = v11;
  *(&v97 + 1) = v14;
  sub_252927BEC(&v97, v95);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v15;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  MEMORY[0x28223BE20](v17);
  v19 = (&v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  sub_252E16E30(*v19, v19[1], 0x7954797469746E65, 0xEA00000000006570, isUniquelyReferenced_nonNull_native, &v94);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v21 = v94;
  v100 = [v3 deviceType];
  v22 = sub_252E377E4();
  v98 = v12;
  v99 = v13;
  *&v97 = v22;
  *(&v97 + 1) = v23;
  sub_252927BEC(&v97, v95);
  LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
  v94 = v21;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  MEMORY[0x28223BE20](v24);
  v26 = (&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_252E16E30(*v26, v26[1], 0x7954656369766564, 0xEA00000000006570, v15, &v94);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v28 = v94;
  v100 = [v3 outerDeviceType];
  v29 = sub_252E377E4();
  v98 = v12;
  v99 = v13;
  *&v97 = v29;
  *(&v97 + 1) = v30;
  sub_252927BEC(&v97, v95);
  LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
  v94 = v28;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  MEMORY[0x28223BE20](v31);
  v33 = (&v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  sub_252E16E30(*v33, v33[1], 0x766544726574756FLL, 0xEF65707954656369, v15, &v94);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v35 = v94;
  v36 = [v3 outerDeviceName];
  if (v36)
  {
    v37 = v36;
    v38 = sub_252E36F34();
    v40 = v39;

    v98 = v12;
    v99 = v13;
    *&v97 = v38;
    *(&v97 + 1) = v40;
    sub_252927BEC(&v97, v95);
    LOBYTE(v37) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v41);
    v43 = (&v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    sub_252E16E30(*v43, v43[1], 0x766544726574756FLL, 0xEF656D614E656369, v37, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v35 = v100;
  }

  v45 = [v3 homeEntityName];
  if (v45)
  {
    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;

    v98 = v12;
    v99 = v13;
    *&v97 = v47;
    *(&v97 + 1) = v49;
    sub_252927BEC(&v97, v95);
    LOBYTE(v46) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v50);
    v52 = (&v92 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    sub_252E16E30(*v52, v52[1], 0x69746E45656D6F68, 0xEE00656D614E7974, v46, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v35 = v100;
  }

  v54 = [v3 homeName];
  if (v54)
  {
    v55 = v54;
    v56 = sub_252E36F34();
    v58 = v57;

    v98 = v12;
    v99 = v13;
    *&v97 = v56;
    *(&v97 + 1) = v58;
    sub_252927BEC(&v97, v95);
    LOBYTE(v55) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v59);
    v61 = (&v92 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61);
    sub_252E16E30(*v61, v61[1], 1701670760, 0xE400000000000000, v55, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v35 = v100;
  }

  v63 = [v3 zoneName];
  if (v63)
  {
    v64 = v63;
    v65 = sub_252E36F34();
    v67 = v66;

    v98 = v12;
    v99 = v13;
    *&v97 = v65;
    *(&v97 + 1) = v67;
    sub_252927BEC(&v97, v95);
    LOBYTE(v64) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v68 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v68);
    v70 = (&v92 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v70);
    sub_252E16E30(*v70, v70[1], 1701736314, 0xE400000000000000, v64, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v35 = v100;
  }

  v72 = [v3 groupName];
  if (v72)
  {
    v73 = v72;
    v74 = sub_252E36F34();
    v76 = v75;

    v98 = v12;
    v99 = v13;
    *&v97 = v74;
    *(&v97 + 1) = v76;
    sub_252927BEC(&v97, v95);
    LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v77 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v77);
    v79 = (&v92 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    sub_252E16E30(*v79, v79[1], 0x70756F7267, 0xE500000000000000, v73, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v35 = v100;
  }

  v81 = v93;
  v82 = [v3 roomName];
  if (v82)
  {
    v83 = v82;
    v84 = sub_252E36F34();
    v86 = v85;

    v98 = v12;
    v99 = v13;
    *&v97 = v84;
    *(&v97 + 1) = v86;
    sub_252927BEC(&v97, v95);
    LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v35;
    v87 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    MEMORY[0x28223BE20](v87);
    v89 = (&v92 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    sub_252E16E30(*v89, v89[1], 1836019570, 0xE400000000000000, v83, &v100);
    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  sub_252E36E64();

  v91 = sub_252E35EF4();
  return (*(*(v91 - 8) + 56))(v81, 0, 1, v91);
}

id sub_252E144A4(void *a1)
{
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D30);
  sub_252CC3D90(0xD000000000000043, 0x8000000252E9F6C0, 0xD000000000000072, 0x8000000252E9F3C0);
  if ([a1 resolutionResultCode] == 2)
  {

    return sub_252E15254(a1);
  }

  else if ([a1 resolutionResultCode] == 3)
  {

    return sub_252E14690(a1);
  }

  else
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E9F710);
    [a1 resolutionResultCode];
    type metadata accessor for INResolutionResultCode(0);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);

    return 0;
  }
}

id sub_252E14690(void *a1)
{
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  v7 = __swift_project_value_buffer(v6, qword_27F544D30);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E9F620);
  v8 = [a1 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC3D90(v41, v42, 0xD000000000000072, 0x8000000252E9F3C0);

  v12 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (!swift_dynamicCast())
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();
    v39 = v41;
    v40 = v42;
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9F660);
    v21 = [a1 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    sub_252E37AE4();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    sub_252CC4050(v39, v40, 0xD000000000000072, 0x8000000252E9F3C0, 0xD00000000000002ELL, 0x8000000252E9F690, 195);
LABEL_8:

    return 0;
  }

  v38[1] = v7;
  v13 = v39;
  v14 = v39;
  v15 = sub_252A6D5D4(v13);

  v16 = sub_252A6D400(v15, v14);
  if (!v17)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    v22 = v16;
    sub_252E379F4();

    v41 = 0xD00000000000001ELL;
    v42 = 0x8000000252E7C200;
    v39 = v22;
    v40 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v23 = sub_252E36F94();
    MEMORY[0x2530AD570](v23);

    sub_252CC4050(v41, v42, 0xD000000000000072, 0x8000000252E9F3C0, 0xD00000000000002ELL, 0x8000000252E9F690, 203);

    goto LABEL_8;
  }

  sub_252E37024();

  v18 = sub_252E36304();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v25 = sub_252E15934(v15, v14, v18, v20, 2, 0);

  v26 = *(v25 + 2);

  if (v26 < 3)
  {
    sub_252CC3D90(0xD000000000000020, 0x8000000252E9F4F0, 0xD000000000000072, 0x8000000252E9F3C0);

    return 0;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E9F4B0);
  v27 = [v14 description];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  sub_252CC3D90(v41, v42, 0xD000000000000072, 0x8000000252E9F3C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_252E3C130;
  *(v31 + 32) = v14;
  v32 = v14;
  v33 = sub_252A7564C(v31);
  v35 = v34;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v35)
  {
    v36 = sub_252E2B004(v32);
  }

  else
  {
    v36 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v37 = v36;

  return v37;
}

id sub_252E14D14(void *a1)
{
  v34 = sub_252E36324();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v5 = sub_252E36AD4();
    v6 = __swift_project_value_buffer(v5, qword_27F544D30);
    v31 = "ore with entity name ";
    v32 = v6;
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9F5B0, 0xD000000000000072, 0x8000000252E9F3C0);
    v37 = [a1 userTask];
    if (!v37)
    {
      goto LABEL_22;
    }

    v7 = [a1 filters];
    if (!v7)
    {

LABEL_22:
      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_27F544C58);
      v23 = sub_252E36AC4();
      v24 = sub_252E374D4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_252917000, v23, v24, "Failed to retrieve filters.", v25, 2u);
        MEMORY[0x2530AED00](v25, -1, -1);
      }

      return 0;
    }

    v8 = v7;
    type metadata accessor for HomeFilter();
    v9 = sub_252E37264();

    v38 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_6:
    v11 = 0;
    a1 = 0;
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v36 = v9 & 0xC000000000000001;
    v12 = v2 + 1;
    v29 = "morized confirmation resolution";
    v30 = "can't get an entity name from ";
    v28 = 0xD00000000000001ALL;
    v33 = v10;
    while (1)
    {
      if (v36)
      {
        v13 = MEMORY[0x2530ADF00](v11, v9);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v2 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v13 outerDeviceName];
      if (v15 || (v15 = [v2 homeEntityName]) != 0)
      {
        v16 = v15;
        sub_252E36F34();

        sub_252E37024();

        v17 = sub_252E36304();
        v19 = v18;
        (*v12)(v4, v34);
        v10 = v33;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v20 = sub_252E15934(7, v2, v17, v19, 2, v37);

      v21 = *(v20 + 2);

      if (v21 >= 3)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v11;
      if (v14 == v10)
      {
        v22 = v38;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v10 = sub_252E378C4();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_31:
  v22 = MEMORY[0x277D84F90];
LABEL_32:

  v27 = sub_252E170B0(v22);

  return v27;
}

id sub_252E15254(unint64_t a1)
{
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D30);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_252E379F4();

    v21 = 0xD000000000000027;
    v22 = 0x8000000252E9F440;
    v3 = [a1 description];
    v4 = sub_252E36F34();
    v6 = v5;

    MEMORY[0x2530AD570](v4, v6);

    sub_252CC3D90(v21, v22, 0xD000000000000072, 0x8000000252E9F3C0);

    v7 = [a1 disambiguationItems];
    v8 = sub_252E37264();

    a1 = sub_252A9E238(v8);

    if (!a1)
    {
      sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 278);
      return 0;
    }

    v9 = sub_252A6D8E8(a1);
    v21 = MEMORY[0x277D84F90];
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      break;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_5:
    v12 = 0;
    v19 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, a1);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v20 = v13;
      if (sub_252E15598(&v20, v9))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        v11 = v19;
      }

      else
      {
      }

      ++v12;
      if (v15 == v11)
      {
        v16 = v21;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v11 = sub_252E378C4();
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_21:
  v16 = MEMORY[0x277D84F90];
LABEL_22:

  v18 = sub_252E170B0(v16);

  return v18;
}

BOOL sub_252E15598(void **a1, void *a2)
{
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_252A6D400(a2, v9);
  if (v11)
  {
    sub_252E37024();

    v12 = sub_252E36304();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v15 = sub_252E15934(a2, v9, v12, v14, 1, 0);
    if (v2)
    {

      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544D30);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9F590);
      v23[0] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v24, v25, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 301);

      return 0;
    }

    else
    {
      v21 = v15;

      v22 = *(v21 + 2);

      return v22 > 2;
    }
  }

  else
  {
    v18 = v10;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D30);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_252E379F4();

    v24 = 0xD00000000000001ELL;
    v25 = 0x8000000252E9F570;
    v23[0] = v18;
    v23[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v20 = sub_252E36F94();
    MEMORY[0x2530AD570](v20);

    sub_252CC4050(v24, v25, 0xD000000000000072, 0x8000000252E9F3C0, 0xD000000000000030, 0x8000000252E9F470, 288);

    return 0;
  }
}

char *sub_252E15934(void *a1, void *a2, uint64_t a3, unint64_t a4, int a5, void (*a6)(void, void, void))
{
  v167 = a4;
  v160 = a6;
  v161 = a1;
  LODWORD(v159) = a5;
  v168 = a3;
  v166 = a2;
  v155 = sub_252E32E04();
  v154 = *(v155 - 8);
  v6 = MEMORY[0x28223BE20](v155);
  v157 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v153 = &v138 - v8;
  v162 = sub_252E35E24();
  v165 = *(v162 - 8);
  v9 = MEMORY[0x28223BE20](v162);
  v151 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v152 = &v138 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v138 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v138 - v16;
  MEMORY[0x28223BE20](v15);
  v156 = &v138 - v17;
  v18 = sub_252E35EE4();
  v171 = *(v18 - 8);
  v172 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v138 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v138 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v138 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v138 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v138 - v34;
  v36 = sub_252E35E44();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v173;
  sub_252E35E34();
  if (!v40)
  {
    v145 = v35;
    v146 = v33;
    v147 = v30;
    v139 = v27;
    v140 = v24;
    v142 = v21;
    v148 = v39;
    v143 = v37;
    v144 = v36;
    v149 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416B8, &unk_252E61BA0);
    v41 = v171;
    v42 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v170 = *(v171 + 72);
    v141 = 2 * v170;
    v43 = swift_allocObject();
    v158 = v43;
    *(v43 + 16) = xmmword_252E3C3C0;
    v169 = v42;
    v44 = (v43 + v42);
    v174 = [v166 deviceType];
    v150 = sub_252E16B10();
    v45 = sub_252E377E4();
    *v44 = 0x7954656369766564;
    v44[1] = 0xEA00000000006570;
    v44[2] = v45;
    v44[3] = v46;
    LODWORD(v166) = *MEMORY[0x277D5FFE8];
    v47 = *(v41 + 104);
    v48 = v172;
    (v47)(v44);
    if (v159)
    {
      if (v159 == 1)
      {
        v49 = 0xEE006E6F69746175;
        v50 = 0x6769626D61736964;
      }

      else
      {
        v49 = 0xEC0000006E6F6974;
        v50 = 0x616D7269666E6F63;
      }
    }

    else
    {
      v49 = 0xE700000000000000;
      v50 = 0x6E776F6E6B6E75;
    }

    v51 = v170;
    v52 = (v44 + v170);
    *v52 = 0x7463617265746E69;
    v52[1] = 0xEF657079546E6F69;
    v52[2] = v50;
    v52[3] = v49;
    v53 = v166;
    v47();
    v54 = v169;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_252E3C280;
    v56 = (v55 + v54);
    v57 = v161;
    *v56 = sub_252BEBD04(v161);
    *(v56 + 1) = v58;
    v173 = v47;
    v60 = v167;
    v59 = v168;
    *(v56 + 2) = v168;
    *(v56 + 3) = v60;
    (v173)(v56, v53, v48);
    v61 = &v56[v51];
    *v61 = 0x766544726574756FLL;
    *(v61 + 1) = 0xEF656D614E656369;
    *(v61 + 2) = v59;
    *(v61 + 3) = v60;
    v173();
    v62 = &v56[v141];
    strcpy(&v56[v141], "homeEntityName");
    v62[15] = -18;
    *(v62 + 2) = v59;
    v63 = v173;
    *(v62 + 3) = v60;
    v63();
    v64 = v160;
    if (v160)
    {
      swift_bridgeObjectRetain_n();
      v65 = v64;

      v159 = v65;
      v174 = [v65 taskType];
      v66 = sub_252E377E4();
      v67 = v145;
      *v145 = 0x657079546B736174;
      v67[1] = 0xE800000000000000;
      v67[2] = v66;
      v67[3] = v68;
      (v63)(v67, v53, v48);
      v69 = v158;
      v71 = v158[2];
      v70 = v158[3];
      if (v71 >= v70 >> 1)
      {
        v69 = sub_2529F8F18((v70 > 1), v71 + 1, 1, v158);
      }

      v72 = v170;
      v73 = v171;
      v69[2] = v71 + 1;
      v160 = *(v73 + 32);
      v160(v69 + v169 + v71 * v72, v145, v48);
      v174 = [v159 attribute];
      v74 = sub_252E377E4();
      v75 = v146;
      *v146 = 0x7475626972747461;
      v75[1] = 0xE900000000000065;
      v75[2] = v74;
      v75[3] = v76;
      (v173)(v75, v53, v48);
      v78 = v69[2];
      v77 = v69[3];
      if (v78 >= v77 >> 1)
      {
        v69 = sub_2529F8F18((v77 > 1), v78 + 1, 1, v69);
      }

      v69[2] = v78 + 1;
      v160(v69 + v169 + v78 * v170, v146, v48);
      v79 = [v159 value];
      if (v79)
      {
        v80 = v79;
        v81 = [v79 description];

        v82 = sub_252E36F34();
        v84 = v83;

        v60 = v167;
      }

      else
      {
        v82 = 0;
        v84 = 0xE000000000000000;
      }

      v98 = v168;
      v99 = v173;
      v100 = v147;
      *v147 = 0x65756C6176;
      v100[1] = 0xE500000000000000;
      v100[2] = v82;
      v100[3] = v84;
      v99();
      v102 = v69[2];
      v101 = v69[3];
      if (v102 >= v101 >> 1)
      {
        v69 = sub_2529F8F18((v101 > 1), v102 + 1, 1, v69);
      }

      v69[2] = v102 + 1;
      v103 = v69 + v169 + v102 * v170;
      v104 = v172;
      v160(v103, v147, v172);
      v174 = v57;
      v105 = sub_252E377E4();
      v106 = v139;
      *v139 = 0x7954797469746E65;
      v106[1] = 0xEA00000000006570;
      v106[2] = v105;
      v106[3] = v107;
      (v173)(v106, v166, v104);
      v109 = v69[2];
      v108 = v69[3];
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        v69 = sub_2529F8F18((v108 > 1), v109 + 1, 1, v69);
      }

      v69[2] = v110;
      v111 = v106;
      v112 = v172;
      v160(v69 + v169 + v109 * v170, v111, v172);
      v113 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v113 = v98 & 0xFFFFFFFFFFFFLL;
      }

      if (v113)
      {
        v114 = v140;
        *v140 = 0x69746E45656D6F68;
        v114[1] = 0xEE00656D614E7974;
        v114[2] = v98;
        v114[3] = v60;
        v173();
        v115 = v69[3];
        v116 = v109 + 2;

        if (v116 > (v115 >> 1))
        {
          v69 = sub_2529F8F18((v115 > 1), v116, 1, v69);
        }

        v94 = v148;
        v117 = v164;
        v69[2] = v116;
        v112 = v172;
        v160(v69 + v169 + v110 * v170, v140, v172);
      }

      else
      {
        v94 = v148;
        v117 = v164;
      }

      v118 = v163;
      sub_252E35E14();
      v119 = v142;
      *v142 = v69;
      (v173)(v119, *MEMORY[0x277D5FFD8], v112);
      v158 = v69;

      sub_252E35DE4();
      (*(v171 + 8))(v119, v112);
      v120 = v117;
      v88 = *(v165 + 8);
      v90 = v162;
      v88(v118, v162);
      v121 = v156;
      sub_252E35DF4();
      v88(v120, v90);
      v122 = v149;
      v123 = sub_252E35E04();
      v33 = v122;
      v124 = v157;
      if (v122)
      {

        v97 = v121;
        goto LABEL_30;
      }

      v126 = v123;
      v88(v121, v90);
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v85 = v151;
      sub_252E35E14();
      v86 = v142;
      *v142 = v158;
      (v63)(v86, *MEMORY[0x277D5FFD8], v48);

      v87 = v163;
      sub_252E35DE4();
      v171 = *(v171 + 8);
      (v171)(v86, v48);
      v88 = *(v165 + 8);
      v89 = v85;
      v90 = v162;
      v88(v89, v162);
      *v86 = v55;
      (v173)(v86, *MEMORY[0x277D5FFE0], v48);
      v91 = v48;
      v92 = v164;
      sub_252E35DE4();
      (v171)(v86, v91);
      v88(v87, v90);
      v93 = v152;
      sub_252E35DF4();
      v88(v92, v90);
      v94 = v148;
      v95 = v149;
      v96 = sub_252E35E04();
      v33 = v95;
      if (v95)
      {
        v97 = v93;
LABEL_30:
        v88(v97, v90);
        (*(v143 + 8))(v94, v144);

        return v33;
      }

      v126 = v96;
      v88(v93, v90);
      v124 = v157;
    }

    v127 = v153;
    sub_252E32DF4();
    v128 = sub_252E32D54();
    MEMORY[0x28223BE20](v128);
    *(&v138 - 2) = v124;
    *(&v138 - 1) = v127;

    v33 = sub_252E120A4(sub_252E16B64, (&v138 - 4), v126, MEMORY[0x277D5FFD0], sub_2529AA680);
    v149 = 0;

    v129 = v124;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v130 = sub_252E36AD4();
    __swift_project_value_buffer(v130, qword_27F544D30);
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](544501575, 0xE400000000000000);
    v176 = *(v33 + 2);
    v131 = sub_252E37D94();
    MEMORY[0x2530AD570](v131);

    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E9F380);
    MEMORY[0x2530AD570](v168, v167);
    MEMORY[0x2530AD570](0x69746E65200A202CLL, 0xEE00203A73656974);
    v132 = sub_252E35EA4();
    v133 = MEMORY[0x2530AD730](v126, v132);
    v135 = v134;

    MEMORY[0x2530AD570](v133, v135);

    sub_252CC3D90(v174, v175, 0xD000000000000072, 0x8000000252E9F3C0);

    (*(v143 + 8))(v148, v144);
    v136 = *(v154 + 8);
    v137 = v155;
    v136(v129, v155);
    v136(v127, v137);
  }

  return v33;
}

uint64_t sub_252E169A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_252E32E04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35E84();
  sub_252B94C38();
  v7 = sub_252E36EB4();
  v8 = *(v4 + 8);
  v8(v6, v3);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    sub_252E35E84();
    v9 = sub_252E32D84();
    v8(v6, v3);
  }

  return v9 & 1;
}

unint64_t sub_252E16B10()
{
  result = qword_27F546448;
  if (!qword_27F546448)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BD0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27F546448);
  }

  return result;
}

double sub_252E16B84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_252A44A10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_252E038BC();
      v10 = v12;
    }

    sub_252A00AF4((*(v10 + 56) + 32 * v8), a3);
    sub_252AEF2C4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_252E16C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_252A44A10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_252E03C44();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_252E35EF4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_252AEF474(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_252E35EF4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_252E16D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_252A44A10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_252E047F0();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_252AEF114(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_252E16E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D60028];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_252A44A10(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_252927BEC(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_252E04C4C();
    goto LABEL_7;
  }

  sub_252E02BFC(v16, a5 & 1);
  v22 = sub_252A44A10(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_252E17020(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_252E17020(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D60028];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_252927BEC(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

id sub_252E170B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v5 = a1;
    if (sub_252E378C4() >= 2)
    {
      goto LABEL_3;
    }

    v1 = sub_252E378C4();
    a1 = v5;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 > 1)
    {
LABEL_3:
      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v2 = sub_252E36AD4();
      __swift_project_value_buffer(v2, qword_27F544D30);
      v3 = "morized results.";
      v4 = 0xD000000000000048;
      goto LABEL_18;
    }
  }

  if (!v1)
  {
    if (qword_27F53F4D8 == -1)
    {
LABEL_17:
      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D30);
      v3 = "urning a successful resolution ";
      v4 = 0xD000000000000020;
LABEL_18:
      sub_252CC3D90(v4, v3 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);
      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_12;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(a1 + 32);
LABEL_12:
  v7 = v6;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D30);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E9F4B0);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E9F3C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C130;
  *(v13 + 32) = v7;
  v14 = v7;
  v15 = sub_252A7564C(v13);
  LOBYTE(v10) = v16;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v10)
  {
    v17 = sub_252E2B004(v14);
  }

  else
  {
    v17 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v20 = v17;

  return v20;
}

uint64_t sub_252E17400(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_252E378C4();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_2529AA7F8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_252E378C4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_252E378C4();
  v2 = sub_252DA9E88(v5, v6);
LABEL_10:

  return sub_2529AB248(a1, v2);
}

uint64_t sub_252E174F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E175F0, 0, 0);
}

uint64_t sub_252E175F0()
{
  v1 = sub_252C2A5D8();
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v2)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v43 = sub_252E36AD4();
    __swift_project_value_buffer(v43, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);

    v44 = v0[1];

    return v44(0);
  }

  while (1)
  {
    v3 = sub_252C2E2D8();
    v4 = v3;
    v5 = v3 >> 62 ? sub_252E378C4() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = &off_279711000;
    v87 = v0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v88 = v4 & 0xFFFFFFFFFFFFFF8;
    v75 = v0[5];
    v84 = (v75 + 32);
    v90 = MEMORY[0x277D84F90];
    v78 = v5;
    v81 = v4;
    v72 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v88 + 16))
        {
          goto LABEL_40;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 v6[221]];
      if (v12 && (v13 = v12, v14 = [v12 homeEntityName], v13, v14))
      {
        v16 = v0[10];
        v15 = v0[11];
        v17 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v18 = *v84;
        (*v84)(v15, v16, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_2529F7F74(0, v90[2] + 1, 1, v90);
        }

        v20 = v90[2];
        v19 = v90[3];
        v0 = v87;
        v6 = &off_279711000;
        v5 = v78;
        v8 = v72;
        if (v20 >= v19 >> 1)
        {
          v90 = sub_2529F7F74((v19 > 1), v20 + 1, 1, v90);
        }

        v21 = v87[11];
        v22 = v87[4];
        v90[2] = v20 + 1;
        v18(v90 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v20, v21, v22);
        v4 = v81;
      }

      else
      {
      }

      ++v7;
      if (v11 == v5)
      {
        goto LABEL_22;
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
    v42 = sub_252E378C4();

    if (!v42)
    {
      goto LABEL_44;
    }
  }

  v90 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v90;

  v23 = sub_252C2E2FC();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v25 = sub_252E378C4();
  if (v25)
  {
LABEL_24:
    v26 = 0;
    v27 = v24 & 0xC000000000000001;
    v73 = v0[5];
    v82 = (v73 + 32);
    v85 = v24 & 0xFFFFFFFFFFFFFF8;
    v89 = MEMORY[0x277D84F90];
    v76 = v25;
    v79 = v24;
    v70 = v24 & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v28 = MEMORY[0x2530ADF00](v26, v24);
      }

      else
      {
        if (v26 >= *(v85 + 16))
        {
          goto LABEL_42;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_41;
      }

      v31 = [v28 v6[221]];
      if (v31 && (v32 = v31, v33 = [v31 homeEntityName], v32, v33))
      {
        v35 = v0[8];
        v34 = v0[9];
        v36 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v37 = *v82;
        (*v82)(v34, v35, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_2529F7F74(0, v89[2] + 1, 1, v89);
        }

        v0 = v87;
        v39 = v89[2];
        v38 = v89[3];
        v25 = v76;
        v24 = v79;
        v27 = v70;
        if (v39 >= v38 >> 1)
        {
          v89 = sub_2529F7F74((v38 > 1), v39 + 1, 1, v89);
        }

        v40 = v87[9];
        v41 = v87[4];
        v89[2] = v39 + 1;
        v37(v89 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v39, v40, v41);
        v6 = &off_279711000;
      }

      else
      {
      }

      ++v26;
      if (v30 == v25)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v89 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v89;

  v46 = sub_252C2E688();
  v47 = v46;
  if (v46 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v49 = 0;
    v83 = v47 & 0xFFFFFFFFFFFFFF8;
    v86 = v47 & 0xC000000000000001;
    v69 = v0[5];
    v80 = (v69 + 32);
    v50 = MEMORY[0x277D84F90];
    v71 = i;
    v74 = v47;
    while (1)
    {
      if (v86)
      {
        v51 = MEMORY[0x2530ADF00](v49, v47);
      }

      else
      {
        if (v49 >= *(v83 + 16))
        {
          goto LABEL_70;
        }

        v51 = *(v47 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v54 = [v51 v6[221]];
      if (v54 && (v55 = v54, v56 = [v54 homeEntityName], v55, v56))
      {
        v58 = v0[6];
        v57 = v0[7];
        v77 = v50;
        v59 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v60 = *v80;
        v61 = v59;
        v50 = v77;
        (*v80)(v57, v58, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2529F7F74(0, v77[2] + 1, 1, v77);
        }

        v63 = v50[2];
        v62 = v50[3];
        v0 = v87;
        v6 = &off_279711000;
        v47 = v74;
        if (v63 >= v62 >> 1)
        {
          v50 = sub_2529F7F74((v62 > 1), v63 + 1, 1, v50);
        }

        v64 = v87[7];
        v65 = v87[4];
        v50[2] = v63 + 1;
        v60(v50 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v63, v64, v65);
        i = v71;
      }

      else
      {
      }

      ++v49;
      if (v53 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v50;
  v66 = v0[3];

  __swift_project_boxed_opaque_existential_1((v66 + 24), *(v66 + 48));
  v67 = sub_252C07CF4(0, v90, v50, v89);
  v0[15] = v67;
  v91 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v68 = swift_task_alloc();
  v0[16] = v68;
  *v68 = v0;
  v68[1] = sub_252E17EA0;

  return v91(0xD000000000000025, 0x8000000252E851C0, v67);
}

uint64_t sub_252E17EA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_252E1CED0;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_252E1CED4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E17FD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E180CC, 0, 0);
}

uint64_t sub_252E180CC()
{
  v1 = sub_252C2A5D8();
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v2)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v43 = sub_252E36AD4();
    __swift_project_value_buffer(v43, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);

    v44 = v0[1];

    return v44(0);
  }

  while (1)
  {
    v3 = sub_252C2E2D8();
    v4 = v3;
    v5 = v3 >> 62 ? sub_252E378C4() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = &off_279711000;
    v87 = v0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v88 = v4 & 0xFFFFFFFFFFFFFF8;
    v75 = v0[5];
    v84 = (v75 + 32);
    v90 = MEMORY[0x277D84F90];
    v78 = v5;
    v81 = v4;
    v72 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v88 + 16))
        {
          goto LABEL_40;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 v6[221]];
      if (v12 && (v13 = v12, v14 = [v12 homeEntityName], v13, v14))
      {
        v16 = v0[10];
        v15 = v0[11];
        v17 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v18 = *v84;
        (*v84)(v15, v16, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_2529F7F74(0, v90[2] + 1, 1, v90);
        }

        v20 = v90[2];
        v19 = v90[3];
        v0 = v87;
        v6 = &off_279711000;
        v5 = v78;
        v8 = v72;
        if (v20 >= v19 >> 1)
        {
          v90 = sub_2529F7F74((v19 > 1), v20 + 1, 1, v90);
        }

        v21 = v87[11];
        v22 = v87[4];
        v90[2] = v20 + 1;
        v18(v90 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v20, v21, v22);
        v4 = v81;
      }

      else
      {
      }

      ++v7;
      if (v11 == v5)
      {
        goto LABEL_22;
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
    v42 = sub_252E378C4();

    if (!v42)
    {
      goto LABEL_44;
    }
  }

  v90 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v90;

  v23 = sub_252C2E2FC();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v25 = sub_252E378C4();
  if (v25)
  {
LABEL_24:
    v26 = 0;
    v27 = v24 & 0xC000000000000001;
    v73 = v0[5];
    v82 = (v73 + 32);
    v85 = v24 & 0xFFFFFFFFFFFFFF8;
    v89 = MEMORY[0x277D84F90];
    v76 = v25;
    v79 = v24;
    v70 = v24 & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v28 = MEMORY[0x2530ADF00](v26, v24);
      }

      else
      {
        if (v26 >= *(v85 + 16))
        {
          goto LABEL_42;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_41;
      }

      v31 = [v28 v6[221]];
      if (v31 && (v32 = v31, v33 = [v31 homeEntityName], v32, v33))
      {
        v35 = v0[8];
        v34 = v0[9];
        v36 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v37 = *v82;
        (*v82)(v34, v35, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_2529F7F74(0, v89[2] + 1, 1, v89);
        }

        v0 = v87;
        v39 = v89[2];
        v38 = v89[3];
        v25 = v76;
        v24 = v79;
        v27 = v70;
        if (v39 >= v38 >> 1)
        {
          v89 = sub_2529F7F74((v38 > 1), v39 + 1, 1, v89);
        }

        v40 = v87[9];
        v41 = v87[4];
        v89[2] = v39 + 1;
        v37(v89 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v39, v40, v41);
        v6 = &off_279711000;
      }

      else
      {
      }

      ++v26;
      if (v30 == v25)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v89 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v89;

  v46 = sub_252C2E688();
  v47 = v46;
  if (v46 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v49 = 0;
    v83 = v47 & 0xFFFFFFFFFFFFFF8;
    v86 = v47 & 0xC000000000000001;
    v69 = v0[5];
    v80 = (v69 + 32);
    v50 = MEMORY[0x277D84F90];
    v71 = i;
    v74 = v47;
    while (1)
    {
      if (v86)
      {
        v51 = MEMORY[0x2530ADF00](v49, v47);
      }

      else
      {
        if (v49 >= *(v83 + 16))
        {
          goto LABEL_70;
        }

        v51 = *(v47 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v54 = [v51 v6[221]];
      if (v54 && (v55 = v54, v56 = [v54 homeEntityName], v55, v56))
      {
        v58 = v0[6];
        v57 = v0[7];
        v77 = v50;
        v59 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v60 = *v80;
        v61 = v59;
        v50 = v77;
        (*v80)(v57, v58, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2529F7F74(0, v77[2] + 1, 1, v77);
        }

        v63 = v50[2];
        v62 = v50[3];
        v0 = v87;
        v6 = &off_279711000;
        v47 = v74;
        if (v63 >= v62 >> 1)
        {
          v50 = sub_2529F7F74((v62 > 1), v63 + 1, 1, v50);
        }

        v64 = v87[7];
        v65 = v87[4];
        v50[2] = v63 + 1;
        v60(v50 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v63, v64, v65);
        i = v71;
      }

      else
      {
      }

      ++v49;
      if (v53 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v50;
  v66 = v0[3];

  __swift_project_boxed_opaque_existential_1((v66 + 24), *(v66 + 48));
  v67 = sub_252C07CF4(0, v90, v50, v89);
  v0[15] = v67;
  v91 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v68 = swift_task_alloc();
  v0[16] = v68;
  *v68 = v0;
  v68[1] = sub_252E1897C;

  return v91(0xD000000000000025, 0x8000000252E851C0, v67);
}

uint64_t sub_252E1897C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_252E18B74;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_252E18AAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E18AAC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_252E18B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252E18C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[280] = v3;
  v4[279] = a3;
  v4[278] = a2;
  v4[277] = a1;
  v5 = sub_252E34014();
  v4[281] = v5;
  v4[282] = *(v5 - 8);
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v4[285] = swift_task_alloc();
  v4[286] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252E18D40, 0, 0);
}

uint64_t sub_252E18D40()
{
  v142 = v0;
  v2 = v0;
  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  v128 = v0;
  if (v5 != 2 && (v5 & 1) == 0 || (v6 = [*(v0 + 2224) filters]) == 0)
  {

    goto LABEL_7;
  }

  v7 = v6;
  v8 = *(v2 + 2224);
  *(v2 + 2296) = type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v10 = [v8 userTask];
  v11 = HomeStore.accessories(matching:supporting:)(v9, v10);
  LOBYTE(v8) = v12;

  if (v8)
  {
    sub_252929F10(v11, 1);
LABEL_7:
    v13 = *(v2 + 2232);
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D84F90];
    *(v14 + 16) = MEMORY[0x277D84F90];
    if (!v13 || (v16 = [v13 entityResponses]) == 0)
    {
LABEL_23:
      v24 = *(v2 + 2240);
      v25 = *(v2 + 2224);
      type metadata accessor for HomeAutomationCarbonOxideResponses();
      v26 = swift_allocObject();
      *(v2 + 2456) = v26;
      *(v26 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      *(v26 + 24) = v15;
      v27 = swift_allocObject();
      *(v2 + 2464) = v27;
      v27[2] = v24;
      v27[3] = v26;
      v27[4] = v25;
      v28 = v25;

      if (v13)
      {
        v29 = *(v2 + 2240);
        v30 = *(v2 + 2224);
        v31 = v29[6];
        v32 = *(v2 + 2232);
        __swift_project_boxed_opaque_existential_1(v29 + 3, v31);
        memcpy((v2 + 16), v29 + 14, 0x1F8uLL);
        v33 = v30;

        memcpy(__dst, v29 + 14, 0x1F8uLL);
        v34 = v33;

        sub_2529D291C(v2 + 16, v2 + 520);
        v35 = sub_252953488(v30, __dst, 0);
        *(v2 + 2472) = v35;

        v36 = sub_252C07778(v26, 0, 0, v35);
        *(v2 + 2480) = v36;
        v139 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
        v37 = swift_task_alloc();
        *(v2 + 2488) = v37;
        *v37 = v2;
        v37[1] = sub_252E1AC1C;
        v38 = v36;
        goto LABEL_25;
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v40 = *(v2 + 2240);
      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v43 = v40[12];
      v42 = v40[13];
      __swift_project_boxed_opaque_existential_1(v40 + 9, v43);
      sub_252AD7CC4();
      v44 = swift_task_alloc();
      *(v2 + 2536) = v44;
      *v44 = v2;
      v44[1] = sub_252E1B020;
      v45 = *(v2 + 2272);
      v144 = v42;
      v46 = &unk_252E61C58;
      v47 = v2 + 2032;
      v48 = v27;
      goto LABEL_31;
    }

    v17 = v16;
    type metadata accessor for HomeEntityResponse();
    v1 = sub_252E37264();

    v138 = v13;
    __dst[0] = v15;
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!(v1 >> 62))
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_149:
    v18 = sub_252E378C4();
LABEL_11:
    v19 = 0;
    while (v18 != v19)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2530ADF00](v19, v1);
      }

      else
      {
        if (v19 >= *(v2 + 16))
        {
          goto LABEL_140;
        }

        v20 = *(v1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_139;
      }

      v23 = sub_252DA124C(0);

      ++v19;
      if (v23)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v15 = __dst[0];
        v19 = v22;
      }
    }

    v2 = v128;
    v13 = v138;
    goto LABEL_23;
  }

  v49 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v50 = sub_252E378C4();
  }

  else
  {
    v50 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = (v2 + 2200);
  if (!v50)
  {
    v74 = MEMORY[0x277D84F90];
    *(v2 + 2200) = MEMORY[0x277D84F90];
    sub_25297A744(v74);
    sub_25297A744(v74);
    goto LABEL_126;
  }

  v15 = 0;
  v136 = v11 + 32;
  v137 = v11 & 0xC000000000000001;
  v51 = MEMORY[0x277D84F90];
  do
  {
    v52 = v15;
    while (1)
    {
      if (v137)
      {
        result = MEMORY[0x2530ADF00](v52, v11);
        v15 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
LABEL_152:
          __break(1u);
          return result;
        }

        v1 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v54 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v54)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      if ((v52 & 0x8000000000000000) != 0)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v52 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_142;
      }

      v15 = v52 + 1;
      v53 = (*(v136 + 8 * v52) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v54 = v53[1];
      if (v54)
      {
        break;
      }

LABEL_43:
      v52 = v15;
      if (v15 == v50)
      {
        goto LABEL_54;
      }
    }

    v1 = *v53;

LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_2529F7A80(0, *(v51 + 2) + 1, 1, v51);
    }

    v56 = *(v51 + 2);
    v55 = *(v51 + 3);
    if (v56 >= v55 >> 1)
    {
      v51 = sub_2529F7A80((v55 > 1), v56 + 1, 1, v51);
    }

    *(v51 + 2) = v56 + 1;
    v57 = &v51[16 * v56];
    *(v57 + 4) = v1;
    *(v57 + 5) = v54;
  }

  while (v15 != v50);
LABEL_54:
  v58 = 0;
  *v132 = v51;
  __dst[0] = MEMORY[0x277D84F90];
  v133 = v11;
  v134 = v11 & 0xFFFFFFFFFFFFFF8;
  v135 = v50;
  while (2)
  {
    if (v137)
    {
      v59 = MEMORY[0x2530ADF00](v58, v11);
      v60 = __OFADD__(v58++, 1);
      if (v60)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v58 >= *(v49 + 16))
      {
        goto LABEL_144;
      }

      v59 = *(v136 + 8 * v58);

      v60 = __OFADD__(v58++, 1);
      if (v60)
      {
        goto LABEL_143;
      }
    }

    v61 = *(v59 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v61 >> 62)
    {
      v62 = sub_252E378C4();
      v138 = v59;
      if (!v62)
      {
LABEL_55:
        v2 = MEMORY[0x277D84F90];
        goto LABEL_56;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v138 = v59;
      if (!v62)
      {
        goto LABEL_55;
      }
    }

    v63 = 0;
    v15 = v61 & 0xC000000000000001;
    v1 = v61 & 0xFFFFFFFFFFFFFF8;
    v129 = v61;
    v64 = v61 + 32;
    v2 = MEMORY[0x277D84F90];
    while (2)
    {
      v65 = v63;
      while (!v15)
      {
        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (v65 >= *(v1 + 16))
        {
          goto LABEL_136;
        }

        v63 = v65 + 1;
        v66 = (*(v64 + 8 * v65) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v67 = v66[1];
        if (v67)
        {
          v130 = *v66;

          goto LABEL_74;
        }

LABEL_68:
        v65 = v63;
        if (v63 == v62)
        {
          goto LABEL_56;
        }
      }

      result = MEMORY[0x2530ADF00](v65, v129);
      v63 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_152;
      }

      v68 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v67 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

      swift_unknownObjectRelease();
      if (!v67)
      {
        goto LABEL_68;
      }

      v130 = v68;
LABEL_74:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
      }

      v70 = *(v2 + 16);
      v69 = *(v2 + 24);
      v71 = v130;
      if (v70 >= v69 >> 1)
      {
        v73 = sub_2529F7A80((v69 > 1), v70 + 1, 1, v2);
        v71 = v130;
        v2 = v73;
      }

      *(v2 + 16) = v70 + 1;
      v72 = v2 + 16 * v70;
      *(v72 + 32) = v71;
      *(v72 + 40) = v67;
      v11 = v133;
      if (v63 != v62)
      {
        continue;
      }

      break;
    }

LABEL_56:

    sub_25297A744(v2);
    v49 = v134;
    if (v58 != v135)
    {
      continue;
    }

    break;
  }

  sub_25297A744(__dst[0]);
  v75 = 0;
  v76 = MEMORY[0x277D84F90];
  do
  {
    if (v137)
    {
      MEMORY[0x2530ADF00](v75, v11);
      v15 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (v75 >= *(v134 + 16))
      {
        goto LABEL_146;
      }

      v15 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_145;
      }
    }

    v77 = sub_252E32E24();
    v79 = v78;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_2529F7A80(0, *(v76 + 2) + 1, 1, v76);
    }

    v1 = *(v76 + 2);
    v80 = *(v76 + 3);
    if (v1 >= v80 >> 1)
    {
      v76 = sub_2529F7A80((v80 > 1), v1 + 1, 1, v76);
    }

    *(v76 + 2) = v1 + 1;
    v81 = &v76[16 * v1];
    *(v81 + 4) = v77;
    *(v81 + 5) = v79;
    ++v75;
  }

  while (v15 != v135);
  sub_25297A744(v76);
  v82 = 0;
  __dst[0] = MEMORY[0x277D84F90];
  do
  {
    if (v137)
    {
      v15 = MEMORY[0x2530ADF00](v82, v11);
      v60 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v60)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v82 >= *(v49 + 16))
      {
        goto LABEL_148;
      }

      v15 = *(v136 + 8 * v82);

      v60 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v60)
      {
        goto LABEL_147;
      }
    }

    v85 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v85 >> 62)
    {
      v86 = sub_252E378C4();
      v131 = v84;
      if (v86)
      {
LABEL_107:
        v87 = 0;
        v138 = v85 & 0xC000000000000001;
        v15 = v85 & 0xFFFFFFFFFFFFFF8;
        v83 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v138)
          {
            v1 = MEMORY[0x2530ADF00](v87, v85);
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_137;
            }
          }

          else
          {
            if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_138;
            }

            v1 = *(v85 + 8 * v87 + 32);

            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_137;
            }
          }

          v89 = sub_252E32E24();
          v91 = v90;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_2529F7A80(0, *(v83 + 2) + 1, 1, v83);
          }

          v2 = *(v83 + 2);
          v92 = *(v83 + 3);
          v1 = v2 + 1;
          if (v2 >= v92 >> 1)
          {
            v83 = sub_2529F7A80((v92 > 1), v2 + 1, 1, v83);
          }

          *(v83 + 2) = v1;
          v93 = &v83[16 * v2];
          *(v93 + 4) = v89;
          *(v93 + 5) = v91;
          ++v87;
          if (v88 == v86)
          {
            goto LABEL_101;
          }
        }
      }
    }

    else
    {
      v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v131 = v84;
      if (v86)
      {
        goto LABEL_107;
      }
    }

    v83 = MEMORY[0x277D84F90];
LABEL_101:

    sub_25297A744(v83);
    v49 = v134;
    v82 = v131;
    v2 = v128;
    v11 = v133;
  }

  while (v131 != v135);
  v74 = __dst[0];
LABEL_126:
  sub_252929F10(v11, 0);
  sub_25297A744(v74);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v94 = *(v2 + 2232);
  v95 = sub_252E36AD4();
  __swift_project_value_buffer(v95, qword_27F544D18);
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E6F520;
  *(v2 + 2304) = *(v2 + 2200);
  v96 = MEMORY[0x2530AD730]();
  MEMORY[0x2530AD570](v96);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A0, 0x8000000252E9F830);

  v140 = v94;
  if (v94 && (v97 = [*(v2 + 2232) entityResponses]) != 0)
  {
    v98 = v97;
    type metadata accessor for HomeEntityResponse();
    v99 = sub_252E37264();
  }

  else
  {
    v99 = MEMORY[0x277D84F90];
  }

  v100 = *(v2 + 2240);
  v101 = *(v2 + 2224);
  v102 = sub_252C75D10(v99);

  strcpy(__dst, "responseSet ");
  BYTE5(__dst[1]) = 0;
  HIWORD(__dst[1]) = -5120;
  type metadata accessor for HomeEntityResponse();
  sub_2529C5FD4();
  v103 = sub_252E373B4();
  MEMORY[0x2530AD570](v103);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A0, 0x8000000252E9F830);

  v105 = sub_252E1C3F8(v104, v132);
  sub_2529C1764(v105);
  v107 = v106;
  *(v2 + 2312) = v106;
  v108 = sub_252E17400(v105, v102);

  sub_2529C1764(v108);
  v110 = v109;
  *(v2 + 2320) = v109;

  v111 = swift_allocObject();
  *(v2 + 2328) = v111;
  v111[2] = v100;
  v111[3] = v107;
  v111[4] = v101;
  v111[5] = v110;

  v112 = v101;

  if (!v140)
  {
    v125 = *(v2 + 2240);

    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v43 = v125[12];
    v126 = v125[13];
    __swift_project_boxed_opaque_existential_1(v125 + 9, v43);
    sub_252AD7CC4();
    v127 = swift_task_alloc();
    *(v2 + 2416) = v127;
    *v127 = v2;
    v127[1] = sub_252E1A33C;
    v45 = *(v2 + 2288);
    v144 = v126;
    v46 = &unk_252E61C80;
    v47 = v2 + 2112;
    v48 = v111;
LABEL_31:

    return sub_252BDB88C(v47, v46, v48, v45, 0, 0, 0, v43);
  }

  v113 = *(v2 + 2240);
  v114 = *(v2 + 2224);
  v115 = v113[6];
  v116 = *(v2 + 2232);
  __swift_project_boxed_opaque_existential_1(v113 + 3, v115);
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  v117 = swift_allocObject();
  *(v2 + 2336) = v117;
  *(v117 + 16) = 0;
  *(v117 + 24) = v107;
  memcpy((v2 + 1024), v113 + 14, 0x1F8uLL);

  v118 = v114;

  memcpy(__dst, v113 + 14, 0x1F8uLL);
  v119 = v118;

  sub_2529D291C(v2 + 1024, v2 + 1528);
  v120 = sub_252953488(v114, __dst, 0);
  *(v2 + 2344) = v120;

  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = v110;

  v122 = sub_252B3D26C();
  *(v2 + 2352) = v122;
  swift_setDeallocating();

  swift_deallocClassInstance();
  v123 = sub_252C07778(v117, v122, 0, v120);
  *(v2 + 2360) = v123;
  v139 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v124 = swift_task_alloc();
  *(v2 + 2368) = v124;
  *v124 = v2;
  v124[1] = sub_252E19ED0;
  v38 = v123;
LABEL_25:

  return v139(0xD000000000000022, 0x8000000252E95560, v38);
}

uint64_t sub_252E19ED0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2376) = a1;
  *(v3 + 2384) = v1;

  if (v1)
  {
    v4 = sub_252E1A22C;
  }

  else
  {
    v4 = sub_252E1A010;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1A010()
{
  v1 = v0[279];
  v2 = v0[278];

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v3 = swift_task_alloc();
  v0[299] = v3;
  *v3 = v0;
  v3[1] = sub_252E1A114;

  return sub_252E174F4(v1);
}

uint64_t sub_252E1A114(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2400) = a1;
  *(v3 + 2408) = v1;

  if (v1)
  {
    v4 = sub_252E1A600;
  }

  else
  {
    v4 = sub_252E1A4A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1A22C()
{
  v1 = v0[279];
  v2 = v0[278];

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v3 = v0[1];

  return v3();
}

uint64_t sub_252E1A33C()
{
  v2 = *v1;
  *(*v1 + 2424) = v0;

  (*(v2[282] + 8))(v2[286], v2[281]);
  if (v0)
  {
    v3 = sub_252E1AB7C;
  }

  else
  {
    v3 = sub_252E1AA40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252E1A4A4()
{
  v1 = v0 + 276;
  v2 = v0[300];
  v3 = v0[297];
  v0[276] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[280];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[304] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[305] = v11;
  *v11 = v0;
  v11[1] = sub_252E1A6B4;
  v12 = v0[285];

  return sub_252BDB88C((v0 + 269), &unk_252E3FA50, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252E1A600()
{
  v1 = *(v0 + 2232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252E1A6B4()
{
  v2 = *v1;
  *(*v1 + 2448) = v0;

  (*(v2[282] + 8))(v2[285], v2[281]);
  if (v0)
  {
    v3 = sub_252E1A970;
  }

  else
  {

    v3 = sub_252E1A80C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252E1A80C()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2400);
  v9 = *(v0 + 2376);
  v10 = *(v0 + 2232);
  (*(v4 + 112))(v7, v0 + 2152, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2152));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252E1A970()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252E1AA40()
{
  v1 = v0[280];
  v2 = v0[278];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 264, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252E1AB7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252E1AC1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2496) = a1;
  *(v3 + 2504) = v1;

  if (v1)
  {
    v4 = sub_252E1AF40;
  }

  else
  {
    v4 = sub_252E1AD5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1AD5C()
{
  v1 = v0[279];
  v2 = v0[278];

  v3 = swift_task_alloc();
  v0[314] = v3;
  *v3 = v0;
  v3[1] = sub_252E1AE28;

  return sub_252E174F4(v1);
}

uint64_t sub_252E1AE28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2520) = a1;
  *(v3 + 2528) = v1;

  if (v1)
  {
    v4 = sub_252E1B2E4;
  }

  else
  {
    v4 = sub_252E1B188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252E1AF40()
{
  v1 = v0[279];
  v2 = v0[278];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252E1B020()
{
  v2 = *v1;
  *(*v1 + 2544) = v0;

  (*(v2[282] + 8))(v2[284], v2[281]);
  if (v0)
  {
    v3 = sub_252E1B878;
  }

  else
  {
    v3 = sub_252E1B730;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252E1B188()
{
  v1 = v0 + 274;
  v2 = v0[315];
  v3 = v0[312];
  v0[274] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[280];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[319] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[320] = v11;
  *v11 = v0;
  v11[1] = sub_252E1B398;
  v12 = v0[283];

  return sub_252BDB88C((v0 + 259), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252E1B2E4()
{
  v1 = *(v0 + 2232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252E1B398()
{
  v2 = *v1;
  *(*v1 + 2568) = v0;

  (*(v2[282] + 8))(v2[283], v2[281]);
  if (v0)
  {
    v3 = sub_252E1B660;
  }

  else
  {

    v3 = sub_252E1B4F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252E1B4F0()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2520);
  v9 = *(v0 + 2496);
  v10 = *(v0 + 2232);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252E1B660()
{
  v1 = *(v0 + 2520);
  v2 = *(v0 + 2232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252E1B730()
{
  v1 = v0[280];
  v2 = v0[278];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 254, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252E1B878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252E1B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_252E1B940, 0, 0);
}

uint64_t sub_252E1B940()
{
  v12 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  memcpy(v0 + 2, v3 + 14, 0x1F8uLL);

  v4 = v1;

  memcpy(__dst, v3 + 14, sizeof(__dst));

  v5 = v4;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v6 = sub_252953488(v1, __dst, 0);
  v0[131] = v6;

  v7 = sub_252C07778(v2, 0, 0, v6);
  v0[132] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[133] = v8;
  *v8 = v0;
  v8[1] = sub_252E1BABC;

  return v10(0xD000000000000022, 0x8000000252E95560, v7);
}

uint64_t sub_252E1BABC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v5 = sub_252E1BC9C;
  }

  else
  {
    *(v4 + 1080) = a1;
    v5 = sub_252E1BC08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1BC08()
{
  v1 = v0[130];

  v2 = v0[1];
  v3 = v0[135];

  return v2(v3);
}

uint64_t sub_252E1BC9C()
{
  v1 = *(v0 + 1040);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252E1BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[131] = a4;
  v4[130] = a3;
  v4[129] = a2;
  v4[128] = a1;
  return MEMORY[0x2822009F8](sub_252E1BD58, 0, 0);
}

uint64_t sub_252E1BD58()
{
  v16 = v0;
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  v5 = swift_allocObject();
  v0[132] = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  memcpy(v0 + 2, v4 + 14, 0x1F8uLL);

  v6 = v2;

  memcpy(__dst, v4 + 14, sizeof(__dst));

  v7 = v6;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v8 = sub_252953488(v2, __dst, 0);
  v0[133] = v8;

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v1;

  v10 = sub_252B3D26C();
  v0[134] = v10;
  swift_setDeallocating();

  swift_deallocClassInstance();
  v11 = sub_252C07778(v5, v10, 0, v8);
  v0[135] = v11;
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  v0[136] = v12;
  *v12 = v0;
  v12[1] = sub_252E1BF70;

  return v14(0xD000000000000022, 0x8000000252E95560, v11);
}

uint64_t sub_252E1BF70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1096) = v1;

  if (v1)
  {
    v5 = sub_252E1C178;
  }

  else
  {
    *(v4 + 1104) = a1;
    v5 = sub_252E1C0BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252E1C0BC()
{
  v1 = v0[130];

  v2 = v0[1];
  v3 = v0[138];

  return v2(v3);
}

uint64_t sub_252E1C178()
{
  v1 = *(v0 + 1040);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252E1C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252E18C50(a1, a2, a3);
}

void *sub_252E1C30C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetCarbonOxideSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252E1C370(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_252E1C9F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_252E1C3F8(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252E1C6B8(a1, a2);
  }

  v33 = v2;
  v4 = MEMORY[0x277D84FA0];
  v36 = MEMORY[0x277D84FA0];
  sub_252E37874();
  v5 = sub_252E37904();
  if (v5)
  {
    v32 = a2;
    v6 = v5;
    type metadata accessor for HomeEntityResponse();
    v7 = v6;
    v8 = MEMORY[0x277D84F68];
    do
    {
      v34[0] = v7;
      swift_dynamicCast();
      v9 = [v35 entity];
      if (v9 && (v10 = v9, v11 = [v9 entityIdentifier], v10, v11) && (v12 = sub_252E36F34(), v13 = v8, v15 = v14, v11, v16 = *v32, v34[0] = v12, v34[1] = v15, MEMORY[0x28223BE20](v17), v31[2] = v34, , v18 = v33, LOBYTE(v12) = sub_2529ED970(sub_25296A69C, v31, v16), v33 = v18, v8 = v13, , , (v12 & 1) != 0))
      {
        v19 = v35;
        v20 = *(v4 + 16);
        if (*(v4 + 24) <= v20)
        {
          sub_252DAB4D0(v20 + 1);
        }

        v4 = v36;
        result = sub_252E37684();
        v22 = v4 + 56;
        v23 = -1 << *(v4 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v4 + 56 + 8 * (v24 >> 6))) != 0)
        {
          v26 = __clz(__rbit64((-1 << v24) & ~*(v4 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = 0;
          v28 = (63 - v23) >> 6;
          do
          {
            if (++v25 == v28 && (v27 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v29 = v25 == v28;
            if (v25 == v28)
            {
              v25 = 0;
            }

            v27 |= v29;
            v30 = *(v22 + 8 * v25);
          }

          while (v30 == -1);
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        }

        *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v4 + 48) + 8 * v26) = v19;
        ++*(v4 + 16);
      }

      else
      {
      }

      v7 = sub_252E37904();
    }

    while (v7);
  }

  return v4;
}

void *sub_252E1C6B8(uint64_t a1, uint64_t *a2)
{
  v35 = a2;
  v3 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v2;
    v30[1] = v30;
    v31 = v5;
    MEMORY[0x28223BE20](a1);
    v32 = v30 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v6);
    v33 = 0;
    v34 = v3;
    v5 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = v12 | (v5 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = [v16 entity];
      if (v17 && (v18 = v17, v19 = [v17 entityIdentifier], v18, v19))
      {
        v20 = sub_252E36F34();
        v22 = v21;

        v36 = v30;
        v23 = *v35;
        v38[0] = v20;
        v38[1] = v22;
        MEMORY[0x28223BE20](v24);
        v30[-2] = v38;

        v2 = v37;
        LOBYTE(v20) = sub_2529ED970(sub_25296A724, &v30[-4], v23);
        v37 = v2;

        v3 = v34;

        if (v20)
        {
          *&v32[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
            return sub_252C53CA8(v32, v31, v33, v3);
          }
        }
      }

      else
      {
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        return sub_252C53CA8(v32, v31, v33, v3);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = v3;
  v28 = swift_slowAlloc();
  v29 = sub_252E1C370(v28, v5, v27, v35);

  MEMORY[0x2530AED00](v28, -1, -1);
  return v29;
}

void sub_252E1C9F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = 0;
  v29 = a4;
  v4 = a3;
  v26 = a2;
  v27 = a1;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a3;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    v16 = [v15 entity];
    if (v16 && (v17 = v16, v18 = [v16 entityIdentifier], v17, v18))
    {
      v19 = sub_252E36F34();
      v21 = v20;

      v31 = &v26;
      v32[0] = v19;
      v22 = *v29;
      v32[1] = v21;
      MEMORY[0x28223BE20](v23);
      *(&v26 - 2) = v32;

      v24 = v33;
      LOBYTE(v19) = sub_2529ED970(sub_25296A724, (&v26 - 4), v22);
      v33 = v24;

      v4 = v30;

      if (v19)
      {
        *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_18:

          sub_252C53CA8(v27, v26, v28, v4);
          return;
        }
      }
    }

    else
    {
    }
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
      goto LABEL_18;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_252E1CC18(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_16;
  }

  v7 = v6;
  if ([v6 taskType] == 4)
  {
  }

  else
  {
    v8 = [v7 taskType];

    if (v8 != 5)
    {
      goto LABEL_16;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = sub_252C285F0();
  if (v9 >> 62)
  {
    v12 = sub_252E378C4();

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_16:

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ([v5 attribute] == 32 || objc_msgSend(v5, sel_attribute) == 35 || objc_msgSend(v5, sel_attribute) == 33)
  {

    return 1;
  }

  else
  {
    v11 = [v5 attribute];

    return v11 == 36;
  }
}

uint64_t sub_252E1CD7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252E1B918(v2, v3, v4);
}

uint64_t sub_252E1CE24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B958;

  return sub_252E1BD2C(v2, v3, v5, v4);
}

id sub_252E1CED8()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E90B00, 0xD0000000000000A6, 0x8000000252E9F930);
  type metadata accessor for HomeAttributeValue();
  return HomeAttributeValue.__allocating_init(stringValue:unit:)(1869903201, 0xE400000000000000, 0);
}

id sub_252E1CF94(void *a1)
{
  v2 = [a1 userTask];
  if (v2 && (v3 = v2, v4 = [v2 value], v3, v4) && (v5 = objc_msgSend(v4, sel_rangeValue), v4, v5) && (objc_msgSend(v5, sel_lowerValue), v36 = v6, v5, (v7 = objc_msgSend(a1, sel_userTask)) != 0) && (v8 = v7, v9 = objc_msgSend(v7, sel_value), v8, v9) && (v10 = objc_msgSend(v9, sel_rangeValue), v9, v10))
  {
    [v10 upperValue];
    v35 = v11;

    v12 = sub_252C6E240(a1);
    v13.f64[0] = v36;
    v13.f64[1] = v35;
    if (v12 == 3)
    {
      v37 = v13;
    }

    else
    {
      v16 = vaddq_f64(v13, vdupq_n_s64(0xC040000000000000));
      __asm { FMOV            V1.2D, #5.0 }

      v22 = vmulq_f64(v16, _Q1);
      __asm { FMOV            V1.2D, #9.0 }

      v24 = vdivq_f64(v22, _Q1);
      v25 = vdupq_n_s64(0x4059000000000000uLL);
      v37 = vdivq_f64(vrndaq_f64(vmulq_f64(v24, v25)), v25);
    }

    v26 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
    v27 = sub_252E36F04();
    v28 = [v26 initWithIdentifier:0 displayString:v27];

    v29 = v28;
    [v29 setLowerValue_];
    [v29 setUpperValue_];

    v30 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v31 = sub_252E36F04();
    v32 = [v30 initWithIdentifier:0 displayString:v31];

    v33 = v32;
    [v33 setType_];
    v34 = v29;
    [v33 setRangeValue_];

    return v33;
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C70);
    sub_252CC4050(0xD000000000000028, 0x8000000252E90AD0, 0xD0000000000000A6, 0x8000000252E9F930, 0xD000000000000069, 0x8000000252E9A930, 43);
    return 0;
  }
}

uint64_t sub_252E1D2C4()
{
  type metadata accessor for SetRangeClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

void *sub_252E1D2F4(void *key, char a2)
{
  v3 = v2;
  LOBYTE(v2) = a2;
  v4 = key;
  if (objc_getAssociatedObject(v3, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    type metadata accessor for HomeAutomationBooleanResponses();
    if (swift_dynamicCast())
    {
      return v24;
    }
  }

  else
  {
    sub_252982F10(v27);
  }

  v6 = v3[3];
  *&v27[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_10:
    v20 = v4;
    v21 = v3;
    v8 = 0;
    v22 = v6 & 0xFFFFFFFFFFFFFF8;
    v23 = v6 & 0xC000000000000001;
    v19 = v6;
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v3 = (v2 & 1);
    do
    {
      if (v23)
      {
        v9 = MEMORY[0x2530ADF00](v8, v19);
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >= *(v22 + 16))
        {
          goto LABEL_39;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_38;
        }
      }

      v2 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v2 >> 62)
      {
        v11 = sub_252E378C4();
      }

      else
      {
        v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        v12 = 0;
        v4 = (v2 & 0xC000000000000001);
        do
        {
          if (v4)
          {
            v13 = MEMORY[0x2530ADF00](v12, v2);
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v7 = sub_252E378C4();
              if (!v7)
              {
                goto LABEL_41;
              }

              goto LABEL_10;
            }
          }

          v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          if (v15)
          {
            v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

            if (v16 == v3)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              v2 = v27;
              sub_252E37AA4();
              goto LABEL_12;
            }
          }

          else
          {
          }

          ++v12;
        }

        while (v14 != v11);
      }

LABEL_12:
      ;
    }

    while (v8 != v7);
    v17 = *&v27[0];
    v4 = v20;
    v3 = v21;
  }

  else
  {
LABEL_41:
    v17 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v17;
  objc_setAssociatedObject(v3, v4, v5, 1);
  return v5;
}

double sub_252E1D600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (!v6 && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0xD00000000000001ALL && 0x8000000252E9FA90 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4E1AC();
    }

    else if (a1 == 0xD00000000000001BLL && 0x8000000252E9FAB0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4DFA4();
    }

    else if (a1 == 0xD000000000000014 && 0x8000000252E9FAD0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v10 = sub_252B4DDA4();
    }

    else
    {
      if ((a1 != 0xD000000000000013 || 0x8000000252E9FAF0 != a2) && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_27;
      }

      v10 = sub_252B4DBA8();
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v10 & 1;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
LABEL_27:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for HomeAutomationDialogTrigger(0);
  *a3 = v8;

  return result;
}

uint64_t sub_252E1D7D8()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252E1D844(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252E1D894@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252E1D91C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252E1D974(uint64_t a1)
{
  v2 = sub_252E1DF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252E1D9B0(uint64_t a1)
{
  v2 = sub_252E1DF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252E1D9EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252E1DA50(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546488, &unk_252E61EE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252E1DF34();
  sub_252E37F84();
  v9[1] = *(v2 + 24);
  type metadata accessor for HomeAutomationDialogTrigger(0);
  sub_252E1DF88(&qword_27F541A90, 255, type metadata accessor for HomeAutomationDialogTrigger, aA_8);
  sub_252E37CD4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_252E1DBFC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546478, &qword_252E61ED8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252E1DF34();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAutomation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for HomeAutomationDialogTrigger(0);
    sub_252E1DF88(&qword_27F541A88, 255, type metadata accessor for HomeAutomationDialogTrigger, aI_14);
    sub_252E37BE4();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252E1DE28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAutomation();
  v5 = swift_allocObject();
  result = sub_252E1DBFC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252E1DF34()
{
  result = qword_27F546480;
  if (!qword_27F546480)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for HomeAutomationAutomation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F546480);
  }

  return result;
}

uint64_t sub_252E1DF88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_252E1DFD0(uint64_t a1)
{
  type metadata accessor for HomeAutomationAutomation();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  if (v3)
  {
  }

  else
  {
    v4 = sub_252E36384();
    sub_252E374D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_252E3C290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546490, &qword_252E61EF0);
    v6 = sub_252E36F94();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_252987BC8();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_252E36A64("Building an instance of %s without all required inputs", v10);
  }

  return v2;
}

unint64_t sub_252E1E134()
{
  result = qword_27F546498;
  if (!qword_27F546498)
  {
    result = swift_getWitnessTable(byte_252E61FCC, &type metadata for HomeAutomationAutomation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F546498);
  }

  return result;
}

unint64_t sub_252E1E18C()
{
  result = qword_27F5464A0;
  if (!qword_27F5464A0)
  {
    result = swift_getWitnessTable(byte_252E61F04, &type metadata for HomeAutomationAutomation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5464A0);
  }

  return result;
}

unint64_t sub_252E1E1E4()
{
  result = qword_27F5464A8;
  if (!qword_27F5464A8)
  {
    result = swift_getWitnessTable(byte_252E61F2C, &type metadata for HomeAutomationAutomation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5464A8);
  }

  return result;
}

uint64_t sub_252E1E238()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 771;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 41) = 770;
  *(v0 + 43) = 4;
  *(v0 + 48) = v2;
  *(v0 + 56) = 4;
  *(v0 + 64) = v2;
  *(v0 + 72) = v2;
  *(v0 + 80) = 4;
  *(v0 + 88) = v2;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  *(v0 + 112) = v2;
  *(v0 + 120) = v2;
  *(v0 + 128) = v2;
  *(v0 + 136) = v2;
  *(v0 + 144) = v2;
  *(v0 + 152) = v2;
  *(v0 + 160) = v2;
  *(v0 + 168) = v2;
  *(v0 + 176) = v2;
  *(v0 + 184) = v2;
  *(v0 + 192) = v2;
  *(v0 + 200) = v2;
  *(v0 + 208) = v2;
  *(v0 + 216) = v2;
  *(v0 + 224) = 521;
  *(v0 + 232) = v2;
  *(v0 + 240) = v2;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = v2;
  *(v0 + 280) = 2;
  *(v0 + 288) = 0;
  *(v0 + 296) = 256;
  *(v0 + 304) = v2;
  *(v0 + 312) = v2;
  *(v0 + 320) = v2;
  *(v0 + 328) = v2;
  *(v0 + 336) = v2;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = v2;
  *(v0 + 376) = 22;
  *(v0 + 377) = 0;
  *(v0 + 384) = v2;
  *(v0 + 392) = v2;
  *(v0 + 400) = v2;
  *(v0 + 408) = v2;
  *(v0 + 416) = v2;
  *(v0 + 424) = v2;
  *(v0 + 432) = v2;
  *(v0 + 440) = v2;
  *(v0 + 448) = v2;
  *(v0 + 456) = v2;
  *(v0 + 464) = v2;
  *(v0 + 472) = v2;
  v3 = MEMORY[0x277D84FA0];
  *(v0 + 480) = v2;
  *(v0 + 488) = v3;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  return result;
}

uint64_t sub_252E1E320(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 488) + 16))
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    for (i = 0; v5; result = sub_2529AEC80(v21))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 152 * (v10 | (v9 << 6));
      v12 = *(v11 + 16);
      v23[0] = *v11;
      v23[1] = v12;
      v13 = *(v11 + 80);
      v15 = *(v11 + 32);
      v14 = *(v11 + 48);
      v23[4] = *(v11 + 64);
      v23[5] = v13;
      v23[2] = v15;
      v23[3] = v14;
      v17 = *(v11 + 112);
      v16 = *(v11 + 128);
      v18 = *(v11 + 96);
      v24 = *(v11 + 144);
      v23[7] = v17;
      v23[8] = v16;
      v23[6] = v18;
      swift_beginAccess();
      sub_25297DE08(v23, v21);
      sub_252DA8480(v19, v23);
      swift_endAccess();
      v21[6] = v19[6];
      v21[7] = v19[7];
      v21[8] = v19[8];
      v22 = v20;
      v21[2] = v19[2];
      v21[3] = v19[3];
      v21[4] = v19[4];
      v21[5] = v19[5];
      v21[0] = v19[0];
      v21[1] = v19[1];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++i;
      if (v5)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    *(v1 + 488) = a1;
  }

  return result;
}

double sub_252E1E4F8@<D0>(uint64_t a1@<X8>)
{
  v46 = *(v1 + 24);
  v3 = *(v1 + 32);
  v44 = *(v1 + 40);
  v42 = *(v1 + 41);
  v40 = *(v1 + 43);
  v4 = *(v1 + 48);
  v34 = *(v1 + 56);
  swift_beginAccess();
  v38 = *(v1 + 64);
  v39 = *(v1 + 72);
  v33 = *(v1 + 80);
  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v47 = *(v1 + 104);
  v48 = *(v1 + 120);
  v49 = *(v1 + 112);
  v50 = *(v1 + 128);
  v51 = *(v1 + 136);
  v52 = *(v1 + 144);
  v53 = *(v1 + 152);
  v54 = *(v1 + 160);
  v55 = *(v1 + 168);
  swift_beginAccess();
  v56 = *(v1 + 176);
  v57 = *(v1 + 184);
  v58 = *(v1 + 192);
  v59 = *(v1 + 200);
  v60 = *(v1 + 208);
  v61 = *(v1 + 216);
  v62 = *(v1 + 232);
  v63 = *(v1 + 240);
  v29 = *(v1 + 248);
  v30 = *(v1 + 224);
  v28 = *(v1 + 256);
  v64 = *(v1 + 264);
  v65 = *(v1 + 272);
  v27 = *(v1 + 280);
  v26 = *(v1 + 288);
  v24 = *(v1 + 297);
  v25 = *(v1 + 296);
  v7 = *(v1 + 304);
  v66 = *(v1 + 328);
  v67 = *(v1 + 336);
  v68 = *(v1 + 312);
  v23 = *(v1 + 344);
  v69 = *(v1 + 352);
  v70 = *(v1 + 320);
  v36 = *(v1 + 360);
  v37 = *(v1 + 368);
  v21 = *(v1 + 377);
  v22 = *(v1 + 376);
  v31 = *(v1 + 378);
  v32 = *(v1 + 379);
  v77 = *(v1 + 480);
  v8 = *(v1 + 380);
  v9 = *(v1 + 448);
  v74 = *(v1 + 432);
  v75 = v9;
  v76 = *(v1 + 464);
  v10 = *(v1 + 416);
  v72 = *(v1 + 400);
  v73 = v10;
  v11 = *(v1 + 16);
  v12 = *(v1 + 384);
  v35 = *(v1 + 392);
  swift_beginAccess();
  v13 = MEMORY[0x277D84F90];
  *(a1 + 400) = MEMORY[0x277D84F90];
  *(a1 + 408) = v13;
  *(a1 + 416) = v13;
  *(a1 + 424) = v13;
  *(a1 + 432) = v13;
  *(a1 + 440) = v13;
  *(a1 + 448) = v13;
  *(a1 + 456) = v13;
  *(a1 + 464) = v13;
  *(a1 + 472) = v13;
  *(a1 + 480) = v13;
  *(a1 + 8) = v46;
  *(a1 + 10) = v44;
  *(a1 + 24) = v42;
  *(a1 + 26) = v40;
  *(a1 + 40) = v34;
  *(a1 + 64) = v33;
  *(a1 + 208) = v30;
  *(a1 + 232) = v29;
  *(a1 + 240) = v28;
  *(a1 + 312) = v27;
  *(a1 + 280) = v26;
  *(a1 + 288) = v25;
  *(a1 + 289) = v24;
  *(a1 + 320) = v23;
  *(a1 + 328) = v7;
  *(a1 + 384) = v22;
  *(a1 + 385) = v21;
  *(a1 + 388) = v31;
  v14 = *(v1 + 488);
  *(a1 + 386) = v32;
  LOBYTE(v46) = *(v1 + 496);
  *(a1 + 387) = v8;
  v79 = *(a1 + 480);
  v43 = v14;
  v45 = *(v1 + 504);
  v41 = *(v1 + 512);
  *(a1 + 496) = 0;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v38;
  *(a1 + 56) = v39;
  *(a1 + 72) = v6;
  *(a1 + 80) = v5;
  *(a1 + 88) = v47;
  *(a1 + 96) = v49;
  *(a1 + 104) = v48;
  *(a1 + 112) = v50;
  *(a1 + 120) = v51;
  *(a1 + 128) = v52;
  *(a1 + 136) = v53;
  *(a1 + 144) = v54;
  *(a1 + 152) = v55;
  *(a1 + 160) = v56;
  *(a1 + 168) = v57;
  *(a1 + 176) = v58;
  *(a1 + 184) = v59;
  *(a1 + 192) = v60;
  *(a1 + 200) = v61;
  *(a1 + 216) = v62;
  *(a1 + 224) = v63;
  *(a1 + 248) = v64;
  *(a1 + 256) = v65;
  *(a1 + 336) = v68;
  *(a1 + 344) = v70;
  *(a1 + 352) = v66;
  *(a1 + 360) = v67;
  *(a1 + 296) = v69;
  *(a1 + 304) = v36;
  *a1 = v11;
  *(a1 + 392) = v12;
  *(a1 + 368) = v35;
  *(a1 + 376) = v37;
  v15 = *(a1 + 464);
  v78[3] = *(a1 + 448);
  v78[4] = v15;
  v16 = *(a1 + 432);
  v78[1] = *(a1 + 416);
  v78[2] = v16;
  v78[0] = *(a1 + 400);

  sub_2529855F8(&v72, v71);

  sub_252937BEC(v78);
  v17 = v75;
  *(a1 + 432) = v74;
  *(a1 + 448) = v17;
  *(a1 + 464) = v76;
  v18 = v77;
  result = *&v72;
  v20 = v73;
  *(a1 + 400) = v72;
  *(a1 + 416) = v20;
  *(a1 + 480) = v18;
  *(a1 + 488) = v43;
  *(a1 + 389) = v46;
  *(a1 + 264) = v45;
  *(a1 + 272) = v41;
  return result;
}

void *sub_252E1E9A8()
{

  return v0;
}

uint64_t sub_252E1EB90()
{
  sub_252E1E9A8();

  return swift_deallocClassInstance();
}

uint64_t sub_252E1EBE8(uint64_t *a1)
{
  v35 = *a1;
  v2 = *(a1 + 4);
  v22 = *(a1 + 12);
  v23 = *(a1 + 10);
  v21 = *(a1 + 26);
  v11 = a1[4];
  v12 = a1[6];
  v13 = a1[2];
  v14 = a1[7];
  v24 = *(a1 + 40);
  v25 = *(a1 + 64);
  v15 = a1[9];
  v16 = a1[10];
  v17 = a1[11];
  v18 = a1[12];
  v19 = a1[13];
  v20 = a1[14];
  v51 = a1[15];
  v52 = a1[16];
  v53 = a1[17];
  v54 = a1[18];
  v55 = a1[19];
  v56 = a1[20];
  v57 = a1[21];
  v58 = a1[22];
  v68 = a1[61];
  v74 = a1[60];
  v3 = a1[23];
  v59 = a1[24];
  *(v1 + 24) = v2;
  v60 = a1[25];
  v61 = v3;
  v4 = *(a1 + 28);
  v71 = *(a1 + 27);
  v72 = v4;
  v73 = *(a1 + 29);
  v5 = *(a1 + 26);
  v28 = *(a1 + 104);
  v62 = a1[28];
  v31 = *(a1 + 232);
  v33 = a1[30];
  v63 = a1[31];
  v64 = a1[27];
  v50 = a1[33];
  v67 = a1[34];
  v40 = a1[35];
  v38 = *(a1 + 289);
  v39 = *(a1 + 288);
  v65 = a1[32];
  v66 = a1[37];
  v34 = *(a1 + 312);
  v42 = a1[38];
  v43 = a1[40];
  v37 = a1[41];
  v29 = a1[42];
  v30 = a1[43];
  v26 = a1[45];
  v27 = a1[44];
  v41 = a1[46];
  v32 = a1[47];
  v45 = *(a1 + 385);
  v46 = *(a1 + 384);
  v48 = *(a1 + 386);
  v47 = *(a1 + 387);
  v44 = *(a1 + 388);
  v49 = *(a1 + 389);
  v36 = a1[49];
  v69 = *(a1 + 25);
  v70 = v5;
  *(v1 + 32) = v13;

  sub_2529855F8(&v69, v75);

  *(v1 + 40) = v23;
  *(v1 + 41) = v22;
  *(v1 + 43) = v21;
  *(v1 + 48) = v11;

  *(v1 + 56) = v24;
  swift_beginAccess();
  *(v1 + 64) = v12;

  *(v1 + 72) = v14;

  *(v1 + 80) = v25;
  *(v1 + 88) = v15;

  *(v1 + 96) = v16;

  *(v1 + 112) = v18;

  *(v1 + 104) = v17;

  *(v1 + 120) = v19;

  *(v1 + 128) = v20;

  *(v1 + 136) = v51;

  *(v1 + 144) = v52;

  *(v1 + 152) = v53;

  *(v1 + 160) = v54;

  *(v1 + 168) = v55;

  swift_beginAccess();
  *(v1 + 176) = v56;

  *(v1 + 184) = v57;

  *(v1 + 192) = v58;

  *(v1 + 200) = v61;

  *(v1 + 208) = v59;

  *(v1 + 216) = v60;

  *(v1 + 224) = v28;
  *(v1 + 232) = v64;

  *(v1 + 240) = v62;

  *(v1 + 248) = v31;
  *(v1 + 256) = v33;
  *(v1 + 264) = v63;

  *(v1 + 272) = v65;

  *(v1 + 280) = v34;
  *(v1 + 288) = v40;
  *(v1 + 296) = v39;
  *(v1 + 297) = v38;
  *(v1 + 336) = v26;

  *(v1 + 328) = v27;

  *(v1 + 312) = v29;

  *(v1 + 320) = v30;

  *(v1 + 304) = v37;

  *(v1 + 344) = v43;
  *(v1 + 352) = v66;

  *(v1 + 360) = v42;

  *(v1 + 368) = v32;

  *(v1 + 376) = v46;
  *(v1 + 377) = v45;
  *(v1 + 378) = v44;
  *(v1 + 379) = v48;
  *(v1 + 380) = v47;
  *(v1 + 16) = v35;

  *(v1 + 384) = v36;

  *(v1 + 392) = v41;

  v6 = *(v1 + 448);
  v75[2] = *(v1 + 432);
  v75[3] = v6;
  v75[4] = *(v1 + 464);
  v76 = *(v1 + 480);
  v7 = *(v1 + 416);
  v75[0] = *(v1 + 400);
  v75[1] = v7;
  v8 = v72;
  *(v1 + 432) = v71;
  *(v1 + 448) = v8;
  *(v1 + 464) = v73;
  *(v1 + 480) = v74;
  v9 = v70;
  *(v1 + 400) = v69;
  *(v1 + 416) = v9;
  sub_252937BEC(v75);
  swift_beginAccess();
  *(v1 + 488) = v68;

  *(v1 + 496) = v49;
  *(v1 + 504) = v50;
  *(v1 + 512) = v67;

  return v1;
}

uint64_t sub_252E1F258(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 368);
  if (*(v3 + 16))
  {

    sub_25297B278(v4);
    v5 = sub_252DF90DC(v3);

    *(v2 + 368) = v5;
  }

  else
  {
    *(v2 + 368) = a1;
  }

  return v2;
}

uint64_t sub_252E1F2EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_beginAccess();
      v6 = *(v1 + 64);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 64) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
        *(v1 + 64) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v4;
      *(v1 + 64) = v6;
      swift_endAccess();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t sub_252E1F3E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_beginAccess();
      v6 = *(v1 + 176);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 176) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
        *(v1 + 176) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v4;
      *(v1 + 176) = v6;
      swift_endAccess();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t sub_252E1F4E4(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v34 - v5;
  v7 = type metadata accessor for HomeAutomationAutomations();
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = v9;
  if (a1)
  {
    v10 = a1;
    v42 = v9;
    if (a1 >> 62)
    {
      v31 = result;
      v32 = v10;
      v33 = sub_252E378C4();
      v10 = v32;
      v11 = v33;
      result = v31;
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v37 = v6;
        v34[1] = v7;
        v34[2] = result;
        v12 = 0;
        v35 = v10 & 0xC000000000000001;
        v38 = v10;
        v36 = v11;
        do
        {
          v40 = v12;
          if (v35)
          {
            v13 = MEMORY[0x2530ADF00](v12);
          }

          else
          {
            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          type metadata accessor for HomeAutomationDialogTrigger.Builder(0);
          v15 = swift_allocObject();
          v16 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
          v17 = sub_252E36324();
          v18 = *(*(v17 - 8) + 56);
          v19 = 1;
          v18(v15 + v16, 1, 1, v17);
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = 0;
          v20 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home;
          v18(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, 1, 1, v17);
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = 0;
          *(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = 0;
          v41 = v14;
          v21 = [v14 homeEntityName];
          if (v21)
          {
            v22 = v21;
            sub_252E36F34();

            v23 = v37;
            sub_252E37024();

            v19 = 0;
          }

          else
          {
            v23 = v37;
          }

          v24 = 1;
          v18(v23, v19, 1, v17);
          swift_beginAccess();
          sub_252956BAC(v23, v15 + v16);
          swift_endAccess();
          sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
          v25 = [v41 home];
          if (v25)
          {
            v26 = v25;
            sub_252E36F34();

            v27 = v39;
            sub_252E37024();

            v24 = 0;
          }

          else
          {
            v27 = v39;
          }

          v18(v27, v24, 1, v17);
          swift_beginAccess();
          sub_252956BAC(v27, v15 + v20);
          swift_endAccess();
          sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
          type metadata accessor for HomeAutomationDialogTrigger(0);
          swift_allocObject();
          v28 = sub_252A09E4C(v15);
          type metadata accessor for HomeAutomationAutomation();
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = v28;
          MEMORY[0x2530AD700]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          v12 = v40 + 1;
          sub_252E372D4();

          swift_setDeallocating();
          sub_25293847C(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event, &qword_27F540298, &unk_252E3C270);
          sub_25293847C(v15 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, &qword_27F540298, &unk_252E3C270);
          swift_deallocClassInstance();
          v10 = v38;
        }

        while (v36 != v12);
        v30 = v42;

        goto LABEL_21;
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_21:
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v30;
  }

  return result;
}

uint64_t sub_252E1FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_252E1FA68, 0, 0);
}

uint64_t sub_252E1FA68()
{
  v1 = [*(v0 + 24) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 32);
  v5 = sub_252E1F4E4(v3);

  v6 = *(sub_252BF6CBC() + 2);

  v7 = v4[12];
  v8 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 9, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;

  v10 = sub_252E1FE00();
  (*(v8 + 56))(sub_252E1FFC8, v9, v6 > 5, v10, 0, 0, v7, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252E1FC18(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 112), sizeof(__dst));
  memcpy(v7, (a1 + 112), sizeof(v7));

  sub_2529D291C(__dst, v6);
  v4 = sub_252953488(0, v7, 0);
  sub_252BFDE5C(a2, v4);
}

uint64_t sub_252E1FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252E1FA44(a1, v6, a3);
}

void *sub_252E1FD9C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverTriggerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252E1FE00()
{
  v0 = sub_252E33C64();
  swift_allocObject();
  v1 = sub_252E33C54();
  v7[3] = v0;
  v7[4] = MEMORY[0x277D5BD58];
  v7[0] = v1;
  sub_252E33F34();
  swift_allocObject();
  sub_252E33C54();
  v2 = sub_252E334C4();
  swift_allocObject();
  v3 = sub_252E334B4();
  v8[3] = v2;
  v8[4] = MEMORY[0x277D5B808];
  v8[0] = v3;
  sub_252947E5C(0, 0x6C7070612E6D6F63, 0xEE00656D6F482E65);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

id sub_252E1FF00(void *a1)
{
  result = [a1 filters];
  if (result)
  {
    v3 = result;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
LABEL_4:
        v5 = sub_252D9F9E0(v4);

        if (v5)
        {
          return ([a1 discoveryType] == 1);
        }

        return 0;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

char *AutomateHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AutomateHomeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AutomateHomeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AutomateHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomateHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AutomateHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AutomateHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id AutomateHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id AutomateHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for AutomateHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E20664@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E213B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_252E20698@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 automationIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_252E32E64();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_252E32E84();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_252E2073C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_252C4AE84(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_252E32E44();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setAutomationIdentifier_];
}

void sub_252E20868(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 automatedEntityIdentifiers];
  if (v3)
  {
    v4 = v3;
    sub_252E32E84();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E208D8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_252E32E84();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAutomatedEntityIdentifiers_];
}

uint64_t sub_252E20998()
{
  v1 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *AutomateHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AutomateHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutomateHomeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AutomateHomeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AutomateHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AutomateHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomateHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id AutomateHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E20D9C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id AutomateHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id AutomateHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AutomateHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AutomateHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_252E20FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2136C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E20FF8(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

uint64_t sub_252E21090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E21380(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id _s22HomeAutomationInternal08AutomateA23TriggerResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_252E2116C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_252E36E24();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_252E21234(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_252E36E44();
  v8 = a4;
  v9 = sub_252E36E24();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithJSONDictionary_forIntent_, v9, v8);

  if (v11)
  {
  }

  return v11;
}

id sub_252E21334(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_252E2136C(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252E21380(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E213B8(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E2144C()
{
  result = qword_27F5464B8;
  if (!qword_27F5464B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomateHomeIntentResponseCode, &type metadata for AutomateHomeIntentResponseCode, v0, v1);
    atomic_store(result, &qword_27F5464B8);
  }

  return result;
}

unint64_t sub_252E214A4()
{
  result = qword_27F5464C0;
  if (!qword_27F5464C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomateHomeTriggerUnsupportedReason, &type metadata for AutomateHomeTriggerUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F5464C0);
  }

  return result;
}

unint64_t sub_252E214FC()
{
  result = qword_27F5464C8;
  if (!qword_27F5464C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomateHomeAutomatableTaskUnsupportedReason, &type metadata for AutomateHomeAutomatableTaskUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F5464C8);
  }

  return result;
}

char *DiscoverHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DiscoverHomeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiscoverHomeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DiscoverHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DiscoverHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DiscoverHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DiscoverHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DiscoverHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DiscoverHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DiscoverHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E21CCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2275C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E21D00(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_252E37264();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_252E21D74(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_252E21E40()
{
  v1 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DiscoverHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DiscoverHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoverHomeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DiscoverHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DiscoverHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DiscoverHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DiscoverHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E22268(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DiscoverHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DiscoverHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DiscoverHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

void *sub_252E224A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 1;
  *a2 = *result == 1;
  *(a2 + 8) = v2;
  return result;
}

id DiscoverHomeFiltersResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DiscoverHomeFiltersResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E22724(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E2275C(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E227C8()
{
  result = qword_27F5464D8;
  if (!qword_27F5464D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoverHomeIntentResponseCode, &type metadata for DiscoverHomeIntentResponseCode, v0, v1);
    atomic_store(result, &qword_27F5464D8);
  }

  return result;
}

unint64_t sub_252E22820()
{
  result = qword_27F5464E0;
  if (!qword_27F5464E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoverHomeFiltersUnsupportedReason, &type metadata for DiscoverHomeFiltersUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F5464E0);
  }

  return result;
}

char *ShowHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_252E229CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E22A3C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeFilter();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setFilters_];
}

id ShowHomeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShowHomeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ShowHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ShowHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ShowHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ShowHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ShowHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ShowHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E23078@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E23ACC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E230AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 punchOutURL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
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

void sub_252E23114(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_252E36F04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPunchOutURL_];
}

uint64_t sub_252E231CC()
{
  v1 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ShowHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ShowHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowHomeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShowHomeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ShowHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShowHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ShowHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E235F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ShowHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ShowHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ShowHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id ShowHomeFiltersResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ShowHomeFiltersResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ShowHomeFiltersResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E23A94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E23ACC(unint64_t result)
{
  if (result - 100 >= 6)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E23B3C()
{
  result = qword_27F5464F0;
  if (!qword_27F5464F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowHomeIntentResponseCode, &type metadata for ShowHomeIntentResponseCode, v0, v1);
    atomic_store(result, &qword_27F5464F0);
  }

  return result;
}

unint64_t sub_252E23B94()
{
  result = qword_27F5464F8;
  if (!qword_27F5464F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowHomeFiltersUnsupportedReason, &type metadata for ShowHomeFiltersUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F5464F8);
  }

  return result;
}

id sub_252E23CA0()
{
  v1 = [*v0 userTask];

  return v1;
}

char *ControlHomeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ControlHomeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlHomeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ControlHomeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ControlHomeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ControlHomeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ControlHomeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ControlHomeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ControlHomeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_252E36F04();

  v8 = sub_252E36F04();

  if (a5)
  {
    v9 = sub_252E36E24();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ControlHomeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_252E24354@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E24D98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_252E24388(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_252E37264();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_252E243FC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_252E244C8()
{
  v1 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ControlHomeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ControlHomeIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlHomeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlHomeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ControlHomeIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ControlHomeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ControlHomeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ControlHomeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E248CC(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ControlHomeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ControlHomeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ControlHomeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ControlHomeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_252E36E24();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlHomeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_252E24B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E24DB4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E24B98(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_252E36E24();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_252E24C60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_252E36E44();
  v8 = a4;
  v9 = sub_252E36E24();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithJSONDictionary_forIntent_, v9, v8);

  if (v11)
  {
  }

  return v11;
}

id sub_252E24D60(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E24D98(unint64_t result)
{
  if (result - 100 >= 0xE && result >= 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252E24DB4(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E24E5C()
{
  result = qword_27F546508;
  if (!qword_27F546508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeIntentResponseCode, &type metadata for ControlHomeIntentResponseCode, v0, v1);
    atomic_store(result, &qword_27F546508);
  }

  return result;
}

unint64_t sub_252E24EB4()
{
  result = qword_27F546510;
  if (!qword_27F546510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeUserTaskUnsupportedReason, &type metadata for ControlHomeUserTaskUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F546510);
  }

  return result;
}

unint64_t sub_252E24F0C()
{
  result = qword_27F546518;
  if (!qword_27F546518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeFiltersUnsupportedReason, &type metadata for ControlHomeFiltersUnsupportedReason, v0, v1);
    atomic_store(result, &qword_27F546518);
  }

  return result;
}

unint64_t sub_252E2508C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E2541C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_252E250C0(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_252E2514C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id TriggerEventResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerEventResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerEventResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id TriggerEventResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TriggerEventResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E2541C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25454()
{
  result = qword_27F546520;
  if (!qword_27F546520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerEvent, &type metadata for TriggerEvent, v0, v1);
    atomic_store(result, &qword_27F546520);
  }

  return result;
}

unint64_t TriggerType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_252E2550C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id TriggerTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id TriggerTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TriggerTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E25814()
{
  result = qword_27F546528;
  if (!qword_27F546528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerType, &type metadata for TriggerType, v0, v1);
    atomic_store(result, &qword_27F546528);
  }

  return result;
}

unint64_t sub_252E258D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E25BD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeEntityTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeEntityTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeEntityTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E25BD0(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25C08()
{
  result = qword_27F546530;
  if (!qword_27F546530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeEntityType, &type metadata for HomeEntityType, v0, v1);
    atomic_store(result, &qword_27F546530);
  }

  return result;
}

unint64_t sub_252E25CCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E25FC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeDeviceTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeDeviceTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeDeviceTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeDeviceTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeDeviceTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E25FC4(unint64_t result)
{
  if (result > 0x2F)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E25FFC()
{
  result = qword_2814B0E40;
  if (!qword_2814B0E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeDeviceType, &type metadata for HomeDeviceType, v0, v1);
    atomic_store(result, &qword_2814B0E40);
  }

  return result;
}

unint64_t sub_252E260C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E263B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeSceneTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeSceneTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeSceneTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeSceneTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeSceneTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E263B8(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E263F0()
{
  result = qword_27F546538;
  if (!qword_27F546538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeSceneType, &type metadata for HomeSceneType, v0, v1);
    atomic_store(result, &qword_27F546538);
  }

  return result;
}

id DiscoveryTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DiscoveryTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DiscoveryTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DiscoveryTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiscoveryTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E267A0()
{
  result = qword_27F546540;
  if (!qword_27F546540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoveryType, &type metadata for DiscoveryType, v0, v1);
    atomic_store(result, &qword_27F546540);
  }

  return result;
}

unint64_t sub_252E26864@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E26B5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeUserTaskTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeUserTaskTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeUserTaskTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E26B5C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E26B94()
{
  result = qword_27F546548;
  if (!qword_27F546548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeUserTaskType, &type metadata for HomeUserTaskType, v0, v1);
    atomic_store(result, &qword_27F546548);
  }

  return result;
}

unint64_t sub_252E26C58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E26F50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeAttributeTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E26F50(unint64_t result)
{
  if (result > 0x43)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E26F88()
{
  result = qword_27F546550;
  if (!qword_27F546550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeType, &type metadata for HomeAttributeType, v0, v1);
    atomic_store(result, &qword_27F546550);
  }

  return result;
}

unint64_t sub_252E2704C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E27344(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeValueTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeValueTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeValueTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeValueTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeAttributeValueTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E27344(unint64_t result)
{
  if (result == 8)
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_252E2738C()
{
  result = qword_27F546558;
  if (!qword_27F546558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeValueType, &type metadata for HomeAttributeValueType, v0, v1);
    atomic_store(result, &qword_27F546558);
  }

  return result;
}

unint64_t HomeAttributeLimit.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id HomeAttributeLimitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeLimitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeLimitResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252E27730()
{
  result = qword_27F546560;
  if (!qword_27F546560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeLimit, &type metadata for HomeAttributeLimit, v0, v1);
    atomic_store(result, &qword_27F546560);
  }

  return result;
}

id HomeAttributeUnitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeUnitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeUnitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeUnitResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeAttributeUnitResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E27AE0()
{
  result = qword_27F546568;
  if (!qword_27F546568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeUnit, &type metadata for HomeAttributeUnit, v0, v1);
    atomic_store(result, &qword_27F546568);
  }

  return result;
}

id RecurrenceFrequencyResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RecurrenceFrequencyResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecurrenceFrequencyResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RecurrenceFrequencyResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecurrenceFrequencyResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E27E90()
{
  result = qword_27F546570;
  if (!qword_27F546570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecurrenceFrequency, &type metadata for RecurrenceFrequency, v0, v1);
    atomic_store(result, &qword_27F546570);
  }

  return result;
}

id DayOfWeekOptionsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DayOfWeekOptionsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DayOfWeekOptionsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DayOfWeekOptionsResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DayOfWeekOptionsResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E28240()
{
  result = qword_27F546578;
  if (!qword_27F546578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DayOfWeekOptions, &type metadata for DayOfWeekOptions, v0, v1);
    atomic_store(result, &qword_27F546578);
  }

  return result;
}

unint64_t sub_252E28304@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E285FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeTaskOutcomeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeTaskOutcomeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeTaskOutcomeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E285FC(unint64_t result)
{
  if (result > 0x22)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28634()
{
  result = qword_27F546580;
  if (!qword_27F546580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeTaskOutcome, &type metadata for HomeTaskOutcome, v0, v1);
    atomic_store(result, &qword_27F546580);
  }

  return result;
}

unint64_t sub_252E286F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E289F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeModeTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeModeTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeModeTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeModeTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeAttributeModeTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E289F0(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28A28()
{
  result = qword_27F546588;
  if (!qword_27F546588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeModeType, &type metadata for HomeAttributeModeType, v0, v1);
    atomic_store(result, &qword_27F546588);
  }

  return result;
}

unint64_t sub_252E28AEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252E28DE4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id HomeAttributeStateTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeStateTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id HomeAttributeStateTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252E28DE4(unint64_t result)
{
  if (result > 0x11)
  {
    return 0;
  }

  return result;
}

unint64_t sub_252E28E1C()
{
  result = qword_27F546590;
  if (!qword_27F546590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeStateType, &type metadata for HomeAttributeStateType, v0, v1);
    atomic_store(result, &qword_27F546590);
  }

  return result;
}

id sub_252E28EC0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E28F24(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_252E2901C()
{
  result = qword_27F546598;
  if (!qword_27F546598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F546598);
  }

  return result;
}

id sub_252E29068(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AutomatableResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Automatable.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Automatable.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Automatable();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id Automatable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Automatable.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Automatable();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AutomatableResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AutomatableResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AutomatableResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E298CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id TriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id TriggerValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for TriggerValue();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id TriggerValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TriggerValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TriggerValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E29D10(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E29DC4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E29F28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id TriggerValueResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerValueResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerValueResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2A318(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2A3A4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2A408(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2A500(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TriggerConditionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_252E2A564(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recurrence];
  if (v3)
  {
    v4 = v3;
    sub_252E32BA4();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2A5D4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_252E32BA4();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRecurrence_];
}

id TriggerCondition.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id TriggerCondition.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for TriggerCondition();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id TriggerCondition.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TriggerCondition.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TriggerCondition();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TriggerConditionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id TriggerConditionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TriggerConditionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2AE4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2AF2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 outerDeviceType];
  *a2 = result;
  return result;
}

id sub_252E2AFBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceType];
  *a2 = result;
  return result;
}

id sub_252E2B004(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2B068(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2B160(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeFilterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_252E2B1C4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 entityIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2B22C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEntityIdentifiers_];
}

void sub_252E2B29C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_252E2B300(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_252E36F04();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id HomeFilter.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeFilter.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeFilter();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeFilter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeFilter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeFilter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HomeFilterResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeFilterResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeFilterResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2BB70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2BC5C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a4@<X8>)
{
  v5 = [*a1 *a2];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

void sub_252E2BCC0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id HomeEntity.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeEntity.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeEntity();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeEntity.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeEntity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeEntity();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2C0E4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2C198(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2C2FC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeEntityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2C6EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_252E2C7CC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2C830(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2C928(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeUserTask.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeUserTask.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeUserTask();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeUserTask.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeUserTask.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeUserTask();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HomeUserTaskResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2D18C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2D230(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
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

void sub_252E2D298(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_252E36F04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setStringValue_];
}

id HomeAttributeValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeValue();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2D6C0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2D774(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2D8D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeValueResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeValueResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeValueResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2DCC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeAttributeRange.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeRange.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeRange();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeRange.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeRange.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeRange();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2E16C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2E220(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2E384(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeRangeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeRangeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeRangeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeRangeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2E774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id RecurrenceRule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id RecurrenceRule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for RecurrenceRule();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id RecurrenceRule.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RecurrenceRule.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecurrenceRule();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2EBD0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2EC84(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2EDE8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___RecurrenceRuleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id RecurrenceRuleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RecurrenceRuleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecurrenceRuleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2F1D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeUserTaskResponse.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeUserTaskResponse.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeUserTaskResponse();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeUserTaskResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeUserTaskResponse.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeUserTaskResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E2F640(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E2F6F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E2F858(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeUserTaskResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeUserTaskResponseResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeUserTaskResponseResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeUserTaskResponseResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E2FC48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E2FCE0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 taskResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeUserTaskResponse();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E2FD50(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTaskResponses_];
}

id HomeEntityResponse.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeEntityResponse.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeEntityResponse();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeEntityResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeEntityResponse.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeEntityResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E30180(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E30234(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E30398(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeEntityResponseResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeEntityResponseResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeEntityResponseResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeEntityResponseResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E30788(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E3082C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 cleanModes];
  v4 = sub_252E37264();

  *a2 = v4;
}

void sub_252E30888(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 targetAreas];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeAttributeTargetArea();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_252E308F8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for HomeAttributeTargetArea();
    v3 = sub_252E37254();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTargetAreas_];
}

id HomeAttributeCleaningJob.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeCleaningJob.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeCleaningJob();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeCleaningJob.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeCleaningJob.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeCleaningJob();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E30D28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E30DDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E30F40(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeCleaningJobResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeCleaningJobResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeCleaningJobResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeCleaningJobResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E31330(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_252E313E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
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

void sub_252E31448(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_252E36F04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName_];
}

id HomeAttributeTargetArea.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeTargetArea.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeTargetArea();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeTargetArea.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeTargetArea.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeTargetArea();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E31870(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E31924(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E31A88(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetAreaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeTargetAreaResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTargetAreaResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTargetAreaResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E31E78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id HomeAttributeTargetMap.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id HomeAttributeTargetMap.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for HomeAttributeTargetMap();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id HomeAttributeTargetMap.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeAttributeTargetMap.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeAttributeTargetMap();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252E322E0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_252E32394(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E2901C();

    sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    sub_252E2901C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_252E2901C();
  v2 = sub_252E37254();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_252E324F8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___HomeAttributeTargetMapResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id HomeAttributeTargetMapResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_252E36E24();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id HomeAttributeTargetMapResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_252E36E24();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for HomeAttributeTargetMapResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_252E328E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}