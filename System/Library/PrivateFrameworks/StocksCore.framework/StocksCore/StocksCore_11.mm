void *sub_1DAB65DAC()
{
  v1 = v0;
  sub_1DAB6A354();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v22 = 136 * v17;
        sub_1DAB5916C(*(v2 + 56) + 136 * v17, v26);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DAB5916C(v26, *(v4 + 56) + v22);
        sub_1DACB71E4();
        result = sub_1DAB59344(v26, v25);
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

void *sub_1DAB65F54()
{
  v1 = v0;
  sub_1DAA82848();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAB69984(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
      sub_1DACB71E4();
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

void *sub_1DAB66138()
{
  v1 = v0;
  sub_1DAB69808();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAB69868(&v35, v34))
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
      sub_1DACB71E4();
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

void *sub_1DAB66328(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DAB698C4(0, a1, a2, a3, sub_1DAA488A4);
  v5 = *v3;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1DAB664AC()
{
  v1 = v0;
  v2 = type metadata accessor for EarningsCalendarEventModel(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
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
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for EarningsCalendarEventModel);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for EarningsCalendarEventModel);
        result = sub_1DACB71E4();
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

        v1 = v29;
        v6 = v32;
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

void *sub_1DAB66744()
{
  v1 = v0;
  v2 = type metadata accessor for Chart(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
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
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for Chart);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for Chart);
        result = sub_1DACB71E4();
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

        v1 = v29;
        v6 = v32;
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

void *sub_1DAB669DC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1DAB699E0(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    for (i = (v12 + 63) >> 6; v14; result = sub_1DACB71E4())
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v11 << 6);
      v20 = (*(v5 + 48) + 136 * v19);
      v22 = v20[1];
      v21 = v20[2];
      v23 = v20[4];
      v29[3] = v20[3];
      v29[4] = v23;
      v24 = v20[5];
      v25 = v20[6];
      v26 = v20[7];
      v30 = *(v20 + 16);
      v29[6] = v25;
      v29[7] = v26;
      v29[5] = v24;
      v29[0] = *v20;
      v29[1] = v22;
      v29[2] = v21;
      v27 = *(*(v5 + 56) + 8 * v19);
      memmove((*(v7 + 48) + 136 * v19), v20, 0x88uLL);
      *(*(v7 + 56) + 8 * v19) = v27;
      sub_1DAA806E4(v29, v28);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v5 + 64 + 8 * v11);
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

    *v4 = v7;
  }

  return result;
}

id sub_1DAB66BA0()
{
  v1 = v0;
  sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1DACB71E4();
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
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
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB66D30()
{
  v1 = v0;
  sub_1DAB69A54();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

void *sub_1DAB66EAC()
{
  v1 = v0;
  sub_1DAB6A108();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAAE8548(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 776 * v16;
      memcpy(__dst, (*(v2 + 56) + 776 * v16), 0x308uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x308uLL);
      sub_1DACB71E4();
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

        v1 = v23;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAB6705C()
{
  v1 = v0;
  sub_1DAB6A04C();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;
        sub_1DACB71E4();
        result = sub_1DAB6A0AC(&v32, v31);
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

void *sub_1DAB67214()
{
  v1 = v0;
  sub_1DAB69FEC();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

void *sub_1DAB67390()
{
  v1 = v0;
  v2 = type metadata accessor for YahooMultiQuoteItem(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE126630, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
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
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for YahooMultiQuoteItem);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for YahooMultiQuoteItem);
        result = sub_1DACB71E4();
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

        v1 = v29;
        v6 = v32;
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

void *sub_1DAB6760C()
{
  v1 = v0;
  sub_1DAB69AB4(0);
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

char *sub_1DAB67770()
{
  v1 = v0;
  v2 = type metadata accessor for SDSAuthToken(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DACB7AB4();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB6A168(0);
  v5 = *v0;
  v6 = sub_1DACB9E74();
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
        sub_1DAB697A0(*(v5 + 56) + v26, v35, type metadata accessor for SDSAuthToken);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for SDSAuthToken);
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

void *sub_1DAB67A90()
{
  v1 = v0;
  v26 = sub_1DACB9DF4();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB69BA4(0);
  v3 = *v0;
  v4 = sub_1DACB9E74();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1DAA7C694(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1DAA5616C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_1DAB67D04()
{
  v1 = v0;
  v2 = type metadata accessor for LanguageConfig(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &unk_1EE123D20, type metadata accessor for LanguageConfig, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
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
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for LanguageConfig);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for LanguageConfig);
        result = sub_1DACB71E4();
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

        v1 = v29;
        v6 = v32;
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

void *sub_1DAB67F80()
{
  v1 = v0;
  v2 = type metadata accessor for YahooQuoteDetailItem(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE126628, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
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
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for YahooQuoteDetailItem);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for YahooQuoteDetailItem);
        result = sub_1DACB71E4();
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

        v1 = v29;
        v6 = v32;
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

unint64_t sub_1DAB681FC(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11FBD8, type metadata accessor for Chart, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
    v8 = sub_1DACB9EA4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v10, v6, &qword_1EE11FBD8, type metadata accessor for Chart, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DAA4BF3C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Chart(0);
      result = sub_1DAA7C55C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Chart);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1DAB68448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAA96D8C();
    v3 = sub_1DACB9EA4();
    v4 = a1 + 32;
    sub_1DACB71F4();
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E69B8];
    while (1)
    {
      sub_1DAB6972C(v4, v15, &qword_1EE11F770, v6, v5 + 8, sub_1DAB6A54C);
      result = sub_1DAB09554(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_1DAA5616C(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1DAB685EC()
{
  result = qword_1EE11F7A8;
  if (!qword_1EE11F7A8)
  {
    sub_1DAA420F4(255, qword_1EE123DC0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F7A8);
  }

  return result;
}

unint64_t sub_1DAB68654()
{
  result = qword_1EE123FE0;
  if (!qword_1EE123FE0)
  {
    sub_1DAA7C3AC(255, &qword_1EE123FE8, MEMORY[0x1E69D6A58], MEMORY[0x1E69E5E28]);
    sub_1DAA4F4F4(&qword_1EE1240E8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FE0);
  }

  return result;
}

unint64_t sub_1DAB68788(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11D198, type metadata accessor for Quote, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
    v8 = sub_1DACB9EA4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v10, v6, &qword_1EE11D198, type metadata accessor for Quote, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DAA4BF3C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Quote(0);
      result = sub_1DAA7C55C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Quote);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1DAB68A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1DAA82848();
  v3 = sub_1DACB9EA4();
  sub_1DACB71F4();
  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v40 = *(a1 + 176);
  v5 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v5;
  v6 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v6;
  v7 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_1DAB6972C(&v31, v30, &qword_1ECBE7DF0, MEMORY[0x1E69E6158], &type metadata for StockMetadataManager.CacheEntry, sub_1DAB6A54C);
  result = sub_1DAA4BF3C(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 184);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 136 * result;
    *v14 = v32;
    v15 = v33;
    v16 = v34;
    v17 = v36;
    *(v14 + 48) = v35;
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = v37;
    v19 = v38;
    v20 = v39;
    *(v14 + 128) = v40;
    *(v14 + 96) = v19;
    *(v14 + 112) = v20;
    *(v14 + 80) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 152);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = v12[8];
    v40 = *(v12 + 18);
    v26 = v12[3];
    v33 = v12[2];
    v34 = v26;
    v27 = v12[5];
    v35 = v12[4];
    v36 = v27;
    v28 = v12[1];
    v31 = *v12;
    v32 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_1DAB6972C(&v31, v30, &qword_1ECBE7DF0, MEMORY[0x1E69E6158], &type metadata for StockMetadataManager.CacheEntry, sub_1DAB6A54C);
    result = sub_1DAA4BF3C(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAB68C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB6A4E8();
    v3 = sub_1DACB9EA4();
    v4 = a1 + 32;
    sub_1DACB71F4();
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      sub_1DAB6972C(v4, &v15, &unk_1ECBE7E48, v6, v5 + 8, sub_1DAB6A54C);
      v7 = v15;
      v8 = v16;
      result = sub_1DAA4BF3C(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = sub_1DAA5616C(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

unint64_t sub_1DAB68D7C(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11E110, type metadata accessor for CurrencyResponse, &type metadata for CurrencyManagerCacheKey);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1DAB6A280(0, &qword_1EE11D038, type metadata accessor for CurrencyResponse, sub_1DAB69930, &type metadata for CurrencyManagerCacheKey);
    v7 = sub_1DACB9EA4();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1DAB6972C(v8, v5, &qword_1EE11E110, type metadata accessor for CurrencyResponse, &type metadata for CurrencyManagerCacheKey, sub_1DAB6A214);
      result = sub_1DAB0A69C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for CurrencyResponse(0);
      result = sub_1DAA7C55C(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for CurrencyResponse);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

unint64_t sub_1DAB68FA4(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1ECBE7E30, MEMORY[0x1E695A3F0], &type metadata for NewsDisplayConfiguration);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAB6A280(0, &qword_1ECBE7E38, MEMORY[0x1E695A3F0], sub_1DAB6A300, &type metadata for NewsDisplayConfiguration);
    v8 = sub_1DACB9EA4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v10, v6, &qword_1ECBE7E30, MEMORY[0x1E695A3F0], &type metadata for NewsDisplayConfiguration, sub_1DAB6A214);
      result = sub_1DAB09648(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1DACB7184();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1DAB691F8(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1ECBE7DF8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
    v8 = sub_1DACB9EA4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v10, v6, &qword_1ECBE7DF8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DAA4BF3C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for EarningsCalendarEventModel(0);
      result = sub_1DAA7C55C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for EarningsCalendarEventModel);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1DAB69444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB698C4(0, &unk_1EE11F6B0, &qword_1EE123EA0, MEMORY[0x1E69E6158], sub_1DAA488A4);
    v3 = sub_1DACB9EA4();
    sub_1DACB71F4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DACB71E4();
      sub_1DACB71E4();
      result = sub_1DAA4BF3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DAB69568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
    v3 = sub_1DACB9EA4();
    sub_1DACB71F4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DACB71E4();
      v8 = v7;
      result = sub_1DAA4BF3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_1DAB6968C(uint64_t a1)
{
  if (!qword_1ECBE7DC8)
  {
    type metadata accessor for FileAttributeKey(255);
    sub_1DAA4F4F4(&qword_1EE11F8C0, type metadata accessor for FileAttributeKey, &unk_1DACC2458);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7DC8);
    }
  }
}

uint64_t sub_1DAB6972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1DAB697A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DAB69808()
{
  if (!qword_1EE11F718)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F718);
    }
  }
}

void sub_1DAB698C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1DACB9EB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAB69930()
{
  result = qword_1EE11E120;
  if (!qword_1EE11E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E120);
  }

  return result;
}

void sub_1DAB699E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA488A4(255, a3, a4);
    sub_1DAB07284();
    v5 = sub_1DACB9EB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAB69A54()
{
  if (!qword_1EE11D020)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D020);
    }
  }
}

void sub_1DAB69AB4(uint64_t a1)
{
  if (!qword_1EE11D008)
  {
    sub_1DAB5FC04(255, &qword_1EE11D150, type metadata accessor for ChartManagerObserverProxy, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D008);
    }
  }
}

unint64_t sub_1DAB69B4C()
{
  result = qword_1EE11F478;
  if (!qword_1EE11F478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F478);
  }

  return result;
}

void sub_1DAB69BA4(uint64_t a1)
{
  if (!qword_1EE11F690)
  {
    sub_1DACB9DF4();
    sub_1DAB69B4C();
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F690);
    }
  }
}

unint64_t sub_1DAB69C14(uint64_t a1)
{
  sub_1DAB69F80(0, &qword_1EE123A68, MEMORY[0x1E6968FB0], &type metadata for DownloadedImage);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAB69E44(0);
    v8 = sub_1DACB9EA4();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v10, v6, &qword_1EE123A68, MEMORY[0x1E6968FB0], &type metadata for DownloadedImage, sub_1DAB69F80);
      result = sub_1DAB0979C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1DACB7AB4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_1DAB69E44(uint64_t a1)
{
  if (!qword_1EE11F740)
  {
    sub_1DACB7AB4();
    sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F740);
    }
  }
}

void sub_1DAB69EE0(uint64_t a1)
{
  if (!qword_1ECBE7E10)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    sub_1DAA4F4F4(&qword_1EE11D070, type metadata accessor for CIImageRepresentationOption, &unk_1DACC2414);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7E10);
    }
  }
}

void sub_1DAB69F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB69FEC()
{
  if (!qword_1EE126638)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126638);
    }
  }
}

void sub_1DAB6A04C()
{
  if (!qword_1EE126640)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126640);
    }
  }
}

void sub_1DAB6A108()
{
  if (!qword_1EE11F6F8)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6F8);
    }
  }
}

void sub_1DAB6A168(uint64_t a1)
{
  if (!qword_1EE11F748)
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken(255);
    sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F748);
    }
  }
}

void sub_1DAB6A214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB6A280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_1DACB9EB4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAB6A300()
{
  result = qword_1EE120DD0;
  if (!qword_1EE120DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DD0);
  }

  return result;
}

void sub_1DAB6A354()
{
  if (!qword_1EE11F708)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F708);
    }
  }
}

void sub_1DAB6A3B4(uint64_t a1)
{
  if (!qword_1EE11F730)
  {
    sub_1DAB5ABC0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    sub_1DAB07284();
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F730);
    }
  }
}

void sub_1DAB6A44C(uint64_t a1)
{
  if (!qword_1EE11F6A8)
  {
    sub_1DAA420F4(255, qword_1EE123DC0, 0x1E696AD98);
    sub_1DAA420F4(255, &unk_1EE11F840, 0x1E69B5278);
    sub_1DAB685EC();
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F6A8);
    }
  }
}

void sub_1DAB6A4E8()
{
  if (!qword_1ECBE7E40)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7E40);
    }
  }
}

void sub_1DAB6A54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DAB6A5A4()
{
  result = qword_1EE1243E0;
  if (!qword_1EE1243E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243E0);
  }

  return result;
}

uint64_t sub_1DAB6A620(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_1DACB71E4();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_1DACB71E4();
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB6A764(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_1DACB71E4();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(a4 + 56);
      v17 = *(a4 + 48) + 136 * v15;
      v48[0] = *v17;
      v18 = *(v17 + 64);
      v20 = *(v17 + 16);
      v19 = *(v17 + 32);
      v48[3] = *(v17 + 48);
      v48[4] = v18;
      v48[1] = v20;
      v48[2] = v19;
      v22 = *(v17 + 96);
      v21 = *(v17 + 112);
      v23 = *(v17 + 80);
      v49 = *(v17 + 128);
      v48[6] = v22;
      v48[7] = v21;
      v48[5] = v23;
      v24 = *(v16 + 8 * v15);
      v25 = *(v17 + 112);
      v45 = *(v17 + 96);
      v46 = v25;
      v26 = *(v17 + 128);
      v27 = *(v17 + 48);
      v41 = *(v17 + 32);
      v42 = v27;
      v28 = *(v17 + 80);
      v43 = *(v17 + 64);
      v44 = v28;
      v29 = *(v17 + 16);
      v39 = *v17;
      v40 = v29;
      *&v47 = v26;
      *(&v47 + 1) = v24;
      sub_1DAA806E4(v48, &v30);
      sub_1DACB71E4();
      a2(&v50, &v39);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v30 = v39;
      v31 = v40;
      result = sub_1DAB7663C(&v30, sub_1DAB765AC);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v36 = v45;
    v37 = v46;
    v38 = v47;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v30 = v39;
    v31 = v40;
    sub_1DAB7663C(&v30, sub_1DAB765AC);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v50;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB6A988(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 48);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10[0] = *(v7 - 2);
      v10[1] = v8;
      v10[2] = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      a2(&v11, v10);
      if (v4)
      {
        break;
      }

      v7 += 3;

      if (!--v5)
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_1DAB6AA74(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;
      sub_1DACB71E4();
      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1DAB6AB14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v28 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 80);
      v11 = *(a3 + v9 + 112);
      v43 = *(a3 + v9 + 96);
      v44 = v11;
      v12 = *(a3 + v9 + 112);
      v45 = *(a3 + v9 + 128);
      v13 = *(a3 + v9 + 16);
      v14 = *(a3 + v9 + 48);
      v39 = *(a3 + v9 + 32);
      v40 = v14;
      v15 = *(a3 + v9 + 48);
      v16 = *(a3 + v9 + 80);
      v41 = *(a3 + v9 + 64);
      v42 = v16;
      v17 = *(a3 + v9 + 16);
      v38[0] = *(a3 + v9);
      v38[1] = v17;
      v52 = v43;
      v53 = v12;
      v54 = *(a3 + v9 + 128);
      v48 = v39;
      v49 = v15;
      v50 = v41;
      v51 = v10;
      v46 = v38[0];
      v47 = v13;
      sub_1DAAD4CCC(v38, &v29);
      v18 = v6(&v46);
      if (v3)
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        sub_1DAAD4D28(&v29);

        goto LABEL_15;
      }

      if (v18)
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        result = swift_isUniquelyReferenced_nonNull_native();
        v55 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1DAAA50F8(0, *(v8 + 16) + 1, 1);
          v8 = v55;
        }

        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1DAAA50F8((v19 > 1), v20 + 1, 1);
          v8 = v55;
        }

        *(v8 + 16) = v20 + 1;
        v21 = (v8 + 144 * v20);
        v21[2] = v29;
        v22 = v30;
        v23 = v31;
        v24 = v33;
        v21[5] = v32;
        v21[6] = v24;
        v21[3] = v22;
        v21[4] = v23;
        v25 = v34;
        v26 = v35;
        v27 = v37;
        v21[9] = v36;
        v21[10] = v27;
        v21[7] = v25;
        v21[8] = v26;
        v6 = v28;
      }

      else
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        result = sub_1DAAD4D28(&v29);
      }

      ++v7;
      v9 += 144;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1DAB6AD68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1DAB76FDC(v8, v18);
      v10 = v6(v18);
      if (v3)
      {
        sub_1DAB77014(v18);

        goto LABEL_15;
      }

      if (v10)
      {
        v15 = v18[0];
        v16 = v18[1];
        *v17 = v19[0];
        *&v17[10] = *(v19 + 10);
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1DAB25D38(0, *(v9 + 16) + 1, 1);
          v9 = v20;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1DAB25D38((v11 > 1), v12 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + (v12 << 6));
        *(v13 + 74) = *&v17[10];
        v13[3] = v16;
        v13[4] = *v17;
        v13[2] = v15;
        v6 = v14;
      }

      else
      {
        result = sub_1DAB77014(v18);
      }

      ++v7;
      v8 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

