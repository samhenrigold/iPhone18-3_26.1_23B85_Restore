void *sub_230DBA4E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 32;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v28 = v24[2];
        v27 = v24[3];
        v29 = (*(v6 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v30 = (*(v6 + 56) + v19);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v28;
        v30[3] = v27;
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

void *sub_230DBA678(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 48;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
        v30 = v24[4];
        v29 = v24[5];
        v31 = (*(v6 + 48) + v20);
        *v31 = v22;
        v31[1] = v23;
        v32 = (*(v6 + 56) + v19);
        *v32 = v25;
        v32[1] = v26;
        v32[2] = v27;
        v32[3] = v28;
        v32[4] = v30;
        v32[5] = v29;
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

void *sub_230DBA810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C0, &qword_230E6BA60);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v25;
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

void *sub_230DBA998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C8, &qword_230E6BA68);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(v18 + v17);
        v23 = *(v18 + v17 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v21;
        v24[1] = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_230DBAB18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9A8, &unk_230E75D00);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBAC80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B8, &unk_230E75CE0);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_230DBADF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C458, &unk_230E75CD0);
  v2 = *v0;
  v3 = sub_230E69620();
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

void *sub_230DBAF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B0, &unk_230E6BA50);
  v2 = *v0;
  v3 = sub_230E69620();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = v20;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v22;
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

  return result;
}

id sub_230DBB0CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A948, &unk_230E75CB0);
  v2 = *v0;
  v3 = sub_230E69620();
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

        result = v20;
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

void *sub_230DBB23C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A980, &qword_230E6BA20);
  v27 = v0;
  v1 = *v0;
  v28 = sub_230E69620();
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
        v17 = *v16;
        v18 = v16[1];
        v14 *= 48;
        v19 = *(v1 + 56) + v14;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = (*(v28 + 48) + v15);
        v25 = *(v19 + 32);
        *v24 = v17;
        v24[1] = v18;
        v26 = *(v28 + 56) + v14;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v25;
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

void *sub_230DBB414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
  v2 = *v0;
  v3 = sub_230E69620();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_230DBB6FC(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
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

uint64_t type metadata accessor for IPSQLManager(uint64_t a1)
{
  result = qword_27DB5C438;
  if (!qword_27DB5C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DBB648(uint64_t a1)
{
  result = sub_230E68D80();
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

uint64_t sub_230DBB758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C460, &qword_230E75CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230DBB7D4()
{
  result = qword_27DB5C468;
  if (!qword_27DB5C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C468);
  }

  return result;
}

uint64_t sub_230DBB8C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    a2();
    v5 = swift_allocObject();
    sub_230E68D70();
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_230DBB9D0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *(v2 + 16);
    a2();
    v5 = swift_allocObject();

    sub_230E68D70();
    *(v5 + 16) = v6;
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_230DBBAA8(uint64_t a1)
{
  sub_230E68D70();
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___locationProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___commuteProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___workoutProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___timeProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___mediaProvider) = 0;
  *(v1 + OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator____lazy_storage___appUsageProvider) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_230DBBB5C()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence26PersonalContextCoordinator_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_230DBBC24()
{
  sub_230DBBB5C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalContextCoordinator(uint64_t a1)
{
  result = qword_27DB5C4A8;
  if (!qword_27DB5C4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DBBCD0(uint64_t a1)
{
  result = sub_230E68D80();
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

uint64_t Treatment.areaID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Treatment.areaID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Treatment.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Treatment.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Treatment.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Treatment(0) + 28);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Treatment(uint64_t a1)
{
  result = qword_281566070;
  if (!qword_281566070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Treatment.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Treatment(0) + 28);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Treatment.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Treatment(0) + 32);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Treatment.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Treatment(0) + 32);
  v4 = sub_230E68910();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Treatment.init(areaID:identifier:bucket:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v11;
  v12 = type metadata accessor for Treatment(0);
  v13 = *(v12 + 28);
  v14 = sub_230E68910();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), a8 + v13, a6, v14);
  v15 = a8 + *(v12 + 32);

  return v17(v15, a7, v14);
}

uint64_t sub_230DBC26C()
{
  v1 = *v0;
  v2 = 0x444961657261;
  v3 = 0x74656B637562;
  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_230DBC308@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DBD978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DBC330(uint64_t a1)
{
  v2 = sub_230DBC628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DBC36C(uint64_t a1)
{
  v2 = sub_230DBC628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Treatment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C4B8, &qword_230E75E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DBC628();
  sub_230E69A50();
  v17 = 0;
  sub_230E69810();
  if (!v2)
  {
    v16 = 1;
    sub_230E69810();
    v15 = *(v3 + 32);
    v14 = 2;
    sub_230DBC67C();
    sub_230E69850();
    type metadata accessor for Treatment(0);
    v13 = 3;
    sub_230E68910();
    sub_230DBD630(&qword_281566888, MEMORY[0x277CC9580]);
    sub_230E69850();
    v12 = 4;
    sub_230E69850();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_230DBC628()
{
  result = qword_281566098;
  if (!qword_281566098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566098);
  }

  return result;
}

unint64_t sub_230DBC67C()
{
  result = qword_281566760;
  if (!qword_281566760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566760);
  }

  return result;
}

uint64_t Treatment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_230E68910();
  v32 = *(v34 - 8);
  v4 = MEMORY[0x28223BE20](v34, v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v29 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C4C0, &qword_230E75E48);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for Treatment(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DBC628();
  v35 = v12;
  v17 = v37;
  sub_230E69A30();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v9;
  v30 = v6;
  v19 = v33;
  v18 = v34;
  v43 = 0;
  *v16 = sub_230E69720();
  *(v16 + 1) = v20;
  v29[3] = v20;
  v42 = 1;
  *(v16 + 2) = sub_230E69720();
  *(v16 + 3) = v21;
  v40 = 2;
  sub_230DBCB44();
  v29[2] = 0;
  sub_230E69760();
  v22 = v32;
  v23 = a1;
  v16[32] = v41;
  v39 = 3;
  v24 = sub_230DBD630(&qword_27DB5C4D0, MEMORY[0x277CC95A0]);
  v25 = v37;
  v29[1] = v24;
  sub_230E69760();
  v26 = &v16[*(v13 + 28)];
  v37 = *(v22 + 32);
  v37(v26, v25, v18);
  v38 = 4;
  v27 = v30;
  sub_230E69760();
  (*(v19 + 8))(v35, v36);
  v37(&v16[*(v13 + 32)], v27, v18);
  sub_230DBCB98(v16, v31);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_230DBCBFC(v16);
}

unint64_t sub_230DBCB44()
{
  result = qword_27DB5C4C8;
  if (!qword_27DB5C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4C8);
  }

  return result;
}

uint64_t sub_230DBCB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230DBCBFC(uint64_t a1)
{
  v2 = type metadata accessor for Treatment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DBCC88()
{
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DBCCF0(uint64_t a1)
{
  sub_230E69100();

  return sub_230E69100();
}

uint64_t sub_230DBCD40(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DBCDA4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_230E698C0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_230E698C0();
    }
  }

  return result;
}

ServicesIntelligence::TreatmentBucket_optional __swiftcall TreatmentBucket.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 2) >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = -rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_230DBCE88()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](-v1);
  return sub_230E699D0();
}

uint64_t sub_230DBCF00(uint64_t a1)
{
  v2 = *v1;
  sub_230E699B0();
  MEMORY[0x23191E2B0](-v2);
  return sub_230E699D0();
}

ServicesIntelligence::TreatmentNamespace_optional __swiftcall TreatmentNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TreatmentNamespace.rawValue.getter()
{
  v1 = 0x7373656E746966;
  if (*v0 != 1)
  {
    v1 = 0x7374736163646F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F74735F707061;
  }
}

uint64_t sub_230DBD0D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7373656E746966;
  if (v2 != 1)
  {
    v4 = 0x7374736163646F70;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x726F74735F707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7373656E746966;
  if (*a2 != 1)
  {
    v8 = 0x7374736163646F70;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F74735F707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230DBD1D8()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DBD280(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DBD314(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DBD3C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE700000000000000;
  v5 = 0x7373656E746966;
  if (v2 != 1)
  {
    v5 = 0x7374736163646F70;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F74735F707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Treatment.isActive.getter()
{
  v0 = sub_230E68910();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68900();
  type metadata accessor for Treatment(0);
  sub_230DBD630(&qword_27DB5C3A0, MEMORY[0x277CC9590]);
  if (sub_230E69000())
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_230E69000() ^ 1;
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_230DBD630(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_230E68910();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DBD678()
{
  result = qword_27DB5C4D8;
  if (!qword_27DB5C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4D8);
  }

  return result;
}

unint64_t sub_230DBD6D0()
{
  result = qword_281566520;
  if (!qword_281566520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566520);
  }

  return result;
}

unint64_t sub_230DBD728()
{
  result = qword_27DB5C4E0;
  if (!qword_27DB5C4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C4E8, &qword_230E76030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4E0);
  }

  return result;
}

uint64_t sub_230DBD7B4(uint64_t a1)
{
  result = sub_230E68910();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_230DBD874()
{
  result = qword_27DB5C4F0;
  if (!qword_27DB5C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4F0);
  }

  return result;
}

unint64_t sub_230DBD8CC()
{
  result = qword_281566088;
  if (!qword_281566088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566088);
  }

  return result;
}

unint64_t sub_230DBD924()
{
  result = qword_281566090;
  if (!qword_281566090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566090);
  }

  return result;
}

uint64_t sub_230DBD978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444961657261 && a2 == 0xE600000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230DBDB30()
{
  result = qword_27DB5C4F8;
  if (!qword_27DB5C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C4F8);
  }

  return result;
}

unint64_t sub_230DBDB84()
{
  result = qword_281566758;
  if (!qword_281566758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566758);
  }

  return result;
}

unint64_t sub_230DBDBEC()
{
  result = qword_2815664B8;
  if (!qword_2815664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664B8);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.fetchActiveTreatments(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DBDC74, v1, 0);
}

uint64_t sub_230DBDC74()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230D0571C;

    return (sub_230D76A40)(27, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 27;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230DBDE34;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBDE34()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230DBDF44, v1, 0);
}

uint64_t sub_230DBDF44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230D0571C;

  return (sub_230D76A40)(27, v0 + 16);
}

uint64_t sub_230DBE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = a3;
  *(v3 + 184) = a1;
  *(v3 + 281) = *a3;
  *(v3 + 208) = *(a3 + 8);
  *(v3 + 282) = *(a3 + 24);
  *(v3 + 224) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230DBE0BC, a2, 0);
}

uint64_t sub_230DBE0BC()
{
  v1 = *(v0 + 200);
  sub_230E68950();
  sub_230D1CDE0(v1, v0 + 16);
  sub_230D1CDE0(v1, v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_230DBE1B8;
  v3 = *(v0 + 200);

  return (sub_230D6F7D0)(39, v3);
}

uint64_t sub_230DBE1B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v5 = *(v3 + 200);
  v6 = *(v3 + 192);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230DBE554;
  }

  else
  {
    v7 = sub_230DBE308;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DBE308()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 281);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 282) & 1 | (*(v0 + 283) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 280) = 10;
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v6;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_230DBE408;
  v8 = *(v0 + 240);

  return static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)((v0 + 280), v8, v0 + 96);
}

uint64_t sub_230DBE408(uint64_t a1)
{
  v4 = *v2;
  (*v2)[33] = v1;

  if (v1)
  {
    v5 = v4[24];
    sub_230D666B4(v4[12], v4[13], v4[14], v4[15], v4[16]);
    v6 = sub_230DBE6EC;
  }

  else
  {
    v5 = v4[24];
    v4[34] = a1;
    sub_230D666B4(v4[12], v4[13], v4[14], v4[15], v4[16]);
    v6 = sub_230DBE5B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DBE554()
{
  sub_230D1CE3C(*(v0 + 200));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DBE5B8()
{
  v1 = v0[34];
  v2 = v0[23];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000040, 0x8000000230E833B0);
  v0[22] = *(v1 + 16);
  v3 = sub_230E69890();
  MEMORY[0x23191DA00](v3);

  MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E83470);
  sub_230E68950();

  *v2 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_230DBE6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ServicesIntelligenceProvider.fetchActiveTreatments(_:requestContext:)(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 104) = *a2;
  *(v3 + 96) = v2;
  *(v3 + 177) = *a1;
  *(v3 + 120) = v4;
  *(v3 + 136) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230DBE78C, v2, 0);
}

uint64_t sub_230DBE78C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230DC29D8;

    return (sub_230D771C0)(26, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 26;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230DBE950;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBE950()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230DBEA60, v1, 0);
}

