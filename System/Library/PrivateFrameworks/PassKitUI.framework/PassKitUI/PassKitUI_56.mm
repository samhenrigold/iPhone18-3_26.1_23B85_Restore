uint64_t sub_1BD5ED63C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BD5ED6C8(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

void *sub_1BD5ED830(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1BD149C8C(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BD5ED9B4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1BE048C84();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1BE048C84();
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

void *sub_1BD5EDB10(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        sub_1BE048C84();
        goto LABEL_24;
      }

      ++v11;
      sub_1BE048C84();
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

void *sub_1BD5EDC9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
        sub_1BE048C84();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1BE048C84();
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

void *sub_1BD5EDDF4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
        sub_1BE048C84();
        sub_1BE048C84();
        goto LABEL_23;
      }

      v11 += 3;
      sub_1BE048C84();
      sub_1BE048C84();
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

void *sub_1BD5EDF70(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_1BD5EE0E0(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
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

  sub_1BE0536B4();
  sub_1BD0E5E8C(0, a5, a6);
  sub_1BD214890(a7, a5, a6);
  result = sub_1BE052A74();
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
      if (!sub_1BE053744())
      {
        goto LABEL_30;
      }

      sub_1BD0E5E8C(0, v28, v29);
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

void sub_1BD5EE340(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1BD5EE5E8(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - v6;
  v7 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC8];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v44 = *(v5 + 80);
  v9 = *(v5 + 72);
  v47 = (v44 + 32) & ~v44;
  v10 = a1 + v47;
  v43 = xmmword_1BE0B69E0;
  v45 = v2;
  v46 = v9;
  while (1)
  {
    sub_1BD5F050C(v10, v49, type metadata accessor for SEStorageUsageGroup);
    v13 = v2;
    v14 = sub_1BE04C154();
    v16 = v15;
    v24 = sub_1BD148F70(v14, v15);
    v25 = v7[2];
    v26 = (v17 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v17;
    if (v7[3] < v27)
    {
      sub_1BD5019DC(v27, 1);
      v7 = v50;
      v29 = sub_1BD148F70(v14, v16);
      if ((v28 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
    }

    if (v28)
    {
      v16, v17, v18, v19, v20, v21, v22, v23;
      v30 = v7[7];
      sub_1BD5F05D4(v49, v48, type metadata accessor for SEStorageUsageGroup);
      v31 = *(v30 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v24) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1BD1D90C4(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v24) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1BD1D90C4((v33 > 1), v34 + 1, 1, v31);
        *(v30 + 8 * v24) = v31;
      }

      v31[2] = v34 + 1;
      v11 = v31 + v47 + v34 * v46;
      v12 = v46;
      sub_1BD5F05D4(v48, v11, type metadata accessor for SEStorageUsageGroup);
      v2 = v45;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAB8, &qword_1BE0E6EA0);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      sub_1BD5F05D4(v49, v36 + v35, type metadata accessor for SEStorageUsageGroup);
      v7[(v24 >> 6) + 8] |= 1 << v24;
      v37 = (v7[6] + 16 * v24);
      *v37 = v14;
      v37[1] = v16;
      *(v7[7] + 8 * v24) = v36;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v7[2] = v40;
      v12 = v46;
      v2 = v13;
    }

    v10 += v12;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

void sub_1BD5EE954(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v218 = v8;
  v219 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v210 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v208 = &v208 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v208 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v209 = &v208 - v17;
  v18 = sub_1BE04B8D4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v208 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v208 - v23;
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v216 = v25;
  v25[4] = a4;
  v214 = a2;
  sub_1BE048964();
  v213 = a3;
  v215 = a4;
  sub_1BD0D44B8(a3, a4);
  v26 = sub_1BD5DB9DC();
  v27 = v26;
  v28 = v26 >> 62;
  v220 = a1;
  if (v26 >> 62)
  {
    v29 = sub_1BE053704();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE04B924();
  (*(v19 + 104))(v21, *MEMORY[0x1E69B7F80], v18);
  v217 = sub_1BE04B8C4();
  v30 = *(v19 + 8);
  v30(v21, v18);
  v30(v24, v18);
  if (v29 == 1)
  {
    v38 = v218;
    if (v28)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x1BFB40900](0, v27);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v85 = *(v27 + 32);
    }

    v86 = v85;
    v87 = [v85 paymentPass];

    if (v87)
    {
      v88 = v220;
      v89 = sub_1BE04B8E4();
      v90 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
      if (v90)
      {
        v98 = v90;
        v27, v91, v92, v93, v94, v95, v96, v97;
        v99 = objc_opt_self();
        v100 = swift_allocObject();
        v100[2] = 1;
        v100[3] = v88;
        v101 = v216;
        v100[4] = sub_1BD5F04C4;
        v100[5] = v101;
        v225 = sub_1BD5F04D0;
        v226 = v100;
        aBlock = MEMORY[0x1E69E9820];
        v222 = 1107296256;
        v223 = sub_1BD5E45B8;
        v224 = &block_descriptor_138;
        v102 = _Block_copy(&aBlock);
        v103 = v226;
        sub_1BE048964();
        sub_1BE048964();
        v103, v104, v105, v106, v107, v108, v109, v110;
        [v99 deletePaymentPassAlertCopyForPass:v87 webService:v89 paymentServiceDataProvider:v98 isBridge:v217 & 1 completion:v102];
        _Block_release(v102);
        v101, v111, v112, v113, v114, v115, v116, v117;

        return;
      }

      goto LABEL_32;
    }

LABEL_18:
    v118 = *MEMORY[0x1E69B80F8];
    v119 = v219;
    v120 = *(v219 + 104);
    v120(v15, v118, v38);
    v121 = PKPassKitBundle();
    if (v121)
    {
      v122 = v121;
      v123 = sub_1BE04B6F4();
      v211 = v124;
      v212 = v123;

      v125 = *(v119 + 8);
      v125(v15, v38);
      v126 = sub_1BE052404();
      v127 = PKDeviceSpecificLocalizedStringKeyForKey(v126, v217 & 1);

      if (v127)
      {
        v27, v128, v129, v130, v131, v132, v133, v134;
        sub_1BE052434();
        v136 = v135;

        v137 = v210;
        v120(v210, v118, v38);
        v138 = PKPassKitBundle();
        if (v138)
        {
          v146 = v138;
          v76 = sub_1BE04B6F4();
          v78 = v147;
          v136, v147, v148, v149, v150, v151, v152, v153;

          v125(v137, v38);
          goto LABEL_22;
        }

        goto LABEL_29;
      }

LABEL_28:
      v214, v128, v129, v130, v131, v132, v133, v134;
      sub_1BD0D4744(v213, v215, v178, v179, v180, v181, v182, v183);
      __break(1u);
LABEL_29:
      v214, v139, v140, v141, v142, v143, v144, v145;
      sub_1BD0D4744(v213, v215, v184, v185, v186, v187, v188, v189);
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    v214, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0D4744(v213, v215, v172, v173, v174, v175, v176, v177);
    __break(1u);
    goto LABEL_28;
  }

  v38 = v218;
  if (v29 < 2)
  {
    goto LABEL_18;
  }

  v39 = *MEMORY[0x1E69B80F8];
  v40 = v219;
  v41 = v209;
  v210 = *(v219 + 104);
  (v210)(v209, v39, v218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E6530];
  v44 = MEMORY[0x1E69E65A8];
  *(v42 + 16) = xmmword_1BE0B69E0;
  *(v42 + 56) = v43;
  *(v42 + 64) = v44;
  *(v42 + 32) = v29;
  v45 = sub_1BE04B714();
  v211 = v46;
  v212 = v45;
  v42, v46, v47, v48, v49, v50, v51, v52;
  v53 = v38;
  v54 = *(v40 + 8);
  v219 = v40 + 8;
  v54(v41, v53);
  v55 = sub_1BE052404();
  v56 = PKDeviceSpecificLocalizedStringKeyForKey(v55, v217 & 1);

  if (!v56)
  {
LABEL_30:
    v214, v57, v58, v59, v60, v61, v62, v63;
    sub_1BD0D4744(v213, v215, v190, v191, v192, v193, v194, v195);
    __break(1u);
    goto LABEL_31;
  }

  v27, v57, v58, v59, v60, v61, v62, v63;
  sub_1BE052434();
  v65 = v64;

  v66 = v208;
  (v210)(v208, v39, v53);
  v67 = PKPassKitBundle();
  if (!v67)
  {
LABEL_31:
    v214, v68, v69, v70, v71, v72, v73, v74;
    sub_1BD0D4744(v213, v215, v196, v197, v198, v199, v200, v201);
    __break(1u);
LABEL_32:
    v214, v91, v92, v93, v94, v95, v96, v97;
    sub_1BD0D4744(v213, v215, v202, v203, v204, v205, v206, v207);
    __break(1u);
    return;
  }

  v75 = v67;
  v76 = sub_1BE04B6F4();
  v78 = v77;
  v65, v77, v79, v80, v81, v82, v83, v84;

  v54(v66, v53);
LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v212;
  v222 = v211;
  v223 = v76;
  v224 = v78;
  LOBYTE(v225) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v154 = v213;
  v155 = &v214[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion];
  v156 = *&v214[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion];
  v157 = *&v214[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion + 8];
  v158 = v215;
  *v155 = v213;
  *(v155 + 1) = v158;
  sub_1BD0D44B8(v154, v158);
  sub_1BD0D4744(v156, v157, v159, v160, v161, v162, v163, v164);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v216, v165, v166, v167, v168, v169, v170, v171;
}

uint64_t sub_1BD5EF240(char *__dst, char *__src, unint64_t a3, char *a4, void *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    v13 = a4;
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v107 = &v13[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      v97 = v13;
      v101 = v7;
LABEL_23:
      v96 = v6 - 24;
      v53 = v5 - 24;
      v54 = v107;
      v106 = v6;
      do
      {
        v55 = *(v54 - 2);
        v54 -= 24;
        v104 = v53;
        v56 = (v53 + 24);
        v57 = *(v54 + 2);
        v58 = *(v6 - 2);
        v59 = *(v6 - 1);
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v60 = sub_1BE052404();
        v99 = [a5 totalUsageOfAppletType_];

        v61 = sub_1BE052404();
        v62 = [a5 totalUsageOfAppletType_];
        v57, v63, v64, v65, v66, v67, v68, v69;
        v55, v70, v71, v72, v73, v74, v75, v76;
        v59, v77, v78, v79, v80, v81, v82, v83;
        v58, v84, v85, v86, v87, v88, v89, v90;

        if (v62 < v99)
        {
          v92 = v56 == v106;
          v5 = v104;
          if (!v92)
          {
            v93 = *v96;
            *(v104 + 16) = *(v96 + 2);
            *v104 = v93;
          }

          v13 = v97;
          if (v107 <= v97 || (v6 = v96, v96 <= v101))
          {
            v6 = v96;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v56 != v107)
        {
          v91 = *v54;
          *(v104 + 16) = *(v54 + 2);
          *v104 = v91;
        }

        v53 = v104 - 24;
        v107 = v54;
        v6 = v106;
      }

      while (v54 > v97);
      v107 = v54;
      v13 = v97;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      v12 = a4;
      memmove(a4, __dst, 24 * v9);
      a4 = v12;
    }

    v107 = &a4[24 * v9];
    v13 = a4;
    if (v8 >= 24 && v6 < v5)
    {
      v103 = v5;
      while (1)
      {
        v105 = v6;
        v100 = v7;
        v14 = *(v6 + 1);
        v15 = *(v6 + 2);
        v16 = *(v13 + 1);
        v17 = *(v13 + 2);
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v18 = sub_1BE052404();
        v19 = v13;
        v98 = [a5 totalUsageOfAppletType_];

        v20 = sub_1BE052404();
        v21 = [a5 totalUsageOfAppletType_];
        v15, v22, v23, v24, v25, v26, v27, v28;
        v14, v29, v30, v31, v32, v33, v34, v35;
        v17, v36, v37, v38, v39, v40, v41, v42;
        v16, v43, v44, v45, v46, v47, v48, v49;

        if (v21 >= v98)
        {
          break;
        }

        v50 = v105;
        v6 = v105 + 24;
        v51 = v100;
        if (v100 != v105)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 = v51 + 24;
        if (v13 >= v107 || v6 >= v103)
        {
          goto LABEL_15;
        }
      }

      v50 = v13;
      v13 += 24;
      v51 = v100;
      v6 = v105;
      if (v100 == v19)
      {
        goto LABEL_13;
      }

LABEL_12:
      v52 = *v50;
      *(v51 + 2) = *(v50 + 2);
      *v51 = v52;
      goto LABEL_13;
    }

LABEL_15:
    v6 = v7;
  }

LABEL_34:
  v94 = (v107 - v13) / 24;
  if (v6 != v13 || v6 >= &v13[24 * v94])
  {
    memmove(v6, v13, 24 * v94);
  }

  return 1;
}

void sub_1BD5EF65C(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v28 = a4;
  v29 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v29 = sub_1BD5ED6C8(v29, v7, v8, v9, v10, v11, v12, v13);
  }

  v25 = v5;
  *v5 = v29;
  v15 = v29 + 16;
  v14 = *(v29 + 2);
  if (v14 < 2)
  {
LABEL_9:

    *v25 = v29;
  }

  else
  {
    while (1)
    {
      v16 = *a3;
      if (!*a3)
      {
        break;
      }

      v17 = &v29[16 * v14];
      v18 = *v17;
      v19 = v15;
      v20 = &v15[16 * v14];
      v5 = *(v20 + 1);
      __dst = (v16 + 24 * *v17);
      __src = (v16 + 24 * *v20);
      v21 = v16 + 24 * v5;
      v22 = v28;
      sub_1BD5EF240(__dst, __src, v21, a2, v22);

      if (v4)
      {
        *v25 = v29;

        return;
      }

      if (v5 < v18)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v23 = *v19;
      if (v14 - 2 >= *v19)
      {
        goto LABEL_12;
      }

      *v17 = v18;
      *(v17 + 1) = v5;
      v24 = v23 - v14;
      if (v23 < v14)
      {
        goto LABEL_13;
      }

      v15 = v19;
      v14 = v23 - 1;
      memmove(v20, v20 + 16, 16 * v24);
      *v19 = v14;
      if (v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v25 = v29;
    __break(1u);
  }
}

void sub_1BD5EF800(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a3[1];
  v231 = MEMORY[0x1E69E7CC0];
  v225 = a5;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v8 + 1 >= v7)
      {
        v47 = v8 + 1;
        v83 = a4;
      }

      else
      {
        v220 = v7;
        v217 = v9;
        v207 = v6;
        v10 = *a3 + 24 * (v8 + 1);
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        v210 = 24 * v8;
        v13 = *a3 + 24 * v8;
        v14 = *(v13 + 8);
        v228 = *(v13 + 16);
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v15 = sub_1BE052404();
        v215 = [v225 totalUsageOfAppletType_];

        v16 = sub_1BE052404();
        v213 = [v225 totalUsageOfAppletType_];
        v12, v17, v18, v19, v20, v21, v22, v23;
        v11, v24, v25, v26, v27, v28, v29, v30;
        v228, v31, v32, v33, v34, v35, v36, v37;
        v14, v38, v39, v40, v41, v42, v43, v44;

        v205 = v8;
        v45 = v8 + 2;
        v46 = (v13 + 64);
        while (1)
        {
          v47 = v220;
          if (v220 == v45)
          {
            break;
          }

          v49 = *(v46 - 1);
          v48 = *v46;
          v50 = *(v46 - 4);
          v51 = *(v46 - 3);
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          v52 = sub_1BE052404();
          v222 = [v225 totalUsageOfAppletType_];

          v53 = sub_1BE052404();
          v54 = [v225 totalUsageOfAppletType_];
          v48, v55, v56, v57, v58, v59, v60, v61;
          v49, v62, v63, v64, v65, v66, v67, v68;
          v51, v69, v70, v71, v72, v73, v74, v75;
          v50, v76, v77, v78, v79, v80, v81, v82;

          ++v45;
          v46 += 3;
          if (v213 < v215 == v54 >= v222)
          {
            v47 = v45 - 1;
            break;
          }
        }

        v6 = v207;
        v83 = a4;
        v9 = v217;
        v8 = v205;
        v84 = v210;
        if (v213 < v215)
        {
          if (v47 < v205)
          {
            goto LABEL_115;
          }

          if (v205 < v47)
          {
            v85 = 0;
            v86 = 24 * v47;
            v87 = v205;
            do
            {
              if (v87 != v47 + v85 - 1)
              {
                v93 = *a3;
                if (!*a3)
                {
                  goto LABEL_120;
                }

                v88 = v93 + v84;
                v89 = v93 + v86;
                v90 = *v88;
                v91 = *(v88 + 8);
                v92 = *(v89 - 24);
                *(v88 + 16) = *(v89 - 8);
                *v88 = v92;
                *(v89 - 24) = v90;
                *(v89 - 16) = v91;
              }

              ++v87;
              --v85;
              v86 -= 24;
              v84 += 24;
            }

            while (v87 < v47 + v85);
          }
        }
      }

      v94 = a3[1];
      if (v47 >= v94)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v47, v8))
      {
        goto LABEL_114;
      }

      if (v47 - v8 >= v83)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v8, v83))
      {
        goto LABEL_116;
      }

      if (v8 + v83 >= v94)
      {
        v95 = a3[1];
      }

      else
      {
        v95 = v8 + v83;
      }

      if (v95 < v8)
      {
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
        return;
      }

      if (v47 == v95)
      {
LABEL_28:
        v96 = v47;
        if (v47 < v8)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v206 = v8;
        v224 = *a3;
        v154 = (*a3 + 24 * v47);
        v155 = v8 - v47;
        v212 = v95;
        do
        {
          v221 = v47;
          v156 = v224 + 24 * v47;
          v157 = *(v156 + 8);
          v158 = *(v156 + 16);
          v214 = v155;
          v216 = v154;
          do
          {
            v159 = *(v154 - 2);
            v230 = *(v154 - 1);
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            v160 = sub_1BE052404();
            v227 = [v225 totalUsageOfAppletType_];

            v161 = sub_1BE052404();
            v162 = [v225 totalUsageOfAppletType_];
            v158, v163, v164, v165, v166, v167, v168, v169;
            v157, v170, v171, v172, v173, v174, v175, v176;
            v230, v177, v178, v179, v180, v181, v182, v183;
            v159, v184, v185, v186, v187, v188, v189, v190;

            if (v162 >= v227)
            {
              break;
            }

            if (!v224)
            {
              goto LABEL_118;
            }

            v191 = *v154;
            v157 = v154[1];
            v158 = v154[2];
            *v154 = *(v154 - 3);
            v154[2] = *(v154 - 1);
            *(v154 - 2) = v157;
            *(v154 - 1) = v158;
            *(v154 - 3) = v191;
            v154 -= 3;
          }

          while (!__CFADD__(v155++, 1));
          v47 = v221 + 1;
          v154 = v216 + 3;
          v155 = v214 - 1;
          v96 = v212;
        }

        while (v221 + 1 != v212);
        v8 = v206;
        if (v212 < v206)
        {
          goto LABEL_113;
        }
      }

      v211 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1BD1D7844(0, *(v9 + 2) + 1, 1, v9, v97, v98, v99, v100);
      }

      v102 = *(v9 + 2);
      v101 = *(v9 + 3);
      v103 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        v9 = sub_1BD1D7844((v101 > 1), v102 + 1, 1, v9, v97, v98, v99, v100);
      }

      *(v9 + 2) = v103;
      v104 = v9 + 32;
      v105 = &v9[16 * v102 + 32];
      *v105 = v8;
      *(v105 + 1) = v211;
      v226 = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      if (v102)
      {
        v218 = v9;
        v223 = v9 + 32;
        while (1)
        {
          v106 = v103 - 1;
          if (v103 >= 4)
          {
            break;
          }

          if (v103 == 3)
          {
            v107 = *(v9 + 4);
            v108 = *(v9 + 5);
            v117 = __OFSUB__(v108, v107);
            v109 = v108 - v107;
            v110 = v117;
LABEL_49:
            if (v110)
            {
              goto LABEL_103;
            }

            v123 = &v9[16 * v103];
            v125 = *v123;
            v124 = *(v123 + 1);
            v126 = __OFSUB__(v124, v125);
            v127 = v124 - v125;
            v128 = v126;
            if (v126)
            {
              goto LABEL_105;
            }

            v129 = &v104[16 * v106];
            v131 = *v129;
            v130 = *(v129 + 1);
            v117 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v117)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v127, v132))
            {
              goto LABEL_110;
            }

            if (v127 + v132 >= v109)
            {
              if (v109 < v132)
              {
                v106 = v103 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          if (v103 < 2)
          {
            goto LABEL_111;
          }

          v133 = &v9[16 * v103];
          v135 = *v133;
          v134 = *(v133 + 1);
          v117 = __OFSUB__(v134, v135);
          v127 = v134 - v135;
          v128 = v117;
LABEL_64:
          if (v128)
          {
            goto LABEL_107;
          }

          v136 = &v104[16 * v106];
          v138 = *v136;
          v137 = *(v136 + 1);
          v117 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v117)
          {
            goto LABEL_109;
          }

          if (v139 < v127)
          {
            goto LABEL_3;
          }

LABEL_71:
          if (v106 - 1 >= v103)
          {
            __break(1u);
LABEL_98:
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
            goto LABEL_117;
          }

          v144 = *a3;
          if (!*a3)
          {
            goto LABEL_119;
          }

          v145 = &v104[16 * v106 - 16];
          v146 = *v145;
          v147 = v106;
          v148 = &v104[16 * v106];
          v149 = *(v148 + 1);
          v150 = (v144 + 24 * *v145);
          v151 = (v144 + 24 * *v148);
          v229 = v144 + 24 * v149;
          v152 = v225;
          sub_1BD5EF240(v150, v151, v229, v226, v152);
          if (v6)
          {

            v193 = v218;
            goto LABEL_94;
          }

          v9 = v218;
          if (v149 < v146)
          {
            goto LABEL_98;
          }

          v153 = *(v218 + 2);
          if (v147 > v153)
          {
            goto LABEL_99;
          }

          *v145 = v146;
          *(v145 + 1) = v149;
          if (v147 >= v153)
          {
            goto LABEL_100;
          }

          v103 = v153 - 1;
          memmove(v148, v148 + 16, 16 * (v153 - 1 - v147));
          *(v218 + 2) = v153 - 1;
          v104 = v223;
          if (v153 <= 2)
          {
            goto LABEL_3;
          }
        }

        v111 = &v104[16 * v103];
        v112 = *(v111 - 8);
        v113 = *(v111 - 7);
        v117 = __OFSUB__(v113, v112);
        v114 = v113 - v112;
        if (v117)
        {
          goto LABEL_101;
        }

        v116 = *(v111 - 6);
        v115 = *(v111 - 5);
        v117 = __OFSUB__(v115, v116);
        v109 = v115 - v116;
        v110 = v117;
        if (v117)
        {
          goto LABEL_102;
        }

        v118 = &v9[16 * v103];
        v120 = *v118;
        v119 = *(v118 + 1);
        v117 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v117)
        {
          goto LABEL_104;
        }

        v117 = __OFADD__(v109, v121);
        v122 = v109 + v121;
        if (v117)
        {
          goto LABEL_106;
        }

        if (v122 >= v114)
        {
          v140 = &v104[16 * v106];
          v142 = *v140;
          v141 = *(v140 + 1);
          v117 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v117)
          {
            goto LABEL_112;
          }

          if (v109 < v143)
          {
            v106 = v103 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_49;
      }

LABEL_3:
      v7 = a3[1];
      v8 = v211;
      if (v211 >= v7)
      {
        v231 = v9;
        break;
      }
    }
  }

  v194 = *a1;
  if (!*a1)
  {
    goto LABEL_122;
  }

  v195 = v225;
  sub_1BD5EF65C(&v231, v194, a3, v195);
  if (v6)
  {

    v193 = v231;
LABEL_94:

    v203 = v193;
  }

  else
  {

    v204 = v231;
    v203 = v204;
  }

  v203, v196, v197, v198, v199, v200, v201, v202;
}

