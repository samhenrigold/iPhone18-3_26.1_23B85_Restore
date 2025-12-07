_OWORD *sub_29D6922EC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_29D690868(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_29D692FC4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_29D690B98(v13, a3 & 1);
    v8 = sub_29D690868(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_29D69417C(v19);

    return sub_29D6940E0(a1, v19);
  }

  else
  {
    sub_29D6928D0(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_29D69242C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29D6907F0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_29D6932D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29D691114(v16, a4 & 1);
    v11 = sub_29D6907F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_29D69417C(v22);

    return sub_29D6940E0(a1, v22);
  }

  else
  {
    sub_29D692938(v11, a2, a3, a1, v21);

    return sub_29D935E88();
  }
}

void sub_29D69257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_29D6907F0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_29D691C58(v18, a5 & 1);
      v13 = sub_29D6907F0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_29D93ADC8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_29D69395C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  sub_29D935E88();
}

void sub_29D692704(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_29D690A14(a2);
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
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_29D693AD8();
      goto LABEL_7;
    }

    sub_29D691F1C(v18, a3 & 1);
    v22 = sub_29D690A14(a2);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_29D6929A4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_29D93ADC8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

_OWORD *sub_29D6928D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_29D6940E0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_29D692938(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6940E0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29D6929A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29D9339F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_29D692A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29D93AD78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D692B14(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29D694610(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED6AD90](v9, a1);
      sub_29D69466C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D692BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_29D68E85C(v24, 255, v25, v26);
      v20 = sub_29D939CF8();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_29D692D80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29D93A708();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D692E54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_29D939D68();
      v8 = v7;
      if (v6 == sub_29D939D68() && v8 == v9)
      {
        break;
      }

      v11 = sub_29D93AD78();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_29D692F58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_29D692FC4()
{
  v1 = v0;
  sub_29D6941F0(0);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D694294(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_29D6940E0(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_29D693138()
{
  v1 = v0;
  sub_29D694530(0);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D6945AC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29D679D3C(v25, *(v4 + 56) + v22);
        result = sub_29D935E88();
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

void *sub_29D6932D4()
{
  v1 = v0;
  sub_29D6946C0(0, &qword_2A17B1128, MEMORY[0x29EDCA178] + 8);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D694294(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29D6940E0(v25, (*(v4 + 56) + v22));
        result = sub_29D935E88();
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

void *sub_29D693480()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v32 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6942F0(0);
  v5 = *v0;
  v6 = sub_29D93AB88();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_29D694358(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_29D6943BC(v26, *(v28 + 56) + v27);
        result = sub_29D935E88();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_21;
      }

      v20 = *(v5 + 64 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_29D6936A0()
{
  v1 = v0;
  sub_29D6946C0(0, &qword_2A17B1098, &type metadata for ArticleIdentifiers);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        result = sub_29D935E88();
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

id sub_29D69380C()
{
  v1 = v0;
  sub_29D695790(0);
  v2 = *v0;
  v3 = sub_29D93AB88();
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

void *sub_29D69395C()
{
  v1 = v0;
  sub_29D6946C0(0, &unk_2A17B3740, MEMORY[0x29EDC99B0]);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D935E88();
        result = sub_29D935E88();
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

void *sub_29D693AD8()
{
  v1 = v0;
  v32 = sub_29D9339F8();
  v34 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D695564(0);
  v4 = *v0;
  v5 = sub_29D93AB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = sub_29D935E88();
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29D693D44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D693F78(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D679D3C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D693DDC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_29D693E2C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_29D693E70(uint64_t a1)
{
  sub_29D934E48();
  sub_29D934E58();
  Width = CGRectGetWidth(v10);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = Width * 0.23;
    v5 = (a1 + 32);
    v6 = 0.0;
    do
    {
      sub_29D934E48();
      sub_29D934E58();
      sub_29D934DD8();
      sub_29D693E2C(v5, v5[3]);
      sub_29D935118();
      v7 = CGRectGetWidth(v11);

      if (v6 >= v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      if (v7 > v8)
      {
        v8 = v7;
      }

      if (v8 > v4)
      {
        v6 = v8;
      }

      else
      {
        v6 = v4;
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

uint64_t *sub_29D693F78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29D693FE0(uint64_t a1, uint64_t a2)
{
  sub_29D68F3C4(0, &qword_2A17B1020, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D694070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_29D68F3C4(0, a2, &qword_2A17B1010, MEMORY[0x29EDC1DD8], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_29D6940E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29D6940F0(uint64_t a1)
{
  sub_29D695880(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D69417C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_29D6941F0(uint64_t a1)
{
  if (!qword_2A17B1040)
  {
    type metadata accessor for Key(255);
    sub_29D68E85C(&qword_2A17B1048, 255, type metadata accessor for Key, &unk_29D93F57C);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1040);
    }
  }
}

uint64_t sub_29D694294(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_29D6942F0(uint64_t a1)
{
  if (!qword_2A17B10A0)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B10A0);
    }
  }
}

uint64_t sub_29D694358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6943BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D694420(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D695734(255, a3, a4, 0);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D6944A4()
{
  if (!qword_2A17B10F0)
  {
    v0 = sub_29D93A188();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B10F0);
    }
  }
}

void sub_29D694530(uint64_t a1)
{
  if (!qword_2A17B1118)
  {
    sub_29D695734(255, &qword_2A17B1120, MEMORY[0x29EDC9968], 1);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1118);
    }
  }
}

uint64_t sub_29D6945AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_29D6946C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D93ABB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D694718()
{
  result = qword_2A1A25730;
  if (!qword_2A1A25730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A25730);
  }

  return result;
}

uint64_t sub_29D694784(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D694908(uint64_t a1, int a2)
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

uint64_t sub_29D694928(uint64_t result, int a2, int a3)
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

__n128 sub_29D6949F0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D6949FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D694A1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_29D695384()
{
  result = qword_2A17B1318;
  if (!qword_2A17B1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1318);
  }

  return result;
}

uint64_t sub_29D695554(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_29D695564(uint64_t a1)
{
  if (!qword_2A17B1370)
  {
    sub_29D9339F8();
    sub_29D695614(255);
    sub_29D68E85C(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1370);
    }
  }
}

void sub_29D695614(uint64_t a1)
{
  if (!qword_2A17B1378)
  {
    sub_29D69567C(255, &qword_2A17B1380, 0x29EDBAB10);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1378);
    }
  }
}

uint64_t sub_29D69567C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D6956C4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D68F3C4(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D695734(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D695790(uint64_t a1)
{
  if (!qword_2A17B37C0)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    sub_29D68E85C(&qword_2A17B10B0, 255, type metadata accessor for HKBloodPressureClassificationCategory, &unk_29D93E34C);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B37C0);
    }
  }
}

void sub_29D695880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D69590C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D695A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[0] = a2;
  v25[1] = a3;
  v4 = sub_29D938F98();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MonitorHypertensionJournalSummaryView(0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D69A17C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69ABC4(a1, v12 + v9[7], type metadata accessor for MonitorHypertensionSummaryViewModel);
  *v12 = swift_getKeyPath();
  v19 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v20 = v9[5];
  *(v12 + v20) = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v19);
  swift_storeEnumTagMultiPayload();
  sub_29D6966E8();
  v21 = v9[8];
  v22 = sub_29D9369A8();
  (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
  v23 = sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
  sub_29D939308();
  sub_29D69A3E4(v12, type metadata accessor for MonitorHypertensionJournalSummaryView);
  sub_29D938F88();
  v25[2] = v9;
  v25[3] = v23;
  swift_getOpaqueTypeConformance2();
  sub_29D939428();
  (*(v5 + 8))(v8, v4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_29D695D84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D695E08()
{
  sub_29D936978();
  sub_29D69A3E4(v0 + OBJC_IVAR____TtC5Heart58MonitorHypertensionJournalSummaryViewConfigurationProvider_presentationContext, sub_29D697F20);

  return swift_deallocClassInstance();
}

uint64_t sub_29D695E8C()
{
  type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC5Heart58MonitorHypertensionJournalSummaryViewConfigurationProvider_presentationContext;
  v2 = sub_29D9350C8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_29D695F10@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_29D699F78(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69A288(0);
  v10 = v9;
  v26 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B15E0, type metadata accessor for MonitorHypertensionSummaryViewModel, MEMORY[0x29EDC1E70]);
  sub_29D9351B8();
  v28 = v17;
  v29 = a1;
  sub_29D69A090(0);
  sub_29D69A17C(255);
  v19 = v18;
  v20 = type metadata accessor for MonitorHypertensionJournalSummaryView(255);
  v21 = sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
  v30 = v20;
  v31 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v19;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  type metadata accessor for NonHighlightingPlatformBackgroundView(0);
  sub_29D6975A8(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
  sub_29D938F08();
  (*(v5 + 8))(v8, v4);
  sub_29D9390D8();
  sub_29D933E68();
  v23 = v27;
  v27[3] = v10;
  v23[4] = sub_29D6975A8(&qword_2A17B15E8, sub_29D69A288, MEMORY[0x29EDBC030]);
  sub_29D693F78(v23);
  sub_29D938F18();
  (*(v26 + 8))(v13, v10);
  return sub_29D69A3E4(v17, type metadata accessor for MonitorHypertensionSummaryViewModel);
}

uint64_t sub_29D6962E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9379E8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D696358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);

  return MEMORY[0x2A1C628B8](a1, v5, a3);
}

uint64_t sub_29D6963EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_29D936978();
}

void *sub_29D6964AC()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v24 - v8;
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v24 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v24 - v15;
  type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  sub_29D933AD8();
  result = sub_29D933BB8();
  v18 = result;
  if (qword_2A17B0BC0 != -1)
  {
    result = swift_once();
  }

  v19 = qword_2A17D07B0 - 1;
  if (__OFSUB__(qword_2A17D07B0, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = sub_29D933958();
    v21 = [v18 hk:v19 startOfDateByAddingDays:v20 toDate:?];

    sub_29D933998();
    v22 = *(v1 + 16);
    v22(v9, v16, v0);
    v22(v5, v13, v0);
    sub_29D933188();
    v23 = *(v1 + 8);
    v23(v13, v0);
    return (v23)(v16, v0);
  }

  return result;
}

uint64_t sub_29D6966E8()
{
  v0 = sub_29D933CE8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933D38();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  sub_29D69A444(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D933AB8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x29EDB9C78], v11);
  sub_29D933AC8();
  (*(v12 + 8))(v15, v11);
  sub_29D933A78();
  v16 = sub_29D933AA8();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  sub_29D933C78();
  sub_29D933D18();
  sub_29D933CB8();
  sub_29D933C88();
  sub_29D933AF8();
  (*(v1 + 8))(v4, v0);
  return sub_29D933B08();
}

uint64_t sub_29D69698C()
{
  v1 = sub_29D9331D8();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9339F8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D933CE8();
  v30 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D939BD8();
  v11 = *(v32 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v32, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v29 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v29 - v21;
  v23 = *(v7 + 16);
  v29 = v7 + 16;
  v23(v10, v0, v6);
  sub_29D9339E8();
  sub_29D939BB8();
  v24 = v31;
  sub_29D6964AC();
  sub_29D933178();
  (*(v33 + 8))(v24, v34);
  v23(v10, v0, v30);
  sub_29D939BB8();
  sub_29D939BA8();
  v25 = sub_29D939BC8();
  v26 = *(v11 + 8);
  v27 = v32;
  v26(v15, v32);
  v26(v19, v27);
  v26(v22, v27);
  return v25 & ~(v25 >> 63);
}

uint64_t sub_29D696CB8()
{
  v1 = *v0;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D696D00(uint64_t a1)
{
  v2 = *v1;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v2);
  return sub_29D93AE98();
}

unint64_t sub_29D696D44()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x536C616E72756F6ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261646E656C6163;
  }
}

uint64_t sub_29D696DAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D699E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D696DEC(uint64_t a1)
{
  v2 = sub_29D697520();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D696E28(uint64_t a1)
{
  v2 = sub_29D697520();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t static MonitorHypertensionSummaryViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x29ED63FF0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  if ((sub_29D696F98(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_29D933988();
}

uint64_t sub_29D696F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_29D93AD78() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_29D696F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v9, v16, v4);
    sub_29D6975A8(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    v23 = sub_29D939CF8();
    v24 = *v19;
    (*v19)(v9, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

void sub_29D6971AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_29D939D68();
      v7 = v6;
      if (v5 == sub_29D939D68() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_29D93AD78();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }
}

uint64_t MonitorHypertensionSummaryViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_29D697AF4(0, &qword_2A17B1510, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12[-v9];
  sub_29D693E2C(a1, a1[3]);
  sub_29D697520();
  sub_29D93AED8();
  v14 = 0;
  sub_29D933CE8();
  sub_29D6975A8(&qword_2A17B1520, MEMORY[0x29EDB9D18], MEMORY[0x29EDB9D20]);
  sub_29D93AD18();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for MonitorHypertensionSummaryViewModel(0) + 20));
    v12[15] = 1;
    sub_29D697F54(0, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    sub_29D697B58(&qword_2A17B1530, sub_29D697574, MEMORY[0x29EDC9A48]);
    sub_29D93AD18();
    v12[14] = 2;
    sub_29D9339F8();
    sub_29D697574();
    sub_29D93AD18();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_29D697520()
{
  result = qword_2A17B1518;
  if (!qword_2A17B1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1518);
  }

  return result;
}

uint64_t sub_29D6975A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MonitorHypertensionSummaryViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_29D9339F8();
  v23 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933CE8();
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697AF4(0, &qword_2A17B1540, MEMORY[0x29EDC9E80]);
  v29 = v9;
  v26 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D697520();
  v30 = v12;
  v17 = v31;
  sub_29D93AEC8();
  if (v17)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v31 = v16;
    v19 = v26;
    v18 = v27;
    v35 = 0;
    sub_29D6975A8(&qword_2A17B1548, MEMORY[0x29EDB9D18], MEMORY[0x29EDB9D30]);
    sub_29D93AC88();
    v20 = *(v25 + 32);
    v21 = v28;
    v28 = v6;
    v20(v31, v21, v6);
    sub_29D697F54(0, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    v34 = 1;
    sub_29D697B58(&qword_2A17B1550, sub_29D697BF4, MEMORY[0x29EDC9A78]);
    sub_29D93AC88();
    *&v31[*(v13 + 20)] = v32;
    v33 = 2;
    sub_29D697BF4();
    sub_29D93AC88();
    (*(v19 + 8))(v30, v29);
    v22 = v31;
    (*(v23 + 32))(&v31[*(v13 + 24)], v5, v18);
    sub_29D69ABC4(v22, v24, type metadata accessor for MonitorHypertensionSummaryViewModel);
    sub_29D69417C(a1);
    sub_29D69A3E4(v22, type metadata accessor for MonitorHypertensionSummaryViewModel);
  }
}

void sub_29D697AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D697520();
    v7 = a3(a1, &type metadata for MonitorHypertensionSummaryViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D697B58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D697F54(255, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D697CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x29ED63FF0]() & 1) == 0 || (sub_29D696F98(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_29D933988();
}

void sub_29D697E84(uint64_t a1)
{
  sub_29D697F20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29D697F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D697FE0(uint64_t a1)
{
  sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    sub_29D697F54(319, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29D9339F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MonitorHypertensionSummaryViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonitorHypertensionSummaryViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D698210()
{
  result = qword_2A17B1598;
  if (!qword_2A17B1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1598);
  }

  return result;
}

unint64_t sub_29D698268()
{
  result = qword_2A17B15A0;
  if (!qword_2A17B15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B15A0);
  }

  return result;
}

unint64_t sub_29D6982C0()
{
  result = qword_2A17B15A8;
  if (!qword_2A17B15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B15A8);
  }

  return result;
}

uint64_t sub_29D698314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v56 = a4;
  v57 = a2;
  sub_29D69A444(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B16B0, sub_29D69AC2C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v54 = &v43 - v10;
  sub_29D69AC2C(0);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9334C8();
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D933AA8();
  v48 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v17);
  v18 = sub_29D939D18();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2BE98;
  v45 = v19;
  v24 = *(v19 + 16);
  v24(v22, a1, v18);
  sub_29D935E88();
  v25 = v23;
  sub_29D933A98();
  v26 = sub_29D939D98();
  v43 = a1;
  v44 = v18;
  v47 = v26;
  v24(v22, v57, v18);
  sub_29D935E88();
  v27 = v25;
  sub_29D933A98();
  v28 = sub_29D939D98();
  v30 = v29;
  sub_29D697F54(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93F680;
  *(v31 + 56) = MEMORY[0x29EDC99B0];
  v32 = sub_29D69AD24();
  *(v31 + 32) = v28;
  *(v31 + 40) = v30;
  v33 = MEMORY[0x29EDC9C10];
  *(v31 + 96) = MEMORY[0x29EDC9BA8];
  *(v31 + 104) = v33;
  v34 = v51;
  *(v31 + 64) = v32;
  *(v31 + 72) = v34;
  sub_29D935E88();
  sub_29D939D38();

  sub_29D935E88();
  sub_29D9334B8();
  sub_29D933478();
  v59[0] = v28;
  v59[1] = v30;
  v35 = v55;
  (*(v48 + 56))(v55, 1, 1, v50);
  sub_29D933468();
  sub_29D6975A8(&qword_2A17B16C0, MEMORY[0x29EDB9A78], MEMORY[0x29EDB9A70]);
  sub_29D69AB60();
  v36 = v54;
  sub_29D9335A8();
  sub_29D69A3E4(v35, sub_29D69A444);
  result = (*(v52 + 48))(v36, 1, v53);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v38 = v46;
    sub_29D69AD78(v36, v46, sub_29D69AC2C);
    v59[0] = sub_29D939148();
    sub_29D69ADE0();
    sub_29D933488();
    sub_29D939148();
    sub_29D939178();
    v39 = sub_29D9391D8();

    sub_29D6975A8(&qword_2A17B16D0, sub_29D69AC2C, MEMORY[0x29EDC9C40]);
    v40 = sub_29D933498();
    v58 = v39;
    sub_29D9334F8();
    v40(v59, 0);
    v41 = v44;
    v42 = *(v45 + 8);
    v42(v57, v44);
    v42(v43, v41);
    return sub_29D69A3E4(v38, sub_29D69AC2C);
  }

  return result;
}

uint64_t sub_29D6989E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v116 = a1;
  v108 = a2;
  v106 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v106, v3);
  v105 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v104 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v107 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for HealthCalendarView(0) - 8;
  v13 = MEMORY[0x2A1C7C4A8](v101, v12);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = (&v101 - v16);
  v18 = sub_29D939D18();
  v102 = *(v18 - 8);
  v103 = v18;
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v101 - v24;
  v26 = sub_29D933468();
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939D08();
  sub_29D939D08();
  v30 = type metadata accessor for MonitorHypertensionJournalSummaryView(0);
  v31 = v2 + *(v30 + 28);
  sub_29D698314(v25, v22, *(*(v31 + *(v9 + 28)) + 16), v29);
  v32 = sub_29D9392E8();
  v120 = v33;
  v121 = v32;
  LOBYTE(v2) = v34;
  v122 = v35;
  KeyPath = swift_getKeyPath();
  v118 = swift_getKeyPath();
  v117 = v2 & 1;
  LOBYTE(v143) = v2 & 1;
  LOBYTE(v139) = 1;
  sub_29D939D08();
  sub_29D939D08();
  v36 = sub_29D69698C();
  sub_29D698314(v25, v22, v36, v29);
  v37 = sub_29D9392E8();
  v113 = v38;
  v114 = v37;
  LOBYTE(v2) = v39;
  v115 = v40;
  v112 = swift_getKeyPath();
  v111 = swift_getKeyPath();
  v110 = v2 & 1;
  LOBYTE(v143) = v2 & 1;
  LOBYTE(v139) = 1;
  v41 = v31;
  v42 = v107;
  sub_29D69ABC4(v41, v107, type metadata accessor for MonitorHypertensionSummaryViewModel);
  v43 = *(v30 + 24);
  v44 = v101;
  v45 = v17 + *(v101 + 28);
  v46 = sub_29D933CE8();
  (*(*(v46 - 8) + 16))(v45, v116 + v43, v46);
  v47 = *(v42 + *(v9 + 28));
  v48 = type metadata accessor for HealthCalendarViewModel(0);
  sub_29D935E88();
  sub_29D6964AC();
  sub_29D69A3E4(v42, type metadata accessor for MonitorHypertensionSummaryViewModel);
  *&v45[*(v48 + 20)] = v47;
  *v17 = swift_getKeyPath();
  v49 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v50 = *(v44 + 32);
  *(v17 + v50) = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v49);
  v107 = v17;
  swift_storeEnumTagMultiPayload();
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v51 = qword_2A1A2BE98;
  v53 = v102;
  v52 = v103;
  (*(v102 + 16))(v22, v25, v103);
  sub_29D935E88();
  v54 = v51;
  sub_29D933A98();
  v55 = sub_29D939D98();
  v57 = v56;
  (*(v53 + 8))(v25, v52);
  v143 = v55;
  v144 = v57;
  sub_29D69AB60();
  v58 = sub_29D9392F8();
  v60 = v59;
  v62 = v61;
  sub_29D939228();
  v63 = sub_29D9392C8();
  v65 = v64;
  v67 = v66;

  sub_29D69ABB4(v58, v60, v62 & 1);

  LODWORD(v143) = sub_29D938EF8();
  v68 = sub_29D9392B8();
  v103 = v69;
  v104 = v70;
  v72 = v71;
  sub_29D69ABB4(v63, v65, v67 & 1);

  LOBYTE(v63) = sub_29D939138();
  v73 = v105;
  sub_29D6998E4(v105);
  sub_29D69A3E4(v73, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  LOBYTE(v52) = v72 & 1;
  LOBYTE(v143) = v72 & 1;
  LOBYTE(v139) = 0;
  v82 = v107;
  v83 = v109;
  sub_29D69ABC4(v107, v109, type metadata accessor for HealthCalendarView);
  *&v129 = v121;
  *(&v129 + 1) = v120;
  LOBYTE(v130) = v117;
  *(&v130 + 1) = *v126;
  DWORD1(v130) = *&v126[3];
  *(&v130 + 1) = v122;
  *&v131 = KeyPath;
  BYTE8(v131) = 0;
  HIDWORD(v131) = *&v125[3];
  *(&v131 + 9) = *v125;
  v132 = v118;
  v133 = 1;
  v84 = v108;
  *(v108 + 64) = 1;
  v85 = v130;
  *v84 = v129;
  *(v84 + 16) = v85;
  v86 = v132;
  *(v84 + 32) = v131;
  *(v84 + 48) = v86;
  *&v134 = v114;
  *(&v134 + 1) = v113;
  LOBYTE(v135) = v110;
  DWORD1(v135) = *&v128[3];
  *(&v135 + 1) = *v128;
  *(&v135 + 1) = v115;
  *&v136 = v112;
  BYTE8(v136) = 0;
  HIDWORD(v136) = *&v127[3];
  *(&v136 + 9) = *v127;
  v137 = v111;
  v138 = 1;
  v87 = v135;
  *(v84 + 72) = v134;
  v88 = v136;
  v89 = v137;
  *(v84 + 136) = 1;
  *(v84 + 120) = v89;
  *(v84 + 104) = v88;
  *(v84 + 88) = v87;
  sub_29D69A7D4(0);
  v91 = v90;
  sub_29D69ABC4(v83, v84 + *(v90 + 64), type metadata accessor for HealthCalendarView);
  v92 = (v84 + *(v91 + 80));
  v93 = v68;
  *&v139 = v68;
  v95 = v103;
  v94 = v104;
  *(&v139 + 1) = v103;
  LOBYTE(v140) = v52;
  *(&v140 + 1) = *v124;
  DWORD1(v140) = *&v124[3];
  *(&v140 + 1) = v104;
  LOBYTE(v141) = v63;
  *(&v141 + 1) = *v123;
  DWORD1(v141) = *&v123[3];
  *(&v141 + 1) = v75;
  *&v142[0] = v77;
  *(&v142[0] + 1) = v79;
  *&v142[1] = v81;
  BYTE8(v142[1]) = 0;
  v96 = v139;
  v97 = v140;
  v98 = v141;
  *(v92 + 57) = *(v142 + 9);
  v99 = v142[0];
  v92[2] = v98;
  v92[3] = v99;
  *v92 = v96;
  v92[1] = v97;
  sub_29D69ABC4(&v129, &v143, sub_29D69A85C);
  sub_29D69ABC4(&v134, &v143, sub_29D69A85C);
  sub_29D69ABC4(&v139, &v143, sub_29D69AA14);
  sub_29D69A3E4(v82, type metadata accessor for HealthCalendarView);
  v143 = v93;
  v144 = v95;
  v145 = v52;
  *v146 = *v124;
  *&v146[3] = *&v124[3];
  v147 = v94;
  v148 = v63;
  *v149 = *v123;
  *&v149[3] = *&v123[3];
  v150 = v75;
  v151 = v77;
  v152 = v79;
  v153 = v81;
  v154 = 0;
  sub_29D69A3E4(&v143, sub_29D69AA14);
  sub_29D69A3E4(v83, type metadata accessor for HealthCalendarView);
  v155[0] = v114;
  v155[1] = v113;
  v156 = v110;
  *v157 = *v128;
  *&v157[3] = *&v128[3];
  v158 = v115;
  v159 = v112;
  v160 = 0;
  *v161 = *v127;
  *&v161[3] = *&v127[3];
  v162 = v111;
  v163 = 0;
  v164 = 1;
  sub_29D69A3E4(v155, sub_29D69A85C);
  v165[0] = v121;
  v165[1] = v120;
  v166 = v117;
  *v167 = *v126;
  *&v167[3] = *&v126[3];
  v168 = v122;
  v169 = KeyPath;
  v170 = 0;
  *v171 = *v125;
  *&v171[3] = *&v125[3];
  v172 = v118;
  v173 = 0;
  v174 = 1;
  return sub_29D69A3E4(v165, sub_29D69A85C);
}

uint64_t sub_29D6994B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  v6 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v7 = *(a2 + 20);
  *&a3[v7] = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v6);
  swift_storeEnumTagMultiPayload();
  sub_29D6966E8();
  v8 = *(a2 + 32);
  v9 = sub_29D9369A8();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  sub_29D697F54(0, &qword_2A17B15E0, type metadata accessor for MonitorHypertensionSummaryViewModel, MEMORY[0x29EDC1E70]);
  v11 = v10;
  sub_29D9351B8();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1, v11);
}

void sub_29D6996EC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_29D938C78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29D69A738(0);
  sub_29D6989E8(v1, a1 + *(v7 + 44));
  v8 = sub_29D9390E8();
  sub_29D6998E4(v6);
  sub_29D69A3E4(v6, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_29D69AA6C(0);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

uint64_t sub_29D69980C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938AD8();
  return sub_29D6F2410(v5, a1);
}

uint64_t sub_29D6998E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v16 - v12;
  sub_29D69AEC8(v2, &v16 - v12, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29D69AD78(v13, a1, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  }

  sub_29D93A298();
  v15 = sub_29D9390A8();
  sub_29D937758();

  sub_29D938B58();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D699AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v15 - v11;
  sub_29D67A66C(v2, &v15 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29D67A700(v12, a1);
  }

  sub_29D93A298();
  v14 = sub_29D9390A8();
  sub_29D937758();

  sub_29D938B58();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D699D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_29D699DF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D938B18();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D699E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D9578A0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C616E72756F6ALL && a2 == 0xEC00000074726174)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

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

void sub_29D699F78(uint64_t a1)
{
  if (!qword_2A17B15B0)
  {
    sub_29D69A090(255);
    sub_29D69A17C(255);
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B15B0);
    }
  }
}

void sub_29D69A090(uint64_t a1)
{
  if (!qword_2A17B15B8)
  {
    sub_29D69A17C(255);
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B15B8);
    }
  }
}

void sub_29D69A17C(uint64_t a1)
{
  if (!qword_2A17B15C0)
  {
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B15C0);
    }
  }
}

uint64_t sub_29D69A250(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69A288(uint64_t a1)
{
  if (!qword_2A17B15D0)
  {
    sub_29D69A090(255);
    type metadata accessor for NonHighlightingPlatformBackgroundView(255);
    sub_29D69A17C(255);
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView, &unk_29D93FB00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6975A8(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B15D0);
    }
  }
}

uint64_t sub_29D69A3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D69A4A0(uint64_t a1)
{
  sub_29D697F54(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D697F54(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      sub_29D933CE8();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MonitorHypertensionSummaryViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_29D697F54(319, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D69A738(uint64_t a1)
{
  if (!qword_2A17B1650)
  {
    sub_29D69A7A0(255);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1650);
    }
  }
}

void sub_29D69A7D4(uint64_t a1)
{
  if (!qword_2A17B1660)
  {
    sub_29D69A85C(255);
    type metadata accessor for HealthCalendarView(255);
    sub_29D69AA14();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B1660);
    }
  }
}

void sub_29D69A85C(uint64_t a1)
{
  if (!qword_2A17B1668)
  {
    sub_29D69A8C4(255);
    sub_29D69A948(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1668);
    }
  }
}

