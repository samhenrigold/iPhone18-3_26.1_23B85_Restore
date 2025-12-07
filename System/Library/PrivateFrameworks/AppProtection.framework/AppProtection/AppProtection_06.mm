void *sub_185B510F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C0, &qword_185B6EEF8);
  v2 = *v0;
  v3 = sub_185B6845C();
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

void sub_185B51254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD690, &unk_185B6EEB0);
  v2 = *v0;
  v3 = sub_185B6845C();
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
}

char *sub_185B513BC()
{
  v1 = v0;
  v2 = type metadata accessor for AuthAssertion(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_185B67AFC();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  v5 = *v0;
  v6 = sub_185B6845C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_185B54460(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_185B544C4(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void *sub_185B516C0()
{
  v1 = v0;
  v30 = sub_185B67AFC();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6B8, &qword_185B6EEF0);
  v3 = *v0;
  v4 = sub_185B6845C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
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

void *sub_185B51940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A8, &qword_185B6EED8);
  v2 = *v0;
  v3 = sub_185B6845C();
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

id sub_185B51A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E8, &qword_185B6EED0);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        sub_185ADF8F0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_185AC66F8(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

void sub_185B51C20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        v21 = *v19;
        v20 = v19[1];
        v17 *= 3;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        LOBYTE(v22) = v22[2];
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v23;
        v26[1] = v24;
        v26[2] = v22;
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

void *sub_185B51DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A0, &qword_185B6EEC8);
  v2 = *v0;
  v3 = sub_185B6845C();
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

id sub_185B51F1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_185B6845C();
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

void sub_185B52078(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC9F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_185B4F3A8(v16, a4 & 1, &qword_1EA8CD6E0, &qword_185B6EF18);
      v11 = sub_185AC9F40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_185B685DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_185B50F98(&qword_1EA8CD6E0, &qword_185B6EF18);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_185B5222C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_185AF6EA4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_185B4F648(v14, a3 & 1);
      result = sub_185AF6EA4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_185B510F8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_185B52378(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC9F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_185B4F8E8(v16, a4 & 1);
      v11 = sub_185AC9F40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_185B685DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_185B51254();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_185B524DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_185AF6E20(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_185B513BC();
      goto LABEL_7;
    }

    sub_185B4FB88(v17, a3 & 1);
    v24 = sub_185AF6E20(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_185B50BB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_185B685DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for AuthAssertion(0) - 8) + 72) * v14;

  return sub_185B54528(a1, v22);
}

uint64_t sub_185B526C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_185AF6E20(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_185B516C0();
      goto LABEL_9;
    }

    sub_185B4FFD8(v18, a4 & 1);
    v21 = sub_185AF6E20(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_185B685DC();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_185B50C94(v15, v12, v23, a2, v24);
  }
}

unint64_t sub_185B528A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_185AF6F20(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_185B5039C(v14, a3 & 1);
      result = sub_185AF6F20(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_185B51940();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_185B529EC(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC9F40(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_185B51C20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_185B5060C(v16, a4 & 1);
    v11 = sub_185AC9F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_185B685DC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 3 * v11);
    *v22 = a1 & 1;
    v22[1] = BYTE1(a1) & 1;
    v22[2] = BYTE2(a1) & 1;
  }

  else
  {
    sub_185B50D54(v11, a2, a3, a1 & 0x10101, v21);
  }
}

void sub_185B52B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_185AC9F40(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_185B508D4(v20, a4 & 1, a5, a6);
      v15 = sub_185AC9F40(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_185B685DC();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_185B51F1C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void *sub_185B52CF0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5, *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_185B52D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD688, &unk_185B6EEA0);
    v3 = sub_185B6847C();
    v4 = a1 + 32;

    while (1)
    {
      sub_185AD04BC(v4, &v12, &qword_1EA8CD368, &qword_185B6E0D8);
      v5 = v12;
      result = sub_185AF6BE0(v12, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_185AD093C(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B52EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_185B6847C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_185AC9F40(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B52FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_185B6847C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_185AC9F40(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B530AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C8, &qword_185B6EF00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
    v7 = sub_185B6847C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_185AD04BC(v9, v5, &qword_1EA8CD6C8, &qword_185B6EF00);
      result = sub_185AF6E20(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_185B67AFC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for AuthAssertion(0);
      result = sub_185B544C4(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B532B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD660, &qword_185B6EE80);
    v3 = sub_185B6847C();
    v4 = a1 + 32;

    while (1)
    {
      sub_185AD04BC(v4, v13, &qword_1EA8CD658, &unk_185B6EE70);
      result = sub_185AF6B9C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_185AD093C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B533F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
    v3 = sub_185B6847C();

    for (i = (a1 + 50); ; i += 24)
    {
      v5 = *(i - 18);
      v6 = *(i - 10);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_185AC9F40(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 3 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_185B53510()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_185B6BB70;
  v4 = sub_185B67ABC();
  *(v3 + 56) = sub_185ADF590(0, &qword_1EA8CD638, 0x1E696AFB0);
  *(v3 + 64) = sub_185B54014(&qword_1EA8CD640, &qword_1EA8CD638, 0x1E696AFB0);
  *(v3 + 32) = v4;
  v5 = sub_185B6804C();
  [v2 setPredicate_];

  v20[0] = 0;
  v6 = [v2 execute_];
  v7 = v20[0];
  if (!v6)
  {
    v18 = v20[0];
    sub_185B6792C();

    swift_willThrow();
    return;
  }

  v8 = v6;
  type metadata accessor for DataAccess();
  v9 = sub_185B67F6C();
  v10 = v7;

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 == 1;
    if (v11 >= 1)
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  v19 = sub_185B6844C();
  v12 = v19 == 1;
  if (v19 < 1)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v12)
  {
    goto LABEL_9;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);
    v14 = sub_185B67B6C();
    v15 = sub_185B6809C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_185AC1000, v14, v15, "multiple access records with same UUID!?", v16, 2u);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

LABEL_9:
    if (v9 >> 62)
    {
      if (!sub_185B6844C())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v9 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  MEMORY[0x1865FD3E0](0, v9);
LABEL_14:
}

void sub_185B53884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_185B6BB60;
  v5 = sub_185B67E1C();
  v6 = sub_185ADF590(0, &qword_1EA8CD098, 0x1E696AEC0);
  *(v4 + 56) = v6;
  v7 = sub_185B54014(&qword_1EA8CD668, &qword_1EA8CD098, 0x1E696AEC0);
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  v8 = sub_185B67E1C();
  *(v4 + 96) = v6;
  *(v4 + 104) = v7;
  *(v4 + 72) = v8;
  v9 = sub_185B6804C();
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_185B67E1C();
  v12 = [v10 initWithEntityName_];

  [v12 setPredicate_];
  v25[0] = 0;
  v13 = [v12 execute_];
  v14 = v25[0];
  if (!v13)
  {
    v24 = v25[0];
    sub_185B6792C();

    swift_willThrow();
    return;
  }

  v15 = v13;
  type metadata accessor for DataAccess();
  v16 = sub_185B67F6C();
  v17 = v14;

  if (v16 >> 62)
  {
    v18 = sub_185B6844C();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < 1)
  {

    return;
  }

  if (v18 == 1)
  {
    goto LABEL_10;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1EA8D2278);
    v20 = sub_185B67B6C();
    v21 = sub_185B6809C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_185AC1000, v20, v21, "multiple access records with same accessor and accessee!?", v22, 2u);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }

LABEL_10:
    if (v16 >> 62)
    {
      break;
    }

    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_12:
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865FD3E0](0, v16);
      goto LABEL_15;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v16 + 32);
LABEL_15:

      return;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  if (sub_185B6844C())
  {
    goto LABEL_12;
  }

LABEL_19:
}

void sub_185B53C3C(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v5 = sub_185B6794C();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_185B67E1C();
  v10 = [v8 initWithEntityName_];

  v37[0] = 0;
  v11 = [v10 execute_];
  if (v11)
  {
    v12 = v11;
    v13 = v37[0];
    v31 = v12;
    sub_185B6823C();
    sub_185B6793C();
    if (v38)
    {
      type metadata accessor for DataAccess();
      v34 = v10;
      do
      {
        if (swift_dynamicCast())
        {
          v14 = v36;
          v15 = [v36 accessed_bundle_id];
          if (v15)
          {
            v16 = v15;
            v17 = sub_185B67E4C();
            v19 = v18;

            if (v17 == a1 && v19 == v35)
            {
LABEL_20:
              v10 = v34;

LABEL_21:
              v29 = v14;
              MEMORY[0x1865FCFA0]();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_185B67F8C();
              }

              sub_185B67FAC();

              goto LABEL_5;
            }

            v21 = sub_185B6859C();

            v10 = v34;
            if (v21)
            {
              goto LABEL_21;
            }
          }

          v22 = [v14 accessor_bundle_id];
          if (v22)
          {
            v23 = v22;
            v24 = sub_185B67E4C();
            v26 = v25;

            if (v24 == a1 && v26 == v35)
            {
              goto LABEL_20;
            }

            v28 = sub_185B6859C();

            v10 = v34;
            if (v28)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_5:
        sub_185B6793C();
      }

      while (v38);
    }

    (*(v32 + 8))(v7, v33);
  }

  else
  {
    v30 = v37[0];
    sub_185B6792C();

    swift_willThrow();
  }
}

uint64_t sub_185B54014(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_185ADF590(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_185B54098()
{
  result = qword_1EA8CD670;
  if (!qword_1EA8CD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD648, &qword_185B6EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD670);
  }

  return result;
}

void *sub_185B540FC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5, *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_185B54148@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    v5 = v6;
    *(a1 + 2) = BYTE2(v6);
    *a1 = v5;
  }

  return result;
}

id sub_185B5419C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_185B67E1C();
  v4 = [v2 initWithEntityName_];

  [v4 setPredicate_];
  v11[0] = 0;
  v5 = [v4 execute_];
  v6 = v11[0];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for PreferenceSetting();
    v8 = sub_185B67F6C();
    v9 = v6;
  }

  else
  {
    v8 = v11[0];
    sub_185B6792C();

    swift_willThrow();
  }

  return v8;
}

void *sub_185B542E4(uint64_t a1, uint64_t a2)
{
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_185B6BB70;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_185B06CBC();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_185B6804C();
  v7 = sub_185B5419C(v6);

  if (v2)
  {
    return v6;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_185B6844C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1865FD3E0](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 4);
LABEL_7:
    v6 = v9;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_185B54460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B544C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B54528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_185B5458C(void *a1)
{
  if (*(v1 + 42))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_185B4BC08(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v3 | *(v1 + 40) | v2, *(v1 + 48));
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for APAppPreferences(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for APAppPreferences(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void *sub_185B54710(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  if (a3 == 2)
  {
    return (v4 == 2);
  }

  v6 = a3 & 1;
  result = a1(&v7, &v6);
  if (!v3)
  {
    return (v4 == 2);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B54770()
{
  sub_185B6866C();
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

uint64_t sub_185B54828(uint64_t a1)
{
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_185B67DBC();
}

uint64_t sub_185B548C4(uint64_t a1)
{
  sub_185B6866C();
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

id sub_185B54978(uint64_t a1)
{
  result = APGetViewSubjectMonitorServiceInterface(a1);
  qword_1EA8D2370 = result;
  return result;
}

void sub_185B549A0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v66 = a1;
  v61 = type metadata accessor for ViewSubjectMonitorPair(0);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  v14 = __swift_project_value_buffer(v13, qword_1EA8D2278);
  v15 = *(v8 + 16);
  v59 = v8 + 16;
  v15(v12, a3, v7);

  v57 = v14;
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();

  v18 = os_log_type_enabled(v16, v17);
  v62 = a2;
  v63 = v6;
  v60 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v55 = v15;
    v21 = v20;
    v67[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_185ACB2C4(v66, a2, v67);
    *(v19 + 12) = 2082;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_185B6856C();
    v23 = a3;
    v25 = v24;
    v56 = *(v8 + 8);
    v56(v12, v7);
    v26 = sub_185ACB2C4(v22, v25, v67);
    a3 = v23;

    *(v19 + 14) = v26;
    _os_log_impl(&dword_185AC1000, v16, v17, "server begin monitoring viewSubject %{public}s monitor %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v27 = v21;
    v15 = v55;
    MEMORY[0x1865FE2F0](v27, -1, -1);
    MEMORY[0x1865FE2F0](v19, -1, -1);
  }

  else
  {

    v56 = *(v8 + 8);
    v56(v12, v7);
  }

  v55 = 0x8000000185B75730;
  v28 = v58;
  v15(v58, a3, v7);
  v29 = sub_185B67B6C();
  v30 = sub_185B680AC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v67[0] = v32;
    *v31 = 136315394;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = sub_185B6856C();
    v34 = v28;
    v35 = v15;
    v36 = a3;
    v38 = v37;
    v56(v34, v7);
    v39 = sub_185ACB2C4(v33, v38, v67);
    a3 = v36;
    v15 = v35;

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    v40 = v55;
    *(v31 + 14) = sub_185ACB2C4(0xD000000000000013, v55, v67);
    _os_log_impl(&dword_185AC1000, v29, v30, "monitor %s is a monitor for %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v32, -1, -1);
    MEMORY[0x1865FE2F0](v31, -1, -1);

    v41 = v63;
  }

  else
  {

    v56(v28, v7);
    v41 = v63;
    v40 = v55;
  }

  v15(&v41[*(v61 + 24)], a3, v7);
  *v41 = 0xD000000000000013;
  *(v41 + 1) = v40;
  v42 = v65;
  v43 = v62;
  *(v41 + 2) = v66;
  *(v41 + 3) = v43;
  v44 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
  swift_beginAccess();
  v45 = *(v42 + v44);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v42 + v44) = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_185B3D0A0(0, v45[2] + 1, 1, v45);
    *(v42 + v44) = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_185B3D0A0((v47 > 1), v48 + 1, 1, v45);
  }

  v45[2] = v48 + 1;
  sub_185B572B4(v41, v45 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v48);
  *(v42 + v44) = v45;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v67);
    swift_unknownObjectRelease();
    v50 = v68;
    v51 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v52 = (*(v51 + 24))(v50, v51);
    sub_185AC3A7C(0xD000000000000013, v40, v52);

    v53 = __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x1EEE9AC00](v53);
    *(&v55 - 2) = v42;
    *(&v55 - 1) = a3;
    v70[0] = v54;
    sub_185B57318(v70);
  }
}

uint64_t sub_185B551EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1EA8D2278);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_185B6856C();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_185ACB2C4(v14, v16, v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_185AC1000, v9, v10, "server end monitoring %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    v18 = v12;
    a1 = v24;
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  else
  {

    v19 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = a1;
  v20 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
  swift_beginAccess();
  result = sub_185B56384(sub_185B56B64, (&v23 - 4), type metadata accessor for ViewSubjectMonitorPair, type metadata accessor for ViewSubjectMonitorPair, type metadata accessor for ViewSubjectMonitorPair, sub_185B5695C);
  v22 = *(*(v2 + v20) + 16);
  if (v22 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B56C1C(result, v22, sub_185B3D0A0, type metadata accessor for ViewSubjectMonitorPair, sub_185B57120);
    return swift_endAccess();
  }

  return result;
}

void sub_185B5565C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ViewSubjectMonitorPair(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v52 - v10);
  if ((*a1 & 6) != 0)
  {
    v64 = *(a1 + 8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        sub_185ADF8F0(v14 + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v65);
        swift_unknownObjectRelease();
        v15 = v66;
        v16 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        v63 = (*(v16 + 32))(v15, v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
      }

      else
      {
        v63 = MEMORY[0x1E69E7CD0];
      }

      v17 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
      swift_beginAccess();
      v18 = *&v13[v17];
      v60 = *(v18 + 16);
      if (v60)
      {
        v53 = v13;
        v58 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v61 = v63 + 56;
        v62 = v64 + 56;

        v19 = 0;
        *&v20 = 136315394;
        v54 = v20;
        v56 = a3;
        v55 = v5;
        v59 = v18;
        while (1)
        {
          if (v19 >= *(v18 + 16))
          {
            __break(1u);
            return;
          }

          sub_185B5737C(v58 + *(v6 + 72) * v19, v11, type metadata accessor for ViewSubjectMonitorPair);
          if (!v64)
          {
            goto LABEL_23;
          }

          if (*(v64 + 16))
          {
            v23 = *v11;
            v22 = v11[1];
            v24 = v64;
            sub_185B6866C();
            sub_185B67EEC();
            v25 = sub_185B686AC();
            v26 = -1 << *(v24 + 32);
            v27 = v25 & ~v26;
            if ((*(v62 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
            {
              break;
            }
          }

LABEL_10:
          ++v19;
          sub_185B573E4(v11, type metadata accessor for ViewSubjectMonitorPair);
          v18 = v59;
          if (v19 == v60)
          {

            goto LABEL_40;
          }
        }

        v28 = ~v26;
        while (1)
        {
          v29 = (*(v64 + 48) + 16 * v27);
          v30 = *v29 == v23 && v29[1] == v22;
          if (v30 || (sub_185B6859C() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v62 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

LABEL_23:
        if (*(v63 + 16) && (v31 = *v11, v32 = v11[1], v33 = v63, sub_185B6866C(), sub_185B67EEC(), v34 = sub_185B686AC(), v35 = -1 << *(v33 + 32), v36 = v34 & ~v35, ((*(v61 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
        {
          v37 = ~v35;
          while (1)
          {
            v38 = (*(v63 + 48) + 16 * v36);
            v39 = *v38 == v31 && v38[1] == v32;
            if (v39 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v36 = (v36 + 1) & v37;
            if (((*(v61 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v40 = 1;
        }

        else
        {
LABEL_32:
          v40 = 0;
        }

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v41 = sub_185B67B8C();
        __swift_project_value_buffer(v41, qword_1EA8D2278);
        sub_185B5737C(v11, v9, type metadata accessor for ViewSubjectMonitorPair);
        v42 = sub_185B67B6C();
        v43 = sub_185B680AC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v65[0] = v45;
          *v44 = v54;
          v57 = v40;
          v46 = v11;
          v47 = v6;
          v48 = *v9;
          v49 = v9[1];

          sub_185B573E4(v9, type metadata accessor for ViewSubjectMonitorPair);
          v50 = sub_185ACB2C4(v48, v49, v65);
          v6 = v47;
          v11 = v46;
          v40 = v57;

          *(v44 + 4) = v50;
          *(v44 + 12) = 1024;
          *(v44 + 14) = v40;
          _os_log_impl(&dword_185AC1000, v42, v43, "monitor for %s is potentially affected, locked: %{BOOL}d", v44, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          v51 = v45;
          a3 = v56;
          MEMORY[0x1865FE2F0](v51, -1, -1);
          MEMORY[0x1865FE2F0](v44, -1, -1);
        }

        else
        {

          sub_185B573E4(v9, type metadata accessor for ViewSubjectMonitorPair);
        }

        v21 = sub_185B67ABC();
        [a3 viewSubjectMonitorWithUUID:v21 lockedStatusUpdate:v40];

        goto LABEL_10;
      }

LABEL_40:
    }
  }
}

id sub_185B55D54()
{
  if (qword_1EA8CC3F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2370;

  return v0;
}

id sub_185B55DF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ViewSubjectMonitorPair(uint64_t a1)
{
  result = qword_1EA8CD740;
  if (!qword_1EA8CD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_185B55F88(void *a1)
{
  v2 = APGetClientViewSubjectMonitorInterface(a1);
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_185B55FE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APViewSubjectMonitorService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

char *sub_185B56064(void *a1)
{
  v2 = *v1;
  v3 = [a1 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD758, &qword_185B6F118);
  swift_dynamicCast();
  v4 = objc_allocWithZone(type metadata accessor for APViewSubjectMonitorClient());
  return sub_185B56970(v2, v6, v4);
}

uint64_t sub_185B56110(uint64_t a1, uint64_t a2)
{
  result = sub_185B5726C(&qword_1EA8CB988, a2, type metadata accessor for APViewSubjectMonitorClient, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B56168(uint64_t (*a1)(uint64_t))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 6; ; i += 2)
    {
      result = a1(&v4[i - 2]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_185AE7A7C(&v4[i], v15);
          v12 = a1(v15);
          result = sub_185AE7AD8(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_185AE7A7C(&v4[2 * v1 + 4], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_185AE7A7C(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_185B568D0(v4);
              }

              result = sub_185B1F650(v14, &v4[2 * v1 + 4]);
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              result = sub_185B1F650(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 2;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_185B56384(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v48 = a6;
  v57 = a5;
  v11 = a3(0);
  v55 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = *v6;
  result = sub_185B56684(a1, a2, *v6, a4);
  if (!v7)
  {
    v54 = v19;
    v49 = v17;
    v47 = v14;
    if (v22)
    {
      return *(v20 + 16);
    }

    v50 = a1;
    v51 = a2;
    v46 = v6;
    v56 = result;
    v23 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    for (i = v20; ; v20 = i)
    {
      v27 = *(v20 + 16);
      v26 = (v20 + 16);
      v25 = v27;
      if (v23 == v27)
      {
        break;
      }

      if (v23 >= v25)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v28 = i;
      v52 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v29 = i + v52;
      v30 = *(v55 + 72);
      v53 = v30 * v23;
      v31 = i + v52 + v30 * v23;
      v32 = v54;
      v33 = v57;
      sub_185B5737C(v31, v54, v57);
      v34 = v50(v32);
      result = sub_185B573E4(v32, v33);
      if (v34)
      {
        i = v28;
      }

      else
      {
        v35 = v56;
        i = v28;
        if (v23 != v56)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v36 = *v26;
          if (v56 >= v36)
          {
            goto LABEL_24;
          }

          v37 = v30 * v56;
          v38 = v29 + v30 * v56;
          v39 = v57;
          result = sub_185B5737C(v38, v49, v57);
          if (v23 >= v36)
          {
            goto LABEL_25;
          }

          v40 = v53;
          v41 = v47;
          sub_185B5737C(v29 + v53, v47, v39);
          v42 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = v48(i);
          }

          v43 = v49;
          v44 = i + v52;
          result = sub_185B57444(v41, i + v52 + v37, v42);
          if (v23 >= *(i + 16))
          {
            goto LABEL_26;
          }

          result = sub_185B57444(v43, v44 + v40, v42);
          *v46 = i;
          v35 = v56;
        }

        v56 = v35 + 1;
      }

      ++v23;
    }

    return v56;
  }

  return result;
}

uint64_t sub_185B56684(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_185B56774(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_185B6844C();
    }

    result = sub_185B6839C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_185B56830(uint64_t a1, char a2)
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

  sub_185B6844C();
LABEL_9:
  result = sub_185B6839C();
  *v2 = result;
  return result;
}

uint64_t sub_185B568E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_185B6844C();
  }

  return sub_185B6839C();
}

char *sub_185B56970(void *a1, uint64_t a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_changeEventsSubscription] = 0;
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations] = MEMORY[0x1E69E7CC0];
  *(v6 + 8) = &off_1EF46BF08;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_remoteMonitor] = a2;
  v20.receiver = a3;
  v20.super_class = type metadata accessor for APViewSubjectMonitorClient();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v20, sel_init);
  sub_185ADF8F0(a1 + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = *(v9 + 8);
  v11 = v7;
  v10(v16, v8, v9);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();
  v14 = sub_185B67C7C();

  swift_unknownObjectRelease();
  *&v11[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_changeEventsSubscription] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v11;
}

uint64_t sub_185B56C1C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = a5(v9, a2, 0, a4);
  *v5 = v7;
  return result;
}

unint64_t sub_185B56D38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v4;
  v9 = v8 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v5);
  v11 = a3 - v5;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v8 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 16 * a3;
  v13 = v8 + 32 + 16 * a2;
  if (result < v13 || result >= v13 + 16 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v8 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v8 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_185B56EA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_185B6844C();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_185B6844C();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_185B56FB0(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_185B56FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_185B6844C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_185B6844C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_185B57120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_185B5726C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B572B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSubjectMonitorPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_185B57318(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_remoteMonitor);
  v4 = sub_185B67ABC();
  [v3 viewSubjectMonitorWithUUID:v4 lockedStatusUpdate:v2];
}

uint64_t sub_185B5737C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B573E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_185B57444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_185B57550(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id APStateDump.init(coder:)(void *a1)
{
  v2 = v1;
  sub_185ADF590(0, &qword_1EA8CD760, off_1E6EE8370);
  v4 = sub_185B6824C();
  if (v4)
  {
    v5 = OBJC_IVAR___APStateDump_clientState;
    *&v1[OBJC_IVAR___APStateDump_clientState] = v4;
    v6 = v4;
    sub_185ADF590(0, &qword_1EA8CD770, 0x1E695DEF0);
    v7 = v6;
    v8 = sub_185B6824C();
    if (v8)
    {
      v9 = v8;
      v23 = v7;
      sub_185B678DC();
      swift_allocObject();
      sub_185B678CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD780, &qword_185B6F120);
      v10 = sub_185B67A5C();
      v12 = v11;
      sub_185B5A08C(&qword_1EA8CD788, &qword_1EA8CD790, &unk_185B6C30C, MEMORY[0x1E69E6330]);
      sub_185B678BC();

      sub_185AE2FC8(v10, v12);

      *&v2[OBJC_IVAR___APStateDump_extantAccesses] = v25;
      v15 = sub_185B6824C();
      if (v15)
      {
        v16 = v15;
        swift_allocObject();
        sub_185B678CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD798, &qword_185B6F128);
        v17 = sub_185B67A5C();
        v19 = v18;
        sub_185B57A68();
        sub_185B678BC();

        sub_185AE2FC8(v17, v19);

        *&v2[OBJC_IVAR___APStateDump_authAssertions] = v25;
        v20 = sub_185B67E1C();
        v21 = [a1 decodeBoolForKey_];

        v2[OBJC_IVAR___APStateDump_dtoEnabled] = v21;
        v24.receiver = v2;
        v24.super_class = APStateDump;
        v22 = objc_msgSendSuper2(&v24, sel_init);

        return v22;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  type metadata accessor for APStateDump(v13);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_185B57A68()
{
  result = qword_1EA8CD7A0;
  if (!qword_1EA8CD7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD798, &qword_185B6F128);
    sub_185B57B54(&qword_1EA8CBFD8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_185B57B54(&qword_1EA8CD7B0, type metadata accessor for AuthAssertion, &unk_185B6E7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD7A0);
  }

  return result;
}

uint64_t sub_185B57B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_185B57BC4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___APStateDump_clientState);
  v5 = sub_185B67E1C();
  [a1 encodeObject:v4 forKey:v5];

  sub_185B6790C();
  swift_allocObject();
  sub_185B678FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD780, &qword_185B6F120);
  sub_185B5A08C(&unk_1EA8CB6B8, qword_1EA8CBC40, &unk_185B6C2E4, MEMORY[0x1E69E6300]);
  v6 = sub_185B678EC();
  v8 = v7;

  v9 = sub_185B67A4C();
  sub_185AE2FC8(v6, v8);
  v10 = sub_185B67E1C();
  [a1 encodeObject:v9 forKey:v10];

  swift_allocObject();
  sub_185B678FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD798, &qword_185B6F128);
  sub_185B5A128();
  v11 = sub_185B678EC();
  v13 = v12;

  v14 = sub_185B67A4C();
  sub_185AE2FC8(v11, v13);
  v15 = sub_185B67E1C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR___APStateDump_dtoEnabled);
  v17 = sub_185B67E1C();
  [a1 encodeBool:v16 forKey:v17];
}

uint64_t sub_185B57F4C(uint64_t a1)
{
  v3 = sub_185B6777C();
  MEMORY[0x1EEE9AC00](v3);
  sub_185B677BC();
  swift_allocObject();
  sub_185B677AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD8B8, &qword_185B6F168);
  *(swift_allocObject() + 16) = xmmword_185B6BB60;
  sub_185B6775C();
  sub_185B6776C();
  sub_185B57B54(&unk_1EA8CC010, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD8C8, &qword_185B6F170);
  sub_185B59F80();
  sub_185B682CC();
  sub_185B6778C();
  sub_185B59FE4();
  v4 = v1;
  v5 = sub_185B6779C();
  if (v2)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = v6;

    sub_185B5A038();
    sub_185B6805C();

    return sub_185AE2FC8(v7, v8);
  }

  return result;
}

uint64_t sub_185B58314()
{
  v1 = *v0;
  v2 = 0x704164656B636F6CLL;
  v3 = 0x6341746E61747865;
  v4 = 0x6573734168747561;
  if (v1 != 4)
  {
    v4 = 0x6C62616E456F7464;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70416E6564646968;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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

uint64_t sub_185B583EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_185B59780(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_185B58420(uint64_t a1)
{
  v2 = sub_185B5A264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B5845C(uint64_t a1)
{
  v2 = sub_185B5A264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B58498()
{
  v1 = *v0;
  v2 = 0x6565737365636361;
  v3 = 1701869940;
  v4 = 6580592;
  if (v1 != 3)
  {
    v4 = 1684632949;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
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

uint64_t sub_185B5851C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_185B599A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_185B58544(uint64_t a1)
{
  v2 = sub_185B5A9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B58580(uint64_t a1)
{
  v2 = sub_185B5A9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B585BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD990, &unk_185B6F3F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &atoken - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5A9D0();
  sub_185B686FC();
  LOBYTE(atoken.val[0]) = 0;
  sub_185B684EC();
  if (!v2)
  {
    LOBYTE(atoken.val[0]) = 1;
    sub_185B684EC();
    v12 = 2;
    sub_185B6852C();
    v9 = *(v3 + 52);
    *atoken.val = *(v3 + 36);
    *&atoken.val[4] = v9;
    audit_token_to_pid(&atoken);
    LOBYTE(atoken.val[0]) = 3;
    sub_185B6853C();
    type metadata accessor for DataAccessRecord(0);
    LOBYTE(atoken.val[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B5AA24();
    sub_185B6851C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_185B58824(uint64_t a1)
{
  v2 = sub_185B5AAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B58860(uint64_t a1)
{
  v2 = sub_185B5AAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B5889C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD9B0, &qword_185B6F408);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5AAD8();
  sub_185B686FC();
  v8[15] = 0;
  sub_185B684EC();
  if (!v1)
  {
    v8[14] = 1;
    sub_185B6853C();
    type metadata accessor for AuthAssertion(0);
    v8[13] = 2;
    sub_185B67A8C();
    sub_185B57B54(&qword_1EA8CD9C0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_185B6851C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_185B58AD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper(0);
  v84 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AuthAssertion(0);
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_185B67AFC();
  v85 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0);
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD8F0, &qword_185B6F1E8);
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5A264();
  sub_185B686FC();
  v78 = a2;
  v17 = *(a2 + OBJC_IVAR___APStateDump_clientState);
  v18 = [v17 lockedAppBundleIdentifiers];
  v19 = sub_185B67FDC();

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = sub_185B2D0B0(*(v19 + 16), 0);
    v22 = sub_185B2D310(&v88, v21 + 4, v20, v19);
    sub_185AF36FC(v88);
    if (v22 == v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v88 = v21;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC840, &qword_185B6F1F0);
  sub_185B5A2B8();
  v23 = v87;
  sub_185B6851C();
  if (v2)
  {

    return (*(v86 + 8))(v16, v23);
  }

  v24 = [v17 hiddenAppBundleIdentifiers];
  v25 = sub_185B67FDC();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_185B2D0B0(*(v25 + 16), 0);
    v28 = sub_185B2D310(&v88, v27 + 4, v26, v25);
    sub_185AF36FC(v88);
    if (v28 == v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v88 = v27;
  v89 = 1;
  sub_185B6851C();

  v29 = [v17 effectivelyLockedAppBundleIdentifiers];
  v30 = sub_185B67FDC();

  v31 = *(v30 + 16);
  if (!v31)
  {
LABEL_13:

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v32 = sub_185B2D0B0(*(v30 + 16), 0);
  v33 = sub_185B2D310(&v88, v32 + 4, v31, v30);
  sub_185AF36FC(v88);
  if (v33 != v31)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v88 = v32;
  v89 = 2;
  sub_185B6851C();

  v35 = *(v78 + OBJC_IVAR___APStateDump_extantAccesses);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v76 = 0;
    v88 = MEMORY[0x1E69E7CC0];
    sub_185B4EA2C(0, v36, 0);
    v37 = v88;
    v38 = *(type metadata accessor for DataAccessRecord(0) - 8);
    v39 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v40 = *(v38 + 72);
    v41 = v77;
    do
    {
      sub_185B5A3E8(v39, v13, type metadata accessor for DataAccessRecord);
      v88 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_185B4EA2C((v42 > 1), v43 + 1, 1);
        v41 = v77;
        v37 = v88;
      }

      *(v37 + 16) = v43 + 1;
      sub_185B5A450(v13, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper);
      v39 += v40;
      --v36;
    }

    while (v36);
    v3 = v76;
  }

  v88 = v37;
  v89 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD910, &qword_185B6F1F8);
  sub_185B5A334();
  v44 = v87;
  sub_185B6851C();
  if (v3)
  {

    return (*(v86 + 8))(v16, v44);
  }

  v45 = *(v78 + OBJC_IVAR___APStateDump_authAssertions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD928, &qword_185B6F200);
  result = sub_185B6845C();
  v46 = result;
  v47 = 0;
  v48 = v45 + 64;
  v49 = 1 << *(v45 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v45 + 64);
  v52 = (v49 + 63) >> 6;
  v72 = v85 + 16;
  v73 = v45;
  v71 = result + 64;
  v70 = v85 + 32;
  v76 = 0;
  v74 = result;
  v53 = v85;
  if (!v51)
  {
LABEL_28:
    v55 = v47;
    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v47 >= v52)
      {
        break;
      }

      v56 = *(v48 + 8 * v47);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v75 = (v56 - 1) & v56;
        goto LABEL_33;
      }
    }

    v88 = v46;
    v89 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD930, &qword_185B6F208);
    sub_185B5A4B8();
    v44 = v87;
    sub_185B6851C();

    if (!v3)
    {
      LOBYTE(v88) = 5;
      sub_185B684FC();
    }

    return (*(v86 + 8))(v16, v44);
  }

  while (1)
  {
    v54 = __clz(__rbit64(v51));
    v75 = (v51 - 1) & v51;
LABEL_33:
    v57 = v54 | (v47 << 6);
    v58 = v73;
    v59 = *(v73 + 48);
    v77 = *(v53 + 72) * v57;
    v61 = v79;
    v60 = v80;
    (*(v53 + 16))(v79, v59 + v77, v80);
    v62 = *(v58 + 56);
    v63 = v81;
    sub_185B5A3E8(v62 + *(v82 + 72) * v57, v81, type metadata accessor for AuthAssertion);
    v64 = v63;
    v65 = v83;
    sub_185B5A450(v64, v83, type metadata accessor for AuthAssertion);
    *(v71 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
    v66 = v60;
    v46 = v74;
    (*(v53 + 32))(*(v74 + 48) + v77, v61, v66);
    result = sub_185B5A450(v65, *(v46 + 56) + *(v84 + 72) * v57, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper);
    v67 = *(v46 + 16);
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      break;
    }

    *(v46 + 16) = v69;
    v51 = v75;
    v3 = v76;
    if (!v75)
    {
      goto LABEL_28;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_185B59564(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;
}

id _sSo11APStateDumpC13AppProtectionEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_185B59780(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704164656B636F6CLL && a2 == 0xEA00000000007370;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70416E6564646968 && a2 == 0xEA00000000007370 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000185B78690 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341746E61747865 && a2 == 0xEE00736573736563 || (sub_185B6859C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573734168747561 && a2 == 0xEE00736E6F697472 || (sub_185B6859C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C62616E456F7464 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v6 = sub_185B6859C();

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

uint64_t sub_185B599A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565737365636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE800000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_185B6859C();

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

uint64_t sub_185B59B50()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v11 = sub_185B12704;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_26;
  v1 = _Block_copy(&v7);

  v2 = APGetSyncMaintenanceProxy(v1);
  _Block_release(v1);
  v11 = sub_185B59F78;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B2AF84;
  v10 = &block_descriptor_29_0;
  v3 = _Block_copy(&v7);

  [v2 clearAccessTableWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    swift_willThrow();
    v5 = v4;
  }
}

id sub_185B59D20()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v16 = sub_185B12574;
  v17 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B6657C;
  v15 = &block_descriptor_22;
  v3 = _Block_copy(&aBlock);

  v4 = APGetSyncMaintenanceProxy(v3);
  _Block_release(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
  v16 = sub_185B59F70;
  v17 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B0E6C8;
  v15 = &block_descriptor_22_3;
  v6 = _Block_copy(&aBlock);

  [v4 getStateDumpWithCompletion_];
  _Block_release(v6);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v7;

    return v8;
  }

  else
  {
    result = swift_beginAccess();
    v10 = *v1;
    if (*v1)
    {
      swift_willThrow();
      v11 = v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_185B59F80()
{
  result = qword_1EA8CD8D0;
  if (!qword_1EA8CD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD8C8, &qword_185B6F170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8D0);
  }

  return result;
}

unint64_t sub_185B59FE4()
{
  result = qword_1EA8CD8D8;
  if (!qword_1EA8CD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8D8);
  }

  return result;
}

unint64_t sub_185B5A038()
{
  result = qword_1EA8CD8E0;
  if (!qword_1EA8CD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8E0);
  }

  return result;
}

uint64_t sub_185B5A08C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD780, &qword_185B6F120);
    sub_185B57B54(a2, type metadata accessor for DataAccessRecord, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_185B5A128()
{
  result = qword_1EA8CB6C8;
  if (!qword_1EA8CB6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD798, &qword_185B6F128);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_185B57B54(&qword_1EA8CBDE8, type metadata accessor for AuthAssertion, &unk_185B6E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6C8);
  }

  return result;
}

unint64_t sub_185B5A264()
{
  result = qword_1EA8CD8F8;
  if (!qword_1EA8CD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8F8);
  }

  return result;
}

unint64_t sub_185B5A2B8()
{
  result = qword_1EA8CD908;
  if (!qword_1EA8CD908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CC840, &qword_185B6F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD908);
  }

  return result;
}

unint64_t sub_185B5A334()
{
  result = qword_1EA8CD918;
  if (!qword_1EA8CD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD910, &qword_185B6F1F8);
    sub_185B57B54(&qword_1EA8CD920, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper, &unk_185B6F380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD918);
  }

  return result;
}

uint64_t sub_185B5A3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B5A450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_185B5A4B8()
{
  result = qword_1EA8CD938;
  if (!qword_1EA8CD938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD930, &qword_185B6F208);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_185B57B54(&unk_1EA8CD940, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper, &unk_185B6F358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APStateDumpEncodingWrapper.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APStateDumpEncodingWrapper.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_185B5A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_185B5A8CC()
{
  result = qword_1EA8CD978;
  if (!qword_1EA8CD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD978);
  }

  return result;
}

unint64_t sub_185B5A924()
{
  result = qword_1EA8CD980;
  if (!qword_1EA8CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD980);
  }

  return result;
}

unint64_t sub_185B5A97C()
{
  result = qword_1EA8CD988;
  if (!qword_1EA8CD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD988);
  }

  return result;
}

unint64_t sub_185B5A9D0()
{
  result = qword_1EA8CD998;
  if (!qword_1EA8CD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD998);
  }

  return result;
}

unint64_t sub_185B5AA24()
{
  result = qword_1EA8CCDC8;
  if (!qword_1EA8CCDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDC8);
  }

  return result;
}

unint64_t sub_185B5AAD8()
{
  result = qword_1EA8CD9B8;
  if (!qword_1EA8CD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9B8);
  }

  return result;
}

unint64_t sub_185B5AB50()
{
  result = qword_1EA8CD9C8;
  if (!qword_1EA8CD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9C8);
  }

  return result;
}

unint64_t sub_185B5ABA8()
{
  result = qword_1EA8CD9D0;
  if (!qword_1EA8CD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9D0);
  }

  return result;
}

unint64_t sub_185B5AC00()
{
  result = qword_1EA8CD9D8;
  if (!qword_1EA8CD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9D8);
  }

  return result;
}

unint64_t sub_185B5AC58()
{
  result = qword_1EA8CD9E0;
  if (!qword_1EA8CD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9E0);
  }

  return result;
}

unint64_t sub_185B5ACB0()
{
  result = qword_1EA8CD9E8;
  if (!qword_1EA8CD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9E8);
  }

  return result;
}

unint64_t sub_185B5AD08()
{
  result = qword_1EA8CD9F0;
  if (!qword_1EA8CD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9F0);
  }

  return result;
}

id sub_185B5AFC8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void __swiftcall APSubject.init()(APSubject *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_185B5B14C(void *a1)
{
  v1[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  result = [a1 bundleIdentifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = sub_185B67E4C();
  v7 = v6;

  v8 = &v1[OBJC_IVAR___APExtension_bundleIdentifier];
  *v8 = v5;
  v8[1] = v7;
  result = [a1 uniqueIdentifier];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *&v1[OBJC_IVAR___APExtension_extensionUUIDStorage] = result;
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v40);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  v33[1] = v33;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v38 = &type metadata for ServerBackedClientArena;
  v39 = &off_1EF46CD08;
  v13 = swift_allocObject();
  v37[0] = v13;
  v14 = v11[9];
  v13[9] = v11[8];
  v13[10] = v14;
  v13[11] = v11[10];
  v15 = v11[5];
  v13[5] = v11[4];
  v13[6] = v15;
  v16 = v11[7];
  v13[7] = v11[6];
  v13[8] = v16;
  v17 = v11[1];
  v13[1] = *v11;
  v13[2] = v17;
  v18 = v11[3];
  v13[3] = v11[2];
  v13[4] = v18;
  v19 = type metadata accessor for ClientArenaWrapper();
  v20 = objc_allocWithZone(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v36[3] = &type metadata for ServerBackedClientArena;
  v36[4] = &off_1EF46CD08;
  v25 = swift_allocObject();
  v36[0] = v25;
  v26 = v23[9];
  v25[9] = v23[8];
  v25[10] = v26;
  v25[11] = v23[10];
  v27 = v23[5];
  v25[5] = v23[4];
  v25[6] = v27;
  v28 = v23[7];
  v25[7] = v23[6];
  v25[8] = v28;
  v29 = v23[1];
  v25[1] = *v23;
  v25[2] = v29;
  v30 = v23[3];
  v25[3] = v23[2];
  v25[4] = v30;
  sub_185ADF8F0(v36, v20 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v35.receiver = v20;
  v35.super_class = v19;
  v31 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  v34.receiver = v1;
  v34.super_class = APExtension;
  v32 = objc_msgSendSuper2(&v34, sel_initWithArena_, v31);

  return v32;
}

id sub_185B5B4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  v6 = &v4[OBJC_IVAR___APExtension_bundleIdentifier];
  *v6 = a2;
  v6[1] = a3;
  *&v4[OBJC_IVAR___APExtension_extensionUUIDStorage] = sub_185B67ABC();
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v40);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  v33[1] = v33;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v38 = &type metadata for ServerBackedClientArena;
  v39 = &off_1EF46CD08;
  v11 = swift_allocObject();
  v37[0] = v11;
  v12 = v9[9];
  v11[9] = v9[8];
  v11[10] = v12;
  v11[11] = v9[10];
  v13 = v9[5];
  v11[5] = v9[4];
  v11[6] = v13;
  v14 = v9[7];
  v11[7] = v9[6];
  v11[8] = v14;
  v15 = v9[1];
  v11[1] = *v9;
  v11[2] = v15;
  v16 = v9[3];
  v11[3] = v9[2];
  v11[4] = v16;
  v17 = type metadata accessor for ClientArenaWrapper();
  v18 = objc_allocWithZone(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v36[3] = &type metadata for ServerBackedClientArena;
  v36[4] = &off_1EF46CD08;
  v23 = swift_allocObject();
  v36[0] = v23;
  v24 = v21[9];
  v23[9] = v21[8];
  v23[10] = v24;
  v23[11] = v21[10];
  v25 = v21[5];
  v23[5] = v21[4];
  v23[6] = v25;
  v26 = v21[7];
  v23[7] = v21[6];
  v23[8] = v26;
  v27 = v21[1];
  v23[1] = *v21;
  v23[2] = v27;
  v28 = v21[3];
  v23[3] = v21[2];
  v23[4] = v28;
  sub_185ADF8F0(v36, v18 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v35.receiver = v18;
  v35.super_class = v17;
  v29 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  v34.receiver = v4;
  v34.super_class = APExtension;
  v30 = objc_msgSendSuper2(&v34, sel_initWithArena_, v29);

  v31 = sub_185B67AFC();
  (*(*(v31 - 8) + 8))(a1, v31);
  return v30;
}

id sub_185B5B900()
{
  v0 = sub_185B67AFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v39 = (v4 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v48 = sub_185B12574;
  v49 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_185B6657C;
  v47 = &block_descriptor_90;
  v6 = _Block_copy(&aBlock);

  v7 = APGetSyncExtensionInfoProxy(v6);
  _Block_release(v6);
  v37 = *(v42 + OBJC_IVAR___APExtension_extensionUUIDStorage);
  sub_185B67ADC();
  v8 = sub_185B67ABC();
  v9 = *(v1 + 8);
  v40 = v3;
  v41 = v0;
  v38 = v1 + 8;
  v9(v3, v0);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v48 = sub_185B5EA98;
  v49 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_185B0E6C8;
  v47 = &block_descriptor_96_0;
  v11 = _Block_copy(&aBlock);

  [v7 getExtensionIsLockedForUUID:v8 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v36 = v9;
    v14 = v41;
    v15 = v42;
    v16 = v39;
    v17 = v40;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v18 = sub_185B67B8C();
    __swift_project_value_buffer(v18, qword_1ED6F5130);

    v19 = v15;
    v20 = sub_185B67B6C();
    v21 = sub_185B6808C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v22 = 136315394;
      v23 = v17;
      sub_185B67ADC();
      sub_185AE9C80();
      v24 = sub_185B6856C();
      v26 = v25;
      v36(v23, v14);
      v27 = sub_185ACB2C4(v24, v26, &v43);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      swift_beginAccess();
      if (*v16)
      {
        v28 = *v16;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v22 + 14) = v29;
      v31 = v35;
      *v35 = v30;
      _os_log_impl(&dword_185AC1000, v20, v21, "could not get locked value for extension %s: %@", v22, 0x16u);
      sub_185AC3F6C(v31);
      MEMORY[0x1865FE2F0](v31, -1, -1);
      v32 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1865FE2F0](v32, -1, -1);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }

    return 0;
  }

  return v13;
}

id _sSo11APExtensionC13AppProtectionE10firstPartySbvg_0()
{
  v0 = sub_185B67AFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v39 = (v4 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v48 = sub_185B12704;
  v49 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_185B6657C;
  v47 = &block_descriptor_79_0;
  v6 = _Block_copy(&aBlock);

  v7 = APGetSyncExtensionInfoProxy(v6);
  _Block_release(v6);
  v37 = *(v42 + OBJC_IVAR___APExtension_extensionUUIDStorage);
  sub_185B67ADC();
  v8 = sub_185B67ABC();
  v9 = *(v1 + 8);
  v40 = v3;
  v41 = v0;
  v38 = v1 + 8;
  v9(v3, v0);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v48 = sub_185B5EAEC;
  v49 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_185B0E6C8;
  v47 = &block_descriptor_85;
  v11 = _Block_copy(&aBlock);

  [v7 getExtensionIsFirstPartyForUUID:v8 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v36 = v9;
    v14 = v41;
    v15 = v42;
    v16 = v39;
    v17 = v40;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v18 = sub_185B67B8C();
    __swift_project_value_buffer(v18, qword_1ED6F5130);

    v19 = v15;
    v20 = sub_185B67B6C();
    v21 = sub_185B6808C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v22 = 136315394;
      v23 = v17;
      sub_185B67ADC();
      sub_185AE9C80();
      v24 = sub_185B6856C();
      v26 = v25;
      v36(v23, v14);
      v27 = sub_185ACB2C4(v24, v26, &v43);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      swift_beginAccess();
      if (*v16)
      {
        v28 = *v16;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v22 + 14) = v29;
      v31 = v35;
      *v35 = v30;
      _os_log_impl(&dword_185AC1000, v20, v21, "could not get isFirstParty value for extension %s: %@", v22, 0x16u);
      sub_185AC3F6C(v31);
      MEMORY[0x1865FE2F0](v31, -1, -1);
      v32 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1865FE2F0](v32, -1, -1);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }

    return 0;
  }

  return v13;
}

Swift::String __swiftcall APExtension.effectiveBundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APExtension_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APExtension_bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_185B5C430(uint64_t a1, unint64_t a2)
{
  v2[OBJC_IVAR___APViewSubject_forcedLockedValue] = 2;
  if (sub_185B5E4C8(a1, a2))
  {
    v5 = &v2[OBJC_IVAR___APViewSubject_bundleIdentifier];
    *v5 = a1;
    v5[1] = a2;
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    sub_185ADF8F0(&qword_1ED6F5148, v38);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
    MEMORY[0x1EEE9AC00](v6);
    v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v36 = &type metadata for ServerBackedClientArena;
    v37 = &off_1EF46CD08;
    v10 = swift_allocObject();
    v35[0] = v10;
    v11 = v8[9];
    v10[9] = v8[8];
    v10[10] = v11;
    v10[11] = v8[10];
    v12 = v8[5];
    v10[5] = v8[4];
    v10[6] = v12;
    v13 = v8[7];
    v10[7] = v8[6];
    v10[8] = v13;
    v14 = v8[1];
    v10[1] = *v8;
    v10[2] = v14;
    v15 = v8[3];
    v10[3] = v8[2];
    v10[4] = v15;
    v16 = type metadata accessor for ClientArenaWrapper();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    MEMORY[0x1EEE9AC00](v18);
    v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v34[3] = &type metadata for ServerBackedClientArena;
    v34[4] = &off_1EF46CD08;
    v22 = swift_allocObject();
    v34[0] = v22;
    v23 = v20[9];
    v22[9] = v20[8];
    v22[10] = v23;
    v22[11] = v20[10];
    v24 = v20[5];
    v22[5] = v20[4];
    v22[6] = v24;
    v25 = v20[7];
    v22[7] = v20[6];
    v22[8] = v25;
    v26 = v20[1];
    v22[1] = *v20;
    v22[2] = v26;
    v27 = v20[3];
    v22[3] = v20[2];
    v22[4] = v27;
    sub_185ADF8F0(v34, v17 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
    v33.receiver = v17;
    v33.super_class = v16;
    v28 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v32.receiver = v2;
    v32.super_class = APViewSubject;
    v29 = objc_msgSendSuper2(&v32, sel_initWithArena_, v28);

    return v29;
  }

  else
  {

    type metadata accessor for APViewSubject(v31);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_185B5C7A4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v26 = (v1 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v33 = sub_185B12704;
  v34 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_185B6657C;
  v32 = &block_descriptor_68_1;
  v3 = _Block_copy(&aBlock);

  v4 = APGetSyncViewSubjectInfoProxy(v3);
  _Block_release(v3);
  v27 = v0;
  v6 = *&v0[OBJC_IVAR___APViewSubject_bundleIdentifier];
  v5 = *&v0[OBJC_IVAR___APViewSubject_bundleIdentifier + 8];
  v7 = sub_185B67E1C();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  v33 = sub_185B5EAEC;
  v34 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_185B0E6C8;
  v32 = &block_descriptor_74_0;
  v9 = _Block_copy(&aBlock);

  [v4 getViewSubjectIsLockedForBundleID:v7 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v12 = v5;
    v25 = v6;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1ED6F5130);

    v14 = v27;
    v15 = sub_185B67B6C();
    v16 = sub_185B6808C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v12;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_185ACB2C4(v25, v17, &v28);
      *(v18 + 12) = 2112;
      swift_beginAccess();
      if (*v26)
      {
        v21 = *v26;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v18 + 14) = v22;
      *v19 = v23;
      _os_log_impl(&dword_185AC1000, v15, v16, "could not get locked value for view subject: %s: %@", v18, 0x16u);
      sub_185AC3F6C(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v11;
}

uint64_t sub_185B5CBB0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v12 = sub_185B5CD8C;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185B6657C;
  v11 = &block_descriptor_37_4;
  v2 = _Block_copy(&v8);

  v3 = APGetSyncViewSubjectInfoProxy(v2);
  _Block_release(v2);
  v4 = [v0 effectiveBundleIdentifier];
  v12 = sub_185B5EA34;
  v13 = v1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185B5CD98;
  v11 = &block_descriptor_40_2;
  v5 = _Block_copy(&v8);

  [v3 effectiveContainerLocalizedNameFor:v4 completion:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v6 = *(v1 + 16);

  return v6;
}

void sub_185B5CD98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_185B67E4C();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_185B5CE2C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v12 = sub_185B5D008;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185B6657C;
  v11 = &block_descriptor_23;
  v2 = _Block_copy(&v8);

  v3 = APGetSyncViewSubjectInfoProxy(v2);
  _Block_release(v2);
  v4 = [v0 effectiveBundleIdentifier];
  v12 = sub_185B5EA10;
  v13 = v1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185B5CD98;
  v11 = &block_descriptor_33_0;
  v5 = _Block_copy(&v8);

  [v3 effectiveContainerFor:v4 completion:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v6 = *(v1 + 16);

  return v6;
}

void sub_185B5D014(void *a1, const char *a2, ...)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  v5 = a1;
  oslog = sub_185B67B6C();
  v6 = sub_185B6808C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_185AC1000, oslog, v6, a2, v7, 0xCu);
    sub_185AC3F6C(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }
}

uint64_t sub_185B5D168(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1ED6F5130);
    v11 = a3;
    v12 = sub_185B67B6C();
    v13 = sub_185B6808C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a3;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_185AC1000, v12, v13, a5, v14, 0xCu);
      sub_185AC3F6C(v15);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }
  }

  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
}

uint64_t sub_185B5D328(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1[*a3];
  if (v4 == 2)
  {
    v6 = a1;
    LOBYTE(v4) = a4();
  }

  return v4 & 1;
}

uint64_t sub_185B5D39C(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3 == 2)
  {
    return a2();
  }

  else
  {
    return v3 & 1;
  }
}

Swift::String __swiftcall APViewSubject.effectiveBundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APViewSubject_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APViewSubject_bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_185B5D410(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedGuard];
  v8 = [v7 *a3];

  return v8;
}

id sub_185B5D4BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_185B67E1C();

  return v5;
}

unint64_t APApplication.description.getter()
{
  sub_185B6836C();

  MEMORY[0x1865FCF60](*(v0 + OBJC_IVAR___APApplication__bundleIdentifier), *(v0 + OBJC_IVAR___APApplication__bundleIdentifier + 8));
  MEMORY[0x1865FCF60](62, 0xE100000000000000);
  return 0xD000000000000010;
}

Swift::String __swiftcall APApplication.effectiveBundleIdentifier()()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_185B67E4C();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall APApplication.bundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APApplication__bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APApplication__bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void *sub_185B5D6F0(SEL *a1)
{
  v2 = [objc_opt_self() *a1];
  v3 = sub_185B67FDC();

  v4 = sub_185AC9820(v3, v1);

  return v4;
}

uint64_t sub_185B5D91C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v12);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_185B5DD44(v7, a2);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v12);
  *a3 = v9;
  return result;
}

BOOL sub_185B5DB4C()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v8);
  v1 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_185ADF8F0((v1 + 1), v7);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v7, v7[3]) + 16);

  os_unfair_lock_lock((v2 + 48));
  sub_185AC9760((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 48));
  v3 = v6;

  v4 = *(v3 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v4 != 0;
}

id sub_185B5DCE4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_OWORD *sub_185B5DD44(_OWORD *a1, uint64_t (*a2)(void))
{
  v56[3] = &type metadata for ServerBackedClientArena;
  v56[4] = &off_1EF46CD08;
  v4 = swift_allocObject();
  v56[0] = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  v10 = a2();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v56, &type metadata for ServerBackedClientArena);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v55[3] = &type metadata for ServerBackedClientArena;
  v55[4] = &off_1EF46CD08;
  v16 = swift_allocObject();
  v55[0] = v16;
  v17 = v14[9];
  v16[9] = v14[8];
  v16[10] = v17;
  v16[11] = v14[10];
  v18 = v14[5];
  v16[5] = v14[4];
  v16[6] = v18;
  v19 = v14[7];
  v16[7] = v14[6];
  v16[8] = v19;
  v20 = v14[1];
  v16[1] = *v14;
  v16[2] = v20;
  v21 = v14[3];
  v16[3] = v14[2];
  v16[4] = v21;
  sub_185ADF8F0(v55, v54);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v52 = &type metadata for ServerBackedClientArena;
  v53 = &off_1EF46CD08;
  v26 = swift_allocObject();
  v51[0] = v26;
  v27 = v24[9];
  v26[9] = v24[8];
  v26[10] = v27;
  v26[11] = v24[10];
  v28 = v24[5];
  v26[5] = v24[4];
  v26[6] = v28;
  v29 = v24[7];
  v26[7] = v24[6];
  v26[8] = v29;
  v30 = v24[1];
  v26[1] = *v24;
  v26[2] = v30;
  v31 = v24[3];
  v26[3] = v24[2];
  v26[4] = v31;
  v32 = type metadata accessor for ClientArenaWrapper();
  v33 = objc_allocWithZone(v32);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v50[3] = &type metadata for ServerBackedClientArena;
  v50[4] = &off_1EF46CD08;
  v38 = swift_allocObject();
  v50[0] = v38;
  v39 = v36[9];
  v38[9] = v36[8];
  v38[10] = v39;
  v38[11] = v36[10];
  v40 = v36[5];
  v38[5] = v36[4];
  v38[6] = v40;
  v41 = v36[7];
  v38[7] = v36[6];
  v38[8] = v41;
  v42 = v36[1];
  v38[1] = *v36;
  v38[2] = v42;
  v43 = v36[3];
  v38[3] = v36[2];
  v38[4] = v43;
  sub_185ADF8F0(v50, v33 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v49.receiver = v33;
  v49.super_class = v32;
  v44 = objc_msgSendSuper2(&v49, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  v48.receiver = v11;
  v48.super_class = v10;
  v45 = objc_msgSendSuper2(&v48, sel_initWithArena_, v44);

  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  return v45;
}

id sub_185B5E154(void *a1)
{
  v1[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  v3 = [a1 bundleIdentifier];
  v4 = sub_185B67E4C();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___APExtension_bundleIdentifier];
  *v7 = v4;
  v7[1] = v6;
  result = [a1 uniqueIdentifier];
  if (result)
  {
    *&v1[OBJC_IVAR___APExtension_extensionUUIDStorage] = result;
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    sub_185ADF8F0(&qword_1ED6F5148, v40);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v9);
    v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v38 = &type metadata for ServerBackedClientArena;
    v39 = &off_1EF46CD08;
    v13 = swift_allocObject();
    v37[0] = v13;
    v14 = v11[9];
    v13[9] = v11[8];
    v13[10] = v14;
    v13[11] = v11[10];
    v15 = v11[5];
    v13[5] = v11[4];
    v13[6] = v15;
    v16 = v11[7];
    v13[7] = v11[6];
    v13[8] = v16;
    v17 = v11[1];
    v13[1] = *v11;
    v13[2] = v17;
    v18 = v11[3];
    v13[3] = v11[2];
    v13[4] = v18;
    v19 = type metadata accessor for ClientArenaWrapper();
    v20 = objc_allocWithZone(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x1EEE9AC00](v21);
    v23 = (v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v36[3] = &type metadata for ServerBackedClientArena;
    v36[4] = &off_1EF46CD08;
    v25 = swift_allocObject();
    v36[0] = v25;
    v26 = v23[9];
    v25[9] = v23[8];
    v25[10] = v26;
    v25[11] = v23[10];
    v27 = v23[5];
    v25[5] = v23[4];
    v25[6] = v27;
    v28 = v23[7];
    v25[7] = v23[6];
    v25[8] = v28;
    v29 = v23[1];
    v25[1] = *v23;
    v25[2] = v29;
    v30 = v23[3];
    v25[3] = v23[2];
    v25[4] = v30;
    sub_185ADF8F0(v36, v20 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
    v35.receiver = v20;
    v35.super_class = v19;
    v31 = objc_msgSendSuper2(&v35, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    v34.receiver = v1;
    v34.super_class = APExtension;
    v32 = objc_msgSendSuper2(&v34, sel_initWithArena_, v31);

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_185B5E4C8(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v29 = sub_185B12704;
  v30 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_185B6657C;
  v28 = &block_descriptor_51;
  v6 = _Block_copy(&aBlock);

  v7 = APGetSyncViewSubjectInfoProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67E1C();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v29 = sub_185B5EAEC;
  v30 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_185B0E6C8;
  v28 = &block_descriptor_57_0;
  v10 = _Block_copy(&aBlock);

  [v7 getProcessCanHostViewSubjectWithBundleID:v8 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1ED6F5130);

    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_185ACB2C4(a1, a2, &v24);
      *(v16 + 12) = 2112;
      swift_beginAccess();
      v19 = *(v4 + 16);
      if (v19)
      {
        v20 = v19;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(v16 + 14) = v21;
      *v17 = v22;
      _os_log_impl(&dword_185AC1000, v14, v15, "could not get canHost value for view subject: %s: %@", v16, 0x16u);
      sub_185AC3F6C(v17);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_185B5E89C()
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6F5160;
  v1 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  sub_185ADF8F0((v4 + 8), v10);
  (*(v2 + 8))(v4, v0);
  v5 = *(*__swift_project_boxed_opaque_existential_1(v10, v10[3]) + 16);

  os_unfair_lock_lock((v5 + 48));
  sub_185B5EAF0((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 48));
  v6 = v9;

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v6;
}

uint64_t objectdestroy_53Tm()
{

  return swift_deallocObject();
}

void sub_185B5EB44()
{
  type metadata accessor for Preferences();
  swift_allocObject();
  sub_185B5EB80();
  qword_1EA8D2330 = v0;
}

void sub_185B5EB80()
{
  has_internal_ui = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAD8, &qword_185B6F888);
  v1 = swift_allocObject();
  *(v1 + 64) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 72) = 1;
  *(v1 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE0, &qword_185B6F890);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v163 = objc_opt_self();
  v3 = [v163 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = sub_185B67E4C();
  v7 = v6;

  if (v5 == 0xD000000000000018 && 0x8000000185B78D10 == v7)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = sub_185B6859C();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v11 = sub_185B67E1C();
    v12 = [v10 initWithSuiteName_];

    if (v12)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  v12 = [objc_opt_self() standardUserDefaults];
LABEL_11:
  *(v1 + 16) = v12;
  *(v1 + 24) = 0xD000000000000018;
  *(v1 + 32) = 0x8000000185B78D10;

  strcpy((v1 + 40), "retryTimeout");
  *(v1 + 53) = 0;
  *(v1 + 54) = -5120;
  *(v1 + 56) = 0x4008000000000000;
  *(v1 + 73) = has_internal_ui;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE8, &qword_185B6F898);
  swift_allocObject();
  v13 = sub_185B67C4C();
  *(v1 + 80) = v13;
  v172 = v13;
  sub_185AC7370(&qword_1EA8CB6F0, &qword_1EA8CDAE8, &qword_185B6F898, MEMORY[0x1E695BF88]);
  v14 = sub_185B67C6C();
  v15 = *(v1 + 96);
  *(v1 + 88) = v14;
  *(v1 + 96) = 0;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAF0, &qword_185B6F8A0);
  v17 = objc_allocWithZone(v16);
  swift_weakInit();
  swift_weakAssign();
  v171.receiver = v17;
  v171.super_class = v16;
  v18 = objc_msgSendSuper2(&v171, sel_init);
  v19 = *(v1 + 96);
  *(v1 + 96) = v18;

  v20 = *(v1 + 16);
  v21 = v18;
  v22 = v20;

  v23 = sub_185B67E1C();

  [v22 addObserver:v21 forKeyPath:v23 options:0 context:0];

  v164[2] = v1;
  v24 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAF8, &qword_185B6F8A8);
  v25 = swift_allocObject();
  *(v25 + 64) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 72) = 1;
  *(v25 + 96) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 104) = v26;
  *(v25 + 112) = 0;
  *(v25 + 120) = 1;
  v27 = [v163 mainBundle];
  v28 = [v27 bundleIdentifier];

  if (v28)
  {
    v29 = sub_185B67E4C();
    v31 = v30;

    if (v29 == 0xD000000000000018 && 0x8000000185B78D10 == v31)
    {

LABEL_16:
      v33 = [objc_opt_self() standardUserDefaults];
      goto LABEL_18;
    }

    v32 = sub_185B6859C();

    if (v32)
    {
      goto LABEL_16;
    }
  }

  v34 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v35 = sub_185B67E1C();
  v36 = [v34 initWithSuiteName_];

  v33 = v36;
  if (!v36)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_18:
  *(v25 + 16) = v33;
  *(v25 + 24) = 0xD000000000000018;
  *(v25 + 32) = 0x8000000185B78D10;

  *(v25 + 40) = 0xD000000000000012;
  *(v25 + 48) = 0x8000000185B78D30;
  *(v25 + 56) = 0;
  *(v25 + 73) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB00, &qword_185B6F8B0);
  swift_allocObject();
  v37 = sub_185B67C4C();
  *(v25 + 80) = v37;
  v172 = v37;
  sub_185AC7370(&qword_1EA8CB6E0, &qword_1EA8CDB00, &qword_185B6F8B0, MEMORY[0x1E695BF88]);
  v38 = sub_185B67C6C();
  v39 = *(v25 + 96);
  *(v25 + 88) = v38;
  *(v25 + 96) = 0;

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB08, &qword_185B6F8B8);
  v41 = objc_allocWithZone(v40);
  swift_weakInit();
  swift_weakAssign();
  v170.receiver = v41;
  v170.super_class = v40;
  v42 = objc_msgSendSuper2(&v170, sel_init);
  v43 = *(v25 + 96);
  *(v25 + 96) = v42;

  v44 = *(v25 + 16);
  v45 = v42;
  v46 = v44;

  v47 = sub_185B67E1C();

  [v46 addObserver:v45 forKeyPath:v47 options:0 context:0];

  v164[3] = v25;
  v48 = os_variant_has_internal_ui();
  v49 = swift_allocObject();
  *(v49 + 64) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 72) = 1;
  *(v49 + 96) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v49 + 104) = v50;
  *(v49 + 112) = 0;
  *(v49 + 120) = 1;
  v51 = [v163 mainBundle];
  v52 = [v51 bundleIdentifier];

  if (v52)
  {
    v53 = sub_185B67E4C();
    v55 = v54;

    if (v53 == 0xD000000000000018 && 0x8000000185B78D10 == v55)
    {

LABEL_23:
      v57 = [objc_opt_self() standardUserDefaults];
      goto LABEL_25;
    }

    v56 = sub_185B6859C();

    if (v56)
    {
      goto LABEL_23;
    }
  }

  v58 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v59 = sub_185B67E1C();
  v57 = [v58 initWithSuiteName_];

  if (!v57)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_25:
  *(v49 + 16) = v57;
  *(v49 + 24) = 0xD000000000000018;
  *(v49 + 32) = 0x8000000185B78D10;

  *(v49 + 40) = 0x636E65467473616CLL;
  *(v49 + 48) = 0xE900000000000065;
  *(v49 + 56) = 0;
  *(v49 + 73) = v48;
  swift_allocObject();
  v60 = sub_185B67C4C();
  *(v49 + 80) = v60;
  v172 = v60;
  v61 = sub_185B67C6C();
  v62 = *(v49 + 96);
  *(v49 + 88) = v61;
  *(v49 + 96) = 0;

  v63 = objc_allocWithZone(v40);
  swift_weakInit();
  swift_weakAssign();
  v169.receiver = v63;
  v169.super_class = v40;
  v64 = objc_msgSendSuper2(&v169, sel_init);
  v65 = *(v49 + 96);
  *(v49 + 96) = v64;

  v66 = *(v49 + 16);
  v67 = v64;
  v68 = v66;

  v69 = sub_185B67E1C();

  [v68 addObserver:v67 forKeyPath:v69 options:0 context:0];

  v164[4] = v49;
  v70 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB10, &qword_185B6F8C0);
  v71 = swift_allocObject();
  *(v71 + 64) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 72) = 1;
  *(v71 + 96) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  *(v71 + 104) = v72;
  *(v71 + 112) = 0;
  *(v71 + 120) = 1;
  v73 = [v163 mainBundle];
  v74 = [v73 bundleIdentifier];

  if (v74)
  {
    v75 = sub_185B67E4C();
    v77 = v76;

    if (v75 == 0xD000000000000018 && 0x8000000185B78D10 == v77)
    {

LABEL_30:
      v79 = [objc_opt_self() standardUserDefaults];
      goto LABEL_32;
    }

    v78 = sub_185B6859C();

    if (v78)
    {
      goto LABEL_30;
    }
  }

  v80 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v81 = sub_185B67E1C();
  v82 = [v80 initWithSuiteName_];

  v79 = v82;
  if (!v82)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_32:
  *(v71 + 16) = v79;
  *(v71 + 24) = 0xD000000000000018;
  *(v71 + 32) = 0x8000000185B78D10;

  *(v71 + 40) = 0xD00000000000001ALL;
  *(v71 + 48) = 0x8000000185B77980;
  *(v71 + 56) = 0;
  *(v71 + 73) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB18, &qword_185B6F8C8);
  swift_allocObject();
  v83 = sub_185B67C4C();
  *(v71 + 80) = v83;
  v172 = v83;
  sub_185AC7370(&qword_1EA8CB6E8, &qword_1EA8CDB18, &qword_185B6F8C8, MEMORY[0x1E695BF88]);
  v84 = sub_185B67C6C();
  v85 = *(v71 + 96);
  *(v71 + 88) = v84;
  *(v71 + 96) = 0;

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB20, &unk_185B6F8D0);
  v87 = objc_allocWithZone(v86);
  swift_weakInit();
  swift_weakAssign();
  v168.receiver = v87;
  v168.super_class = v86;
  v88 = objc_msgSendSuper2(&v168, sel_init);
  v89 = *(v71 + 96);
  *(v71 + 96) = v88;

  v90 = *(v71 + 16);
  v91 = v88;
  v92 = v90;

  v93 = sub_185B67E1C();

  [v92 addObserver:v91 forKeyPath:v93 options:0 context:0];

  v164[5] = v71;
  v94 = os_variant_has_internal_ui();
  v95 = swift_allocObject();
  *(v95 + 64) = 0;
  *(v95 + 24) = 0;
  *(v95 + 32) = 0;
  *(v95 + 72) = 1;
  *(v95 + 96) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  *(v95 + 104) = v96;
  *(v95 + 112) = 0;
  *(v95 + 120) = 1;
  v97 = [v163 mainBundle];
  v98 = [v97 bundleIdentifier];

  if (v98)
  {
    v99 = sub_185B67E4C();
    v101 = v100;

    if (v99 == 0xD000000000000018 && 0x8000000185B78D10 == v101)
    {

LABEL_37:
      v103 = [objc_opt_self() standardUserDefaults];
      goto LABEL_39;
    }

    v102 = sub_185B6859C();

    if (v102)
    {
      goto LABEL_37;
    }
  }

  v104 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v105 = sub_185B67E1C();
  v106 = [v104 initWithSuiteName_];

  v103 = v106;
  if (!v106)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_39:
  *(v95 + 16) = v103;
  *(v95 + 24) = 0xD000000000000018;
  *(v95 + 32) = 0x8000000185B78D10;

  *(v95 + 40) = 0xD00000000000001CLL;
  *(v95 + 48) = 0x8000000185B779A0;
  *(v95 + 56) = 0;
  *(v95 + 73) = v94;
  swift_allocObject();
  v107 = sub_185B67C4C();
  *(v95 + 80) = v107;
  v172 = v107;
  v108 = sub_185B67C6C();
  v109 = *(v95 + 96);
  *(v95 + 88) = v108;
  *(v95 + 96) = 0;

  v110 = objc_allocWithZone(v86);
  swift_weakInit();
  swift_weakAssign();
  v167.receiver = v110;
  v167.super_class = v86;
  v111 = objc_msgSendSuper2(&v167, sel_init);
  v112 = *(v95 + 96);
  *(v95 + 96) = v111;

  v113 = *(v95 + 16);
  v114 = v111;
  v115 = v113;

  v116 = sub_185B67E1C();

  [v115 addObserver:v114 forKeyPath:v116 options:0 context:0];

  v164[6] = v95;
  v117 = os_variant_has_internal_ui();
  v118 = swift_allocObject();
  *(v118 + 64) = 0;
  *(v118 + 24) = 0;
  *(v118 + 32) = 0;
  *(v118 + 72) = 1;
  *(v118 + 96) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  *(v118 + 104) = v119;
  *(v118 + 112) = 0;
  *(v118 + 120) = 1;
  v120 = [v163 mainBundle];
  v121 = [v120 bundleIdentifier];

  if (!v121)
  {
LABEL_45:
    v127 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v128 = sub_185B67E1C();
    v129 = [v127 initWithSuiteName_];

    v126 = v129;
    if (v129)
    {
      goto LABEL_46;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v122 = sub_185B67E4C();
  v124 = v123;

  if (v122 != 0xD000000000000018 || 0x8000000185B78D10 != v124)
  {
    v125 = sub_185B6859C();

    if (v125)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

LABEL_44:
  v126 = [objc_opt_self() standardUserDefaults];
LABEL_46:
  *(v118 + 16) = v126;
  *(v118 + 24) = 0xD000000000000018;
  *(v118 + 32) = 0x8000000185B78D10;

  *(v118 + 40) = 0xD00000000000001CLL;
  *(v118 + 48) = 0x8000000185B779C0;
  *(v118 + 56) = 0;
  *(v118 + 73) = v117;
  swift_allocObject();
  v130 = sub_185B67C4C();
  *(v118 + 80) = v130;
  v172 = v130;
  v131 = sub_185B67C6C();
  v132 = *(v118 + 96);
  *(v118 + 88) = v131;
  *(v118 + 96) = 0;

  v133 = objc_allocWithZone(v86);
  swift_weakInit();
  swift_weakAssign();
  v166.receiver = v133;
  v166.super_class = v86;
  v134 = objc_msgSendSuper2(&v166, sel_init);
  v135 = *(v118 + 96);
  *(v118 + 96) = v134;

  v136 = *(v118 + 16);
  v137 = v134;
  v138 = v136;

  v139 = sub_185B67E1C();

  [v138 addObserver:v137 forKeyPath:v139 options:0 context:0];

  v164[7] = v118;
  v140 = os_variant_has_internal_ui();
  v141 = swift_allocObject();
  *(v141 + 64) = 0;
  *(v141 + 24) = 0;
  *(v141 + 32) = 0;
  *(v141 + 72) = 1;
  *(v141 + 96) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = 0;
  *(v141 + 104) = v142;
  *(v141 + 112) = 0;
  *(v141 + 120) = 1;
  v143 = [v163 mainBundle];
  v144 = [v143 bundleIdentifier];

  if (v144)
  {
    v145 = sub_185B67E4C();
    v147 = v146;

    if (v145 == 0xD000000000000018 && 0x8000000185B78D10 == v147)
    {

LABEL_51:
      v149 = [objc_opt_self() standardUserDefaults];
LABEL_53:
      *(v141 + 16) = v149;
      *(v141 + 24) = 0xD000000000000018;
      *(v141 + 32) = 0x8000000185B78D10;

      *(v141 + 40) = 0xD00000000000001CLL;
      *(v141 + 48) = 0x8000000185B779E0;
      *(v141 + 56) = 0;
      *(v141 + 73) = v140;
      swift_allocObject();
      v153 = sub_185B67C4C();
      *(v141 + 80) = v153;
      v172 = v153;
      v154 = sub_185B67C6C();
      v155 = *(v141 + 96);
      *(v141 + 88) = v154;
      *(v141 + 96) = 0;

      v156 = objc_allocWithZone(v86);
      swift_weakInit();
      swift_weakAssign();
      v165.receiver = v156;
      v165.super_class = v86;
      v157 = objc_msgSendSuper2(&v165, sel_init);
      v158 = *(v141 + 96);
      *(v141 + 96) = v157;

      v159 = *(v141 + 16);
      v160 = v157;
      v161 = v159;

      v162 = sub_185B67E1C();

      [v161 addObserver:v160 forKeyPath:v162 options:0 context:0];

      v164[8] = v141;
      return;
    }

    v148 = sub_185B6859C();

    if (v148)
    {
      goto LABEL_51;
    }
  }

  v150 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v151 = sub_185B67E1C();
  v152 = [v150 initWithSuiteName_];

  v149 = v152;
  if (v152)
  {
    goto LABEL_53;
  }

LABEL_59:
  __break(1u);
}

unint64_t sub_185B5FF54()
{
  v1 = sub_185B686DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Preferences();
  v22 = v0;

  sub_185B686BC();
  sub_185B686CC();
  v5 = sub_185B6840C();

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_185B6836C();

  v22 = 0xD000000000000010;
  v23 = 0x8000000185B78DB0;
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = v2;
    v20 = v1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_185B4E9AC(0, v6, 0);
    v7 = v21;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v21 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_185B4E9AC((v11 > 1), v12 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v8 += 2;
      --v6;
    }

    while (v6);

    v2 = v19;
    v1 = v20;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v21 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC840, &qword_185B6F1F0);
  sub_185AC7370(&unk_1EA8CDB30, &qword_1EA8CC840, &qword_185B6F1F0, MEMORY[0x1E69E6310]);
  v14 = sub_185B67DCC();
  v16 = v15;

  MEMORY[0x1865FCF60](v14, v16);

  MEMORY[0x1865FCF60](62, 0xE100000000000000);
  v17 = v22;
  (*(v2 + 8))(v4, v1);
  return v17;
}

void *sub_185B60260()
{

  return v0;
}

uint64_t sub_185B602B0()
{
  sub_185B60260();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_185B60308()
{
  v7 = sub_185B680EC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_185AC7294();
  sub_185B67CCC();
  v8 = MEMORY[0x1E69E7CC0];
  sub_185B63720(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v7);
  result = sub_185B6813C();
  qword_1EA8CDA48 = result;
  return result;
}

uint64_t sub_185B6057C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_185B6061C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_185B6829C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_185B606C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = sub_185B6829C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_185B60774(uint64_t a1)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  v4 = sub_185B6829C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_185B60838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_185B67E4C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_185B682AC();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_185B63720(&qword_1EA8CCA18, type metadata accessor for NSKeyValueChangeKey, &unk_185B6BAA4);
    sub_185B67D8C();
  }

LABEL_7:
  sub_185B6237C();

  return sub_185B636B4(v13);
}

id sub_185B609AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t *UserDefault.__allocating_init(domain:key:defaultValue:appleInternalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  has_internal_ui = os_variant_has_internal_ui();
  v14 = sub_185B62DC8(a1, a2, a3, a4, a5, a6, has_internal_ui);
  v15 = *(v6 + 80);
  v17 = type metadata accessor for UserDefault.AppleInternalOnlyOption(0, v15, *(v6 + 88), v16);
  (*(*(v17 - 8) + 8))(a6, v17);
  (*(*(v15 - 8) + 8))(a5, v15);
  return v14;
}

void UserDefault.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 20);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v0[2];

    v5 = v3;
    v6 = sub_185B67E1C();

    [v4 removeObserver:v5 forKeyPath:v6];

    if (*(v0 + v2))
    {
      swift_weakAssign();

      (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 15), v1[10]);
      v7 = *(*v0 + 16);
      v8 = sub_185B6829C();
      v9 = *(*(v8 - 8) + 8);
      v9(v0 + v7, v8);

      v9(v0 + *(*v0 + 22), v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t UserDefault.__deallocating_deinit()
{
  UserDefault.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B60DAC()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B62E88(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_185B60E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);

  MEMORY[0x1865FCF60](v8, v9);

  MEMORY[0x1865FCF60](2112800, 0xE300000000000000);
  sub_185B61C80(v7);
  sub_185B6857C();
  result = (*(v4 + 8))(v7, v3);
  v11 = v13;
  *a2 = v12;
  a2[1] = v11;
  return result;
}

uint64_t sub_185B60F84(uint64_t a1)
{
  v3 = *v1;
  sub_185B62F58();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_185B61000(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_185B61BC0();
  return sub_185B61114;
}

void sub_185B61114(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_185B62ECC();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_185B62ECC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_185B6120C()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B4435C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B61290(void *a1)
{
  v82 = *a1;
  v2 = *(v82 + 80);
  v3 = sub_185B6829C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  v5 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v81 - v6;
  v99 = *(v3 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v89 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v81 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v81 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v81 - v16;
  v18 = *(v2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v85 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - v23;
  sub_185B61C80(&v81 - v23);
  v95 = v18[2];
  v96 = v24;
  v91 = v18 + 2;
  v95(v17, v24, v2);
  v87 = v18[7];
  v88 = v18 + 7;
  v87(v17, 0, 1, v2);
  v90 = a1;
  sub_185B606C8(v14);
  v84 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  isa = v99[2].isa;
  (isa)(v7, v17, v3);
  v92 = v25;
  v98 = v3;
  (isa)(&v7[v25], v14, v3);
  v100 = v18;
  v27 = v18[6];
  v97 = v7;
  v93 = v2;
  if (v27(v7, 1, v2) == 1)
  {
    v28 = v99[1].isa;
    v29 = v14;
    v30 = v98;
    (v28)(v29, v98);
    (v28)(v17, v30);
    v31 = v97;
    v32 = v93;
    v33 = v27(v97 + v92, 1, v93) == 1;
    v34 = v96;
    v35 = v31;
    if (v33)
    {
      (v28)(v31, v98);
      return (v100[1])(v34, v32);
    }

    goto LABEL_7;
  }

  v81 = v17;
  v37 = v97;
  (isa)(v94, v97, v98);
  v38 = v92;
  v32 = v93;
  if (v27(v37 + v92, 1, v93) == 1)
  {
    v39 = v99[1].isa;
    v40 = v14;
    v41 = v98;
    (v39)(v40, v98);
    (v39)(v81, v41);
    (v100[1])(v94, v32);
    v34 = v96;
    v35 = v97;
LABEL_7:
    (*(v83 + 8))(v35, v84);
    v42 = v90;
LABEL_8:
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v43 = sub_185B67B8C();
    __swift_project_value_buffer(v43, qword_1EA8D2278);
    v44 = v86;
    v45 = v95;
    v95(v86, v34, v32);

    v46 = sub_185B67B6C();
    v47 = sub_185B680AC();

    if (os_log_type_enabled(v46, v47))
    {
      LODWORD(v98) = v47;
      v99 = v46;
      v48 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v101 = v97;
      *v48 = 136315906;
      v49 = v42[4];
      if (v49)
      {
        v50 = v42;
        v51 = v42[3];
        v52 = v49;
      }

      else
      {
        v62 = [objc_opt_self() mainBundle];
        v63 = [v62 bundleIdentifier];

        if (v63)
        {
          v51 = sub_185B67E4C();
          v52 = v64;
        }

        else
        {
          v52 = 0xE300000000000000;
          v51 = 7104878;
        }

        v50 = v90;
      }

      v65 = sub_185ACB2C4(v51, v52, &v101);

      *(v48 + 4) = v65;
      *(v48 + 12) = 2080;
      v67 = v50[5];
      v66 = v50[6];

      v68 = sub_185ACB2C4(v67, v66, &v101);

      *(v48 + 14) = v68;
      *(v48 + 22) = 2080;
      v69 = v85;
      v95(v85, v44, v32);
      v70 = sub_185B67EBC();
      v72 = v71;
      v53 = v100[1];
      v53(v44, v32);
      v73 = sub_185ACB2C4(v70, v72, &v101);

      *(v48 + 24) = v73;
      *(v48 + 32) = 2080;
      sub_185B6057C(v69);
      v74 = sub_185B67EBC();
      v76 = sub_185ACB2C4(v74, v75, &v101);

      *(v48 + 34) = v76;
      v77 = v99;
      _os_log_impl(&dword_185AC1000, v99, v98, "Preferences[%s]: %s preference changed to %s [default=%s]", v48, 0x2Au);
      v78 = v97;
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v78, -1, -1);
      v79 = v48;
      v45 = v95;
      MEMORY[0x1865FE2F0](v79, -1, -1);

      v34 = v96;
    }

    else
    {

      v53 = v100[1];
      v53(v44, v32);
    }

    v80 = v89;
    v45(v89, v34, v32);
    v87(v80, 0, 1, v32);
    sub_185B60774(v80);

    sub_185B67C2C();

    return (v53)(v34, v32);
  }

  v54 = v100;
  v55 = v97;
  v56 = v85;
  (v100[4])(v85, v97 + v38, v32);
  v57 = v94;
  v58 = sub_185B67DEC();
  v53 = v54[1];
  v53(v56, v32);
  v59 = v99[1].isa;
  v60 = v14;
  v61 = v98;
  (v59)(v60, v98);
  (v59)(v81, v61);
  v53(v57, v32);
  (v59)(v55, v61);
  v42 = v90;
  v34 = v96;
  if ((v58 & 1) == 0)
  {
    goto LABEL_8;
  }

  return (v53)(v34, v32);
}

uint64_t sub_185B61BC0()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(*v0 + 80);

  v5 = v2;
  v6 = sub_185B637B4;
  v7 = v0;
  sub_185B28E50(sub_185B637DC, v4, v1);
}

uint64_t sub_185B61C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 10);
  v4 = sub_185B6829C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  sub_185B6061C(v21 - v9);
  v11 = *(v3 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v3) != 1)
  {
    return (*(v11 + 32))(a1, v10, v3);
  }

  v22 = v4;
  v23 = a1;
  v21[0] = *(v5 + 8);
  v21[1] = v5 + 8;
  (v21[0])(v10, v4);
  v13 = v1[2];

  v14 = sub_185B67E1C();

  v15 = [v13 valueForKey_];

  if (v15)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v24, v25);
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v17 = swift_dynamicCast();
  v18 = *(v11 + 56);
  v20 = v22;
  v19 = v23;
  if (v17)
  {
    v18(v8, 0, 1, v3);
    return (*(v11 + 32))(v19, v8, v3);
  }

  else
  {
    v18(v8, 1, 1, v3);
    sub_185B6057C(v19);
    result = (v12)(v8, 1, v3);
    if (result != 1)
    {
      return (v21[0])(v8, v20);
    }
  }

  return result;
}