void sub_1BD5F0044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v50 = *a4;
    v5 = (*a4 + 24 * a3);
    v6 = a1 - a3;
LABEL_5:
    v47 = v5;
    v48 = a3;
    v7 = v50 + 24 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v46 = v6;
    while (1)
    {
      v10 = *(v5 - 2);
      v11 = *(v5 - 1);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      v12 = sub_1BE052404();
      v51 = [a5 totalUsageOfAppletType_];

      v13 = sub_1BE052404();
      v14 = [a5 totalUsageOfAppletType_];
      v9, v15, v16, v17, v18, v19, v20, v21;
      v8, v22, v23, v24, v25, v26, v27, v28;
      v11, v29, v30, v31, v32, v33, v34, v35;
      v10, v36, v37, v38, v39, v40, v41, v42;

      if (v14 >= v51)
      {
LABEL_4:
        a3 = v48 + 1;
        v5 = v47 + 3;
        v6 = v46 - 1;
        if (v48 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v43 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v8;
      *(v5 - 1) = v9;
      *(v5 - 3) = v43;
      v5 -= 3;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD5F01DC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1BE053B14();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49918, &unk_1BE0E6DF0);
        v8 = sub_1BE0527B4();
        *(v8 + 16) = v7;
      }

      v17[0] = (v8 + 32);
      v17[1] = v7;
      v9 = v4;
      sub_1BD5EF800(v17, v18, a1, v6, v9);

      *(v8 + 16) = 0;
      v8, v10, v11, v12, v13, v14, v15, v16;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1BD5F0044(0, v3, 1, a1, v4);
  }
}

void sub_1BD5F031C(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7B8(v3, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v3[2];
  v14[0] = (v3 + 4);
  v14[1] = v12;
  v13 = v4;
  sub_1BD5F01DC(v14, v13);

  *a1 = v3;
}

uint64_t sub_1BD5F03B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5F0418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5F047C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD5F050C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5F0574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5F05D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD5F0690(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
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

uint64_t sub_1BD5F06F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v167 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371F8, &qword_1BE0B1218);
  v165 = *(v3 - 8);
  v166 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v168 = v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB40, &qword_1BE0E70F0);
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v162 = v158 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB48, &qword_1BE0E70F8);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = v158 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB50, &unk_1BE0E7100);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v158 - v9;
  v169 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BD5F34D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB58, &unk_1BE0E7110);
  sub_1BD1103C8();
  sub_1BD0DE4F4(&qword_1EBD4CB60, &qword_1EBD4CB58, &unk_1BE0E7110, MEMORY[0x1E6981F48]);
  sub_1BE051A24();
  v12 = *v2;
  v13 = v2[2];
  v176[0] = *(v2 + 2);
  v14 = swift_allocObject();
  v15 = *(v2 + 1);
  *(v14 + 1) = *v2;
  *(v14 + 2) = v15;
  *(v14 + 3) = *(v2 + 2);
  v16 = &v10[*(v8 + 36)];
  *v16 = sub_1BD5F55BC;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  if (v13)
  {
    KeyPath = swift_getKeyPath();
    v18 = swift_getKeyPath();
    swift_retain_n();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE048964();
    sub_1BE04D8B4(&v172);
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v18, v26, v27, v28, v29, v30, v31, v32;
    LOBYTE(v170) = v172;
    v33 = swift_allocObject();
    v34 = *(v2 + 1);
    v33[1] = *v2;
    v33[2] = v34;
    v33[3] = *(v2 + 2);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    v35 = sub_1BD5F55F0();
    v158[1] = v12;
    v36 = v35;
    sub_1BE048964();
    v37 = v159;
    sub_1BE051064();
    v33, v38, v39, v40, v41, v42, v43, v44;
    sub_1BD0DE53C(v10, &qword_1EBD4CB50, &unk_1BE0E7100);
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    sub_1BE04D8B4(&v172);
    v45, v47, v48, v49, v50, v51, v52, v53;
    v46, v54, v55, v56, v57, v58, v59, v60;
    v13, v61, v62, v63, v64, v65, v66, v67;
    LOBYTE(v170) = v172;
    v68 = swift_allocObject();
    v69 = *(v2 + 1);
    v68[1] = *v2;
    v68[2] = v69;
    v68[3] = *(v2 + 2);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE048964();
    v172 = v8;
    v173 = MEMORY[0x1E69E6370];
    v174 = v36;
    v175 = MEMORY[0x1E69E6388];
    v158[0] = MEMORY[0x1E6981440];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v161;
    v71 = v162;
    sub_1BE051064();
    v68, v73, v74, v75, v76, v77, v78, v79;
    (*(v160 + 8))(v37, v72);
    v80 = swift_getKeyPath();
    v81 = swift_getKeyPath();
    sub_1BE04D8B4(&v172);
    v80, v82, v83, v84, v85, v86, v87, v88;
    v81, v89, v90, v91, v92, v93, v94, v95;
    v13, v96, v97, v98, v99, v100, v101, v102;
    v103 = v173;
    v170 = v172;
    v171 = v173;
    v104 = swift_allocObject();
    v105 = *(v2 + 1);
    v104[1] = *v2;
    v104[2] = v105;
    v104[3] = *(v2 + 2);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE048964();
    v172 = v72;
    v173 = MEMORY[0x1E69E6370];
    v174 = OpaqueTypeConformance2;
    v175 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    v106 = v164;
    sub_1BE051064();
    v103, v107, v108, v109, v110, v111, v112, v113;
    v104, v114, v115, v116, v117, v118, v119, v120;
    (v163[1])(v71, v106);
    sub_1BE0528A4();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE048964();
    v121 = sub_1BE052894();
    v122 = swift_allocObject();
    v123 = MEMORY[0x1E69E85E0];
    *(v122 + 16) = v121;
    *(v122 + 24) = v123;
    v124 = *(v2 + 1);
    *(v122 + 32) = *v2;
    *(v122 + 48) = v124;
    *(v122 + 64) = *(v2 + 2);
    v125 = sub_1BE0528D4();
    v126 = *(v125 - 8);
    v127 = *(v126 + 64);
    MEMORY[0x1EEE9AC00](v125);
    v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
    v129 = v158 - v128;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v162 = sub_1BE04EAA4();
      v163 = v158;
      v161 = *(v162 - 1);
      MEMORY[0x1EEE9AC00](v162);
      v164 = v158;
      v131 = v158 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_1BE053834();
      v173, v132, v133, v134, v135, v136, v137, v138;
      v172 = 0xD000000000000035;
      v173 = 0x80000001BE131100;
      v170 = 131;
      v139 = sub_1BE053B24();
      v141 = v140;
      MEMORY[0x1BFB3F610](v139);
      v141, v142, v143, v144, v145, v146, v147, v148;
      v150 = MEMORY[0x1EEE9AC00](v149);
      (*(v126 + 16))(v158 - v128, v158 - v128, v125, v150);
      sub_1BE04EA94();
      (*(v126 + 8))(v158 - v128, v125);
      v151 = v167;
      (*(v165 + 32))(v167, v168, v166);
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37200, &qword_1BE0B1220);
      return (*(v161 + 32))(v151 + *(v152 + 36), v131, v162);
    }

    else
    {
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37208, &qword_1BE0B1228);
      v155 = v167;
      v156 = (v167 + *(v154 + 36));
      v157 = sub_1BE04E7B4();
      (*(v126 + 32))(&v156[*(v157 + 20)], v129, v125);
      *v156 = &unk_1BE0E7208;
      *(v156 + 1) = v122;
      return (*(v165 + 32))(v155, v168, v166);
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(v176, &v172, &qword_1EBD54350, &unk_1BE0B8D00);
    type metadata accessor for WalletDeepLinkCoordinator(0);
    sub_1BD5F9B2C(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5F1274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB90, &qword_1BE0E7260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB98, &qword_1BE0E7268);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBA0, &qword_1BE0E7270);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBA8, &qword_1BE0E7278);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v58 = *(a1 + 2);
  v56 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v20 = 1;
  if ((v57 & 1) == 0)
  {
    sub_1BD5F18B4(v14);
    sub_1BD08D29C(v14, v19);
    v20 = 0;
  }

  (*(v12 + 56))(v19, v20, 1, v11);
  v21 = *a1;
  KeyPath = swift_getKeyPath();
  *&v56 = v21;
  sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  swift_beginAccess();
  v55 = *(v21 + 16);
  swift_getKeyPath();
  v46 = v19;
  v57 = *(a1 + 1);
  v30 = swift_allocObject();
  v31 = *(a1 + 1);
  v30[1] = *a1;
  v30[2] = v31;
  v30[3] = *(a1 + 2);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(&v57, v54, &qword_1EBD4CBB0, &unk_1BE0E72E0);
  sub_1BD0DE19C(&v58, v54, &qword_1EBD54350, &unk_1BE0B8D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBB8, &unk_1BE0E72F0);
  sub_1BD0DE4F4(&qword_1EBD40E78, &qword_1EBD40E70, &unk_1BE0D6840, MEMORY[0x1E69E6338]);
  sub_1BD2D5FE4();
  sub_1BD5F816C();
  v32 = v53;
  sub_1BE0519C4();
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC00, &qword_1BE0E7318);
  sub_1BD5F2CE8(a1, &v7[*(v33 + 44)]);
  v34 = v19;
  v35 = v48;
  sub_1BD0DE19C(v34, v48, &qword_1EBD4CBA8, &qword_1BE0E7278);
  v36 = v49;
  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v47;
  v38(v49, v32, v47);
  v40 = v51;
  sub_1BD0DE19C(v7, v51, &qword_1EBD4CB90, &qword_1BE0E7260);
  v41 = v52;
  sub_1BD0DE19C(v35, v52, &qword_1EBD4CBA8, &qword_1BE0E7278);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC08, &qword_1BE0E7320);
  v38((v41 + *(v42 + 48)), v36, v39);
  sub_1BD0DE19C(v40, v41 + *(v42 + 64), &qword_1EBD4CB90, &qword_1BE0E7260);
  sub_1BD0DE53C(v7, &qword_1EBD4CB90, &qword_1BE0E7260);
  v43 = *(v37 + 8);
  v43(v53, v39);
  sub_1BD0DE53C(v46, &qword_1EBD4CBA8, &qword_1BE0E7278);
  sub_1BD0DE53C(v40, &qword_1EBD4CB90, &qword_1BE0E7260);
  v43(v36, v39);
  return sub_1BD0DE53C(v35, &qword_1EBD4CBA8, &qword_1BE0E7278);
}

uint64_t sub_1BD5F18B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC60, &qword_1BE0E7358);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC68, &unk_1BE0E7360);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v70 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v16 = HardwareConfigurationModel.securityErrorTitleMessage()();
  if (!v16.value._object)
  {
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  countAndFlagsBits = v16.value._countAndFlagsBits;
  v23 = HardwareConfigurationModel.securityErrorButtonTitle()();
  if (!v23.value._object)
  {
    v16.value._object, 0, v17, v18, v19, v20, v21, v22;
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v71 = v23.value._countAndFlagsBits;
  object = v23.value._object;
  v74 = a1;
  KeyPath = swift_getKeyPath();
  v79 = v15;
  sub_1BD5F9B2C(&qword_1EBD3C268, type metadata accessor for HardwareConfigurationModel, &protocol conformance descriptor for HardwareConfigurationModel);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  if ((*(v15 + 24) & 1) != 0 || (v32 = *(v15 + 16), v32 != 1) && v32 != 2)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_7:
    object, v33, v34, v35, v36, v37, v38, v39;
    v16.value._object, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
    a1 = v74;
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  sub_1BE04AA54();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v48 = (*(v12 + 32))(v14, v10, v11);
  MEMORY[0x1EEE9AC00](v48);
  *(&v70 - 2) = countAndFlagsBits;
  *(&v70 - 1) = v16.value._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC70, &qword_1BE0E7370);
  sub_1BD5F853C();
  sub_1BE051A44();
  v16.value._object, v49, v50, v51, v52, v53, v54, v55;
  countAndFlagsBits = &v70;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v71;
  *(&v70 - 4) = v14;
  *(&v70 - 3) = v57;
  v58 = object;
  *(&v70 - 2) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD5F8770();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v59 = v75;
  v60 = v77;
  v61 = v78;
  sub_1BE050AE4();
  v58, v62, v63, v64, v65, v66, v67, v68;
  (*(v76 + 8))(v61, v60);
  v69 = v74;
  (*(v6 + 32))(v74, v59, v5);
  (*(v6 + 56))(v69, 0, 1, v5);
  return (*(v12 + 8))(v14, v11);
}