void sub_29D69A8C4(uint64_t a1)
{
  if (!qword_2A17B1670)
  {
    sub_29D69A9C4(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1670);
    }
  }
}

void sub_29D69A948(uint64_t a1)
{
  if (!qword_2A17B1678)
  {
    sub_29D69A9C4(255, &qword_2A17B1680, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v1 = sub_29D939088();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1678);
    }
  }
}

void sub_29D69A9C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D69AA14()
{
  if (!qword_2A17B1688)
  {
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1688);
    }
  }
}

void sub_29D69AA6C(uint64_t a1)
{
  if (!qword_2A17B1690)
  {
    sub_29D69AACC(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1690);
    }
  }
}

void sub_29D69AACC(uint64_t a1)
{
  if (!qword_2A17B1698)
  {
    sub_29D69A7A0(255);
    sub_29D6975A8(&qword_2A17B16A0, sub_29D69A7A0, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1698);
    }
  }
}

unint64_t sub_29D69AB60()
{
  result = qword_2A17B16A8;
  if (!qword_2A17B16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16A8);
  }

  return result;
}

double sub_29D69ABB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_29D69ABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D69AC2C(uint64_t a1)
{
  if (!qword_2A17B16B8)
  {
    sub_29D933448();
    sub_29D6975A8(&qword_2A17B4790, MEMORY[0x29EDB9A60], MEMORY[0x29EDB9A68]);
    v1 = sub_29D93A188();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B16B8);
    }
  }
}

unint64_t sub_29D69ACC0()
{
  result = qword_2A1A24818;
  if (!qword_2A1A24818)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A24818);
  }

  return result;
}

unint64_t sub_29D69AD24()
{
  result = qword_2A1A249C0;
  if (!qword_2A1A249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249C0);
  }

  return result;
}

uint64_t sub_29D69AD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D69ADE0()
{
  result = qword_2A17B16C8;
  if (!qword_2A17B16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16C8);
  }

  return result;
}

uint64_t sub_29D69AE34(uint64_t a1, uint64_t a2)
{
  sub_29D697F54(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D69AEC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29D697F54(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29D69AF38()
{
  result = qword_2A17B16E0;
  if (!qword_2A17B16E0)
  {
    sub_29D69AA6C(255);
    sub_29D6975A8(&qword_2A17B16E8, sub_29D69AACC, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16E0);
  }

  return result;
}

uint64_t sub_29D69AFEC()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_29D9334A8();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_29D9334A8();
  v9 = v8;

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A2C038;
  v11 = sub_29D939D28();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v3, v5, v7, v9, v12);
}

BOOL sub_29D69B1E8()
{
  v1 = v0;
  v2 = sub_29D934738();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9371B8();
  v8 = [v7 unsatisfiedRequirementIdentifiers];

  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v9 = sub_29D939F38();

  v16 = MEMORY[0x29EDCA1A0];
  (*(v3 + 104))(v6, *MEMORY[0x29EDC17B8], v2);
  LOBYTE(v7) = sub_29D934728();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_29D7ABD5C(v15, *MEMORY[0x29EDBA6A0]);
  }

  if (*(v1 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_includeFeaturesMadeAvailableByBuddy) == 1)
  {
    sub_29D7ABD5C(v15, *MEMORY[0x29EDBA5B8]);
  }

  sub_29D69C15C(v9, &v16);
  v11 = v10;

  v12 = *(v11 + 16);

  return v12 == 0;
}

uint64_t sub_29D69B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v6 = a2;
  v7 = *v4;
  sub_29D69C75C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934618();
  sub_29D693E2C(v19, v19[3]);
  sub_29D937228();
  swift_getObjectType();
  sub_29D939D68();
  sub_29D93A3E8();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v16 = v18;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a4;
  *(v15 + 40) = v6;
  *(v15 + 48) = v7;

  sub_29D93A608();
  sub_29D936978();

  (*(v10 + 8))(v13, v9);

  return sub_29D69417C(v19);
}

uint64_t sub_29D69B604(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, int a6, uint64_t a7)
{
  v41 = a6;
  sub_29D69C75C();
  v13 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C7C0(0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a1)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v23 = sub_29D937898();
      sub_29D69C6C0(v23, qword_2A1A2C008);
      v24 = sub_29D937878();
      v25 = sub_29D93A2A8();
      v26 = os_log_type_enabled(v24, v25);
      v38 = v13;
      v39 = a7;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136446210;
        v29 = sub_29D93AF08();
        v37 = v22;
        v31 = sub_29D6C2364(v29, v30, &v42);
        v22 = v37;

        *(v27 + 4) = v31;
        _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Notification defaults written and synced", v27, 0xCu);
        sub_29D69417C(v28);
        MEMORY[0x29ED6BE30](v28, -1, -1);
        MEMORY[0x29ED6BE30](v27, -1, -1);
      }

      if (v41)
      {
        sub_29D934618();
        sub_29D693E2C(&v42, v44);
        sub_29D937228();
        swift_getObjectType();
        sub_29D939D68();
        sub_29D93A3E8();
        v32 = swift_allocObject();
        v32[2] = a4;
        v32[3] = a5;
        v32[4] = v39;

        sub_29D93A608();

        sub_29D936978();

        (*(v40 + 8))(v16, v38);
        return sub_29D69417C(&v42);
      }

      sub_29D934928();
      sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
      sub_29D93AEA8();
    }

    else
    {
      if (a2)
      {
        swift_getErrorValue();
        sub_29D93ADF8();
      }

      else
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        sub_29D93AA18();
        MEMORY[0x29ED6A240](91, 0xE100000000000000);
        v35 = sub_29D93AF08();
        MEMORY[0x29ED6A240](v35);

        MEMORY[0x29ED6A240](0xD000000000000051, 0x800000029D957B10);
      }

      sub_29D934918();
      swift_storeEnumTagMultiPayload();
    }

    a4(v20);
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v34 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v34);

    MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D957AD0);
    sub_29D934918();
    swift_storeEnumTagMultiPayload();
    a4(v20);
  }

  return sub_29D69C8B4(v20, sub_29D69C7C0);
}