uint64_t sub_185B61F64(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v8 = sub_185B6829C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  sub_185B6061C(v20 - v10);
  v12 = (*(v5 + 48))(v11, 1, v4);
  result = (*(v9 + 8))(v11, v8);
  if (v12 == 1)
  {
    sub_185B61C80(v7);
    v14 = sub_185B67DEC();
    result = (*(v5 + 8))(v7, v4);
    if ((v14 & 1) == 0)
    {
      v21 = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      (*(v5 + 16))(boxed_opaque_existential_1, a1, v4);
      v16 = *(v2 + 16);
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v17 = v16;
      v18 = sub_185B6858C();

      v19 = sub_185B67E1C();

      [v17 setObject:v18 forKey:v19];

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }
  }

  return result;
}

uint64_t sub_185B6222C@<X0>(void *a2@<X8>)
{
  result = sub_185B6841C();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id sub_185B62294(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  swift_weakAssign();
  v5 = type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_185B6237C()
{
  v0 = sub_185B67C9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B67CDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = v4;
    v13 = v1;
    if (qword_1EA8CC418 != -1)
    {
      v10 = result;
      swift_once();
      result = v10;
    }

    v11 = qword_1EA8CDA48;
    aBlock[4] = sub_185B6371C;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_24;
    v9 = _Block_copy(aBlock);

    sub_185B67CBC();
    v14 = MEMORY[0x1E69E7CC0];
    sub_185B63720(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v7, v3, v9);
    _Block_release(v9);

    (*(v13 + 8))(v3, v0);
    (*(v5 + 8))(v7, v12);
  }

  return result;
}

uint64_t *sub_185B626C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v70 = a7;
  v69 = a6;
  v71 = a5;
  v66 = a3;
  v12 = *v8;
  v13 = *(*v8 + 80);
  v14 = sub_185B6829C();
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = v57 - v15;
  v68 = *(v12 + 88);
  v67 = type metadata accessor for UserDefault.AppleInternalOnlyOption(0, v13, v68, v16);
  v64 = *(v67 - 8);
  v17 = MEMORY[0x1EEE9AC00](v67);
  v65 = v57 - v18;
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = v57 - v20;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v21 = *(v19 + 56);
  v59 = *(v12 + 128);
  v21(&v8[v59], 1, 1, v13);
  *&v8[*(*v8 + 160)] = 0;
  v22 = *(*v8 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE0, &qword_185B6F890);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *&v8[v22] = v23;
  v24 = &v8[*(*v8 + 176)];
  v57[1] = v19 + 56;
  v58 = v21;
  v21(v24, 1, 1, v13);
  v62 = v14;
  if (!a2)
  {
    goto LABEL_7;
  }

  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v57[0] = a4;
    v27 = sub_185B67E4C();
    v29 = v28;

    if (v27 == a1 && v29 == a2)
    {

      a4 = v57[0];
LABEL_7:
      result = [objc_opt_self() standardUserDefaults];
      goto LABEL_9;
    }

    v30 = sub_185B6859C();

    a4 = v57[0];
    if (v30)
    {
      goto LABEL_7;
    }
  }

  v32 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v33 = sub_185B67E1C();

  v34 = [v32 initWithSuiteName_];

  result = v34;
  if (!v34)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  *(v8 + 2) = result;
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;

  *(v8 + 5) = v66;
  *(v8 + 6) = a4;
  v35 = *(*v8 + 120);
  v36 = *(v19 + 16);
  v36(&v8[v35], v71, v13);
  v37 = v70;
  v8[*(*v8 + 136)] = v70 & 1;
  v38 = v64;
  v39 = v65;
  v40 = v67;
  (*(v64 + 16))(v65, v69, v67);
  if ((*(v19 + 48))(v39, 1, v13) == 1)
  {
    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v41 = v63;
    (*(v19 + 32))(v63, v39, v13);
    if (v37)
    {
      swift_beginAccess();
      (*(v19 + 40))(&v8[v35], v41, v13);
    }

    else
    {
      (*(v19 + 8))(v41, v13);
      v42 = v60;
      v36(v60, v71, v13);
      v58(v42, 0, 1, v13);
      v43 = v59;
      swift_beginAccess();
      (*(v61 + 40))(&v8[v43], v42, v62);
    }

    swift_endAccess();
  }

  sub_185B67C5C();
  v44 = sub_185B67C3C();
  *&v8[*(*v8 + 144)] = v44;
  v72 = v44;
  swift_getWitnessTable();
  *&v8[*(*v8 + 152)] = sub_185B67C6C();
  v45 = *(*v8 + 160);
  v46 = *&v8[v45];
  *&v8[v45] = 0;

  type metadata accessor for UserDefault._KVOUserDefaultsObserver(0, v13, v68, v47);

  v52 = sub_185B62340(v48, v49, v50, v51);

  v53 = *&v8[v45];
  *&v8[v45] = v52;
  v54 = v52;

  v55 = *(v8 + 2);

  v56 = sub_185B67E1C();

  [v55 addObserver:v54 forKeyPath:v56 options:0 context:0];

  return v8;
}

