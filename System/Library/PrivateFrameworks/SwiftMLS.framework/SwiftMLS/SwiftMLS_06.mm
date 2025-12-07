void *sub_26BE6EC68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        sub_26BE2E2EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26BE5B0F0(v25, (*(v4 + 56) + v22));
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

void *sub_26BE6EE0C()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.KeyAndNonce(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
  v5 = *v0;
  v6 = sub_26C00AD8C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
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
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 4 * v20);
        v22 = *(v24 + 72) * v20;
        sub_26BE6FEC8(*(v5 + 56) + v22, v4, type metadata accessor for MLS.KeyAndNonce);
        *(*(v7 + 48) + 4 * v20) = v21;
        result = sub_26BE70034(v4, *(v7 + 56) + v22, type metadata accessor for MLS.KeyAndNonce);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_26BE6F040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_26BE5CDE4(&v40, v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 200;
      v18 = *(v2 + 56) + v16;
      v19 = *(*(v2 + 48) + v17);
      v21 = *(v18 + 16);
      v20 = *(v18 + 32);
      v22 = *(v18 + 64);
      v43 = *(v18 + 48);
      v44 = v22;
      v23 = *(v18 + 128);
      v25 = *(v18 + 80);
      v24 = *(v18 + 96);
      v47 = *(v18 + 112);
      v48 = v23;
      v45 = v25;
      v46 = v24;
      v27 = *(v18 + 160);
      v26 = *(v18 + 176);
      v28 = *(v18 + 144);
      v52 = *(v18 + 192);
      v50 = v27;
      v51 = v26;
      v49 = v28;
      v40 = *v18;
      v41 = v21;
      v42 = v20;
      *(*(v4 + 48) + v17) = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v40;
      v30 = v41;
      v31 = v42;
      v32 = v44;
      *(v29 + 48) = v43;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v45;
      v34 = v46;
      v35 = v48;
      *(v29 + 112) = v47;
      *(v29 + 128) = v35;
      *(v29 + 80) = v33;
      *(v29 + 96) = v34;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      *(v29 + 192) = v52;
      *(v29 + 160) = v37;
      *(v29 + 176) = v38;
      *(v29 + 144) = v36;
      sub_26BE00608(v19, *(&v19 + 1));
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

void *sub_26BE6F28C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00AD8C();
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

void *sub_26BE6F414(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00AD8C();
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

void sub_26BE6F574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
  v29 = v0;
  v1 = *v0;
  v30 = sub_26C00AD8C();
  v31 = v1;
  if (*(v1 + 16))
  {
    v2 = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || v2 >= v1 + 64 + 8 * v4)
    {
      memmove(v2, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 48;
        v20 = (*(v31 + 56) + v15);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = (*(v30 + 48) + v16);
        *v27 = v19;
        v27[1] = v18;
        v28 = (*(v30 + 56) + v15);
        *v28 = v21;
        v28[1] = v22;
        v28[2] = v23;
        v28[3] = v24;
        v28[4] = v25;
        v28[5] = v26;

        sub_26BE00608(v21, v22);
        sub_26BE00608(v23, v24);
        sub_26BE00608(v25, v26);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }
}

void *sub_26BE6F748()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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

void sub_26BE6F8C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_26BE00608(v22, *(&v22 + 1));
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

void sub_26BE6FA44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_26BE04890(v22, *(&v22 + 1));
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

void *sub_26BE6FBC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F0, &qword_26C012498);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 56 * v17;
        sub_26BE2DA9C(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
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

uint64_t sub_26BE6FEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE70034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE701EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(uint64_t a1)
{
  result = sub_26BEC7F24(&unk_287CBA1E0);
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_37:

    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = result + 56;
  do
  {
    v8 = v5 + 1;
    if (v6)
    {
      goto LABEL_7;
    }

    v9 = a1 + 32 + 200 * v5;
    v10 = *(v9 + 144);
    v19[8] = *(v9 + 128);
    v19[9] = v10;
    v19[10] = *(v9 + 160);
    v20 = *(v9 + 176);
    v11 = *(v9 + 80);
    v19[4] = *(v9 + 64);
    v19[5] = v11;
    v12 = *(v9 + 112);
    v19[6] = *(v9 + 96);
    v19[7] = v12;
    v13 = *(v9 + 16);
    v19[0] = *v9;
    v19[1] = v13;
    v14 = *(v9 + 48);
    v19[2] = *(v9 + 32);
    v19[3] = v14;
    result = sub_26BE5CD48(v19);
    if (result <= 4)
    {
      if (result <= 1)
      {
        if (result)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }
      }

      else if (result == 2)
      {
        v15 = 3;
      }

      else if (result == 3)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }

LABEL_29:
      result = sub_26BE5CDC8(v19);
      if (!*(v3 + 16))
      {
        goto LABEL_3;
      }

      goto LABEL_30;
    }

    if (result <= 7)
    {
      if (result == 5)
      {
        v15 = 6;
      }

      else if (result == 6)
      {
        v15 = 7;
      }

      else
      {
        v15 = 61442;
      }

      goto LABEL_29;
    }

    if (result == 8)
    {
      v15 = 61444;
      goto LABEL_29;
    }

    if (result == 9)
    {
      v15 = 61443;
      goto LABEL_29;
    }

    v15 = 0xFFFF;
    if (!*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_30:
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v16 = -1 << *(v3 + 32);
    v17 = result & ~v16;
    if ((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      while (*(*(v3 + 48) + 2 * v17) != v15)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_7:
      if (v8 == v4)
      {
        goto LABEL_37;
      }

      v6 = 1;
      goto LABEL_5;
    }

LABEL_3:
    if (v8 == v4)
    {

      return 0;
    }

    v6 = 0;
LABEL_5:
    v5 = v8;
  }

  while (v8 != v4);
  __break(1u);
  return result;
}

unint64_t sub_26BE7049C()
{
  result = qword_28045E758;
  if (!qword_28045E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E758);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8ProposalO(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 58) & 0xC | (*(a1 + 152) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_26BE7056C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 193))
  {
    return (*a1 + 54);
  }

  v3 = (*(a1 + 135) & 0x30 | ((*(a1 + 183) & 0x30 | ((*(a1 + 152) >> 58) & 0xC)) >> 2)) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE705D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 54;
    if (a3 >= 0x36)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      v3 = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F));
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((-a2 >> 4) & 3) << 60;
      *(result + 136) = 0;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 58) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

void sub_26BE706E8(uint64_t a1)
{
  sub_26BE70770(319);
  if (v1 <= 0x3F)
  {
    sub_26BE708C0();
    if (v2 <= 0x3F)
    {
      sub_26BE70924(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26BE70770(uint64_t a1)
{
  if (!qword_28045E770)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E778, &qword_26C0159E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E780, &qword_26C012140);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28045E770);
    }
  }
}

void sub_26BE708C0()
{
  if (!qword_28045E788)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E788);
    }
  }
}

void sub_26BE70924(uint64_t a1)
{
  if (!qword_28045E790)
  {
    type metadata accessor for MLS.GroupState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E790);
    }
  }
}

uint64_t sub_26BE709B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE70A40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26BE70AD0(uint64_t a1)
{
  sub_26BE70B28(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_26BE70B28(uint64_t a1)
{
  if (!qword_28045E7B0)
  {
    sub_26C009C8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E7B0);
    }
  }
}

uint64_t sub_26BE70BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26BE70C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_26BE70D38(uint64_t a1)
{
  type metadata accessor for MLS.GroupState.CommitTypeOptions(319);
  if (v1 <= 0x3F)
  {
    sub_26BE71294(319, &qword_28045E208, &type metadata for MLS.Extension.Extension);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BE70DE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26BE70E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_26BE70EA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 27))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE70EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BE70F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.MLSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MLS.GroupState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26BE710AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLS.MLSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MLS.GroupState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26BE711D0(uint64_t a1)
{
  type metadata accessor for MLS.MLSMessage(319);
  if (v1 <= 0x3F)
  {
    sub_26BE71294(319, &qword_28045E7D8, &type metadata for MLS.Welcome);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MLS.GroupState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BE71294(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26C00A7AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O12CryptographyO19SignaturePrivateKey_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O12CapabilitiesVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26BE71360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26BE713BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double sub_26BE7150C(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_26BE715E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26BE7162C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_26BE0489C(a1, a2);
  }
}

uint64_t sub_26BE716A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE7170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BE71774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_26BE71934(void *result)
{
  v1 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v2;
  result[22] = v1;
  return result;
}

void sub_26BE71984(uint64_t a1, unint64_t a2, unsigned __int16 *a3, int a4)
{
  v7 = *a3;
  v15 = xmmword_26C00BBD0;
  v16 = 0;
  v11[0] = 1;
  v11[1] = v7;
  v12 = a4;
  v13 = a1;
  v14 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE7D4EC(v11);
  if (v4)
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v15, *(&v15 + 1));
    return;
  }

  v8 = v15;
  v9 = *(&v15 + 1) >> 62;
  if ((*(&v15 + 1) >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v15 >> 32;
LABEL_9:
    if (v10 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = *(v15 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(a1, a2);
  sub_26BE00258(v8, *(&v8 + 1));
}

_BYTE *sub_26BE71AA0(_OWORD *a1)
{
  v1 = a1[12];
  v2 = a1[10];
  v46 = a1[11];
  v47 = v1;
  v3 = a1[12];
  v48[0] = a1[13];
  *(v48 + 9) = *(a1 + 217);
  v4 = a1[8];
  v5 = a1[6];
  v42 = a1[7];
  v43 = v4;
  v6 = a1[8];
  v7 = a1[10];
  v44 = a1[9];
  v45 = v7;
  v8 = a1[4];
  v38 = a1[3];
  v39 = v8;
  v9 = a1[6];
  v11 = a1[3];
  v10 = a1[4];
  v40 = a1[5];
  v41 = v9;
  v49[8] = v46;
  v49[9] = v3;
  v50[0] = a1[13];
  *(v50 + 9) = *(a1 + 217);
  v49[4] = v42;
  v49[5] = v6;
  v49[6] = v44;
  v49[7] = v2;
  v49[0] = v11;
  v49[1] = v10;
  v49[2] = v40;
  v49[3] = v5;
  if (sub_26BE6917C(v49))
  {
    sub_26BE01654();
    swift_allocError();
    v13 = v12;
    v35 = v46;
    v36 = v47;
    v37[0] = v48[0];
    *(v37 + 9) = *(v48 + 9);
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v14 = sub_26BE6917C(&v27);
    if (v14)
    {
      if (v14 == 1)
      {
        nullsub_1();
        v15 = 2;
      }

      else
      {
        nullsub_1();
        v15 = 3;
      }
    }

    else
    {
      nullsub_1();
      v15 = 1;
    }

    *v13 = v15;
    v13[112] = 12;
    swift_willThrow();
    return v13;
  }

  nullsub_1();
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2)
    {
LABEL_12:
      v35 = v46;
      v36 = v47;
      v37[0] = v48[0];
      *(v37 + 9) = *(v48 + 9);
      v31 = v42;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      nullsub_1();
      sub_26BE00608(*v20, *(v20 + 8));
    }
  }

  else if (v19)
  {
    goto LABEL_12;
  }

  v35 = v46;
  v36 = v47;
  v37[0] = v48[0];
  *(v37 + 9) = *(v48 + 9);
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  v30 = v41;
  nullsub_1();
  sub_26BE00608(*v21, *(v21 + 8));
  if ((sub_26BEE6180() & 0x10000) != 0 || (sub_26BEE6180() & 0x10000) != 0 || (v22 = sub_26BEE6028(), (v22 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8F0, &unk_26C012590);
    v24 = sub_26C00A4FC();
    v13 = v25;
    sub_26BE826C4(v24, v25, v17, v18);

    swift_willThrow();
    sub_26BE6FD84(&v38);
    sub_26BE00258(v17, v18);
  }

  else
  {
    v13 = v22;
    sub_26BE6FD84(&v38);
    sub_26BE00258(v17, v18);
  }

  return v13;
}

void sub_26BE71DBC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
LABEL_5:
      sub_26BE00608(a1, a2);
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  v24 = a1;
  v25 = a2;
  v8 = sub_26BEE6180();
  if ((v8 & 0x10000) != 0 || (v9 = v8, v10 = sub_26BEE6180(), (v10 & 0x10000) != 0) || (v11 = v10, v12 = sub_26BEE6028(), (v12 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v13 = v12;
  v14 = sub_26BF2F7B0();
  if (v3)
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E8, &qword_26C012588);
    v19 = sub_26C00A4FC();
    sub_26BE826C4(v19, v20, a1, a2);

    swift_willThrow();
    v21 = a1;
    v22 = a2;
    goto LABEL_14;
  }

  v16 = v14;
  v17 = v15;
  sub_26BE00258(v24, v25);
  if (v9 == 1)
  {
    *a3 = 1;
    *(a3 + 2) = v11;
    *(a3 + 4) = v13;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    return;
  }

  sub_26BE01654();
  swift_allocError();
  *v23 = 5;
  v23[112] = 9;
  swift_willThrow();
  v21 = v16;
  v22 = v17;
LABEL_14:
  sub_26BE00258(v21, v22);
}

uint64_t MockRoot.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MockRoot.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MockRoot.certificate.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MockRoot.certificate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MockRoot.privateKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MockRoot.privateKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26BE7211C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6369666974726563;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x4B65746176697270;
    v4 = 0xEA00000000007965;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6369666974726563;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x4B65746176697270;
    v8 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26C00AF2C();
  }

  return v11 & 1;
}

uint64_t sub_26BE72230()
{
  sub_26C00B05C();
  sub_26C00A58C();

  return sub_26C00B0CC();
}

uint64_t sub_26BE722D8(uint64_t a1)
{
  sub_26C00A58C();
}

uint64_t sub_26BE7236C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00A58C();

  return sub_26C00B0CC();
}