void *sub_1BD5F1E38@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v59 = sub_1BE04FB64();
  v49 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v48 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBF0, &qword_1BE0E7310);
  v47 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = v46 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC18, &qword_1BE0E7330);
  v51 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC20, &qword_1BE0E7338);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v46 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBE8, &qword_1BE0E7308);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBD8, &qword_1BE0E7300);
  MEMORY[0x1EEE9AC00](v14);
  v56 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC28, &qword_1BE0E7340);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - v17;
  v19 = *a1;
  v64 = *(a2 + 2);
  v60 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v63 & 1) == 0)
  {
    v32 = *a2;
    v60 = v64;
    sub_1BE048964();
    v33 = v19;
    sub_1BE0516A4();
    v34 = v63;
    *v18 = v32;
    *(v18 + 1) = v33;
    v18[16] = v34;
    swift_storeEnumTagMultiPayload();
    sub_1BD5F81F8();
    sub_1BD5F824C();
    return sub_1BE04F9A4();
  }

  v20 = [v19 passActivationState];
  v46[2] = a3;
  if (v20 && [v19 passActivationState] != 2)
  {
    v63 = *(a2 + 1);
    v35 = swift_allocObject();
    v36 = *(a2 + 1);
    *(v35 + 16) = *a2;
    *(v35 + 32) = v36;
    *(v35 + 48) = *(a2 + 2);
    *(v35 + 64) = v19;
    MEMORY[0x1EEE9AC00](v35);
    v37 = v19;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v63, &v60, &qword_1EBD4CBB0, &unk_1BE0E72E0);
    sub_1BD0DE19C(&v64, &v60, &qword_1EBD54350, &unk_1BE0B8D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC30, &qword_1BE0E7348);
    sub_1BD0DE4F4(&qword_1EBD4CC38, &qword_1EBD4CC30, &qword_1BE0E7348, MEMORY[0x1E6981F48]);
    sub_1BE051704();
    v38 = v48;
    sub_1BE04FB54();
    v39 = sub_1BD0DE4F4(&qword_1EBD4CBF8, &qword_1EBD4CBF0, &qword_1BE0E7310, MEMORY[0x1E697D680]);
    v40 = sub_1BD5F9B2C(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v41 = v50;
    v42 = v57;
    v43 = v59;
    sub_1BE050894();
    (*(v49 + 8))(v38, v43);
    (*(v47 + 8))(v9, v42);
    v44 = v51;
    v45 = v58;
    (*(v51 + 16))(v54, v41, v58);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4CBE0, &qword_1EBD4CBE8, &qword_1BE0E7308, MEMORY[0x1E697C090]);
    *&v60 = v42;
    *(&v60 + 1) = v43;
    v61 = v39;
    v62 = v40;
    swift_getOpaqueTypeConformance2();
    v31 = v56;
    sub_1BE04F9A4();
    (*(v44 + 8))(v41, v45);
    goto LABEL_8;
  }

  result = [v19 uniqueID];
  if (result)
  {
    v22 = result;
    v23 = sub_1BE052434();
    v25 = v24;

    *&v60 = v23;
    *(&v60 + 1) = v25;
    MEMORY[0x1EEE9AC00](v26);
    sub_1BD5F81F8();
    sub_1BD5F8438();
    sub_1BD5F848C();
    sub_1BD5F84E0();
    sub_1BE04E8E4();
    v27 = v52;
    v28 = v55;
    (*(v52 + 16))(v54, v13, v55);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4CBE0, &qword_1EBD4CBE8, &qword_1BE0E7308, MEMORY[0x1E697C090]);
    v29 = sub_1BD0DE4F4(&qword_1EBD4CBF8, &qword_1EBD4CBF0, &qword_1BE0E7310, MEMORY[0x1E697D680]);
    v30 = sub_1BD5F9B2C(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    *&v60 = v57;
    *(&v60 + 1) = v59;
    v61 = v29;
    v62 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v56;
    sub_1BE04F9A4();
    (*(v27 + 8))(v13, v28);
LABEL_8:
    sub_1BD0DE19C(v31, v18, &qword_1EBD4CBD8, &qword_1BE0E7300);
    swift_storeEnumTagMultiPayload();
    sub_1BD5F81F8();
    sub_1BD5F824C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v31, &qword_1EBD4CBD8, &qword_1BE0E7300);
  }

  __break(1u);
  return result;
}

id sub_1BD5F27F0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  *a3 = v4;
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;

  return a2;
}

void sub_1BD5F2878(uint64_t *a1, id a2)
{
  v3 = [a2 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = *a1;
    v6 = sub_1BE052434();
    v8 = v7;

    KeyPath = swift_getKeyPath();
    sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
    v17 = swift_getKeyPath();
    sub_1BE04B5B4();
    v17, v18, v19, v20, v21, v22, v23, v24;
    swift_beginAccess();
    v25 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1BD1D8E5C(0, *(v25 + 2) + 1, 1, v25, v27, v28, v29, v30);
      *(v5 + 32) = v25;
    }

    v32 = *(v25 + 2);
    v31 = *(v25 + 3);
    if (v32 >= v31 >> 1)
    {
      v25 = sub_1BD1D8E5C((v31 > 1), v32 + 1, 1, v25, v27, v28, v29, v30);
    }

    *(v25 + 2) = v32 + 1;
    v33 = &v25[16 * v32];
    *(v33 + 4) = v6;
    *(v33 + 5) = v8;
    *(v5 + 32) = v25;
    swift_endAccess();
    v34 = swift_getKeyPath();
    sub_1BE04B5A4();
    v34, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD5F2A58(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = sub_1BE04C744();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = *a1;
  v35 = *(a1 + 32);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v16 = v34;
  (*(v5 + 104))(v7, *MEMORY[0x1E69BC950], v32);
  v17 = v33;
  sub_1BE04C724();
  LOBYTE(v35) = v16;
  LOBYTE(v34) = 1;
  v18 = *(v9 + 16);
  v18(v11, v14, v8);
  v19 = v35;
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  v20 = v34;
  *(a3 + 24) = 0;
  *(a3 + 32) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC58, &qword_1BE0E7350);
  v18((a3 + *(v21 + 64)), v11, v8);
  v22 = *(v9 + 8);
  sub_1BE048964();
  v23 = v17;
  v22(v14, v8);
  v22(v11, v8);

  v15, v24, v25, v26, v27, v28, v29, v30;
}

void sub_1BD5F2CE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v61 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  KeyPath = swift_getKeyPath();
  v67 = v15;
  sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  swift_beginAccess();
  v24 = *(v15 + 16);
  if (v24 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_7:
    v37 = *(a1 + 1);
    v68 = *(a1 + 2);
    v69 = v37;
    v38 = swift_allocObject();
    v39 = *(a1 + 1);
    v38[1] = *a1;
    v38[2] = v39;
    v38[3] = *(a1 + 2);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v69, v66, &qword_1EBD4CBB0, &unk_1BE0E72E0);
    sub_1BD0DE19C(&v68, v66, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE051704();
    sub_1BE052434();
    v41 = v40;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v42 = v63;
    v43 = v64;
    sub_1BE050DE4();
    v41, v44, v45, v46, v47, v48, v49, v50;
    (*(v62 + 8))(v6, v42);
    v51 = v65;
    sub_1BD0DE19C(v43, v65, &unk_1EBD45200, &qword_1BE0BB900);
    *a2 = v25;
    *(a2 + 8) = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = v28;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC10, &qword_1BE0E7328);
    sub_1BD0DE19C(v51, a2 + *(v52 + 64), &unk_1EBD45200, &qword_1BE0BB900);
    sub_1BD1969AC(v25, v26, v27, v28);
    sub_1BD1969F0(v25, v26, v27, v28, v53, v54, v55, v56);
    sub_1BD0DE53C(v43, &unk_1EBD45200, &qword_1BE0BB900);
    sub_1BD0DE53C(v51, &unk_1EBD45200, &qword_1BE0BB900);
    sub_1BD1969F0(v25, v26, v27, v28, v57, v58, v59, v60);
    return;
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E69B80F0], v11);
  v29 = PKPassKitBundle();
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v12 + 8))(v14, v11);
    *&v69 = v31;
    *(&v69 + 1) = v33;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v26 = v34;
    v28 = v35;
    v27 = v36 & 1;
    sub_1BD0D7F18(v25, v34, v36 & 1);
    sub_1BE048C84();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BD5F323C()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "Add card button hit", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_1BD5F3370@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD5F34D8()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v38 = v7;
    v39 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v38 = v10;
    v39 = v11;
    v16 = (v15 & 1);
    v40 = v15 & 1;
    v41 = v13;
    sub_1BE052434();
    v18 = v17;
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD5F36A8(uint64_t *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6)
  {
    swift_retain_n();
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    swift_retain_n();
    sub_1BE04D8B4(&v181);
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;
    countAndFlagsBits = v181._countAndFlagsBits;
    object = v181._object;
    v181._object, v25, v26, v27, v28, v29, v30, v31;
    v32 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v32 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = swift_getKeyPath();
      v34 = swift_getKeyPath();
      sub_1BE04D8B4(&v181);
      v33, v35, v36, v37, v38, v39, v40, v41;
      v34, v42, v43, v44, v45, v46, v47, v48;
      v6, v49, v50, v51, v52, v53, v54, v55;
      v57 = v181._countAndFlagsBits;
      v56 = v181._object;
      v58 = *a1;
      v59 = WalletSettingsModel.passForUniqueID(uniqueID:)(v181);
      if (v59)
      {
        v60 = v59;
        v61 = swift_getKeyPath();
        v181._countAndFlagsBits = v58;
        sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
        sub_1BE04B594();
        v61, v62, v63, v64, v65, v66, v67, v68;
        v181._countAndFlagsBits = v58;
        v69 = swift_getKeyPath();
        sub_1BE04B5B4();
        v69, v70, v71, v72, v73, v74, v75, v76;
        swift_beginAccess();
        v77 = *(v58 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 32) = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_1BD1D8E5C(0, *(v77 + 2) + 1, 1, v77, v79, v80, v81, v82);
          *(v58 + 32) = v77;
        }

        v84 = *(v77 + 2);
        v83 = *(v77 + 3);
        if (v84 >= v83 >> 1)
        {
          v77 = sub_1BD1D8E5C((v83 > 1), v84 + 1, 1, v77, v79, v80, v81, v82);
        }

        *(v77 + 2) = v84 + 1;
        v85 = &v77[16 * v84];
        *(v85 + 4) = v57;
        *(v85 + 5) = v56;
        *(v58 + 32) = v77;
        swift_endAccess();
        v181._countAndFlagsBits = v58;
        v86 = swift_getKeyPath();
        sub_1BE04B5A4();
        v86, v87, v88, v89, v90, v91, v92, v93;
      }

      else
      {
        sub_1BE04D1E4();
        sub_1BE048C84();
        v94 = sub_1BE04D204();
        v95 = sub_1BE052C54();
        v56, v96, v97, v98, v99, v100, v101, v102;
        if (os_log_type_enabled(v94, v95))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v181._countAndFlagsBits = v104;
          *v103 = 136315138;
          v105 = sub_1BD123690(v57, v56, &v181._countAndFlagsBits);
          v56, v106, v107, v108, v109, v110, v111, v112;
          *(v103 + 4) = v105;
          _os_log_impl(&dword_1BD026000, v94, v95, "skipping sheet - pass %s not found", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v104, v113, v114, v115, v116, v117, v118, v119);
          MEMORY[0x1BFB45F20](v104, -1, -1);
          MEMORY[0x1BFB45F20](v103, -1, -1);
        }

        else
        {

          v56, v120, v121, v122, v123, v124, v125, v126;
        }

        (*(v3 + 8))(v5, v2);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v181._countAndFlagsBits = 0;
      v181._object = 0xE000000000000000;
      sub_1BE04D8C4();
    }

    else
    {
    }

    v127 = swift_getKeyPath();
    v128 = swift_getKeyPath();
    sub_1BE04D8B4(&v181);
    v127, v129, v130, v131, v132, v133, v134, v135;
    v128, v136, v137, v138, v139, v140, v141, v142;

    if (LOBYTE(v181._countAndFlagsBits) == 1)
    {
      v6, v143, v144, v145, v146, v147, v148, v149;
      swift_getKeyPath();
LABEL_21:
      swift_getKeyPath();
      LOBYTE(v181._countAndFlagsBits) = 0;
      sub_1BE04D8C4();
      return;
    }

    v150 = swift_getKeyPath();
    v151 = swift_getKeyPath();
    sub_1BE04D8B4(&v181);
    v150, v152, v153, v154, v155, v156, v157, v158;
    v151, v159, v160, v161, v162, v163, v164, v165;
    v6, v166, v167, v168, v169, v170, v171, v172;
    if (LOBYTE(v181._countAndFlagsBits) == 1)
    {
      swift_getKeyPath();
      goto LABEL_21;
    }

    v6, v173, v174, v175, v176, v177, v178, v179;
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator(0);
    sub_1BD5F9B2C(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD5F3C80(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    if (*(a3 + 16))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator(0);
      sub_1BD5F9B2C(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

void sub_1BD5F3D58(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[1];
  v10 = *a2 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  if (v10)
  {
    v11 = a3[2];
    if (v11)
    {
      KeyPath = swift_getKeyPath();
      v13 = swift_getKeyPath();
      swift_retain_n();
      sub_1BE04D8B4(&v107);
      KeyPath, v14, v15, v16, v17, v18, v19, v20;
      v13, v21, v22, v23, v24, v25, v26, v27;
      v11, v28, v29, v30, v31, v32, v33, v34;
      countAndFlagsBits = v107._countAndFlagsBits;
      object = v107._object;
      v37 = *a3;
      v38 = WalletSettingsModel.passForUniqueID(uniqueID:)(v107);
      if (v38)
      {
        v39 = v38;
        v40 = swift_getKeyPath();
        v107._countAndFlagsBits = v37;
        sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
        sub_1BE04B594();
        v40, v41, v42, v43, v44, v45, v46, v47;
        v107._countAndFlagsBits = v37;
        v48 = swift_getKeyPath();
        sub_1BE04B5B4();
        v48, v49, v50, v51, v52, v53, v54, v55;
        swift_beginAccess();
        v56 = *(v37 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v37 + 32) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_1BD1D8E5C(0, *(v56 + 2) + 1, 1, v56, v58, v59, v60, v61);
          *(v37 + 32) = v56;
        }

        v63 = *(v56 + 2);
        v62 = *(v56 + 3);
        if (v63 >= v62 >> 1)
        {
          v56 = sub_1BD1D8E5C((v62 > 1), v63 + 1, 1, v56, v58, v59, v60, v61);
        }

        *(v56 + 2) = v63 + 1;
        v64 = &v56[16 * v63];
        *(v64 + 4) = countAndFlagsBits;
        *(v64 + 5) = object;
        *(v37 + 32) = v56;
        swift_endAccess();
        v107._countAndFlagsBits = v37;
        v65 = swift_getKeyPath();
        sub_1BE04B5A4();
        v65, v66, v67, v68, v69, v70, v71, v72;
      }

      else
      {
        sub_1BE04D1E4();
        sub_1BE048C84();
        v73 = sub_1BE04D204();
        v74 = sub_1BE052C54();
        object, v75, v76, v77, v78, v79, v80, v81;
        if (os_log_type_enabled(v73, v74))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v107._countAndFlagsBits = v83;
          *v82 = 136315138;
          v84 = sub_1BD123690(countAndFlagsBits, object, &v107._countAndFlagsBits);
          object, v85, v86, v87, v88, v89, v90, v91;
          *(v82 + 4) = v84;
          _os_log_impl(&dword_1BD026000, v73, v74, "skipping sheet - pass %s not found", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83, v92, v93, v94, v95, v96, v97, v98);
          MEMORY[0x1BFB45F20](v83, -1, -1);
          MEMORY[0x1BFB45F20](v82, -1, -1);
        }

        else
        {

          object, v99, v100, v101, v102, v103, v104, v105;
        }

        (*(v6 + 8))(v8, v5);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      sub_1BE04D8C4();
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator(0);
      sub_1BD5F9B2C(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD5F41B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[11] = sub_1BE0528A4();
  v5 = sub_1BE052894();
  v6 = *(a3 + 8);
  v3[12] = v5;
  v3[13] = v6;
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_1BD5F4264;

  return sub_1BD1BD518();
}

uint64_t sub_1BD5F4264()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5F43A0, v1, v0);
}

uint64_t sub_1BD5F43A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  *(v8 + 72) = v9;
  sub_1BD5F9B2C(&qword_1EBD3C268, type metadata accessor for HardwareConfigurationModel, &protocol conformance descriptor for HardwareConfigurationModel);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = (*(v9 + 24) & 1) != 0 || *(*(v8 + 104) + 16) == 0;
  *(v8 + 56) = *(*(v8 + 80) + 32);
  *(v8 + 120) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  *(v8 + 40) = &type metadata for SettingsFeatureFlag.Wallet;
  *(v8 + 48) = sub_1BD5F5818();
  *(v8 + 16) = 3;
  v19 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v20, v21, v22, v23, v24, v25, v26);
  if (v19)
  {
    sub_1BD405028();
  }

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BD5F451C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BE04F604();
  sub_1BE04F5F4();
  v5 = sub_1BE051574();
  sub_1BE04F5D4();
  v5, v6, v7, v8, v9, v10, v11, v12;
  sub_1BE04F5F4();
  sub_1BE04F5E4();
  sub_1BE04F5F4();
  sub_1BE04F634();
  v13 = sub_1BE050694();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC98, &unk_1BE0E7380) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560, &unk_1BE0DF030) + 28);
  sub_1BE04F7F4();
  v22 = sub_1BE04F824();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  *v20 = swift_getKeyPath();
  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17 & 1;
  *(a3 + 24) = v19;
  LODWORD(v13) = sub_1BE04FC94();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC88, &qword_1BE0E7378) + 36)) = v13;
  v23 = sub_1BE0502A4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CC70, &qword_1BE0E7370);
  v26 = (a3 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v23;
  return result;
}

uint64_t sub_1BD5F4750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = a2;
  v15 = a3;
  return sub_1BE051704();
}

void sub_1BD5F48C8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  v2 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD5F9B2C(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v10 = sub_1BE052224();
  v2, v3, v4, v5, v6, v7, v8, v9;
  [v0 openURL:v1 options:v10 completionHandler:0];
}

uint64_t sub_1BD5F4A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_1BE04FF64();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCA8, &qword_1BE0E73F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCB0, &qword_1BE0E7400);
  v14 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v29 - v15;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCB8, &qword_1BE0E7408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB8, &qword_1BE0C2850);
  sub_1BD0DE4F4(&qword_1EBD4CCC0, &qword_1EBD4CCB8, &qword_1BE0E7408, MEMORY[0x1E6981F48]);
  sub_1BD5F894C();
  sub_1BE051614();
  sub_1BE04FF44();
  v17 = sub_1BD0DE4F4(qword_1EBD4CCD8, &qword_1EBD4CCA8, &qword_1BE0E73F8, MEMORY[0x1E697D658]);
  sub_1BE050D14();
  (*(v30 + 8))(v9, v31);
  (*(v11 + 8))(v13, v10);
  sub_1BE052434();
  v19 = v18;
  v39 = v10;
  v40 = v17;
  swift_getOpaqueTypeConformance2();
  v20 = v29;
  sub_1BE050DE4();
  v19, v21, v22, v23, v24, v25, v26, v27;
  return (*(v14 + 8))(v16, v20);
}