uint64_t sub_230DBEA60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230DC29D8;

  return (sub_230D771C0)(26, v0 + 16);
}

uint64_t sub_230DBEB9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a3;
  *(v4 + 232) = a4;
  *(v4 + 194) = a2;
  *(v4 + 216) = a1;
  *(v4 + 195) = *a4;
  *(v4 + 240) = *(a4 + 8);
  *(v4 + 196) = *(a4 + 24);
  *(v4 + 256) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DBEBE4, a3, 0);
}

uint64_t sub_230DBEBE4()
{
  v1 = *(v0 + 194);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000003ALL, 0x8000000230E83370);
  if (v1 > 4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x6E6F6D6D6F63;
    v12 = 0x65676175676E616CLL;
    if (v1 != 8)
    {
      v12 = 0x7974697275636573;
    }

    if (v1 != 7)
    {
      v11 = v12;
      v10 = 0xE800000000000000;
    }

    v13 = 0xE800000000000000;
    v14 = 0x7374736163646F70;
    if (v1 != 5)
    {
      v14 = 0x6F65646976;
      v13 = 0xE500000000000000;
    }

    if (v1 <= 6)
    {
      v8 = v14;
    }

    else
    {
      v8 = v11;
    }

    if (v1 <= 6)
    {
      v9 = v13;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6C616E7265746E69;
    v4 = 0xE500000000000000;
    v5 = 0x736B6F6F62;
    v6 = 0xE700000000000000;
    v7 = 0x7373656E746966;
    if (v1 != 3)
    {
      v7 = 0x636973756DLL;
      v6 = 0xE500000000000000;
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    if (v1)
    {
      v3 = 1936748641;
      v2 = 0xE400000000000000;
    }

    if (v1 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 1)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }
  }

  v15 = *(v0 + 232);
  MEMORY[0x23191DA00](v8, v9);

  sub_230E68950();

  sub_230D1CDE0(v15, v0 + 16);
  sub_230D1CDE0(v15, v0 + 56);

  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_230DBEE54;
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  return sub_230D6F7D0(39, v17, v18, v18);
}

uint64_t sub_230DBEE54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 232);
  v6 = *(v3 + 224);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230DBF1E0;
  }

  else
  {
    v7 = sub_230DBEFA4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DBEFA4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 195);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 194);
  v7 = *(v0 + 196) & 1 | (*(v0 + 197) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 193) = v6;
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v7;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_230DBF0A4;
  v9 = *(v0 + 272);

  return static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)((v0 + 193), v9, v0 + 96);
}

uint64_t sub_230DBF0A4(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[28];
    sub_230D666B4(v3[12], v3[13], v3[14], v3[15], v3[16]);
    v5 = sub_230DBF58C;
  }

  else
  {
    v4 = v3[28];
    sub_230D666B4(v3[12], v3[13], v3[14], v3[15], v3[16]);
    v5 = sub_230DBF320;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230DBF1E0()
{
  sub_230D1CE3C(*(v0 + 232));
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v1);
    sub_230DC29B0(*(v0 + 176), *(v0 + 184), *(v0 + 192));
    sub_230DC295C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = *(v0 + 200);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 200));
    sub_230DC295C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v4 = v1;
  }

  MEMORY[0x23191E910](v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230DBF320()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 194);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000040, 0x8000000230E833B0);
  *(v0 + 208) = *(v1 + 16);
  v3 = sub_230E69890();
  MEMORY[0x23191DA00](v3);

  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E83400);
  if (v2 > 4)
  {
    v12 = 0xE600000000000000;
    v13 = 0x6E6F6D6D6F63;
    v14 = 0x65676175676E616CLL;
    if (v2 != 8)
    {
      v14 = 0x7974697275636573;
    }

    if (v2 != 7)
    {
      v13 = v14;
      v12 = 0xE800000000000000;
    }

    v15 = 0xE800000000000000;
    v16 = 0x7374736163646F70;
    if (v2 != 5)
    {
      v16 = 0x6F65646976;
      v15 = 0xE500000000000000;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v13;
    }

    if (v2 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x6C616E7265746E69;
    v6 = 0xE500000000000000;
    v7 = 0x736B6F6F62;
    v8 = 0xE700000000000000;
    v9 = 0x7373656E746966;
    if (v2 != 3)
    {
      v9 = 0x636973756DLL;
      v8 = 0xE500000000000000;
    }

    if (v2 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (v2)
    {
      v5 = 1936748641;
      v4 = 0xE400000000000000;
    }

    if (v2 <= 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v2 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 216);
  MEMORY[0x23191DA00](v10, v11);

  sub_230E68950();

  *v18 = v17;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_230DBF58C()
{

  v1 = *(v0 + 304);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v1);
    sub_230DC29B0(*(v0 + 176), *(v0 + 184), *(v0 + 192));
    sub_230DC295C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = *(v0 + 200);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 200));
    sub_230DC295C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v4 = v1;
  }

  MEMORY[0x23191E910](v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ServicesIntelligenceProvider.refreshTreatments(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DBF700, v1, 0);
}

uint64_t sub_230DBF700()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230DBFB08;

    return (sub_230D81D90)(28, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 28;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230DBF8C0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DBF8C0()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230DBF9D0, v1, 0);
}

uint64_t sub_230DBF9D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230DBFB08;

  return (sub_230D81D90)(28, v0 + 16);
}

uint64_t sub_230DBFB08(uint64_t a1)
{
  v5 = *v1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_230DBFC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_230DBFC8C, a2, 0);
}

uint64_t sub_230DBFC8C()
{
  sub_230E68950();
  if (sub_230DA3484())
  {
    v1 = *(v0 + 256);
    sub_230D1CDE0(v1, v0 + 16);
    sub_230D1CDE0(v1, v0 + 56);
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = sub_230DBFDDC;
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);

    return sub_230D77A44(29, v3, v4);
  }

  else
  {
    sub_230E68950();
    **(v0 + 240) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_230DBFDDC(uint64_t a1)
{
  v3 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v4 = v3[31];
    v5 = sub_230DC0130;
  }

  else
  {
    v6 = v3[31];
    sub_230D1CE3C(v3[32]);
    v5 = sub_230DBFF00;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230DBFF00()
{
  v1 = *(v0 + 256);
  sub_230D1CE3C(v1);
  sub_230D1CDE0(v1, v0 + 96);
  sub_230D1CDE0(v1, v0 + 136);

  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_230DBFFE0;
  v3 = *(v0 + 256);

  return (sub_230D6F7D0)(39, v3);
}

uint64_t sub_230DBFFE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  sub_230D1CE3C(v5);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_230DC044C;
  }

  else
  {
    v7 = sub_230DC0254;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DC0130()
{
  v1 = *(v0 + 256);
  sub_230D1CE3C(v1);
  sub_230D1CE3C(v1);
  v2 = *(v0 + 280);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v2);

  **(v0 + 240) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230DC0254()
{
  sub_230D1CE3C(*(v0 + 256));
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230DC0310;
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);

  return static SystemDatabase.storeTreatments(_:using:requestContext:)(v3, v2, v0 + 176);
}

uint64_t sub_230DC0310()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_230DC0604;
  }

  else
  {
    v4 = sub_230DC0570;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DC044C()
{
  sub_230D1CE3C(*(v0 + 256));

  v1 = *(v0 + 304);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  **(v0 + 240) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230DC0570()
{
  sub_230E68950();

  **(v0 + 240) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DC0604()
{

  v1 = *(v0 + 320);
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000039, 0x8000000230E83230);
  *(v0 + 232) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  **(v0 + 240) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230DC071C(uint64_t a1)
{
  v1[53] = a1;
  v2 = sub_230E68910();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DC07E8, 0, 0);
}

uint64_t sub_230DC07E8()
{
  v1 = 0xE900000000000065;
  v2 = MEMORY[0x277D84F90];
  sub_230E68950();
  v3 = [objc_allocWithZone(MEMORY[0x277CEE6C0]) initWithCachePolicy_];
  v0[58] = v3;
  sub_230D48880(0, 3, 0);
  if (byte_2845A4EE0)
  {
    if (byte_2845A4EE0 == 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x7373656E746966;
    }

    else
    {
      v4 = 0xE800000000000000;
      v5 = 0x7374736163646F70;
    }
  }

  else
  {
    v5 = 0x726F74735F707061;
    v4 = 0xE900000000000065;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    sub_230D48880((v6 > 1), v7 + 1, 1);
  }

  *(v2 + 16) = v8;
  v9 = v2 + 16 * v7;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  if (byte_2845A4EE1)
  {
    if (byte_2845A4EE1 == 1)
    {
      v10 = 0xE700000000000000;
      v11 = 0x7373656E746966;
    }

    else
    {
      v10 = 0xE800000000000000;
      v11 = 0x7374736163646F70;
    }
  }

  else
  {
    v11 = 0x726F74735F707061;
    v10 = 0xE900000000000065;
  }

  v12 = *(v2 + 24);
  v13 = v7 + 2;
  if (v8 >= v12 >> 1)
  {
    sub_230D48880((v12 > 1), v13, 1);
  }

  *(v2 + 16) = v13;
  v14 = v2 + 16 * v8;
  *(v14 + 32) = v11;
  *(v14 + 40) = v10;
  if (byte_2845A4EE2)
  {
    if (byte_2845A4EE2 == 1)
    {
      v1 = 0xE700000000000000;
      v15 = 0x7373656E746966;
    }

    else
    {
      v1 = 0xE800000000000000;
      v15 = 0x7374736163646F70;
    }
  }

  else
  {
    v15 = 0x726F74735F707061;
  }

  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_230D48880((v16 > 1), v17 + 1, 1);
  }

  *(v2 + 16) = v17 + 1;
  v18 = v2 + 16 * v17;
  *(v18 + 32) = v15;
  *(v18 + 40) = v1;
  sub_230D0ABEC(v2);

  v19 = sub_230E69330();

  v20 = [v3 areasForNamespaces_];
  v0[59] = v20;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_230DC0BB0;
  v21 = swift_continuation_init();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C500, &qword_230E76320);
  v0[60] = v22;
  v0[33] = v22;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_230DC29DC;
  v0[29] = &block_descriptor;
  v0[30] = v21;
  [v20 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230DC0BB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = sub_230DC1670;
  }

  else
  {
    v2 = sub_230DC0CC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DC0CC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  v1 = sub_230E68F40();
  *(v0 + 496) = 0;
  __break(1u);
  return MEMORY[0x282200938](v1);
}

uint64_t sub_230DC0FD0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 520) = v1;
  if (v1)
  {

    v2 = sub_230DC16F8;
  }

  else
  {
    v2 = sub_230DC10F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DC10F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C508, &qword_230E76328);
  v1 = sub_230E68F40();
  *(v0 + 528) = 0;
  __break(1u);
  return MEMORY[0x282200938](v1);
}

