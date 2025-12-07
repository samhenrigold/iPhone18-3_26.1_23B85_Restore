void sub_226FF2024()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
  v2 = *v0;
  v3 = sub_22766CFF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_226EA1E2C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_226FF21EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9938, &qword_227674D78);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v17 *= 16;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = *(v4 + 48) + v18;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v25;
        sub_226EB396C(v20, v21, v22);
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

void *sub_226FF2414()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9908, &qword_227674D50);
  v4 = *v0;
  v5 = sub_22766CFF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_226E93170(*(v4 + 48) + v22, v28, &qword_27D7B88C0, &unk_22767A720);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        result = sub_226E95D18(v21, *(v30 + 48) + v22, &qword_27D7B88C0, &unk_22767A720);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
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

        v1 = v27;
        v6 = v30;
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

void sub_226FF2678(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        v20 = *(v4 + 48) + 24 * v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = *(v6 + 48) + 24 * v19;
        *v25 = *v20;
        *(v25 + 8) = v22;
        *(v25 + 16) = v23;
        *(*(v6 + 56) + 8 * v19) = v24;
        sub_226EB396C(v21, v22, v23);
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

void sub_226FF27E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9880, &qword_227674CD0);
  v2 = *v0;
  v3 = sub_22766CFF0();
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

void sub_226FF295C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_226FF2AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B0, &qword_227674D00);
  v30 = v0;
  v1 = *v0;
  v2 = sub_22766CFF0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 24 * v16;
        v18 = *(v1 + 48) + 24 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v16 *= 40;
        v22 = *(v1 + 56) + v16;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v3 + 48) + v17;
        *v28 = v19;
        *(v28 + 8) = v20;
        *(v28 + 16) = v21;
        v29 = *(v3 + 56) + v16;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;
        sub_226EB396C(v19, v20, v21);

        result = sub_226EB396C(v25, v26, v27);
      }

      while (v11);
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
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
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

    *v30 = v3;
  }

  return result;
}

void sub_226FF2C6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A8, &qword_227674CF8);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
}

void sub_226FF2DCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B8, &qword_227674D08);
  v2 = *v0;
  v3 = sub_22766CFF0();
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

void *sub_226FF2F28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        result = sub_226EB396C(v19, v20, v21);
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

char *sub_226FF30B0()
{
  v1 = v0;
  v39 = sub_227668240();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9998, &qword_227674DC0);
  v3 = *v0;
  v4 = sub_22766CFF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 24 * v18;
        v20 = *(v3 + 56);
        v21 = *(v3 + 48) + 24 * v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v41;
        v26 = *(v41 + 72) * v18;
        v28 = v38;
        v27 = v39;
        (*(v41 + 16))(v38, v20 + v26, v39);
        v29 = v40;
        v30 = *(v40 + 48) + v19;
        *v30 = v22;
        *(v30 + 8) = v23;
        *(v30 + 16) = v24;
        v31 = *(v29 + 56);
        v32 = *(v25 + 32);
        v3 = v37;
        v32(v31 + v26, v28, v27);
        result = sub_226EB396C(v22, v23, v24);
        v13 = v42;
      }

      while (v42);
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

        v1 = v33;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v34 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

void *sub_226FF334C()
{
  v1 = v0;
  v29 = sub_227665100();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C8, &qword_227674D18);
  v3 = *v0;
  v4 = sub_22766CFF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_226FF367C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A80, &qword_227674EA8);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
        v22 = 40 * v17;
        sub_226E91B50(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_226E92AB8(v25, *(v4 + 56) + v22);
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

void *sub_226FF3860()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9740, &qword_227674BA0);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
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

  return result;
}

id sub_226FF39D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A0, &qword_227674CF0);
  v4 = *v0;
  v5 = sub_22766CFF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_226E93170(*(v4 + 56) + v22, v27, &qword_27D7B9628, &unk_227674860);
        v23 = v29;
        *(*(v29 + 48) + 8 * v19) = v20;
        sub_226E95D18(v21, *(v23 + 56) + v22, &qword_27D7B9628, &unk_227674860);
        result = v20;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
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

void *sub_226FF3C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A60, &qword_227674E88);
  v2 = *v0;
  v3 = sub_22766CFF0();
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

  return result;
}

char *sub_226FF3E24(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v49 = a1(0);
  v52 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v38 - v10;
  v47 = (a2)(0, v9);
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_22766CFF0();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v8;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v8 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v14;
  }

  return result;
}

id sub_226FF420C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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

void *sub_226FF437C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9890, &qword_227674CE0);
  v2 = *v0;
  v3 = sub_22766CFF0();
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

void sub_226FF4578(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void sub_226FF46EC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_22766CFF0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

id sub_226FF497C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
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

void *sub_226FF4ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9910, &qword_227674D58);
  v2 = *v0;
  v3 = sub_22766CFF0();
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

id sub_226FF4CB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
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

id sub_226FF4E10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9828, &qword_227674C78);
  v4 = *v0;
  v5 = sub_22766CFF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_226E93170(*(v4 + 48) + v22, v28, &unk_27D7BB9D0, &qword_227671550);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        sub_226E95D18(v21, *(v30 + 48) + v22, &unk_27D7BB9D0, &qword_227671550);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        result = v23;
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

        v1 = v27;
        v6 = v30;
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

void sub_226FF50B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_22766CFF0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

char *sub_226FF533C()
{
  v1 = v0;
  v2 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_227663480();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A70, &qword_227674E98);
  v5 = *v0;
  v6 = sub_22766CFF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_226FF6620(v26 + v28, v37, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_226FF6688(v29, *(v18 + 56) + v28, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

void sub_226FF5674(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
}

id sub_226FF5810(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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

void *sub_226FF5964(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CFF0();
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
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 16 * v19) = v20;
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

id sub_226FF5AB8()
{
  v1 = v0;
  v2 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9748, &qword_227674BA8);
  v4 = *v0;
  v5 = sub_22766CFF0();
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
        sub_226FF6620(*(v4 + 56) + v23, v26, type metadata accessor for AssetMediaStreamLoader.TaskResult);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_226FF6688(v22, *(v24 + 56) + v23, type metadata accessor for AssetMediaStreamLoader.TaskResult);
        result = v21;
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

void *sub_226FF5CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
  v2 = *v0;
  v3 = sub_22766CFF0();
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
        result = sub_226EB396C(v19, v20, v21);
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

char *sub_226FF5E68()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_227668BB0();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D0, &qword_227674C28);
  v5 = *v0;
  v6 = sub_22766CFF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_226FF6620(v26 + v28, v37, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_226FF6688(v29, *(v18 + 56) + v28, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

id sub_226FF61B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v35 = a1(0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_22766CFF0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32[0] = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v36 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v32[1] = v37 + 32;
    v32[2] = v37 + 16;
    for (i = v8; v19; v8 = i)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = v21 | (v15 << 6);
      v25 = *(v8 + 56);
      v26 = *(*(v8 + 48) + 8 * v24);
      v27 = v37;
      v28 = *(v37 + 72) * v24;
      v30 = v34;
      v29 = v35;
      (*(v37 + 16))(v34, v25 + v28, v35);
      v31 = v36;
      *(*(v36 + 48) + 8 * v24) = v26;
      (*(v27 + 32))(*(v31 + 56) + v28, v30, v29);
      result = v26;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32[0];
        v10 = v36;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

unint64_t sub_226FF6420()
{
  result = qword_27D7B9718;
  if (!qword_27D7B9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9718);
  }

  return result;
}

unint64_t sub_226FF6488()
{
  result = qword_27D7B9720;
  if (!qword_27D7B9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9720);
  }

  return result;
}

unint64_t sub_226FF64E0()
{
  result = qword_28139B818;
  if (!qword_28139B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B818);
  }

  return result;
}

unint64_t sub_226FF6538()
{
  result = qword_28139B820;
  if (!qword_28139B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B820);
  }

  return result;
}

unint64_t sub_226FF658C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D030();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_226FF65D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226FF6620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226FF6688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226FF66F0()
{
  result = qword_28139B768;
  if (!qword_28139B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B768);
  }

  return result;
}

uint64_t RestrictionZone.init(from:)(void *a1)
{
  result = sub_226FF6B90(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_226FF6770()
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_226FF67E4(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_226FF6838@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22766D030();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_226FF68C8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22766D030();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_226FF6920(uint64_t a1)
{
  v2 = sub_226FF6FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226FF695C(uint64_t a1)
{
  v2 = sub_226FF6FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RestrictionZone.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9AA0, &qword_227674ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if (a3)
  {
    sub_22766D470();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_22766D1B0();
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_226FF6FA8();
    sub_22766D480();
    sub_22766D100();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_226FF6B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_226FF6B90(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_226FF6B90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9AB0, &unk_227675090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = sub_22766D440();
  v8 = *(v7 + 16);
  if (!v8)
  {

    goto LABEL_7;
  }

  v25 = v4;
  v26 = v1;
  sub_226E91B50(v7 + 40 * v8 - 8, v27);

  __swift_project_boxed_opaque_existential_0(v27, v28);
  sub_22766D490();
  __swift_destroy_boxed_opaque_existential_0(v27);
  v9 = sub_227665A70();
  if (v9 == 2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_227670CD0;
    v15 = sub_22766D440();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9AB8, &unk_2276750A0);
    v17 = MEMORY[0x22AA98660](v15, v16);
    v19 = v18;

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    sub_22766D340();

    v10 = sub_227669A60();
    sub_226FF7114();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v20, *MEMORY[0x277D4E2C8], v10);
    swift_willThrow();
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_226FF6FA8();
    v11 = v26;
    sub_22766D460();
    if (!v11)
    {
      sub_22766D090();
      v13 = v12;
      (*(v25 + 8))(v6, v3);
      v10 = v13;
    }
  }

  else
  {
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v22 = v26;
    sub_22766D450();
    if (!v22)
    {
      __swift_project_boxed_opaque_existential_0(v27, v28);
      if (sub_22766D1A0())
      {
        __swift_destroy_boxed_opaque_existential_0(v27);
        v10 = 0;
      }

      else
      {
        v10 = sub_227669A60();
        sub_226FF7114();
        swift_allocError();
        (*(*(v10 - 8) + 104))(v23, *MEMORY[0x277D4E2D8], v10);
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(v27);
      }
    }
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

unint64_t sub_226FF6FA8()
{
  result = qword_28139B958;
  if (!qword_28139B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B958);
  }

  return result;
}

unint64_t sub_226FF7010()
{
  result = qword_27D7B9AA8;
  if (!qword_27D7B9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9AA8);
  }

  return result;
}

unint64_t sub_226FF7068()
{
  result = qword_28139B948;
  if (!qword_28139B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B948);
  }

  return result;
}

unint64_t sub_226FF70C0()
{
  result = qword_28139B950;
  if (!qword_28139B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B950);
  }

  return result;
}

unint64_t sub_226FF7114()
{
  result = qword_27D7B8A18;
  if (!qword_27D7B8A18)
  {
    sub_227669A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8A18);
  }

  return result;
}

uint64_t sub_226FF716C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_22766A8A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = sub_2276693C0();
  (*(v6 + 104))(v8, *MEMORY[0x277D4F8E8], v5);
  LOBYTE(v10) = sub_226EC9A38(v8, v13);

  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v15 = __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
    sub_2276693E0();
    v16 = *v15;
    v17 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v18 = sub_22766BFD0();

    v19 = [v17 initWithBundleIdentifier_];

    v20 = *(v16 + 16);
    *(v16 + 16) = v19;

    *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_state) = 1;
    v21 = sub_22766C4B0();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v22;
    sub_2272CAC00(0, 0, v4, &unk_227675250, v23);

    swift_getObjectType();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_226FFDCDC();

    sub_227669A10();

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return result;
}