uint64_t sub_29D69BB24(char a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  sub_29D69C7C0(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D934928();
    sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    sub_29D93AEA8();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_29D93ADF8();
    }

    else
    {
      v14[4] = 0;
      v14[5] = 0xE000000000000000;
      sub_29D93AA18();
      MEMORY[0x29ED6A240](91, 0xE100000000000000);
      v12 = sub_29D93AF08();
      MEMORY[0x29ED6A240](v12);

      MEMORY[0x29ED6A240](0xD000000000000066, 0x800000029D957B70);
    }

    sub_29D934918();
    swift_storeEnumTagMultiPayload();
  }

  a3(v11);
  return sub_29D69C8B4(v11, sub_29D69C7C0);
}

uint64_t sub_29D69BCE4()
{
  sub_29D69C8B4(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_currentCountry, sub_29D69BECC);
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_presentationLocation;
  v2 = sub_29D934738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider(uint64_t a1)
{
  result = qword_2A17B1700;
  if (!qword_2A17B1700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69BDF8(uint64_t a1)
{
  sub_29D69BECC(319);
  if (v1 <= 0x3F)
  {
    sub_29D934738();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D69BECC(uint64_t a1)
{
  if (!qword_2A1A21ED8)
  {
    sub_29D934358();
    sub_29D9342F8();
    sub_29D69C860(&qword_2A1A24770, MEMORY[0x29EDC39C0], MEMORY[0x29EDC39C8]);
    v1 = sub_29D93AEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21ED8);
    }
  }
}

uint64_t sub_29D69BF78@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC17A8];
  v3 = sub_29D934718();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D69C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider(0);
  return sub_29D934608();
}

void sub_29D69C15C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v23 = a1 + 32;
    v4 = MEMORY[0x29EDCA190];
    v22 = *(a1 + 16);
    do
    {
      v25 = v4;
      while (1)
      {
        if (v3 >= v2)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_30;
        }

        v6 = *(v23 + 8 * v3++);
        v7 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        v26 = v5;
        v27 = v5;
        sub_29D939D68();
        sub_29D93AE58();
        v8 = v6;
        sub_29D935E88();
        sub_29D939E18();
        v9 = sub_29D93AE98();

        v10 = -1 << *(v7 + 32);
        v11 = v9 & ~v10;
        if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
LABEL_20:

          v2 = v22;
          v5 = v26;
          v3 = v27;
          v4 = v25;
          goto LABEL_21;
        }

        v12 = ~v10;
        while (1)
        {
          v13 = sub_29D939D68();
          v15 = v14;
          if (v13 == sub_29D939D68() && v15 == v16)
          {

            goto LABEL_18;
          }

          v18 = sub_29D93AD78();

          if (v18)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_18:

        v2 = v22;
        v3 = v27;
        v4 = v25;
        if (v26 == v22)
        {
          return;
        }
      }

      v21 = v6;
LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29D7EE518(0, *(v4 + 16) + 1, 1);
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_29D7EE518((v19 > 1), v20 + 1, 1);
      }

      *(v4 + 16) = v20 + 1;
      *(v4 + 8 * v20 + 32) = v6;
    }

    while (v5 != v2);
  }
}

uint64_t sub_29D69C3DC(char a1)
{
  v2 = sub_29D934A48();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D934738();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D69C668(0);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v19 = v12 + *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D93DDB0;
  v14 = *MEMORY[0x29EDC1A98];
  v18 = *(v3 + 104);
  v18(v13 + v12, v14, v2);
  (*(v8 + 104))(v11, *MEMORY[0x29EDC17C0], v7);
  v15 = sub_29D934728();
  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v16 = HKHRCardioFitnessEventOnboardingDeepLink();
    sub_29D9336D8();

    v18(v6, *MEMORY[0x29EDC1A90], v2);
    v13 = sub_29D68F70C(1, 2, 1, v13);
    *(v13 + 16) = 2;
    (*(v3 + 32))(v13 + v19, v6, v2);
  }

  return v13;
}

void sub_29D69C668(uint64_t a1)
{
  if (!qword_2A17B1058)
  {
    sub_29D934A48();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1058);
    }
  }
}

uint64_t sub_29D69C6C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29D69C6F8(uint64_t a1, uint64_t a2)
{
  sub_29D69BECC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D69C75C()
{
  if (!qword_2A17B7AC0)
  {
    v0 = sub_29D93A418();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7AC0);
    }
  }
}

void sub_29D69C7C0(uint64_t a1)
{
  if (!qword_2A17B1710)
  {
    sub_29D934928();
    sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    v1 = sub_29D93AEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1710);
    }
  }
}

uint64_t sub_29D69C860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D69C8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_29D69C914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D69C928(uint64_t a1, int a2)
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

uint64_t sub_29D69C970(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for LocalizedImageView.TextConfiguration(uint64_t a1)
{
  result = qword_2A17B1720;
  if (!qword_2A17B1720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69CA40(uint64_t a1)
{
  sub_29D69D99C(319, &qword_2A17B1730, MEMORY[0x29EDBCA98], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D933A58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D69CB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_29D933A58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29D69CC04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D939628();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v25 = *(v2 + 16);
  v9 = qword_2A1A257A0;
  sub_29D935E88();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A2C038;
  sub_29D939678();
  (*(v5 + 104))(v8, *MEMORY[0x29EDBCAB8], v4);
  v11 = sub_29D939668();

  (*(v5 + 8))(v8, v4);
  v22[0] = v11;
  v22[1] = 0;
  v23 = 1;
  v24 = v25;
  sub_29D69D3B0(0);
  sub_29D69DAF0(&qword_2A17B1750, sub_29D69D3B0, sub_29D69D430, sub_29D69D4A8);
  sub_29D939438();

  v12 = sub_29D9398A8();
  v14 = v13;
  v22[0] = *(v2 + 40);
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 1) = *v2;
  *(v15 + 2) = v16;
  *(v15 + 3) = *(v2 + 32);
  sub_29D69D538(0, &qword_2A17B1768, sub_29D69D504, sub_29D69D5AC);
  v18 = (a1 + *(v17 + 36));
  *v18 = sub_29D69D4FC;
  v18[1] = v15;
  v18[2] = v12;
  v18[3] = v14;
  sub_29D935E88();
  sub_29D935E88();
  return sub_29D69DDCC(v22, v21);
}

uint64_t sub_29D69CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D938758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v11[1] = *(a2 + 40);
  (*(v5 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_29D69D7A8(0);
  sub_29D933A58();
  sub_29D69D800(0);
  sub_29D69D9EC(&qword_2A17B17C0, sub_29D69D7A8, MEMORY[0x29EDC9A80]);
  sub_29D69DAF0(&qword_2A17B17D0, sub_29D69D800, sub_29D69DB7C, sub_29D69DD50);
  sub_29D69D9EC(&qword_2A17B1808, type metadata accessor for LocalizedImageView.TextConfiguration, &unk_29D93FCD4);
  sub_29D935E88();
  return sub_29D9397D8();
}

float64x2_t sub_29D69D12C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  sub_29D69AB60();
  sub_29D935E88();
  v4 = sub_29D9392F8();
  v6 = v5;
  v8 = v7;
  v9 = sub_29D9392C8();
  v11 = v10;
  v13 = v12;
  sub_29D69ABB4(v4, v6, v8 & 1);

  v34 = sub_29D9392A8();
  v15 = v14;
  LOBYTE(v4) = v16;
  v18 = v17;
  sub_29D69ABB4(v9, v11, v13 & 1);

  v19 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  sub_29D9388E8();
  *&v36[55] = v40;
  *&v36[71] = v41;
  *&v36[87] = v42;
  *&v36[103] = v43;
  *&v36[7] = v37;
  *&v36[23] = v38;
  *&v36[39] = v39;
  sub_29D938748();
  v33 = v21;
  sub_29D938748();
  v32 = v22;
  sub_29D938748();
  v31 = v23;
  sub_29D938748();
  v35 = v24;
  v25 = sub_29D9390D8();
  v26 = *(a1 + 9);
  v27 = swift_getKeyPath();
  *a2 = v34;
  *(a2 + 8) = v15;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v19;
  *(a2 + 48) = 0;
  *(a2 + 113) = *&v36[64];
  *(a2 + 129) = *&v36[80];
  *(a2 + 145) = *&v36[96];
  *(a2 + 160) = *(&v43 + 1);
  *(a2 + 49) = *v36;
  *(a2 + 65) = *&v36[16];
  *(a2 + 81) = *&v36[32];
  *(a2 + 97) = *&v36[48];
  *(a2 + 168) = v25;
  v28.f64[0] = v31;
  v28.f64[1] = v35;
  v29.f64[0] = v33;
  v29.f64[1] = v32;
  result = vmulq_f64(v28, *(a1 + 3));
  *(a2 + 176) = vmulq_f64(v29, *(a1 + 2));
  *(a2 + 192) = result;
  *(a2 + 208) = 0;
  *(a2 + 216) = v27;
  *(a2 + 224) = v26;
  return result;
}

void sub_29D69D3D8()
{
  if (!qword_2A17B1748)
  {
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1748);
    }
  }
}

unint64_t sub_29D69D430()
{
  result = qword_2A17B1758;
  if (!qword_2A17B1758)
  {
    sub_29D69D3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1758);
  }

  return result;
}

unint64_t sub_29D69D4A8()
{
  result = qword_2A17B1760;
  if (!qword_2A17B1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1760);
  }

  return result;
}

void sub_29D69D538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D69D5AC(uint64_t a1)
{
  if (!qword_2A17B1778)
  {
    sub_29D69D640(255);
    sub_29D69D9EC(&qword_2A17B1800, sub_29D69D640, MEMORY[0x29EDBC468]);
    v1 = sub_29D9388F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1778);
    }
  }
}

void sub_29D69D640(uint64_t a1)
{
  if (!qword_2A17B1780)
  {
    sub_29D69D6A4(255);
    sub_29D69DA34();
    v1 = sub_29D938798();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1780);
    }
  }
}

void sub_29D69D6A4(uint64_t a1)
{
  if (!qword_2A17B1788)
  {
    sub_29D69D7A8(255);
    sub_29D933A58();
    sub_29D69D800(255);
    sub_29D69D9EC(&qword_2A17B17C0, sub_29D69D7A8, MEMORY[0x29EDC9A80]);
    sub_29D69D9EC(&qword_2A17B1738, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1788);
    }
  }
}

void sub_29D69D7A8(uint64_t a1)
{
  if (!qword_2A17B1790)
  {
    type metadata accessor for LocalizedImageView.TextConfiguration(255);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1790);
    }
  }
}

void sub_29D69D800(uint64_t a1)
{
  if (!qword_2A17B1798)
  {
    sub_29D69D8B0(255, &qword_2A17B17A0, sub_29D69D914, MEMORY[0x29EDBC498]);
    sub_29D69D99C(255, &qword_2A17B17B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1798);
    }
  }
}

void sub_29D69D8B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D69D93C(uint64_t a1)
{
  if (!qword_2A17B17B0)
  {
    sub_29D69A948(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B17B0);
    }
  }
}

void sub_29D69D99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D69D9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D69DA34()
{
  result = qword_2A17B17C8;
  if (!qword_2A17B17C8)
  {
    sub_29D69D6A4(255);
    sub_29D69DAF0(&qword_2A17B17D0, sub_29D69D800, sub_29D69DB7C, sub_29D69DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17C8);
  }

  return result;
}

uint64_t sub_29D69DAF0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D69DB7C()
{
  result = qword_2A17B17D8;
  if (!qword_2A17B17D8)
  {
    sub_29D69D8B0(255, &qword_2A17B17A0, sub_29D69D914, MEMORY[0x29EDBC498]);
    sub_29D69DC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17D8);
  }

  return result;
}

unint64_t sub_29D69DC20()
{
  result = qword_2A17B17E0;
  if (!qword_2A17B17E0)
  {
    sub_29D69D914(255);
    sub_29D69DCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17E0);
  }

  return result;
}

unint64_t sub_29D69DCA0()
{
  result = qword_2A17B17E8;
  if (!qword_2A17B17E8)
  {
    sub_29D69D93C(255);
    sub_29D69D9EC(&qword_2A17B17F0, sub_29D69A948, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17E8);
  }

  return result;
}

unint64_t sub_29D69DD50()
{
  result = qword_2A17B17F8;
  if (!qword_2A17B17F8)
  {
    sub_29D69D99C(255, &qword_2A17B17B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17F8);
  }

  return result;
}

uint64_t sub_29D69DDCC(uint64_t a1, uint64_t a2)
{
  sub_29D69D7A8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_29D69DE30@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D938758();

  *&result = *&sub_29D69D12C(a1, a2);
  return result;
}

__n128 sub_29D69DEB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D69DEC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D69DF0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_29D69DF64()
{
  result = qword_2A17B1810;
  if (!qword_2A17B1810)
  {
    sub_29D69D538(255, &qword_2A17B1768, sub_29D69D504, sub_29D69D5AC);
    sub_29D69E044();
    sub_29D69D9EC(&qword_2A17B1820, sub_29D69D5AC, MEMORY[0x29EDBC608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1810);
  }

  return result;
}

unint64_t sub_29D69E044()
{
  result = qword_2A17B1818;
  if (!qword_2A17B1818)
  {
    sub_29D69D504(255);
    sub_29D69DAF0(&qword_2A17B1750, sub_29D69D3B0, sub_29D69D430, sub_29D69D4A8);
    sub_29D69D9EC(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1818);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalPromptTileViewActionHandler(uint64_t a1)
{
  result = qword_2A1A22EF0;
  if (!qword_2A1A22EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D69E1C4()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v18[-1] - v7;
  sub_29D936B88();
  v9 = sub_29D936618();
  v10 = *(v1 + 8);
  v10(v8, v0);
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v11 = sub_29D7D0C64();
  }

  else
  {
    v11 = 5;
  }

  sub_29D936B88();
  sub_29D936608();
  v10(v5, v0);
  sub_29D693E2C(v18, v18[3]);
  v12 = sub_29D936588();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v13 = swift_allocObject();
  v13[4] = 0;
  v13[5] = 0;
  v13[2] = v12;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = 0;
  v13[3] = v14;
  v15 = v12;
  sub_29D69417C(v18);
  sub_29D6AA594(v11, 12);

  return sub_29D69E3B0();
}

uint64_t sub_29D69E3B0()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v15[-v7];
  sub_29D936B88();
  sub_29D936608();
  v9 = *(v1 + 8);
  v9(v8, v0);
  sub_29D693E2C(v16, v16[3]);
  v10 = sub_29D936588();
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v10;
  sub_29D69417C(v16);
  sub_29D936B88();
  v12 = sub_29D936618();
  v9(v5, v0);
  v13 = sub_29D89AE08(0, 0, 0, 5);
  [v12 presentViewController:v13 animated:1 completion:0];

  swift_setDeallocating();
}

uint64_t sub_29D69E58C(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D69E68C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalPromptTileViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D69E75C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D69E7B0()
{
  type metadata accessor for CenteredLabelWithSpinnerCell();
  sub_29D69F1EC();
  return sub_29D939DA8();
}

uint64_t sub_29D69E7E8()
{
  v1 = *v0;
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D69E818(uint64_t a1)
{
  v2 = sub_29D69F4E4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D69E864(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D69F108(v1 + v3, v14);
  if (v15)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v4 = v11;
      v8 = v13;
      v9 = v12;
      v11 = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
      *&v12 = sub_29D69F2A8();
      v5 = swift_allocObject();
      v10[0] = v5;
      *(v5 + 16) = v10[2];
      *(v5 + 24) = v4;
      *(v5 + 32) = v9;
      *(v5 + 48) = v8;
      sub_29D935E88();
      MEMORY[0x29ED6A960](v10);
    }

    v6 = a1;
  }

  else
  {
    sub_29D69F230(a1);
    v6 = v14;
  }

  return sub_29D69F230(v6);
}

void (*sub_29D69E988(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  *(v3 + 104) = v1;
  *(v3 + 112) = v4;
  swift_beginAccess();
  return sub_29D69EA10;
}

void sub_29D69EA10(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D69F108(*(v3 + 104) + *(v3 + 112), v3 + 64);
    if (*(v3 + 88))
    {
      sub_29D69F188();
      if (swift_dynamicCast())
      {
        v4 = *(v3 + 16);
        v5 = *(v3 + 24);
        v6 = sub_29D69F2A8();
        v8 = *(v3 + 48);
        v9 = *(v3 + 32);
        v10[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
        v10[4] = v6;
        v7 = swift_allocObject();
        v10[0] = v7;
        *(v7 + 16) = v4;
        *(v7 + 24) = v5;
        *(v7 + 32) = v9;
        *(v7 + 48) = v8;
        sub_29D935E88();
        MEMORY[0x29ED6A960](v10);
      }
    }

    else
    {
      sub_29D69F230(v3 + 64);
    }
  }

  free(v3);
}

id sub_29D69EF8C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CenteredLabelWithSpinnerCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D69EFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t (*sub_29D69F050(uint64_t **a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29D69E988(v2);
  return sub_29D69F0C0;
}

void sub_29D69F0C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29D69F108(uint64_t a1, uint64_t a2)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D69F188()
{
  result = qword_2A17B1080;
  if (!qword_2A17B1080)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1080);
  }

  return result;
}

unint64_t sub_29D69F1EC()
{
  result = qword_2A17B1838;
  if (!qword_2A17B1838)
  {
    type metadata accessor for CenteredLabelWithSpinnerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B1838);
  }

  return result;
}

uint64_t sub_29D69F230(uint64_t a1)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D69F2A8()
{
  result = qword_2A17B1840;
  if (!qword_2A17B1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1840);
  }

  return result;
}

uint64_t sub_29D69F2FC(uint64_t a1, uint64_t a2)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D69F37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_29D69F3D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D69F3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29D69F42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D69F490()
{
  result = qword_2A17B1850;
  if (!qword_2A17B1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1850);
  }

  return result;
}