uint64_t *sub_185B62DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  type metadata accessor for UserDefault(0, *(v7 + 80), *(v7 + 88), a4);
  swift_allocObject();
  return sub_185B626C8(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_185B62E88@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_185B62ECC()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B44694(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B62FA4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_185B6829C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_185B631D4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_185B63230(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_185B633B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_185B636B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B63720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_185B63808(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B63988()
{
  result = sub_185B639AC();
  byte_1EA8CB9A8 = result & 1;
  return result;
}

uint64_t sub_185B639AC()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_185B67E4C();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x8000000185B78D10 == v4)
    {

      return 1;
    }

    v6 = sub_185B6859C();

    if (v6)
    {
      return 1;
    }
  }

  if (qword_1EA8CC048 != -1)
  {
    swift_once();
  }

  if (byte_1EA8D22E0)
  {
    return 1;
  }

  sp = 0;
  if (bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.appprotectiond.write", &sp) || !sp)
  {
    v8 = 0;
  }

  else
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
    v8 = 1;
  }

  result = xpc_copy_entitlement_for_self();
  if (result)
  {
    value = xpc_BOOL_get_value(result);
    if ((v8 & 1) == 0)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v10 = sub_185B67B8C();
      __swift_project_value_buffer(v10, qword_1ED6F5130);
      v11 = sub_185B67B6C();
      v12 = sub_185B6808C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_185AC1000, v11, v12, "Client does not have access to com.apple.appprotectiond.write mach service", v13, 2u);
        MEMORY[0x1865FE2F0](v13, -1, -1);
      }
    }

    if (!value)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v14 = sub_185B67B8C();
      __swift_project_value_buffer(v14, qword_1ED6F5130);
      v15 = sub_185B67B6C();
      v16 = sub_185B6808C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_185AC1000, v15, v16, "Client is missing com.apple.appprotectiond.write.access entitlement", v17, 2u);
        MEMORY[0x1865FE2F0](v17, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    return v8 & value;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_185B63CEC(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2)
    {
      MEMORY[0x1865FCF60](0xD000000000000011, 0x8000000185B79050);
      return 0xD000000000000017;
    }

    sub_185B6836C();

    v8 = 0xD000000000000010;
    v9 = 0x8000000185B79070;
    v4 = (a1 & 1) == 0;
  }

  else
  {
    if (a1 >> 6)
    {
      v1 = 0x646469487465732ELL;
      v2 = 0xEB00000000286E65;
    }

    else
    {
      v1 = 0x6B636F4C7465732ELL;
      v2 = 0xEB00000000286465;
    }

    v8 = v1;
    v9 = v2;
    v4 = (a1 & 1) == 0;
  }

  if (v4)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1865FCF60](v5, v6);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v8, v9);

  return 0xD000000000000017;
}

