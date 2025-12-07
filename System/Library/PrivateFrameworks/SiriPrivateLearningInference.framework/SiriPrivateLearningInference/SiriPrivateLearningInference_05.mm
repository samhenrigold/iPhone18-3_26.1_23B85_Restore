void *sub_222B941C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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

  return result;
}

void *sub_222B94340(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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
        v22 = *v20;
        v21 = v20[1];
        LODWORD(v20) = *(*(v4 + 56) + 4 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + 4 * v19) = v20;
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

void *sub_222B94498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B30, &unk_222C9A458);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

void *sub_222B945E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_222B95964(&v32, &v31);
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

void *sub_222B94798(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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

void *sub_222B9490C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_222B43E3C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_222B405A0(v25, *(v4 + 56) + v22);
        result = sub_222B95830(v20, v21);
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

void *sub_222B94AE0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_222C9367C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_222C94F6C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
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

  return result;
}

void *sub_222B94D58(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_222B94EB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_222B95038@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[5];
  *(a2 + 8) = a1[1];
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = v4;
  *a2 = v2;
}

uint64_t _s28SiriPrivateLearningInference19SlotsClassificationV17TurnSlotValuePairV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_222B95148(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_222B69B4C(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_222B4C418(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_222B4C418((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_222B952A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  while (1)
  {
    v13 = v8;
    v14 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a1 + 56) + 32 * v16;
    v21 = *v20;
    v22 = *(v20 + 24);
    v49[0] = v18;
    v49[1] = v19;
    v49[2] = v21;
    v50 = *(v20 + 8);
    v51 = v22;

    a2(&v52, v49);

    v23 = v53;
    if (!v53)
    {
LABEL_22:
      sub_222B504E8(a1);
    }

    v24 = v52;
    v44 = v54;
    v46 = v55;
    v25 = *v56;
    v27 = sub_222B8C9DC(v52, v53);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_222B938D0();
      }
    }

    else
    {
      sub_222B8F834(v30, a4 & 1);
      v32 = sub_222B8C9DC(v24, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v27 = v32;
    }

    v43 = (v13 - 1) & v13;
    v34 = *v56;
    if (v31)
    {
      v11 = (v34[7] + 32 * v27);
      v45 = *v11;
      v48 = v11[1];

      v12 = (v34[7] + 32 * v27);
      *v12 = v45;
      v12[1] = v48;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v24;
      v35[1] = v23;
      v36 = (v34[7] + 32 * v27);
      *v36 = v44;
      v36[1] = v46;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v34[2] = v39;
    }

    a4 = 1;
    v10 = v14;
    v8 = v43;
  }

  v15 = v10;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_22;
    }

    v13 = *(v5 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222B955DC(uint64_t a1, unsigned int a2)
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

uint64_t sub_222B95638(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222B956BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_222B95704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B95770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_222B957CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_222B95830(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_222B958F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256C8, &unk_222C98AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B959C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222B95A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B95A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B95AE0()
{
  type metadata accessor for MediaInAppFollowupClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D025BB0, qword_222C9A568);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025B98 = 91;
  unk_27D025BA0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B95BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  if (*(a2 + 8))
  {
    v10 = *(a2 + 16);
    sub_222B41CB8(v10, v6);
    v11 = sub_222C935EC();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v6, 1, v11) == 1)
    {
      sub_222B41CE4(v10);
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        sub_222C935AC();
        v15 = 0;
      }

      (*(v12 + 56))(v9, v15, 1, v11);
      if (v13(v6, 1, v11) != 1)
      {
        sub_222B4FCD4(v6, &qword_27D025360, &unk_222C98300);
      }
    }

    else
    {
      (*(v12 + 32))(v9, v6, v11);
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    if (v13(v9, 1, v11) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D025360, &unk_222C98300);
      return 0;
    }

    else
    {
      sub_222C935BC();
      v24 = v23;
      (*(v12 + 8))(v9, v11);
      return v24;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v16 = sub_222C9431C();
    __swift_project_value_buffer(v16, qword_280FE2340);
    v17 = sub_222C942FC();
    v18 = sub_222C94A3C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v26);
      _os_log_impl(&dword_222B39000, v17, v18, "%s No Siri play event found. Using the last UEI timestamp of the final turn.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x223DCA8C0](v20, -1, -1);
      MEMORY[0x223DCA8C0](v19, -1, -1);
    }

    v21 = type metadata accessor for FeaturisedTurn(0);
    return sub_222B41494(*(a1 + *(v21 + 24)));
  }
}

uint64_t sub_222B95F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = sub_222C935EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v17 = *(a3 + 32);
  v18 = *(a3 + 16);
  v37[0] = *a3;
  v37[1] = v18;
  v38 = v17;
  v19 = COERCE_DOUBLE(sub_222B95BA0(a1, v37));
  if (v20)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);
    v22 = sub_222C942FC();
    v23 = sub_222C94A3C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v37[0] = v25;
      *v24 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v24 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, v37);
      _os_log_impl(&dword_222B39000, v22, v23, "%s Unable to find start timestamp to use when computing time to followup", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }
  }

  else
  {
    sub_222B41CB8(v16, v8);
    v26 = *(v13 + 48);
    if (v26(v8, 1, v12) == 1)
    {
      sub_222B41CE4(v16);
      if (v27)
      {
        v28 = 1;
      }

      else
      {
        sub_222C935AC();
        v28 = 0;
      }

      (*(v13 + 56))(v11, v28, 1, v12);
      if (v26(v8, 1, v12) != 1)
      {
        sub_222B4FCD4(v8, &qword_27D025360, &unk_222C98300);
      }
    }

    else
    {
      (*(v13 + 32))(v11, v8, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    if (v26(v11, 1, v12) == 1)
    {
      sub_222B4FCD4(v11, &qword_27D025360, &unk_222C98300);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      sub_222C935BC();
      v30 = v29 - v19;
      if (v29 - v19 >= 0.0)
      {
        (*(v13 + 8))(v15, v12);
        v19 = v30;
        return *&v19;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v31 = sub_222C9431C();
      __swift_project_value_buffer(v31, qword_280FE2340);
      v32 = sub_222C942FC();
      v33 = sub_222C94A4C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v37[0] = v35;
        *v34 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v34 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, v37);
        _os_log_impl(&dword_222B39000, v32, v33, "%s Time to followup was less than 0 seconds! Returning nil followup time.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x223DCA8C0](v35, -1, -1);
        MEMORY[0x223DCA8C0](v34, -1, -1);
      }

      (*(v13 + 8))(v15, v12);
    }

    v19 = 0.0;
  }

  return *&v19;
}

uint64_t sub_222B964CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8) || (v2 = *(a1 + 16), sub_222B4183C(*(a2 + 16), &v35), (v3 = *(&v35 + 1)) == 0))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v9 = sub_222C942FC();
    v10 = sub_222C94A3C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v26 = v12;
    *v11 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v26);
    v13 = "%s No media item id found in Siri play event, skipping.";
    goto LABEL_17;
  }

  v4 = v35;
  sub_222B4183C(v2, &v26);
  v5 = *(&v26 + 1);
  v6 = v26;
  *&v26 = v4;
  *(&v26 + 1) = v3;
  v33 = v27;
  v34[0] = v28[0];
  *(v34 + 9) = *(v28 + 9);
  v27 = v36;
  v28[0] = v37[0];
  *(v28 + 9) = *(v37 + 9);
  v23 = v26;
  v24 = v36;
  v25[0] = v28[0];
  *(v25 + 9) = *(v37 + 9);
  if (v5)
  {
    v21 = v33;
    v22[0] = v34[0];
    *(v22 + 9) = *(v34 + 9);
    v20 = __PAIR128__(v5, v6);
    v7 = _s28SiriPrivateLearningInference9MediaItemV2eeoiySbAC_ACtFZ_0(&v23, &v20);
    v16[0] = v20;
    v16[1] = v21;
    v17[0] = v22[0];
    *(v17 + 9) = *(v22 + 9);
    sub_222B4FC6C(&v26, v18, &qword_27D025370, &qword_222C98310);
    sub_222B9801C(v16);
    v18[0] = v23;
    v18[1] = v24;
    v19[0] = v25[0];
    *(v19 + 9) = *(v25 + 9);
    sub_222B9801C(v18);
    *&v20 = v4;
    *(&v20 + 1) = v3;
    v21 = v36;
    v22[0] = v37[0];
    *(v22 + 9) = *(v37 + 9);
    sub_222B4FCD4(&v20, &qword_27D025370, &qword_222C98310);
    if (v7)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v8 = sub_222C9431C();
      __swift_project_value_buffer(v8, qword_280FE2340);
      v9 = sub_222C942FC();
      v10 = sub_222C94A3C();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v26 = v12;
      *v11 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v26);
      v13 = "%s Circular in app follow up detected, skipping.";
LABEL_17:
      _os_log_impl(&dword_222B39000, v9, v10, v13, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
LABEL_18:

      return 0;
    }
  }

  else
  {
    v20 = v26;
    v21 = v27;
    v22[0] = v28[0];
    *(v22 + 9) = *(v28 + 9);
    sub_222B4FC6C(&v26, v18, &qword_27D025370, &qword_222C98310);
    sub_222B9801C(&v20);
    *&v26 = v4;
    *(&v26 + 1) = v3;
    v27 = v36;
    v28[0] = v37[0];
    *(v28 + 9) = *(v37 + 9);
    v29 = v6;
    v30 = 0;
    v31 = v33;
    v32[0] = v34[0];
    *(v32 + 9) = *(v34 + 9);
    sub_222B4FCD4(&v26, &qword_27D025BA8, &qword_222C9A560);
  }

  return 1;
}

uint64_t sub_222B968E4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v148 = &v131 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v131 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v131 - v16;
  v18 = type metadata accessor for MediaPlayClassification(0);
  v152 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v146 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = (&v131 - v21);
  MEMORY[0x28223BE20](v22);
  v151 = &v131 - v23;
  MEMORY[0x28223BE20](v24);
  v150 = &v131 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v131 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v131 - v30;
  v32 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v38 = &v131 - v35;
  v39 = *(a1 + 2);
  if (!v39)
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_14:
      v51 = sub_222C9431C();
      __swift_project_value_buffer(v51, qword_280FE2340);
      v52 = sub_222C942FC();
      v53 = sub_222C94A3C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v158 = v55;
        *v54 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v54 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
        _os_log_impl(&dword_222B39000, v52, v53, "%s Session missing final turn. Skipping.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x223DCA8C0](v55, -1, -1);
        MEMORY[0x223DCA8C0](v54, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_103:
    swift_once();
    goto LABEL_14;
  }

  v142 = v36;
  v143 = v39;
  v144 = v34;
  v40 = &a1[(*(v37 + 80) + 32) & ~*(v37 + 80)];
  v141 = v37;
  v41 = *(v37 + 72);
  v140 = v40;
  v139 = v41;
  sub_222B97E94(&v40[v41 * (v39 - 1)], &v131 - v35, type metadata accessor for FeaturisedTurn);
  v42 = isSiriPlayMedia(_:)(v38);
  if ((v42 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v56 = sub_222C9431C();
    __swift_project_value_buffer(v56, qword_280FE2340);
    v57 = sub_222C942FC();
    v58 = sub_222C94A3C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v38;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v158 = v61;
      *v60 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v60 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
      _os_log_impl(&dword_222B39000, v57, v58, "%s Final turn was not a Siri playMedia request. Skipping", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x223DCA8C0](v61, -1, -1);
      MEMORY[0x223DCA8C0](v60, -1, -1);

      v38 = v59;
    }

    else
    {
    }

    v62 = v38;
    goto LABEL_55;
  }

  v138 = v11;
  v135 = v6;
  v145 = a1;
  v137 = v28;
  v136 = v14;
  v149 = v38;
  v43 = *(a2 + 16);
  if (v43)
  {
    v44 = a2 + 32;
    v45 = (v152 + 56);
    v46 = (v152 + 48);
    v47 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v44, &v158);
      sub_222B405A0(&v158, &v153);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v48 = swift_dynamicCast();
      (*v45)(v17, v48 ^ 1u, 1, v18);
      if ((*v46)(v17, 1, v18) == 1)
      {
        v42 = sub_222B4FCD4(v17, &qword_27D0257D8, &unk_222C990C0);
      }

      else
      {
        sub_222B97FB4(v17, v31, type metadata accessor for MediaPlayClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_222B4A278(0, v47[2] + 1, 1, v47);
        }

        v50 = v47[2];
        v49 = v47[3];
        if (v50 >= v49 >> 1)
        {
          v47 = sub_222B4A278((v49 > 1), v50 + 1, 1, v47);
        }

        v47[2] = v50 + 1;
        v42 = sub_222B97FB4(v31, v47 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v50, type metadata accessor for MediaPlayClassification);
      }

      v44 += 40;
      --v43;
    }

    while (v43);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v42);
  *(&v131 - 2) = v149;
  sub_222B66030(sub_222B97E44, (&v131 - 4), v47);
  v64 = v63;
  v65 = *(v63 + 16);
  if (!v65)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v71 = sub_222C9431C();
    __swift_project_value_buffer(v71, qword_280FE2340);
    v72 = sub_222C942FC();
    v73 = sub_222C94A3C();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_54;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v158 = v75;
    *v74 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v74 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
    v76 = "%s No media play detected. Skipping.";
    goto LABEL_53;
  }

  v66 = 0;
  v67 = v138;
  v68 = v151;
  while (1)
  {
    if (v66 >= *(v64 + 16))
    {
      __break(1u);
LABEL_100:

      v91 = 0;
      v18 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
LABEL_80:
      sub_222B97F54(v146, type metadata accessor for MediaPlayClassification);
      goto LABEL_81;
    }

    v69 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v70 = *(v152 + 72);
    sub_222B97E94(v64 + v69 + v70 * v66, v68, type metadata accessor for MediaPlayClassification);
    if (*(v68 + 8) != 1)
    {
      break;
    }

    ++v66;
    sub_222B97F54(v68, type metadata accessor for MediaPlayClassification);
    if (v65 == v66)
    {

      goto LABEL_47;
    }
  }

  v77 = v68;
  v78 = v150;
  sub_222B97FB4(v77, v150, type metadata accessor for MediaPlayClassification);
  v79 = v78;
  v80 = v137;
  v81 = sub_222B97FB4(v79, v137, type metadata accessor for MediaPlayClassification);
  MEMORY[0x28223BE20](v81);
  *(&v131 - 2) = v80;
  sub_222B41174(sub_222B97EFC, v82, &v158);
  if (!*(&v158 + 1))
  {

    sub_222B97F54(v80, type metadata accessor for MediaPlayClassification);
LABEL_47:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v88 = sub_222C9431C();
    __swift_project_value_buffer(v88, qword_280FE2340);
    v72 = sub_222C942FC();
    v73 = sub_222C94A3C();
    if (!os_log_type_enabled(v72, v73))
    {
LABEL_54:

      v62 = v149;
      goto LABEL_55;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v158 = v75;
    *v74 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v74 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
    v76 = "%s No user followup detected. Skipping.";
LABEL_53:
    _os_log_impl(&dword_222B39000, v72, v73, v76, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x223DCA8C0](v75, -1, -1);
    MEMORY[0x223DCA8C0](v74, -1, -1);
    goto LABEL_54;
  }

  v150 = *(&v158 + 1);
  v83 = 0;
  v134 = v158;
  v151 = v159;
  v84 = v64 + v69;
  v133 = v160;
  v31 = v161;
  v85 = v147;
  while (1)
  {
    if (v83 >= *(v64 + 16))
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    sub_222B97E94(v84, v85, type metadata accessor for MediaPlayClassification);
    if (*(v85 + 8))
    {
      break;
    }

    ++v83;
    sub_222B97F54(v85, type metadata accessor for MediaPlayClassification);
    v84 += v70;
    if (v65 == v83)
    {

      v86 = 1;
      v87 = v136;
      goto LABEL_58;
    }
  }

  v87 = v136;
  sub_222B97FB4(v85, v136, type metadata accessor for MediaPlayClassification);
  v86 = 0;
LABEL_58:
  v90 = v152;
  (*(v152 + 56))(v87, v86, 1, v18);
  sub_222B4FC6C(v87, v67, &qword_27D0257D8, &unk_222C990C0);
  if ((*(v90 + 48))(v67, 1, v18) == 1)
  {
    v91 = 0;
    v18 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
LABEL_81:
    v112 = v150;
    v113 = v134;
    v114 = v133;
    *&v158 = v134;
    *(&v158 + 1) = v150;
    v159 = v151;
    v160 = v133;
    v161 = v31;
    v153 = v91;
    v154 = v18;
    v155 = v92;
    v156 = v93;
    v157 = v94;
    v115 = sub_222B95F4C(v149, &v158, &v153);
    if (v116)
    {
      sub_222B5EE44(v113, v112, v151, v114, v31);
      sub_222B5EE44(v91, v18, v92, v93, v94);
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v160 = &type metadata for PIMSConstraintMismatch;
      v161 = sub_222B77B4C();
      *&v158 = 0xD000000000000016;
      *(&v158 + 1) = 0x8000000222CA9C80;
      LOBYTE(v159) = 3;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v158);
      v18 = v137;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v117 = sub_222C9431C();
      __swift_project_value_buffer(v117, qword_280FE2340);
      v98 = sub_222C942FC();
      LOBYTE(v103) = sub_222C94A3C();
      if (os_log_type_enabled(v98, v103))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v158 = v97;
        *v96 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          goto LABEL_106;
        }

        goto LABEL_88;
      }

      goto LABEL_98;
    }

    v150 = v115;
    *&v158 = v113;
    *(&v158 + 1) = v112;
    v119 = v151;
    v159 = v151;
    v160 = v114;
    v161 = v31;
    v153 = v91;
    v154 = v18;
    v155 = v92;
    v156 = v93;
    v157 = v94;
    LODWORD(v152) = sub_222B964CC(&v158, &v153);
    sub_222B5EE44(v91, v18, v92, v93, v94);
    sub_222B5EE44(v113, v112, v119, v114, v31);
    if ((v152 & 1) == 0)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v128 = sub_222C9431C();
      __swift_project_value_buffer(v128, qword_280FE2340);
      v98 = sub_222C942FC();
      LOBYTE(v103) = sub_222C94A3C();
      v129 = os_log_type_enabled(v98, v103);
      v18 = v137;
      if (v129)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v158 = v97;
        *v96 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v96 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
        v118 = "%s Invalid in app follow up detected. Skipping";
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_222C97C40;
    v121 = type metadata accessor for MediaInAppFollowupClassification(0);
    *(v120 + 56) = v121;
    *(v120 + 64) = &off_28360EB30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v120 + 32));
    v123 = v149;
    v124 = v136;
    sub_222B4FC6C(v136, boxed_opaque_existential_1, &qword_27D0257D8, &unk_222C990C0);
    v125 = v137;
    sub_222B97E94(v137, boxed_opaque_existential_1 + v121[5], type metadata accessor for MediaPlayClassification);
    v126 = v121[7];
    v127 = sub_222C9367C();
    (*(*(v127 - 8) + 16))(boxed_opaque_existential_1 + v126, v123, v127);
    *(boxed_opaque_existential_1 + v121[6]) = v150;
    sub_222B4FCD4(v124, &qword_27D0257D8, &unk_222C990C0);
    sub_222B97F54(v125, type metadata accessor for MediaPlayClassification);
    sub_222B97F54(v123, type metadata accessor for FeaturisedTurn);
    return v120;
  }

  v95 = v146;
  sub_222B97FB4(v67, v146, type metadata accessor for MediaPlayClassification);
  v96 = *(v95 + 16);
  v97 = *(v95 + 24);
  v147 = (v141 + 7);
  v141 += 6;

  v98 = 0;
  v152 = 0;
  v132 = v31;
  while (2)
  {
    v103 = v152;
    if (v152 == v143)
    {
      v104 = 1;
      v152 = v143;
      v31 = v132;
LABEL_75:
      v106 = v148;
      v107 = v144;
      (*v147)(v148, v104, 1, v144);
      v108 = v106;
      v109 = v135;
      sub_222B5EC84(v108, v135);
      if ((*v141)(v109, 1, v107) == 1)
      {
        goto LABEL_100;
      }

      v110 = v109;
      v111 = v142;
      sub_222B97FB4(v110, v142, type metadata accessor for FeaturisedTurn);
      v18 = *(v111 + *(v107 + 28));

      sub_222B97F54(v111, type metadata accessor for FeaturisedTurn);

      v98 = v18;
      if (v18)
      {
        v99 = (v18 + 64);
        v100 = -1;
        while (1)
        {
          ++v100;
          isa = v98[2].isa;
          if (v100 == isa)
          {
            break;
          }

          if (v100 >= isa)
          {
            goto LABEL_102;
          }

          v91 = *(v99 - 4);
          v18 = *(v99 - 3);
          v92 = *(v99 - 2);
          v93 = *(v99 - 1);
          v94 = *v99;
          if (v91 == v96 && v18 == v97)
          {
            v91 = v96;
LABEL_79:

            v31 = v132;
            goto LABEL_80;
          }

          v99 += 5;
          if (sub_222C951FC())
          {
            goto LABEL_79;
          }
        }
      }

      continue;
    }

    break;
  }

  if (v152 < v143)
  {
    sub_222B97E94(&v140[v152 * v139], v148, type metadata accessor for FeaturisedTurn);
    v105 = __OFADD__(v103++, 1);
    v31 = v132;
    if (v105)
    {
      goto LABEL_105;
    }

    v152 = v103;
    v104 = 0;
    goto LABEL_75;
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_88:
  *(v96 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v158);
  v118 = "%s Failed to compute the time taken to followup. Skipping.";
LABEL_97:
  _os_log_impl(&dword_222B39000, v98, v103, v118, v96, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v97);
  MEMORY[0x223DCA8C0](v97, -1, -1);
  MEMORY[0x223DCA8C0](v96, -1, -1);
LABEL_98:

  v130 = v149;
  sub_222B4FCD4(v136, &qword_27D0257D8, &unk_222C990C0);
  sub_222B97F54(v18, type metadata accessor for MediaPlayClassification);
  v62 = v130;
LABEL_55:
  sub_222B97F54(v62, type metadata accessor for FeaturisedTurn);
  return MEMORY[0x277D84F90];
}