unint64_t sub_29D69F4E4()
{
  result = qword_2A17B1858;
  if (!qword_2A17B1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1858);
  }

  return result;
}

id sub_29D69F538()
{
  *&v0[OBJC_IVAR____TtC5Heart42CardioFitnessOnboardingStartViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = [v2 bundleForClass_];
  sub_29D9334A8();

  v6 = sub_29D939D28();

  v9.receiver = v0;
  v9.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v6, 0, 4, 0xE000000000000000);

  return v7;
}

void sub_29D69F6F4(__n128 a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = sub_29D69FB30();
  v3 = [v1 contentView];
  [v3 addSubview_];

  v4 = [v1 contentView];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v2 centerXAnchor];
  v7 = [v1 contentView];
  v8 = [v7 centerXAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [v1 contentView];
  [v2 hk:v10 alignVerticalConstraintsWithView:0.0 margin:?];

  v11 = [v1 hxui_addCancelButton];
}

id sub_29D69FA74(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D69FAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart42CardioFitnessOnboardingStartViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

id sub_29D69FB30()
{
  v0 = [objc_opt_self() hrui_heartRateIconImage];
  if (qword_2A17B0D50 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:{1.0, 0xE000000000000000}];
  v2 = objc_allocWithZone(MEMORY[0x29EDC4828]);
  v3 = sub_29D939D28();

  v4 = sub_29D939D28();

  v5 = [v2 initWithIconImage:v0 titleText:v3 detailText:v4 tintColor:v1];

  return v5;
}

uint64_t sub_29D69FD1C()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  qword_2A17D07C8 = result;
  return result;
}

uint64_t sub_29D69FD70@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 startDate];
    sub_29D933998();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_29D9339F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_29D69FE14(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_29D9339F8();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a1, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
    swift_beginAccess();
    sub_29D6A0A84(v6, v8 + v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_29D69FF7C()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher;
  if (*(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher);
  }

  else
  {
    v2 = sub_29D6A000C(v0, *v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_29D6A000C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_29D6A0AF0(0);
  swift_allocObject();

  sub_29D938368();
  sub_29D6A0BC0();
  v5 = sub_29D938418();

  return v5;
}

void sub_29D6A00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_2A17B0BC8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2A17D07C8;
  sub_29D6A0C58();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D940030;
  sub_29D939D68();
  v12 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v13 = sub_29D939D28();

  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  v15 = swift_allocObject();
  v15[2] = sub_29D6A0C18;
  v15[3] = v8;
  v15[4] = a4;
  v16 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  v17 = sub_29D939F18();

  v23[4] = sub_29D6A0CAC;
  v23[5] = v15;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1107296256;
  v23[2] = sub_29D733900;
  v23[3] = &unk_2A24405A0;
  v18 = _Block_copy(v23);
  v19 = [v16 initWithSampleType:v10 predicate:0 limit:1 sortDescriptors:v17 resultsHandler:v18];

  _Block_release(v18);

  v20 = (a3 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor);
  v21 = *(a3 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor + 24);
  v22 = v20[4];
  sub_29D693E2C(v20, v21);
  (*(v22 + 8))(v19, v21, v22);
}

void sub_29D6A0354(int a1, unint64_t a2, id a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = a3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = a3;
    v11 = sub_29D937878();
    v12 = sub_29D93A288();

    if (!os_log_type_enabled(v11, v12))
    {

LABEL_20:
      a4(0, 0);
      return;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315394;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, &v36);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = a3;
    sub_29D6A0CD0();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_29D677000, v11, v12, "[%s] Error encountered when retrieving cardio fitness samples: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);

LABEL_19:
    goto LABEL_20;
  }

  if (!a2 || (v22 = sub_29D83850C(a2)) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v26 = sub_29D937898();
    sub_29D69C6C0(v26, qword_2A1A2C008);
    v11 = sub_29D937878();
    v27 = sub_29D93A298();
    if (os_log_type_enabled(v11, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29D677000, v11, v27, "[%s] Samples retrieved not quantity samples", v28, 0xCu);
      sub_29D69417C(v29);
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    goto LABEL_19;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    v33 = v22;
    v34 = sub_29D93A928();
    v22 = v33;
    if (v34)
    {
      goto LABEL_10;
    }

LABEL_22:

    v25 = 0;
    goto LABEL_23;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x29ED6AE30](0);
  }

  else
  {
    if (!*(v23 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v22 + 32);
  }

  v25 = v24;

LABEL_23:
  v35 = v25;
  a4(v25, 0);
}

uint64_t sub_29D6A074C()
{
  sub_29D6A0D34(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider(uint64_t a1)
{
  result = qword_2A17B1890;
  if (!qword_2A17B1890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6A0844(uint64_t a1)
{
  sub_29D6A08F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29D6A08F8(uint64_t a1)
{
  if (!qword_2A1A25780)
  {
    sub_29D9339F8();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A25780);
    }
  }
}

uint64_t sub_29D6A09C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
  swift_beginAccess();
  return sub_29D6A0A20(v1 + v3, a1);
}

uint64_t sub_29D6A0A20(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6A0A84(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D6A0AF0(uint64_t a1)
{
  if (!qword_2A17B18A0)
  {
    sub_29D6A0B58(255);
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B18A0);
    }
  }
}

void sub_29D6A0B58(uint64_t a1)
{
  if (!qword_2A17B5E30)
  {
    sub_29D69567C(255, &qword_2A17B18A8, 0x29EDBAD10);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5E30);
    }
  }
}

unint64_t sub_29D6A0BC0()
{
  result = qword_2A17B18B0;
  if (!qword_2A17B18B0)
  {
    sub_29D6A0AF0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B18B0);
  }

  return result;
}

uint64_t sub_29D6A0C18(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_29D6A0C58()
{
  if (!qword_2A1A21EF0)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21EF0);
    }
  }
}

uint64_t sub_29D6A0CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D6A0CD0()
{
  result = qword_2A1A24850;
  if (!qword_2A1A24850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A24850);
  }

  return result;
}

uint64_t sub_29D6A0D34(uint64_t a1)
{
  sub_29D6A08F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HypertensionNotificationsConfirmDetailsViewController(uint64_t a1)
{
  result = qword_2A17B18E0;
  if (!qword_2A17B18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6A0E48()
{
  *(v0 + qword_2A17B18B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_2A17B18C0) = 2;
  *(v0 + qword_2A17B18C8) = 2;
  *(v0 + qword_2A17B18D0) = 0;
  v1 = qword_2A17B18D8;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v2 = (v0 + v1);
  *v2 = sub_29D9334A8();
  v2[1] = v3;
  sub_29D9334A8();
  sub_29D9334A8();
  type metadata accessor for HypertensionNotificationsConfirmDetailsDataSource(0);
  swift_allocObject();
  v4 = sub_29D8BC270();

  v5 = sub_29D9365F8();
  *(v4 + qword_2A17B76F8 + 8) = &off_2A24405C8;
  swift_unknownObjectWeakAssign();

  return v5;
}

void sub_29D6A1060()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CD50);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CD90);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CDD0);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CE10);
    swift_arrayDestroy();
    v8 = sub_29D939D28();

    v9 = [v0 hxui:v8 addContinueButtonWithAccessibilityIdentifier:?];

    v10 = qword_2A17B18D0;
    v11 = *&v0[qword_2A17B18D0];
    *&v0[qword_2A17B18D0] = v9;

    v12 = *&v0[v10];
    if (v12)
    {
      [v12 setEnabled_];
    }

    v13 = [v0 buttonTray];
    v14 = sub_29D939D28();
    [v13 setCaptionText_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D6A1328(void *a1)
{
  v1 = a1;
  sub_29D6A1060();
}

void sub_29D6A1370(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8FD7C8(v4, v3);
    sub_29D936978();
  }
}

void sub_29D6A13EC(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8528D8(v3);
    sub_29D936978();
  }
}

double sub_29D6A1498()
{
  sub_29D68B77C(v0 + qword_2A17B18B8);

  return result;
}

id sub_29D6A14EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_29D6A1524(uint64_t a1)
{
  sub_29D68B77C(a1 + qword_2A17B18B8);

  return result;
}

uint64_t sub_29D6A158C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B18B8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D6A15E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_29D939D68(), sub_29D93AE58(), sub_29D939E18(), v3 = sub_29D93AE98(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_29D939D68();
      v9 = v8;
      if (v7 == sub_29D939D68() && v9 == v10)
      {
        break;
      }

      v12 = sub_29D93AD78();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_29D6A173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_29D93AE58();
  sub_29D939E18();
  v6 = sub_29D93AE98();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29D93AD78() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29D6A1834(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_29D6AA4B8(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]), v8 = sub_29D939C88(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_29D6AA4B8(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v16 = sub_29D939CF8();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_29D6A1A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a4;
  v113 = a2;
  v114 = a5;
  v102 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  MEMORY[0x2A1C7C4A8](v102, v7);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AA454(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v99 = &v90 - v14;
  v15 = _s14descr2A243C641C15SettingsContentVMa(0);
  v104 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v96 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v97 = &v90 - v20;
  v21 = sub_29D937118();
  v101 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v100 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_29D937178();
  v110 = *(v112 - 8);
  MEMORY[0x2A1C7C4A8](v112, v24);
  v109 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29D937158();
  v111 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108, v26);
  v106 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D9371A8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v90 - v35;
  v37 = sub_29D933FE8();
  v107 = a1;
  LOBYTE(a1) = sub_29D933FD8();

  if ((a1 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if ((a3 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v38 = *MEMORY[0x29EDBA5A0];
  v39 = sub_29D9371B8();
  v40 = [v39 isRequirementSatisfiedWithIdentifier_];

  if ((v40 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
LABEL_15:
      sub_29D6A9ED4(0);
      sub_29D69C6C0(v55, qword_2A1A2BF58);
      v115 = 0;
      sub_29D9371C8();
      goto LABEL_16;
    }

LABEL_30:
    swift_once();
    goto LABEL_15;
  }

  v92 = v38;
  v90 = v21;
  v91 = v15;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  v42 = v41;
  v43 = sub_29D69C6C0(v41, qword_2A1A2BF58);
  v95 = *(v29 + 16);
  v95(v36, v113, v28);
  v44 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v45 = swift_allocObject();
  (*(v29 + 32))(v45 + v44, v36, v28);
  v115 = 0;
  v94 = v42;
  v93 = v43;
  sub_29D9371C8();

  v95(v33, v113, v28);
  v46 = (*(v29 + 88))(v33, v28);
  if (v46 == *MEMORY[0x29EDC2D70])
  {
    (*(v29 + 96))(v33, v28);
    v47 = v106;
    v48 = v108;
    (*(v111 + 32))(v106, v33, v108);
    v49 = v109;
    sub_29D937108();
    v50 = sub_29D937188();
    v51 = *(v110 + 8);
    v52 = v112;
    v51(v49, v112);
    v53 = [v50 areAllRequirementsSatisfied];

    if (v53)
    {
      v54 = v99;
      sub_29D826468(v113, v105, v99);
      if ((*(v104 + 48))(v54, 1, v91) == 1)
      {
        sub_29D6AA094(v54, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
        v115 = 0;
        sub_29D9371F8();
        (*(v111 + 8))(v47, v48);
LABEL_16:
        v56 = sub_29D9340F8();
        return (*(*(v56 - 8) + 56))(v114, 1, 1, v56);
      }

      v81 = v97;
      sub_29D6AA104(v54, v97);
      v115 = 0;
      sub_29D9371C8();
      v82 = v103;
      sub_29D6AA1C8(v81, v103, _s14descr2A243C641C15SettingsContentVMa);
      swift_storeEnumTagMultiPayload();
      sub_29D6A2CD8(v107, v82, v114);
      sub_29D6AA168(v82, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      sub_29D6AA168(v81, _s14descr2A243C641C15SettingsContentVMa);
      return (*(v111 + 8))(v47, v48);
    }

    else
    {
      sub_29D937108();
      v71 = sub_29D937188();
      v51(v49, v52);
      v72 = [v71 unsatisfiedRequirementIdentifiers];

      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v73 = sub_29D939F38();

      sub_29D6AA454(0, &qword_2A17B18F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      v75 = *MEMORY[0x29EDBA608];
      *(inited + 32) = *MEMORY[0x29EDBA608];
      v76 = v75;
      sub_29D6971AC(v73, inited);
      v78 = v77;

      swift_setDeallocating();
      swift_arrayDestroy();
      if (v78)
      {
        v79 = v98;
        sub_29D826468(v113, v105, v98);
        if ((*(v104 + 48))(v79, 1, v91) == 1)
        {
          sub_29D6AA094(v79, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
          v115 = 0;
          sub_29D9371F8();
          (*(v111 + 8))(v47, v108);
          goto LABEL_16;
        }

        v85 = v96;
        sub_29D6AA104(v79, v96);
        v115 = 0;
        sub_29D9371C8();
        v86 = sub_29D9347E8();
        v88 = v87;
        v89 = v103;
        sub_29D6AA1C8(v85, v103, _s14descr2A243C641C15SettingsContentVMa);
        swift_storeEnumTagMultiPayload();
        sub_29D6A3B60(v107, v86, v88, 1, v89, v114);

        sub_29D6AA168(v89, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
        sub_29D6AA168(v85, _s14descr2A243C641C15SettingsContentVMa);
      }

      else
      {
        sub_29D937108();
        v84 = sub_29D937188();
        v51(v49, v112);
        sub_29D6A48D4(v84, v107, 1, v114);
      }

      return (*(v111 + 8))(v47, v108);
    }
  }

  else
  {
    v58 = v112;
    v60 = v109;
    v59 = v110;
    if (v46 == *MEMORY[0x29EDC2D68])
    {
      (*(v29 + 96))(v33, v28);
      v62 = v100;
      v61 = v101;
      v63 = v90;
      (*(v101 + 32))(v100, v33, v90);
      sub_29D937108();
      v64 = sub_29D937188();
      v65 = *(v59 + 8);
      v65(v60, v58);
      v66 = [v64 areAllRequirementsSatisfied];

      if (v66)
      {
        v115 = 0;
        sub_29D9371C8();
        v67 = sub_29D9347D8();
        v69 = v68;
        v70 = v103;
        swift_storeEnumTagMultiPayload();
        sub_29D6A3B60(v107, v67, v69, 0, v70, v114);

        sub_29D6AA168(v70, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      }

      else
      {
        sub_29D937108();
        v83 = sub_29D937188();
        v65(v60, v58);
        sub_29D6A48D4(v83, v107, 0, v114);
      }

      return (*(v61 + 8))(v62, v63);
    }

    else
    {
      v80 = sub_29D9340F8();
      (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
      return (*(v29 + 8))(v33, v28);
    }
  }
}

uint64_t sub_29D6A28F8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9589E0);
  return 0;
}

uint64_t sub_29D6A29C8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D9589B0);
  return 0;
}

uint64_t sub_29D6A2A98()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D958970);
  return 0;
}

uint64_t sub_29D6A2B68(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D9585F0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v7);

  return v9[0];
}

uint64_t sub_29D6A2CD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a4@<X8>)
{
  v89 = a2;
  v81 = a1;
  v90 = a4;
  v84 = sub_29D934898();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84, v4);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_29D933F58();
  v79 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80, v6);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v77 = &v72 - v11;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v8);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v75 = &v72 - v14;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v8);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v74 = &v72 - v17;
  v18 = sub_29D9349A8();
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v86 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D9346E8();
  v27 = MEMORY[0x2A1C7C4A8](v25, v26);
  v85 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v92 = v30;
  v93 = v31;
  v32 = *(v31 + 104);
  v91 = &v72 - v33;
  v32();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v76 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v35 + 32) = sub_29D9334A8();
  *(v35 + 40) = v36;
  v37 = sub_29D9334A8();
  v39 = v38;

  *(v35 + 48) = v37;
  *(v35 + 56) = v39;
  sub_29D934818();
  sub_29D6AA1C8(v89, v24, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
  v89 = v24;
  v40 = sub_29D9330E8();
  v72 = v41;
  v73 = v40;

  sub_29D9334A8();
  (*(v93 + 16))(v85, v91, v92);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v42 = qword_2A1A2C038;
  v43 = v74;
  sub_29D934788();
  v44 = sub_29D934798();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = sub_29D9336F8();
  (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  sub_29D935E88();
  v46 = v86;
  sub_29D934978();
  sub_29D936948();
  _s14descr2A243C641C13ActionHandlerCMa(0);
  v75 = &unk_29D940210;
  v47 = v87;
  v48 = v88;
  v49 = v77;
  (*(v87 + 16))(v77, v46, v88);
  (*(v47 + 56))(v49, 0, 1, v48);
  v50 = v79;
  v51 = v78;
  v52 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x29EDC36F0], v80);
  v53 = v73;
  v54 = v72;
  sub_29D6AA230(v73, v72);
  sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
  v55 = v90;
  sub_29D934048();
  sub_29D6AA284(v53, v54);
  (*(v50 + 8))(v51, v52);
  sub_29D6AA094(v49, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v56 = v86;
  sub_29D934998();
  sub_29D934098();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  v58 = v85;
  sub_29D934958();
  v59 = sub_29D9348A8();
  v61 = v60;
  v62 = v92;
  v63 = *(v93 + 8);
  v63(v58, v92);
  *(inited + 32) = v59;
  *(inited + 40) = v61;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v64 = v83;
  v65 = v82;
  v66 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x29EDC1870], v84);
  sub_29D934888();
  (*(v64 + 8))(v65, v66);
  sub_29D9340E8();
  sub_29D934088();
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(v67 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(v67);
  v69 = v68;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D8E8608(v69);

  sub_29D9340B8();

  sub_29D6AA284(v73, v72);
  (*(v87 + 8))(v56, v88);
  sub_29D6AA168(v89, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v63(v91, v62);
  v70 = sub_29D9340F8();
  return (*(*(v70 - 8) + 56))(v55, 0, 1, v70);
}

uint64_t sub_29D6A39C0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D958430);
  return 0;
}

