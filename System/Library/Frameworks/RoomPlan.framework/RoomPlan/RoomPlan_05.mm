void sub_23A90DD94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
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

void sub_23A90DEE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
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

void sub_23A90E0A4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_23AA0C0E4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_23AA0DA14();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
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

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_23A90E31C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v22 = 32 * v17;
        sub_23A9100C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23A8EF9F0(v25, (*(v4 + 56) + v22));
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

void sub_23A90E4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF8, &qword_23AA128E8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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
}

void sub_23A90E648()
{
  v1 = v0;
  v35 = sub_23AA0C0E4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF0, &qword_23AA128E0);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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
}

void sub_23A90E8E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
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

void sub_23A90EA34()
{
  v1 = v0;
  v32 = sub_23AA0BFB4();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC8, &qword_23AA128C0);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v30 = v34 + 16;
    v28 = v3 + 64;
    for (i = v34 + 32; v12; v25[1] = v26)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v34;
      v19 = *(v34 + 72) * v17;
      v20 = v31;
      v21 = v32;
      (*(v34 + 16))(v31, *(v3 + 48) + v19, v32);
      v17 *= 32;
      v22 = (*(v3 + 56) + v17);
      v23 = *v22;
      v35 = v22[1];
      v36 = v23;
      v24 = v33;
      (*(v18 + 32))(*(v33 + 48) + v19, v20, v21);
      v25 = (*(v24 + 56) + v17);
      v26 = v35;
      *v25 = v36;
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
        v5 = v33;
        goto LABEL_18;
      }

      v16 = *(v28 + 8 * v8);
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
}

void sub_23A90ECB4()
{
  v1 = v0;
  v35 = sub_23AA0C0E4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
}

void sub_23A90EF34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

void sub_23A90F094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF90, &qword_23AA12898);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