uint64_t sub_226FF75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_226FF75C0, 0, 0);
}

uint64_t sub_226FF75C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_226FF76B4;

    return sub_226FFA70C();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_226FF76B4()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_226FF77C8, 0, 0);
}

uint64_t sub_226FF77F0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Notification Settings Migration] Received post install activity", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = sub_22766C4B0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  sub_2272CA940(0, 0, v3, &unk_227675260, v14);
}

uint64_t sub_226FF7A70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_226FF7BE8;

    return sub_226FFA70C();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_226FF7DE4;

      return sub_226FF7EF0();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_226FF7BE8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_226FF7CFC, 0, 0);
}

uint64_t sub_226FF7CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226FF7DE4;

    return sub_226FF7EF0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_226FF7DE4()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226FF7EF0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v1[3] = swift_task_alloc();
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FF805C, 0, 0);
}

uint64_t sub_226FF805C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v2 + 16))(v1, *(v0 + 16) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator__migrationEnabled, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 96) != 1)
  {
    sub_22766A600();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = *(v0 + 32);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v18, v19, "[Notification Settings Migration] Migration disabled", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    goto LABEL_9;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_22766AED0();
  v5 = sub_22766BFD0();

  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    sub_22766A600();
    v7 = sub_22766B380();
    v8 = sub_22766C8B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226E8E000, v7, v8, "[Notification Settings Migration] Already migrated", v9, 2u);
      MEMORY[0x22AA9A450](v9, -1, -1);
    }

    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);

    (*(v12 + 8))(v10, v11);
    v15 = *__swift_project_boxed_opaque_existential_0((v14 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v14 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
    v16 = sub_22766C4B0();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;

    sub_2272CA940(0, 0, v13, &unk_227675240, v17);

LABEL_9:

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = swift_task_alloc();
  *(v0 + 88) = v27;
  *v27 = v0;
  v27[1] = sub_226FF8404;

  return sub_226FF8570();
}

uint64_t sub_226FF8404()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226FF8570()
{
  v1[7] = v0;
  v2 = sub_2276658F0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_227667190();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_2276659D0();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_22766B390();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FF87B0, 0, 0);
}

uint64_t sub_226FF87B0(uint64_t a1)
{
  sub_22766A600();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Notification Settings Migration] Started migration", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[28];
  v6 = v1[19];
  v7 = v1[20];
  v8 = v1[7];

  v9 = *(v7 + 8);
  v1[29] = v9;
  v9(v5, v6);
  v10 = __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v8 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
  v18 = *v10;
  v19 = *(*v10 + 16);
  v1[30] = v19;
  if (v19)
  {
    v20 = swift_task_alloc();
    v1[31] = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = v19;
    v22 = swift_task_alloc();
    v1[32] = v22;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B20, &unk_227675220);
    *v22 = v1;
    v22[1] = sub_226FF8E54;
    v15 = sub_226FFDAB0;
    v10 = v1 + 6;
    v14 = 0x8000000227696960;
    v11 = 0;
    v12 = 0;
    v13 = 0xD000000000000016;
    v16 = v20;

    return MEMORY[0x2822007B8](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    v58 = *(MEMORY[0x277D84F90] + 16);
    if (v58)
    {
      v24 = 0;
      v25 = v1[16];
      v26 = v1[12];
      v56 = (v26 + 104);
      v55 = *MEMORY[0x277D52C48];
      v53 = (v25 + 8);
      v57 = v25;
      v54 = (v25 + 32);
      v27 = MEMORY[0x277D84F90];
      v28 = (v26 + 8);
      do
      {
        if (v24 >= *(v23 + 16))
        {
          __break(1u);
          return MEMORY[0x2822007B8](v10, v11, v12, v13, v14, v15, v16, v17);
        }

        v29 = v1[14];
        v30 = v1[13];
        v31 = v1[11];
        v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v32 = *(v57 + 72);
        (*(v57 + 16))(v1[18], v23 + v59 + v32 * v24, v1[15]);
        sub_2276659C0();
        (*v56)(v30, v55, v31);
        v33 = sub_227667180();
        v34 = *v28;
        (*v28)(v30, v31);
        v34(v29, v31);
        if (v33)
        {
          v35 = *v54;
          (*v54)(v1[17], v1[18], v1[15]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F1FB08(0, *(v27 + 16) + 1, 1);
          }

          v37 = *(v27 + 16);
          v36 = *(v27 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_226F1FB08((v36 > 1), v37 + 1, 1);
          }

          v38 = v1[17];
          v39 = v1[15];
          *(v27 + 16) = v37 + 1;
          v10 = v35(v27 + v59 + v37 * v32, v38, v39);
        }

        else
        {
          v10 = (*v53)(v1[18], v1[15]);
        }

        ++v24;
        v1[33] = v27;
        v23 = MEMORY[0x277D84F90];
      }

      while (v58 != v24);

      if (*(v27 + 16))
      {
        __swift_project_boxed_opaque_existential_0((v1[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(v1[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
        v40 = swift_task_alloc();
        v1[34] = v40;
        *v40 = v1;
        v40[1] = sub_226FF9450;
        v41 = v1[10];

        return sub_226EA84C8(v41);
      }

      sub_22766A600();
      v43 = sub_22766B380();
      v48 = sub_22766C8B0();
      if (os_log_type_enabled(v43, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_226E8E000, v43, v48, "[Notification Settings Migration]: No settings to migrate from default of ON", v49, 2u);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      v46 = v1[29];
      v47 = v1[23];
    }

    else
    {

      sub_22766A600();
      v43 = sub_22766B380();
      v44 = sub_22766C8B0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_226E8E000, v43, v44, "[Notification Settings Migration]: No topics to migrate", v45, 2u);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      v46 = v1[29];
      v47 = v1[22];
    }

    v50 = v1[19];
    v51 = v1[7];

    v46(v47, v50);
    sub_226FFA584(v51);

    v52 = v1[1];

    return v52(0);
  }
}

uint64_t sub_226FF8E54()
{

  return MEMORY[0x2822009F8](sub_226FF8F6C, 0, 0);
}

uint64_t sub_226FF8F6C()
{
  result = *(v0 + 48);
  v36 = *(result + 16);
  if (v36)
  {
    v2 = 0;
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v33 = *MEMORY[0x277D52C48];
    v32 = (v4 + 104);
    v34 = v3;
    v30 = (v3 + 8);
    v31 = (v3 + 32);
    v5 = MEMORY[0x277D84F90];
    v35 = *(v0 + 48);
    v6 = (v4 + 8);
    do
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 104);
      v9 = *(v0 + 88);
      v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v10 = *(v34 + 72);
      (*(v34 + 16))(*(v0 + 144), result + v37 + v10 * v2, *(v0 + 120));
      sub_2276659C0();
      (*v32)(v8, v33, v9);
      v11 = sub_227667180();
      v12 = *v6;
      (*v6)(v8, v9);
      v12(v7, v9);
      if (v11)
      {
        v13 = *v31;
        (*v31)(*(v0 + 136), *(v0 + 144), *(v0 + 120));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1FB08(0, *(v5 + 16) + 1, 1);
        }

        v15 = *(v5 + 16);
        v14 = *(v5 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_226F1FB08((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 136);
        v17 = *(v0 + 120);
        *(v5 + 16) = v15 + 1;
        v13(v5 + v37 + v15 * v10, v16, v17);
      }

      else
      {
        (*v30)(*(v0 + 144), *(v0 + 120));
      }

      ++v2;
      *(v0 + 264) = v5;
      result = v35;
    }

    while (v36 != v2);

    if (*(v5 + 16))
    {
      __swift_project_boxed_opaque_existential_0((*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
      v18 = swift_task_alloc();
      *(v0 + 272) = v18;
      *v18 = v0;
      v18[1] = sub_226FF9450;
      v19 = *(v0 + 80);

      return sub_226EA84C8(v19);
    }

    sub_22766A600();
    v20 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v20, v25, "[Notification Settings Migration]: No settings to migrate from default of ON", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    v23 = *(v0 + 232);
    v24 = *(v0 + 184);
  }

  else
  {

    sub_22766A600();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "[Notification Settings Migration]: No topics to migrate", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    v23 = *(v0 + 232);
    v24 = *(v0 + 176);
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 56);

  v23(v24, v27);
  sub_226FFA584(v28);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_226FF9450()
{

  return MEMORY[0x2822009F8](sub_226FF954C, 0, 0);
}

uint64_t sub_226FF954C()
{
  if ((*(v0[9] + 88))(v0[10], v0[8]) == *MEMORY[0x277D51A28])
  {
    v1 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v2 = (v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountProvider);
    v4 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountProvider + 24);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v4);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_226FF9804;

    return MEMORY[0x2821AFC58](v4, v3);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];

    (*(v7 + 8))(v6, v8);
    sub_22766A600();
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "[Notification Settings Migration]: Storefront unavailable, not migrating", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    v12 = v0[29];
    v13 = v0[24];
    v14 = v0[19];
    v15 = v0[7];

    v12(v13, v14);
    sub_226FFA584(v15);

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_226FF9804(uint64_t a1)
{
  *(*v2 + 288) = a1;

  if (v1)
  {

    v3 = sub_226FFA0DC;
  }

  else
  {
    v3 = sub_226FF992C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FF992C()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountDeviceObserver), *(*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountDeviceObserver + 24));
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_226FF99D4;

  return sub_2272BF040();
}

uint64_t sub_226FF99D4(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_226FF9AD4, 0, 0);
}

uint64_t sub_226FF9AD4()
{
  v1 = *(v0 + 304);
  if (v1 && (v2 = *(v1 + 16), , v2 <= 1))
  {
    v12 = (*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_notificationSettingsProvider);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_0(v12, v13);
    v15 = swift_task_alloc();
    *(v0 + 312) = v15;
    *v15 = v0;
    v15[1] = sub_226FF9D54;
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);

    return MEMORY[0x2821AFD30](v17, v16, v13, v14);
  }

  else
  {

    sub_22766A600();
    v3 = sub_22766B380();
    v4 = sub_22766C8B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226E8E000, v3, v4, "[Notification Settings Migration]: Other supported device on the account, not migrating", v5, 2u);
      MEMORY[0x22AA9A450](v5, -1, -1);
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *(v0 + 152);
    v9 = *(v0 + 56);

    v6(v7, v8);
    sub_226FFA584(v9);

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_226FF9D54()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226FFA288;
  }

  else
  {
    v2 = sub_226FF9E68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226FF9E68(uint64_t a1)
{
  v23 = v1;
  sub_22766A600();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[36];
  v6 = v1[33];
  v7 = v1[29];
  v8 = v1[27];
  v9 = v1[19];
  if (v4)
  {
    v21 = v1[27];
    v10 = v1[15];
    v20 = v1[29];
    v11 = swift_slowAlloc();
    v19 = v9;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x22AA98660](v6, v10);
    v15 = v14;

    v16 = sub_226E97AE8(v13, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Notification Settings Migration] Migrated setting %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v20(v21, v19);
  }

  else
  {

    v7(v8, v9);
  }

  sub_226FFA584(v1[7]);

  v17 = v1[1];

  return v17(1);
}

uint64_t sub_226FFA0DC(uint64_t a1)
{
  sub_22766A600();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Notification Settings Migration]: No account to migrate settings", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[29];
  v6 = v1[25];
  v7 = v1[19];
  v8 = v1[7];

  v5(v6, v7);
  sub_226FFA584(v8);

  v9 = v1[1];

  return v9(0);
}

uint64_t sub_226FFA288(uint64_t a1)
{
  v30 = v1;
  v2 = v1[40];
  sub_22766A600();

  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[40];
    v7 = v1[36];
    v8 = v1[33];
    v27 = v1[21];
    v28 = v1[29];
    v26 = v1[19];
    v9 = v1[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315394;
    v12 = MEMORY[0x22AA98660](v8, v9);
    v14 = v13;

    v15 = sub_226E97AE8(v12, v14, &v29);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v16 = MEMORY[0x22AA995D0](v1[3], v1[4]);
    v18 = sub_226E97AE8(v16, v17, &v29);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Notification Settings Migration]: Failed to update settings: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v28(v27, v26);
  }

  else
  {
    v19 = v1[40];
    v20 = v1[36];
    v21 = v1[29];
    v22 = v1[21];
    v23 = v1[19];

    v21(v22, v23);
  }

  sub_226FFA584(v1[7]);

  v24 = v1[1];

  return v24(0);
}