uint64_t sub_1BD5F4D94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v159 = a1;
  v164 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v165 = &v155[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v163 = &v155[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v160 = *(v10 - 8);
  v161 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v155[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v157 = &v155[-v13];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v155[-v16];
  v158 = a2;
  v17 = [a2 localizedDescription];
  v18 = sub_1BE052434();
  v20 = v19;

  v167 = v18;
  v168 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v156 = a3;
  if (a3)
  {
    v28 = sub_1BE051464();
  }

  else
  {
    v28 = sub_1BE051494();
  }

  v29 = v28;
  v30 = sub_1BE050564();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v29, v31, v33, v35, v37, v38, v39, v40;
  sub_1BD0DDF10(v21, v23, (v25 & 1), v41, v42, v43, v44, v45);
  v27, v46, v47, v48, v49, v50, v51, v52;
  v167 = v30;
  v168 = v32;
  v53 = (v34 & 1);
  v169 = v34 & 1;
  v170 = v36;
  sub_1BE052434();
  v55 = v54;
  sub_1BE050DE4();
  v55, v56, v57, v58, v59, v60, v61, v62;
  sub_1BD0DDF10(v30, v32, v53, v63, v64, v65, v66, v67);
  v36, v68, v69, v70, v71, v72, v73, v74;
  v75 = v158;
  v76 = sub_1BD408D0C(v158);
  if (v77)
  {
    v167 = v76;
    v168 = v77;
    v78 = sub_1BE0506C4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    if ([v75 isAppleCardPass] && (v85 = WalletSettingsModel.transactionsModelForPass(pass:)(v75), KeyPath = swift_getKeyPath(), v167 = v85, sub_1BD5F9B2C(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel), sub_1BE04B594(), KeyPath, v87, v88, v89, v90, v91, v92, v93, v94 = *&v85[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account], v95 = v94, v85, v94) && (v96 = objc_msgSend(v95, sel_state), v95, (v96 - 2) <= 2))
    {
      v97 = sub_1BE0513B4();
    }

    else if (v156)
    {
      v97 = sub_1BE051494();
    }

    else
    {
      v97 = sub_1BE0513E4();
    }

    v100 = v97;
    v167 = v97;
    v101 = sub_1BE050574();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    sub_1BD0DDF10(v78, v80, (v82 & 1), v106, v108, v109, v110, v111);
    v100, v112, v113, v114, v115, v116, v117, v118;
    v84, v119, v120, v121, v122, v123, v124, v125;
    v167 = v101;
    v168 = v103;
    v169 = v105 & 1;
    v170 = v107;
    sub_1BE052434();
    v127 = v126;
    v128 = v157;
    sub_1BE050DE4();
    v127, v129, v130, v131, v132, v133, v134, v135;
    sub_1BD0DDF10(v101, v103, (v105 & 1), v136, v137, v138, v139, v140);
    v107, v141, v142, v143, v144, v145, v146, v147;
    v148 = v128;
    v99 = v163;
    sub_1BD0DE204(v148, v163, &qword_1EBD452C0, &qword_1BE0B7620);
    v98 = 0;
  }

  else
  {
    v98 = 1;
    v99 = v163;
  }

  (*(v160 + 56))(v99, v98, 1, v161);
  v149 = v166;
  v150 = v162;
  sub_1BD0DE19C(v166, v162, &qword_1EBD452C0, &qword_1BE0B7620);
  v151 = v165;
  sub_1BD0DE19C(v99, v165, &unk_1EBD5BB60, &qword_1BE0C4580);
  v152 = v164;
  sub_1BD0DE19C(v150, v164, &qword_1EBD452C0, &qword_1BE0B7620);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228, &qword_1BE0D9270);
  sub_1BD0DE19C(v151, v152 + *(v153 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v99, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v149, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v151, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v150, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD5F5350@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0, &unk_1BE0C2840);
  v26 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = [a1 paymentPass];
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for PassImage(0);
    *&v7[v10[6]] = v9;
    type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    v11 = v9;
    PKPassFrontFaceContentSize();
    *(v7 + 3) = 0x4049000000000000;
    *(v7 + 4) = v13 / v12 * 50.0;
    *v7 = sub_1BD70C870;
    *(v7 + 1) = 0;
    v7[16] = 0;
    v7[v10[7]] = 1;
    *&v7[v10[8]] = 1911;
    LOBYTE(v10) = sub_1BE050224();
    sub_1BE04E1F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = &v7[*(v4 + 36)];
    *v22 = v10;
    *(v22 + 1) = v15;
    *(v22 + 2) = v17;
    *(v22 + 3) = v19;
    *(v22 + 4) = v21;
    v22[40] = 0;
    sub_1BD0DE204(v7, a2, &qword_1EBD3DDB0, &unk_1BE0C2840);
    return (*(v26 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a2, 1, 1, v4);
  }
}

unint64_t sub_1BD5F55F0()
{
  result = qword_1EBD4CB70;
  if (!qword_1EBD4CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB50, &unk_1BE0E7100);
    sub_1BD5F567C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CB70);
  }

  return result;
}

unint64_t sub_1BD5F567C()
{
  result = qword_1EBD4CB78;
  if (!qword_1EBD4CB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB80, &qword_1BE0E7168);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD4CB60, &qword_1EBD4CB58, &unk_1BE0E7110, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CB78);
  }

  return result;
}

uint64_t sub_1BD5F5774()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD5F41B4(v2, v3, v0 + 32);
}

unint64_t sub_1BD5F5818()
{
  result = qword_1EBD4CB88;
  if (!qword_1EBD4CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CB88);
  }

  return result;
}

void sub_1BD5F586C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v111 = *(v1 + 40);
  v112 = v7;
  v8 = *(v1 + 56);
  v109[0] = *v1;
  sub_1BD206260(&v112, v110);
  sub_1BD0DE19C(&v111, v110, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90, &unk_1BE10BAA0);
  sub_1BE0516A4();
  v9 = v110[0];
  v10 = [v110[0] isAppleCardPass];

  v11 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  *&v109[0] = v11;
  sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v11 + 96);
  v21 = swift_allocObject();
  v22 = *(v2 + 48);
  *(v21 + 3) = *(v2 + 32);
  *(v21 + 4) = v22;
  *(v21 + 5) = *(v2 + 64);
  v23 = *(v2 + 16);
  *(v21 + 1) = *v2;
  *(v21 + 2) = v23;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for AddPostalAddressSheet(0);
  v25 = v24[7];
  v26 = v111;
  *(a1 + v24[5]) = v112;
  *(a1 + v24[6]) = v26;
  *(a1 + v25) = v8;
  *(a1 + v24[8]) = v10;
  v27 = (a1 + v24[10]);
  *v27 = sub_1BD5F9B24;
  v27[1] = v21;
  v28 = objc_opt_self();
  v29 = v20;
  sub_1BD5F9A10(v2, v109);
  v30 = [v28 currentLocale];
  sub_1BE04B064();

  type metadata accessor for AddressEditingModel(0);
  swift_allocObject();
  v31 = sub_1BD840B14(v6);
  if (v20)
  {
    v32 = *&v31[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v109[0] = v20;
    v33 = v29;
    v108 = v10;
    v34 = v29;
    v35 = v33;
    swift_retain_n();
    v36 = v35;
    sub_1BE04D8C4();
    sub_1BD20AA3C();
    v32, v37, v38, v39, v40, v41, v42, v43;
    v44 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    v46 = sub_1BE04D8A4();
    v48 = *v47;
    *v47 = v20;

    v46(v109, 0);
    v29 = v34;
    v10 = v108;
    v44, v49, v50, v51, v52, v53, v54, v55;
    v45, v56, v57, v58, v59, v60, v61, v62;
  }

  if (v10)
  {
    sub_1BE048964();
    sub_1BD111A78(&unk_1F3B8EDF0);
    v64 = v63;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v109[0] = v64;
    sub_1BE04D8C4();
    sub_1BE048964();
    sub_1BD111A78(&unk_1F3B8EE18);
    v66 = v65;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v109[0] = v66;
    sub_1BE04D8C4();
    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v69 = sub_1BE04D8A4();
    *(v70 + 192) = 0;
    v69(v109, 0);
    v67, v71, v72, v73, v74, v75, v76, v77;
    v68, v78, v79, v80, v81, v82, v83, v84;
    v85 = swift_getKeyPath();
    v86 = swift_getKeyPath();
    v87 = sub_1BE04D8A4();
    *(v88 + 193) = 0;
    v87(v109, 0);
    v85, v89, v90, v91, v92, v93, v94, v95;
    v86, v96, v97, v98, v99, v100, v101, v102;
  }

  v103 = (a1 + v24[9]);
  sub_1BD5F9B2C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel, &unk_1BE0FCC94);
  v104 = sub_1BE04E954();
  v106 = v105;

  *v103 = v104;
  v103[1] = v106;
}

void sub_1BD5F5DD8(void *a1, __int128 *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - v9;
  if (a1)
  {
    v11 = a1;
    sub_1BE04D1E4();
    v12 = v11;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v92 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v93 = a2;
      v18 = v17;
      *&v95 = v17;
      *v16 = 136315138;
      v19 = [v12 description];
      v20 = sub_1BE052434();
      v22 = v21;

      v23 = sub_1BD123690(v20, v22, &v95);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&dword_1BD026000, v13, v14, "New postal address added:%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18, v31, v32, v33, v34, v35, v36, v37);
      v38 = v18;
      a2 = v93;
      MEMORY[0x1BFB45F20](v38, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);

      (*(v5 + 8))(v7, v92);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v42 = *(a2 + 2);
    KeyPath = swift_getKeyPath();
    *&v95 = v42;
    sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v44, v45, v46, v47, v48, v49, v50;
    v51 = *(v42 + 48);
    v95 = *a2;
    v52 = v12;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90, &unk_1BE10BAA0);
    sub_1BE0516A4();
    v53 = v94;
    v54 = v52;
    v55 = [v53 paymentPass];
    if (v55)
    {
      v63 = v55;
      v64 = swift_getKeyPath();
      *&v95 = v51;
      sub_1BD5F9B2C(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
      sub_1BE04B594();
      v64, v65, v66, v67, v68, v69, v70, v71;
      [v51[6] setDefaultBillingAddress:v54 forPaymentPass:v63];
      sub_1BD40A050(v54);
      v72 = [v53 uniqueID];
      if (!v72)
      {
        __break(1u);
        return;
      }

      v73 = v72;
      v74 = sub_1BE052434();
      v76 = v75;

      sub_1BD40A3EC(v74, v76, v54);
      v51, v77, v78, v79, v80, v81, v82, v83;

      v76, v84, v85, v86, v87, v88, v89, v90;
    }

    else
    {
      v51, v56, v57, v58, v59, v60, v61, v62;
    }

    (*(a2 + 8))(v54);
  }

  else
  {
    sub_1BE04D1E4();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "Tried to add nil postal address, skipping", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_1BD5F62D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = sub_1BE051754();
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  (*(v5 + 16))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v14);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v9;
  (*(v5 + 32))(v18 + v17, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v24 = v8;
  v25 = v9;
  v26 = v21[1];
  sub_1BE051704();
  swift_getWitnessTable();
  sub_1BD147308();
  v19 = *(v22 + 8);
  v19(v12, v10);
  sub_1BD147308();
  return (v19)(v16, v10);
}

void sub_1BD5F6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for PaymentPassDetailsButton(0, a2, a3, a4) + 36);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = sub_1BE048964();
    v5(v7);

    sub_1BD0D4744(v5, v6, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1BD5F65D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD147308();
  sub_1BD147308();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1BD5F66B0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DC0, &qword_1BE0C97E0);
  MEMORY[0x1EEE9AC00](v50);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CD70, &qword_1BE0E7638);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v49 - v6;
  sub_1BD5F6A38(v3);
  v58 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v7 = v55;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  v8[3] = *(v1 + 32);
  v8[4] = v9;
  v8[5] = *(v1 + 64);
  v10 = *(v1 + 16);
  v8[1] = *v1;
  v8[2] = v10;
  sub_1BD5F978C(v1, &v55);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CD78, &unk_1BE0E7640);
  v47 = sub_1BD2D5A00();
  v48 = sub_1BD5F98B8();
  v12 = v50;
  sub_1BE050F64();
  *(&v7 + 1), v13, v14, v15, v16, v17, v18, v19;
  v8, v20, v21, v22, v23, v24, v25, v26;
  v7, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD0DE53C(v3, &qword_1EBD40DC0, &qword_1BE0C97E0);
  v55 = *(v1 + 56);
  v56 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v34 = swift_allocObject();
  v35 = *(v1 + 48);
  v34[3] = *(v1 + 32);
  v34[4] = v35;
  v34[5] = *(v1 + 64);
  v36 = *(v1 + 16);
  v34[1] = *v1;
  v34[2] = v36;
  sub_1BD5F978C(v1, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  *&v55 = v12;
  *(&v55 + 1) = v11;
  v56 = v47;
  v57 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  v37 = v52;
  v38 = v51;
  sub_1BE051064();
  v34, v39, v40, v41, v42, v43, v44, v45;
  return (*(v53 + 8))(v38, v37);
}

id sub_1BD5F6A38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DE0, &unk_1BE0C97F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80F0], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v30 = v14;
    v31 = v16;
    v28 = *(v2 + 56);
    v29 = *(v2 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
    v17 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DF0, &unk_1BE0E7660);
    sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    sub_1BD0DE4F4(&qword_1EBD40DF8, &qword_1EBD40DF0, &unk_1BE0E7660, MEMORY[0x1E6981F48]);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    v19 = v18;
    sub_1BD0DE4F4(&qword_1EBD40DD8, &qword_1EBD40DE0, &unk_1BE0C97F0, MEMORY[0x1E697D690]);
    sub_1BE050DE4();
    v19, v20, v21, v22, v23, v24, v25, v26;
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD5F6DE0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v29 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90, &unk_1BE10BAA0);
  sub_1BE0516A4();
  v8 = v24;
  v9 = *(a1 + 2);
  v10 = swift_allocObject();
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  v10[5] = a1[4];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80F0], v4);
  sub_1BE048964();
  sub_1BD5F978C(a1, &v29);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v7, v4);
    *&v24 = v8;
    sub_1BD5F99C4();
    sub_1BE051694();
    v24 = v29;
    *&v25 = v9;
    *(&v25 + 1) = v15;
    *&v27 = 0;
    v26 = v17;
    BYTE8(v27) = 1;
    *(&v27 + 9) = *v23;
    HIDWORD(v27) = *&v23[3];
    *&v28 = sub_1BD5F99A0;
    *(&v28 + 1) = v10;
    v30 = v9;
    v31 = v15;
    v33 = 0;
    v34 = 0;
    v32 = v17;
    v35 = 1;
    *&v36[3] = *&v23[3];
    *v36 = *v23;
    v37 = sub_1BD5F99A0;
    v38 = v10;
    sub_1BD5F9A10(&v24, v22);
    result = sub_1BD5F9A48(&v29);
    v18 = v25;
    v19 = v27;
    v20 = v28;
    *(a2 + 32) = v26;
    *(a2 + 48) = v19;
    *(a2 + 64) = v20;
    *a2 = v24;
    *(a2 + 16) = v18;
    *(a2 + 80) = 257;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD5F7070(uint64_t a1)
{
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  sub_1BD5F9B2C(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 16);
  sub_1BE048C84();
  sub_1BD2242A4(a1, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516B4();
  return result;
}

void sub_1BD5F71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    return;
  }

  v4 = *a2;
  v5 = *(a3 + 48);
  if (v5 >> 62)
  {
    v3 = a3;
    v6 = sub_1BE053704();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= v6)
  {
    return;
  }

  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
LABEL_15:
      v7 = a3;
      v8 = MEMORY[0x1BFB40900](v4, v5);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v7 = a3;
      v8 = *(v5 + 8 * v4 + 32);
    }

    v9 = v8;
    v3 = *(v7 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90, &unk_1BE10BAA0);
    sub_1BE0516A4();
    v4 = v9;
    v10 = [v32 paymentPass];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    KeyPath = swift_getKeyPath();
    v13 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
    sub_1BD5F9B2C(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    v5 = v3 + v13;
    sub_1BE04B594();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    [*(v3 + 48) setDefaultBillingAddress:v4 forPaymentPass:v11];
    v6 = [v32 uniqueID];
    if (v6)
    {
      v21 = v6;
      v22 = sub_1BE052434();
      v24 = v23;

      sub_1BD40A3EC(v22, v24, v4);
      v24, v25, v26, v27, v28, v29, v30, v31;
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    a3 = v3;
    if (v4 >= v6)
    {
      return;
    }
  }

LABEL_11:
}

uint64_t sub_1BD5F73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8, &unk_1BE0C96A0);
  MEMORY[0x1EEE9AC00](v70);
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v66 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0, &unk_1BE0E7670);
  MEMORY[0x1EEE9AC00](v69);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v66 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E00, &unk_1BE0C9800);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v66 - v11;
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00, &unk_1BE0C96C0);
  MEMORY[0x1EEE9AC00](v68);
  v78 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v82 = *(a1 + 56);
  v83 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v77 = v26;
  if (v85 == 1)
  {
    v66 = v84;
    v27 = *MEMORY[0x1E69B80F0];
    v28 = *(v13 + 104);
    v67 = v12;
    v28(v15, v27, v12);
    v29 = PKPassKitBundle();
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = v29;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v13 + 8))(v15, v67);
    *&v82 = v31;
    *(&v82 + 1) = v33;
    sub_1BD0DDEBC();
    *v19 = sub_1BE0506C4();
    *(v19 + 1) = v34;
    v19[16] = v35 & 1;
    v36 = v66;
    *(v19 + 3) = v37;
    *(v19 + 4) = v36;
    *(v19 + 20) = 257;
    v38 = *(v17 + 32);
    v38(v22, v19, v16);
    v26 = v77;
    v38(v77, v22, v16);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (*(v17 + 56))(v26, v39, 1, v16);
  v40 = *(a1 + 48);
  if (v40 >> 62)
  {
    v29 = sub_1BE053704();
    if ((v29 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v41 = v26;
      goto LABEL_7;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v41 = v26;
  v29 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v84 = 0;
  v85 = v29;
  swift_getKeyPath();
  v42 = swift_allocObject();
  v43 = *(a1 + 48);
  v42[3] = *(a1 + 32);
  v42[4] = v43;
  v42[5] = *(a1 + 64);
  v44 = *(a1 + 16);
  v42[1] = *a1;
  v42[2] = v44;
  sub_1BD5F978C(a1, &v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
  sub_1BD2D5394();
  sub_1BD2D5B78();
  v45 = v79;
  sub_1BE0519C4();
  v46 = v80;
  sub_1BE051984();
  v47 = sub_1BE050204();
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
  *v48 = v47;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 1;
  *(v46 + *(v69 + 36)) = 1;
  v49 = swift_allocObject();
  v50 = *(a1 + 48);
  v49[3] = *(a1 + 32);
  v49[4] = v50;
  v49[5] = *(a1 + 64);
  v51 = *(a1 + 16);
  v49[1] = *a1;
  v49[2] = v51;
  sub_1BD5F978C(a1, &v82);
  v52 = v73;
  sub_1BE051704();
  *(v52 + *(v70 + 36)) = 1;
  v53 = v78;
  sub_1BD0DE19C(v41, v78, &qword_1EBD40D00, &unk_1BE0C96C0);
  v54 = v71;
  v55 = *(v71 + 16);
  v56 = v81;
  v57 = v45;
  v58 = v72;
  v55(v81, v57, v72);
  v59 = v46;
  v60 = v74;
  sub_1BD0DE19C(v59, v74, &qword_1EBD40CF0, &unk_1BE0E7670);
  v61 = v76;
  sub_1BD0DE19C(v52, v76, &qword_1EBD40CE8, &unk_1BE0C96A0);
  v62 = v75;
  sub_1BD0DE19C(v53, v75, &qword_1EBD40D00, &unk_1BE0C96C0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E10, &unk_1BE0E76C0);
  v55((v62 + v63[12]), v56, v58);
  sub_1BD0DE19C(v60, v62 + v63[16], &qword_1EBD40CF0, &unk_1BE0E7670);
  sub_1BD0DE19C(v61, v62 + v63[20], &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v52, &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v80, &qword_1EBD40CF0, &unk_1BE0E7670);
  v64 = *(v54 + 8);
  v64(v79, v58);
  sub_1BD0DE53C(v77, &qword_1EBD40D00, &unk_1BE0C96C0);
  sub_1BD0DE53C(v61, &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v60, &qword_1EBD40CF0, &unk_1BE0E7670);
  v64(v81, v58);
  return sub_1BD0DE53C(v78, &qword_1EBD40D00, &unk_1BE0C96C0);
}

void sub_1BD5F7CC8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v7 = MEMORY[0x1EEE9AC00](*(v6 - 8));
  v9 = &v27 - v8;
  v10 = *a1;
  v11 = *(a2 + 48);
  v28 = v12;
  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v11 + 8 * v10 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v13 = MEMORY[0x1BFB40900](v10, v7);
LABEL_5:
  v14 = v13;
  v15 = [v13 pkSingleLineFormattedContactAddress];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;

    v29 = v17;
    v30 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    LOBYTE(v19) = v23;
    v25 = v24;

    *v9 = v20;
    *(v9 + 1) = v22;
    v9[16] = v19 & 1;
    *(v9 + 3) = v25;
    *(v9 + 4) = v10;
    *(v9 + 20) = 256;
    (*(v28 + 32))(a3, v9, v6);
    (*(v28 + 56))(a3, 0, 1, v6);
  }

  else
  {

    v26 = *(v28 + 56);

    v26(a3, 1, 1, v6);
  }
}

uint64_t sub_1BD5F7EF0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2[1] = *(a1 + 32);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350, &unk_1BE0B8D00);
}

