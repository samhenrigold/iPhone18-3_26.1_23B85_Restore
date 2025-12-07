void sub_1AAD99460(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  sub_1AACF5940(0, a1, a2, sub_1AAD9C128, &type metadata for SeriesKey);
  v4 = *v2;
  v5 = sub_1AAF90384();
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
        v20 = (*(v4 + 48) + 96 * v19);
        v21 = v20[2];
        v22 = v20[3];
        v23 = v20[4];
        *&v28[9] = *(v20 + 73);
        v27[3] = v22;
        *v28 = v23;
        v24 = v20[1];
        v27[0] = *v20;
        v27[1] = v24;
        v27[2] = v21;
        v25 = *(*(v4 + 56) + 8 * v19);
        memmove((*(v6 + 48) + 96 * v19), v20, 0x59uLL);
        *(*(v6 + 56) + 8 * v19) = v25;
        sub_1AAD9C17C(v27, &v26);
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

void sub_1AAD99628()
{
  v1 = v0;
  sub_1AAD20E00(0);
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void sub_1AAD99778()
{
  v1 = v0;
  sub_1AAD9AE40(0, &qword_1EB4241B8, sub_1AAD9AEAC, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void sub_1AAD998F4()
{
  v1 = v0;
  sub_1AAD9AD84();
  v2 = *v0;
  v3 = sub_1AAF90384();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1AAD9ADE4(*(v2 + 56) + 48 * v17, &v22);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 48 * v17);
        v20 = *&v23[9];
        v21 = *v23;
        *v19 = v22;
        v19[1] = v21;
        *(v19 + 25) = v20;
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

void sub_1AAD99AA0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AAF90384();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 56) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        v22 = (*(v5 + 56) + 16 * v18);
        *v22 = v21;
        v22[1] = v20;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_1AAD99C04()
{
  v1 = v0;
  sub_1AAD9ACC4();
  v2 = *v0;
  v3 = sub_1AAF90384();
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

void sub_1AAD99D54()
{
  v1 = v0;
  sub_1AAD9BF84(0, &qword_1ED9B2930, sub_1AACB62F8, &type metadata for Spec.Channel, &type metadata for Spec.Scale);
  v2 = *v0;
  v3 = sub_1AAF90384();
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
      sub_1AACC74AC(&v29, v28);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
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
}

void sub_1AAD99F34(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;

  v11 = sub_1AADB0938(v10);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1AAD89710(v16, v6 & 1);
    v11 = sub_1AADB0938(v8);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1AAF905B4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1AAD945D8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1AACBB650(0, &qword_1EB424158, MEMORY[0x1E69E7280], 1);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v8;
  *(v22[7] + 8 * v11) = v7;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCDCD0);
    sub_1AAF90284();
    MEMORY[0x1AC5982F0](39, 0xE100000000000000);
    sub_1AAF902C4();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v25 = *v6;
      v26 = *a3;

      v28 = sub_1AADB0938(v27);
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v26[3] < v32)
      {
        sub_1AAD89710(v32, 1);
        v28 = sub_1AADB0938(v8);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v8;
      *(v34[7] + 8 * v28) = v25;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1AAD9A288(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AAD9A2D4()
{
  result = qword_1EB424110;
  if (!qword_1EB424110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424110);
  }

  return result;
}

double sub_1AAD9A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1AAD9A3D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAD9B62C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD9A440(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD9B4A8(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAD9A4C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AAD9B4A8(0, a2, a3, a4, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAD9A534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAD9B62C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1AAD9A5B4(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1AAD9A6F4(uint64_t a1)
{
  if (!qword_1EB422FC0)
  {
    sub_1AACBB650(255, &qword_1EB424650, MEMORY[0x1E697A3C0], 1);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB422FC0);
    }
  }
}

void sub_1AAD9A760(uint64_t a1)
{
  if (!qword_1EB424140)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1AAD9B62C(255, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    sub_1AAD9B62C(255, &qword_1EB424148, &type metadata for PlottedValueCollector.Result, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424140);
    }
  }
}

double sub_1AAD9A814(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

double sub_1AAD9A828(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AAD9A83C(a1, a2, a3);
  }

  return result;
}

double sub_1AAD9A83C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

double sub_1AAD9A850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AAD9A814(a1, a2, a3);
  }

  return result;
}

void sub_1AAD9A864(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAD9B4A8(255, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AAD9A8E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD9B4A8(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_1AAD9AA1C()
{
  result = qword_1ED9B36C8;
  if (!qword_1ED9B36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B36C8);
  }

  return result;
}

double sub_1AAD9AAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1AAD9AABC()
{
  if (!qword_1EB424180)
  {
    v0 = sub_1AAF8F9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424180);
    }
  }
}

uint64_t sub_1AAD9AB7C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1AAD9A864(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAD9ABF0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1AAD9A864(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1AAD9AC64()
{
  if (!qword_1EB4241A0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241A0);
    }
  }
}

void sub_1AAD9ACC4()
{
  if (!qword_1ED9B16C0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16C0);
    }
  }
}

void sub_1AAD9AD24()
{
  if (!qword_1EB4241A8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241A8);
    }
  }
}

void sub_1AAD9AD84()
{
  if (!qword_1EB4241B0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241B0);
    }
  }
}

void sub_1AAD9AE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1AAF903B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAD9AEAC(uint64_t a1)
{
  if (!qword_1EB4241C0)
  {
    sub_1AAD9AF04();
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4241C0);
    }
  }
}

void sub_1AAD9AF04()
{
  if (!qword_1EB423AC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423AC8);
    }
  }
}

void sub_1AAD9AF64()
{
  if (!qword_1EB4241C8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241C8);
    }
  }
}

void sub_1AAD9AFC4()
{
  if (!qword_1ED9B16B8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16B8);
    }
  }
}

uint64_t sub_1AAD9B024(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

void sub_1AAD9B074()
{
  if (!qword_1ED9B2910)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2910);
    }
  }
}

void sub_1AAD9B0D4()
{
  if (!qword_1EB4241D0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241D0);
    }
  }
}

void sub_1AAD9B134()
{
  if (!qword_1EB4241D8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241D8);
    }
  }
}

void sub_1AAD9B1F0()
{
  if (!qword_1EB4241E0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241E0);
    }
  }
}

void sub_1AAD9B250()
{
  if (!qword_1EB4241E8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241E8);
    }
  }
}

void sub_1AAD9B2B0()
{
  if (!qword_1ED9AD780)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD780);
    }
  }
}

void sub_1AAD9B310()
{
  if (!qword_1ED9AD788)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD788);
    }
  }
}

unint64_t sub_1AAD9B370()
{
  result = qword_1ED9AED68;
  if (!qword_1ED9AED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AED68);
  }

  return result;
}

unint64_t sub_1AAD9B3C4()
{
  result = qword_1ED9B0F00;
  if (!qword_1ED9B0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F00);
  }

  return result;
}

void sub_1AAD9B418(uint64_t a1)
{
  if (!qword_1ED9AEED0)
  {
    sub_1AAD9B62C(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    sub_1AAD81B28();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AEED0);
    }
  }
}

void sub_1AAD9B4A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAD9B4FC(uint64_t a1)
{
  if (!qword_1ED9B16F0)
  {
    sub_1AAD9B62C(255, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B16F0);
    }
  }
}

unint64_t sub_1AAD9B578()
{
  result = qword_1ED9B1B20;
  if (!qword_1ED9B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1B20);
  }

  return result;
}

void sub_1AAD9B5CC()
{
  if (!qword_1ED9B16C8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16C8);
    }
  }
}

void sub_1AAD9B62C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAD9B67C()
{
  if (!qword_1ED9AD790)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD790);
    }
  }
}

void sub_1AAD9B6DC()
{
  if (!qword_1EB4241F0)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241F0);
    }
  }
}

void sub_1AAD9B73C()
{
  if (!qword_1ED9AEED8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEED8);
    }
  }
}

void sub_1AAD9B79C()
{
  if (!qword_1EB4241F8)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4241F8);
    }
  }
}

void sub_1AAD9B7FC()
{
  if (!qword_1EB424200)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424200);
    }
  }
}

unint64_t sub_1AAD9B85C()
{
  result = qword_1ED9B0BF0;
  if (!qword_1ED9B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0BF0);
  }

  return result;
}

void sub_1AAD9B90C()
{
  if (!qword_1EB424210)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424210);
    }
  }
}

unint64_t sub_1AAD9B96C()
{
  result = qword_1EB424220;
  if (!qword_1EB424220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424220);
  }

  return result;
}

unint64_t sub_1AAD9BA1C()
{
  result = qword_1ED9B03D0[0];
  if (!qword_1ED9B03D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B03D0);
  }

  return result;
}

uint64_t sub_1AAD9BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    sub_1AACDC974(a1, a2, a3);

    return sub_1AACDC974(a4, a5, a6);
  }

  else
  {

    return sub_1AACCAE10(a1, a2, a3);
  }
}

void sub_1AAD9BAD4(uint64_t a1)
{
  if (!qword_1ED9B11A8)
  {
    type metadata accessor for CalendarCache.Key(255);
    sub_1AAD9C1D8(&qword_1ED9B1640, type metadata accessor for CalendarCache.Key, &unk_1AAFA1260);
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B11A8);
    }
  }
}

uint64_t sub_1AAD9BB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD9BBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD9BC40(uint64_t a1)
{
  v2 = type metadata accessor for CalendarCache.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAD9BC9C(uint64_t a1)
{
  if (!qword_1ED9B11B0)
  {
    sub_1AAF8CBA4();
    sub_1AAD9C1D8(&qword_1ED9B1650, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B11B0);
    }
  }
}

void sub_1AAD9BD38()
{
  if (!qword_1EB424228)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424228);
    }
  }
}

void sub_1AAD9BD98()
{
  if (!qword_1EB424230)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424230);
    }
  }
}

uint64_t sub_1AAD9BE5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 530))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAD9BEA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 530) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 530) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAD9BF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = sub_1AAF903B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAD9C048(uint64_t a1)
{
  if (!qword_1EB424248)
  {
    sub_1AAD216A8(255, &qword_1EB424250, &qword_1EB423B80, &type metadata for ChartDisplayList.Item);
    sub_1AAD80D58();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424248);
    }
  }
}

void sub_1AAD9C0CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AAD9C128()
{
  result = qword_1EB424260;
  if (!qword_1EB424260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424260);
  }

  return result;
}