void sub_23A90F214(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
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

void sub_23A90F36C()
{
  v1 = v0;
  v31 = sub_23AA0C0E4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF50, &qword_23AA12858);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void sub_23A90F618(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_23AA0C0E4();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_23AA0DA14();
  v13 = v12;
  if (*(v11 + 16))
  {
    v14 = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || v14 >= &v15[8 * v16])
    {
      memmove(v14, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_23A910120(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        sub_23A910188(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }
}

void sub_23A90F96C()
{
  v1 = v0;
  v33 = sub_23AA0C0E4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
  v3 = *v0;
  v4 = sub_23AA0DA14();
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
        swift_unknownObjectRetain();
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

void sub_23A90FBEC()
{
  v1 = v0;
  v29 = sub_23AA0BFB4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0A0, &qword_23AA12948);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v25 = v3 + 64;
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
    v26 = v31 + 32;
    v27 = v31 + 16;
    while (v12)
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
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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
}

void sub_23A90FE5C()
{
  v1 = v0;
  v29 = sub_23AA0BFB4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF098, &qword_23AA12940);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
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
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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
}

uint64_t sub_23A9100C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A910120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A910188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9101F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF008, &qword_23AA128F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A910260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23A9102A8(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v17 = a1[2];
  v18 = v3;
  v19 = *(a1 + 8);
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  sub_23AA0DD54();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = 0; v7; v9 ^= v13)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_23A910674(*(a2 + 48) + 40 * (v12 | (v11 << 6)), v14);
    sub_23A9106D0();
    v13 = sub_23AA0D054();
    sub_23A910724(v14);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      MEMORY[0x23EE907C0](v9);
      return;
    }

    v7 = *(a2 + 56 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_23A910618(uint64_t a1)
{
  v2 = type metadata accessor for AnimationGraph(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A9106D0()
{
  result = qword_27DFAF0A8;
  if (!qword_27DFAF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF0A8);
  }

  return result;
}

void sub_23A910780(float a1)
{
  v5 = v1;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v3 = sub_23A975C9C(v3);
    goto LABEL_7;
  }

  v33 = *(v6 + 64);
  v34 = *(v6 + 32);
  v31 = *(v6 + 128);
  v32 = *(v6 + 96);
  *&v8 = sub_23A9E7734(*&v34, *(v6 + 64), *&v32, *(v6 + 128), 0.0);
  v37 = v8;
  *v9.f32 = sub_23A9E7804(*&v34, *&v33, *&v32, *&v31, 0.0);
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v13 = vmuls_lane_f32(a1, v12, 2);
  v14 = vmul_n_f32(*v12.f32, a1);
  *&v33 = vsub_f32(*&v37, v14);
  v12.i64[0] = v33;
  v12.f32[2] = *(&v37 + 2) - v13;
  v12.i32[3] = 0;
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF110, &unk_23AA12A90);
  v1 = swift_allocObject();
  *&v15 = vadd_f32(*&v33, vmul_f32(v14, vdup_n_s32(0xBA83126F)));
  *(&v15 + 2) = (*(&v37 + 2) - v13) + (v13 * -0.001);
  HIDWORD(v15) = 0;
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 32) = v15;
  *(v1 + 48) = 0;
  LODWORD(v15) = *(v5 + 40);
  *(v1 + 64) = v36;
  *(v1 + 80) = v15;
  __asm { FMOV            V2.2S, #0.25 }

  *&v21 = vadd_f32(*&v37, vmul_f32(v14, _D2));
  *(&v21 + 2) = *(&v37 + 2) + (v13 * 0.25);
  HIDWORD(v21) = 0;
  *(v1 + 96) = v21;
  *(v1 + 112) = v15;
  *(v1 + 128) = v21;
  *(v1 + 144) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23AA11C10;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 32) = _D0;
  *(v2 + 40) = _D0;
  v3 = *(v5 + 32);
  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_12;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v24 = 0;
  v25 = *(v3 + 2);
  do
  {
    if (v24 >= v25)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v26 = &v3[2 * v24];
    v27 = *(v26 + 16) + 4;
    if ((v27 & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    ++v24;
    *(v26 + 16) = v27;
  }

  while (v4 != v24);
  *(v5 + 32) = v3;
LABEL_12:

  sub_23A9126A8(v28);
  *(v5 + 16) = v1;

  sub_23A9125BC(v29);
  *(v5 + 32) = &unk_284D7FD18;

  swift_beginAccess();

  sub_23A9124D0(v30);
  *(v5 + 24) = v2;
}

void sub_23A910A78(float a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4 < 4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = (v3 + 32 * v4);
  v34 = *v5[-8].f32;
  v36 = *v5[-12].f32;
  v32 = *v5->f32;
  v33 = *v5[-4].f32;
  *&v6 = sub_23A9E7734(*&v36, v5[-8], *&v33, *v5, 1.0);
  v38 = v6;
  *v7.f32 = sub_23A9E7804(*&v36, *&v34, *&v33, *&v32, 1.0);
  v8 = vmulq_f32(v7, v7);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = vmuls_lane_f32(a1, v10, 2);
  v12 = vmul_n_f32(*v10.f32, a1);
  *v10.f32 = vadd_f32(*&v38, vmul_f32(v12, vdup_n_s32(0x3F7FBE77u)));
  *&v36 = v10.i64[0];
  v10.f32[2] = *(&v38 + 2) + (v11 * 0.999);
  v10.i32[3] = 0;
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF110, &unk_23AA12A90);
  v13 = swift_allocObject();
  __asm { FMOV            V1.2S, #-0.25 }

  *&v19 = vadd_f32(*&v38, vmul_f32(v12, _D1));
  *(&v19 + 2) = *(&v38 + 2) + (v11 * -0.25);
  HIDWORD(v19) = 0;
  v20 = *(v2 + 40);
  *(v13 + 16) = xmmword_23AA11C20;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  *(v13 + 64) = v19;
  *(v13 + 80) = v20;
  *(v13 + 96) = v35;
  *(v13 + 112) = v20;
  *&v21 = vadd_f32(vmul_f32(v12, vdup_n_s32(0x3C23D70Au)), *&v36);
  *(&v21 + 2) = (v11 * 0.01) + (*(&v38 + 2) + (v11 * 0.999));
  HIDWORD(v21) = 0;
  *(v13 + 128) = v21;
  *(v13 + 144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12950;
  *(inited + 34) = 0x1000300020001;
  *(inited + 42) = 196610;
  *(inited + 46) = 3;
  v23 = *(v2 + 32);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = *(v23 + 2 * v24 + 30) + 1;
  if ((v25 & 0x10000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 32) = v25;
  v26 = v25 + 1;
  if ((v26 & 0x10000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 34) = v25 + 1;
  v27 = v25 + 2;
  if ((v27 & 0x10000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 36) = v25 + 2;
  v28 = v25 + 3;
  if ((v28 & 0x10000) == 0)
  {
    *(inited + 38) = v28;
    *(inited + 40) = v26;
    *(inited + 42) = v27;
    *(inited + 44) = v28;
    *(inited + 46) = v28;
    v29 = inited;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_23AA11C10;
    __asm { FMOV            V0.2S, #1.0 }

    *(v30 + 32) = _D0;
    *(v30 + 40) = _D0;

    sub_23A9126A8(v13);
    *(v2 + 16) = v3;

    v40 = *(v2 + 32);

    sub_23A9125BC(v29);
    *(v2 + 32) = v40;

    swift_beginAccess();
    v39 = *(v2 + 24);

    sub_23A9124D0(v30);
    *(v2 + 24) = v39;

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_23A910DD0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_121;
    }

    swift_beginAccess();
    v49 = *(v2[2] + 16);
    if (!v49)
    {
      return;
    }

    v50 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    while (1)
    {
      v52 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        break;
      }

      v53 = v50 % v52;
      if ((v50 % v52) >> 16)
      {
        goto LABEL_111;
      }

      v1 = v2[4];
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v54 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v56 = *(v1 + 2);
      v55 = *(v1 + 3);
      if (v56 >= v55 >> 1)
      {
        v1 = sub_23A93930C((v55 > 1), v56 + 1, 1, v1);
      }

      *(v1 + 2) = v56 + 1;
      *&v1[2 * v56 + 32] = v53;
      v2[4] = v1;
      v57 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        goto LABEL_112;
      }

      v58 = v50 + 1;
      v59 = v58 % v57;
      if ((v58 % v57) >> 16)
      {
        goto LABEL_113;
      }

      v61 = *(v1 + 2);
      v60 = *(v1 + 3);
      if (v61 >= v60 >> 1)
      {
        v1 = sub_23A93930C((v60 > 1), v61 + 1, 1, v1);
      }

      *(v1 + 2) = v61 + 1;
      *&v1[2 * v61 + 32] = v59;
      v2[4] = v1;
      v62 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        goto LABEL_114;
      }

      v63 = v58 + 1;
      v64 = v63 % v62;
      if ((v63 % v62) >> 16)
      {
        goto LABEL_115;
      }

      v66 = *(v1 + 2);
      v65 = *(v1 + 3);
      if (v66 >= v65 >> 1)
      {
        v1 = sub_23A93930C((v65 > 1), v66 + 1, 1, v1);
      }

      *(v1 + 2) = v66 + 1;
      *&v1[2 * v66 + 32] = v64;
      v2[4] = v1;
      v67 = v63 - 2;
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_116;
      }

      v68 = *(v2[2] + 16);
      v69 = v68 - 1;
      if (v68 == 1)
      {
        goto LABEL_117;
      }

      v70 = v63 + 1;
      if (v67 == 0x7FFFFFFFFFFFFFFDLL && !v68)
      {
        goto LABEL_120;
      }

      v71 = v70 % v69;
      if (v70 % v69 < 0)
      {
        goto LABEL_118;
      }

      if (v71 >> 16)
      {
        goto LABEL_119;
      }

      v73 = *(v1 + 2);
      v72 = *(v1 + 3);
      if (v73 >= v72 >> 1)
      {
        v1 = sub_23A93930C((v72 > 1), v73 + 1, 1, v1);
      }

      *(v1 + 2) = v73 + 1;
      *&v1[2 * v73 + 32] = v71;
      v2[4] = v1;
      swift_beginAccess();
      v1 = v2[3];
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v1;
      if ((v74 & 1) == 0)
      {
        v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
        v2[3] = v1;
      }

      v76 = *(v1 + 2);
      v75 = *(v1 + 3);
      if (v76 >= v75 >> 1)
      {
        v1 = sub_23A939208((v75 > 1), v76 + 1, 1, v1);
      }

      *(v1 + 2) = v76 + 1;
      *&v1[8 * v76 + 32] = _D8;
      v2[3] = v1;
      swift_endAccess();
      v50 = v70 - 2;
      if (v50 == v49)
      {
        return;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v16 = *(v2[2] + 16);
    if (v16 < 3)
    {
      goto LABEL_123;
    }

    if (v16 == 3)
    {
      return;
    }

    v34 = 3;
    __asm { FMOV            V8.2S, #1.0 }

    while (1)
    {
      v1 = v2[4];
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v36 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v38 = *(v1 + 2);
      v37 = *(v1 + 3);
      if (v38 >= v37 >> 1)
      {
        v1 = sub_23A93930C((v37 > 1), v38 + 1, 1, v1);
      }

      *(v1 + 2) = v38 + 1;
      *&v1[2 * v38 + 32] = v34 - 3;
      v2[4] = v1;
      v40 = *(v1 + 2);
      v39 = *(v1 + 3);
      if (v40 >= v39 >> 1)
      {
        v1 = sub_23A93930C((v39 > 1), v40 + 1, 1, v1);
      }

      *(v1 + 2) = v40 + 1;
      *&v1[2 * v40 + 32] = v34 - 2;
      v2[4] = v1;
      v42 = *(v1 + 2);
      v41 = *(v1 + 3);
      if (v42 >= v41 >> 1)
      {
        v1 = sub_23A93930C((v41 > 1), v42 + 1, 1, v1);
      }

      *(v1 + 2) = v42 + 1;
      *&v1[2 * v42 + 32] = v34 - 1;
      v2[4] = v1;
      if (v34 == 0x10000)
      {
        break;
      }

      v44 = *(v1 + 2);
      v43 = *(v1 + 3);
      if (v44 >= v43 >> 1)
      {
        v1 = sub_23A93930C((v43 > 1), v44 + 1, 1, v1);
      }

      *(v1 + 2) = v44 + 1;
      *&v1[2 * v44 + 32] = v34;
      v2[4] = v1;
      swift_beginAccess();
      v45 = v2[3];
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v45;
      if ((v46 & 1) == 0)
      {
        v45 = sub_23A939208(0, *(v45 + 2) + 1, 1, v45);
        v2[3] = v45;
      }

      v48 = *(v45 + 2);
      v47 = *(v45 + 3);
      if (v48 >= v47 >> 1)
      {
        v45 = sub_23A939208((v47 > 1), v48 + 1, 1, v45);
      }

      *(v45 + 2) = v48 + 1;
      *&v45[8 * v48 + 32] = _D8;
      v2[3] = v45;
      swift_endAccess();
      if (v16 == ++v34)
      {
        return;
      }
    }

LABEL_109:
    __break(1u);
  }

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
  v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
  v2[4] = v1;
LABEL_4:
  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_23A93930C((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  *&v1[2 * v7 + 32] = 0;
  v2[4] = v1;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (v9 >= v8 >> 1)
  {
    v1 = sub_23A93930C((v8 > 1), v9 + 1, 1, v1);
  }

  *(v1 + 2) = v9 + 1;
  *&v1[2 * v9 + 32] = 1;
  v2[4] = v1;
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  if (v11 >= v10 >> 1)
  {
    v1 = sub_23A93930C((v10 > 1), v11 + 1, 1, v1);
  }

  *(v1 + 2) = v11 + 1;
  *&v1[2 * v11 + 32] = 2;
  v2[4] = v1;
  v13 = *(v1 + 2);
  v12 = *(v1 + 3);
  if (v13 >= v12 >> 1)
  {
    v1 = sub_23A93930C((v12 > 1), v13 + 1, 1, v1);
  }

  *(v1 + 2) = v13 + 1;
  *&v1[2 * v13 + 32] = 3;
  v2[4] = v1;
  swift_beginAccess();
  v1 = v2[3];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v1;
  if ((v14 & 1) == 0)
  {
    v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
    v2[3] = v1;
  }

  v16 = *(v1 + 2);
  v15 = *(v1 + 3);
  if (v16 >= v15 >> 1)
  {
    v1 = sub_23A939208((v15 > 1), v16 + 1, 1, v1);
  }

  *(v1 + 2) = v16 + 1;
  __asm { FMOV            V8.2S, #1.0 }

  *&v1[8 * v16 + 32] = _D8;
  v2[3] = v1;
  swift_endAccess();
  swift_beginAccess();
  v3 = *(v2[2] + 16);
  if (v3 < 3)
  {
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
    v2[4] = v1;
    goto LABEL_91;
  }

  v16 = 65537;
  if (v3 == 3)
  {
LABEL_89:
    LOWORD(v3) = 3;
  }

  else
  {
    for (i = 3; i != v3; ++i)
    {
      v1 = v2[4];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v22 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v24 = *(v1 + 2);
      v23 = *(v1 + 3);
      if (v24 >= v23 >> 1)
      {
        v1 = sub_23A93930C((v23 > 1), v24 + 1, 1, v1);
      }

      *(v1 + 2) = v24 + 1;
      *&v1[2 * v24 + 32] = i - 3;
      v2[4] = v1;
      v26 = *(v1 + 2);
      v25 = *(v1 + 3);
      if (v26 >= v25 >> 1)
      {
        v1 = sub_23A93930C((v25 > 1), v26 + 1, 1, v1);
      }

      *(v1 + 2) = v26 + 1;
      *&v1[2 * v26 + 32] = i - 2;
      v2[4] = v1;
      v28 = *(v1 + 2);
      v27 = *(v1 + 3);
      if (v28 >= v27 >> 1)
      {
        v1 = sub_23A93930C((v27 > 1), v28 + 1, 1, v1);
      }

      *(v1 + 2) = v28 + 1;
      *&v1[2 * v28 + 32] = i - 1;
      v2[4] = v1;
      if (i == 0x10000)
      {
        __break(1u);
        goto LABEL_109;
      }

      v30 = *(v1 + 2);
      v29 = *(v1 + 3);
      if (v30 >= v29 >> 1)
      {
        v1 = sub_23A93930C((v29 > 1), v30 + 1, 1, v1);
      }

      *(v1 + 2) = v30 + 1;
      *&v1[2 * v30 + 32] = i;
      v2[4] = v1;
      swift_beginAccess();
      v1 = v2[3];
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v1;
      if ((v31 & 1) == 0)
      {
        v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
        v2[3] = v1;
      }

      v33 = *(v1 + 2);
      v32 = *(v1 + 3);
      if (v33 >= v32 >> 1)
      {
        v1 = sub_23A939208((v32 > 1), v33 + 1, 1, v1);
      }

      *(v1 + 2) = v33 + 1;
      *&v1[8 * v33 + 32] = _D8;
      v2[3] = v1;
      swift_endAccess();
    }

    v3 = *(v2[2] + 16);
    if (v3 < 3)
    {
      goto LABEL_124;
    }

    if (v3 > 0x10002)
    {
      __break(1u);
      goto LABEL_89;
    }
  }

  v1 = v2[4];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v1;
  if ((v77 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_91:
  v79 = *(v1 + 2);
  v78 = *(v1 + 3);
  v80 = v79 + 1;
  if (v79 >= v78 >> 1)
  {
    v1 = sub_23A93930C((v78 > 1), v79 + 1, 1, v1);
  }

  *(v1 + 2) = v80;
  *&v1[2 * v79 + 32] = v3 - 3;
  v2[4] = v1;
  v81 = v2[2];
  v82 = *(v81 + 16);
  if (v82 < 2)
  {
    __break(1u);
  }

  else if (v82 <= v16)
  {
    v16 = *(v1 + 2);
    v81 = *(v1 + 3);
    v80 = v16 + 1;
    if (v16 < v81 >> 1)
    {
      goto LABEL_96;
    }

    goto LABEL_128;
  }

  __break(1u);
LABEL_128:
  v1 = sub_23A93930C((v81 > 1), v80, 1, v1);
LABEL_96:
  *(v1 + 2) = v80;
  *&v1[2 * v16 + 32] = v82 - 2;
  v2[4] = v1;
  v83 = v2[2];
  v84 = *(v83 + 16);
  if (v84)
  {
    if (v84 <= 0x10000)
    {
      v82 = *(v1 + 2);
      v83 = *(v1 + 3);
      v80 = v82 + 1;
      if (v82 < v83 >> 1)
      {
        goto LABEL_99;
      }

      goto LABEL_131;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_131:
  v1 = sub_23A93930C((v83 > 1), v80, 1, v1);
LABEL_99:
  *(v1 + 2) = v80;
  *&v1[2 * v82 + 32] = v84 - 1;
  v2[4] = v1;
  v85 = v2[2];
  v86 = *(v85 + 16);
  if (!v86)
  {
    __break(1u);
    goto LABEL_133;
  }

  if (v86 > 0x10000)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v82 = *(v1 + 2);
  v85 = *(v1 + 3);
  v80 = v82 + 1;
  if (v82 >= v85 >> 1)
  {
LABEL_134:
    v1 = sub_23A93930C((v85 > 1), v80, 1, v1);
  }

  *(v1 + 2) = v80;
  *&v1[2 * v82 + 32] = v86 - 1;
  v2[4] = v1;
  swift_beginAccess();
  v87 = v2[3];
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v87;
  if ((v88 & 1) == 0)
  {
    v87 = sub_23A939208(0, *(v87 + 2) + 1, 1, v87);
    v2[3] = v87;
  }

  v90 = *(v87 + 2);
  v89 = *(v87 + 3);
  if (v90 >= v89 >> 1)
  {
    v87 = sub_23A939208((v89 > 1), v90 + 1, 1, v87);
  }

  *(v87 + 2) = v90 + 1;
  *&v87[8 * v90 + 32] = _D8;
  v2[3] = v87;
  swift_endAccess();
}

void sub_23A9119A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A9388A8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A911A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A9388BC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v8 + 32], (a1 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A911BA4(uint64_t a1)
{
  v7 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_23AA0D7F4();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_23AA0D7F4();
  v11 = __OFADD__(v18, v9);
  v12 = v18 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_23A912E80(v12, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  sub_23A9F3C70(&v35, (v3 + 8 * v13 + 32), v14, a1);
  if (v15 < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 1)
  {
    v16 = *(v3 + 16);
    v11 = __OFADD__(v16, v15);
    v17 = v16 + v15;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v17;
  }

  if (v15 != v14)
  {
LABEL_11:
    sub_23A8CA904(v35);
    *v7 = v2;
    return;
  }

LABEL_16:
  v3 = *(v3 + 16);
  v9 = v35;
  v4 = v36;
  v6 = v38;
  v32 = v37;
  v5 = v39;
  if (v35 < 0)
  {
LABEL_20:
    if (!sub_23AA0D824())
    {
      goto LABEL_11;
    }

    type metadata accessor for HullPointUUID(0);
    swift_dynamicCast();
    v20 = v34;
    goto LABEL_31;
  }

  if (!v39)
  {
    v21 = (v37 + 64) >> 6;
    if (v21 <= (v38 + 1))
    {
      v22 = v38 + 1;
    }

    else
    {
      v22 = (v37 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_59;
      }

      if (v19 >= v21)
      {
        v20 = 0;
        v5 = 0;
        goto LABEL_30;
      }

      v5 = *(v36 + 8 * v19);
      ++v6;
      if (v5)
      {
        goto LABEL_29;
      }
    }
  }

  v19 = v38;
LABEL_29:
  v24 = __clz(__rbit64(v5));
  v5 &= v5 - 1;
  v20 = *(*(v35 + 48) + ((v19 << 9) | (8 * v24)));

  v23 = v19;
LABEL_30:
  v38 = v23;
  v39 = v5;
  v6 = v23;
LABEL_31:
  if (!v20)
  {
    goto LABEL_11;
  }

  v25 = (v32 + 64) >> 6;
LABEL_33:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  v2 = *v7;
  v26 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v31 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v3 > v26)
  {
    v26 = v3;
  }

  v33 = v26;
  while (1)
  {
    while (1)
    {
      if (v3 == v33)
      {
        v3 = v33;
        *(v31 + 16) = v33;
        goto LABEL_33;
      }

      *(v31 + 32 + 8 * v3++) = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID(0);
        swift_dynamicCast();
        v20 = v34;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v5)
    {
      break;
    }

    v27 = v6;
LABEL_54:
    v30 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v20 = *(*(v9 + 48) + ((v27 << 9) | (8 * v30)));

    v29 = v27;
LABEL_39:
    v35 = v9;
    v36 = v4;
    v37 = v32;
    v38 = v29;
    v6 = v29;
    v39 = v5;
    if (!v20)
    {
LABEL_56:
      *(v31 + 16) = v3;
      goto LABEL_11;
    }
  }

  if (v25 <= (v6 + 1))
  {
    v28 = v6 + 1;
  }

  else
  {
    v28 = (v32 + 64) >> 6;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v20 = 0;
      v5 = 0;
      goto LABEL_39;
    }

    v5 = *(v4 + 8 * v27);
    ++v6;
    if (v5)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_23A911F44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A938A28(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A912078(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *v2;
  v6 = *(*v2 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v5 + 3) >> 1, v9 < v7))
  {
    if (v6 <= v7)
    {
      v10 = v6 + v4;
    }

    else
    {
      v10 = v6;
    }

    v5 = sub_23A9388BC(isUniquelyReferenced_nonNull_native, v10, 1, v5);
    v9 = *(v5 + 3) >> 1;
  }

  v6 = *(v5 + 2);
  a2 = *(v3 + 16);
  v11 = v9 - v6;
  if (v9 != v6)
  {
    if (v11 < 1)
    {
      __break(1u);
    }

    else if (a2)
    {
      v12 = &v5[4 * v6];
      v13 = v12 + 2;
      v14 = a2 - 1;
      v15 = v9 + ~v6;
      if (a2 - 1 >= v15)
      {
        v16 = v9 + ~v6;
      }

      else
      {
        v16 = a2 - 1;
      }

      v17 = v16 + 1;
      if (v17 <= 0x14)
      {
        goto LABEL_37;
      }

      if (v14 >= v15)
      {
        v14 = v9 + ~v6;
      }

      if (v13 < v3 + 4 * a2 + 32 && 4 * a2 - 4 * v14 + v3 + 28 < &v5[4 * v6 + 36 + 4 * v14])
      {
LABEL_37:
        v20 = 1;
        v21 = *(v3 + 16);
      }

      else
      {
        v18 = v17 & 7;
        if ((v17 & 7) == 0)
        {
          v18 = 8;
        }

        v19 = v17 - v18;
        v20 = v17 - v18 + 1;
        v13 = (v13 + 4 * v19);
        v21 = a2 - v19;
        v22 = (v3 + 4 * a2 + 16);
        v23 = v12 + 3;
        do
        {
          v24 = vrev64q_s32(*v22);
          v25 = vrev64q_s32(v22[-1]);
          v23[-1] = vextq_s8(v24, v24, 8uLL);
          *v23 = vextq_s8(v25, v25, 8uLL);
          v22 -= 2;
          v23 += 2;
          v19 -= 8;
        }

        while (v19);
      }

      v26 = v20 + v6 - v9;
      while (1)
      {
        v27 = v21 - 1;
        v13->i32[0] = *(v3 + 28 + 4 * v21);
        if (!v26)
        {
          break;
        }

        v13 = (v13 + 4);
        ++v26;
        --v21;
        if (!v27)
        {
          goto LABEL_26;
        }
      }

      a2 = v11;
LABEL_26:
      if (a2 >= v4)
      {
        if (a2 > 0)
        {
          v28 = __OFADD__(v6, a2);
          v6 += a2;
          if (v28)
          {
            goto LABEL_57;
          }

          *(v5 + 2) = v6;
        }

        v29 = a2;
        a2 = v27;
        if (v29 != v11)
        {
          goto LABEL_34;
        }

        goto LABEL_42;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v27 = 0;
    goto LABEL_26;
  }

  if (v4)
  {
    goto LABEL_41;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_42:
  if (!a2)
  {
LABEL_34:

LABEL_35:
    *v2 = v5;
    return;
  }

  v30 = a2 - 1;
  if (a2 - 1 >= *(v3 + 16))
  {
    goto LABEL_58;
  }

  v31 = *(v3 + 4 * v30 + 32);
  v32 = v3 + 28;
LABEL_46:
  while (1)
  {
    v33 = *(v5 + 3);
    v34 = v33 >> 1;
    if ((v33 >> 1) < v6 + 1)
    {
      break;
    }

    v35 = v6 - v34;
    if (v6 < v34)
    {
      goto LABEL_48;
    }

LABEL_45:
    *(v5 + 2) = v6;
  }

  v38 = v5;
  v39 = v32;
  v40 = v31;
  v41 = sub_23A9388BC((v33 > 1), v6 + 1, 1, v38);
  v31 = v40;
  v32 = v39;
  v5 = v41;
  v34 = *(v41 + 3) >> 1;
  v35 = v6 - v34;
  if (v6 >= v34)
  {
    goto LABEL_45;
  }

LABEL_48:
  v36 = 0;
  v37 = 4 * v6 + 32;
  while (1)
  {
    *&v5[v37] = v31;
    if (!(v30 + v36))
    {

      *(v5 + 2) = v6 - v36 + 1;
      goto LABEL_35;
    }

    if (v30 + v36 - 1 >= *(v3 + 16))
    {
      break;
    }

    v31 = *(v32 + 4 * v30 + 4 * v36--);
    v37 += 4;
    if (v35 == v36)
    {
      v30 += v36;
      v6 = v34;
      *(v5 + 2) = v34;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_23A91238C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_23A9124D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A939208(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A9125BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A93930C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v8 + 32], (a1 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A9126A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A939408(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A912794(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A93964C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v8 + 32], (a1 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_23A9128B0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23AA0D7F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_23AA0D7F4();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23A912E80(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_23A9129A8(unint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v3;
  v4 = (v1 + 2);
  v1[4] = v3;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v6 = a1 & 0xC000000000000001;
    if (!i)
    {
      break;
    }

    if (v6)
    {
      if (i >= 1)
      {
        v7 = 0;
        do
        {
          v8 = MEMORY[0x23EE90360](v7, a1);
          swift_beginAccess();
          swift_beginAccess();
          v9 = *(v8 + 16);
          swift_beginAccess();
          v10 = *v4;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = sub_23A93941C(0, v10[2] + 1, 1, v10);
            *v4 = v10;
          }

          v13 = v10[2];
          v12 = v10[3];
          if (v13 >= v12 >> 1)
          {
            v10 = sub_23A93941C((v12 > 1), v13 + 1, 1, v10);
          }

          ++v7;
          v10[2] = v13 + 1;
          v10[v13 + 4] = v9;
          *v4 = v10;
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        while (i != v7);
LABEL_16:
        v18 = *(MEMORY[0x23EE90360](0, a1) + 24);

        v16 = v27;
        *(v27 + 24) = v18;

        v17 = MEMORY[0x23EE90360](0, a1);
LABEL_17:

        swift_beginAccess();
        v19 = *(v17 + 32);

        *(v16 + 32) = v19;

        return;
      }

      goto LABEL_30;
    }

    if (i < 1)
    {
      goto LABEL_31;
    }

    v20 = 0;
    while (v20 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(a1 + 32 + 8 * v20);
      swift_beginAccess();
      swift_beginAccess();
      v22 = *(v21 + 16);
      swift_beginAccess();
      v23 = *v4;

      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_23A93941C(0, v23[2] + 1, 1, v23);
        *v4 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_23A93941C((v25 > 1), v26 + 1, 1, v23);
      }

      ++v20;
      v23[2] = v26 + 1;
      v23[v26 + 4] = v22;
      *v4 = v23;
      swift_endAccess();

      if (i == v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    ;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);

    v15 = *(v14 + 24);

    v16 = v27;
    *(v27 + 24) = v15;

    v17 = *(a1 + 32);

    goto LABEL_17;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_23A912D84(uint64_t a1)
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A912E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A912E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_23A912E80(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23AA0D7F4();
LABEL_9:
  result = sub_23AA0D8D4();
  *v2 = result;
  return result;
}

uint64_t sub_23A912F20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF150, &qword_27DFAF148, &unk_23AA12AB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF148, &unk_23AA12AB8);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for DistanceAngleHullPoint();
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

uint64_t sub_23A9130B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF130, &qword_27DFAF128, &qword_23AA12AA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF128, &qword_23AA12AA8);
            v9 = sub_23A9DC280(v13, i, a3);
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
        type metadata accessor for HullPoint();
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

uint64_t sub_23A913240(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF140, &qword_27DFAF138, &qword_23AA12AB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF138, &qword_23AA12AB0);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for HullPointUUID(0);
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

uint64_t sub_23A9133D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF108, &qword_27DFAF100, &unk_23AA19360);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF100, &unk_23AA19360);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTEdge();
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

uint64_t sub_23A913560(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0F8, &qword_27DFAF0F0, &unk_23AA12A80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0F0, &unk_23AA12A80);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTTriangle();
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

uint64_t sub_23A9136F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0E8, &qword_27DFAF0E0, &qword_23AA12A78);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0E0, &qword_23AA12A78);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTTriangleEdge();
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

uint64_t sub_23A913880(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0D8, &qword_27DFAF0D0, &qword_23AA12A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0D0, &qword_23AA12A70);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for OpeningElement();
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

uint64_t sub_23A913A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0C8, &qword_27DFAF0C0, &qword_23AA12A68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0C0, &qword_23AA12A68);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for RoomCaptureQuad();
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

uint64_t sub_23A913BA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0B8, &qword_27DFAF0B0, &qword_23AA12A60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0B0, &qword_23AA12A60);
            v9 = sub_23A9DC390(v13, i, a3);
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
        sub_23A913FBC();
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

uint64_t sub_23A913D30(unint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v4 = (v1 + 2);
  v1[3] = v3;
  v1[4] = v3;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v6 = 0;
    LOWORD(v7) = 0;
    v24 = v2;
    v25 = v2 & 0xC000000000000001;
    v20 = v2 + 32;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = i;
    v23 = v4;
    while (1)
    {
      if (v25)
      {
        v8 = MEMORY[0x23EE90360](v6, v2);
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v20 + 8 * v6);

        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      swift_beginAccess();
      swift_beginAccess();

      sub_23A9126A8(v10);
      swift_endAccess();
      v11 = *(v8 + 32);
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      v13 = MEMORY[0x277D84F90];
LABEL_18:
      sub_23A9125BC(v13);
      swift_beginAccess();
      swift_beginAccess();

      sub_23A9124D0(v17);
      swift_endAccess();

      v7 = *(*v4 + 16);
      if (v7 >> 16)
      {
        goto LABEL_23;
      }

      if (v6 == i)
      {
        return v19;
      }
    }

    v26 = MEMORY[0x277D84F90];

    sub_23A975F64(0, v12, 0);
    v13 = v26;
    v14 = 32;
    while (1)
    {
      v15 = *(v11 + v14) + v7;
      if ((v15 & 0x10000) != 0)
      {
        break;
      }

      v4 = *(v26 + 16);
      v16 = *(v26 + 24);
      v2 = v4 + 1;
      if (v4 >= v16 >> 1)
      {
        sub_23A975F64((v16 > 1), v4 + 1, 1);
      }

      *(v26 + 16) = v2;
      *(v26 + 2 * v4 + 32) = v15;
      v14 += 2;
      if (!--v12)
      {

        v4 = v23;
        v2 = v24;
        i = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return v19;
}

unint64_t sub_23A913FBC()
{
  result = qword_27DFB13E0;
  if (!qword_27DFB13E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFB13E0);
  }

  return result;
}

uint64_t sub_23A914008(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23A91408C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v116 = type metadata accessor for ScanItemStrut(0);
  v6 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v108 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_23AA0C0E4();
  v8 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v107 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v100 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v100 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v100 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  MEMORY[0x28223BE20](v22);
  v104 = &v100 - v23;
  MEMORY[0x28223BE20](v24);
  v103 = &v100 - v25;
  MEMORY[0x28223BE20](v26);
  v102 = &v100 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v28 - 8);
  v115 = &v100 - v29;
  v30 = type metadata accessor for CapturedRoom.Surface(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v114 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v113 = &v100 - v34;
  MEMORY[0x28223BE20](v35);
  v133 = &v100 - v36;
  MEMORY[0x28223BE20](v37);
  v112 = &v100 - v38;
  MEMORY[0x28223BE20](v39);
  v119 = &v100 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v100 - v42;
  MEMORY[0x28223BE20](v44);
  v120 = &v100 - v45;
  MEMORY[0x28223BE20](v46);
  v124 = &v100 - v47;
  if (qword_27DFAE370 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v48 = sub_23A8D7840(v3, a1, a2);
    v137 = MEMORY[0x277D84F98];
    v138 = MEMORY[0x277D84F98];
    v123 = v48;
    if (v48 >> 62)
    {
      break;
    }

    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_46;
    }

LABEL_4:
    v131 = a1;
    a1 = 0;
    v129 = *(a2 + 24);
    v130 = a2 + 24;
    v126 = v123 & 0xC000000000000001;
    v121 = v123 + 32;
    v122 = v123 & 0xFFFFFFFFFFFFFF8;
    v110 = (v8 + 16);
    v109 = (v6 + 48);
    v6 = v123;
    v111 = (v8 + 8);
    v8 = v3;
    v101 = v14;
    v117 = v21;
    v125 = v49;
    v127 = v3;
    v128 = a2;
    while (1)
    {
      if (v126)
      {
        v50 = MEMORY[0x23EE90360](a1, v6);
        v3 = v131;
        v51 = __OFADD__(a1++, 1);
        if (v51)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v131;
        if (a1 >= *(v122 + 16))
        {
          goto LABEL_43;
        }

        v51 = __OFADD__(a1++, 1);
        if (v51)
        {
          goto LABEL_42;
        }
      }

      v135 = v50;
      v132 = a1;
      v8 = v129(v3, a2);
      v3 = *(v8 + 16);
      if (v3)
      {
        break;
      }

LABEL_5:

      v8 = v127;
      a2 = v128;
LABEL_6:
      a1 = v132;
      if (v132 == v125)
      {

        return v138;
      }
    }

    v21 = 0;
    v14 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    while (v21 < *(v8 + 16))
    {
      a2 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      a1 = *(v31 + 72);
      sub_23A8D7948(v8 + a2 + a1 * v21, v43);
      if (sub_23AA0C094())
      {

        v6 = v120;
        sub_23A914F20(v43, v120, type metadata accessor for CapturedRoom.Surface);
        sub_23A914F20(v6, v124, type metadata accessor for CapturedRoom.Surface);
        v52 = v129(v131, v128);
        v8 = v52;
        v3 = *(v52 + 16);
        if (v3)
        {
          v21 = 0;
          v134 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID;
          a2 += v52;
          while (1)
          {
            if (v21 >= *(v8 + 16))
            {
              goto LABEL_41;
            }

            v14 = v43;
            v53 = v31;
            v54 = v30;
            v55 = v133;
            sub_23A8D7948(a2, v133);
            v6 = v54;
            if (sub_23AA0C094())
            {
              break;
            }

            ++v21;
            sub_23A8D7A84(v55);
            a2 += a1;
            v30 = v54;
            v31 = v53;
            v43 = v14;
            if (v3 == v21)
            {
              goto LABEL_24;
            }
          }

          v56 = v112;
          sub_23A914F20(v55, v112, type metadata accessor for CapturedRoom.Surface);
          v57 = v119;
          sub_23A914F20(v56, v119, type metadata accessor for CapturedRoom.Surface);
          v30 = v54;
          v58 = v115;
          sub_23A8D5194(v57 + *(v54 + 52), v115, &qword_27DFAEB38, &unk_23AA11B60);
          v59 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
          sub_23A8D50D0(v58, &qword_27DFAEB38, &unk_23AA11B60);
          v31 = v53;
          if (v60 == 1)
          {
            v61 = v124;
            v62 = v113;
            sub_23A8D7948(v124, v113);
            v63 = v114;
            sub_23A8D7948(v57, v114);
            v64 = v135;

            sub_23A8E9B30(v62, v63, v64, v117);
            v65 = v61;
            v66 = *(v61 + 80);
            v67 = v64[2];
            v67.i32[1] = HIDWORD(*(v61 + 80));
            *v66.f32 = vsub_f32(v67, *v66.f32);
            v66.f32[2] = COERCE_FLOAT(HIDWORD(*&v64[2])) - COERCE_FLOAT(*(v61 + 88));
            v68 = vmulq_f32(*(v61 + 32), v66);
            v69 = v68.f32[2] + vaddv_f32(*v68.f32);
            v70 = *v110;
            a2 = v128;
            v71 = v118;
            v21 = v107;
            v72 = v106;
            v73 = v105;
            v43 = v14;
            v74 = v65 + *(v30 + 44);
            if (v69 > 0.0)
            {
              (v70)(v106, v74, v118, v69);
              sub_23A8D5194(v117, v73, &unk_27DFAF020, &unk_23AA12300);
              v14 = v71;
              v21 = v72;
              if ((*v109)(v73, 1, v116) == 1)
              {
                sub_23A8D50D0(v73, &unk_27DFAF020, &unk_23AA12300);
                v75 = v104;
                sub_23A9056A8(v72, v104);

                sub_23A8D50D0(v75, &unk_27DFAF020, &unk_23AA12300);
                (*v111)(v72, v71);
                v76 = v117;
LABEL_34:
                sub_23A8D50D0(v76, &unk_27DFAF020, &unk_23AA12300);
                sub_23A8D7A84(v119);
                sub_23A8D7A84(v124);
                v8 = v127;
                goto LABEL_25;
              }

              v92 = v73;
              v93 = v108;
              sub_23A914F20(v92, v108, type metadata accessor for ScanItemStrut);
              v94 = v137;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v136 = v94;
              sub_23A9DA990(v93, v21, isUniquelyReferenced_nonNull_native);

              (*v111)(v21, v71);
              sub_23A8D50D0(v117, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D7A84(v119);
              sub_23A8D7A84(v124);
              v137 = v136;
              v8 = v127;
              goto LABEL_25;
            }

            (v70)(v107, v74, v118, v69);
            v86 = v100;
            sub_23A8D5194(v117, v100, &unk_27DFAF020, &unk_23AA12300);
            v14 = v71;
            if ((*v109)(v86, 1, v116) == 1)
            {
              sub_23A8D50D0(v86, &unk_27DFAF020, &unk_23AA12300);
              v87 = v104;
              sub_23A9056A8(v21, v104);

              sub_23A8D50D0(v87, &unk_27DFAF020, &unk_23AA12300);
              (*v111)(v21, v71);
              v76 = v117;
              goto LABEL_34;
            }

            v96 = v108;
            sub_23A914F20(v86, v108, type metadata accessor for ScanItemStrut);
            v97 = v138;
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v136 = v97;
            sub_23A9DA990(v96, v21, v98);

            (*v111)(v21, v71);
            v91 = v117;
          }

          else
          {
            v77 = v57;
            v78 = v57;
            v79 = v113;
            sub_23A8D7948(v77, v113);
            v80 = v114;
            sub_23A8D7948(v124, v114);
            v81 = v135;

            v82 = v102;
            sub_23A8E9EBC(v79, v80, v81, v102);
            v21 = v101;
            (*v110)(v101, v78 + *(v30 + 44), v118);
            v83 = v103;
            sub_23A8D5194(v82, v103, &unk_27DFAF020, &unk_23AA12300);
            v84 = (*v109)(v83, 1, v116);
            a2 = v128;
            v43 = v14;
            if (v84 == 1)
            {
              v14 = &unk_23AA12300;
              sub_23A8D50D0(v83, &unk_27DFAF020, &unk_23AA12300);
              v85 = v104;
              sub_23A9056A8(v21, v104);

              sub_23A8D50D0(v85, &unk_27DFAF020, &unk_23AA12300);
              (*v111)(v21, v118);
              v76 = v82;
              goto LABEL_34;
            }

            v14 = &unk_27DFAF020;
            v88 = v108;
            sub_23A914F20(v83, v108, type metadata accessor for ScanItemStrut);
            v89 = v138;
            v90 = swift_isUniquelyReferenced_nonNull_native();
            v136 = v89;
            sub_23A9DA990(v88, v21, v90);

            (*v111)(v21, v118);
            v91 = v82;
          }

          sub_23A8D50D0(v91, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D7A84(v119);
          sub_23A8D7A84(v124);
          v138 = v136;
          v8 = v127;
        }

        else
        {
LABEL_24:

          sub_23A8D7A84(v124);
          v8 = v127;
          a2 = v128;
        }

LABEL_25:
        v6 = v123;
        goto LABEL_6;
      }

      ++v21;
      sub_23A8D7A84(v43);
      if (v3 == v21)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v49 = sub_23AA0D7F4();
  if (v49)
  {
    goto LABEL_4;
  }

LABEL_46:

  return MEMORY[0x277D84F98];
}

uint64_t sub_23A914F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A914FAC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HullPointUUID(uint64_t a1)
{
  result = qword_27DFAF158;
  if (!qword_27DFAF158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A91509C(uint64_t a1)
{
  result = sub_23AA0C0E4();
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

uint64_t sub_23A915140()
{
  sub_23AA0DD14();
  sub_23AA0C0B4();
  return sub_23AA0DD54();
}

uint64_t sub_23A9151C0()
{
  sub_23AA0DD14();
  sub_23AA0C0B4();
  return sub_23AA0DD54();
}

BOOL sub_23A91520C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_23AA0C094() & 1) != 0 && *(v2 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) == *(v3 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
}

id sub_23A91532C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for HullPointType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HullPointType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A915584()
{
  result = qword_27DFAF188;
  if (!qword_27DFAF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF188);
  }

  return result;
}

unint64_t sub_23A9155DC()
{
  result = qword_27DFAF190;
  if (!qword_27DFAF190)
  {
    type metadata accessor for HullPointUUID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF190);
  }

  return result;
}

uint64_t sub_23A915648()
{
  type metadata accessor for FramerateLogManager(0);
  v0 = swift_allocObject();
  result = sub_23A91620C();
  qword_27DFC0670 = v0;
  return result;
}

uint64_t sub_23A915688(char *a1, char *a2, __n128 a3)
{
  if (qword_23AA12E30[*a1] == qword_23AA12E30[*a2])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_23AA0DBD4();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_23A9156F0()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A91574C(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A91578C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A9157E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A916454(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A915830(uint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    v2 = a1;
    v3 = *(v1 + 40);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_23A9166C8;
    *(v5 + 24) = v4;
    v8[4] = sub_23A9166DC;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23AA08C40;
    v8[3] = &block_descriptor_46;
    v6 = _Block_copy(v8);

    dispatch_sync(v3, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_23A91598C(uint64_t a1, float a2)
{
  *(a1 + 48) = a2;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v4 = off_27DFB17B0;
  swift_beginAccess();
  if (v4[37] <= a2)
  {
    v6 = 2;
  }

  else
  {
    v5 = *(a1 + 48);
    swift_beginAccess();
    if (v5 >= v4[38])
    {
      return;
    }

    v6 = 1;
  }

  *(a1 + 52) = v6;
}

void sub_23A915A50(double a1)
{
  if (*(v1 + 72))
  {
    v3 = 0;
    v4 = 0;
LABEL_4:
    *(v1 + 64) = a1;
    *(v1 + 72) = 0;
    sub_23A9165FC(v3, v4);
    return;
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 40);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  *(v4 + 32) = v5;
  v7 = swift_allocObject();
  v3 = sub_23A916644;
  *(v7 + 16) = sub_23A916644;
  *(v7 + 24) = v4;
  v9[4] = sub_23A916670;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23AA08C40;
  v9[3] = &block_descriptor_0;
  v8 = _Block_copy(v9);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_23A915BE0(uint64_t a1, float a2)
{
  v4 = sub_23AA0C064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  *(a1 + 80) = 1.0 / a2;
  sub_23AA0C044();
  v11 = OBJC_IVAR____TtC8RoomPlan19FramerateLogManager_lastDisplayTime;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v11, v4);
  sub_23AA0C014();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  result = (v14)(v10, v4);
  if (v13 >= 0.1)
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 52);
    v18 = *(a1 + 56);
    v19 = *(a1 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_23AA11C10;
    v21 = qword_23AA12E30[v17];
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_23A9165A8();
    v22 = MEMORY[0x277D83A90];
    *(v20 + 32) = v21;
    *(v20 + 40) = 0xE300000000000000;
    v23 = MEMORY[0x277D83B08];
    *(v20 + 96) = v22;
    *(v20 + 104) = v23;
    *(v20 + 72) = v16;
    v38 = sub_23AA0D164();
    v39 = v24;
    v25 = swift_allocObject();
    v37 = xmmword_23AA10FC0;
    v26 = MEMORY[0x277D839F8];
    *(v25 + 16) = xmmword_23AA10FC0;
    v27 = MEMORY[0x277D83A80];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v18;
    v28 = sub_23AA0D164();
    MEMORY[0x23EE8FCA0](v28);

    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = v26;
    *(v29 + 64) = v27;
    *(v29 + 32) = v19;
    v30 = sub_23AA0D164();
    MEMORY[0x23EE8FCA0](v30);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = v38;
      v33 = v39;
      v34 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 8);
        ObjectType = swift_getObjectType();
        (*(v35 + 32))(v32, v33, ObjectType, v35);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    *(a1 + 52) = 0;
    sub_23AA0C044();
    swift_beginAccess();
    (*(v5 + 40))(a1 + v11, v10, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_23A915FC0()
{
  sub_23A8E9694(v0 + 16);

  v1 = OBJC_IVAR____TtC8RoomPlan19FramerateLogManager_lastDisplayTime;
  v2 = sub_23AA0C064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramerateLogManager(uint64_t a1)
{
  result = qword_27DFAF1A0;
  if (!qword_27DFAF1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9160C0(uint64_t a1)
{
  result = sub_23AA0C064();
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

unint64_t sub_23A9161B8()
{
  result = qword_27DFAF1B0;
  if (!qword_27DFAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1B0);
  }

  return result;
}

uint64_t sub_23A91620C()
{
  v7[0] = sub_23AA0D524();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  sub_23A9164A0();
  sub_23AA0CEE4();
  v7[1] = MEMORY[0x277D84F90];
  sub_23A9164EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v7[0]);
  *(v0 + 40) = sub_23AA0D554();
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  sub_23AA0C044();
  return v0;
}

unint64_t sub_23A916454(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A9164A0()
{
  result = qword_27DFAF820;
  if (!qword_27DFAF820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAF820);
  }

  return result;
}

unint64_t sub_23A9164EC()
{
  result = qword_27DFB1150;
  if (!qword_27DFB1150)
  {
    sub_23AA0D504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1150);
  }

  return result;
}

unint64_t sub_23A916544()
{
  result = qword_27DFB1160;
  if (!qword_27DFB1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFAF830, &qword_23AA14A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1160);
  }

  return result;
}

unint64_t sub_23A9165A8()
{
  result = qword_27DFAF1B8;
  if (!qword_27DFAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1B8);
  }

  return result;
}

double sub_23A9165FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23A91660C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_23A916644()
{
  result = 1.0 / (*(v0 + 24) - *(v0 + 32));
  *(*(v0 + 16) + 56) = result;
  return result;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A916690()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

void sub_23A9166E4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_23A930548(v13, v7 + v14, type metadata accessor for CapturedRoom.Surface);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_23A930208(v7, a1, &qword_27DFAF200, &qword_23AA12ED0);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_23A9168D4(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    sub_23A9301E0(v36);
    v5 = *&v36[144];
    *(a1 + 128) = *&v36[128];
    *(a1 + 144) = v5;
    *(a1 + 160) = v36[160];
    v6 = *&v36[80];
    *(a1 + 64) = *&v36[64];
    *(a1 + 80) = v6;
    v7 = *&v36[112];
    *(a1 + 96) = *&v36[96];
    *(a1 + 112) = v7;
    v8 = *&v36[16];
    *a1 = *v36;
    *(a1 + 16) = v8;
    v9 = *&v36[48];
    *(a1 + 32) = *&v36[32];
    *(a1 + 48) = v9;
    return;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *v1 + 160 * v3;
  v11 = *(v10 + 48);
  v26 = *(v10 + 32);
  v27 = v11;
  v12 = *(v10 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 112);
  v30 = *(v10 + 96);
  v31 = v14;
  v28 = v12;
  v29 = v13;
  v15 = *(v10 + 128);
  v16 = *(v10 + 144);
  v17 = *(v10 + 160);
  LOBYTE(v10) = *(v10 + 176);
  v35 = v10;
  v33 = v16;
  v34 = v17;
  v32 = v15;
  v1[1] = v3 + 1;
  v18 = v1[2];
  *&v25[104] = v32;
  *&v25[120] = v33;
  *&v25[136] = v34;
  v25[152] = v10;
  *&v25[40] = v28;
  *&v25[56] = v29;
  *&v25[72] = v30;
  *&v25[88] = v31;
  *&v25[8] = v26;
  *&v25[24] = v27;
  if (__OFADD__(v18, 1))
  {
LABEL_8:
    __break(1u);
    return;
  }

  *&v36[104] = *&v25[96];
  *&v36[120] = *&v25[112];
  *&v36[136] = *&v25[128];
  *&v36[145] = *&v25[137];
  *&v36[40] = *&v25[32];
  *&v36[56] = *&v25[48];
  *&v36[72] = *&v25[64];
  *&v36[88] = *&v25[80];
  v19 = *&v25[16];
  *&v36[8] = *v25;
  v1[2] = v18 + 1;
  *&v36[24] = v19;
  *v36 = v18;
  nullsub_1();
  v20 = *&v36[144];
  *(a1 + 128) = *&v36[128];
  *(a1 + 144) = v20;
  *(a1 + 160) = v36[160];
  v21 = *&v36[80];
  *(a1 + 64) = *&v36[64];
  *(a1 + 80) = v21;
  v22 = *&v36[112];
  *(a1 + 96) = *&v36[96];
  *(a1 + 112) = v22;
  v23 = *&v36[16];
  *a1 = *v36;
  *(a1 + 16) = v23;
  v24 = *&v36[48];
  *(a1 + 32) = *&v36[32];
  *(a1 + 48) = v24;
  sub_23A93010C(&v26, v25);
}

double sub_23A916A74(float32x4_t *a1, __n128 a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = a1[1].i64[0];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    v18 = a2;
    sub_23A975EA4(0, v6, 0);
    v8 = v18;
    v7 = a3;
    v10 = a4;
    v9 = a5;
    v11 = v22;
    v12 = a1 + 2;
    do
    {
      v13 = *v12;
      v23 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = *v12;
        sub_23A975EA4((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v8 = v18;
        v7 = a3;
        v10 = a4;
        v9 = a5;
        v11 = v23;
      }

      a2.n128_u64[0] = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v13.f32[0]), v7, *v13.f32, 1), v10, v13, 2), v9).u64[0];
      *(v11 + 16) = v15 + 1;
      *(v11 + 8 * v15 + 32) = a2.n128_u64[0];
      ++v12;
      --v6;
    }

    while (v6);
  }

  return a2.n128_f64[0];
}

uint64_t sub_23A916B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for CapturedRoom.Object(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v22 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v21[0];
    v14 = v21[2];
    v19 = v21[3];
    v20 = v21[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    if ((result & 1) == 0)
    {
      result = sub_23A938D78(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_23A938D78((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = (v8 + 32 * v16);
    v18[4] = v13;
    v18[5] = v20;
    v18[6] = v23;
    v18[7] = v19;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_23A916D14()
{
  sub_23AA0BF94();
  sub_23A92F104();
  v0 = sub_23AA0D694();

  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_9:

    return 0;
  }

  v2 = 0;
  v3 = (v0 + 40);
  while (1)
  {
    result = *(v3 - 1);
    if (result == 0x737465737361 && *v3 == 0xE600000000000000)
    {
      break;
    }

    result = sub_23AA0DBD4();
    if (result)
    {
      break;
    }

    ++v2;
    v3 += 2;
    if (v1 == v2)
    {
      goto LABEL_9;
    }
  }

  if (v2)
  {
    v6 = *(v0 + 16);
    v7 = v6 - v2;
    if (v6 < v2)
    {
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v0 + 24) >> 1)
    {
      if (v6 <= v7)
      {
        v9 = v6 - v2;
      }

      else
      {
        v9 = v6;
      }

      sub_23A9388F4(isUniquelyReferenced_nonNull_native, v9, 1, v0);
    }

    sub_23A946238(0, v2, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v10 = sub_23AA0D074();
  v12 = v11;

  MEMORY[0x23EE8FCA0](v10, v12);

  return 12078;
}

uint64_t sub_23A916EC8()
{
  v0 = sub_23AA0BCF4();
  __swift_allocate_value_buffer(v0, qword_27DFC0678);
  __swift_project_value_buffer(v0, qword_27DFC0678);
  return sub_23AA0BCA4();
}

uint64_t sub_23A916F1C()
{
  v0 = sub_23AA0BCF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_27DFC0690);
  __swift_project_value_buffer(v0, qword_27DFC0690);
  sub_23AA0BCA4();
  sub_23AA0BCA4();
  sub_23AA0BCB4();
  if (qword_27DFAE418 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27DFC0678);
  sub_23AA0BCE4();
  sub_23AA0BCC4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

unint64_t sub_23A9170B0()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for USDModel.Error(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A930548(v1, v8, type metadata accessor for USDModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v3 + 32))(v5, v8, v2);
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_23AA0D8A4();
        v15 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v15);

        v16 = "and .usdz file types.";
        v17 = 0xD000000000000054;
      }

      else
      {
        (*(v3 + 32))(v5, v8, v2);
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_23AA0D8A4();
        v21 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v21);

        v16 = "son and .plist file types.";
        v17 = 0xD000000000000055;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_23AA0D8A4();

        v25 = 0xD000000000000012;
        v26 = 0x800000023AA1EA70;
        v14 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v14);

LABEL_20:
        v22 = v25;
        (*(v3 + 8))(v5, v2);
        return v22;
      }

      (*(v3 + 32))(v5, v8, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23AA0D8A4();
      MEMORY[0x23EE8FCA0](0xD000000000000013, 0x800000023AA1EA20);
      v20 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v20);

      v16 = "Invalid file path (";
      v17 = 0xD00000000000002CLL;
    }

LABEL_19:
    MEMORY[0x23EE8FCA0](v17, v16 | 0x8000000000000000);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v3 + 32))(v5, v8, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23AA0D8A4();
      v18 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v18);

      v16 = "json and .plist file types.";
      v17 = 0xD00000000000004ALL;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23AA0D8A4();
      v23 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v23);

      v16 = " .usdc file type";
      v17 = 0xD00000000000004BLL;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (*(v3 + 32))(v5, v8, v2);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0x7461206C65646F4DLL, 0xE900000000000020);
    v19 = sub_23AA0BF94();
    MEMORY[0x23EE8FCA0](v19);

    v16 = "D node at path: ";
    v17 = 0xD000000000000040;
    goto LABEL_19;
  }

  v10 = *v8;
  v11 = v8[1];
  v25 = 0;
  v26 = 0xE000000000000000;
  if (EnumCaseMultiPayload == 7)
  {
    sub_23AA0D8A4();

    v12 = 0x800000023AA1E840;
    v13 = 0xD000000000000020;
  }

  else
  {
    sub_23AA0D8A4();

    v12 = 0x800000023AA1E820;
    v13 = 0xD000000000000013;
  }

  v25 = v13;
  v26 = v12;
  MEMORY[0x23EE8FCA0](v10, v11);

  return v25;
}

void sub_23A917634(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int *a5)
{
  v254 = a1;
  v272 = *MEMORY[0x277D85DE8];
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v265 = v10;
  v266 = v11;
  MEMORY[0x28223BE20](v10);
  v247 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF220, &qword_23AA12EF8);
  MEMORY[0x28223BE20](v264);
  v263 = &v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v262 = &v212 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00);
  v260 = *(v16 - 8);
  v261 = v16;
  MEMORY[0x28223BE20](v16);
  v259 = &v212 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v18 - 8);
  v242 = &v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v246 = &v212 - v21;
  MEMORY[0x28223BE20](v22);
  v248 = &v212 - v23;
  MEMORY[0x28223BE20](v24);
  v244 = &v212 - v25;
  MEMORY[0x28223BE20](v26);
  v243 = &v212 - v27;
  MEMORY[0x28223BE20](v28);
  v257 = &v212 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v212 - v31;
  v33 = sub_23AA0BFB4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v252 = &v212 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v245 = &v212 - v37;
  MEMORY[0x28223BE20](v38);
  v253 = &v212 - v39;
  MEMORY[0x28223BE20](v40);
  v255 = &v212 - v41;
  MEMORY[0x28223BE20](v42);
  v256 = &v212 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v212 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF208, &qword_23AA12ED8);
  MEMORY[0x28223BE20](v47 - 8);
  v258 = &v212 - v48;
  v49 = *(a4 + 8);
  v251 = *a4;
  v250 = v49;
  v249 = *a5;
  if ((sub_23AA0BEA4() & 1) == 0)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    (*(v34 + 16))(v51, a2, v33);
    goto LABEL_12;
  }

  v238 = v34;
  if (sub_23AA0BEF4())
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    (*(v238 + 16))(v50, a2, v33);
LABEL_12:
    swift_storeEnumTagMultiPayload();
LABEL_13:
    swift_willThrow();
    return;
  }

  v241 = a3;
  v230 = v46;
  v227 = v5;
  v236 = v33;
  v270 = sub_23AA0BEC4();
  v271 = v52;
  v268 = 6583157;
  v269 = 0xE300000000000000;
  v53 = sub_23AA0C104();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v56 = v54 + 56;
  v57 = v258;
  v55(v258, 1, 1, v53);
  v58 = sub_23A92F104();
  v59 = sub_23AA0D6D4();
  sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8);

  if (v59 && (v270 = sub_23AA0BEC4(), v271 = v60, v268 = 1633973109, v269 = 0xE400000000000000, v55(v57, 1, 1, v53), v61 = sub_23AA0D6D4(), sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8), , v61) && (v270 = sub_23AA0BEC4(), v271 = v62, v268 = 1667527541, v269 = 0xE400000000000000, v55(v57, 1, 1, v53), v63 = sub_23AA0D6D4(), sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8), , v63) && (v270 = sub_23AA0BEC4(), v271 = v64, v268 = 2053403509, v269 = 0xE400000000000000, v55(v57, 1, 1, v53), v65 = sub_23AA0D6D4(), sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8), , v65) || (v229 = v56, v228 = v53, v270 = sub_23AA0BED4(), v271 = v66, v67 = sub_23AA0D6C4(), v69 = v68, , v69) && (v270 = v67, v271 = v69, v268 = 92, v269 = 0xE100000000000000, v70 = sub_23AA0D6E4(), , (v70 & 1) != 0))
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    (*(v238 + 16))(v71, a2, v236);
    goto LABEL_12;
  }

  v270 = sub_23AA0BEC4();
  v271 = v72;
  v268 = 1633973109;
  v269 = 0xE400000000000000;
  v73 = v228;
  v55(v57, 1, 1, v228);
  v74 = sub_23AA0D6D4();
  sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8);

  v226 = v58;
  v225 = v55;
  if (v74)
  {
    v270 = sub_23AA0BEC4();
    v271 = v75;
    v268 = 1667527541;
    v269 = 0xE400000000000000;
    v55(v57, 1, 1, v73);
    v76 = sub_23AA0D6D4();
    sub_23A8D50D0(v57, &qword_27DFAF208, &qword_23AA12ED8);

    v77 = v267 + 4;
    if (v76)
    {
      v78 = 1633973109;
    }

    else
    {
      v78 = 1667527541;
    }

    v267[3] = v78;
  }

  else
  {
    v77 = v267 + 4;
    v267[3] = 1633973109;
  }

  *v77 = 0xE400000000000000;

  v79 = objc_opt_self();
  v80 = [v79 defaultManager];
  sub_23AA0BF94();
  v81 = sub_23AA0D104();

  v82 = [v80 fileExistsAtPath_];

  v83 = v236;
  if (v82)
  {
    v84 = [v79 defaultManager];
    v85 = sub_23AA0BF14();
    v270 = 0;
    v86 = [v84 removeItemAtURL:v85 error:&v270];

    if (!v86)
    {
      v134 = v270;
      sub_23AA0BE74();

      goto LABEL_13;
    }

    v87 = v270;
  }

  v270 = sub_23AA0BEC4();
  v271 = v88;
  v268 = 2053403509;
  v269 = 0xE400000000000000;
  v89 = v258;
  v225(v258, 1, 1, v228);
  v221 = sub_23AA0D6D4();
  sub_23A8D50D0(v89, &qword_27DFAF208, &qword_23AA12ED8);

  v90 = v79;
  v91 = v238;
  v92 = v238 + 16;
  v93 = *(v238 + 16);
  v93(v230, a2, v83);
  v94 = v256;
  v218 = v92;
  v217 = v93;
  (v93)();
  v95 = *(v91 + 56);
  v222 = v91 + 56;
  v220 = v95;
  v95(v32, 1, 1, v83);
  v216 = v90;
  v96 = [v90 byte_278B6563B];
  v97 = v255;
  sub_23AA0BF64();
  v98 = sub_23AA0BF14();
  v99 = *(v91 + 8);
  v99(v97, v83);
  v270 = 0;
  LODWORD(v97) = [v96 createDirectoryAtURL:v98 withIntermediateDirectories:1 attributes:0 error:&v270];

  if (!v97)
  {
    v133 = v270;
    sub_23AA0BE74();

    swift_willThrow();
    sub_23A8D50D0(v32, &qword_27DFAF210, &qword_23AA12EE8);
    v99(v94, v83);
    v99(v230, v83);
    return;
  }

  v100 = v94;
  v223 = v99;
  v219 = v91 + 8;
  v101 = v270;
  v102 = sub_23A92B6F8(v254);
  v103 = v267;
  v267[2] = v102;

  v104 = v257;
  sub_23A8D5194(v241, v257, &qword_27DFAF210, &qword_23AA12EE8);
  v214 = *(v91 + 48);
  v215 = v91 + 48;
  v105 = v214(v104, 1, v83);
  v237 = v32;
  v106 = v83;
  if (v105 == 1)
  {
    sub_23A8D50D0(v104, &qword_27DFAF210, &qword_23AA12EE8);
    v107 = v248;
    v108 = v100;
    goto LABEL_26;
  }

  (*(v91 + 32))(v253, v104, v83);
  v212 = sub_23AA0BEC4();
  v213 = v135;
  v136 = v103[2];
  v137 = *(v136 + 16);
  v108 = MEMORY[0x277D84F90];
  if (v137)
  {
    v270 = MEMORY[0x277D84F90];

    sub_23A976110(0, v137, 0);
    v108 = v270;
    v106 = v136 + 64;
    v138 = sub_23AA0D774();
    v139 = 0;
    v257 = *(v136 + 36);
    v234 = v266 + 16;
    v233 = v266 + 32;
    v224 = v136 + 72;
    v140 = 1;
    v231 = v137;
    v235 = v136 + 64;
    v232 = v136;
    while ((v138 & 0x8000000000000000) == 0 && v138 < 1 << *(v136 + 32))
    {
      if ((*(v106 + 8 * (v138 >> 6)) & (1 << v138)) == 0)
      {
        goto LABEL_80;
      }

      if (v257 != *(v136 + 36))
      {
        goto LABEL_81;
      }

      v240 = 1 << v138;
      v241 = v138 >> 6;
      v239 = v139;
      v142 = v266;
      v143 = *(v136 + 48) + *(v266 + 72) * v138;
      v144 = *(v266 + 16);
      v145 = v136;
      v146 = v262;
      v103 = v108;
      v147 = v265;
      v144(v262, v143, v265);
      v148 = (*(v145 + 56) + 16 * v138);
      v150 = *v148;
      v149 = v148[1];
      v151 = *(v142 + 32);
      v152 = v263;
      v153 = v146;
      v154 = v259;
      v151(v263, v153, v147);
      v155 = (v152 + *(v264 + 48));
      *v155 = v150;
      v155[1] = v149;
      v156 = v147;
      v108 = v103;
      v144(&v154[*(v261 + 48)], v152, v156);
      *v154 = v150;
      *(v154 + 1) = v149;
      swift_bridgeObjectRetain_n();
      sub_23A8D50D0(v152, &qword_27DFAF220, &qword_23AA12EF8);
      v270 = v103;
      v137 = v103[2];
      v157 = v103[3];
      if (v137 >= v157 >> 1)
      {
        sub_23A976110((v157 > 1), v137 + 1, 1);
        v108 = v270;
      }

      v108[2] = v137 + 1;
      sub_23A930208(v154, v108 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v137, &qword_27DFAF228, &qword_23AA12F00);
      v136 = v232;
      v140 = 1;
      v141 = 1 << *(v232 + 32);
      v106 = v235;
      if (v138 >= v141)
      {
        goto LABEL_82;
      }

      v158 = *(v235 + 8 * v241);
      if ((v158 & v240) == 0)
      {
        goto LABEL_83;
      }

      if (v257 != *(v232 + 36))
      {
        goto LABEL_84;
      }

      v159 = v158 & (-2 << (v138 & 0x3F));
      if (v159)
      {
        v141 = __clz(__rbit64(v159)) | v138 & 0x7FFFFFFFFFFFFFC0;
        v103 = v267;
      }

      else
      {
        v160 = v241 << 6;
        v161 = v241 + 1;
        v162 = (v224 + 8 * v241);
        v103 = v267;
        while (v161 < (v141 + 63) >> 6)
        {
          v164 = *v162++;
          v163 = v164;
          v160 += 64;
          ++v161;
          if (v164)
          {
            sub_23A8CA9CC(v138, v257, 0);
            v141 = __clz(__rbit64(v163)) + v160;
            goto LABEL_37;
          }
        }

        sub_23A8CA9CC(v138, v257, 0);
      }

LABEL_37:
      v139 = v239 + 1;
      v138 = v141;
      v137 = v231;
      v32 = v237;
      if (v239 + 1 == v231)
      {

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_54:
  v165 = v108;
  v166 = v108[2];
  v167 = v256;
  v168 = v223;
  if (v166)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
    v169 = sub_23AA0DA44();
  }

  else
  {
    v169 = MEMORY[0x277D84F98];
  }

  v270 = v169;
  v179 = v227;
  sub_23A92CFAC(v165, 1, &v270);
  v114 = v179;
  if (v179)
  {
    goto LABEL_89;
  }

  v180 = v270;
  v181 = v213;
  v182 = HIBYTE(v213) & 0xF;
  v183 = v212;
  if ((v213 & 0x2000000000000000) == 0)
  {
    v182 = v212 & 0xFFFFFFFFFFFFLL;
  }

  if (!v182)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    v193 = v253;
    v194 = v236;
    v217(v195, v253, v236);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v168(v193, v194);
    sub_23A8D50D0(v32, &qword_27DFAF210, &qword_23AA12EE8);
    v168(v167, v194);
    v168(v230, v194);
    return;
  }

  v264 = 0;
  v270 = v212;
  v271 = v213;
  v267 = v180;
  v268 = 1852797802;
  v269 = 0xE400000000000000;
  v184 = v258;
  v185 = v228;
  v186 = v225;
  v225(v258, 1, 1, v228);
  v187 = sub_23AA0D6D4();
  sub_23A8D50D0(v184, &qword_27DFAF208, &qword_23AA12ED8);
  if (v187)
  {
    v270 = v183;
    v271 = v181;
    v268 = 0x7473696C70;
    v269 = 0xE500000000000000;
    v186(v184, 1, 1, v185);
    v188 = sub_23AA0D6D4();
    sub_23A8D50D0(v184, &qword_27DFAF208, &qword_23AA12ED8);

    if (v188)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      v189 = v253;
      v190 = v236;
      v217(v191, v253, v236);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v192 = v223;
      v223(v189, v190);
      sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
      v192(v256, v190);
      v192(v230, v190);
      return;
    }

    sub_23AA0BE64();
    swift_allocObject();
    sub_23AA0BE54();
    v270 = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A930270();
    v203 = v264;
    v204 = sub_23AA0BE44();
    v200 = v223;
    v206 = v256;
    v106 = v236;
    if (v203)
    {

      v200(v253, v106);
      sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
      v200(v206, v106);
      v201 = v230;
      v202 = v106;
      goto LABEL_74;
    }

    v207 = v204;
    v208 = v205;
    sub_23AA0BFF4();
  }

  else
  {

    sub_23AA0BC34();
    swift_allocObject();
    sub_23AA0BC24();
    v270 = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A930270();
    v196 = v264;
    v197 = sub_23AA0BC14();
    if (v196)
    {

      v199 = v236;
      v200 = v223;
      v223(v253, v236);
      sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
      v200(v256, v199);
      v201 = v230;
      v202 = v199;
LABEL_74:
      v200(v201, v202);

      return;
    }

    v207 = v197;
    v208 = v198;
    sub_23AA0BFF4();
    v106 = v236;
  }

  sub_23A8EFA00(v207, v208);

  sub_23AA0BE64();
  swift_allocObject();
  sub_23AA0BE54();
  v270 = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
  sub_23A930270();
  v210 = sub_23AA0BE44();
  v108 = v256;
  v136 = v210;
  v137 = v211;

  v140 = v253;
  sub_23AA0BFF4();
  v227 = 0;
LABEL_85:
  v223(v140, v106);
  sub_23A8EFA00(v136, v137);

  v32 = v237;
  v107 = v248;
LABEL_26:
  if (v221)
  {
    goto LABEL_30;
  }

  v109 = v255;
  sub_23AA0BF34();
  v267 = sub_23AA0BF04();
  v264 = v110;
  v223(v109, v106);
  v111 = [v216 defaultManager];
  v112 = [v111 temporaryDirectory];

  v113 = v243;
  sub_23AA0BF74();

  v114 = &qword_23AA12EE8;
  sub_23A8D50D0(v32, &qword_27DFAF210, &qword_23AA12EE8);
  v220(v113, 0, 1, v106);
  sub_23A930208(v113, v32, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8D5194(v32, v107, &qword_27DFAF210, &qword_23AA12EE8);
  if (v214(v107, 1, v106) == 1)
  {
    __break(1u);
    goto LABEL_87;
  }

  v115 = v107;
  v116 = v247;
  sub_23AA0C0D4();
  sub_23AA0C074();
  (*(v266 + 8))(v116, v265);
  v117 = v244;
  sub_23AA0BF44();

  v114 = &qword_23AA12EE8;
  sub_23A8D50D0(v32, &qword_27DFAF210, &qword_23AA12EE8);
  v118 = v223;
  v223(v115, v106);
  v220(v117, 0, 1, v106);
  sub_23A930208(v117, v32, &qword_27DFAF210, &qword_23AA12EE8);
  v119 = v246;
  sub_23A8D5194(v32, v246, &qword_27DFAF210, &qword_23AA12EE8);
  if (v214(v119, 1, v106) == 1)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:

    __break(1u);
    return;
  }

  v120 = v245;
  v121 = v267;
  v122 = v264;
  sub_23AA0BF44();
  v118(v119, v106);
  v270 = v121;
  v271 = v122;
  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v124 = v103[3];
  v123 = v103[4];

  MEMORY[0x23EE8FCA0](v124, v123);

  v125 = v255;
  sub_23AA0BF44();

  v118(v120, v106);
  v126 = v230;
  v118(v230, v106);
  (*(v238 + 32))(v126, v125, v106);
  v108 = v256;
LABEL_30:
  v127 = v252;
  v128 = v230;
  sub_23AA0BF64();
  sub_23AA0BF24();
  v270 = v251;
  v271 = v250;
  LODWORD(v268) = v249;
  v129 = v227;
  v130 = sub_23A91998C(v254, v128, v127, &v270, &v268);
  if (v129)
  {
    v131 = v127;
    v132 = v223;
    v223(v131, v106);
    sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
    v132(v108, v106);
    v132(v128, v106);
    return;
  }

  if (v221)
  {
    goto LABEL_60;
  }

  v170 = v130;
  v171 = sub_23AA0BF14();
  v114 = v170;
  [v170 saveAndCreateUSDZPackageWithURL_];

  v172 = [v216 defaultManager];
  v173 = v242;
  sub_23A8D5194(v237, v242, &qword_27DFAF210, &qword_23AA12EE8);
  if (v214(v173, 1, v106) == 1)
  {
    goto LABEL_88;
  }

  v174 = sub_23AA0BF14();
  v175 = v223;
  v223(v173, v106);
  v270 = 0;
  v176 = [v172 removeItemAtURL:v174 error:&v270];

  if (v176)
  {
    v177 = v270;
    v130 = v114;
    v127 = v252;
LABEL_60:

    v178 = v223;
    v223(v127, v106);
    sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
    v178(v108, v106);
    v178(v230, v106);
    return;
  }

  v209 = v270;
  sub_23AA0BE74();

  swift_willThrow();
  v175(v252, v106);
  sub_23A8D50D0(v237, &qword_27DFAF210, &qword_23AA12EE8);
  v175(v108, v106);
  v175(v230, v106);
}

id sub_23A91998C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, int *a5)
{
  v167 = a3;
  v171 = a1;
  v9 = sub_23AA0BFB4();
  v168 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v156 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v156 - v16;
  v19 = *a4;
  v18 = a4[1];
  v20 = *a5;
  v21 = sub_23A92D2EC(a2);
  if (!v5)
  {
    v162 = v14;
    v163 = v17;
    v164 = v20;
    v159 = v18;
    v160 = v19;
    v161 = v11;
    v166 = 0;
    v22 = 1836019538;
    v23 = sub_23AA0D104();
    v24 = [v21 metadataWithKey_];

    if (v24 && (v25 = [v24 stringValue], v24, v25))
    {
      v22 = sub_23AA0D134();
      v27 = v26;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    v28 = [v21 rootNode];
    v29 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v30 = [v21 rootNode];
    v165 = v29;
    v31 = sub_23AA0D634();

    if ((v31 & 1) != 0 || (v32 = [v28 path], v33 = objc_msgSend(v32, sel_stringValue), v32, !v33))
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v34 = sub_23AA0D134();
      v36 = v35;
    }

    v169 = v34;
    v170 = v36;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v22, v27);

    v38 = v169;
    v37 = v170;
    v39 = objc_allocWithZone(MEMORY[0x277D77888]);
    v40 = sub_23AA0D104();
    v41 = [v39 initWithString_];

    if (v41)
    {
      v157 = v9;
      v42 = *MEMORY[0x277D77980];
      v43 = [v21 newNodeAtPath:v41 type:*MEMORY[0x277D77980]];
      if (v43)
      {
        v44 = v43;
        v158 = v42;

        v45 = sub_23AA0D104();
        v46 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v47 = sub_23AA0D104();
        v48 = [v46 byte_278B65578];

        v49 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v44 setMetadataWithKey:v45 value:v49];

        v50 = [v21 rootNode];
        v51 = sub_23AA0D634();

        v52 = v44;
        if (v51)
        {
          v53 = 0;
          v54 = 0xE000000000000000;
          v55 = &off_278B65000;
          v56 = 0x277D77000;
        }

        else
        {
          v59 = [v44 path];
          v60 = [v59 stringValue];

          v56 = 0x277D77000uLL;
          if (v60)
          {
            v53 = sub_23AA0D134();
            v54 = v61;
          }

          else
          {
            v53 = 0;
            v54 = 0xE000000000000000;
          }

          v55 = &off_278B65000;
        }

        v169 = v53;
        v170 = v54;

        MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

        MEMORY[0x23EE8FCA0](0x5F6E6F6974636553, 0xEB00000000707267);

        v63 = v169;
        v62 = v170;
        v64 = objc_allocWithZone(*(v56 + 2184));
        v65 = sub_23AA0D104();
        v66 = [v64 *(v55 + 469)];

        if (!v66)
        {
          type metadata accessor for USDModel.Error(0);
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
          swift_allocError();
          *v80 = v63;
          v80[1] = v62;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return v21;
        }

        v67 = [v21 newNodeAtPath:v66 type:v158];
        if (!v67)
        {
          type metadata accessor for USDModel.Error(0);
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
          swift_allocError();
          *v82 = v63;
          v82[1] = v62;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return v21;
        }

        v68 = v67;

        v69 = sub_23AA0D104();
        v70 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v71 = sub_23AA0D104();
        v72 = v55;
        v73 = v71;
        v74 = [v70 v72 + 1400];

        v75 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v68 setMetadataWithKey:v69 value:v75];

        v76 = v171[3];
        v77 = v171[4];
        __swift_project_boxed_opaque_existential_1(v171, v76);
        v78 = (*(v77 + 72))(v76, v77);
        v79 = v166;
        sub_23A92DFB8(v78, v68, v21);
        v166 = v79;
        if (v79)
        {

          return v21;
        }

        v83 = v164;
        if ((v164 & 2) != 0)
        {
          v86 = [v21 rootNode];
          v87 = sub_23AA0D634();

          v156 = v52;
          if ((v87 & 1) != 0 || (v88 = [v52 path], v89 = objc_msgSend(v88, sel_stringValue), v88, !v89))
          {
            v90 = 0;
            v92 = 0xE000000000000000;
          }

          else
          {
            v90 = sub_23AA0D134();
            v92 = v91;
          }

          v169 = v90;
          v170 = v92;

          MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

          MEMORY[0x23EE8FCA0](0x7072675F6873654DLL, 0xE800000000000000);

          v94 = v169;
          v93 = v170;
          v95 = objc_allocWithZone(MEMORY[0x277D77888]);
          v96 = sub_23AA0D104();
          v97 = [v95 initWithString_];

          if (!v97)
          {
            type metadata accessor for USDModel.Error(0);
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
            swift_allocError();
            *v107 = v94;
            v107[1] = v93;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return v21;
          }

          v98 = [v21 newNodeAtPath:v97 type:v158];
          if (!v98)
          {
            type metadata accessor for USDModel.Error(0);
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
            swift_allocError();
            *v108 = v94;
            v108[1] = v93;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return v21;
          }

          v99 = v98;

          v100 = sub_23AA0D104();
          v101 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v102 = sub_23AA0D104();
          v103 = [v101 byte_278B65578];

          v104 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
          [v99 setMetadataWithKey:v100 value:v104];

          v105 = v163;
          sub_23AA0BF44();
          v169 = 0;
          v170 = 0;
          v106 = v166;
          sub_23A91ADB0(v171, v99, v21, v105, &v169);
          v166 = v106;
          if (v106)
          {
            (*(v168 + 8))(v105, v157);

            goto LABEL_51;
          }

          (*(v168 + 8))(v105, v157);

          v84 = &off_278B65000;
          v52 = v156;
          v83 = v164;
          v85 = v158;
          if ((v164 & 1) == 0)
          {
LABEL_29:
            if ((v83 & 4) == 0)
            {
              goto LABEL_30;
            }

LABEL_55:
            v163 = v68;
            v132 = [v21 rootNode];
            v133 = sub_23AA0D634();

            if (v133)
            {
              v134 = 0;
              v135 = 0xE000000000000000;
            }

            else
            {
              v136 = [v52 path];
              v137 = [v136 stringValue];

              if (v137)
              {
                v134 = sub_23AA0D134();
                v135 = v138;
              }

              else
              {
                v134 = 0;
                v135 = 0xE000000000000000;
              }

              v85 = v158;
            }

            v169 = v134;
            v170 = v135;

            MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

            MEMORY[0x23EE8FCA0](0x72675F6C65646F4DLL, 0xE900000000000070);

            v140 = v169;
            v139 = v170;
            v141 = objc_allocWithZone(MEMORY[0x277D77888]);
            v142 = sub_23AA0D104();
            v143 = [v141 *(v84 + 469)];

            if (v143)
            {
              v144 = [v21 newNodeAtPath:v143 type:v85];
              if (v144)
              {
                v68 = v144;

                v145 = sub_23AA0D104();
                v146 = objc_allocWithZone(MEMORY[0x277D778B0]);
                v147 = sub_23AA0D104();
                v148 = v84;
                v149 = v147;
                v150 = [v146 v148 + 1400];

                v151 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
                [v68 setMetadataWithKey:v145 value:v151];

                v152 = v161;
                sub_23AA0BF44();
                v169 = v160;
                v170 = v159;
                v153 = v166;
                sub_23A91ADB0(v171, v68, v21, v152, &v169);
                v166 = v153;
                if (v153)
                {
                  (*(v168 + 8))(v152, v157);

                  goto LABEL_31;
                }

                (*(v168 + 8))(v152, v157);

                v68 = v163;
LABEL_30:
                [v21 save];

LABEL_31:
                return v21;
              }

              type metadata accessor for USDModel.Error(0);
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
              swift_allocError();
              *v155 = v140;
              v155[1] = v139;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

            else
            {
              type metadata accessor for USDModel.Error(0);
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
              swift_allocError();
              *v154 = v140;
              v154[1] = v139;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

LABEL_67:

            return v21;
          }
        }

        else
        {
          v84 = &off_278B65000;
          v85 = v158;
          if ((v164 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v163 = v68;
        v109 = [v21 rootNode];
        v110 = sub_23AA0D634();

        v156 = v52;
        if ((v110 & 1) != 0 || (v111 = [v52 path], v112 = objc_msgSend(v111, sel_stringValue), v111, !v112))
        {
          v113 = 0;
          v115 = 0xE000000000000000;
        }

        else
        {
          v113 = sub_23AA0D134();
          v115 = v114;
        }

        v169 = v113;
        v170 = v115;

        MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

        MEMORY[0x23EE8FCA0](0x7274656D61726150, 0xEE007072675F6369);

        v117 = v169;
        v116 = v170;
        v118 = objc_allocWithZone(MEMORY[0x277D77888]);
        v119 = sub_23AA0D104();
        v120 = [v118 *(v84 + 469)];

        if (!v120)
        {
          type metadata accessor for USDModel.Error(0);
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
          swift_allocError();
          *v130 = v117;
          v130[1] = v116;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_67;
        }

        v121 = [v21 newNodeAtPath:v120 type:v158];
        if (!v121)
        {
          type metadata accessor for USDModel.Error(0);
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
          swift_allocError();
          *v131 = v117;
          v131[1] = v116;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_67;
        }

        v99 = v121;

        v122 = sub_23AA0D104();
        v123 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v124 = v84;
        v125 = sub_23AA0D104();
        v126 = [v123 v124 + 1400];

        v127 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v99 setMetadataWithKey:v122 value:v127];

        v128 = v162;
        sub_23AA0BF44();
        v129 = v166;
        sub_23A926A94(v171, v99, v21, v128);
        v166 = v129;
        if (!v129)
        {
          (*(v168 + 8))(v128, v157);

          v84 = v124;
          v52 = v156;
          v68 = v163;
          v85 = v158;
          if ((v164 & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_55;
        }

        (*(v168 + 8))(v128, v157);

LABEL_51:
        return v21;
      }

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v58 = v38;
      v58[1] = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v57 = v38;
      v57[1] = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return v21;
}

void sub_23A91ADB0(void *a1, void *a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v795 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v9 - 8);
  v767 = &v756 - v10;
  v771 = sub_23AA0C0E4();
  v761 = *(v771 - 8);
  MEMORY[0x28223BE20](v771);
  v766 = &v756 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v774 = &v756 - v13;
  v770 = type metadata accessor for CapturedRoom.Object(0);
  v780 = *(v770 - 8);
  MEMORY[0x28223BE20](v770 - 8);
  v779 = &v756 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v762 = &v756 - v16;
  MEMORY[0x28223BE20](v17);
  v775 = &v756 - v18;
  MEMORY[0x28223BE20](v19);
  v772 = &v756 - v20;
  v852 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v21 = *(v852 - 1);
  MEMORY[0x28223BE20](v852);
  v763 = (&v756 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v792 = (&v756 - v24);
  MEMORY[0x28223BE20](v25);
  v789 = (&v756 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v27 - 8);
  v769 = &v756 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v809 = &v756 - v30;
  MEMORY[0x28223BE20](v31);
  v802 = &v756 - v32;
  MEMORY[0x28223BE20](v33);
  v803 = &v756 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v35 - 8);
  v781 = (&v756 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v782 = (&v756 - v38);
  MEMORY[0x28223BE20](v39);
  v827 = &v756 - v40;
  MEMORY[0x28223BE20](v41);
  v826 = &v756 - v42;
  MEMORY[0x28223BE20](v43);
  v820 = &v756 - v44;
  MEMORY[0x28223BE20](v45);
  v819 = &v756 - v46;
  MEMORY[0x28223BE20](v47);
  v837.i64[0] = &v756 - v48;
  MEMORY[0x28223BE20](v49);
  v836 = &v756 - v50;
  MEMORY[0x28223BE20](v51);
  v828 = &v756 - v52;
  MEMORY[0x28223BE20](v53);
  v829 = (&v756 - v54);
  v849 = type metadata accessor for CapturedRoom.Surface(0);
  v855 = *(v849 - 8);
  MEMORY[0x28223BE20](v849);
  v783 = &v756 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v848.i64[0] = &v756 - v57;
  MEMORY[0x28223BE20](v58);
  v838 = &v756 - v59;
  MEMORY[0x28223BE20](v60);
  v847.i64[0] = &v756 - v61;
  MEMORY[0x28223BE20](v62);
  v850.i64[0] = &v756 - v63;
  MEMORY[0x28223BE20](v64);
  v845.i64[0] = &v756 - v65;
  MEMORY[0x28223BE20](v66);
  v843 = (&v756 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  MEMORY[0x28223BE20](v68 - 8);
  v813 = &v756 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v812 = (&v756 - v71);
  v842 = sub_23AA0BFB4();
  v72 = *(v842 - 8);
  MEMORY[0x28223BE20](v842);
  v773 = &v756 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v768 = (&v756 - v75);
  MEMORY[0x28223BE20](v76);
  v778 = &v756 - v77;
  MEMORY[0x28223BE20](v78);
  v777 = &v756 - v79;
  MEMORY[0x28223BE20](v80);
  v776 = &v756 - v81;
  MEMORY[0x28223BE20](v82);
  v839 = (&v756 - v83);
  MEMORY[0x28223BE20](v84);
  v831 = (&v756 - v85);
  MEMORY[0x28223BE20](v86);
  v835 = &v756 - v87;
  MEMORY[0x28223BE20](v88);
  v822 = &v756 - v89;
  MEMORY[0x28223BE20](v90);
  v815 = &v756 - v91;
  MEMORY[0x28223BE20](v92);
  *&v844 = &v756 - v93;
  MEMORY[0x28223BE20](v94);
  v823 = &v756 - v95;
  v96 = a5[1];
  v765 = *a5;
  v764 = v96;
  v97 = a1[3];
  v98 = a1[4];
  v816 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v97);
  v825 = sub_23A91408C(v97, v98);
  v830 = v99;
  v100 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v833 = a3;
  v101 = a3;
  v102 = a2;
  v103 = [v101 rootNode];
  v832 = v100;
  LOBYTE(v100) = sub_23AA0D634();

  if ((v100 & 1) != 0 || (v104 = [a2 path], v105 = objc_msgSend(v104, sel_stringValue), v104, !v105))
  {
    v106 = 0;
    v108 = 0xE000000000000000;
  }

  else
  {
    v106 = sub_23AA0D134();
    v108 = v107;
  }

  v865 = v106;
  v866 = v108;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x7072675F68637241, 0xE800000000000000);

  v110 = v865;
  v109 = v866;
  v111 = objc_allocWithZone(MEMORY[0x277D77888]);
  v112 = sub_23AA0D104();
  v113 = [v111 initWithString_];

  if (!v113)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v462 = v110;
    v462[1] = v109;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v790 = *MEMORY[0x277D77980];
  v114 = [v833 newNodeAtPath:v113 type:?];
  if (!v114)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v463 = v110;
    v463[1] = v109;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v757 = v102;
  v115 = v114;

  v116 = sub_23AA0D104();
  v117 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v118 = sub_23AA0D104();
  v119 = [v117 initWithString_];

  v120 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v801 = v115;
  [v115 setMetadataWithKey:v116 value:v120];

  sub_23AA0BF44();
  v121 = v816[3];
  v122 = v816[4];
  __swift_project_boxed_opaque_existential_1(v816, v121);
  v123 = (*(v122 + 24))(v121, v122);
  v805 = "modelPositionAndDimensionsCache";
  v866 = 0;
  v867 = 0;
  v851 = (v21 + 48);
  v760 = (v72 + 32);
  v865 = v123;
  v808 = *MEMORY[0x277D77968];
  v806 = *MEMORY[0x277D77948];
  v841 = (v72 + 8);
  v804 = xmmword_23AA11BB0;
  v788 = xmmword_23AA11AF0;
  while (1)
  {
    v124 = v813;
    sub_23A9166E4(v813);
    v125 = v812;
    sub_23A930208(v124, v812, &qword_27DFAF1F8, &qword_23AA12EC8);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
    if ((*(*(v126 - 8) + 48))(v125, 1, v126) == 1)
    {
      break;
    }

    v127 = *v125;
    sub_23A92FF30(v125 + *(v126 + 48), v843, type metadata accessor for CapturedRoom.Surface);
    *&v864 = 0x5F6C6C6157;
    *(&v864 + 1) = 0xE500000000000000;
    v868 = v127;
    v128 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v128);

    MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
    v129 = v864;
    v130 = [v833 rootNode];
    v131 = v801;
    v132 = sub_23AA0D634();

    if ((v132 & 1) != 0 || (v133 = [v131 path], v134 = objc_msgSend(v133, sel_stringValue), v133, !v134))
    {
      v135 = 0;
      v137 = 0xE000000000000000;
    }

    else
    {
      v135 = sub_23AA0D134();
      v137 = v136;
    }

    *&v864 = v135;
    *(&v864 + 1) = v137;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v129, *(&v129 + 1));

    v138 = v864;
    v139 = objc_allocWithZone(MEMORY[0x277D77888]);
    v140 = sub_23AA0D104();
    v141 = [v139 initWithString_];

    if (!v141)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v495 = v138;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v496 = v801;
LABEL_207:

      (*v841)(v823, v842);
      sub_23A92FED0(v843, type metadata accessor for CapturedRoom.Surface);
      return;
    }

    v142 = [v833 newNodeAtPath:v141 type:v790];
    if (!v142)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v497 = v138;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v496 = v141;
      goto LABEL_207;
    }

    v143 = v142;

    v144 = sub_23AA0D104();
    v145 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v146 = sub_23AA0D104();
    v147 = [v145 initWithString_];

    v148 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    v840 = v143;
    [v143 setMetadataWithKey:v144 value:v148];

    *&v864 = 1819042135;
    *(&v864 + 1) = 0xE400000000000000;
    v868 = v127;
    v149 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v149);

    sub_23AA0BF44();

    v150 = v816;
    v151 = v816[3];
    v152 = v816[4];
    __swift_project_boxed_opaque_existential_1(v816, v151);
    v153 = (*(v152 + 32))(v151, v152);
    MEMORY[0x28223BE20](v153);
    v154 = v843;
    *(&v756 - 2) = v843;
    v155 = v854;
    sub_23A9BD114(sub_23A9305E0, (&v756 - 4), v156);
    v158 = v157;
    v159 = v155;
    v160 = v150[3];
    v161 = v150[4];
    __swift_project_boxed_opaque_existential_1(v150, v160);
    v162 = (*(v161 + 40))(v160, v161);
    MEMORY[0x28223BE20](v162);
    *(&v756 - 2) = v154;
    sub_23A9BD114(sub_23A9300A4, (&v756 - 4), v163);
    v165 = v164;
    v166 = v150[3];
    v167 = v150[4];
    __swift_project_boxed_opaque_existential_1(v150, v166);
    v168 = (*(v167 + 48))(v166, v167);
    MEMORY[0x28223BE20](v168);
    *(&v756 - 2) = v154;
    sub_23A9BD114(sub_23A9305E0, (&v756 - 4), v169);
    v171 = v170;
    v172 = v150[3];
    v173 = v150[4];
    __swift_project_boxed_opaque_existential_1(v150, v172);
    v174 = (*(v173 + 56))(v172, v173);
    MEMORY[0x28223BE20](v174);
    *(&v756 - 2) = v154;
    sub_23A9BD16C(sub_23A9300C4, (&v756 - 4), v175);
    v814 = v176;
    *&v864 = v158;

    sub_23A911B78(v177);

    v834 = v171;
    sub_23A911B78(v178);
    v179 = v154[1];
    v799 = v179;
    v821 = v158;
    v824 = v165;
    if (v179.f32[2] <= 0.0)
    {
      v180 = 0.0;
      v183 = v825;
      v184 = v849;
      if ((v154->i8[0] - 2) > 3u)
      {
        v181 = 0.08;
      }

      else
      {
        v181 = flt_23AA11F40[(v154->i8[0] - 2)];
      }

      v182 = v830;
    }

    else
    {
      v180 = v179.f32[2] * 0.5;
      v181 = v179.f32[2] * 0.5;
      v182 = v830;
      v183 = v825;
      v184 = v849;
    }

    v853 = v864;
    v185 = *(v184 + 44);
    if (*(v183 + 16) && (v186 = sub_23A9EDD28(v843 + v185), (v187 & 1) != 0))
    {
      v188 = v186;
      v189 = *(v183 + 56);
      v190 = type metadata accessor for ScanItemStrut(0);
      v191 = *(v190 - 8);
      v192 = v189 + *(v191 + 72) * v188;
      v182 = v830;
      v193 = v829;
      sub_23A930548(v192, v829, type metadata accessor for ScanItemStrut);
      (*(v191 + 56))(v193, 0, 1, v190);
    }

    else
    {
      v194 = type metadata accessor for ScanItemStrut(0);
      (*(*(v194 - 8) + 56))(v829, 1, 1, v194);
    }

    v195 = v822;
    if (*(v182 + 16) && (v196 = sub_23A9EDD28(v843 + v185), (v197 & 1) != 0))
    {
      v198 = v196;
      v199 = *(v182 + 56);
      v200 = type metadata accessor for ScanItemStrut(0);
      v201 = *(v200 - 8);
      v202 = v199 + *(v201 + 72) * v198;
      v203 = v828;
      sub_23A930548(v202, v828, type metadata accessor for ScanItemStrut);
      (*(v201 + 56))(v203, 0, 1, v200);
      v195 = v822;
    }

    else
    {
      v204 = type metadata accessor for ScanItemStrut(0);
      (*(*(v204 - 8) + 56))(v828, 1, 1, v204);
    }

    v205 = v846[2];
    v206 = *(v205 + 16);

    if (!v206 || (v207 = sub_23A9EDD28(v843 + v185), (v208 & 1) == 0))
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      v465 = swift_allocError();
      v467 = v466;
      v468 = v843;
      *v466 = sub_23AA0C074();
      v467[1] = v469;
      swift_storeEnumTagMultiPayload();
      v854 = v465;
      swift_willThrow();

      sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
      v470 = *v841;
      v471 = &v862;
      goto LABEL_191;
    }

    v209 = (*(v205 + 56) + 16 * v207);
    v211 = *v209;
    v210 = v209[1];

    *&v864 = v211;
    *(&v864 + 1) = v210;

    MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
    v212 = v846[3];
    v213 = v846[4];

    MEMORY[0x23EE8FCA0](v212, v213);

    sub_23AA0BF44();

    v214 = sub_23A92D2EC(v195);
    if (v159)
    {
      v854 = v159;

      v498 = *v841;
      v499 = v842;
      (*v841)(v195, v842);
      sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
      v498(v844, v499);

      v498(v823, v499);
      goto LABEL_212;
    }

    v215 = v214;
    v216 = sub_23AA0BF04();
    v218 = v217;
    v219 = [v215 rootNode];
    v220 = sub_23A92EC38(v211, v210, v216, v218, v219, v215);
    v854 = 0;
    v221 = v220;
    v810.i64[0] = v211;
    v811.i64[0] = v210;

    v222 = sub_23AA0D104();
    v817.i64[0] = v221;
    v223 = v843;
    sub_23AA0C074();
    v818.n128_u64[0] = v215;
    v224 = objc_allocWithZone(MEMORY[0x277D77878]);
    v225 = sub_23AA0D104();

    v226 = [v224 initWithString_];

    [v817.i64[0] setCustomMetadata:v222 value:v226];
    v227 = sub_23AA0D104();
    v228 = v223->i8[0];
    v229 = v817.i64[0];
    LOBYTE(v864) = v228;
    *&v864 = sub_23AA0D1A4();
    *(&v864 + 1) = v230;
    v787 = sub_23A92F104();
    sub_23AA0D6A4();

    v231 = objc_allocWithZone(MEMORY[0x277D77878]);
    v232 = sub_23AA0D104();

    v233 = [v231 initWithString_];

    [v229 setCustomMetadata:v227 value:v233];
    v234 = [v818.n128_u64[0] rootNode];
    LOBYTE(v232) = sub_23AA0D634();

    if (v232)
    {
      v235 = 0;
      v236 = 0xE000000000000000;
      v237 = v843;
      v238 = v803;
    }

    else
    {
      v239 = [v229 path];
      v240 = [v239 stringValue];

      v238 = v803;
      if (v240)
      {
        v235 = sub_23AA0D134();
        v236 = v241;
      }

      else
      {
        v235 = 0;
        v236 = 0xE000000000000000;
      }

      v237 = v843;
    }

    v242 = v811.i64[0];
    v243 = v810.i64[0];
    *&v864 = v235;
    *(&v864 + 1) = v236;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v243, v242);

    v244 = v864;
    v245 = objc_allocWithZone(MEMORY[0x277D77888]);
    v246 = sub_23AA0D104();
    v247 = [v245 initWithString_];

    if (!v247)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      v500 = swift_allocError();
      *v501 = v244;
      swift_storeEnumTagMultiPayload();
      v854 = v500;
      swift_willThrow();
      v502 = v801;
      v247 = v229;
      v229 = v840;
LABEL_211:

      v505 = *v841;
      v506 = v842;
      (*v841)(v822, v842);
      sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
      v505(v844, v506);
      v505(v823, v506);
LABEL_212:
      v507 = &v861;
LABEL_213:
      v473 = *(v507 - 32);
LABEL_214:
      v494 = type metadata accessor for CapturedRoom.Surface;
      goto LABEL_215;
    }

    v248 = [v818.n128_u64[0] newNodeAtPath:v247 type:v808];
    if (!v248)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      v503 = swift_allocError();
      *v504 = v244;
      swift_storeEnumTagMultiPayload();
      v854 = v503;
      swift_willThrow();

      v502 = v840;
      goto LABEL_211;
    }

    v249 = v248;

    v250 = sub_23AA0D104();
    v807.i64[0] = v249;
    v251 = [v249 newPropertyWithName:v250 type:v806 role:0];

    if (!v251)
    {
      goto LABEL_359;
    }

    v786 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v252 = swift_allocObject();
    *(v252 + 16) = v804;
    v253 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v254 = sub_23AA0D104();
    v255 = [v253 initWithString_];

    *(v252 + 32) = v255;
    v785 = sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v256 = sub_23AA0D2E4();

    v798.i64[0] = v251;
    [v251 setTokenArray_];

    v869.columns[1] = *(v237 + 48);
    v869.columns[2] = *(v237 + 64);
    v869.columns[3] = *(v237 + 80);
    v797 = *(v237 + 32);
    v869.columns[0] = v797;
    v796 = v869.columns[1];
    v794 = v869.columns[2];
    v793 = v869.columns[3];
    v870 = __invert_f4(v869);
    *&v864 = MEMORY[0x277D84F90];
    v258 = v853[2];
    v259 = v849;
    v860 = v870.columns[0];
    v859 = v870.columns[1];
    v858 = v870.columns[2];
    v857 = v870.columns[3];
    if (v258)
    {
      v260.n128_f64[0] = MEMORY[0x28223BE20](v257);
      *(&v756 - 5) = v260;
      *(&v756 - 4) = v261;
      *(&v756 - 3) = v262;
      *(&v756 - 2) = v263;
      *(&v756 - 2) = v237;
      v264 = v854;
      sub_23A97E54C(sub_23A9305B0, (&v756 - 12), v265, v260);
      v854 = v264;
      sub_23A912880(v266);
    }

    v267 = v845.i64[0];
    if (*(v814 + 16))
    {
      MEMORY[0x28223BE20](v257);
      v268 = v859;
      *(&v756 - 5) = v860;
      *(&v756 - 4) = v268;
      v269 = v857;
      *(&v756 - 3) = v858;
      *(&v756 - 2) = v269;
      *(&v756 - 2) = v237;
      v270 = v854;
      sub_23A96611C(sub_23A9305B0, (&v756 - 12), v271, v269);
      v854 = v270;
      sub_23A912880(v272);
    }

    v273 = v853;
    v856.i64[0] = v853[2];
    if (v856.i64[0])
    {
      v274 = 0;
      v275 = MEMORY[0x277D84F90];
      while (v274 < v273[2])
      {
        v276 = (v855[80] + 32) & ~v855[80];
        v277 = *(v855 + 9);
        sub_23A930548(v273 + v276 + v277 * v274, v267, type metadata accessor for CapturedRoom.Surface);
        v237 = v259;
        sub_23A8D5194(v267 + v259[13], v238, &qword_27DFAEB38, &unk_23AA11B60);
        if ((*v851)(v238, 1, v852) == 1)
        {
          sub_23A92FED0(v267, type metadata accessor for CapturedRoom.Surface);
          v257 = sub_23A8D50D0(v238, &qword_27DFAEB38, &unk_23AA11B60);
        }

        else
        {
          sub_23A8D50D0(v238, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A92FF30(v267, v850.i64[0], type metadata accessor for CapturedRoom.Surface);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v868 = v275;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A976018(0, *(v275 + 16) + 1, 1);
            v275 = v868;
          }

          v280 = *(v275 + 16);
          v279 = *(v275 + 24);
          if (v280 >= v279 >> 1)
          {
            sub_23A976018((v279 > 1), v280 + 1, 1);
            v275 = v868;
          }

          *(v275 + 16) = v280 + 1;
          v257 = sub_23A92FF30(v850.i64[0], v275 + v276 + v280 * v277, type metadata accessor for CapturedRoom.Surface);
          v259 = v849;
          v267 = v845.i64[0];
        }

        ++v274;
        v273 = v853;
        if (v856.i64[0] == v274)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_219:
      v489 = 0;
      v490 = 0xE000000000000000;
      goto LABEL_220;
    }

    v275 = MEMORY[0x277D84F90];
LABEL_57:
    if (*(v275 + 16))
    {
      v281.n128_f64[0] = MEMORY[0x28223BE20](v257);
      *(&v756 - 5) = v281;
      *(&v756 - 4) = v282;
      *(&v756 - 3) = v283;
      *(&v756 - 2) = v284;
      v285 = v843;
      *(&v756 - 2) = v843;
      v286 = v854;
      sub_23A97E54C(sub_23A9305C8, (&v756 - 12), v275, v281);
      v288 = v287;
      v854 = v286;
    }

    else
    {

      v288 = MEMORY[0x277D84F90];
      v285 = v843;
    }

    v289 = v807.i64[0];
    v290 = v802;
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v291 = off_27DFB17B0;
    swift_beginAccess();
    v860.i64[0] = v291;
    v292 = (v291[138] & 1) == 0 && v285->i8[0] != 5;
    sub_23A8D5194(v285 + v259[13], v290, &qword_27DFAEB38, &unk_23AA11B60);
    v784 = *v851;
    if (v784(v290, 1, v852) == 1)
    {
      v859 = vaddq_f32(v799, 0);

      sub_23A8D50D0(v290, &qword_27DFAEB38, &unk_23AA11B60);
      v293 = *(v285->i64 + v259[15]);
      if (*(v293 + 16))
      {
        v294 = v292;
      }

      else
      {
        v294 = 1;
      }

      if (v294)
      {
        v295 = sub_23A8F89D0(v864, v829, v828, v859, v180, v181);
      }

      else
      {
        type metadata accessor for RoomCaptureGeometryManager();
        swift_initStaticObject();
        sub_23A8F0290(v293, v864, 0, 1, v829, v828, v859, v180, v181, 0.0);
      }

      v302 = v295;

      v303 = v818.n128_u64[0];
      v304 = v811.i64[0];
      v305 = v810.i64[0];
      v289 = v807.i64[0];
    }

    else
    {
      v296 = v799.i32[1];

      v297 = v789;
      sub_23A92FF30(v290, v789, type metadata accessor for CapturedRoom.Surface.Curve);
      v298.n128_u32[0] = v296;
      v299.n128_f32[0] = v180;
      v300.n128_f32[0] = v181;
      sub_23A8FA5A0(v297, v288, v298, v299, v300, v829, v828, 0x3C8EFA35uLL, 1);
      v302 = v301;

      sub_23A92FED0(v297, type metadata accessor for CapturedRoom.Surface.Curve);
      v303 = v818.n128_u64[0];
      v304 = v811.i64[0];
      v305 = v810.i64[0];
    }

    sub_23A92F158(v289, v302, v797, v796, v794, v793);

    v306 = v285->u8[0];
    v307 = *&v788;
    if (v306 != 5)
    {
      v307 = *&v788;
      if (v306 != 2)
      {
        v307 = 0.0;
      }
    }

    if (v306 == 5 || v306 == 2)
    {
      v309 = 1.0;
    }

    else
    {
      v309 = 0.0;
    }

    sub_23A92F638(v289, v305, v304, v303, v307, v309);

    [v303 save];

    v310 = v842;
    (*v760)(v815, v822, v842);
    sub_23A916D14();
    if (v311)
    {
      v312 = sub_23AA0D104();
    }

    else
    {
      v312 = 0;
    }

    v313 = v840;
    [v840 addReferenceWithPath:v312 nodePath:0];

    v314 = v860.i64[0];
    swift_beginAccess();
    if ((*(v314 + 136) & 1) != 0 || (v315 = v860.i64[0], swift_beginAccess(), *(v315 + 137) == 1))
    {
      v316 = *(v285->i64 + v259[16]);
      if (*(v316 + 16))
      {
      }

      else
      {
        sub_23A9BAE80(*v799.i64);
        v318 = v317;
        MEMORY[0x28223BE20](v317);
        *(&v756 - 2) = v285;
        v319 = v854;
        sub_23A965E88(sub_23A9300E4, (&v756 - 4), v318);
        v316 = v320;
        v854 = v319;

        v310 = v842;
      }
    }

    else
    {
      v316 = 0;
    }

    if (*(v860.i64[0] + 136) == 1)
    {
      v759 = *(v821 + 16);
      if (v759)
      {
        v321 = 0;
        v322 = MEMORY[0x277D84F90];
        v758 = v316;
        while (v321 < *(v821 + 16))
        {
          v324 = v847.i64[0];
          sub_23A930548(v821 + ((v855[80] + 32) & ~v855[80]) + *(v855 + 9) * v321, v847.i64[0], type metadata accessor for CapturedRoom.Surface);
          v871.columns[1] = *(v324 + 48);
          v871.columns[2] = *(v324 + 64);
          v871.columns[3] = *(v324 + 80);
          v799 = *(v324 + 32);
          v871.columns[0] = v799;
          v798 = v871.columns[1];
          v797 = v871.columns[2];
          v796 = v871.columns[3];
          v872 = __invert_f4(v871);
          if (!v316)
          {
            goto LABEL_357;
          }

          v810 = v872.columns[3];
          v811 = v872.columns[2];
          v817 = v872.columns[1];
          v818 = v872.columns[0];
          v325 = *(v316 + 16);
          if (v325)
          {
            *&v864 = v322;

            sub_23A975EA4(0, v325, 0);
            v326 = v864;
            v327 = *(v864 + 16);
            v328 = 32;
            v329 = v818;
            v330 = v817;
            v331 = v811;
            v332 = v810;
            do
            {
              v333 = *(v316 + v328);
              *&v864 = v326;
              v334 = v326[3];
              if (v327 >= v334 >> 1)
              {
                v859 = v333;
                sub_23A975EA4((v334 > 1), v327 + 1, 1);
                v333 = v859;
                v332 = v810;
                v331 = v811;
                v330 = v817;
                v329 = v818;
                v326 = v864;
              }

              v326[2] = v327 + 1;
              v326[v327 + 4] = vaddq_f32(v332, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, v333.f32[0]), v330, *v333.f32, 1), v331, v333, 2)).u64[0];
              v328 += 16;
              ++v327;
              --v325;
            }

            while (v325);

            v259 = v849;
          }

          else
          {
            v326 = v322;
          }

          v335 = COERCE_FLOAT(*(v847.i64[0] + 24));
          v807 = *(v847.i64[0] + 16);
          if (v335 <= 0.0)
          {
            v336 = 0.0;
            if ((*v847.i64[0] - 2) > 3u)
            {
              v337 = 0.08;
            }

            else
            {
              v337 = flt_23AA11F40[(*v847.i64[0] - 2)];
            }
          }

          else
          {
            v336 = v335 * 0.5;
            v337 = v335 * 0.5;
          }

          v338 = type metadata accessor for ScanItemStrut(0);
          v339 = *(*(v338 - 8) + 56);
          v339(v836, 1, 1, v338);
          v339(v837.i64[0], 1, 1, v338);
          v340 = v259[11];
          v341 = v846[2];
          if (!*(v341 + 16))
          {
            goto LABEL_195;
          }

          v342 = sub_23A9EDD28(v847.i64[0] + v340);
          if ((v343 & 1) == 0)
          {

LABEL_195:
            type metadata accessor for USDModel.Error(0);
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
            v476 = swift_allocError();
            v478 = v477;
            v479 = v847.i64[0];
            *v477 = sub_23AA0C074();
            v478[1] = v480;
            swift_storeEnumTagMultiPayload();
            v854 = v476;
            swift_willThrow();

            v481 = v842;
            v482 = v841;
LABEL_202:
            v483 = v840;
LABEL_203:

            sub_23A8D50D0(v837.i64[0], &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v836, &unk_27DFAF020, &unk_23AA12300);
            sub_23A92FED0(v479, type metadata accessor for CapturedRoom.Surface);
            v493 = *v482;
            (*v482)(v815, v481);
            sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
            v493(v844, v481);

            v493(v823, v481);
            goto LABEL_204;
          }

          v344 = (*(v341 + 56) + 16 * v342);
          v345 = *v344;
          v346 = v344[1];

          *&v864 = v345;
          *(&v864 + 1) = v346;

          MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
          v347 = v846[3];
          v348 = v846[4];

          MEMORY[0x23EE8FCA0](v347, v348);

          v349 = v835;
          sub_23AA0BF44();

          v350 = v854;
          v351 = sub_23A92D2EC(v349);
          if (v350)
          {
            v854 = v350;
            v482 = v841;
            v481 = v842;
            (*v841)(v349, v842);

            v479 = v847.i64[0];
            v483 = v840;
            goto LABEL_203;
          }

          v352 = v351;
          v793.i64[0] = v321;
          v859.n128_u64[0] = sub_23AA0BF04();
          v354 = v353;
          v355 = [v352 rootNode];
          v858.i64[0] = v345;
          v356 = sub_23A92EC38(v345, v346, v859.n128_i64[0], v354, v355, v352);
          v854 = 0;
          v857.n128_u64[0] = v346;
          v357 = v356;

          v358 = sub_23AA0D104();
          sub_23AA0C074();
          v859.n128_u64[0] = v352;
          v359 = objc_allocWithZone(MEMORY[0x277D77878]);
          v360 = sub_23AA0D104();

          v361 = [v359 initWithString_];

          [v357 setCustomMetadata:v358 value:v361];
          v362 = sub_23AA0D104();
          LOBYTE(v864) = *v847.i64[0];
          *&v864 = sub_23AA0D1A4();
          *(&v864 + 1) = v363;
          sub_23AA0D6A4();

          v364 = v859.n128_u64[0];
          v365 = objc_allocWithZone(MEMORY[0x277D77878]);
          v366 = sub_23AA0D104();

          v367 = v357;
          v368 = [v365 initWithString_];

          [v357 setCustomMetadata:v362 value:v368];
          v369 = [v364 rootNode];
          LOBYTE(v366) = sub_23AA0D634();

          v316 = v758;
          v794.i64[0] = v367;
          if ((v366 & 1) != 0 || (v370 = [v367 path], v371 = objc_msgSend(v370, sel_stringValue), v370, !v371))
          {
            v372 = 0;
            v374 = 0xE000000000000000;
          }

          else
          {
            v372 = sub_23AA0D134();
            v374 = v373;
          }

          v375 = v857.n128_u64[0];
          *&v864 = v372;
          *(&v864 + 1) = v374;

          MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

          MEMORY[0x23EE8FCA0](v858.i64[0], v375);

          v376 = v864;
          v377 = objc_allocWithZone(MEMORY[0x277D77888]);
          v378 = sub_23AA0D104();
          v379 = [v377 initWithString_];

          if (!v379)
          {

            type metadata accessor for USDModel.Error(0);
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
            v484 = swift_allocError();
            *v485 = v376;
            swift_storeEnumTagMultiPayload();
            v854 = v484;
            swift_willThrow();
            v379 = v794.i64[0];
LABEL_201:

            v482 = v841;
            v481 = v842;
            (*v841)(v835, v842);

            v479 = v847.i64[0];
            goto LABEL_202;
          }

          v380 = [v364 newNodeAtPath:v379 type:v808];
          if (!v380)
          {

            type metadata accessor for USDModel.Error(0);
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
            v491 = swift_allocError();
            *v492 = v376;
            swift_storeEnumTagMultiPayload();
            v854 = v491;
            swift_willThrow();

            goto LABEL_201;
          }

          v381 = v380;

          v382 = sub_23AA0D104();
          v383 = [v381 newPropertyWithName:v382 type:v806 role:0];

          if (!v383)
          {
            goto LABEL_358;
          }

          v384 = swift_allocObject();
          *(v384 + 16) = v804;
          v385 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v386 = sub_23AA0D104();
          v387 = [v385 initWithString_];

          *(v384 + 32) = v387;
          v388 = sub_23AA0D2E4();

          v791 = v383;
          [v383 setTokenArray_];

          v390 = MEMORY[0x277D84F90];
          if (*(MEMORY[0x277D84F90] + 16))
          {
            MEMORY[0x28223BE20](v389);
            v391 = v817;
            *(&v756 - 5) = v818;
            *(&v756 - 4) = v391;
            v392 = v810;
            *(&v756 - 3) = v811;
            *(&v756 - 2) = v392;
            *(&v756 - 2) = v847.i64[0];
            v393 = v854;
            sub_23A97E54C(sub_23A9305C8, (&v756 - 12), v390, v392);
            v395 = v394;
            v854 = v393;
          }

          else
          {

            v395 = v390;
          }

          v396 = *(v860.i64[0] + 138);
          v397 = v809;
          v856.i64[0] = v381;
          if (v396)
          {
            v398 = 0;
            v399 = v847.i64[0];
          }

          else
          {
            v399 = v847.i64[0];
            v398 = *v847.i64[0] != 5;
          }

          v400 = v849;
          sub_23A8D5194(v399 + *(v849 + 52), v809, &qword_27DFAEB38, &unk_23AA11B60);
          if (v784(v397, 1, v852) == 1)
          {
            v818 = vaddq_f32(v807, 0);

            sub_23A8D50D0(v397, &qword_27DFAEB38, &unk_23AA11B60);
            v401 = *(v399 + *(v400 + 60));
            if (*(v401 + 16))
            {
              v402 = v398;
            }

            else
            {
              v402 = 1;
            }

            if (v402)
            {
              sub_23A9BAE80(v818.n128_f64[0]);
              v404 = v403;
              type metadata accessor for RoomCaptureGeometryManager();
              swift_initStaticObject();
              v405 = MEMORY[0x277D84F90];
              sub_23A8F0290(v404, MEMORY[0x277D84F90], v326, 1, v836, v837.i64[0], v818, v336, v337, 0.0);
              v407 = v406;
              v322 = v405;
            }

            else
            {
              type metadata accessor for RoomCaptureGeometryManager();
              swift_initStaticObject();
              v322 = MEMORY[0x277D84F90];
              sub_23A8F0290(v401, MEMORY[0x277D84F90], v326, 1, v836, v837.i64[0], v818, v336, v337, 0.0);
              v407 = v414;
            }
          }

          else
          {
            v408 = v807.i32[1];
            v409 = v792;
            sub_23A92FF30(v397, v792, type metadata accessor for CapturedRoom.Surface.Curve);
            v410.n128_u32[0] = v408;
            v411.n128_f32[0] = v336;
            v412.n128_f32[0] = v337;
            sub_23A8FA5A0(v409, v395, v410, v411, v412, v836, v837.i64[0], 0x3C8EFA35uLL, 1);
            v407 = v413;

            sub_23A92FED0(v409, type metadata accessor for CapturedRoom.Surface.Curve);
            v322 = MEMORY[0x277D84F90];
          }

          v313 = v840;
          v415 = v793.i64[0];
          v416 = v858.i64[0];

          sub_23A92F158(v856.i64[0], v407, v799, v798, v797, v796);

          v417 = *v847.i64[0];
          v418 = 0.00781250185;
          if (v417 != 5 && v417 != 2)
          {
            v418 = 0.0;
          }

          if (v417 == 5 || v417 == 2)
          {
            v420 = 1.0;
          }

          else
          {
            v420 = 0.0;
          }

          v421 = v856.i64[0];
          v422 = v416;
          v289 = v857.n128_u64[0];
          v423 = v859.n128_u64[0];
          sub_23A92F638(v856.i64[0], v422, v857.n128_u64[0], v859.n128_u64[0], v418, v420);

          [v423 save];

          sub_23A8D50D0(v837.i64[0], &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v836, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          if (v424)
          {
            v323 = sub_23AA0D104();
          }

          else
          {
            v323 = 0;
          }

          v259 = v849;
          v321 = v415 + 1;
          [v313 addReferenceWithPath:v323 nodePath:0];

          v310 = v842;
          (*v841)(v835, v842);
          sub_23A92FED0(v847.i64[0], type metadata accessor for CapturedRoom.Surface);
          if (v321 == v759)
          {
            goto LABEL_146;
          }
        }

        __break(1u);
LABEL_348:

        type metadata accessor for USDModel.Error(0);
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
        swift_allocError();
        *v752 = v259;
        v752[1] = v322;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_350:

        v754 = *v841;
        v755 = v842;
        (*v841)(v768, v842);
        v754(v776, v755);
        v754(v823, v755);
        return;
      }

LABEL_146:
      v818.n128_u64[0] = *(v824 + 16);
      if (v818.n128_u64[0])
      {
        v425 = 0;
        v237 = v838;
        while (v425 < *(v824 + 16))
        {
          sub_23A930548(v824 + ((v855[80] + 32) & ~v855[80]) + *(v855 + 9) * v425, v237, type metadata accessor for CapturedRoom.Surface);
          if (!v316)
          {
            goto LABEL_356;
          }

          v873 = __invert_f4(*(v237 + 32));
          v859 = v873.columns[0];
          v858 = v873.columns[1];
          v857 = v873.columns[2];
          v856 = v873.columns[3];

          v428 = v854;
          sub_23A916A74(v427, v859, v858, v857, v856);
          v430 = v429;

          v431 = *(v237 + 24);
          if (v431 <= 0.0)
          {
            v432 = 0.0;
            if ((*v237 - 2) > 3u)
            {
              v433 = 0.08;
            }

            else
            {
              v433 = flt_23AA11F40[(*v237 - 2)];
            }
          }

          else
          {
            v432 = v431 * 0.5;
            v433 = v431 * 0.5;
          }

          v434 = type metadata accessor for ScanItemStrut(0);
          v435 = *(*(v434 - 8) + 56);
          v436 = v819;
          v435(v819, 1, 1, v434);
          v437 = v820;
          v435(v820, 1, 1, v434);
          v289 = v831;
          sub_23A922980(v838, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v430, 1, v436, v437, v831, v432, v433, 0.0);
          v854 = v428;
          if (v428)
          {

            sub_23A8D50D0(v437, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v436, &unk_27DFAF020, &unk_23AA12300);
            v464 = &v859;
LABEL_193:
            sub_23A92FED0(v464[-16].n128_i64[0], type metadata accessor for CapturedRoom.Surface);
            v474 = *v841;
            v475 = v842;
            (*v841)(v815, v842);
            sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
            v474(v844, v475);

            v474(v823, v475);
LABEL_204:
            v473 = v843;
            v494 = type metadata accessor for CapturedRoom.Surface;
LABEL_215:
            sub_23A92FED0(v473, v494);
            return;
          }

          sub_23A8D50D0(v437, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v436, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          v313 = v840;
          if (v438)
          {
            v426 = sub_23AA0D104();
            v289 = v831;
          }

          else
          {
            v426 = 0;
          }

          v237 = v838;
          ++v425;
          [v313 addReferenceWithPath:v426 nodePath:0];

          v310 = v842;
          (*v841)(v289, v842);
          sub_23A92FED0(v237, type metadata accessor for CapturedRoom.Surface);
          if (v818.n128_u64[0] == v425)
          {
            goto LABEL_160;
          }
        }

        __break(1u);
LABEL_299:

        v649 = MEMORY[0x277D84F90];
        goto LABEL_300;
      }
    }

LABEL_160:
    v439 = v860.i64[0];
    swift_beginAccess();
    if (*(v439 + 137) == 1)
    {
      v440 = v834;
      v441 = *(v834 + 16);
      if (v441)
      {
        v289 = 0;
        while (v289 < *(v440 + 16))
        {
          v444 = v848.i64[0];
          sub_23A930548(v440 + ((v855[80] + 32) & ~v855[80]) + *(v855 + 9) * v289, v848.i64[0], type metadata accessor for CapturedRoom.Surface);
          v874 = __invert_f4(*(v444 + 32));
          v859 = v874.columns[0];
          v858 = v874.columns[1];
          v857 = v874.columns[2];
          v856 = v874.columns[3];
          if (!v316)
          {
            goto LABEL_355;
          }

          v445 = *(v316 + 16);
          if (v445)
          {
            *&v864 = MEMORY[0x277D84F90];

            sub_23A92B598(v445);
            v446 = v864;
            v447 = 32;
            do
            {
              v860 = *(v316 + v447);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23A975EA4(0, v446[2] + 1, 1);
                v446 = v864;
              }

              v449 = v446[2];
              v448 = v446[3];
              if (v449 >= v448 >> 1)
              {
                sub_23A975EA4((v448 > 1), v449 + 1, 1);
                v446 = v864;
              }

              v450 = vaddq_f32(v856, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v859, v860.f32[0]), v858, *v860.f32, 1), v857, v860, 2)).u64[0];
              v446[2] = v449 + 1;
              v446[v449 + 4] = v450;
              v447 += 16;
              --v445;
            }

            while (v445);
          }

          else
          {
            v446 = MEMORY[0x277D84F90];
          }

          v451 = *(v848.i64[0] + 24);
          if (v451 <= 0.0)
          {
            v452 = 0.0;
            if ((*v848.i64[0] - 2) > 3u)
            {
              v453 = 0.08;
            }

            else
            {
              v453 = flt_23AA11F40[(*v848.i64[0] - 2)];
            }
          }

          else
          {
            v452 = v451 * 0.5;
            v453 = v451 * 0.5;
          }

          v454 = type metadata accessor for ScanItemStrut(0);
          v455 = *(*(v454 - 8) + 56);
          v456 = v826;
          v455(v826, 1, 1, v454);
          v457 = v827;
          v455(v827, 1, 1, v454);
          v443 = v839;
          v458 = v854;
          sub_23A922980(v848.i64[0], MEMORY[0x277D84F90], MEMORY[0x277D84F90], v446, 1, v456, v457, v839, v452, v453, 0.0);
          v854 = v458;
          if (v458)
          {

            sub_23A8D50D0(v457, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v456, &unk_27DFAF020, &unk_23AA12300);
            v464 = &v863;
            goto LABEL_193;
          }

          sub_23A8D50D0(v457, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v456, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          if (v459)
          {
            v442 = sub_23AA0D104();
            v443 = v839;
          }

          else
          {
            v442 = 0;
          }

          v313 = v840;
          ++v289;
          [v840 addReferenceWithPath:v442 nodePath:0];

          v310 = v842;
          (*v841)(v443, v842);
          sub_23A92FED0(v848.i64[0], type metadata accessor for CapturedRoom.Surface);
          v440 = v834;
          if (v289 == v441)
          {
            goto LABEL_185;
          }
        }

        __break(1u);