uint64_t sub_222B97E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B97EFC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *(v2 + 16) && a1[1] == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B97F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B97FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_222B981C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PICSWipeStoreMigration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_222B98220(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_222B78534(v10, v6);
      v12 = sub_222B41B30(*&v6[v9]);
      if (v12)
      {
        sub_222B4907C(v12);
      }

      sub_222B73DD0(v6);
      v10 += v11;
      --v8;
    }

    while (v8);
    v7 = v19;
  }

  v14 = sub_222B71D68(v13);

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_222C94C6C();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  if (v15 != 1)
  {
    goto LABEL_18;
  }

  if (v7 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return 0;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223DC9B30](0, v7);
    goto LABEL_16;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v7 + 32);

LABEL_16:

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B98404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v38 = a4;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - v12;
  v37 = v7;
  v40 = (v7 + 48);
  v41 = (v7 + 56);
  v46 = a1;

  v45 = 0;
  while (1)
  {
    v23 = v45;
    v24 = *(v46 + 16);
    if (v45 == v24)
    {
      v25 = 1;
      v27 = v43;
      v26 = v44;
      v28 = v42;
    }

    else
    {
      v27 = v43;
      v26 = v44;
      v28 = v42;
      if (v45 >= v24)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      sub_222B78534(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42);
      v25 = 0;
      ++v23;
    }

    (*v41)(v28, v25, 1, v26);
    sub_222B5EC84(v28, v27);
    if ((*v40)(v27, 1, v26) == 1)
    {
      break;
    }

    v45 = v23;
    v29 = v27;
    v30 = v39;
    sub_222B7E350(v29, v39);
    v31 = *(v30 + *(v26 + 28));

    sub_222B73DD0(v30);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_26;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == a2 && v17 == a3)
        {
          v18 = a2;
LABEL_19:

          v33 = sub_222B41660(v19);
          if (v33)
          {
            v34 = *(v33 + 16);

            if (v34 == 1)
            {
              v47[0] = v18;
              v47[1] = v17;
              v47[2] = v19;
              v47[3] = v20;
              v47[4] = v21;
              extractContactReference(event:)(v47, v38);
            }
          }

          goto LABEL_23;
        }

        v14 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_23:

  v35 = v38;
  *v38 = 0u;
  v35[1] = 0u;
  return result;
}

uint64_t sub_222B98790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C38, &unk_222C9A650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for SuccessfulPhoneCallClassifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4014000000000000;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for SuccessfulPhoneCallClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222B98810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_222B43E3C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v10;
    v5 = v11;
    result = v12;
    if (v8 == 1)
    {
      v6 = v9;
      v7 = 1;
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v4 = 0;
      v5 = 0;
      result = 0;
    }

    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v5;
    a2[4] = result;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_222B988E0(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000011 ? (v6 = 0x8000000222CA8780 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222B98994(uint64_t a1)
{

  sub_222C16CD8(2, a1);
  v3 = sub_222B98220(v2);

  return v3;
}

uint64_t sub_222B989DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth(0);
  *(a5 + v16[5]) = 3;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);
}

uint64_t sub_222B98B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_222C16CD8(2, a1);
  v5 = sub_222B98220(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_222B98BB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth(0);
  *(a5 + v16[5]) = 3;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);
}

void sub_222B98D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_222B98D48()
{
  result = qword_280FDF100;
  if (!qword_280FDF100)
  {
    type metadata accessor for PhoneCallGroundTruth(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF100);
  }

  return result;
}

uint64_t MessagesAbandonmentClassification.referencedTurns.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessagesAbandonmentClassification.referencedEvents.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_222B98FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222B99004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SuccessfulPhoneCallClassifier.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x4014000000000000;
  return result;
}

uint64_t sub_222B99080(uint64_t a1)
{
  type metadata accessor for SuccessfulPhoneCallClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C50, &unk_222C9A810);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025C40 = 91;
  *algn_27D025C48 = 0xE100000000000000;
  return result;
}

uint64_t SuccessfulPhoneCallClassifier.init()()
{
  result = v0;
  *(v0 + 16) = 0x4014000000000000;
  return result;
}

uint64_t sub_222B99120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v21[0] = *a1;
  v21[1] = v4;
  v21[2] = v7;
  v21[3] = v6;
  v21[4] = v8;
  v9 = sub_222B99440(v21);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);

  v11 = sub_222C942FC();
  v12 = sub_222C94A3C();

  if (os_log_type_enabled(v11, v12))
  {
    v21[6] = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315394;
    if (qword_27D0246C0 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_222B437C0(qword_27D025C40, *algn_27D025C48, v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_222B437C0(v5, v4, v21);
    _os_log_impl(&dword_222B39000, v11, v12, "%s Rule matrix for [Event ID: %s]:", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v14, -1, -1);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }

  else
  {
  }

  sub_222C8A24C(8224, 0xE200000000000000, v9);
  v15 = sub_222C1EC00(v9);

  if (v15)
  {
    v17 = sub_222B41CFC(v7);
    a2[3] = &type metadata for SuccessfulPhoneCallClassification;
    v18 = swift_allocObject();
    *(v18 + 16) = v17 & 1;
    *(v18 + 24) = v5;
    *(v18 + 32) = v4;
    *(v18 + 40) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_222C97C40;
    *(v19 + 32) = v5;
    *(v19 + 40) = v4;
    *(v18 + 48) = v19;
    result = swift_bridgeObjectRetain_n();
    v20 = &protocol witness table for SuccessfulPhoneCallClassification;
  }

  else
  {
    v20 = 0;
    v18 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  a2[4] = v20;
  *a2 = v18;
  return result;
}

uint64_t sub_222B99440(uint64_t *a1)
{
  v2 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222C96900;
  v14 = (v13 + v12);
  v15 = (v13 + v12 + *(v10 + 48));
  *v14 = 0xD00000000000001ALL;
  v14[1] = 0x8000000222CAA340;
  v16 = sub_222B42814(v9);
  v26 = v7;
  if (v16 == 2)
  {
    type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
    *v15 = sub_222C93ECC();
    v15[1] = v17;
    v15[2] = v7;
    v15[3] = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v6, v15);
  }

  v18 = (v14 + v11);
  v19 = (v14 + v11 + *(v10 + 48));
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000010, 0x8000000222CAA360);
  sub_222C948DC();
  v20 = v28;
  *v18 = v27;
  v18[1] = v20;
  sub_222B41F40(v9);
  if (v21)
  {
    type metadata accessor for PhoneCallEventFeature.CallDuration(0);
    *v19 = sub_222C93ECC();
    v19[1] = v22;
    v19[2] = v26;
    v19[3] = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v23 = v25;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v23, v19);
  }

  return v13;
}

void *sub_222B9972C(uint64_t a1)
{
  v56 = *v1;
  v57 = v1;
  v3 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v4 + 28);
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B78534(v10, v7);
      v13 = *&v7[v9];

      sub_222B73DD0(v7);
      v14 = *(v13 + 16);
      v15 = *(v12 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v12 + 3) >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v12 = sub_222B4A35C(isUniquelyReferenced_nonNull_native, v18, 1, v12);
        if (!*(v13 + 16))
        {
LABEL_3:

          if (v14)
          {
            goto LABEL_52;
          }

          goto LABEL_4;
        }
      }

      if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = *(v12 + 2);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_55;
        }

        *(v12 + 2) = v21;
      }

LABEL_4:
      v10 += v11;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  v22 = *(v12 + 2);
  if (!v22)
  {
    v59 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v23 = 0;
  v58 = 0x8000000222CA8780;
  v24 = v12 + 64;
  v54 = v22 - 1;
  v59 = MEMORY[0x277D84F90];
  v55 = v12 + 64;
  do
  {
    v25 = &v24[40 * v23];
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_51;
      }

      v27 = *(v25 - 4);
      v28 = *(v25 - 3);
      v29 = *(v25 - 2);
      v30 = *(v25 - 1);
      v31 = *v25;

      v32 = sub_222B41F28(v29);
      if (v33)
      {
        goto LABEL_23;
      }

      if (v30 != 0xD000000000000011 || v58 != v31)
      {
        break;
      }

      if (v32 == 1)
      {
        goto LABEL_30;
      }

LABEL_23:
      ++v26;

      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_37;
      }
    }

    v34 = v32;
    if ((sub_222C951FC() & 1) == 0 || v34 != 1)
    {
      goto LABEL_23;
    }

LABEL_30:
    v35 = v59;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v35;
    if ((v36 & 1) == 0)
    {
      sub_222B4C374(0, *(v35 + 16) + 1, 1);
      v35 = v63[0];
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v59 = v38 + 1;
      sub_222B4C374((v37 > 1), v38 + 1, 1);
      v39 = v59;
      v35 = v63[0];
    }

    v23 = v26 + 1;
    *(v35 + 16) = v39;
    v59 = v35;
    v40 = (v35 + 40 * v38);
    v40[4] = v27;
    v40[5] = v28;
    v40[6] = v29;
    v40[7] = v30;
    v40[8] = v31;
    v24 = v55;
  }

  while (v54 != v26);
LABEL_37:

  v41 = v59;
  v42 = *(v59 + 16);
  if (v42)
  {
    v43 = 0;
    v12 = 0;
    v44 = (v59 + 64);
    v45 = MEMORY[0x277D84F90];
    while (v43 < *(v41 + 16))
    {
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = *(v44 - 3);
      v49 = *(v44 - 2);
      v63[0] = *(v44 - 4);
      v63[1] = v48;
      v63[2] = v49;
      v63[3] = v46;
      v63[4] = v47;

      sub_222B99120(v63, &v60);

      if (v61)
      {
        sub_222B405A0(&v60, v62);
        sub_222B405A0(v62, &v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_222B4A314(0, v45[2] + 1, 1, v45);
        }

        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          v45 = sub_222B4A314((v50 > 1), v51 + 1, 1, v45);
        }

        v45[2] = v51 + 1;
        sub_222B405A0(&v60, &v45[5 * v51 + 4]);
      }

      else
      {
        sub_222B99CF4(&v60);
      }

      ++v43;
      v44 += 5;
      v41 = v59;
      if (v42 == v43)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);

    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
LABEL_49:

    return v45;
  }

  return result;
}

uint64_t sub_222B99CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257E0, qword_222C990D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B99D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuleResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B99E28(uint64_t a1, void *a2, void *a3)
{
  v33[5] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C58, qword_222C9A8E0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = &v32;
  type metadata accessor for MediaSuggestionEvictor(0);
  swift_allocObject();
  v8 = sub_222B9A344();
  swift_getKeyPath();
  sub_222C9411C();
  v31[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C60, &unk_222C9A920);
  swift_allocObject();
  v10 = sub_222C940CC();
  v33[3] = v9;
  v33[4] = sub_222B9A444();
  v33[0] = v10;
  v30 = MEMORY[0x277D84F90];
  sub_222B4C908(0, 1, 0);
  v11 = v30;
  sub_222B43E3C(v33, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v29 = a2;
  sub_222C93BDC();
  if (v3)
  {
    a3 = v3;
LABEL_6:
    LOBYTE(v14) = 1;
    goto LABEL_7;
  }

  v12 = a3[3];
  v29 = 0;
  if (([v12 save_] & 1) == 0)
  {
    v15 = v29;
    a3 = sub_222C9342C();

    swift_willThrow();
    goto LABEL_6;
  }

  v13 = v29;
  LOBYTE(v14) = 0;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
LABEL_22:
    sub_222B4C908((v16 > 1), v18, 1);
    v11 = v30;
  }

  *(v11 + 16) = v18;
  v19 = v11 + 16 * v17;
  *(v19 + 32) = a3;
  *(v19 + 40) = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v7 + 4);
  v14 = 0;
  v17 = *(v11 + 16);
  v7 = (v11 + 40);
  v20 = MEMORY[0x277D84F90];