uint64_t sub_226FFA584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_22766AED0();
  v6 = sub_22766BFD0();

  [v5 setBool:1 forKey:v6];

  v7 = *__swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(a1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
  v8 = sub_22766C4B0();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_2272CA940(0, 0, v4, &unk_227675230, v9);
}

uint64_t sub_226FFA70C()
{
  v1[247] = v0;
  v2 = sub_22766B390();
  v1[253] = v2;
  v1[259] = *(v2 - 8);
  v1[265] = swift_task_alloc();
  v1[271] = swift_task_alloc();
  v1[277] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[289] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v1[301] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFA814, 0, 0);
}

uint64_t sub_226FFA814(uint64_t a1)
{
  v2 = v1[301];
  v3 = v1[259];
  v4 = v1[253];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v3 + 8);
  v1[307] = v5;
  v1[313] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = objc_opt_self();
  v1[319] = v6;
  v7 = [v6 standardUserDefaults];
  v8 = sub_22766BFD0();
  v9 = [v7 BOOLForKey_];

  v10 = sub_227669410();
  if (v10 == sub_227669410())
  {
    v11 = [objc_opt_self() sharedBehavior];
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200928](v11, v12, v13, v14);
    }

    v15 = v11;
    v16 = [v11 fitnessMode];

    if (!((v16 != 2) | v9 & 1))
    {
      if (BYSetupAssistantNeedsToRun())
      {
        sub_22766A730();
        v17 = sub_22766B380();
        v18 = sub_22766C8B0();
        v19 = os_log_type_enabled(v17, v18);
        v20 = v1[271];
        v21 = v1[253];
        if (v19)
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_226E8E000, v17, v18, "[Amelia Badging] In buddy flow, not launching Fitness", v22, 2u);
          MEMORY[0x22AA9A450](v22, -1, -1);
        }

        v5(v20, v21);
        goto LABEL_8;
      }

      v25 = v1[247];
      v26 = swift_allocObject();
      v1[325] = v26;
      *(v26 + 16) = v25;
      v27 = v25;
      swift_asyncLet_begin();
      v28 = swift_allocObject();
      v1[331] = v28;
      *(v28 + 16) = v27;
      v29 = v27;
      swift_asyncLet_begin();
      v30 = swift_allocObject();
      v1[337] = v30;
      *(v30 + 16) = v29;
      v31 = v29;
      swift_asyncLet_begin();
      v13 = sub_226FFAC14;
      v11 = v1 + 82;
      v12 = v1 + 2890;
      v14 = v1 + 248;

      return MEMORY[0x282200928](v11, v12, v13, v14);
    }
  }

LABEL_8:

  v23 = v1[1];

  return v23();
}

uint64_t sub_226FFAC30(uint64_t a1)
{
  if (*(v1 + 2890) == 1)
  {

    return MEMORY[0x282200930](v1 + 16, v1 + 2889, sub_226FFAD88, v1 + 2176);
  }

  else
  {
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Content unavailable, not launching Fitness", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v1 + 2456);
    v6 = *(v1 + 2216);
    v7 = *(v1 + 2024);

    v5(v6, v7);

    return MEMORY[0x282200920](v1 + 1296, v1 + 2888, sub_226FFB5D0, v1 + 2032);
  }
}

uint64_t sub_226FFAD88()
{
  *(v1 + 2744) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 1296, v1 + 2888, sub_226FFB648, v1 + 2224);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_226FFADCC, 0, 0);
  }
}

uint64_t sub_226FFADCC(uint64_t a1)
{
  if (*(v1 + 2889) == 1)
  {

    return MEMORY[0x282200928](v1 + 1296, v1 + 2888, sub_226FFAF24, v1 + 2512);
  }

  else
  {
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Privacy acknowledged, not launching Fitness", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v1 + 2456);
    v6 = *(v1 + 2264);
    v7 = *(v1 + 2024);

    v5(v6, v7);

    return MEMORY[0x282200920](v1 + 1296, v1 + 2888, sub_226FFB558, v1 + 2368);
  }
}

uint64_t sub_226FFAF40(uint64_t a1)
{
  if (*(v1 + 2888) == 1)
  {
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Launching Fitness for Amelia Badging", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v1 + 2456);
    v6 = *(v1 + 2360);
    v7 = *(v1 + 2024);

    v5(v6, v7);
    v8 = swift_task_alloc();
    *(v1 + 2792) = v8;
    *v8 = v1;
    v8[1] = sub_226FFB158;

    return sub_226FFCEE8();
  }

  else
  {
    sub_22766A730();
    v10 = sub_22766B380();
    v11 = sub_22766C8B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226E8E000, v10, v11, "[Amelia Badging] notification not authorized, not launching Fitness", v12, 2u);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    v13 = *(v1 + 2456);
    v14 = *(v1 + 2312);
    v15 = *(v1 + 2024);

    v13(v14, v15);

    return MEMORY[0x282200920](v1 + 1296, v1 + 2888, sub_226FFB4C4, v1 + 2560);
  }
}

uint64_t sub_226FFB158()
{
  v2 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 1296, v2 + 2888, sub_226FFB8C8, v2 + 2704);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226FFB298, 0, 0);
  }
}

uint64_t sub_226FFB298()
{
  v1 = [*(v0 + 2552) standardUserDefaults];
  v2 = sub_22766BFD0();
  [v1 setBool:1 forKey:v2];

  return MEMORY[0x282200920](v0 + 1296, v0 + 2888, sub_226FFB358, v0 + 2848);
}