LABEL_291:

LABEL_292:

        type metadata accessor for USDModel.Error(0);
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
        v661 = swift_allocError();
        v663 = v662;
        v468 = v783;
        *v662 = sub_23AA0C074();
        v663[1] = v664;
        swift_storeEnumTagMultiPayload();
        v854 = v661;
        swift_willThrow();

        sub_23A8D50D0(v781, &unk_27DFAF020, &unk_23AA12300);
        sub_23A8D50D0(v782, &unk_27DFAF020, &unk_23AA12300);
        v470 = *v841;
        v471 = &v800;
LABEL_191:
        v472 = v842;
        v470(*(v471 - 32), v842);
        v470(v823, v472);
        v473 = v468;
        goto LABEL_214;
      }

LABEL_185:

      v460 = v843;
    }

    else
    {

      v460 = v843;
    }

    v461 = *v841;
    (*v841)(v815, v310);
    sub_23A8D50D0(v828, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v829, &unk_27DFAF020, &unk_23AA12300);
    v461(v844, v310);
    sub_23A92FED0(v460, type metadata accessor for CapturedRoom.Surface);
  }

  v237 = &off_278B65000;
  v486 = [v833 rootNode];
  v487 = v757;
  v488 = sub_23AA0D634();

  if (v488)
  {
    v489 = 0;
    v490 = 0xE000000000000000;
    v259 = v849;
  }

  else
  {
    v508 = [v487 path];
    v509 = [v508 stringValue];

    v259 = v849;
    if (!v509)
    {
      goto LABEL_219;
    }

    v489 = sub_23AA0D134();
    v490 = v510;
  }