LABEL_9:
  v16 = &v7[16 * v14];
  while (v17 != v14)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v21 = v16 + 16;
    ++v14;
    v22 = *v16;
    v16 += 16;
    if (v22 == 1)
    {
      a3 = *(v21 - 24);
      v23 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222B4AF18(0, v20[2] + 1, 1, v20);
      }

      v25 = v20[2];
      v24 = v20[3];
      v18 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v20 = sub_222B4AF18((v24 > 1), v25 + 1, 1, v20);
      }

      v20[2] = v18;
      v20[v25 + 4] = a3;
      goto LABEL_9;
    }
  }

  if (!v20[2])
  {
  }

  v26 = sub_222C93E7C();
  sub_222B9A4A8();
  swift_allocError();
  *v27 = v20;
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D5FB58], v26);
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for PIMSCoreDataStorePolicies(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PIMSCoreDataStorePolicies(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for MediaSuggestionEvictor(uint64_t a1)
{
  result = qword_280FDE978;
  if (!qword_280FDE978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B9A344()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return MEMORY[0x2821C4958](sub_222B9A500, v2);
}

uint64_t sub_222B9A3C8()
{
  sub_222C93E5C();

  return swift_deallocClassInstance();
}

void sub_222B9A3F8(uint64_t a1, uint64_t a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

unint64_t sub_222B9A444()
{
  result = qword_280FE0280;
  if (!qword_280FE0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025C60, &unk_222C9A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE0280);
  }

  return result;
}

unint64_t sub_222B9A4A8()
{
  result = qword_27D025C68;
  if (!qword_27D025C68)
  {
    sub_222C93E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C68);
  }

  return result;
}

uint64_t sub_222B9A504(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C96900;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_222B9A614();
  *(v2 + 64) = v4;
  *(v2 + 32) = 1701667182;
  *(v2 + 40) = 0xE400000000000000;
  v5 = [a1 name];
  if (!v5)
  {
    v10 = (v2 + 72);
    *(v2 + 96) = v3;
    *(v2 + 104) = v4;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = sub_222C9449C();
  v9 = v8;

  v10 = (v2 + 72);
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  if (!v9)
  {
LABEL_5:
    *v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v10 = v7;
LABEL_6:
  *(v2 + 80) = v9;
  sub_222B9A668();
  return sub_222C949EC();
}

unint64_t sub_222B9A614()
{
  result = qword_280FDB828[0];
  if (!qword_280FDB828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDB828);
  }

  return result;
}

unint64_t sub_222B9A668()
{
  result = qword_280FDB788;
  if (!qword_280FDB788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB788);
  }

  return result;
}

SiriPrivateLearningInference::CaptureRecord __swiftcall CaptureRecord.init(selfEvents:interactions:contacts:)(Swift::OpaquePointer selfEvents, Swift::OpaquePointer interactions, Swift::OpaquePointer contacts)
{
  v7 = v3;
  v8 = sub_222C93CCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(interactions._rawValue + 2);
  if (v12)
  {
    rawValue = selfEvents._rawValue;
    v24 = v7;
    v25 = contacts._rawValue;
    v27 = MEMORY[0x277D84F90];
    sub_222C94E1C();
    v13 = v9 + 16;
    v26 = *(v9 + 16);
    v14 = *(v9 + 80);
    v22 = interactions._rawValue;
    v15 = interactions._rawValue + ((v14 + 32) & ~v14);
    v16 = *(v9 + 72);
    v17 = (v13 - 8);
    do
    {
      v26(v11, v15, v8);
      sub_222C93CAC();
      (*v17)(v11, v8);
      sub_222C94DEC();
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v15 += v16;
      --v12;
    }

    while (v12);

    v21 = v27;
    v7 = v24;
    contacts._rawValue = v25;
    selfEvents._rawValue = rawValue;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v7->_rawValue = selfEvents._rawValue;
  v7[1]._rawValue = v21;
  v7[2]._rawValue = contacts._rawValue;
  result.deviceContacts._rawValue = v20;
  result.interactions._rawValue = v19;
  result.selfEvents._rawValue = v18;
  return result;
}

uint64_t sub_222B9A890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463617265746E69;
  v4 = 0xEC000000736E6F69;
  if (v2 != 1)
  {
    v3 = 0x6F43656369766564;
    v4 = 0xEE0073746361746ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E657645666C6573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007374;
  }

  v7 = 0x7463617265746E69;
  v8 = 0xEC000000736E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6F43656369766564;
    v8 = 0xEE0073746361746ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E657645666C6573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007374;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222C951FC();
  }

  return v11 & 1;
}

uint64_t sub_222B9A9BC()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B9AA78(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222B9AB20(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

unint64_t sub_222B9ABD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222B9C06C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_222B9AC08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007374;
  v4 = 0xEC000000736E6F69;
  v5 = 0x7463617265746E69;
  if (v2 != 1)
  {
    v5 = 0x6F43656369766564;
    v4 = 0xEE0073746361746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E657645666C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222B9AC80()
{
  v1 = 0x7463617265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6F43656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E657645666C6573;
  }
}

unint64_t sub_222B9ACF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B9C06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B9AD1C(uint64_t a1)
{
  v2 = sub_222B9B464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B9AD58(uint64_t a1)
{
  v2 = sub_222B9B464();

  return MEMORY[0x2821FE720](a1, v2);
}

void *CaptureRecord.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C78, &qword_222C9A930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B9B464();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C88, &qword_222C9A938);
  v57 = 0;
  v10 = sub_222B9BE44(&qword_27D025C90, sub_222B9B4B8, MEMORY[0x277D83978]);
  result = sub_222C9507C();
  v52 = v10;
  v53 = v9;
  v54 = v5;
  v55 = v8;
  v50 = 0;
  v51 = a2;
  v48 = v6;
  v49 = a1;
  v12 = 0;
  v13 = v58;
  v14 = v58 + 40;
  v58 = MEMORY[0x277D84F90];
  v15 = *(v13 + 16);
  v46 = MEMORY[0x277D84F90];
  v47 = v13 + 40;
  v56 = MEMORY[0x277D84F90];
LABEL_4:
  v16 = (v14 + 16 * v12);
  while (v15 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    ++v12;
    v17 = v16 + 2;
    v19 = *(v16 - 1);
    v18 = *v16;
    v20 = objc_allocWithZone(MEMORY[0x277D5A790]);
    sub_222B80358(v19, v18);
    v21 = sub_222C934FC();
    v22 = [v20 initWithData_];

    result = sub_222B803C0(v19, v18);
    v16 = v17;
    if (v22)
    {
      MEMORY[0x223DC94A0](result);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      result = sub_222C947AC();
      v56 = v58;
      v14 = v47;
      goto LABEL_4;
    }
  }

  v57 = 1;
  v23 = v54;
  v24 = v55;
  v25 = v50;
  result = sub_222C9507C();
  if (v25)
  {
    (*(v48 + 8))(v24, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  else
  {
    v26 = 0;
    v27 = v58;
    v28 = v58 + 40;
    v58 = MEMORY[0x277D84F90];
    v29 = v27;
    v30 = *(v27 + 16);
    v50 = MEMORY[0x277D84F90];
    v47 = v27 + 40;
LABEL_14:
    v31 = (v28 + 16 * v26);
    while (v30 != v26)
    {
      if (v26 >= *(v29 + 16))
      {
        goto LABEL_31;
      }

      v32 = *(v31 - 1);
      v33 = *v31;
      sub_222B505A8(0, &qword_27D025CA0, 0x277CCAAC8);
      sub_222B505A8(0, &qword_27D025CA8, 0x277CD3D58);
      sub_222B80358(v32, v33);
      v34 = sub_222C94A8C();
      ++v26;
      v31 += 2;
      result = sub_222B803C0(v32, v33);
      if (v34)
      {
        MEMORY[0x223DC94A0](result);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        result = sub_222C947AC();
        v50 = v58;
        v28 = v47;
        goto LABEL_14;
      }
    }

    v57 = 2;
    v35 = v54;
    result = sub_222C9507C();
    v36 = 0;
    v37 = v58;
    v38 = v58 + 40;
    v58 = MEMORY[0x277D84F90];
    v39 = *(v37 + 16);
    v52 = v37 + 40;
    v53 = v39;
    v40 = v51;
LABEL_22:
    v41 = (v38 + 16 * v36);
    while (v53 != v36)
    {
      if (v36 >= *(v37 + 16))
      {
        goto LABEL_32;
      }

      v42 = *(v41 - 1);
      v43 = *v41;
      sub_222B505A8(0, &qword_27D025CA0, 0x277CCAAC8);
      sub_222B505A8(0, &qword_27D025CB0, 0x277CBDA58);
      sub_222B80358(v42, v43);
      v44 = sub_222C94A8C();
      ++v36;
      v41 += 2;
      result = sub_222B803C0(v42, v43);
      v40 = v51;
      if (v44)
      {
        MEMORY[0x223DC94A0](result);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        result = sub_222C947AC();
        v46 = v58;
        v38 = v52;
        goto LABEL_22;
      }
    }

    (*(v48 + 8))(v55, v35);

    v45 = v50;
    *v40 = v56;
    v40[1] = v45;
    v40[2] = v46;

    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }
}

unint64_t sub_222B9B464()
{
  result = qword_27D025C80;
  if (!qword_27D025C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C80);
  }

  return result;
}

unint64_t sub_222B9B4B8()
{
  result = qword_27D025C98;
  if (!qword_27D025C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C98);
  }

  return result;
}

uint64_t CaptureRecord.encode(to:)(void *a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025CB8, &qword_222C9A940);
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v70 - v4;
  v6 = *v1;
  v77 = v1[1];
  v75 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B9B464();
  sub_222C9536C();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_59;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  v72 = v5;
  v73 = v3;
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = v7;
  v80 = MEMORY[0x277D84F90];
  sub_222B4C948(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v9 = v80;
    v12 = v10;
    v78 = v10 & 0xC000000000000001;
    v13 = v10;
    do
    {
      if (v78)
      {
        v14 = MEMORY[0x223DC9B30](v11, v12);
      }

      else
      {
        v14 = *(v12 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v8;
      v17 = [v14 data];
      if (v17)
      {
        v18 = v17;
        v19 = sub_222C9350C();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0xF000000000000000;
      }

      v80 = v9;
      v23 = *(v9 + 2);
      v22 = *(v9 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_222B4C948((v22 > 1), v23 + 1, 1);
        v9 = v80;
      }

      ++v11;
      *(v9 + 2) = v23 + 1;
      v24 = &v9[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v8 = v16;
      v12 = v13;
    }

    while (v16 != v11);
    v5 = v72;
    v3 = v73;
LABEL_16:
    v80 = v9;
    LOBYTE(v79) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025CC0, &unk_222C9A948);
    sub_222B9BCE8();
    v25 = v76;
    sub_222C9512C();
    if (v25)
    {

      return (*(v74 + 8))(v5, v3);
    }

    v8 = v77;
    v70 = 0;
    if (!(v77 >> 62))
    {
      v27 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }

    goto LABEL_62;
  }

  while (2)
  {
    __break(1u);
LABEL_62:
    v27 = sub_222C94C6C();
LABEL_20:
    v28 = v75;
    v29 = MEMORY[0x277D84F90];
    if (!v27)
    {
      goto LABEL_34;
    }

    v80 = MEMORY[0x277D84F90];
    sub_222B4C928(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
    }

    v29 = v80;
    v76 = objc_opt_self();
    v30 = 0;
    v78 = v8 & 0xC000000000000001;
    v71 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v31 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v66 = v7;
        v67 = sub_222C94C6C();
        v7 = v66;
        v8 = v67;
        goto LABEL_3;
      }

      if (v78)
      {
        v32 = MEMORY[0x223DC9B30](v30, v77);
      }

      else
      {
        if (v30 >= *(v71 + 16))
        {
          goto LABEL_58;
        }

        v32 = *(v77 + 8 * v30 + 32);
      }

      v33 = v32;
      v79 = 0;
      v34 = [v76 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:{&v79, v70}];
      v35 = v79;
      if (!v34)
      {
        v42 = v35;
        sub_222C9342C();

        swift_willThrow();
        (*(v74 + 8))(v72, v73);
      }

      v5 = v27;
      v36 = sub_222C9350C();
      v38 = v37;

      v80 = v29;
      v40 = *(v29 + 2);
      v39 = *(v29 + 3);
      v3 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_222B4C928((v39 > 1), v40 + 1, 1);
        v29 = v80;
      }

      *(v29 + 2) = v3;
      v41 = &v29[16 * v40];
      *(v41 + 4) = v36;
      *(v41 + 5) = v38;
      ++v30;
      v27 = v5;
    }

    while (v31 != v5);
    v28 = v75;
LABEL_34:
    if (v28 >> 62)
    {
      v68 = v28;
      v69 = sub_222C94C6C();
      v28 = v68;
      v8 = v69;
    }

    else
    {
      v8 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (!v8)
    {
LABEL_52:
      v80 = v29;
      LOBYTE(v79) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C88, &qword_222C9A938);
      sub_222B9BE44(&qword_27D025CE0, sub_222B9BDF0, MEMORY[0x277D83948]);
      v63 = v72;
      v64 = v73;
      v65 = v70;
      sub_222C9512C();
      if (v65)
      {
        (*(v74 + 8))(v63, v64);
      }

      else
      {

        v80 = v5;
        LOBYTE(v79) = 2;
        sub_222C9512C();
        (*(v74 + 8))(v63, v64);
      }
    }

    v43 = v28;
    v80 = MEMORY[0x277D84F90];
    sub_222B4C928(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      goto LABEL_65;
    }

    v44 = v80;
    v45 = objc_opt_self();
    v46 = 0;
    v47 = v43;
    v77 = v45;
    v78 = v43 & 0xC000000000000001;
    v76 = (v43 & 0xFFFFFFFFFFFFFF8);
LABEL_39:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_57;
    }

    if (v78)
    {
      v49 = v44;
      v50 = MEMORY[0x223DC9B30](v46, v47);
      goto LABEL_44;
    }

    if (v46 >= *(v76 + 2))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v49 = v44;
  v50 = *(v47 + 8 * v46 + 32);
LABEL_44:
  v51 = v50;
  v79 = 0;
  v52 = [v77 archivedDataWithRootObject:v50 requiringSecureCoding:1 error:{&v79, v70}];
  v53 = v79;
  if (v52)
  {
    v5 = v29;
    v54 = v8;
    v55 = sub_222C9350C();
    v57 = v56;

    v44 = v49;
    v80 = v49;
    v58 = *(v49 + 2);
    v59 = *(v44 + 3);
    v3 = v58 + 1;
    if (v58 >= v59 >> 1)
    {
      sub_222B4C928((v59 > 1), v58 + 1, 1);
      v44 = v80;
    }

    *(v44 + 2) = v3;
    v60 = &v44[16 * v58];
    *(v60 + 4) = v55;
    *(v60 + 5) = v57;
    ++v46;
    v8 = v54;
    v61 = v48 == v54;
    v47 = v75;
    v29 = v5;
    if (v61)
    {
      v5 = v44;
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  v62 = v53;

  sub_222C9342C();

  swift_willThrow();
  (*(v74 + 8))(v72, v73);
}

unint64_t sub_222B9BCE8()
{
  result = qword_27D025CC8;
  if (!qword_27D025CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025CC0, &unk_222C9A948);
    sub_222B9BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CC8);
  }

  return result;
}

unint64_t sub_222B9BD6C()
{
  result = qword_27D025CD0;
  if (!qword_27D025CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F50, &qword_222C96D00);
    sub_222B9BDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CD0);
  }

  return result;
}

unint64_t sub_222B9BDF0()
{
  result = qword_27D025CD8;
  if (!qword_27D025CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CD8);
  }

  return result;
}

uint64_t sub_222B9BE44(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025C88, &qword_222C9A938);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B9BEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_222B9BF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222B9BF68()
{
  result = qword_27D025CE8;
  if (!qword_27D025CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CE8);
  }

  return result;
}

unint64_t sub_222B9BFC0()
{
  result = qword_27D025CF0;
  if (!qword_27D025CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CF0);
  }

  return result;
}