uint64_t sub_29D6A3A90()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D958470);
  return 0;
}

uint64_t sub_29D6A3B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v82 = a3;
  v83 = a2;
  v88 = a1;
  v91 = sub_29D934898();
  v90 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91, v8);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29D933F58();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87, v10);
  v85 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v84 = &v76 - v15;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v12);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v80 = &v76 - v18;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v12);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v79 = &v76 - v21;
  v22 = sub_29D9349A8();
  v94 = *(v22 - 8);
  v95 = v22;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v93 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v101 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D9346E8();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v92 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v76 - v34;
  (*(v29 + 104))(&v76 - v34, *MEMORY[0x29EDC1768], v28);
  v81 = a4;
  v96 = a6;
  v99 = v35;
  v100 = v28;
  v98 = v29;
  if ((a4 & 1) == 0)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  v36 = sub_29D9334A8();
  v38 = v37;
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v78 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_29D93F680;
  *(v40 + 32) = v36;
  *(v40 + 40) = v38;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v40 + 48) = sub_29D9334A8();
  *(v40 + 56) = v41;
  sub_29D934818();
  sub_29D6AA1C8(v97, v101, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
  v42 = sub_29D9330E8();
  v77 = v43;
  v97 = v42;

  sub_29D9334A8();
  (*(v98 + 16))(v92, v99, v100);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v44 = qword_2A1A2C038;
  v45 = v79;
  sub_29D934788();
  v46 = sub_29D934798();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = sub_29D9336F8();
  (*(*(v47 - 8) + 56))(v80, 1, 1, v47);
  sub_29D935E88();
  sub_29D935E88();
  v48 = v93;
  sub_29D934978();
  sub_29D936948();
  _s14descr2A243C641C13ActionHandlerCMa(0);
  v49 = v94;
  v50 = v84;
  v51 = v48;
  v52 = v95;
  (*(v94 + 16))(v84, v51, v95);
  (*(v49 + 56))(v50, 0, 1, v52);
  v53 = v86;
  v54 = v85;
  v55 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x29EDC36F0], v87);
  v56 = v97;
  v57 = v77;
  sub_29D6AA230(v97, v77);
  sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
  v58 = v92;
  v59 = v96;
  sub_29D934048();
  sub_29D6AA284(v56, v57);
  (*(v53 + 8))(v54, v55);
  sub_29D6AA094(v50, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v60 = v93;
  sub_29D934998();
  sub_29D934098();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  sub_29D934958();
  v62 = sub_29D9348A8();
  v64 = v63;
  v65 = *(v98 + 8);
  v66 = v58;
  v67 = v100;
  v65(v66, v100);
  *(inited + 32) = v62;
  *(inited + 40) = v64;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v68 = v90;
  v69 = v89;
  v70 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x29EDC1870], v91);
  sub_29D934888();
  (*(v68 + 8))(v69, v70);
  sub_29D9340E8();
  sub_29D934088();
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(v71 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(v71);
  v73 = v72;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D8E8608(v73);

  sub_29D9340B8();

  sub_29D6AA284(v97, v77);
  (*(v94 + 8))(v60, v95);
  sub_29D6AA168(v101, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v65(v99, v67);
  v74 = sub_29D9340F8();
  return (*(*(v74 - 8) + 56))(v59, 0, 1, v74);
}

uint64_t sub_29D6A48D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v560 = a3;
  v562 = a2;
  v580 = a4;
  v5 = sub_29D934898();
  v6 = *(v5 - 8);
  v568 = v5;
  v569 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v567 = &v538 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933F58();
  v10 = *(v9 - 8);
  v564 = v9;
  v565 = v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v563 = &v538 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v566 = &v538 - v16;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v13);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v559 = &v538 - v19;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v13);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v561 = &v538 - v22;
  v23 = sub_29D9349A8();
  v24 = *(v23 - 8);
  v576 = v23;
  v577 = v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v575 = &v538 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v579 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v28 = MEMORY[0x2A1C7C4A8](v579, v27);
  v542 = &v538 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v541 = &v538 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v546 = &v538 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v549 = &v538 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v553 = &v538 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v555 = &v538 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  *&v558 = &v538 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v571 = &v538 - v50;
  MEMORY[0x2A1C7C4A8](v49, v51);
  *&v582 = &v538 - v52;
  v583 = sub_29D9346E8();
  v53 = *(v583 - 8);
  v55 = MEMORY[0x2A1C7C4A8](v583, v54);
  v545 = &v538 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x2A1C7C4A8](v55, v57);
  v544 = &v538 - v59;
  v61 = MEMORY[0x2A1C7C4A8](v58, v60);
  v548 = &v538 - v62;
  v64 = MEMORY[0x2A1C7C4A8](v61, v63);
  v551 = &v538 - v65;
  v67 = MEMORY[0x2A1C7C4A8](v64, v66);
  v554 = &v538 - v68;
  v70 = MEMORY[0x2A1C7C4A8](v67, v69);
  v557 = &v538 - v71;
  v73 = MEMORY[0x2A1C7C4A8](v70, v72);
  *&v570 = &v538 - v74;
  v76 = MEMORY[0x2A1C7C4A8](v73, v75);
  v78 = &v538 - v77;
  v80 = MEMORY[0x2A1C7C4A8](v76, v79);
  v574 = &v538 - v81;
  MEMORY[0x2A1C7C4A8](v80, v82);
  v84 = &v538 - v83;
  *&v578 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v86 = MEMORY[0x2A1C7C4A8](v578, v85);
  v543 = &v538 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x2A1C7C4A8](v86, v88);
  v540 = &v538 - v90;
  v92 = MEMORY[0x2A1C7C4A8](v89, v91);
  v547 = &v538 - v93;
  v95 = MEMORY[0x2A1C7C4A8](v92, v94);
  v550 = &v538 - v96;
  v98 = MEMORY[0x2A1C7C4A8](v95, v97);
  v552 = &v538 - v99;
  v101 = MEMORY[0x2A1C7C4A8](v98, v100);
  v556 = &v538 - v102;
  v104 = MEMORY[0x2A1C7C4A8](v101, v103);
  v106 = &v538 - v105;
  v108 = MEMORY[0x2A1C7C4A8](v104, v107);
  v110 = &v538 - v109;
  MEMORY[0x2A1C7C4A8](v108, v111);
  v581 = &v538 - v112;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  v114 = v113;
  v115 = sub_29D69C6C0(v113, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = a1;
  v584 = 0;
  v116 = a1;
  v572 = v114;
  v573 = v115;
  sub_29D9371C8();

  v117 = [v116 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v118 = sub_29D939F38();

  v119 = sub_29D7AF204(v118);

  if (sub_29D6A15E8(*MEMORY[0x29EDBA5D0], v119) & 1) != 0 || (sub_29D6A15E8(*MEMORY[0x29EDBA5D8], v119))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v553 = qword_2A17D0EC0;
    v554 = *algn_2A17D0EB8;
    v555 = qword_2A17D0EB0;
    v120 = sub_29D9334A8();
    v122 = v121;
    v123 = v581;
    swift_storeEnumTagMultiPayload();
    v557 = MEMORY[0x29ED64C30](v120, v122);
    v571 = v124;
    v556 = sub_29D934808();
    *&v570 = v125;
    v126 = *MEMORY[0x29EDC1750];
    v127 = v53;
    v128 = *(v53 + 104);
    *&v578 = v84;
    v128(v84, v126, v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v130 = v129;
    v131 = swift_allocObject();
    v558 = xmmword_29D93DDB0;
    *(v131 + 16) = xmmword_29D93DDB0;
    *(v131 + 32) = v120;
    *(v131 + 40) = v122;
    sub_29D934808();
    v133 = v132;
    sub_29D6AA1C8(v123, v582, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v134 = sub_29D9330E8();
    v572 = v133;
    v573 = v130;
    v579 = v135;
    v552 = v134;

    sub_29D9334A8();
    (*(v127 + 16))(v574, v578, v583);
    v539 = v127;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v136 = qword_2A1A2C038;
    v137 = v561;
    sub_29D934788();
    v138 = sub_29D934798();
    (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
    v139 = sub_29D9336F8();
    (*(*(v139 - 8) + 56))(v559, 1, 1, v139);
    v551 = v131;
    sub_29D935E88();
    v140 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v142 = v576;
    v141 = v577;
    v143 = v566;
    (*(v577 + 16))(v566, v140, v576);
    (*(v141 + 56))(v143, 0, 1, v142);
    v145 = v564;
    v144 = v565;
    v146 = v563;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v147 = v552;
    v148 = v579;
    sub_29D6AA230(v552, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v149 = v580;
    sub_29D934048();
    sub_29D6AA284(v147, v148);
    (*(v144 + 8))(v146, v145);
    v150 = v149;
    sub_29D6AA094(v143, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v151 = v575;
    sub_29D934998();
    sub_29D934098();
    inited = swift_initStackObject();
    *(inited + 16) = v558;
    v153 = v574;
    sub_29D934958();
    v154 = sub_29D9348A8();
    v156 = v155;
    v157 = *(v539 + 8);
    v158 = v583;
    v157(v153, v583);
    *(inited + 32) = v154;
    *(inited + 40) = v156;
    sub_29D6E35C8(inited);
    swift_setDeallocating();
    sub_29D6AA360(inited + 32);
    sub_29D9340D8();
    v160 = v568;
    v159 = v569;
    v161 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v159 + 8))(v161, v160);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v162 = swift_initStackObject();
    *(v162 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v162 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v162);
    v164 = v163;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v164);

    sub_29D9340B8();

    sub_29D6AA284(v552, v579);
    (*(v577 + 8))(v151, v576);
    sub_29D6AA168(v582, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v157(v578, v158);
    v165 = v581;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA600], v119))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v554 = qword_2A17D0EC0;
    v555 = *algn_2A17D0EB8;
    v556 = qword_2A17D0EB0;
    v168 = sub_29D9334A8();
    v170 = v169;
    swift_storeEnumTagMultiPayload();
    *&v558 = MEMORY[0x29ED64C30](v168, v170);
    v581 = v171;
    v557 = sub_29D934808();
    *&v578 = v172;
    v173 = *MEMORY[0x29EDC1750];
    v174 = *(v53 + 104);
    *&v582 = v78;
    v174(v78, v173, v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v176 = v175;
    v177 = swift_allocObject();
    v570 = xmmword_29D93DDB0;
    *(v177 + 16) = xmmword_29D93DDB0;
    *(v177 + 32) = v168;
    *(v177 + 40) = v170;
    v178 = v177;
    sub_29D934808();
    v180 = v179;
    sub_29D6AA1C8(v110, v571, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v181 = sub_29D9330E8();
    v551 = v180;
    v552 = v178;
    v572 = v176;
    v573 = v110;
    v579 = v201;
    v553 = v181;

    sub_29D9334A8();
    v202 = v574;
    (*(v53 + 16))(v574, v582, v583);
    v539 = v53;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v203 = qword_2A1A2C038;
    v204 = v561;
    sub_29D934788();
    v205 = sub_29D934798();
    (*(*(v205 - 8) + 56))(v204, 0, 1, v205);
    v206 = sub_29D9336F8();
    (*(*(v206 - 8) + 56))(v559, 1, 1, v206);
    sub_29D935E88();
    v207 = v575;
    sub_29D934978();
    v581 = sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v209 = v576;
    v208 = v577;
    v210 = v566;
    (*(v577 + 16))(v566, v207, v576);
    (*(v208 + 56))(v210, 0, 1, v209);
    v211 = v565;
    v212 = v563;
    v213 = v202;
    v214 = v564;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v215 = v553;
    v216 = v579;
    sub_29D6AA230(v553, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v150 = v580;
    sub_29D934048();
    sub_29D6AA284(v215, v216);
    (*(v211 + 8))(v212, v214);
    sub_29D6AA094(v210, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v217 = v575;
    sub_29D934998();
    sub_29D934098();
    v218 = swift_initStackObject();
    *(v218 + 16) = v570;
    sub_29D934958();
    v219 = sub_29D9348A8();
    v221 = v220;
    v222 = *(v539 + 8);
    v223 = v583;
    v222(v213, v583);
    v224 = v222;
    *(v218 + 32) = v219;
    *(v218 + 40) = v221;
    sub_29D6E35C8(v218);
    swift_setDeallocating();
    sub_29D6AA360(v218 + 32);
    sub_29D9340D8();
    v226 = v568;
    v225 = v569;
    v227 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v225 + 8))(v227, v226);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v228 = swift_initStackObject();
    *(v228 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v228 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v228);
    v230 = v229;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v230);

    sub_29D9340B8();

    sub_29D6AA284(v553, v579);
    (*(v577 + 8))(v217, v576);
    sub_29D6AA168(v571, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v224(v582, v223);
    v165 = v573;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA640], v119))
  {
    v182 = v53;

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v554 = qword_2A17D0EC0;
    v555 = *algn_2A17D0EB8;
    v556 = qword_2A17D0EB0;
    v183 = sub_29D9334A8();
    v185 = v184;
    swift_storeEnumTagMultiPayload();
    v571 = MEMORY[0x29ED64C30](v183, v185);
    *&v582 = v186;
    v557 = sub_29D934808();
    v581 = v187;
    v188 = *MEMORY[0x29EDC1750];
    v539 = v182;
    (*(v182 + 104))(v570, v188, v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v190 = v189;
    v191 = swift_allocObject();
    v578 = xmmword_29D93DDB0;
    *(v191 + 16) = xmmword_29D93DDB0;
    *(v191 + 32) = v183;
    *(v191 + 40) = v185;
    sub_29D934808();
    v193 = v192;
    sub_29D6AA1C8(v106, v558, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v194 = sub_29D9330E8();
    v551 = v193;
    v572 = v190;
    v573 = v106;
    v579 = v244;
    v553 = v194;

    sub_29D9334A8();
    (*(v539 + 16))();
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v245 = qword_2A1A2C038;
    v246 = v561;
    sub_29D934788();
    v247 = sub_29D934798();
    (*(*(v247 - 8) + 56))(v246, 0, 1, v247);
    v248 = sub_29D9336F8();
    (*(*(v248 - 8) + 56))(v559, 1, 1, v248);
    v552 = v191;
    sub_29D935E88();
    v249 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v251 = v576;
    v250 = v577;
    v252 = v566;
    (*(v577 + 16))(v566, v249, v576);
    (*(v250 + 56))(v252, 0, 1, v251);
    v254 = v564;
    v253 = v565;
    v255 = v563;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v256 = v553;
    v257 = v579;
    sub_29D6AA230(v553, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v258 = v580;
    sub_29D934048();
    sub_29D6AA284(v256, v257);
    (*(v253 + 8))(v255, v254);
    sub_29D6AA094(v252, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v259 = v575;
    sub_29D934998();
    sub_29D934098();
    v260 = swift_initStackObject();
    *(v260 + 16) = v578;
    v261 = v574;
    sub_29D934958();
    v262 = sub_29D9348A8();
    v264 = v263;
    v265 = *(v539 + 8);
    v266 = v261;
    v267 = v583;
    v265(v266, v583);
    *(v260 + 32) = v262;
    *(v260 + 40) = v264;
    sub_29D6E35C8(v260);
    swift_setDeallocating();
    sub_29D6AA360(v260 + 32);
    sub_29D9340D8();
    v269 = v568;
    v268 = v569;
    v270 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v268 + 8))(v270, v269);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v271 = swift_initStackObject();
    *(v271 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v271 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v271);
    v273 = v272;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v273);

    sub_29D9340B8();

    sub_29D6AA284(v553, v579);
    (*(v577 + 8))(v259, v576);
    sub_29D6AA168(v558, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v265(v570, v267);
    v165 = v573;
    v150 = v258;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA5C0], v119))
  {

    v195 = v53;
    if (sub_29D9347F8())
    {
      v197 = v556;
      v196 = v557;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v199 = qword_2A17D0EB0;
      v198 = *algn_2A17D0EB8;
      v200 = qword_2A17D0EC0;
    }

    else
    {
      v197 = v556;
      v196 = v557;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v199 = qword_2A17D0EB0;
      v198 = *algn_2A17D0EB8;
      v200 = qword_2A17D0EC0;
    }

    v553 = v200;
    v554 = v198;
    *&v558 = v199;
    v274 = sub_29D9334A8();
    v276 = v275;
    swift_storeEnumTagMultiPayload();
    v571 = MEMORY[0x29ED64C30](v274, v276);
    *&v582 = v277;
    *&v570 = sub_29D934808();
    v581 = v278;
    v279 = v196;
    v280 = v197;
    (*(v195 + 104))(v279, *MEMORY[0x29EDC1750], v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v282 = v281;
    v283 = swift_allocObject();
    v578 = xmmword_29D93DDB0;
    *(v283 + 16) = xmmword_29D93DDB0;
    *(v283 + 32) = v274;
    *(v283 + 40) = v276;
    v284 = sub_29D934808();
    v286 = v285;
    sub_29D6AA1C8(v280, v555, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v287 = sub_29D9330E8();
    v551 = v284;
    v552 = v287;
    v572 = v286;
    v573 = v282;
    v579 = v303;

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v539 = v195;
    (*(v195 + 16))(v574, v557, v583);
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v304 = qword_2A1A2C038;
    v305 = v561;
    sub_29D934788();
    v306 = sub_29D934798();
    (*(*(v306 - 8) + 56))(v305, 0, 1, v306);
    v307 = sub_29D9336F8();
    (*(*(v307 - 8) + 56))(v559, 1, 1, v307);
    sub_29D935E88();
    v308 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v310 = v576;
    v309 = v577;
    v311 = v566;
    (*(v577 + 16))(v566, v308, v576);
    (*(v309 + 56))(v311, 0, 1, v310);
    v312 = *MEMORY[0x29EDC36F0];
    v314 = v564;
    v313 = v565;
    v315 = *(v565 + 104);
    *&v582 = v283;
    v316 = v563;
    v315(v563, v312, v564);
    v317 = v552;
    v318 = v579;
    sub_29D6AA230(v552, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v319 = v580;
    sub_29D934048();
    sub_29D6AA284(v317, v318);
    (*(v313 + 8))(v316, v314);
    v150 = v319;
    sub_29D6AA094(v311, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v320 = v575;
    sub_29D934998();
    sub_29D934098();
    v321 = swift_initStackObject();
    *(v321 + 16) = v578;
    v322 = v574;
    sub_29D934958();
    v323 = sub_29D9348A8();
    v325 = v324;
    v326 = *(v539 + 8);
    v327 = v322;
    v328 = v583;
    v326(v327, v583);
    *(v321 + 32) = v323;
    *(v321 + 40) = v325;
    sub_29D6E35C8(v321);
    swift_setDeallocating();
    sub_29D6AA360(v321 + 32);
    sub_29D9340D8();
    v330 = v568;
    v329 = v569;
    v331 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v329 + 8))(v331, v330);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v332 = swift_initStackObject();
    *(v332 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v332 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v332);
    v334 = v333;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v334);

    sub_29D9340B8();

    sub_29D6AA284(v552, v579);
    (*(v577 + 8))(v320, v576);
    sub_29D6AA168(v555, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v326(v557, v328);
    v165 = v556;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA688], v119))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v556 = qword_2A17D0EC0;
    v557 = *algn_2A17D0EB8;
    *&v558 = qword_2A17D0EB0;
    v231 = sub_29D9334A8();
    v233 = v232;
    v234 = v552;
    swift_storeEnumTagMultiPayload();
    v571 = MEMORY[0x29ED64C30](v231, v233);
    *&v582 = v235;
    *&v570 = sub_29D934808();
    v581 = v236;
    v237 = v53;
    (*(v53 + 104))(v554, *MEMORY[0x29EDC1750], v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v239 = v238;
    v240 = swift_allocObject();
    v578 = xmmword_29D93DDB0;
    *(v240 + 16) = xmmword_29D93DDB0;
    *(v240 + 32) = v231;
    *(v240 + 40) = v233;
    sub_29D934808();
    v242 = v241;
    sub_29D6AA1C8(v234, v553, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v243 = sub_29D9330E8();
    v572 = v242;
    v573 = v239;
    v579 = v350;
    v555 = v243;

    sub_29D9334A8();
    (*(v237 + 16))(v574, v554, v583);
    v539 = v237;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v351 = qword_2A1A2C038;
    v352 = v561;
    sub_29D934788();
    v353 = sub_29D934798();
    (*(*(v353 - 8) + 56))(v352, 0, 1, v353);
    v354 = sub_29D9336F8();
    (*(*(v354 - 8) + 56))(v559, 1, 1, v354);
    v551 = v240;
    sub_29D935E88();
    v355 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v357 = v576;
    v356 = v577;
    v358 = v566;
    (*(v577 + 16))(v566, v355, v576);
    (*(v356 + 56))(v358, 0, 1, v357);
    v360 = v564;
    v359 = v565;
    v361 = v563;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v362 = v555;
    v363 = v579;
    sub_29D6AA230(v555, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v364 = v580;
    sub_29D934048();
    sub_29D6AA284(v362, v363);
    (*(v359 + 8))(v361, v360);
    v150 = v364;
    sub_29D6AA094(v358, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v365 = v575;
    sub_29D934998();
    sub_29D934098();
    v366 = swift_initStackObject();
    *(v366 + 16) = v578;
    v367 = v574;
    sub_29D934958();
    v368 = sub_29D9348A8();
    v370 = v369;
    v371 = *(v539 + 8);
    v372 = v367;
    v373 = v583;
    v371(v372, v583);
    *(v366 + 32) = v368;
    *(v366 + 40) = v370;
    sub_29D6E35C8(v366);
    swift_setDeallocating();
    sub_29D6AA360(v366 + 32);
    sub_29D9340D8();
    v375 = v568;
    v374 = v569;
    v376 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v374 + 8))(v376, v375);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v377 = swift_initStackObject();
    *(v377 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v377 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v377);
    v379 = v378;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v379);

    sub_29D9340B8();

    sub_29D6AA284(v555, v579);
    (*(v577 + 8))(v365, v576);
    sub_29D6AA168(v553, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v371(v554, v373);
    v165 = v552;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA620], v119))
  {
    v288 = v53;

    v289 = sub_29D934848();
    v291 = v290;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    *&v570 = *algn_2A17D0EB8;
    *&v558 = qword_2A17D0EC0;
    v571 = qword_2A17D0EB0;
    sub_29D9334A8();
    sub_29D6AA454(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v292 = swift_allocObject();
    v582 = xmmword_29D93DDB0;
    *(v292 + 16) = xmmword_29D93DDB0;
    v293 = MEMORY[0x29EDC99B0];
    *(v292 + 56) = MEMORY[0x29EDC99B0];
    *(v292 + 64) = sub_29D69AD24();
    *(v292 + 32) = v289;
    *(v292 + 40) = v291;
    sub_29D935E88();
    v294 = sub_29D939D38();
    v296 = v295;

    v297 = v550;
    swift_storeEnumTagMultiPayload();
    (*(v288 + 104))(v551, *MEMORY[0x29EDC1758], v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, v293);
    v299 = v298;
    v300 = swift_allocObject();
    *(v300 + 16) = v582;
    *&v578 = v294;
    *(v300 + 32) = v294;
    *(v300 + 40) = v296;
    sub_29D935E88();
    v557 = sub_29D934828();
    v581 = v301;
    sub_29D6AA1C8(v297, v549, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v302 = sub_29D9330E8();
    v554 = v296;
    v555 = v300;
    v572 = v289;
    v573 = v299;
    v579 = v394;
    v556 = v302;

    sub_29D9334A8();
    (*(v288 + 16))(v574, v551, v583);
    v539 = v288;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v395 = qword_2A1A2C038;
    v396 = v561;
    sub_29D934788();
    v397 = sub_29D934798();
    (*(*(v397 - 8) + 56))(v396, 0, 1, v397);
    v398 = sub_29D9336F8();
    (*(*(v398 - 8) + 56))(v559, 1, 1, v398);
    sub_29D935E88();
    v399 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v400 = v577;
    v401 = v566;
    v402 = v576;
    (*(v577 + 16))(v566, v399);
    (*(v400 + 56))(v401, 0, 1, v402);
    v404 = v564;
    v403 = v565;
    v405 = v563;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v406 = v556;
    v407 = v579;
    sub_29D6AA230(v556, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v408 = v580;
    sub_29D934048();
    sub_29D6AA284(v406, v407);
    v409 = v405;
    v150 = v408;
    (*(v403 + 8))(v409, v404);
    sub_29D6AA094(v401, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v410 = v575;
    sub_29D934998();
    sub_29D934098();
    v411 = swift_initStackObject();
    *(v411 + 16) = v582;
    v412 = v574;
    sub_29D934958();
    v413 = sub_29D9348A8();
    v415 = v414;
    v416 = *(v539 + 8);
    v417 = v412;
    v418 = v583;
    v416(v417, v583);
    *(v411 + 32) = v413;
    *(v411 + 40) = v415;
    sub_29D6E35C8(v411);
    swift_setDeallocating();
    sub_29D6AA360(v411 + 32);
    sub_29D9340D8();
    v420 = v568;
    v419 = v569;
    v421 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v419 + 8))(v421, v420);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v422 = swift_initStackObject();
    *(v422 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v422 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v422);
    v424 = v423;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v424);

    sub_29D9340B8();

    sub_29D6AA284(v556, v579);
    (*(v577 + 8))(v410, v576);
    sub_29D6AA168(v549, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v416(v551, v418);
    v165 = v550;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA6A8], v119))
  {
    v335 = v53;

    v336 = sub_29D934858();
    v338 = v337;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    *&v570 = *algn_2A17D0EB8;
    *&v558 = qword_2A17D0EC0;
    v571 = qword_2A17D0EB0;
    sub_29D9334A8();
    sub_29D6AA454(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v339 = swift_allocObject();
    v582 = xmmword_29D93DDB0;
    *(v339 + 16) = xmmword_29D93DDB0;
    v340 = MEMORY[0x29EDC99B0];
    *(v339 + 56) = MEMORY[0x29EDC99B0];
    *(v339 + 64) = sub_29D69AD24();
    *(v339 + 32) = v336;
    *(v339 + 40) = v338;
    sub_29D935E88();
    v341 = sub_29D939D38();
    v343 = v342;

    v344 = v547;
    swift_storeEnumTagMultiPayload();
    (*(v335 + 104))(v548, *MEMORY[0x29EDC1758], v583);
    sub_29D6AA3B4(0, &qword_2A1A21F18, v340);
    v346 = v345;
    v347 = swift_allocObject();
    *(v347 + 16) = v582;
    *&v578 = v341;
    *(v347 + 32) = v341;
    *(v347 + 40) = v343;
    sub_29D935E88();
    v557 = sub_29D934828();
    v581 = v348;
    sub_29D6AA1C8(v344, v546, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
    v349 = sub_29D9330E8();
    v554 = v343;
    v555 = v347;
    v572 = v336;
    v573 = v346;
    v579 = v431;
    v556 = v349;

    sub_29D9334A8();
    (*(v335 + 16))(v574, v548, v583);
    v539 = v335;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v432 = qword_2A1A2C038;
    v433 = v561;
    sub_29D934788();
    v434 = sub_29D934798();
    (*(*(v434 - 8) + 56))(v433, 0, 1, v434);
    v435 = sub_29D9336F8();
    (*(*(v435 - 8) + 56))(v559, 1, 1, v435);
    sub_29D935E88();
    v436 = v575;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v437 = v577;
    v438 = v566;
    v439 = v576;
    (*(v577 + 16))(v566, v436);
    (*(v437 + 56))(v438, 0, 1, v439);
    v441 = v564;
    v440 = v565;
    v442 = v563;
    (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
    v443 = v556;
    v444 = v579;
    sub_29D6AA230(v556, v579);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
    v445 = v580;
    sub_29D934048();
    sub_29D6AA284(v443, v444);
    v446 = v442;
    v150 = v445;
    (*(v440 + 8))(v446, v441);
    sub_29D6AA094(v438, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v447 = v575;
    sub_29D934998();
    sub_29D934098();
    v448 = swift_initStackObject();
    *(v448 + 16) = v582;
    v449 = v574;
    sub_29D934958();
    v450 = sub_29D9348A8();
    v452 = v451;
    v453 = *(v539 + 8);
    v454 = v449;
    v455 = v583;
    v453(v454, v583);
    *(v448 + 32) = v450;
    *(v448 + 40) = v452;
    sub_29D6E35C8(v448);
    swift_setDeallocating();
    sub_29D6AA360(v448 + 32);
    sub_29D9340D8();
    v457 = v568;
    v456 = v569;
    v458 = v567;
    (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
    sub_29D934888();
    (*(v456 + 8))(v458, v457);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v459 = swift_initStackObject();
    *(v459 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v459 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v459);
    v461 = v460;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D8E8608(v461);

    sub_29D9340B8();

    sub_29D6AA284(v556, v579);
    (*(v577 + 8))(v447, v576);
    sub_29D6AA168(v546, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v453(v548, v455);
    v165 = v547;
  }

  else
  {
    v380 = sub_29D6A15E8(*MEMORY[0x29EDBA630], v119);

    if (v380)
    {
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v556 = qword_2A17D0EC0;
      v557 = *algn_2A17D0EB8;
      *&v558 = qword_2A17D0EB0;
      v381 = sub_29D9334A8();
      v383 = v382;
      v384 = v540;
      swift_storeEnumTagMultiPayload();
      v571 = MEMORY[0x29ED64C30](v381, v383);
      *&v582 = v385;
      *&v570 = sub_29D934808();
      v581 = v386;
      v387 = v53;
      (*(v53 + 104))(v544, *MEMORY[0x29EDC1750], v583);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v389 = v388;
      v390 = swift_allocObject();
      v578 = xmmword_29D93DDB0;
      *(v390 + 16) = xmmword_29D93DDB0;
      *(v390 + 32) = v381;
      *(v390 + 40) = v383;
      sub_29D934808();
      v392 = v391;
      sub_29D6AA1C8(v384, v541, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      sub_29D933108();
      swift_allocObject();
      sub_29D9330F8();
      sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
      v393 = sub_29D9330E8();
      v572 = v392;
      v573 = v389;
      v579 = v476;
      v555 = v393;

      sub_29D9334A8();
      (*(v387 + 16))(v574, v544, v583);
      v539 = v387;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v477 = qword_2A1A2C038;
      v478 = v561;
      sub_29D934788();
      v479 = sub_29D934798();
      (*(*(v479 - 8) + 56))(v478, 0, 1, v479);
      v480 = sub_29D9336F8();
      (*(*(v480 - 8) + 56))(v559, 1, 1, v480);
      v554 = v390;
      sub_29D935E88();
      v481 = v575;
      sub_29D934978();
      sub_29D936948();
      _s14descr2A243C641C13ActionHandlerCMa(0);
      v483 = v576;
      v482 = v577;
      v484 = v566;
      (*(v577 + 16))(v566, v481, v576);
      (*(v482 + 56))(v484, 0, 1, v483);
      v486 = v564;
      v485 = v565;
      v487 = v563;
      (*(v565 + 104))(v563, *MEMORY[0x29EDC36F0], v564);
      v488 = v555;
      v489 = v579;
      sub_29D6AA230(v555, v579);
      sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
      v490 = v580;
      sub_29D934048();
      sub_29D6AA284(v488, v489);
      (*(v485 + 8))(v487, v486);
      v150 = v490;
      sub_29D6AA094(v484, &qword_2A1A24720, MEMORY[0x29EDC1948]);
      v491 = v575;
      sub_29D934998();
      sub_29D934098();
      v492 = swift_initStackObject();
      *(v492 + 16) = v578;
      v493 = v574;
      sub_29D934958();
      v494 = sub_29D9348A8();
      v496 = v495;
      v497 = *(v539 + 8);
      v498 = v493;
      v499 = v583;
      v497(v498, v583);
      *(v492 + 32) = v494;
      *(v492 + 40) = v496;
      sub_29D6E35C8(v492);
      swift_setDeallocating();
      sub_29D6AA360(v492 + 32);
      sub_29D9340D8();
      v501 = v568;
      v500 = v569;
      v502 = v567;
      (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
      sub_29D934888();
      (*(v500 + 8))(v502, v501);
      sub_29D9340E8();
      sub_29D934088();
      sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
      v503 = swift_initStackObject();
      *(v503 + 16) = xmmword_29D940030;
      sub_29D6AA400();
      *(v503 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      sub_29D6E3724(v503);
      v505 = v504;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_29D8E8608(v505);

      sub_29D9340B8();

      sub_29D6AA284(v555, v579);
      (*(v577 + 8))(v491, v576);
      sub_29D6AA168(v541, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v497(v544, v499);
      v165 = v540;
    }

    else
    {
      v425 = v53;
      if (sub_29D9347F8())
      {
        v426 = v545;
        v427 = v543;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v429 = qword_2A17D0EB0;
        v428 = *algn_2A17D0EB8;
        v430 = qword_2A17D0EC0;
      }

      else
      {
        v426 = v545;
        v427 = v543;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v429 = qword_2A17D0EB0;
        v428 = *algn_2A17D0EB8;
        v430 = qword_2A17D0EC0;
      }

      v556 = v430;
      v557 = v428;
      *&v558 = v429;
      v462 = sub_29D9334A8();
      v464 = v463;
      swift_storeEnumTagMultiPayload();
      v571 = MEMORY[0x29ED64C30](v462, v464);
      *&v582 = v465;
      *&v570 = sub_29D934808();
      v581 = v466;
      v467 = v426;
      v468 = v427;
      (*(v425 + 104))(v467, *MEMORY[0x29EDC1750], v583);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v470 = v469;
      v471 = swift_allocObject();
      v578 = xmmword_29D93DDB0;
      *(v471 + 16) = xmmword_29D93DDB0;
      *(v471 + 32) = v462;
      *(v471 + 40) = v464;
      v472 = sub_29D934808();
      v474 = v473;
      sub_29D6AA1C8(v468, v542, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      sub_29D933108();
      swift_allocObject();
      sub_29D9330F8();
      sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
      v475 = sub_29D9330E8();
      v554 = v472;
      v555 = v475;
      v572 = v474;
      v573 = v470;
      v579 = v506;

      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v539 = v425;
      (*(v425 + 16))(v574, v545, v583);
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v507 = qword_2A1A2C038;
      v508 = v561;
      sub_29D934788();
      v509 = sub_29D934798();
      (*(*(v509 - 8) + 56))(v508, 0, 1, v509);
      v510 = sub_29D9336F8();
      (*(*(v510 - 8) + 56))(v559, 1, 1, v510);
      sub_29D935E88();
      v511 = v575;
      sub_29D934978();
      sub_29D936948();
      _s14descr2A243C641C13ActionHandlerCMa(0);
      v513 = v576;
      v512 = v577;
      v514 = v566;
      (*(v577 + 16))(v566, v511, v576);
      (*(v512 + 56))(v514, 0, 1, v513);
      v515 = *MEMORY[0x29EDC36F0];
      v517 = v564;
      v516 = v565;
      v518 = *(v565 + 104);
      *&v582 = v471;
      v519 = v563;
      v518(v563, v515, v564);
      v520 = v555;
      v521 = v579;
      sub_29D6AA230(v555, v579);
      sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa, &unk_29D94D858);
      v522 = v580;
      sub_29D934048();
      sub_29D6AA284(v520, v521);
      (*(v516 + 8))(v519, v517);
      v150 = v522;
      sub_29D6AA094(v514, &qword_2A1A24720, MEMORY[0x29EDC1948]);
      v523 = v575;
      sub_29D934998();
      sub_29D934098();
      v524 = swift_initStackObject();
      *(v524 + 16) = v578;
      v525 = v574;
      sub_29D934958();
      v526 = sub_29D9348A8();
      v528 = v527;
      v529 = *(v539 + 8);
      v530 = v525;
      v531 = v583;
      v529(v530, v583);
      *(v524 + 32) = v526;
      *(v524 + 40) = v528;
      sub_29D6E35C8(v524);
      swift_setDeallocating();
      sub_29D6AA360(v524 + 32);
      sub_29D9340D8();
      v533 = v568;
      v532 = v569;
      v534 = v567;
      (*(v569 + 104))(v567, *MEMORY[0x29EDC1870], v568);
      sub_29D934888();
      (*(v532 + 8))(v534, v533);
      sub_29D9340E8();
      sub_29D934088();
      sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
      v535 = swift_initStackObject();
      *(v535 + 16) = xmmword_29D940030;
      sub_29D6AA400();
      *(v535 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      sub_29D6E3724(v535);
      v537 = v536;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_29D8E8608(v537);

      sub_29D9340B8();

      sub_29D6AA284(v555, v579);
      (*(v577 + 8))(v523, v576);
      sub_29D6AA168(v542, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v529(v545, v531);
      v165 = v543;
    }
  }

  sub_29D6AA168(v165, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v166 = sub_29D9340F8();
  return (*(*(v166 - 8) + 56))(v150, 0, 1, v166);
}

uint64_t sub_29D6A9D90(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000006BLL, 0x800000029D9588C0);
  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D958930);
  v2 = a1;
  v3 = [v2 description];
  v4 = sub_29D939D68();
  v6 = v5;

  MEMORY[0x29ED6A240](v4, v6);

  return 0;
}

void sub_29D6A9ED4(uint64_t a1)
{
  if (!qword_2A1A246E8)
  {
    type metadata accessor for HKHRAFibBurdenLoggingCategory(255);
    sub_29D6AA4B8(&qword_2A1A22190, type metadata accessor for HKHRAFibBurdenLoggingCategory, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&qword_2A1A22188, type metadata accessor for HKHRAFibBurdenLoggingCategory, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&unk_2A1A22160, type metadata accessor for HKHRAFibBurdenLoggingCategory, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&qword_2A1A22180, type metadata accessor for HKHRAFibBurdenLoggingCategory, &unk_29D93DF40);
    sub_29D6AA4B8(&qword_2A1A22170, type metadata accessor for HKHRAFibBurdenLoggingCategory, &unk_29D93DFA8);
    v1 = sub_29D937218();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A246E8);
    }
  }
}

uint64_t sub_29D6AA034()
{
  v1 = *(sub_29D9371A8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29D6A2B68(v2);
}

uint64_t sub_29D6AA094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6AA454(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D6AA104(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6AA168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6AA1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6AA230(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29D6AA284(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29D6AA2D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  v2 = sub_29D93AE98() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

void sub_29D6AA3B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D6AA400()
{
  result = qword_2A1A24910;
  if (!qword_2A1A24910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24910);
  }

  return result;
}

void sub_29D6AA454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D6AA4B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D6AA504()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = HKLogHeartRateCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 16)];

    v5 = *(v0 + 40);
    *(v0 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29D6AA594(char a1, char a2)
{
  v5 = *v2;
  sub_29D6AC818(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_29D93A028();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  *(v11 + 41) = a2;
  *(v11 + 48) = v5;

  sub_29D6BEBA4(0, 0, v9, &unk_29D9402C0, v11);
}

uint64_t sub_29D6AA6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 298) = a6;
  *(v7 + 297) = a5;
  *(v7 + 144) = a4;
  *(v7 + 152) = a7;
  v8 = sub_29D9339F8();
  *(v7 + 160) = v8;
  *(v7 + 168) = *(v8 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v7 + 192) = v9;
  *v9 = v7;
  v9[1] = sub_29D6AA7F4;

  return sub_29D6AC2C8();
}

uint64_t sub_29D6AA7F4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_29D6AB3F8;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_29D6AA920;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D6AA920()
{
  v1 = v0[18];
  *(v1 + 32) = v0[25];
  sub_29D936978();
  v0[26] = *(v1 + 24);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_29D6AA9C8;

  return sub_29D6B41B0();
}

uint64_t sub_29D6AA9C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v5 = sub_29D6AB49C;
  }

  else
  {
    v5 = sub_29D6AAAE0;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D6AAAE0(uint64_t a1)
{
  sub_29D9339E8();
  v2 = swift_task_alloc();
  *(v1 + 248) = v2;
  *v2 = v1;
  v2[1] = sub_29D6AAB78;

  return sub_29D6B4650();
}

uint64_t sub_29D6AAB78(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    (*(v3[21] + 8))(v3[23], v3[20]);

    v4 = sub_29D6AB060;
  }

  else
  {
    v4 = sub_29D6AACB0;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D6AACB0()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = [*(v0 + 256) startDate];
    sub_29D933998();

    v33 = sub_29D6B4DEC(v2, v3);
    v7 = *(v5 + 8);
    v7(v3, v4);
  }

  else
  {
    v8 = *(v0 + 168);
    v33 = [*MEMORY[0x29EDBA360] integerValue];
    v7 = *(v8 + 8);
  }

  v9 = *(v0 + 144);
  v7(*(v0 + 184), *(v0 + 160));
  v32 = sub_29D6AB8D4();
  if (*(v9 + 32))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v10 == 0;
    if (v10)
    {
      v10 = [v10 bedTimeCount];
    }

    v12 = v10;
    if (*(*(v0 + 144) + 32))
    {
      v13 = v11;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v14 == 0;
      if (v14)
      {
        swift_unknownObjectRetain();
        v16 = [v14 datesWithSamples];
        sub_29D6ACB80();
        v17 = sub_29D93A0D8();
        sub_29D936978();

        v14 = *(v17 + 16);
      }

      v29 = v14;
      v28 = v15;
      if (*(*(v0 + 144) + 32) && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
      {
        v31 = [v18 wakeUpCount];
        v30 = 0;
      }

      else
      {
        v31 = 0;
        v30 = 1;
      }
    }

    else
    {
      v29 = 0;
      v31 = 0;
      v28 = 1;
      v30 = 1;
      v13 = v11;
    }

    v19 = v12;
  }

  else
  {
    v29 = 0;
    v19 = 0;
    v31 = 0;
    v28 = 1;
    v13 = 1;
    v30 = 1;
  }

  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 297);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsEvent();
  v23 = swift_allocObject();
  *(v0 + 272) = v23;
  *(v23 + 16) = v32 & 1;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;
  *(v23 + 40) = v19;
  *(v23 + 48) = v13;
  *(v23 + 56) = v29;
  *(v23 + 64) = v28;
  *(v23 + 72) = v33;
  *(v23 + 80) = v31;
  *(v23 + 88) = v30;
  *(v23 + 89) = v22;
  v24 = sub_29D6AA504();
  *(v0 + 280) = v24;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = sub_29D6AB270;
  v25 = swift_continuation_init();
  sub_29D6ACB00(0);
  *(v0 + 136) = v26;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29D8D0FE0;
  *(v0 + 104) = &unk_2A24406B0;
  *(v0 + 112) = v25;
  [v24 submitEvent:v23 completion:?];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29D6AB060()
{
  v17 = v0;
  v1 = *(v0 + 264);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v6, 0x16u);
    sub_29D6ACA3C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D6AB270()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_29D6AB6AC;
  }

  else
  {
    v2 = sub_29D6AB380;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D6AB380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D6AB3F8()
{
  v1 = v0[18];
  *(v1 + 32) = 0;
  sub_29D936978();
  v0[26] = *(v1 + 24);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_29D6AA9C8;

  return sub_29D6B41B0();
}

uint64_t sub_29D6AB49C()
{
  v17 = v0;
  v1 = *(v0 + 240);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v6, 0x16u);
    sub_29D6ACA3C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D6AB6AC()
{
  v18 = v0;
  v1 = v0[35];
  swift_willThrow();

  v2 = v0[36];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = v2;
  v5 = sub_29D937878();
  v6 = sub_29D93A288();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_29D6AB8D4()
{
  v73[1] = *MEMORY[0x29EDCA608];
  v72 = *v0;
  v1 = sub_29D937178();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D937158();
  v67 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AC818(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v66 - v11;
  v71 = sub_29D9371A8();
  v13 = *(v71 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v71, v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v70 = &v66 - v19;
  v20 = v0[2];
  v21 = [v20 profileIdentifier];
  v22 = [v21 type];

  if (v22 != 1 || (v23 = *MEMORY[0x29EDBA6F0], (v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v20]) == 0))
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v26 = sub_29D937898();
    sub_29D69C6C0(v26, qword_2A1A2C008);
    v27 = sub_29D937878();
    v28 = sub_29D93A298();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v73[0] = v30;
      *v29 = 136446210;
      v31 = sub_29D93AF08();
      v33 = sub_29D6C2364(v31, v32, v73);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s] Unable to get feature status provider from health store!", v29, 0xCu);
      sub_29D69417C(v30);
      MEMORY[0x29ED6BE30](v30, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    goto LABEL_9;
  }

  v25 = v24;
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v66 = v25;
  sub_29D937278();
  v36 = v71;
  (*(v13 + 56))(v12, 0, 1, v71);
  (*(v13 + 32))(v70, v12, v36);
  v37 = [v20 featureAvailabilityProviderForIdentifier_];
  v38 = v37;
  if (v37)
  {
    v73[0] = 0;
    v39 = [v37 featureOnboardingRecordWithError_];
    v40 = v13;
    if (!v39)
    {
      v54 = v73[0];
      v55 = sub_29D933598();

      swift_willThrow();
      goto LABEL_25;
    }

    v41 = v39;
    v42 = v73[0];
    v43 = [v41 onboardingCompletion];

    v36 = v71;
  }

  else
  {
    v40 = v13;
    v43 = 0;
  }

  (*(v40 + 16))(v17, v70, v36);
  if ((*(v40 + 88))(v17, v36) == *MEMORY[0x29EDC2D70])
  {
    (*(v40 + 96))(v17, v36);
    v44 = v43;
    v45 = v67;
    (*(v67 + 32))(v8, v17, v5);
    sub_29D937108();
    v46 = sub_29D937188();
    (*(v68 + 8))(v4, v69);
    v47 = sub_29D93A648();

    (*(v45 + 8))(v8, v5);
    v43 = v44;
    v48 = v66;
    if (v38)
    {
LABEL_17:
      v73[0] = 0;
      v49 = [v38 featureOnboardingRecordWithError_];
      if (v49)
      {
        v50 = v49;
        v51 = v73[0];
        v52 = [v50 onboardingState];
        sub_29D936978();

        (*(v40 + 8))(v70, v71);
        v53 = v52 != 3;
        goto LABEL_21;
      }

      v56 = v73[0];
      v55 = sub_29D933598();

      swift_willThrow();
LABEL_25:
      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v57 = sub_29D937898();
      sub_29D69C6C0(v57, qword_2A1A2BF10);
      v58 = sub_29D937878();
      v59 = sub_29D93A2A8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = v40;
        v62 = swift_slowAlloc();
        v73[0] = v62;
        *v60 = 136446210;
        v63 = sub_29D93AF08();
        v65 = sub_29D6C2364(v63, v64, v73);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_29D677000, v58, v59, "[%{public}s] Unable to determine if Hypertension Notifications have been onboarded ", v60, 0xCu);
        sub_29D69417C(v62);
        MEMORY[0x29ED6BE30](v62, -1, -1);
        MEMORY[0x29ED6BE30](v60, -1, -1);

        sub_29D936978();
        (*(v61 + 8))(v70, v71);
      }

      else
      {

        sub_29D936978();
        (*(v40 + 8))(v70, v71);
      }

      goto LABEL_9;
    }
  }

  else
  {
    (*(v40 + 8))(v17, v36);
    v47 = 0;
    v48 = v66;
    if (v38)
    {
      goto LABEL_17;
    }
  }

  (*(v40 + 8))(v70, v36);

  v53 = 1;
LABEL_21:
  if (v43)
  {

    v34 = v47 & v53;
    return v34 & 1;
  }

LABEL_9:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_29D6AC2E8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_29D6AC37C;

  return sub_29D6B4650();
}

uint64_t sub_29D6AC37C(uint64_t a1)
{
  *(*v2 + 32) = a1;

  if (v1)
  {

    v3 = sub_29D6AC610;
  }

  else
  {
    v3 = sub_29D6AC498;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D6AC498()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDC5210]) initWithJournal:v1 healthStore:*(v0[2] + 16)];
    v3 = [v2 buildSummary];
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF10);
    v5 = sub_29D937878();
    v6 = sub_29D93A268();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29D677000, v5, v6, "Unable to fetch most recent journal", v7, 2u);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_29D6AC610()
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29D677000, v2, v3, "Unable to fetch most recent journal", v4, 2u);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_29D6AC72C()
{

  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t sub_29D6AC7A0(uint64_t a1)
{
  sub_29D6AC818(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6AC818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6AC86C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 41);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D6AC948;

  return sub_29D6AA6F0(a1, v4, v5, v6, v9, v8, v7);
}

uint64_t sub_29D6AC948()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29D6ACA3C(uint64_t a1)
{
  sub_29D6ACA98(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6ACA98(uint64_t a1)
{
  if (!qword_2A1A21FC0)
  {
    sub_29D69567C(255, &qword_2A1A21FD0, 0x29EDC9738);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21FC0);
    }
  }
}

void sub_29D6ACB00(uint64_t a1)
{
  if (!qword_2A17B1910)
  {
    sub_29D6A0CD0();
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1910);
    }
  }
}

unint64_t sub_29D6ACB80()
{
  result = qword_2A17B1360;
  if (!qword_2A17B1360)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1360);
  }

  return result;
}

uint64_t sub_29D6ACBD8()
{
  v1 = v0;
  sub_29D6AD2D8(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D93A548();
  v38 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD45C(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD350(0);
  v36 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD314(0);
  v41 = v15;
  v39 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + 8);
  v20 = *(v0 + 16);
  sub_29D935E88();
  v48[0] = sub_29D9343D8();
  sub_29D6AD3EC(0);
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
  v21 = MEMORY[0x29EDC9A98];
  sub_29D938468();

  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = sub_29D6B15DC;
  v22[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48, v21);
  sub_29D6B1494(&qword_2A17B1930, sub_29D6AD350, MEMORY[0x29EDB8908]);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48, v21);
  v23 = v36;
  sub_29D938488();

  (*(v11 + 8))(v14, v23);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_2A1A22218 != -1)
  {
    swift_once();
  }

  v25 = v37;
  sub_29D93A558();

  v26 = swift_allocObject();
  v27 = *(v1 + 16);
  *(v26 + 16) = *v1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v1 + 32);
  *(v26 + 64) = *(v1 + 48);
  sub_29D6B0450(v1, v48);
  sub_29D938228();
  sub_29D6AD548();
  sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  v28 = v42;
  v29 = v40;
  sub_29D9385A8();

  (*(v38 + 8))(v25, v29);
  sub_29D6B1494(&qword_2A17B1938, sub_29D6AD314, MEMORY[0x29EDB8928]);
  sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C, MEMORY[0x29EDB89A8]);
  v31 = v44;
  v30 = v45;
  v32 = v41;
  sub_29D9384A8();
  sub_29D6B1494(&qword_2A17B1940, sub_29D6AD2D8, MEMORY[0x29EDB8948]);
  v33 = v47;
  v34 = sub_29D938418();
  (*(v46 + 8))(v30, v33);
  (*(v43 + 8))(v28, v31);
  (*(v39 + 8))(v18, v32);
  return v34;
}