id sub_1BD5F7FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD5F816C()
{
  result = qword_1EBD4CBC0;
  if (!qword_1EBD4CBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CBB8, &unk_1BE0E72F0);
    sub_1BD5F81F8();
    sub_1BD5F824C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CBC0);
  }

  return result;
}

unint64_t sub_1BD5F81F8()
{
  result = qword_1EBD4CBC8;
  if (!qword_1EBD4CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CBC8);
  }

  return result;
}

unint64_t sub_1BD5F824C()
{
  result = qword_1EBD4CBD0;
  if (!qword_1EBD4CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CBD8, &qword_1BE0E7300);
    sub_1BD0DE4F4(&qword_1EBD4CBE0, &qword_1EBD4CBE8, &qword_1BE0E7308, MEMORY[0x1E697C090]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CBF0, &qword_1BE0E7310);
    sub_1BE04FB64();
    sub_1BD0DE4F4(&qword_1EBD4CBF8, &qword_1EBD4CBF0, &qword_1BE0E7310, MEMORY[0x1E697D680]);
    sub_1BD5F9B2C(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CBD0);
  }

  return result;
}

uint64_t objectdestroyTm_68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

unint64_t sub_1BD5F8438()
{
  result = qword_1EBD4CC40;
  if (!qword_1EBD4CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC40);
  }

  return result;
}

unint64_t sub_1BD5F848C()
{
  result = qword_1EBD4CC48;
  if (!qword_1EBD4CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC48);
  }

  return result;
}

unint64_t sub_1BD5F84E0()
{
  result = qword_1EBD4CC50;
  if (!qword_1EBD4CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC50);
  }

  return result;
}

unint64_t sub_1BD5F853C()
{
  result = qword_1EBD4CC78;
  if (!qword_1EBD4CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CC70, &qword_1BE0E7370);
    sub_1BD5F85F4();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC78);
  }

  return result;
}

unint64_t sub_1BD5F85F4()
{
  result = qword_1EBD4CC80;
  if (!qword_1EBD4CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CC88, &qword_1BE0E7378);
    sub_1BD5F86AC();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0, &unk_1BE0BB830, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC80);
  }

  return result;
}

unint64_t sub_1BD5F86AC()
{
  result = qword_1EBD4CC90;
  if (!qword_1EBD4CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CC98, &unk_1BE0E7380);
    sub_1BD0DE4F4(&qword_1EBD49558, &qword_1EBD49560, &unk_1BE0DF030, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CC90);
  }

  return result;
}

unint64_t sub_1BD5F8770()
{
  result = qword_1EBD4CCA0;
  if (!qword_1EBD4CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CC60, &qword_1BE0E7358);
    sub_1BD5F853C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CCA0);
  }

  return result;
}

void sub_1BD5F8800()
{
  sub_1BE04AA64();

  sub_1BD5F48C8();
}

uint64_t sub_1BD5F888C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD41F00, &qword_1BE0CC620);
  return sub_1BE04F1F4();
}

unint64_t sub_1BD5F894C()
{
  result = qword_1EBD4CCC8;
  if (!qword_1EBD4CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DDB8, &qword_1BE0C2850);
    sub_1BD5F89D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CCC8);
  }

  return result;
}

unint64_t sub_1BD5F89D0()
{
  result = qword_1EBD4CCD0;
  if (!qword_1EBD4CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DDB0, &unk_1BE0C2840);
    sub_1BD5F9B2C(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CCD0);
  }

  return result;
}

void sub_1BD5F8A8C(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1BE051694();
  v127 = v137;
  v128 = v138;
  *&v132 = 0;
  BYTE8(v132) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v130 = v137;
  v150 = v138;
  KeyPath = swift_getKeyPath();
  v137 = a2;
  sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  v6 = a1;
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(a2 + 48);
  v15 = swift_getKeyPath();
  v137 = a2;
  sub_1BE048964();
  sub_1BE04B594();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(a2 + 48);
  v24 = swift_getKeyPath();
  v137 = v23;
  sub_1BD5F9B2C(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE048964();
  sub_1BE04B594();
  v24, v25, v26, v27, v28, v29, v30, v31;
  swift_beginAccess();
  v32 = v23[2];
  sub_1BE048C84();
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = swift_getKeyPath();
  v137 = a2;
  sub_1BE04B594();
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = *(a2 + 40);
  a2, v49, v50, v51, v52, v53, v54, v55;
  v56 = v6;
  v57 = [v56 paymentPass];
  if (!v57)
  {
    goto LABEL_8;
  }

  v58 = v57;
  v59 = [v48 defaultBillingAddressForPaymentPass_];
  if (!v59)
  {

LABEL_8:
LABEL_9:
    v99 = v139;
    goto LABEL_10;
  }

  v60 = v59;
  v125 = v48;
  v126 = v32;
  v61 = [v56 uniqueID];

  if (!v61)
  {
    __break(1u);
    goto LABEL_17;
  }

  v62 = sub_1BE052434();
  v64 = v63;

  v65 = sub_1BD40AD08(v62, v64);
  v64, v66, v67, v68, v69, v70, v71, v72;
  v32 = v126;
  if (v65)
  {
    if ([v60 isEqualIgnoringIdentifiers_])
    {

      v73 = swift_getKeyPath();
      v137 = v14;
      sub_1BE04B594();
      v74 = v73;
      v32 = v126;
      v74, v75, v76, v77, v78, v79, v80, v81;
      swift_beginAccess();
      v82 = *(v14 + 16);
      sub_1BE048C84();
      v130 = sub_1BD2242A4(v65, v82);
      v84 = v83;

      v82, v85, v86, v87, v88, v89, v90, v91;
      v139, v92, v93, v94, v95, v96, v97, v98;
      v99 = 0;
      v150 = v84 & 1;
LABEL_10:
      v132 = v56;
      *&v133 = a2;
      *(&v133 + 1) = v14;
      LOBYTE(v134) = v127;
      *(&v134 + 1) = v151[0];
      DWORD1(v134) = *(v151 + 3);
      *(&v134 + 1) = v138;
      *&v135 = v32;
      *(&v135 + 1) = v130;
      LOBYTE(v136) = v150;
      *(&v136 + 1) = *v149;
      DWORD1(v136) = *&v149[3];
      *(&v136 + 1) = v99;
      v137 = v56;
      v138 = 0;
      v139 = a2;
      v140 = v14;
      v141 = v127;
      *v142 = v151[0];
      *&v142[3] = *(v151 + 3);
      v143 = v128;
      v144 = v32;
      v145 = v130;
      v146 = v150;
      *v147 = *v149;
      *&v147[3] = *&v149[3];
      v148 = v99;
      sub_1BD5F978C(&v132, v131);
      sub_1BD5F97C4(&v137);
      v100 = v135;
      a3[2] = v134;
      a3[3] = v100;
      a3[4] = v136;
      v101 = v133;
      *a3 = v132;
      a3[1] = v101;
      return;
    }
  }

  v102 = v60;
  v103 = [v56 paymentPass];
  if (!v103)
  {

    goto LABEL_9;
  }

  v104 = v103;
  v105 = swift_getKeyPath();
  v137 = v14;
  sub_1BE04B594();
  v105, v106, v107, v108, v109, v110, v111, v112;
  [*(v14 + 48) setDefaultBillingAddress:v102 forPaymentPass:v104];
  sub_1BD40A050(v102);
  v113 = [v56 uniqueID];
  if (v113)
  {
    v114 = v113;
    v115 = sub_1BE052434();
    v117 = v116;

    sub_1BD40A3EC(v115, v117, v102);
    v117, v118, v119, v120, v121, v122, v123, v124;
    v32 = v126;
    v99 = v139;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1BD5F9048@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WalletDeepLinkCoordinator(0);
  sub_1BD5F9B2C(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
  v4 = sub_1BE04EEC4();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  sub_1BD5F9B2C(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = a1[11];
  v16 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04B594();
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = a1[11];
  sub_1BE048964();
  a1, v25, v26, v27, v28, v29, v30, v31;
  v32 = swift_getKeyPath();
  sub_1BD5F9B2C(&qword_1EBD3C268, type metadata accessor for HardwareConfigurationModel, &protocol conformance descriptor for HardwareConfigurationModel);
  sub_1BE04B594();
  v32, v33, v34, v35, v36, v37, v38, v39;
  v24, v40, v41, v42, v43, v44, v45, v46;
  result = sub_1BE051694();
  *a2 = a1;
  *(a2 + 8) = v15;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v24;
  *(a2 + 40) = v48;
  return result;
}

void sub_1BD5F9274(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BD0FA9D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD5F92FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1BD5F9440(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1BD5F961C()
{
  result = qword_1EBD4CD60;
  if (!qword_1EBD4CD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD68, qword_1BE0E7498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CCA8, &qword_1BE0E73F8);
    sub_1BD0DE4F4(qword_1EBD4CCD8, &qword_1EBD4CCA8, &qword_1BE0E73F8, MEMORY[0x1E697D658]);
    swift_getOpaqueTypeConformance2();
    sub_1BD5F9B2C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CD60);
  }

  return result;
}

void sub_1BD5F97F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for PaymentPassDetailsButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_1BD5F6560(v9, v5, v6, v7);
}

unint64_t sub_1BD5F98B8()
{
  result = qword_1EBD4CD80;
  if (!qword_1EBD4CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD78, &unk_1BE0E7640);
    sub_1BD5F9944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CD80);
  }

  return result;
}

unint64_t sub_1BD5F9944()
{
  result = qword_1EBD4CD88;
  if (!qword_1EBD4CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CD88);
  }

  return result;
}

unint64_t sub_1BD5F99C4()
{
  result = qword_1EBD456C0;
  if (!qword_1EBD456C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD456C0);
  }

  return result;
}

uint64_t objectdestroy_110Tm()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[4], v8, v9, v10, v11, v12, v13, v14;
  v0[5], v15, v16, v17, v18, v19, v20, v21;
  v0[7], v22, v23, v24, v25, v26, v27, v28;
  v0[8], v29, v30, v31, v32, v33, v34, v35;
  v0[11], v36, v37, v38, v39, v40, v41, v42;

  return swift_deallocObject();
}

uint64_t sub_1BD5F9B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD5F9B7C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_paymentOffersController] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_paymentPass] = a2;
  v7 = qword_1EBD36CB8;
  v8 = a1;
  v9 = a2;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = sub_1BE04AA64();
  v11 = __swift_project_value_buffer(v10, qword_1EBD4CDA0);
  (*(*(v10 - 8) + 16))(&v3[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_redirectURLMatcher], v11, v10);
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_willEnterForegroundNotification name:*MEMORY[0x1E69DDBC0] object:0];
  [v15 addObserver:v14 selector:sel_didBecomeActiveNotification name:*MEMORY[0x1E69DDAB0] object:0];
  [v15 addObserver:v14 selector:sel_willResignActiveNotification name:*MEMORY[0x1E69DDBC8] object:0];

  return v14;
}

uint64_t sub_1BD5F9D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for PaymentOfferSetupAuthenticationRedirectURLMatcher(0);
  v4[6] = swift_task_alloc();
  v5 = sub_1BE04AA64();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5F9E60, 0, 0);
}

uint64_t sub_1BD5F9E60()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_1BD5FDBDC(v0[5] + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_redirectURLMatcher, v4, type metadata accessor for PaymentOfferSetupAuthenticationRedirectURLMatcher);
  (*(v3 + 32))(v1, v4, v2);
  sub_1BE04AA14();
  if (v5)
  {
    v6 = v5;
    v7 = v0[9];
    v8 = v0[4];
    v9 = v0[3];
    v10 = [v8 actionURL];
    sub_1BE04A9F4();

    v11 = objc_opt_self();
    v12 = sub_1BE052404();
    v6, v13, v14, v15, v16, v17, v18, v19;
    sub_1BE04AA24();
    v21 = v20;
    v22 = sub_1BE052404();
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = [v11 callbackWithHTTPSHost:v12 path:v22];
    v0[11] = v30;

    v31 = swift_allocObject();
    v0[12] = v31;
    swift_unknownObjectWeakInit();
    v32 = swift_task_alloc();
    v0[13] = v32;
    v32[2] = v31;
    v32[3] = v7;
    v32[4] = v30;
    v32[5] = v9;
    v32[6] = v8;
    v33 = swift_task_alloc();
    v0[14] = v33;
    v34 = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
    *v33 = v0;
    v33[1] = sub_1BD5FA134;
    v35 = v0[2];

    return MEMORY[0x1EEE6DDE0](v35, 0, 0, 0xD00000000000001ELL, 0x80000001BE131280, sub_1BD5FD79C, v32, v34);
  }

  else
  {
    v36 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    *v36 = 0;
    type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
    swift_storeEnumTagMultiPayload();

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1BD5FA134()
{
  v1 = *(*v0 + 96);

  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD5FA268, 0, 0);
}

uint64_t sub_1BD5FA268()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1BD5FA328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v64 = a6;
  v65 = a3;
  v66 = a4;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = swift_allocObject();
    v63 = v9;
    v21 = v20;
    swift_unknownObjectWeakInit();
    (*(v14 + 16))(v17, a1, v13);
    v22 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v61 = v8;
    v62 = v11;
    v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = v21;
    (*(v14 + 32))(&v24[v22], v17, v13);
    *&v24[v23] = a5;
    v25 = v64;
    *&v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8] = v64;
    v26 = objc_allocWithZone(MEMORY[0x1E695A950]);
    sub_1BE048964();
    v27 = a5;
    v28 = v25;
    v29 = sub_1BE04A9C4();
    v75 = sub_1BD5FD7AC;
    v76 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1BD5FD620;
    v74 = &block_descriptor_22_3;
    v30 = _Block_copy(&aBlock);
    v31 = [v26 initWithURL:v29 callback:v66 completionHandler:v30];
    _Block_release(v30);

    v32 = v76;
    v21, v33, v34, v35, v36, v37, v38, v39;
    v32, v40, v41, v42, v43, v44, v45, v46;
    [v31 setStorageMode_];
    [v31 setPresentationContextProvider_];
    v19[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession] = 1;
    sub_1BD5FBD34();
    sub_1BD14BE3C();
    v47 = sub_1BE052D54();
    v48 = swift_allocObject();
    *(v48 + 2) = v31;
    v75 = sub_1BD5FD874;
    v76 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1BD126964;
    v74 = &block_descriptor_28_2;
    v49 = _Block_copy(&aBlock);
    v50 = v31;
    v51 = v67;
    sub_1BE051F74();
    v70 = MEMORY[0x1E69E7CC0];
    sub_1BD431D2C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v52 = v69;
    v53 = v61;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v51, v52, v49);
    _Block_release(v49);

    (*(v63 + 8))(v52, v53);
    (*(v68 + 8))(v51, v62);
    v76, v54, v55, v56, v57, v58, v59, v60;
  }
}

uint64_t sub_1BD5FA870(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, char *a4, void *a5, void *a6)
{
  v109 = a5;
  v110 = a6;
  v121 = a4;
  v122 = a2;
  v123 = a3;
  v114 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v108 - v7;
  v8 = sub_1BE04D214();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v113 = &v108 - v12;
  v13 = sub_1BE04AA64();
  v117 = *(v13 - 8);
  v118 = v13;
  v14 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v108 - v24;
  v26 = *(v20 + 16);
  v26(&v108 - v24, v121, v19, v23);
  v121 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v19;
  (v26)(v121, v25, v19);
  v28 = v123;
  v29 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v30 + v29;
  v32 = v30;
  v33 = v25;
  v34 = v122;
  (*(v20 + 32))(v31, v33, v19);
  if (v34)
  {
    sub_1BE048964();
    v35 = v34;
    v36 = sub_1BE04A844();
    v37 = [v36 code];

    if (v37 == 1)
    {
      v38 = v120;
    }

    else
    {
      v49 = v116;
      sub_1BE04D084();
      v50 = v34;
      v51 = sub_1BE04D204();
      v52 = sub_1BE052C34();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v124 = v54;
        *v53 = 136315138;
        swift_getErrorValue();
        v55 = sub_1BE053C74();
        v57 = v56;
        v58 = v32;
        v59 = v34;
        v60 = sub_1BD123690(v55, v56, &v124);
        v57, v61, v62, v63, v64, v65, v66, v67;
        *(v53 + 4) = v60;
        v34 = v59;
        v32 = v58;
        _os_log_impl(&dword_1BD026000, v51, v52, "Payment offer web authentication session error: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54, v68, v69, v70, v71, v72, v73, v74);
        MEMORY[0x1BFB45F20](v54, -1, -1);
        v75 = v53;
        v28 = v123;
        MEMORY[0x1BFB45F20](v75, -1, -1);

        (*(v111 + 8))(v116, v112);
      }

      else
      {

        (*(v111 + 8))(v49, v112);
      }

      v38 = v120;
      *v120 = 1;
    }

    swift_storeEnumTagMultiPayload();
    v41 = v121;
    sub_1BD5FB034(v38, v28, v121);
  }

  else
  {
    v39 = v18;
    v40 = v113;
    sub_1BD0DE19C(v114, v113, &unk_1EBD3CF70, &qword_1BE0BA000);
    if ((*(v117 + 48))(v40, 1, v118) != 1)
    {
      v76 = *(v20 + 8);
      sub_1BE048964();
      v76(v121, v27);
      v78 = v117;
      v77 = v118;
      v122 = *(v117 + 32);
      v108 = v39;
      v122(v39, v40, v118);
      v79 = sub_1BE0528D4();
      (*(*(v79 - 8) + 56))(v115, 1, 1, v79);
      (*(v78 + 16))(v15, v39, v77);
      v80 = v32;
      v81 = (*(v78 + 80) + 40) & ~*(v78 + 80);
      v82 = (v14 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      v84[2] = 0;
      v84[3] = 0;
      v84[4] = v28;
      v85 = v84 + v81;
      v86 = v118;
      v122(v85, v15, v118);
      v88 = v109;
      v87 = v110;
      *(v84 + v82) = v109;
      *(v84 + v83) = v87;
      v89 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v89 = sub_1BD5FD884;
      v89[1] = v80;
      sub_1BE048964();
      v90 = v88;
      v91 = v87;
      sub_1BE048964();
      v92 = sub_1BD122C00(0, 0, v115, &unk_1BE0E79E0, v84);
      v80, v93, v94, v95, v96, v97, v98, v99;
      v92, v100, v101, v102, v103, v104, v105, v106;
      return (*(v78 + 8))(v108, v86);
    }

    sub_1BE048964();
    sub_1BD0DE53C(v40, &unk_1EBD3CF70, &qword_1BE0BA000);
    v38 = v120;
    *v120 = 1;
    swift_storeEnumTagMultiPayload();
    v41 = v121;
    sub_1BD5FB034(v38, v28, v121);
  }

  v32, v42, v43, v44, v45, v46, v47, v48;
  sub_1BD5FD904(v38, type metadata accessor for PaymentOfferSetupAuthenticationResult);
  return (*(v20 + 8))(v41, v27);
}

uint64_t sub_1BD5FB034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v35 = a1;
  v37 = sub_1BE051F54();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  sub_1BD14BE3C();
  v36 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v12 + 16))(v15, v34, v11);
  sub_1BD5FDBDC(v35, v10, type metadata accessor for PaymentOfferSetupAuthenticationResult);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + *(v33 + 80) + v18) & ~*(v33 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v16;
  (*(v12 + 32))(&v20[v18], v15, v11);
  sub_1BD5FDACC(v10, &v20[v19], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  aBlock[4] = sub_1BD5FDC44;
  v42 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_42_2;
  v21 = _Block_copy(aBlock);
  v42, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD431D2C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v29 = v37;
  sub_1BE053664();
  v30 = v36;
  MEMORY[0x1BFB3FDF0](0, v7, v4, v21);
  _Block_release(v21);

  (*(v40 + 8))(v4, v29);
  return (*(v38 + 8))(v7, v39);
}

uint64_t sub_1BD5FB4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession] = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1BD5FB5E4();
  }

  sub_1BD5FDBDC(a3, v6, type metadata accessor for PaymentOfferSetupAuthenticationResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  return sub_1BE052864();
}