char *sub_1DAB6AEF4(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DACB9E14())
  {
    v7 = 0;
    v50 = a3 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC0];
    v17 = i;
    v16 = a1;
    while (1)
    {
      if (v50)
      {
        v9 = MEMORY[0x1E12777A0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v49[0] = v9;
      a1(&v39, v49);
      if (v3)
      {

        return v8;
      }

      v38[6] = v45;
      v38[7] = v46;
      v38[8] = v47;
      v38[9] = v48;
      v38[2] = v41;
      v38[3] = v42;
      v38[4] = v43;
      v38[5] = v44;
      v38[0] = v39;
      v38[1] = v40;
      if (sub_1DAB76AC8(v38) == 1)
      {
        v34 = v45;
        v35 = v46;
        v36 = v47;
        v37 = v48;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v33 = v44;
        v28 = v39;
        v29 = v40;
        sub_1DAB76AE0(&v28, qword_1EE123390, &type metadata for StockNewsFeed);
      }

      else
      {
        v34 = v45;
        v35 = v46;
        v36 = v47;
        v37 = v48;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v33 = v44;
        v28 = v39;
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAADBEDC(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1DAADBEDC((v12 > 1), v13 + 1, 1, v8);
        }

        v22 = v32;
        v23 = v33;
        v20 = v30;
        v21 = v31;
        v26 = v36;
        v27 = v37;
        v24 = v34;
        v25 = v35;
        v18 = v28;
        v19 = v29;
        *(v8 + 2) = v13 + 1;
        v14 = &v8[160 * v13];
        *(v14 + 2) = v18;
        *(v14 + 3) = v19;
        *(v14 + 6) = v22;
        *(v14 + 7) = v23;
        *(v14 + 4) = v20;
        *(v14 + 5) = v21;
        *(v14 + 10) = v26;
        *(v14 + 11) = v27;
        *(v14 + 8) = v24;
        *(v14 + 9) = v25;
        a1 = v16;
      }

      ++v7;
      if (v11 == v17)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t NewsFeedService.__allocating_init(contentContext:headlineScorerFactory:appConfigurationManager:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1DAA4D460(a2, v6 + 24);
  sub_1DAA4D460(a3, v6 + 64);
  return v6;
}

uint64_t NewsFeedType.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DAB5916C(v1, v9);
  sub_1DAB5916C(v9, v10);
  v3 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v3;
  *(a1 + 128) = v11;
  v4 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v4;
  v5 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v5;
  v6 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v6;
  sub_1DAB5916C(v9, v12);
  return sub_1DAA806E4(v12, v8);
}

__n128 sub_1DAB6B2B8@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB770D4(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_1DACC1D20;
  *(v4 + 32) = v5;
  v7 = a1[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  result = *(a1 + 42);
  *(v4 + 74) = result;
  *a2 = v4;
  return result;
}

BOOL sub_1DAB6B340(uint64_t a1)
{
  v3 = *v1 + 32;
  v4 = *(*v1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 64;
    v6 = sub_1DAB750B8(v3, a1);
    v3 = v5;
  }

  while (!v6);
  return v4 != 0;
}

uint64_t sub_1DAB6B3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6[2] = a1;
  sub_1DACB71E4();
  result = sub_1DAB6AD68(sub_1DAB754B8, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DAB6B448()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

uint64_t NewsFeedRequest.feedID.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsFeedRequest.laterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsFeedRequest(0) + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsFeedRequest.earlierDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsFeedRequest(0) + 28);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsFeedRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsFeedRequest(0);
  sub_1DAB5916C(v1 + *(v3 + 32), v6);
  sub_1DAB5916C(v6, a1);
  return sub_1DAB59344(v6, v5);
}

uint64_t NewsFeedRequest.init(feedID:maxCount:laterDate:earlierDate:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  sub_1DAB5916C(a6, v18);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v13 = type metadata accessor for NewsFeedRequest(0);
  v14 = v13[6];
  v15 = sub_1DACB7CC4();
  v16 = *(*(v15 - 8) + 32);
  v16(&a7[v14], a4, v15);
  v16(&a7[v13[7]], a5, v15);
  return sub_1DAB5916C(v18, &a7[v13[8]]);
}

uint64_t StockNewsFeed.feedID.getter()
{
  v1 = *(v0 + 8);
  sub_1DACB71E4();
  return v1;
}

uint64_t StockNewsFeed.type.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DAB5916C(v1 + 24, v5);
  sub_1DAB5916C(v5, a1);
  return sub_1DAB59344(v5, v4);
}

uint64_t StockNewsFeed.filtered(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1DAB5916C((v2 + 3), v11);
  v10[0] = v4;
  sub_1DAB6B824(v5);
  *a2 = v8;
  a2[1] = v6;
  a2[2] = v7;
  sub_1DAB5916C(v11, (a2 + 3));
  sub_1DACB71E4();
  return sub_1DAB59344(v11, v10);
}

void sub_1DAB6B824(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  sub_1DACB71E4();
  if (!v4)
  {
    sub_1DACB71E4();

    return;
  }

  v160 = a1;
  v5 = 0;
  v6 = v3 + 32;
  v169 = v4;
  v170 = v3 + 32;
  v164 = 0;
  v168 = v3;
  while (v5 < *(v3 + 16))
  {
    sub_1DAB76FDC(v6, &v195);
    *(v189 + 10) = *(v197 + 10);
    v187 = v195;
    v188 = v196;
    v189[0] = v197[0];
    v167 = BYTE9(v197[1]);
    if (BYTE9(v197[1]) == 3)
    {
      *v175 = 4;
      memset(&v175[8], 0, 40);
      v175[48] = 9;
      sub_1DAAD4C70(v175, v206);
      v204[0] = *v175;
      v204[1] = *&v175[16];
      v204[2] = *&v175[32];
      v205 = v175[48];
      v7 = *(v160 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v160 + 32;
        v174 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = (v9 + 144 * v8);
          v11 = v8;
          while (1)
          {
            if (v11 >= v7)
            {
              goto LABEL_130;
            }

            v12 = v10[7];
            v200 = v10[6];
            v201 = v12;
            v202 = v10[8];
            v13 = v10[3];
            v197[0] = v10[2];
            v197[1] = v13;
            v14 = v10[5];
            v198 = v10[4];
            v199 = v14;
            v15 = v10[1];
            v195 = *v10;
            v196 = v15;
            v8 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_131;
            }

            v16 = v10[7];
            v192 = v10[6];
            v193 = v16;
            v194 = v10[8];
            v17 = v10[3];
            v189[0] = v10[2];
            v189[1] = v17;
            v18 = v10[5];
            v190 = v10[4];
            v191 = v18;
            v19 = v10[1];
            v187 = *v10;
            v188 = v19;
            sub_1DAAD4CCC(&v195, &v178);
            if ((sub_1DAC78658(&v187) & 1) == 0)
            {
              break;
            }

            sub_1DAAD4D28(&v195);
            ++v11;
            v10 += 9;
            if (v8 == v7)
            {
              v4 = v169;
              goto LABEL_23;
            }
          }

          v20 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v203 = v174;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAAA50F8(0, v174[2] + 1, 1);
            v20 = v203;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1DAAA50F8((v22 > 1), v23 + 1, 1);
            v20 = v203;
          }

          *(v20 + 16) = v23 + 1;
          v174 = v20;
          v24 = (v20 + 144 * v23);
          v24[2] = v195;
          v25 = v196;
          v26 = v197[0];
          v27 = v198;
          v24[5] = v197[1];
          v24[6] = v27;
          v24[3] = v25;
          v24[4] = v26;
          v28 = v199;
          v29 = v200;
          v30 = v202;
          v24[9] = v201;
          v24[10] = v30;
          v24[7] = v28;
          v24[8] = v29;
          v4 = v169;
        }

        while (v8 != v7);
      }

      else
      {
        v174 = MEMORY[0x1E69E7CC0];
      }

LABEL_23:
      sub_1DAAD4D7C(v206);
      sub_1DAAD4D7C(v204);
      v3 = v168;
LABEL_24:
      v161 = 0;
      v162 = 0;
      v31 = 0;
      v163 = 1;
LABEL_29:
      if (v31 >= *(v3 + 16))
      {
        goto LABEL_128;
      }

      v171 = v31;
      sub_1DAB76FDC(v170 + (v31 << 6), v175);
      if (v177 <= 2u)
      {
        if (v177)
        {
          if (v177 != 1)
          {
            v118 = *v175;
            v195 = *&v175[8];
            v196 = *&v175[24];
            v197[0] = *&v175[40];
            LOBYTE(v197[1]) = v176;
            v119 = sub_1DAB7704C(&v195, &v178);
            if (v181 == 255)
            {
              sub_1DAB76AE0(&v178, qword_1EE122680, &type metadata for HeadlineCondition);
              if ((v118 & 0x8000000000000000) != 0)
              {
                goto LABEL_132;
              }

              v146 = v174[2];
              if (v146 >= v118)
              {
                v147 = v118;
              }

              else
              {
                v147 = v174[2];
              }

              if (v118)
              {
                v148 = v147;
              }

              else
              {
                v148 = 0;
              }

              if (v146 == v148)
              {
                sub_1DAB76AE0(&v195, qword_1EE122680, &type metadata for HeadlineCondition);
              }

              else if (v148)
              {
                sub_1DAB770D4(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
                v149 = swift_allocObject();
                v150 = _swift_stdlib_malloc_size(v149);
                v149[2] = v148;
                v149[3] = 2 * ((v150 - 32) / 144);
                swift_arrayInitWithCopy();
                sub_1DAB76AE0(&v195, qword_1EE122680, &type metadata for HeadlineCondition);

                v174 = v149;
              }

              else
              {

                sub_1DAB76AE0(&v195, qword_1EE122680, &type metadata for HeadlineCondition);
                v174 = MEMORY[0x1E69E7CC0];
              }
            }

            else
            {
              v187 = v178;
              v188 = v179;
              v189[0] = v180;
              LOBYTE(v189[1]) = v181;
              *&v178 = 0;
              MEMORY[0x1EEE9AC00](v119);
              v158[0] = &v187;
              v158[1] = &v178;
              v159 = v118;
              v120 = v164;
              v174 = sub_1DAB6AB14(sub_1DAB77124, &v157, v174);
              v164 = v120;
              sub_1DAB76AE0(&v195, qword_1EE122680, &type metadata for HeadlineCondition);
              sub_1DAAD4D7C(&v187);
            }

            goto LABEL_28;
          }

          v33 = *v175;
          v34 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
          sub_1DAB16534(v33);

          v35 = sub_1DACB9634();

          v173 = v34;
          [v34 addObjectsFromArray_];

          v36 = v174;
          v37 = v174[2];
          if (v37)
          {
            v38 = 0;
            v172 = v174[2];
            v165 = v37 - 1;
            v166 = v174 + 4;
            v32 = MEMORY[0x1E69E7CC0];
            v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            do
            {
              v40 = &v166[18 * v38];
              v41 = v38;
              while (1)
              {
                if (v41 >= *(v36 + 16))
                {
                  __break(1u);
                  goto LABEL_125;
                }

                v187 = *v40;
                v42 = v40[1];
                v43 = v40[2];
                v44 = v40[4];
                v189[1] = v40[3];
                v190 = v44;
                v188 = v42;
                v189[0] = v43;
                v45 = v40[5];
                v46 = v40[6];
                v47 = v40[8];
                v193 = v40[7];
                v194 = v47;
                v191 = v45;
                v192 = v46;
                memmove(&v195, v40, 0x90uLL);
                if (sub_1DAA9B6F0(&v195) == 1)
                {
                  v48 = *sub_1DAA9B6E0(&v195);
                  v180 = v189[0];
                  v181 = v189[1];
                  v178 = v187;
                  v179 = v188;
                  v185 = v193;
                  v186 = v194;
                  v183 = v191;
                  v184 = v192;
                  v182 = v190;
                  sub_1DAA9B6E0(&v178);
                }

                else
                {
                  v48 = *sub_1DAA9B6E0(&v195);
                }

                swift_unknownObjectRetain();
                if (([v48 respondsToSelector_] & 1) == 0)
                {
                  break;
                }

                sub_1DAAD4CCC(&v187, &v178);
                v49 = [v48 v39[110]];
                swift_unknownObjectRelease();
                if (!v49)
                {
                  goto LABEL_47;
                }

                v50 = [v49 stocksClusterID];
                swift_unknownObjectRelease();
                if (!v50)
                {
                  goto LABEL_47;
                }

                v51 = v173;
                [v173 addObject_];
                v52 = [v51 countForObject_];

                v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                if (v52 <= 1)
                {
                  goto LABEL_47;
                }

                ++v41;
                sub_1DAAD4D28(&v187);
                v40 += 9;
                v36 = v174;
                if (v172 == v41)
                {
                  goto LABEL_26;
                }
              }

              sub_1DAAD4CCC(&v187, &v178);
              swift_unknownObjectRelease();
LABEL_47:
              v53 = swift_isUniquelyReferenced_nonNull_native();
              *&v206[0] = v32;
              if ((v53 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v32 + 16) + 1, 1);
                v32 = *&v206[0];
              }

              v55 = *(v32 + 16);
              v54 = *(v32 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_1DAAA50F8((v54 > 1), v55 + 1, 1);
                v32 = *&v206[0];
              }

              v38 = v41 + 1;
              *(v32 + 16) = v55 + 1;
              v56 = (v32 + 144 * v55);
              v56[2] = v187;
              v57 = v188;
              v58 = v189[0];
              v59 = v190;
              v56[5] = v189[1];
              v56[6] = v59;
              v56[3] = v57;
              v56[4] = v58;
              v60 = v191;
              v61 = v192;
              v62 = v194;
              v56[9] = v193;
              v56[10] = v62;
              v56[7] = v60;
              v56[8] = v61;
              v36 = v174;
              v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            }

            while (v165 != v41);
LABEL_26:

            v174 = v32;
LABEL_27:
            v3 = v168;
            v4 = v169;
            goto LABEL_28;
          }
        }

        else
        {
          v86 = *v175;
          v87 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
          sub_1DAB16534(v86);

          v88 = sub_1DACB9634();

          v173 = v87;
          [v87 addObjectsFromArray_];

          v89 = v174;
          v90 = v174[2];
          if (v90)
          {
            v91 = 0;
            v92 = v174 + 4;
            v172 = v174[2];
            v165 = v90 - 1;
            v32 = MEMORY[0x1E69E7CC0];
            v166 = v174 + 4;
LABEL_70:
            v93 = &v92[18 * v91];
            v94 = v91;
            while (v94 < *(v89 + 16))
            {
              v187 = *v93;
              v95 = v93[1];
              v96 = v93[2];
              v97 = v93[4];
              v189[1] = v93[3];
              v190 = v97;
              v188 = v95;
              v189[0] = v96;
              v98 = v93[5];
              v99 = v93[6];
              v100 = v93[8];
              v193 = v93[7];
              v194 = v100;
              v191 = v98;
              v192 = v99;
              memmove(&v195, v93, 0x90uLL);
              if (sub_1DAA9B6F0(&v195) == 1)
              {
                v101 = *sub_1DAA9B6E0(&v195);
                v180 = v189[0];
                v181 = v189[1];
                v178 = v187;
                v179 = v188;
                v185 = v193;
                v186 = v194;
                v183 = v191;
                v184 = v192;
                v182 = v190;
                sub_1DAA9B6E0(&v178);
              }

              else
              {
                v101 = *sub_1DAA9B6E0(&v195);
              }

              swift_unknownObjectRetain();
              sub_1DAAD4CCC(&v187, &v178);
              v102 = [v101 articleID];
              swift_unknownObjectRelease();
              v103 = v102;
              v104 = v102;
              if (!v102)
              {
                sub_1DACB9324();
                v104 = sub_1DACB92F4();

                sub_1DACB9324();
                v103 = sub_1DACB92F4();
              }

              v105 = v102;
              v106 = v173;
              [v173 addObject_];

              v107 = [v106 countForObject_];
              if (v107 <= 1)
              {
                v108 = swift_isUniquelyReferenced_nonNull_native();
                *&v206[0] = v32;
                if ((v108 & 1) == 0)
                {
                  sub_1DAAA50F8(0, *(v32 + 16) + 1, 1);
                  v32 = *&v206[0];
                }

                v110 = *(v32 + 16);
                v109 = *(v32 + 24);
                if (v110 >= v109 >> 1)
                {
                  sub_1DAAA50F8((v109 > 1), v110 + 1, 1);
                  v32 = *&v206[0];
                }

                v91 = v94 + 1;
                *(v32 + 16) = v110 + 1;
                v111 = (v32 + 144 * v110);
                v111[2] = v187;
                v112 = v188;
                v113 = v189[0];
                v114 = v190;
                v111[5] = v189[1];
                v111[6] = v114;
                v111[3] = v112;
                v111[4] = v113;
                v115 = v191;
                v116 = v192;
                v117 = v194;
                v111[9] = v193;
                v111[10] = v117;
                v111[7] = v115;
                v111[8] = v116;
                v92 = v166;
                v89 = v174;
                if (v165 != v94)
                {
                  goto LABEL_70;
                }

                goto LABEL_26;
              }

              ++v94;
              sub_1DAAD4D28(&v187);
              v93 += 9;
              v89 = v174;
              if (v172 == v94)
              {
                goto LABEL_26;
              }
            }

LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            break;
          }
        }

        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      if (v177 != 3)
      {
        if (v177 == 4)
        {
          v206[0] = *v175;
          v206[1] = *&v175[16];
          v206[2] = *&v175[32];
          v207 = v175[48];
          sub_1DAAD4C70(v206, v204);
          v63 = v174;
          v64 = v174[2];
          if (v64)
          {
            v65 = 0;
            v66 = (v174 + 4);
            v172 = v64 - 1;
            v67 = MEMORY[0x1E69E7CC0];
            v173 = (v174 + 4);
            do
            {
              v68 = &v66[144 * v65];
              v69 = v65;
              while (1)
              {
                if (v69 >= *(v63 + 16))
                {
LABEL_125:
                  __break(1u);
                  goto LABEL_126;
                }

                v195 = *v68;
                v70 = v68[1];
                v71 = v68[2];
                v72 = v68[4];
                v197[1] = v68[3];
                v198 = v72;
                v196 = v70;
                v197[0] = v71;
                v73 = v68[5];
                v74 = v68[6];
                v75 = v68[8];
                v201 = v68[7];
                v202 = v75;
                v199 = v73;
                v200 = v74;
                v65 = v69 + 1;
                v192 = v74;
                v193 = v201;
                v194 = v75;
                v189[0] = v197[0];
                v189[1] = v197[1];
                v190 = v198;
                v191 = v73;
                v187 = v195;
                v188 = v196;
                sub_1DAAD4CCC(&v195, &v178);
                if ((sub_1DAC78658(&v187) & 1) == 0)
                {
                  break;
                }

                sub_1DAAD4D28(&v195);
                v68 += 9;
                ++v69;
                if (v64 == v65)
                {
                  goto LABEL_103;
                }
              }

              v76 = swift_isUniquelyReferenced_nonNull_native();
              v203 = v67;
              if ((v76 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v67 + 16) + 1, 1);
                v67 = v203;
              }

              v78 = *(v67 + 16);
              v77 = *(v67 + 24);
              if (v78 >= v77 >> 1)
              {
                sub_1DAAA50F8((v77 > 1), v78 + 1, 1);
                v67 = v203;
              }

              *(v67 + 16) = v78 + 1;
              v79 = (v67 + 144 * v78);
              v79[2] = v195;
              v80 = v196;
              v81 = v197[0];
              v82 = v198;
              v79[5] = v197[1];
              v79[6] = v82;
              v79[3] = v80;
              v79[4] = v81;
              v83 = v199;
              v84 = v200;
              v85 = v202;
              v79[9] = v201;
              v79[10] = v85;
              v79[7] = v83;
              v79[8] = v84;
              v66 = v173;
              v63 = v174;
            }

            while (v172 != v69);
          }

          else
          {
            v67 = MEMORY[0x1E69E7CC0];
          }

LABEL_103:
          sub_1DAAD4D7C(v204);

          sub_1DAAD4D7C(v206);
          v174 = v67;
        }

        else
        {
          v121 = *v175;
          v122 = v174[2];
          if (v122)
          {
            v123 = 0;
            v172 = *v175 + 32;
            v173 = (v174 + 4);
            v124 = MEMORY[0x1E69E7CC0];
            while (v123 < v174[2])
            {
              v125 = &v173[144 * v123];
              v126 = v125[1];
              v127 = v125[2];
              v128 = v125[4];
              v197[1] = v125[3];
              v198 = v128;
              v196 = v126;
              v197[0] = v127;
              v129 = v125[5];
              v130 = v125[6];
              v131 = v125[8];
              v201 = v125[7];
              v202 = v131;
              v199 = v129;
              v200 = v130;
              v195 = *v125;
              ++v123;
              v132 = v121;
              v133 = *(v121 + 16);
              sub_1DAAD4CCC(&v195, &v187);
              v134 = v133 + 1;
              v135 = v172;
              do
              {
                if (!--v134)
                {
                  sub_1DAAD4D28(&v195);
                  goto LABEL_92;
                }

                v192 = v200;
                v193 = v201;
                v194 = v202;
                v189[0] = v197[0];
                v189[1] = v197[1];
                v190 = v198;
                v191 = v199;
                v187 = v195;
                v188 = v196;
                v135 += 56;
              }

              while ((sub_1DAC78658(&v187) & 1) != 0);
              v136 = swift_isUniquelyReferenced_nonNull_native();
              *&v178 = v124;
              if ((v136 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v124 + 16) + 1, 1);
                v124 = v178;
              }

              v138 = *(v124 + 16);
              v137 = *(v124 + 24);
              if (v138 >= v137 >> 1)
              {
                sub_1DAAA50F8((v137 > 1), v138 + 1, 1);
                v124 = v178;
              }

              *(v124 + 16) = v138 + 1;
              v139 = (v124 + 144 * v138);
              v139[2] = v195;
              v140 = v196;
              v141 = v197[0];
              v142 = v198;
              v139[5] = v197[1];
              v139[6] = v142;
              v139[3] = v140;
              v139[4] = v141;
              v143 = v199;
              v144 = v200;
              v145 = v202;
              v139[9] = v201;
              v139[10] = v145;
              v139[7] = v143;
              v139[8] = v144;
LABEL_92:
              v121 = v132;
              if (v123 == v122)
              {
                goto LABEL_115;
              }
            }

            goto LABEL_127;
          }

          v124 = MEMORY[0x1E69E7CC0];
LABEL_115:

          v174 = v124;
        }

        goto LABEL_27;
      }

      v163 = 0;
      v161 = *&v175[8];
      v162 = *v175;