unint64_t sub_222B9C018()
{
  result = qword_27D025CF8;
  if (!qword_27D025CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CF8);
  }

  return result;
}

unint64_t sub_222B9C06C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222C94FDC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_222B9C0EC(uint64_t a1)
{
  v20 = type metadata accessor for MessagesAbandonmentClassifier();
  v21 = &protocol witness table for MessagesAbandonmentClassifier;
  v19[0] = swift_allocObject();
  v23 = type metadata accessor for MessagesDeadEndClassifier();
  v24 = &protocol witness table for MessagesDeadEndClassifier;
  v22 = swift_allocObject();
  v26 = type metadata accessor for SuccessfulMessageClassifier();
  v27 = &protocol witness table for SuccessfulMessageClassifier;
  v25 = swift_allocObject();
  v29 = type metadata accessor for MessagesInAppFollowupClassifier();
  v30 = &protocol witness table for MessagesInAppFollowupClassifier;
  v28 = swift_allocObject();
  v32 = type metadata accessor for EntityPromptClassifier();
  v33 = &protocol witness table for EntityPromptClassifier;
  v31 = swift_allocObject();
  v35 = type metadata accessor for ContactSuggestionProvidedClassifier();
  v36 = &protocol witness table for ContactSuggestionProvidedClassifier;
  v34 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v3 = 32;
  while (1)
  {
    sub_222B43E3C(&v18[v3], v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    result = (*(v6 + 8))(a1, v2, v5, v6);
    v7 = result[2];
    v8 = v2[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= v2[3] >> 1)
    {
      if (v10[2])
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      result = sub_222B4A314(result, v11, 1, v2);
      v2 = result;
      if (v10[2])
      {
LABEL_13:
        if ((v2[3] >> 1) - v2[2] < v7)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_21;
          }

          v2[2] = v14;
        }

        goto LABEL_3;
      }
    }

    if (v7)
    {
      goto LABEL_19;
    }

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v3 += 40;
    if (v3 == 272)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D00, &unk_222C9ABC0);
      swift_arrayDestroy();
      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_222B9C410()
{
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D18, &qword_222C9AC28);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025D08 = 91;
  unk_27D025D10 = 0xE100000000000000;
  return result;
}

void sub_222B9C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_222B9D33C();
  if (v11)
  {
    v20 = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D59DA0]) init];
    if (v12)
    {
      v13 = v12;
      [v12 setSuggestionDomainMetadata_];
      v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v15 = sub_222C9361C();
      v16 = [v14 initWithNSUUID_];

      [v13 setOriginalRequestId_];
      MEMORY[0x28223BE20](v17);
      v19[2] = a1;
      v19[3] = a3;
      v19[4] = v10;
      sub_222BDC068(sub_222B9D4D4, v19, a2);
      sub_222B505A8(0, &qword_27D025D20, 0x277D59DE0);
      v18 = sub_222C9470C();

      [v13 setMatchedResults_];

      [v13 setMatchedResultsPopulated_];
      sub_222BA1EC0(v13, a3, a4);
    }

    else
    {
    }
  }
}

void sub_222B9C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v70 - v9;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v70 - v17;
  (*(v12 + 16))(v14, a3, v11, v16);
  sub_222C9360C();
  sub_222C42B54(v14, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v74 = v23;
      *v22 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v74);
      _os_log_impl(&dword_222B39000, v20, v21, "%s Failed to generated suggestionId", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    return;
  }

  v70[1] = v4;
  v71 = a3;
  (*(v12 + 32))(v18, v10, v11);
  v24 = &unk_2784BC000;
  v25 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
  v26 = &unk_280FDF000;
  v72 = a4;
  if (v25)
  {
    v27 = v25;
    v28 = v18;
    v29 = [objc_allocWithZone(MEMORY[0x277D59D88]) init];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(MEMORY[0x277D59D90]) init];
      if (v31)
      {
        v32 = v31;
        v33 = type metadata accessor for PimsSuggestionMetadata(0);
        [v32 setLocality_];
        LOBYTE(v74) = *(a2 + v33[6]);
        [v32 setServerTreatment_];
        LOBYTE(v74) = *(a2 + v33[7]);
        [v32 setClientTreatment_];
        [v30 setMediaMetadata_];
        v34 = sub_222B9D33C();
        [v27 setSuggestionDomainMetadata_];

        v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v36 = sub_222C9361C();
        v37 = [v35 initWithNSUUID_];

        [v27 setSuggestionLinkId_];
        v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v39 = sub_222C9361C();
        v40 = [v38 initWithNSUUID_];

        [v27 setOriginalRequestId_];
        [v27 setSuggestionSurfaced_];
        [v27 setSuggestionNoveltyState_];
        [v27 setDomainSuggestionMetadata_];
        sub_222BA209C(v27, v71, v72, v41, v42, v43, v44, v45, v70[0]);

        v18 = v28;
        v26 = &unk_280FDF000;
LABEL_22:
        v24 = &unk_2784BC000;
        goto LABEL_24;
      }
    }

    else
    {
      v30 = v27;
    }

    v18 = v28;
    v26 = &unk_280FDF000;
  }

  if (v26[463] != -1)
  {
    swift_once();
  }

  v46 = sub_222C9431C();
  __swift_project_value_buffer(v46, qword_280FE2340);
  v47 = sub_222C942FC();
  v48 = sub_222C94A4C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v74 = v50;
    *v49 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v49 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v74);
    _os_log_impl(&dword_222B39000, v47, v48, "%s Failed to create PLUSSuggesterSuggestionMetadataReported", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x223DCA8C0](v50, -1, -1);
    MEMORY[0x223DCA8C0](v49, -1, -1);

    goto LABEL_22;
  }

LABEL_24:
  type metadata accessor for PimsSuggestionMetadata(0);
  v51 = [objc_allocWithZone(MEMORY[0x277D59DB0]) v24[386]];
  if (v51)
  {
    v52 = v51;
    v53 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v54 = sub_222C9361C();
    v55 = [v53 initWithNSUUID_];

    [v52 setSuggestionLinkId_];
    v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v57 = sub_222C9361C();
    v58 = [v56 initWithNSUUID_];

    [v52 setOriginalRequestId_];
    v59 = sub_222B9D33C();
    [v52 setSuggestionDomainMetadata_];

    [v52 setSuggestionRedundancyState_];
    sub_222BA20B0(v52, v71, v72, v60, v61, v62, v63, v64, v70[0]);

    (*(v12 + 8))(v18, v11);
  }

  else
  {
    if (v26[463] != -1)
    {
      swift_once();
    }

    v65 = sub_222C9431C();
    __swift_project_value_buffer(v65, qword_280FE2340);
    v66 = sub_222C942FC();
    v67 = sub_222C94A4C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74 = v69;
      *v68 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v68 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v74);
      _os_log_impl(&dword_222B39000, v66, v67, "%s Failed to create PLUSSchemaPLUSSuggesterSuggestionRedundancyReported", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x223DCA8C0](v69, -1, -1);
      MEMORY[0x223DCA8C0](v68, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
  }
}

uint64_t sub_222B9CFB8()
{

  return swift_deallocClassInstance();
}

void *sub_222B9D014(uint64_t a1)
{
  v2 = type metadata accessor for ThinMediaGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_222C97C40;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_222B7E8D8(v11, v7);
    v15 = v7[*(v2 + 24)];
    v17 = sub_222B8CEE8(v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_222B8FDCC(v20, 1);
      v8 = v42;
      v22 = sub_222B8CEE8(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_222B9E628(v7, v41, type metadata accessor for ThinMediaGroundTruth);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_222B4A864(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_222B4A864((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_222B9E628(v41, v13, type metadata accessor for ThinMediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EC8, &qword_222C96C78);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_222B9E628(v7, v30 + v29, type metadata accessor for ThinMediaGroundTruth);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

id sub_222B9D33C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59DC8]) init];
  if (v0)
  {
    v1 = v0;
    [v0 setSuggestionGenerationDomain_];
    return v1;
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v3 = sub_222C9431C();
    __swift_project_value_buffer(v3, qword_280FE2340);
    v4 = sub_222C942FC();
    v5 = sub_222C94A4C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v8);
      _os_log_impl(&dword_222B39000, v4, v5, "%s Failure creating PLUSSchemaPLUSSuggestionDomainMetadata", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x223DCA8C0](v7, -1, -1);
      MEMORY[0x223DCA8C0](v6, -1, -1);
    }

    return 0;
  }
}

void *sub_222B9D4D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  result = sub_222B9DE04(v6, a1, a1 + *(v7 + 48), v5);
  *a2 = result;
  return result;
}

void *sub_222B9D544(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D59D38]) init];
  if (v4)
  {
    v5 = v4;
    if ((v3 & 0x80) != 0)
    {
      if ((v3 & 0x7Fu) - 1 < 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = dword_222C9AC54[v3];
    }

    [v4 setSource_];
    if (!(*(a2 + 16) >> 31))
    {
      [v5 setGroundTruthCount_];
      return v5;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v13);
    _os_log_impl(&dword_222B39000, v8, v9, "%s Failed to create PLUSSchemaPLUSMediaGroundTruthSummary", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223DCA8C0](v11, -1, -1);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_222B9D72C(uint64_t a1)
{

  v2 = sub_222B9D014(v1);

  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(v2[7] + 8 * v11);
    v14[0] = *(v2[6] + v11);
    v15 = v12;

    v13 = sub_222B9D544(v14, v12);

    if (v13)
    {
      MEMORY[0x223DC94A0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      result = sub_222C947AC();
      v3 = v16;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v3;
    }

    v6 = v2[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_222B9D8AC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D40]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D59D58]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D59DF8]) init];
      if (v6)
      {
        v7 = v6;
        [v5 setSourceType_];
        v8 = type metadata accessor for PlusMediaSuggestion(0);
        sub_222B9D72C(*(a1 + *(v8 + 28)));
        sub_222B505A8(0, qword_27D025D30, 0x277D59D38);
        v9 = sub_222C9470C();

        [v3 setContributingGroundTruths_];

        [v3 setSource_];
        v10 = sub_222BAF404(&unk_283607998);
        v11 = sub_222BB26C4(*(a1 + *(v8 + 44)), v10);

        if (v11)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        [v3 setLocality_];
        [v7 setMediaSuggestion_];

        return v7;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v14 = sub_222C9431C();
  __swift_project_value_buffer(v14, qword_280FE2340);
  v15 = sub_222C942FC();
  v16 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v17 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v19);
    _os_log_impl(&dword_222B39000, v15, v16, "%s Failure creating SELF message objects", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x223DCA8C0](v18, -1, -1);
    MEMORY[0x223DCA8C0](v17, -1, -1);
  }

  return 0;
}

void *sub_222B9DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59DE0]) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59DB8]) init];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DE8]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSurfacedBeforeStatus_];
        [v8 setSuggestionValue_];
        [v8 setSuggestionMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222C9361C();
        v13 = [v11 initWithNSUUID_];

        [v6 setSuggestionId_];
        [v6 setGeneratedSuggestion_];

        return v6;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v14 = sub_222C9431C();
  __swift_project_value_buffer(v14, qword_280FE2340);
  v15 = sub_222C942FC();
  v16 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v17 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v20);
    _os_log_impl(&dword_222B39000, v15, v16, "%s Failure creating PLUSSchemaPLUSSuggestionMatchResult message", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x223DCA8C0](v18, -1, -1);
    MEMORY[0x223DCA8C0](v17, -1, -1);
  }

  return 0;
}

void *sub_222B9DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v50 = type metadata accessor for PlusMediaSuggestion(0);
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  v49 = *(v15 + 16);
  v49(v19, v53, v14, v21);
  v53 = a2;
  sub_222C9360C();
  sub_222C42B54(v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v23, v13, v14);
    sub_222B9E560(v51, v7);
    v30 = v14;
    if ((*(v8 + 48))(v7, 1, v50) == 1)
    {
      sub_222B4FCD4(v7, &qword_27D025D28, &unk_222C9AC30);
      v31 = v52;
    }

    else
    {
      sub_222B9E628(v7, v10, type metadata accessor for PlusMediaSuggestion);
      v32 = sub_222B9D8AC(v10);
      v31 = v52;
      if (v32)
      {
        v33 = v32;
        v34 = v32;
        v35 = PlusMediaSuggestion.surfacedBefore.getter();
        sub_222B7D9D0(v10);
        if (v35)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

LABEL_26:
        v48 = sub_222B9DB80(v23, v36, v33);

        (*(v15 + 8))(v23, v30);
        return v48;
      }

      sub_222B7D9D0(v10);
    }

    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v37 = v15;
    v56 = &type metadata for PIMSConstraintMismatch;
    v57 = sub_222B77B4C();
    v54[0] = 0xD000000000000016;
    v54[1] = 0x8000000222CA9C80;
    v55 = 13;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    (v49)(v31, v53, v30);
    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54[0] = v42;
      *v41 = 136315394;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, v54);
      *(v41 + 12) = 2080;
      sub_222B9E5D0();
      v43 = sub_222C9517C();
      v44 = v31;
      v46 = v45;
      (*(v37 + 8))(v44, v30);
      v47 = sub_222B437C0(v43, v46, v54);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_222B39000, v39, v40, "%s PIMS %s not found in suggestion store, emitting PLUSSchemaPLUSSuggestionMatchResult with nil suggestionValue", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);

      v15 = v37;
    }

    else
    {

      (*(v15 + 8))(v31, v30);
    }

    v33 = 0;
    v36 = 0;
    goto LABEL_26;
  }

  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v24 = sub_222C9431C();
  __swift_project_value_buffer(v24, qword_280FE2340);
  v25 = sub_222C942FC();
  v26 = sub_222C94A4C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = v28;
    *v27 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, v54);
    _os_log_impl(&dword_222B39000, v25, v26, "%s Failed to generated suggestionId", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  return 0;
}

uint64_t sub_222B9E560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B9E5D0()
{
  result = qword_280FE0298;
  if (!qword_280FE0298)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE0298);
  }

  return result;
}

uint64_t sub_222B9E628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B9E690(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_222B9E73C()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_222B9E7C4()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = static InferenceLogUtils.loggerTag<A>(_:)(*v0, *v0);
    v0[2] = v1;
    v0[3] = v2;
  }

  return v1;
}