void sub_1BD5FB5E4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion;
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion);
  if (v7)
  {
    v8 = v7;
    sub_1BE04D1E4();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "Invalidating issuerInstallmentsHandoffViewActive assertion", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    [v8 invalidate];

    v12 = *(v1 + v6);
    *(v1 + v6) = 0;
  }
}

uint64_t sub_1BD5FB764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_1BE04AA64();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = sub_1BE04D214();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CE78, &qword_1BE0E79E8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FB930, 0, 0);
}

uint64_t sub_1BD5FB930()
{
  v53 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1BD5FBE6C(*(v0 + 48)) >= 3u)
    {
      sub_1BD5FC050(*(v0 + 56), *(v0 + 64), *(v0 + 168));
    }

    else
    {
      v4 = *(v0 + 120);
      v3 = *(v0 + 128);
      v5 = *(v0 + 112);
      v6 = *(v0 + 48);
      sub_1BE04D084();
      (*(v4 + 16))(v3, v6, v5);
      v7 = sub_1BE04D204();
      v8 = sub_1BE052C34();
      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      v15 = *(v0 + 112);
      v14 = *(v0 + 120);
      if (v9)
      {
        v51 = v8;
        v16 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v52 = v50;
        *v16 = 136315138;
        sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v48 = v13;
        v49 = v10;
        v17 = sub_1BE053B24();
        v19 = v18;
        (*(v14 + 8))(v12, v15);
        v20 = sub_1BD123690(v17, v19, &v52);
        v19, v21, v22, v23, v24, v25, v26, v27;
        *(v16 + 4) = v20;
        _os_log_impl(&dword_1BD026000, v7, v51, "Payment offer invalid redirect URL: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50, v28, v29, v30, v31, v32, v33, v34);
        MEMORY[0x1BFB45F20](v50, -1, -1);
        MEMORY[0x1BFB45F20](v16, -1, -1);

        (*(v11 + 8))(v49, v48);
      }

      else
      {

        (*(v14 + 8))(v12, v15);
        (*(v11 + 8))(v10, v13);
      }

      **(v0 + 168) = 0;
      swift_storeEnumTagMultiPayload();
    }

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = *(v0 + 160);
  v37 = *(v0 + 168);
  v38 = *(v0 + 88);
  v39 = *(v0 + 96);
  (*(v39 + 56))(v37, v35, 1, v38);
  sub_1BD0DE19C(v37, v36, &unk_1EBD4CE78, &qword_1BE0E79E8);
  v40 = *(v39 + 48);
  v41 = v40(v36, 1, v38);
  v42 = *(v0 + 160);
  if (v41 == 1)
  {
    v43 = *(v0 + 88);
    swift_storeEnumTagMultiPayload();
    if (v40(v42, 1, v43) != 1)
    {
      sub_1BD0DE53C(*(v0 + 160), &unk_1EBD4CE78, &qword_1BE0E79E8);
    }
  }

  else
  {
    sub_1BD5FDACC(*(v0 + 160), *(v0 + 104), type metadata accessor for PaymentOfferSetupAuthenticationResult);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 104);
  (*(v0 + 72))(v45);
  sub_1BD5FD904(v45, type metadata accessor for PaymentOfferSetupAuthenticationResult);
  sub_1BD0DE53C(v44, &unk_1EBD4CE78, &qword_1BE0E79E8);

  v46 = *(v0 + 8);

  return v46();
}

void sub_1BD5FBD34()
{
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion) && *(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession) == 1)
  {
    v1 = objc_opt_self();
    v2 = sub_1BE052404();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1BD5FDE14;
    v13 = v3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1BD14E1D8;
    v12[3] = &block_descriptor_8_0;
    v4 = _Block_copy(v12);
    v13, v5, v6, v7, v8, v9, v10, v11;
    [v1 acquireAssertionOfType:9 withReason:v2 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_1BD5FBE6C(uint64_t a1)
{
  v1 = sub_1BE04AA14();
  v3 = v2;
  v4 = sub_1BE04AA14();
  v12 = v5;
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v20 = v5;
LABEL_9:
    v20, v5, v6, v7, v8, v9, v10, v11;
    return 0;
  }

  if (!v5)
  {
    v20 = v3;
    goto LABEL_9;
  }

  if (v1 == v4 && v3 == v5)
  {
    v3, v5, v4, v7, v8, v9, v10, v11;
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v22 = sub_1BE053B84();
    v3, v23, v24, v25, v26, v27, v28, v29;
    v12, v30, v31, v32, v33, v34, v35, v36;
    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

LABEL_11:
  v37 = sub_1BE04AA44();
  v39 = v38;
  v40 = sub_1BE04AA44();
  v48 = v41;
  if (v39)
  {
    if (v41)
    {
      if (v37 == v40 && v39 == v41)
      {
        v39, v41, v40, v43, v44, v45, v46, v47;
        v48, v49, v50, v51, v52, v53, v54, v55;
      }

      else
      {
        v57 = sub_1BE053B84();
        v39, v58, v59, v60, v61, v62, v63, v64;
        v48, v65, v66, v67, v68, v69, v70, v71;
        if ((v57 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_21;
    }

    v56 = v39;
LABEL_19:
    v56, v41, v42, v43, v44, v45, v46, v47;
    return 1;
  }

  if (v41)
  {
    v56 = v41;
    goto LABEL_19;
  }

LABEL_21:
  sub_1BE04AA24();
  v73 = v72;
  sub_1BE04AA24();
  v75 = v74;
  sub_1BD5FDB34();
  sub_1BD5FDB88();
  v76 = sub_1BE0522B4();
  v73, v77, v78, v79, v80, v81, v82, v83;
  v75, v84, v85, v86, v87, v88, v89, v90;
  if (v76)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1BD5FC050@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a4@<X8>)
{
  v158 = a4;
  v145 = a2;
  v154 = a1;
  v4 = sub_1BE04D214();
  v155 = *(v4 - 8);
  v156 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = &v139 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v139 - v10;
  v11 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  v149 = *(v11 - 8);
  v150 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v139 - v14);
  v16 = sub_1BE04AA64();
  v147 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v139 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v148 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v139 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670, &unk_1BE0D5F70);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v139 - v30;
  v32 = sub_1BE04A3B4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v35;
  sub_1BE04A354();
  if ((*(v36 + 48))(v31, 1, v32) != 1)
  {
    (*(v36 + 32))(v34, v31, v32);
    v37 = v36;
    v38 = sub_1BE04A334();
    if (!v38)
    {
      (*(v36 + 8))(v34, v32);
      goto LABEL_11;
    }

    v39 = v38;
    v143 = v34;
    v144 = v37;
    sub_1BE04A324();
    v40 = sub_1BE052724();
    v39, v41, v42, v43, v44, v45, v46, v47;
    v48 = [objc_opt_self() paymentOfferActionResultFromQueryItems_];

    if (!v48)
    {
      (*(v144 + 8))(v143, v32);
      goto LABEL_11;
    }

    v49 = v48;
    v50 = v32;
    if (*&v157[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_paymentPass])
    {
      sub_1BE04D1E4();
      v51 = sub_1BE04D204();
      v52 = sub_1BE052C54();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1BD026000, v51, v52, "Updating payment offers since the pass is already provisioned", v53, 2u);
        MEMORY[0x1BFB45F20](v53, -1, -1);
      }

      (*(v155 + 8))(v6, v156);
      (*(v144 + 8))(v143, v32);
      goto LABEL_25;
    }

    v55 = [v154 identifier];
    v141 = sub_1BE052434();
    v57 = v56;

    v58 = v49;
    v59 = [v49 provisioningCredentialIdentifier];
    if (v59)
    {
      v60 = v59;
      v140 = sub_1BE052434();
      v142 = v61;
    }

    else
    {
      v140 = 0;
      v142 = 0;
    }

    v62 = [v49 provisioningCardIconURL];
    if (v62)
    {
      v63 = v62;
      sub_1BE04A9F4();

      v64 = v147;
      v145 = v57;
      v65 = v49;
      v66 = *(v147 + 32);
      v66(v21, v18, v16);
      v67 = *(v64 + 56);
      v67(v21, 0, 1, v16);
      v66(v24, v21, v16);
      v58 = v65;
      v57 = v145;
      v67(v24, 0, 1, v16);
      v68 = v150;
      v69 = v151;
    }

    else
    {
      v70 = v147;
      (*(v147 + 56))(v21, 1, 1, v16);
      PKPaymentOfferAction.cardArtURL.getter(v24);
      v71 = (*(v70 + 48))(v21, 1, v16);
      v68 = v150;
      v69 = v151;
      if (v71 != 1)
      {
        sub_1BD0DE53C(v21, &unk_1EBD3CF70, &qword_1BE0BA000);
      }
    }

    v72 = [v58 didSelectOffer];
    v73 = v142;
    if (v142)
    {
      v74 = v72;
      v75 = v140;
      *v15 = v141;
      v15[1] = v57;
      v15[2] = v75;
      v15[3] = v73;
      sub_1BD226B4C(v24, v15 + *(v68 + 24));
      *(v15 + *(v68 + 28)) = v74;
      sub_1BD5FDACC(v15, v69, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      v76 = 0;
    }

    else
    {
      sub_1BD0DE53C(v24, &unk_1EBD3CF70, &qword_1BE0BA000);
      v57, v77, v78, v79, v80, v81, v82, v83;
      v76 = 1;
    }

    v84 = v143;
    v85 = v153;
    v87 = v148;
    v86 = v149;
    (*(v149 + 56))(v69, v76, 1, v68);
    sub_1BD0DE19C(v69, v87, &unk_1EBD49700, &unk_1BE0E79F0);
    if ((*(v86 + 48))(v87, 1, v68) == 1)
    {

      sub_1BD0DE53C(v69, &unk_1EBD49700, &unk_1BE0E79F0);
      (*(v144 + 8))(v84, v50);
      sub_1BD0DE53C(v87, &unk_1EBD49700, &unk_1BE0E79F0);
LABEL_25:
      type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1BD5FDACC(v87, v152, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    v88 = [*&v157[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_paymentOffersController] configuration];
    v89 = [v88 context];

    if (v89 == 2)
    {
      v85 = v146;
      sub_1BE04D1E4();
      v90 = v154;
      v91 = sub_1BE04D204();
      v92 = sub_1BE052C54();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v157 = v58;
        v95 = v94;
        v159[0] = v94;
        *v93 = 136315138;
        v96 = [v90 identifier];
        v97 = sub_1BE052434();
        v99 = v98;

        v100 = sub_1BD123690(v97, v99, v159);
        v99, v101, v102, v103, v104, v105, v106, v107;
        *(v93 + 4) = v100;
        _os_log_impl(&dword_1BD026000, v91, v92, "Handing off provisioning to behind + flow %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95, v108, v109, v110, v111, v112, v113, v114);
        MEMORY[0x1BFB45F20](v95, -1, -1);
        MEMORY[0x1BFB45F20](v93, -1, -1);

        (*(v155 + 8))(v146, v156);
LABEL_32:
        sub_1BD0DE53C(v69, &unk_1EBD49700, &unk_1BE0E79F0);
        (*(v144 + 8))(v84, v50);
        sub_1BD5FDACC(v152, v158, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
        type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_1BE04D1E4();
      v115 = v154;
      v91 = sub_1BE04D204();
      v116 = sub_1BE052C54();

      if (os_log_type_enabled(v91, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v157 = v58;
        v119 = v118;
        v159[0] = v118;
        *v117 = 136315138;
        v120 = [v115 identifier];
        v121 = sub_1BE052434();
        v123 = v122;

        v124 = sub_1BD123690(v121, v123, v159);
        v123, v125, v126, v127, v128, v129, v130, v131;
        *(v117 + 4) = v124;
        _os_log_impl(&dword_1BD026000, v91, v116, "Starting provisioning for payment offer %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v119, v132, v133, v134, v135, v136, v137, v138);
        MEMORY[0x1BFB45F20](v119, -1, -1);
        MEMORY[0x1BFB45F20](v117, -1, -1);

        (*(v155 + 8))(v153, v156);
        goto LABEL_32;
      }
    }

    (*(v155 + 8))(v85, v156);
    goto LABEL_32;
  }

  sub_1BD0DE53C(v31, &unk_1EBD49670, &unk_1BE0D5F70);
LABEL_11:
  *v158 = 0;
  type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BD5FCDD0(uint64_t a1)
{
  result = sub_1BE04AA64();
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

void sub_1BD5FCEEC(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion) && (*(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession) & 1) != 0)
  {
    v5 = objc_opt_self();
    v6 = sub_1BE052404();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = a1;
    v17 = v7;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1BD14E1D8;
    v16[3] = a2;
    v8 = _Block_copy(v16);
    v17, v9, v10, v11, v12, v13, v14, v15;
    [v5 acquireAssertionOfType:9 withReason:v6 completion:v8];
    _Block_release(v8);
  }
}

void sub_1BD5FD0E0(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      v17 = a2;
      sub_1BE04D1E4();
      v18 = a2;
      v19 = sub_1BE04D204();
      v20 = sub_1BE052C54();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = a2;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1BD026000, v19, v20, "Error getting issuerInstallmentsHandoffViewActive assertion %@", v21, 0xCu);
        sub_1BD0DE53C(v22, &unk_1EBD3E590, &unk_1BE0B7E50);
        MEMORY[0x1BFB45F20](v22, -1, -1);
        MEMORY[0x1BFB45F20](v21, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v14, v5);
    }

    else
    {
      if (a1)
      {
        sub_1BE04D1E4();
        v25 = sub_1BE04D204();
        v26 = sub_1BE052C54();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1BD026000, v25, v26, "acquired issuerInstallmentsHandoffViewActive assertion", v27, 2u);
          MEMORY[0x1BFB45F20](v27, -1, -1);
        }

        (*(v6 + 8))(v11, v5);
        v28 = *&v16[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion];
        *&v16[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion] = a1;
        v29 = a1;
        goto LABEL_12;
      }

      sub_1BE04D1E4();
      v30 = sub_1BE04D204();
      v31 = sub_1BE052C54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1BD026000, v30, v31, "Error getting issuerInstallmentsHandoffViewActive assertion, nil returned", v32, 2u);
        MEMORY[0x1BFB45F20](v32, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
    }

    v28 = *&v16[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion];
    *&v16[OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_assertion] = 0;
LABEL_12:
  }
}

uint64_t sub_1BD5FD4F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BE04AA64();
  __swift_allocate_value_buffer(v3, qword_1EBD4CDA0);
  v4 = __swift_project_value_buffer(v3, qword_1EBD4CDA0);
  sub_1BE04AA54();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5FD620(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1BE04A9F4();
    v11 = sub_1BE04AA64();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_1BE04AA64();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1BE048964();
  v13 = a3;
  v10(v8, a3);
  v9, v14, v15, v16, v17, v18, v19, v20;

  return sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
}

uint64_t sub_1BD5FD7AC(uint64_t a1, void (*a2)(void, void, void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD5FA870(a1, a2, v8, (v2 + v6), v9, v10);
}

uint64_t sub_1BD5FD884(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD5FB034(a1, v4, v5);
}

uint64_t sub_1BD5FD904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5FD964(uint64_t a1)
{
  v3 = *(sub_1BE04AA64() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1[4];
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1BD0F985C;

  return sub_1BD5FB764(a1, v7, v8, v11, v1 + v4, v9, v10, v12);
}

uint64_t sub_1BD5FDACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD5FDB34()
{
  result = qword_1EBD4CE88;
  if (!qword_1EBD4CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CE88);
  }

  return result;
}

unint64_t sub_1BD5FDB88()
{
  result = qword_1EBD4CE90;
  if (!qword_1EBD4CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CE90);
  }

  return result;
}

uint64_t sub_1BD5FDBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5FDC44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PaymentOfferSetupAuthenticationResult(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD5FB4C8(v5, v0 + v2, v6);
}

uint64_t sub_1BD5FDD30(uint64_t a1)
{
  result = type metadata accessor for PaymentOfferSetupProvisioningMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD5FDDA0()
{
  result = qword_1EBD4CEB0;
  if (!qword_1EBD4CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CEB0);
  }

  return result;
}

void (*sub_1BD5FDE18(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1BD602F14(v6, a2, a3);
  return sub_1BD5191F0;
}

uint64_t sub_1BD5FDEA0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void (*sub_1BD5FDF14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D227C;
}

uint64_t sub_1BD5FDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v4[27] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = sub_1BE0528A4();
  v4[33] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[34] = v7;
  v4[35] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD5FE0F8, v7, v6);
}

uint64_t sub_1BD5FE0F8(uint64_t a1)
{
  sub_1BE04D154();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "Fetching rewards redemptions", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v5 = *(v1 + 248);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 208);

  (*(v7 + 8))(v5, v6);
  v9 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask;
  *(v1 + 288) = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask;
  v10 = *(v8 + v9);
  if (v10)
  {
    sub_1BE048964();
    sub_1BE052944();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = *(*(v1 + 208) + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService);
  v19 = sub_1BE052404();
  v20 = [v18 paymentRewardsRedemptionsForPassUniqueIdentifier:v19 limit:25];

  if (v20)
  {
    v53 = v18;
    v29 = *(v1 + 208);
    v28 = *(v1 + 216);
    v30 = *(v1 + 192);
    v31 = *(v1 + 200);
    v32 = *(v1 + 184);
    sub_1BD0E5E8C(0, &qword_1EBD4C220, 0x1E69B8DB0);
    v52 = sub_1BE052744();

    v33 = sub_1BE0528D4();
    *(v1 + 296) = v33;
    v34 = *(v33 - 8);
    v35 = *(v34 + 56);
    *(v1 + 304) = v35;
    *(v1 + 312) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v35(v28, 1, 1, v33);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE048C84();
    v36 = sub_1BE052894();
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v29;
    v37[5] = v52;
    v37[6] = v32;
    v37[7] = v30;
    v37[8] = v31;
    v39 = sub_1BD122C00(0, 0, v28, &unk_1BE0E7C08, v37);
    v40 = *(v8 + v9);
    *(v8 + v9) = v39;
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = sub_1BE052404();
    *(v1 + 320) = v48;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 168;
    *(v1 + 24) = sub_1BD5FE4E8;
    v49 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF08, &qword_1BE0E7C10);
    *(v1 + 80) = MEMORY[0x1E69E9820];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1BD5FEBA4;
    *(v1 + 104) = &block_descriptor_140;
    *(v1 + 112) = v49;
    [v53 updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:v48 limit:25 completion:?];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  else
  {
    *(v1 + 264), v21, v22, v23, v24, v25, v26, v27;

    v50 = *(v1 + 8);

    return v50();
  }
}

uint64_t sub_1BD5FE4E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_1BD5FE7A4;
  }

  else
  {
    v5 = sub_1BD5FE618;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5FE618(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 320);
  v10 = *(v8 + 288);
  v11 = *(v8 + 208);
  *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;
  v12 = *(v8 + 168);

  v13 = *(v11 + v10);
  if (v13)
  {
    sub_1BE048964();
    sub_1BE052944();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  v21 = *(v8 + 288);
  v22 = *(v8 + 208);
  v23 = *(v8 + 216);
  v25 = *(v8 + 192);
  v24 = *(v8 + 200);
  v26 = *(v8 + 184);
  (*(v8 + 304))(v23, 1, 1, *(v8 + 296));
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();
  v27 = sub_1BE052894();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v22;
  v28[5] = v12;
  v28[6] = v26;
  v28[7] = v25;
  v28[8] = v24;
  v30 = sub_1BD122C00(0, 0, v23, &unk_1BE0E7C20, v28);
  v31 = *(v22 + v21);
  *(v22 + v21) = v30;
  v31, v32, v33, v34, v35, v36, v37, v38;

  v39 = *(v8 + 8);

  return v39();
}

uint64_t sub_1BD5FE7A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v44 = v8;
  v9 = *(v8 + 320);
  v10 = *(v8 + 328);
  *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  sub_1BE04D154();
  v11 = v10;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C34();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v8 + 328);
    v15 = *(v8 + 232);
    v42 = *(v8 + 240);
    v16 = *(v8 + 224);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_1BE053C74();
    v21 = v20;
    v22 = sub_1BD123690(v19, v20, &v43);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BD026000, v12, v13, "Encountered error updating rewards redemptions: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18, v30, v31, v32, v33, v34, v35, v36);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v15 + 8))(v42, v16);
  }

  else
  {
    v38 = *(v8 + 232);
    v37 = *(v8 + 240);
    v39 = *(v8 + 224);

    (*(v38 + 8))(v37, v39);
  }

  v40 = *(v8 + 8);

  return v40();
}