uint64_t sub_230DC12BC()
{
  v1 = *(*v0 + 176);
  *(*v0 + 544) = v1;
  if (v1)
  {

    v2 = sub_230DC1784;
  }

  else
  {
    v2 = sub_230DC13E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DC13E0()
{
  v3 = v0;
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
  result = sub_230E69210();
  __break(1u);
  return result;
}

uint64_t sub_230DC1670(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[59];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_230DC16F8(uint64_t a1)
{
  v2 = v1[64];
  v3 = v1[58];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_230DC1784(uint64_t a1)
{
  v2 = v1[67];
  v3 = v1[58];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_230DC1810(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_230DC18E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 16))
  {
    goto LABEL_19;
  }

  v3 = result;
  result = sub_230DA41A0(0x6E656D7461657274, 0xEB00000000644974);
  if ((v4 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_230D82664(*(v2 + 56) + 32 * result, v15);
  sub_230D0E394(v15, v16);
  swift_dynamicCast();
  sub_230D0D278();
  v5 = sub_230E69460();

  if (!v5[2])
  {
  }

  v7 = v5[4];
  v6 = v5[5];

  if (!*(v2 + 16) || (result = sub_230DA41A0(0x74656B637562, 0xE600000000000000), (v8 & 1) == 0) || (sub_230D82664(*(v2 + 56) + 32 * result, v16), result = swift_dynamicCast(), !result))
  {
    v9 = 0;
    v10 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if ((*&v15[0] + 2) >= 3)
  {
    v10 = 3;
    v9 = 1;
    if (*(v2 + 16))
    {
      goto LABEL_11;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = 0;
  v10 = -LOBYTE(v15[0]);
  if (!*(v2 + 16))
  {
    goto LABEL_18;
  }

LABEL_11:
  result = sub_230DA41A0(0x644961657261, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_230D82664(*(v2 + 56) + 32 * result, v15);
  sub_230D0E394(v15, v16);
  swift_dynamicCast();
  if (v9)
  {
    sub_230E1AAB4(v7, v6, v13, v14, v16);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[0] = *v3;
  sub_230E1BFD4(v10, v7, v6, v13, v14, isUniquelyReferenced_nonNull_native);

  *v3 = *&v16[0];
  return result;
}

void sub_230DC1B94(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v71 = a1;
  v67 = type metadata accessor for Treatment(0);
  v66 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67, v8);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v72 = &v62 - v12;

  v13 = sub_230E69680();

  v70 = v13;
  if (v13 <= 2)
  {
    v14 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    v15 = a4 + 56;
    v16 = 1 << *(a4 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a4 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v75 = a5;
    v76 = a4;
    v73 = v19;
    v74 = a4 + 56;
    if (v18)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_49;
      }

      if (v21 >= v19)
      {

        *v71 = v70;
        return;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
    }

    while (!v18);
    v20 = v21;
LABEL_10:
    v22 = (*(a4 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
    v24 = *v22;
    v23 = v22[1];
    v25 = *(a5 + 16);

    if (v25 && (sub_230DA41A0(v24, v23), (v26 & 1) != 0))
    {
    }

    else if (v14 >> 62 && sub_230E69610())
    {
      sub_230E1D6C0(v14);
    }

    else
    {
      v27 = MEMORY[0x277D84FA0];
    }

    v81 = v23;
    v77 = v24;
    v79 = v27;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_230E694D0();
      sub_230DC2854();
      sub_230DC28A0();
      sub_230E69350();
      v28 = v88;
      v29 = v89;
      v30 = v90;
      v31 = v91;
      v32 = v92;
    }

    else
    {
      v33 = -1 << *(v27 + 32);
      v29 = v27 + 56;
      v30 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v32 = v35 & *(v27 + 56);
      v31 = 0;
    }

    v18 &= v18 - 1;
    v78 = v30;
    v36 = (v30 + 64) >> 6;
    v80 = v14;
    v82 = v28;
    while (1)
    {
      v37 = v31;
      v38 = v32;
      if (v28 < 0)
      {
LABEL_23:
        v39 = sub_230E694E0();
        if (!v39)
        {
          goto LABEL_43;
        }

        v83 = v39;
        sub_230DC2854();
        swift_dynamicCast();
        v40 = v85;
        v31 = v37;
        v32 = v38;
        if (!v85)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      while (1)
      {
        v41 = v37;
        v42 = v38;
        v31 = v37;
        if (!v38)
        {
          while (1)
          {
            v31 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v31 >= v36)
            {
              goto LABEL_43;
            }

            v42 = *(v29 + 8 * v31);
            ++v41;
            if (v42)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_30:
        v32 = (v42 - 1) & v42;
        v40 = *(*(v28 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v42)))));
        if (!v40)
        {
LABEL_43:

          sub_230D912FC(v82);

          sub_230E3A588(v80);
          a5 = v75;
          a4 = v76;
          v14 = MEMORY[0x277D84F90];
          v19 = v73;
          v15 = v74;
          if (!v18)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

LABEL_31:
        v43 = [v40 identifier];
        v44 = sub_230E69060();
        v46 = v45;

        v85 = v44;
        v86 = v46;
        v83 = 58;
        v84 = 0xE100000000000000;
        sub_230D0D278();
        v47 = sub_230E69460();

        if (v47[2])
        {
          break;
        }

        v37 = v31;
        v38 = v32;
        v28 = v82;
        if (v82 < 0)
        {
          goto LABEL_23;
        }
      }

      v48 = v47[5];
      v69 = v47[4];

      v49 = v68;
      v50 = *(v68 + 16);
      v64 = v48;
      if (v50 && (v51 = v81, , , v62 = sub_230DB4E78(v69, v48, v77, v51), v63 = v52, , , (v63 & 1) != 0))
      {
        v63 = *(*(v49 + 56) + v62);
      }

      else
      {
        v63 = 0;
      }

      v53 = [v40 startDate];
      v54 = v65;
      sub_230E688E0();

      v55 = [v40 endDate];
      sub_230E688E0();

      v56 = v81;
      *v54 = v77;
      *(v54 + 8) = v56;
      v57 = v64;
      *(v54 + 16) = v69;
      *(v54 + 24) = v57;
      *(v54 + 32) = v63;
      sub_230DC28F8(v54, v72);
      v58 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_230E4A9C4(0, v58[2] + 1, 1, v58);
      }

      v28 = v82;
      v60 = v58[2];
      v59 = v58[3];
      if (v60 >= v59 >> 1)
      {
        v58 = sub_230E4A9C4((v59 > 1), v60 + 1, 1, v58);
      }

      v58[2] = v60 + 1;
      v61 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v80 = v58;
      sub_230DC28F8(v72, v58 + v61 + *(v66 + 72) * v60);
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_230DC2230(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
  }

  v9 = *a3;
  v10 = sub_230DB4DAC(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_230DB86FC(v15, v6 & 1);
    v10 = sub_230DB4DAC(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_230E69950();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_230DBADF8();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x23191E910](v18);
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000001BLL, 0x8000000230E82200);
    sub_230E695F0();
    MEMORY[0x23191DA00](39, 0xE100000000000000);
    result = sub_230E69600();
    __break(1u);
    return result;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
      }

      v26 = *a3;
      v27 = sub_230DB4DAC(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_230DB86FC(v31, 1);
        v27 = sub_230DB4DAC(v8);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v33[6] + v27) = v8;
      *(v33[7] + 8 * v27) = v7;
      v34 = v33[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v35;
      v6 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_230DC2594(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v37 = MEMORY[0x277D84F90];
    sub_230D490F0(0, v3, 0);
    v5 = v37;
    v6 = v2 + 64;
    result = sub_230E694B0();
    v7 = result;
    v8 = 0;
    v34 = *(v2 + 36);
    v29 = v2 + 72;
    v30 = v3;
    v31 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v33 = v8;
      v11 = (*(v2 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v2 + 56) + 8 * v7);

      v15 = a2(v35, v12, v13, v14);

      v36 = v15;
      v16 = v35[0];
      v17 = v5;
      v37 = v5;
      v18 = v2;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_230D490F0((v19 > 1), v20 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v20 + 1;
      v21 = v17 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v15;
      v9 = 1 << *(v18 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v6 = v31;
      v22 = *(v31 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v18;
      v5 = v17;
      if (v34 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_230D52C58(v7, v34, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_230D52C58(v7, v34, 0);
      }

LABEL_4:
      v8 = v33 + 1;
      v7 = v9;
      if (v33 + 1 == v30)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_230DC2854()
{
  result = qword_281565F48;
  if (!qword_281565F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281565F48);
  }

  return result;
}

unint64_t sub_230DC28A0()
{
  result = qword_281565F40;
  if (!qword_281565F40)
  {
    sub_230DC2854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F40);
  }

  return result;
}

uint64_t sub_230DC28F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230DC295C()
{
  result = qword_27DB5C518;
  if (!qword_27DB5C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C518);
  }

  return result;
}

uint64_t sub_230DC29B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t TreatmentError.hashValue.getter()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1);
  return sub_230E699D0();
}

unint64_t sub_230DC2A70()
{
  result = qword_27DB5C520;
  if (!qword_27DB5C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C520);
  }

  return result;
}

uint64_t sub_230DC2AD4(uint64_t a1, unsigned __int8 a2)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

ServicesIntelligence::UseCase_optional __swiftcall UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t _s20ServicesIntelligence16InferenceUseCaseO8rawValueSSvg_0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x7449756F59726F46;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0x4154656461637261;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1953719668;
    v3 = 2019850594;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x4647656461637261;
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
}

uint64_t sub_230DC2E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DC3350();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DC2EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DC3350();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

ServicesIntelligence::InferenceUseCase_optional __swiftcall InferenceUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_230DC2F94()
{
  result = qword_27DB5C528;
  if (!qword_27DB5C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C528);
  }

  return result;
}

unint64_t sub_230DC2FEC()
{
  result = qword_27DB5C530;
  if (!qword_27DB5C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C530);
  }

  return result;
}

void sub_230DC304C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEF7265776F546D65;
    v9 = 0x7449756F59726F46;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000230E80400;
    }

    v10 = 0xEC00000059464741;
    v11 = 0xD000000000000011;
    if (v2 == 4)
    {
      v11 = 0x4154656461637261;
    }

    else
    {
      v10 = 0x8000000230E803D0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1953719668;
    v5 = 0xE400000000000000;
    v6 = 2019850594;
    if (v2 != 2)
    {
      v6 = 0xD000000000000010;
      v5 = 0x8000000230E803B0;
    }

    if (*v1)
    {
      v4 = 0x4647656461637261;
      v3 = 0xE900000000000059;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_230DC3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DC32FC();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DC3288(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DC32FC();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

unint64_t sub_230DC32FC()
{
  result = qword_27DB5C538;
  if (!qword_27DB5C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C538);
  }

  return result;
}

unint64_t sub_230DC3350()
{
  result = qword_27DB5C540;
  if (!qword_27DB5C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C540);
  }

  return result;
}

uint64_t UseCaseConfiguration.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UseCaseConfiguration.useCase.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UseCaseConfiguration.workflows.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

ServicesIntelligence::UseCaseConfiguration __swiftcall UseCaseConfiguration.init(useCase:domain:workflows:)(ServicesIntelligence::UseCaseConfiguration useCase, ServicesIntelligence::Domain domain, Swift::OpaquePointer workflows)
{
  v4 = *domain;
  *v3 = useCase.useCase;
  *(v3 + 16) = v4;
  *(v3 + 24) = workflows;
  useCase.workflows = workflows;
  useCase.domain = domain;
  return useCase;
}

ServicesIntelligence::UseCaseConfiguration __swiftcall UseCaseConfiguration.init(useCase:domain:workflows:)(ServicesIntelligence::UseCase useCase, ServicesIntelligence::Domain domain, Swift::OpaquePointer workflows)
{
  v4 = *useCase;
  v5 = *domain;
  if (v4 > 3)
  {
    v6 = 0xEF7265776F546D65;
    v11 = 0x7449756F59726F46;
    if (v4 != 6)
    {
      v11 = 0xD000000000000016;
      v6 = 0x8000000230E80400;
    }

    v12 = 0xEC00000059464741;
    v13 = 0xD000000000000011;
    if (v4 == 4)
    {
      v13 = 0x4154656461637261;
    }

    else
    {
      v12 = 0x8000000230E803D0;
    }

    if (*useCase <= 5u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }

    if (*useCase <= 5u)
    {
      v6 = v12;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1953719668;
    v8 = 0xE400000000000000;
    v9 = 2019850594;
    if (v4 != 2)
    {
      v9 = 0xD000000000000010;
      v8 = 0x8000000230E803B0;
    }

    if (*useCase)
    {
      v7 = 0x4647656461637261;
      v6 = 0xE900000000000059;
    }

    if (*useCase <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (*useCase > 1u)
    {
      v6 = v8;
    }
  }

  *v3 = v10;
  *(v3 + 8) = v6;
  *(v3 + 16) = v5;
  *(v3 + 24) = workflows;
  result.domain = workflows._rawValue;
  LOBYTE(result.useCase._object) = domain;
  LOBYTE(result.useCase._countAndFlagsBits) = useCase;
  return result;
}

uint64_t static UseCaseConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_230D26A94(v3, v5);
}

uint64_t sub_230DC36A8()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736143657375;
  }
}

uint64_t sub_230DC3704@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DC3F20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DC372C(uint64_t a1)
{
  v2 = sub_230DC39C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC3768(uint64_t a1)
{
  v2 = sub_230DC39C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C548, &qword_230E76700);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v15 = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC39C0();
  sub_230E69A50();
  v19 = 0;
  v8 = v13;
  sub_230E69810();
  if (!v8)
  {
    v9 = v12;
    v18 = v15;
    v17 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v14 = v9;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C558, &qword_230E76708);
    sub_230DC3CB4(&qword_27DB5C560, sub_230D57AA0, MEMORY[0x277D83948]);
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230DC39C0()
{
  result = qword_27DB5C550;
  if (!qword_27DB5C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C550);
  }

  return result;
}

uint64_t UseCaseConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C568, &qword_230E76710);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC39C0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  sub_230D0D17C();
  sub_230E69760();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C558, &qword_230E76708);
  v18 = 2;
  sub_230DC3CB4(&qword_27DB5C570, sub_230D57FA4, MEMORY[0x277D83978]);
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v15 = v16[1];
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DC3CB4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C558, &qword_230E76708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DC3D5C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_230D26A94(v3, v5);
}

unint64_t sub_230DC3E1C()
{
  result = qword_27DB5C578;
  if (!qword_27DB5C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C578);
  }

  return result;
}

unint64_t sub_230DC3E74()
{
  result = qword_27DB5C580;
  if (!qword_27DB5C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C580);
  }

  return result;
}

unint64_t sub_230DC3ECC()
{
  result = qword_27DB5C588;
  if (!qword_27DB5C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C588);
  }

  return result;
}

uint64_t sub_230DC3F20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DC403C(uint64_t a1)
{
  v2 = sub_230DC4F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4078(uint64_t a1)
{
  v2 = sub_230DC4F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC40B4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x45676E6968636163;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F69747563657865;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0x74757074754F6F6ELL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_230DC41B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DC6488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DC41E0(uint64_t a1)
{
  v2 = sub_230DC4D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC421C(uint64_t a1)
{
  v2 = sub_230DC4D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4258(uint64_t a1)
{
  v2 = sub_230DC4F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4294(uint64_t a1)
{
  v2 = sub_230DC4F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC42D0(uint64_t a1)
{
  v2 = sub_230DC4EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC430C(uint64_t a1)
{
  v2 = sub_230DC4EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4348(uint64_t a1)
{
  v2 = sub_230DC4E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4384(uint64_t a1)
{
  v2 = sub_230DC4E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC43C0(uint64_t a1)
{
  v2 = sub_230DC4E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC43FC(uint64_t a1)
{
  v2 = sub_230DC4E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC4438(uint64_t a1)
{
  v2 = sub_230DC4DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC4474(uint64_t a1)
{
  v2 = sub_230DC4DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DC44B0(uint64_t a1)
{
  v2 = sub_230DC4D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC44EC(uint64_t a1)
{
  v2 = sub_230DC4D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseExecutionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C590, &qword_230E76900);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v62 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C598, &qword_230E76908);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v59 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5A0, &qword_230E76910);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v56 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5A8, &qword_230E76918);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v53 = &v51 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5B0, &qword_230E76920);
  v52 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v15);
  v66 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5B8, &qword_230E76928);
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5C0, &qword_230E76930);
  v65 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v51 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C5C8, &qword_230E76938);
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v25);
  v26 = v1[1];
  v69 = *v1;
  v70 = v26;
  v27 = *(v1 + 16);
  v28 = a1[3];
  v29 = a1;
  v31 = &v51 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  sub_230DC4D44();
  v72 = v31;
  sub_230E69A50();
  if (v27 <= 2)
  {
    v37 = v17;
    v38 = v65;
    v39 = v66;
    v40 = v67;
    if (v27)
    {
      if (v27 == 1)
      {
        v74 = 1;
        sub_230DC4F3C();
        v41 = v68;
        v42 = v72;
        sub_230E697A0();
        sub_230E69810();
        (*(v51 + 8))(v20, v37);
      }

      else
      {
        v75 = 2;
        sub_230DC4EE8();
        v50 = v39;
        v41 = v68;
        v42 = v72;
        sub_230E697A0();
        sub_230E69810();
        (*(v52 + 8))(v50, v40);
      }

      return (*(v71 + 8))(v42, v41);
    }

    else
    {
      v73 = 0;
      sub_230DC4F90();
      v47 = v68;
      v48 = v72;
      sub_230E697A0();
      sub_230E69810();
      (*(v38 + 8))(v24, v21);
      return (*(v71 + 8))(v48, v47);
    }
  }

  else if (v27 > 4)
  {
    v43 = v68;
    if (v27 == 5)
    {
      v78 = 5;
      sub_230DC4DEC();
      v44 = v59;
      sub_230E697A0();
      v45 = v61;
      sub_230E69810();
      v46 = v60;
    }

    else
    {
      v79 = 6;
      sub_230DC4D98();
      v44 = v62;
      sub_230E697A0();
      v45 = v64;
      sub_230E69810();
      v46 = v63;
    }

    (*(v46 + 8))(v44, v45);
    return (*(v71 + 8))(v72, v43);
  }

  else
  {
    v32 = v68;
    if (v27 == 3)
    {
      v76 = 3;
      sub_230DC4E94();
      v33 = v53;
      v34 = v72;
      sub_230E697A0();
      v35 = v55;
      sub_230E69810();
      v36 = v54;
    }

    else
    {
      v77 = 4;
      sub_230DC4E40();
      v33 = v56;
      v34 = v72;
      sub_230E697A0();
      v35 = v58;
      sub_230E69810();
      v36 = v57;
    }

    (*(v36 + 8))(v33, v35);
    return (*(v71 + 8))(v34, v32);
  }
}

unint64_t sub_230DC4D44()
{
  result = qword_27DB5C5D0;
  if (!qword_27DB5C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5D0);
  }

  return result;
}

unint64_t sub_230DC4D98()
{
  result = qword_27DB5C5D8;
  if (!qword_27DB5C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5D8);
  }

  return result;
}

unint64_t sub_230DC4DEC()
{
  result = qword_27DB5C5E0;
  if (!qword_27DB5C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5E0);
  }

  return result;
}

unint64_t sub_230DC4E40()
{
  result = qword_27DB5C5E8;
  if (!qword_27DB5C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5E8);
  }

  return result;
}

unint64_t sub_230DC4E94()
{
  result = qword_27DB5C5F0;
  if (!qword_27DB5C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5F0);
  }

  return result;
}

unint64_t sub_230DC4EE8()
{
  result = qword_27DB5C5F8;
  if (!qword_27DB5C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C5F8);
  }

  return result;
}