unint64_t sub_26BE72410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BE77514(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26BE72440(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x6369666974726563;
  if (v2 != 1)
  {
    v5 = 0x4B65746176697270;
    v4 = 0xEA00000000007965;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26BE724A4()
{
  v1 = 0x6369666974726563;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_26BE72504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BE77514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BE7252C(uint64_t a1)
{
  v2 = sub_26BE7788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BE72568(uint64_t a1)
{
  v2 = sub_26BE7788C();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockRoot.init(name:)(SwiftMLS::MockRoot *__return_ptr retstr, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v98 = retstr;
  v2 = sub_26C00978C();
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x28223BE20](v2);
  v113 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_26C00A35C();
  v103 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v102 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00A25C();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A34C();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A1EC();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A1DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8F8, &qword_26C012610);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C0125A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E900, &qword_26C012618);
  v15 = swift_allocObject();
  v115 = xmmword_26C011280;
  *(v15 + 16) = xmmword_26C011280;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
  v16 = swift_allocObject();
  v114 = xmmword_26C0125B0;
  *(v16 + 16) = xmmword_26C0125B0;
  *(v16 + 32) = sub_26C00A48C();
  *(v16 + 40) = v17;
  *(v16 + 48) = 21333;
  *(v16 + 56) = 0xE200000000000000;
  *(v15 + 32) = v16;
  *(v14 + 32) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v115;
  v19 = swift_allocObject();
  *(v19 + 16) = v114;
  *(v19 + 32) = sub_26C00A48C();
  *(v19 + 40) = v20;
  *(v19 + 48) = 0x6E4920656C707041;
  *(v19 + 56) = 0xEA00000000002E63;
  *(v18 + 32) = v19;
  *(v14 + 40) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v115;
  v22 = swift_allocObject();
  *(v22 + 16) = v114;
  *(v22 + 32) = sub_26C00A48C();
  *(v22 + 40) = v23;
  v118 = 0;
  v119 = 0xE000000000000000;
  sub_26C00AC1C();

  v118 = 0xD000000000000018;
  v119 = 0x800000026C02B3E0;
  MEMORY[0x26D699090](countAndFlagsBits, object);
  v24 = v119;
  *(v22 + 48) = v118;
  *(v22 + 56) = v24;
  *(v21 + 32) = v22;
  *(v14 + 48) = v21;
  v105 = v13;
  v25 = sub_26C00A19C();
  v26 = MEMORY[0x26D698CF0](v25);
  v28 = v27;
  (*(v99 + 8))(v7, v100);
  sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  v30 = v101;
  v29 = v102;
  sub_26C009BFC();
  sub_26BE00608(v26, v28);
  v31 = v104;
  sub_26BE770BC(v26, v28, v29);
  sub_26BE00258(v26, v28);
  sub_26C009BDC();
  sub_26BE00258(v26, v28);
  v32 = v113;
  (*(v103 + 1))(v29, v30);
  sub_26C00977C();
  v118 = 1;
  v33 = MEMORY[0x277D83B88];
  sub_26C00976C();
  if (v31)
  {

    (*(v108 + 8))(v32, v109);
    (*(v111 + 8))(v10, v112);
    (*(v106 + 8))(v105, v107);
    return;
  }

  v103 = v10;
  v104 = 0;
  v102 = v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125C0;
  *(inited + 32) = 0xD000000000000018;
  v100 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000026C02B400;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000026C02B420;
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v35;
  *(inited + 120) = v33;
  *(inited + 96) = 157680000;
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v36;
  *(inited + 168) = MEMORY[0x277D84CC0];
  *(inited + 144) = 96;
  v37 = sub_26C00A48C();
  v38 = MEMORY[0x277D839B0];
  *(inited + 176) = v37;
  *(inited + 184) = v39;
  *(inited + 216) = v38;
  *(inited + 192) = 1;
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E918, &qword_26C012628);
  v41 = swift_initStackObject();
  *(v41 + 16) = v115;
  if (qword_28045DF78 != -1)
  {
    swift_once();
  }

  v42 = sub_26C00947C();
  __swift_project_value_buffer(v42, qword_28045E610);
  sub_26BE7737C(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
  *(v41 + 32) = sub_26C00AEFC();
  *(v41 + 40) = v43;
  v44 = sub_26C00971C();
  v45 = sub_26BE12418(v44);
  v47 = v46;

  *(v41 + 48) = v45;
  *(v41 + 56) = v47;
  v48 = sub_26C005940(v41);
  swift_setDeallocating();
  sub_26BE2E258(v41 + 32, &qword_28045E928, &qword_26C012630);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E930, &qword_26C012638);
  *(inited + 264) = v49;
  *(inited + 240) = v48;
  *(inited + 272) = sub_26C00A48C();
  *(inited + 280) = v50;
  v51 = swift_initStackObject();
  *(v51 + 16) = v115;
  *(v51 + 32) = 0x312E39322E352E32;
  *(v51 + 40) = 0xE900000000000034;
  v52 = v112;
  v120 = v112;
  v121 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
  v53 = __swift_allocate_boxed_opaque_existential_1(&v118);
  (*(v111 + 16))(v53, v103, v52);
  __swift_project_boxed_opaque_existential_1(&v118, v120);
  v54 = v104;
  sub_26C008F3C();
  v104 = v54;
  v55 = v116;
  v56 = v117;
  __swift_destroy_boxed_opaque_existential_1(&v118);
  *(v51 + 48) = v55;
  *(v51 + 56) = v56;
  v57 = sub_26C005940(v51);
  swift_setDeallocating();
  sub_26BE2E258(v51 + 32, &qword_28045E928, &qword_26C012630);
  *(inited + 312) = v49;
  *(inited + 288) = v57;
  sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  v58 = swift_initStackObject();
  *(v58 + 16) = v114;
  *(v58 + 32) = sub_26C00A48C();
  *(v58 + 40) = v59;
  v60 = *MEMORY[0x277CDC040];
  type metadata accessor for CFString(0);
  v62 = v61;
  *(v58 + 72) = v61;
  *(v58 + 48) = v60;
  *(v58 + 80) = sub_26C00A48C();
  *(v58 + 88) = v63;
  v64 = *MEMORY[0x277CDBFF0];
  *(v58 + 120) = v62;
  *(v58 + 96) = v64;
  v65 = v60;
  v66 = v64;
  sub_26C0055D4(v58);
  swift_setDeallocating();
  v67 = swift_arrayDestroy();
  v68 = v105;
  v69 = MEMORY[0x26D698C80](v67);
  v71 = v70;
  v72 = sub_26C0090DC();
  sub_26BE00258(v69, v71);
  v73 = sub_26C00A37C();

  v74 = SecKeyCreateWithData(v72, v73, 0);

  if (v74)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E950, &qword_26C012640);
    v75 = sub_26C00A6EC();

    v76 = sub_26C00A37C();

    SelfSignedCertificate = SecGenerateSelfSignedCertificate();

    if (SelfSignedCertificate)
    {
      v78 = SecCertificateCopyData(SelfSignedCertificate);
      v79 = sub_26C00910C();
      v81 = v80;

      v82 = sub_26C0090EC();
      v118 = 0xD00000000000001CLL;
      v119 = 0x800000026C02B490;
      MEMORY[0x26D699090](v82);

      MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

      sub_26BE00258(v79, v81);
      *&v115 = v118;
      *&v114 = v119;
      v83 = sub_26C00A1AC();
      v85 = v84;
      v86 = sub_26C0090EC();
      v88 = v87;

      sub_26BE00258(v83, v85);
      (*(v108 + 8))(v113, v109);
      (*(v111 + 8))(v103, v112);
      (*(v106 + 8))(v68, v107);
      v89 = v98;
      v90 = object;
      v98->name._countAndFlagsBits = countAndFlagsBits;
      v89->name._object = v90;
      v91 = v114;
      v89->certificate._countAndFlagsBits = v115;
      v89->certificate._object = v91;
      v89->privateKey._countAndFlagsBits = v86;
      v89->privateKey._object = v88;
      return;
    }

    v118 = 0;
    v119 = 0xE000000000000000;
    sub_26C00AC1C();

    v118 = 0xD000000000000028;
    v119 = 0x800000026C02B460;
    MEMORY[0x26D699090](countAndFlagsBits, object);

    v95 = v118;
    v96 = v119;
    sub_26BE773C4();
    swift_allocError();
    *v97 = v95;
    v97[1] = v96;
    swift_willThrow();
  }

  else
  {

    v118 = 0;
    v119 = 0xE000000000000000;
    sub_26C00AC1C();

    v118 = 0xD00000000000001FLL;
    v119 = 0x800000026C02B440;
    MEMORY[0x26D699090](countAndFlagsBits, object);

    v92 = v118;
    v93 = v119;
    sub_26BE773C4();
    swift_allocError();
    *v94 = v92;
    v94[1] = v93;
    swift_willThrow();
  }

  (*(v108 + 8))(v113, v109);
  (*(v111 + 8))(v103, v112);
  (*(v106 + 8))(v68, v107);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecCertificateRef.mlsGetPEM()()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_26C00910C();
  v4 = v3;

  v5 = sub_26C0090EC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

  sub_26BE00258(v2, v4);
  v6 = 0xD00000000000001CLL;
  v7 = 0x800000026C02B490;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

double sub_26BE734C0@<D0>(uint64_t a3@<X8>)
{
  v5 = sub_26C00A4EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  sub_26C00A4CC();
  sub_26C00A44C();
  if (!v3)
  {
    sub_26C00A4CC();
    v11 = sub_26C00A49C();
    v13 = v12;

    (*(v6 + 8))(v9, v5);
    if (v13 >> 60 == 15)
    {
      result = 0.0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    else
    {
      sub_26C008DBC();
      swift_allocObject();
      sub_26C008DAC();
      sub_26BE77CA0();
      sub_26C008D9C();
      sub_26BE136AC(v11, v13);

      result = *v17;
      v14 = v17[1];
      v15 = v18;
      v16 = v19;
      *a3 = v17[0];
      *(a3 + 16) = v14;
      *(a3 + 32) = v15;
      *(a3 + 40) = v16;
    }
  }

  return result;
}

void static MockRoot.getRootCert(rootFilepath:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v6 = sub_26C008FDC();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26C009C8C();
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C009D7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v55 = a1;
  v56 = a2;
  sub_26BE734C0(&v61);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26C011280;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = 0xD000000000000013;
    *(v18 + 40) = 0x800000026C02B4D0;
    sub_26C00B03C();
  }

  else
  {
    object = v61.name._object;
    if (v61.name._object)
    {
      countAndFlagsBits = v61.privateKey._countAndFlagsBits;
      v53 = v61.privateKey._object;
      v27 = v61.certificate._countAndFlagsBits;
      v56 = v61.certificate._object;
      v28 = v61.name._countAndFlagsBits;

      v29 = v28;
      v30 = object;
      goto LABEL_7;
    }
  }

  sub_26C009D6C();
  (*(v12 + 16))(v15, v17, v11);
  sub_26C009C6C();
  sub_26C009C3C();
  (*(v8 + 8))(v10, v62);
  (*(v12 + 8))(v17, v11);
  v19 = v61.name._countAndFlagsBits;
  v20 = v61.name._object;
  v21 = sub_26C0090EC();
  object = v22;

  v24._countAndFlagsBits = v21;
  v24._object = object;
  MockRoot.init(name:)(&v61, v24);
  if (v25)
  {

    sub_26BE00258(v19, v20);
    return;
  }

  v54 = v20;
  v49 = v21;
  v38 = v61.name._countAndFlagsBits;
  v37 = v61.name._object;
  v39 = v61.certificate._object;
  v62 = v61.certificate._countAndFlagsBits;
  v40 = v61.privateKey._countAndFlagsBits;
  v41 = v61.privateKey._object;
  sub_26C008DEC();
  swift_allocObject();

  sub_26C008DDC();
  v50 = v38;
  v51 = v40;
  v61.name._countAndFlagsBits = v38;
  v61.name._object = v37;
  v61.certificate._countAndFlagsBits = v62;
  v61.certificate._object = v39;
  v61.privateKey._countAndFlagsBits = v40;
  v61.privateKey._object = v41;
  sub_26BE77418();
  v42 = sub_26C008DCC();
  v52 = v43;
  v44 = v42;
  v48 = v37;

  v45 = v57;
  sub_26C008F9C();
  v46 = v52;
  sub_26C00912C();
  sub_26BE00258(v44, v46);
  v53 = v41;

  v56 = v39;

  v30 = v48;

  sub_26BE00258(v19, v54);
  (*(v58 + 8))(v45, v59);
  v29 = v50;
  countAndFlagsBits = v51;
  v27 = v62;
  v28 = v49;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26C011280;
  v61.name._countAndFlagsBits = 0;
  v61.name._object = 0xE000000000000000;
  sub_26C00AC1C();

  v61.name._countAndFlagsBits = 0x20676E697355;
  v61.name._object = 0xE600000000000000;
  MEMORY[0x26D699090](v28, object);

  MEMORY[0x26D699090](0x746F6F7220736120, 0xE800000000000000);
  v32 = v61.name._countAndFlagsBits;
  v33 = v61.name._object;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  sub_26C00B03C();

  v34 = v60;
  *v60 = v29;
  v34[1] = v30;
  v35 = v56;
  v34[2] = v27;
  v34[3] = v35;
  v36 = v53;
  v34[4] = countAndFlagsBits;
  v34[5] = v36;
}

void static MockRoot.getAnchors(anchorFilepaths:)(void *a1)
{
  v2 = v1;
  v24 = sub_26C00A4EC();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v7 = a1[2];
  if (!v7)
  {
LABEL_14:
    if (v6 >> 62)
    {
      if (sub_26C00AB8C())
      {
        return;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_26C011280;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 32) = 0xD000000000000015;
    *(v20 + 40) = 0x800000026C02B4F0;
    sub_26C00B03C();

    return;
  }

  v9 = a1[4];
  v8 = a1[5];

  static MockRoot.getRootCert(rootFilepath:)(v9, v8, v27);
  if (v2)
  {
LABEL_3:
  }

  else
  {
    v22 = (v4 + 8);
    v10 = (a1 + 7);
    while (1)
    {
      v25 = v27[1];
      v26 = v2;
      v11 = v23;
      sub_26C00A4CC();
      v12 = sub_26C00A49C();
      v14 = v13;
      (*v22)(v11, v24);
      if (v14 >> 60 == 15)
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_26C0090DC();
        sub_26BE136AC(v12, v14);
      }

      v16 = SecCertificateCreateWithPEM();

      if (!v16)
      {
        break;
      }

      v17 = v16;
      MEMORY[0x26D699190]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26C00A72C();
      }

      sub_26C00A75C();

      v6 = v28;
      --v7;
      v2 = v26;
      if (!v7)
      {
        goto LABEL_14;
      }

      v19 = *(v10 - 1);
      v18 = *v10;

      static MockRoot.getRootCert(rootFilepath:)(v19, v18, v27);
      v10 += 2;
      if (v2)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

void MockRoot.rootCertificate.getter()
{
  v0 = sub_26C00A4EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A4CC();
  v4 = sub_26C00A49C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = 0;
  if (v6 >> 60 != 15)
  {
    v7 = sub_26C0090DC();
    sub_26BE136AC(v4, v6);
  }

  v8 = SecCertificateCreateWithPEM();

  if (!v8)
  {
    __break(1u);
  }
}

void sub_26BE74178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D0, &qword_26C012868);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v47 - v2;
  v53 = sub_26C00A1EC();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A4EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v48 = *v0;
  v49 = v10;
  sub_26C00A4CC();
  v11 = sub_26C00A49C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = 0;
  if (v13 >> 60 != 15)
  {
    v14 = sub_26C0090DC();
    sub_26BE136AC(v11, v13);
  }

  v15 = SecCertificateCreateWithPEM();

  if (v15)
  {
    v16 = sub_26C00903C();
    v18 = v53;
    v19 = v50;
    if (v17 >> 60 == 15)
    {
LABEL_7:
      (*(v4 + 56))(v3, 1, 1, v18);
      sub_26BE2E258(v3, &qword_28045E9D0, &qword_26C012868);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_26C00AC1C();

      v51 = 0xD000000000000026;
      v52 = 0x800000026C02B580;
      MEMORY[0x26D699090](v48, v49);
      v21 = v51;
      v22 = v52;
      sub_26BE773C4();
      swift_allocError();
      *v23 = v21;
      v23[1] = v22;
      swift_willThrow();

      return;
    }

    v51 = v16;
    v52 = v17;
    v20 = v47[1];
    sub_26C00A1BC();
    if (v20)
    {

      goto LABEL_7;
    }

    (*(v4 + 56))(v3, 0, 1, v18);
    (*(v4 + 32))(v19, v3, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0125B0;
    *(inited + 32) = sub_26C00A48C();
    *(inited + 40) = v25;
    v26 = *MEMORY[0x277CDC040];
    type metadata accessor for CFString(0);
    v28 = v27;
    *(inited + 72) = v27;
    *(inited + 48) = v26;
    *(inited + 80) = sub_26C00A48C();
    *(inited + 88) = v29;
    v30 = *MEMORY[0x277CDBFF0];
    *(inited + 120) = v28;
    *(inited + 96) = v30;
    v31 = v26;
    v32 = v30;
    sub_26C0055D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
    v33 = swift_arrayDestroy();
    v34 = MEMORY[0x26D698C80](v33);
    v36 = v35;
    v37 = sub_26C0090DC();
    sub_26BE00258(v34, v36);
    v38 = sub_26C00A37C();

    v39 = SecKeyCreateWithData(v37, v38, 0);

    if (v39)
    {
      v40 = v53;
      if (SecIdentityCreate())
      {
        (*(v4 + 8))(v50, v40);
      }

      else
      {
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_26C00AC1C();

        v51 = 0xD00000000000001CLL;
        v52 = 0x800000026C02B5B0;
        MEMORY[0x26D699090](v48, v49);
        v44 = v51;
        v45 = v52;
        sub_26BE773C4();
        swift_allocError();
        *v46 = v44;
        v46[1] = v45;
        swift_willThrow();

        (*(v4 + 8))(v50, v40);
      }
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_26C00AC1C();

      v51 = 0xD00000000000001FLL;
      v52 = 0x800000026C02B440;
      MEMORY[0x26D699090](v48, v49);
      v41 = v51;
      v42 = v52;
      sub_26BE773C4();
      swift_allocError();
      *v43 = v41;
      v43[1] = v42;
      swift_willThrow();

      (*(v4 + 8))(v50, v53);
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_26BE74790()
{
  v1 = sub_26C00934C();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C00978C();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26C00A35C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A25C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A34C();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D0, &qword_26C012868);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_26C00A1EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0;
  v18 = v0[1];
  v20 = sub_26C00903C();
  if (v21 >> 60 != 15)
  {
    v46 = v3;
    v62 = v20;
    v63 = v21;
    v22 = v66;
    sub_26C00A1BC();
    if (!v22)
    {
      (*(v15 + 56))(v13, 0, 1, v14);
      v27 = *(v15 + 32);
      v66 = v14;
      v27(v17, v13, v14);
      v45 = v17;
      v28 = sub_26C00A19C();
      v29 = MEMORY[0x26D698CF0](v28);
      v31 = v30;
      (*(v47 + 8))(v8, v48);
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      v32 = v49;
      v33 = v52;
      sub_26C009BFC();
      sub_26BE00608(v29, v31);
      sub_26BE770BC(v29, v31, v32);
      sub_26BE00258(v29, v31);
      v34 = v51;
      sub_26C009BDC();
      sub_26BE00258(v29, v31);
      (*(v50 + 8))(v32, v33);
      v35 = v54;
      v64 = v54;
      v65 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
      v36 = __swift_allocate_boxed_opaque_existential_1(&v62);
      v37 = v53;
      (*(v53 + 16))(v36, v34, v35);
      __swift_project_boxed_opaque_existential_1(&v62, v64);
      sub_26C008F3C();
      (*(v37 + 8))(v34, v35);
      v38 = v60;
      v39 = v61;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v40 = v56;
      sub_26C00977C();
      v41 = v55;
      v42 = _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
      MEMORY[0x28223BE20](v42);
      *(&v44 - 2) = v38;
      *(&v44 - 1) = v39;
      sub_26C00973C();
      (*(v57 + 8))(v41, v58);
      v43 = sub_26C00971C();
      v13 = sub_26BE12418(v43);

      sub_26BE00258(v38, v39);
      (*(v59 + 8))(v40, v46);
      (*(v15 + 8))(v45, v66);
      return v13;
    }
  }

  (*(v15 + 56))(v13, 1, 1, v14);
  sub_26BE2E258(v13, &qword_28045E9D0, &qword_26C012868);
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_26C00AC1C();

  v62 = 0xD000000000000013;
  v63 = 0x800000026C02B560;
  MEMORY[0x26D699090](v19, v18);
  v23 = v62;
  v24 = v63;
  sub_26BE773C4();
  swift_allocError();
  *v25 = v23;
  v25[1] = v24;
  swift_willThrow();
  return v13;
}

uint64_t sub_26BE74F74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_26C00930C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C00934C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D8, &qword_26C012870);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_26BE00608(a2, a3);
  sub_26BF2E8B4(a2, a3);
  sub_26C00939C();
  v15 = sub_26C0093DC();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v6 + 104))(v8, *MEMORY[0x277D6A898], v5);
  sub_26C0092EC();
  sub_26C00974C();
  (*(v9 + 8))(v11, v18);
  return sub_26BE2E258(v14, &qword_28045E9D8, &qword_26C012870);
}