LABEL_28:
      v31 = v171 + 1;
      if (v171 + 1 == v4)
      {
        if (v167 == 3 && (v163 & 1) == 0)
        {
          v151 = swift_allocObject();
          v152 = v161;
          *(v151 + 16) = v161;
          *(v151 + 64) = 5;
          v153 = sub_1DACB9674();

          v154 = v162;
          if (v153 < v162)
          {

            *&v195 = v154;
            *(&v195 + 1) = v152;
            BYTE9(v197[1]) = 3;
            MEMORY[0x1EEE9AC00](v155);
            v159 = &v195;
            v156 = sub_1DAB6AD68(sub_1DAB77304, v158, v3);
            sub_1DAB77014(&v195);
            *&v195 = v156;
            sub_1DAB6B824(v160);
          }
        }

        return;
      }

      goto LABEL_29;
    }

    ++v5;
    sub_1DAB77014(&v187);
    v6 += 64;
    if (v4 == v5)
    {
      v174 = sub_1DACB71E4();
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t StockNewsFeed.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_1DAB5916C(v2 + 24, v9);
  *a2 = a1;
  a2[1] = v6;
  a2[2] = v5;
  sub_1DAB5916C(v9, (a2 + 3));
  sub_1DACB71E4();
  sub_1DAB59344(v9, &v8);
  return sub_1DACB71E4();
}

uint64_t StockNewsFeed.sorted(_:)@<X0>(unsigned __int8 *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1DAB5916C((v2 + 3), v12);
  if (v4 > 1)
  {
    v11[0] = v5;
    sub_1DACB71E4();
    if (v4 == 2)
    {
      v8 = sub_1DAB7197C;
      v9 = sub_1DAB7043C;
    }

    else
    {
      v8 = sub_1DAB70BB8;
      v9 = sub_1DAB70114;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v11[0] = v5;
    sub_1DACB71E4();
    v8 = sub_1DAB72740;
    v9 = sub_1DAB70764;
LABEL_8:
    sub_1DAB6FF88(v11, v8, v9);
    v5 = v11[0];
    goto LABEL_9;
  }

  sub_1DACB71E4();
LABEL_9:
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  sub_1DAB5916C(v12, (a2 + 3));
  sub_1DACB71E4();
  return sub_1DAB59344(v12, v11);
}

uint64_t StockNewsFeed.limited(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v24[3] = v2[4];
  v24[4] = v4;
  v5 = v2[3];
  v24[1] = v2[2];
  v24[2] = v5;
  v6 = v2[9];
  v24[7] = v2[8];
  v24[8] = v6;
  v7 = v2[7];
  v24[5] = v2[6];
  v24[6] = v7;
  v8 = v2[1];
  v23 = *v2;
  v24[0] = v8;
  v9 = v23;
  if (*(v23 + 16) <= result)
  {
    v12 = *(&v23 + 1);
    v11 = *&v24[0];
    sub_1DAB07228(&v23, &v20);
    v13 = v24 + 8;
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1DAB0310C(v23, v23 + 32, 0, (2 * result) | 1);
    v9 = v10;
    v12 = *(&v23 + 1);
    v11 = *&v24[0];
    sub_1DAB5916C(v24 + 8, v21 + 8);
    sub_1DAB5916C(v21 + 8, v19);
    sub_1DACB71E4();
    sub_1DAB59344(v24 + 8, v22);
    v13 = v19;
LABEL_5:
    sub_1DAB5916C(v13, v22);
    *&v20 = v9;
    *(&v20 + 1) = v12;
    *&v21[0] = v11;
    result = sub_1DAB5916C(v22, v21 + 8);
    v14 = v21[6];
    a2[6] = v21[5];
    a2[7] = v14;
    v15 = v21[8];
    a2[8] = v21[7];
    a2[9] = v15;
    v16 = v21[2];
    a2[2] = v21[1];
    a2[3] = v16;
    v17 = v21[4];
    a2[4] = v21[3];
    a2[5] = v17;
    v18 = v21[0];
    *a2 = v20;
    a2[1] = v18;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t StockNewsFeed.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = (*v2 + 144 * result);
    v15[0] = v3[2];
    v4 = v3[3];
    v5 = v3[4];
    v6 = v3[6];
    v15[3] = v3[5];
    v15[4] = v6;
    v15[1] = v4;
    v15[2] = v5;
    v7 = v3[7];
    v8 = v3[8];
    v9 = v3[10];
    v15[7] = v3[9];
    v15[8] = v9;
    v15[5] = v7;
    v15[6] = v8;
    v10 = v3[9];
    a2[6] = v3[8];
    a2[7] = v10;
    a2[8] = v3[10];
    v11 = v3[5];
    a2[2] = v3[4];
    a2[3] = v11;
    v12 = v3[7];
    a2[4] = v3[6];
    a2[5] = v12;
    v13 = v3[3];
    *a2 = v3[2];
    a2[1] = v13;
    return sub_1DAAD4CCC(v15, &v14);
  }

  return result;
}

Swift::Int __swiftcall StockNewsFeed.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t StockNewsFeed.makeIterator()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  sub_1DAB0708C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DAB07084;
  *(v3 + 24) = v2;
  sub_1DACB71E4();
  return v3;
}

void sub_1DAB6CC6C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    sub_1DAB76F60(&v19);
    v7 = v26;
    a2[6] = v25;
    a2[7] = v7;
    a2[8] = v27;
    v8 = v22;
    a2[2] = v21;
    a2[3] = v8;
    v9 = v24;
    a2[4] = v23;
    a2[5] = v9;
    v10 = v20;
    *a2 = v19;
    a2[1] = v10;
  }

  else if (v5 >= v6)
  {
    __break(1u);
  }

  else
  {
    v11 = (v4 + 144 * v5);
    v19 = v11[2];
    v12 = v11[3];
    v13 = v11[4];
    v14 = v11[6];
    v22 = v11[5];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = v11[7];
    v16 = v11[8];
    v17 = v11[10];
    v26 = v11[9];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    memmove(a2, v11 + 2, 0x90uLL);
    *(a1 + 24) = v5 + 1;
    nullsub_1();
    sub_1DAAD4CCC(&v19, &v18);
  }
}

void (*sub_1DAB6CD74(void (**a1)(uint64_t a1), void *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x1B0uLL);
  }

  v6 = result;
  *a1 = result;
  if (*a2 >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = (*v2 + 144 * *a2);
    *result = v7[2];
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    *(result + 3) = v7[5];
    *(result + 4) = v10;
    *(result + 1) = v8;
    *(result + 2) = v9;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    *(result + 7) = v7[9];
    *(result + 8) = v13;
    *(result + 5) = v11;
    *(result + 6) = v12;
    memmove(result + 144, v7 + 2, 0x90uLL);
    sub_1DAAD4CCC(v6, v6 + 288);
    return sub_1DAB6CE48;
  }

  return result;
}

void sub_1DAB6CE48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 256);
  v1[24] = *(*a1 + 240);
  v1[25] = v2;
  v1[26] = v1[17];
  v3 = v1[12];
  v1[20] = v1[11];
  v1[21] = v3;
  v4 = v1[14];
  v1[22] = v1[13];
  v1[23] = v4;
  v5 = v1[10];
  v1[18] = v1[9];
  v1[19] = v5;
  sub_1DAAD4D28((v1 + 18));

  free(v1);
}

uint64_t *sub_1DAB6CEAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[5];
  v16[4] = v2[4];
  v16[5] = v5;
  v6 = v2[3];
  v16[2] = v2[2];
  v16[3] = v6;
  v7 = v2[9];
  v16[8] = v2[8];
  v16[9] = v7;
  v8 = v2[7];
  v16[6] = v2[6];
  v16[7] = v8;
  v9 = v2[1];
  v16[0] = *v2;
  v16[1] = v9;
  if (v3 < 0 || *(*&v16[0] + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v2[7];
    *(a2 + 112) = v2[6];
    *(a2 + 128) = v10;
    v11 = v2[9];
    *(a2 + 144) = v2[8];
    *(a2 + 160) = v11;
    v12 = v2[3];
    *(a2 + 48) = v2[2];
    *(a2 + 64) = v12;
    v13 = v2[5];
    *(a2 + 80) = v2[4];
    *(a2 + 96) = v13;
    v14 = v2[1];
    *(a2 + 16) = *v2;
    *(a2 + 32) = v14;
    *a2 = v3;
    *(a2 + 8) = v4;
    return sub_1DAB07228(v16, &v15);
  }

  return result;
}

uint64_t sub_1DAB6CF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[5];
  v24 = v1[6];
  v25 = v2;
  v4 = v1[7];
  v5 = v1[9];
  v26 = v1[8];
  v6 = v26;
  v27 = v5;
  v7 = v1[3];
  v9 = v1[1];
  v20 = v1[2];
  v8 = v20;
  v21 = v7;
  v10 = v1[3];
  v11 = v1[5];
  v22 = v1[4];
  v12 = v22;
  v23 = v11;
  v13 = v1[1];
  v19[0] = *v1;
  v14 = v19[0];
  v19[1] = v13;
  *(a1 + 96) = v24;
  *(a1 + 112) = v4;
  v15 = v1[9];
  *(a1 + 128) = v6;
  *(a1 + 144) = v15;
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v3;
  *a1 = v14;
  *(a1 + 16) = v9;
  v16 = *(*&v19[0] + 16);
  *(a1 + 160) = 0;
  *(a1 + 168) = v16;
  return sub_1DAB07228(v19, &v18);
}

uint64_t *sub_1DAB6CFF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAB6D020@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DAB75538(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1DAB6D058(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1DAB6D098(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB6D0EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1DAB6D104(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1DAB6D11C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 7);
  v11[6] = *(v1 + 6);
  v11[7] = v4;
  v5 = *(v1 + 9);
  v11[8] = *(v1 + 8);
  v11[9] = v5;
  v6 = *(v1 + 3);
  v11[2] = *(v1 + 2);
  v11[3] = v6;
  v7 = *(v1 + 5);
  v11[4] = *(v1 + 4);
  v11[5] = v7;
  v8 = *(v1 + 1);
  v11[0] = *v1;
  v11[1] = v8;
  sub_1DACB71E4();
  sub_1DAB07030(v11);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = 0;
  sub_1DAB0708C(0);
  result = swift_allocObject();
  *(result + 16) = sub_1DAB77334;
  *(result + 24) = v9;
  *a1 = result;
  return result;
}

void *sub_1DAB6D1D8()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v2 = v0[9];
  v8[8] = v0[8];
  v8[9] = v2;
  v3 = v0[3];
  v8[2] = v0[2];
  v8[3] = v3;
  v4 = v0[5];
  v8[4] = v0[4];
  v8[5] = v4;
  v5 = v0[1];
  v8[0] = *v0;
  v8[1] = v5;
  v6 = sub_1DAB02F80(v8);
  sub_1DAB07030(v8);
  return v6;
}

uint64_t NewsFeedService.init(contentContext:headlineScorerFactory:appConfigurationManager:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DAA4D460(a2, v3 + 24);
  sub_1DAA4D460(a3, v3 + 64);
  return v3;
}

uint64_t sub_1DAB6D2F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE120080 != -1)
  {
    swift_once();
  }

  sub_1DAB76D80(qword_1EE123158, v5, type metadata accessor for NewsFeedService, &protocol conformance descriptor for NewsFeedService);
  sub_1DACB7F84();
  if (v37)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v8 = sub_1DACB9AD4();
    v9 = sub_1DACB9914();
    sub_1DACB8C64("will not use edge caching for feed fetch because it's disabled in settings", 74, 2, &dword_1DAA3F000, v8, v9, MEMORY[0x1E69E7CC0]);

    v10 = sub_1DAB6E3FC(a1);
    v11 = MEMORY[0x1EEE9AC00](v10);
    *(&v36 - 4) = v2;
    *(&v36 - 3) = v11;
    *(&v36 - 16) = 0;
    sub_1DAB76CAC(0);
    swift_allocObject();