unint64_t sub_230DC4F3C()
{
  result = qword_27DB5C600;
  if (!qword_27DB5C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C600);
  }

  return result;
}

unint64_t sub_230DC4F90()
{
  result = qword_27DB5C608;
  if (!qword_27DB5C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C608);
  }

  return result;
}

uint64_t UseCaseExecutionError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C610, &qword_230E76940);
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v3);
  v86 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C618, &qword_230E76948);
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v82 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C620, &qword_230E76950);
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v85 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C628, &qword_230E76958);
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v81 = &v66 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C630, &qword_230E76960);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v15);
  v84 = &v66 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C638, &qword_230E76968);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v17);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C640, &qword_230E76970);
  v68 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C648, &unk_230E76978);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v66 - v27;
  v29 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_230DC4D44();
  v30 = v88;
  sub_230E69A30();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v31 = v23;
  v66 = v20;
  v67 = v19;
  v32 = v84;
  v33 = v85;
  v34 = v86;
  v88 = v25;
  v35 = sub_230E69780();
  v36 = (2 * *(v35 + 16)) | 1;
  v89 = v35;
  v90 = v35 + 32;
  v91 = 0;
  v92 = v36;
  v37 = sub_230D07AC8();
  if (v37 == 7 || v91 != v92 >> 1)
  {
    v41 = sub_230E69580();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
    *v43 = &type metadata for UseCaseExecutionError;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v88 + 8))(v28, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v93 = v37;
  if (v37 > 2u)
  {
    if (v37 > 4u)
    {
      v58 = v83;
      v38 = v88;
      if (v37 == 5)
      {
        v94 = 5;
        sub_230DC4DEC();
        v47 = v82;
        sub_230E69690();
        v48 = v79;
        v60 = sub_230E69720();
        v62 = v63;
        (*(v78 + 8))(v47, v48);
      }

      else
      {
        v94 = 6;
        sub_230DC4D98();
        v55 = v34;
        sub_230E69690();
        v56 = v77;
        v60 = sub_230E69720();
        v62 = v65;
        (*(v80 + 8))(v55, v56);
      }

      goto LABEL_21;
    }

    v38 = v88;
    if (v37 == 3)
    {
      v94 = 3;
      sub_230DC4E94();
      v39 = v81;
      sub_230E69690();
      v40 = v74;
      v60 = sub_230E69720();
      v62 = v61;
      (*(v73 + 8))(v39, v40);
    }

    else
    {
      v94 = 4;
      sub_230DC4E40();
      sub_230E69690();
      v54 = v75;
      v60 = sub_230E69720();
      v62 = v64;
      (*(v76 + 8))(v33, v54);
    }

    goto LABEL_20;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v94 = 1;
      sub_230DC4F3C();
      v45 = v67;
      sub_230E69690();
      v46 = v70;
      v60 = sub_230E69720();
      v62 = v57;
      (*(v69 + 8))(v45, v46);
      v58 = v83;
      v38 = v88;
LABEL_21:
      (*(v38 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v51 = v87;
      goto LABEL_22;
    }

    v94 = 2;
    sub_230DC4EE8();
    sub_230E69690();
    v52 = v72;
    v53 = sub_230E69720();
    v38 = v88;
    v60 = v53;
    v62 = v59;
    (*(v71 + 8))(v32, v52);
LABEL_20:
    v58 = v83;
    goto LABEL_21;
  }

  v94 = 0;
  sub_230DC4F90();
  sub_230E69690();
  v49 = v66;
  v60 = sub_230E69720();
  v62 = v50;
  (*(v68 + 8))(v31, v49);
  (*(v88 + 8))(v28, v24);
  swift_unknownObjectRelease();
  v51 = v87;
  v58 = v83;
LABEL_22:
  *v58 = v60;
  *(v58 + 8) = v62;
  *(v58 + 16) = v93;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_230DC5B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230DC5B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_230DC5C4C()
{
  result = qword_27DB5C650;
  if (!qword_27DB5C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C650);
  }

  return result;
}

unint64_t sub_230DC5CA4()
{
  result = qword_27DB5C658;
  if (!qword_27DB5C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C658);
  }

  return result;
}

unint64_t sub_230DC5CFC()
{
  result = qword_27DB5C660;
  if (!qword_27DB5C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C660);
  }

  return result;
}

unint64_t sub_230DC5D54()
{
  result = qword_27DB5C668;
  if (!qword_27DB5C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C668);
  }

  return result;
}

unint64_t sub_230DC5DAC()
{
  result = qword_27DB5C670;
  if (!qword_27DB5C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C670);
  }

  return result;
}

unint64_t sub_230DC5E04()
{
  result = qword_27DB5C678;
  if (!qword_27DB5C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C678);
  }

  return result;
}

unint64_t sub_230DC5E5C()
{
  result = qword_27DB5C680;
  if (!qword_27DB5C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C680);
  }

  return result;
}

unint64_t sub_230DC5EB4()
{
  result = qword_27DB5C688;
  if (!qword_27DB5C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C688);
  }

  return result;
}

unint64_t sub_230DC5F0C()
{
  result = qword_27DB5C690;
  if (!qword_27DB5C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C690);
  }

  return result;
}

unint64_t sub_230DC5F64()
{
  result = qword_27DB5C698;
  if (!qword_27DB5C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C698);
  }

  return result;
}

unint64_t sub_230DC5FBC()
{
  result = qword_27DB5C6A0;
  if (!qword_27DB5C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6A0);
  }

  return result;
}

unint64_t sub_230DC6014()
{
  result = qword_27DB5C6A8;
  if (!qword_27DB5C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6A8);
  }

  return result;
}

unint64_t sub_230DC606C()
{
  result = qword_27DB5C6B0;
  if (!qword_27DB5C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6B0);
  }

  return result;
}

unint64_t sub_230DC60C4()
{
  result = qword_27DB5C6B8;
  if (!qword_27DB5C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6B8);
  }

  return result;
}

unint64_t sub_230DC611C()
{
  result = qword_27DB5C6C0;
  if (!qword_27DB5C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6C0);
  }

  return result;
}

unint64_t sub_230DC6174()
{
  result = qword_27DB5C6C8;
  if (!qword_27DB5C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6C8);
  }

  return result;
}

unint64_t sub_230DC61CC()
{
  result = qword_27DB5C6D0;
  if (!qword_27DB5C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6D0);
  }

  return result;
}

unint64_t sub_230DC6224()
{
  result = qword_27DB5C6D8;
  if (!qword_27DB5C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6D8);
  }

  return result;
}

unint64_t sub_230DC627C()
{
  result = qword_27DB5C6E0;
  if (!qword_27DB5C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6E0);
  }

  return result;
}

unint64_t sub_230DC62D4()
{
  result = qword_27DB5C6E8;
  if (!qword_27DB5C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6E8);
  }

  return result;
}

unint64_t sub_230DC632C()
{
  result = qword_27DB5C6F0;
  if (!qword_27DB5C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6F0);
  }

  return result;
}

unint64_t sub_230DC6384()
{
  result = qword_27DB5C6F8;
  if (!qword_27DB5C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C6F8);
  }

  return result;
}