LABEL_220:
  v865 = v489;
  v866 = v490;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x72675F726F6F6C46, 0xE900000000000070);

  v512 = v865;
  v511 = v866;
  v513 = objc_allocWithZone(MEMORY[0x277D77888]);
  v514 = sub_23AA0D104();
  v515 = [v513 initWithString_];

  if (!v515)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v622 = v512;
    v622[1] = v511;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v623 = v801;
LABEL_274:

    (*v841)(v823, v842);
    return;
  }

  v516 = [v833 newNodeAtPath:v515 type:v790];
  if (!v516)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v624 = v512;
    v624[1] = v511;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v623 = v515;
    goto LABEL_274;
  }

  v289 = v516;

  v517 = sub_23AA0D104();
  v518 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v519 = sub_23AA0D104();
  v520 = [v518 initWithString_];

  v521 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v289 setMetadataWithKey:v517 value:v521];

  sub_23AA0BF44();
  v522 = v816[3];
  v523 = v816[4];
  __swift_project_boxed_opaque_existential_1(v816, v522);
  v524 = (*(v523 + 64))(v522, v523);
  v525 = v524;
  v839 = *(v524 + 16);
  if (v839)
  {
    v526 = 0;
    v840 = (v524 + ((v855[80] + 32) & ~v855[80]));
    v837 = vdupq_n_s32(0x3EA3D70Au);
    v844 = xmmword_23AA11AF0;
    v527 = v783;
    v843 = v289;
    v838 = v524;
    while (1)
    {
      if (v526 >= *(v525 + 16))
      {
LABEL_353:
        __break(1u);
        goto LABEL_354;
      }

      sub_23A930548(v840 + *(v855 + 9) * v526, v527, type metadata accessor for CapturedRoom.Surface);
      v529 = *(v527 + 16);
      v857 = v529;
      if (v529.n128_f32[2] <= 0.0)
      {
        v530 = 0.0;
        if ((*v527 - 2) > 3u)
        {
          v531 = 0.08;
        }

        else
        {
          v531 = flt_23AA11F40[(*v527 - 2)];
        }
      }

      else
      {
        v530 = v529.n128_f32[2] * 0.5;
        v531 = v529.n128_f32[2] * 0.5;
      }

      v532 = type metadata accessor for ScanItemStrut(0);
      v533 = *(*(v532 - 8) + 56);
      v533(v782, 1, 1, v532);
      v533(v781, 1, 1, v532);
      v534 = v259[11];
      v535 = v846[2];
      if (!*(v535 + 16))
      {
        goto LABEL_292;
      }

      v536 = sub_23A9EDD28(&v783[v534]);
      if ((v537 & 1) == 0)
      {
        goto LABEL_291;
      }

      v856.i64[0] = v534;
      v538 = (*(v535 + 56) + 16 * v536);
      v540 = *v538;
      v539 = v538[1];

      *&v864 = v540;
      *(&v864 + 1) = v539;

      MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
      v542 = v846[3];
      v541 = v846[4];

      MEMORY[0x23EE8FCA0](v542, v541);

      v543 = v778;
      sub_23AA0BF44();
      v544 = v543;

      v545 = v854;
      v546 = sub_23A92D2EC(v543);
      if (v545)
      {
        v854 = v545;

        v665 = *v841;
        v666 = v544;
        goto LABEL_297;
      }

      v547 = v546;
      v548 = sub_23AA0BF04();
      v550 = v549;
      v551 = [v547 *(v237 + 3744)];
      v859.n128_u64[0] = v540;
      v860.i64[0] = v539;
      v552 = sub_23A92EC38(v540, v539, v548, v550, v551, v547);
      v854 = 0;
      v553 = v552;
      v853 = v526;

      v554 = sub_23AA0D104();
      v858.i64[0] = v547;
      v555 = v783;
      sub_23AA0C074();
      v556 = objc_allocWithZone(MEMORY[0x277D77878]);
      v557 = sub_23AA0D104();

      v558 = [v556 initWithString_];

      [(float32x4_t *)v553 setCustomMetadata:v554 value:v558];
      v559 = sub_23AA0D104();
      v560 = *v555;
      v561 = v858.i64[0];
      LOBYTE(v864) = v560;
      *&v864 = sub_23AA0D1A4();
      *(&v864 + 1) = v562;
      sub_23A92F104();
      sub_23AA0D6A4();

      v563 = objc_allocWithZone(MEMORY[0x277D77878]);
      v564 = sub_23AA0D104();

      v565 = [v563 initWithString_];

      [(float32x4_t *)v553 setCustomMetadata:v559 value:v565];
      v566 = [v561 rootNode];
      LOBYTE(v564) = sub_23AA0D634();

      if (v564)
      {
        v567 = 0;
        v568 = 0xE000000000000000;
        v569 = v783;
        v570 = v860.i64[0];
        v571 = v859.n128_u64[0];
      }

      else
      {
        v572 = [(float32x4_t *)v553 path];
        v573 = [v572 stringValue];

        v570 = v860.i64[0];
        v571 = v859.n128_u64[0];
        if (v573)
        {
          v567 = sub_23AA0D134();
          v568 = v574;
        }

        else
        {
          v567 = 0;
          v568 = 0xE000000000000000;
        }

        v569 = v783;
      }

      *&v864 = v567;
      *(&v864 + 1) = v568;

      MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

      MEMORY[0x23EE8FCA0](v571, v570);

      v575 = v864;
      v576 = objc_allocWithZone(MEMORY[0x277D77888]);
      v577 = sub_23AA0D104();
      v578 = [v576 initWithString_];

      if (!v578)
      {

        type metadata accessor for USDModel.Error(0);
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
        v667 = swift_allocError();
        *v668 = v575;
        swift_storeEnumTagMultiPayload();
        v854 = v667;
        swift_willThrow();
        v669 = v843;
        goto LABEL_296;
      }

      v579 = [v561 newNodeAtPath:v578 type:v808];
      if (!v579)
      {
        break;
      }

      v580 = v579;

      v581 = sub_23AA0D104();
      v582 = [v580 newPropertyWithName:v581 type:v806 role:0];

      if (!v582)
      {
        goto LABEL_360;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v583 = swift_allocObject();
      *(v583 + 16) = v804;
      v584 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v585 = sub_23AA0D104();
      v586 = [v584 initWithString_];

      *(v583 + 32) = v586;
      sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
      v587 = sub_23AA0D2E4();

      [v582 setTokenArray_];

      v875.columns[1] = *(v569 + 3);
      v875.columns[2] = *(v569 + 4);
      v875.columns[3] = *(v569 + 5);
      v850 = *(v569 + 2);
      v875.columns[0] = v850;
      v848 = v875.columns[1];
      v847 = v875.columns[2];
      v845 = v875.columns[3];
      __invert_f4(v875);
      v589 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        v590.n128_f64[0] = MEMORY[0x28223BE20](v588);
        *(&v756 - 5) = v590;
        *(&v756 - 4) = v591;
        *(&v756 - 3) = v592;
        *(&v756 - 2) = v593;
        *(&v756 - 2) = v569;
        v594 = v854;
        sub_23A97E54C(sub_23A9305C8, (&v756 - 12), v589, v590);
        v596 = v595;
        v854 = v594;
      }

      else
      {

        v596 = v589;
      }

      v597 = v769;
      v598 = v853;
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v853 = v553;
      v599 = off_27DFB17B0;
      swift_beginAccess();
      v600 = v599[138];
      v856.i64[0] = v582;
      v601 = (v600 & 1) == 0 && *v569 != 5;
      v602 = v849;
      sub_23A8D5194(&v569[*(v849 + 52)], v597, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*v851)(v597, 1, v852) == 1)
      {
        v857 = vaddq_f32(v857, v837);

        sub_23A8D50D0(v597, &qword_27DFAEB38, &unk_23AA11B60);
        v603 = *&v569[*(v602 + 60)];
        if (*(v603 + 16))
        {
          v604 = v601;
        }

        else
        {
          v604 = 1;
        }

        if (v604)
        {
          v605 = sub_23A8F89D0(MEMORY[0x277D84F90], v782, v781, v857, v530, v531);
        }

        else
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          sub_23A8F0290(v603, MEMORY[0x277D84F90], 0, 0, v782, v781, v857, v530, v531, 0.16);
        }

        v612 = v605;
      }

      else
      {
        v606 = v857.n128_u32[1];
        v607 = v763;
        sub_23A92FF30(v597, v763, type metadata accessor for CapturedRoom.Surface.Curve);
        v608.n128_u32[0] = v606;
        v609.n128_f32[0] = v530;
        v610.n128_f32[0] = v531;
        sub_23A8FA5A0(v607, v596, v608, v609, v610, v782, v781, 0x3C8EFA35uLL, 1);
        v612 = v611;

        sub_23A92FED0(v607, type metadata accessor for CapturedRoom.Surface.Curve);
      }

      v613 = v842;
      v614 = v858.i64[0];
      v615 = v853;
      v525 = v838;

      sub_23A92F158(v580, v612, v850, v848, v847, v845);

      v616 = *v569;
      v617 = *&v844;
      v618 = v778;
      if (v616 != 5)
      {
        v617 = *&v844;
        if (v616 != 2)
        {
          v617 = 0.0;
        }
      }

      if (v616 == 5 || v616 == 2)
      {
        v620 = 1.0;
      }

      else
      {
        v620 = 0.0;
      }

      sub_23A92F638(v580, v859.n128_i64[0], v860.i64[0], v614, v617, v620);

      [v614 save];

      sub_23A8D50D0(v781, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v782, &unk_27DFAF020, &unk_23AA12300);
      (*v760)(v777, v618, v613);
      sub_23A916D14();
      if (v621)
      {
        v528 = sub_23AA0D104();
      }

      else
      {
        v528 = 0;
      }

      v237 = &off_278B65000;
      v259 = v849;
      v289 = v843;
      v526 = v598 + 1;
      [(float32x4_t *)v843 addReferenceWithPath:v528 nodePath:0];

      (*v841)(v777, v613);
      v527 = v783;
      sub_23A92FED0(v783, type metadata accessor for CapturedRoom.Surface);
      if (v839 == v526)
      {
        goto LABEL_275;
      }
    }

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    v670 = swift_allocError();
    *v671 = v575;
    swift_storeEnumTagMultiPayload();
    v854 = v670;
    swift_willThrow();

    v669 = v553;
    v553 = v578;