void sub_29D6AD350(uint64_t a1)
{
  if (!qword_2A17B1928)
  {
    sub_29D6AD3EC(255);
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1928);
    }
  }
}

void sub_29D6AD3EC(uint64_t a1)
{
  if (!qword_2A1A22320)
  {
    sub_29D6A08F8(255);
    sub_29D6A0CD0();
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22320);
    }
  }
}

void sub_29D6AD45C(uint64_t a1)
{
  if (!qword_2A1A22480)
  {
    sub_29D6AD548();
    sub_29D93A548();
    sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22480);
    }
  }
}

void sub_29D6AD548()
{
  if (!qword_2A1A223D8)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A223D8);
    }
  }
}

uint64_t sub_29D6AD5A8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_29D9339F8();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_29D6AD614@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0488(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0588(0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  sub_29D69C6C0(v17, qword_2A1A2C008);
  v18 = sub_29D937878();
  v19 = sub_29D93A2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_29D677000, v18, v19, "Cardio fitness retrocompute available tile dismissed", v20, 2u);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  sub_29D9339E8();
  v21 = sub_29D9339F8();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v23 = *(a1 + 8);
  v22 = *(a1 + 16);
  sub_29D935E88();
  v24 = sub_29D9343E8();
  sub_29D6A0D34(v6);
  v34 = v24;
  v25 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v25, MEMORY[0x29EDB8AD8]);
  v26 = MEMORY[0x29EDC9A98];
  sub_29D938468();

  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v22;
  v27[4] = sub_29D6B15DC;
  v27[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48, v26);
  sub_29D6B1494(&qword_2A17B1968, sub_29D6B0488, MEMORY[0x29EDB8908]);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48, v26);
  sub_29D938488();

  (*(v9 + 8))(v12, v8);
  sub_29D6B1494(&qword_2A17B1970, sub_29D6B0588, MEMORY[0x29EDB8928]);
  v28 = v32;
  v29 = sub_29D938418();
  result = (*(v31 + 8))(v16, v28);
  *v33 = v29;
  return result;
}