uint64_t sub_26BE75204()
{
  v0 = sub_26C00934C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26C00973C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26BE75300()
{
  if (qword_28045DF58 != -1)
  {
    swift_once();
  }

  v0 = sub_26C00947C();
  __swift_project_value_buffer(v0, qword_28045E5B0);
  return sub_26C00976C();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockRoot.signCSR(csrFilepath:)(Swift::String csrFilepath)
{
  object = csrFilepath._object;
  v4 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  countAndFlagsBits = v1[5];
  v19 = v9;
  sub_26C00A4CC();
  v11 = sub_26C00A44C();
  if (!v2)
  {
    v18[0] = v5;
    v18[1] = v6;
    v18[2] = v7;
    v18[3] = v8;
    v18[4] = v19;
    v18[5] = countAndFlagsBits;
    countAndFlagsBits = v18;
    v13 = MockRoot.signCSR(csrJson:)(*&v11);
    if (!v14)
    {
      countAndFlagsBits = v13._countAndFlagsBits;
      object = v13._object;
    }
  }

  v15 = countAndFlagsBits;
  v16 = object;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockRoot.signCSR(csrJson:)(Swift::String csrJson)
{
  v163 = *MEMORY[0x277D85DE8];
  v3 = sub_26C00934C();
  v123 = *(v3 - 8);
  v124 = v3;
  MEMORY[0x28223BE20](v3);
  v121 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00978C();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v122 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00A35C();
  v129 = *(v7 - 8);
  v130 = v7;
  MEMORY[0x28223BE20](v7);
  v128 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A34C();
  v131 = *(v9 - 8);
  v132 = v9;
  MEMORY[0x28223BE20](v9);
  v133 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_26C009C8C();
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v127 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v136 = sub_26C009D7C();
  v138 = *(v136 - 8);
  v12 = MEMORY[0x28223BE20](v136);
  v134 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v110 - v14;
  v15 = sub_26C00A4EC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v143 = v1[1];
  v144 = v19;
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[5];
  v141 = v1[4];
  v142 = v20;
  v140 = v22;
  sub_26C008DBC();
  swift_allocObject();
  v23 = sub_26C008DAC();
  sub_26C00A4CC();
  v24 = sub_26C00A49C();
  v26 = v25;
  (*(v16 + 8))(v18, v15);
  if (v26 >> 60 == 15)
  {
    __break(1u);
  }

  sub_26BE7746C();
  sub_26C008D9C();
  if (!v2)
  {
    sub_26BE136AC(v24, v26);

    v155 = v159;
    v156 = v160;
    v157 = v161;
    v158 = v162;
    v153 = 0;
    v154 = 0;
    v23 = sub_26C0090DC();
    v27 = SecVerifyCertificateRequest();

    if (v27)
    {
      v23 = v154;
      if (v154)
      {
        if (v153)
        {
          v26 = v153;
          v28 = v23;
          v29 = SecKeyCopyExternalRepresentation(v28, 0);
          if (v29)
          {
            v30 = v29;
            *&v148 = v144;
            *(&v148 + 1) = v143;
            v149 = v21;
            v150 = v142;
            v151 = v141;
            v152 = v140;
            sub_26BE74178();
            v110 = v26;
            v120 = v31;
            v112 = v28;
            v114 = v21;
            v35 = v135;
            sub_26C009D6C();
            v36 = v138;
            v37 = *(v138 + 16);
            v118 = v138 + 16;
            v119 = v37;
            v38 = v136;
            (v37)(v134, v35);
            v39 = v127;
            sub_26C009C6C();
            v117 = sub_26BE0FE74;
            sub_26C009C3C();
            v113 = 0;
            v40 = *(v139 + 8);
            v139 += 8;
            v116 = v40;
            v40(v39, v137);
            v41 = *(v36 + 8);
            v138 = v36 + 8;
            v115 = v41;
            v41(v35, v38);
            v147 = v148;
            sub_26C0090BC();
            v42 = v30;
            v43 = sub_26C00910C();
            v45 = v44;
            v111 = v42;

            sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
            v46 = v128;
            v47 = v130;
            sub_26C009BFC();
            sub_26BE00608(v43, v45);
            v48 = v113;
            sub_26BE770BC(v43, v45, v46);
            v113 = v48;
            sub_26BE00258(v43, v45);
            v49 = v133;
            sub_26C009BDC();
            sub_26BE00258(v43, v45);
            (*(v129 + 8))(v46, v47);
            v50 = v135;
            sub_26C009D6C();
            v51 = v136;
            v119(v134, v50, v136);
            sub_26C009C6C();
            v52 = v113;
            sub_26C009C3C();
            v116(v39, v137);
            v115(v50, v51);
            v26 = *(&v148 + 1);
            v53 = v148;
            *&v148 = v144;
            *(&v148 + 1) = v143;
            v149 = v114;
            v150 = v142;
            v151 = v141;
            v152 = v140;
            v23 = &v148;
            v54 = sub_26BE74790();
            if (v52)
            {
              (*(v131 + 8))(v49, v132);

              sub_26BE00258(v53, v26);
              sub_26BE3B0A4(&v155);
            }

            else
            {
              v56 = v54;
              v57 = v55;
              v58 = v122;
              sub_26C00977C();
              v59 = v121;
              _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
              sub_26C00973C();
              v140 = v56;
              v141 = v57;
              v139 = v53;
              v135 = v26;
              v142 = 0;
              (*(v123 + 8))(v59, v124);
              v60 = sub_26C00971C();
              v134 = sub_26BE12418(v60);
              v138 = v61;

              (*(v125 + 8))(v58, v126);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
              inited = swift_initStackObject();
              *(inited + 32) = 0xD000000000000018;
              v130 = inited + 32;
              *(inited + 16) = xmmword_26C0125E0;
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 40) = 0x800000026C02B400;
              *(inited + 48) = 0xD00000000000001DLL;
              *(inited + 56) = 0x800000026C02B420;
              *(inited + 80) = sub_26C00A48C();
              *(inited + 88) = v63;
              *(inited + 120) = MEMORY[0x277D83B88];
              *(inited + 96) = 6480000;
              *(inited + 128) = sub_26C00A48C();
              *(inited + 136) = v64;
              *(inited + 168) = MEMORY[0x277D84CC0];
              *(inited + 144) = 1;
              *(inited + 176) = sub_26C00A48C();
              *(inited + 184) = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
              v66 = swift_allocObject();
              v136 = xmmword_26C011280;
              *(v66 + 16) = xmmword_26C011280;
              if (qword_28045DF60 != -1)
              {
                swift_once();
              }

              v67 = sub_26C00947C();
              __swift_project_value_buffer(v67, qword_28045E5C8);
              v137 = sub_26BE7737C(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
              *(v66 + 32) = sub_26C00AEFC();
              *(v66 + 40) = v68;
              *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
              *(inited + 192) = v66;
              *(inited + 224) = sub_26C00A48C();
              *(inited + 232) = v69;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E970, &qword_26C012650);
              v70 = swift_initStackObject();
              *(v70 + 16) = v136;
              *(v70 + 32) = sub_26C00A48C();
              *(v70 + 40) = v71;
              v72 = *(&v157 + 1);
              *(v70 + 48) = v157;
              *(v70 + 56) = v72;

              v73 = sub_26C005A58(v70);
              swift_setDeallocating();
              sub_26BE2E258(v70 + 32, &qword_28045E978, &qword_26C012658);
              *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
              *(inited + 240) = v73;
              *(inited + 272) = sub_26C00A48C();
              *(inited + 280) = v74;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E918, &qword_26C012628);
              v75 = swift_initStackObject();
              *(v75 + 16) = v136;
              *(v75 + 32) = 0x312E39322E352E32;
              *(v75 + 40) = 0xE900000000000034;
              v76 = v132;
              v150 = v132;
              v151 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v148);
              (*(v131 + 16))(boxed_opaque_existential_1, v133, v76);
              __swift_project_boxed_opaque_existential_1(&v148, v150);
              v78 = v142;
              sub_26C008F3C();
              v142 = v78;
              v79 = v145;
              v80 = v146;
              __swift_destroy_boxed_opaque_existential_1(&v148);
              *(v75 + 48) = v79;
              *(v75 + 56) = v80;
              v81 = sub_26C005940(v75);
              swift_setDeallocating();
              sub_26BE2E258(v75 + 32, &qword_28045E928, &qword_26C012630);
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E930, &qword_26C012638);
              *(inited + 312) = v82;
              *(inited + 288) = v81;
              *(inited + 320) = sub_26C00A48C();
              *(inited + 328) = v83;
              v84 = swift_allocObject();
              *(v84 + 16) = xmmword_26C0125F0;
              if (qword_28045DF68 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v67, qword_28045E5E0);
              *(v84 + 32) = sub_26C00AEFC();
              *(v84 + 40) = v85;
              v86 = v156;
              *(v84 + 48) = v156;
              sub_26BE00608(v86, *(&v86 + 1));
              v88 = v134;
              v87 = v135;
              v89 = v138;
              if (qword_28045DF70 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v67, qword_28045E5F8);
              *(v84 + 64) = sub_26C00AEFC();
              *(v84 + 72) = v90;
              v91 = v139;
              v92 = v140;
              *(v84 + 80) = v139;
              *(v84 + 88) = v87;
              *(v84 + 96) = 0x332E39322E352E32;
              *(v84 + 104) = 0xE900000000000035;
              v93 = v141;
              *(v84 + 112) = v92;
              *(v84 + 120) = v93;
              *(v84 + 128) = 0x332E39322E352E32;
              *(v84 + 136) = 0xE900000000000032;
              *(v84 + 144) = v88;
              *(v84 + 152) = v89;
              sub_26BE00608(v91, v87);
              sub_26BE00608(v92, v93);
              sub_26BE00608(v88, v89);
              v94 = sub_26C005940(v84);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E928, &qword_26C012630);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              *(inited + 360) = v82;
              *(inited + 336) = v94;
              sub_26C0055D4(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
              swift_arrayDestroy();
              v95 = sub_26C0090DC();
              v96 = v110;
              v97 = sub_26C00A37C();

              v98 = v112;
              v99 = v87;
              v100 = SecIdentitySignCertificateWithParameters();

              if (v100)
              {
                v101 = SecCertificateCopyData(v100);
                v102 = sub_26C00910C();
                v104 = v103;

                v105 = sub_26C0090EC();
                *&v148 = 0xD00000000000001CLL;
                *(&v148 + 1) = 0x800000026C02B490;
                MEMORY[0x26D699090](v105);

                MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

                sub_26BE00258(v102, v104);
                v26 = *(&v148 + 1);
                v23 = v148;
                sub_26BE3B0A4(&v155);

                sub_26BE00258(v134, v138);
                sub_26BE00258(v140, v141);
                sub_26BE00258(v139, v135);

                (*(v131 + 8))(v133, v132);
                sub_26BE00258(v147, *(&v147 + 1));

                goto LABEL_12;
              }

              *&v148 = 0;
              *(&v148 + 1) = 0xE000000000000000;
              sub_26C00AC1C();
              MEMORY[0x26D699090](0xD000000000000024, 0x800000026C02B510);
              v107 = *(&v158 + 1);
              v106 = v158;

              MEMORY[0x26D699090](v106, v107);

              MEMORY[0x26D699090](0x6F72206874697720, 0xEB0000000020746FLL);
              MEMORY[0x26D699090](v144, v143);
              v26 = *(&v148 + 1);
              v23 = v148;
              sub_26BE773C4();
              swift_allocError();
              *v108 = __PAIR128__(v26, v23);
              swift_willThrow();

              sub_26BE3B0A4(&v155);
              sub_26BE00258(v88, v138);
              sub_26BE00258(v140, v141);
              sub_26BE00258(v139, v99);

              (*(v131 + 8))(v133, v132);
            }

            sub_26BE00258(v147, *(&v147 + 1));
            goto LABEL_11;
          }
        }
      }
    }

    sub_26BE773C4();
    swift_allocError();
    *v32 = xmmword_26C0125D0;
    swift_willThrow();
    sub_26BE3B0A4(&v155);
LABEL_11:

    goto LABEL_12;
  }

  sub_26BE136AC(v24, v26);

LABEL_12:
  v33 = v23;
  v34 = v26;
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

void MockRoot.signCSR(_:)(__int128 *a1)
{
  v2 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_26C008DEC();
  swift_allocObject();
  sub_26C008DDC();
  sub_26BE774C0();
  v3 = sub_26C008DCC();
  v5 = v4;

  if (!v1)
  {
    sub_26C00A4CC();
    v6 = sub_26C00A4AC();
    v8 = v7;
    sub_26BE00258(v3, v5);
    if (v8)
    {
      v9._countAndFlagsBits = v6;
      v9._object = v8;
      MockRoot.signCSR(csrJson:)(v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t MockRoot.signCSRAndReturnFullChain(_:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  MockRoot.signCSR(_:)(a1);
  if (!v2)
  {
    v9 = v5;
    v10 = v6;

    MEMORY[0x26D699090](v3, v4);

    sub_26BE77560(v9, v10);
    v3 = v7;
  }

  return v3;
}

uint64_t MockRoot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E990, &qword_26C012668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE7788C();
  sub_26C00B10C();
  v14 = 0;
  v9 = v11[5];
  sub_26C00AE9C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_26C00AE9C();
  v12 = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MockRoot.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9A0, &qword_26C012670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE7788C();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_26C00AE1C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_26C00AE1C();
  v21 = v12;
  v23 = 2;
  v13 = sub_26C00AE1C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SecCertificateRef.mlsPEMChainFromCertificates(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26C00AB8C())
  {
    v3 = 0;
    v16 = v1 & 0xC000000000000001;
    v14 = v1;
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v13 = i;
    while (1)
    {
      if (v16)
      {
        v4 = MEMORY[0x26D6996F0](v3, v1);
      }

      else
      {
        if (v3 >= *(v15 + 16))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = SecCertificateCopyData(v4);
      v8 = sub_26C00910C();
      v10 = v9;

      v11 = sub_26C0090EC();
      MEMORY[0x26D699090](v11);

      MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

      sub_26BE00258(v8, v10);

      MEMORY[0x26D699090](0xD00000000000001CLL, 0x800000026C02B490);

      v1 = v14;

      ++v3;
      if (v6 == v13)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

_BYTE *sub_26BE77028@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_26BF2EA50(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26BF2EB08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26BF2EB84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26BE770BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C00A35C();
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return sub_26C009BCC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26BE7729C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26BE7729C(v5, v6);
  }

  sub_26C00A35C();
  sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  return sub_26C009BCC();
}

uint64_t sub_26BE7729C(uint64_t a1, uint64_t a2)
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      sub_26C00A35C();
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return sub_26C009BCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE7737C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BE773C4()
{
  result = qword_28045E948;
  if (!qword_28045E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E948);
  }

  return result;
}

unint64_t sub_26BE77418()
{
  result = qword_28045E960;
  if (!qword_28045E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E960);
  }

  return result;
}

unint64_t sub_26BE7746C()
{
  result = qword_28045E968;
  if (!qword_28045E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E968);
  }

  return result;
}

unint64_t sub_26BE774C0()
{
  result = qword_28045E988;
  if (!qword_28045E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E988);
  }

  return result;
}

unint64_t sub_26BE77514(uint64_t a1, uint64_t a2)
{
  v2 = sub_26C00ADCC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_26BE77560(uint64_t a1, uint64_t a2)
{
  v25 = sub_26C00A4EC();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v29 = 0xD00000000000001BLL;
  v30 = 0x800000026C02B540;
  v24 = 0x800000026C02B540;
  sub_26BE77BDC();
  v6 = sub_26C00A90C();
  v7 = v6;
  v31 = MEMORY[0x277D84F90];
  v22 = *(v6 + 16);
  if (v22)
  {
    v8 = 0;
    v21 = (v4 + 8);
    v9 = (v6 + 56);
    while (v8 < *(v7 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v29 = 0xD00000000000001BLL;
      v30 = v24;
      v26 = *(v9 - 3);
      v27 = v10;
      v28 = v11;
      sub_26BE77C30();

      sub_26C00A5CC();
      v12 = v23;
      sub_26C00A4CC();
      v13 = sub_26C00A49C();
      v15 = v14;
      (*v21)(v12, v25);
      if (v15 >> 60 == 15)
      {

        sub_26BE773C4();
        swift_allocError();
        *v19 = xmmword_26C012600;
        swift_willThrow();

        return;
      }

      v16 = sub_26C0090DC();
      v17 = SecCertificateCreateWithPEM();

      if (!v17)
      {
        goto LABEL_12;
      }

      v18 = v17;

      sub_26BE136AC(v13, v15);

      MEMORY[0x26D699190]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26C00A72C();
      }

      ++v8;
      sub_26C00A75C();
      v9 += 4;
      if (v22 == v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

unint64_t sub_26BE7788C()
{
  result = qword_28045E998;
  if (!qword_28045E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E998);
  }

  return result;
}

uint64_t sub_26BE778E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26BE77928(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MockRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MockRoot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BE77AD8()
{
  result = qword_28045E9A8;
  if (!qword_28045E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9A8);
  }

  return result;
}

unint64_t sub_26BE77B30()
{
  result = qword_28045E9B0;
  if (!qword_28045E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9B0);
  }

  return result;
}

unint64_t sub_26BE77B88()
{
  result = qword_28045E9B8;
  if (!qword_28045E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9B8);
  }

  return result;
}

unint64_t sub_26BE77BDC()
{
  result = qword_28045E9C0;
  if (!qword_28045E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9C0);
  }

  return result;
}

unint64_t sub_26BE77C30()
{
  result = qword_28045E9C8;
  if (!qword_28045E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9C8);
  }

  return result;
}

unint64_t sub_26BE77CA0()
{
  result = qword_28045E9E0;
  if (!qword_28045E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9E0);
  }

  return result;
}

void MLS.Capabilities.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = &unk_287CB9BF8;
}