uint64_t sub_226FFB3EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FFB6DC(uint64_t a1)
{
  v2 = *(v1 + 2744);
  sub_22766A730();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Amelia Badging] Not launching Fitness due to error %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
  }

  (*(v1 + 2456))(*(v1 + 2120), *(v1 + 2024));

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_226FFB95C(uint64_t a1)
{
  v2 = *(v1 + 2840);
  sub_22766A730();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Amelia Badging] Not launching Fitness due to error %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
  }

  (*(v1 + 2456))(*(v1 + 2120), *(v1 + 2024));

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_226FFBB48(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2276658F0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFBC14, 0, 0);
}

uint64_t sub_226FFBC14()
{
  __swift_project_boxed_opaque_existential_0((v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_226FFBCC4;
  v2 = v0[11];

  return sub_226EA84C8(v2);
}

uint64_t sub_226FFBCC4()
{

  return MEMORY[0x2822009F8](sub_226FFBDC0, 0, 0);
}

uint64_t sub_226FFBDC0()
{
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D51A28], v0[8]);
  sub_226FFDA58();
  sub_22766C290();
  sub_22766C290();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22766D190();
  }

  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = *(v0[9] + 8);
  v5(v0[10], v3);
  v5(v2, v3);

  *v4 = v1 & 1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_226FFBF28(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_227666C80();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[7] = v3;
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_226FFC024;

  return sub_226FFC4A8(v3);
}

uint64_t sub_226FFC024()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_226FFC220;
  }

  else
  {
    v2 = sub_226FFC138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226FFC138()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = sub_227666C60();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = v5;
  *(v0 + 24) = v7 & 1;
  *(v0 + 25) = 0;
  sub_226FFD9B0();
  sub_226FFDA04();
  *v4 = sub_227663B30() & 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226FFC220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FFC284(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_226FFC318;

  return sub_226FFC984();
}

uint64_t sub_226FFC318(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_226FFC418, 0, 0);
}

uint64_t sub_226FFC418()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [v1 authorizationStatus];

  *v2 = v3 == 2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_226FFC4A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFC5D0, 0, 0);
}

uint64_t sub_226FFC5D0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_privacyPreferenceDataSource), *(v0[3] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_privacyPreferenceDataSource + 24));
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  sub_227360A74(v1);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = "SeymourServices/EngagementNotificationCoordinator.swift";
  *(v5 + 24) = 55;
  *(v5 + 32) = 2;
  *(v5 + 40) = 197;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_227666C80();
  *v6 = v0;
  v6[1] = sub_226FFC770;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226FFD7B8, v5, v7);
}

uint64_t sub_226FFC770()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FFC8FC, 0, 0);
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_226FFC8FC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226FFC9A4()
{
  sub_2276693E0();
  v1 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v2 = sub_22766BFD0();

  v3 = [v1 initWithBundleIdentifier_];
  v0[4] = v3;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_226FFD6F0();
  *v5 = v0;
  v5[1] = sub_226FFCB04;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x80000002276968B0, sub_226FFD6E8, v4, v6);
}

uint64_t sub_226FFCB04()
{

  return MEMORY[0x2822009F8](sub_226FFCC1C, 0, 0);
}

uint64_t sub_226FFCC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_226FFCC80(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_226FFD73C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FFCE80;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  [a2 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_226FFCE30(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  return sub_22766C450();
}

void sub_226FFCE80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_226FFCEE8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFCFEC, 0, 0);
}

uint64_t sub_226FFCFEC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  sub_2276693E0();
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_appLauncher), *(v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_appLauncher + 24));
  sub_227665920();
  sub_227662470();

  sub_22766AAC0();

  sub_226E97D1C(v2, &unk_27D7BB570, &unk_227670FC0);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = "SeymourServices/EngagementNotificationCoordinator.swift";
  *(v4 + 24) = 55;
  *(v4 + 32) = 2;
  *(v4 + 40) = 212;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_226FFD1A4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D0C, v4, v6);
}

uint64_t sub_226FFD1A4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_226FFD364;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_226FFD2F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FFD2F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FFD364()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

id sub_226FFD41C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementNotificationCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EngagementNotificationCoordinator(uint64_t a1)
{
  result = qword_28139DB28;
  if (!qword_28139DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226FFD5B0(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_226FFD694()
{
  result = qword_27D7B9B10;
  if (!qword_27D7B9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B10);
  }

  return result;
}

unint64_t sub_226FFD6F0()
{
  result = qword_281398A88;
  if (!qword_281398A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A88);
  }

  return result;
}

uint64_t sub_226FFD73C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);

  return sub_226FFCE30(a1);
}

uint64_t sub_226FFD7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_226FFBB48(a1, v4);
}

uint64_t sub_226FFD870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_226FFBF28(a1);
}

uint64_t sub_226FFD910(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_226FFC284(a1);
}

unint64_t sub_226FFD9B0()
{
  result = qword_28139B5B0;
  if (!qword_28139B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B5B0);
  }

  return result;
}

unint64_t sub_226FFDA04()
{
  result = qword_28139B5A8;
  if (!qword_28139B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B5A8);
  }

  return result;
}

unint64_t sub_226FFDA58()
{
  result = qword_28139B798;
  if (!qword_28139B798)
  {
    sub_2276658F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B798);
  }

  return result;
}

uint64_t sub_226FFDAB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227217930(a1, v4, v5, v6);
}

uint64_t sub_226FFDB6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_227217930(a1, v4, v5, v6);
}

uint64_t sub_226FFDC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_226FF75A0(a1, v4, v5, v6);
}

unint64_t sub_226FFDCDC()
{
  result = qword_28139DEC0;
  if (!qword_28139DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DEC0);
  }

  return result;
}

uint64_t sub_226FFDD30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_226FF7A50(a1, v4, v5, v6);
}

uint64_t sub_226FFDE0C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FFDEDC();
  }

  return result;
}

uint64_t sub_226FFDE64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_22766A030();
    sub_226FFE670(v3, v4);
  }

  return result;
}

uint64_t sub_226FFDEDC()
{
  v0 = sub_227667900();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  sub_2276678E0();
  sub_226E923DC(v3, v7);
  (*(v1 + 8))(v3, v0);
  v12 = sub_227669290();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_226FFE1A8;
  *(v13 + 24) = 0;
  v12(sub_226E93814, v13);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_226FFE1A8(uint64_t a1)
{
  v2 = sub_227662750();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227665AD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_22766B390();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v18);
  v20 = (&v35 - v19);
  sub_226FFEA28(a1, &v35 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_22766A640();
    v22 = v21;
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_226E8E000, v23, v24, "Failed to schedule fetch service subscription: %@", v25, 0xCu);
      sub_226F2534C(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    else
    {
    }

    return (*(v37 + 8))(v17, v38);
  }

  else
  {
    (*(v6 + 32))(v11, v20, v5);
    sub_22766A640();
    (*(v6 + 16))(v8, v11, v5);
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      sub_227662740();
      v32 = sub_227665AA0();
      (*(v35 + 8))(v4, v36);
      LODWORD(v36) = v32 & 1;
      v33 = *(v6 + 8);
      v33(v8, v5);
      *(v31 + 4) = v36;
      _os_log_impl(&dword_226E8E000, v29, v30, "Scheduled service subscription fetch: %{BOOL}d", v31, 8u);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    else
    {
      v33 = *(v6 + 8);
      v33(v8, v5);
    }

    (*(v37 + 8))(v14, v38);
    return (v33)(v11, v5);
  }
}

uint64_t sub_226FFE670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766A2B0();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 == 0xD000000000000037 && 0x8000000227696A30 == a2 || (result = sub_22766D190(), (result & 1) != 0))
  {
    sub_22766A640();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v23 = v4;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "[ServiceSubscriptionSystem] Handling service subscription changed stream event", v19, 2u);
      v21 = v20;
      v4 = v23;
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    swift_getObjectType();
    (*(v8 + 104))(v10, *MEMORY[0x277D4E120], v7);
    sub_227669660();
    (*(v8 + 8))(v10, v7);
    swift_getObjectType();
    sub_22766A2A0();
    sub_2276699D0();
    return (*(v24 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_226FFE9B4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_226FFEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SQLiteDatabase.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SQLiteDatabase(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226FFF108(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350);
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x22AA996B0](1);
    sub_226FFF1B4(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_22766BF60();
    v10 = sub_227669C30();
    MEMORY[0x22AA996B0](v10);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
  }
}

uint64_t SQLiteDatabase.hashValue.getter()
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)(v1);
  return sub_22766D3F0();
}

uint64_t sub_226FFECE8()
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)(v1);
  return sub_22766D3F0();
}

uint64_t sub_226FFED2C(uint64_t a1)
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)(v2);
  return sub_22766D3F0();
}