uint64_t sub_29D6ADAB0()
{
  v1 = v0;
  sub_29D6B06DC(0);
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D93A548();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD45C(0);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0968(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B08D4(0);
  v60 = v17;
  v61 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0838(0);
  v22 = *(v21 - 8);
  v62 = v21;
  v63 = v22;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v59 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B07FC(0);
  v64 = *(v25 - 8);
  v65 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v56 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0[4];
  v55 = v0[3];
  v75 = sub_29D9343D8();
  v29 = v0[6];
  v58 = v0[5];
  v57 = v29;
  v77 = sub_29D9343D8();
  sub_29D6AD3EC(0);
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
  sub_29D938458();

  sub_29D9341C8();
  sub_29D938048();
  (*(v13 + 8))(v16, v12);
  v30 = swift_allocObject();
  v31 = *(v1 + 16);
  *(v30 + 16) = *v1;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v1 + 32);
  *(v30 + 64) = *(v1 + 48);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_29D6B0A08;
  *(v32 + 24) = v30;
  sub_29D6B0450(v1, &v75);
  sub_29D6B1494(&qword_2A17B19A8, sub_29D6B08D4, MEMORY[0x29EDB8958]);
  v33 = MEMORY[0x29EDC9A98];
  v34 = v59;
  v35 = v60;
  sub_29D938468();

  v36 = v20;
  v37 = v56;
  (*(v61 + 8))(v36, v35);
  v75 = v55;
  v76 = v28;
  sub_29D935E88();
  MEMORY[0x29ED6A240](544370464, 0xE400000000000000);
  MEMORY[0x29ED6A240](v58, v57);
  v38 = v75;
  v39 = v76;
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = sub_29D6B15DC;
  v40[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48, v33);
  sub_29D6B1494(&qword_2A17B19B0, sub_29D6B0838, MEMORY[0x29EDB8908]);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48, v33);
  v41 = v62;
  sub_29D938488();

  (*(v63 + 8))(v34, v41);
  v42 = [objc_opt_self() defaultCenter];
  if (qword_2A1A22210 != -1)
  {
    swift_once();
  }

  v43 = v66;
  sub_29D93A558();

  v44 = swift_allocObject();
  v45 = *(v1 + 16);
  *(v44 + 16) = *v1;
  *(v44 + 32) = v45;
  *(v44 + 48) = *(v1 + 32);
  *(v44 + 64) = *(v1 + 48);
  sub_29D6B0450(v1, &v75);
  sub_29D938228();
  sub_29D6AD548();
  sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  v46 = v68;
  v47 = v69;
  sub_29D9385A8();

  (*(v67 + 8))(v43, v46);
  sub_29D6B1494(&qword_2A17B19B8, sub_29D6B07FC, MEMORY[0x29EDB8928]);
  sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C, MEMORY[0x29EDB89A8]);
  v49 = v71;
  v48 = v72;
  v50 = v65;
  sub_29D9384A8();
  sub_29D6B1494(&qword_2A17B19C0, sub_29D6B06DC, MEMORY[0x29EDB8948]);
  v51 = v74;
  v52 = sub_29D938418();
  (*(v73 + 8))(v48, v51);
  (*(v70 + 8))(v47, v49);
  (*(v64 + 8))(v37, v50);
  return v52;
}