uint64_t MLS.Capabilities.init(versions:ciphersuites:extensions:proposals:credentials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void sub_26BE77DB0(char *a1@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  sub_26BE00608(*v1, v4);
  sub_26BE00608(v5, v4);
  sub_26BF30764(v1, &v104);
  if (v2)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
LABEL_3:
    swift_willThrow();
LABEL_4:
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_9;
  }

  if (v105)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v7 = v4;
    v8 = v5;
    v1[2] = v6;
LABEL_7:
    sub_26BE00258(v8, v7);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_8;
  }

  v10 = v104;
  sub_26BE00258(v5, v4);
  if (v10 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v11 = 5;
    goto LABEL_3;
  }

  v101 = v4;
  v12 = sub_26BF2A44C(v10);
  if (v13 >> 60 == 15)
  {
    v8 = *v1;
    v7 = v1[1];
    goto LABEL_7;
  }

  v15 = v14;
  v99 = v6;
  v100 = v1;
  v97 = a1;
  v98 = 0;
  v16 = v13 >> 62;
  v102 = v12 >> 32;
  v17 = MEMORY[0x277D84F90];
  v103 = BYTE6(v13);
  if ((v13 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(v12 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v13);
    if (v16)
    {
      v18 = v12 >> 32;
    }
  }

  v19 = __OFSUB__(v18, v14);
  v20 = v18 - v14;
  if (v19)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v20 >= 1)
  {
    v21 = v14 + 2;
    if (!__OFADD__(v14, 2))
    {
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          if (v21 > 0)
          {
LABEL_37:
            v23 = v12;
            v24 = v13;
            v26 = 1;
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        v22 = *(v12 + 24);
      }

      else
      {
        v22 = BYTE6(v13);
        if (v16)
        {
          v22 = v12 >> 32;
        }
      }

      if (v22 < v21)
      {
        goto LABEL_37;
      }

LABEL_31:
      v104 = v12;
      v105 = v13;
      if (v21 >= v14)
      {
        v23 = v12;
        v24 = v13;
        sub_26BE00608(v12, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE016A8();
        sub_26BE016FC();
        sub_26C008E1C();
        sub_26BE00258(v104, v105);
        v26 = 5;
LABEL_38:
        sub_26BE01600();
        swift_allocError();
        *v27 = v26;
        swift_willThrow();

        sub_26BE00258(v23, v24);
        v6 = v99;
        v1 = v100;
        v4 = v101;
        goto LABEL_4;
      }

      goto LABEL_81;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    v95 = v17;
    v43 = v13;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v44 = *(v12 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = v101;
      if (!v6)
      {
        v44 = v102;
      }
    }

    v28 = v99;
    if (__OFSUB__(v44, v15))
    {
      __break(1u);
      goto LABEL_156;
    }

    if (v44 != v15)
    {
      v49 = v12;
      sub_26BE01654();
      swift_allocError();
      *v50 = 0;
      v50[112] = 1;
      swift_willThrow();

      sub_26BE00258(v49, v43);
      v16 = v96;
      goto LABEL_46;
    }

    sub_26BE00258(v12, v13);
    sub_26BE00258(a1, v99);
    v6 = *v1;
    a1 = v1[1];
    v48 = v1[2];
    sub_26BE00608(*v1, a1);
    sub_26BE00608(v6, a1);
    sub_26BF30764(v1, &v104);
    v101 = v48;
    if (v105)
    {
      sub_26BE00258(*v1, v1[1]);
      *v1 = v6;
      v1[1] = a1;
      v51 = a1;
      v52 = v6;
      v1[2] = v48;
LABEL_98:
      sub_26BE00258(v52, v51);

      v53 = v100;
      *v100 = v6;
      v100[1] = a1;
      goto LABEL_99;
    }

    v55 = v104;
    sub_26BE00258(v6, a1);
    if (v55 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v56 = 5;
      swift_willThrow();
      goto LABEL_94;
    }

    v12 = sub_26BF2A44C(v55);
    if (v13 >> 60 == 15)
    {
      v52 = *v100;
      v51 = v100[1];
      goto LABEL_98;
    }

    goto LABEL_106;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v25 = *(v12 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = v12 >> 32;
    if (!v16)
    {
      v25 = BYTE6(v13);
    }
  }

  if (__OFSUB__(v25, v14))
  {
    __break(1u);
LABEL_106:
    v16 = v12;
    v34 = v13;
    v15 = v14;
    v28 = v13 >> 62;
    v96 = v12 >> 32;
    v102 = MEMORY[0x277D84F90];
    v99 = BYTE6(v13);
    if ((v13 >> 62) > 1)
    {
      goto LABEL_109;
    }

LABEL_107:
    v57 = v99;
    if (v28)
    {
      v57 = v96;
    }

    while (1)
    {
      v19 = __OFSUB__(v57, v15);
      v58 = v57 - v15;
      if (v19)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v76 = *(v98 + 24);
          }

          else
          {
            v76 = 0;
          }
        }

        else
        {
          v76 = v94;
          if (!v28)
          {
            v76 = v96;
          }
        }

        if (!__OFSUB__(v76, v15))
        {
          if (v76 != v15)
          {
            sub_26BE01654();
            swift_allocError();
            *v79 = 0;
            v79[112] = 1;
LABEL_198:
            swift_willThrow();

            sub_26BE00258(v98, v34);
            goto LABEL_145;
          }

          sub_26BE00258(v98, v34);
          sub_26BE00258(a1, v6);
          v6 = *v100;
          v78 = v100[1];
          v98 = v100[2];
          sub_26BE00608(*v100, v78);
          v101 = v78;
          sub_26BE00608(v6, v78);
          sub_26BF30764(v100, &v104);
          if (v16)
          {
            sub_26BE00258(*v100, v100[1]);
            *v100 = v6;
            v100[1] = v78;
            v100[2] = v98;
LABEL_196:
            swift_willThrow();
            goto LABEL_197;
          }

          if (v105)
          {
            sub_26BE00258(*v100, v100[1]);
            v80 = v78;
            *v100 = v6;
            v100[1] = v78;
            v81 = v6;
            v100[2] = v98;
            goto LABEL_205;
          }

          v82 = v104;
          sub_26BE00258(v6, v101);
          if (v82 > 100000000)
          {
            sub_26BE01600();
            swift_allocError();
            *v83 = 5;
            goto LABEL_196;
          }

          v96 = sub_26BF2A44C(v82);
          if (v13 >> 60 == 15)
          {
            v81 = *v100;
            v80 = v100[1];
LABEL_205:
            sub_26BE00258(v81, v80);

            v53 = v100;
            *v100 = v6;
            v100[1] = v101;
            v54 = v98;
LABEL_100:
            v53[2] = v54;
LABEL_8:
            sub_26BE01600();
            swift_allocError();
            *v9 = 1;
LABEL_9:
            swift_willThrow();
            return;
          }

LABEL_207:
          v34 = v13;
          v15 = v14;
          v28 = v13 >> 62;
          v93 = v96 >> 32;
          a1 = MEMORY[0x277D84F90];
          v94 = BYTE6(v13);
          if ((v13 >> 62) > 1)
          {
            goto LABEL_210;
          }

          while (2)
          {
            v84 = v94;
            if (v28)
            {
              v84 = v96 >> 32;
            }

LABEL_213:
            v19 = __OFSUB__(v84, v15);
            v85 = v84 - v15;
            if (v19)
            {
              goto LABEL_248;
            }

            if (v85 < 1)
            {
              goto LABEL_234;
            }

            v86 = v15 + 2;
            if (__OFADD__(v15, 2))
            {
              goto LABEL_249;
            }

            if (v28 <= 1)
            {
              v87 = v94;
              if (v28)
              {
                v87 = v96 >> 32;
              }

              goto LABEL_221;
            }

            if (v28 == 2)
            {
              v87 = *(v96 + 24);
LABEL_221:
              if (v87 < v86)
              {
                goto LABEL_238;
              }
            }

            else if (v86 > 0)
            {
LABEL_238:
              sub_26BE01600();
              swift_allocError();
              *v91 = 1;
              goto LABEL_246;
            }

            v104 = v96;
            v105 = v34;
            if (v86 < v15)
            {
              goto LABEL_250;
            }

            sub_26BE00608(v96, v34);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
            sub_26BE016A8();
            sub_26BE016FC();
            sub_26C008E1C();
            sub_26BE00258(v104, v105);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = sub_26BEEBA48(0, *(a1 + 2) + 1, 1, a1);
            }

            v89 = *(a1 + 2);
            v88 = *(a1 + 3);
            if (v89 >= v88 >> 1)
            {
              a1 = sub_26BEEBA48((v88 > 1), v89 + 1, 1, a1);
            }

            *(a1 + 2) = v89 + 1;
            *&a1[2 * v89 + 32] = bswap32(0) >> 16;
            v15 += 2;
            if (v28 <= 1)
            {
              continue;
            }

            break;
          }

LABEL_210:
          if (v28 == 2)
          {
            v84 = *(v96 + 24);
          }

          else
          {
            v84 = 0;
          }

          goto LABEL_213;
        }

        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
        return;
      }

      if (v58 < 1)
      {
        goto LABEL_133;
      }

      v59 = v15 + 2;
      if (__OFADD__(v15, 2))
      {
        goto LABEL_181;
      }

      if (v28 <= 1)
      {
        break;
      }

      if (v28 == 2)
      {
        v60 = *(v16 + 24);
        goto LABEL_120;
      }

      if (v59 > 0)
      {
LABEL_137:
        sub_26BE01600();
        swift_allocError();
        *v64 = 1;
        goto LABEL_147;
      }

LABEL_123:
      v104 = v16;
      v105 = v34;
      if (v59 < v15)
      {
        goto LABEL_182;
      }

      sub_26BE00608(v16, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v104, v105);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_26BEEBA70(0, *(v102 + 16) + 1, 1, v102);
      }

      v62 = *(v102 + 16);
      v61 = *(v102 + 24);
      if (v62 >= v61 >> 1)
      {
        v102 = sub_26BEEBA70((v61 > 1), v62 + 1, 1, v102);
      }

      *(v102 + 16) = v62 + 1;
      *(v102 + 2 * v62 + 32) = bswap32(0) >> 16;
      v15 += 2;
      if (v28 <= 1)
      {
        goto LABEL_107;
      }

LABEL_109:
      if (v28 == 2)
      {
        v57 = *(v16 + 24);
      }

      else
      {
        v57 = 0;
      }
    }

    v60 = v99;
    if (v28)
    {
      v60 = v96;
    }

LABEL_120:
    if (v60 < v59)
    {
      goto LABEL_137;
    }

    goto LABEL_123;
  }

  if (v25 != v14)
  {
    v29 = v13;
    v30 = v12;
    sub_26BE01654();
    swift_allocError();
    *v31 = 0;
    v31[112] = 1;
    swift_willThrow();

    sub_26BE00258(v30, v29);
    v4 = v101;
    goto LABEL_4;
  }

  sub_26BE00258(v12, v13);
  sub_26BE00258(v5, v101);
  a1 = *v1;
  v28 = v1[1];
  v16 = v1[2];
  sub_26BE00608(*v1, v28);
  sub_26BE00608(a1, v28);
  sub_26BF30764(v1, &v104);
  if (v105)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = a1;
    v1[1] = v28;
    v32 = v28;
    v33 = a1;
    v1[2] = v16;
LABEL_49:
    sub_26BE00258(v33, v32);

    *v1 = a1;
    v1[1] = v28;
    v1[2] = v16;
    goto LABEL_8;
  }

  v34 = v104;
  sub_26BE00258(a1, v28);
  if (v34 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v35 = 5;
    swift_willThrow();
LABEL_46:
    sub_26BE00258(*v1, v1[1]);
    *v1 = a1;
    v1[1] = v28;
    v1[2] = v16;
    swift_willThrow();

    return;
  }

  v12 = sub_26BF2A44C(v34);
  if (v13 >> 60 == 15)
  {
    v33 = *v1;
    v32 = v1[1];
    goto LABEL_49;
  }

  v15 = v14;
  v98 = 0;
  v99 = v28;
  v96 = v16;
  v6 = v13 >> 62;
  v101 = v12 >> 32;
  v102 = BYTE6(v13);
  v103 = MEMORY[0x277D84F90];
  if ((v13 >> 62) > 1)
  {
    goto LABEL_57;
  }

LABEL_55:
  v36 = v102;
  if (v6)
  {
    v36 = v101;
  }

  while (1)
  {
    v19 = __OFSUB__(v36, v15);
    v37 = v36 - v15;
    if (v19)
    {
      break;
    }

    if (v37 < 1)
    {
      goto LABEL_82;
    }

    v38 = v15 + 2;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_131;
    }

    if (v6 <= 1)
    {
      v39 = v102;
      if (v6)
      {
        v39 = v101;
      }

LABEL_68:
      if (v39 < v38)
      {
        goto LABEL_86;
      }

      goto LABEL_71;
    }

    if (v6 == 2)
    {
      v39 = *(v12 + 24);
      goto LABEL_68;
    }

    if (v38 > 0)
    {
LABEL_86:
      v45 = v12;
      v46 = v13;
      sub_26BE01600();
      swift_allocError();
      *v47 = 1;
      swift_willThrow();

      sub_26BE00258(v45, v46);
      v16 = v96;
      v28 = v99;
      v1 = v100;
      goto LABEL_46;
    }

LABEL_71:
    v104 = v12;
    v105 = v13;
    if (v38 < v15)
    {
      goto LABEL_132;
    }

    v16 = v17;
    v34 = v12;
    v28 = v13;
    sub_26BE00608(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v104, v105);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_26BEEBB90(0, *(v103 + 2) + 1, 1, v103);
    }

    v41 = *(v103 + 2);
    v40 = *(v103 + 3);
    if (v41 >= v40 >> 1)
    {
      v42 = sub_26BEEBB90((v40 > 1), v41 + 1, 1, v103);
      v13 = v28;
      v103 = v42;
      v12 = v34;
    }

    else
    {
      v12 = v34;
      v13 = v28;
    }

    *(v103 + 2) = v41 + 1;
    *&v103[2 * v41 + 32] = bswap32(0) >> 16;
    v15 += 2;
    if (v6 <= 1)
    {
      goto LABEL_55;
    }