unint64_t sub_185B63E70(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_185B6836C();

      v6 = 0x8000000185B78F90;
      v7 = 0xD00000000000002FLL;
    }

    else
    {
      sub_185B6836C();

      v6 = 0x8000000185B78FC0;
      v7 = 0xD000000000000027;
    }

    v12 = v7;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    sub_185B6836C();

    v5 = "appNoLongerLockable(";
    goto LABEL_8;
  }

  if (a3 != 3)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        v8 = "SettingsAuthorityEvent.";
        v9 = 0xD000000000000030;
        goto LABEL_21;
      }

      v11 = "clearPreferencesForNonHideableApps";
    }

    else
    {
      if (!(a1 | a2))
      {
        v8 = "ForNonLockableApps";
        v9 = 0xD00000000000001BLL;
LABEL_21:
        MEMORY[0x1865FCF60](v9, v8 | 0x8000000000000000);
        return 0xD000000000000017;
      }

      v11 = "clearPreferencesForNonLockableApps";
    }

    v8 = (v11 - 32);
    v9 = 0xD000000000000022;
    goto LABEL_21;
  }

  sub_185B6836C();

  v5 = "appNoLongerHideable(";
LABEL_8:
  v6 = (v5 - 32) | 0x8000000000000000;
  v12 = 0xD000000000000014;