LABEL_296:

    v665 = *v841;
    v666 = v778;
LABEL_297:
    v672 = v842;
    v665(v666, v842);
    sub_23A8D50D0(v781, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v782, &unk_27DFAF020, &unk_23AA12300);
    v665(v776, v672);
    v665(v823, v672);
    v507 = &v806;
    goto LABEL_213;
  }

LABEL_275:

  v625 = [v833 *(v237 + 3744)];
  v626 = v757;
  v627 = sub_23AA0D634();

  if ((v627 & 1) != 0 || (v628 = [v626 path], v629 = objc_msgSend(v628, sel_stringValue), v628, !v629))
  {
    v630 = 0;
    v632 = 0xE000000000000000;
  }

  else
  {
    v630 = sub_23AA0D134();
    v632 = v631;
  }

  *&v864 = v630;
  *(&v864 + 1) = v632;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x675F7463656A624FLL, 0xEA00000000007072);

  v633 = v864;
  v634 = objc_allocWithZone(MEMORY[0x277D77888]);
  v635 = sub_23AA0D104();
  v636 = [v634 initWithString_];

  if (!v636)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v656 = v633;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v657 = v801;
LABEL_289:

    v659 = *v841;
    v660 = v842;
    (*v841)(v776, v842);
    v659(v823, v660);
    return;
  }

  v637 = [v833 newNodeAtPath:v636 type:v790];
  if (!v637)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v658 = v633;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v657 = v289;
    v289 = v636;
    goto LABEL_289;
  }

  v638 = v637;

  v639 = sub_23AA0D104();
  v640 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v641 = sub_23AA0D104();
  v642 = [v640 initWithString_];

  v643 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v850.i64[0] = v638;
  [v638 setMetadataWithKey:v639 value:v643];

  v644 = v816[3];
  v645 = v816[4];
  __swift_project_boxed_opaque_existential_1(v816, v644);
  v646 = (*(v645 + 56))(v644, v645);
  v647 = *(v646 + 16);
  if (!v647)
  {
    goto LABEL_299;
  }

  v648 = v289;
  *&v864 = MEMORY[0x277D84F90];
  sub_23A97609C(0, v647, 0);
  v649 = v864;
  v650 = v646 + ((*(v780 + 80) + 32) & ~*(v780 + 80));
  v651 = *(v780 + 72);
  do
  {
    v652 = v772;
    sub_23A930548(v650, v772, type metadata accessor for CapturedRoom.Object);
    v653 = *v652;
    sub_23A92FED0(v652, type metadata accessor for CapturedRoom.Object);
    *&v864 = v649;
    v655 = *(v649 + 16);
    v654 = *(v649 + 24);
    if (v655 >= v654 >> 1)
    {
      sub_23A97609C((v654 > 1), v655 + 1, 1);
      v649 = v864;
    }

    *(v649 + 16) = v655 + 1;
    *(v649 + v655 + 32) = v653;
    v650 += v651;
    --v647;
  }

  while (v647);

  v237 = 0x1FB471000;
  v289 = v648;