unint64_t sub_29D6AE438(char *a1, char *a2)
{
  sub_29D6A08F8(0);
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v30[-v11];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v30[-v14];
  LODWORD(v16) = sub_29D6B0B20(a1, a2);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  sub_29D69C6C0(v17, qword_2A1A2C008);
  sub_29D6A0A20(a1, v15);
  sub_29D6A0A20(a2, v12);
  v18 = sub_29D937878();
  v19 = sub_29D93A2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136446978;
    *(v20 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v32);
    *(v20 + 12) = 1026;
    *(v20 + 14) = v16 & 1;
    *(v20 + 18) = 2082;
    sub_29D6A0A20(v15, v8);
    v22 = sub_29D939DA8();
    v31 = v16;
    v24 = v23;
    sub_29D6A0D34(v15);
    v25 = sub_29D6C2364(v22, v24, &v32);

    *(v20 + 20) = v25;
    *(v20 + 28) = 2082;
    sub_29D6A0A20(v12, v8);
    v26 = sub_29D939DA8();
    v28 = v27;
    sub_29D6A0D34(v12);
    v16 = sub_29D6C2364(v26, v28, &v32);

    *(v20 + 30) = v16;
    LOBYTE(v16) = v31;
    _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s] Completed dismissal state %{BOOL,public}d, dismissalDate: %{public}s, lastSeenDate: %{public}s", v20, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v21, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  else
  {

    sub_29D6A0D34(v12);
    sub_29D6A0D34(v15);
  }

  return v16 & 1;
}

uint64_t sub_29D6AE72C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0488(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0588(0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  sub_29D69C6C0(v17, qword_2A1A2C008);
  v18 = sub_29D937878();
  v19 = sub_29D93A2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_29D677000, v18, v19, "Cardio fitness retrocompute completed tile dismissed", v20, 2u);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  sub_29D9339E8();
  v21 = sub_29D9339F8();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v23 = *(a1 + 24);
  v22 = *(a1 + 32);
  sub_29D935E88();
  v24 = sub_29D9343E8();
  sub_29D6A0D34(v6);
  v34 = v24;
  v25 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v25, MEMORY[0x29EDB8AD8]);
  v26 = MEMORY[0x29EDC9A98];
  sub_29D938468();

  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v22;
  v27[4] = sub_29D6B15DC;
  v27[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48, v26);
  sub_29D6B1494(&qword_2A17B1968, sub_29D6B0488, MEMORY[0x29EDB8908]);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48, v26);
  sub_29D938488();

  (*(v9 + 8))(v12, v8);
  sub_29D6B1494(&qword_2A17B1970, sub_29D6B0588, MEMORY[0x29EDB8928]);
  v28 = v32;
  v29 = sub_29D938418();
  result = (*(v31 + 8))(v16, v28);
  *v33 = v29;
  return result;
}

uint64_t sub_29D6AEBC8(char a1)
{
  v2 = v1;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B1384(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A2A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v30);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Setting available dismissal date", v16, 0xCu);
    sub_29D69417C(v17);
    MEMORY[0x29ED6BE30](v17, -1, -1);
    MEMORY[0x29ED6BE30](v16, -1, -1);
  }

  if (a1)
  {
    sub_29D9339E8();
    v18 = sub_29D9339F8();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  }

  else
  {
    v19 = sub_29D9339F8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  sub_29D935E88();
  v22 = sub_29D9343E8();
  sub_29D6A0D34(v7);
  v30 = v22;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = nullsub_1;
  v23[5] = 0;
  v24 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  v25 = MEMORY[0x29EDCA180];
  sub_29D6B1168(0, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v24, MEMORY[0x29EDB8AD8]);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v25 + 8);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384, MEMORY[0x29EDB8928]);
  v26 = v29;
  v27 = sub_29D938418();
  (*(v9 + 8))(v12, v26);
  return v27;
}

uint64_t sub_29D6AEFFC(char a1)
{
  v2 = v1;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B1384(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A2A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v30);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Setting completed dismissal date", v16, 0xCu);
    sub_29D69417C(v17);
    MEMORY[0x29ED6BE30](v17, -1, -1);
    MEMORY[0x29ED6BE30](v16, -1, -1);
  }

  if (a1)
  {
    sub_29D9339E8();
    v18 = sub_29D9339F8();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  }

  else
  {
    v19 = sub_29D9339F8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  sub_29D935E88();
  v22 = sub_29D9343E8();
  sub_29D6A0D34(v7);
  v30 = v22;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = nullsub_1;
  v23[5] = 0;
  v24 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  v25 = MEMORY[0x29EDCA180];
  sub_29D6B1168(0, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v24, MEMORY[0x29EDB8AD8]);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v25 + 8);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384, MEMORY[0x29EDB8928]);
  v26 = v29;
  v27 = sub_29D938418();
  (*(v9 + 8))(v12, v26);
  return v27;
}

uint64_t sub_29D6AF430(uint64_t a1)
{
  v2 = v1;
  sub_29D6B1384(0);
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v22);
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Setting last seen retrocompute complete date", v11, 0xCu);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  sub_29D935E88();
  v22 = sub_29D9343E8();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = nullsub_1;
  v15[5] = 0;
  v16 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  v17 = MEMORY[0x29EDCA180];
  sub_29D6B1168(0, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v16, MEMORY[0x29EDB8AD8]);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v17 + 8);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384, MEMORY[0x29EDB8928]);
  v18 = v21;
  v19 = sub_29D938418();
  (*(v4 + 8))(v7, v18);
  return v19;
}

uint64_t sub_29D6AF798(uint64_t a1)
{
  v2 = v1;
  sub_29D6A08F8(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  sub_29D6B0F70(0);
  v38 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B107C(0);
  v39 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, v40);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s] Setting last seen retrocompute complete date if needed", v17, 0xCu);
    sub_29D69417C(v18);
    MEMORY[0x29ED6BE30](v18, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  v19 = *(v2 + 48);
  v33 = *(v2 + 40);
  sub_29D935E88();
  v40[7] = sub_29D9343D8();
  sub_29D6A0A20(a1, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v22 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 64) = *(v2 + 48);
  sub_29D6B1204(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_29D6B0450(v2, v40);
  sub_29D938228();
  sub_29D6AD3EC(0);
  v23 = MEMORY[0x29EDB89F8];
  sub_29D6B1310(0, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
  sub_29D6B0544(&qword_2A17B19E0, &qword_2A17B19D8, v23, MEMORY[0x29EDB8A00]);
  v24 = MEMORY[0x29EDCA180];
  v25 = v34;
  sub_29D938508();

  v26 = swift_allocObject();
  v26[2] = v33;
  v26[3] = v19;
  v26[4] = nullsub_1;
  v26[5] = 0;
  sub_29D6B1168(0, &qword_2A17B19F0, v24 + 8);
  sub_29D6B1494(&qword_2A17B19F8, sub_29D6B0F70, MEMORY[0x29EDB89A8]);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v24 + 8);
  v27 = v35;
  v28 = v38;
  sub_29D938488();

  (*(v36 + 8))(v25, v28);
  sub_29D6B1494(&qword_2A17B1A08, sub_29D6B107C, MEMORY[0x29EDB8928]);
  v29 = v39;
  v30 = sub_29D938418();
  (*(v37 + 8))(v27, v29);
  return v30;
}

uint64_t sub_29D6AFD4C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v21[0] = a4;
  sub_29D6B1168(0, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v21 - v9;
  sub_29D6B1310(0, &qword_2A17B1A10, MEMORY[0x29EDB8B18]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v21 - v15;
  v17 = sub_29D9339F8();
  if ((*(*(v17 - 8) + 48))(a1, 1, v17) == 1)
  {
    v21[1] = sub_29D9343E8();
    v18 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v18, MEMORY[0x29EDB8AD8]);
    v19 = sub_29D938418();
  }

  else
  {
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v7 + 8))(v10, v6);
    sub_29D6B0544(&qword_2A17B1A18, &qword_2A17B1A10, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
    v19 = sub_29D938418();
    result = (*(v13 + 8))(v16, v12);
  }

  *v21[0] = v19;
  return result;
}

uint64_t sub_29D6B0044(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  sub_29D935E88();
  v9 = a1;
  v10 = sub_29D937878();
  v11 = sub_29D93A288();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29D6C2364(a2, a3, &v20);
    *(v12 + 12) = 2082;
    v14 = a1;
    sub_29D6A0CD0();
    v15 = sub_29D939DA8();
    v17 = sub_29D6C2364(v15, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_29D677000, v10, v11, "[CardioFitnessRetroComputeDismissalStateManager] Failed to set value for key %{public}s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  a4(v18);
  return sub_29D938338();
}

uint64_t sub_29D6B0230(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5, const char *a6)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A1A2C008);
  sub_29D935E88();
  v12 = a1;
  v13 = sub_29D937878();
  v14 = sub_29D93A288();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a6;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_29D6C2364(a2, a3, &v23);
    *(v15 + 12) = 2082;
    v18 = a1;
    sub_29D6A0CD0();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v23);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_29D677000, v13, v14, v16, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v17, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  a4(&v23);
  return sub_29D938338();
}

void sub_29D6B0488(uint64_t a1)
{
  if (!qword_2A17B1948)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(255, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v1, MEMORY[0x29EDB8AD8]);
    v2 = sub_29D9380F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B1948);
    }
  }
}

uint64_t sub_29D6B0544(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6B1310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6B05C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v8 = MEMORY[0x29EDC9A98];
    sub_29D6B1168(255, &qword_2A1A24A48, MEMORY[0x29EDC9A98]);
    sub_29D6B1494(a4, a5, MEMORY[0x29EDB8908]);
    sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48, v8);
    v9 = sub_29D938118();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D6B0718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6AD45C(255);
    sub_29D6B1494(a4, a5, MEMORY[0x29EDB8928]);
    sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C, MEMORY[0x29EDB89A8]);
    v8 = sub_29D938138();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}