LABEL_14:
  v13 = v6;
  MEMORY[0x1865FCF60](a1, a2);
  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v12, v13);

  return 0xD000000000000017;
}

uint64_t sub_185B6406C()
{
  sub_185ACEE6C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);
  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_185AC1000, v1, v2, "checking for u13 account", v3, 2u);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  return sub_185B65124();
}

id sub_185B6415C(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = a1 >> 6;
  if (v11 != 3 && (sub_185AC9DE4() & 1) == 0)
  {
    return sub_185AD0148(8uLL, 0, 0, 262, 0xD000000000000034, 0x8000000185B78FF0);
  }

  (*(v10[14] + 40))(&v35, a2, a3, v10[10]);
  sub_185AC66F8(&v35, v38);
  if (a1 > 0x3Fu)
  {
    if (v11 == 1)
    {
      v24 = (v4 + *(*v4 + 192));
      v25 = v24[3];
      v26 = v24[4];
      v27 = __swift_project_boxed_opaque_existential_1(v24, v25);
      v28 = *(*v5 + 200);
      v29 = *(*v5 + 208);
      v31 = v10[17];
      v36 = v10[13];
      v30 = v36;
      v37 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v5 + v29, v30);
      v33 = __swift_project_boxed_opaque_existential_1(v38, v39);
      v23 = sub_185B65CE4(v33, v27, v5 + v28, &v35, &type metadata for AppRecordProtectabilityInfo, v10[12], v25, &off_1EF466208, *(v10[16] + 8), *(v26 + 8));
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      sub_185B662E0(&v35);
      if (v23)
      {
        return v23;
      }

      return 0;
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    return 0;
  }

  v12 = (a4 >> 8) & 1;
  v13 = (v5 + *(*v5 + 192));
  v14 = v13[3];
  v15 = v13[4];
  v16 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v17 = *(*v5 + 200);
  v18 = *(*v5 + 208);
  v20 = v10[17];
  v36 = v10[13];
  v19 = v36;
  v37 = v20;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(v19 - 8) + 16))(v21, v5 + v18, v19);
  v22 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v23 = sub_185B65800(v22, v12, v16, v5 + v17, &v35, &type metadata for AppRecordProtectabilityInfo, v14, v10[12], &off_1EF466208, *(v15 + 8), *(v10[16] + 8));
  sub_185B662E0(&v35);
  if (!v23)
  {
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  return v23;
}