unint64_t sub_230DC63DC()
{
  result = qword_27DB5C700;
  if (!qword_27DB5C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C700);
  }

  return result;
}

unint64_t sub_230DC6434()
{
  result = qword_27DB5C708;
  if (!qword_27DB5C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C708);
  }

  return result;
}

uint64_t sub_230DC6488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69747563657865 && a2 == 0xEE00726F7272456ELL;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45676E6968636163 && a2 == 0xEC000000726F7272 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E83490 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80D10 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74757074754F6F6ELL && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000230E834B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E834D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t UseCaseRequest.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UseCaseRequest.useCase.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UseCaseRequest.cachingBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 UseCaseRequest.cachingBehavior.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t UseCaseRequest.inputPayload.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t UseCaseRequest.processIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t UseCaseRequest.treatmentIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t UseCaseRequest.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t UseCaseRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:useCache:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  v27 = a2[1];
  v28 = *a2;
  v16 = *(a2 + 32);
  v17 = *a3;
  if (v15 > 3)
  {
    v18 = 0xEF7265776F546D65;
    v23 = 0x7449756F59726F46;
    if (v15 != 6)
    {
      v23 = 0xD000000000000016;
      v18 = 0x8000000230E80400;
    }

    v24 = 0xEC00000059464741;
    v25 = 0xD000000000000011;
    if (v15 == 4)
    {
      v25 = 0x4154656461637261;
    }

    else
    {
      v24 = 0x8000000230E803D0;
    }

    if (*a1 <= 5u)
    {
      v22 = v25;
    }

    else
    {
      v22 = v23;
    }

    if (*a1 <= 5u)
    {
      v18 = v24;
    }
  }

  else
  {
    v18 = 0xE400000000000000;
    v19 = 1953719668;
    v20 = 0xE400000000000000;
    v21 = 2019850594;
    if (v15 != 2)
    {
      v21 = 0xD000000000000010;
      v20 = 0x8000000230E803B0;
    }

    if (*a1)
    {
      v19 = 0x4647656461637261;
      v18 = 0xE900000000000059;
    }

    if (*a1 <= 1u)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (*a1 > 1u)
    {
      v18 = v20;
    }
  }

  *a9 = v22;
  *(a9 + 8) = v18;

  *(a9 + 16) = v28;
  *(a9 + 32) = v27;
  *(a9 + 48) = v16;

  *(a9 + 56) = v17;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5 & 1;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8 & 1;
  return result;
}

uint64_t UseCaseRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:useCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v16 = *(a3 + 32);
  v17 = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;

  v18 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v18;
  *(a9 + 48) = v16;

  *(a9 + 56) = v17;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6 & 1;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

unint64_t sub_230DC6B78()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x6568636143657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x42676E6968636163;
  if (v1 != 1)
  {
    v5 = 0x7961507475706E69;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_230DC6C4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DC8D0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DC6C74(uint64_t a1)
{
  v2 = sub_230DC6FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC6CB0(uint64_t a1)
{
  v2 = sub_230DC6FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C710, &qword_230E77480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - v6;
  v8 = *(v1 + 16);
  v20 = *(v1 + 32);
  v21 = v8;
  v26 = *(v1 + 48);
  v9 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v9;
  v17 = *(v1 + 72);
  v10 = *(v1 + 88);
  v15 = *(v1 + 80);
  v16 = v10;
  v14[1] = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC6FAC();
  sub_230E69A50();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_230E69810();
  if (!v11)
  {
    v12 = v19;
    v24 = v20;
    v23 = v21;
    v25 = v26;
    v27 = 1;
    sub_230DC7000();

    sub_230E69850();

    *&v23 = v12;
    v27 = 2;
    sub_230DC7054();

    sub_230E697F0();

    LOBYTE(v23) = 3;
    sub_230E697D0();
    LOBYTE(v23) = 4;
    sub_230E697B0();
    LOBYTE(v23) = 5;
    sub_230E69820();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230DC6FAC()
{
  result = qword_27DB5C718;
  if (!qword_27DB5C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C718);
  }

  return result;
}

unint64_t sub_230DC7000()
{
  result = qword_27DB5C720;
  if (!qword_27DB5C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C720);
  }

  return result;
}

unint64_t sub_230DC7054()
{
  result = qword_27DB5C728;
  if (!qword_27DB5C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C728);
  }

  return result;
}

uint64_t UseCaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C730, &qword_230E77488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC6FAC();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v45) = 0;
    v10 = sub_230E69720();
    v37 = v11;
    LOBYTE(v38) = 1;
    sub_230DC7588();
    sub_230E69760();
    v12 = v46;
    v36 = v45;
    v35 = v47;
    v34 = v48;
    v33 = v49;

    LOBYTE(v38) = 2;
    sub_230DC75DC();
    sub_230E69700();
    v32 = a2;
    v13 = v45;

    LOBYTE(v45) = 3;
    v31 = sub_230E696E0();
    v30 = v10;
    v58 = v14 & 1;
    LOBYTE(v45) = 4;
    v15 = sub_230E696B0();
    v17 = v16;
    v29 = v15;
    v59 = 5;
    v18 = sub_230E69730();
    (*(v6 + 8))(v9, v5);
    v19 = v30;
    *&v38 = v30;
    v20 = v37;
    *(&v38 + 1) = v37;
    *&v39 = v36;
    *(&v39 + 1) = v12;
    *&v40 = v35;
    *(&v40 + 1) = v34;
    LOBYTE(v41) = v33;
    *(&v41 + 1) = v13;
    *&v42 = v31;
    v28 = v58;
    BYTE8(v42) = v58;
    v21 = v29;
    *&v43 = v29;
    *(&v43 + 1) = v17;
    v18 &= 1u;
    v44 = v18;
    v22 = v32;
    *(v32 + 96) = v18;
    v23 = v39;
    *v22 = v38;
    v22[1] = v23;
    v24 = v41;
    v22[2] = v40;
    v22[3] = v24;
    v25 = v43;
    v22[4] = v42;
    v22[5] = v25;
    sub_230DC7630(&v38, &v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = v19;
    v46 = v20;
    v47 = v36;
    v48 = v12;
    v49 = v35;
    v50 = v34;
    v51 = v33;
    v52 = v13;
    v53 = v31;
    v54 = v28;
    v55 = v21;
    v56 = v17;
    v57 = v18;
    return sub_230D8151C(&v45);
  }
}

unint64_t sub_230DC7588()
{
  result = qword_27DB5C738;
  if (!qword_27DB5C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C738);
  }

  return result;
}

unint64_t sub_230DC75DC()
{
  result = qword_27DB5C740;
  if (!qword_27DB5C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C740);
  }

  return result;
}

uint64_t EnhancedUseCaseRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_230DC7630(v10, v9);
}

__n128 EnhancedUseCaseRequest.request.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_230D8151C(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t EnhancedUseCaseRequest.requestContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 129);
  v6 = *(v1 + 136);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 32) = v6;
}

uint64_t EnhancedUseCaseRequest.requestContext.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = a1[25];
  v7 = *(a1 + 4);

  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 129) = v6;
  *(v1 + 136) = v7;
  return result;
}

__n128 EnhancedUseCaseRequest.init(request:requestContext:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = a2[24];
  v7 = a2[25];
  v8 = *(a2 + 4);
  v9 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v9;
  *(a3 + 96) = *(a1 + 96);
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 104) = v3;
  *(a3 + 112) = v4;
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 129) = v7;
  *(a3 + 136) = v8;
  return result;
}

uint64_t sub_230DC78BC(uint64_t a1)
{
  v2 = sub_230DC7BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC78F8(uint64_t a1)
{
  v2 = sub_230DC7BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnhancedUseCaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C748, &qword_230E77490);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - v6;
  v8 = v1[5];
  v43 = v1[4];
  v44 = v8;
  v45 = *(v1 + 96);
  v9 = v1[1];
  v39 = *v1;
  v40 = v9;
  v10 = v1[3];
  v41 = v1[2];
  v42 = v10;
  v19 = *(v1 + 104);
  v11 = *(v1 + 15);
  v18 = *(v1 + 14);
  v12 = *(v1 + 128);
  v16 = *(v1 + 129);
  v17 = v12;
  v13 = *(v1 + 17);
  v20 = v11;
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC7630(&v39, &v32);
  sub_230DC7BD8();
  sub_230E69A50();
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  v31 = 0;
  sub_230DC7C2C();
  sub_230E69850();
  v29[4] = v36;
  v29[5] = v37;
  v30 = v38;
  v29[0] = v32;
  v29[1] = v33;
  v29[2] = v34;
  v29[3] = v35;
  sub_230D8151C(v29);
  if (!v2)
  {
    v23[0] = v19;
    v24 = v18;
    v25 = v20;
    v26 = v17;
    v27 = v16;
    v28 = v21;
    v22 = 1;
    sub_230D5B948();

    sub_230E69850();
  }

  return (*(v46 + 8))(v7, v4);
}

unint64_t sub_230DC7BD8()
{
  result = qword_27DB5C750;
  if (!qword_27DB5C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C750);
  }

  return result;
}

unint64_t sub_230DC7C2C()
{
  result = qword_27DB5C758;
  if (!qword_27DB5C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C758);
  }

  return result;
}

uint64_t EnhancedUseCaseRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C760, &unk_230E77498);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC7BD8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v59;
  v44 = 0;
  sub_230DC7F8C();
  sub_230E69760();
  v56 = v49;
  v57 = v50;
  LOBYTE(v58) = v51;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v39 = 1;
  sub_230D5B9F0();
  sub_230E69760();
  (*(v9 + 8))(v8, v4);
  v11 = v40;
  v12 = *(&v41 + 1);
  v21 = v41;
  v13 = v42;
  LOBYTE(v9) = HIBYTE(v42);
  v14 = v43;
  v26 = v56;
  v27 = v57;
  *&v28 = v58;
  v22 = v52;
  v23 = v53;
  v24 = v54;
  v25 = v55;
  BYTE8(v28) = v40;
  v29 = v41;
  LOWORD(v30) = v42;
  *(&v30 + 1) = v43;
  v15 = v55;
  v10[2] = v54;
  v10[3] = v15;
  v16 = v27;
  v10[4] = v26;
  v10[5] = v16;
  v17 = v23;
  *v10 = v22;
  v10[1] = v17;
  v18 = v30;
  v10[7] = v29;
  v10[8] = v18;
  v10[6] = v28;
  sub_230DC7FE0(&v22, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[4] = v56;
  v31[5] = v57;
  v32 = v58;
  v31[0] = v52;
  v31[1] = v53;
  v31[2] = v54;
  v31[3] = v55;
  v33 = v11;
  v34 = v21;
  v35 = v12;
  v36 = v13;
  v37 = v9;
  v38 = v14;
  return sub_230DC8018(v31);
}

unint64_t sub_230DC7F8C()
{
  result = qword_27DB5C768;
  if (!qword_27DB5C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C768);
  }

  return result;
}

uint64_t UseCaseInputPayload.features.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

ServicesIntelligence::UseCaseInputPayload __swiftcall UseCaseInputPayload.init(features:)(Swift::OpaquePointer features)
{
  v3 = v1;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  v3->_rawValue = features._rawValue;
  return result;
}

uint64_t UseCaseInputPayload.ValidationError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if ((v0[6] & 1) == 0)
  {
    v8 = v0[5];
    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
    MEMORY[0x23191DA00](v5, v8);
LABEL_8:
    v7 = 1869029420;
    goto LABEL_9;
  }

  v6 = v5[2];
  if (v6 != 1)
  {
    if (v6)
    {
      sub_230E69540();

      MEMORY[0x23191DA00](v2, v1);
      MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E82170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      sub_230D443B8();
      v14 = sub_230E68FF0();
      MEMORY[0x23191DA00](v14);

      v12 = 0x20746F67202C29;
      v13 = 0xE700000000000000;
      goto LABEL_10;
    }

    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    v7 = 1866932270;
LABEL_9:
    v12 = v7 & 0xFFFF0000FFFFFFFFLL | 0x207400000000;
    v13 = 0xE600000000000000;
LABEL_10:
    MEMORY[0x23191DA00](v12, v13);
    MEMORY[0x23191DA00](v4, v3);
    return 0x7463657078656E55;
  }

  sub_230E69540();

  MEMORY[0x23191DA00](v2, v1);
  result = MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
  if (v5[2])
  {
    v11 = v5[4];
    v10 = v5[5];

    MEMORY[0x23191DA00](v11, v10);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_230DC838C(uint64_t a1)
{
  v2 = sub_230DC87A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC83C8(uint64_t a1)
{
  v2 = sub_230DC87A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseInputPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C770, &qword_230E774A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC87A8();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

uint64_t UseCaseInputPayload.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C780, &qword_230E774C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC87A8();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B708, sub_230D5807C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DC87A8()
{
  result = qword_27DB5C778;
  if (!qword_27DB5C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C778);
  }

  return result;
}

uint64_t sub_230DC87FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230DC8844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_230DC88DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230DC8924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230DC89F8()
{
  result = qword_27DB5C788;
  if (!qword_27DB5C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C788);
  }

  return result;
}

unint64_t sub_230DC8A50()
{
  result = qword_27DB5C790;
  if (!qword_27DB5C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C790);
  }

  return result;
}