LABEL_57:
    if (v6 == 2)
    {
      v36 = *(v12 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v63 = *(v16 + 24);
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    v63 = v96;
    if (!v28)
    {
      v63 = v99;
    }
  }

  if (__OFSUB__(v63, v15))
  {
    __break(1u);
    goto LABEL_207;
  }

  if (v63 != v15)
  {
    sub_26BE01654();
    swift_allocError();
    *v65 = 0;
    v65[112] = 1;
LABEL_147:
    swift_willThrow();

    sub_26BE00258(v16, v34);
LABEL_94:
    sub_26BE00258(*v100, v100[1]);
    *v100 = v6;
    v100[1] = a1;
    v100[2] = v101;
    swift_willThrow();
    goto LABEL_95;
  }

  sub_26BE00258(v16, v34);
  sub_26BE00258(v6, a1);
  a1 = *v100;
  v6 = v100[1];
  v101 = v100[2];
  sub_26BE00608(*v100, v6);
  sub_26BE00608(a1, v6);
  sub_26BF30764(v100, &v104);
  v16 = 0;
  if (v105)
  {
    sub_26BE00258(*v100, v100[1]);
    *v100 = a1;
    v100[1] = v6;
    v66 = v6;
    v67 = a1;
    v100[2] = v101;
    goto LABEL_150;
  }

  v68 = v104;
  sub_26BE00258(a1, v6);
  if (v68 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v69 = 5;
    swift_willThrow();
LABEL_145:
    sub_26BE00258(*v100, v100[1]);
    *v100 = a1;
    v100[1] = v6;
    v100[2] = v101;
    swift_willThrow();
    goto LABEL_146;
  }

  v98 = sub_26BF2A44C(v68);
  if (v13 >> 60 == 15)
  {
    v67 = *v100;
    v66 = v100[1];
LABEL_150:
    sub_26BE00258(v67, v66);

    v53 = v100;
    *v100 = a1;
    v100[1] = v6;
LABEL_99:
    v54 = v101;
    goto LABEL_100;
  }

LABEL_156:
  v34 = v13;
  v15 = v14;
  v28 = v13 >> 62;
  v94 = v98 >> 32;
  v99 = MEMORY[0x277D84F90];
  v96 = BYTE6(v13);
  if ((v13 >> 62) > 1)
  {
    goto LABEL_159;
  }

  while (2)
  {
    v70 = v96;
    if (v28)
    {
      v70 = v98 >> 32;
    }

LABEL_162:
    v19 = __OFSUB__(v70, v15);
    v71 = v70 - v15;
    if (!v19)
    {
      if (v71 < 1)
      {
        goto LABEL_183;
      }

      v72 = v15 + 2;
      if (__OFADD__(v15, 2))
      {
        goto LABEL_232;
      }

      if (v28 <= 1)
      {
        v73 = v96;
        if (v28)
        {
          v73 = v98 >> 32;
        }

        goto LABEL_170;
      }

      if (v28 == 2)
      {
        v73 = *(v98 + 24);
LABEL_170:
        if (v73 < v72)
        {
          goto LABEL_187;
        }
      }

      else if (v72 > 0)
      {
LABEL_187:
        sub_26BE01600();
        swift_allocError();
        *v77 = 1;
        goto LABEL_198;
      }

      v104 = v98;
      v105 = v34;
      if (v72 < v15)
      {
        goto LABEL_233;
      }

      sub_26BE00608(v98, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v104, v105);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_26BEEBA5C(0, *(v99 + 16) + 1, 1, v99);
      }

      v75 = *(v99 + 16);
      v74 = *(v99 + 24);
      if (v75 >= v74 >> 1)
      {
        v99 = sub_26BEEBA5C((v74 > 1), v75 + 1, 1, v99);
      }

      *(v99 + 16) = v75 + 1;
      *(v99 + 2 * v75 + 32) = bswap32(0) >> 16;
      v15 += 2;
      if (v28 <= 1)
      {
        continue;
      }

LABEL_159:
      if (v28 == 2)
      {
        v70 = *(v98 + 24);
      }

      else
      {
        v70 = 0;
      }

      goto LABEL_162;
    }

    break;
  }

  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v90 = *(v96 + 24);
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v90 = v93;
    if (!v28)
    {
      v90 = v94;
    }
  }

  if (__OFSUB__(v90, v15))
  {
    goto LABEL_251;
  }

  if (v90 == v15)
  {
    sub_26BE00258(v96, v34);
    sub_26BE00258(v6, v101);
    *v97 = v95;
    *(v97 + 1) = v103;
    *(v97 + 2) = v102;
    *(v97 + 3) = v99;
    *(v97 + 4) = a1;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v92 = 0;
    v92[112] = 1;
LABEL_246:
    swift_willThrow();

    sub_26BE00258(v96, v34);
LABEL_197:
    sub_26BE00258(*v100, v100[1]);
    *v100 = v6;
    v100[1] = v101;
    v100[2] = v98;
    swift_willThrow();

LABEL_146:

LABEL_95:
  }
}

uint64_t _s8SwiftMLS0B0O12CapabilitiesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (!sub_26BFB2088(*a1, *a2) || (sub_26BFB76FC() & 1) == 0 || (sub_26BFB76FC() & 1) == 0 || (sub_26BFB76FC() & 1) == 0)
  {
    return 0;
  }

  return sub_26BFB76FC();
}

uint64_t sub_26BE792AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BE792F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O10UpdatePathVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_26BE79398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_26BE793E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BE7945C(uint64_t *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *(a1 + 8);
  v81 = *(a1 + 7);
  v82 = v5;
  v83 = *(a1 + 9);
  v6 = *(a1 + 4);
  v77 = *(a1 + 3);
  v78 = v6;
  v7 = *(a1 + 6);
  v79 = *(a1 + 5);
  v80 = v7;
  v8 = *(a1 + 2);
  v75 = *(a1 + 1);
  v76 = v8;
  v10 = a1[20];
  v9 = a1[21];
  v36 = 0;
  v66 = xmmword_26C00BBD0;
  *&v67 = 0;
  v11 = sub_26BE7AAD8(0, v2);
  if (!v1)
  {
    v12 = v11;
    v13 = sub_26BF30414(v11);
    v14 = 0;
    sub_26BF2A30C(&v66);
    sub_26BE00258(v66, *(&v66 + 1));
    v15 = __OFADD__(v13, v12);
    v16 = v13 + v12;
    if (v15)
    {
LABEL_35:
      __break(1u);
    }

    else
    {
      v17 = MEMORY[0x277D838B0];
      v18 = MEMORY[0x277CC9C18];
      if (v4)
      {
        LOBYTE(v57) = 0;
        *(&v67 + 1) = MEMORY[0x277D838B0];
        *&v68 = MEMORY[0x277CC9C18];
        *&v66 = &v57;
        *(&v66 + 1) = &v57 + 1;
        __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x277D838B0]);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v19 = 1;
      }

      else
      {
        LOBYTE(v57) = 1;
        *(&v67 + 1) = MEMORY[0x277D838B0];
        *&v68 = MEMORY[0x277CC9C18];
        *&v66 = &v57;
        *(&v66 + 1) = &v57 + 1;
        __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x277D838B0]);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v66);
        LODWORD(v57) = bswap32(v3);
        *(&v67 + 1) = v17;
        *&v68 = v18;
        *&v66 = &v57;
        *(&v66 + 1) = &v57 + 4;
        __swift_project_boxed_opaque_existential_1(&v66, v17);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v19 = 5;
      }

      v20 = v16 + v19;
      if (!__OFADD__(v16, v19))
      {
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v68 = v77;
        v69 = v78;
        v70 = v79;
        v71 = v80;
        v66 = v75;
        v67 = v76;
        if (sub_26BE59C80(&v66) != 1)
        {
          v63 = v81;
          v64 = v82;
          v65 = v83;
          v59 = v77;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v57 = v75;
          v58 = v76;
          LOBYTE(v37) = 1;
          *(&v40 + 1) = v17;
          *&v41 = v18;
          *&v39 = &v37;
          *(&v39 + 1) = &v37 + 1;
          __swift_project_boxed_opaque_existential_1(&v39, v17);
          sub_26BE7ABF0(&v75, &v48);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v39);
          v54 = v63;
          v55 = v64;
          v56 = v65;
          v50 = v59;
          v51 = v60;
          v52 = v61;
          v53 = v62;
          v48 = v57;
          v49 = v58;
          sub_26BE00758(&v57, &v39);
          v24 = 0;
          sub_26BE7DD28(&v48);
          v22 = v26;
          v27 = *(&v65 + 1);
          v45 = v54;
          v46 = v55;
          v47 = v56;
          v41 = v50;
          v42 = v51;
          v43 = v52;
          v44 = v53;
          v39 = v48;
          v40 = v49;
          sub_26BE00854(&v39);
          v37 = xmmword_26C00BBD0;
          v38 = 0;
          v36 = sub_26BEEB0F4(0, v27);
          v28 = sub_26BF30414(v36);
          goto LABEL_30;
        }

        LOBYTE(v48) = 0;
        *(&v58 + 1) = v17;
        *&v59 = v18;
        *&v57 = &v48;
        *(&v57 + 1) = &v48 + 1;
        __swift_project_boxed_opaque_existential_1(&v57, v17);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v21 = 1;
        while (1)
        {
          v22 = v20 + v21;
          if (__OFADD__(v20, v21))
          {
            goto LABEL_37;
          }

          if (v9 >> 60 != 15)
          {
            break;
          }

          LOBYTE(v48) = 0;
          *(&v58 + 1) = v17;
          *&v59 = v18;
          *&v57 = &v48;
          *(&v57 + 1) = &v48 + 1;
          __swift_project_boxed_opaque_existential_1(&v57, v17);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v57);
          v23 = 1;
LABEL_27:
          v24 = v14;
          v28 = v22 + v23;
          if (!__OFADD__(v22, v23))
          {
            return;
          }

          __break(1u);
LABEL_30:
          v33 = v28;
          v14 = v24;
          sub_26BF2A30C(&v37);
          sub_26BE00258(v37, *(&v37 + 1));
          sub_26BE7AC60(&v75);
          v34 = v33 + v36;
          if (__OFADD__(v33, v36))
          {
            goto LABEL_41;
          }

          v15 = __OFADD__(v22, v34);
          v35 = v22 + v34;
          if (v15)
          {
            goto LABEL_42;
          }

          v15 = __OFADD__(v35, 1);
          v21 = v35 + 1;
          if (v15)
          {
            __break(1u);
            goto LABEL_35;
          }
        }

        LOBYTE(v48) = 1;
        *(&v58 + 1) = v17;
        *&v59 = v18;
        *&v57 = &v48;
        *(&v57 + 1) = &v48 + 1;
        __swift_project_boxed_opaque_existential_1(&v57, v17);
        sub_26BE00608(v10, v9);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v25 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          if (v25 != 2)
          {
            v17 = 0;
            goto LABEL_25;
          }

          v30 = *(v10 + 16);
          v29 = *(v10 + 24);
          v17 = v29 - v30;
          if (!__OFSUB__(v29, v30))
          {
LABEL_25:
            v31 = sub_26BF30414(v17);
            sub_26BE11228(v10, v9);
            sub_26BE136AC(v10, v9);
            v32 = v31 + v17;
            if (__OFADD__(v31, v17))
            {
              goto LABEL_38;
            }

            v15 = __OFADD__(v32, 1);
            v23 = v32 + 1;
            if (v15)
            {
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          __break(1u);
        }

        else if (!v25)
        {
          v17 = BYTE6(v9);
          goto LABEL_25;
        }

        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_40;
        }

        v17 = HIDWORD(v10) - v10;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  sub_26BE00258(v66, *(&v66 + 1));
}

uint64_t sub_26BE799B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  sub_26BE00608(*v2, v6);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v2, &v119);
  if (v3)
  {
    sub_26BE00258(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
LABEL_3:
    swift_willThrow();
    goto LABEL_4;
  }

  if (BYTE8(v119))
  {
    sub_26BE00258(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v9 = v6;
    v10 = v7;
    v2[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    v12 = 1;
    goto LABEL_9;
  }

  v14 = v119;
  sub_26BE00258(v7, v6);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    goto LABEL_3;
  }

  v144 = v2;
  result = sub_26BF2A44C(v14);
  if (v16 >> 60 == 15)
  {
    v2 = v144;
    v10 = *v144;
    v9 = v144[1];
    goto LABEL_7;
  }

  v92 = a2;
  *&v135 = result;
  *(&v135 + 1) = v16;
  *&v136 = v17;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(result + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = result >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v17);
    v22 = v20 - v17;
    if (v21)
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v22 < 1)
    {
      break;
    }

    sub_26BE7A938(&v119);
    v116 = v129;
    v117 = v130;
    v118 = v131;
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v115 = v128;
    v108 = v121;
    v109 = v122;
    v110 = v123;
    v111 = v124;
    v106 = v119;
    v107 = v120;
    sub_26BE5CDE4(&v106, &v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26BEED658(0, *(v18 + 2) + 1, 1, v18);
    }

    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_26BEED658((v23 > 1), v24 + 1, 1, v18);
    }

    v103 = v129;
    v104 = v130;
    v105 = v131;
    v99 = v125;
    v100 = v126;
    v101 = v127;
    v102 = v128;
    v95 = v121;
    v96 = v122;
    v97 = v123;
    v98 = v124;
    v93 = v119;
    v94 = v120;
    sub_26BE5CD74(&v93);
    *(v18 + 2) = v24 + 1;
    v25 = &v18[200 * v24];
    *(v25 + 2) = v106;
    v26 = v110;
    v28 = v107;
    v27 = v108;
    *(v25 + 5) = v109;
    *(v25 + 6) = v26;
    *(v25 + 3) = v28;
    *(v25 + 4) = v27;
    v29 = v114;
    v31 = v111;
    v30 = v112;
    *(v25 + 9) = v113;
    *(v25 + 10) = v29;
    *(v25 + 7) = v31;
    *(v25 + 8) = v30;
    v33 = v116;
    v32 = v117;
    v34 = v115;
    v25[224] = v118;
    *(v25 + 12) = v33;
    *(v25 + 13) = v32;
    *(v25 + 11) = v34;
    v16 = *(&v135 + 1);
    result = v135;
    v17 = v136;
  }

  if (v19 > 1)
  {
    v2 = v144;
    if (v19 == 2)
    {
      v35 = *(result + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    if (v19)
    {
      v35 = result >> 32;
    }

    else
    {
      v35 = BYTE6(v16);
    }

    v2 = v144;
  }

  if (__OFSUB__(v35, v17))
  {
    __break(1u);
  }

  else
  {
    if (v35 != v17)
    {
      sub_26BE01654();
      swift_allocError();
      *v38 = 0;
      v38[112] = 1;
      swift_willThrow();

      sub_26BE00258(v135, *(&v135 + 1));
LABEL_4:
      sub_26BE00258(*v2, v2[1]);
      *v2 = v7;
      v2[1] = v6;
      v2[2] = v8;
      return swift_willThrow();
    }

    sub_26BE00258(result, v16);
    sub_26BE00258(v7, v6);
    v36 = sub_26BEE62D4();
    if ((v36 & 0x100) != 0)
    {
      goto LABEL_51;
    }

    LODWORD(v6) = v36;
    if (v36)
    {
      if (v36 == 1)
      {
        v37 = sub_26BEE6028();
        if ((v37 & 0x100000000) == 0)
        {
          LODWORD(v6) = v37;
          LOBYTE(v8) = 0;
          goto LABEL_47;
        }

        goto LABEL_51;
      }

LABEL_52:

      sub_26BE01600();
      swift_allocError();
      v12 = 5;
LABEL_9:
      *v11 = v12;
      return swift_willThrow();
    }

    LOBYTE(v8) = 1;
LABEL_47:
    v39 = sub_26BEE62D4();
    if ((v39 & 0x100) != 0)
    {
LABEL_51:

      goto LABEL_8;
    }

    if (!v39)
    {
      sub_26BE7150C(&v119);
      if (a1 >= 3)
      {
        goto LABEL_119;
      }

      goto LABEL_54;
    }

    if (v39 != 1)
    {
      goto LABEL_52;
    }

    sub_26BE7DE38(&v93);
LABEL_58:
    v88 = v6;
    v141 = v99;
    v142 = v100;
    v143 = v101;
    v137 = v95;
    v138 = v96;
    v139 = v97;
    v140 = v98;
    v135 = v93;
    v136 = v94;
    v45 = v144;
    v47 = *v144;
    v46 = v144[1];
    v48 = v144[2];
    sub_26BE00608(*v144, v46);
    sub_26BE00608(v47, v46);
    sub_26BF30764(v45, &v106);
    v87 = v48;
    v84 = v47;
    v85 = v46;
    if (BYTE8(v106))
    {
      v49 = v144;
      sub_26BE00258(*v144, v144[1]);
      *v49 = v47;
      v49[1] = v46;
      v50 = v46;
      v51 = v47;
      v49[2] = v48;
LABEL_60:
      sub_26BE00258(v51, v50);

      v52 = v144;
      *v144 = v47;
      v52[1] = v46;
      v52[2] = v48;
      sub_26BE01600();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();
      return sub_26BE00854(&v135);
    }

    v54 = v106;
    sub_26BE00258(v47, v46);
    if (v54 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v55 = 5;
      swift_willThrow();
LABEL_111:
      v79 = v144;
      sub_26BE00258(*v79, v79[1]);
      *v79 = v84;
      v79[1] = v85;
      v79[2] = v87;
      swift_willThrow();

      return sub_26BE00854(&v135);
    }

    result = sub_26BF2A44C(v54);
    v91 = result;
    if (v16 >> 60 == 15)
    {
      v51 = *v144;
      v50 = v144[1];
      goto LABEL_60;
    }
  }

  v56 = v16;
  v57 = v17;
  v132 = v91;
  v133 = v16;
  v134 = v17;
  v86 = MEMORY[0x277D84F90];
  while (1)
  {
    v58 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v58 == 2)
      {
        v59 = *(v91 + 24);
      }

      else
      {
        v59 = 0;
      }
    }

    else if (v58)
    {
      v59 = v91 >> 32;
    }

    else
    {
      v59 = BYTE6(v56);
    }

    v21 = __OFSUB__(v59, v57);
    v60 = v59 - v57;
    if (v21)
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v60 < 1)
    {
      break;
    }

    sub_26BE00608(v91, v56);
    sub_26BE00608(v91, v56);
    sub_26BF30764(&v132, &v106);
    if (BYTE8(v106))
    {
      sub_26BE00258(v132, v133);
      v89 = v56;
      v90 = v91;
LABEL_107:
      sub_26BE00258(v90, v89);
      v132 = v91;
      v133 = v56;
      v134 = v57;
      sub_26BE01600();
      swift_allocError();
      *v77 = 1;
      goto LABEL_108;
    }

    v61 = v106;
    sub_26BE00258(v91, v56);
    result = v134;
    v21 = __OFADD__(v134, v61);
    v62 = v134 + v61;
    if (v21)
    {
      goto LABEL_128;
    }

    v89 = v133;
    v90 = v132;
    v63 = v133 >> 62;
    if ((v133 >> 62) <= 1)
    {
      if (v63)
      {
        v64 = v132 >> 32;
      }

      else
      {
        v64 = BYTE6(v133);
      }

LABEL_85:
      if (v64 < v62)
      {
        goto LABEL_107;
      }

      goto LABEL_88;
    }

    if (v63 == 2)
    {
      v64 = *(v132 + 24);
      goto LABEL_85;
    }

    if (v62 > 0)
    {
      goto LABEL_107;
    }