uint64_t sub_1BD5FE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BE0528A4();
  v8[3] = sub_1BE052894();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1BD5FEA68;

  return sub_1BD603E50(a5, a8);
}

uint64_t sub_1BD5FEA68()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1724EC, v1, v0);
}

uint64_t sub_1BD5FEBA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD4C220, 0x1E69B8DB0);
    **(*(v4 + 64) + 40) = sub_1BE052744();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD5FEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BE0528A4();
  v8[3] = sub_1BE052894();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1BD16DB04;

  return sub_1BD603E50(a5, a8);
}

uint64_t sub_1BD5FED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FEDF0, v7, v6);
}

void *sub_1BD5FEDF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v54 = v8;
  v9 = *(v8 + 40);
  v10 = *(v8 + 24);
  v9, a2, a3, a4, a5, a6, a7, a8;
  if (v10 >> 62)
  {
    v11 = sub_1BE053704();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v53 = MEMORY[0x1E69E7CC0];
      result = sub_1BD5322F4(0, (v11 & ~(v11 >> 63)), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = 0;
      v14 = v53;
      v15 = v10 & 0xC000000000000001;
      v51 = v52[3] + 32;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x1BFB40900](v13, v52[3]);
        }

        else
        {
          v16 = *(v51 + 8 * v13);
        }

        v17 = v16;
        v18 = [v16 identifier];
        v19 = sub_1BE052434();
        v21 = v20;

        v53 = v14;
        v23 = v14[2];
        v22 = v14[3];
        if (v23 >= v22 >> 1)
        {
          sub_1BD5322F4((v22 > 1), (v23 + 1), 1);
          v14 = v53;
        }

        ++v13;
        v14[2] = v23 + 1;
        v24 = &v14[3 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v24[6] = v17;
      }

      while (v11 != v13);
      goto LABEL_14;
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v25 = MEMORY[0x1E69E7CC8];
    goto LABEL_15;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E38, &qword_1BE0E7D50);
  v25 = sub_1BE053A04();
LABEL_15:
  v53 = v25;
  sub_1BD605984(v14, 1, &v53);
  v14, v26, v27, v28, v29, v30, v31, v32;
  v33 = v53;
  v34 = v52[4];
  sub_1BE048964();
  v35 = sub_1BD605F0C(v33, v34);
  v34, v36, v37, v38, v39, v40, v41, v42;
  v33, v43, v44, v45, v46, v47, v48, v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v52[2] = v35;
  sub_1BE048964();
  sub_1BE04D8C4();
  v50 = v52[1];

  return v50();
}

uint64_t sub_1BD5FF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a1;
  sub_1BE0528A4();
  v7[15] = sub_1BE052894();
  v9 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FF144, v9, v8);
}

uint64_t sub_1BD5FF144(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 96);
  v9 = *(v8 + 104);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v11 = sub_1BD5FDF14((v8 + 16));
  v12 = sub_1BD5FDE18((v8 + 48), v10, v9);
  v14 = v13;
  v15 = type metadata accessor for RedemptionPresentation(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (!v16)
  {
    v17 = *(v8 + 112);
    v18 = *(v15 + 56);
    v19 = *(v14 + v18);
    *(v14 + v18) = v17;
    v20 = v17;
  }

  (v12)(v8 + 48, 0);
  (v11)(v8 + 16, 0);
  **(v8 + 80) = v16 != 0;
  v21 = *(v8 + 8);

  return v21();
}

uint64_t sub_1BD5FF28C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel__redemptionPresentations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF00, &unk_1BE0E7BF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BD606690(*(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 32));
  *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask), v3, v4, v5, v6, v7, v8, v9;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(uint64_t a1)
{
  result = qword_1EBD4CEE0;
  if (!qword_1EBD4CEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5FF3C4(uint64_t a1)
{
  sub_1BD5FF474(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD5FF474(uint64_t a1)
{
  if (!qword_1EBD4CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CEF8, &qword_1BE0E7B38);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4CEF0);
    }
  }
}

uint64_t sub_1BD5FF4E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF00, &unk_1BE0E7BF0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - v3;
  v5 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel__redemptionPresentations;
  v14[1] = sub_1BD1ADB58(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CEF8, &qword_1BE0E7B38);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v5, v4, v1);
  v6 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v7 = [objc_allocWithZone(MEMORY[0x1E69B89A0]) init];
  v8 = PKUIScreenScale();
  v9 = PKIconForRewardsRedemption();
  if (!v9)
  {

    v7 = 0;
LABEL_6:
    v11 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:v8];
  if (!v10)
  {

    v7 = 0;
    v9 = 0;
    goto LABEL_6;
  }

  v11 = 0x4046800000000000;
LABEL_7:
  v12 = (v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager);
  *v12 = v7;
  v12[1] = v9;
  v12[2] = v11;
  v12[3] = v11;
  v12[4] = v10;
  *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask) = 0;
  return v0;
}

uint64_t sub_1BD5FF6E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD5FF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *a3;
  v15 = *(a3 + 8);
  v33 = *(a3 + 32);
  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v34;
  v18 = *(a3 + 16);
  *(v17 + 40) = *a3;
  *(v17 + 56) = v18;
  v19 = *(a3 + 32);
  v20 = v35;
  *(v17 + 72) = v19;
  *(v17 + 80) = v20;
  (*(v7 + 32))(v17 + v16, v9, v6);
  sub_1BE048C84();
  v21 = v14;
  v22 = v15;
  v23 = v33;
  sub_1BE048C84();
  v24 = sub_1BD122C00(0, 0, v12, &unk_1BE0E7C90, v17);
  v24, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_1BD5FF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BD5FF984, 0, 0);
}

uint64_t sub_1BD5FF984()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1BD5FFA5C;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1BD5FFA5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD5FFB74, 0, 0);
}

uint64_t sub_1BD5FFB74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
  sub_1BE0528F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5FFBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v6[16] = *(v8 + 64);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FFD08, 0, 0);
}

uint64_t sub_1BD5FFD08()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:

    v53 = *(v0 + 8);

    return v53();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v63 = **(v0 + 72);
    v4 = *(v0 + 88);
    v58 = *v4;
    v59 = *(v0 + 120);
    v56 = *(v4 + 32);
    v57 = *(v4 + 8);
    v54 = *(v0 + 80) + 32;
    v55 = v1 & 0xC000000000000001;
    v60 = result;
    while (1)
    {
      v65 = v3;
      v6 = v55 ? MEMORY[0x1BFB40900](v3, *(v0 + 80)) : *(v54 + 8 * v3);
      v64 = v6;
      v7 = *(v0 + 152);
      v8 = *(v0 + 136);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = *(v0 + 88);
      v12 = *(v0 + 96);
      v13 = sub_1BE0528D4();
      v61 = *(v13 - 8);
      v62 = v13;
      (*(v61 + 56))(v7, 1, 1);
      (*(v59 + 16))(v8, v9, v10);
      v14 = (*(v59 + 80) + 88) & ~*(v59 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v11 + 16);
      v18 = *(v11 + 32);
      *(v15 + 32) = *v11;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 72) = v64;
      *(v15 + 80) = v12;
      (*(v59 + 32))(v15 + v14, v8, v10);
      v19 = v58;
      v20 = v57;
      v21 = v56;
      v22 = v64;
      sub_1BE048C84();
      if (swift_taskGroup_addPending())
      {
        break;
      }

      v15, v23, v24, v25, v26, v27, v28, v29;

      v5 = v65;
LABEL_6:
      v3 = v5 + 1;
      sub_1BD0DE53C(*(v0 + 152), &unk_1EBD3E580, &unk_1BE0B9000);
      if (v60 == v3)
      {
        goto LABEL_21;
      }
    }

    v30 = *(v0 + 144);
    sub_1BD0DE19C(*(v0 + 152), v30, &unk_1EBD3E580, &unk_1BE0B9000);
    v31 = (*(v61 + 48))(v30, 1, v62);
    v32 = *(v0 + 144);
    if (v31 == 1)
    {
      sub_1BD0DE53C(*(v0 + 144), &unk_1EBD3E580, &unk_1BE0B9000);
      if (*v16)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = sub_1BE052844();
        v35 = v34;
        swift_unknownObjectRelease();
LABEL_16:
        v36 = swift_allocObject();
        *(v36 + 16) = &unk_1BE0E7CB0;
        *(v36 + 24) = v15;
        sub_1BE048964();
        if (v35 | v33)
        {
          v37 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v33;
          *(v0 + 40) = v35;
        }

        else
        {
          v37 = 0;
        }

        *(v0 + 48) = 1;
        *(v0 + 56) = v37;
        *(v0 + 64) = v63;
        v38 = swift_task_create();
        v15, v39, v40, v41, v42, v43, v44, v45;

        v38, v46, v47, v48, v49, v50, v51, v52;
        v5 = v65;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1BE0528C4();
      (*(v61 + 8))(v32, v62);
      if (*v16)
      {
        goto LABEL_13;
      }
    }

    v33 = 0;
    v35 = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD600150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF40, &qword_1BE0E7CC8);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF48, &qword_1BE0E7CD0);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF50, &qword_1BE0E7CD8);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF58, &qword_1BE0E7CE0);
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD600358, 0, 0);
}

uint64_t sub_1BD600358()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v5[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v5[2].i64[0] = v4;
  sub_1BD0E5E8C(0, qword_1EBD4F790, 0x1E69DCAB8);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  sub_1BE052924();

  sub_1BE052904();
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_1BD6004C8;
  v7 = *(v0 + 104);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v7);
}

uint64_t sub_1BD6004C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD6005C4, 0, 0);
}

uint64_t sub_1BD6005C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 80);
    v5 = [*(v0 + 56) identifier];
    v6 = sub_1BE052434();
    v8 = v7;

    *(v0 + 16) = v6;
    *(v0 + 24) = v8;
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1BD6004C8;
    v10 = *(v0 + 104);

    return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v10);
  }

  else
  {
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

void sub_1BD6007B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_1BE0528D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = *a4;
  v16 = *(a4 + 32);
  v34 = *(a4 + 8);
  v35 = v16;
  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = v36;
  *(v18 + 32) = a2;
  *(v18 + 40) = v19;
  v20 = *(a4 + 16);
  *(v18 + 48) = *a4;
  *(v18 + 64) = v20;
  *(v18 + 80) = *(a4 + 32);
  (*(v8 + 32))(v18 + v17, v10, v7);
  sub_1BE048C84();
  v21 = v19;
  v22 = v15;
  v23 = v34;
  v24 = v35;
  v25 = sub_1BD122C00(0, 0, v13, &unk_1BE0E7CF8, v18);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t sub_1BD6009E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF50, &qword_1BE0E7CD8);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF58, &qword_1BE0E7CE0);
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF48, &qword_1BE0E7CD0);
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68, &qword_1BE0E7D00);
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD600BFC, 0, 0);
}

uint64_t sub_1BD600BFC()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 64) paymentHash];
  sub_1BE052434();
  v4 = v3;

  v5 = sub_1BE0524C4();
  v7 = v6;
  v4, v6, v8, v9, v10, v11, v12, v13;
  if (*(v1 + 16))
  {
    v21 = sub_1BD148F70(v5, v7);
    v23 = v22;
    v7, v22, v24, v25, v26, v27, v28, v29;
    if (v23)
    {
      v30 = *(*(*(v0 + 56) + 56) + 8 * v21);
LABEL_8:
      v35 = v30;
      *(v0 + 192) = v30;
      v37 = *(v0 + 120);
      v36 = *(v0 + 128);
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = *(v0 + 96);
      v41 = *(v0 + 72);
      v42 = swift_task_alloc();
      *(v42 + 16) = v41;
      *(v42 + 24) = v35;
      *(v0 + 200) = sub_1BD0E5E8C(0, qword_1EBD4F790, 0x1E69DCAB8);
      *(v0 + 288) = *MEMORY[0x1E69E8650];
      v43 = *(v40 + 104);
      *(v0 + 208) = v43;
      *(v0 + 216) = (v40 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v43(v39);
      sub_1BE052924();

      sub_1BE052904();
      v44 = *(v37 + 8);
      *(v0 + 224) = v44;
      *(v0 + 232) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v44(v36, v38);
      v45 = swift_task_alloc();
      *(v0 + 240) = v45;
      *v45 = v0;
      v45[1] = sub_1BD600F8C;
      v46 = *(v0 + 136);

      return MEMORY[0x1EEE6D9C8](v0 + 24, 0, 0, v46);
    }
  }

  else
  {
    v7, v14, v15, v16, v17, v18, v19, v20;
  }

  v31 = [*(v0 + 64) details];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 originalTransaction];

    if (v33)
    {
      v34 = *(v0 + 72);
      sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
      v30 = sub_1BD601828(v33, *v34);
      goto LABEL_8;
    }
  }

  v48 = *(v0 + 176);
  v47 = *(v0 + 184);
  v49 = *(v0 + 168);
  v50 = *(*(v0 + 72) + 8);
  *(v0 + 16) = v50;
  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  sub_1BE0528E4();
  (*(v48 + 8))(v47, v49);
  sub_1BE0528F4();

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1BD600F8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601088, 0, 0);
}

uint64_t sub_1BD601088()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    *(v0 + 48) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1BD600F8C;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE6D9C8](v0 + 24, 0, 0, v6);
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v10 + 8);
  *(v0 + 248) = v11;
  *(v0 + 256) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = [v7 merchant];
  *(v0 + 264) = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  if ([v12 hasMapsMatch])
  {

LABEL_8:
    v13 = *(v0 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528F4();

    v14 = *(v0 + 8);

    return v14();
  }

  v15 = swift_task_alloc();
  *(v0 + 272) = v15;
  *v15 = v0;
  v15[1] = sub_1BD601304;

  return sub_1BD601AF8(3000000000);
}

uint64_t sub_1BD601304()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601400, 0, 0);
}

uint64_t sub_1BD601400()
{
  v13 = *(v0 + 224);
  v12 = *(v0 + 208);
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v12(v5, v1, v6);
  sub_1BE052924();

  sub_1BE052904();
  v13(v3, v4);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_1BD601570;
  v10 = *(v0 + 136);

  return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v10);
}

uint64_t sub_1BD601570()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD60166C, 0, 0);
}

uint64_t sub_1BD60166C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    *(v0 + 40) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_1BD601570;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v6);
  }

  else
  {
    (*(v0 + 248))(*(v0 + 152), *(v0 + 136));

    v7 = *(v0 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528F4();

    v8 = *(v0 + 8);

    return v8();
  }
}

id sub_1BD601828(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [a1 timestamp];
  if (v9)
  {
    v10 = v9;
    sub_1BE04AEE4();

    v11 = sub_1BE04AE64();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v11 = 0;
  }

  [v8 setTransactionDate_];

  v12 = [a1 monetaryValue];
  v13 = [v12 amount];

  [v8 setAmount_];
  v14 = [a1 monetaryValue];
  if (!v14 || (v15 = v14, v16 = [v14 currency], v15, !v16))
  {
    v16 = 0;
  }

  [v8 setCurrencyCode_];

  v17 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  v18 = [a1 merchantRawName];
  [v17 setRawName_];

  v19 = [a1 merchantCategoryCode];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 integerValue];

    [v17 setFallbackcategory_];
  }

  v22 = v17;
  [v8 setMerchant_];

  return v8;
}

uint64_t sub_1BD601AF8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD601B94, 0, 0);
}

uint64_t sub_1BD601B94()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B92D8]) initWithTransaction:v0[11] paymentApplication:0];
  v0[13] = v1;
  v0[14] = [objc_allocWithZone(MEMORY[0x1E69B89B0]) initWithSource_];

  return MEMORY[0x1EEE6DFA0](sub_1BD601C40, 0, 0);
}

uint64_t sub_1BD601C40()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0[14];
  v5 = v0[12];
  v6 = v1[10];
  v7 = v1[11];
  v1[2] = v2;
  v1[3] = sub_1BD601E00;
  v8 = swift_continuation_init();
  v9 = sub_1BE0528D4();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v7;
  v11[5] = v4;
  v11[6] = v8;
  v12 = v7;
  v13 = v4;
  v14 = sub_1BD122C00(0, 0, v5, &unk_1BE0E7D18, v11);
  v10(v5, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;
  v15[5] = v14;
  v16 = sub_1BD122C00(0, 0, v5, &unk_1BE0E7D28, v15);
  v16, v17, v18, v19, v20, v21, v22, v23;

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BD601E00()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601EE0, 0, 0);
}