unint64_t sub_230DC8AA8()
{
  result = qword_27DB5C798;
  if (!qword_27DB5C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C798);
  }

  return result;
}

unint64_t sub_230DC8B00()
{
  result = qword_27DB5C7A0;
  if (!qword_27DB5C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7A0);
  }

  return result;
}

unint64_t sub_230DC8B58()
{
  result = qword_27DB5C7A8;
  if (!qword_27DB5C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7A8);
  }

  return result;
}

unint64_t sub_230DC8BB0()
{
  result = qword_27DB5C7B0;
  if (!qword_27DB5C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7B0);
  }

  return result;
}

unint64_t sub_230DC8C08()
{
  result = qword_27DB5C7B8;
  if (!qword_27DB5C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7B8);
  }

  return result;
}

unint64_t sub_230DC8C60()
{
  result = qword_27DB5C7C0;
  if (!qword_27DB5C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7C0);
  }

  return result;
}

unint64_t sub_230DC8CB8()
{
  result = qword_27DB5C7C8;
  if (!qword_27DB5C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7C8);
  }

  return result;
}

uint64_t sub_230DC8D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42676E6968636163 && a2 == 0xEF726F6976616865 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961507475706E69 && a2 == 0xEC00000064616F6CLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E821B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6568636143657375 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t UseCaseResponse.workflow.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 89);
  v4 = *(v14 + 9);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 89) = v4;
  return sub_230D2D898(v10, &v9);
}

__n128 UseCaseResponse.workflow.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 89);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_230D2D8F4(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  *(v1 + 89) = *(a1 + 89);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t UseCaseResponse.result.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

__n128 UseCaseResponse.init(workflow:result:cacheStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  *(a4 + 89) = *(a1 + 89);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 120) = v4;
  return result;
}

uint64_t sub_230DC90C4(uint64_t a1)
{
  v2 = sub_230DC9420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC9100(uint64_t a1)
{
  v2 = sub_230DC9420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C7D0, &unk_230E77B20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  v9 = v1[5];
  v38 = v1[4];
  v39[0] = v9;
  *(v39 + 9) = *(v1 + 89);
  v10 = v1[1];
  v34 = *v1;
  v35 = v10;
  v11 = v1[3];
  v36 = v1[2];
  v37 = v11;
  v40 = *(v1 + 14);
  v18 = *(v1 + 120);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_230D2D898(&v34, &v28);
  sub_230DC9420();
  sub_230E69A50();
  v31 = v37;
  v32 = v38;
  v33[0] = v39[0];
  *(v33 + 9) = *(v39 + 9);
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v27 = 0;
  sub_230D57AA0();
  sub_230E69850();
  if (v2)
  {
    v25 = v32;
    *v26 = v33[0];
    *&v26[9] = *(v33 + 9);
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_230D2D8F4(&v21);
  }

  else
  {
    v16 = v18;
    v25 = v32;
    *v26 = v33[0];
    *&v26[9] = *(v33 + 9);
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_230D2D8F4(&v21);
    v20 = v40;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230E69850();
    LOBYTE(v20) = v16;
    v19 = 2;
    sub_230D57BB0();
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_230DC9420()
{
  result = qword_27DB5C7D8;
  if (!qword_27DB5C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7D8);
  }

  return result;
}

uint64_t UseCaseResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C7E0, &qword_230E77B30);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC9420();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v32 = 0;
  sub_230D57FA4();
  v10 = v45;
  sub_230E69760();
  v43 = v37;
  *v44 = v38[0];
  *&v44[9] = *(v38 + 9);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  LOBYTE(v21[0]) = 1;
  sub_230D57FF8(&qword_27DB5B708, sub_230D5807C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_230E69760();
  v20 = *&v27[0];
  v30 = 2;
  sub_230D58228();
  sub_230E69760();
  (*(v9 + 8))(v8, v10);
  v11 = v31;
  v13 = *v44;
  v12 = *&v44[16];
  v25 = *v44;
  v26[0] = *&v44[16];
  v14 = v42;
  v23 = v42;
  v24 = v43;
  v16 = v39;
  v15 = v40;
  v21[0] = v39;
  v21[1] = v40;
  v22 = v41;
  v17 = v20;
  *&v26[1] = v20;
  BYTE8(v26[1]) = v31;
  a2[4] = v43;
  a2[5] = v13;
  a2[6] = v12;
  *a2 = v16;
  a2[1] = v15;
  *(a2 + 105) = *(v26 + 9);
  a2[2] = v22;
  a2[3] = v14;
  sub_230DC9814(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[4] = v43;
  v27[5] = *v44;
  v27[6] = *&v44[16];
  v27[0] = v39;
  v27[1] = v40;
  v27[2] = v41;
  v27[3] = v42;
  v28 = v17;
  v29 = v11;
  return sub_230DC984C(v27);
}

unint64_t sub_230DC98D0()
{
  result = qword_27DB5C7E8;
  if (!qword_27DB5C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7E8);
  }

  return result;
}

unint64_t sub_230DC9928()
{
  result = qword_27DB5C7F0;
  if (!qword_27DB5C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7F0);
  }

  return result;
}

unint64_t sub_230DC9980()
{
  result = qword_27DB5C7F8;
  if (!qword_27DB5C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7F8);
  }

  return result;
}

uint64_t sub_230DC99E0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DC9AC8(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DC9B9C(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

unint64_t sub_230DC9C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_230DCAC48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_230DC9CB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007372;
  v4 = 0x6574656D61726170;
  v5 = 0xD000000000000010;
  v6 = 0x8000000230E801B0;
  v7 = 0x8000000230E801D0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x8000000230E801F0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C65646F6DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_230DC9D54()
{
  v1 = *v0;
  v2 = 0x6574656D61726170;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C65646F6DLL;
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

unint64_t sub_230DC9DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DCAC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DC9E1C(uint64_t a1)
{
  v2 = sub_230DCA3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC9E58(uint64_t a1)
{
  v2 = sub_230DCA3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Workflow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C800, &unk_230E77D80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_230DCA3B8();
  sub_230E69A30();
  if (!v2)
  {
    v35 = v6;
    v49 = 1;
    sub_230DCA40C();
    sub_230E69700();
    v41 = v50;
    v42 = *v51;
    v43 = *&v51[16];
    v44 = *&v51[32];
    v45 = *&v51[48];
    v11 = v50;
    v47 = *&v51[24];
    v48 = *&v51[40];
    v46 = *&v51[8];
    if (*(&v50 + 1))
    {
      v33 = *(&v50 + 1);
      v34 = *v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
      v36[0] = 2;
      sub_230DCA648(&qword_27DB5C818, &unk_27DB5D9A0, &qword_230E77D90, sub_230DCA5F4);
      sub_230E69700();
      if (v37)
      {
        v32 = v37;
      }

      else
      {
        v32 = sub_230D0EE04(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
      v36[0] = 3;
      sub_230DCA648(&unk_27DB5D990, &qword_27DB5C828, &qword_230E77DA0, sub_230DCA6CC);
      sub_230E69700();
      v14 = v37;
      v15 = v35;
      if (!v37)
      {
        v14 = sub_230D0EF6C(MEMORY[0x277D84F90]);
      }

      LOBYTE(v37) = 4;
      v16 = sub_230E696B0();
      v19 = v24;
      v30 = v14;
      v25 = v5;
      v26 = v15;
      v27 = MEMORY[0x277D84F90];
      v31 = v16;
      v29 = sub_230D0EE04(MEMORY[0x277D84F90]);
      sub_230D0EF6C(v27);
      (*(v26 + 8))(v9, v25);

      v22 = v30;
      v21 = v31;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v23 = 1;
      v36[0] = 1;
      v20 = v32;
      v17 = v33;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
      v36[0] = 0;
      sub_230DCA460();
      sub_230E69700();
      v11 = v37;
      v12 = v35;
      if (!v37)
      {
        v11 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      }

      LOBYTE(v37) = 4;
      v17 = sub_230E696B0();
      v34 = v18;
      v19 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      (*(v12 + 8))(v9, v5);

      v23 = 0;
    }

    *a2 = v11;
    *(a2 + 8) = v17;
    *(a2 + 16) = v34;
    v28 = v39;
    *(a2 + 24) = v38;
    *(a2 + 40) = v28;
    *(a2 + 56) = v40;
    *(a2 + 72) = v20;
    *(a2 + 80) = v22;
    *(a2 + 88) = v21;
    *(a2 + 96) = v19;
    *(a2 + 104) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_230DCA3B8()
{
  result = qword_27DB5C808;
  if (!qword_27DB5C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C808);
  }

  return result;
}

unint64_t sub_230DCA40C()
{
  result = qword_27DB5C810;
  if (!qword_27DB5C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C810);
  }

  return result;
}

unint64_t sub_230DCA460()
{
  result = qword_27DB5D980;
  if (!qword_27DB5D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAD0, &qword_230E73560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D980);
  }

  return result;
}

uint64_t Workflow.encode(to:)(void *a1)
{
  if (*(v1 + 104))
  {
    return InferenceWorkflow.encode(to:)(a1);
  }

  else
  {
    return RuleWorkflow.encode(to:)(a1);
  }
}

uint64_t sub_230DCA578(void *a1)
{
  if (*(v1 + 104))
  {
    return InferenceWorkflow.encode(to:)(a1);
  }

  else
  {
    return RuleWorkflow.encode(to:)(a1);
  }
}

unint64_t sub_230DCA5F4()
{
  result = qword_27DB5D9B0;
  if (!qword_27DB5D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9B0);
  }

  return result;
}

uint64_t sub_230DCA648(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_230DCA6CC()
{
  result = qword_27DB5C830;
  if (!qword_27DB5C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C830);
  }

  return result;
}

uint64_t _s20ServicesIntelligence8WorkflowO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v41 = a1[4];
  *v42 = v3;
  *&v42[9] = *(a1 + 89);
  v4 = a1[1];
  v37 = *a1;
  v38 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v39 = a1[2];
  v40 = v5;
  v8 = a2[1];
  v43 = *a2;
  v44 = v8;
  *&v48[9] = *(a2 + 89);
  v9 = a2[3];
  v10 = a2[5];
  v47 = a2[4];
  *v48 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v45 = a2[2];
  v46 = v11;
  v49[0] = v7;
  v49[1] = v6;
  *(v50 + 9) = *(a1 + 89);
  v14 = a1[5];
  v49[4] = v41;
  v50[0] = v14;
  v49[2] = v39;
  v49[3] = v2;
  v50[2] = v12;
  v50[3] = v13;
  *(v51 + 9) = *(a2 + 89);
  v15 = a2[5];
  v50[6] = v47;
  v51[0] = v15;
  v50[4] = v45;
  v50[5] = v9;
  v16 = v37;
  v17 = v38;
  if ((v42[24] & 1) == 0)
  {
    if (v48[24])
    {
      goto LABEL_5;
    }

    v23 = *(&v43 + 1);
    v22 = v44;
    v24 = v43;
    sub_230D2D898(&v43, v36);
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v43, v36);
    if (sub_230D6A784(v16, v24))
    {
      if (!v17)
      {
        sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v43);
        sub_230D2D8F4(&v37);
        if (v22)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      if (v22)
      {
        if (__PAIR128__(v17, *(&v16 + 1)) == __PAIR128__(v22, v23))
        {
          sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
          sub_230D2D8F4(&v43);
          sub_230D2D8F4(&v37);
          v21 = 1;
          return v21 & 1;
        }

        v26 = sub_230E698C0();
        sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v43);
        sub_230D2D8F4(&v37);
        if ((v26 & 1) == 0)
        {
LABEL_12:
          v21 = 0;
          return v21 & 1;
        }

LABEL_17:
        v21 = 1;
        return v21 & 1;
      }
    }

    sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
    sub_230D2D8F4(&v43);
    sub_230D2D8F4(&v37);
    goto LABEL_12;
  }

  if ((v48[24] & 1) == 0)
  {
LABEL_5:
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v43, v36);
    sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
    goto LABEL_12;
  }

  v29 = v37;
  v30 = v38;
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = *(a1 + 72);
  v35 = *(a1 + 88);
  v31 = *(a1 + 24);
  v18 = a2[5];
  v27[4] = a2[4];
  v27[5] = v18;
  v28 = *(a2 + 12);
  v19 = a2[1];
  v27[0] = *a2;
  v27[1] = v19;
  v20 = a2[3];
  v27[2] = a2[2];
  v27[3] = v20;
  sub_230D2D898(&v43, v36);
  sub_230D2D898(&v37, v36);
  sub_230D2D898(&v37, v36);
  sub_230D2D898(&v43, v36);
  v21 = _s20ServicesIntelligence17InferenceWorkflowV2eeoiySbAC_ACtFZ_0(&v29, v27);
  sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
  sub_230D2D8F4(&v43);
  sub_230D2D8F4(&v37);
  return v21 & 1;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_230DCAA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_230DCAAB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_230DCAB44()
{
  result = qword_27DB5C838;
  if (!qword_27DB5C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C838);
  }

  return result;
}