char *sub_185B644A0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = (*(*(*v3 + 112) + 32))(a1, a2, *(*v3 + 80));
  v9 = MEMORY[0x1E69E7CC0];
  if ((v8 & 1) == 0 && (a3 & 0x10000) == 0)
  {
    v9 = sub_185B3CF60(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_185B3CF60((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = -64;
  }

  if (qword_1EA8CB7B0 != -1)
  {
    swift_once();
  }

  if (sub_185AC3A7C(a1, a2, qword_1EA8D22B0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_185B3CF60(0, *(v9 + 2) + 1, 1, v9);
    }

    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    if (v13 >= v12 >> 1)
    {
      v9 = sub_185B3CF60((v12 > 1), v13 + 1, 1, v9);
    }

    *(v9 + 2) = v13 + 1;
    v9[v13 + 32] = -64;
  }

  if (v8)
  {
    if ((a3 & 0x10000) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_185B3CF60(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_185B3CF60((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v9[v15 + 32] = 0x80;
    }

    if ((a3 & 1) != 0 && (v16 = (v4 + *(*v4 + 192)), v17 = v16[3], v18 = v16[4], __swift_project_boxed_opaque_existential_1(v16, v17), ((*(*(v18 + 8) + 8))(a1, a2, v17) & 1) == 0) || (a3 & 0x100) != 0 && (v19 = (v4 + *(*v4 + 192)), v20 = v19[3], v21 = v19[4], __swift_project_boxed_opaque_existential_1(v19, v20), ((*(*(v21 + 8) + 16))(a1, a2, v20) & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_185B3CF60(0, *(v9 + 2) + 1, 1, v9);
      }

      v23 = *(v9 + 2);
      v22 = *(v9 + 3);
      if (v23 >= v22 >> 1)
      {
        v9 = sub_185B3CF60((v22 > 1), v23 + 1, 1, v9);
      }

      *(v9 + 2) = v23 + 1;
      v9[v23 + 32] = -64;
    }
  }

  return v9;
}

id sub_185B647EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_185B67C9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B67CDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_185ACB94C(v12);

  v14 = *(v13 + 16);
  v15 = &off_185B6A000;
  v31 = v9;
  v32 = v8;
  if (v14 == 1)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v23 = result;
      sub_185AD7200(v13);
      if (v24)
      {
        v25 = sub_185B67E1C();
      }

      else
      {
        v25 = 0;
      }

      v26 = [v23 applicationIsInstalled_];

      if (v26)
      {

        v16 = v13;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v16 = MEMORY[0x1E69E7CD0];
  if (v14)
  {
    v30 = v5;
    v39 = MEMORY[0x1E69E7CD0];
    v17 = [objc_opt_self() enumeratorWithOptions_];
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = &v39;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_185AD8474;
    *(v19 + 24) = v18;
    v37 = sub_185B40994;
    v38 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185AD7364;
    v36 = &block_descriptor_13_1;
    v20 = _Block_copy(&aBlock);

    [v17 swift:v20 forEach:?];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v16 = v39;

      v5 = v30;
      v15 = &off_185B6A000;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_12:
  if (*(v16 + 16) <= *(v13 + 16) >> 3)
  {
    aBlock = v13;
    sub_185ACC0B0(v16);

    v27 = aBlock;
  }

  else
  {
    v27 = sub_185B3FA60(v16, v13);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v3;
  v37 = sub_185B662D8;
  v38 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v34 = *(v15 + 482);
  v35 = sub_185ACA0E8;
  v36 = &block_descriptor_19_1;
  v29 = _Block_copy(&aBlock);

  sub_185B67CBC();
  v39 = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v11, v7, v29);
  _Block_release(v29);
  (*(v5 + 8))(v7, v4);
  (*(v31 + 8))(v11, v32);
}

void sub_185B64D00(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_185B67C2C();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_185B64E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_185B67C9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_185B67CDC();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v2;
  aBlock[4] = sub_185B657F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_4_0;
  v12 = _Block_copy(aBlock);

  sub_185B67CBC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_185B650AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {

      sub_185B67C2C();

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_185B65124()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_185B67C9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67CDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v2 + 128) + 8) + 8))(*(v2 + 96));
  if (result)
  {
    v16 = v1[3];
    aBlock[4] = sub_185B66564;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_25;
    v12 = _Block_copy(aBlock);
    v15 = v7;
    v13 = v12;

    sub_185B67CBC();
    v17 = MEMORY[0x1E69E7CC0];
    sub_185B26D00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v10, v6, v13);
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v15);
  }

  return result;
}

id *sub_185B65410()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 22));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 24)));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 25));
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 26));
  return v0;
}