BOOL _s15SeymourServices14SQLiteDatabaseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SQLiteDatabase(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B60, &qword_2276753D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v18 = (&v28 + *(v17 + 56) - v15);
  sub_226FFF108(a1, &v28 - v15);
  sub_226FFF108(a2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226FFF108(v16, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v19 = sub_227662420();
      v20 = *(v5 + 8);
      v20(v10, v4);
      if (v19)
      {
        v21 = sub_227669C30();
        v22 = sub_227669C30();
        v20(v7, v4);
        sub_226FFF374(v16);
        return v21 == v22;
      }

      v20(v7, v4);
      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_226FFF30C(v16);
    return 0;
  }

  sub_226FFF108(v16, v13);
  v25 = *v13;
  v24 = v13[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_8;
  }

  if (v25 == *v18 && v24 == v18[1])
  {
  }

  else
  {
    v27 = sub_22766D190();

    if ((v27 & 1) == 0)
    {
LABEL_16:
      sub_226FFF374(v16);
      return 0;
    }
  }

  sub_226FFF374(v16);
  return 1;
}

uint64_t type metadata accessor for SQLiteDatabase(uint64_t a1)
{
  result = qword_27D7B9B40;
  if (!qword_27D7B9B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226FFF108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDatabase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FFF1B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226FFF1FC(uint64_t a1)
{
  sub_226FFF270();
  if (v1 <= 0x3F)
  {
    sub_226FFF2A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_226FFF270()
{
  result = qword_27D7B9B50;
  if (!qword_27D7B9B50)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7B9B50);
  }

  return result;
}

void sub_226FFF2A0(uint64_t a1)
{
  if (!qword_27D7B9B58)
  {
    sub_2276624A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7B9B58);
    }
  }
}

uint64_t sub_226FFF30C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B60, &qword_2276753D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FFF374(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDatabase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FFF3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_226F1FB48(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_22766CC90();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_226F1FB48((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_226EB526C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_226FFF5EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227662BD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227668B10();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662C50();
  v32 = sub_226FFF3D0(v10);

  v33 = v1;
  v11 = sub_227662C10();
  v12 = *(v11 + 16);
  if (v12)
  {
    v31[1] = a1;
    v51 = MEMORY[0x277D84F90];
    v13 = v11;
    sub_226F1FB28(0, v12, 0);
    result = v13;
    v15 = 0;
    v16 = v51;
    v39 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v40 = v12;
    v37 = (v4 + 8);
    v38 = v4 + 16;
    v35 = v3;
    v36 = v7 + 32;
    v34 = v4;
    v42 = v9;
    v43 = v7;
    v41 = result;
    while (v15 < *(result + 16))
    {
      (*(v4 + 16))(v6, v39 + *(v4 + 72) * v15, v3);
      v17 = sub_227662B80();
      v19 = v18;
      v49 = sub_227662BC0();
      v48 = sub_227662BA0();
      v47 = sub_227662B90();
      v20 = sub_227662BB0();
      v21 = *(v20 + 16);
      if (v21)
      {
        v45 = v19;
        v46 = v17;
        v50 = MEMORY[0x277D84F90];
        sub_226F1FB48(0, v21, 0);
        v22 = v50;
        v23 = *(v50 + 16);
        v24 = 32;
        do
        {
          v25 = *(v20 + v24);
          v50 = v22;
          v26 = *(v22 + 24);
          if (v23 >= v26 >> 1)
          {
            sub_226F1FB48((v26 > 1), v23 + 1, 1);
            v22 = v50;
          }

          *(v22 + 16) = v23 + 1;
          *(v22 + v23 + 32) = v25;
          ++v24;
          ++v23;
          --v21;
        }

        while (v21);

        v4 = v34;
        v3 = v35;
      }

      else
      {
      }

      v27 = v42;
      sub_227668AD0();
      (*v37)(v6, v3);
      v51 = v16;
      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      v30 = v43;
      if (v29 >= v28 >> 1)
      {
        sub_226F1FB28((v28 > 1), v29 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 16) = v29 + 1;
      (*(v30 + 32))(v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, v27, v44);
      result = v41;
      if (v15 == v40)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    sub_227662C20();
    if (sub_227662C40() <= 0)
    {
      sub_227662C20();
    }

    else
    {
      sub_227662C40();
    }

    sub_227662C30();
    sub_226F43718(v32);

    return sub_227668860();
  }

  return result;
}

void *static PlaylistItem.representativeSamples()()
{
  v25 = sub_227663AB0();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  sub_226FFFEB8();
  v4 = sub_22766CFA0();
  sub_226F5D220();
  v5 = sub_22766CFA0();
  sub_226FFFF0C();
  sub_226ED56C4();
  v6 = sub_227663B50();
  sub_226F5D274();
  v7 = sub_22766BE70();
  v41 = v4;
  v42[0] = v3;
  v42[1] = v42;
  v42[2] = &v41;
  v39 = v6;
  v40 = v5;
  v42[3] = &v40;
  v42[4] = &v39;
  v38 = v7;
  v42[5] = &v38;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B80, &qword_2276753E8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v28 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v29 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v30 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v31 = sub_226F5BF60(&qword_27D7B9B90, &qword_27D7B9B80, &qword_2276753E8);
  v32 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v27 = MEMORY[0x277D84F90];
    result = sub_226F1F348(0, v9, 0);
    v11 = 0;
    v12 = v27;
    v21 = v0 + 32;
    v13 = v8 + 48;
    v24 = v0;
    v23 = v8;
    v22 = v9;
    v20 = v2;
    while (v11 < *(v8 + 16))
    {
      v26 = v12;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);

      sub_226EB396C(v14, v15, v16);
      v12 = v26;
      sub_227663A50();
      v27 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1F348((v17 > 1), v18 + 1, 1);
        v12 = v27;
      }

      ++v11;
      *(v12 + 16) = v18 + 1;
      result = (*(v24 + 32))(v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v20, v25);
      v13 += 64;
      v8 = v23;
      if (v22 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226FFFEB8()
{
  result = qword_27D7B9B68;
  if (!qword_27D7B9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B68);
  }

  return result;
}

unint64_t sub_226FFFF0C()
{
  result = qword_27D7B9B70;
  if (!qword_27D7B9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B70);
  }

  return result;
}

void sub_226FFFF60(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 mediaType];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_2270001DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 index];
  [a1 healthKitActivityType];
  sub_226ED56C4();
  sub_227663AE0();
  [a1 duration];
  sub_227663A50();
LABEL_6:
}

uint64_t sub_227000184(uint64_t a1)
{
  result = sub_2270001DC(&qword_2813A57D0, MEMORY[0x277D502D0], &protocol conformance descriptor for PlaylistItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270001DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_227000224(void *a1)
{
  sub_227663A60();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663A80();
  if (v3 >= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFFLL;
  }

  else
  {
    v4 = v3;
  }

  [a1 setIndex_];
  v5 = sub_227663A70();
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  [a1 setHealthKitActivityType_];
  v7 = sub_227663AA0();
  v9 = v8;
  v11 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  sub_226EB2DFC(v7, v9, v11);

  [a1 setMediaType_];

  sub_227663A90();
  return [a1 setDuration_];
}

uint64_t sub_227000374()
{
  v1 = v0;
  v2 = sub_227669A70();
  v50 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 32);
  v48 = v1;
  ObjectType = swift_getObjectType();
  v51 = v10;
  v13 = *MEMORY[0x277D4E748];
  v14 = *(v3 + 104);
  v47 = v3 + 104;
  v14(v5, v13, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v45 = v11;
  v46 = ObjectType;
  sub_227669E90();

  v15 = *(v3 + 8);
  v44 = v3 + 8;
  v16 = v50;
  v15(v5, v50);
  v49 = v15;
  swift_unknownObjectRelease();
  v51 = v10;
  v14(v5, *MEMORY[0x277D4E8F0], v16);
  v43 = v14;
  swift_allocObject();
  swift_weakInit();
  v42 = sub_2276668F0();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v17 = v50;
  v15(v5, v50);
  swift_unknownObjectRelease();
  v51 = v10;
  v14(v5, *MEMORY[0x277D4E960], v17);
  swift_allocObject();
  swift_weakInit();
  v41 = sub_227666F20();
  swift_unknownObjectRetain();
  sub_227669E80();

  v49(v5, v17);
  swift_unknownObjectRelease();
  v51 = v10;
  v43(v5, *MEMORY[0x277D4E978], v17);
  swift_allocObject();
  swift_weakInit();
  v40 = sub_227667170();
  swift_unknownObjectRetain();
  sub_227669E80();

  v19 = v49;
  v18 = v50;
  v49(v5, v50);
  swift_unknownObjectRelease();
  v51 = v10;
  v20 = v43;
  v43(v5, *MEMORY[0x277D4E9F0], v18);
  swift_allocObject();
  swift_weakInit();
  v39 = sub_2276675F0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v21 = v50;
  v19(v5, v50);
  swift_unknownObjectRelease();
  v51 = v10;
  v20(v5, *MEMORY[0x277D4E800], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v19(v5, v21);
  swift_unknownObjectRelease();
  v51 = v10;
  v38 = *MEMORY[0x277D4E9B8];
  (v20)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v22 = v49;
  v49(v5, v21);
  swift_unknownObjectRelease();
  v51 = v10;
  v37 = *MEMORY[0x277D4EA00];
  v23 = v43;
  (v43)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v24 = v50;
  v22(v5, v50);
  swift_unknownObjectRelease();
  v51 = v10;
  v35 = *MEMORY[0x277D4EA08];
  v25 = v24;
  v23(v5);
  swift_allocObject();
  v26 = v48;
  swift_weakInit();
  sub_227669EA0();

  v27 = v49;
  v49(v5, v25);
  swift_unknownObjectRelease();
  v51 = v10;
  v36 = *MEMORY[0x277D4EA50];
  v23(v5);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v28 = v50;
  v27(v5, v50);
  swift_unknownObjectRelease();
  v29 = *(v26 + 88);
  v46 = *(v26 + 104);
  v45 = swift_getObjectType();
  v51 = v29;
  (v23)(v5, v38, v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v30 = v49;
  v49(v5, v28);
  swift_unknownObjectRelease();
  v51 = v29;
  (v23)(v5, v37, v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v30(v5, v28);
  swift_unknownObjectRelease();
  v51 = v29;
  (v23)(v5, v35, v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v31 = v49;
  v49(v5, v28);
  swift_unknownObjectRelease();
  v51 = v29;
  (v23)(v5, v36, v28);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v32 = v50;
  v31(v5, v50);
  swift_unknownObjectRelease();
  v51 = v29;
  (v23)(v5, *MEMORY[0x277D4ECC8], v32);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v31(v5, v32);
  return swift_unknownObjectRelease();
}

uint64_t sub_227001110@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[13];
    v10 = v8[14];
    __swift_project_boxed_opaque_existential_0(v8 + 10, v9);

    sub_226ECF5D8(sub_227002F78, v8, v9, MEMORY[0x277D51960], v10, a2);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC0, &qword_2276754D8);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_227001308(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_227001328, 0, 0);
}

uint64_t sub_227001328()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 80);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_227001470;
    v3 = v0[5];

    return sub_226FC6D5C(v3);
  }

  else
  {
    v5 = v0[5];
    v6 = sub_2276668F0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227001470()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22700162C;
  }

  else
  {

    v2 = sub_22700158C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22700158C()
{
  v1 = *(v0 + 40);
  v2 = sub_2276668F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22700162C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227001690@<X0>(uint64_t a3@<X8>)
{
  v32 = a3;
  v3 = sub_22766B390();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_227668D10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v28 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 80);

    sub_227668CF0();
    v17 = *(v10 + 48);
    if (v17(v8, 1, v9) == 1)
    {
      v18 = v31;
      (*(v10 + 104))(v31, *MEMORY[0x277D53870], v9);
      if (v17(v8, 1, v9) != 1)
      {
        sub_227002E04(v8);
      }
    }

    else
    {
      v18 = v31;
      (*(v10 + 32))(v31, v8, v9);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v29 + 8))(v5, v30);
    v21 = v16[13];
    v22 = v16[14];
    __swift_project_boxed_opaque_existential_0(v16 + 10, v21);
    (*(v10 + 16))(v12, v18, v9);
    v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    (*(v10 + 32))(v24 + v23, v12, v9);
    v25 = sub_227666F20();

    v20 = v32;
    sub_226ECF5D8(sub_227002EC4, v24, v21, v25, v22, v32);

    (*(v10 + 8))(v18, v9);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v20 = v32;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BB8, &qword_2276754D0);
  return (*(*(v26 - 8) + 56))(v20, v19, 1, v26);
}

uint64_t sub_227001AD4@<X0>(uint64_t a3@<X8>)
{
  v32 = a3;
  v3 = sub_22766B390();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_227668D10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v28 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 80);

    sub_227668CF0();
    v17 = *(v10 + 48);
    if (v17(v8, 1, v9) == 1)
    {
      v18 = v31;
      (*(v10 + 104))(v31, *MEMORY[0x277D53870], v9);
      if (v17(v8, 1, v9) != 1)
      {
        sub_227002E04(v8);
      }
    }

    else
    {
      v18 = v31;
      (*(v10 + 32))(v31, v8, v9);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v29 + 8))(v5, v30);
    v21 = v16[13];
    v22 = v16[14];
    __swift_project_boxed_opaque_existential_0(v16 + 10, v21);
    (*(v10 + 16))(v12, v18, v9);
    v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    (*(v10 + 32))(v24 + v23, v12, v9);
    v25 = sub_227667170();

    v20 = v32;
    sub_226ECF5D8(sub_227002E98, v24, v21, v25, v22, v32);

    (*(v10 + 8))(v18, v9);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v20 = v32;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BB0, &qword_2276754C8);
  return (*(*(v26 - 8) + 56))(v20, v19, 1, v26);
}

uint64_t sub_227001F18@<X0>(uint64_t a3@<X8>)
{
  v32 = a3;
  v3 = sub_22766B390();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_227668D10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v28 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 80);

    sub_227668CF0();
    v17 = *(v10 + 48);
    if (v17(v8, 1, v9) == 1)
    {
      v18 = v31;
      (*(v10 + 104))(v31, *MEMORY[0x277D53870], v9);
      if (v17(v8, 1, v9) != 1)
      {
        sub_227002E04(v8);
      }
    }

    else
    {
      v18 = v31;
      (*(v10 + 32))(v31, v8, v9);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v29 + 8))(v5, v30);
    v21 = v16[13];
    v22 = v16[14];
    __swift_project_boxed_opaque_existential_0(v16 + 10, v21);
    (*(v10 + 16))(v12, v18, v9);
    v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    (*(v10 + 32))(v24 + v23, v12, v9);
    v25 = sub_2276675F0();

    v20 = v32;
    sub_226ECF5D8(sub_227002E6C, v24, v21, v25, v22, v32);

    (*(v10 + 8))(v18, v9);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v20 = v32;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA8, &qword_2276754C0);
  return (*(*(v26 - 8) + 56))(v20, v19, 1, v26);
}