unint64_t sub_230DCAB9C()
{
  result = qword_27DB5C840;
  if (!qword_27DB5C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C840);
  }

  return result;
}

unint64_t sub_230DCABF4()
{
  result = qword_27DB5C848;
  if (!qword_27DB5C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C848);
  }

  return result;
}

unint64_t sub_230DCAC48(uint64_t a1, uint64_t a2)
{
  v2 = sub_230E69680();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

ServicesIntelligence::CacheStatus_optional __swiftcall CacheStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

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

uint64_t CacheStatus.rawValue.getter()
{
  if (*v0)
  {
    return 1936943469;
  }

  else
  {
    return 7629160;
  }
}

uint64_t sub_230DCAD24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1936943469;
  }

  else
  {
    v3 = 7629160;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1936943469;
  }

  else
  {
    v5 = 7629160;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

unint64_t sub_230DCADC0()
{
  result = qword_27DB5C850;
  if (!qword_27DB5C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C850);
  }

  return result;
}

uint64_t sub_230DCAE14()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCAE88(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DCAEE8(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCAF58@<X0>(char *a2@<X8>)
{
  v3 = sub_230E69680();

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

void sub_230DCAFB8(uint64_t *a1@<X8>)
{
  v2 = 7629160;
  if (*v1)
  {
    v2 = 1936943469;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_230DCB0A8()
{
  result = qword_27DB5C858;
  if (!qword_27DB5C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C858);
  }

  return result;
}

uint64_t DataClass.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230E69680();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_230DCB184()
{
  result = qword_27DB5C860;
  if (!qword_27DB5C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C860);
  }

  return result;
}

uint64_t sub_230DCB1D8()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DCB254(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DCB2AC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_230E69680();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_230DCB328()
{
  result = qword_27DB5C868;
  if (!qword_27DB5C868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C870, &qword_230E781D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C868);
  }

  return result;
}

unint64_t sub_230DCB45C()
{
  result = qword_2815660A0;
  if (!qword_2815660A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660A0);
  }

  return result;
}

uint64_t Domain.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F6D6D6F63;
    v7 = 0x65676175676E616CLL;
    if (v1 != 8)
    {
      v7 = 0x7974697275636573;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7374736163646F70;
    if (v1 != 5)
    {
      v8 = 0x6F65646976;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616E7265746E69;
    v3 = 0x736B6F6F62;
    v4 = 0x7373656E746966;
    if (v1 != 3)
    {
      v4 = 0x636973756DLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1936748641;
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
}

unint64_t sub_230DCB5D4@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    goto LABEL_8;
  }

  sub_230E69060();

  v4 = sub_230E69680();

  if (v4 > 3)
  {
    goto LABEL_8;
  }

  if (qword_27DB5A470 != -1)
  {
    swift_once();
  }

  v5 = off_27DB5C878;
  if (*(off_27DB5C878 + 2) && (result = sub_230DB4C38(v4), (v7 & 1) != 0))
  {
    *a1 = *(v5[7] + result);
  }

  else
  {
LABEL_8:
    sub_230DCBD30();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

ServicesIntelligence::Domain_optional __swiftcall Domain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230DCB778()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230D55C8C(v3, v1);
  return sub_230E699D0();
}

uint64_t sub_230DCB7C8(uint64_t a1)
{
  v2 = *v1;
  sub_230E699B0();
  sub_230D55C8C(v4, v2);
  return sub_230E699D0();
}

uint64_t sub_230DCB818@<X0>(uint64_t *a1@<X8>)
{
  result = Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_230DCB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DCBCB4();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DCB974(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBCB4();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_230DCB9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBC60();
  v5 = sub_230DCBCB4();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_230DCBA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBC60();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t Domain.Error.hashValue.getter()
{
  sub_230E699B0();
  MEMORY[0x23191E2B0](0);
  return sub_230E699D0();
}

unint64_t sub_230DCBB10()
{
  result = qword_27DB5C880;
  if (!qword_27DB5C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C880);
  }

  return result;
}

unint64_t sub_230DCBB68()
{
  result = qword_27DB5C888;
  if (!qword_27DB5C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAB8, &qword_230E72368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C888);
  }

  return result;
}

unint64_t sub_230DCBBD0()
{
  result = qword_27DB5C890;
  if (!qword_27DB5C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C890);
  }

  return result;
}

unint64_t sub_230DCBC60()
{
  result = qword_27DB5C898;
  if (!qword_27DB5C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C898);
  }

  return result;
}

unint64_t sub_230DCBCB4()
{
  result = qword_27DB5C8A0;
  if (!qword_27DB5C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8A0);
  }

  return result;
}

void *sub_230DCBD08()
{
  result = sub_230D0D424(&unk_2845A4BA8);
  off_27DB5C878 = result;
  return result;
}

unint64_t sub_230DCBD30()
{
  result = qword_27DB5C8A8;
  if (!qword_27DB5C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8A8);
  }

  return result;
}

ServicesIntelligence::Process_optional __swiftcall Process.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Process.bundleID.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD00000000000001FLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_230DCBE60()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCBF18(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DCBFBC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DCC07C(unint64_t *a1@<X8>)
{
  v2 = "com.apple.servicesintelligenced";
  v3 = 0xD00000000000001ELL;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000012;
    v2 = "com.apple.SIDInferenceProvider";
  }

  v4 = 0xD00000000000001FLL;
  if (*v1)
  {
    v5 = "com.apple.internal.sidtool";
  }

  else
  {
    v4 = 0xD00000000000001ALL;
    v5 = &unk_230E80070;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_230DCC1D0()
{
  result = qword_27DB5C8B0;
  if (!qword_27DB5C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8B0);
  }

  return result;
}

unint64_t sub_230DCC228()
{
  result = qword_27DB5C8B8;
  if (!qword_27DB5C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C8C0, &qword_230E785C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8B8);
  }

  return result;
}

unint64_t sub_230DCC29C()
{
  result = qword_27DB5C8C8;
  if (!qword_27DB5C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8C8);
  }

  return result;
}

uint64_t static RequestContext.from(_:correlationID:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 32) = a1;
  v6 = sub_230E68940();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 105) = *a2;

  return MEMORY[0x2822009F8](sub_230DCC3C4, 0, 0);
}

uint64_t sub_230DCC3C4(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v5 = *(v1 + 64);
    v4 = *(v1 + 72);
    v6 = *(v1 + 56);
    sub_230E68930();
    v3 = sub_230E68920();
    v2 = v7;
    (*(v5 + 8))(v4, v6);
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v2;
  if (RequestType.rawValue.getter() == 0xD000000000000010 && 0x8000000230E80630 == v8)
  {

LABEL_12:
    v12 = *(v1 + 32);
    *v12 = *(v1 + 105);
    *(v12 + 8) = v3;
    *(v12 + 16) = v2;
    v13 = *(v1 + 32);
    *(v13 + 24) = 0;
    *(v13 + 32) = MEMORY[0x277D84FA0];

    v14 = *(v1 + 8);

    return v14();
  }

  v9 = sub_230E698C0();

  if (v9)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD000000000000013 && 0x8000000230E805D0 == v10)
  {
    goto LABEL_10;
  }

  v11 = sub_230E698C0();

  if (v11)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD000000000000014 && 0x8000000230E805F0 == v16)
  {
    goto LABEL_10;
  }

  v17 = sub_230E698C0();

  if (v17)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD000000000000017 && 0x8000000230E80610 == v18)
  {
    goto LABEL_10;
  }

  v19 = sub_230E698C0();

  if (v19)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD000000000000017 && 0x8000000230E808B0 == v20)
  {
    goto LABEL_10;
  }

  v21 = sub_230E698C0();

  if (v21)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD00000000000001CLL && 0x8000000230E808D0 == v22)
  {
    goto LABEL_10;
  }

  v23 = sub_230E698C0();

  if (v23)
  {
    goto LABEL_12;
  }

  if (RequestType.rawValue.getter() == 0xD000000000000018 && 0x8000000230E80870 == v24)
  {
LABEL_10:

    goto LABEL_12;
  }

  v25 = sub_230E698C0();

  if (v25)
  {
    goto LABEL_12;
  }

  *(v1 + 104) = *(v1 + 105);
  v26 = swift_task_alloc();
  *(v1 + 96) = v26;
  *v26 = v1;
  v26[1] = sub_230DCC7A0;

  return sub_230DCDB54(v1 + 16, (v1 + 104));
}

uint64_t sub_230DCC7A0()
{

  return MEMORY[0x2822009F8](sub_230DCC89C, 0, 0);
}

uint64_t sub_230DCC89C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  *v5 = *(v0 + 105);
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  v7 = *(v0 + 32);
  *(v7 + 24) = v3;
  *(v7 + 25) = v4;
  *(v7 + 32) = v6;

  v8 = *(v0 + 8);

  return v8();
}

unint64_t RequestType.rawValue.getter()
{
  result = 0x6144657461657263;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0x19:
    case 0x1A:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 4:
    case 8:
    case 0x1C:
    case 0x2F:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x5153657461657263;
      break;
    case 6:
      result = 0x6F434C5153646461;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x44564B6E49746573;
      break;
    case 0xA:
    case 0x12:
    case 0x20:
      result = 0xD000000000000010;
      break;
    case 0xB:
    case 0xC:
    case 0x1B:
    case 0x25:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
    case 0x1F:
    case 0x22:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
    case 0x23:
    case 0x26:
    case 0x27:
      result = 0xD000000000000017;
      break;
    case 0x13:
      result = 0xD000000000000014;
      break;
    case 0x14:
    case 0x1D:
    case 0x24:
    case 0x29:
      result = 0xD000000000000012;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0xD000000000000014;
      break;
    case 0x17:
    case 0x28:
      result = 0xD00000000000001CLL;
      break;
    case 0x18:
      result = 0xD000000000000024;
      break;
    case 0x1E:
      result = 0x65725465726F7473;
      break;
    case 0x21:
      result = 0x666B726F576E7572;
      break;
    case 0x2A:
    case 0x2D:
    case 0x2E:
      result = 0xD00000000000001ALL;
      break;
    case 0x2B:
    case 0x2C:
      result = 0xD000000000000019;
      break;
    case 0x30:
      result = 0x726F577972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RequestType.metricsEventType.getter()
{
  v0 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v0);

  return 0x6C616E7265746E69;
}

Swift::Bool __swiftcall LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(ServicesIntelligence::RequestType currentOperation, ServicesIntelligence::RequestType originatingOperation)
{
  if (*v2 != 1)
  {
    return 0;
  }

  v3 = *currentOperation;
  v4 = *(v2 + 1);
  v5 = *(v2 + 8);
  v6 = RequestType.rawValue.getter();
  LOBYTE(v5) = sub_230D33FDC(v6, v7, v5);

  if (v5)
  {
    return 1;
  }

  if (v3 > 0x30 || ((1 << v3) & 0x1FE844383FFFELL) != 0)
  {
    return v4 > 1;
  }

  if (((1 << v3) & 0x19A4700000) == 0)
  {
    if (((1 << v3) & 0x210080000) != 0)
    {
      return 1;
    }

    return v4 > 1;
  }

  return v4 != 0;
}