uint64_t sub_185B655C0()
{
  sub_185B65410();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_13AppProtection22SettingsAuthorityEventO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_185B6564C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_185B65694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_185B656D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id sub_185B65800(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v40 = a2;
  v17 = *(a8 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v39[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = v25;
  v47 = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  (*(v22 + 16))(v24, a3, a7);
  (*(v17 + 16))(v20, a4, a8);
  sub_185B4A164(v41, v43);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v42 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v32 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 62, 0xD000000000000072, 0x8000000185B78080);

        goto LABEL_15;
      }
    }
  }

  else
  {
    sub_185B662E0(v43);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v29 = 0xD000000000000020;
    v30 = 0x8000000185B77F30;
    v28 = 17;
    v31 = 66;
    goto LABEL_14;
  }

  v43[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v28 = 2;
    v29 = 0;
    v30 = 0;
    v31 = 70;
    goto LABEL_14;
  }

  if ((*(a11 + 8))(a8))
  {
    v28 = 12;
    v29 = 0;
    v30 = 0;
    v31 = 74;
LABEL_14:
    v32 = sub_185AD0148(v28, v29, v30, v31, 0xD000000000000072, 0x8000000185B78080);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    (*(v22 + 8))(v24, a7);
    (*(v17 + 8))(v20, a8);
    return v32;
  }

  if (v40)
  {
    v29 = 0xD000000000000026;
    v30 = 0x8000000185B77BF0;
    v28 = 3;
    v31 = 78;
    goto LABEL_14;
  }

  v34 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v32 = sub_185ACF880(*v34, v34[1]);
  if (v32)
  {
    goto LABEL_15;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v45 v46)];
  if (result)
  {
    v35 = result;
    v36 = sub_185B67E4C();
    v38 = v37;

    LOBYTE(v35) = (*(a10 + 8))(v36, v38, a7, a10);

    if (v35)
    {
      v32 = 0;
      goto LABEL_15;
    }

    v29 = 0xD000000000000023;
    v30 = 0x8000000185B78100;
    v28 = 9;
    v31 = 86;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_185B65CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v51[0] = a4;
  v16 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v24;
  v56 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v27 = *(*(a5 - 8) + 16);
  v28 = a5;
  v29 = v16;
  v27(boxed_opaque_existential_1, a1, v28);
  (*(v21 + 16))(v23, a2, a7);
  (*(v16 + 16))(v19, a3, v11);
  sub_185B4A164(v51[0], v52);
  if (v53)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v51[1] + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v34 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 28, 0xD00000000000005ELL, 0x8000000185B77F60);

        goto LABEL_15;
      }
    }
  }

  else
  {
    sub_185B662E0(v52);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v31 = 0xD000000000000020;
    v32 = 0x8000000185B77F30;
    v30 = 17;
    v33 = 32;
    goto LABEL_14;
  }

  v52[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v30 = 2;
    v31 = 0;
    v32 = 0;
    v33 = 36;
    goto LABEL_14;
  }

  if ((*(a9 + 8))(v11))
  {
    v30 = 12;
    v31 = 0;
    v32 = 0;
    v33 = 40;
LABEL_14:
    v34 = sub_185AD0148(v30, v31, v32, v33, 0xD00000000000005ELL, 0x8000000185B77F60);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    (*(v21 + 8))(v23, a7);
    (*(v29 + 8))(v19, v11);
    return v34;
  }

  v36 = __swift_project_boxed_opaque_existential_1(v54, v55);
  v34 = sub_185AD0A7C(*v36, v36[1]);
  if (v34)
  {
    goto LABEL_15;
  }

  v37 = v23;
  v51[0] = v19;
  v38 = v11;
  v39 = a7;
  result = [*__swift_project_boxed_opaque_existential_1(v54 v55)];
  if (result)
  {
    v40 = result;
    v41 = sub_185B67E4C();
    v43 = v42;

    v44 = v41;
    a7 = v39;
    LOBYTE(v40) = (*(a10 + 8))(v44, v43, v39, a10);

    if ((v40 & 1) == 0)
    {
      goto LABEL_23;
    }

    result = [*__swift_project_boxed_opaque_existential_1(v54 v55)];
    if (result)
    {
      v45 = result;
      v46 = sub_185B67E4C();
      v48 = v47;

      v49 = v46;
      a7 = v39;
      v50 = (*(a10 + 16))(v49, v48, v39, a10);

      if (v50)
      {
        v34 = 0;
LABEL_24:
        v11 = v38;
        v19 = v51[0];
        v23 = v37;
        goto LABEL_15;
      }

LABEL_23:
      v34 = sub_185AD0148(9uLL, 0xD000000000000023, 0x8000000185B77FC0, 48, 0xD00000000000005ELL, 0x8000000185B77F60);
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B66224(int a1, int a2)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if ((a2 & 0xC0) != 0x80)
      {
        return 0;
      }

      return (a2 ^ a1 ^ 1) & 1;
    }

    if (a2 == 192)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 6))
    {
      if (a2 >= 0x40u)
      {
        return 0;
      }

      return (a2 ^ a1 ^ 1) & 1;
    }

    if ((a2 & 0xC0) == 0x40)
    {
      return (a2 ^ a1 ^ 1) & 1;
    }
  }

  return 0;
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_185B662E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD600, &qword_185B6ED10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PreferenceSettingAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PreferenceSettingAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_185B664E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_185B66514(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

void sub_185B6657C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_185B665E4()
{
  v1 = *v0;
  v17 = v0[1];
  v18 = v1;
  v11[5] = v1;
  v11[6] = v17;
  v2 = v0[2];
  v15 = v0[3];
  v16 = v2;
  v11[7] = v2;
  v11[8] = v15;
  v3 = v0[5];
  v14 = v0[4];
  v12 = MEMORY[0x1E69E7CD0];
  v13 = v3;
  v11[9] = v14;
  v11[10] = v3;
  sub_185B668E4(&v18, v11);
  sub_185B668E4(&v17, v11);
  sub_185B668E4(&v16, v11);
  sub_185B668E4(&v15, v11);
  sub_185B668E4(&v14, v11);
  sub_185B668E4(&v13, v11);

  sub_185B66724(v4);

  sub_185B66724(v5);

  sub_185B66724(v6);

  sub_185B66724(v7);

  sub_185B66724(v8);

  sub_185B66724(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_185B66724(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_185AC407C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_185B66828()
{
  v1 = *v0;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v1);
  return sub_185B686AC();
}

uint64_t sub_185B6689C(uint64_t a1)
{
  sub_185B6866C();
  MEMORY[0x1865FD6D0](*v1);
  return sub_185B686AC();
}

uint64_t sub_185B668E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_185B66998(uint64_t *a1, int a2)
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

uint64_t sub_185B669E0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_185B66A78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_185B66AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id DataAccess.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id DataAccess.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DataAccess();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id DataAccess.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAccess();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static DataAccess.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_185B66CF4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_185B67E4C();
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

void sub_185B66D58(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_185B67E1C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_185B66DC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 raw_audit_token];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185B67A5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_185B66E30(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_185B67A4C();
  }

  v4 = v3;
  [v2 setRaw_audit_token_];
}

uint64_t sub_185B66EA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 transaction_uuid];
  if (v3)
  {
    v4 = v3;
    sub_185B67ADC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_185B67AFC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_185B66F4C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_185AE7B2C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_185B67ABC();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTransaction:v10 uuid:?];
}