uint64_t sub_227002360@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v12 = v11[13];
    v13 = v11[14];
    __swift_project_boxed_opaque_existential_0(v11 + 10, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_227002DE4, v14, v12, MEMORY[0x277D84F78] + 8, v13, a3);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_227002590(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2270025B0, 0, 0);
}

uint64_t sub_2270025B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 80);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2270026B8;
    v3 = v0[5];

    return sub_226FC71E0(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2270026B8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227002FA0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2270027F4@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    a3(a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v8 - 8) + 56))(a4, v7, 1, v8);
}

uint64_t sub_2270028E4@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v12 = v11[13];
    v13 = v11[14];
    __swift_project_boxed_opaque_existential_0(v11 + 10, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_227002DC4, v14, v12, MEMORY[0x277D84F78] + 8, v13, a3);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_227002B40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227001308(a1, v1);
}

uint64_t sub_227002BFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227002590(a1, v1);
}

uint64_t sub_227002C94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227002590(a1, v1);
}

uint64_t sub_227002E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227002FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22766B390();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_227003098;

  return sub_227003714();
}

uint64_t sub_227003098(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_2270034DC;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_2270031C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2270031C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  *(v1 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider) = v0[13];

  v6 = v1[15];
  v7 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v6);
  v8 = swift_allocObject();
  v0[14] = v8;
  v8[2] = v5;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v2;
  v8[6] = v1;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[15] = v10;
  v11 = sub_227667A70();
  *v10 = v0;
  v10[1] = sub_227003390;
  v12 = v0[2];

  return (v14)(v12, sub_227005FEC, v8, v11, v6, v7);
}

uint64_t sub_227003390()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2270035F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2270034DC(uint64_t a1)
{
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C890();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Failed to create new AchievementEnvironment", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];

  (*(v6 + 8))(v5, v7);
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_2270035F4()
{

  sub_22766A610();
  v1 = sub_22766B380();
  v2 = sub_22766C890();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Failed to create new AchievementEnvironment", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_227003714()
{
  v1[29] = v0;
  v2 = sub_22766B390();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[33] = v3;
  *v3 = v1;
  v3[1] = sub_227003804;

  return sub_2270055E8(35);
}

uint64_t sub_227003804(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_227003D0C;
  }

  else
  {
    v4 = sub_227003918;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227003918()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  sub_226E91B50(v2 + 56, v0 + 80);
  sub_226FB68A4(v2 + 136, v0 + 16);
  sub_226E91B50(v2 + 96, v0 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 80, *(v0 + 104));
  *(v0 + 184) = &type metadata for AchievementAwardDataStore;
  *(v0 + 192) = &off_283AC5C08;
  type metadata accessor for SessionEnergyBurnedDataProvider();
  v3 = swift_allocObject();
  *(v0 + 288) = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 160, &type metadata for AchievementAwardDataStore);
  *(v3 + 48) = &type metadata for AchievementAwardDataStore;
  *(v3 + 56) = &off_283AC5C08;
  *(v3 + 16) = sub_2271480B4(MEMORY[0x277D84F90]);
  sub_227010A38((v0 + 16), (v3 + 64));
  sub_226E92AB8((v0 + 120), v3 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v4 = *(v1 + 16);
  *(v0 + 296) = v4;
  v5 = *(v0 + 272);
  if (v4)
  {
    *(v0 + 304) = 0;
    v6 = *(v5 + 32);
    *(v0 + 312) = v6;

    v7 = swift_task_alloc();
    *(v0 + 320) = v7;
    *v7 = v0;
    v7[1] = sub_227003AD8;

    return sub_2271E12E0(v6);
  }

  else
  {

    v9 = *(v0 + 8);
    v10 = *(v0 + 288);

    return v9(v10);
  }
}

uint64_t sub_227003AD8()
{

  return MEMORY[0x2822009F8](sub_227003BF0, 0, 0);
}

uint64_t sub_227003BF0()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {

    v2 = v0[1];
    v3 = v0[36];

    return v2(v3);
  }

  else
  {
    v0[38] = v1;
    v5 = *(v0[34] + 8 * v1 + 32);
    v0[39] = v5;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_227003AD8;

    return sub_2271E12E0(v5);
  }
}

uint64_t sub_227003D0C(uint64_t a1)
{
  v20 = v1;
  v2 = v1[35];
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[31];
    v6 = v1[32];
    v8 = v1[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v1[26], v1[27]);
    v13 = sub_226E97AE8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "[AchievementEnvironmentProvider] Failed to load EnergyBurnedDataSource: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[31];
    v14 = v1[32];
    v16 = v1[30];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_227003EE0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v32 = a7;
  v33 = a2;
  v10 = type metadata accessor for DateIntervalSessionThreshold(0);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v29 - v17;
  sub_227004248();
  v20 = v19;
  v21 = a1;
  sub_2270043C0(a1, v18);
  if (v7)
  {
  }

  v23 = v10;
  v30 = v12;
  v31 = v20;
  __swift_project_boxed_opaque_existential_0((a6 + 56), *(a6 + 80));
  v24 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  sub_2274B5B28(v15, (a6 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval), v21);
  sub_226E97D1C(v15, &qword_27D7B9690, qword_227670B50);
  v29[1] = sub_2270045EC(v21);
  v25 = sub_227662010();
  v26 = a6 + v24;
  v27 = v30;
  (*(*(v25 - 8) + 16))(v30, v26, v25);
  *(v27 + v23[5]) = 0x4072C00000000000;
  v28 = v27 + v23[6];
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v27 + v23[7]) = 0x3FE0000000000000;
  sub_2274BAAE4(v27, v21);
  sub_226F733F0(v27);
  sub_227004B5C(v21);

  return sub_227667A20();
}

void sub_227004248()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider))
  {
    swift_beginAccess();
  }

  else
  {
    sub_22766A610();
    v5 = sub_22766B380();
    v6 = sub_22766C890();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[AchievementEnvironmentProvider] EnergyBurnedDataSource was nil, failed to fetch highest energy burned values per modality", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_2271480B4(MEMORY[0x277D84F90]);
  }
}

void sub_2270043C0(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  sub_2274B71C4((v2 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval), a1, a2);
  if (v3)
  {
    sub_22766A610();
    v10 = v3;
    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = v6;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v21, v22);
      v18 = sub_226E97AE8(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v11, v12, "Fetching currentWeeklyStreak from achievementDataStore failed with error %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);

      (*(v7 + 8))(v9, v20);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    swift_willThrow();
  }
}