uint64_t sub_1BD601EE0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1BD601F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68, &qword_1BE0E7D00);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - v11;
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(v8 + 16);
  v43 = a1;
  v16(&v39 - v11, a1, v7, v10);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v12, v7);
  v22 = v21 + v20;
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  aBlock[4] = sub_1BD6058B4;
  v46 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD307EA8;
  aBlock[3] = &block_descriptor_81_1;
  v24 = _Block_copy(aBlock);
  v25 = v46;
  v26 = v17;
  v27 = v18;
  v28 = v13;
  v25, v29, v30, v31, v32, v33, v34, v35;
  v36 = [v28 iconForTransaction:v44 size:0 ignoreLogoURL:0 requestType:v24 iconHandler:{v14, v15}];
  _Block_release(v24);
  if (v36)
  {
    aBlock[0] = v36;
    v37 = v36;
    v38 = v40;
    sub_1BE0528E4();
    (*(v41 + 8))(v38, v42);
    sub_1BE0528F4();
  }
}

void sub_1BD602244(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68, &qword_1BE0E7D00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      return;
    }

    v14 = *(a4 + 8);
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528E4();
    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  v14 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  sub_1BE0528E4();
  (*(v8 + 8))(v10, v7);
  if (a2)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
    sub_1BE0528F4();
  }
}

uint64_t sub_1BD6023C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BD6023E8, 0, 0);
}

uint64_t sub_1BD6023E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1BD602528;
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1BE0E7D38, v4, sub_1BD6058AC, v5, 0, 0, v8);
}

uint64_t sub_1BD602528()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    *(v2 + 48), v4, v5, v6, v7, v8, v9, v10;

    v12 = *(v3 + 8);

    return v12();
  }
}

uint64_t sub_1BD6026AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD6026D0, 0, 0);
}

uint64_t sub_1BD6026D0(uint64_t a1)
{
  if (sub_1BE052974())
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[24];
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_1BD602828;
    v5 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF70, &qword_1BE0E7D40);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BD1F07A8;
    v1[13] = &block_descriptor_75_0;
    v1[14] = v5;
    [v4 startLookupWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }
}

uint64_t sub_1BD602828()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD602908, 0, 0);
}

void sub_1BD602908(uint64_t a1)
{
  v2 = *(v1 + 144);
  if ((sub_1BE052974() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong merchant];

      if (!v5)
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = [v2 merchant];
      [v5 setMapsMerchant_];
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
LABEL_8:
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (!v11)
      {
LABEL_11:
        swift_continuation_throwingResume();
        goto LABEL_12;
      }

      v12 = v11;
      v13 = [v11 merchant];

      if (v13)
      {
        [v13 setFallbackcategory_];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 merchant];

    if (v9)
    {
      v10 = [v2 brand];
      [v9 setMapsBrand_];

      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:

  v14 = *(v1 + 8);

  v14();
}

uint64_t sub_1BD602B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1BD602B9C;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1BD602B9C()
{

  if (v0)
  {

    v1 = sub_1BD6066F4;
  }

  else
  {
    v1 = sub_1BD602CB4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BD602CB4()
{
  sub_1BE052944();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1BD602D30(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD602DB0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD602E2C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD12350C;

  return v4();
}

void (*sub_1BD602F14(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1BD6034F0(v7);
  v7[9] = sub_1BD603020(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1BD602FC0;
}

void sub_1BD602FC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BD603020(void *a1, uint64_t a2, uint64_t a3, char a4))(void **a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RedemptionPresentation(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF30, &qword_1BE0E7C78) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1BD148F70(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1BD605158(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1BD6032E8;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1BD507B8C();
      goto LABEL_16;
    }

    sub_1BD5032EC(v25, a4 & 1);
    v29 = sub_1BD148F70(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1BE053C14();
  __break(1u);
  return result;
}

void sub_1BD6032E8(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = (*(*a1 + 4) + 48);
  v5 = *(*a1 + 10);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1BD0DE19C(v5, v6, &qword_1EBD4CF30, &qword_1BE0E7C78);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1BD605158(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1BD605158(v13, v14);
        sub_1BD948654(v12, v16, v15, v14, v11);
        sub_1BE048C84();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1BD0DE19C(v5, v17, &qword_1EBD4CF30, &qword_1BE0E7C78);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1BD605158(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1BD605158(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1BD0DE53C(v9, &qword_1EBD4CF30, &qword_1BE0E7C78);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1BD1BCDE4(*(v20 + 48) + 16 * v19);
    sub_1BD5059F4(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1BD0DE53C(v23, &qword_1EBD4CF30, &qword_1BE0E7C78);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1BD6034F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BD603518;
}

uint64_t sub_1BD603524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD5FE9A4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_69()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[8], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD603658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD5FEC94(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BD603734(uint64_t a1, char a2, void *a3)
{
  v58 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return;
  }

  v55 = (v8 + 8);
  v56 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v12 = *(i - 2);
    v13 = *(i - 1);
    v14 = *i;
    v15 = *a3;
    sub_1BE048C84();
    v16 = v14;
    v17 = sub_1BD148F70(v12, v13);
    v19 = *(v15 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v15 + 24) < v22)
    {
      sub_1BD5032D8(v22, a2 & 1);
      v17 = sub_1BD148F70(v12, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v25 = v16;
      v26 = *a3;
      if (v23)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    if (a2)
    {
      goto LABEL_9;
    }

    v50 = v17;
    sub_1BD507B64();
    v25 = v16;
    v17 = v50;
    v26 = *a3;
    if (v23)
    {
LABEL_10:
      v27 = v26[7];
      v62 = v17;
      v28 = *(v27 + 8 * v17);
      v29 = [v28 transactionDate];
      if (!v29)
      {
        goto LABEL_22;
      }

      v30 = v29;
      v60 = v28;
      v61 = v10;
      v31 = v59;
      sub_1BE04AEE4();

      v32 = [v16 transactionDate];
      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = v32;
      v34 = v57;
      sub_1BE04AEE4();

      LOBYTE(v33) = sub_1BE04AE74();
      v35 = *v55;
      v36 = v34;
      v37 = v58;
      (*v55)(v36, v58);
      v35(v31, v37);
      v38 = v60;
      if (v33)
      {
        v39 = v60;
      }

      else
      {
        v39 = v16;
      }

      v40 = v39;
      v13, v41, v42, v43, v44, v45, v46, v47;

      v48 = v26[7];
      v49 = *(v48 + 8 * v62);
      *(v48 + 8 * v62) = v40;

      a3 = v56;
      v10 = v61;
      goto LABEL_3;
    }

LABEL_17:
    v26[(v17 >> 6) + 8] |= 1 << v17;
    v51 = (v26[6] + 16 * v17);
    *v51 = v12;
    v51[1] = v13;
    *(v26[7] + 8 * v17) = v25;
    v52 = v26[2];
    v21 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v26[2] = v53;
LABEL_3:
    a2 = 1;
    if (!--v10)
    {
      return;
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
  sub_1BE053C14();
  __break(1u);
}

void sub_1BD603A64(unint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF78, &qword_1BE0E7D48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0xD000000000000011;
    v8 = (inited + 32);
    *(inited + 40) = 0x80000001BE1313D0;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
LABEL_23:
        v64 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
        sub_1BD03B274();
        v39 = sub_1BE0522E4();
        v41 = v40;
        v10, v40, v42, v43, v44, v45, v46, v47;
        *(inited + 48) = v39;
        *(inited + 56) = v41;
        v48 = sub_1BD1AB78C(inited);
        swift_setDeallocating();
        sub_1BD0DE53C(v8, &qword_1EBD49250, &qword_1BE0DE1E8);
        v49 = [objc_allocWithZone(MEMORY[0x1E69B8668]) init];
        v50 = *MEMORY[0x1E69BB778];
        v51 = sub_1BE052404();
        v52 = sub_1BE052404();
        v53 = sub_1BE052404();
        v54 = sub_1BE052224();
        v48, v55, v56, v57, v58, v59, v60, v61;
        [v49 reportIssueWithDomain:v50 type:v51 subtype:v52 subtypeContext:v53 payload:v54];

        return;
      }

      v64 = MEMORY[0x1E69E7CC0];
      v11 = &v64;
      sub_1BD03B254(0, i & ~(i >> 63), 0, v2, v3, v4, v5, v6);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_28;
      }

      v62 = inited;
      v63 = v8;
      v10 = v64;
      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v12 = 0;
      v8 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      while (1)
      {
        MEMORY[0x1BFB40900](v12, a1);
        v13 = [swift_unknownObjectRetain() paymentHash];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1BE052434();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        swift_unknownObjectRelease_n();
        if (!v17)
        {
          break;
        }

        v64 = v10;
        inited = v10[2];
        v23 = v10[3];
        if (inited >= v23 >> 1)
        {
          sub_1BD03B254((v23 > 1), inited + 1, 1, v18, v19, v20, v21, v22);
          v10 = v64;
        }

        ++v12;
        v10[2] = inited + 1;
        v24 = &v10[2 * inited];
        v24[4] = v15;
        v24[5] = v17;
        if (i == v12)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      ;
    }

    v25 = (a1 + 32);
    while (1)
    {
      v11 = *v25;
      v26 = [v11 paymentHash];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v28 = sub_1BE052434();
      v30 = v29;

      if (!v30)
      {
        goto LABEL_29;
      }

      v64 = v10;
      v37 = v10[2];
      v36 = v10[3];
      if (v37 >= v36 >> 1)
      {
        sub_1BD03B254((v36 > 1), v37 + 1, 1, v31, v32, v33, v34, v35);
        v10 = v64;
      }

      v10[2] = v37 + 1;
      v38 = &v10[2 * v37];
      v38[4] = v28;
      v38[5] = v30;
      ++v25;
      if (!--i)
      {
LABEL_22:
        inited = v62;
        v8 = v63;
        goto LABEL_23;
      }
    }

LABEL_28:

LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1BD603E50(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF10, &qword_1BE0E7C30);
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF18, &qword_1BE0E7C38);
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF20, &qword_1BE0E7C40);
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD604040, 0, 0);
}

uint64_t sub_1BD604040()
{
  v1 = v0[45];
  v2 = v0[33];
  v3 = v0[31];
  v4 = sub_1BE0528D4();
  v0[46] = v4;
  v5 = *(v4 - 8);
  v0[47] = v5;
  v6 = *(v5 + 56);
  v0[48] = v6;
  v0[49] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v0[50] = sub_1BE0528A4();
  sub_1BE048C84();
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v2;
  v10 = sub_1BD122C00(0, 0, v1, &unk_1BE0E7C50, v8);
  v0[51] = v10;
  v11 = swift_task_alloc();
  v0[52] = v11;
  *v11 = v0;
  v11[1] = sub_1BD6041D4;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v11, v10, v12);
}

uint64_t sub_1BD6041D4()
{
  v1 = *(*v0 + 408);

  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD6042EC, 0, 0);
}

uint64_t sub_1BD6042EC()
{
  v1 = *(v0 + 264) + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager;
  v2 = *v1;
  *(v0 + 424) = *v1;
  if (v2)
  {
    v3 = *(v0 + 256);
    v4 = *(v1 + 32);
    *(v0 + 432) = v4;
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    *(v0 + 440) = v5;
    *(v0 + 144) = v2;
    *(v0 + 152) = v5;
    *(v0 + 160) = v6;
    *(v0 + 176) = v4;
    if (v3)
    {
      v67 = v3;
      v7 = *(v0 + 248);
      if (v7 >> 62)
      {
        v8 = sub_1BE053704();
        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
LABEL_5:
          v69 = MEMORY[0x1E69E7CC0];
          v9 = v2;
          v10 = v5;
          v11 = v4;
          v17 = sub_1BD03B254(0, v8 & ~(v8 >> 63), 0, v12, v13, v14, v15, v16);
          if (v8 < 0)
          {
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v17);
          }

          v18 = 0;
          v19 = v69;
          v68 = *(v0 + 248) + 32;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1BFB40900](v18, *(v0 + 248));
            }

            else
            {
              v20 = *(v68 + 8 * v18);
            }

            v21 = v20;
            v22 = [v20 paymentHash];
            sub_1BE052434();
            v24 = v23;

            v25 = sub_1BE0524C4();
            v27 = v26;
            v24, v26, v28, v29, v30, v31, v32, v33;

            v40 = v69[2];
            v39 = v69[3];
            if (v40 >= v39 >> 1)
            {
              sub_1BD03B254((v39 > 1), v40 + 1, 1, v34, v35, v36, v37, v38);
            }

            ++v18;
            v69[2] = v40 + 1;
            v41 = &v69[2 * v40];
            v41[4] = v25;
            v41[5] = v27;
          }

          while (v8 != v18);
LABEL_19:
          v47 = *(v0 + 264);
          v48 = sub_1BD537298(v19);
          v19, v49, v50, v51, v52, v53, v54, v55;
          v56 = *(v47 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService);
          v57 = sub_1BE052A24();
          *(v0 + 448) = v57;
          v48, v58, v59, v60, v61, v62, v63, v64;
          v65 = sub_1BE052A24();
          *(v0 + 456) = v65;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 240;
          *(v0 + 24) = sub_1BD6046A0;
          v66 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
          *(v0 + 80) = MEMORY[0x1E69E9820];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_1BD9C18BC;
          *(v0 + 104) = &block_descriptor_24_1;
          *(v0 + 112) = v66;
          [v56 transactionsWithFullPaymentHashes:v57 transactionSourceIdentifiers:v65 completion:v0 + 80];
          v17 = (v0 + 16);

          return MEMORY[0x1EEE6DEC8](v17);
        }
      }

      v44 = v2;
      v45 = v5;
      v46 = v4;
      v19 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1BD6046A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD604780, 0, 0);
}

uint64_t sub_1BD604780()
{
  v58 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[30];

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v57 = v4;
      v7 = sub_1BD5322B4(0, (v6 & ~(v6 >> 63)), 0);
      if (v6 < 0)
      {
        break;
      }

      v11 = 0;
      v4 = v57;
      v55 = v6;
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB40900](v11, v5);
        }

        else
        {
          if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v13 = *(v5 + 8 * v11 + 32);
        }

        v14 = v13;
        v7 = [v13 paymentHash];
        if (!v7)
        {
          goto LABEL_30;
        }

        v15 = v7;
        v16 = sub_1BE052434();
        v18 = v17;

        v57 = v4;
        v20 = v4[2];
        v19 = v4[3];
        if (v20 >= v19 >> 1)
        {
          sub_1BD5322B4((v19 > 1), (v20 + 1), 1);
          v4 = v57;
        }

        v4[2] = v20 + 1;
        v21 = &v4[3 * v20];
        v21[4] = v16;
        v21[5] = v18;
        v21[6] = v14;
        ++v11;
        v6 = v55;
        if (v12 == v55)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v6 = sub_1BE053704();
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v4[2])
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E30, &unk_1BE0DD6C0);
      v22 = sub_1BE053A04();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC8];
    }

    v57 = v22;
    sub_1BD603734(v4, 1, &v57);
    v4, v23, v24, v25, v26, v27, v28, v29;
    v37 = v57;
    if (v6 != v57[2])
    {
      sub_1BD603A64(v5);
    }

    v39 = v54[38];
    v38 = v54[39];
    v40 = v54[36];
    v56 = v54[37];
    v41 = v54[34];
    v42 = v54[35];
    v43 = v54[31];
    v5, v30, v31, v32, v33, v34, v35, v36;
    v44 = swift_task_alloc();
    v44[2] = v43;
    v44[3] = v54 + 18;
    v44[4] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF28, &qword_1BE0E7C58);
    (*(v42 + 104))(v40, *MEMORY[0x1E69E8650], v41);
    sub_1BE052924();
    v37, v45, v46, v47, v48, v49, v50, v51;

    sub_1BE052904();
    (*(v39 + 8))(v38, v56);
    v52 = swift_task_alloc();
    v54[58] = v52;
    *v52 = v54;
    v52[1] = sub_1BD604B28;
    v10 = v54[40];
    v7 = v54 + 27;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6D9C8](v7, v8, v9, v10);
}

uint64_t sub_1BD604B28()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD604C24, 0, 0);
}

uint64_t sub_1BD604C24(uint64_t a1)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  if (v3)
  {
    v4 = *(v1 + 232);
    if (sub_1BE052974())
    {

      v3, v5, v6, v7, v8, v9, v10, v11;
    }

    else
    {
      v17 = *(v1 + 376);
      v18 = *(v1 + 352);
      v49 = *(v1 + 344);
      v50 = *(v1 + 368);
      v19 = *(v1 + 264);
      (*(v1 + 384))(v18, 1, 1);
      sub_1BE048964();
      v20 = v4;
      v21 = sub_1BE052894();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E85E0];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v19;
      v22[5] = v2;
      v22[6] = v3;
      v22[7] = v20;
      sub_1BD0DE19C(v18, v49, &unk_1EBD3E580, &unk_1BE0B9000);
      LODWORD(v21) = (*(v17 + 48))(v49, 1, v50);
      sub_1BE048964();
      if (v21 == 1)
      {
        sub_1BD0DE53C(*(v1 + 344), &unk_1EBD3E580, &unk_1BE0B9000);
      }

      else
      {
        v25 = *(v1 + 368);
        v24 = *(v1 + 376);
        v26 = *(v1 + 344);
        sub_1BE0528C4();
        (*(v24 + 8))(v26, v25);
      }

      v27 = v22[2];
      swift_unknownObjectRetain();
      v22, v28, v29, v30, v31, v32, v33, v34;
      if (v27)
      {
        swift_getObjectType();
        v35 = sub_1BE052844();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      sub_1BD0DE53C(*(v1 + 352), &unk_1EBD3E580, &unk_1BE0B9000);
      v38 = swift_allocObject();
      *(v38 + 16) = &unk_1BE0E7C68;
      *(v38 + 24) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
      if (v37 | v35)
      {
        *(v1 + 184) = 0;
        *(v1 + 192) = 0;
        *(v1 + 200) = v35;
        *(v1 + 208) = v37;
      }

      v39 = swift_task_create();

      v39, v40, v41, v42, v43, v44, v45, v46;
    }

    v47 = swift_task_alloc();
    *(v1 + 464) = v47;
    *v47 = v1;
    v47[1] = sub_1BD604B28;
    v48 = *(v1 + 320);

    return MEMORY[0x1EEE6D9C8](v1 + 216, 0, 0, v48);
  }

  else
  {
    v12 = *(v1 + 432);
    v13 = *(v1 + 440);
    v14 = *(v1 + 424);
    (*(*(v1 + 328) + 8))(*(v1 + 336), *(v1 + 320));

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_1BD604FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD5FED58(a1, v4, v5, v7, v6);
}

uint64_t sub_1BD605084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD126968;

  return sub_1BD5FF0A4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BD605158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6051BC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD126968;

  return sub_1BD5FF960(a1, v6, v7, v8, (v1 + 5), v9, v1 + v5);
}

uint64_t sub_1BD6052D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BD126968;

  return sub_1BD5FFBE8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1BD60539C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80) - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1BD126968;

  return sub_1BD600150(v4, v5, (v0 + 4), v6, v7, v0 + v3);
}

uint64_t sub_1BD60549C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD602E2C(v2);
}

uint64_t sub_1BD605554(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD6009E8(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t sub_1BD605670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD6023C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD605738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD602B00(a1, v4, v5, v7, v6);
}