uint64_t sub_185B67078@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DataAccess();
  result = sub_185B6837C();
  *a2 = result;
  return result;
}

id PreferenceSetting.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PreferenceSetting.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PreferenceSetting();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PreferenceSetting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferenceSetting();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PreferenceSetting.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_185B672AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185B67E4C();
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

void sub_185B67314(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_185B67E1C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setBundleid_];
}

uint64_t sub_185B67384@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PreferenceSetting();
  result = sub_185B6837C();
  *a2 = result;
  return result;
}

void APDoFirstRunWork_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "Failed to open semaphore, not doing first-run work: errno=%{darwin.errno}d", v2, 8u);
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "connection to %@ interrupted", &v3, 0xCu);
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_152_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "connection to %@ invalidated", &v3, 0xCu);
}

void __APGetAuditTokenForSelf_block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_185AC1000, a2, OS_LOG_TYPE_FAULT, "failed to get audit token for current process: %llx", &v2, 0xCu);
}

void gotLoadHelper_x21__OBJC_CLASS___PDCPreflightManager(double a1)
{
  if (!atomic_load(dlopenHelperFlag_PrivacyDisclosureCore))
  {
    dlopenHelper_PrivacyDisclosureCore(a1);
  }
}

double dlopenHelper_PrivacyDisclosureCore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PrivacyDisclosureCore.framework/PrivacyDisclosureCore", 0);
  atomic_store(1u, dlopenHelperFlag_PrivacyDisclosureCore);
  return a1;
}