NSObject *sub_2270045EC(uint64_t a1)
{
  v3 = v2;
  v62 = *MEMORY[0x277D85DE8];
  v58 = sub_22766B390();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227666FF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226EB16F8(a1);
  if (v2)
  {
    v13 = v58;
    goto LABEL_30;
  }

  v14 = v12;
  v61 = v11;
  v54 = v8;
  v15 = v12[32];
  v16 = v15 & 0x3F;
  v50 = ((1 << v15) + 63) >> 6;
  v51 = a1;
  v17 = 8 * v50;

  v52 = v1;
  if (v16 > 0xD)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v47 = v3;
    v48 = v7;
    v49 = v5;
    v46[1] = v46;
    MEMORY[0x28223BE20](v18);
    v53 = v46 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v17);
    v5 = 0;
    v7 = (v14 + 56);
    v19 = 1 << *(v14 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v14 + 56);
    v3 = (v19 + 63) >> 6;
    v57 = v9 + 16;
    v55 = 0;
    v56 = (v9 + 8);
    v17 = v54;
    v59 = v9;
    v60 = v14;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_16:
      v26 = v23 | (v5 << 6);
      v22 = v61;
      (*(v9 + 16))(v61, *(v14 + 48) + *(v9 + 72) * v26, v17);
      v27 = *(sub_227666F90() + 16);

      if (v27 == 1)
      {
        v28 = sub_227666F90();
        v29 = *(v28 + 16);
        v30 = 32;
        do
        {
          if (!v29)
          {

            v32 = sub_227666F90();
            v33 = *(v32 + 16);
            v34 = 32;
            v9 = v59;
            v14 = v60;
            v17 = v54;
            while (v33)
            {
              v35 = *(v32 + v34);
              v34 += 8;
              --v33;
              if (v35 == 52)
              {
                goto LABEL_24;
              }
            }

            v22 = v61;
            goto LABEL_8;
          }

          v31 = *(v28 + v30);
          v30 += 8;
          --v29;
        }

        while (v31 != 37);
        v9 = v59;
        v14 = v60;
        v17 = v54;
LABEL_24:

        (*v56)(v61, v17);
        *&v53[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        if (__OFADD__(v55++, 1))
        {
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_8:
        (*v56)(v22, v17);
        v9 = v59;
        v14 = v60;
      }
    }

    v24 = v5;
    while (1)
    {
      v5 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v5 >= v3)
      {
LABEL_27:
        v37 = sub_226EBAEF0(v53, v50, v55, v14);

        v13 = v58;
        v7 = v48;
        v5 = v49;
        v38 = v47;
        goto LABEL_28;
      }

      v25 = *&v7[8 * v5];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_36:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v44 = swift_slowAlloc();
  v45 = sub_22700C11C(v44, v50, v14, sub_227005144, 0);
  if (!v3)
  {
    v37 = v45;

    MEMORY[0x22AA9A450](v44, -1, -1);

    v38 = 0;
    v13 = v58;
LABEL_28:
    v39 = sub_2270051F0(v37, v51);
    if (!v38)
    {
      v40 = v39;

      return v40;
    }

LABEL_30:
    sub_22766A610();
    v40 = sub_22766B380();
    v41 = sub_22766C890();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_226E8E000, v40, v41, "[AchievementEnvironmentProvider] Failed to fetch modalityReferences, guidedArchivedSessionCounts is [:]", v42, 2u);
      MEMORY[0x22AA9A450](v42, -1, -1);
    }

    (*(v5 + 8))(v7, v13);
    swift_willThrow();
    return v40;
  }

  result = MEMORY[0x22AA9A450](v44, -1, -1);
  __break(1u);
  return result;
}

