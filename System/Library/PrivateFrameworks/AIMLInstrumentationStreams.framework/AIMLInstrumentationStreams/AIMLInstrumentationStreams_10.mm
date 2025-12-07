id sub_23C64313C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_23C6432B0()
{
  v1 = v0;
  v2 = type metadata accessor for EventTypeIdPair(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  v6 = *v0;
  v7 = sub_23C871E64();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_23C600748(*(v6 + 48) + v22, v5, type metadata accessor for EventTypeIdPair);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_23C64BB10(v5, *(v8 + 48) + v22, type metadata accessor for EventTypeIdPair);
        *(*(v8 + 56) + 8 * v21) = v23;
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

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_23C6434EC()
{
  v1 = v0;
  v2 = type metadata accessor for EventTypeIdPair(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
  v5 = *v0;
  v6 = sub_23C871E64();
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
        v21 = *(v24 + 72) * v20;
        sub_23C600748(*(v5 + 48) + v21, v4, type metadata accessor for EventTypeIdPair);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_23C64BB10(v4, *(v7 + 48) + v21, type metadata accessor for EventTypeIdPair);
        *(*(v7 + 56) + 8 * v20) = v22;
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

void *sub_23C64372C()
{
  v1 = v0;
  v29 = sub_23C870B74();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  v3 = *v0;
  v4 = sub_23C871E64();
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
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

char *sub_23C6439A0()
{
  v1 = v0;
  v33 = sub_23C870B74();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
  v3 = *v0;
  v4 = sub_23C871E64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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

  return result;
}

void *sub_23C643C48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE58, &unk_23C87BF10);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 96;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v38 = *(v19 + v17 + 64);
        v39 = v25;
        v37 = v24;
        v26 = *(v19 + v17 + 16);
        v34 = *(v19 + v17);
        v35 = v26;
        v36 = v23;
        v27 = (*(v4 + 48) + v18);
        *v27 = v22;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        v29 = v35;
        *v28 = v34;
        v28[1] = v29;
        v30 = v36;
        v31 = v37;
        v32 = v39;
        v28[4] = v38;
        v28[5] = v32;
        v28[2] = v30;
        v28[3] = v31;

        result = sub_23C58BBD4(&v34, &v33);
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

void *sub_23C643E14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = (*(v4 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v28[2] = v21;
        v28[3] = v22;
        v29 = (*(v4 + 56) + v17);
        *v29 = v24;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
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

void *sub_23C643FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_23C644140(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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
        v20 = (*(v4 + 48) + 32 * v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = (*(v6 + 48) + 32 * v19);
        *v25 = *v20;
        v25[1] = v21;
        v25[2] = v22;
        v25[3] = v23;
        *(*(v6 + 56) + 8 * v19) = v24;
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

void *sub_23C6442B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
  v2 = *v0;
  v3 = sub_23C871E64();
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

void *sub_23C644434(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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

id sub_23C644594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
  v2 = *v0;
  v3 = sub_23C871E64();
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

void *sub_23C644700()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        result = sub_23C59A744(v18);
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

void *sub_23C644870(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

void *sub_23C6449D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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

void *sub_23C644B24()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  v6 = *v0;
  v7 = sub_23C871E64();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_23C600748(*(v6 + 48) + v22, v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_23C64BB10(v5, *(v8 + 48) + v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
        *(*(v8 + 56) + 8 * v21) = v23;
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

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_23C644D60()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v25 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
  v8 = *v0;
  v9 = sub_23C871E64();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v25 + 72) * (v20 | (v14 << 6));
        sub_23C600748(*(v8 + 48) + v23, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C600748(*(v8 + 56) + v23, v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C64BB10(v7, *(v10 + 48) + v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
        result = sub_23C64BB10(v5, *(v10 + 56) + v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      while (v18);
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

        v1 = v24;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_23C644FD8(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v2;
  v10 = sub_23C871E64();
  v11 = v10;
  if (*(v9 + 16))
  {
    v27 = v5;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = *(v9 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(v28 + 72) * v24;
        sub_23C600748(*(v9 + 48) + v25, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v26 = *(*(v9 + 56) + 8 * v24);
        sub_23C64BB10(v8, *(v11 + 48) + v25, type metadata accessor for SiriConversationPublisher.GraphUUID);
        *(*(v11 + 56) + 8 * v24) = v26;
      }

      while (v19);
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

        v5 = v27;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
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
    *v5 = v11;
  }

  return result;
}

void *sub_23C645214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        sub_23C588DC0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23C59A4B0(v25, (*(v4 + 56) + v22));
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

void *sub_23C6453B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBE40, &unk_23C87BEF8);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = sub_23C64BC50(&v32, &v31);
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

void *sub_23C645568()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B78, &qword_23C874C00);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_23C6456D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23C648E8C(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_23C871FC4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[5 * i + 8];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = *v13;
          *(v13 + 3) = *(v13 - 1);
          v17 = v13[5];
          v18 = v13[6];
          *(v13 + 5) = v16;
          v13[7] = v13[2];
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v17;
          v13[1] = v18;
          *(v13 + 2) = v11;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF0, &qword_23C87BEC0);
      v7 = sub_23C8718F4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_23C645C98(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23C645848(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648EC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C6458FC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23C6458FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
        v6 = sub_23C8718F4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23C646278(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23C645A40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C645A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v20;
    v23 = v39;
    while (1)
    {
      sub_23C5855B0(v21, v16, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C5855B0(v19, v12, &qword_27E1F9A98, &qword_23C874AF0);
      v24 = *(v23 + 48);
      v25 = *&v16[v24];
      v26 = *&v12[v24];
      sub_23C585C34(v12, &qword_27E1F9A98, &qword_23C874AF0);
      result = sub_23C585C34(v16, &qword_27E1F9A98, &qword_23C874AF0);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_23C64B32C(v21, v38);
      v23 = v39;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C64B32C(v27, v19);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C645C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_23C646BC8((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v24 - 3) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            v24[1] = v27;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 16);
    v43 = *(v8 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_23C584338((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_23C646BC8((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v5)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 8;
  v33 = v9 - v7;
LABEL_30:
  v34 = *(v31 + 40 * v7 + 32);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *v36)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 8);
    v38 = *(v36 + 16);
    v39 = *(v36 - 16);
    *(v36 + 8) = *(v36 - 32);
    v40 = *(v36 + 24);
    v41 = *(v36 + 32);
    *(v36 + 24) = v39;
    *(v36 + 40) = *v36;
    *(v36 - 32) = v37;
    *(v36 - 24) = v38;
    *(v36 - 16) = v40;
    *(v36 - 8) = v41;
    *v36 = v34;
    v36 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23C646278(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v109 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v124 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v123 = &v107 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v109;
    if (!*v109)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_23C6473A0(v4);
    }

    v126 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v103 = *(result + 16 * v4);
        v104 = result;
        v105 = *(result + 16 * (v4 - 1) + 40);
        sub_23C646E04(*a3 + *(v118 + 72) * v103, *a3 + *(v118 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v118 + 72) * v105, a4);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_23C6473A0(v104);
        }

        if (v4 - 2 >= *(v104 + 2))
        {
          goto LABEL_124;
        }

        v106 = &v104[16 * v4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v126 = v104;
        sub_23C647314(v4 - 1);
        result = v126;
        v4 = *(v126 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v108 = a4;
  v125 = v9;
  while (1)
  {
    v21 = v19;
    v115 = v20;
    if (v19 + 1 >= v18)
    {
      v33 = v19 + 1;
    }

    else
    {
      v110 = v19;
      v22 = *a3;
      v120 = v18;
      v121 = v22;
      v23 = *(v118 + 72);
      v24 = v22 + v23 * (v19 + 1);
      v25 = v123;
      sub_23C5855B0(v24, v123, &qword_27E1F9A98, &qword_23C874AF0);
      v26 = v110;
      v27 = v22 + v23 * v110;
      v28 = v124;
      sub_23C5855B0(v27, v124, &qword_27E1F9A98, &qword_23C874AF0);
      v29 = *(v9 + 48);
      v30 = *(v25 + v29);
      v31 = *(v28 + v29);
      sub_23C585C34(v28, &qword_27E1F9A98, &qword_23C874AF0);
      result = sub_23C585C34(v25, &qword_27E1F9A98, &qword_23C874AF0);
      v4 = v26 + 2;
      v119 = v23;
      v32 = v121 + v23 * v4;
      while (1)
      {
        v33 = v120;
        if (v120 == v4)
        {
          break;
        }

        LODWORD(v121) = v30 < v31;
        v34 = v123;
        sub_23C5855B0(v32, v123, &qword_27E1F9A98, &qword_23C874AF0);
        v35 = v124;
        sub_23C5855B0(v24, v124, &qword_27E1F9A98, &qword_23C874AF0);
        v36 = *(v125 + 48);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_23C585C34(v35, &qword_27E1F9A98, &qword_23C874AF0);
        result = sub_23C585C34(v34, &qword_27E1F9A98, &qword_23C874AF0);
        ++v4;
        v32 += v119;
        v24 += v119;
        if (((v121 ^ (v37 >= v38)) & 1) == 0)
        {
          v33 = v4 - 1;
          break;
        }
      }

      a4 = v108;
      v9 = v125;
      v21 = v110;
      if (v30 < v31)
      {
        if (v33 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v33)
        {
          v107 = v6;
          v4 = v119 * (v33 - 1);
          v39 = v33 * v119;
          v40 = v33;
          v41 = v110;
          v42 = v110 * v119;
          v111 = a3;
          do
          {
            if (v41 != --v33)
            {
              v43 = *a3;
              if (!v43)
              {
                goto LABEL_133;
              }

              sub_23C64B32C(v43 + v42, v114);
              if (v42 < v4 || v43 + v42 >= (v43 + v39))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C64B32C(v114, v43 + v4);
              a3 = v111;
            }

            ++v41;
            v4 -= v119;
            v39 -= v119;
            v42 += v119;
          }

          while (v41 < v33);
          v6 = v107;
          a4 = v108;
          v9 = v125;
          v21 = v110;
          v33 = v40;
        }
      }
    }

    v44 = a3[1];
    if (v33 < v44)
    {
      if (__OFSUB__(v33, v21))
      {
        goto LABEL_126;
      }

      if (v33 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_128;
        }

        if (v21 + a4 >= v44)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v45)
        {
          break;
        }
      }
    }

    v19 = v33;
    if (v33 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v115;
    }

    else
    {
      result = sub_23C584338(0, *(v115 + 2) + 1, 1, v115);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v46 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v46 >> 1)
    {
      result = sub_23C584338((v46 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v47 = &v20[16 * v4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    if (!*v109)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v48 = *v109;
      while (1)
      {
        v49 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_53:
          if (v53)
          {
            goto LABEL_114;
          }

          v66 = &v20[16 * a4];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_117;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_121;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v76 = &v20[16 * a4];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_67:
        if (v71)
        {
          goto LABEL_116;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v49 - 1;
        if (v49 - 1 >= a4)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v87 = v20;
        a4 = *&v20[16 * v4 + 32];
        v88 = *&v20[16 * v49 + 40];
        sub_23C646E04(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v20[16 * v49 + 32], *a3 + *(v118 + 72) * v88, v48);
        if (v6)
        {
        }

        if (v88 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_23C6473A0(v87);
        }

        v9 = v125;
        if (v4 >= *(v89 + 2))
        {
          goto LABEL_111;
        }

        v90 = &v89[16 * v4];
        *(v90 + 4) = a4;
        *(v90 + 5) = v88;
        v126 = v89;
        v4 = &v126;
        result = sub_23C647314(v49);
        v20 = v126;
        a4 = *(v126 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * a4 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_112;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_113;
      }

      v61 = &v20[16 * a4];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_115;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_118;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_122;
        }

        if (v52 < v86)
        {
          v49 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v18 = a3[1];
    a4 = v108;
    if (v19 >= v18)
    {
      goto LABEL_97;
    }
  }

  v107 = v6;
  v110 = v21;
  v111 = a3;
  v91 = *(v118 + 72);
  v92 = *a3 + v91 * (v33 - 1);
  v93 = -v91;
  v94 = v21 - v33;
  v121 = *a3;
  v112 = v91;
  v113 = v45;
  a4 = v121 + v33 * v91;
LABEL_87:
  v119 = v92;
  v120 = v33;
  v116 = a4;
  v117 = v94;
  v95 = v92;
  v96 = v125;
  while (1)
  {
    v4 = v123;
    sub_23C5855B0(a4, v123, &qword_27E1F9A98, &qword_23C874AF0);
    v97 = v124;
    sub_23C5855B0(v95, v124, &qword_27E1F9A98, &qword_23C874AF0);
    v98 = *(v96 + 48);
    v99 = *(v4 + v98);
    v100 = *(v97 + v98);
    sub_23C585C34(v97, &qword_27E1F9A98, &qword_23C874AF0);
    result = sub_23C585C34(v4, &qword_27E1F9A98, &qword_23C874AF0);
    if (v99 >= v100)
    {
LABEL_86:
      v33 = v120 + 1;
      v19 = v113;
      v92 = v119 + v112;
      v94 = v117 - 1;
      a4 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_87;
      }

      v6 = v107;
      v21 = v110;
      a3 = v111;
      v9 = v125;
      if (v113 < v110)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v121)
    {
      break;
    }

    v101 = v122;
    sub_23C64B32C(a4, v122);
    v96 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_23C64B32C(v101, v95);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_23C646BC8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_23C646E04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = v25;
      v44 = a4;
      do
      {
        v41 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v45 = v27;
        while (1)
        {
          v30 = v48;
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v41;
            goto LABEL_58;
          }

          v42 = v24;
          v48 += v25;
          v31 = v26 + v25;
          sub_23C5855B0(v31, v11, &qword_27E1F9A98, &qword_23C874AF0);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v46;
          sub_23C5855B0(v33, v46, &qword_27E1F9A98, &qword_23C874AF0);
          v36 = *(v47 + 48);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v11 = v34;
          sub_23C585C34(v39, &qword_27E1F9A98, &qword_23C874AF0);
          sub_23C585C34(v34, &qword_27E1F9A98, &qword_23C874AF0);
          if (v37 < v38)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v45;
          v29 = v31 > v44;
          v25 = v43;
          if (!v29)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        if (v30 < v45 || v48 >= v45)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
        }

        else
        {
          v25 = v43;
          a2 = v32;
          if (v30 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v42;
      }

      while (v26 > v44);
    }

LABEL_57:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < v48)
    {
      do
      {
        sub_23C5855B0(a2, v11, &qword_27E1F9A98, &qword_23C874AF0);
        v20 = v46;
        sub_23C5855B0(a4, v46, &qword_27E1F9A98, &qword_23C874AF0);
        v21 = *(v47 + 48);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_23C585C34(v20, &qword_27E1F9A98, &qword_23C874AF0);
        sub_23C585C34(v11, &qword_27E1F9A98, &qword_23C874AF0);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v18 && a2 < v48);
    }
  }

LABEL_58:
  sub_23C64750C(&v51, &v50, &v49, &qword_27E1F9A98, &qword_23C874AF0);
  return 1;
}

uint64_t sub_23C647314(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23C6473A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23C6473FC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23C64750C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_23C6475F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_23C647694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  result = sub_23C871E94();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v17 + 8 * v16);
    sub_23C8720F4();

    sub_23C871804();
    sub_23C871804();
    result = sub_23C872124();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 32 * v27);
    *v32 = v19;
    v32[1] = v20;
    v32[2] = v21;
    v32[3] = v22;
    *(*(v9 + 56) + 8 * v27) = v23;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BF8, &unk_23C87BEE0);
  result = sub_23C871E94();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = v17;

    result = sub_23C871B24();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647B20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = sub_23C870B74();
  v43 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  result = sub_23C871E94();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v37[1] = v43 + 16;
  v38 = result;
  v44 = v43 + 32;
  v16 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v17 = v45;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v43;
    v42 = *(v43 + 72);
    v25 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v17);
    v26 = *(a4[7] + 8 * v22);
    v27 = *(v24 + 32);
    v10 = v18;
    v27(v18, v25, v17);
    v13 = v38;
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_23C8716E4();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v27)(*(v13 + 48) + v31 * v42, v10, v45);
    *(*(v13 + 56) + 8 * v31) = v26;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v14 = v41;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647EB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventTypeIdPair(0);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v36 = &v34 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  result = sub_23C871E94();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v35 = a4;
  v18 = v36;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v40 = *(v37 + 72);
    sub_23C600748(v23 + v40 * v22, v18, type metadata accessor for EventTypeIdPair);
    v24 = *(a4[7] + 8 * v22);
    sub_23C64BB10(v18, v11, type metadata accessor for EventTypeIdPair);
    sub_23C8720F4();
    MEMORY[0x23EED79F0](*v11);
    sub_23C870B74();
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_23C8716F4();
    result = sub_23C872124();
    v25 = -1 << *(v14 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      a4 = v35;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v17 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    a4 = v35;
LABEL_26:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_23C64BB10(v11, *(v14 + 48) + v28 * v40, type metadata accessor for EventTypeIdPair);
    *(*(v14 + 56) + 8 * v28) = v24;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v39 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C648254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  result = sub_23C871E94();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 56) + 8 * v16);
    v18 = *(*(v4 + 48) + 8 * v16);
    result = sub_23C871B24();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    *(*(v9 + 56) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C648460(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v35 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v33 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  result = sub_23C871E94();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v34;
    v36 = *(v35 + 72);
    sub_23C600748(v21 + v36 * v20, v34, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v23 = *(a4[7] + 8 * v20);
    sub_23C64BB10(v22, v37, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C8720F4();
    sub_23C870B74();
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_23C8716F4();
    result = sub_23C872124();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      a4 = v33;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    a4 = v33;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_23C64BB10(v37, *(v13 + 48) + v27 * v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
    *(*(v13 + 56) + 8 * v27) = v23;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C6487D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
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
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1FB5C0, &unk_27E1FBD50, &unk_23C87BE40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
            v9 = sub_23C594EDC(v13, i, a3);
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
        type metadata accessor for TimestampedOrderedEvent();
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

uint64_t sub_23C648964(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
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
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1F9DE0, &qword_27E1F9DD8, &unk_23C87BEB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DD8, &unk_23C87BEB0);
            v9 = sub_23C595568(v13, i, a3);
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
        type metadata accessor for AnteroEvent(0);
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

uint64_t sub_23C648AF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
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
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&unk_27E1FBE00, &qword_27E1FBDF8, &qword_23C87BEC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF8, &qword_23C87BEC8);
            v9 = sub_23C5954E0(v13, i, a3);
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
        sub_23C870D74();
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

uint64_t sub_23C648C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
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
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1FBCE8, &qword_27E1FBCE0, &qword_23C87BDF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCE0, &qword_23C87BDF0);
            v9 = sub_23C595568(v13, i, a3);
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
        type metadata accessor for SiriTurn();
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

void sub_23C648EFC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EED7540](a1, a2, v7);
      sub_23C870E34();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23C870E34();
    if (sub_23C871C14() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23C871C24();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_23C871B24();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_23C871B34();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_23C64913C(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EED7610](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_23C64E050(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_23C871C34();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

unint64_t sub_23C649230(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  if (v5)
  {
    v6 = 0;
    v41 = v4 & 0xFFFFFFFFFFFFFF8;
    v42 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v37 = v4;
    v38 = v5;
    v40 = v4 + 32;
    while (1)
    {
      if (v42)
      {
        v8 = MEMORY[0x23EED7610](v6, v37);
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_48;
        }

        v8 = *(v40 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v5 = sub_23C871C34();
        goto LABEL_3;
      }

      v11 = *(a2 + 16);
      v12 = *(v11 + 16);

      if (v12 && (v13 = sub_23C5FFA08(v9), (v14 & 1) != 0))
      {
        v15 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v15 = MEMORY[0x277D84FA0];
      }

      v16 = v3;
      v17 = sub_23C631384(v15);

      v4 = v17 >> 62;
      v18 = v17 >> 62 ? sub_23C871C34() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v7 >> 62;
      if (v7 >> 62)
      {
        v35 = sub_23C871C34();
        v21 = v35 + v18;
        if (__OFADD__(v35, v18))
        {
LABEL_44:
          __break(1u);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v20 + v18;
        if (__OFADD__(v20, v18))
        {
          goto LABEL_44;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v19)
      {
        goto LABEL_25;
      }

      v22 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v21 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = v7;
        goto LABEL_27;
      }

LABEL_26:
      v45 = sub_23C871D34();
      v22 = v45 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v4)
      {
        v26 = v22;
        v27 = sub_23C871C34();
        v22 = v26;
        v25 = v27;
        if (!v27)
        {
LABEL_5:

          v7 = v45;
          if (v18 > 0)
          {
            goto LABEL_49;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_5;
        }
      }

      if (((v24 >> 1) - v23) < v18)
      {
        goto LABEL_50;
      }

      v28 = v22 + 8 * v23 + 32;
      v39 = v22;
      if (v4)
      {
        if (v25 < 1)
        {
          goto LABEL_52;
        }

        v4 = sub_23C5F8EB8(&unk_27E1FBDB0, &qword_27E1FBDA8, &unk_23C87BE80);
        for (i = 0; i != v25; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA8, &unk_23C87BE80);
          v30 = sub_23C595568(v44, i, v17);
          v32 = *v31;
          (v30)(v44, 0);
          *(v28 + 8 * i) = v32;
        }
      }

      else
      {
        v4 = v17 & 0xFFFFFFFFFFFFFF8;
        sub_23C870E34();
        swift_arrayInitWithCopy();
      }

      v3 = v16;
      v5 = v38;
      v7 = v45;
      if (v18 >= 1)
      {
        v33 = *(v39 + 16);
        v10 = __OFADD__(v33, v18);
        v34 = v33 + v18;
        if (v10)
        {
          goto LABEL_51;
        }

        *(v39 + 16) = v34;
      }

LABEL_6:
      if (v6 == v5)
      {
        return v7;
      }
    }

    if (!v19)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_23C871C34();
    goto LABEL_26;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6495EC(unint64_t a1, void *a2)
{
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v19 = a1;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v23 = a1 + 32;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = v3;
    v22 = a2;
    v20 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x23EED7610](v4, v19);
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v23 + 8 * v4);
      }

      v6 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v8 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {

        v9 = v6;
        v10 = sub_23C871C74();

        if (v10)
        {

          goto LABEL_6;
        }
      }

      else if (*(v8 + 16))
      {
        sub_23C870E34();

        v11 = sub_23C871B24();
        v12 = -1 << *(v8 + 32);
        v13 = v11 & ~v12;
        if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = *(*(v8 + 48) + 8 * v13);
            v16 = sub_23C871B34();

            if (v16)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v3 = v21;
          a2 = v22;
          v5 = v20;
          goto LABEL_6;
        }

LABEL_4:

        v3 = v21;
        a2 = v22;
        v5 = v20;
      }

      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      a1 = sub_23C871D64();
LABEL_6:
      if (v4 == v3)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v18 = a1;
    v3 = sub_23C871C34();
    a1 = v18;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C649848(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = sub_23C870DF4();
  if (v11 == sub_23C870DF4())
  {
    sub_23C870E24();
    sub_23C870E24();
    v12 = MEMORY[0x23EED6420](v10, v8);
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  else
  {
    v14 = sub_23C870DF4();
    v12 = v14 < sub_23C870DF4();
  }

  if (v12)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_23C6499B8(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v33 = v2 & 0xFFFFFFFFFFFFFF8;
    v34 = v2 & 0xC000000000000001;
    v30 = v2;
    v32 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        v6 = MEMORY[0x23EED7610](v4, v30);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_49;
        }

        v6 = *(v32 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        __break(1u);
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
        v3 = sub_23C871C34();
        goto LABEL_3;
      }

      v9 = *(a2 + 24);
      if (*(v9 + 16))
      {

        v10 = sub_23C5FFA08(v7);
        if (v11)
        {
          v12 = *(*(v9 + 56) + 8 * v10);

          goto LABEL_17;
        }
      }

      else
      {
      }

      v12 = MEMORY[0x277D84F90];
LABEL_17:
      v2 = v12 >> 62;
      if (v12 >> 62)
      {
        v13 = sub_23C871C34();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = sub_23C871C34();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_45:
          __break(1u);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_45;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v13;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v14)
        {
          v18 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        sub_23C871C34();
        goto LABEL_27;
      }

      if (v14)
      {
        goto LABEL_26;
      }

LABEL_27:
      v5 = sub_23C871D34();
      v18 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v2)
      {
        v21 = sub_23C871C34();
        if (!v21)
        {
LABEL_5:

          if (v37 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_5;
        }
      }

      if (((v20 >> 1) - v19) < v37)
      {
        goto LABEL_51;
      }

      v22 = v18 + 8 * v19 + 32;
      if (v2)
      {
        v2 = &unk_27E1FBD50;
        if (v21 < 1)
        {
          goto LABEL_53;
        }

        sub_23C5F8EB8(&qword_27E1FB5C0, &unk_27E1FBD50, &unk_23C87BE40);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v24 = sub_23C594EDC(v36, i, v12);
          v2 = *v25;

          (v24)(v36, 0);
          *(v22 + 8 * i) = v2;
        }
      }

      else
      {
        v2 = v12 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      v3 = v31;
      if (v37 >= 1)
      {
        v26 = *(v18 + 16);
        v8 = __OFADD__(v26, v37);
        v27 = v26 + v37;
        if (v8)
        {
          goto LABEL_52;
        }

        *(v18 + 16) = v27;
      }

LABEL_6:
      if (v4 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C649D60(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_23C64E414(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_23C649DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v39 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v37 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = &qword_27E1F9DD8;
  while (1)
  {
    v8 = *(a2 + 24);
    if (*(v8 + 16))
    {
      v9 = (v37 + 32 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = *v9;
      v13 = v9[1];

      v14 = sub_23C5FFB88(v12, v13, v10, v11);
      v15 = MEMORY[0x277D84F90];
      if (v16)
      {
        v15 = *(*(v8 + 56) + 8 * v14);
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17 = v15 >> 62;
    if (v15 >> 62)
    {
      v18 = sub_23C871C34();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v5 >> 62;
    if (v5 >> 62)
    {
      v36 = sub_23C871C34();
      v21 = v36 + v18;
      if (__OFADD__(v36, v18))
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 + v18;
      if (__OFADD__(v20, v18))
      {
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v19)
      {
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_23C871C34();
      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_23C871D34();
    v5 = result;
    v22 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v17)
    {
      break;
    }

    v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (((v24 >> 1) - v23) < v18)
    {
      goto LABEL_41;
    }

    v41 = v5;
    v43 = v4;
    v27 = v22 + 8 * v23 + 32;
    v38 = v22;
    if (v17)
    {
      if (v25 < 1)
      {
        goto LABEL_43;
      }

      sub_23C5F8EB8(&qword_27E1F9DE0, v6, &unk_23C87BEB0);
      for (i = 0; i != v25; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v6, &unk_23C87BEB0);
        v29 = v6;
        v30 = sub_23C595568(v42, i, v15);
        v32 = *v31;
        (v30)(v42, 0);
        v6 = v29;
        *(v27 + 8 * i) = v32;
      }
    }

    else
    {
      type metadata accessor for AnteroEvent(0);
      swift_arrayInitWithCopy();
    }

    v5 = v41;
    v4 = v43;
    if (v18 >= 1)
    {
      v33 = *(v38 + 16);
      v34 = __OFADD__(v33, v18);
      v35 = v33 + v18;
      if (v34)
      {
        goto LABEL_42;
      }

      *(v38 + 16) = v35;
    }

LABEL_4:
    if (++v4 == v39)
    {
      return v5;
    }
  }

  v26 = v22;
  result = sub_23C871C34();
  v22 = v26;
  v25 = result;
  if (result)
  {
    goto LABEL_25;
  }

LABEL_3:

  if (v18 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_23C64A144(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v36 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8);
  v34 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v33 = *(v5 + 72);
  v7 = &qword_27E1FBCE0;
  while (1)
  {
    v9 = *(a2 + 24);
    if (*(v9 + 16))
    {

      v10 = sub_23C5FFCB8(v34 + v33 * v4);
      v11 = MEMORY[0x277D84F90];
      if (v12)
      {
        v11 = *(*(v9 + 56) + 8 * v10);
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v13 = v11 >> 62;
    if (v11 >> 62)
    {
      v14 = sub_23C871C34();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v6 >> 62;
    if (v6 >> 62)
    {
      v32 = sub_23C871C34();
      v17 = v32 + v14;
      if (__OFADD__(v32, v14))
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v15)
      {
        v18 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_23C871C34();
      goto LABEL_20;
    }

    if (v15)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_23C871D34();
    v6 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      v22 = v18;
      result = sub_23C871C34();
      v18 = v22;
      v21 = result;
    }

    else
    {
      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v21)
    {
      break;
    }

    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_41;
    }

    v38 = v6;
    v40 = v4;
    v23 = v18 + 8 * v19 + 32;
    v35 = v18;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_43;
      }

      sub_23C5F8EB8(&qword_27E1FBCE8, v7, &qword_23C87BDF0);
      for (i = 0; i != v21; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, &qword_23C87BDF0);
        v25 = v7;
        v26 = sub_23C595568(v39, i, v11);
        v28 = *v27;
        (v26)(v39, 0);
        v7 = v25;
        *(v23 + 8 * i) = v28;
      }
    }

    else
    {
      type metadata accessor for SiriTurn();
      swift_arrayInitWithCopy();
    }

    v6 = v38;
    v4 = v40;
    if (v14 >= 1)
    {
      v29 = *(v35 + 16);
      v30 = __OFADD__(v29, v14);
      v31 = v29 + v14;
      if (v30)
      {
        goto LABEL_42;
      }

      *(v35 + 16) = v31;
    }

LABEL_4:
    if (++v4 == v36)
    {
      return v6;
    }
  }

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_23C64A4C4(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);

      sub_23C64E564(&v9, v7, v6, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_23C64A568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v16 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_23C600748(v12, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64EAC8(v10, v7);
      sub_23C64BB78(v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v16;
  }

  return a2;
}

uint64_t sub_23C64A6B4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v32 = result + 32;
    v4 = MEMORY[0x277D84F90];
    v31 = *(result + 16);
    while (1)
    {
      v34 = v4;
      while (2)
      {
        if (v3 >= v2)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_34;
        }

        v5 = (v32 + 32 * v3);
        v6 = v5[1];
        v7 = v5[2];
        v36 = ++v3;
        v8 = v7;
        v9 = *v5;
        v38 = v5[3];
        if (*(*a2 + 16))
        {
          v37 = *a2;
          sub_23C8720F4();

          sub_23C871804();
          sub_23C871804();
          v10 = sub_23C872124();
          v11 = -1 << *(v37 + 32);
          v12 = v10 & ~v11;
          if ((*(v37 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
          {
            v35 = v3;
            v13 = ~v11;
            v14 = *(v37 + 48);
            v15 = v7;
            v16 = v9;
            v17 = v38;
            while (1)
            {
              v18 = (v14 + 32 * v12);
              v20 = v18[2];
              v19 = v18[3];
              v21 = *v18 == v16 && v18[1] == v6;
              if (v21 || (v22 = sub_23C872014(), v17 = v38, v16 = v9, v15 = v8, (v22 & 1) != 0))
              {
                if (v20 == v15 && v19 == v17)
                {
                  break;
                }

                v24 = sub_23C872014();
                v17 = v38;
                v16 = v9;
                v15 = v8;
                if (v24)
                {
                  break;
                }
              }

              v12 = (v12 + 1) & v13;
              if (((*(v37 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
              {

                v2 = v31;
                v4 = v34;
                v3 = v35;
                goto LABEL_23;
              }
            }

            v2 = v31;
            v3 = v35;
            v4 = v34;
            if (v36 != v31)
            {
              continue;
            }

            return v4;
          }

          v4 = v34;
        }

        else
        {
        }

        break;
      }

LABEL_23:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C592C24(0, *(v4 + 16) + 1, 1);
      }

      v25 = v8;
      v26 = v9;
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      v29 = v38;
      if (v28 >= v27 >> 1)
      {
        result = sub_23C592C24((v27 > 1), v28 + 1, 1);
        v29 = v38;
        v26 = v9;
        v25 = v8;
      }

      *(v4 + 16) = v28 + 1;
      v30 = (v4 + 32 * v28);
      v30[4] = v26;
      v30[5] = v6;
      v30[6] = v25;
      v30[7] = v29;
      if (v36 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C64A99C(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  v30 = *(a1 + 16);
  if (v30)
  {
    v13 = 0;
    v14 = *(v10 + 72);
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = a1 + v28;
    v15 = MEMORY[0x277D84F90];
    v27 = v6;
    while (1)
    {
      sub_23C600748(v29 + v14 * v13, v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v16 = *v31;
      if (*(*v31 + 16))
      {
        v32 = v15;
        sub_23C8720F4();
        sub_23C870B74();
        sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        sub_23C8716F4();
        v17 = sub_23C872124();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            sub_23C600748(*(v16 + 48) + v19 * v14, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v21 = sub_23C870B44();
            sub_23C64BB78(v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
            if (v21)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          sub_23C64BB78(v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v6 = v27;
          v15 = v32;
          goto LABEL_4;
        }

LABEL_10:

        v6 = v27;
        v15 = v32;
      }

      sub_23C64BB10(v12, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C592CC8(0, *(v15 + 16) + 1, 1);
        v15 = v33;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_23C592CC8((v23 > 1), v24 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v24 + 1;
      sub_23C64BB10(v6, v15 + v28 + v24 * v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
LABEL_4:
      if (++v13 == v30)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t *sub_23C64AD24(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, double))
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 32 * v13);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = *(*(a3 + 56) + 8 * v13);
    v26[0] = *v14;
    v26[1] = v15;
    v26[2] = v16;
    v26[3] = v17;

    v19 = a4(v26, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_23C647694(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_23C647694(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_23C64AEAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *, double))
{
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 56) + 8 * v14);
    v23 = *(*(a3 + 48) + 8 * v14);
    v16 = v23;
    v17 = a4(&v23, v15);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_23C648254(a1, a2, v21, a3);
        return;
      }
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
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_23C64B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_23C6475F4(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x23EED8240](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

id sub_23C64B1A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner] = 0;
  *&v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_upstream] = a1;
  v5 = &v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag];
  *v5 = a2;
  *(v5 + 1) = a3;
  v6 = qword_27E1F8338;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_23C871654();
  __swift_project_value_buffer(v8, qword_27E1FBBE0);
  v9 = sub_23C871634();
  v10 = sub_23C871AC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23C56D000, v9, v10, "SiriConversationPublisher constructed", v11, 2u);
    MEMORY[0x23EED8240](v11, -1, -1);
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SiriConversationPublisher();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_23C64B2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C64B32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23C64B39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v5 = type metadata accessor for CoreAnalyticsTracker(0);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23C870AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v35 = &v30 - v14;
  v33 = *(v6 + 56);
  v34 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  v36 = v6 + 56;
  v33(&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker], 1, 1, v5);
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount] = 0;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp] = 0;
  v15 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBD20, &qword_23C87BE08);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v16[2] = sub_23C598E80(MEMORY[0x277D84F90]);
  v16[3] = sub_23C599064(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBD28, &unk_23C87BE10);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_23C599454(v17);
  v16[4] = v18;
  v19 = sub_23C599264(v17);
  *&v4[v15] = v16;
  v16[5] = v19;
  v16[6] = 0;
  v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished] = 0;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationWindowLength] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream] = v30;
  swift_unknownObjectRetain();
  sub_23C870AD4();
  *&v8[v5[7]] = 0;
  *v8 = 2;
  *(v8 + 1) = 0xD00000000000001BLL;
  *(v8 + 2) = 0x800000023C8A72D0;
  (*(v10 + 16))(&v8[v5[6]], v12, v9);
  v20 = &v8[v5[8]];
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  v22 = sub_23C871654();
  __swift_project_value_buffer(v22, qword_27E1FB2F8);
  v23 = sub_23C871634();
  v24 = sub_23C871AC4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = 2;
    _os_log_impl(&dword_23C56D000, v23, v24, "tracker starting for %ld", v25, 0xCu);
    MEMORY[0x23EED8240](v25, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v26 = v35;
  sub_23C64BB10(v8, v35, type metadata accessor for CoreAnalyticsTracker);
  v33(v26, 0, 1, v5);
  v27 = v34;
  swift_beginAccess();
  sub_23C5A7B70(v26, &v4[v27]);
  swift_endAccess();
  v28 = type metadata accessor for SiriConversationPublisher.SiriConversationSubscriber(0);
  v37.receiver = v4;
  v37.super_class = v28;
  return objc_msgSendSuper2(&v37, sel_init);
}

unint64_t sub_23C64B80C(unint64_t result)
{
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_23C871C34();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x23EED7610](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(result + 32);
  }

  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for SiriConversationPublisher());
  sub_23C64B1A0(v2, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD30, &unk_23C87BE20);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C64B910(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double))
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_23C600748(*(a3 + 48) + *(v24 + 72) * v17, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v18 = v25(v8, *(*(a3 + 56) + 8 * v17));
    result = sub_23C64BB78(v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (v18)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_23C648460(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_23C648460(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C64BB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C64BB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriIdentifiers.userEphemeralId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriIdentifiers.homeEphemeralId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriIdentifiers.siriDeviceId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SiriIdentifiers.siriSpeechId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SiriIdentifiers.siriUserId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SiriIdentifiers.turnId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void SiriIdentifiers.init(graph:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v112 = a2;
  v113 = a1;
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v116 = &v96 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v96 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  v17 = sub_23C5A3FDC(0, &qword_27E1FBE70, 0x277D57050);
  v18 = sub_23C600CA0();
  v19 = *(v18 + 16);
  v98 = v10;
  if (v19 && (v20 = sub_23C5FF958(v17), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v23 = sub_23C601CF4(v22);

  if (v23 >> 62)
  {
    v24 = sub_23C871C34();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v113;
  v26 = v113;
  if (!v24)
  {

    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v29 = 0;
    v33 = 1;
    goto LABEL_25;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x23EED7610](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v27 = *(v23 + 32);
  }

  v28 = v27;

  v29 = v28;
  v30 = sub_23C870D44();

  if (!v30)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v33 = 1;
    v25 = v26;
    goto LABEL_25;
  }

  v31 = [v30 userEphemeralId];
  v25 = v26;
  if (!v31)
  {
    goto LABEL_15;
  }

  v32 = v31;
  sub_23C871AB4();

  if ((*(v3 + 48))(v16, 1, v2) == 1)
  {
    sub_23C585C34(v16, &qword_27E1F92A0, &qword_23C8734E0);
LABEL_15:
    v110 = 0;
    v111 = 0;
    goto LABEL_19;
  }

  v110 = sub_23C870B04();
  v111 = v34;
  (*(v3 + 8))(v16, v2);
LABEL_19:
  v35 = [v30 homeEphemeralId];
  if (v35)
  {
    v36 = v35;
    sub_23C871AB4();

    if ((*(v3 + 48))(v14, 1, v2) != 1)
    {
      v108 = sub_23C870B04();
      v109 = v37;
      (*(v3 + 8))(v14, v2);
      goto LABEL_24;
    }

    sub_23C585C34(v14, &qword_27E1F92A0, &qword_23C8734E0);
  }

  v108 = 0;
  v109 = 0;
LABEL_24:
  v107 = [v30 secondsSinceEphemeralIdCreation];

  v33 = 0;
LABEL_25:
  v121 = v33;
  v38 = sub_23C5A3FDC(0, &qword_27E1FBE78, 0x277D57080);
  v39 = sub_23C600CA0();
  v40 = MEMORY[0x277D84F90];
  if (*(v39 + 16))
  {
    v41 = sub_23C5FF958(v38);
    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v41);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v44 = sub_23C601CF4(v43);

  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_48:

    v100 = 0;
    v99 = 0;
    v102 = 0;
    v101 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    goto LABEL_49;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((v44 & 0xC000000000000001) == 0)
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v44 + 32);
      goto LABEL_35;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v45 = MEMORY[0x23EED7610](0, v44);
LABEL_35:
  v46 = v45;

  v47 = v46;
  v48 = sub_23C870D44();
  v105 = v47;

  if (v48)
  {
    v49 = [v48 siriDeviceId];
    v25 = v26;
    if (v49)
    {
      v50 = v49;
      v103 = sub_23C871784();
      v104 = v51;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    v52 = [v48 siriSpeechId];
    if (v52)
    {
      v53 = v52;
      v101 = sub_23C871784();
      v102 = v54;
    }

    else
    {
      v102 = 0;
      v101 = 0;
    }

    v55 = [v48 siriUserId];
    if (v55)
    {
      v56 = v55;
      v99 = sub_23C871784();
      v100 = v57;
    }

    else
    {

      v100 = 0;
      v99 = 0;
    }
  }

  else
  {
    v100 = 0;
    v99 = 0;
    v102 = 0;
    v101 = 0;
    v103 = 0;
    v104 = 0;
    v25 = v26;
  }

LABEL_49:
  v58 = sub_23C601E20();
  v59 = v58;
  if (v58 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v117 = v2;
    v118 = v3;
    v97 = v6;
    v106 = v29;
    if (!i)
    {
      break;
    }

    v119 = v40;
    sub_23C592B60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_81;
    }

    v29 = 0;
    v40 = v119;
    v114 = v59 & 0xFFFFFFFFFFFFFF8;
    v115 = v59 & 0xC000000000000001;
    v3 += 32;
    while (1)
    {
      v61 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v115)
      {
        v62 = MEMORY[0x23EED7610](v29, v59);
      }

      else
      {
        if (v29 >= *(v114 + 16))
        {
          goto LABEL_76;
        }

        v62 = *(v59 + 8 * v29 + 32);
      }

      v63 = v62;
      v64 = sub_23C870CF4();
      if (!v64)
      {
        goto LABEL_83;
      }

      v65 = v64;
      v6 = v116;
      sub_23C870D94();

      v119 = v40;
      v67 = *(v40 + 16);
      v66 = *(v40 + 24);
      v25 = (v67 + 1);
      if (v67 >= v66 >> 1)
      {
        sub_23C592B60((v66 > 1), v67 + 1, 1);
        v40 = v119;
      }

      *(v40 + 16) = v25;
      v68 = v40 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v67;
      v2 = v117;
      (*(v118 + 32))(v68, v6, v117);
      ++v29;
      if (v61 == i)
      {

        v3 = v118;
        v25 = v113;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

LABEL_65:
  v120 = MEMORY[0x277D84FA0];
  v69 = *(v40 + 16);
  if (v69)
  {
    v72 = *(v3 + 16);
    v70 = v3 + 16;
    v71 = v72;
    v73 = v40 + ((*(v70 + 64) + 32) & ~*(v70 + 64));
    v74 = *(v70 + 56);
    v75 = v98;
    do
    {
      v71(v75, v73, v2);
      v76 = sub_23C870B04();
      sub_23C64E414(&v119, v76, v77);

      (*(v70 - 8))(v75, v2);
      v73 += v74;
      --v69;
    }

    while (v69);

    v3 = v118;
    v25 = v113;
  }

  else
  {
  }

  v78 = v120;
  v79 = objc_allocWithZone(type metadata accessor for SiriTurn());
  v80 = v25;
  v81 = SiriTurn.init(eventGraph:)(v80);
  v82 = v106;
  if (!v81)
  {

    v88 = 0;
    v86 = 0;
    goto LABEL_74;
  }

  v83 = v81;
  if (EventGraph.uei.getter())
  {
    v84 = sub_23C62FC3C();

    v85 = v97;
    sub_23C870E24();

    v86 = sub_23C870B04();
    v88 = v87;

    (*(v3 + 8))(v85, v117);
LABEL_74:
    v89 = v121;
    v90 = v112;
    v91 = v111;
    *v112 = v110;
    v90[1] = v91;
    v92 = v109;
    v90[2] = v108;
    v90[3] = v92;
    v90[4] = v107;
    *(v90 + 40) = v89;
    v93 = v104;
    v90[6] = v103;
    v90[7] = v93;
    v94 = v102;
    v90[8] = v101;
    v90[9] = v94;
    v95 = v100;
    v90[10] = v99;
    v90[11] = v95;
    v90[12] = v86;
    v90[13] = v88;
    v90[14] = v78;
    return;
  }

LABEL_84:
  __break(1u);
}

uint64_t SiriIdentifiers.dictioaryRepresentation()()
{
  v1 = v0[1];
  v32 = *v0;
  v33 = v0[2];
  v2 = v0[4];
  v38 = *(v0 + 40);
  v3 = v0[7];
  v4 = v0[9];
  v36 = v0[8];
  v37 = v0[3];
  v5 = v0[11];
  v34 = v0[6];
  v35 = v0[10];
  v6 = v0[13];
  v31 = v0[12];
  v7 = v0[14];
  v8 = *(v7 + 16);
  if (v8)
  {
    v30 = v0[9];
    v9 = sub_23C64D3E4(v8, 0, &qword_27E1F94F8, &unk_23C87C000);
    v10 = sub_23C653340(&v40, v9 + 4, v8, v7);
    v11 = v40;

    result = sub_23C56EF08(v11);
    if (v10 != v8)
    {
      __break(1u);
      return result;
    }

    v4 = v30;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  *&v40 = v9;
  sub_23C59A4B0(&v40, v39);
  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23C594D8C(v39, 0x436C616369676F6CLL, 0xEF7364496B636F6CLL, isUniquelyReferenced_nonNull_native);
  v42 = v13;
  v15 = MEMORY[0x277D837D0];
  if (v6)
  {
    v41 = MEMORY[0x277D837D0];
    *&v40 = v31;
    *(&v40 + 1) = v6;
    sub_23C59A4B0(&v40, v39);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x64496E727574, 0xE600000000000000, v16);
    v42 = v13;
  }

  else
  {
    sub_23C64DD90(0x64496E727574, 0xE600000000000000, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v1)
  {
    v41 = v15;
    *&v40 = v32;
    *(&v40 + 1) = v1;
    sub_23C59A4B0(&v40, v39);

    v17 = v42;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x6568704572657375, 0xEF64496C6172656DLL, v18);
    v42 = v17;
  }

  else
  {
    sub_23C64DD90(0x6568704572657375, 0xEF64496C6172656DLL, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v37)
  {
    v41 = v15;
    *&v40 = v33;
    *(&v40 + 1) = v37;
    sub_23C59A4B0(&v40, v39);

    v19 = v42;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x65687045656D6F68, 0xEF64496C6172656DLL, v20);
    v42 = v19;
  }

  else
  {
    sub_23C64DD90(0x65687045656D6F68, 0xEF64496C6172656DLL, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v38)
  {
    sub_23C64DD90(0xD00000000000001FLL, 0x800000023C8AA5D0, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  else
  {
    v41 = MEMORY[0x277D84D38];
    *&v40 = v2;
    sub_23C59A4B0(&v40, v39);
    v21 = v42;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0xD00000000000001FLL, 0x800000023C8AA5D0, v22);
    v42 = v21;
  }

  if (v3)
  {
    v41 = v15;
    *&v40 = v34;
    *(&v40 + 1) = v3;
    sub_23C59A4B0(&v40, v39);

    v23 = v42;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x6976654469726973, 0xEC00000064496563, v24);
    v42 = v23;
  }

  else
  {
    sub_23C64DD90(0x6976654469726973, 0xEC00000064496563, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v5)
  {
    v41 = v15;
    *&v40 = v35;
    *(&v40 + 1) = v5;
    sub_23C59A4B0(&v40, v39);

    v25 = v42;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x7265735569726973, 0xEA00000000006449, v26);
    v42 = v25;
  }

  else
  {
    sub_23C64DD90(0x7265735569726973, 0xEA00000000006449, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v4)
  {
    v41 = v15;
    *&v40 = v36;
    *(&v40 + 1) = v4;
    sub_23C59A4B0(&v40, v39);

    v27 = v42;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v39, 0x6565705369726973, 0xEC00000064496863, v28);
  }

  else
  {
    sub_23C64DD90(0x6565705369726973, 0xEC00000064496863, &v40);
    sub_23C585C34(&v40, &qword_27E1FBE80, &qword_23C87BF20);
    v27 = v42;
  }

  v29 = sub_23C64CDCC(v27);

  return v29;
}

uint64_t sub_23C64CDCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
    v2 = sub_23C871E94();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23C588DC0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23C59A4B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23C59A4B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23C59A4B0(v31, v32);
    result = sub_23C871C94();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23C59A4B0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::String __swiftcall SiriIdentifiers.print()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v28 = *(v0 + 40);
  v4 = *(v0 + 56);
  v31 = *(v0 + 64);
  v26 = *(v0 + 72);
  v27 = *(v0 + 16);
  v5 = *(v0 + 88);
  v29 = *(v0 + 48);
  v30 = *(v0 + 80);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);

  sub_23C871D14();
  MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AA5F0);
  v8 = sub_23C8719E4();
  MEMORY[0x23EED7100](v8);

  MEMORY[0x23EED7100](0x2064496E7275740ALL, 0xEA0000000000203DLL);
  v9 = 63;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = 63;
  }

  if (!v6)
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v10, v6);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AA610);
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = 63;
  }

  if (v1)
  {
    v12 = v1;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v11, v12);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AA630);
  if (v3)
  {
    v13 = v27;
  }

  else
  {
    v13 = 63;
  }

  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v13, v14);

  MEMORY[0x23EED7100](0xD000000000000023, 0x800000023C8AA650);
  v15 = 0xE100000000000000;
  if ((v28 & 1) == 0)
  {
    sub_23C653498();
    v9 = sub_23C871B94();
    v15 = v16;
  }

  MEMORY[0x23EED7100](v9, v15);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AA680);
  if (v4)
  {
    v17 = v29;
  }

  else
  {
    v17 = 63;
  }

  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v18 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v17, v18);

  MEMORY[0x23EED7100](0x657355697269730ALL, 0xEE00203D20644972);
  if (v5)
  {
    v19 = v30;
  }

  else
  {
    v19 = 63;
  }

  if (v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v19, v20);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AA6A0);
  if (v26)
  {
    v21 = v31;
  }

  else
  {
    v21 = 63;
  }

  if (v26)
  {
    v22 = v26;
  }

  else
  {
    v22 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v21, v22);

  v23 = 0;
  v24 = 0xE000000000000000;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

void *sub_23C64D3E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_23C64D460(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA8, &unk_23C874C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_23C64D4F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B10, &unk_23C874B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23C64D5C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
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

void *sub_23C64D674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C64D774(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23C5FFA08(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C642FE0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_23C6413F0(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_23C64D81C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_23C5FFA08(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_23C6413F0(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_23C64313C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_23C871E14();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_23C871C34();
  v8 = sub_23C64DE34(v4, v7);

  v9 = sub_23C5FFA08(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_23C6413F0(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_23C64D968(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23C5FFA08(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C64329C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_23C64157C(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_23C64D9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C643E14();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 32 * v8);
  sub_23C641BC4(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_23C64DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C643FB4();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_23C641D9C(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_23C64DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C64412C();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_23C641F74(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_23C64DC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23C5FFCB8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C644D60();
      v9 = v20;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v19 = *(v11 - 8);
    v12 = *(v19 + 72) * v7;
    sub_23C6535CC(v10 + v12);
    sub_23C653628(*(v9 + 56) + v12, a2);
    sub_23C642290(v7, v9);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_23C64DD90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_23C5FF898(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C645214();
      v10 = v12;
    }

    sub_23C59A4B0((*(v10 + 56) + 32 * v8), a3);
    sub_23C64257C(v8, v10);
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

uint64_t sub_23C64DE34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
    v2 = sub_23C871E84();
    v19 = v2;
    sub_23C871DF4();
    v3 = sub_23C871E24();
    if (v3)
    {
      v4 = v3;
      sub_23C870E34();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_23C63CEF0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_23C871B24();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_23C871E24();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23C64E07C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_23C8716E4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23C600704(&qword_27E1FB418, MEMORY[0x277CC9610]);
      v21 = sub_23C871754();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23C65018C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23C64E334(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_23C8720E4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23C650408(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23C64E414(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23C8720F4();
  sub_23C871804();
  v8 = sub_23C872124();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23C872014() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23C65053C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23C64E564(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  v11 = sub_23C872124();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_23C872014() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_23C872014() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_23C6506BC(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_23C64E73C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](a2);
  v6 = sub_23C872124();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_23C650888(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23C64E864(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_23C871C44();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_23C871C34();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_23C64ED24(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_23C64FBD0(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_23C650108(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_23C871B24();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_23C871B34();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_23C6509E8(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23C64EAC8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v23 = v2;
  v11 = *v2;
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  sub_23C8716F4();
  v12 = sub_23C872124();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_23C600748(*(v11 + 48) + v16 * v14, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = sub_23C870B44();
      sub_23C6535CC(v8);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23C6535CC(a2);
    sub_23C600748(*(v11 + 48) + v16 * v14, v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23C600748(a2, v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v25 = *v18;
    sub_23C650B6C(v10, v14, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v18 = v25;
    sub_23C653628(a2, v20);
    return 1;
  }
}

uint64_t sub_23C64ED24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_23C871CE4();
    v21 = v8;
    sub_23C871BF4();
    if (sub_23C871C64())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_23C64FBD0(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_23C871B24();
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

      while (sub_23C871C64());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_23C64EF30(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23C870B74();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  result = sub_23C871CD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
      result = sub_23C8716E4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23C64F278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_23C8720E4();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23C64F49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  result = sub_23C871CD4();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23C64F6FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  result = sub_23C871CD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
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
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23C64F980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEB8, &qword_23C87C018);
  result = sub_23C871CD4();
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
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v17);
      result = sub_23C872124();
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

uint64_t sub_23C64FBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23C871CD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_23C871B24();
      v20 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_23C64FDF0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  result = sub_23C871CD4();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
      sub_23C653628(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
      sub_23C8716F4();
      result = sub_23C872124();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_23C653628(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_23C650108(uint64_t a1, uint64_t a2)
{
  sub_23C871B24();
  result = sub_23C871BD4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23C65018C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23C870B74();
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
    sub_23C64EF30(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23C650DBC();
      goto LABEL_12;
    }

    sub_23C651738(v10 + 1);
  }

  v12 = *v3;
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  v13 = sub_23C8716E4();
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
      sub_23C600704(&qword_27E1FB418, MEMORY[0x277CC9610]);
      v21 = sub_23C871754();
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
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C650408(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23C64F278(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23C6512D0(&qword_27E1FBEC0, &qword_23C87C020);
      a2 = v7;
      goto LABEL_12;
    }

    sub_23C651A40(v5 + 1);
  }

  v8 = *v3;
  result = sub_23C8720E4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C65053C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23C64F49C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23C651008();
      goto LABEL_16;
    }

    sub_23C651C30(v8 + 1);
  }

  v10 = *v4;
  sub_23C8720F4();
  sub_23C871804();
  result = sub_23C872124();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23C872014();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C6506BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_23C64F6FC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_23C651164();
      goto LABEL_22;
    }

    sub_23C651E68(v12 + 1);
  }

  v14 = *v6;
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  result = sub_23C872124();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_23C872014(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_23C872014();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_23C872054();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}