ServicesIntelligence::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69910();

  v5 = 0;
  v6 = 31;
  switch(v3)
  {
    case 0:
      goto LABEL_48;
    case 1:
      v5 = 1;
      goto LABEL_48;
    case 2:
      v5 = 2;
      goto LABEL_48;
    case 3:
      v5 = 3;
      goto LABEL_48;
    case 4:
      v5 = 4;
      goto LABEL_48;
    case 5:
      v5 = 5;
      goto LABEL_48;
    case 6:
      v5 = 6;
      goto LABEL_48;
    case 7:
      v5 = 7;
      goto LABEL_48;
    case 8:
      v5 = 8;
      goto LABEL_48;
    case 9:
      v5 = 9;
      goto LABEL_48;
    case 10:
      v5 = 10;
      goto LABEL_48;
    case 11:
      v5 = 11;
      goto LABEL_48;
    case 12:
      v5 = 12;
      goto LABEL_48;
    case 13:
      v5 = 13;
      goto LABEL_48;
    case 14:
      v5 = 14;
      goto LABEL_48;
    case 15:
      v5 = 15;
      goto LABEL_48;
    case 16:
      v5 = 16;
      goto LABEL_48;
    case 17:
      v5 = 17;
      goto LABEL_48;
    case 18:
      v5 = 18;
      goto LABEL_48;
    case 19:
      v5 = 19;
      goto LABEL_48;
    case 20:
      v5 = 20;
      goto LABEL_48;
    case 21:
      v5 = 21;
      goto LABEL_48;
    case 22:
      v5 = 22;
      goto LABEL_48;
    case 23:
      v5 = 23;
      goto LABEL_48;
    case 24:
      v5 = 24;
      goto LABEL_48;
    case 25:
      v5 = 25;
      goto LABEL_48;
    case 26:
      v5 = 26;
      goto LABEL_48;
    case 27:
      v5 = 27;
      goto LABEL_48;
    case 28:
      v5 = 28;
      goto LABEL_48;
    case 29:
      v5 = 29;
      goto LABEL_48;
    case 30:
      v5 = 30;
LABEL_48:
      v6 = v5;
      break;
    case 31:
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    default:
      v6 = 49;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_230DCD0B8()
{
  v0 = RequestType.rawValue.getter();
  v2 = v1;
  if (v0 == RequestType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230E698C0();
  }

  return v5 & 1;
}

uint64_t sub_230DCD154()
{
  sub_230E699B0();
  RequestType.rawValue.getter();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCD1BC(uint64_t a1)
{
  RequestType.rawValue.getter();
  sub_230E69100();
}

uint64_t sub_230DCD220(uint64_t a1)
{
  sub_230E699B0();
  RequestType.rawValue.getter();
  sub_230E69100();

  return sub_230E699D0();
}

unint64_t sub_230DCD290@<X0>(unint64_t *a1@<X8>)
{
  result = RequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ServicesIntelligence::LoggingGranularity_optional __swiftcall LoggingGranularity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static DeviceType.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = os_variant_has_internal_diagnostics();
  *a1 = result;
  return result;
}

uint64_t DeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1);
  return sub_230E699D0();
}

void RequestType.granularityLevel.getter(_BYTE *a1@<X8>)
{
  if (*v1 - 1 > 0x2F)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = byte_230E78DCE[(*v1 - 1)];
  }
}

unint64_t sub_230DCD578()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_230DCD5E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD001C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DCD608(uint64_t a1)
{
  v2 = sub_230DCF1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DCD644(uint64_t a1)
{
  v2 = sub_230DCF1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoggingStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8D0, &unk_230E786C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v12 = *(v1 + 1);
  v11[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF1D8();
  sub_230E69A50();
  v16 = 0;
  sub_230E69820();
  if (!v2)
  {
    v9 = v11[0];
    v15 = v12;
    v14 = 1;
    sub_230DCF22C();
    sub_230E69850();
    v11[1] = v9;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LoggingStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8E8, &qword_230E786D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF1D8();
  sub_230E69A30();
  if (!v2)
  {
    v18 = 0;
    v10 = sub_230E69730();
    v16 = 1;
    sub_230DCF280();
    sub_230E69760();
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    v15 = 2;
    sub_230D0AD9C(qword_27DB5A6C8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v13 = v14[1];
    *a2 = v10 & 1;
    *(a2 + 1) = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RequestContext.correlationID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RequestContext.loggingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_230DCDB54(uint64_t a1, _BYTE *a2)
{
  *(v2 + 232) = a1;
  v4 = sub_230E68D80();
  *(v2 + 240) = v4;
  *(v2 + 248) = *(v4 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 782) = *a2;

  return MEMORY[0x2822009F8](sub_230DCDC4C, 0, 0);
}

uint64_t sub_230DCDC4C()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  *(v0 + 264) = qword_27DB5A438;
  *(v0 + 780) = 39;
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_230DCDD5C;

  return static RequestContext.from(_:correlationID:)(v0 + 144, (v0 + 780), 0, 0);
}

uint64_t sub_230DCDD5C()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_230DCDE98, v1, 0);
}

uint64_t sub_230DCDE98()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 169);
  v6 = *(v0 + 176);
  *(v0 + 280) = v3;
  *(v0 + 288) = v6;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v6;

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_230DCDFB8;
  v8 = *(v0 + 264);

  return sub_230D6F7D0(39, v0 + 64, v8, v8);
}

uint64_t sub_230DCDFB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_230DCF130, 0, 0);
  }

  else
  {

    *(v3 + 781) = 40;
    v4 = swift_task_alloc();
    *(v3 + 320) = v4;
    *v4 = v3;
    v4[1] = sub_230DCE1AC;

    return static RequestContext.from(_:correlationID:)(v3 + 184, (v3 + 781), 0, 0);
  }
}

uint64_t sub_230DCE1AC()
{

  return MEMORY[0x2822009F8](sub_230DCE2D4, 0, 0);
}

uint64_t sub_230DCE2D4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  *(v0 + 783) = v2;
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  *(v0 + 328) = v3;
  *(v0 + 336) = v4;
  v5 = *(v0 + 208);
  *(v0 + 784) = v5;
  v6 = *(v0 + 209);
  *(v0 + 785) = v6;
  v7 = *(v0 + 216);
  *(v0 + 344) = v7;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  *(v0 + 129) = v6;
  *(v0 + 136) = v7;

  return MEMORY[0x2822009F8](sub_230DCE3CC, v1, 0);
}

uint64_t sub_230DCE3CC()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 783);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v27);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v27);
    *(v6 + 22) = 2080;
    v25 = 0x6C616E7265746E69;
    v26 = 0xE90000000000002ELL;
    v24 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 344);
  v11 = *(v0 + 785);
  v12 = *(v0 + 783);
  LOBYTE(v25) = *(v0 + 784);
  BYTE1(v25) = v11;
  v26 = v10;
  v24 = 40;
  LOBYTE(v27[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v24, v27);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 352) = CFAbsoluteTimeGetCurrent();
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0u;
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
    *(v0 + 768) = 0;
    *(v0 + 772) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 400), (v0 + 772));
    *(v0 + 776) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 448);
      v17 = *(v0 + 520);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 376) = v15;
    *(v0 + 224) = 0;
    v20 = swift_task_alloc();
    *(v0 + 384) = v20;
    *v20 = v0;
    v21 = sub_230DCE908;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 360) = v20;
    *v20 = v0;
    v21 = sub_230DCE7B0;
  }

  v20[1] = v21;
  v22 = *(v0 + 304);

  return sub_230E41A9C(v0 + 16, 0, v22, v0 + 104);
}

uint64_t sub_230DCE7B0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_230DCF040;
  }

  else
  {
    v4 = sub_230DCEF6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DCE908()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_230DCEB70;
  }

  else
  {
    v4 = sub_230DCEA60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230DCEA60()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_230D340D4(40, *(v0 + 376), *(v0 + 776) != 0, v0 + 104, (v0 + 224), *(v0 + 352));
  (*(v2 + 8))(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230DCECD4, 0, 0);
}

uint64_t sub_230DCEB70(uint64_t a1)
{
  v2 = *(v1 + 392);
  v3 = *(v1 + 376);
  v4 = *(v1 + 352);
  v5 = *(v1 + 248);
  v10 = *(v1 + 256);
  v6 = *(v1 + 240);
  v7 = *(v1 + 776) != 0;
  *(v1 + 224) = v2;
  swift_willThrow();
  v8 = v2;
  sub_230D340D4(40, v3, v7, v1 + 104, (v1 + 224), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v10, v6);

  MEMORY[0x23191E910](v2);

  return MEMORY[0x2822009F8](sub_230DCEEC4, 0, 0);
}

uint64_t sub_230DCECD4()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[6];
    v5 = v0[7];
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D6BFA8(0x6C616E7265746E69, 0xE90000000000002ELL);

    if (v8)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (v5)
      {

        v10 = v5;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      sub_230D8FE24(v2, v1, v4, v3, v6, v5);
      v12 = sub_230D0ABEC(v10);

      v11 = 1;
      goto LABEL_10;
    }

    sub_230D8FE24(v2, v1, v4, v3, v6, v5);
  }

  else
  {
  }

  v11 = 0;
  has_internal_diagnostics = 0;
  v12 = MEMORY[0x277D84FA0];
LABEL_10:
  v13 = v0[29];
  *v13 = v11;
  *(v13 + 1) = has_internal_diagnostics;
  *(v13 + 8) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_230DCEEC4()
{

  v1 = *(v0 + 232);
  *v1 = 0;
  *(v1 + 8) = MEMORY[0x277D84FA0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230DCEF6C()
{
  (*(v0[31] + 8))(v0[32], v0[30]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230DCECD4, 0, 0);
}

uint64_t sub_230DCF040()
{
  v1 = v0[46];
  (*(v0[31] + 8))(v0[32], v0[30]);

  MEMORY[0x23191E910](v1);

  return MEMORY[0x2822009F8](sub_230DCEEC4, 0, 0);
}

uint64_t sub_230DCF130()
{
  MEMORY[0x23191E910](v0[39]);
  v1 = v0[29];
  *v1 = 0;
  *(v1 + 8) = MEMORY[0x277D84FA0];

  v2 = v0[1];

  return v2();
}

unint64_t sub_230DCF1D8()
{
  result = qword_27DB5C8D8;
  if (!qword_27DB5C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8D8);
  }

  return result;
}

unint64_t sub_230DCF22C()
{
  result = qword_27DB5C8E0;
  if (!qword_27DB5C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8E0);
  }

  return result;
}

unint64_t sub_230DCF280()
{
  result = qword_27DB5C8F0;
  if (!qword_27DB5C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8F0);
  }

  return result;
}

uint64_t sub_230DCF2D4()
{
  v1 = 0x74616C6572726F63;
  if (*v0 != 1)
  {
    v1 = 0x53676E6967676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_230DCF340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DD0148(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DCF368(uint64_t a1)
{
  v2 = sub_230DCF620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DCF3A4(uint64_t a1)
{
  v2 = sub_230DCF620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8F8, &qword_230E786D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v10;
  v22 = *(v1 + 24);
  v16 = *(v1 + 25);
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF620();
  sub_230E69A50();
  v19 = v9;
  v23 = 0;
  sub_230DCF674();
  sub_230E69850();
  if (!v2)
  {
    v12 = v16;
    v13 = v22;
    v14 = v15;
    v19 = 1;
    sub_230E69810();
    v19 = v13;
    v20 = v12;
    v21 = v14;
    v23 = 2;
    sub_230DCF6C8();

    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230DCF620()
{
  result = qword_27DB5C900;
  if (!qword_27DB5C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C900);
  }

  return result;
}

unint64_t sub_230DCF674()
{
  result = qword_27DB5C908;
  if (!qword_27DB5C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C908);
  }

  return result;
}

unint64_t sub_230DCF6C8()
{
  result = qword_27DB5C910;
  if (!qword_27DB5C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C910);
  }

  return result;
}

uint64_t RequestContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C918, &qword_230E786E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF620();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_230DCF984();
  sub_230E69760();
  v10 = v20;
  v20 = 1;
  v11 = sub_230E69720();
  v13 = v12;
  v19 = v11;
  v23 = 2;
  sub_230DCF9D8();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 25) = v15;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DCF984()
{
  result = qword_27DB5C920;
  if (!qword_27DB5C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C920);
  }

  return result;
}

unint64_t sub_230DCF9D8()
{
  result = qword_27DB5C928;
  if (!qword_27DB5C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C928);
  }

  return result;
}

unint64_t sub_230DCFA30()
{
  result = qword_27DB5C930;
  if (!qword_27DB5C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C930);
  }

  return result;
}

unint64_t sub_230DCFA88()
{
  result = qword_27DB5C938;
  if (!qword_27DB5C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C938);
  }

  return result;
}

unint64_t sub_230DCFAE0()
{
  result = qword_27DB5C940;
  if (!qword_27DB5C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C948, &qword_230E78878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C940);
  }

  return result;
}

unint64_t sub_230DCFB48()
{
  result = qword_27DB5C950;
  if (!qword_27DB5C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230DCFD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230DCFD94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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