LABEL_300:
  v673 = sub_23A9F506C(v649);

  v674 = 0;
  v675 = v673 + 56;
  v676 = 1 << *(v673 + 32);
  v677 = -1;
  if (v676 < 64)
  {
    v677 = ~(-1 << v676);
  }

  v678 = v677 & *(v673 + 56);
  v679 = (v676 + 63) >> 6;
  v858.i64[0] = v761 + 48;
  v853 = (v761 + 32);
  v857.n128_u64[0] = v780 + 56;
  v852 = (v761 + 8);
  v680 = v842;
  v681 = v816;
  v843 = v289;
  v849 = v673;
  v845.i64[0] = v673 + 56;
  *&v844 = v679;
  while (1)
  {
    do
    {
      if (!v678)
      {
        v682 = v841;
        while (1)
        {
          v683 = v674 + 1;
          if (__OFADD__(v674, 1))
          {
            goto LABEL_352;
          }

          if (v683 >= v679)
          {

            v749 = *v682;
            v749(v776, v680);
            v749(v823, v680);

            return;
          }

          v678 = *(v675 + 8 * v683);
          ++v674;
          if (v678)
          {
            v674 = v683;
            break;
          }
        }
      }

      v684 = __clz(__rbit64(v678));
      v678 &= v678 - 1;
      v685 = *(*(v673 + 48) + (v684 | (v674 << 6)));
    }

    while (v685 == 15);
    v847.i64[0] = v678;
    v848.i64[0] = v674;
    v686 = v681[3];
    v687 = v681[4];
    __swift_project_boxed_opaque_existential_1(v681, v686);
    v688 = (*(v687 + 56))(v686, v687);
    v689 = *(v688 + 16);
    if (v689)
    {
      v690 = 0;
      v860.i64[0] = MEMORY[0x277D84F90];
      v691 = v762;
      while (v690 < *(v688 + 16))
      {
        v692 = (*(v780 + 80) + 32) & ~*(v780 + 80);
        v693 = *(v780 + 72);
        v694 = v775;
        sub_23A930548(v688 + v692 + v693 * v690, v775, type metadata accessor for CapturedRoom.Object);
        if (*v694 == v685)
        {
          sub_23A92FF30(v694, v691, type metadata accessor for CapturedRoom.Object);
          v695 = v860.i64[0];
          v696 = swift_isUniquelyReferenced_nonNull_native();
          v697 = v695;
          *&v864 = v695;
          if ((v696 & 1) == 0)
          {
            sub_23A9760CC(0, *(v695 + 16) + 1, 1);
            v691 = v762;
            v697 = v864;
          }

          v699 = *(v697 + 16);
          v698 = *(v697 + 24);
          if (v699 >= v698 >> 1)
          {
            sub_23A9760CC((v698 > 1), v699 + 1, 1);
            v691 = v762;
            v697 = v864;
          }

          *(v697 + 16) = v699 + 1;
          v860.i64[0] = v697;
          sub_23A92FF30(v691, v697 + v692 + v699 * v693, type metadata accessor for CapturedRoom.Object);
        }

        else
        {
          sub_23A92FED0(v694, type metadata accessor for CapturedRoom.Object);
        }

        ++v690;
        v237 = 0x1FB471000;
        if (v689 == v690)
        {
          goto LABEL_322;
        }
      }

      __break(1u);
LABEL_352:
      __break(1u);
      goto LABEL_353;
    }

    v860.i64[0] = MEMORY[0x277D84F90];
LABEL_322:

    v856.i64[0] = *(v860.i64[0] + 16);
    if (v856.i64[0])
    {
      break;
    }

    v680 = v842;
LABEL_344:
    v681 = v816;
    v289 = v843;
    v673 = v849;
    v675 = v845.i64[0];
    v674 = v848.i64[0];
    v679 = v844;
    v678 = v847.i64[0];
  }

  LOBYTE(v864) = v685;
  *&v864 = sub_23AA0D1A4();
  *(&v864 + 1) = v700;
  sub_23A92F104();
  v701 = sub_23AA0D6A4();
  v703 = v702;

  *&v864 = v701;
  *(&v864 + 1) = v703;

  MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
  v704 = v864;
  sub_23AA0BF44();

  v705 = [v833 (v237 + 969)];
  v706 = v850.i64[0];
  v707 = sub_23AA0D634();

  if ((v707 & 1) != 0 || (v708 = [v706 path], v709 = objc_msgSend(v708, sel_stringValue), v708, !v709))
  {
    v710 = 0;
    v712 = 0xE000000000000000;
  }

  else
  {
    v710 = sub_23AA0D134();
    v712 = v711;
  }

  *&v864 = v710;
  *(&v864 + 1) = v712;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v704, *(&v704 + 1));

  v322 = *(&v864 + 1);
  v259 = v864;
  v713 = objc_allocWithZone(MEMORY[0x277D77888]);
  v714 = sub_23AA0D104();
  v715 = [v713 initWithString_];

  if (!v715)
  {
    goto LABEL_348;
  }

  v716 = [v833 newNodeAtPath:v715 type:v790];
  if (!v716)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v753 = v259;
    v753[1] = v322;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v843 = v850.i64[0];
    v850.i64[0] = v715;
    goto LABEL_350;
  }

  v717 = v716;

  v718 = sub_23AA0D104();
  v719 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v720 = sub_23AA0D104();
  v721 = [v719 initWithString_];

  v722 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v717 setMetadataWithKey:v718 value:v722];

  v723 = 0;
  v724 = v860.i64[0];
  v851 = ((*(v780 + 80) + 32) & ~*(v780 + 80));
  v855 = v851 + v860.i64[0];
  while (v723 < *(v724 + 16))
  {
    v728 = v779;
    sub_23A930548(&v855[*(v780 + 72) * v723], v779, type metadata accessor for CapturedRoom.Object);
    v729 = v816;
    v730 = v816[3];
    v731 = v816[4];
    __swift_project_boxed_opaque_existential_1(v816, v730);
    v732 = (*(v731 + 56))(v730, v731);
    MEMORY[0x28223BE20](v732);
    *(&v756 - 2) = v728;
    v733 = v854;
    sub_23A9BD16C(sub_23A93000C, (&v756 - 4), v734);
    v859.n128_u64[0] = v735;
    v736 = v770;
    v737 = v767;
    sub_23A8D5194(v728 + *(v770 + 44), v767, &unk_27DFB0970, &qword_23AA14E00);
    v738 = v771;
    if ((*v858.i64[0])(v737, 1, v771) == 1)
    {
      sub_23A8D50D0(v737, &unk_27DFB0970, &qword_23AA14E00);
      v739 = v774;
      (*v857.n128_u64[0])(v774, 1, 1, v736);
      v726 = v841;
    }

    else
    {
      v740 = v766;
      (*v853)(v766, v737, v738);
      v742 = v729[3];
      v741 = v729[4];
      __swift_project_boxed_opaque_existential_1(v729, v742);
      v743 = (*(v741 + 56))(v742, v741);
      MEMORY[0x28223BE20](v743);
      *(&v756 - 2) = v740;
      sub_23A9BD16C(sub_23A93002C, (&v756 - 4), v744);
      if (*(v745 + 16))
      {
        v739 = v774;
        sub_23A930548(v851 + v745, v774, type metadata accessor for CapturedRoom.Object);
        v746 = 0;
        v726 = v841;
      }

      else
      {
        v746 = 1;
        v726 = v841;
        v739 = v774;
      }

      v747 = v770;

      (*v857.n128_u64[0])(v739, v746, 1, v747);
      (*v852)(v766, v771);
    }

    *&v864 = v765;
    *(&v864 + 1) = v764;
    sub_23A924514(v768, v779, v739, v859.n128_i64[0], &v864, v773);
    v854 = v733;
    if (v733)
    {

      sub_23A8D50D0(v774, &qword_27DFB0990, &qword_23AA12EE0);
      v750 = *v726;
      v751 = v842;
      v750(v768, v842);
      v750(v776, v751);
      v750(v823, v751);
      v494 = type metadata accessor for CapturedRoom.Object;
      v473 = v779;
      goto LABEL_215;
    }

    sub_23A916D14();
    if (v748)
    {
      v725 = sub_23AA0D104();
      v726 = v841;
    }

    else
    {
      v725 = 0;
    }

    v237 = 0x1FB471000;
    ++v723;
    [v717 addReferenceWithPath:v725 nodePath:0];

    v727 = *v726;
    v727(v773, v842);
    sub_23A8D50D0(v774, &qword_27DFB0990, &qword_23AA12EE0);
    sub_23A92FED0(v779, type metadata accessor for CapturedRoom.Object);
    v724 = v860.i64[0];
    if (v856.i64[0] == v723)
    {

      v680 = v842;
      v727(v768, v842);
      goto LABEL_344;
    }
  }

LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
}