uint64_t sub_222B9E860(char *a1, char *a2, uint64_t a3)
{
  v234 = a3;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  v237 = *(*v3 + 96);
  v235 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v245 = AssociatedTypeWitness;
  v246 = v10;
  v247 = v11;
  v248 = v12;
  v211 = type metadata accessor for ScoreStep(0, &v245);
  v213 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = (v175 - v13);
  v204 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v209 = v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v208 = v175 - v17;
  MEMORY[0x28223BE20](v18);
  v241 = v175 - v19;
  v219 = sub_222C94B5C();
  v221 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v207 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v218 = v175 - v22;
  MEMORY[0x28223BE20](v23);
  v206 = v175 - v24;
  v25 = sub_222C94B5C();
  MEMORY[0x28223BE20](v25 - 8);
  v188 = v175 - v26;
  v229 = AssociatedTypeWitness;
  v245 = AssociatedTypeWitness;
  v246 = v10;
  v224 = v10;
  v223 = v11;
  v247 = v11;
  v248 = v12;
  v222 = v12;
  v27 = type metadata accessor for DomainSuggestionSignal(255, &v245);
  v178 = sub_222C94B5C();
  v217 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v216 = v175 - v28;
  v203 = *(v27 - 8);
  MEMORY[0x28223BE20](v29);
  v205 = v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v242 = v175 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v191 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v231 = v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v175 - v36;
  MEMORY[0x28223BE20](v38);
  v228 = v175 - v39;
  v236 = v40;
  v41 = sub_222C94B5C();
  MEMORY[0x28223BE20](v41 - 8);
  v215 = v175 - v42;
  v238 = AssociatedConformanceWitness;
  v239 = v7;
  v233 = swift_getAssociatedTypeWitness();
  v227 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v226 = v175 - v43;
  v44 = *(a2 - 1);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = (*(v234 + 40))(a2, v46);
  if (qword_280FDFE78 != -1)
  {
LABEL_65:
    swift_once();
  }

  v50 = sub_222C9431C();
  v51 = __swift_project_value_buffer(v50, qword_280FE2340);
  v44[2](v48, a1, a2);
  swift_bridgeObjectRetain_n();

  v190 = v51;
  v52 = sub_222C942FC();
  v53 = sub_222C94A3C();

  v54 = os_log_type_enabled(v52, v53);
  v225 = a1;
  v232 = v27;
  v187 = v37;
  v220 = v49;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v245 = v230;
    *v55 = 136315650;
    v214 = v52;
    v56 = sub_222B9E7C4();
    v58 = sub_222B437C0(v56, v57, &v245);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2048;
    swift_getAssociatedConformanceWitness();
    v59 = sub_222C943BC();

    *(v55 + 14) = v59;

    *(v55 + 22) = 2080;
    v60 = v234;
    v61 = *(v234 + 32);
    LODWORD(KeyPath) = v53;
    v62 = (v234 + 32) & 0xFFFFFFFFFFFFLL | 0xAE1A000000000000;
    v63 = v226;
    v61(a2, v234);
    v64 = sub_222C944EC();
    v66 = v65;
    (v44[1])(v48, a2);
    v67 = sub_222B437C0(v64, v66, &v245);

    *(v55 + 24) = v67;
    v68 = v214;
    _os_log_impl(&dword_222B39000, v214, KeyPath, "%s Reviewing %ld new signals for entity query %s", v55, 0x20u);
    v69 = v230;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v69, -1, -1);
    MEMORY[0x223DCA8C0](v55, -1, -1);

    v70 = a2;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (v44[1])(v48, a2);
    v60 = v234;
    v61 = *(v234 + 32);
    v62 = (v234 + 32) & 0xFFFFFFFFFFFFLL | 0xAE1A000000000000;
    v70 = a2;
    v63 = v226;
  }

  v71 = v233;
  v230 = v70;
  v61(v70, v60);
  v72 = sub_222BA0464(v63);
  (*(v227 + 8))(v63, v71);
  v233 = v72;
  v244 = v72;

  v73 = sub_222C942FC();
  v74 = sub_222C94A3C();

  v75 = os_log_type_enabled(v73, v74);
  v186 = v61;
  v185 = v62;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v245 = v77;
    *v76 = 136315394;
    v78 = sub_222B9E7C4();
    v80 = sub_222B437C0(v78, v79, &v245);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2048;
    v81 = v239;
    v82 = v236;
    v83 = swift_getAssociatedConformanceWitness();

    v84 = sub_222C943BC();

    *(v76 + 14) = v84;
    _os_log_impl(&dword_222B39000, v73, v74, "%s Found %ld existing candidates to update.", v76, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x223DCA8C0](v77, -1, -1);
    MEMORY[0x223DCA8C0](v76, -1, -1);
  }

  else
  {

    v81 = v239;
    v82 = v236;
    v85 = swift_getAssociatedConformanceWitness();
    v83 = v85;
  }

  a1 = v216;
  v27 = v228;
  v227 = *(v83 + 8);
  v86 = v220;
  v245 = v220;
  MEMORY[0x28223BE20](v85);
  v87 = v235;
  v175[-6] = v81;
  v175[-5] = v87;
  v88 = v81;
  v89 = v87;
  v90 = v230;
  v91 = v237;
  v175[-4] = v230;
  v175[-3] = v91;
  v92 = v234;
  v175[-2] = v234;
  KeyPath = swift_getKeyPath();
  v214 = v175;
  MEMORY[0x28223BE20](KeyPath);
  v175[-6] = v88;
  v175[-5] = v89;
  v175[-4] = v90;
  v175[-3] = v91;
  v175[-2] = v92;
  v175[-1] = v93;
  v37 = v232;
  v94 = v227;
  v95 = sub_222C943CC();

  WitnessTable = swift_getWitnessTable();
  v97 = v95;
  v49 = v94;
  v98 = v239;
  v100 = sub_222B80CD4(sub_222BA0E28, &v175[-8], v97, &type metadata for SuggestionSignal, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v99);

  v245 = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB0, &qword_222C9A1E8);
  v102 = sub_222BA0EF0();
  v184 = sub_222BA0E54(&v245, v98, v235, v101, v237, v102);

  v245 = v86;
  sub_222C943AC();

  swift_getWitnessTable();
  sub_222C9498C();
  v245 = v233;
  sub_222C943AC();

  swift_getWitnessTable();
  v245 = sub_222C9498C();
  sub_222C9497C();
  swift_getWitnessTable();
  v103 = sub_222C9492C();
  v175[1] = v103;
  if ((v103 & 0xC000000000000001) != 0)
  {

    sub_222C94C5C();
    sub_222C9494C();
    v48 = v245;
    v105 = v246;
    v106 = v247;
    KeyPath = v248;
    v107 = v249;
  }

  else
  {
    v108 = -1 << *(v103 + 32);
    v105 = v103 + 56;
    v109 = ~v108;
    v110 = -v108;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    else
    {
      v111 = -1;
    }

    v112 = v111 & *(v103 + 56);

    v107 = v112;
    v106 = v109;
    KeyPath = 0;
    v48 = v113;
  }

  a2 = v215;
  v214 = (v191 + 56);
  v175[0] = v106;
  v114 = (v106 + 64) >> 6;
  v237 = (v191 + 16);
  v201 = (v191 + 32);
  v200 = (v203 + 48);
  v183 = (v203 + 32);
  v182 = v229 - 8;
  v177 = (v217 + 1);
  v235 = (v204 + 48);
  v217 = (v221 + 1);
  v221 = (v191 + 8);
  v181 = (v204 + 32);
  v180 = v238 + 112;
  v199 = v238 + 96;
  v198 = (v203 + 16);
  v197 = v238 + 120;
  v196 = (v204 + 16);
  v195 = (v204 + 56);
  v194 = (v204 + 8);
  v193 = (v213 + 8);
  v192 = (v203 + 8);
  *&v104 = 136315394;
  v176 = v104;
  v204 = v105;
  v203 = v48;
  v202 = v114;
  v44 = v232;
  while ((v48 & 0x8000000000000000) == 0)
  {
    if (!v107)
    {
      v126 = KeyPath;
      while (1)
      {
        v125 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v125 >= v114)
        {
          goto LABEL_62;
        }

        v107 = *(v105 + 8 * v125);
        ++v126;
        if (v107)
        {
          KeyPath = v125;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v125 = KeyPath;
LABEL_26:
    v233 = (v107 - 1) & v107;
    (*(v191 + 16))(a2, *(v48 + 48) + *(v191 + 72) * (__clz(__rbit64(v107)) | (v125 << 6)), v82);
LABEL_27:
    (v214->isa)(a2, 0, 1, v82);
    (*v201)(v27, a2, v82);
    sub_222C943EC();
    v127 = *v200;
    if ((*v200)(a1, 1, v44) == 1)
    {
      v128 = v229;
      v129 = v188;
      (*(*(v229 - 8) + 56))(v188, 1, 1, v229);
      v130 = v129;
      v82 = v236;
      sub_222C390AC(v184, v130, v128, v224, v223, v222, v242);
      v131 = v44;
      v132 = v127(a1, 1, v44);
      v133 = v226;
      if (v132 != 1)
      {
        (*v177)(a1, v178);
      }
    }

    else
    {
      v131 = v44;
      (*v183)(v242, a1, v44);
      v133 = v226;
    }

    swift_beginAccess();
    v134 = v206;
    v135 = v239;
    sub_222C943EC();
    swift_endAccess();
    v136 = *v235;
    v137 = (*v235)(v134, 1, v135);
    v213 = *v217;
    (v213)(v134, v219);
    v162 = v137 == 1;
    v138 = v218;
    if (v162)
    {
      v139 = *v237;
      v140 = v187;
      (*v237)(v187, v27, v82);

      v141 = sub_222C942FC();
      v142 = sub_222C94A3C();
      v143 = v141;

      v189 = v142;
      if (os_log_type_enabled(v141, v142))
      {
        v144 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v243 = v179;
        *v144 = v176;
        v145 = sub_222B9E7C4();
        v147 = sub_222B437C0(v145, v146, &v243);

        *(v144 + 4) = v147;
        *(v144 + 12) = 2080;
        v148 = v236;
        v139(v231, v140, v236);
        v149 = sub_222C944EC();
        v151 = v150;
        (*v221)(v140, v148);
        v152 = sub_222B437C0(v149, v151, &v243);
        v133 = v226;

        *(v144 + 14) = v152;
        _os_log_impl(&dword_222B39000, v143, v189, "%s Signal for new entity provided. Generating new candidate. Entity=%s", v144, 0x16u);
        v153 = v179;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v153, -1, -1);
        v154 = v144;
        v138 = v218;
        MEMORY[0x223DCA8C0](v154, -1, -1);

        v135 = v239;
        v131 = v232;
        v82 = v148;
        v27 = v228;
      }

      else
      {

        v82 = v236;
        (*v221)(v140, v236);
        v135 = v239;
        v131 = v232;
        v27 = v228;
        v133 = v226;
      }
    }

    sub_222C943EC();
    if (v136(v138, 1, v135) == 1)
    {
      v186(v230, v234);
      v155 = v231;
      (*v237)(v231, v27, v82);
      (*(v238 + 112))(v133, v155, v135);
      if (v136(v138, 1, v135) != 1)
      {
        (v213)(v138, v219);
      }
    }

    else
    {
      (*v181)(v241, v138, v135);
    }

    v156 = v240[4];
    v157 = (*(v238 + 96))(v135);
    v158 = v157;
    v159 = *v242;
    v160 = 0.0;
    if ((v159 - 3) <= 4)
    {
      v160 = dbl_222C9AD18[(v159 - 3)];
    }

    v161 = *(*(v156 + 16) + 16);
    if (v161)
    {
      v162 = v157 > 0.0 && v159 == 0;
      v163 = v162;
      v164 = fmax(-v157, -0.2);
      do
      {
        if (v163)
        {
          v165 = v164;
        }

        else
        {
          v165 = v160;
        }

        if ((v159 - 3) >= 6u)
        {
          v160 = v165;
        }

        --v161;
      }

      while (v161);
    }

    v166 = v158 + v160;
    v167 = *(v156 + 24);
    v168 = *(v167 + 16);
    if (v168)
    {
      v169 = (v167 + 32);
      do
      {
        v170 = v169[3];
        v171 = v169[4];
        __swift_project_boxed_opaque_existential_1(v169, v170);
        v172 = COERCE_DOUBLE((*(v171 + 8))(v159, v170, v171, v158, v166));
        if ((v173 & 1) == 0)
        {
          v166 = v172;
        }

        v169 += 5;
        --v168;
      }

      while (v168);
    }

    v115 = v205;
    (*v198)(v205, v242, v131);
    v116 = v210;
    sub_222B750F8(v115, v229, v224, v223, v222, v210, v158, v166, v160);
    v117 = v239;
    v37 = v208;
    (*(v238 + 120))(v116, v239);
    v118 = v209;
    (*(*v240 + 184))(v37, v159, v225, v230, v234);
    v119 = v236;
    v27 = v228;
    (*v237)(v231, v228, v236);
    v120 = v207;
    (*v196)(v207, v118, v117);
    (*v195)(v120, 0, 1, v117);
    swift_beginAccess();
    v49 = v227;
    sub_222C943DC();
    sub_222C943FC();
    swift_endAccess();
    v121 = *v194;
    (*v194)(v118, v117);
    v122 = v232;
    v121(v37, v117);
    v123 = v116;
    v82 = v119;
    (*v193)(v123, v211);
    v124 = v117;
    v44 = v122;
    v121(v241, v124);
    (*v192)(v242, v122);
    (*v221)(v27, v119);
    a1 = v216;
    a2 = v215;
    v105 = v204;
    v48 = v203;
    v107 = v233;
    v114 = v202;
  }

  v233 = v107;
  if (sub_222C94C8C())
  {
    sub_222C951EC();
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

LABEL_62:

  (v214->isa)(a2, 1, 1, v82);
  sub_222B504E8(v48);
  swift_beginAccess();
  return v244;
}

uint64_t sub_222BA0464(uint64_t a1)
{
  v2 = *v1;
  (*(*(*v1 + 96) + 24))(a1, *(*v1 + 88), *(*v1 + 96));
  v3 = *(v2 + 80);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = sub_222C9477C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222BA0B1C(v5, AssociatedTypeWitness, v3, *(AssociatedConformanceWitness + 8));

  sub_222C947FC();
  sub_222C943DC();
  swift_getWitnessTable();
  sub_222C9468C();

  return v8;
}

uint64_t sub_222BA0668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_222C94B5C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 88))(a3, AssociatedConformanceWitness, v12);
  v13 = *(a3 - 8);
  (*(v13 + 16))(v9, a2, a3);
  (*(v13 + 56))(v9, 0, 1, a3);
  swift_getAssociatedConformanceWitness();
  sub_222C943DC();
  return sub_222C943FC();
}

uint64_t sub_222BA08C8()
{
  sub_222B9E73C();

  return swift_deallocClassInstance();
}

unint64_t sub_222BA0938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9440C();

  return sub_222BA0994(a1, v6, a2, a3);
}

unint64_t sub_222BA0994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_222C9447C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_222BA0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_222C947BC())
  {
    sub_222C94F9C();
    v13 = sub_222C94F8C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_222C947BC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_222C9479C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_222C94D7C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_222BA0938(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_222BA0E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_222C946AC())
  {
    return 0;
  }

  if (sub_222C946AC())
  {
    return 2;
  }

  return 1;
}

unint64_t sub_222BA0EF0()
{
  result = qword_27D025DB8;
  if (!qword_27D025DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025AB0, &qword_222C9A1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025DB8);
  }

  return result;
}

uint64_t sub_222BA0F54()
{
  type metadata accessor for SELFEventLogEmitters();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025DD0, qword_222C9AD88);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025DC0 = 91;
  *algn_27D025DC8 = 0xE100000000000000;
  return result;
}

void sub_222BA0FF4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_222BA2120();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D59CB8]) init];
    if (v8)
    {
      v13 = v8;
      [v8 setGeneratedSuggestion:a1];
      [v13 setIsSuggestionUpdated:a3 & 1];
      [v7 setContactSuggestionGenerated_];
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_222C93F1C();

      goto LABEL_11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v9 = sub_222C9431C();
  __swift_project_value_buffer(v9, qword_280FE2340);
  v13 = sub_222C942FC();
  v10 = sub_222C94A4C();
  if (os_log_type_enabled(v13, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v14);
    _os_log_impl(&dword_222B39000, v13, v10, "%s Failed to create PLUS SELF event templates", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223DCA8C0](v12, -1, -1);
    MEMORY[0x223DCA8C0](v11, -1, -1);
  }

LABEL_11:
}

void sub_222BA1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_222BA2120();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D59C68]) init];
    if (v11)
    {
      v12 = v11;
      [v11 setGroundTruth_];
      sub_222B5551C(a2, v8);
      v13 = sub_222C9367C();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v8, 1, v13) == 1)
      {
        sub_222B86DA0(v8);
        v15 = 0;
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v22 = sub_222C9361C();
        v15 = [v21 initWithNSUUID_];

        (*(v14 + 8))(v8, v13);
      }

      [v12 setOriginalPlusId_];

      [v10 setContactGroundTruthGenerated_];
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_222C93F1C();

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v23 = sub_222C942FC();
  v17 = sub_222C94A4C();
  if (os_log_type_enabled(v23, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v24);
    _os_log_impl(&dword_222B39000, v23, v17, "%s Failed to create SELF message templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
    v20 = v23;
  }
}

void sub_222BA1588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_222BA2120();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D59D30]) init];
    if (v11)
    {
      v12 = v11;
      sub_222B5551C(a3, v8);
      v13 = sub_222C9367C();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v8, 1, v13) == 1)
      {
        sub_222B86DA0(v8);
        v15 = 0;
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v22 = sub_222C9361C();
        v15 = [v21 initWithNSUUID_];

        (*(v14 + 8))(v8, v13);
      }

      [v12 setOriginalRequestId_];

      [v12 setGroundTruth_];
      [v10 setMediaGroundTruthGenerated_];
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_222C93F1C();

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v23 = sub_222C942FC();
  v17 = sub_222C94A4C();
  if (os_log_type_enabled(v23, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v24);
    _os_log_impl(&dword_222B39000, v23, v17, "%s Failed to create SELF message templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
    v20 = v23;
  }
}

void sub_222BA191C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = sub_222BA2120();
  if (v6)
  {
    oslog = v6;
    [v6 *a3];
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_222C93F3C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v7 = sub_222C9431C();
    __swift_project_value_buffer(v7, qword_280FE2340);
    oslog = sub_222C942FC();
    v8 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v12);
      _os_log_impl(&dword_222B39000, oslog, v8, "%s Failed to create SELF message templates", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x223DCA8C0](v10, -1, -1);
      MEMORY[0x223DCA8C0](v9, -1, -1);
    }
  }
}