NSObject *sub_227004B5C(uint64_t a1)
{
  v2 = v1;
  v64 = *MEMORY[0x277D85DE8];
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227666FF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226EB16F8(a1);
  if (v1)
  {
    v13 = v4;
    goto LABEL_33;
  }

  v14 = v12;
  v62 = v11;
  v56 = v8;
  v15 = v12[32];
  v16 = v15 & 0x3F;
  v53 = ((1 << v15) + 63) >> 6;
  v54 = a1;
  v17 = 8 * v53;

  v13 = v4;
  if (v16 > 0xD)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v49 = v2;
    v50 = v7;
    v51 = v5;
    v52 = v13;
    v48 = &v48;
    MEMORY[0x28223BE20](v18);
    v55 = &v48 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v55, v17);
    v5 = 0;
    v7 = (v14 + 56);
    v19 = 1 << *(v14 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v13 = v20 & *(v14 + 56);
    v2 = (v19 + 63) >> 6;
    v59 = v9 + 16;
    v60 = v9;
    v57 = 0;
    v58 = (v9 + 8);
    v17 = v56;
    v61 = v14;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_16:
      v25 = v22 | (v5 << 6);
      v21 = v62;
      (*(v9 + 16))(v62, *(v14 + 48) + *(v9 + 72) * v25, v17);
      v26 = *(sub_227666F90() + 16);

      if (v26 == 1)
      {
        v27 = sub_227666F90();
        v28 = *(v27 + 16);
        v29 = 32;
        do
        {
          if (!v28)
          {

            v31 = sub_227666F90();
            v32 = *(v31 + 16);
            v33 = 32;
            v9 = v60;
            v14 = v61;
            v17 = v56;
            while (v32)
            {
              v34 = *(v31 + v33);
              v33 += 8;
              --v32;
              if (v34 == 52)
              {
                goto LABEL_24;
              }
            }

            v21 = v62;
            goto LABEL_8;
          }

          v30 = *(v27 + v29);
          v29 += 8;
          --v28;
        }

        while (v30 != 37);
        v9 = v60;
        v14 = v61;
        v17 = v56;
LABEL_24:

        (*v58)(v62, v17);
        *&v55[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_8:
        (*v58)(v21, v17);
        v9 = v60;
        v14 = v61;
      }
    }

    v23 = v5;
    while (1)
    {
      v5 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v5 >= v2)
      {
LABEL_27:
        v36 = sub_226EBAEF0(v55, v53, v57, v14);
        v37 = v49;
        v5 = v51;
        v13 = v52;
        v7 = v50;
        goto LABEL_28;
      }

      v24 = *&v7[8 * v5];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v45 = swift_slowAlloc();
  v46 = sub_22700C11C(v45, v53, v14, sub_227005144, 0);
  if (!v2)
  {
    v47 = v46;
    v37 = 0;

    MEMORY[0x22AA9A450](v45, -1, -1);
    v36 = v47;
LABEL_28:
    v38 = v54;
    if (*(v36 + 16) <= *(v14 + 16) >> 3)
    {
      v63 = v14;
      sub_22700642C(v36, &qword_27D7B8FA8, &unk_227672A50, MEMORY[0x277D52AF8], sub_22700C5D4);

      v39 = v63;
    }

    else
    {
      v39 = sub_2270080B0(v36, v14);
    }

    v40 = sub_2270051F0(v39, v38);
    if (!v37)
    {
      v41 = v40;

      return v41;
    }

LABEL_33:
    sub_22766A610();
    v41 = sub_22766B380();
    v42 = sub_22766C890();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "[AchievementEnvironmentProvider] Failed to query archivedSessionCountsPerModality", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v5 + 8))(v7, v13);
    swift_willThrow();
    return v41;
  }

  result = MEMORY[0x22AA9A450](v45, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_227005144(uint64_t a1)
{
  v1 = *(sub_227666F90() + 16);

  if (v1 != 1)
  {
    return 0;
  }

  v2 = sub_227666F90();
  v3 = *(v2 + 16);
  v4 = 32;
  while (v3)
  {
    v5 = *(v2 + v4);
    v4 += 8;
    --v3;
    if (v5 == 37)
    {
      v6 = 1;
      goto LABEL_14;
    }
  }

  v7 = sub_227666F90();
  v8 = *(v7 + 16);
  v9 = 32;
  do
  {
    v10 = v8-- != 0;
    v6 = v10;
    if (!v10)
    {
      break;
    }

    v11 = *(v7 + v9);
    v9 += 8;
  }

  while (v11 != 52);
LABEL_14:

  return v6;
}

uint64_t sub_2270051F0(uint64_t a1, uint64_t a2)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v23 = a2;
  sub_22708B050(MEMORY[0x277D84F98], sub_227010A1C, v21, a1);
  v11 = v10;
  if (!v3)
  {
    v20[1] = 0;
    sub_22766A610();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      v24 = v20[0];
      *v14 = 136315138;
      v15 = sub_22766BEC0();
      v17 = sub_226E97AE8(v15, v16, &v24);

      *(v14 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v12, v13, "[AchievementEnvironmentProvider] Archived session counts per modality: %s", v14, 0xCu);
      v18 = v20[0];
      __swift_destroy_boxed_opaque_existential_0(v20[0]);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_227005410(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a1;
  v8 = type metadata accessor for DateIntervalSessionThreshold(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666F70();
  v14 = v13;
  v15 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  v16 = sub_227662010();
  (*(*(v16 - 8) + 16))(v11, a3 + v15, v16);
  *&v11[v9[7]] = 0x4072C00000000000;
  v17 = &v11[v9[8]];
  *v17 = 0;
  v17[8] = 1;
  *&v11[v9[9]] = 0x3FE0000000000000;
  v18 = sub_2274BBBF4(a2, a4);
  if (v4)
  {

    sub_226F733F0(v11);
    return swift_willThrow();
  }

  else
  {
    v19 = v12;
    v20 = v25;
    v21 = sub_2274BC0E0(v11, v18, a4);
    sub_226F733F0(v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v20;
    sub_227369C3C(v21, v19, v14, isUniquelyReferenced_nonNull_native);

    *v20 = v26;
  }

  return result;
}

uint64_t sub_2270055E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766B390();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270056A8, 0, 0);
}

uint64_t sub_2270056A8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v10 = (*(v4 + 24) + **(v4 + 24));
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  *v7 = v0;
  v7[1] = sub_22700585C;

  return v10(v0 + 5, sub_227010A50, v6, v8, v3, v4);
}

uint64_t sub_22700585C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2270059E4;
  }

  else
  {

    v2 = sub_227005978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227005978()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2270059E4()
{
  v19 = v0;
  v1 = v0[14];

  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to fetch all completed archived session identifiers: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];

    (*(v14 + 8))(v13, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_227005BBC@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_227662010();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-v12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v21 = a4;
  (*(v8 + 16))(v10, Strong + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval, v7);

  (*(v8 + 32))(v13, v10, v7);
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]), v16 = sub_227010A6C(v13, *v15, v15[1], *(v15 + 16), v15[3]), result = , !v16))
  {
    (*(v8 + 8))(v13, v7);
LABEL_7:
    sub_226F73CD0();
    swift_allocError();
    *v19 = 4;
    return swift_willThrow();
  }

  if (a3)
  {
    v18 = sub_226F73070(0, v16[2], a3, v16, a3);

    result = (*(v8 + 8))(v13, v7);
    *v21 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227005E1C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  v2 = sub_227662010();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AchievementEnvironmentCacheProvider(uint64_t a1)
{
  result = qword_281399A58;
  if (!qword_281399A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227005F3C(uint64_t a1)
{
  result = sub_227662010();
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

void sub_22700604C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22700C498(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_227006178(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_22700CA80(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_2270062A8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_226EB396C(*v11, v13, v14);
        v15 = sub_22700C8C0(v12, v13, v14);
        sub_227010FE0(v15, v16, v17);
        sub_226EB2DFC(v12, v13, v14);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_22700642C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = (a4)(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      sub_226E97D1C(v11, v24, v25);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227006648(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2276694E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  MEMORY[0x28223BE20](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v18 = sub_22766BF50();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
    v24 = sub_22766BFB0();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x28223BE20](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_227268FCC(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_22766BF50();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_22766BFB0();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_22766BFB0();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_22700D684(v47, v49[0], v59, v20, v63);
  a2 = v48;

  MEMORY[0x22AA9A450](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_227006D08(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_2276694E0();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_226E97D1C(v30, &qword_27D7B8460, qword_2276709E0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v32 = sub_22766BF50();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
    v36 = sub_22766BFB0();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_226E97D1C(v24, &qword_27D7B8460, qword_2276709E0);
        a2 = sub_227268FCC(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_22766BF50();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_22766BFB0();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_22766BFB0();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_22700DA78(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x22AA9A450](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_226EBB21C(v59);
  return a2;
}

uint64_t sub_22700776C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22766D370();

    sub_22766C100();
    v23 = sub_22766D3F0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22766D190() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22726999C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22766D370();

            sub_22766C100();
            v41 = sub_22766D3F0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22766D190() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_22700DF4C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AA9A450](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_226EBB21C(v13);
    return v5;
  }

  result = MEMORY[0x22AA9A450](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_227007CDC(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v40[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v40[0] = a1;
    v36 = *(a1 + 16);
    if (v36)
    {
      v3 = a2 + 56;
      v37 = a1;
      v38 = a1 + 32;

      v4 = 0;
      while (1)
      {
        ++v4;
        sub_22766D370();
        v5 = sub_227664570();
        MEMORY[0x22AA996B0](v5);
        v6 = sub_22766D3F0();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & *(v3 + 8 * (v8 >> 6))) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v36)
        {
LABEL_14:

          return v2;
        }
      }

      v11 = ~v7;
      while (1)
      {
        v12 = sub_227664570();
        v13 = sub_227664570();
        if (v12 == v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & *(v3 + 8 * (v8 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v40[1] = v4;
      v14 = *(v2 + 32);
      v15 = ((1 << v14) + 63) >> 6;
      v16 = 8 * v15;
      if ((v14 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v34[0] = v15;
        v34[1] = v34;
        MEMORY[0x28223BE20](v13);
        v8 = v34 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v8, (v2 + 56), v17);
        v18 = *(v2 + 16);
        *(v8 + 8 * v9) &= ~v10;
        v35 = v8;
        v36 = v18 - 1;
        v9 = v37;
        v19 = *(v37 + 16);
        if (v4 == v19)
        {
LABEL_13:
          v2 = sub_22726A538(v35, v34[0], v36, v2);
          goto LABEL_14;
        }

        v15 = 1;
        while (v4 < v19)
        {
          v10 = *(v38 + v4);
          sub_22766D370();
          v21 = sub_227664570();
          v8 = v39;
          MEMORY[0x22AA996B0](v21);
          v22 = sub_22766D3F0();
          v23 = -1 << *(v2 + 32);
          v24 = v22 & ~v23;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if (((1 << v24) & *(v3 + 8 * (v24 >> 6))) != 0)
          {
            v27 = ~v23;
            while (1)
            {
              v8 = sub_227664570();
              if (v8 == sub_227664570())
              {
                break;
              }

              v24 = (v24 + 1) & v27;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & *(v3 + 8 * (v24 >> 6))) == 0)
              {
                v9 = v37;
                goto LABEL_17;
              }
            }

            v28 = v35[v25];
            v35[v25] = v28 & ~v26;
            v9 = v37;
            if ((v28 & v26) != 0)
            {
              v29 = v36 - 1;
              if (__OFSUB__(v36, 1))
              {
                goto LABEL_30;
              }

              --v36;
              if (!v29)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v19 = *(v9 + 16);
          if (v4 == v19)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v30 = v16;

        v31 = v30;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v32 = swift_slowAlloc();
      memcpy(v32, (v2 + 56), v31);
      v33 = sub_22700E184(v32, v15, v2, v8, v40);

      MEMORY[0x22AA9A450](v32, -1, -1);

      return v33;
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2270080B0(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_227666FF0();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_226E97D1C(v30, &qword_27D7B8FA8, &unk_227672A50);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    v32 = sub_22766BF50();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
    v36 = sub_22766BFB0();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_226E97D1C(v24, &qword_27D7B8FA8, &unk_227672A50);
        a2 = sub_226EBAEF0(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_22766BF50();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_22766BFB0();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_22766BFB0();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_22700E344(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x22AA9A450](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_226EBB21C(v59);
  return a2;
}

uint64_t sub_227008B14(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v6 = a1;
    v7 = *(a1 + 56);
    v48 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v47 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;

    v50 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v14 = v50;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v11)
          {
            v37 = v6;
            goto LABEL_43;
          }

          v10 = *(v48 + 8 * v15);
          ++v14;
          if (v10)
          {
            v50 = v15;
            goto LABEL_12;
          }
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_12:
      v10 &= v10 - 1;
      sub_22766D370();
      v16 = sub_227669310();
      MEMORY[0x22AA996B0](v16);
      v17 = sub_22766D3F0();
      v18 = -1 << *(v5 + 32);
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
    v19 = ~v18;
    while (1)
    {
      v20 = sub_227669310();
      v21 = sub_227669310();
      if (v20 == v21)
      {
        break;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
      {
        v6 = v49;
        goto LABEL_6;
      }
    }

    v53 = v47;
    v54 = v50;
    v55 = v10;
    v52[0] = v49;
    v52[1] = v48;
    v22 = *(v5 + 32);
    v43 = ((1 << v22) + 63) >> 6;
    v13 = 8 * v43;
    if ((v22 & 0x3Fu) <= 0xD)
    {
      goto LABEL_19;
    }

LABEL_47:
    v39 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v5 + 56), v39);
      v41 = sub_22700E818(v40, v43, v5, v2, v52);

      MEMORY[0x22AA9A450](v40, -1, -1);
      v29 = v52[0];
      v47 = v53;
      v50 = v54;
      v5 = v41;
      goto LABEL_41;
    }

LABEL_19:
    v44 = &v42;
    MEMORY[0x28223BE20](v21);
    v2 = &v42 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, (v5 + 56), v23);
    v24 = *(v2 + 8 * v3) & ~v4;
    v25 = *(v5 + 16);
    v46 = v2;
    *(v2 + 8 * v3) = v24;
    v26 = v25 - 1;
LABEL_20:
    v45 = v26;
    while (v10)
    {
LABEL_28:
      v10 &= v10 - 1;
      sub_22766D370();
      v31 = sub_227669310();
      v2 = v51;
      MEMORY[0x22AA996B0](v31);
      v32 = sub_22766D3F0();
      v33 = -1 << *(v5 + 32);
      v4 = v32 & ~v33;
      v3 = v4 >> 6;
      v34 = 1 << v4;
      if (((1 << v4) & *(v12 + 8 * (v4 >> 6))) != 0)
      {
        v2 = sub_227669310();
        if (v2 == sub_227669310())
        {
LABEL_21:
          v27 = v46[v3];
          v46[v3] = v27 & ~v34;
          if ((v27 & v34) != 0)
          {
            v26 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v5 = MEMORY[0x277D84FA0];
              v29 = v49;
              goto LABEL_41;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v35 = ~v33;
          while (1)
          {
            v4 = (v4 + 1) & v35;
            v3 = v4 >> 6;
            v34 = 1 << v4;
            if (((1 << v4) & *(v12 + 8 * (v4 >> 6))) == 0)
            {
              break;
            }

            v2 = sub_227669310();
            if (v2 == sub_227669310())
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    v29 = v49;
    v28 = v50;
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v30 >= v11)
      {
        break;
      }

      v10 = *(v48 + 8 * v30);
      ++v28;
      if (v10)
      {
        v50 = v30;
        goto LABEL_28;
      }
    }

    if (v11 <= v50 + 1)
    {
      v36 = v50 + 1;
    }

    else
    {
      v36 = v11;
    }

    v50 = v36 - 1;
    v5 = sub_22726AB18(v46, v43, v45, v5);
LABEL_41:
    v37 = v29;
LABEL_43:
    sub_226EBB21C(v37);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}