LABEL_7:
    v26 = sub_1DACB8B44();

    return v26;
  }

  v12 = *(a1 + 16);
  v13 = v1[11];
  v14 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v13);
  (*(v14 + 8))(v13, v14);
  v15 = *(v7 + 32);
  sub_1DAB7663C(v7, type metadata accessor for AppConfiguration);
  if (v15 < v12)
  {
    sub_1DAA41D64(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DACC1D40;
    v17 = MEMORY[0x1E69E6530];
    v18 = MEMORY[0x1E69E65A8];
    v19 = *(a1 + 16);
    *(v16 + 56) = MEMORY[0x1E69E6530];
    *(v16 + 64) = v18;
    *(v16 + 32) = v19;
    v20 = v2[11];
    v21 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v20);
    (*(v21 + 8))(v20, v21);
    v22 = *(v7 + 32);
    sub_1DAB7663C(v7, type metadata accessor for AppConfiguration);
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v22;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v23 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64("will not use edge caching for feed fetch because there are too many individual stocks, count=%lu, max=%lu", v36, v37);

    v24 = sub_1DAB6E3FC(a1);
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v36 - 4) = v2;
    *(&v36 - 3) = v25;
    *(&v36 - 16) = 0;
    sub_1DAB76CAC(0);
    swift_allocObject();
    goto LABEL_7;
  }

  v27 = *(a1 + 16);
  if (v27 == 1)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v28 = sub_1DACB9AD4();
    v29 = sub_1DACB9914();
    sub_1DACB8C64("will use edge caching for a single-feed fetch", 45, 2, &dword_1DAA3F000, v28, v29, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DAA41D64(0);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E6530];
    *(v30 + 16) = xmmword_1DACC1D20;
    v32 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v27;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v28 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64("will use edge caching by fanning out a multi-feed fetch, count=%lu", v36);
  }

  sub_1DAB76CAC(0);
  v37 = sub_1DAB74DF4(a1, sub_1DAB76CE0, v2);
  v33 = sub_1DACB89D4();
  sub_1DAB76CE8(0);
  sub_1DAB76D80(&qword_1EE11FA50, 255, sub_1DAB76CE8, MEMORY[0x1E69E6340]);
  sub_1DACB8A34();

  v37 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v34 = sub_1DACB89D4();
  sub_1DAB766FC(0);
  sub_1DAB76D80(&qword_1EE11FA18, 255, sub_1DAB76DC8, MEMORY[0x1E69E6328]);
  v26 = sub_1DACB8B64();

  return v26;
}

uint64_t sub_1DAB6D918(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  sub_1DAB767C0(0, &unk_1EE11FDF8, &qword_1EE11F968, 0x1E69B53A0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB8B44();

  *(swift_allocObject() + 16) = v2;
  v3 = sub_1DACB89D4();
  sub_1DAB76828(0);
  v4 = sub_1DACB8A64();

  return v4;
}

uint64_t sub_1DAB6DA44(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = a2[6];
  v5 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
  v6 = *(v5 + 8);
  v7 = v3;
  sub_1DACB71E4();
  v6(v4, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = v7;
  v10 = sub_1DACB89D4();
  sub_1DAB768D4(0);
  v11 = sub_1DACB8A64();

  return v11;
}

uint64_t sub_1DAB6DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  sub_1DAB76A40(a1, v10, sub_1DAB768D4);
  v6 = v10[0];
  v5 = v10[1];
  sub_1DAA4D460(&v11, v12);
  v9[2] = a2;
  v9[3] = v6;
  v9[4] = v12;
  v7 = sub_1DAB6AEF4(sub_1DAB76AA8, v9, v5);

  *a3 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void sub_1DAB6DC0C(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v9 = [*a1 feedID];
  v10 = sub_1DACB9324();
  v12 = v11;

  if (!*(a2 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_1DAA4BF3C(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:
    sub_1DAB76B50(v120);
    v33 = *&v120[112];
    a5[6] = *&v120[96];
    a5[7] = v33;
    v34 = v121;
    a5[8] = *&v120[128];
    a5[9] = v34;
    v35 = *&v120[48];
    a5[2] = *&v120[32];
    a5[3] = v35;
    v36 = *&v120[80];
    a5[4] = *&v120[64];
    a5[5] = v36;
    v37 = *&v120[16];
    *a5 = *v120;
    a5[1] = v37;
    return;
  }

  sub_1DAB5916C(*(a2 + 56) + 136 * v13, v119);
  sub_1DAA41D64(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC2610;
  sub_1DAB59344(v119, v120);
  v17 = [v8 feedItems];
  v83 = a5;
  v85 = a4;
  if (v17)
  {
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    v18 = sub_1DACB9644();

    if (v18 >> 62)
    {
      v17 = sub_1DACB9E14();
    }

    else
    {
      v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v19 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v19;
  *(v16 + 32) = v17;
  sub_1DAB5916C(v119, &v110);
  v20 = v111;
  v21 = MEMORY[0x1E69E6158];
  *(v16 + 96) = MEMORY[0x1E69E6158];
  v22 = sub_1DAA443C8();
  *(v16 + 104) = v22;
  *(v16 + 72) = v20;
  sub_1DACB71E4();
  v23 = [v8 feedID];
  v24 = sub_1DACB9324();
  v26 = v25;

  *(v16 + 136) = v21;
  *(v16 + 144) = v22;
  *(v16 + 112) = v24;
  *(v16 + 120) = v26;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v27 = sub_1DACB9AD4();
  v28 = sub_1DACB9914();
  sub_1DACB8C64("fetched %lu feed items for stock %{public}@, feed ID %{public}@", 63, 2, &dword_1DAA3F000, v27, v28, v16);

  v29 = [v8 feedItems];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v29;
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    v32 = sub_1DACB9644();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v122 = v30;
  v84 = v8;
  v38 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
LABEL_47:
    v39 = sub_1DACB9E14();
  }

  else
  {
    v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = 0;
  v86 = MEMORY[0x1E69E7CC0];
  while (v39 != v40)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1E12777A0](v40, v32);
    }

    else
    {
      if (v40 >= *(v38 + 16))
      {
        goto LABEL_43;
      }

      v41 = *(v32 + 8 * v40 + 32);
    }

    v42 = v41;
    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v44 = [a3 objectForKey_];

    ++v40;
    if (v44)
    {
      MEMORY[0x1E12770F0]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v86 = v122;
      v40 = v43;
    }
  }

  v45 = v85[3];
  v32 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v45);
  v105 = v116;
  v106 = v117;
  v107 = v118;
  v101 = v112;
  v102 = v113;
  v103 = v114;
  v104 = v115;
  v99 = v110;
  v100 = v111;
  nullsub_1();
  *&v120[96] = v105;
  *&v120[112] = v106;
  *&v120[128] = v107;
  *&v120[32] = v101;
  *&v120[48] = v102;
  *&v120[64] = v103;
  *&v120[80] = v104;
  *v120 = v99;
  *&v120[16] = v100;
  v46 = *(v32 + 16);
  sub_1DAB59344(v119, &v88);
  v47 = v46(v86, v120, v45, v32);
  v108[6] = *&v120[96];
  v108[7] = *&v120[112];
  v109 = *&v120[128];
  v108[2] = *&v120[32];
  v108[3] = *&v120[48];
  v108[4] = *&v120[64];
  v108[5] = *&v120[80];
  v108[0] = *v120;
  v108[1] = *&v120[16];
  sub_1DAB76B6C(v108);
  if (v86 >> 62)
  {
    v48 = sub_1DACB9E14();
    v49 = v84;
    if (v48)
    {
      goto LABEL_27;
    }

LABEL_49:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v74 = [v49 feedID];
    v75 = sub_1DACB9324();
    v77 = v76;

    *&v88 = v38;
    *(&v88 + 1) = v75;
    *&v89 = v77;
    sub_1DAB5916C(v119, &v89 + 8);
    *&v120[96] = v94;
    *&v120[112] = v95;
    *&v120[128] = v96;
    v121 = v97;
    *&v120[32] = v90;
    *&v120[48] = v91;
    *&v120[64] = v92;
    *&v120[80] = v93;
    *v120 = v88;
    *&v120[16] = v89;
    nullsub_1();
    v78 = *&v120[112];
    v83[6] = *&v120[96];
    v83[7] = v78;
    v79 = v121;
    v83[8] = *&v120[128];
    v83[9] = v79;
    v80 = *&v120[48];
    v83[2] = *&v120[32];
    v83[3] = v80;
    v81 = *&v120[80];
    v83[4] = *&v120[64];
    v83[5] = v81;
    v82 = *&v120[16];
    *v83 = *v120;
    v83[1] = v82;
    return;
  }

  v48 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v84;
  if (!v48)
  {
    goto LABEL_49;
  }

LABEL_27:
  v98 = MEMORY[0x1E69E7CC0];
  sub_1DAAA50F8(0, v48 & ~(v48 >> 63), 0);
  if (v48 < 0)
  {
    __break(1u);
  }

  else
  {
    v50 = 0;
    v38 = v98;
    v51 = v86;
    a3 = (v86 & 0xC000000000000001);
    v85 = (v48 - 1);
    while (1)
    {
      if (a3)
      {
        v32 = MEMORY[0x1E12777A0](v50, v51);
      }

      else
      {
        if (v50 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v32 = *(v51 + 8 * v50 + 32);
        swift_unknownObjectRetain();
      }

      v52 = [swift_unknownObjectRetain() identifier];
      v53 = sub_1DACB9324();
      if (!*(v47 + 16))
      {
        break;
      }

      v55 = sub_1DAA4BF3C(v53, v54);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_44;
      }

      v58 = *(v47 + 56) + 136 * v55;
      v88 = *v58;
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      v61 = *(v58 + 32);
      v89 = *(v58 + 16);
      v90 = v61;
      v91 = v59;
      v92 = v60;
      v62 = *(v58 + 80);
      v63 = *(v58 + 96);
      v64 = *(v58 + 112);
      *&v96 = *(v58 + 128);
      v94 = v63;
      v95 = v64;
      v93 = v62;
      sub_1DAAA5860(&v88, v120);
      swift_unknownObjectRelease();
      v98 = v38;
      v66 = *(v38 + 16);
      v65 = *(v38 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1DAAA50F8((v65 > 1), v66 + 1, 1);
        v38 = v98;
      }

      *&v120[88] = v93;
      *&v120[104] = v94;
      *&v120[120] = v95;
      *&v120[24] = v89;
      *&v120[40] = v90;
      *&v120[56] = v91;
      *&v120[72] = v92;
      *&v120[136] = v96;
      *&v120[8] = v88;
      *v120 = v32;
      sub_1DAAA58BC(v120);
      *(v38 + 16) = v66 + 1;
      v67 = (v38 + 144 * v66);
      v67[2] = *v120;
      v68 = *&v120[16];
      v69 = *&v120[32];
      v70 = *&v120[64];
      v67[5] = *&v120[48];
      v67[6] = v70;
      v67[3] = v68;
      v67[4] = v69;
      v71 = *&v120[80];
      v72 = *&v120[96];
      v73 = *&v120[128];
      v67[9] = *&v120[112];
      v67[10] = v73;
      v67[7] = v71;
      v67[8] = v72;
      if (v85 == v50)
      {

        v49 = v84;
        goto LABEL_50;
      }

      ++v50;
      v51 = v86;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_45;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1DAB6E3FC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1DACB71E4();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v34 = v2;
  v35 = result;
  v33 = v6;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
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
      __break(1u);
      return result;
    }

LABEL_10:
    v41 = v5;
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11;
    v38 = v11 >> 62;
    v13 = v11 >> 62 ? sub_1DACB9E14() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:
    sub_1DACB71E4();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v13;
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_1DACB9E14();
      }

LABEL_21:
      v18 = v1;
      result = sub_1DACB9CD4();
      v9 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v18 = v1;
LABEL_22:
    v37 = v9;
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = v12;
    if (v38)
    {
      v23 = v17;
      result = sub_1DACB9E14();
      v17 = v23;
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v41 - 1) & v41;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_42;
      }

      v24 = v17 + 8 * v19 + 32;
      v41 &= v41 - 1;
      v36 = v17;
      if (v38)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_1DAB767C0(0, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
        sub_1DAB76E44();
        for (i = 0; i != v22; ++i)
        {
          v26 = sub_1DAB74CEC(v40, i, v21);
          v28 = *v27;
          (v26)(v40, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        sub_1DAA420F4(0, &qword_1EE11F920, 0x1E69B52D0);
        swift_arrayInitWithCopy();
      }

      v2 = v34;
      v1 = v35;
      v6 = v33;
      v9 = v37;
      v5 = v41;
      if (v39 >= 1)
      {
        v29 = *(v36 + 16);
        v30 = __OFADD__(v29, v39);
        v31 = v29 + v39;
        if (v30)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v31;
      }
    }

    else
    {

      v9 = v37;
      v1 = v18;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = sub_1DACB9E14();
  v16 = v32 + v13;
  if (!__OFADD__(v32, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v9;
}

uint64_t sub_1DAB6E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB76CAC(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB6E7E8(uint64_t a1, void *a2)
{
  v2 = sub_1DACB71E4();
  sub_1DAC2874C(v2);
  v3 = sub_1DACB71E4();
  return sub_1DAC28778(v3);
}

uint64_t sub_1DAB6E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 16);
  sub_1DACB71F4();
  v16 = [objc_msgSend(v15 configurationManager)];
  swift_unknownObjectRelease();
  v17 = [objc_allocWithZone(MEMORY[0x1E69B52D8]) init];
  [v17 setContext_];
  [v17 setConfiguration_];
  [v17 setOptions_];
  sub_1DAA420F4(0, &qword_1EE11F920, 0x1E69B52D0);
  v18 = sub_1DACB9634();
  [v17 setFeedRequests_];

  if (v16)
  {
    v19 = [v16 isOrderFeedEndpointEnabled];
  }

  else
  {
    v19 = 1;
  }

  v20 = [objc_opt_self() temporaryFeedDatabaseWithEndpoint_];
  [v17 setFeedDatabase_];

  if (a7)
  {
    v21 = objc_allocWithZone(MEMORY[0x1E69B5268]);
    v22 = sub_1DACB92F4();
    v23 = sub_1DACB92F4();
    v24 = [v21 initWithGroupName:v22 cacheControlKey:v23];

    [v17 setEdgeCacheHint_];
  }

  v25 = [v17 operationID];
  v26 = sub_1DACB9324();
  v28 = v27;

  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = sub_1DAB76E08;
  v29[4] = v14;
  v29[5] = v26;
  v29[6] = v28;
  v29[7] = a3;
  v29[8] = a4;
  v32[4] = sub_1DAB76E10;
  v32[5] = v29;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1DAB6F0DC;
  v32[3] = &block_descriptor_55;
  v30 = _Block_copy(v32);
  sub_1DACB71E4();
  sub_1DACB71F4();

  [v17 setRequestCompletionHandler_];
  _Block_release(v30);
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
  swift_unknownObjectRelease();
}

uint64_t sub_1DAB6EB94(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1DACB71E4();
  sub_1DACB71E4();
  a3(v5);
}

void sub_1DAB6EC08(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *))
{
  if (a3)
  {
    v12 = a3;
    swift_getErrorValue();
    v13 = v12;
    v14 = sub_1DACA8450(v51, v52);
    v15 = sub_1DACB9904();
    sub_1DAA41D64(0);
    if (!v14)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DACC1D40;
      v28 = v15;
      v29 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1DAA443C8();
      *(v27 + 64) = v30;
      *(v27 + 32) = a7;
      *(v27 + 40) = a8;
      sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
      sub_1DACB71E4();
      sub_1DACB9DD4();
      *(v27 + 96) = v29;
      *(v27 + 104) = v30;
      *(v27 + 72) = 0;
      *(v27 + 80) = 0xE000000000000000;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v31 = sub_1DACB9AD4();
      sub_1DACB8C64("failed to fetch news feed(s) with operation ID %{public}@, error: %{public}@", 76, 2, &dword_1DAA3F000, v31, v28, v27);

      a9(v12);
LABEL_28:

      return;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DACC1D20;
    if (a4 >> 62)
    {
      v17 = sub_1DACB9E14();
    }

    else
    {
      v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E7CC0];
    if (!v17)
    {
LABEL_27:
      sub_1DAB770D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v16 + 56) = v44;
      *(v16 + 64) = sub_1DAAF691C();
      *(v16 + 32) = v18;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v45 = sub_1DACB9AD4();
      sub_1DACB8C64("feed request was dropped by the server for feed IDs %{public}@", 62, 2, &dword_1DAA3F000, v45, v15, v16);

      a5(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
      goto LABEL_28;
    }

    v50 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v46 = v16;
      v47 = v15;
      v48 = v12;
      v18 = v50;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          MEMORY[0x1E12777A0](v19, a4);
          v20 = [swift_unknownObjectRetain() feedID];
          v21 = sub_1DACB9324();
          v23 = v22;
          swift_unknownObjectRelease_n();

          v25 = *(v50 + 16);
          v24 = *(v50 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1DAA5859C((v24 > 1), v25 + 1, 1);
          }

          ++v19;
          *(v50 + 16) = v25 + 1;
          v26 = v50 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
        }

        while (v17 != v19);
      }

      else
      {
        v35 = (a4 + 32);
        do
        {
          v36 = *v35;
          v37 = [v36 feedID];
          v38 = sub_1DACB9324();
          v40 = v39;

          v42 = *(v50 + 16);
          v41 = *(v50 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1DAA5859C((v41 > 1), v42 + 1, 1);
          }

          *(v50 + 16) = v42 + 1;
          v43 = v50 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          ++v35;
          --v17;
        }

        while (v17);
      }

      v12 = v48;
      v15 = v47;
      v16 = v46;
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    if (a2)
    {
      if (a1)
      {
        a5(a2, a1);
        return;
      }

      sub_1DAB76C58();
      v33 = swift_allocError();
      v34 = 2;
    }

    else
    {
      sub_1DAB76C58();
      v33 = swift_allocError();
      v34 = 1;
    }

    *v32 = v34;
    (a9)();
  }
}

uint64_t sub_1DAB6F0DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1DAA420F4(0, &qword_1EE11F908, 0x1E69B52E0);
    v6 = sub_1DACB9644();
  }

  if (a3)
  {
    sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
    a3 = sub_1DACB9644();
  }

  sub_1DACB71F4();
  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_1DAB6F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = objc_allocWithZone(MEMORY[0x1E69B52B0]);
  sub_1DACB71F4();
  v13 = [v12 init];
  v14 = *(a5 + 16);
  v15 = [objc_msgSend(v14 configurationManager)];
  swift_unknownObjectRelease();
  [v13 setConfiguration_];
  swift_unknownObjectRelease();
  [v13 setContext_];
  sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
  v16 = sub_1DACB9634();
  [v13 setFeedItems_];

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_1DAA73914;
  v17[5] = v11;
  v20[4] = sub_1DAB76C4C;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1DAB11E70;
  v20[3] = &block_descriptor_10;
  v18 = _Block_copy(v20);
  sub_1DACB71F4();

  [v13 setHeadlinesMapCompletionHandler_];
  _Block_release(v18);
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

void sub_1DAB6F3F0(void *a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_1DAB76C58();
    v8 = swift_allocError();
    v6 = v8;
    *v11 = 0;
LABEL_3:
    a3(v8);
    v9 = v6;

    goto LABEL_5;
  }

  v12 = a1;
  a5();
  v9 = v12;

LABEL_5:
}