void sub_222BA1AF4(uint64_t a1, uint64_t a2, SEL *a3, const char *a4, ...)
{
  v8 = sub_222BA2120();
  if (v8)
  {
    oslog = v8;
    [v8 *a3];
    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    sub_222C93F1C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    oslog = sub_222C942FC();
    v10 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v14);
      _os_log_impl(&dword_222B39000, oslog, v10, a4, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

void sub_222BA1CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_222BA2120();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D59E20]) init];
    if (v6)
    {
      oslog = v6;
      [v6 setUsoGraphTier1:a1];
      [v5 setUsoGraphTier1_];
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      sub_222C93F3C();

      goto LABEL_11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  oslog = sub_222C942FC();
  v8 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v12);
    _os_log_impl(&dword_222B39000, oslog, v8, "%s Failed to create SELF message templates for USOGraphTier1", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223DCA8C0](v10, -1, -1);
    MEMORY[0x223DCA8C0](v9, -1, -1);
  }

LABEL_11:
}

void sub_222BA1ED4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, const char *a5, ...)
{
  v9 = sub_222BA2120();
  if (v9)
  {
    oslog = v9;
    [v9 *a4];
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    sub_222C93F2C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    oslog = sub_222C942FC();
    v11 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v15);
      _os_log_impl(&dword_222B39000, oslog, v11, a5, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }
  }
}