LABEL_88:
    if (v62 < v134)
    {
      goto LABEL_129;
    }

    result = sub_26C00909C();
    v65 = result;
    v67 = v66;
    v134 = v62;
    v68 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_96;
      }

      result = *(result + 16);
      v69 = *(v65 + 24);
    }

    else
    {
      if (!v68)
      {
        goto LABEL_96;
      }

      result = result;
      v69 = v65 >> 32;
    }

    if (v69 < result)
    {
      goto LABEL_130;
    }

LABEL_96:
    v70 = sub_26C00909C();
    v83 = v71;
    sub_26BE00258(v65, v67);
    sub_26BE00258(v91, v56);
    sub_26BE00608(v90, v89);
    v72 = sub_26BF2FE68(&v132, sub_26BFF72A0, 0);
    if (!v72)
    {
      sub_26BE00258(v132, v133);
      v132 = v90;
      v133 = v89;
      v134 = v62;
      sub_26BE01600();
      swift_allocError();
      *v78 = 1;
      swift_willThrow();
      sub_26BE00258(v70, v83);
      goto LABEL_110;
    }

    sub_26BE00258(v90, v89);
    sub_26BE00608(v70, v83);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_26BEECC88(0, *(v86 + 2) + 1, 1, v86);
    }

    v74 = *(v86 + 2);
    v73 = *(v86 + 3);
    if (v74 >= v73 >> 1)
    {
      v86 = sub_26BEECC88((v73 > 1), v74 + 1, 1, v86);
    }

    sub_26BE00258(v70, v83);

    *(v86 + 2) = v74 + 1;
    v75 = &v86[24 * v74];
    *(v75 + 4) = v70;
    *(v75 + 5) = v83;
    *(v75 + 6) = v72;
    v56 = v133;
    v91 = v132;
    v57 = v134;
  }

  if (v58 > 1)
  {
    if (v58 == 2)
    {
      v76 = *(v91 + 24);
    }

    else
    {
      v76 = 0;
    }
  }

  else if (v58)
  {
    v76 = v91 >> 32;
  }

  else
  {
    v76 = BYTE6(v56);
  }

  if (__OFSUB__(v76, v57))
  {
LABEL_131:
    __break(1u);
    return result;
  }

  if (v76 != v57)
  {
    sub_26BE01654();
    swift_allocError();
    *v82 = 0;
    v82[112] = 1;
LABEL_108:
    swift_willThrow();
LABEL_110:

    sub_26BE00258(v132, v133);
    goto LABEL_111;
  }

  sub_26BE00258(v91, v56);
  sub_26BE00258(v84, v85);
  v112 = v141;
  v113 = v142;
  v108 = v137;
  v109 = v138;
  v110 = v139;
  v111 = v140;
  v106 = v135;
  v107 = v136;
  *&v114 = v143;
  *(&v114 + 1) = v86;
  nullsub_1();
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v121 = v108;
  v122 = v109;
  v123 = v110;
  v124 = v111;
  v119 = v106;
  v120 = v107;
  LODWORD(v6) = v88;
  a2 = v92;
  if (a1 < 3)
  {
LABEL_54:
    result = 0;
LABEL_55:
    v40 = 0xF000000000000000;
    goto LABEL_56;
  }

LABEL_119:
  LOWORD(result) = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {

    sub_26BE01600();
    swift_allocError();
    v81 = 1;
LABEL_126:
    *v80 = v81;
    swift_willThrow();
    return sub_26BE7AC60(&v119);
  }

  if (!result)
  {
    result = result;
    goto LABEL_55;
  }

  if (result != 1)
  {

    sub_26BE01600();
    swift_allocError();
    v81 = 5;
    goto LABEL_126;
  }

  result = sub_26BF2F7B0();
  a2 = v92;
LABEL_56:
  *a2 = v18;
  *(a2 + 8) = v6;
  *(a2 + 12) = v8;
  v41 = v126;
  *(a2 + 112) = v125;
  *(a2 + 128) = v41;
  *(a2 + 144) = v127;
  v42 = v122;
  *(a2 + 48) = v121;
  *(a2 + 64) = v42;
  v43 = v124;
  *(a2 + 80) = v123;
  *(a2 + 96) = v43;
  v44 = v120;
  *(a2 + 16) = v119;
  *(a2 + 32) = v44;
  *(a2 + 160) = result;
  *(a2 + 168) = v40;
  return result;
}

uint64_t sub_26BE7A5E4(__int128 *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = a1[9];
  v3 = a1[7];
  v63 = a1[8];
  v64 = v2;
  v4 = a1[9];
  v65 = a1[10];
  v5 = a1[5];
  v6 = a1[3];
  v59 = a1[4];
  v60 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v61 = a1[6];
  v62 = v8;
  v9 = a1[1];
  v56[0] = *a1;
  v56[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v57 = a1[2];
  v58 = v10;
  v52 = v63;
  v53 = v4;
  v54 = a1[10];
  v48 = v59;
  v49 = v7;
  v50 = v61;
  v51 = v3;
  v44 = v12;
  v45 = v11;
  v66 = *(a1 + 22);
  v13 = *(a1 + 46);
  v14 = *(a1 + 188);
  v15 = *(a1 + 95);
  v16 = *(a1 + 192);
  v55 = *(a1 + 22);
  v46 = v57;
  v47 = v6;
  sub_26BE6FE6C(v56, &v32);
  sub_26BF31160(&v44);
  if (v1)
  {
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    return sub_26BE718E0(&v32);
  }

  v19 = v17;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v35 = v47;
  sub_26BE718E0(&v32);
  if (v14)
  {
    LOBYTE(v27) = 0;
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = (&v27 + 1);
    __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v20 = 1;
  }

  else
  {
    LOBYTE(v27) = 1;
    v21 = MEMORY[0x277D838B0];
    v22 = MEMORY[0x277CC9C18];
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = (&v27 + 1);
    __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v27 = bswap32(v13);
    v30 = v21;
    v31 = v22;
    v28 = &v27;
    v29 = &v28;
    __swift_project_boxed_opaque_existential_1(&v28, v21);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v20 = 5;
  }

  v23 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16)
  {
    LOBYTE(v27) = 0;
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = (&v27 + 1);
    __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v24 = 1;
  }

  else
  {
    LOBYTE(v27) = 1;
    v25 = MEMORY[0x277D838B0];
    v26 = MEMORY[0x277CC9C18];
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = (&v27 + 1);
    __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    LOWORD(v27) = __rev16(v15);
    v30 = v25;
    v31 = v26;
    v28 = &v27;
    v29 = (&v27 + 2);
    __swift_project_boxed_opaque_existential_1(&v28, v25);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v24 = 3;
  }

  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

double sub_26BE7A938@<D0>(uint64_t a1@<X8>)
{
  sub_26BF3182C(&v20);
  if (!v1)
  {
    v18[8] = v28;
    v18[9] = v29;
    v18[10] = v30;
    v19 = v31;
    v18[4] = v24;
    v18[5] = v25;
    v18[6] = v26;
    v18[7] = v27;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    v4 = sub_26BEE62D4();
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_13;
    }

    v5 = v4;
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      v6 = sub_26BEE6028();
      if ((v6 & 0x100000000) != 0)
      {
        goto LABEL_13;
      }

      v5 = v6;
      v7 = 0;
      v8 = sub_26BEE62D4();
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 1;
      v8 = sub_26BEE62D4();
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_13;
      }
    }

    if (!v8)
    {
      LOWORD(v9) = 0;
      v10 = 1;
      goto LABEL_18;
    }

    if (v8 == 1)
    {
      v9 = sub_26BEE6180();
      if ((v9 & 0x10000) == 0)
      {
        v10 = 0;
LABEL_18:
        v13 = v29;
        *(a1 + 128) = v28;
        *(a1 + 144) = v13;
        *(a1 + 160) = v30;
        *(a1 + 176) = v31;
        v14 = v25;
        *(a1 + 64) = v24;
        *(a1 + 80) = v14;
        v15 = v27;
        *(a1 + 96) = v26;
        *(a1 + 112) = v15;
        v16 = v21;
        *a1 = v20;
        *(a1 + 16) = v16;
        result = *&v22;
        v17 = v23;
        *(a1 + 32) = v22;
        *(a1 + 48) = v17;
        *(a1 + 184) = v5;
        *(a1 + 188) = v7;
        *(a1 + 190) = v9;
        *(a1 + 192) = v10;
        return result;
      }

LABEL_13:
      sub_26BE01600();
      swift_allocError();
      v12 = 1;
LABEL_15:
      *v11 = v12;
      swift_willThrow();
      sub_26BE718E0(v18);
      return result;
    }

LABEL_14:
    sub_26BE01600();
    swift_allocError();
    v12 = 5;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_26BE7AAD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 144);
      v7 = *(v5 + 176);
      v33 = *(v5 + 160);
      v34 = v7;
      v8 = *(v5 + 80);
      v9 = *(v5 + 112);
      v29 = *(v5 + 96);
      v30 = v9;
      v10 = *(v5 + 112);
      v11 = *(v5 + 144);
      v31 = *(v5 + 128);
      v32 = v11;
      v12 = *(v5 + 16);
      v13 = *(v5 + 48);
      v25 = *(v5 + 32);
      v26 = v13;
      v14 = *(v5 + 48);
      v15 = *(v5 + 80);
      v27 = *(v5 + 64);
      v28 = v15;
      v16 = *(v5 + 16);
      v24[0] = *v5;
      v24[1] = v16;
      v17 = *(v5 + 176);
      v22[10] = v33;
      v22[11] = v17;
      v22[6] = v29;
      v22[7] = v10;
      v22[8] = v31;
      v22[9] = v6;
      v22[2] = v25;
      v22[3] = v14;
      v22[4] = v27;
      v22[5] = v8;
      v35 = *(v5 + 192);
      v23 = *(v5 + 192);
      v22[0] = v24[0];
      v22[1] = v12;
      sub_26BE5CDE4(v24, v21);
      v18 = sub_26BE7A5E4(v22);
      result = sub_26BE5CD74(v24);
      if (v2)
      {
        break;
      }

      v20 = __OFADD__(a1, v18);
      a1 += v18;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v5 += 200;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t sub_26BE7ABF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8B0, &qword_26C012560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE7AC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8B0, &qword_26C012560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BE7ACD8(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = v3 >> 62;
  v27 = *(a1 + 40);
  v28 = *(a1 + 32);
  v29 = *(a1 + 16);
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (v1)
  {
    return result;
  }

  v13 = result;
  v26 = v5;
  sub_26BE11228(v2, v3);
  v14 = __OFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_33;
  }

  v16 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v4);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v19 = *(v29 + 16);
  v18 = *(v29 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v29), v29))
    {
      goto LABEL_41;
    }

    v17 = HIDWORD(v29) - v29;
  }

LABEL_24:
  v20 = sub_26BF30414(v17);
  sub_26BE11228(v29, v4);
  v21 = v20 + v17;
  if (__OFADD__(v20, v17))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v22 = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = bswap64(v28);
  v23 = MEMORY[0x277D838B0];
  v24 = MEMORY[0x277CC9C18];
  v33 = MEMORY[0x277D838B0];
  v34 = MEMORY[0x277CC9C18];
  v31 = &v30;
  v32 = &v31;
  __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v14 = __OFADD__(v22, 8);
  v25 = v22 + 8;
  if (v14)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  LODWORD(v30) = bswap32(v27);
  v33 = v23;
  v34 = v24;
  v31 = &v30;
  v32 = (&v30 + 4);
  __swift_project_boxed_opaque_existential_1(&v31, v23);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (__OFADD__(v25, 4))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LODWORD(v30) = bswap32(v26);
  v33 = v23;
  v34 = v24;
  v31 = &v30;
  v32 = (&v30 + 4);
  __swift_project_boxed_opaque_existential_1(&v31, v23);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (__OFADD__(v25 + 4, 4))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(v30) = bswap32(v6);
  v33 = v23;
  v34 = v24;
  v31 = &v30;
  v32 = (&v30 + 4);
  __swift_project_boxed_opaque_existential_1(&v31, v23);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (__OFADD__(v25 + 8, 4))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  LOBYTE(v30) = v7;
  v33 = v23;
  v34 = v24;
  v31 = &v30;
  v32 = (&v30 + 1);
  __swift_project_boxed_opaque_existential_1(&v31, v23);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  result = v25 + 13;
  if (__OFADD__(v25 + 12, 1))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