uint64_t sub_1AAD9C1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AAD9C228()
{
  sub_1AAD9DF30(0, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v26 - v1;
  Value = AGGraphGetValue();
  sub_1AACB256C(Value, &v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  if (BYTE8(v50) == 255)
  {
    sub_1AAD9DF94(&v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  }

  else
  {
    if (BYTE8(v50))
    {
      sub_1AACBB198(&v48, &v39);
      goto LABEL_7;
    }

    sub_1AAD9E1BC(&v48);
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 0;
LABEL_7:
  v42 = v39;
  v43 = v40;
  v44 = v41;
  v4 = AGGraphGetValue();
  sub_1AACB256C(v4 + 96, &v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  if (BYTE8(v50) == 255)
  {
    sub_1AAD9DF94(&v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  }

  else
  {
    if (BYTE8(v50))
    {
      sub_1AACBB198(&v48, &v36);
      goto LABEL_13;
    }

    sub_1AAD9E1BC(&v48);
  }

  v36 = 0u;
  v37 = 0u;
  v38 = 0;
LABEL_13:
  v39 = v36;
  v40 = v37;
  v41 = v38;
  v5 = AGGraphGetValue();
  sub_1AACB256C(v5 + 192, &v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  if (BYTE8(v50) == 255)
  {
    sub_1AAD9DF94(&v48, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
LABEL_18:
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    goto LABEL_19;
  }

  if ((BYTE8(v50) & 1) == 0)
  {
    sub_1AAD9E1BC(&v48);
    goto LABEL_18;
  }

  sub_1AACBB198(&v48, &v33);
LABEL_19:
  v36 = v33;
  v37 = v34;
  v38 = v35;
  v6 = AGGraphGetValue();
  v7 = *(v6 + 400);
  v56 = *(v6 + 384);
  v57 = v7;
  v58 = *(v6 + 416);
  if (*(&v43 + 1) || *(&v40 + 1) || *(&v37 + 1) || *(&v56 + 1))
  {
    sub_1AACB1BC0(0, &qword_1EB423578, &type metadata for Chart3DRay);
    sub_1AACB256C(&v56, &v48, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
    v8 = AGGraphGetValue();
    v9 = *(v8 + 16);
    v45 = *v8;
    v46 = v9;
    v47 = *(v8 + 32);
    v10 = AGGraphGetValue();
    v52 = *(v10 + 64);
    v53 = *(v10 + 80);
    v54 = *(v10 + 96);
    v55 = *(v10 + 112);
    v48 = *v10;
    v49 = *(v10 + 16);
    v50 = *(v10 + 32);
    v51 = *(v10 + 48);
    swift_unknownObjectRetain();
    v11 = sub_1AAF8D054();
    swift_unknownObjectRelease();
    v12 = 0;
    if (v11)
    {
      v12 = sub_1AAF8CF24();
    }

    else
    {
      v32[1] = 0;
      v32[2] = 0;
    }

    v32[0] = v11;
    v32[3] = v12;
    v13 = MEMORY[0x1E69E7CA0];
    sub_1AACB256C(v32, &v33, &qword_1EB426A80, MEMORY[0x1E69E7CA0] + 8);
    if (*(&v34 + 1))
    {
      sub_1AACED35C(&v33, v31);
      v14 = sub_1AAF8F994();
      (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
      sub_1AACED220(v31, v30);
      sub_1AAD9DC68(&v42, &v33);
      sub_1AAD9DC68(&v39, v28);
      sub_1AAD9DC68(&v36, v26);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_1AACED35C(v30, (v15 + 32));
      v16 = v46;
      *(v15 + 64) = v45;
      *(v15 + 80) = v16;
      *(v15 + 96) = v47;
      v17 = v53;
      *(v15 + 168) = v52;
      *(v15 + 184) = v17;
      *(v15 + 200) = v54;
      *(v15 + 216) = v55;
      v18 = v49;
      *(v15 + 104) = v48;
      *(v15 + 120) = v18;
      v19 = v51;
      *(v15 + 136) = v50;
      *(v15 + 152) = v19;
      *(v15 + 256) = v35;
      v20 = v34;
      *(v15 + 224) = v33;
      *(v15 + 240) = v20;
      *(v15 + 296) = v29;
      v21 = v28[1];
      *(v15 + 264) = v28[0];
      *(v15 + 280) = v21;
      v22 = v26[1];
      *(v15 + 304) = v26[0];
      *(v15 + 320) = v22;
      *(v15 + 336) = v27;
      v23 = v56;
      v24 = v57;
      *(v15 + 384) = v58;
      *(v15 + 352) = v23;
      *(v15 + 368) = v24;
      sub_1AACB256C(&v56, &v33, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
      sub_1AADC0CA4(0, 0, v2, &unk_1AAF95DB0, v15);

      sub_1AAD9DF94(&v56, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
      sub_1AACB634C(v31);
      sub_1AAD9DEC0(&v42, &qword_1EB424278, sub_1AAD9DCFC);
    }

    else
    {
      sub_1AAD9DF94(&v56, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
      sub_1AAD9DEC0(&v42, &qword_1EB424278, sub_1AAD9DCFC);
      sub_1AAD9DF94(&v33, &qword_1EB426A80, v13 + 8);
    }

    sub_1AAD9DF94(v32, &qword_1EB426A80, v13 + 8);
  }

  else
  {
    sub_1AAD9DEC0(&v42, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DEC0(&v36, &qword_1EB424278, sub_1AAD9DCFC);
  return sub_1AAD9DEC0(&v39, &qword_1EB424278, sub_1AAD9DCFC);
}

uint64_t sub_1AAD9C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v10;
  v8[13] = v11;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AAD9C890, 0, 0);
}

uint64_t sub_1AAD9C890()
{
  sub_1AACED220(v0[7], (v0 + 2));
  sub_1AAF8CF24();
  swift_dynamicCast();
  v1 = v0[6];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1AAD9C968;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  return sub_1AAD9CA78(v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_1AAD9C968()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AAD9CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[98] = a7;
  v7[97] = a6;
  v7[96] = a5;
  v7[95] = a4;
  v7[94] = a3;
  v7[93] = a2;
  v7[92] = a1;
  v7[90] = v7;
  sub_1AAD9DF30(0, &qword_1EB424270, MEMORY[0x1E697A1F0], MEMORY[0x1E69E6720]);
  v7[99] = swift_task_alloc();
  v8 = sub_1AAF8CD94();
  v7[100] = v8;
  v7[101] = *(v8 - 8);
  v7[102] = swift_task_alloc();
  v9 = sub_1AAF8CEE4();
  v7[103] = v9;
  v7[104] = *(v9 - 8);
  v7[105] = swift_task_alloc();
  v10 = sub_1AAF8CE84();
  v7[106] = v10;
  v7[107] = *(v10 - 8);
  v7[108] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9CC8C, 0, 0);
}

uint64_t sub_1AAD9CC8C()
{
  v1 = (v0 + 16);
  v2 = (v0 + 296);
  v3 = (v0 + 376);
  v4 = (v0 + 456);
  v5 = v0 + 96;
  v6 = (v0 + 176);
  v7 = v0 + 416;
  v8 = (v0 + 576);
  v9 = v0 + 720;
  v10 = *(v0 + 744);
  *(v0 + 720) = v0;
  v11 = *v10;
  v12 = v10[1];
  *(v0 + 48) = *(v10 + 32);
  *(v0 + 32) = v12;
  *(v0 + 16) = v11;
  if (*(v0 + 48) == 1)
  {
    sub_1AAD9DC68(*(v0 + 760), v0 + 296);
    if (*(v0 + 320))
    {
      v33 = v0 + 720;
      v18 = v0 + 96;
      v19 = v0 + 416;
      v20 = *(v0 + 320);
      v21 = v2[4];
      sub_1AACBB42C(v2, v2[3]);
      (*(v21 + 24))(0, 1, v20, v21);
      sub_1AACB634C(v2);
      v7 = v19;
      v5 = v18;
      v9 = v33;
    }

    else
    {
      sub_1AAD9DEC0(v0 + 296, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(*(v1 + 94), v3);
    if (v3[3])
    {
      v22 = v3[3];
      v23 = v3[4];
      sub_1AACBB42C(v3, v22);
      (*(v23 + 24))(0, 1, v22, v23);
      sub_1AACB634C(v3);
    }

    else
    {
      sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(*(v1 + 95), v4);
    if (v4[3])
    {
      v24 = v4[3];
      v25 = v4[4];
      sub_1AACBB42C(v4, v24);
      (*(v25 + 24))(0, 1, v24, v25);
      sub_1AACB634C(v4);
    }

    else
    {
      sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
    }

    v26 = *(v1 + 96);
    sub_1AACB256C(v26, v7, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
    v27 = *v26;
    v28 = *(v26 + 16);
    *(v6 + 32) = *(v26 + 32);
    v6[1] = v28;
    *v6 = v27;
    if (*(v6 + 1))
    {
      v29 = *v6;
      v30 = v6[1];
      *(v5 + 32) = *(v6 + 32);
      *(v5 + 16) = v30;
      *v5 = v29;
      sub_1AAE847F0(0, 0, 1);
      sub_1AAD9DDE4(v5);
    }

    v31 = *(*v9 + 8);

    __asm { BR              X0 }
  }

  v13 = *(v0 + 840);
  v14 = *v1;
  *(v0 + 592) = *(v0 + 32);
  *v8 = v14;
  *(v0 + 608) = *v8;
  *(v0 + 624) = *(v0 + 592);
  *(v0 + 52) = sub_1AAD9DD60();
  v15 = sub_1AAD9DD6C(v13);
  (sub_1AAD9DDE0)(v15);
  *(v0 + 872) = sub_1AAF8F974();
  *(v0 + 880) = sub_1AAF8F964();
  v17 = sub_1AAF8F954();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D0D0, v17, v16);
}

uint64_t sub_1AAD9D0D0()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v0[90] = v0;
  v0[111] = sub_1AAF8CF14();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D1E8, 0, 0);
}

uint64_t sub_1AAD9D1E8()
{
  v1 = v0 + 2;
  v2 = v0 + 37;
  v3 = v0 + 47;
  v4 = v0 + 57;
  v27 = (v0 + 12);
  v26 = v0 + 22;
  v25 = (v0 + 52);
  v5 = v0 + 90;
  v6 = v0[111];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[99];
  v0[90] = v0;
  v0[91] = v6;
  sub_1AAD9DF30(0, &qword_1EB424290, MEMORY[0x1E697A1F0], MEMORY[0x1E69E62F8]);
  sub_1AAD9DE38();
  sub_1AAF8FBF4();
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    sub_1AAD9DEC0(v0[99], &qword_1EB424270, MEMORY[0x1E697A1F0]);

    sub_1AAD9DC68(v0[95], v2);
    if (v0[40])
    {
      v12 = v0[40];
      v13 = v2[4];
      sub_1AACBB42C(v2, v2[3]);
      (*(v13 + 24))(0, 1, v12, v13);
      sub_1AACB634C(v2);
    }

    else
    {
      sub_1AAD9DEC0(v2, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(v1[94], v3);
    if (v3[3])
    {
      v14 = v3[3];
      v15 = v3[4];
      sub_1AACBB42C(v3, v14);
      (*(v15 + 24))(0, 1, v14, v15);
      sub_1AACB634C(v3);
    }

    else
    {
      sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
    }

    sub_1AAD9DC68(v1[95], v4);
    if (v4[3])
    {
      v16 = v4[3];
      v17 = v4[4];
      sub_1AACBB42C(v4, v16);
      (*(v17 + 24))(0, 1, v16, v17);
      sub_1AACB634C(v4);
    }

    else
    {
      sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
    }

    v18 = v1[96];
    sub_1AACB256C(v18, v25, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
    v19 = *v18;
    v20 = *(v18 + 16);
    *(v26 + 32) = *(v18 + 32);
    *(v26 + 1) = v20;
    *v26 = v19;
    if (v26[1])
    {
      v21 = *v26;
      v22 = *(v26 + 1);
      *(v27 + 32) = *(v26 + 32);
      *(v27 + 16) = v22;
      *v27 = v21;
      sub_1AAE847F0(0, 0, 1);
      sub_1AAD9DDE4(v27);
    }

    v23 = *(*v5 + 8);

    __asm { BR              X0 }
  }

  (*(v0[107] + 32))(v0[108], v0[99], v0[106]);

  v0[112] = sub_1AAF8CE54();
  v0[113] = sub_1AAF8F964();
  v11 = sub_1AAF8F954();

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D6A4, v11, v10);
}

uint64_t sub_1AAD9D6A4(uint64_t a1)
{
  v1[90] = v1;
  v1[114] = sub_1AAF8D024();
  v1[115] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1AAD9D74C, 0, 0);
}

uint64_t sub_1AAD9D74C()
{
  v1 = v0 + 2;
  v2 = v0 + 7;
  v47 = v0 + 17;
  v48 = v0 + 27;
  v3 = v0 + 67;
  v4 = v0 + 80;
  v5 = v0 + 85;
  v50 = (v0 + 32);
  v6 = v0 + 42;
  v49 = (v0 + 62);
  v7 = v0 + 90;
  v8 = v0[115];
  v9 = v0[114];
  v0[90] = v0;

  v10 = sub_1AAF8F6A4();
  LOBYTE(v8) = MEMORY[0x1AC5982D0](v9, v8, v10, v11);

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AAD9DC68(v0[95], v3);
  v51 = v0 + 90;
  if (v0[70])
  {
    v12 = v0[94];
    v13 = v0[70];
    v14 = v3[4];
    sub_1AACBB42C(v3, v3[3]);
    v15 = *v12;
    v16 = v12[1];
    v2[4] = *(v12 + 4);
    *(v2 + 1) = v16;
    *v2 = v15;
    sub_1AAF8CE74();
    v18 = sub_1AADC69DC(v17);
    (*(v14 + 24))(*&v18, 0, v13, v14);
    sub_1AACB634C(v3);
  }

  else
  {
    sub_1AAD9DEC0(v3, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DC68(v1[94], v4);
  if (v4[3])
  {
    v19 = v1[92];
    v20 = v4[3];
    v21 = v4[4];
    sub_1AACBB42C(v4, v20);
    v22 = *(v19 + 40);
    v23 = *(v19 + 56);
    v47[4] = *(v19 + 72);
    *(v47 + 1) = v23;
    *v47 = v22;
    sub_1AAF8CE74();
    v25 = sub_1AADC69DC(v24);
    (*(v21 + 24))(*&v25, 0, v20, v21);
    sub_1AACB634C(v4);
  }

  else
  {
    sub_1AAD9DEC0(v4, &qword_1EB424278, sub_1AAD9DCFC);
  }

  sub_1AAD9DC68(v1[95], v5);
  if (v5[3])
  {
    v26 = v1[92];
    v27 = v5[3];
    v28 = v5[4];
    sub_1AACBB42C(v5, v27);
    v29 = *(v26 + 80);
    v30 = *(v26 + 96);
    v48[4] = *(v26 + 112);
    *(v48 + 1) = v30;
    *v48 = v29;
    sub_1AAF8CE74();
    v32 = sub_1AADC69DC(v31);
    (*(v28 + 24))(*&v32, 0, v27, v28);
    sub_1AACB634C(v5);
  }

  else
  {
    sub_1AAD9DEC0(v5, &qword_1EB424278, sub_1AAD9DCFC);
  }

  v7 = v51;
  v33 = v1[96];
  sub_1AACB256C(v33, v49, &qword_1EB424288, &type metadata for VectorOptionalBindingBox);
  v34 = *v33;
  v35 = *(v33 + 16);
  *(v6 + 32) = *(v33 + 32);
  *(v6 + 1) = v35;
  *v6 = v34;
  if (v6[1])
  {
    v36 = v1[106];
    v37 = v1[105];
    v38 = v1[104];
    v39 = *v6;
    v40 = *(v6 + 1);
    *(v50 + 32) = *(v6 + 32);
    *(v50 + 16) = v40;
    *v50 = v39;
    sub_1AAF8CE64();
    v42 = vmulq_f32(v41, v41);
    *&v43 = vaddv_f32(*v42.f32) + v42.f32[2];
    *v42.f32 = vrsqrte_f32(v43);
    *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
    v44 = vmulq_n_f32(v41, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]);
    LODWORD(v52) = v44.i32[2];
    sub_1AAE847F0(v44.i64[0], v52, 0);
    (*(v37 + 8))(v36, v38);
    sub_1AAD9DDE4(v50);
  }

  else
  {
LABEL_14:
    (*(v1[105] + 8))(v1[106], v1[104]);
  }

  v45 = *(*v7 + 8);

  return v45();
}

uint64_t sub_1AAD9DC68(uint64_t a1, uint64_t a2)
{
  sub_1AAD9DF30(0, &qword_1EB424278, sub_1AAD9DCFC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAD9DCFC()
{
  result = qword_1EB424280;
  if (!qword_1EB424280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424280);
  }

  return result;
}

uint64_t sub_1AAD9DD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697A2D0];
  v3 = sub_1AAF8CEE4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_1AAD9DE38()
{
  result = qword_1EB424298[0];
  if (!qword_1EB424298[0])
  {
    sub_1AAD9DF30(255, &qword_1EB424290, MEMORY[0x1E697A1F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB424298);
  }

  return result;
}

uint64_t sub_1AAD9DEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAD9DF30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AAD9DF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AAD9DF94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACB1BC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD9DFF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AAD9E0C8;

  return sub_1AAD9C85C(a1, v4, v5, v1 + 32, v1 + 64, v1 + 104, v1 + 224, v1 + 264);
}

uint64_t sub_1AAD9E0C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1AAD9E228(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (qword_1EB422C10 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v3 = *(qword_1EB432210 + 16);
  if (v3)
  {
    v4 = v2 % v3;
    if ((v4 & 0x8000000000000000) == 0)
    {
      *a2 = *(qword_1EB432210 + 8 * v4 + 32);
      *(a2 + 40) = 0;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AAD9E2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAD9E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Resolved3DContentList.Item(0, a3, a4, a4);

  return sub_1AAF8F8D4();
}

void *sub_1AAD9E39C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1AAD9E3B4(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1AAD9E3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AAD9E338(*v3, a2, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t (*sub_1AAD9E400(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1AAD9E4D4(v7, *a2, *v3, v3[1], *(a3 + 16), *(a3 + 24));
  return sub_1AAD9E48C;
}

void sub_1AAD9E48C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1AAD9E4D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v7 = type metadata accessor for Resolved3DContentList.Item(0, a5, a6, a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  sub_1AAF8F944();
  return sub_1AAD9E5BC;
}

void sub_1AAD9E5BC(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1AAD9E60C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1AAF8FB04();
}

void *sub_1AAD9E704@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_1AAD9E71C(void *result)
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

void sub_1AAD9E734(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t sub_1AAD9E744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAD9E798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1AAD9EC60(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_1AAD9E970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD1169C();
    sub_1AAD2000C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD9EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AAF8FCA4();
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAD9EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAD9EC64(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1AAF8DC74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAD9ED1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = sub_1AAF8DC74();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, AssociatedTypeWitness);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1AAD9EFF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1AAF8DC74();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v12 + 4) & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, AssociatedTypeWitness);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v13 + v14) & ~v14;

      v27(v28, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

void sub_1AAD9F368(uint64_t a1@<X8>)
{
  *a1 = 3;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

uint64_t sub_1AAD9F380(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a2 == *a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AAF904F4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AAD9F3E0(unsigned __int8 *a1)
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

double sub_1AAD9F434@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1AAF92AC0;
  *(a1 + 40) = 0;
  return result;
}

double sub_1AAD9F450@<D0>(_OWORD *a1@<X8>)
{
  sub_1AADA144C(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

double sub_1AAD9F494@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v9 = *(Value + 24);
  v8 = *(Value + 32);
  v10 = *(Value + 40);
  *(a2 + 504) = 0;
  *(a2 + 512) = 1;
  v11 = (a2 + 520);
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;
  if (!v2)
  {
    v12 = 0;
    *(a2 + 760) = 0u;
    *(a2 + 776) = 0u;
    *(a2 + 728) = 0u;
    *(a2 + 744) = 0u;
    *(a2 + 696) = 0u;
    *(a2 + 712) = 0u;
    *(a2 + 664) = 0u;
    *(a2 + 680) = 0u;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 600) = 0u;
    *(a2 + 616) = 0u;
    *(a2 + 568) = 0u;
    *(a2 + 584) = 0u;
    *(a2 + 536) = 0u;
    *(a2 + 552) = 0u;
    *v11 = 0u;
    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
    *(a2 + 40) = v10;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a2 + 72) = xmmword_1AAF92AC0;
    *(a2 + 88) = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v12 = 0;
    *v11 = 0u;
    *(a2 + 536) = 0u;
    *(a2 + 552) = 0u;
    *(a2 + 568) = 0u;
    *(a2 + 584) = 0u;
    *(a2 + 600) = 0u;
    *(a2 + 616) = 0u;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 664) = 0u;
    *(a2 + 680) = 0u;
    *(a2 + 696) = 0u;
    *(a2 + 712) = 0u;
    *(a2 + 728) = 0u;
    *(a2 + 744) = 0u;
    *(a2 + 760) = 0u;
    *(a2 + 776) = 0u;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1AAF92AC0;
    *(a2 + 40) = 0;
    *(a2 + 48) = v6;
    *(a2 + 56) = v5;
    *(a2 + 64) = v7;
    *(a2 + 72) = v9;
    *(a2 + 80) = v8;
    *(a2 + 88) = v10;
LABEL_5:
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 1;
    v10 = 0;
    goto LABEL_7;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v11 = 0u;
  *(a2 + 536) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0u;
  *(a2 + 712) = 0u;
  *(a2 + 728) = 0u;
  *(a2 + 744) = 0u;
  *(a2 + 760) = 0u;
  *(a2 + 776) = 0u;
  *(a2 + 24) = xmmword_1AAF92AC0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = xmmword_1AAF92AC0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  v12 = v8;
  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
LABEL_7:
  *(a2 + 128) = v12;
  *(a2 + 136) = v10;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  *(a2 + 168) = xmmword_1AAF92AC0;
  *(a2 + 184) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  *(a2 + 216) = xmmword_1AAF92AC0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 1;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 1;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 1;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 1;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a2 + 792) = 0;
  *(a2 + 794) = 0;

  return result;
}

double sub_1AAD9F6C0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 791) = 0;
  return result;
}

void sub_1AAD9F750(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = type metadata accessor for AxisMarksResult(0);
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA1334(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(*Value + 16);
  v59 = v8;
  if (v8 != 0.0)
  {
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v55 = a2;
    v56 = v9;

    v62 = 0.0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v61 = 1;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v57 = v7;
    v58 = v4;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v66 = v12;
      v16 = *(v4 + 72);
      v63 = v10;
      v17 = v56 + v16 * v10;
      v18 = v65;
      sub_1AADA138C(v17, v65);
      v19 = *(v18 + *(v64 + 28));
      v20 = *(v19 + 16);
      v60 = v19;
      if (v20)
      {
        sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
        v21 = (v19 + 32);
        do
        {
          v22 = v21[3];
          v24 = *v21;
          v23 = v21[1];
          v70 = v21[2];
          v71 = v22;
          v68 = v24;
          v69 = v23;
          v25 = v21[4];
          v26 = v21[5];
          v27 = v21[7];
          v74 = v21[6];
          v75 = v27;
          v72 = v25;
          v73 = v26;
          v28 = *(&v68 + 1);
          sub_1AAD57B20(&v68, v67);
          v29 = AGGraphGetValue();
          if (*v29 > v28 || v28 > v29[1])
          {
            sub_1AAD57B7C(&v68);
          }

          else
          {
            if (v74 == 1)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v30 = v66;
              }

              else
              {
                v30 = sub_1AAD687A0(0, *(v66 + 2) + 1, 1, v66);
              }

              v32 = *(v30 + 2);
              v31 = *(v30 + 3);
              if (v32 >= v31 >> 1)
              {
                v30 = sub_1AAD687A0((v31 > 1), v32 + 1, 1, v30);
              }

              *(v30 + 2) = v32 + 1;
              v66 = v30;
              v33 = &v30[128 * v32];
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_1AAD687A0(0, *(v13 + 2) + 1, 1, v13);
              }

              v35 = *(v13 + 2);
              v34 = *(v13 + 3);
              if (v35 >= v34 >> 1)
              {
                v13 = sub_1AAD687A0((v34 > 1), v35 + 1, 1, v13);
              }

              *(v13 + 2) = v35 + 1;
              v33 = &v13[128 * v35];
            }

            v36 = v68;
            v37 = v69;
            v38 = v71;
            *(v33 + 4) = v70;
            *(v33 + 5) = v38;
            *(v33 + 2) = v36;
            *(v33 + 3) = v37;
            v39 = v72;
            v40 = v73;
            v41 = v75;
            *(v33 + 8) = v74;
            *(v33 + 9) = v41;
            *(v33 + 6) = v39;
            *(v33 + 7) = v40;
          }

          v21 += 8;
          --v20;
        }

        while (v20);
      }

      v42 = *(v65 + *(v64 + 32));
      v43 = *(v42 + 16);
      if (v43)
      {
        sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
        v44 = v42 + 32;
        do
        {
          sub_1AAD57CE8(v44, &v68);
          v45 = AGGraphGetValue();
          if (*v45 > *(&v68 + 1) || *(&v68 + 1) > v45[1])
          {
            sub_1AAD57D44(&v68);
          }

          else
          {
            sub_1AAD57CE8(&v68, v67);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1AAD68660(0, *(v11 + 2) + 1, 1, v11);
            }

            v48 = *(v11 + 2);
            v47 = *(v11 + 3);
            if (v48 >= v47 >> 1)
            {
              v11 = sub_1AAD68660((v47 > 1), v48 + 1, 1, v11);
            }

            sub_1AAD57D44(&v68);
            *(v11 + 2) = v48 + 1;
            memcpy(&v11[264 * v48 + 32], v67, 0x108uLL);
          }

          v44 += 264;
          --v43;
        }

        while (v43);
      }

      sub_1AAD9FC74(v13, a1);
      if ((v50 & 1) == 0)
      {
        break;
      }

      sub_1AAD9FC74(v60, a1);
      v7 = v57;
      v4 = v58;
      v14 = v63;
      if ((v51 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10 = v14 + 1;
      sub_1AADA13F0(v65);
      v12 = v66;
      if (v10 == *&v59)
      {

        v52 = v66;
        a2 = v55;
        v8 = v62;
        v53 = v61;
        goto LABEL_48;
      }
    }

    v7 = v57;
    v4 = v58;
    v14 = v63;
LABEL_4:
    v15 = v62;
    if (v49 < v62)
    {
      v15 = v49;
    }

    if (v61)
    {
      v15 = v49;
    }

    v62 = v15;
    v61 = 0;
    goto LABEL_9;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v53 = 1;
  v52 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
LABEL_48:
  *a2 = v13;
  *(a2 + 8) = v52;
  *(a2 + 16) = v11;
  *(a2 + 24) = v8;
  *(a2 + 32) = v53 & 1;
}

void sub_1AAD9FC74(uint64_t a1, uint64_t a2)
{
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  AGGraphGetValue();
  AGGraphGetValue();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD67B50(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1AAD67B50((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      *&v5[8 * v8 + 32] = v6;
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1AAD80F6C(v5);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1AAD6C0D4(*(v9 + 16), 0);
    v12 = sub_1AADA9404(&v26, v11 + 4, v10, v9);
    v13 = v26;

    sub_1AACC9C00(v13);
    if (v12 == v10)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v26 = v11;
  v14 = 0;
  sub_1AADA000C(&v26);

  v15 = v26;
  v16 = *(v26 + 2);
  if (v16 >= 2)
  {
    v18 = 0;
    v19 = v16 - 1;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = v18 + 1;
      if (v18 + 1 < v19)
      {
        if ((v18 + 2) >= *(v15 + 2))
        {
          __break(1u);

          __break(1u);
          return;
        }

        v21 = &v15[8 * v18];
        v23 = *(v21 + 5);
        v22 = *(v21 + 6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1AAD67B50(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v24 = *(v17 + 3);
        v14 = (v25 + 1);
        if (v25 >= v24 >> 1)
        {
          v17 = sub_1AAD67B50((v24 > 1), v25 + 1, 1, v17);
        }

        *(v17 + 2) = v14;
        *&v17[8 * v25 + 32] = v22 - v23;
      }

      v18 = v20;
      if (v19 == v20)
      {

        goto LABEL_26;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_26:
  sub_1AADE69D4(v17);
}

double sub_1AAD9FFB4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1AAD9FFC4@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD9F750(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void sub_1AADA000C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB458(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1AADA0140(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1AADA0140(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1AADAA0A4(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AADA069C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_1AAD68568((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1AADA069C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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
}

uint64_t sub_1AADA069C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

double sub_1AADA0890@<D0>(_OWORD *a3@<X8>)
{
  swift_getAtKeyPath();
  result = *&v5;
  *a3 = v5;
  return result;
}

double sub_1AADA08DC@<D0>(uint64_t a3@<X8>)
{
  swift_getAtKeyPath();
  result = v7;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  return result;
}

unint64_t sub_1AADA0948(unsigned __int8 a1, int a2, int a3)
{
  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AACB606C(0);
  sub_1AAD72E8C(0);
  sub_1AADA101C(&qword_1EB423DB8, sub_1AAD72E8C);

  sub_1AAF8D194();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = sub_1AAD9F368;
  *(v4 + 32) = 0;
  sub_1AACBC63C();
  sub_1AADA0FBC(0);
  sub_1AADA101C(&qword_1EB4243B8, sub_1AADA0FBC);
  sub_1AAF8D194();

  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AADA1104(0, &qword_1EB4243C0, &type metadata for Scale3D, &type metadata for NewScale.LinearScale, MEMORY[0x1E698D398]);
  sub_1AADA1078();

  sub_1AAF8D194();

  swift_getKeyPath();
  sub_1AACBC63C();
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  sub_1AADA1158(0);
  sub_1AADA101C(&qword_1EB4243D8, sub_1AADA1158);

  sub_1AAF8D194();

  sub_1AAF8E214();
  v5 = sub_1AAF8EA44();
  v7 = v6;
  v9 = v8 & 1;
  sub_1AACBC63C();
  sub_1AADA11E4();
  sub_1AAF8D194();
  sub_1AAD04750(v5, v7, v9);

  sub_1AACBC63C();
  sub_1AADA1238();
  sub_1AAF8D194();
  sub_1AACBC63C();
  sub_1AADA128C();
  sub_1AAF8D194();
  swift_getKeyPath();

  sub_1AAF8D194();

  swift_getKeyPath();

  sub_1AAF8D194();

  AGGraphCreateOffsetAttribute2();
  sub_1AACBC63C();
  sub_1AADA12E0();
  return a1 | (sub_1AAF8D194() << 32);
}

void sub_1AADA0FBC(uint64_t a1)
{
  if (!qword_1EB4243B0)
  {
    sub_1AACB606C(255);
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4243B0);
    }
  }
}

uint64_t sub_1AADA101C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1AADA1078()
{
  result = qword_1EB4243C8;
  if (!qword_1EB4243C8)
  {
    sub_1AADA1104(255, &qword_1EB4243C0, &type metadata for Scale3D, &type metadata for NewScale.LinearScale, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243C8);
  }

  return result;
}

void sub_1AADA1104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AADA1158(uint64_t a1)
{
  if (!qword_1EB4243D0)
  {
    sub_1AADA1104(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4243D0);
    }
  }
}

unint64_t sub_1AADA11E4()
{
  result = qword_1EB4243E0;
  if (!qword_1EB4243E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243E0);
  }

  return result;
}

unint64_t sub_1AADA1238()
{
  result = qword_1EB4243E8;
  if (!qword_1EB4243E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243E8);
  }

  return result;
}

unint64_t sub_1AADA128C()
{
  result = qword_1ED9AF658;
  if (!qword_1ED9AF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF658);
  }

  return result;
}

unint64_t sub_1AADA12E0()
{
  result = qword_1EB4243F0;
  if (!qword_1EB4243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4243F0);
  }

  return result;
}

void sub_1AADA1334(uint64_t a1)
{
  if (!qword_1ED9AD960)
  {
    type metadata accessor for AxisMarksResult(255);
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD960);
    }
  }
}

uint64_t sub_1AADA138C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarksResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADA13F0(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarksResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADA144C@<X0>(uint64_t a2@<X8>)
{
  sub_1AADA1104(0, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  v3 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v5 = *(result + 8);
  if (v3 >= v5)
  {
    v6 = *(result + 8);
  }

  else
  {
    v6 = v3;
  }

  if (v5 <= v3)
  {
    v5 = v3;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for CollectedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AADA15B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADA15F8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 initializeWithCopy for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AADA1664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AADA16AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADA1714()
{
  sub_1AADA17F8(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AAF8D554();
  sub_1AAD1C614(v3, qword_1EB432060);
  sub_1AAD0F5D8(v3, qword_1EB432060);
  v4 = sub_1AAF8D534();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1AAF8D544();
}

void sub_1AADA17F8(uint64_t a1)
{
  if (!qword_1EB4243F8)
  {
    sub_1AAF8D534();
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4243F8);
    }
  }
}

uint64_t sub_1AADA1850()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA18C4(uint64_t a1)
{
  v2 = *v1;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA191C(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *__return_ptr))
{
  if (*(a1 + 16) && (v5 = sub_1AACB6398(a2), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 24 * v5);

    return v7;
  }

  else
  {
    a3(&v9);
    return v9;
  }
}

uint64_t sub_1AADA19B4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AADA191C(*a1, *a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_1AADA19E8(int a1, int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, double a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  v154 = a8;
  v163 = a7;
  v172 = a6;
  v176 = a5;
  v153 = a4;
  v174 = a1;
  v175 = a14;
  v161 = a13;
  v162 = a2;
  v169 = a10;
  v167 = a12;
  v168 = a11;
  v182 = *MEMORY[0x1E69E9840];
  v15 = sub_1AAF8D014();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28(0, v16);
  v144 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1AAF8D554();
  v22 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1AAF8D5F4();
  v24 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1AAF8CFB4();
  v26 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1AAF8D094();
  swift_allocObject();
  v29 = sub_1AAF8D084();
  swift_retain_n();
  sub_1AAF8D034();

  v143 = sub_1AACBC63C();
  v142 = sub_1AACBC63C();
  v141 = sub_1AACBC63C();
  v140 = sub_1AACBC63C();
  v139 = sub_1AACBC63C();
  v138 = sub_1AACBC63C();
  v137 = sub_1AACBC63C();
  v136 = sub_1AACBC63C();
  v30 = sub_1AACBC63C();
  v135 = sub_1AACBC63C();
  v134 = sub_1AACBC63C();
  v133 = sub_1AACBC63C();
  v171 = sub_1AACBC63C();
  v132 = sub_1AACBC63C();
  v131 = sub_1AACBC63C();
  v130 = sub_1AACBC63C();
  v129 = sub_1AACBC63C();
  v128 = sub_1AACBC63C();
  v127 = 0x80000001AAFCDD00;
  v126 = 0x80000001AAFCDD20;
  v125 = sub_1AAF8CD24();
  v31 = 0;
  v124 = (v22 + 16);
  v123 = (v24 + 8);
  v122 = (v26 + 8);
  v121 = (v19 + 8);
  v155 = v29;
  v152 = a3;
  v160 = v30;
  v120 = v21;
  v119 = v28;
  do
  {
    v159 = v31;
    v43 = *(&unk_1F1FCEBE8 + v31 + 32);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = sub_1AAD9F368;
    *(v44 + 32) = 0;
    LODWORD(v178) = v154;
    v179 = sub_1AADA36F4;
    v180 = v44;
    sub_1AADA0FBC(0);
    sub_1AADA3D58(&qword_1EB4243B8, sub_1AADA0FBC, MEMORY[0x1E698D3A0]);

    sub_1AAF8D194();

    swift_allocObject();
    v166 = sub_1AAF8D084();
    v178 = 0x5F73697841;
    v179 = 0xE500000000000000;
    if (v43)
    {
      v45 = v167;
      if (v43 == 1)
      {
        v45 = v168;
      }

      v164 = v45;
    }

    else
    {
      v164 = v169;
    }

    v46 = sub_1AAF8F674();
    v48 = v47;

    MEMORY[0x1AC5982F0](v46, v48);

    sub_1AAF8D034();
    swift_allocObject();
    v49 = sub_1AAF8D084();
    v178 = 0;
    v179 = 0xE000000000000000;
    sub_1AAF900D4();

    v178 = 0xD000000000000010;
    v179 = v127;
    v50 = sub_1AAF8F674();
    v52 = v51;

    MEMORY[0x1AC5982F0](v50, v52);

    sub_1AAF8D034();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    KeyPath = swift_getKeyPath();
    sub_1AAF8FF44();
    v165 = v43;
    if (v55)
    {
      LODWORD(v178) = OffsetAttribute2;
      v179 = sub_1AAD72A64;
      v180 = KeyPath;
      sub_1AACBC63C();
      sub_1AADA3E5C(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
      sub_1AADA37A8(0);
      sub_1AADA3D58(&qword_1EB424410, sub_1AADA37A8, MEMORY[0x1E698D3A0]);

      LOBYTE(v43) = v165;
      v56 = sub_1AAF8D194();
    }

    else
    {
      v56 = AGGraphCreateOffsetAttribute2();
    }

    LODWORD(v178) = v56;
    v179 = sub_1AADA5040;
    v180 = 0;
    sub_1AADA3E5C(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
    sub_1AADA3860(0);
    sub_1AADA3D58(&qword_1EB424420, sub_1AADA3860, MEMORY[0x1E698D3A0]);
    v57 = sub_1AAF8D194();
    LODWORD(v178) = v56;
    v179 = sub_1AADA50AC;
    v180 = 0;
    v58 = MEMORY[0x1E69E7DE0];
    sub_1AADA390C(0, &qword_1EB424428, MEMORY[0x1E69E7DE0]);
    sub_1AADA3A44(&qword_1EB424430, &qword_1EB424428, v58);
    v59 = sub_1AAF8D194();
    LOBYTE(v178) = v43;
    HIDWORD(v178) = v162;
    v179 = __PAIR64__(v59, v176);
    LODWORD(v180) = v57;
    sub_1AADA3DA0(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AADA3994();
    v60 = sub_1AAF8D194();
    v178 = v49;
    v179 = __PAIR64__(a3, v60);
    sub_1AADA39E8();

    sub_1AAF8D194();

    AGGraphSetFlags();
    v61 = AGGraphCreateOffsetAttribute2();
    v62 = swift_getKeyPath();
    sub_1AAF8FF44();
    if (v63)
    {
      LODWORD(v178) = v61;
      v179 = sub_1AAD732D4;
      v180 = v62;
      sub_1AACBC63C();
      sub_1AADA3E5C(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
      sub_1AADA37A8(0);
      sub_1AADA3D58(&qword_1EB424410, sub_1AADA37A8, MEMORY[0x1E698D3A0]);

      LOBYTE(v43) = v165;
      v64 = sub_1AAF8D194();
    }

    else
    {
      v64 = AGGraphCreateOffsetAttribute2();
    }

    v65 = v175;
    v66 = swift_allocObject();
    *(v66 + 16) = v43;
    LODWORD(v178) = v64;
    v179 = sub_1AADA3A3C;
    v180 = v66;
    v67 = MEMORY[0x1E6981148];
    sub_1AADA390C(0, &qword_1EB424448, MEMORY[0x1E6981148]);
    sub_1AADA3A44(&qword_1EB424450, &qword_1EB424448, v67);
    v68 = sub_1AAF8D194();

    v178 = __PAIR64__(v161, v68);
    sub_1AADA3A94();
    v69 = sub_1AAF8D194();
    v70 = AGGraphCreateOffsetAttribute2();
    v178 = v49;
    v179 = __PAIR64__(v69, v70);
    LODWORD(v180) = v163;
    sub_1AADA3DA0(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
    v72 = v71;
    sub_1AADA3AE8();

    v158 = v72;
    v73 = sub_1AAF8D194();

    v178 = __PAIR64__(v65, v73);
    v157 = sub_1AADA3B3C();
    sub_1AAF8D194();
    AGGraphSetFlags();
    sub_1AAF8CC24();

    swift_allocObject();
    v74 = sub_1AAF8D084();
    v178 = 0;
    v179 = 0xE000000000000000;
    sub_1AAF900D4();

    v178 = 0x656E694C73697841;
    v179 = 0xEF5F70756F724773;
    v75 = sub_1AAF8F674();
    v77 = v76;

    MEMORY[0x1AC5982F0](v75, v77);

    sub_1AAF8D034();
    sub_1AAF8CCA4();
    sub_1AAF8CC04();
    swift_allocObject();
    v78 = sub_1AAF8CBF4();
    v79 = v145;
    sub_1AAF8CF44();
    v80 = v65;
    if (qword_1EB422B40 != -1)
    {
      swift_once();
    }

    v81 = v150;
    v82 = sub_1AAD0F5D8(v150, qword_1EB432060);
    (*v124)(v149, v82, v81);
    v83 = v147;
    sub_1AAF8D5E4();
    v84 = v148;
    sub_1AAF8CF94();
    (*v123)(v83, v84);
    (*v122)(v79, v146);
    sub_1AAF8CC24();
    sub_1AAF8D044();
    sub_1AAF8CC24();

    sub_1AAF8D044();
    sub_1AAF8CC24();

    v173 = v78;
    sub_1AAF8D044();
    sub_1AAF8CC24();

    LOBYTE(v178) = v43;
    HIDWORD(v178) = v162;
    LODWORD(v179) = v80;
    sub_1AADA3E5C(0, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    sub_1AADA3B90();
    v85 = sub_1AAF8D194();
    v178 = v74;
    LODWORD(v179) = v85;
    sub_1AADA3BE4();

    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC34();
    v86 = v120;
    sub_1AAF8CFE4();
    v87 = v144;
    sub_1AAF8CFF4();
    v88 = v178;
    for (i = v172; v178; v88 = v178)
    {
      v178 = v88;
      LODWORD(v179) = i;
      sub_1AACBC63C();
      sub_1AADA3FFC();

      sub_1AAF8D194();

      AGGraphSetFlags();

      sub_1AAF8CFF4();
    }

    (*v121)(v86, v87);
    sub_1AAF8CC24();

    v90 = AGGraphCreateOffsetAttribute2();
    LOBYTE(v178) = v165;
    HIDWORD(v178) = v174;
    v179 = __PAIR64__(v176, v90);
    v180 = v175;
    sub_1AADA3E5C(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
    v92 = v91;
    sub_1AADA3DA0(0, &qword_1EB424480, sub_1AADA3C38, &type metadata for PrimitiveAxisTick, type metadata accessor for Resolved3DTicks);
    sub_1AADA3C8C(&qword_1EB424490, &qword_1EB424480, sub_1AADA3C38, &type metadata for PrimitiveAxisTick);
    v173 = v92;
    v93 = sub_1AAF8D194();
    swift_allocObject();
    v94 = sub_1AAF8D084();
    v178 = 0;
    v179 = 0xE000000000000000;
    sub_1AAF900D4();

    v178 = 0x6B63695473697841;
    v179 = 0xEF5F70756F724773;
    v95 = sub_1AAF8F674();
    v97 = v96;

    MEMORY[0x1AC5982F0](v95, v97);

    sub_1AAF8D034();
    v178 = v94;
    v179 = __PAIR64__(v93, i);
    v98 = sub_1AAD78228();

    v170 = v98;
    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC24();

    v99 = swift_getKeyPath();
    sub_1AAF8FF44();
    if (v100)
    {
      LODWORD(v178) = v161;
      v179 = sub_1AAD5B498;
      v180 = v99;
      sub_1AACBC63C();
      sub_1AAF8E7E4();
      sub_1AADA3CF0(0);
      sub_1AADA3D58(&qword_1EB4244A0, sub_1AADA3CF0, MEMORY[0x1E698D3A0]);

      v156 = sub_1AAF8D194();
    }

    else
    {
      sub_1AAF8E7E4();
      v156 = AGGraphCreateOffsetAttribute2();
    }

    v32 = v152;
    v31 = v159 + 1;
    swift_allocObject();
    v33 = sub_1AAF8D084();
    v178 = 0;
    v179 = 0xE000000000000000;
    sub_1AAF900D4();

    v178 = 0xD000000000000010;
    v179 = v126;
    v34 = v165;
    v35 = sub_1AAF8F674();
    v37 = v36;

    MEMORY[0x1AC5982F0](v35, v37);

    sub_1AAF8D034();
    v38 = AGGraphCreateOffsetAttribute2();
    LOBYTE(v178) = v34;
    LODWORD(v37) = v175;
    HIDWORD(v178) = v174;
    v179 = __PAIR64__(v176, v38);
    v180 = v175 | 0x3D75C28F00000000;
    sub_1AADA3DA0(0, &qword_1EB4244A8, sub_1AADA3E08, &type metadata for PrimitiveAxisLabel, type metadata accessor for Resolved3DTicks);
    sub_1AADA3C8C(&qword_1EB4244B8, &qword_1EB4244A8, sub_1AADA3E08, &type metadata for PrimitiveAxisLabel);
    v39 = sub_1AAF8D194();
    LODWORD(v178) = v39;
    sub_1AADA3E5C(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1AADA3EAC();
    LODWORD(v178) = sub_1AAF8D194();
    sub_1AADA3F00();
    v40 = sub_1AAF8D194();
    v178 = v33;
    v179 = __PAIR64__(v32, v163);
    a3 = v32;
    v180 = __PAIR64__(v40, v39);
    v181 = v156;
    sub_1AADA3F54();

    v41 = sub_1AAF8D194();

    v178 = __PAIR64__(v37, v41);
    sub_1AAF8D194();
    AGGraphSetFlags();
    v42 = v166;
    sub_1AAF8CC24();

    v178 = v42;
    LOBYTE(v179) = v34;
    HIDWORD(v179) = v32;
    LODWORD(v180) = v153;
    sub_1AADA3FA8();

    sub_1AAF8D194();

    AGGraphSetFlags();
    sub_1AAF8CC24();
  }

  while (v31 != 3);
  swift_allocObject();

  sub_1AAF8D084();
  sub_1AAF8D034();
  sub_1AAF8CC24();
  v101 = 0;
  while (2)
  {
    v102 = 0;
    v103 = *(&unk_1F1FCEC10 + v101 + 32);
    v166 = v101 + 1;
    do
    {
      v106 = byte_1F1FCEC38[v102 + 32];
      if (v103)
      {
        if (v103 != 1)
        {
          goto LABEL_33;
        }

        v107 = 121;
      }

      else
      {
        v107 = 120;
      }

      if (v106 < 2)
      {
        v108 = 120;
      }

      else
      {
        v108 = 121;
      }

      if (v107 == v108)
      {
LABEL_42:
        swift_bridgeObjectRelease_n();
LABEL_43:
        swift_allocObject();
        v112 = sub_1AAF8D084();
        v178 = 0;
        v179 = 0xE000000000000000;
        v177 = v106;
        sub_1AAF90284();
        v113 = sub_1AAF8F674();
        v115 = v114;

        MEMORY[0x1AC5982F0](v113, v115);

        MEMORY[0x1AC5982F0](0x7364697247, 0xE500000000000000);
        sub_1AAF8D034();
        sub_1AAF8CC24();
        v104 = AGGraphCreateOffsetAttribute2();
        LOBYTE(v178) = v103;
        HIDWORD(v178) = v174;
        v179 = __PAIR64__(v176, v104);
        LODWORD(v180) = v175;
        BYTE4(v180) = v106;
        sub_1AACBC63C();
        sub_1AAD76118();
        v105 = sub_1AAF8D194();
        v178 = v112;
        v179 = __PAIR64__(v105, v172);

        sub_1AAF8D194();

        AGGraphSetFlags();

        goto LABEL_24;
      }

LABEL_33:
      v109 = sub_1AAF904F4();
      swift_bridgeObjectRelease_n();
      if (v109)
      {
        goto LABEL_43;
      }

      if (v103 == 2)
      {
        v110 = 122;
      }

      else
      {
        if (v103 != 1)
        {
          goto LABEL_44;
        }

        v110 = 121;
      }

      if (v106)
      {
        v111 = 122;
      }

      else
      {
        v111 = 121;
      }

      if (v110 == v111)
      {
        goto LABEL_42;
      }

LABEL_44:
      v116 = sub_1AAF904F4();
      swift_bridgeObjectRelease_n();
      if (v116)
      {
        goto LABEL_43;
      }

LABEL_24:
      ++v102;
    }

    while (v102 != 3);
    v101 = v166;
    if (v166 != 3)
    {
      continue;
    }

    break;
  }

  v117 = v155;

  return v117;
}

uint64_t sub_1AADA36F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AADA191C(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

unint64_t sub_1AADA372C()
{
  result = qword_1EB424400;
  if (!qword_1EB424400)
  {
    sub_1AADA3E5C(255, &qword_1EB423588, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424400);
  }

  return result;
}

void sub_1AADA37A8(uint64_t a1)
{
  if (!qword_1EB424408)
  {
    sub_1AADA3E5C(255, &qword_1EB423588, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E62F8]);
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424408);
    }
  }
}

void sub_1AADA3860(uint64_t a1)
{
  if (!qword_1EB424418)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    sub_1AADA3E5C(255, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], v1);
    v2 = sub_1AAF8D1D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB424418);
    }
  }
}

void sub_1AADA390C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1AADA3E5C(255, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
    v4 = sub_1AAF8D1D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AADA3994()
{
  result = qword_1EB424438;
  if (!qword_1EB424438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424438);
  }

  return result;
}

unint64_t sub_1AADA39E8()
{
  result = qword_1EB424440;
  if (!qword_1EB424440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424440);
  }

  return result;
}

uint64_t sub_1AADA3A44(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA390C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AADA3A94()
{
  result = qword_1EB424458;
  if (!qword_1EB424458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424458);
  }

  return result;
}

unint64_t sub_1AADA3AE8()
{
  result = qword_1EB424460;
  if (!qword_1EB424460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424460);
  }

  return result;
}

unint64_t sub_1AADA3B3C()
{
  result = qword_1EB424468;
  if (!qword_1EB424468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424468);
  }

  return result;
}

unint64_t sub_1AADA3B90()
{
  result = qword_1EB424470;
  if (!qword_1EB424470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424470);
  }

  return result;
}

unint64_t sub_1AADA3BE4()
{
  result = qword_1EB424478;
  if (!qword_1EB424478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424478);
  }

  return result;
}

unint64_t sub_1AADA3C38()
{
  result = qword_1EB424488;
  if (!qword_1EB424488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424488);
  }

  return result;
}

uint64_t sub_1AADA3C8C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA3DA0(255, a2, a3, a4, type metadata accessor for Resolved3DTicks);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AADA3CF0(uint64_t a1)
{
  if (!qword_1EB424498)
  {
    sub_1AAF8E134();
    sub_1AAF8E7E4();
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424498);
    }
  }
}

uint64_t sub_1AADA3D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AADA3DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AADA3E08()
{
  result = qword_1EB4244B0;
  if (!qword_1EB4244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244B0);
  }

  return result;
}

void sub_1AADA3E5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AADA3EAC()
{
  result = qword_1EB4244C0;
  if (!qword_1EB4244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244C0);
  }

  return result;
}

unint64_t sub_1AADA3F00()
{
  result = qword_1EB4244C8;
  if (!qword_1EB4244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244C8);
  }

  return result;
}

unint64_t sub_1AADA3F54()
{
  result = qword_1EB4244D0;
  if (!qword_1EB4244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244D0);
  }

  return result;
}

unint64_t sub_1AADA3FA8()
{
  result = qword_1EB4244D8;
  if (!qword_1EB4244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244D8);
  }

  return result;
}

unint64_t sub_1AADA3FFC()
{
  result = qword_1EB4244E0;
  if (!qword_1EB4244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244E0);
  }

  return result;
}

unint64_t sub_1AADA4064()
{
  result = qword_1EB4244E8;
  if (!qword_1EB4244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4244E8);
  }

  return result;
}

uint64_t sub_1AADA40F8(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = a2;
  v39[1] = a1;
  sub_1AADA49C4(0, a4);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = sub_1AAF8CFB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AAF8D5A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*AGGraphGetValue())
  {
    result = AGGraphGetValue();
    if ((v20 & 1) == 0)
    {
      return result;
    }

    sub_1AAF8D584();
    (*(v16 + 56))(v7, 0, 1, v15);
    goto LABEL_11;
  }

  type metadata accessor for simd_quatf(0);
  Value = AGGraphGetValue();
  v22 = vmulq_f32(*Value, xmmword_1AAF965D0);
  v23 = vnegq_f32(v22);
  v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
  v25 = vmulq_f32(vextq_s8(v22, v23, 8uLL), 0);
  v26 = vrev64q_s32(v22);
  v26.i32[0] = v23.i32[1];
  v26.i32[3] = v23.i32[2];
  v27 = vaddq_f32(v26, vmlaq_f32(v25, 0, vextq_s8(v24, v24, 8uLL)));
  v28 = vnegq_f32(v27);
  v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
  v30 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *Value->f32, 1), vextq_s8(v29, v29, 8uLL), COERCE_FLOAT(*Value));
  v31 = vrev64q_s32(v27);
  v31.i32[0] = v28.i32[1];
  v31.i32[3] = v28.i32[2];
  v32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, *Value, 3), v31, *Value, 2), v30);
  if (v4)
  {
    if (v4 == 1)
    {
      v33 = xmmword_1AAF93880;
    }

    else
    {
      v33 = xmmword_1AAF94A50;
    }
  }

  else
  {
    v33 = xmmword_1AAF93890;
  }

  v34 = vmulq_f32(v32, v33);
  v35 = acosf(fmaxf(fminf(v34.f32[2] + vaddv_f32(*v34.f32), 1.0), -1.0));
  sub_1AAD630B8((v35 + v35));
  sub_1AAF8CF44();
  sub_1AAF8CF64();
  (*(v12 + 8))(v14, v11);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1AADA4A1C(v10, v36);
    sub_1AAF8D584();
    (*(v16 + 56))(v7, 0, 1, v15);
LABEL_11:
    v37 = sub_1AAF8CF34();
    sub_1AAF8CF74();
    return v37(v40, 0);
  }

  (*(v16 + 32))(v18, v10, v15);
  sub_1AAF8D594();
  (*(v16 + 16))(v7, v18, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v38 = sub_1AAF8CF34();
  sub_1AAF8CF74();
  v38(v40, 0);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1AADA4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1AAF8F5F4() & 1) != 0 && (type metadata accessor for XYZ(0, a3, a4, v6), (sub_1AAF8F5F4()))
  {
    return sub_1AAF8F5F4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADA46A0(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F484();
  sub_1AAF8F484();
  return sub_1AAF8F484();
}

uint64_t sub_1AADA4718(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AADA46A0(v3, a1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA477C(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  sub_1AADA46A0(v4, a2);
  return sub_1AAF906F4();
}

uint64_t sub_1AADA47DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AAF904F4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_1AADA483C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AADA4A78(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AADA4880()
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

double sub_1AADA48D4(uint64_t a1)
{
  sub_1AAF8F6C4();

  return result;
}

uint64_t sub_1AADA490C(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF8F6C4();

  return sub_1AAF906F4();
}

unint64_t sub_1AADA4970()
{
  result = qword_1EB424500;
  if (!qword_1EB424500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424500);
  }

  return result;
}

void sub_1AADA49C4(uint64_t a1, double a2)
{
  if (!qword_1EB424508[0])
  {
    sub_1AAF8D5A4();
    v2 = sub_1AAF8FE74();
    if (!v3)
    {
      atomic_store(v2, qword_1EB424508);
    }
  }
}

uint64_t sub_1AADA4A1C(uint64_t a1, double a2)
{
  sub_1AADA49C4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AADA4A78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AAF90414();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AADA4AE4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADA4B5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1AADA4CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AADA4F3C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AADA4F8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AADA4F8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1AAF8F914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AADA4FDC()
{
  result = qword_1EB4245A0;
  if (!qword_1EB4245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245A0);
  }

  return result;
}

uint64_t sub_1AADA5040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1AADA603C(a1, v9, a3);
  if (v10)
  {
    v8 = v11;
    v5 = v12;
    result = sub_1AAD817BC(v9);
    v7 = v8;
  }

  else
  {
    result = sub_1AADA60C4(v9, v4);
    v7 = 0uLL;
    v5 = 1;
  }

  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1AADA50AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_1AADA603C(a1, v8, a3);
  if (v9)
  {
    v5 = v10;
    v6 = v11;
    result = sub_1AAD817BC(v8);
    if (v6 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_1AADA60C4(v8, v4);
  }

  v5 = 0x3FC3333333333333;
LABEL_6:
  *a2 = v5;
  return result;
}

void sub_1AADA5120(uint64_t a1@<X0>, uint64_t a3@<X8>, double d0_0@<D0>)
{
  sub_1AADA603C(a1, v19, d0_0);
  if (!v19[3])
  {
    sub_1AADA60C4(v19, v5);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  sub_1AADA61DC(v20, v21, v22, v23);
  sub_1AAD817BC(v19);
  if (!v9)
  {
LABEL_5:
    v11 = sub_1AAF8F674();
    v13 = v12;

    v19[0] = v11;
    v19[1] = v13;
    sub_1AADA6144();
    v14 = sub_1AAF8EA64();
    v16 = v15;
    v10 = v17;
    v9 = v18;
    sub_1AADA6198(v6, v7, v8, 0);
    v6 = v14;
    v7 = v16;
    goto LABEL_6;
  }

  v10 = v8;
LABEL_6:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v9;
}

uint64_t sub_1AADA5230@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  sub_1AACD7304(*Value, v8, v9);

  v10 = AGGraphGetValue();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_1AAF8E974();
  v13 = v12;
  sub_1AAD04750(v7, v8, v9);

  result = (*(v3 + 8))(v5, v2);
  *a1 = v11;
  a1[1] = v13;
  return result;
}

uint64_t sub_1AADA53AC(double a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = sub_1AAF8D014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA6220(0, &qword_1EB4245A8, MEMORY[0x1E697DB50], MEMORY[0x1E69E6720]);
  if (*AGGraphGetValue() != 3)
  {
    sub_1AAF8D874();
  }

  sub_1AAF8D074();
  sub_1AAF8D094();
  sub_1AAF8CC34();
  sub_1AAF8CFD4();
  (*(v5 + 8))(v7, v4);
  if (*AGGraphGetValue() != 3 && (sub_1AAF8D874() & 1) != 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  AGGraphGetValue();
  v9 = qword_1EB422BB0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_1AAF8CD24();
  sub_1AAF8CCF4();

  sub_1AAF8CC04();
  swift_allocObject();
  v10 = sub_1AAF8CBF4();
  v11 = *(AGGraphGetValue() + 16);

  sub_1AADAC7CC(v10, v11);

  swift_allocObject();
  sub_1AAF8D084();
  sub_1AAF8CC24();
  sub_1AAF8CC24();

  sub_1AADA6220(0, &qword_1EB4245B0, &type metadata for AnyEntity, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v10;
  v13 = inited + 32;
  v8 = sub_1AADAB648(inited, COERCE_DOUBLE(1));
  swift_setDeallocating();
  sub_1AADA5FE8(v13);
  return v8;
}

uint64_t sub_1AADA5718@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = sub_1AADA53AC(a2, *v2, *(v2 + 8), *(v2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1AADA5748()
{
  sub_1AADA6270(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  AGGraphGetValue();
  sub_1AAF8D094();
  sub_1AAF8CC54();
  type metadata accessor for simd_quatf(0);
  v3 = *AGGraphGetValue();
  v0 = sub_1AAF8CC64();
  *(v1 + 16) = v3;
  return v0(v4, 0);
}

double sub_1AADA584C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_1AAD58174(0);
  Value = AGGraphGetValue();
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = Value[2];
      v5 = Value[3];

LABEL_7:
      sub_1AADA6220(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
      v9 = *(AGGraphGetValue() + 16);
      sub_1AAF8E184();
      if (v9 == 1)
      {
        sub_1AAF8E174();
LABEL_14:
        v10 = 0.0;
        goto LABEL_15;
      }

      v10 = -0.5;
      if ((sub_1AAF8E164() & 1) == 0)
      {
        sub_1AAF8E174();
        v10 = 0.5;
        if ((sub_1AAF8E164() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }

    v7 = Value + 5;
    Value += 4;
  }

  else
  {
    v7 = Value + 1;
  }

  v5 = *v7;
  v6 = *Value;
  v8 = sub_1AAF904F4();

  if (v8)
  {
    goto LABEL_7;
  }

  sub_1AADA6220(0, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
  v11 = *(AGGraphGetValue() + 16);
  sub_1AAF8E274();
  if (v11 == 1)
  {
    sub_1AAF8E284();
    goto LABEL_14;
  }

  v10 = -0.5;
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E284();
    v10 = 0.5;
    if ((sub_1AAF8E164() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v12 = (v6 + v5) * 0.5;
  v13 = AGGraphGetValue();
  v14 = *v13;
  v15 = *(v13 + 16);
  if (!v3)
  {
    v14.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
    goto LABEL_19;
  }

  if (v3 == 1)
  {
LABEL_19:
    v14.i64[1] = *(v13 + 16);
  }

  v27 = v14;
  *&v15 = v10 + v12;
  sub_1AAD57D98(0, v15);
  v28 = *AGGraphGetValue();
  v16 = *AGGraphGetValue();
  v17 = *&v27.i32[1];
  if (v3)
  {
    v18 = *&v27.i32[1] + v16;
    if (v28.i32[0] < 0)
    {
      v18 = *v27.i32 - v16;
    }

    v19 = *&v27.i32[2] - v16;
    v20 = *&v27.i32[3] + v16;
    v21 = vcltz_s32(*v28.i8);
    if ((v21.i8[0] & 1) == 0)
    {
      v17 = *v27.i32;
    }

    if ((v21.i8[4] & 1) == 0)
    {
      v19 = v20;
    }

    if (v3 == 1)
    {
      v22 = v10 + v12;
    }

    else
    {
      v22 = v19;
    }

    if (v3 == 1)
    {
      v23 = v18;
    }

    else
    {
      v23 = v17;
    }

    v24 = v23;
  }

  else
  {
    v25 = *&v27.i32[1] + v16;
    v22 = *v27.i32 - v16;
    if ((vcltz_s32(*&vextq_s8(v28, v28, 4uLL)).u8[0] & 1) == 0)
    {
      v22 = v25;
    }

    v24 = v10 + v12;
  }

  return COERCE_DOUBLE(__PAIR64__(LODWORD(v22), LODWORD(v24)));
}

void sub_1AADA5BB0(unint64_t a1)
{
  v1 = HIDWORD(a1);
  sub_1AADA5F34(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADA6270(0, &qword_1EB423598, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E64E8]);
  Value = AGGraphGetValue();
  v6 = *Value + 56;
  v7 = 1 << *(*Value + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*Value + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v9 &= v9 - 1;
    swift_unknownObjectRetain_n();
    v13 = *AGGraphGetValue();
    sub_1AAF8CC04();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      sub_1AAF8D0A4();
      v14 = sub_1AAF8CDC4();
      if (!(*(*(v14 - 8) + 48))(v4, 1, v14))
      {
        v28 = sub_1AAF8CDA4();
        sub_1AADA5F8C(v4);
        sub_1AAF8CD14();
        v26 = v16;
        v27 = v15;
        *v15.i32 = v13 * 2.5;
        v30 = v15;
        sub_1AAF8CBE4();
        v29 = v17;
        sub_1AAF8CBE4();
        v19 = __PAIR64__(v18, v29);
        v20 = vdupq_lane_s32(*v30.i8, 0);
        v30 = v20;
        *v20.i8 = vmul_f32(vmul_f32(*v20.i8, v19), 0xBF333333BF000000);
        v27 = v20;
        sub_1AAF8D094();
        *&v29 = v1;
        v21 = sub_1AAF8CC64();
        v22[2] = v27;
        v21(v31, 0);
        v23 = v30;
        v23.i32[3] = 0;
        v30 = v23;
        v1 = v29;
        v24 = sub_1AAF8CC64();
        *v25 = v30;
        v24(v31, 0);

        goto LABEL_14;
      }

      swift_unknownObjectRelease_n();
      sub_1AADA5F8C(v4);
      v11 = v12;
    }

    else
    {
LABEL_14:
      swift_unknownObjectRelease_n();
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1AADA5F34(uint64_t a1)
{
  if (!qword_1EB4235E8)
  {
    sub_1AAF8CDC4();
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4235E8);
    }
  }
}

uint64_t sub_1AADA5F8C(uint64_t a1)
{
  sub_1AADA5F34(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADA603C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AADA6220(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADA60C4(uint64_t a1, double a2)
{
  sub_1AADA6220(0, &qword_1EB423590, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AADA6144()
{
  result = qword_1ED9B44A8;
  if (!qword_1ED9B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44A8);
  }

  return result;
}

double sub_1AADA6198(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AAD04750(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1AADA61DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AACD7304(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1AADA6220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AADA6270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AxisLabelPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisLabelPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

float sub_1AADA63D0(uint64_t a1, uint64_t a2)
{
  result = COERCE_DOUBLE((*(a2 + 48))(a1));
  if (v3)
  {
    return 1.0;
  }

  return result;
}

char *sub_1AADA640C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_1AAD58174(0);
  Value = AGGraphGetValue();
  v4 = (Value + 4);
  v5 = (Value + 8);
  v6 = (Value + 20);
  if (v2 == 1)
  {
    v6 = (Value + 12);
  }

  else
  {
    v5 = (Value + 16);
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = Value;
  }

  if (v2)
  {
    v4 = v6;
  }

  v45 = *v4 - *v7;
  v8 = *v4 + *v7;
  LODWORD(v9) = *AGGraphGetValue();
  v41 = v9;
  v10 = AGGraphGetValue();
  v11 = v41;
  *(&v11 + 1) = v45;
  DWORD2(v11) = *v10;
  v42 = v11;
  if (v2)
  {
    if (v2 == 1)
    {
      v40 = xmmword_1AAF96C60;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v40 = xmmword_1AAF95180;
    }

    v13 = *AGGraphGetValue();
    v14 = AGGraphGetValue();
    if ((v12 & 1) == 0)
    {
      v16 = (v14 + 8);
      v15 = 1;
      v17 = 12;
      goto LABEL_18;
    }

    v15 = 1;
  }

  else
  {
    v13 = *(AGGraphGetValue() + 8);
    v14 = AGGraphGetValue();
    v15 = 0;
    v40 = xmmword_1AAF95170;
  }

  v16 = (v14 + 16);
  v17 = 20;
LABEL_18:
  v18 = 0;
  v19 = 0;
  v20 = v8 * 0.5;
  v21 = *(v14 + v17);
  v22 = *v16;
  v48[0] = v13;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    v24 = 0;
    v25 = 0;
    v26 = *(v48 + v19);
    v39 = v18;
    v47[0] = v22;
    v47[1] = v21;
    do
    {
      v27 = v24;
      v28 = *&v47[v25];
      if (v2)
      {
        v29 = sub_1AAF904F4();

        if (v29)
        {
          v30 = v20;
        }

        else
        {
          v30 = v26;
        }

        if (((v15 | v29) & 1) == 0)
        {
          if (sub_1AAF904F4())
          {
            v30 = v26;
          }

          else
          {
            v30 = v28;
          }
        }

        v46 = v30;
        if (v2 != 2)
        {
          v44 = v20;
          goto LABEL_42;
        }
      }

      else
      {

        v46 = v20;
      }

      v31 = sub_1AAF904F4();
      if (v31)
      {
        v32 = v20;
      }

      else
      {
        v32 = v26;
      }

      if (((v31 | v15 ^ 1) & 1) == 0)
      {
        if (sub_1AAF904F4())
        {
          v32 = v26;
        }

        else
        {
          v32 = v28;
        }
      }

      v44 = v32;
      if (v2)
      {
        v33 = v20;
        goto LABEL_47;
      }

LABEL_42:
      if (sub_1AAF904F4())
      {
        v33 = v20;
      }

      else if (sub_1AAF904F4())
      {
        v33 = v26;
      }

      else
      {
        v33 = v28;
      }

LABEL_47:
      v43 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AAD688C4(0, *(v23 + 2) + 1, 1, v23);
      }

      v35 = *(v23 + 2);
      v34 = *(v23 + 3);
      if (v35 >= v34 >> 1)
      {
        v23 = sub_1AAD688C4((v34 > 1), v35 + 1, 1, v23);
      }

      *&v36 = __PAIR64__(LODWORD(v44), LODWORD(v46));
      *(&v36 + 1) = LODWORD(v43);
      *(v23 + 2) = v35 + 1;
      v37 = &v23[48 * v35];
      *(v37 + 2) = v42;
      *(v37 + 3) = v40;
      *(v37 + 4) = v36;
      v24 = 1;
      v25 = 1;
    }

    while ((v27 & 1) == 0);
    v18 = 1;
    v19 = 1;
  }

  while ((v39 & 1) == 0);
  return v23;
}

char *sub_1AADA681C@<X0>(char **a1@<X8>)
{
  result = sub_1AADA640C(*v1 | (*(v1 + 1) << 32), *(v1 + 2));
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AxisLineTransforms(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisLineTransforms(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[12])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisLineTransforms(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AADA6900(double a1)
{
  sub_1AAF8D014();
  sub_1AADAB5C0(&qword_1EB423F68, MEMORY[0x1E697A360], MEMORY[0x1E697A370]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  v1 = 0;
  if (v5[4] != v5[0])
  {
    v2 = sub_1AAF8FC84();
    v1 = *v3;

    v2(v5, 0);
  }

  return v1;
}

void sub_1AADA69EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AAF8FF74();
  if (v4 == 1 << *(a1 + 32))
  {
    sub_1AADAC0E4(__src);
    memcpy(a2, __src, 0x228uLL);
  }

  else
  {
    v5[0] = sub_1AADAB50C(&v5[1], v4, *(a1 + 36), 0, a1);
    memcpy(__dst, &v5[1], sizeof(__dst));
    memcpy(v9, &v5[1], sizeof(v9));
    v7[0] = v5[0];
    memcpy(&v7[1], &v5[1], 0x220uLL);
    memcpy(a2, v7, 0x228uLL);
    v8 = v5[0];
    sub_1AADABF88(__dst, __src);
    sub_1AADAC07C(v7, __src, sub_1AAD46990);
    sub_1AADABE4C(&v8, sub_1AAD46990);
    memcpy(__src, v5, sizeof(__src));
    sub_1AADABE4C(__src, sub_1AAD46990);
    nullsub_1();
  }
}

uint64_t sub_1AADA6B4C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, double a5)
{
  v149 = a4;
  *&v161 = a1;
  v152 = a2;
  v138 = HIDWORD(a2);
  v141 = HIDWORD(a3);
  v148 = sub_1AAF8E7E4();
  v134 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1AAF8E824();
  v133 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v151 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AAF8F614();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28(0, v11);
  v14 = v13;
  v140 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v158 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v133 - v17;
  v155 = sub_1AAF8D014();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v144 = (&v133 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v133 - v25;
  v157 = 0;
  sub_1AADABC68(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  v136 = a3;
  v135 = v26;
  Value = AGGraphGetValue();
  v28 = *Value;
  v29 = *(*Value + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v139 = v14;
  if (v29)
  {
    v165 = MEMORY[0x1E69E7CC0];

    sub_1AAD214F4(0, v29, 0);
    v30 = v165;
    v31 = v28 + 32;
    do
    {
      sub_1AAD77BBC(v31, &v163);
      v32 = v163;
      v33 = v164;
      sub_1AAF90694();
      if (v32 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v32;
      }

      MEMORY[0x1AC5992F0](*&v34);
      sub_1AAF906B4();
      if (v33)
      {
        sub_1AAF8E7D4();
      }

      v35 = sub_1AAF906F4();
      sub_1AAD77BF4(&v163);
      v165 = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AAD214F4((v36 > 1), v37 + 1, 1);
        v30 = v165;
      }

      *(v30 + 16) = v37 + 1;
      *(v30 + 8 * v37 + 32) = v35;
      v31 += 112;
      --v29;
    }

    while (v29);

    v14 = v139;
  }

  v38 = sub_1AAD80FE0(v30);

  v39 = sub_1AAF8D094();
  v40 = v159;
  v160 = v39;
  sub_1AAF8CC34();
  v41 = *(v154 + 16);
  v42 = v155;
  v143 = (v154 + 16);
  v142 = v41;
  (v41)(v156, v40, v155);
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28, MEMORY[0x1E697A358]);
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AAF8FE94();
    if (v163 == 0.0)
    {
      break;
    }

    v44 = sub_1AAF8D024();
    v46 = sub_1AADA7F38(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AACF04D8(0, *(v43 + 2) + 1, 1, v43);
      }

      v50 = *(v43 + 2);
      v49 = *(v43 + 3);
      if (v50 >= v49 >> 1)
      {
        v43 = sub_1AACF04D8((v49 > 1), v50 + 1, 1, v43);
      }

      *(v43 + 2) = v50 + 1;
      *&v43[8 * v50 + 32] = v46;
    }
  }

  v51 = v140 + 8;
  v137 = *(v140 + 8);
  v137(v18, v14);
  v52 = v154 + 8;
  v53 = v159;
  v159 = *(v154 + 8);
  (v159)(v53, v42);
  *&v54 = COERCE_DOUBLE(sub_1AAD80FE0(v43));

  v55 = *(v38 + 16) > *(v54 + 16) >> 3;
  v140 = v51;
  if (v55)
  {
    v56 = sub_1AADAA1B0(v38, v54);
  }

  else
  {
    v163 = *&v54;
    sub_1AADAA0B8(v38);

    v56 = *&v163;
  }

  v57 = v157;
  v58 = v144;
  v59 = v142;
  v60 = MEMORY[0x1E69E7CC0];
  sub_1AAF8CC34();
  *&v61 = MEMORY[0x1E69E7CD0];
  v62 = v158;
  if (v60 >> 62)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v163 = *&v61;
    v63 = v155;
    v64 = (v59)(v156, v58, v155);
    v65 = sub_1AADA8B68(v64);
    (v159)(v58, v63);

    v58 = v65 >> 62 ? sub_1AAF8FFB4() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v154 = v52;
    if (!v58)
    {
      break;
    }

    v66 = 0;
    v52 = v65 & 0xC000000000000001;
    v157 = v65 & 0xFFFFFFFFFFFFFF8;
    v67 = v65;
    v144 = (v65 + 32);
    v143 = (&v163 + 1);
    v59 = (v56 + 56);
    while (v52)
    {
      v62 = MEMORY[0x1AC598D40](v66, v67);
      v68 = __OFADD__(v66++, 1);
      if (v68)
      {
        goto LABEL_128;
      }

LABEL_36:
      *&v69 = COERCE_DOUBLE(sub_1AAF8D024());
      v71 = HIBYTE(v70) & 0xF;
      v72 = v69 & 0xFFFFFFFFFFFFLL;
      if ((v70 & 0x2000000000000000) != 0)
      {
        v73 = HIBYTE(v70) & 0xF;
      }

      else
      {
        v73 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (!v73)
      {

        goto LABEL_29;
      }

      if ((v70 & 0x1000000000000000) == 0)
      {
        if ((v70 & 0x2000000000000000) != 0)
        {
          v163 = *&v69;
          v164 = v70 & 0xFFFFFFFFFFFFFFLL;
          if (v69 == 43)
          {
            if (!v71)
            {
              goto LABEL_133;
            }

            v72 = v71 - 1;
            if (v71 != 1)
            {
              v76 = 0;
              v86 = v143;
              while (1)
              {
                v87 = *v86 - 48;
                if (v87 > 9)
                {
                  break;
                }

                v88 = 10 * v76;
                if ((v76 * 10) >> 64 != (10 * v76) >> 63)
                {
                  break;
                }

                v76 = v88 + v87;
                if (__OFADD__(v88, v87))
                {
                  break;
                }

                v86 = (v86 + 1);
                if (!--v72)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v69 == 45)
          {
            if (!v71)
            {
              goto LABEL_132;
            }

            v72 = v71 - 1;
            if (v71 != 1)
            {
              v76 = 0;
              v80 = v143;
              while (1)
              {
                v81 = *v80 - 48;
                if (v81 > 9)
                {
                  break;
                }

                v82 = 10 * v76;
                if ((v76 * 10) >> 64 != (10 * v76) >> 63)
                {
                  break;
                }

                v76 = v82 - v81;
                if (__OFSUB__(v82, v81))
                {
                  break;
                }

                v80 = (v80 + 1);
                if (!--v72)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v71)
          {
            v76 = 0;
            v91 = &v163;
            while (1)
            {
              v92 = *v91 - 48;
              if (v92 > 9)
              {
                break;
              }

              v93 = 10 * v76;
              if ((v76 * 10) >> 64 != (10 * v76) >> 63)
              {
                break;
              }

              v76 = v93 + v92;
              if (__OFADD__(v93, v92))
              {
                break;
              }

              v91 = (v91 + 1);
              if (!--v71)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if ((v69 & 0x1000000000000000) != 0)
          {
            v74 = ((v70 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v74 = sub_1AAF90164();
            v72 = v101;
          }

          v75 = *v74;
          if (v75 == 43)
          {
            if (v72 < 1)
            {
              goto LABEL_130;
            }

            if (--v72)
            {
              v76 = 0;
              if (!v74)
              {
                goto LABEL_95;
              }

              v83 = v74 + 1;
              while (1)
              {
                v84 = *v83 - 48;
                if (v84 > 9)
                {
                  break;
                }

                v85 = 10 * v76;
                if ((v76 * 10) >> 64 != (10 * v76) >> 63)
                {
                  break;
                }

                v76 = v85 + v84;
                if (__OFADD__(v85, v84))
                {
                  break;
                }

                ++v83;
                if (!--v72)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else if (v75 == 45)
          {
            if (v72 < 1)
            {
              goto LABEL_131;
            }

            if (--v72)
            {
              v76 = 0;
              if (v74)
              {
                v77 = v74 + 1;
                while (1)
                {
                  v78 = *v77 - 48;
                  if (v78 > 9)
                  {
                    goto LABEL_96;
                  }

                  v79 = 10 * v76;
                  if ((v76 * 10) >> 64 != (10 * v76) >> 63)
                  {
                    goto LABEL_96;
                  }

                  v76 = v79 - v78;
                  if (__OFSUB__(v79, v78))
                  {
                    goto LABEL_96;
                  }

                  ++v77;
                  if (!--v72)
                  {
                    goto LABEL_97;
                  }
                }
              }

LABEL_95:
              LOBYTE(v72) = 0;
LABEL_97:
              LOBYTE(v162) = v72;
              v94 = v72;

              if ((v94 & 1) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_29;
            }
          }

          else
          {
            if (!v72)
            {
              goto LABEL_96;
            }

            v76 = 0;
            if (!v74)
            {
              goto LABEL_95;
            }

            while (1)
            {
              v89 = *v74 - 48;
              if (v89 > 9)
              {
                break;
              }

              v90 = 10 * v76;
              if ((v76 * 10) >> 64 != (10 * v76) >> 63)
              {
                break;
              }

              v76 = v90 + v89;
              if (__OFADD__(v90, v89))
              {
                break;
              }

              ++v74;
              if (!--v72)
              {
                goto LABEL_97;
              }
            }
          }
        }

LABEL_96:
        v76 = 0;
        LOBYTE(v72) = 1;
        goto LABEL_97;
      }

      LOBYTE(v162) = 0;
      sub_1AADAA60C(v69, v70, 10);
      v76 = v99;
      LODWORD(v142) = v100;

      if ((v142 & 1) == 0)
      {
LABEL_98:
        if (*(v56 + 16))
        {
          v95 = sub_1AAF90684();
          v96 = -1 << *(v56 + 32);
          v97 = v95 & ~v96;
          if ((*(v59 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
          {
            v98 = ~v96;
            while (*(*(v56 + 48) + 8 * v97) != v76)
            {
              v97 = (v97 + 1) & v98;
              if (((*(v59 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            sub_1AAF8CC14();
          }
        }
      }

LABEL_29:

      v62 = v158;
      if (v66 == v58)
      {
        goto LABEL_108;
      }
    }

    if (v66 >= *(v157 + 16))
    {
      goto LABEL_129;
    }

    v62 = v144[v66];

    v68 = __OFADD__(v66++, 1);
    if (!v68)
    {
      goto LABEL_36;
    }

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
    if (sub_1AAF8FFB4())
    {
      sub_1AADAB7B8(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      *&v61 = MEMORY[0x1E69E7CD0];
    }
  }

LABEL_108:

  v165 = MEMORY[0x1E69E7CD0];
  v102 = *AGGraphGetValue();
  v103 = *(v102 + 16);
  if (!v103)
  {
    goto LABEL_124;
  }

  v104 = v102 + 32;
  v144 = (v134 + 16);
  v143 = (v134 + 8);
  v142 = (v133 + 8);
  v105 = *MEMORY[0x1E69DB968];
  v136 = v102;

  while (2)
  {
    sub_1AAD77BBC(v104, &v163);
    v106 = v156;
    v107 = sub_1AAF8CC34();
    v108 = MEMORY[0x1EEE9AC00](v107);
    *(&v133 - 2) = &v163;
    v109 = sub_1AADA82F0(sub_1AADAB608, v108);
    v110 = v155;
    v111 = (v159)(v106, v155);
    if (v109)
    {

      v112 = v153;
      sub_1AAF8CC34();
      v114 = sub_1AADA6900(v113);
      (v159)(v112, v110);
      if (!v114)
      {

        goto LABEL_115;
      }
    }

    else
    {
LABEL_115:
      MEMORY[0x1EEE9AC00](v111);
      *(&v133 - 2) = &v163;
      sub_1AAE29440(sub_1AADAB628);
      if (!v115)
      {
        v116 = AGGraphGetValue();
        sub_1AACE0A98(v116, &v162);
        sub_1AAF75A98(*&v163, 0, 0);
        sub_1AAD57C94(&v162);
      }

      sub_1AAF8F604();
      sub_1AAF8CA94();
      sub_1AAF8F654();
      v117 = v164;
      v157 = v57;
      if (v164)
      {
        v118 = v103;

        v119 = v148;
        v120 = AGGraphGetValue();
        v121 = v147;
        (*v144)(v147, v120, v119);
        v122 = v145;
        sub_1AAF8E804();
        (*v143)(v121, v119);
        sub_1AAF8E814();
        v124 = v123;
        (*v142)(v122, v146);
        v125 = [objc_opt_self() systemFontOfSize:v124 weight:v105];
      }

      else
      {
        if (qword_1EB422B90 != -1)
        {
          swift_once();
        }

        v118 = v103;
        v125 = qword_1EB432090;
      }

      sub_1AAF8CD24();
      v126 = v125;
      sub_1AAF8CCF4();

      sub_1AAF8CC04();
      swift_allocObject();
      v114 = sub_1AAF8CBF4();

      v127 = *(AGGraphGetValue() + 16);

      sub_1AADAC7CC(v114, v127);

      swift_allocObject();
      sub_1AAF8D084();
      sub_1AAF8CC24();
      v128 = v163;

      v162 = sub_1AAD7616C(v117, v128);
      sub_1AAF90474();
      sub_1AAF8D034();
      sub_1AAF8CC24();

      v62 = v158;
      v103 = v118;
      v57 = v157;
    }

    sub_1AAF8CC54();

    sub_1AAD7ACE8(&v162, v114);

    swift_unknownObjectRelease();
    sub_1AAD77BF4(&v163);
    v104 += 112;
    if (--v103)
    {
      continue;
    }

    break;
  }

LABEL_124:
  sub_1AAF8CC34();
  sub_1AAF8CFE4();
  v129 = v139;
  sub_1AAF8CFF4();
  if (v163 != 0.0)
  {
    type metadata accessor for simd_quatf(0);
    do
    {
      v161 = *AGGraphGetValue();
      v130 = sub_1AAF8CC64();
      *(v131 + 16) = v161;
      v130(&v163, 0);

      sub_1AAF8CFF4();
    }

    while (v163 != 0.0);
  }

  v137(v62, v129);
  return v165;
}

unint64_t sub_1AADA7F38(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AAF90164();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1AADAA60C(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AADA8238(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8D024();
  v5 = v4;
  sub_1AAD7616C(*(a2 + 8), *a2);
  if (v3 == sub_1AAF90474() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AAF904F4();
  }

  return v8 & 1;
}

uint64_t sub_1AADA82F0(uint64_t (*a1)(uint64_t *), double a2)
{
  v5 = sub_1AAF8D014();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28(0, v7);
  v11 = v10;
  v18 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v12);
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28, MEMORY[0x1E697A358]);
  while (1)
  {
    sub_1AAF8FE94();
    v15 = v20;
    if (!v20)
    {
      (*(v18 + 8))(v14, v11);
      return 0;
    }

    v19 = v20;
    v16 = a1(&v19);
    if (v3)
    {
      break;
    }

    if (v16)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  (*(v18 + 8))(v14, v11);
  return v15;
}

void sub_1AADA8568(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1AADABC00(0, &qword_1ED9B4468, sub_1AAD46810, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = *a2;
  sub_1AADABA40(a1, &v34);
  if (v36)
  {
    v32 = v34;
    *v33 = *v35;
    *&v33[9] = *&v35[9];
    sub_1AACE0A98(&v32, &v28);
    if (v31 - 1 >= 2)
    {
      if (v31)
      {
        v27 = v12;
        sub_1AAF8CA74();
        sub_1AAD46810();
        sub_1AAF8C794();
        sub_1AADABA9C(v24);
        sub_1AAF8F344();
        (*(v9 + 8))(v11, v8);
        sub_1AAD57C94(&v32);
        v14 = *(&v25[0] + 1);
        v13 = *&v25[0];
      }

      else
      {
        v25[1] = v29;
        v25[0] = v28;
        v18 = v30;
        v26 = v30;
        v27 = v12;
        v19 = *(&v29 + 1);
        v20 = sub_1AACBB42C(v25, *(&v29 + 1));
        sub_1AAF7743C(v20, &v27, MEMORY[0x1E69E63B0], v19, v18);
        v13 = v21;
        v14 = v22;
        sub_1AAD57C94(&v32);
        sub_1AADABB2C(v25, v23);
      }
    }

    else
    {
      sub_1AAD57C94(&v28);
      sub_1AAD57C94(&v32);
      v13 = 0;
      v14 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1AACBB198(&v34, &v32);
    v15 = *&v33[8];
    v16 = *&v33[16];
    sub_1AACBB42C(&v32, *&v33[8]);
    v13 = (*(v16 + 8))(v12, 0, 0, v15, v16);
    v14 = v17;
    sub_1AACB634C(&v32);
  }

  *a3 = v13;
  a3[1] = v14;
}

uint64_t sub_1AADA8868@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = sub_1AADA6B4C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), a2);
  *a1 = result;
  return result;
}

char *sub_1AADA889C(uint64_t a1, double a2)
{
  v2 = MEMORY[0x1E69E7CD0];
  v13 = MEMORY[0x1E69E7CD0];
  sub_1AADABC68(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v4 = *(*Value + 16);
  if (v4)
  {
    v5 = *Value + 32;

    do
    {
      sub_1AAD77BBC(v5, &v12);
      v6 = v12;
      sub_1AAD77BF4(&v12);
      sub_1AAD7ABF4(&v11, *&v6);
      v5 += 112;
      --v4;
    }

    while (v4);

    v2 = v13;
  }

  v7 = *(v2 + 16);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_1AAD6C0D4(*(v2 + 16), 0);
  v9 = sub_1AADA9404(&v12, v8 + 4, v7, v2);
  sub_1AACC9C00(v12);
  if (v9 != v7)
  {
    __break(1u);
LABEL_8:

    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = v8;

  sub_1AADA000C(&v12);

  return v12;
}

char *sub_1AADA8A0C@<X0>(char **a1@<X8>, double a2@<D0>)
{
  result = sub_1AADA889C(*v2, a2);
  *a1 = result;
  return result;
}

uint64_t sub_1AADA8A38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8CAA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADABC68(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *AGGraphGetValue();

  sub_1AAF8CA94();
  sub_1AAF0D208(v6, v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AADA8B68(double a1)
{
  sub_1AAD77B28(0, a1);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1AAF8D014();
  sub_1AADAB5C0(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);
  sub_1AAF8F744();
  sub_1AADAB5C0(&qword_1EB423F78, sub_1AAD77B28, MEMORY[0x1E697A358]);
  while (1)
  {
    sub_1AAF8FE94();
    v6 = v10;
    if (!v10)
    {
      break;
    }

    v7 = sub_1AAD7AE00(&v10, v6);

    if (v7)
    {
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
    }

    else
    {
    }
  }

  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t sub_1AADA8D60(char *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  sub_1AACEC8E4(0);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v56 - v14;
  sub_1AADABCB8(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE9A60(0);
  v72 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADABD50(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AADABDE4(v3, v23, type metadata accessor for DateBins);
  v25 = *(v21 + 44);
  v65 = v23;
  v67 = v25;
  *&v23[v25] = 0;
  if (!a2)
  {
LABEL_28:
    v70 = 0;
LABEL_29:
    v28 = v65;
LABEL_32:
    sub_1AADABDE4(v28, a1, sub_1AADABD50);
    return v70;
  }

  if (!v70)
  {
    goto LABEL_29;
  }

  if (v70 < 0)
  {
    goto LABEL_37;
  }

  v56 = a1;
  v57 = v9;
  v66 = (v69 + 56);
  v26 = 1;
  v62 = v12;
  v63 = v10;
  v71 = v17;
  v27 = v64;
  v28 = v65;
  while (1)
  {
    sub_1AADAC07C(v28, v27, type metadata accessor for DateBins.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1AACE99D0(0);
        v31 = *(v27 + *(v30 + 64));
        sub_1AADABE4C(v27, type metadata accessor for CalendarBinningUnit);
      }

      else
      {
        v32 = *(*v27 + 16);

        v31 = v32 - 1;
      }
    }

    else
    {
      v31 = v27[2];
    }

    v33 = v26 - 1;
    if (v26 - 1 == v31)
    {
      v55 = v71;
      (*v66)(v71, 1, 1, v72);
      sub_1AADABE4C(v55, sub_1AADABCB8);
      v70 = v26 - 1;
LABEL_31:
      a1 = v56;
      goto LABEL_32;
    }

    sub_1AADAC07C(v28, v12, type metadata accessor for DateBins.Storage);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AACE99D0(0);
      v35 = *(v12 + *(v34 + 48));
      v36 = *(v12 + *(v34 + 64));
      sub_1AADABDE4(v12, v9, type metadata accessor for CalendarBinningUnit);
      result = v35 + v33;
      if (__OFADD__(v35, v33))
      {
        goto LABEL_34;
      }

      v37 = v59;
      sub_1AACE8E98(result, v59);
      sub_1AADABE4C(v9, type metadata accessor for CalendarBinningUnit);
      v38 = sub_1AAF8CA64();
      v39 = *(*(v38 - 8) + 32);
      v40 = v71;
      v39(v71, v37, v38);
      result = (v39)(&v40[*(v72 + 36)], &v37[*(v60 + 36)], v38);
      v41 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v43 = *v12;
      v44 = *(*v12 + 16);
      if (v33 >= (v44 - 1))
      {
        goto LABEL_33;
      }

      v61 = a2;
      v45 = sub_1AAF8CA64();
      v46 = *(v45 - 8);
      v47 = *(v46 + 16);
      v48 = v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v49 = *(v46 + 72);
      v50 = v71;
      result = v47(v71, v48 + v49 * v33, v45);
      if (v26 >= v44)
      {
        goto LABEL_35;
      }

      v47(&v50[*(v72 + 36)], v48 + v49 * v26, v45);

      v41 = v44 - 2;
      a2 = v61;
      v9 = v57;
    }

    v12 = v62;
    v27 = v64;
    v28 = v65;
LABEL_24:
    v51 = v71;
    v71[*(v72 + 40)] = v33 == v41;
    v52 = v66;
    *(v28 + v67) = v26;
    (*v52)(v51, 0, 1);
    v53 = v51;
    a1 = v68;
    sub_1AADABDE4(v53, v68, sub_1AACE9A60);
    sub_1AADABDE4(a1, a2, sub_1AACE9A60);
    if (v70 == v26)
    {
      goto LABEL_31;
    }

    a2 += *(v69 + 72);
    if (__OFADD__(v26++, 1))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v42 = v12[2];
  sub_1AAF8C844();
  result = sub_1AAF8C844();
  v41 = v42 - 1;
  if (!__OFSUB__(v42, 1))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void *sub_1AADA9404(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1AADA9504(void *result, char *a2, uint64_t a3, uint64_t a4)
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
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 304 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x130uLL);
      memmove(v11, v18, 0x130uLL);
      if (v14 == v10)
      {
        sub_1AADAC07C(__dst, v22, sub_1AAD45FFC);
        goto LABEL_23;
      }

      v11 += 304;
      sub_1AADAC07C(__dst, v22, sub_1AAD45FFC);
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1AADA96BC(void *result, char *a2, uint64_t a3, uint64_t a4)
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
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 312 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x138uLL);
      memmove(v11, v18, 0x138uLL);
      if (v14 == v10)
      {
        sub_1AAD9BFEC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 312;
      sub_1AAD9BFEC(__dst, v22);
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1AADA984C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v22 = result;
    v23 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = *(*(a4 + 48) + 8 * v16);
      v19 = (*(a4 + 56) + 544 * v16);
      memcpy(__dst, v19, sizeof(__dst));
      memcpy(__src, v19, sizeof(__src));
      *v9 = v18;
      memcpy(v9 + 1, __src, 0x220uLL);
      if (v12 == v8)
      {
        sub_1AADABF88(__dst, v24);
        v5 = v23;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 69;
      sub_1AADABF88(__dst, v24);
      result = v12;
      v20 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v11;
    }

    v10 = v21 - 1;
    v8 = result;
    v5 = v23;
LABEL_23:
    result = v22;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AADA9A00(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AAF90684();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AAD7C15C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AADA9C14(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1AADA9AF0(uint64_t a1)
{
  v3 = *v1;
  sub_1AAF90694();
  sub_1AAD7A88C(v14, a1);
  v4 = sub_1AAF906F4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {

    v9 = sub_1AAD79EF4(v8, a1);

    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AAD7BA6C();
    v12 = v14[0];
  }

  v13 = *(*(v12 + 48) + 8 * v6);
  sub_1AADA9D98(v6);
  result = v13;
  *v1 = v14[0];
  return result;
}

void sub_1AADA9C14(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AAF8FF84();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1AAF90684() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1AADA9D98(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AAF8FF84();
    v24 = v3;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v10 = v3;
      do
      {
        v11 = v4;
        v12 = *(*(v10 + 48) + 8 * v6);
        sub_1AAF90694();
        MEMORY[0x1AC5992C0](*(v12 + 16));
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12 + 32;

          do
          {
            sub_1AAD80DAC(v14, v30);
            sub_1AAD80DAC(v30, v27);
            if (v29)
            {
              v25[0] = v27[0];
              v25[1] = v27[1];
              v26 = v28;
              MEMORY[0x1AC5992C0](1);
              sub_1AAF90014();
              sub_1AAD80E08(v25);
            }

            else
            {
              v15 = *&v27[0];
              MEMORY[0x1AC5992C0](0);
              MEMORY[0x1AC5992C0](v15);
            }

            sub_1AAD80E5C(v30);
            v14 += 48;
            --v13;
          }

          while (v13);
        }

        else
        {
        }

        v16 = sub_1AAF906F4();

        v17 = v16 & v7;
        if (v2 >= v9)
        {
          v4 = v11;
          v10 = v24;
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v11;
          v10 = v24;
          if (v17 >= v9)
          {
            goto LABEL_18;
          }
        }

        if (v2 >= v17)
        {
LABEL_18:
          v18 = *(v10 + 48);
          v19 = (v18 + 8 * v2);
          v20 = (v18 + 8 * v6);
          if (v2 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
    v3 = v24;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }
}

uint64_t sub_1AADAA018(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AADAA0A4(v3);
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

void sub_1AADAA0B8(uint64_t a1)
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
        sub_1AADA9A00(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

uint64_t sub_1AADAA1B0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = sub_1AAF90684();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v14);
      v41 = sub_1AADAB098(v40, v4, v6, v5, v49);

      MEMORY[0x1AC59A0D0](v40, -1, -1);
      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    MEMORY[0x1EEE9AC00](v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = sub_1AAF90684();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_1AADAB254(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_1AACC9C00(v38);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}