uint64_t sub_222BA20C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222BA2120()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v6 = sub_222C9361C();
    v7 = [v5 initWithNSUUID_];

    [v3 setPlusId_];
    [v1 setEventMetadata_];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CommonFeature.UniqueIdentifier.init(value:)(uint64_t a1, uint64_t a2)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.init(value:)(char a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BA23CC(char *a1)
{
  type metadata accessor for CommonFeature.DonatedBySiri(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA2418(char *a1)
{
  type metadata accessor for CommonFeature.DonatedBySiri(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BA255C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA25CC(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonFeature.OrderingTimestamp.__allocating_init(value:)(uint64_t a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  swift_allocObject();
  sub_222B81ED0(a1, v4);
  v5 = sub_222C93EDC();

  sub_222BA2994(a1);
  if (v5)
  {
  }

  return v5;
}

uint64_t CommonFeature.OrderingTimestamp.init(value:)(uint64_t a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v2 - 8);
  sub_222B81ED0(a1, &v6 - v3);
  v4 = sub_222C93EDC();

  sub_222BA2994(a1);
  if (v4)
  {
  }

  return v4;
}

uint64_t sub_222BA2994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BA2A14(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA2A84(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BA2CCC(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t CommonFeature.StartTimestamp.__allocating_init(value:)(uint64_t a1)
{
  return sub_222BA2D9C(a1, type metadata accessor for CommonFeature.StartTimestamp);
}

{
  return sub_222BA2F44(a1, type metadata accessor for CommonFeature.StartTimestamp);
}

uint64_t CommonFeature.EndTimestamp.__allocating_init(value:)(uint64_t a1)
{
  return sub_222BA2D9C(a1, type metadata accessor for CommonFeature.EndTimestamp);
}

{
  return sub_222BA2F44(a1, type metadata accessor for CommonFeature.EndTimestamp);
}

uint64_t sub_222BA2D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_222B81ED0(a1, &v14 - v5);
  v7 = sub_222C935EC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  if (v9 == 1)
  {
    sub_222BA2994(v6);
    v10 = 0;
  }

  else
  {
    sub_222C935BC();
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  a2(0);
  swift_allocObject();
  v14 = v10;
  v15 = v9 == 1;
  v12 = sub_222C93EDC();
  sub_222BA2994(a1);
  return v12;
}

uint64_t sub_222BA2F44(uint64_t a1, uint64_t (*a2)(void))
{
  sub_222C935BC();
  a2(0);
  swift_allocObject();
  v4 = sub_222C93EEC();
  v5 = sub_222C935EC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

unint64_t UserFeedbackLearningInferenceFeature.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000016;
  v4 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v2 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

SiriPrivateLearningInference::UserFeedbackLearningInferenceFeature_optional __swiftcall UserFeedbackLearningInferenceFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222BA33D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "actions";
  v5 = "pimsPhantomTurnRemovalEnabled";
  v6 = 0xD000000000000016;
  if (v3 != 6)
  {
    v5 = "adaptivePICSGeneration";
  }

  v7 = "pimsInAppFollowup";
  v8 = 0xD00000000000001BLL;
  result = 0xD00000000000001DLL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001DLL;
    v7 = "pimsWakeWordTrimmingEnabled";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "pimsShadowLogging";
  v11 = 0xD000000000000017;
  if (v3 != 2)
  {
    v11 = 0xD000000000000011;
    v10 = "pimsSuggestionSurfacing";
  }

  if (*v1)
  {
    v4 = "partialRepetitionsInPhoneCall";
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v1 > 1u)
  {
    v2 = v11;
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v2 = v6;
    v12 = v5;
  }

  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

void *UserFeedbackLearningInferenceFeatureResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager(0);
  swift_allocObject();
  v2 = InferenceFeatures.InferenceFeatureManager.init()();
  v3 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  return v0;
}

void *UserFeedbackLearningInferenceFeatureResolver.init()()
{
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager(0);
  swift_allocObject();
  v2 = InferenceFeatures.InferenceFeatureManager.init()();
  v3 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  return v0;
}

uint64_t sub_222BA358C(char *a1)
{
  v2 = v1;
  v4 = sub_222C942CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_222C93DEC();
  v11 = v8;
  LOBYTE(v2) = sub_222BA3910(&v11, v7);
  (*(v5 + 8))(v7, v4);
  return v2 & 1;
}

uint64_t sub_222BA36A4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222C942CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  LOBYTE(a1) = *a1;

  sub_222C942AC();
  v11[0] = a1;
  v8 = sub_222BA3910(v11, v7);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_222BA3910(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        if (qword_27D024690 != -1)
        {
          swift_once();
        }

        v4 = qword_27D025A30;
      }

      else
      {
        if (qword_280FDFFB8 != -1)
        {
          swift_once();
        }

        v4 = qword_280FDFFC0;
      }
    }

    else if (v3 == 4)
    {
      if (qword_280FDFF70 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF78;
    }

    else
    {
      if (qword_280FDFF48 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF50;
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (qword_280FDFF88 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF90;
    }

    else
    {
      if (qword_280FDFFA0 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFFA8;
    }
  }

  else if (v3)
  {
    if (qword_280FE0370 != -1)
    {
      swift_once();
    }

    v4 = qword_280FE0378;
  }

  else
  {
    if (qword_280FDFF58 != -1)
    {
      swift_once();
    }

    v4 = qword_280FDFF60;
  }

  v7[3] = sub_222C93BCC();
  v7[4] = MEMORY[0x277D5FAF8];
  v7[0] = v4;

  v5 = sub_222C93DFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5 & 1;
}

uint64_t UserFeedbackLearningInferenceFeatureResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_222BA3C14()
{
  result = qword_27D025E68;
  if (!qword_27D025E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025E68);
  }

  return result;
}

unint64_t sub_222BA3C6C()
{
  result = qword_27D025E70;
  if (!qword_27D025E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025E78, &qword_222C9AF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSuggestionTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSuggestionTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222BA3EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4A30](a1, WitnessTable);
}

uint64_t sub_222BA3F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4A38](a1, a2, WitnessTable);
}

char *sub_222BA3FA8(void *a1)
{
  v1 = [a1 recipients];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  sub_222BA4428();
  v4 = sub_222C9471C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_21:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_222C96900;
    v28 = type metadata accessor for CommonFeature.EventType(0);
    swift_allocObject();
    v29 = sub_222C93EEC();
    *(v2 + 56) = v28;
    v30 = MEMORY[0x277D5FBA0];
    *(v2 + 64) = sub_222BA4474(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType, MEMORY[0x277D5FBA0]);
    *(v2 + 32) = v29;
    v31 = type metadata accessor for CommonContactFeature.RecipientContactReferences(0);
    swift_allocObject();
    v32 = sub_222C93EEC();
    *(v2 + 96) = v31;
    *(v2 + 104) = sub_222BA4474(&qword_27D025E88, 255, type metadata accessor for CommonContactFeature.RecipientContactReferences, v30);
    *(v2 + 72) = v32;
    return v2;
  }

  v5 = sub_222C94C6C();
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_4:
  v37 = v2;
  result = sub_222B4C988(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v4;
    v33 = v4 & 0xC000000000000001;
    v34 = v5;
    v35 = v4;
    do
    {
      if (v33)
      {
        v9 = MEMORY[0x223DC9B30](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 displayName];
      v12 = sub_222C9449C();
      v36 = v13;

      v14 = [v10 contactIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_222C9449C();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v10 personHandle];
      if (v19 && (v20 = v19, v21 = [v19 label], v20, v21))
      {
        v22 = sub_222C9449C();
        v24 = v23;
      }

      else
      {

        v22 = 0;
        v24 = 0;
      }

      v26 = *(v37 + 16);
      v25 = *(v37 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222B4C988((v25 > 1), v26 + 1, 1);
      }

      ++v7;
      *(v37 + 16) = v26 + 1;
      v27 = (v37 + 48 * v26);
      v8 = v35;
      v27[4] = v12;
      v27[5] = v36;
      v27[6] = v16;
      v27[7] = v18;
      v27[8] = v22;
      v27[9] = v24;
    }

    while (v34 != v7);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_222BA4428()
{
  result = qword_27D025E80;
  if (!qword_27D025E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D025E80);
  }

  return result;
}

uint64_t sub_222BA4474(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_222BA44BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v28 = a1;
    do
    {
      sub_222B79B14(v9, v7);
      if ((sub_222C9362C() & 1) == 0)
      {
        goto LABEL_17;
      }

      v11 = v4[5];
      v12 = *(a1 + v11);
      sub_222C0A220(*&v7[v11], &v59);
      sub_222C0A220(v12, &v64);
      v13 = v59;
      if (*(&v59 + 1) == 1)
      {
        if (*(&v64 + 1) != 1)
        {
          goto LABEL_8;
        }

        *&v49 = v59;
        *(&v49 + 1) = 1;
        v50 = v60;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        sub_222B4FCD4(&v49, &qword_27D0256C8, &unk_222C98AB0);
      }

      else
      {
        if (*(&v64 + 1) == 1)
        {
LABEL_8:
          v49 = v59;
          v50 = v60;
          v51 = v61;
          v52 = v62;
          v53 = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v57 = v67;
          v58 = v68;
          sub_222B4FCD4(&v49, &qword_27D0256D0, &unk_222C9A490);
LABEL_17:
          sub_222B7D9D0(v7);
          goto LABEL_18;
        }

        v29 = v64;
        v30 = v65;
        v31 = v66;
        v32 = v67;
        v33 = v68;
        v70[3] = v67;
        v70[4] = v68;
        v70[1] = v65;
        v70[2] = v66;
        v70[0] = v64;
        v69[3] = v62;
        v69[4] = v63;
        v69[1] = v60;
        v69[2] = v61;
        v69[0] = v59;
        v14 = sub_222BEF230(v69, v70);
        sub_222B4FCD4(&v29, &qword_27D0256C8, &unk_222C98AB0);
        v49 = v13;
        v50 = v60;
        v51 = v61;
        a1 = v28;
        v52 = v62;
        v53 = v63;
        sub_222B4FCD4(&v49, &qword_27D0256C8, &unk_222C98AB0);
        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v15 = &v7[v4[6]];
      v16 = *(v15 + 1);
      v43[0] = *v15;
      v43[1] = v16;
      v18 = *v15;
      v17 = *(v15 + 1);
      v43[2] = *(v15 + 2);
      v44 = *(v15 + 24);
      v19 = *(v15 + 2);
      v40 = v17;
      v41 = v19;
      v42 = *(v15 + 24);
      v39 = v18;
      v20 = (a1 + v4[6]);
      v21 = v20[2];
      v22 = *v20;
      v23 = *v20;
      v46 = v20[1];
      v47 = v21;
      v45 = v22;
      v48 = *(v20 + 24);
      v35 = v23;
      v36 = v46;
      v37 = v20[2];
      v38 = *(v20 + 24);
      sub_222B554C0(v43, v34);
      sub_222B554C0(&v45, v34);
      v24 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v39, &v35);
      v29 = v35;
      v30 = v36;
      v31 = v37;
      LOWORD(v32) = v38;
      sub_222B55A80(&v29);
      v49 = v39;
      v50 = v40;
      v51 = v41;
      LOWORD(v52) = v42;
      sub_222B55A80(&v49);
      if (!v24 || (sub_222BBD800(*&v7[v4[7]], *(a1 + v4[7])) & 1) == 0 || *&v7[v4[8]] != *(a1 + v4[8]) || (sub_222BBDAA0(*&v7[v4[9]], *(a1 + v4[9])) & 1) == 0 || *&v7[v4[10]] != *(a1 + v4[10]))
      {
        goto LABEL_17;
      }

      v25 = sub_222C17D8C(*&v7[v4[11]], *(a1 + v4[11]));
      sub_222B7D9D0(v7);
      if (v25)
      {
        return 1;
      }

LABEL_18:
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t sub_222BA48C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_222BA4930(a1, a2, a3, a4);
  return v8;
}

void *sub_222BA4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptiveMediaSuggestionNominator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025E90, qword_222C9B200);
  v9 = sub_222C944EC();
  MEMORY[0x223DC9330](v9);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  v4[2] = 91;
  v4[3] = 0xE100000000000000;
  v4[8] = a3;
  v4[9] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v4[4] = a2;
  return v4;
}

uint64_t AdaptiveMediaSuggestionNominator.__allocating_init<A>(candidateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  type metadata accessor for MediaSuggestionCandidateNominator(0);
  swift_allocObject();
  v10 = sub_222C13354();
  v11 = swift_allocObject();
  sub_222BA4930(v9, v10, a2, a3);
  (*(v6 + 8))(a1, a2);
  return v11;
}

void *sub_222BA4B60(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_retain_n();
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DC9B30](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v2 = sub_222C94C6C();
          goto LABEL_3;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v7 = sub_222BA4D7C(v5);

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_222B4B04C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 16))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }
      }

      v13 = (v4[3] >> 1) - v4[2];
      type metadata accessor for PlusMediaSuggestion(0);
      if (v13 < v8)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v14 = v4[2];
        v15 = __OFADD__(v14, v8);
        v16 = v14 + v8;
        if (v15)
        {
          goto LABEL_32;
        }

        v4[2] = v16;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:

  return v4;
}

uint64_t sub_222BA4D7C(unint64_t a1)
{
  v2 = v1;
  v63 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v56 - v5;
  v65 = type metadata accessor for PlusMediaSuggestion(0);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v56 - v8;
  MEMORY[0x28223BE20](v9);
  v62 = v56 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = v56 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v56 - v14;
  v16 = v1[8];
  v17 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v16);
  v77[0] = a1;
  v18 = (*(v17 + 24))(v77, v16, v17);
  v68 = sub_222C0BFAC(v18);
  sub_222C0A220(a1, &v71);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    sub_222B4FC6C(&v71, v77, &qword_27D0256C8, &unk_222C98AB0);
    v20 = sub_222C942FC();
    v21 = sub_222C94A3C();

    sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
    v22 = os_log_type_enabled(v20, v21);
    v58 = a1;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222B437C0(*(v2 + 16), *(v2 + 24), v69);
      *(v23 + 12) = 2080;
      if (v72 == 1)
      {
        v25 = 0xE700000000000000;
        v26 = 0x3E726F7272453CLL;
      }

      else
      {
        v77[0] = v71;
        v77[1] = v72;
        v78 = v73;
        v79 = v74;
        v80 = v75;
        v81 = v76;
        v26 = sub_222BED214();
        v25 = v27;
        sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
      }

      v28 = sub_222B437C0(v26, v25, v69);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_222B39000, v20, v21, "%s Updating nomination status for candidates with query=%s:", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    else
    {

      sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
    }

    v29 = v61;
    v57 = v2;
    v30 = *(v18 + 16);
    if (v30)
    {
      v2 = 0;
      v31 = (v66 + 48);
      v67 = MEMORY[0x277D84F90];
      while (v2 < *(v18 + 16))
      {
        v32 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v33 = *(v66 + 72);
        sub_222B79B14(v18 + v32 + v33 * v2, v15);
        sub_222BA5794(v15, v68, v29);
        sub_222B7D9D0(v15);
        if ((*v31)(v29, 1, v65) == 1)
        {
          sub_222B4FCD4(v29, &qword_27D025D28, &unk_222C9AC30);
        }

        else
        {
          a1 = v18;
          v34 = v29;
          v35 = v60;
          sub_222B7D960(v34, v60);
          sub_222B7D960(v35, v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_222B4B04C(0, v67[2] + 1, 1, v67);
          }

          v37 = v67[2];
          v36 = v67[3];
          if (v37 >= v36 >> 1)
          {
            v67 = sub_222B4B04C((v36 > 1), v37 + 1, 1, v67);
          }

          v38 = v67;
          v67[2] = v37 + 1;
          sub_222B7D960(v62, v38 + v32 + v37 * v33);
          v29 = v61;
        }

        if (v30 == ++v2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v67 = MEMORY[0x277D84F90];
LABEL_20:
    v56[1] = 0;

    v18 = v57[8];
    v39 = v57[9];
    __swift_project_boxed_opaque_existential_1(v57 + 5, v18);
    v69[0] = v58;
    v40 = v67;
    (*(v39 + 32))(v69, v67, v18, v39);
    v63 = v40[2];
    if (!v63)
    {
      break;
    }

    a1 = 0;
    v68 = 0x8000000222CA9400;
    v2 = 0x8000000222CA93E0;
    v15 = 0x8000000222CA93C0;
    v60 = MEMORY[0x277D84F90];
    while (a1 < v40[2])
    {
      v41 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v42 = v40 + v41;
      v43 = *(v66 + 72);
      v44 = v64;
      sub_222B79B14(&v42[v43 * a1], v64);
      v45 = *(v44 + *(v65 + 44));
      if (*(v45 + 16) && (v62 = v41, sub_222C952FC(), sub_222C9452C(), v46 = sub_222C9534C(), v18 = v45 + 56, v47 = -1 << *(v45 + 32), v48 = v46 & ~v47, ((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
      {
        v61 = v43;
        v49 = ~v47;
        while (*(*(v45 + 48) + v48) > 3u || *(*(v45 + 48) + v48) <= 1u || *(*(v45 + 48) + v48) == 3)
        {
          v50 = sub_222C951FC();

          if (v50)
          {
            goto LABEL_35;
          }

          v48 = (v48 + 1) & v49;
          if (((*(v18 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_35:
        sub_222B7D960(v64, v59);
        v51 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v51 + 16) + 1, 1);
          v51 = v70;
        }

        v40 = v67;
        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_222B4C630((v53 > 1), v54 + 1, 1);
          v51 = v70;
        }

        *(v51 + 16) = v54 + 1;
        v60 = v51;
        sub_222B7D960(v59, v51 + v62 + v54 * v61);
      }

      else
      {
LABEL_22:
        sub_222B7D9D0(v64);
        v40 = v67;
      }

      if (++a1 == v63)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v60 = MEMORY[0x277D84F90];
LABEL_41:

  return v60;
}

uint64_t sub_222BA5794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_222BA44BC(a1, a2);
  sub_222BA5918(v9 & 1, a1, v8);
  v10 = type metadata accessor for PlusMediaSuggestion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_222B79B14(a1, a3);
    if (v12(v8, 1, v10) != 1)
    {
      sub_222B4FCD4(v8, &qword_27D025D28, &unk_222C9AC30);
    }
  }

  else
  {
    sub_222B7D960(v8, a3);
  }

  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_222BA5918@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v17);
  v88 = &v79 - v18;
  MEMORY[0x28223BE20](v19);
  v89 = &v79 - v20;
  v21 = type metadata accessor for PlusMediaSuggestion(0);
  v22 = v21;
  v23 = *(a2 + *(v21 + 44));
  if (!*(v23 + 16))
  {
    if (a1)
    {
LABEL_14:
      v30 = v89;
      (*(v6 + 56))(v89, 1, 1, v5);

      v91 = sub_222C701E4(&unk_283607B08, v23);
      v31 = v30;
      v32 = v88;
      sub_222B4FC6C(v31, v88, &unk_27D026290, &qword_222C96B40);
      v33 = *(v6 + 48);
      if (v33(v32, 1, v5) == 1)
      {
        v34 = *(v6 + 16);
        v83 = v11;
        v34();
        if (v33(v32, 1, v5) != 1)
        {
          sub_222B4FCD4(v32, &unk_27D026290, &qword_222C96B40);
        }

        v35 = v83;
      }

      else
      {
        (*(v6 + 32))(v11, v32, v5);
        v35 = v11;
        v34 = *(v6 + 16);
      }

      v36 = v22[5];
      v37 = (a2 + v22[6]);
      v96 = *(v37 + 24);
      v38 = v37[2];
      v94 = v37[1];
      v95 = v38;
      v93 = *v37;
      v39 = *(a2 + v22[10]);
      v40 = *(a2 + v22[8]);
      v41 = *(a2 + v36);
      v42 = *(a2 + v22[7]);
      v43 = *(a2 + v22[9]);
      v44 = v90;
      v45 = v35;
      (v34)(v90, v35, v5);
      *&v44[v22[5]] = v41;
      v46 = &v44[v22[6]];
      v47 = v94;
      *v46 = v93;
      *(v46 + 1) = v47;
      *(v46 + 2) = v95;
      *(v46 + 24) = v96;
      swift_retain_n();
      sub_222B554C0(&v93, v92);

      sub_222C16F98(20, v42);
      *&v44[v22[7]] = v48;
      *&v44[v22[10]] = v39;
      *&v44[v22[11]] = v91;
      *&v44[v22[8]] = v40;
      v49 = sub_222C17258(0x14uLL, v43);

      (*(v6 + 8))(v45, v5);
      sub_222B4FCD4(v89, &unk_27D026290, &qword_222C96B40);
      *&v44[v22[9]] = v49;
      return (*(*(v22 - 1) + 56))(v44, 0, 1, v22);
    }

LABEL_22:
    v54 = *(*(v22 - 1) + 56);
    v55 = v90;

    return v54(v55, 1, 1, v22);
  }

  v85 = v21;
  v86 = v6;
  v87 = v5;
  sub_222C952FC();
  sub_222C9452C();
  v24 = sub_222C9534C();
  v25 = -1 << *(v23 + 32);
  v26 = v24 & ~v25;
  if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    v5 = v87;
    v6 = v86;
    v22 = v85;
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v81 = v16;
  v83 = v11;
  v80 = v8;
  v82 = a2;
  v27 = ~v25;
  v91 = 0x8000000222CA9400;
  v28 = a1;
  while (*(*(v23 + 48) + v26) > 3u || *(*(v23 + 48) + v26) <= 1u || *(*(v23 + 48) + v26) == 3)
  {
    v29 = sub_222C951FC();

    v28 = a1;
    if (v29)
    {
      goto LABEL_21;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      v5 = v87;
      v6 = v86;
      v22 = v85;
      a2 = v82;
      v11 = v83;
      if (a1)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v51 = v87;
  v52 = v86;
  v22 = v85;
  v53 = v82;
  if (v28)
  {
    goto LABEL_22;
  }

  v56 = v81;
  (*(v86 + 56))(v81, 1, 1, v87);

  v57 = sub_222C110F0(&unk_283607B30, v23);
  v91 = sub_222C701E4(&unk_283607B58, v57);
  v58 = v56;
  v59 = v84;
  sub_222B4FC6C(v58, v84, &unk_27D026290, &qword_222C96B40);
  v60 = *(v52 + 48);
  if (v60(v59, 1, v51) == 1)
  {
    v61 = *(v52 + 16);
    v61(v80, v53, v51);
    v62 = v60(v59, 1, v51);
    v63 = v90;
    if (v62 != 1)
    {
      sub_222B4FCD4(v59, &unk_27D026290, &qword_222C96B40);
    }

    v64 = v80;
  }

  else
  {
    v65 = v59;
    v64 = v80;
    (*(v52 + 32))(v80, v65, v51);
    v61 = *(v52 + 16);
    v63 = v90;
  }

  v66 = v22[5];
  v67 = v53 + v22[6];
  v96 = *(v67 + 48);
  v68 = *(v67 + 32);
  v94 = *(v67 + 16);
  v95 = v68;
  v93 = *v67;
  v69 = *(v53 + v22[10]);
  v70 = *(v53 + v22[8]);
  v71 = *(v53 + v66);
  v72 = v53;
  v73 = *(v53 + v22[7]);
  v74 = *(v72 + v22[9]);
  v61(v63, v64, v51);
  *&v63[v22[5]] = v71;
  v75 = &v63[v22[6]];
  v76 = v94;
  *v75 = v93;
  *(v75 + 1) = v76;
  *(v75 + 2) = v95;
  *(v75 + 24) = v96;
  swift_retain_n();
  sub_222B554C0(&v93, v92);

  sub_222C16F98(20, v73);
  *&v63[v22[7]] = v77;
  *&v63[v22[10]] = v69;
  *&v63[v22[11]] = v91;
  *&v63[v22[8]] = v70;
  v78 = sub_222C17258(0x14uLL, v74);

  (*(v52 + 8))(v64, v51);
  sub_222B4FCD4(v81, &unk_27D026290, &qword_222C96B40);
  *&v63[v22[9]] = v78;
  return (*(*(v22 - 1) + 56))(v63, 0, 1, v22);
}

void *AdaptiveMediaSuggestionNominator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t AdaptiveMediaSuggestionNominator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_222BA6434(uint64_t a1, void (*a2)(uint64_t *, __int128 *))
{
  v4 = a1;
  v10 = a1;
  sub_222C94E9C();
  sub_222C94FBC();
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    while (1)
    {
      v8 = v5;
      v9 = v6;
      a2(&v10, &v8);
      swift_unknownObjectRelease();
      if (v2)
      {
        break;
      }

      sub_222C94FBC();
      v5 = v8;
      v6 = v9;
      if (!v8)
      {
        v4 = v10;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
  }

  return v4;
}

uint64_t sub_222BA6518(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_222C9367C() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_222BA65FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t sub_222BA6678()
{
  type metadata accessor for PlusClientEventFeatureExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F30, &qword_222C9B780);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025E98 = 91;
  unk_27D025EA0 = 0xE100000000000000;
  return result;
}

uint64_t PlusClientEventFeatureExtractor.__allocating_init(_:)(void *a1)
{
  v2 = type metadata accessor for PlusContactSuggestion(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_222C9367C();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 16))(v32, v9, v10);
  v11 = v33;
  v12 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v27 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_222B4C9A8(0, v14, 0);
    v15 = v31;
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v26[1] = v13;
    v17 = v13 + v16;
    v18 = *(v3 + 72);
    v29 = v6 + 32;
    v30 = v18;
    v19 = v28;
    do
    {
      sub_222BADB30(v17, v5, type metadata accessor for PlusContactSuggestion);
      (*(v6 + 16))(v8, v5, v19);
      sub_222BADBB4(v5, type metadata accessor for PlusContactSuggestion);
      v31 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_222B4C9A8((v20 > 1), v21 + 1, 1);
        v19 = v28;
        v15 = v31;
      }

      *(v15 + 16) = v21 + 1;
      (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v8, v19);
      v17 += v30;
      --v14;
    }

    while (v14);

    a1 = v27;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  type metadata accessor for PlusClientEventFeatureExtractor();
  v22 = swift_allocObject();
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v23 = swift_allocObject();
  v24 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v23 + 16) = v15;
  *(v23 + 24) = v24;
  *(v22 + 16) = v23;
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v22;
}

uint64_t PlusClientEventFeatureExtractor.__allocating_init(picsIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v3 = swift_allocObject();
  v4 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t PlusClientEventFeatureExtractor.init(picsIds:)(uint64_t a1)
{
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v3 = swift_allocObject();
  v4 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v1 + 16) = v3;
  return v1;
}

void *sub_222BA6B08(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EA8, &qword_222C9B2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v176 = &v165 - v4;
  v175 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v168 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v166 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EB0, &unk_222C9B2A8);
  MEMORY[0x28223BE20](v174);
  v173 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v172 = &v165 - v8;
  MEMORY[0x28223BE20](v9);
  v171 = &v165 - v10;
  KeyPath = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v167 = *(KeyPath - 1);
  MEMORY[0x28223BE20](KeyPath);
  v191 = (&v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v183 = *(v12 - 8);
  v184 = v12;
  MEMORY[0x28223BE20](v12);
  v185 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v14 - 8);
  v187 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = (&v165 - v17);
  MEMORY[0x28223BE20](v18);
  v180 = &v165 - v19;
  v188 = 0;
  v20 = a1;
  v21 = sub_222C9367C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v170 = (&v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v177 = &v165 - v25;
  v28 = MEMORY[0x28223BE20](v26);
  v181 = &v165 - v29;
  *&v198 = MEMORY[0x277D84F90];
  v186 = v20;
  if (v20 >> 62)
  {
    goto LABEL_88;
  }

  v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v189 = v27;
    v178 = v22;
    if (v30)
    {
      v31 = 0;
      v32 = v20 & 0xC000000000000001;
      v33 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v32)
        {
          v27 = MEMORY[0x223DC9B30](v31, v20, v28);
        }

        else
        {
          if (v31 >= *(v33 + 16))
          {
            goto LABEL_83;
          }

          v27 = *(v20 + 8 * v31 + 32);
        }

        v34 = v27;
        v22 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_82;
        }

        if ([v27 anyEventType] == 38)
        {
          sub_222C94DEC();
          v1 = *(v198 + 16);
          sub_222C94E2C();
          sub_222C94E3C();
          v27 = sub_222C94DFC();
          v20 = v186;
        }

        else
        {
        }

        ++v31;
        if (v22 == v30)
        {
          v35 = v198;
          v208 = MEMORY[0x277D84F90];
          if ((v198 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_89;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
    v208 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v35 & 0x4000000000000000) == 0)
      {
        v36 = *(v35 + 16);
        goto LABEL_19;
      }
    }

LABEL_89:
    v27 = sub_222C94C6C();
    v36 = v27;
LABEL_19:
    v37 = 0;
    v179 = MEMORY[0x277D84F90];
    if (v36)
    {
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x223DC9B30](v37, v35);
        }

        else
        {
          if (v37 >= *(v35 + 16))
          {
            goto LABEL_81;
          }

          v27 = *(v35 + 8 * v37 + 32);
        }

        v52 = v27;
        v53 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v54 = [v27 payload];
        if (v54)
        {
          v48 = v54;
          v49 = sub_222C9350C();
          v22 = v50;

          v1 = sub_222C934FC();
          sub_222B803C0(v49, v22);
        }

        else
        {
          v1 = 0;
        }

        v51 = [objc_allocWithZone(MEMORY[0x277D59C50]) initWithData_];

        ++v37;
        if (v51)
        {
          MEMORY[0x223DC94A0]();
          if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          v27 = sub_222C947AC();
          v179 = v208;
          v37 = v53;
          if (v36 == v53)
          {
            goto LABEL_20;
          }
        }

        else if (v36 == v37)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_20:

    *&v198 = v186;
    *(&v198 + 1) = sub_222BA9728;
    *&v199 = 0;
    *(&v199 + 1) = sub_222BA9754;
    *&v200 = 0;
    *(&v200 + 1) = sub_222BABE98;
    *&v201 = 0;
    *(&v201 + 1) = sub_222BABEA8;
    *&v202 = 0;
    *(&v202 + 1) = sub_222BA97F8;
    *&v203 = 0;
    *(&v203 + 1) = sub_222BA9850;
    *&v204 = 0;
    *(&v204 + 1) = sub_222BAB2DC;
    v205 = 0;
    v206 = sub_222BAB340;
    v207 = 0;
    v211 = v200;
    v212 = v201;
    v209 = v198;
    v210 = v199;
    v216 = 0;
    v214 = v203;
    v215 = v204;
    v213 = v202;

    sub_222BAB45C();
    v39 = v198;
    v41 = *(&v199 + 1);
    v40 = v200;
    if (v198 >> 62)
    {
      v96 = v38;
      v42 = sub_222C94C6C();
      v38 = v96;
    }

    else
    {
      v42 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v189;
    if (v38 == v42)
    {
      v44 = v178;
      v45 = *(v178 + 56);
      v22 = v180;
      v46 = v180;
      v47 = 1;
    }

    else
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x223DC9B30]();
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v170 = sub_222B4A108(0, v170[2] + 1, 1, v170);
LABEL_62:
          v72 = v179;
          v22 = v170[2];
          v80 = v170[3];
          if (v22 >= v80 >> 1)
          {
            v170 = sub_222B4A108((v80 > 1), v22 + 1, 1, v170);
          }

          v196 = v43;
          v197 = sub_222BAC6B0(&qword_27D025EC0, 255, type metadata accessor for PlusForcePrompted, MEMORY[0x277D5FBA0]);
          *&v195 = v40;
          v81 = v170;
          v170[2] = v22 + 1;
          v27 = sub_222B405A0(&v195, &v81[5 * v22 + 4]);
LABEL_65:
          v82 = 0;
          while (1)
          {
            if (v1)
            {
              v27 = MEMORY[0x223DC9B30](v82, v72);
            }

            else
            {
              if (v82 >= *(v41 + 16))
              {
                goto LABEL_87;
              }

              v27 = *(v72 + 8 * v82 + 32);
            }

            v83 = v27;
            v22 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_86;
            }

            v84 = [v27 contactSuggesterRequestMetadataReported];
            if (v84)
            {
              v85 = v84;
              [v84 isPlusContactSuggesterEnabled];

              v86 = [v83 contactSuggesterRequestMetadataReported];
              v87 = v178;
              if (v86)
              {
                v88 = v86;
                v89 = [v86 isPlusContactSuggesterEnabled];

                v90 = type metadata accessor for PlusContactSuggesterEnabled(0);
                swift_allocObject();
                LOBYTE(v195) = v89;
                v91 = sub_222C93EEC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v170 = sub_222B4A108(0, v170[2] + 1, 1, v170);
                }

                v93 = v170[2];
                v92 = v170[3];
                if (v93 >= v92 >> 1)
                {
                  v170 = sub_222B4A108((v92 > 1), v93 + 1, 1, v170);
                }

                v196 = v90;
                v197 = sub_222BAC6B0(&qword_27D025EC8, 255, type metadata accessor for PlusContactSuggesterEnabled, MEMORY[0x277D5FBA0]);
                *&v195 = v91;
                v94 = v170;
                v170[2] = v93 + 1;
                sub_222B405A0(&v195, &v94[5 * v93 + 4]);
              }

              goto LABEL_93;
            }

            ++v82;
            if (v22 == v39)
            {
              goto LABEL_92;
            }
          }
        }

        if (v38 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v55 = *(v39 + v38 + 4);
      }

      v56 = v55;
      v57 = v206;
      v58 = *(&v203 + 1);
      v59 = *(&v201 + 1);
      v193[0] = v55;
      (v41)(&v195, v193);

      v60 = v195;
      v193[0] = v195;
      v59(&v195, v193);

      v61 = v195;
      v62 = v182;
      v58(&v195);

      v22 = v180;
      (v57)(v62);
      sub_222B4FCD4(v62, &unk_27D026290, &qword_222C96B40);
      v44 = v178;
      v45 = *(v178 + 56);
      v46 = v22;
      v47 = 0;
      v43 = v189;
    }

    v182 = v45;
    v45(v46, v47, 1, v43);
    sub_222B4FCD4(&v198, &qword_27D025EB8, &qword_222C9B2B8);
    if ((*(v44 + 48))(v22, 1, v43) == 1)
    {
      v27 = sub_222B4FCD4(v22, &unk_27D026290, &qword_222C96B40);
      v63 = MEMORY[0x277D84F90];
    }

    else
    {
      v64 = v181;
      (*(v44 + 32))(v181, v22, v43);
      v65 = *(v44 + 16);
      v66 = v177;
      v65(v177, v64, v43);
      v67 = type metadata accessor for PlusClientEventIdFeature(0);
      swift_allocObject();
      v65(v170, v66, v43);
      v68 = sub_222C93EEC();
      v69 = *(v44 + 8);
      v69(v66, v43);
      v70 = sub_222B4A108(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = v70[2];
      v71 = v70[3];
      v63 = v70;
      if (v22 >= v71 >> 1)
      {
        v63 = sub_222B4A108((v71 > 1), v22 + 1, 1, v70);
      }

      v69(v181, v189);
      v196 = v67;
      v197 = sub_222BAC6B0(&qword_27D025EF0, 255, type metadata accessor for PlusClientEventIdFeature, MEMORY[0x277D5FBA0]);
      *&v195 = v68;
      v63[2] = v22 + 1;
      v27 = sub_222B405A0(&v195, &v63[5 * v22 + 4]);
    }

    v72 = v179;
    if (!(v179 >> 62))
    {
      v39 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v170 = v63;
      if (!v39)
      {
        break;
      }

      goto LABEL_50;
    }

    v27 = sub_222C94C6C();
    v39 = v27;
    v170 = v63;
    if (!v27)
    {
      break;
    }

LABEL_50:
    v73 = 0;
    v1 = (v72 & 0xC000000000000001);
    v41 = v72 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v1)
      {
        v27 = MEMORY[0x223DC9B30](v73, v72);
      }

      else
      {
        if (v73 >= *(v41 + 16))
        {
          goto LABEL_85;
        }

        v27 = *(v72 + 8 * v73 + 32);
      }

      v75 = v27;
      v76 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v77 = [v27 contactSuggesterRequestMetadataReported];
      if (v77)
      {
        v22 = v77;
        v78 = [v77 isForcePromptUsed];

        if (v78)
        {
          v43 = type metadata accessor for PlusForcePrompted(0);
          swift_allocObject();
          LOBYTE(v195) = 1;
          v40 = sub_222C93EEC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_141;
          }

          goto LABEL_62;
        }
      }

      else
      {
      }

      ++v73;
      v74 = v76 == v39;
      v72 = v179;
      if (v74)
      {
        goto LABEL_65;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v95 = v27;
    v30 = sub_222C94C6C();
    v27 = v95;
    v20 = v186;
  }

LABEL_92:
  v83 = 0;
  v87 = v178;
LABEL_93:
  v97 = sub_222BAD420(v72);
  v98 = sub_222BAD5C8(v97);

  v99 = v98[2];
  v177 = v83;
  if (!v99)
  {

    goto LABEL_112;
  }

  v194 = MEMORY[0x277D84F90];
  sub_222B4C9EC(0, v99, 0);
  v100 = v194;
  v101 = *(v169 + 16);
  v102 = v167;
  v103 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v165 = v98;
  v104 = v98 + v103;
  swift_beginAccess();
  v105 = *(v102 + 72);
  v180 = (v87 + 56);
  v181 = v105;
  v186 = (v87 + 16);
  while (2)
  {
    v106 = v191;
    v107 = sub_222BADB30(v104, v191, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v108 = v106 + KeyPath[5];
    v109 = *(v101 + 24);
    if (!*(v109 + 16))
    {
LABEL_100:
      MEMORY[0x28223BE20](v107);
      *(&v165 - 2) = v108;
      v113 = v188;
      v112 = sub_222BA6518(MEMORY[0x277D84F98], sub_222BADB98, (&v165 - 4), v114);
      v188 = v113;
      swift_beginAccess();

      v115 = swift_isUniquelyReferenced_nonNull_native();
      v192 = *(v101 + 24);
      *(v101 + 24) = 0x8000000000000000;
      sub_222BAA908(v112, v108, v115);
      *(v101 + 24) = v192;
      swift_endAccess();
      if (!*(v112 + 16))
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }

    v110 = sub_222B8CA54(v108);
    if ((v111 & 1) == 0)
    {

      goto LABEL_100;
    }

    v112 = *(*(v109 + 56) + 8 * v110);

    if (!*(v112 + 16))
    {
LABEL_103:
      v118 = 1;
      goto LABEL_104;
    }

LABEL_101:
    v116 = sub_222B8CA54(v191);
    if ((v117 & 1) == 0)
    {
      goto LABEL_103;
    }

    (*(v178 + 16))(v187, *(v112 + 56) + *(v178 + 72) * v116, v189);
    v118 = 0;
LABEL_104:

    v119 = v187;
    v120 = v118;
    v121 = v189;
    v182(v187, v120, 1, v189);
    v122 = v185;
    v123 = v191;
    (*v186)(v185, v191, v121);
    LOBYTE(v121) = *(v123 + KeyPath[6]);
    v124 = *(v123 + KeyPath[7]);
    sub_222BADBB4(v123, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v125 = v184;
    sub_222B55BA0(v119, v122 + *(v184 + 20));
    *(v122 + *(v125 + 24)) = v121;
    *(v122 + *(v125 + 28)) = v124;
    v194 = v100;
    v127 = *(v100 + 16);
    v126 = *(v100 + 24);
    if (v127 >= v126 >> 1)
    {
      sub_222B4C9EC((v126 > 1), v127 + 1, 1);
      v122 = v185;
      v100 = v194;
    }

    *(v100 + 16) = v127 + 1;
    sub_222BADC98(v122, v100 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + v183[9] * v127, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v104 += v181;
    if (--v99)
    {
      continue;
    }

    break;
  }

  v128 = type metadata accessor for PlusRuntimeContactSuggestions(0);
  swift_allocObject();
  *&v195 = v100;
  v129 = sub_222C93EEC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v170 = sub_222B4A108(0, v170[2] + 1, 1, v170);
  }

  v72 = v179;
  v131 = v170[2];
  v130 = v170[3];
  if (v131 >= v130 >> 1)
  {
    v170 = sub_222B4A108((v130 > 1), v131 + 1, 1, v170);
  }

  v83 = v177;
  v196 = v128;
  v197 = sub_222BAC6B0(&qword_27D025ED0, 255, type metadata accessor for PlusRuntimeContactSuggestions, MEMORY[0x277D5FBA0]);
  *&v195 = v129;
  v132 = v170;
  v170[2] = v131 + 1;
  sub_222B405A0(&v195, &v132[5 * v131 + 4]);
LABEL_112:
  v133 = sub_222BA8AF0(v72);

  v129 = sub_222BAC6F8(v133);

  KeyPath = swift_getKeyPath();
  v134 = v129 + 8;
  v135 = 1 << *(v129 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v128 = v136 & v129[8];
  v137 = (v135 + 63) >> 6;
  v185 = (v178 + 32);
  v186 = (v178 + 16);
  v184 = v168 + 48;
  v191 = v129;

  v138 = 0;
  v183 = MEMORY[0x277D84F90];
  v187 = v137;
  v188 = v129 + 8;
  v139 = v171;
LABEL_115:
  v140 = v138;
  if (!v128)
  {
    goto LABEL_117;
  }

  do
  {
    v138 = v140;
LABEL_120:
    v141 = __clz(__rbit64(v128));
    v128 &= v128 - 1;
    v142 = v141 | (v138 << 6);
    v143 = v191;
    v144 = v178;
    v145 = v189;
    (*(v178 + 16))(v139, v191[6] + *(v178 + 72) * v142, v189);
    v146 = v174;
    *(v139 + *(v174 + 48)) = *(*(v143 + 56) + 8 * v142);
    v147 = v172;
    sub_222B4FC6C(v139, v172, &qword_27D025EB0, &unk_222C9B2A8);
    v148 = *(v146 + 48);
    v149 = *(v147 + v148);
    v150 = *(v144 + 32);
    v151 = v173;
    v150(v173, v147, v145);
    *(v151 + v148) = v149;

    v152 = v176;
    swift_getAtKeyPath();
    v129 = &qword_27D025EB0;
    sub_222B4FCD4(v151, &qword_27D025EB0, &unk_222C9B2A8);
    sub_222B4FCD4(v139, &qword_27D025EB0, &unk_222C9B2A8);
    if ((*v184)(v152, 1, v175) != 1)
    {
      sub_222BADC98(v152, v166, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v187;
      if ((v153 & 1) == 0)
      {
        v183 = sub_222B4B09C(0, v183[2] + 1, 1, v183);
      }

      v83 = v177;
      v134 = v188;
      v155 = v183[2];
      v154 = v183[3];
      v129 = (v155 + 1);
      if (v155 >= v154 >> 1)
      {
        v183 = sub_222B4B09C((v154 > 1), v155 + 1, 1, v183);
      }

      v156 = v183;
      v183[2] = v129;
      sub_222BADC98(v166, v156 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v155, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      goto LABEL_115;
    }

    sub_222B4FCD4(v152, &qword_27D025EA8, &qword_222C9B2A0);
    v140 = v138;
    v83 = v177;
    v137 = v187;
    v134 = v188;
  }

  while (v128);
  while (1)
  {
LABEL_117:
    v138 = v140 + 1;
    if (__OFADD__(v140, 1))
    {
      __break(1u);
      goto LABEL_137;
    }

    if (v138 >= v137)
    {
      break;
    }

    v128 = v134[v138];
    ++v140;
    if (v128)
    {
      goto LABEL_120;
    }
  }

  v157 = v183;
  if (v183[2])
  {
    v158 = type metadata accessor for PlusRuntimeGenericSuggestions(0);
    swift_allocObject();
    *&v195 = v157;
    v159 = sub_222C93EEC();
    v160 = v170;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_222B4A108(0, v160[2] + 1, 1, v160);
    }

    v162 = v160[2];
    v161 = v160[3];
    v163 = v160;
    if (v162 >= v161 >> 1)
    {
      v163 = sub_222B4A108((v161 > 1), v162 + 1, 1, v160);
    }

    v196 = v158;
    v197 = sub_222BAC6B0(&qword_27D025EE8, 255, type metadata accessor for PlusRuntimeGenericSuggestions, MEMORY[0x277D5FBA0]);
    *&v195 = v159;
    v163[2] = v162 + 1;
    sub_222B405A0(&v195, &v163[5 * v162 + 4]);
  }

  else
  {

    return v170;
  }

  return v163;
}

uint64_t PlusClientEventIdFeature.__allocating_init(value:)(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  swift_allocObject();
  sub_222B4FC6C(a1, v4, &unk_27D026290, &qword_222C96B40);
  v5 = sub_222C93EDC();

  sub_222B4FCD4(a1, &unk_27D026290, &qword_222C96B40);
  if (v5)
  {
  }

  return v5;
}

uint64_t sub_222BA8320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_222BADB30(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t mapSuggestionDomain(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x1FFFFFFFCLL) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_222BA840C(void **a1@<X0>, void (**a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v52 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v51 = (&v40 - v18);
  v19 = *a1;
  v20 = [v19 contactSuggesterQueryContext];
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v22 = [v20 ended];

  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = [v22 results];

  if (!v23)
  {
    goto LABEL_10;
  }

  sub_222B505A8(0, &qword_280FDB758, 0x277D59CA8);
  v24 = sub_222C9471C();

  v25 = [v19 eventMetadata];
  if (!v25 || (v26 = v25, v27 = [v25 plusId], v26, !v27))
  {

    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_9;
  }

  sub_222C94A1C();

  v43 = *(v13 + 48);
  v44 = v13 + 48;
  if (v43(v11, 1, v12) == 1)
  {

LABEL_9:
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
LABEL_10:
    *v52 = MEMORY[0x277D84F90];
    return;
  }

  v41 = *(v13 + 32);
  v42 = v13 + 32;
  v41(v51, v11, v12);
  if (v24 >> 62)
  {
    goto LABEL_31;
  }

  v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v24;
  if (v28)
  {
LABEL_13:
    v29 = 0;
    v47 = v24 & 0xFFFFFFFFFFFFFF8;
    v48 = v24 & 0xC000000000000001;
    v24 = MEMORY[0x277D84F90];
    v40 = (v13 + 56);
    v45 = v28;
    v46 = v4;
    while (1)
    {
      if (v48)
      {
        v31 = MEMORY[0x223DC9B30](v29, v49);
      }

      else
      {
        if (v29 >= *(v47 + 16))
        {
          goto LABEL_30;
        }

        v31 = *(v49 + 8 * v29 + 32);
      }

      v32 = v31;
      v4 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v28 = sub_222C94C6C();
        v49 = v24;
        if (!v28)
        {
          break;
        }

        goto LABEL_13;
      }

      v33 = [v31 suggestionId];
      if (v33)
      {
        v34 = v33;
        sub_222C94A1C();

        if (v43(v8, 1, v12) != 1)
        {
          v41(v15, v8, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_222B4A2C8(0, *(v24 + 16) + 1, 1, v24);
          }

          v36 = *(v24 + 16);
          v35 = *(v24 + 24);
          if (v36 >= v35 >> 1)
          {
            v24 = sub_222B4A2C8((v35 > 1), v36 + 1, 1, v24);
          }

          *(v24 + 16) = v36 + 1;
          v41((v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36), v15, v12);
          goto LABEL_16;
        }
      }

      else
      {

        (*v40)(v8, 1, 1, v12);
      }

      sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
LABEL_16:
      ++v29;
      v30 = v4 == v45;
      v4 = v46;
      if (v30)
      {
        goto LABEL_33;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_33:

  MEMORY[0x28223BE20](v37);
  v38 = v51;
  *(&v40 - 2) = v50;
  *(&v40 - 1) = v38;
  v39 = sub_222BDC1F4(sub_222BAEBE4, (&v40 - 4), v24);

  *v52 = v39;
  (*(v13 + 8))(v38, v12);
}

uint64_t sub_222BA898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 16))
  {
    v10 = 0;
    goto LABEL_9;
  }

  v8 = sub_222B8CA54(a1);
  if ((v9 & 1) == 0)
  {
    v10 = 0;
    if (*(a2 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v10 = *(*(a2 + 56) + 2 * v8);
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = sub_222B8CA54(a1);
  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(*(a2 + 56) + 2 * v11 + 1);
LABEL_10:
  v14 = sub_222C9367C();
  v15 = *(*(v14 - 8) + 16);
  v15(a4, a1, v14);
  v16 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v15(a4 + v16[5], a3, v14);
  *(a4 + v16[6]) = v10;
  *(a4 + v16[7]) = v13;
  return (*(*(v16 - 1) + 56))(a4, 0, 1, v16);
}