void *NewsFeedService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t NewsFeedService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB6F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DAB5916C(a2, v13);
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v13;
  sub_1DAB6A620(MEMORY[0x1E69E7CC0], sub_1DAB75F40, v12, a1);
  v10 = (*(a6 + 8))();

  return v10;
}

uint64_t sub_1DAB6F628(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v25 = a3;
  v26 = a4;
  v8 = type metadata accessor for NewsFeedRequest(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(*a2 + 16);
  if (v14)
  {
    v24[0] = a1;
    v24[1] = v5;
    v15 = *a1;
    v16 = (v13 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      v19 = *(v8 + 28);
      v20 = sub_1DACB7CC4();
      (*(*(v20 - 8) + 16))(&v12[v19], v26, v20);
      *v12 = v18;
      *(v12 + 1) = v17;
      *(v12 + 2) = v25;
      v21 = v28;
      sub_1DAB5916C(v28, &v12[*(v8 + 32)]);
      sub_1DAB59344(v21, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DAADC014(0, v15[2] + 1, 1, v15);
      }

      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        v15 = sub_1DAADC014((v22 > 1), v23 + 1, 1, v15);
      }

      v15[2] = v23 + 1;
      result = sub_1DAB591C8(v12, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23);
      v16 += 2;
      --v14;
    }

    while (v14);
    *v24[0] = v15;
  }

  return result;
}

uint64_t sub_1DAB6F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[2] = a2;
  v8[3] = a3;
  sub_1DAB6A764(MEMORY[0x1E69E7CC0], sub_1DAB75F60, v8, a1);
  v6 = (*(a5 + 8))();

  return v6;
}

uint64_t sub_1DAB6F8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v35 = a3;
  v7 = type metadata accessor for NewsFeedRequest(0);
  v33 = *(v7 - 8);
  v34 = v7;
  result = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 48);
  v39[2] = *(a2 + 32);
  v39[3] = v11;
  v12 = *(a2 + 136);
  v40 = *(a2 + 128);
  v13 = *(a2 + 112);
  v39[6] = *(a2 + 96);
  v39[7] = v13;
  v14 = *(a2 + 80);
  v39[4] = *(a2 + 64);
  v39[5] = v14;
  v15 = *(a2 + 16);
  v39[0] = *a2;
  v39[1] = v15;
  v16 = *(v12 + 16);
  if (v16)
  {
    v31 = v4;
    v17 = *(a2 + 112);
    v37[6] = *(a2 + 96);
    v37[7] = v17;
    v38 = *(a2 + 128);
    v18 = *(a2 + 48);
    v37[2] = *(a2 + 32);
    v37[3] = v18;
    v19 = *(a2 + 80);
    v37[4] = *(a2 + 64);
    v37[5] = v19;
    v20 = *(a2 + 16);
    v37[0] = *a2;
    v37[1] = v20;
    nullsub_1();
    v21 = *a1;
    v22 = (v12 + 40);
    v32 = a1;
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v25 = v34;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      v26 = *(v25 + 28);
      v27 = sub_1DACB7CC4();
      (*(*(v27 - 8) + 16))(&v10[v26], v41, v27);
      *v10 = v24;
      *(v10 + 1) = v23;
      *(v10 + 2) = v35;
      sub_1DAB5916C(v37, &v10[*(v25 + 32)]);
      sub_1DAA806E4(v39, &v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DAADC014(0, v21[2] + 1, 1, v21);
      }

      v29 = v21[2];
      v28 = v21[3];
      v30 = v32;
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1DAADC014((v28 > 1), v29 + 1, 1, v21);
      }

      v21[2] = v29 + 1;
      result = sub_1DAB591C8(v10, v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29);
      v22 += 2;
      --v16;
    }

    while (v16);
    *v30 = v21;
  }

  return result;
}

char *sub_1DAB6FB30(_BYTE *a1, char *a2)
{
  v2 = a2;
  v3 = *a1;
  if (v3 > 1)
  {
    v7 = a2;
    if (v3 == 2)
    {
      sub_1DACB71E4();
      v4 = sub_1DAB7197C;
      v5 = sub_1DAB7043C;
    }

    else
    {
      sub_1DACB71E4();
      v4 = sub_1DAB70BB8;
      v5 = sub_1DAB70114;
    }

    goto LABEL_8;
  }

  if (*a1)
  {
    v7 = a2;
    sub_1DACB71E4();
    v4 = sub_1DAB72740;
    v5 = sub_1DAB70764;
LABEL_8:
    sub_1DAB6FF88(&v7, v4, v5);
    return v7;
  }

  sub_1DACB71E4();
  return v2;
}

uint64_t sub_1DAB6FC4C(_OWORD *a1, __int128 *a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = a1[7];
  v45[6] = a1[6];
  v45[7] = v16;
  v45[8] = a1[8];
  v17 = a1[3];
  v45[2] = a1[2];
  v45[3] = v17;
  v18 = a1[5];
  v45[4] = a1[4];
  v45[5] = v18;
  v19 = a1[1];
  v45[0] = *a1;
  v45[1] = v19;
  v20 = a2[7];
  v42 = a2[6];
  v43 = v20;
  v44 = a2[8];
  v21 = a2[3];
  v38 = a2[2];
  v39 = v21;
  v22 = a2[5];
  v40 = a2[4];
  v41 = v22;
  v23 = a2[1];
  v36 = *a2;
  v37 = v23;
  sub_1DAA9B6F0(v45);
  v24 = [*sub_1DAA9B6E0(v45) publishDate];
  if (!v24)
  {
    goto LABEL_5;
  }

  v25 = v24;
  sub_1DACB7C74();

  v26 = *(v5 + 32);
  v26(v15, v13, v4);
  v35[6] = v42;
  v35[7] = v43;
  v35[8] = v44;
  v35[2] = v38;
  v35[3] = v39;
  v35[4] = v40;
  v35[5] = v41;
  v35[0] = v36;
  v35[1] = v37;
  sub_1DAA9B6F0(v35);
  v27 = [*sub_1DAA9B6E0(v35) publishDate];
  if (!v27)
  {
    (*(v5 + 8))(v15, v4);
LABEL_5:
    v30 = 0;
    return v30 & 1;
  }

  v28 = v34;
  v29 = v27;
  sub_1DACB7C74();

  v26(v10, v28, v4);
  v30 = sub_1DACB7C24();
  v31 = *(v5 + 8);
  v31(v10, v4);
  v31(v15, v4);
  return v30 & 1;
}