unint64_t sub_26BE7AFEC(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_23;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  v13 = result;
  if (v1)
  {
    return result;
  }

  sub_26BE11228(v2, v3);
  v14 = __OFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = bswap64(v4);
  v16 = MEMORY[0x277D838B0];
  v17 = MEMORY[0x277CC9C18];
  v22 = MEMORY[0x277D838B0];
  v23 = MEMORY[0x277CC9C18];
  v20 = &v19;
  v21 = &v20;
  __swift_project_boxed_opaque_existential_1(&v20, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v14 = __OFADD__(v15, 8);
  v18 = v15 + 8;
  if (v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v19) = bswap32(v6);
  v22 = v16;
  v23 = v17;
  v20 = &v19;
  v21 = (&v19 + 4);
  __swift_project_boxed_opaque_existential_1(&v20, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (__OFADD__(v18, 4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v19) = bswap32(v5);
  v22 = v16;
  v23 = v17;
  v20 = &v19;
  v21 = (&v19 + 4);
  __swift_project_boxed_opaque_existential_1(&v20, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (__OFADD__(v18 + 4, 4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  LODWORD(v19) = bswap32(v7);
  v22 = v16;
  v23 = v17;
  v20 = &v19;
  v21 = (&v19 + 4);
  __swift_project_boxed_opaque_existential_1(&v20, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  result = v18 + 12;
  if (__OFADD__(v18 + 8, 4))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_26BE7B1F4(uint64_t a1)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v20 = bswap32(*a1);
  v21[3] = MEMORY[0x277D838B0];
  v21[4] = MEMORY[0x277CC9C18];
  v21[0] = &v20;
  v21[1] = v21;
  __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v7);
  if (v1)
  {
    return result;
  }

  v11 = result;
  sub_26BE11228(v2, v3);
  v12 = v11 + v7;
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12 + 4;
  if (__OFADD__(v12, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v5);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  v15 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_33;
    }

    v15 = HIDWORD(v4) - v4;
  }

LABEL_25:
  v18 = sub_26BF30414(v15);
  sub_26BE11228(v4, v5);
  v19 = v18 + v15;
  if (__OFADD__(v18, v15))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = v13 + v19;
  if (__OFADD__(v13, v19))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26BE7B3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 53))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE7B44C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_DWORD *MLS.NodeIndex.init(fromLeafIndex:)@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 2 * *result;
  }

  return result;
}

_DWORD *MLS.NodeCount.init(fromLeafCount:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  v2 = *result - 1;
  if (*result)
  {
    if ((v2 & 0x80000000) == 0)
    {
      *a2 = (2 * v2) | 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26BE7B518(int *a1)
{
  v7 = *a1;
  v8 = *a1 - 1;
  if (!*a1)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v2 = sub_26BEEBFB0(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_27;
  }

  v27 = v4;
  v28 = v2;
  v29 = v1;
  v30 = v5;
  v31 = v6;
  v2 = *v2;
  v9 = 2 * v8;
  if (v2 > 2 * v8)
  {
    sub_26BE01654();
    swift_allocError();
    v11 = 0x800000026C02B660;
    v12 = 0xD000000000000023;
LABEL_5:
    *v10 = v12;
    *(v10 + 8) = v11;
    *(v10 + 112) = 15;
    swift_willThrow();
    return v2;
  }

  v25 = v7;
  MLS.NodeIndex.init(forRoot:)(&v25, &v26);
  if (v3)
  {
    return v2;
  }

  LODWORD(v4) = v26;
  if (v2 == v26)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = __clz(__rbit32(~v2));
  v15 = (-1 << (v14 + 1)) - 1;
  if (v14 > 0x1E)
  {
    v15 = -1;
  }

  v16 = v15 & ((1 << v14) | v2);
  if (v16 > v9)
  {
LABEL_30:
    sub_26BE01654();
    swift_allocError();
    v11 = 0x800000026C02B690;
    v12 = 0xD000000000000015;
    goto LABEL_5;
  }

  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v16 == v4)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_26BEEBFB0(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_26BEEBFB0((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    *&v2[4 * v19 + 32] = v16;
    v20 = __clz(__rbit32(~v16));
    v21 = (-1 << (v20 + 1)) - 1;
    if (v20 > 0x1E)
    {
      v21 = -1;
    }

    if (v20 >= 0x20)
    {
      v22 = 0;
    }

    else
    {
      v22 = 1 << v20;
    }

    v16 = v21 & (v22 | v16);
    if (v16 > v9)
    {

      goto LABEL_30;
    }
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_26BEEBFB0((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  *&v2[4 * v24 + 32] = v4;
  return v2;
}

void *sub_26BE7B7A4(int *a1)
{
  v3 = *a1;
  v4 = *v1;
  LODWORD(v37) = *v1;
  v38 = v3;
  v5 = &v37;
  v6 = sub_26BE7B518(&v38);
  if (v2)
  {
    return v5;
  }

  v7 = v6;
  v8 = *(v6 + 2);
  if (!v8)
  {
LABEL_44:

    return MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v7;
  if (!isUniquelyReferenced_nonNull_native || v8 >= *(v7 + 3) >> 1)
  {
    v7 = sub_26BEEBFB0(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v7);
    v39 = v7;
  }

  result = sub_26BE58910(0, 0, 1, v4);
  v11 = *(v7 + 2);
  if (!v11)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v12 = v11 - 1;
  *(v7 + 2) = v11 - 1;
  v13 = v3 - 1;
  if (!v3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v12)
    {
      v14 = 2 * v13;
      v37 = MEMORY[0x277D84F90];
      result = sub_26BECB934(0, v12, 0);
      v15 = 0;
      v5 = v37;
      while (v12 != v15)
      {
        if (v15 >= *(v7 + 2))
        {
          goto LABEL_48;
        }

        v16 = *&v7[4 * v15 + 32];
        v17 = __clz(__rbit32(~v16));
        v18 = (-1 << (v17 + 1)) - 1;
        if (v17 > 0x1E)
        {
          v18 = -1;
        }

        v19 = 1;
        v20 = 1 << v17;
        if (v17 >= 0x20)
        {
          v20 = 0;
        }

        v21 = v18 & (v20 | v16);
        if (v21 > v14)
        {
          goto LABEL_25;
        }

        v22 = __clz(__rbit32(~v21));
        if (v22 < v17 || (v22 <= 0x1E ? (v23 = v16 >> (v22 + 1) == v21 >> (v22 + 1)) : (v23 = 1), !v23))
        {
          sub_26BE01654();
          swift_allocError();
          *v36 = 0xD000000000000022;
          *(v36 + 8) = 0x800000026C02B630;
          *(v36 + 112) = 15;
          swift_willThrow();

          return v5;
        }

        if (v21)
        {
          v25 = v22 != 0;
          v26 = v22 - 1;
          if (!v25)
          {
            goto LABEL_49;
          }

          v27 = (1 << v26) ^ v21;
          v28 = __clz(__rbit32((1 << v26) ^ ~v21));
          v29 = (3 << v26) ^ v21;
          if (v16 >> (v28 + 1) == v27 >> (v28 + 1) || v28 > 0x1E)
          {
            v31 = v29;
          }

          else
          {
            v31 = v27;
          }

          if (v28 >= v17)
          {
            v32 = v31;
          }

          else
          {
            v32 = v27;
          }

          v19 = v32 > v14;
          if (v32 <= v14)
          {
            v24 = v32;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
LABEL_25:
          v24 = 0;
        }

        v37 = v5;
        v34 = v5[2];
        v33 = v5[3];
        if (v34 >= v33 >> 1)
        {
          result = sub_26BECB934((v33 > 1), v34 + 1, 1);
          v5 = v37;
        }

        ++v15;
        v5[2] = v34 + 1;
        v35 = &v5[v34];
        *(v35 + 8) = v24;
        *(v35 + 36) = v19;
        if (v12 == v15)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_52:
  __break(1u);
  return result;
}

unsigned int *MLS.NodeIndex.parent(forNodeCount:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = __clz(__rbit32(~*v2));
  v4 = (-1 << (v3 + 1)) - 1;
  if (v3 > 0x1E)
  {
    v4 = -1;
  }

  if (v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v3;
  }

  v6 = v4 & (v5 | *v2);
  v7 = v6 >= *result;
  if (v6 >= *result)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 4) = v7;
  return result;
}

_DWORD *MLS.NodeIndex.init(forRoot:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if (*result)
  {
    v2 = *result - 1;
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      *a2 = ~(-1 << (__clz((2 * v2) | 1) ^ 0x1F));
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v3 = 0xD000000000000024;
    *(v3 + 8) = 0x800000026C02B5D0;
    *(v3 + 112) = 15;
    return swift_willThrow();
  }

  return result;
}

unsigned int *sub_26BE7BBA8@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = __clz(__rbit32(~*v2));
  v6 = __clz(__rbit32(~*result));
  if (v6 >= v5 && (v6 <= 0x1E ? (v7 = v4 >> (v6 + 1) == v3 >> (v6 + 1)) : (v7 = 1), v7))
  {
    if (v3)
    {
      v9 = v6 - 1;
      v10 = (1 << v9) ^ v3;
      v11 = __clz(__rbit32((1 << v9) ^ ~v3));
      if (v11 >= v5 && ((v12 = v4 >> (v11 + 1), v11 <= 0x1E) ? (v13 = v12 == v10 >> (v11 + 1)) : (v13 = 1), v13))
      {
        *a2 = (3 << v9) ^ v3;
      }

      else
      {
        *a2 = v10;
      }

      *(a2 + 4) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 4) = 1;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v8 = 0xD000000000000022;
    *(v8 + 8) = 0x800000026C02B630;
    *(v8 + 112) = 15;
    return swift_willThrow();
  }

  return result;
}

_DWORD *MLS.LeafIndex.init(fromNodeIndex:)@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result)
  {
    sub_26BE01654();
    swift_allocError();
    *v2 = 0xD000000000000026;
    *(v2 + 8) = 0x800000026C02B600;
    *(v2 + 112) = 15;
    return swift_willThrow();
  }

  else
  {
    *a2 = *result >> 1;
  }

  return result;
}

void MLS.NodeIndex.left.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (1 << (__clz(__rbit32(~v2)) - 1)) ^ v2;
  if ((*v1 & 1) == 0)
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 4) = (v2 & 1) == 0;
}

void MLS.NodeIndex.right.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (3 << (__clz(__rbit32(~v2)) - 1)) ^ v2;
  if ((*v1 & 1) == 0)
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 4) = (v2 & 1) == 0;
}

BOOL sub_26BE7BDC4(_DWORD *a1)
{
  v2 = __clz(__rbit32(~*a1));
  if (v2 < __clz(__rbit32(~*v1)))
  {
    return 0;
  }

  return v2 > 0x1E || *v1 >> (v2 + 1) == *a1 >> (v2 + 1);
}

int *sub_26BE7BE10@<X0>(int *result@<X0>, unsigned int *a2@<X8>)
{
  if ((*v2 & 0x80000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = *result;
  if (*result < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 2 * *v2;
  v5 = 2 * v3;
  if (v4 == 2 * v3)
  {
LABEL_22:
    *a2 = v4;
    return result;
  }

  v6 = 0;
  do
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 >>= 1;
    v5 >>= 1;
    ++v6;
  }

  while (v4 != v5);
  v8 = v4 << v7;
  if (v7 >= 0x20)
  {
    v8 = 0;
  }

  v9 = v4 >> -v7;
  if (v7 <= 0xFFFFFFFFFFFFFFE0)
  {
    v9 = 0;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  if ((v7 - 33) <= 0xFFFFFFFFFFFFFFBELL)
  {
    v9 = 0;
  }

  v10 = __OFSUB__(v7, 1);
  v11 = v7 - 1;
  if (v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >= 0x20)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v11;
  }

  v13 = v12 != 0;
  v14 = v12 - 1;
  if (v13)
  {
    v13 = __CFADD__(v9, v14);
    v4 = v9 + v14;
    if (v13)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int __swiftcall UInt32.log2Floor()()
{
  v1 = __clz(v0) ^ 0x1F;
  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::UInt32 __swiftcall UInt32.nextPowerOfTwo()()
{
  v1 = __clz(v0);
  v2 = 1 << (v1 ^ 0x1F);
  if (v1)
  {
    v3 = 1 << -v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == v0)
  {
    v3 = v0;
  }

  if (v0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

unsigned int *MLS.NodeIndex.sibling(forNodeCount:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = __clz(__rbit32(~*v2));
  v7 = (-1 << (v6 + 1)) - 1;
  if (v6 > 0x1E)
  {
    v7 = -1;
  }

  if (v6 >= 0x20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  v9 = v7 & (v8 | v5);
  if (v9 >= v4)
  {
    goto LABEL_10;
  }

  v10 = a2;
  v13[0] = v9;
  v13[1] = v5;
  result = sub_26BE7BBA8(v13, &v14);
  if (v3)
  {
    return result;
  }

  if (v15 == 1)
  {
    a2 = v10;
LABEL_10:
    *a2 = 0;
    *(a2 + 4) = 1;
    return result;
  }

  v11 = v14;
  v12 = v14 >= v4;
  if (v14 >= v4)
  {
    v11 = 0;
  }

  *v10 = v11;
  *(v10 + 4) = v12;
  return result;
}

uint64_t _s8SwiftMLS0B0O9LeafCountV9hashValueSivg_0()
{
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE7C140(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE7C188()
{
  result = qword_28045E9E8;
  if (!qword_28045E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9E8);
  }

  return result;
}

unint64_t sub_26BE7C1E0()
{
  result = qword_28045E9F0;
  if (!qword_28045E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9F0);
  }

  return result;
}

unint64_t sub_26BE7C238()
{
  result = qword_28045E9F8;
  if (!qword_28045E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9F8);
  }

  return result;
}

uint64_t _s9LeafIndexVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9LeafIndexVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_26BE7C3DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE7C3FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void sub_26BE7C458(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_26C00A45C();
  sub_26BE2DC18(a1, v11);
  v5 = swift_allocObject();
  v6 = v11[5];
  *(v5 + 88) = v11[4];
  *(v5 + 104) = v6;
  *(v5 + 120) = v11[6];
  v7 = v11[1];
  *(v5 + 24) = v11[0];
  *(v5 + 40) = v7;
  v8 = v11[3];
  *(v5 + 56) = v11[2];
  *(v5 + 16) = 1;
  *(v5 + 136) = v12;
  *(v5 + 72) = v8;
  aBlock[4] = sub_26BE2DC78;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_1;
  v9 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v9);

  sub_26BE7C9B8(v2, 0);
}

unint64_t sub_26BE7C5A8(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125A0;
  strcpy((inited + 32), "errorContext");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x646F43726574756FLL;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x646F4372656E6E69;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_26BE7C710()
{
  v0 = MLS.MLSError.errorUserInfo.getter();
  v1 = sub_26C00A48C();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = sub_26BEBB618(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_8;
  }

  sub_26BE2E2EC(*(v0 + 56) + 32 * v3, &v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA20, &qword_26C0133C8);
  if (swift_dynamicCast())
  {
    if (*(&v10 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      v6 = sub_26C008E2C();
      __swift_destroy_boxed_opaque_existential_1(&v9);
      return v6;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

LABEL_8:
  sub_26BE7D3AC(&v9);
  return 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BE7C860(unsigned __int8 a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125A0;
  strcpy((inited + 32), "errorContext");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x646F43726574756FLL;
  *(inited + 64) = 0xE900000000000065;
  sub_26BE7D360();
  *(inited + 72) = sub_26C00AA8C();
  *(inited + 80) = 0x646F4372656E6E69;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v5;
}

void sub_26BE7C9B8(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = sub_26C00921C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  LODWORD(v13) = a1;
  if (a1 > 3u)
  {
    goto LABEL_8;
  }

  if (a1 > 1u)
  {
    goto LABEL_14;
  }

  if (a1)
  {
LABEL_24:
    v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_49:
      v25 = v13[2];
      v13 += 2;
      v14 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_52;
    }

    v18 = v13[1];
    ++v13;
    v14 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (a2)
  {
    goto LABEL_60;
  }

  v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport + 120);
  v14 = *v13 + 1;
  if (__OFADD__(*v13, 1))
  {
    __break(1u);
LABEL_8:
    if (v13 > 5)
    {
LABEL_19:
      if (v13 != 6)
      {
LABEL_36:
        v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
        if ((a2 & 1) == 0)
        {
          goto LABEL_58;
        }

        v21 = v13[13];
        v13 += 13;
        v14 = v21 + 1;
        if (!__OFADD__(v21, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_40;
      }

      v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_46:
        v24 = v13[12];
        v13 += 12;
        v14 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_49;
      }

      v17 = v13[11];
      v13 += 11;
      v14 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (v13 != 4)
    {
LABEL_28:
      v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_52:
        v26 = v13[10];
        v13 += 10;
        v14 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_55;
      }

      v19 = v13[9];
      v13 += 9;
      v14 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_32;
    }

    v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_40:
      v22 = v13[8];
      v13 += 8;
      v14 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_43;
    }

    v15 = v13[7];
    v13 += 7;
    v14 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_14:
    if (v13 != 2)
    {
LABEL_32:
      v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_55:
        v27 = v13[6];
        v13 += 6;
        v14 = v27 + 1;
        if (!__OFADD__(v27, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
LABEL_58:
        v28 = v13[14];
        v13 += 14;
        v14 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_69:
          __break(1u);
          return;
        }

        goto LABEL_59;
      }

      v20 = v13[5];
      v13 += 5;
      v14 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_36;
    }

    v13 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_43:
      v23 = v13[4];
      v13 += 4;
      v14 = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_46;
    }

    v16 = v13[3];
    v13 += 3;
    v14 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_59:
  *v13 = v14;
LABEL_60:
  sub_26C00920C();
  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp, v6);
  sub_26C00918C();
  v30 = v29;
  v31 = *(v7 + 8);
  v31(v10, v6);
  v31(v12, v6);
  if (v30 <= *(v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds))
  {
    return;
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v32 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *(v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport) = v30;
  v33 = sub_26C00A45C();
  aBlock[4] = sub_26BE7D224;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_6;
  v34 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v34);

  v32[6] = 0u;
  v32[7] = 0u;
  v32[4] = 0u;
  v32[5] = 0u;
  v32[2] = 0u;
  v32[3] = 0u;
  *v32 = 0u;
  v32[1] = 0u;
}

unint64_t sub_26BE7CE14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C013360;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xEF73646E6F636553;
  v3 = (a1 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000026C02B6D0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x800000026C02B6F0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0xD000000000000016;
  *(inited + 112) = 0x800000026C02B710;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x800000026C02B730;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD00000000000001ALL;
  *(inited + 160) = 0x800000026C02B750;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x800000026C02B770;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000026C02B790;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x800000026C02B7B0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD00000000000001ALL;
  *(inited + 256) = 0x800000026C02B7D0;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000026C02B7F0;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x800000026C02B810;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 320) = 0xD000000000000013;
  *(inited + 328) = 0x800000026C02B830;
  *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 344) = 0xD000000000000017;
  *(inited + 352) = 0x800000026C02B850;
  *(inited + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = 0x800000026C02B870;
  *(inited + 384) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 392) = 0x68744F726F727265;
  *(inited + 400) = 0xEA00000000007265;
  *(inited + 408) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v4;
}

void sub_26BE7D22C(uint64_t a1)
{
  v2 = sub_26C00A45C();
  sub_26BE2DC18(a1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  *(v3 + 88) = v9[4];
  *(v3 + 104) = v4;
  *(v3 + 120) = v9[6];
  v5 = v9[1];
  *(v3 + 24) = v9[0];
  *(v3 + 40) = v5;
  v6 = v9[3];
  *(v3 + 56) = v9[2];
  *(v3 + 16) = 3;
  *(v3 + 136) = v10;
  *(v3 + 72) = v6;
  aBlock[4] = sub_26BE2E3DC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

unint64_t sub_26BE7D360()
{
  result = qword_28045EA10;
  if (!qword_28045EA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045EA10);
  }

  return result;
}

uint64_t sub_26BE7D3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA18, &qword_26C0133C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLS.Certificate.certData.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Certificate.certData.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

unint64_t sub_26BE7D4EC(unsigned __int16 *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = *(a1 + 1);
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  LOWORD(v15) = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = (&v15 + 2);
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  LOWORD(v15) = bswap32(v1) >> 16;
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = (&v15 + 2);
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v15 = bswap32(v2);
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v7 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_17;
    }

    v8 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  v12 = result;
  if (v14)
  {
    return result;
  }

  sub_26BE11228(v3, v4);
  v13 = v12 + v8;
  if (__OFADD__(v12, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

  result = v13 + 8;
  if (__OFADD__(v13, 8))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t _s19SecretPayloadHeaderVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19SecretPayloadHeaderVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t *sub_26BE7D80C(uint64_t *result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (2 * v3) | 1;
    v6 = 136 * v3 - 104;
    v7 = *(*result + 16);
    while (1)
    {
      if (v7 > v3)
      {
        __break(1u);
        goto LABEL_16;
      }

      memmove(&v12, (v2 + v6), 0x88uLL);
      result = sub_26BE58C10(&v12);
      if (result != 1)
      {
        break;
      }

      --v7;
      ++v4;
      v5 -= 2;
      v6 -= 136;
      if (v7 + 1 < 2)
      {
        goto LABEL_9;
      }
    }

    if (!v4)
    {
      goto LABEL_9;
    }

    sub_26BFB6640(v2, v2 + 32, 0, v5);
    v2 = v8;
  }

  else
  {
LABEL_9:
  }

  v12 = xmmword_26C00BBD0;
  v13 = 0;
  v9 = sub_26BEEAFD8(0, v2, &v12);
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
  }

  else
  {
    v10 = v9;
    v11 = sub_26BF30414(v9);
    sub_26BF2A30C(&v12);
    sub_26BE00258(v12, *(&v12 + 1));

    result = (v11 + v10);
    if (__OFADD__(v11, v10))
    {
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

uint64_t MLS.RatchetTree.nodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_26BE7D9CC(uint64_t a1, __int128 *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2[5];
  v4 = a2[7];
  v58 = a2[6];
  v59 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v54 = a2[2];
  v55 = v6;
  v7 = a2[3];
  v8 = a2[5];
  v56 = a2[4];
  v57 = v8;
  v9 = a2[1];
  v52 = *a2;
  v53 = v9;
  v10 = a2[7];
  v61[6] = v58;
  v61[7] = v10;
  v61[2] = v54;
  v61[3] = v7;
  v61[4] = v56;
  v61[5] = v3;
  v60 = *(a2 + 16);
  v62 = *(a2 + 16);
  v61[0] = v52;
  v61[1] = v5;
  if (sub_26BE58C10(v61) == 1)
  {
    LOBYTE(v34) = 0;
    *(&v44 + 1) = MEMORY[0x277D838B0];
    *&v45 = MEMORY[0x277CC9C18];
    *&v43 = &v34;
    *(&v43 + 1) = &v34 + 1;
    __swift_project_boxed_opaque_existential_1(&v43, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v43);
    return 1;
  }

  v40 = v58;
  v41 = v59;
  v42 = v60;
  v36 = v54;
  v37 = v55;
  v38 = v56;
  v39 = v57;
  v34 = v52;
  v35 = v53;
  v23 = 1;
  v12 = MEMORY[0x277D838B0];
  v13 = MEMORY[0x277CC9C18];
  v33[3] = MEMORY[0x277D838B0];
  v33[4] = MEMORY[0x277CC9C18];
  v33[0] = &v23;
  v33[1] = &v24;
  __swift_project_boxed_opaque_existential_1(v33, MEMORY[0x277D838B0]);
  sub_26BE59BD8(&v34, &v24);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v33);
  if (sub_26BE592C4(&v34))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  LOBYTE(v33[0]) = v14;
  *(&v25 + 1) = v12;
  *&v26 = v13;
  *&v24 = v33;
  *(&v24 + 1) = v33 + 1;
  __swift_project_boxed_opaque_existential_1(&v24, v12);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v43 = v34;
  v44 = v35;
  v15 = sub_26BE592C4(&v43);
  result = sub_26BE13A3C(&v43);
  if (v15 == 1)
  {
    v16 = *(result + 32);
    v17 = *(result + 16);
    v24 = *result;
    v25 = v17;
    *&v26 = v16;
    sub_26BEC1C1C(&v24);
    v19 = v18;
    result = sub_26BE7DCC0(&v52);
    if (v2)
    {
      return result;
    }

    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v29 = *(result + 80);
  v30 = *(result + 96);
  v31 = *(result + 112);
  v32 = *(result + 128);
  v25 = *(result + 16);
  v26 = *(result + 32);
  v27 = *(result + 48);
  v28 = *(result + 64);
  v24 = *result;
  sub_26BE7DD28(&v24);
  v22 = v21;
  result = sub_26BE7DCC0(&v52);
  if (v2)
  {
    return result;
  }

  v20 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_17:
    __break(1u);
  }

LABEL_14:
  result = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26BE7DCC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BE7DD28(uint64_t a1)
{
  v2 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v2;
  v14[6] = *(a1 + 96);
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v15 = *(a1 + 112);
  v16 = v5;
  v17 = v6;
  sub_26BE7EBA4(v14);
  if (!v1)
  {
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v9 = v7;
      }

      else
      {
        v9 = v7;
        v10 = 0;
      }
    }

    else if (v8)
    {
      if (__OFSUB__(HIDWORD(v5), v5))
      {
LABEL_18:
        __break(1u);
        return;
      }

      v9 = v7;
      v10 = HIDWORD(v5) - v5;
    }

    else
    {
      v9 = v7;
      v10 = BYTE6(v6);
    }

    v13 = sub_26BF30414(v10);
    sub_26BE11228(v5, v6);
    if (__OFADD__(v13, v10))
    {
      __break(1u);
    }

    else if (!__OFADD__(v9, v13 + v10))
    {
      return;
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_26BE7DE38(uint64_t a1@<X8>)
{
  v3 = v1;
  v106 = *MEMORY[0x277D85DE8];
  v5 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  v7 = v5;
  v98 = v6;
  v96 = sub_26BF2F7B0();
  v97 = v8;
  sub_26BE03DC0(&v101);
  v9 = v101;
  v10 = v102;
  sub_26BE77DB0(&v101);
  v94 = v10;
  v95 = v9;
  v11 = v101;
  v12 = v102;
  v13 = v103;
  v14 = v104;
  v15 = v105;
  v16 = sub_26BEE62D4();
  if ((v16 & 0x100) != 0)
  {

    sub_26BE01600();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    v18 = v95;
LABEL_16:
    sub_26BE0489C(v18, v94);
    sub_26BE00258(v96, v97);
    sub_26BE00258(v7, v98);
    return;
  }

  v89 = v15;
  v90 = v12;
  v91 = v14;
  v92 = v11;
  v93 = v13;
  switch(v16)
  {
    case 1u:
      v19 = sub_26BEEE594();
      if (v20 & 1) != 0 || (v25 = v19, v21 = sub_26BEEE594(), (v22))
      {

        sub_26BE01600();
        swift_allocError();
        *v23 = 1;
LABEL_15:
        swift_willThrow();
        v18 = v95;
        goto LABEL_16;
      }

      v87 = v21;
      v88 = 0;
      break;
    case 2u:
      v88 = v16;
      v25 = 0;
      v87 = 0;
      break;
    case 3u:
      v25 = sub_26BF2F7B0();
      v87 = v26;
      v88 = 1;
      break;
    default:

      sub_26BE01654();
      swift_allocError();
      *v24 = 0;
      v24[112] = 5;
      goto LABEL_15;
  }

  v28 = *v1;
  v27 = v3[1];
  v29 = v3[2];
  sub_26BE00608(*v3, v27);
  sub_26BE00608(v28, v27);
  sub_26BF30764(v3, &v101);
  v84 = v29;
  if (v102)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v28;
    v3[1] = v27;
    v30 = v27;
    v31 = v28;
    v3[2] = v29;
    v32 = v28;
LABEL_22:
    sub_26BE00258(v31, v30);

    *v3 = v32;
    v3[1] = v27;
    v3[2] = v29;
    sub_26BE01600();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    sub_26BE00258(v7, v98);
    sub_26BE00258(v96, v97);
    sub_26BE0489C(v95, v94);
    sub_26BE5A170(v25, v87, v88);
    return;
  }

  v34 = v28;
  v35 = v101;
  v82 = v34;
  sub_26BE00258(v34, v27);
  if (v35 > 100000000)
  {
    v86 = v25;
    sub_26BE01600();
    swift_allocError();
    *v36 = 5;
    swift_willThrow();
    v37 = v94;
    v38 = v82;
LABEL_19:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v38;
    v3[1] = v27;
    v3[2] = v29;
    swift_willThrow();
    sub_26BE00258(v7, v98);
    sub_26BE00258(v96, v97);
    sub_26BE0489C(v95, v37);

    sub_26BE5A170(v86, v87, v88);
    return;
  }

  v39 = sub_26BF2A44C(v35);
  if (v40 >> 60 == 15)
  {
    v31 = *v3;
    v30 = v3[1];
    v32 = v82;
    goto LABEL_22;
  }

  v101 = v39;
  v102 = v40;
  v42 = v40 >> 62;
  v78 = v39 >> 32;
  v79 = v39;
  v85 = MEMORY[0x277D84F90];
  v86 = v25;
  v80 = BYTE6(v40);
  v81 = v40 >> 62;
  v103 = v41;
  v77 = v27;
  if ((v40 >> 62) > 1)
  {
    goto LABEL_30;
  }

LABEL_28:
  v43 = v80;
  if (v42)
  {
    v43 = v78;
  }

  while (1)
  {
    v44 = __OFSUB__(v43, v41);
    v45 = v43 - v41;
    if (v44)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return;
    }

    if (v45 < 1)
    {
      break;
    }

    v46 = v41 + 2;
    if (__OFADD__(v41, 2))
    {
      goto LABEL_86;
    }

    v48 = v101;
    v47 = v102;
    v49 = v102 >> 62;
    if ((v102 >> 62) <= 1)
    {
      if (v49)
      {
        v50 = v101 >> 32;
      }

      else
      {
        v50 = BYTE6(v102);
      }

LABEL_42:
      if (v50 < v46)
      {
        goto LABEL_77;
      }

      goto LABEL_45;
    }

    if (v49 == 2)
    {
      v50 = *(v101 + 24);
      goto LABEL_42;
    }

    if (v46 > 0)
    {
      goto LABEL_77;
    }

LABEL_45:
    v99 = v101;
    v100 = v102;
    if (v46 < v41)
    {
      goto LABEL_87;
    }

    sub_26BE00608(v101, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v99, v100);
    v103 = v46;
    sub_26BE00608(v48, v47);
    v51 = v48;
    sub_26BE00608(v48, v47);
    sub_26BF30764(&v101, &v99);
    if (v100)
    {
      sub_26BE00258(v101, v102);
      v55 = v47;
      v54 = v48;
LABEL_76:
      sub_26BE00258(v54, v55);
      v101 = v48;
      v102 = v47;
      v103 = v46;
LABEL_77:
      sub_26BE01600();
      swift_allocError();
      *v73 = 1;
      v37 = v94;
      swift_willThrow();

      sub_26BE00258(v101, v102);
      v38 = v82;
      v29 = v84;
      v27 = v77;
      goto LABEL_19;
    }

    v52 = v99;
    sub_26BE00258(v48, v47);
    v44 = __OFADD__(v103, v52);
    v53 = v103 + v52;
    if (v44)
    {
      goto LABEL_88;
    }

    v54 = v101;
    v55 = v102;
    v56 = v102 >> 62;
    if ((v102 >> 62) <= 1)
    {
      if (v56)
      {
        v57 = v101 >> 32;
      }

      else
      {
        v57 = BYTE6(v102);
      }

LABEL_54:
      if (v57 < v53)
      {
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (v56 == 2)
    {
      v57 = *(v101 + 24);
      goto LABEL_54;
    }

    if (v53 > 0)
    {
      goto LABEL_76;
    }

LABEL_57:
    if (v53 < v103)
    {
      goto LABEL_89;
    }

    v58 = sub_26C00909C();
    v59 = v53;
    v60 = v58;
    v62 = v61;
    v83 = v59;
    v103 = v59;
    v63 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v63 != 2)
      {
        goto LABEL_65;
      }

      v58 = *(v58 + 16);
      v64 = *(v60 + 24);
    }

    else
    {
      if (!v63)
      {
        goto LABEL_65;
      }

      v58 = v58;
      v64 = v60 >> 32;
    }

    if (v64 < v58)
    {
      goto LABEL_90;
    }

LABEL_65:
    v65 = sub_26C00909C();
    v67 = v66;
    sub_26BE00258(v60, v62);
    sub_26BE00258(v51, v47);
    sub_26BE00608(v65, v67);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_26BEEBD8C(0, *(v85 + 2) + 1, 1, v85);
    }

    v69 = *(v85 + 2);
    v68 = *(v85 + 3);
    if (v69 >= v68 >> 1)
    {
      v85 = sub_26BEEBD8C((v68 > 1), v69 + 1, 1, v85);
    }

    sub_26BE00258(v65, v67);
    *(v85 + 2) = v69 + 1;
    v70 = &v85[24 * v69];
    *(v70 + 16) = bswap32(0) >> 16;
    *(v70 + 5) = v65;
    *(v70 + 6) = v67;
    LODWORD(v42) = v81;
    v41 = v83;
    if (v81 <= 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    if (v42 == 2)
    {
      v43 = *(v79 + 24);
    }

    else
    {
      v43 = 0;
    }
  }

  v71 = v102 >> 62;
  if ((v102 >> 62) > 1)
  {
    if (v71 == 2)
    {
      v72 = *(v101 + 24);
    }

    else
    {
      v72 = 0;
    }
  }

  else if (v71)
  {
    v72 = v101 >> 32;
  }

  else
  {
    v72 = BYTE6(v102);
  }

  if (__OFSUB__(v72, v41))
  {
    goto LABEL_91;
  }

  if (v72 != v41)
  {
    sub_26BE01654();
    swift_allocError();
    *v75 = 0;
    v75[112] = 1;
    swift_willThrow();

    sub_26BE00258(v101, v102);
    v37 = v94;
    v38 = v82;
    v29 = v84;
    v27 = v77;
    goto LABEL_19;
  }

  sub_26BE00258(v101, v102);
  sub_26BE00258(v82, v77);
  v74 = sub_26BF2F7B0();
  *a1 = v7;
  *(a1 + 8) = v98;
  *(a1 + 16) = v96;
  *(a1 + 24) = v97;
  *(a1 + 32) = v95;
  *(a1 + 40) = v94;
  *(a1 + 48) = v92;
  *(a1 + 56) = v90;
  *(a1 + 64) = v93;
  *(a1 + 72) = v91;
  *(a1 + 80) = v89;
  *(a1 + 88) = v86;
  *(a1 + 96) = v87;
  *(a1 + 104) = v88;
  *(a1 + 112) = v85;
  *(a1 + 120) = v74;
  *(a1 + 128) = v76;
}