uint64_t sub_1DAB6FF88(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DAC06988(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1DAB7000C(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DAB7000C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DACBA104();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1DACB96C4();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DAB70114(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 144 * a3;
    v6 = result - a3 + 1;
    while (2)
    {
      v62 = a3;
      v8 = v6;
      for (i = v5; ; i -= 9)
      {
        v42 = *i;
        v10 = i[1];
        v11 = i[2];
        v12 = i[4];
        v45 = i[3];
        v46 = v12;
        v43 = v10;
        v44 = v11;
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        v49 = i[7];
        v50 = v15;
        v47 = v13;
        v48 = v14;
        v51 = *(i - 9);
        v16 = *(i - 8);
        v17 = *(i - 7);
        v18 = *(i - 5);
        v54 = *(i - 6);
        v55 = v18;
        v52 = v16;
        v53 = v17;
        v19 = *(i - 4);
        v20 = *(i - 3);
        v21 = *(i - 1);
        v58 = *(i - 2);
        v59 = v21;
        v56 = v19;
        v57 = v20;
        v60[2] = v44;
        v60[3] = v45;
        v60[0] = v42;
        v60[1] = v43;
        v60[7] = v49;
        v60[8] = v50;
        v60[5] = v47;
        v60[6] = v48;
        v60[4] = v46;
        v60[15] = v20;
        v60[16] = v58;
        v60[17] = v21;
        v60[11] = v53;
        v60[12] = v54;
        v60[13] = v55;
        v60[14] = v19;
        v60[9] = v51;
        v60[10] = v52;
        v61[6] = v48;
        v61[7] = v49;
        v61[8] = v50;
        v61[2] = v44;
        v61[3] = v45;
        v61[4] = v46;
        v61[5] = v47;
        v61[0] = v42;
        v61[1] = v43;
        if (sub_1DAA9B6F0(v61) == 1)
        {
          break;
        }

        v22 = sub_1DAA9B6E0(v61);
        v41[6] = v57;
        v41[7] = v58;
        v41[8] = v59;
        v41[2] = v53;
        v41[3] = v54;
        v41[4] = v55;
        v41[5] = v56;
        v41[0] = v51;
        v41[1] = v52;
        v23 = sub_1DAA9B6F0(v41);
        v24 = sub_1DAA9B6E0(v41);
        if (v23 == 1)
        {
          sub_1DAAD4CCC(&v51, &v32);
          v7 = &v32;
          goto LABEL_5;
        }

        v25 = v24;
        sub_1DAAD4CCC(&v51, &v32);
        sub_1DAAD4CCC(&v42, &v32);
        result = sub_1DAB76F80(v60, &qword_1EE120158, &type metadata for Headline);
        if (*(v25 + 88) >= *(v22 + 88))
        {
          goto LABEL_6;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v26 = i - 9;
        v37 = i[5];
        v38 = i[6];
        v39 = i[7];
        v40 = i[8];
        v33 = i[1];
        v34 = i[2];
        v35 = i[3];
        v36 = i[4];
        v32 = *i;
        v27 = *(i - 4);
        i[4] = *(i - 5);
        i[5] = v27;
        v28 = *(i - 2);
        i[6] = *(i - 3);
        i[7] = v28;
        i[8] = *(i - 1);
        v29 = *(i - 6);
        i[2] = *(i - 7);
        i[3] = v29;
        v30 = *(i - 8);
        *i = *(i - 9);
        i[1] = v30;
        v26[4] = v36;
        v26[5] = v37;
        v26[6] = v38;
        v26[7] = v39;
        v26[8] = v40;
        v26[1] = v33;
        v26[2] = v34;
        v26[3] = v35;
        *v26 = v32;
        if (!v8)
        {
          goto LABEL_6;
        }

        ++v8;
      }

      sub_1DAA9B6E0(v61);
      sub_1DAAD4CCC(&v51, v41);
      v7 = v41;
LABEL_5:
      sub_1DAAD4CCC(&v42, v7);
      result = sub_1DAB76F80(v60, &qword_1EE120158, &type metadata for Headline);
LABEL_6:
      a3 = v62 + 1;
      v5 += 144;
      --v6;
      if (v62 + 1 == a2)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_1DAB7043C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 144 * a3;
    v6 = result - a3 + 1;
    while (2)
    {
      v62 = a3;
      v8 = v6;
      for (i = v5; ; i -= 9)
      {
        v42 = *i;
        v10 = i[1];
        v11 = i[2];
        v12 = i[4];
        v45 = i[3];
        v46 = v12;
        v43 = v10;
        v44 = v11;
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        v49 = i[7];
        v50 = v15;
        v47 = v13;
        v48 = v14;
        v51 = *(i - 9);
        v16 = *(i - 8);
        v17 = *(i - 7);
        v18 = *(i - 5);
        v54 = *(i - 6);
        v55 = v18;
        v52 = v16;
        v53 = v17;
        v19 = *(i - 4);
        v20 = *(i - 3);
        v21 = *(i - 1);
        v58 = *(i - 2);
        v59 = v21;
        v56 = v19;
        v57 = v20;
        v60[2] = v44;
        v60[3] = v45;
        v60[0] = v42;
        v60[1] = v43;
        v60[7] = v49;
        v60[8] = v50;
        v60[5] = v47;
        v60[6] = v48;
        v60[4] = v46;
        v60[15] = v20;
        v60[16] = v58;
        v60[17] = v21;
        v60[11] = v53;
        v60[12] = v54;
        v60[13] = v55;
        v60[14] = v19;
        v60[9] = v51;
        v60[10] = v52;
        v61[6] = v48;
        v61[7] = v49;
        v61[8] = v50;
        v61[2] = v44;
        v61[3] = v45;
        v61[4] = v46;
        v61[5] = v47;
        v61[0] = v42;
        v61[1] = v43;
        if (sub_1DAA9B6F0(v61) == 1)
        {
          break;
        }

        v22 = sub_1DAA9B6E0(v61);
        v41[6] = v57;
        v41[7] = v58;
        v41[8] = v59;
        v41[2] = v53;
        v41[3] = v54;
        v41[4] = v55;
        v41[5] = v56;
        v41[0] = v51;
        v41[1] = v52;
        v23 = sub_1DAA9B6F0(v41);
        v24 = sub_1DAA9B6E0(v41);
        if (v23 == 1)
        {
          sub_1DAAD4CCC(&v51, &v32);
          v7 = &v32;
          goto LABEL_5;
        }

        v25 = v24;
        sub_1DAAD4CCC(&v51, &v32);
        sub_1DAAD4CCC(&v42, &v32);
        result = sub_1DAB76F80(v60, &qword_1EE120158, &type metadata for Headline);
        if (*(v25 + 72) >= *(v22 + 72))
        {
          goto LABEL_6;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v26 = i - 9;
        v37 = i[5];
        v38 = i[6];
        v39 = i[7];
        v40 = i[8];
        v33 = i[1];
        v34 = i[2];
        v35 = i[3];
        v36 = i[4];
        v32 = *i;
        v27 = *(i - 4);
        i[4] = *(i - 5);
        i[5] = v27;
        v28 = *(i - 2);
        i[6] = *(i - 3);
        i[7] = v28;
        i[8] = *(i - 1);
        v29 = *(i - 6);
        i[2] = *(i - 7);
        i[3] = v29;
        v30 = *(i - 8);
        *i = *(i - 9);
        i[1] = v30;
        v26[4] = v36;
        v26[5] = v37;
        v26[6] = v38;
        v26[7] = v39;
        v26[8] = v40;
        v26[1] = v33;
        v26[2] = v34;
        v26[3] = v35;
        *v26 = v32;
        if (!v8)
        {
          goto LABEL_6;
        }

        ++v8;
      }

      sub_1DAA9B6E0(v61);
      sub_1DAAD4CCC(&v51, v41);
      v7 = v41;
LABEL_5:
      sub_1DAAD4CCC(&v42, v7);
      result = sub_1DAB76F80(v60, &qword_1EE120158, &type metadata for Headline);
LABEL_6:
      a3 = v62 + 1;
      v5 += 144;
      --v6;
      if (v62 + 1 == a2)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_1DAB70764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DACB7CC4();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v67 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v67 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - v17;
  v68 = a2;
  if (a3 != a2)
  {
    v19 = result;
    v20 = *a4;
    v21 = (v16 + 32);
    v75 = (v16 + 8);
    v72 = v20;
    v22 = (v20 + 144 * a3);
    v23 = a1 - a3 + 1;
LABEL_7:
    v70 = v22;
    v71 = a3;
    v69 = v23;
    v24 = v23;
    v25 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    while (1)
    {
      v87 = *v22;
      v26 = v22[1];
      v27 = v22[2];
      v28 = v22[4];
      v90 = v22[3];
      v91 = v28;
      v88 = v26;
      v89 = v27;
      v29 = v22[5];
      v30 = v22[6];
      v31 = v22[8];
      v94 = v22[7];
      v95 = v31;
      v92 = v29;
      v93 = v30;
      v96 = *(v22 - 9);
      v32 = *(v22 - 8);
      v33 = *(v22 - 7);
      v34 = *(v22 - 5);
      v99 = *(v22 - 6);
      v100 = v34;
      v97 = v32;
      v98 = v33;
      v35 = *(v22 - 4);
      v36 = *(v22 - 3);
      v37 = *(v22 - 1);
      v103 = *(v22 - 2);
      v104 = v37;
      v101 = v35;
      v102 = v36;
      v105[2] = v89;
      v105[3] = v90;
      v105[0] = v87;
      v105[1] = v88;
      v105[7] = v94;
      v105[8] = v95;
      v105[5] = v92;
      v105[6] = v93;
      v105[4] = v91;
      sub_1DAA9B6F0(v105);
      v38 = *sub_1DAA9B6E0(v105);
      sub_1DAAD4CCC(&v96, v86);
      sub_1DAAD4CCC(&v87, v86);
      v39 = [v38 v25[140]];
      if (!v39)
      {
        goto LABEL_5;
      }

      v40 = v39;
      v106 = v24;
      v41 = v19;
      v42 = v76;
      sub_1DACB7C74();

      v43 = *v21;
      v44 = v42;
      v19 = v41;
      (*v21)(v18, v44, v41);
      v86[6] = v102;
      v86[7] = v103;
      v86[8] = v104;
      v86[2] = v98;
      v86[3] = v99;
      v86[4] = v100;
      v86[5] = v101;
      v86[0] = v96;
      v86[1] = v97;
      sub_1DAA9B6F0(v86);
      v45 = [*sub_1DAA9B6E0(v86) v25[140]];
      if (!v45)
      {
        (*v75)(v18, v41);
LABEL_5:
        sub_1DAAD4D28(&v96);
        result = sub_1DAAD4D28(&v87);
LABEL_6:
        a3 = v71 + 1;
        v22 = v70 + 9;
        v23 = v69 - 1;
        if (v71 + 1 == v68)
        {
          return result;
        }

        goto LABEL_7;
      }

      v46 = v45;
      v47 = v21;
      v48 = v18;
      v49 = v74;
      sub_1DACB7C74();

      v50 = v73;
      v51 = v49;
      v18 = v48;
      v21 = v47;
      v43(v73, v51, v41);
      LOBYTE(v46) = sub_1DACB7C24();
      v52 = *v75;
      v53 = v50;
      v19 = v41;
      (*v75)(v53, v41);
      v52(v18, v41);
      sub_1DAAD4D28(&v96);
      result = sub_1DAAD4D28(&v87);
      if ((v46 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v72)
      {
        break;
      }

      v54 = v22 - 9;
      v55 = v22[7];
      v83 = v22[6];
      v84 = v55;
      v85 = v22[8];
      v56 = v22[3];
      v79 = v22[2];
      v80 = v56;
      v57 = v22[5];
      v81 = v22[4];
      v82 = v57;
      v58 = v22[1];
      v77 = *v22;
      v78 = v58;
      v59 = *(v22 - 4);
      v22[4] = *(v22 - 5);
      v22[5] = v59;
      v60 = *(v22 - 2);
      v22[6] = *(v22 - 3);
      v22[7] = v60;
      v22[8] = *(v22 - 1);
      v61 = *(v22 - 6);
      v22[2] = *(v22 - 7);
      v22[3] = v61;
      v62 = *(v22 - 8);
      *v22 = *(v22 - 9);
      v22[1] = v62;
      v63 = v82;
      v54[4] = v81;
      v54[5] = v63;
      v64 = v84;
      v54[6] = v83;
      v54[7] = v64;
      v54[8] = v85;
      v65 = v80;
      v54[2] = v79;
      v54[3] = v65;
      v66 = v78;
      *v54 = v77;
      v54[1] = v66;
      v25 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      if (!v106)
      {
        goto LABEL_6;
      }

      v24 = v106 + 1;
      v22 -= 9;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1DAB70BB8(unint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v147 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v151 = *v147;
    if (!*v147)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = a3;
    if (result)
    {
LABEL_113:
      v133 = v6;
      v134 = v9;
      v135 = (v9 + 16);
      v9 = *(v9 + 16);
      if (v9 >= 2)
      {
        while (1)
        {
          v136 = *v5;
          if (!*v5)
          {
            goto LABEL_148;
          }

          v137 = (v134 + 16 * v9);
          v138 = *v137;
          v5 = &v135[2 * v9];
          v6 = *(v5 + 8);
          sub_1DAB73714((v136 + 144 * *v137), (v136 + 144 * *v5), (v136 + 144 * v6), v151);
          if (v133)
          {
          }

          if (v6 < v138)
          {
            goto LABEL_136;
          }

          if (v9 - 2 >= *v135)
          {
            goto LABEL_137;
          }

          *v137 = v138;
          v137[1] = v6;
          v139 = *v135 - v9;
          if (*v135 < v9)
          {
            goto LABEL_138;
          }

          v9 = *v135 - 1;
          result = memmove(v5, (v5 + 16), 16 * v139);
          *v135 = v9;
          v5 = a3;
          if (v9 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_1DAC0694C(v9);
    v9 = result;
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v5 = *a3;
      v12 = (*a3 + 144 * v11);
      v199 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      v203 = v12[4];
      v202 = v15;
      v201 = v14;
      v200 = v13;
      v16 = v12[5];
      v17 = v12[6];
      v18 = v12[7];
      v207 = v12[8];
      v206 = v18;
      v205 = v17;
      v204 = v16;
      v19 = (v5 + 144 * v10);
      v208 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v212 = v19[4];
      v211 = v22;
      v210 = v21;
      v209 = v20;
      v23 = v19[5];
      v24 = v19[6];
      v25 = v19[7];
      v216 = v19[8];
      v215 = v25;
      v214 = v24;
      v213 = v23;
      v229 = v202;
      v228 = v201;
      v226 = v199;
      v227 = v200;
      v234 = v207;
      v233 = v206;
      v232 = v205;
      v230 = v203;
      v231 = v204;
      v241 = v24;
      v242 = v25;
      v243 = v216;
      v237 = v210;
      v238 = v211;
      v239 = v212;
      v240 = v23;
      v235 = v208;
      v236 = v209;
      v223 = v205;
      v224 = v206;
      v225 = v207;
      v219 = v201;
      v220 = v202;
      v222 = v204;
      v221 = v203;
      v218 = v200;
      v217 = v199;
      v143 = v6;
      v145 = v10;
      if (sub_1DAA9B6F0(&v217) == 1)
      {
        sub_1DAA9B6E0(&v217);
        sub_1DAAD4CCC(&v208, &v172);
        sub_1DAAD4CCC(&v199, &v172);
        result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
        v26 = 0;
      }

      else
      {
        v28 = sub_1DAA9B6E0(&v217);
        v178 = v214;
        v179 = v215;
        v180 = v216;
        v174 = v210;
        v175 = v211;
        v176 = v212;
        v177 = v213;
        v172 = v208;
        v173 = v209;
        v29 = sub_1DAA9B6F0(&v172);
        v30 = sub_1DAA9B6E0(&v172);
        if (v29 == 1)
        {
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
          v26 = 0;
        }

        else
        {
          v6 = v30;
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
          v26 = *(v6 + 88) < *(v28 + 88);
        }

        v10 = v145;
      }

      v31 = v10;
      v32 = v10 + 2;
      if (v32 >= v7)
      {
        v7 = v32;
        goto LABEL_25;
      }

      v33 = (v5 + 144 * v31 + 288);
      while (1)
      {
        v154 = *v33;
        v34 = v33[1];
        v35 = v33[2];
        v36 = v33[4];
        v157 = v33[3];
        v158 = v36;
        v155 = v34;
        v156 = v35;
        v37 = v33[5];
        v38 = v33[6];
        v39 = v33[8];
        v161 = v33[7];
        v162 = v39;
        v159 = v37;
        v160 = v38;
        v163 = *(v33 - 9);
        v40 = *(v33 - 8);
        v41 = *(v33 - 7);
        v42 = *(v33 - 5);
        v166 = *(v33 - 6);
        v167 = v42;
        v164 = v40;
        v165 = v41;
        v43 = *(v33 - 4);
        v44 = *(v33 - 3);
        v45 = *(v33 - 1);
        v170 = *(v33 - 2);
        v171 = v45;
        v168 = v43;
        v169 = v44;
        v174 = v156;
        v175 = v157;
        v172 = v154;
        v173 = v155;
        v179 = v161;
        v180 = v162;
        v177 = v159;
        v178 = v160;
        v176 = v158;
        v187 = v44;
        v188 = v170;
        v189 = v45;
        v183 = v165;
        v184 = v166;
        v185 = v167;
        v186 = v43;
        v181 = v163;
        v182 = v164;
        v195 = v159;
        v196 = v160;
        v197 = v161;
        v198 = v162;
        v192 = v156;
        v193 = v157;
        v194 = v158;
        v190 = v154;
        v191 = v155;
        if (sub_1DAA9B6F0(&v190) == 1)
        {
          break;
        }

        v5 = sub_1DAA9B6E0(&v190);
        v153[6] = v169;
        v153[7] = v170;
        v153[8] = v171;
        v153[2] = v165;
        v153[3] = v166;
        v153[4] = v167;
        v153[5] = v168;
        v153[0] = v163;
        v153[1] = v164;
        v46 = sub_1DAA9B6F0(v153);
        v47 = sub_1DAA9B6E0(v153);
        if (v46 == 1)
        {
          goto LABEL_20;
        }

        v6 = v47;
        sub_1DAAD4CCC(&v163, v152);
        sub_1DAAD4CCC(&v154, v152);
        result = sub_1DAB76F80(&v172, &qword_1EE120158, &type metadata for Headline);
        if (((v26 ^ (*(v6 + 88) >= *(v5 + 88))) & 1) == 0)
        {
          v7 = v32;
LABEL_24:
          v11 = v32 - 1;
LABEL_25:
          v48 = a3;
          v10 = v145;
          if (v26)
          {
            v27 = a3;
LABEL_27:
            if (v7 < v10)
            {
              goto LABEL_141;
            }

            if (v10 > v11)
            {
              v6 = v143;
              goto LABEL_39;
            }

            v140 = v9;
            v49 = 144 * v7 - 144;
            v50 = 144 * v10;
            v51 = v7;
            v52 = v10;
            v53 = v7;
            v54 = v52;
            v55 = v52;
            v6 = v143;
            do
            {
              if (v55 != --v53)
              {
                v56 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v5 = v56 + v49;
                v177 = *(v56 + v50 + 80);
                v178 = *(v56 + v50 + 96);
                v179 = *(v56 + v50 + 112);
                v180 = *(v56 + v50 + 128);
                v173 = *(v56 + v50 + 16);
                v174 = *(v56 + v50 + 32);
                v175 = *(v56 + v50 + 48);
                v176 = *(v56 + v50 + 64);
                v172 = *(v56 + v50);
                result = memmove((v56 + v50), (v56 + v49), 0x90uLL);
                *(v5 + 80) = v177;
                *(v5 + 96) = v178;
                *(v5 + 112) = v179;
                *(v5 + 128) = v180;
                *(v5 + 16) = v173;
                *(v5 + 32) = v174;
                *(v5 + 48) = v175;
                *(v5 + 64) = v176;
                *v5 = v172;
              }

              ++v55;
              v49 -= 144;
              v50 += 144;
            }

            while (v55 < v53);
            v48 = a3;
            v9 = v140;
            v7 = v51;
            v10 = v54;
          }

          else
          {
            v6 = v143;
          }

          v27 = v48;
          goto LABEL_39;
        }

LABEL_16:
        v33 += 9;
        if (v7 == ++v32)
        {
          goto LABEL_24;
        }
      }

      sub_1DAA9B6E0(&v190);
LABEL_20:
      sub_1DAAD4CCC(&v163, v153);
      sub_1DAAD4CCC(&v154, v153);
      result = sub_1DAB76F80(&v172, &qword_1EE120158, &type metadata for Headline);
      if (v26)
      {
        v7 = v32;
        v11 = v32 - 1;
        v27 = a3;
        v10 = v145;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v7 = (v8 + 1);
    v27 = a3;
LABEL_39:
    v57 = v27[1];
    if (v7 < v57)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_140;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_60:
    if (v7 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v86 = *(v9 + 16);
    v85 = *(v9 + 24);
    v5 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      result = sub_1DAADB818((v85 > 1), v86 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v5;
    v87 = v9 + 16 * v86;
    *(v87 + 32) = v10;
    *(v87 + 40) = v7;
    v150 = *v147;
    v151 = v7;
    if (!*v147)
    {
      goto LABEL_149;
    }

    if (v86)
    {
      while (1)
      {
        v88 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v89 = *(v9 + 32);
          v90 = *(v9 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_80:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = (v9 + 16 * v5);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = (v9 + 32 + 16 * v88);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v5 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v115 = (v9 + 16 * v5);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_94:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = v9 + 16 * v88;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_101:
        v126 = v88 - 1;
        if (v88 - 1 >= v5)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v127 = *v27;
        if (!*v27)
        {
          goto LABEL_146;
        }

        v128 = v27;
        v129 = v9;
        v130 = v9 + 32;
        v9 = *(v9 + 32 + 16 * v126);
        v131 = *(v130 + 16 * v88 + 8);
        sub_1DAB73714((v127 + 144 * v9), (v127 + 144 * *(v130 + 16 * v88)), (v127 + 144 * v131), v150);
        if (v6)
        {
        }

        if (v131 < v9)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1DAC0694C(v129);
        }

        if (v126 >= *(v129 + 2))
        {
          goto LABEL_124;
        }

        v132 = &v129[16 * v126];
        *(v132 + 4) = v9;
        *(v132 + 5) = v131;
        v244 = v129;
        result = sub_1DAC068C0(v88);
        v9 = v244;
        v5 = *(v244 + 2);
        v27 = v128;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v9 + 32 + 16 * v5;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = (v9 + 16 * v5);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = (v9 + 32 + 16 * v88);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v5 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v7 = v27[1];
    v8 = v151;
    if (v151 >= v7)
    {
      goto LABEL_111;
    }
  }

  v58 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  if (v58 >= v57)
  {
    v58 = v27[1];
  }

  if (v58 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v58)
  {
    goto LABEL_60;
  }

  v141 = v9;
  v144 = v6;
  v146 = v10;
  v59 = *v27;
  v60 = (v59 + 144 * v7);
  v61 = v10 - v7 + 1;
  v149 = v58;
LABEL_51:
  v151 = v7;
  v63 = v61;
  for (i = v60; ; i -= 9)
  {
    v208 = *i;
    v65 = i[1];
    v66 = i[2];
    v67 = i[3];
    v212 = i[4];
    v211 = v67;
    v210 = v66;
    v209 = v65;
    v68 = i[5];
    v69 = i[6];
    v70 = i[7];
    v216 = i[8];
    v215 = v70;
    v214 = v69;
    v213 = v68;
    v217 = *(i - 9);
    v71 = *(i - 8);
    v72 = *(i - 7);
    v73 = *(i - 6);
    v221 = *(i - 5);
    v220 = v73;
    v219 = v72;
    v218 = v71;
    v74 = *(i - 4);
    v75 = *(i - 3);
    v76 = *(i - 2);
    v225 = *(i - 1);
    v224 = v76;
    v223 = v75;
    v222 = v74;
    v229 = v211;
    v228 = v210;
    v226 = v208;
    v227 = v209;
    v234 = v216;
    v233 = v215;
    v232 = v214;
    v230 = v212;
    v231 = v213;
    v241 = v75;
    v242 = v76;
    v243 = v225;
    v237 = v219;
    v238 = v220;
    v239 = v221;
    v240 = v74;
    v235 = v217;
    v236 = v218;
    v178 = v214;
    v179 = v215;
    v180 = v216;
    v174 = v210;
    v175 = v211;
    v176 = v212;
    v177 = v213;
    v172 = v208;
    v173 = v209;
    if (sub_1DAA9B6F0(&v172) == 1)
    {
      sub_1DAA9B6E0(&v172);
      sub_1DAAD4CCC(&v217, &v199);
      v62 = &v199;
LABEL_49:
      sub_1DAAD4CCC(&v208, v62);
      sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
LABEL_50:
      v7 = (v151 + 1);
      v60 += 9;
      --v61;
      if (v151 + 1 == v149)
      {
        v7 = v149;
        v6 = v144;
        v10 = v146;
        v27 = a3;
        v9 = v141;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    v5 = sub_1DAA9B6E0(&v172);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v204 = v222;
    v203 = v221;
    v200 = v218;
    v199 = v217;
    v77 = sub_1DAA9B6F0(&v199);
    v78 = sub_1DAA9B6E0(&v199);
    if (v77 == 1)
    {
      sub_1DAAD4CCC(&v217, &v190);
      v62 = &v190;
      goto LABEL_49;
    }

    v79 = v78;
    sub_1DAAD4CCC(&v217, &v190);
    sub_1DAAD4CCC(&v208, &v190);
    result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
    if (*(v79 + 88) >= *(v5 + 88))
    {
      goto LABEL_50;
    }

    if (!v59)
    {
      break;
    }

    v80 = i - 9;
    v195 = i[5];
    v196 = i[6];
    v197 = i[7];
    v198 = i[8];
    v191 = i[1];
    v192 = i[2];
    v193 = i[3];
    v194 = i[4];
    v190 = *i;
    v81 = *(i - 4);
    i[4] = *(i - 5);
    i[5] = v81;
    v82 = *(i - 2);
    i[6] = *(i - 3);
    i[7] = v82;
    i[8] = *(i - 1);
    v83 = *(i - 6);
    i[2] = *(i - 7);
    i[3] = v83;
    v84 = *(i - 8);
    *i = *(i - 9);
    i[1] = v84;
    v80[4] = v194;
    v80[5] = v195;
    v80[6] = v196;
    v80[7] = v197;
    v80[8] = v198;
    v80[1] = v191;
    v80[2] = v192;
    v80[3] = v193;
    *v80 = v190;
    if (!v63)
    {
      goto LABEL_50;
    }

    ++v63;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

unint64_t sub_1DAB7197C(unint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v147 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v151 = *v147;
    if (!*v147)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = a3;
    if (result)
    {
LABEL_113:
      v133 = v6;
      v134 = v9;
      v135 = (v9 + 16);
      v9 = *(v9 + 16);
      if (v9 >= 2)
      {
        while (1)
        {
          v136 = *v5;
          if (!*v5)
          {
            goto LABEL_148;
          }

          v137 = (v134 + 16 * v9);
          v138 = *v137;
          v5 = &v135[2 * v9];
          v6 = *(v5 + 8);
          sub_1DAB73D70((v136 + 144 * *v137), (v136 + 144 * *v5), (v136 + 144 * v6), v151);
          if (v133)
          {
          }

          if (v6 < v138)
          {
            goto LABEL_136;
          }

          if (v9 - 2 >= *v135)
          {
            goto LABEL_137;
          }

          *v137 = v138;
          v137[1] = v6;
          v139 = *v135 - v9;
          if (*v135 < v9)
          {
            goto LABEL_138;
          }

          v9 = *v135 - 1;
          result = memmove(v5, (v5 + 16), 16 * v139);
          *v135 = v9;
          v5 = a3;
          if (v9 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_1DAC0694C(v9);
    v9 = result;
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v5 = *a3;
      v12 = (*a3 + 144 * v11);
      v199 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      v203 = v12[4];
      v202 = v15;
      v201 = v14;
      v200 = v13;
      v16 = v12[5];
      v17 = v12[6];
      v18 = v12[7];
      v207 = v12[8];
      v206 = v18;
      v205 = v17;
      v204 = v16;
      v19 = (v5 + 144 * v10);
      v208 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v212 = v19[4];
      v211 = v22;
      v210 = v21;
      v209 = v20;
      v23 = v19[5];
      v24 = v19[6];
      v25 = v19[7];
      v216 = v19[8];
      v215 = v25;
      v214 = v24;
      v213 = v23;
      v229 = v202;
      v228 = v201;
      v226 = v199;
      v227 = v200;
      v234 = v207;
      v233 = v206;
      v232 = v205;
      v230 = v203;
      v231 = v204;
      v241 = v24;
      v242 = v25;
      v243 = v216;
      v237 = v210;
      v238 = v211;
      v239 = v212;
      v240 = v23;
      v235 = v208;
      v236 = v209;
      v223 = v205;
      v224 = v206;
      v225 = v207;
      v219 = v201;
      v220 = v202;
      v222 = v204;
      v221 = v203;
      v218 = v200;
      v217 = v199;
      v143 = v6;
      v145 = v10;
      if (sub_1DAA9B6F0(&v217) == 1)
      {
        sub_1DAA9B6E0(&v217);
        sub_1DAAD4CCC(&v208, &v172);
        sub_1DAAD4CCC(&v199, &v172);
        result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
        v26 = 0;
      }

      else
      {
        v28 = sub_1DAA9B6E0(&v217);
        v178 = v214;
        v179 = v215;
        v180 = v216;
        v174 = v210;
        v175 = v211;
        v176 = v212;
        v177 = v213;
        v172 = v208;
        v173 = v209;
        v29 = sub_1DAA9B6F0(&v172);
        v30 = sub_1DAA9B6E0(&v172);
        if (v29 == 1)
        {
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
          v26 = 0;
        }

        else
        {
          v6 = v30;
          sub_1DAAD4CCC(&v208, &v190);
          sub_1DAAD4CCC(&v199, &v190);
          result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
          v26 = *(v6 + 72) < *(v28 + 72);
        }

        v10 = v145;
      }

      v31 = v10;
      v32 = v10 + 2;
      if (v32 >= v7)
      {
        v7 = v32;
        goto LABEL_25;
      }

      v33 = (v5 + 144 * v31 + 288);
      while (1)
      {
        v154 = *v33;
        v34 = v33[1];
        v35 = v33[2];
        v36 = v33[4];
        v157 = v33[3];
        v158 = v36;
        v155 = v34;
        v156 = v35;
        v37 = v33[5];
        v38 = v33[6];
        v39 = v33[8];
        v161 = v33[7];
        v162 = v39;
        v159 = v37;
        v160 = v38;
        v163 = *(v33 - 9);
        v40 = *(v33 - 8);
        v41 = *(v33 - 7);
        v42 = *(v33 - 5);
        v166 = *(v33 - 6);
        v167 = v42;
        v164 = v40;
        v165 = v41;
        v43 = *(v33 - 4);
        v44 = *(v33 - 3);
        v45 = *(v33 - 1);
        v170 = *(v33 - 2);
        v171 = v45;
        v168 = v43;
        v169 = v44;
        v174 = v156;
        v175 = v157;
        v172 = v154;
        v173 = v155;
        v179 = v161;
        v180 = v162;
        v177 = v159;
        v178 = v160;
        v176 = v158;
        v187 = v44;
        v188 = v170;
        v189 = v45;
        v183 = v165;
        v184 = v166;
        v185 = v167;
        v186 = v43;
        v181 = v163;
        v182 = v164;
        v195 = v159;
        v196 = v160;
        v197 = v161;
        v198 = v162;
        v192 = v156;
        v193 = v157;
        v194 = v158;
        v190 = v154;
        v191 = v155;
        if (sub_1DAA9B6F0(&v190) == 1)
        {
          break;
        }

        v5 = sub_1DAA9B6E0(&v190);
        v153[6] = v169;
        v153[7] = v170;
        v153[8] = v171;
        v153[2] = v165;
        v153[3] = v166;
        v153[4] = v167;
        v153[5] = v168;
        v153[0] = v163;
        v153[1] = v164;
        v46 = sub_1DAA9B6F0(v153);
        v47 = sub_1DAA9B6E0(v153);
        if (v46 == 1)
        {
          goto LABEL_20;
        }

        v6 = v47;
        sub_1DAAD4CCC(&v163, v152);
        sub_1DAAD4CCC(&v154, v152);
        result = sub_1DAB76F80(&v172, &qword_1EE120158, &type metadata for Headline);
        if (((v26 ^ (*(v6 + 72) >= *(v5 + 72))) & 1) == 0)
        {
          v7 = v32;
LABEL_24:
          v11 = v32 - 1;
LABEL_25:
          v48 = a3;
          v10 = v145;
          if (v26)
          {
            v27 = a3;
LABEL_27:
            if (v7 < v10)
            {
              goto LABEL_141;
            }

            if (v10 > v11)
            {
              v6 = v143;
              goto LABEL_39;
            }

            v140 = v9;
            v49 = 144 * v7 - 144;
            v50 = 144 * v10;
            v51 = v7;
            v52 = v10;
            v53 = v7;
            v54 = v52;
            v55 = v52;
            v6 = v143;
            do
            {
              if (v55 != --v53)
              {
                v56 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v5 = v56 + v49;
                v177 = *(v56 + v50 + 80);
                v178 = *(v56 + v50 + 96);
                v179 = *(v56 + v50 + 112);
                v180 = *(v56 + v50 + 128);
                v173 = *(v56 + v50 + 16);
                v174 = *(v56 + v50 + 32);
                v175 = *(v56 + v50 + 48);
                v176 = *(v56 + v50 + 64);
                v172 = *(v56 + v50);
                result = memmove((v56 + v50), (v56 + v49), 0x90uLL);
                *(v5 + 80) = v177;
                *(v5 + 96) = v178;
                *(v5 + 112) = v179;
                *(v5 + 128) = v180;
                *(v5 + 16) = v173;
                *(v5 + 32) = v174;
                *(v5 + 48) = v175;
                *(v5 + 64) = v176;
                *v5 = v172;
              }

              ++v55;
              v49 -= 144;
              v50 += 144;
            }

            while (v55 < v53);
            v48 = a3;
            v9 = v140;
            v7 = v51;
            v10 = v54;
          }

          else
          {
            v6 = v143;
          }

          v27 = v48;
          goto LABEL_39;
        }

LABEL_16:
        v33 += 9;
        if (v7 == ++v32)
        {
          goto LABEL_24;
        }
      }

      sub_1DAA9B6E0(&v190);
LABEL_20:
      sub_1DAAD4CCC(&v163, v153);
      sub_1DAAD4CCC(&v154, v153);
      result = sub_1DAB76F80(&v172, &qword_1EE120158, &type metadata for Headline);
      if (v26)
      {
        v7 = v32;
        v11 = v32 - 1;
        v27 = a3;
        v10 = v145;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v7 = (v8 + 1);
    v27 = a3;
LABEL_39:
    v57 = v27[1];
    if (v7 < v57)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_140;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_60:
    if (v7 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v86 = *(v9 + 16);
    v85 = *(v9 + 24);
    v5 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      result = sub_1DAADB818((v85 > 1), v86 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v5;
    v87 = v9 + 16 * v86;
    *(v87 + 32) = v10;
    *(v87 + 40) = v7;
    v150 = *v147;
    v151 = v7;
    if (!*v147)
    {
      goto LABEL_149;
    }

    if (v86)
    {
      while (1)
      {
        v88 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v89 = *(v9 + 32);
          v90 = *(v9 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_80:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = (v9 + 16 * v5);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = (v9 + 32 + 16 * v88);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v5 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v115 = (v9 + 16 * v5);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_94:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = v9 + 16 * v88;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_101:
        v126 = v88 - 1;
        if (v88 - 1 >= v5)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v127 = *v27;
        if (!*v27)
        {
          goto LABEL_146;
        }

        v128 = v27;
        v129 = v9;
        v130 = v9 + 32;
        v9 = *(v9 + 32 + 16 * v126);
        v131 = *(v130 + 16 * v88 + 8);
        sub_1DAB73D70((v127 + 144 * v9), (v127 + 144 * *(v130 + 16 * v88)), (v127 + 144 * v131), v150);
        if (v6)
        {
        }

        if (v131 < v9)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1DAC0694C(v129);
        }

        if (v126 >= *(v129 + 2))
        {
          goto LABEL_124;
        }

        v132 = &v129[16 * v126];
        *(v132 + 4) = v9;
        *(v132 + 5) = v131;
        v244 = v129;
        result = sub_1DAC068C0(v88);
        v9 = v244;
        v5 = *(v244 + 2);
        v27 = v128;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v9 + 32 + 16 * v5;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = (v9 + 16 * v5);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = (v9 + 32 + 16 * v88);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v5 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v7 = v27[1];
    v8 = v151;
    if (v151 >= v7)
    {
      goto LABEL_111;
    }
  }

  v58 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  if (v58 >= v57)
  {
    v58 = v27[1];
  }

  if (v58 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v58)
  {
    goto LABEL_60;
  }

  v141 = v9;
  v144 = v6;
  v146 = v10;
  v59 = *v27;
  v60 = (v59 + 144 * v7);
  v61 = v10 - v7 + 1;
  v149 = v58;
LABEL_51:
  v151 = v7;
  v63 = v61;
  for (i = v60; ; i -= 9)
  {
    v208 = *i;
    v65 = i[1];
    v66 = i[2];
    v67 = i[3];
    v212 = i[4];
    v211 = v67;
    v210 = v66;
    v209 = v65;
    v68 = i[5];
    v69 = i[6];
    v70 = i[7];
    v216 = i[8];
    v215 = v70;
    v214 = v69;
    v213 = v68;
    v217 = *(i - 9);
    v71 = *(i - 8);
    v72 = *(i - 7);
    v73 = *(i - 6);
    v221 = *(i - 5);
    v220 = v73;
    v219 = v72;
    v218 = v71;
    v74 = *(i - 4);
    v75 = *(i - 3);
    v76 = *(i - 2);
    v225 = *(i - 1);
    v224 = v76;
    v223 = v75;
    v222 = v74;
    v229 = v211;
    v228 = v210;
    v226 = v208;
    v227 = v209;
    v234 = v216;
    v233 = v215;
    v232 = v214;
    v230 = v212;
    v231 = v213;
    v241 = v75;
    v242 = v76;
    v243 = v225;
    v237 = v219;
    v238 = v220;
    v239 = v221;
    v240 = v74;
    v235 = v217;
    v236 = v218;
    v178 = v214;
    v179 = v215;
    v180 = v216;
    v174 = v210;
    v175 = v211;
    v176 = v212;
    v177 = v213;
    v172 = v208;
    v173 = v209;
    if (sub_1DAA9B6F0(&v172) == 1)
    {
      sub_1DAA9B6E0(&v172);
      sub_1DAAD4CCC(&v217, &v199);
      v62 = &v199;
LABEL_49:
      sub_1DAAD4CCC(&v208, v62);
      sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
LABEL_50:
      v7 = (v151 + 1);
      v60 += 9;
      --v61;
      if (v151 + 1 == v149)
      {
        v7 = v149;
        v6 = v144;
        v10 = v146;
        v27 = a3;
        v9 = v141;
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    v5 = sub_1DAA9B6E0(&v172);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v204 = v222;
    v203 = v221;
    v200 = v218;
    v199 = v217;
    v77 = sub_1DAA9B6F0(&v199);
    v78 = sub_1DAA9B6E0(&v199);
    if (v77 == 1)
    {
      sub_1DAAD4CCC(&v217, &v190);
      v62 = &v190;
      goto LABEL_49;
    }

    v79 = v78;
    sub_1DAAD4CCC(&v217, &v190);
    sub_1DAAD4CCC(&v208, &v190);
    result = sub_1DAB76F80(&v226, &qword_1EE120158, &type metadata for Headline);
    if (*(v79 + 72) >= *(v5 + 72))
    {
      goto LABEL_50;
    }

    if (!v59)
    {
      break;
    }

    v80 = i - 9;
    v195 = i[5];
    v196 = i[6];
    v197 = i[7];
    v198 = i[8];
    v191 = i[1];
    v192 = i[2];
    v193 = i[3];
    v194 = i[4];
    v190 = *i;
    v81 = *(i - 4);
    i[4] = *(i - 5);
    i[5] = v81;
    v82 = *(i - 2);
    i[6] = *(i - 3);
    i[7] = v82;
    i[8] = *(i - 1);
    v83 = *(i - 6);
    i[2] = *(i - 7);
    i[3] = v83;
    v84 = *(i - 8);
    *i = *(i - 9);
    i[1] = v84;
    v80[4] = v194;
    v80[5] = v195;
    v80[6] = v196;
    v80[7] = v197;
    v80[8] = v198;
    v80[1] = v191;
    v80[2] = v192;
    v80[3] = v193;
    *v80 = v190;
    if (!v63)
    {
      goto LABEL_50;
    }

    ++v63;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1DAB72740(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = sub_1DACB7CC4();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v173 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v172 = &v158 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v174 = &v158 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v179 = &v158 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v162 = &v158 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v158 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v158 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v163 = &v158 - v25;
  v169 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_101:
    a4 = *v160;
    if (!*v160)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v5;
    if ((result & 1) == 0)
    {
LABEL_135:
      result = sub_1DAC0694C(v28);
      v28 = result;
    }

    v262 = v28;
    v153 = v28;
    v154 = *(v28 + 16);
    if (v154 >= 2)
    {
      v28 = 144;
      while (*v169)
      {
        v155 = *&v153[16 * v154];
        v156 = *&v153[16 * v154 + 24];
        sub_1DAB743CC((*v169 + 144 * v155), (*v169 + 144 * *&v153[16 * v154 + 16]), (*v169 + 144 * v156), a4);
        if (v27)
        {
        }

        if (v156 < v155)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_1DAC0694C(v153);
        }

        if (v154 - 2 >= *(v153 + 2))
        {
          goto LABEL_129;
        }

        v157 = &v153[16 * v154];
        *v157 = v155;
        *(v157 + 1) = v156;
        v262 = v153;
        result = sub_1DAC068C0(v154 - 1);
        v153 = v262;
        v154 = *(v262 + 16);
        if (v154 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v158 = a4;
  v27 = 0;
  v177 = (v24 + 32);
  v175 = (v24 + 8);
  v28 = MEMORY[0x1E69E7CC0];
  v29 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
  while (1)
  {
    v30 = v27++;
    v165 = v30;
    if (v27 < v26)
    {
      a4 = *v169;
      v31 = (*v169 + 144 * v27);
      v244 = *v31;
      v32 = v31[1];
      v33 = v31[2];
      v34 = v31[3];
      v248 = v31[4];
      v247 = v34;
      v246 = v33;
      v245 = v32;
      v35 = v31[5];
      v36 = v31[6];
      v37 = v31[7];
      v252 = v31[8];
      v251 = v37;
      v250 = v36;
      v249 = v35;
      v240 = v31[5];
      v241 = v31[6];
      v242 = v31[7];
      v243 = v31[8];
      v236 = v31[1];
      v237 = v31[2];
      v238 = v31[3];
      v239 = v31[4];
      v235 = *v31;
      v38 = (a4 + 144 * v30);
      v253 = *v38;
      v39 = v38[1];
      v40 = v38[2];
      v41 = v38[4];
      v256 = v38[3];
      v257 = v41;
      v254 = v39;
      v255 = v40;
      v42 = v38[5];
      v43 = v38[6];
      v44 = v38[8];
      v260 = v38[7];
      v261 = v44;
      v258 = v42;
      v259 = v43;
      v231 = v38[5];
      v232 = v38[6];
      v233 = v38[7];
      v234 = v38[8];
      v227 = v38[1];
      v228 = v38[2];
      v229 = v38[3];
      v230 = v38[4];
      v226 = *v38;
      sub_1DAAD4CCC(&v244, &v217);
      sub_1DAAD4CCC(&v253, &v217);
      LODWORD(v178) = sub_1DAB6FC4C(&v235, &v226);
      if (v5)
      {
        v214 = v232;
        v215 = v233;
        v216 = v234;
        v210 = v228;
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v208 = v226;
        v209 = v227;
        sub_1DAAD4D28(&v208);
        v223 = v241;
        v224 = v242;
        v225 = v243;
        v219 = v237;
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v217 = v235;
        v218 = v236;
        sub_1DAAD4D28(&v217);
      }

      v214 = v232;
      v215 = v233;
      v216 = v234;
      v210 = v228;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v208 = v226;
      v209 = v227;
      sub_1DAAD4D28(&v208);
      v223 = v241;
      v224 = v242;
      v225 = v243;
      v219 = v237;
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v217 = v235;
      v218 = v236;
      result = sub_1DAAD4D28(&v217);
      v27 = v30 + 2;
      if (v30 + 2 < v26)
      {
        v159 = v28;
        v45 = (a4 + 144 * v30 + 288);
        v170 = 0;
        v171 = v26;
        do
        {
          v181 = *v45;
          v46 = v45[1];
          v47 = v45[2];
          v48 = v45[4];
          v184 = v45[3];
          v185 = v48;
          v182 = v46;
          v183 = v47;
          v49 = v45[5];
          v50 = v45[6];
          v51 = v45[8];
          v188 = v45[7];
          v189 = v51;
          v186 = v49;
          v187 = v50;
          v190 = *(v45 - 9);
          v52 = *(v45 - 8);
          v53 = *(v45 - 7);
          v54 = *(v45 - 5);
          v193 = *(v45 - 6);
          v194 = v54;
          v191 = v52;
          v192 = v53;
          v55 = *(v45 - 4);
          v56 = *(v45 - 3);
          v57 = *(v45 - 1);
          v197 = *(v45 - 2);
          v198 = v57;
          v195 = v55;
          v196 = v56;
          v201 = v183;
          v202 = v184;
          v199 = v181;
          v200 = v182;
          v206 = v188;
          v207 = v189;
          v204 = v186;
          v205 = v187;
          v203 = v185;
          sub_1DAA9B6F0(&v199);
          a4 = *sub_1DAA9B6E0(&v199);
          sub_1DAAD4CCC(&v190, v180);
          sub_1DAAD4CCC(&v181, v180);
          v58 = [a4 v29[140]];
          if (v58)
          {
            v59 = v164;
            a4 = v58;
            sub_1DACB7C74();

            v60 = *v177;
            v61 = v163;
            (*v177)(v163, v59, v8);
            v180[6] = v196;
            v180[7] = v197;
            v180[8] = v198;
            v180[2] = v192;
            v180[3] = v193;
            v180[4] = v194;
            v180[5] = v195;
            v180[0] = v190;
            v180[1] = v191;
            sub_1DAA9B6F0(v180);
            v62 = [*sub_1DAA9B6E0(v180) v29[140]];
            if (v62)
            {
              v63 = v162;
              v64 = v62;
              sub_1DACB7C74();

              a4 = v27;
              v65 = v161;
              v60(v161, v63, v8);
              LODWORD(v176) = sub_1DACB7C24();
              v66 = *v175;
              v67 = v65;
              v27 = a4;
              (*v175)(v67, v8);
              v66(v61, v8);
              sub_1DAAD4D28(&v190);
              result = sub_1DAAD4D28(&v181);
              v5 = v170;
              v26 = v171;
              if ((v178 ^ v176))
              {
                goto LABEL_17;
              }
            }

            else
            {
              (*v175)(v61, v8);
              sub_1DAAD4D28(&v190);
              result = sub_1DAAD4D28(&v181);
              v5 = v170;
              v26 = v171;
              if (v178)
              {
LABEL_15:
                v28 = v159;
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1DAAD4D28(&v190);
            result = sub_1DAAD4D28(&v181);
            if (v178)
            {
              goto LABEL_15;
            }
          }

          ++v27;
          v45 += 9;
        }

        while (v26 != v27);
        v27 = v26;
LABEL_17:
        v28 = v159;
      }

      if (v178)
      {
LABEL_19:
        v68 = v165;
        if (v27 < v165)
        {
          goto LABEL_132;
        }

        if (v165 < v27)
        {
          v159 = v28;
          v170 = v5;
          v69 = 144 * v27 - 144;
          v70 = 144 * v165;
          v168 = v27;
          do
          {
            if (v68 != --v27)
            {
              v71 = *v169;
              if (!*v169)
              {
                goto LABEL_138;
              }

              a4 = v71 + v69;
              v204 = *(v71 + v70 + 80);
              v205 = *(v71 + v70 + 96);
              v206 = *(v71 + v70 + 112);
              v207 = *(v71 + v70 + 128);
              v200 = *(v71 + v70 + 16);
              v201 = *(v71 + v70 + 32);
              v202 = *(v71 + v70 + 48);
              v203 = *(v71 + v70 + 64);
              v199 = *(v71 + v70);
              result = memmove((v71 + v70), (v71 + v69), 0x90uLL);
              *(a4 + 80) = v204;
              *(a4 + 96) = v205;
              *(a4 + 112) = v206;
              *(a4 + 128) = v207;
              *(a4 + 16) = v200;
              *(a4 + 32) = v201;
              *(a4 + 48) = v202;
              *(a4 + 64) = v203;
              *a4 = v199;
            }

            ++v68;
            v69 -= 144;
            v70 += 144;
          }

          while (v68 < v27);
          v5 = v170;
          v28 = v159;
          v27 = v168;
        }
      }
    }

    v72 = v169[1];
    if (v27 < v72)
    {
      if (__OFSUB__(v27, v165))
      {
        goto LABEL_131;
      }

      if (v27 - v165 < v158)
      {
        if (__OFADD__(v165, v158))
        {
          goto LABEL_133;
        }

        if (v165 + v158 < v72)
        {
          v72 = v165 + v158;
        }

        if (v72 < v165)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (v27 != v72)
        {
          break;
        }
      }
    }

LABEL_49:
    if (v27 < v165)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v170 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v107 = *(v28 + 16);
    v106 = *(v28 + 24);
    v108 = v107 + 1;
    if (v107 >= v106 >> 1)
    {
      result = sub_1DAADB818((v106 > 1), v107 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v108;
    v109 = v28 + 16 * v107;
    *(v109 + 32) = v165;
    *(v109 + 40) = v27;
    v178 = *v160;
    if (!v178)
    {
      goto LABEL_140;
    }

    if (v107)
    {
      while (1)
      {
        a4 = v108 - 1;
        if (v108 >= 4)
        {
          break;
        }

        if (v108 == 3)
        {
          v110 = *(v28 + 32);
          v111 = *(v28 + 40);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_69:
          if (v113)
          {
            goto LABEL_119;
          }

          v126 = (v28 + 16 * v108);
          v128 = *v126;
          v127 = v126[1];
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_122;
          }

          v132 = (v28 + 32 + 16 * a4);
          v134 = *v132;
          v133 = v132[1];
          v120 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v120)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v130, v135))
          {
            goto LABEL_126;
          }

          if (v130 + v135 >= v112)
          {
            if (v112 < v135)
            {
              a4 = v108 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v136 = (v28 + 16 * v108);
        v138 = *v136;
        v137 = v136[1];
        v120 = __OFSUB__(v137, v138);
        v130 = v137 - v138;
        v131 = v120;
LABEL_83:
        if (v131)
        {
          goto LABEL_121;
        }

        v139 = v28 + 16 * a4;
        v141 = *(v139 + 32);
        v140 = *(v139 + 40);
        v120 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v120)
        {
          goto LABEL_124;
        }

        if (v142 < v130)
        {
          goto LABEL_3;
        }

LABEL_90:
        v147 = a4 - 1;
        if (a4 - 1 >= v108)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v169)
        {
          goto LABEL_137;
        }

        v148 = v27;
        v27 = v28;
        v149 = *(v28 + 32 + 16 * v147);
        v150 = *(v28 + 32 + 16 * a4);
        v28 = *(v28 + 32 + 16 * a4 + 8);
        v151 = v170;
        sub_1DAB743CC((*v169 + 144 * v149), (*v169 + 144 * v150), (*v169 + 144 * v28), v178);
        v170 = v151;
        if (v151)
        {
        }

        if (v28 < v149)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DAC0694C(v27);
        }

        if (v147 >= *(v27 + 16))
        {
          goto LABEL_116;
        }

        v152 = v27 + 16 * v147;
        *(v152 + 32) = v149;
        *(v152 + 40) = v28;
        v262 = v27;
        result = sub_1DAC068C0(a4);
        v28 = v262;
        v108 = *(v262 + 16);
        v27 = v148;
        if (v108 <= 1)
        {
          goto LABEL_3;
        }
      }

      v114 = v28 + 32 + 16 * v108;
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_117;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_118;
      }

      v121 = (v28 + 16 * v108);
      v123 = *v121;
      v122 = v121[1];
      v120 = __OFSUB__(v122, v123);
      v124 = v122 - v123;
      if (v120)
      {
        goto LABEL_120;
      }

      v120 = __OFADD__(v112, v124);
      v125 = v112 + v124;
      if (v120)
      {
        goto LABEL_123;
      }

      if (v125 >= v117)
      {
        v143 = (v28 + 32 + 16 * a4);
        v145 = *v143;
        v144 = v143[1];
        v120 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v120)
        {
          goto LABEL_127;
        }

        if (v112 < v146)
        {
          a4 = v108 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v5 = v170;
    v26 = v169[1];
    if (v27 >= v26)
    {
      goto LABEL_101;
    }
  }

  v166 = v72;
  v159 = v28;
  v73 = *v169;
  v170 = v5;
  v171 = v73;
  v74 = (v73 + 144 * v27);
  v75 = v165 - v27 + 1;
  v76 = v177;
LABEL_40:
  v167 = v75;
  v168 = v27;
  v77 = v75;
  v78 = v74;
  v176 = v74;
  while (1)
  {
    v235 = *v78;
    v79 = v78[1];
    v80 = v78[2];
    v81 = v78[3];
    v239 = v78[4];
    v238 = v81;
    v237 = v80;
    v236 = v79;
    v82 = v78[5];
    v83 = v78[6];
    v84 = v78[7];
    v243 = v78[8];
    v242 = v84;
    v241 = v83;
    v240 = v82;
    v244 = *(v78 - 9);
    v85 = *(v78 - 8);
    v86 = *(v78 - 7);
    v87 = *(v78 - 6);
    v248 = *(v78 - 5);
    v247 = v87;
    v246 = v86;
    v245 = v85;
    v88 = *(v78 - 4);
    v89 = *(v78 - 3);
    v90 = *(v78 - 2);
    v252 = *(v78 - 1);
    v251 = v90;
    v250 = v89;
    v249 = v88;
    v255 = v237;
    v256 = v238;
    v253 = v235;
    v254 = v236;
    v260 = v242;
    v261 = v243;
    v257 = v239;
    v258 = v240;
    v259 = v241;
    sub_1DAA9B6F0(&v253);
    a4 = *sub_1DAA9B6E0(&v253);
    sub_1DAAD4CCC(&v244, &v226);
    sub_1DAAD4CCC(&v235, &v226);
    v91 = [a4 v29[140]];
    if (!v91)
    {
      goto LABEL_38;
    }

    a4 = v91;
    v178 = v77;
    v92 = v174;
    sub_1DACB7C74();

    v93 = *v76;
    (*v76)(v179, v92, v8);
    v232 = v250;
    v233 = v251;
    v234 = v252;
    v228 = v246;
    v229 = v247;
    v231 = v249;
    v230 = v248;
    v227 = v245;
    v226 = v244;
    sub_1DAA9B6F0(&v226);
    v94 = [*sub_1DAA9B6E0(&v226) v29[140]];
    if (!v94)
    {
      (*v175)(v179, v8);
LABEL_38:
      sub_1DAAD4D28(&v244);
      sub_1DAAD4D28(&v235);
      goto LABEL_39;
    }

    v95 = v94;
    v96 = v173;
    sub_1DACB7C74();

    v97 = v172;
    v98 = v179;
    v99 = v177;
    v93(v172, v96, v8);
    a4 = sub_1DACB7C24();
    v100 = *v175;
    (*v175)(v97, v8);
    v100(v98, v8);
    sub_1DAAD4D28(&v244);
    result = sub_1DAAD4D28(&v235);
    if ((a4 & 1) == 0)
    {
      v29 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v76 = v99;
      v74 = v176;
LABEL_39:
      v27 = v168 + 1;
      v74 += 9;
      v75 = v167 - 1;
      if (v168 + 1 != v166)
      {
        goto LABEL_40;
      }

      v27 = v166;
      v5 = v170;
      v28 = v159;
      goto LABEL_49;
    }

    if (!v171)
    {
      break;
    }

    v101 = v78 - 9;
    v222 = v78[5];
    v223 = v78[6];
    v224 = v78[7];
    v225 = v78[8];
    v218 = v78[1];
    v219 = v78[2];
    v220 = v78[3];
    v221 = v78[4];
    v217 = *v78;
    v102 = *(v78 - 4);
    v78[4] = *(v78 - 5);
    v78[5] = v102;
    v103 = *(v78 - 2);
    v78[6] = *(v78 - 3);
    v78[7] = v103;
    v78[8] = *(v78 - 1);
    v104 = *(v78 - 6);
    v78[2] = *(v78 - 7);
    v78[3] = v104;
    v105 = *(v78 - 8);
    *v78 = *(v78 - 9);
    v78[1] = v105;
    v101[4] = v221;
    v101[5] = v222;
    v101[6] = v223;
    v101[7] = v224;
    v101[8] = v225;
    v101[1] = v218;
    v101[2] = v219;
    v101[3] = v220;
    *v101 = v217;
    v29 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v76 = v99;
    v74 = v176;
    if (!v178)
    {
      goto LABEL_39;
    }

    v77 = v178 + 1;
    v78 -= 9;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1DAB73714(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 144;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 144;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[144 * v11] <= a4)
    {
      memmove(a4, __dst, 144 * v11);
    }

    v12 = &v4[144 * v11];
    if (v10 >= 144 && v6 > v7)
    {
      v31 = &qword_1EE120158;
LABEL_31:
      v32 = v6 - 144;
      v5 -= 144;
      v33 = v12;
      do
      {
        v12 = v33;
        v67 = *(v33 - 144);
        v34 = *(v33 - 128);
        v35 = *(v33 - 112);
        v36 = *(v33 - 80);
        v70 = *(v33 - 96);
        v71 = v36;
        v68 = v34;
        v69 = v35;
        v37 = *(v33 - 64);
        v38 = *(v33 - 48);
        v39 = *(v33 - 16);
        v74 = *(v33 - 32);
        v75 = v39;
        v72 = v37;
        v73 = v38;
        v41 = *v32;
        v40 = *(v6 - 8);
        v42 = *(v6 - 6);
        v78 = *(v6 - 7);
        v79 = v42;
        v44 = *(v6 - 8);
        v43 = *(v6 - 7);
        v45 = *v32;
        v76 = v41;
        v77 = v44;
        v46 = *(v6 - 2);
        v84 = *(v6 - 1);
        v47 = *(v6 - 4);
        v48 = *(v6 - 2);
        v82 = *(v6 - 3);
        v83 = v48;
        v49 = *(v6 - 6);
        v50 = *(v6 - 4);
        v80 = *(v6 - 5);
        v81 = v50;
        v91 = v73;
        v92 = v74;
        v93 = v75;
        v87 = v69;
        v88 = v70;
        v89 = v71;
        v90 = v72;
        v85 = v67;
        v86 = v68;
        v100 = v82;
        v101 = v46;
        v102 = *(v6 - 1);
        v96 = v43;
        v97 = v49;
        v98 = v80;
        v99 = v47;
        v94 = v45;
        v95 = v40;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          sub_1DAA9B6E0(&v103);
          sub_1DAAD4CCC(&v76, &v58);
          sub_1DAAD4CCC(&v67, &v58);
          sub_1DAB76F80(&v85, v31, &type metadata for Headline);
        }

        else
        {
          v51 = v31;
          v112 = sub_1DAA9B6E0(&v103);
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          v52 = sub_1DAA9B6F0(&v58);
          v53 = sub_1DAA9B6E0(&v58);
          if (v52 == 1)
          {
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51, &type metadata for Headline);
          }

          else
          {
            v54 = v53;
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51, &type metadata for Headline);
            if (*(v54 + 88) < *(v112 + 88))
            {
              if (v5 + 144 < v6 || v5 >= v6 || v5 + 144 != v6)
              {
                memmove(v5, v6 - 144, 0x90uLL);
              }

              if (v12 <= v4 || (v6 -= 144, v32 <= v7))
              {
                v6 = v32;
                goto LABEL_52;
              }

              goto LABEL_31;
            }
          }
        }

        v33 = v12 - 144;
        if ((v5 + 144) < v12 || v5 >= v12 || v5 + 144 != v12)
        {
          memmove(v5, (v12 - 144), 0x90uLL);
        }

        v5 -= 144;
      }

      while (v33 > v4);
      v12 -= 144;
    }
  }

  else
  {
    if (a4 != __src || &__src[144 * v9] <= a4)
    {
      memmove(a4, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 >= 144 && v6 < v5)
    {
      v13 = &qword_1EE120158;
      while (1)
      {
        v67 = *v6;
        v14 = *(v6 + 1);
        v15 = *(v6 + 2);
        v16 = *(v6 + 4);
        v70 = *(v6 + 3);
        v71 = v16;
        v68 = v14;
        v69 = v15;
        v17 = *(v6 + 5);
        v18 = *(v6 + 6);
        v19 = *(v6 + 8);
        v74 = *(v6 + 7);
        v75 = v19;
        v72 = v17;
        v73 = v18;
        v76 = *v4;
        v20 = *(v4 + 1);
        v21 = *(v4 + 2);
        v22 = *(v4 + 4);
        v79 = *(v4 + 3);
        v80 = v22;
        v77 = v20;
        v78 = v21;
        v23 = *(v4 + 5);
        v24 = *(v4 + 6);
        v25 = *(v4 + 8);
        v83 = *(v4 + 7);
        v84 = v25;
        v81 = v23;
        v82 = v24;
        v87 = v69;
        v88 = v70;
        v85 = v67;
        v86 = v68;
        v92 = v74;
        v93 = v75;
        v90 = v72;
        v91 = v73;
        v89 = v71;
        v100 = v24;
        v101 = v83;
        v102 = v25;
        v96 = v78;
        v97 = v79;
        v98 = v80;
        v99 = v23;
        v94 = v76;
        v95 = v77;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          break;
        }

        v27 = v13;
        v112 = sub_1DAA9B6E0(&v103);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        v28 = sub_1DAA9B6F0(&v58);
        v29 = sub_1DAA9B6E0(&v58);
        if (v28 == 1)
        {
          sub_1DAAD4CCC(&v76, v57);
          sub_1DAAD4CCC(&v67, v57);
          v13 = v27;
          v26 = v27;
          goto LABEL_12;
        }

        v30 = v29;
        sub_1DAAD4CCC(&v76, v57);
        sub_1DAAD4CCC(&v67, v57);
        v13 = v27;
        sub_1DAB76F80(&v85, v27, &type metadata for Headline);
        if (*(v30 + 88) < *(v112 + 88))
        {
          if (v7 != v6)
          {
            memmove(v7, v6, 0x90uLL);
          }

          v6 += 144;
          goto LABEL_18;
        }

LABEL_13:
        if (v7 < v4 || v7 >= v4 + 144 || v7 != v4)
        {
          memmove(v7, v4, 0x90uLL);
        }

        v4 += 144;
LABEL_18:
        v7 += 144;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_50;
        }
      }

      sub_1DAA9B6E0(&v103);
      sub_1DAAD4CCC(&v76, &v58);
      sub_1DAAD4CCC(&v67, &v58);
      v26 = v13;
LABEL_12:
      sub_1DAB76F80(&v85, v26, &type metadata for Headline);
      goto LABEL_13;
    }

LABEL_50:
    v6 = v7;
  }

LABEL_52:
  v55 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v55])
  {
    memmove(v6, v4, 144 * v55);
  }

  return 1;
}