void sub_1AAD7F078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1AAD81CA4(0);
  v4 = sub_1AAF90084();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_1AAD7FA24(*(*(v3 + 48) + 8 * (v11 | (v5 << 6))), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1AAD7F1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1AAD81D08(0, &qword_1EB4240F8, sub_1AAD81BA0, &type metadata for AccessibilityDataField);
  v4 = sub_1AAF90084();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v22 = *(v3 + 48) + 152 * (v19 | (v6 << 6));
      v23 = *(v22 + 112);
      v43 = *(v22 + 96);
      v44 = v23;
      v45 = *(v22 + 128);
      v46 = *(v22 + 144);
      v24 = *(v22 + 48);
      v39 = *(v22 + 32);
      v40 = v24;
      v25 = *(v22 + 80);
      v41 = *(v22 + 64);
      v42 = v25;
      v26 = *(v22 + 16);
      v37 = *v22;
      v38 = v26;
      sub_1AAF90694();
      sub_1AAF70EE0(v36);
      v27 = sub_1AAF906F4();
      v28 = -1 << *(v5 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 152 * v13;
      v15 = v44;
      *(v14 + 96) = v43;
      *(v14 + 112) = v15;
      *(v14 + 128) = v45;
      *(v14 + 144) = v46;
      v16 = v40;
      *(v14 + 32) = v39;
      *(v14 + 48) = v16;
      v17 = v42;
      *(v14 + 64) = v41;
      *(v14 + 80) = v17;
      v18 = v38;
      *v14 = v37;
      *(v14 + 16) = v18;
      ++*(v5 + 16);
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v21 = v7[v6];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero((v3 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1AAD7F4A4(uint64_t a1)
{
  v2 = *v1;
  sub_1AAD81D08(0, &qword_1ED9B0C68, sub_1AAD81A84, &type metadata for AccessibilityDataField.LabelKey);
  v3 = sub_1AAF90084();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + ((v14 | (v5 << 6)) << 6));
      v27 = *v17;
      v28 = v17[1];
      v29 = v17[2];
      v30 = v17[3];
      sub_1AAF90694();
      v18 = sub_1AAF906F4();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + (v12 << 6));
      *v13 = v27;
      v13[1] = v28;
      v13[2] = v29;
      v13[3] = v30;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      bzero((v2 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v26;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

uint64_t sub_1AAD7F718(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1AAD81614(0);
    v2 = sub_1AAF90094();
    v15 = v2;
    sub_1AAF8FFA4();
    if (sub_1AAF8FFD4())
    {
      sub_1AAF8D094();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1AAD7E95C(v9 + 1);
        }

        v2 = v15;
        sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B0]);
        result = sub_1AAF8F474();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1AAF8FFD4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1AAD7F93C(uint64_t a1, uint64_t a2)
{
  sub_1AAF8D094();
  sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B0]);
  sub_1AAF8F474();
  result = sub_1AAF8FF94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1AAD7FA24(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](*(a1 + 16));
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v13[6] = *(v5 + 96);
      v13[7] = v6;
      v13[8] = *(v5 + 128);
      v14 = *(v5 + 144);
      v7 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v7;
      v8 = *(v5 + 80);
      v13[4] = *(v5 + 64);
      v13[5] = v8;
      v9 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v9;
      sub_1AAD81BF4(v13, &v11);
      sub_1AAF70EE0(v12);
      sub_1AAD81C50(v13);
      v5 += 152;
      --v4;
    }

    while (v4);
  }

  sub_1AAF906F4();
  result = sub_1AAF8FF94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1AAD7FB38(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7DF18(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1AAD7BA6C();
      goto LABEL_12;
    }

    sub_1AAD7C8CC(v7 + 1);
  }

  v9 = *v4;
  sub_1AAF90694();
  sub_1AAD7A88C(v19, a1);
  v10 = sub_1AAF906F4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {

      v14 = sub_1AAD79EF4(v13, a1);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD7FCA8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1AAD7E220(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1AAD7BBD4();
      goto LABEL_16;
    }

    sub_1AAD7CBB4(v9 + 1);
  }

  v11 = *v5;
  sub_1AAF90694();
  sub_1AAF8F6C4();
  v12 = sub_1AAF906F4();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 16 * a3);
      v16 = *v15 == a1 && v15[1] == a2;
      if (v16 || (sub_1AAF904F4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v17 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = a1;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1AAF905A4();
  __break(1u);
}

unint64_t sub_1AAD7FE28(unint64_t result, char a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1AAD7E4A0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1AAD7BD50();
      result = v7;
      goto LABEL_12;
    }

    sub_1AAD7CE0C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1AAF90684();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != v4)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

void sub_1AAD7FF54(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7E6F4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      sub_1AAD7BEB0();
      a2 = v8;
      goto LABEL_12;
    }

    sub_1AAD7D02C(v6 + 1);
  }

  v9 = *v4;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  v10 = sub_1AAF906F4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v9 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD800A0(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7E95C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1AAD7C018();
      goto LABEL_12;
    }

    sub_1AAD7D26C(v7 + 1);
  }

  v9 = *v4;
  sub_1AAF8D094();
  sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B0]);
  v10 = sub_1AAF8F474();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1AAD81D68(&qword_1EB4240C0, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B8]);
    while ((sub_1AAF8F5F4() & 1) == 0)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD80288(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7EBE4(v9 + 1, a4, a5, a6);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      sub_1AAD7C178(a4, a5, a6);
      a2 = v11;
      goto LABEL_12;
    }

    sub_1AAD7D4D8(v9 + 1, a4, a5, a6);
  }

  v12 = *v7;
  v13 = sub_1AAF90684();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    while (*(*(v12 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = a1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD803D0(unsigned __int8 a1, unint64_t a2, char a3, __n128 a4)
{
  v5 = a1;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7EE10(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      sub_1AAD7C2CC();
      a2 = v8;
      goto LABEL_12;
    }

    sub_1AAD7D6D0(v6 + 1);
  }

  v9 = *v4;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v5);
  v10 = sub_1AAF906F4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD8051C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AAD7F078(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1AAD7C424();
        goto LABEL_25;
      }

      sub_1AAD7D908(v6 + 1);
    }

    v8 = *v3;
    sub_1AAF90694();
    v9 = *(a1 + 16);
    MEMORY[0x1AC5992C0](v9);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = a1 + 32;
      do
      {
        v12 = *(v11 + 112);
        v45[6] = *(v11 + 96);
        v45[7] = v12;
        v45[8] = *(v11 + 128);
        v46 = *(v11 + 144);
        v13 = *(v11 + 48);
        v45[2] = *(v11 + 32);
        v45[3] = v13;
        v14 = *(v11 + 80);
        v45[4] = *(v11 + 64);
        v45[5] = v14;
        v15 = *(v11 + 16);
        v45[0] = *v11;
        v45[1] = v15;
        sub_1AAD81BF4(v45, v43);
        sub_1AAF70EE0(v41);
        sub_1AAD81C50(v45);
        v11 += 152;
        --v10;
      }

      while (v10);
    }

    v16 = sub_1AAF906F4();
    v17 = v8 + 56;
    v18 = -1 << *(v8 + 32);
    a2 = v16 & ~v18;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      while (1)
      {
        v20 = *(*(v8 + 48) + 8 * a2);
        if (*(v20 + 16) == v9)
        {
          break;
        }

LABEL_14:
        a2 = (a2 + 1) & v19;
        if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v9 && v20 != a1)
      {

        v21 = 0;
        v22 = 32;
        while (v21 < *(v20 + 16))
        {
          v23 = *(v20 + v22 + 16);
          v41[0] = *(v20 + v22);
          v41[1] = v23;
          v24 = *(v20 + v22 + 32);
          v25 = *(v20 + v22 + 48);
          v26 = *(v20 + v22 + 80);
          v41[4] = *(v20 + v22 + 64);
          v41[5] = v26;
          v41[2] = v24;
          v41[3] = v25;
          v27 = *(v20 + v22 + 96);
          v28 = *(v20 + v22 + 112);
          v29 = *(v20 + v22 + 128);
          v42 = *(v20 + v22 + 144);
          v41[7] = v28;
          v41[8] = v29;
          v41[6] = v27;
          if (v21 >= *(a1 + 16))
          {
            goto LABEL_28;
          }

          v30 = *(a1 + v22 + 112);
          v43[6] = *(a1 + v22 + 96);
          v43[7] = v30;
          v43[8] = *(a1 + v22 + 128);
          v44 = *(a1 + v22 + 144);
          v31 = *(a1 + v22 + 48);
          v43[2] = *(a1 + v22 + 32);
          v43[3] = v31;
          v32 = *(a1 + v22 + 80);
          v43[4] = *(a1 + v22 + 64);
          v43[5] = v32;
          v33 = *(a1 + v22 + 16);
          v43[0] = *(a1 + v22);
          v43[1] = v33;
          sub_1AAD81BF4(v41, v40);
          sub_1AAD81BF4(v43, v40);
          v34 = sub_1AAF72168(v41, v43);
          sub_1AAD81C50(v43);
          sub_1AAD81C50(v41);
          if ((v34 & 1) == 0)
          {

            v17 = v8 + 56;
            goto LABEL_14;
          }

          ++v21;
          v22 += 152;
          if (v9 == v21)
          {

            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_24:
      sub_1AAD81AD8();
      sub_1AAF905A4();
      __break(1u);
    }
  }

LABEL_25:
  v35 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v35 + 48) + 8 * a2) = a1;
  v36 = *(v35 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v35 + 16) = v38;
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1AAD807F4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7F1D0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1AAD7C568();
      goto LABEL_12;
    }

    sub_1AAD7DA28(v7 + 1);
  }

  v9 = *v3;
  sub_1AAF90694();
  sub_1AAF70EE0(v32);
  v10 = sub_1AAF906F4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 152 * a2;
      v14 = *(v13 + 16);
      v32[0] = *v13;
      v32[1] = v14;
      v15 = *(v13 + 80);
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      v32[4] = *(v13 + 64);
      v32[5] = v15;
      v32[2] = v17;
      v32[3] = v16;
      v18 = *(v13 + 96);
      v19 = *(v13 + 112);
      v20 = *(v13 + 128);
      v33 = *(v13 + 144);
      v32[7] = v19;
      v32[8] = v20;
      v32[6] = v18;
      sub_1AAD81BF4(v32, v31);
      v21 = sub_1AAF72168(v32, a1);
      sub_1AAD81C50(v32);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 152 * a2;
  v24 = *(a1 + 80);
  *(v23 + 64) = *(a1 + 64);
  *(v23 + 80) = v24;
  v25 = *(a1 + 48);
  *(v23 + 32) = *(a1 + 32);
  *(v23 + 48) = v25;
  *(v23 + 144) = *(a1 + 144);
  v26 = *(a1 + 128);
  *(v23 + 112) = *(a1 + 112);
  *(v23 + 128) = v26;
  *(v23 + 96) = *(a1 + 96);
  v27 = *(a1 + 16);
  *v23 = *a1;
  *(v23 + 16) = v27;
  v28 = *(v22 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v22 + 16) = v30;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AAF905A4();
  __break(1u);
}

void sub_1AAD809E0(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AAD7F4A4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1AAD7C730();
        goto LABEL_19;
      }

      sub_1AAD7DCD4(v6 + 1);
    }

    v8 = *v3;
    sub_1AAF90694();
    v9 = sub_1AAF906F4();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v27 = ~v10;
      v26 = *(a1 + 49) | ((*(a1 + 53) | (*(a1 + 55) << 16)) << 32);
      do
      {
        v11 = (*(v8 + 48) + (a2 << 6));
        v13 = v11[2];
        v12 = v11[3];
        v14 = v11[1];
        v28[0] = *v11;
        v28[1] = v14;
        v29 = v13;
        v30 = v12;
        if ((((v12 >> 8) | (((DWORD1(v12) >> 8) | (SBYTE7(v12) << 16)) << 32)) & 0x8000000000000000) != 0)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

          v16 = v29;
          v17 = v30;
          sub_1AACD7304(*&v28[0], *(&v28[0] + 1), v14 & 1);

          sub_1AACD7304(v16, *(&v16 + 1), v17 & 1);

          if ((sub_1AAF8EA14() & 1) == 0)
          {
            sub_1AAD81A30(v28);
            goto LABEL_11;
          }
        }

        else
        {
          if (a1[6] < 0)
          {
            goto LABEL_11;
          }

          sub_1AACD7304(*&v28[0], *(&v28[0] + 1), v14 & 1);
        }

        v15 = sub_1AAF8EA14();
        sub_1AAD81A30(v28);
        if (v15)
        {
          goto LABEL_22;
        }

LABEL_11:
        a2 = (a2 + 1) & v27;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v18 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = (*(v18 + 48) + (a2 << 6));
  v20 = *(a1 + 1);
  *v19 = *a1;
  v19[1] = v20;
  v21 = *(a1 + 3);
  v19[2] = *(a1 + 2);
  v19[3] = v21;
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_22:
    sub_1AAF905A4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }
}

uint64_t sub_1AAD80CD0(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  v4 = sub_1AAD80D58();
  result = MEMORY[0x1AC598680](v3, &type metadata for ChartContentID, v4);
  v9 = result;
  if (v3)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_1AAD7A964(&v8, v7);

      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

unint64_t sub_1AAD80D58()
{
  result = qword_1ED9B0260;
  if (!qword_1ED9B0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0260);
  }

  return result;
}

uint64_t sub_1AAD80EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAD80F10()
{
  if (!qword_1EB4240A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4240A8);
    }
  }
}

uint64_t sub_1AAD80F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1AAD7ABF4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1AAD80FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E6530];
    v6 = MEMORY[0x1E69E6540];
    do
    {
      v7 = *v4++;
      sub_1AAD7B0A0(&v8, v7, &qword_1EB4240D0, v5, v6);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1AAD81080(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  sub_1AAD81AD8();
  v5 = v4;
  v6 = sub_1AAD81B28();
  result = MEMORY[0x1AC598680](v3, v5, v6);
  v11 = result;
  if (v3)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;

      sub_1AAD7B298(&v10, v9);

      --v3;
    }

    while (v3);
    return v11;
  }

  return result;
}

uint64_t sub_1AAD81110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AAD81BA0();
  result = MEMORY[0x1AC598680](v2, &type metadata for AccessibilityDataField, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v15[8] = *(v5 + 128);
      v16 = *(v5 + 144);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_1AAD81BF4(v15, v12);
      sub_1AAD7B544(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v12[8] = v10[8];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_1AAD81C50(v12);
      v5 += 152;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t sub_1AAD81218(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AAD7AAA4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AAD812B0(uint64_t a1, void (*a2)(double *__return_ptr))
{
  a2(&v34);
  if ((v36 & 1) == 0)
  {
    v4 = v34;
    v3 = v35;
    if (*(a1 + 16))
    {
      v5 = v34;
    }

    else
    {
      v6 = *a1;
      v5 = *(a1 + 8);
      if (*a1 >= v34)
      {
        v6 = v34;
      }

      if (v5 < v34)
      {
        v5 = v34;
      }

      v4 = v6;
    }

    if (v4 >= v35)
    {
      v4 = v35;
    }

    if (v5 >= v35)
    {
      v3 = v5;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = 0;
  }

  if ((v39 & 1) == 0)
  {
    v8 = v37;
    v7 = v38;
    if (*(a1 + 40))
    {
      v9 = v37;
    }

    else
    {
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      if (v10 >= v37)
      {
        v10 = v37;
      }

      if (v9 < v37)
      {
        v9 = v37;
      }

      v8 = v10;
    }

    if (v8 >= v38)
    {
      v8 = v38;
    }

    if (v9 >= v38)
    {
      v7 = v9;
    }

    *(a1 + 24) = v8;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
  }

  sub_1AADC88CC(v11);

  sub_1AAD794EC(v12);
  if ((v42 & 1) == 0)
  {
    v14 = v40;
    v13 = v41;
    if (*(a1 + 88))
    {
      v15 = v40;
    }

    else
    {
      v16 = *(a1 + 72);
      v15 = *(a1 + 80);
      if (v16 >= v40)
      {
        v16 = v40;
      }

      if (v15 < v40)
      {
        v15 = v40;
      }

      v14 = v16;
    }

    if (v14 >= v41)
    {
      v14 = v41;
    }

    if (v15 >= v41)
    {
      v13 = v15;
    }

    *(a1 + 72) = v14;
    *(a1 + 80) = v13;
    *(a1 + 88) = 0;
  }

  if ((v45 & 1) == 0)
  {
    v18 = v43;
    v17 = v44;
    if (*(a1 + 112))
    {
      v19 = v43;
    }

    else
    {
      v20 = *(a1 + 96);
      v19 = *(a1 + 104);
      if (v20 >= v43)
      {
        v20 = v43;
      }

      if (v19 < v43)
      {
        v19 = v43;
      }

      v18 = v20;
    }

    if (v18 >= v44)
    {
      v18 = v44;
    }

    if (v19 >= v44)
    {
      v17 = v19;
    }

    *(a1 + 96) = v18;
    *(a1 + 104) = v17;
    *(a1 + 112) = 0;
  }

  sub_1AADC88CC(v21);

  sub_1AAD794EC(v22);
  if ((v48 & 1) == 0)
  {
    v24 = v46;
    v23 = v47;
    if (*(a1 + 160))
    {
      v25 = v46;
    }

    else
    {
      v26 = *(a1 + 144);
      v25 = *(a1 + 152);
      if (v26 >= v46)
      {
        v26 = v46;
      }

      if (v25 < v46)
      {
        v25 = v46;
      }

      v24 = v26;
    }

    if (v24 >= v47)
    {
      v24 = v47;
    }

    if (v25 >= v47)
    {
      v23 = v25;
    }

    *(a1 + 144) = v24;
    *(a1 + 152) = v23;
    *(a1 + 160) = 0;
  }

  if ((v51 & 1) == 0)
  {
    v28 = v49;
    v27 = v50;
    if (*(a1 + 184))
    {
      v29 = v49;
    }

    else
    {
      v30 = *(a1 + 168);
      v29 = *(a1 + 176);
      if (v30 >= v49)
      {
        v30 = v49;
      }

      if (v29 < v49)
      {
        v29 = v49;
      }

      v28 = v30;
    }

    if (v28 >= v50)
    {
      v28 = v50;
    }

    if (v29 >= v50)
    {
      v27 = v29;
    }

    *(a1 + 168) = v28;
    *(a1 + 176) = v27;
    *(a1 + 184) = 0;
  }

  sub_1AADC88CC(v31);

  sub_1AAD794EC(v32);
  return sub_1AAD590B4(&v34);
}

uint64_t sub_1AAD81520(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AACD6030(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAD815A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AACD6030(0, a2, a3, a4, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAD81614(uint64_t a1)
{
  if (!qword_1EB4240C8)
  {
    sub_1AAF8D094();
    sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8], MEMORY[0x1E697A3B0]);
    v1 = sub_1AAF900B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4240C8);
    }
  }
}

unint64_t sub_1AAD816A8()
{
  result = qword_1EB4240E8;
  if (!qword_1EB4240E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4240E8);
  }

  return result;
}

uint64_t sub_1AAD816FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarksConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAD81810()
{
  result = qword_1ED9B2768;
  if (!qword_1ED9B2768)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B2768);
  }

  return result;
}

unint64_t sub_1AAD81A84()
{
  result = qword_1ED9B0F30;
  if (!qword_1ED9B0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F30);
  }

  return result;
}

void sub_1AAD81AD8()
{
  if (!qword_1ED9B0CA0)
  {
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0CA0);
    }
  }
}

unint64_t sub_1AAD81B28()
{
  result = qword_1ED9B0C98;
  if (!qword_1ED9B0C98)
  {
    sub_1AAD81AD8();
    sub_1AAD81BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0C98);
  }

  return result;
}

unint64_t sub_1AAD81BA0()
{
  result = qword_1ED9B0F18;
  if (!qword_1ED9B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F18);
  }

  return result;
}

void sub_1AAD81CA4(uint64_t a1)
{
  if (!qword_1EB4240F0)
  {
    sub_1AAD81AD8();
    sub_1AAD81B28();
    v1 = sub_1AAF900B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4240F0);
    }
  }
}

void sub_1AAD81D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1AAF900B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAD81D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AAD81DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v200 = a5;
  v207 = a4;
  v208 = a3;
  v201 = a2;
  v197 = sub_1AAF8D554();
  v204 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1AAF8D5F4();
  v203 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1AAF8CFB4();
  v202 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v198 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
  v219 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v199 = (&v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v205 = &v193 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v206 = &v193 - v14;
  sub_1AAD9A864(0, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
  v218 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v217 = (&v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v216 = (&v193 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v215 = (&v193 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v214 = &v193 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v209 = a1;
  if (v23)
  {
    v241[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v213 = *(a1 + 16);
    if (v23 > v213)
    {
      goto LABEL_133;
    }

    v25 = 0;
    v24 = v241[0];
    *&v211 = a1 + ((*(v219 + 80) + 32) & ~*(v219 + 80));
    *&v212 = v23;
    do
    {
      if (v213 == v25)
      {
        goto LABEL_128;
      }

      v26 = v218;
      v27 = *(v218 + 48);
      v28 = v211 + *(v219 + 72) * v25;
      v29 = v214;
      v220 = v24;
      sub_1AAD9A440(v28, v214 + v27, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v30 = v215;
      *v215 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v31 = v216;
      sub_1AAD9AB7C(v30, v216, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v34 = v217;
      sub_1AAD9ABF0(v30, v217, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v35 = *v34;
      v24 = v220;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v241[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v241[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v212 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v241[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v241);

  v42 = v241[0];
  v43 = v241[0] + 64;
  v44 = 1 << *(v241[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v241[0] + 64);
  v47 = (v44 + 63) >> 6;
  v217 = (v204 + 16);
  v216 = (v203 + 8);
  v215 = (v202 + 8);

  v214 = xmmword_1AAF92AB0;
  v48 = v210;
  v220 = v42;
  while (v46)
  {
LABEL_22:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = (v41 << 9) | (8 * v50);
    v52 = v42[7];
    v53 = *(v42[6] + v51);
    v54 = *(v52 + v51);
    v55 = v48[2];
    v56 = *(v55 + 16);

    if (v56 && (, sub_1AADB0938(v53), v58 = v57, , (v58 & 1) != 0) && *(v55 + 16) && (v59 = sub_1AADB0938(v53), (v60 & 1) != 0))
    {
      v61 = *(*(v55 + 56) + 8 * v59);
      if (v200)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v62 = v210;
        v63 = *(v209 + 16);
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = v210;
        v80 = *v210;
        v81 = *(*v210 + 16);
        if (v61 >= v81)
        {
          goto LABEL_145;
        }

        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        v63 = *(v209 + 16);
        if (v54 >= v63)
        {
          goto LABEL_147;
        }

        v82 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        v83 = *(v219 + 72);
        v84 = *(v80 + v82 + v83 * v61 + 12);
        v85 = *(v209 + v82 + v83 * v54 + 12);
        if (v84 != -1 && v85 != -1 && v84 == v85)
        {
          v107 = *(v219 + 80);
          goto LABEL_83;
        }
      }

      if (v54 >= v63)
      {
        goto LABEL_135;
      }

      v203 = *(*(v55 + 56) + 8 * v59);
      v213 = *(v219 + 80);
      v88 = v62;
      v218 = *(v219 + 72);
      sub_1AAD9A440(v209 + ((v213 + 32) & ~v213) + v218 * v54, v205, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v88[3];
      v228 = v90;
      v92 = sub_1AADB0938(v53);
      v93 = *(v90 + 16);
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_136;
      }

      v96 = v91;
      if (*(v90 + 24) >= v95)
      {
        v99 = v208;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v169 = v92;
        sub_1AAD948F8(&qword_1EB424150, &_s8ResourceVN);
        v92 = v169;
      }

      else
      {
        sub_1AAD89DD4(v95, isUniquelyReferenced_nonNull_native, &qword_1EB424150, &_s8ResourceVN);
        v97 = sub_1AADB0938(v53);
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_148;
        }

        v92 = v97;
      }

      v99 = v208;
LABEL_58:
      if ((v96 & 1) == 0)
      {
        goto LABEL_137;
      }

      v100 = *(v228 + 56);
      *&v212 = v92;
      v101 = *(v100 + 8 * v92);
      sub_1AAD9A534(v205 + 448, v227, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v102 = *(v99 + 184);
      if (v102)
      {
        if (*(v99 + 152))
        {
          if (*(v99 + 176))
          {
            v103 = 0;
            v104 = *(v102 + 16);
            if (v104)
            {
              v105 = *(v99 + 184);
            }

            else
            {
              v105 = 0;
            }

            if (v104)
            {
              v106 = 2;
            }

            else
            {
              v106 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v105 = *(v99 + 160);
            v103 = *(v99 + 168);
            v106 = 1;
          }
        }

        else
        {
          v106 = 0;
          v105 = *(v99 + 136);
          v103 = *(v99 + 144);
        }
      }

      else
      {
        v105 = 0;
        v103 = 0;
        v106 = 255;
      }

      sub_1AAD880F8(v227, v105, v103, v106, v225);
      sub_1AAD9A5B4(v226);
      memcpy(v241, v226, 0x1E0uLL);
      sub_1AADB35BC(v225, v241, *(v205 + 528), *(v205 + 536), *(v205 + 544), *(v205 + 552), v99, v207, v224);
      swift_unknownObjectRetain();
      *&v211 = sub_1AAF8CF34();
      v108 = sub_1AAF8CDC4();
      v204 = sub_1AAF8CF54();
      if (!(*(*(v108 - 8) + 48))(v109, 1, v108))
      {
        sub_1AAD9A6F4(0);
        *(swift_allocObject() + 16) = v214;
        sub_1AACED220(v224, &v221);
        sub_1AACBB650(0, &qword_1EB424650, MEMORY[0x1E697A3C0], 1);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v204)(&v222, 0);
      (v211)(&v223, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v211 = v101;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v110 = v197;
      v111 = sub_1AAD0F5D8(v197, qword_1EB432060);
      (*v217)(v196, v111, v110);
      v112 = v194;
      sub_1AAF8D5E4();
      v113 = v195;
      v114 = v198;
      sub_1AAF8CF94();
      (*v216)(v112, v113);
      (*v215)(v114, v193);
      sub_1AAD9A5F8(v224);
      sub_1AAD9A64C(v225);
      sub_1AAD9A3D0(v227, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v205, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v115 = v228;
      if (v211)
      {
        *(*(v228 + 56) + 8 * v212) = v211;
      }

      else
      {
        v116 = v212;
        sub_1AAD9A6A0(*(v228 + 48) + 8 * v212);
        sub_1AAD92370(v116, v115, v117);
      }

      v62 = v210;
      v210[3] = v115;
      if (v200)
      {
        v118 = *(v209 + 16);
        v83 = v218;
        v107 = v213;
        goto LABEL_92;
      }

      v61 = v203;
      v83 = v218;
      v107 = v213;
      if ((v203 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v80 = *v62;
      v81 = *(*v62 + 16);
LABEL_83:
      if (v61 >= v81)
      {
        goto LABEL_142;
      }

      v118 = *(v209 + 16);
      if (v54 >= v118)
      {
        goto LABEL_143;
      }

      v119 = (v107 + 32) & ~v107;
      v120 = *(v80 + v119 + v83 * v61 + 8);
      v121 = *(v209 + v119 + v83 * v54 + 8);
      if (v120 != -1 && v121 != -1 && v120 == v121)
      {

        v48 = v210;
        v42 = v220;
      }

      else
      {
LABEL_92:
        if (v54 >= v118)
        {
          goto LABEL_138;
        }

        v124 = v62;
        sub_1AAD9A440(v209 + ((v107 + 32) & ~v107) + v83 * v54, v199, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v124[3];
        v227[0] = v126;
        v128 = sub_1AADB0938(v53);
        v129 = *(v126 + 16);
        v130 = (v127 & 1) == 0;
        v131 = v129 + v130;
        if (__OFADD__(v129, v130))
        {
          goto LABEL_139;
        }

        v132 = v127;
        if (*(v126 + 24) < v131)
        {
          sub_1AAD89DD4(v131, v125, &qword_1EB424150, &_s8ResourceVN);
          v133 = sub_1AADB0938(v53);
          if ((v132 & 1) != (v134 & 1))
          {
            goto LABEL_148;
          }

          v128 = v133;
          goto LABEL_97;
        }

        v135 = v208;
        if ((v125 & 1) == 0)
        {
          sub_1AAD948F8(&qword_1EB424150, &_s8ResourceVN);
LABEL_97:
          v135 = v208;
        }

        if ((v132 & 1) == 0)
        {
          goto LABEL_140;
        }

        v213 = v227[0];
        v136 = *(v227[0] + 56);
        v218 = v128;
        v137 = *(v136 + 8 * v128);
        v138 = *(v135 + 32);
        v235 = *(v135 + 16);
        v236 = v138;
        v237 = *(v135 + 48);
        v139 = v199;
        v140 = v199[8];
        v240[6] = v199[7];
        v240[7] = v140;
        v240[8] = v199[9];
        v141 = v199[4];
        v240[2] = v199[3];
        v240[3] = v141;
        v142 = v199[5];
        v240[5] = v199[6];
        v240[4] = v142;
        v143 = v199[1];
        v240[1] = v199[2];
        v240[0] = v143;
        v144 = v135;
        v145 = sub_1AADC6AE0(v240);
        v146 = *(v144 + 56);
        LODWORD(v147) = v145;
        v212 = v147;
        v148 = *(v144 + 72);
        v232 = v146;
        v233 = v148;
        v234 = *(v144 + 88);
        v149 = v139[17];
        v239[6] = v139[16];
        v239[7] = v149;
        v239[8] = v139[18];
        v150 = v139[13];
        v239[2] = v139[12];
        v239[3] = v150;
        v151 = v139[14];
        v239[5] = v139[15];
        v239[4] = v151;
        v152 = v139[10];
        v239[1] = v139[11];
        v239[0] = v152;
        LODWORD(v153) = sub_1AADC6AE0(v239);
        v211 = v153;
        v154 = *(v144 + 112);
        v229 = *(v144 + 96);
        v230 = v154;
        v231 = *(v144 + 128);
        v155 = v139[26];
        v238[6] = v139[25];
        v238[7] = v155;
        v238[8] = v139[27];
        v156 = v139[22];
        v238[2] = v139[21];
        v238[3] = v156;
        v157 = v139[23];
        v238[5] = v139[24];
        v238[4] = v157;
        v158 = v139[19];
        v238[1] = v139[20];
        v238[0] = v158;
        v159 = sub_1AADC6AE0(v238);
        *&v160 = __PAIR64__(v211, v212);
        *(&v160 + 1) = v159;
        v212 = v160;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v161 = sub_1AAF8CC64();
        *(v162 + 32) = v212;
        v161(v226, 0);
        swift_unknownObjectRelease();
        v163 = v139;
        if ((v139[39] & 1) == 0)
        {
          *&v212 = *(v139 + 76);
          v164 = *(v139 + 77);

          v165 = sub_1AAF8CC64();
          *(v166 + 16) = v212;
          *(v166 + 24) = v164;
          v165(v226, 0);

          v163 = v199;
        }

        sub_1AAD9A4C4(v163, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
        v167 = v213;
        *(*(v213 + 56) + 8 * v218) = v137;

        v48 = v210;
        v210[3] = v167;
        v42 = v220;
      }
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v54 >= *(v209 + 16))
      {
        goto LABEL_130;
      }

      v218 = v46;
      v64 = v206;
      sub_1AAD9A440(v209 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v54, v206, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v65 = sub_1AADBEC88(v64, v208, v207);
      sub_1AAD9A4C4(v64, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v66 = v210;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66[3];
      *&v226[0] = v68;
      v69 = sub_1AADB0938(v53);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_131;
      }

      v75 = v70;
      if (*(v68 + 24) >= v74)
      {
        if (v67)
        {
          v77 = *&v226[0];
          if (v70)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v168 = v69;
          sub_1AAD948F8(&qword_1EB424150, &_s8ResourceVN);
          v69 = v168;
          v77 = *&v226[0];
          if (v75)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AAD89DD4(v74, v67, &qword_1EB424150, &_s8ResourceVN);
        v69 = sub_1AADB0938(v53);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_148;
        }

        v77 = *&v226[0];
        if (v75)
        {
LABEL_15:
          *(v77[7] + 8 * v69) = v65;

          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v77[(v69 >> 6) + 8] |= 1 << v69;
      *(v77[6] + 8 * v69) = v53;
      *(v77[7] + 8 * v69) = v65;
      v78 = v77[2];
      v73 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v73)
      {
        goto LABEL_132;
      }

      v77[2] = v79;
LABEL_16:
      v48 = v210;
      v210[3] = v77;
      v42 = v220;
      v46 = v218;
    }
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_127;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v49);
    ++v41;
    if (v46)
    {
      v41 = v49;
      goto LABEL_22;
    }
  }

  v170 = v48;

  v171 = v170[2];
  v172 = 1 << *(v171 + 32);
  v173 = -1;
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  v174 = v173 & *(v171 + 64);
  v175 = (v172 + 63) >> 6;

  v176 = 0;
  while (v174)
  {
LABEL_117:
    v178 = __clz(__rbit64(v174));
    v174 &= v174 - 1;
    v179 = *(*(v171 + 48) + ((v176 << 9) | (8 * v178)));
    if (v42[2])
    {

      sub_1AADB0938(v180);
      v182 = v181;

      if (v182)
      {

        continue;
      }
    }

    else
    {
    }

    v183 = v210;
    v184 = sub_1AADB0938(v179);
    v186 = v185;

    if (v186)
    {
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v188 = v183[3];
      v227[0] = v188;
      if (!v187)
      {
        sub_1AAD948F8(&qword_1EB424150, &_s8ResourceVN);
        v188 = v227[0];
      }

      v189 = *(*(v188 + 56) + 8 * v184);
      sub_1AAD92370(v184, v188, v190);
      v183[3] = v188;
      *&v226[0] = v189;
      off_1EE75C038(v226, v208);
      swift_unknownObjectRelease();
      v42 = v220;
    }

    else
    {
      v42 = v220;
    }
  }

  while (1)
  {
    v177 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      break;
    }

    if (v177 >= v175)
    {

      v191 = v210;

      v192 = v201;
      *v191 = v209;
      v191[1] = v192;
      v191[2] = v42;
      return;
    }

    v174 = *(v171 + 64 + 8 * v177);
    ++v176;
    if (v174)
    {
      v176 = v177;
      goto LABEL_117;
    }
  }

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
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_1AAF905B4();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_1AAD831D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v200 = a5;
  v207 = a4;
  v208 = a3;
  v201 = a2;
  v197 = sub_1AAF8D554();
  v204 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1AAF8D5F4();
  v203 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1AAF8CFB4();
  v202 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v198 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048, type metadata accessor for Resolved3DContentList.Item);
  v219 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v199 = (&v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v205 = &v193 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v206 = &v193 - v14;
  sub_1AAD9A864(0, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
  v218 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v217 = (&v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v216 = (&v193 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v215 = (&v193 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v214 = &v193 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v209 = a1;
  if (v23)
  {
    v241[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v213 = *(a1 + 16);
    if (v23 > v213)
    {
      goto LABEL_133;
    }

    v25 = 0;
    v24 = v241[0];
    *&v211 = a1 + ((*(v219 + 80) + 32) & ~*(v219 + 80));
    *&v212 = v23;
    do
    {
      if (v213 == v25)
      {
        goto LABEL_128;
      }

      v26 = v218;
      v27 = *(v218 + 48);
      v28 = v211 + *(v219 + 72) * v25;
      v29 = v214;
      v220 = v24;
      sub_1AAD9A440(v28, v214 + v27, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v30 = v215;
      *v215 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v31 = v216;
      sub_1AAD9AB7C(v30, v216, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v34 = v217;
      sub_1AAD9ABF0(v30, v217, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v35 = *v34;
      v24 = v220;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v241[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v241[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v212 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v241[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v241);

  v42 = v241[0];
  v43 = v241[0] + 64;
  v44 = 1 << *(v241[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v241[0] + 64);
  v47 = (v44 + 63) >> 6;
  v217 = (v204 + 16);
  v216 = (v203 + 8);
  v215 = (v202 + 8);

  v214 = xmmword_1AAF92AB0;
  v48 = v210;
  v220 = v42;
  while (v46)
  {
LABEL_22:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = (v41 << 9) | (8 * v50);
    v52 = v42[7];
    v53 = *(v42[6] + v51);
    v54 = *(v52 + v51);
    v55 = v48[2];
    v56 = *(v55 + 16);

    if (v56 && (, sub_1AADB0938(v53), v58 = v57, , (v58 & 1) != 0) && *(v55 + 16) && (v59 = sub_1AADB0938(v53), (v60 & 1) != 0))
    {
      v61 = *(*(v55 + 56) + 8 * v59);
      if (v200)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v62 = v210;
        v63 = *(v209 + 16);
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = v210;
        v80 = *v210;
        v81 = *(*v210 + 16);
        if (v61 >= v81)
        {
          goto LABEL_145;
        }

        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        v63 = *(v209 + 16);
        if (v54 >= v63)
        {
          goto LABEL_147;
        }

        v82 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        v83 = *(v219 + 72);
        v84 = *(v80 + v82 + v83 * v61 + 12);
        v85 = *(v209 + v82 + v83 * v54 + 12);
        if (v84 != -1 && v85 != -1 && v84 == v85)
        {
          v107 = *(v219 + 80);
          goto LABEL_83;
        }
      }

      if (v54 >= v63)
      {
        goto LABEL_135;
      }

      v203 = *(*(v55 + 56) + 8 * v59);
      v213 = *(v219 + 80);
      v88 = v62;
      v218 = *(v219 + 72);
      sub_1AAD9A440(v209 + ((v213 + 32) & ~v213) + v218 * v54, v205, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v88[3];
      v228 = v90;
      v92 = sub_1AADB0938(v53);
      v93 = *(v90 + 16);
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_136;
      }

      v96 = v91;
      if (*(v90 + 24) >= v95)
      {
        v99 = v208;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v169 = v92;
        sub_1AAD948F8(&qword_1EB424168, &_s8ResourceVN_0);
        v92 = v169;
      }

      else
      {
        sub_1AAD89DD4(v95, isUniquelyReferenced_nonNull_native, &qword_1EB424168, &_s8ResourceVN_0);
        v97 = sub_1AADB0938(v53);
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_148;
        }

        v92 = v97;
      }

      v99 = v208;
LABEL_58:
      if ((v96 & 1) == 0)
      {
        goto LABEL_137;
      }

      v100 = *(v228 + 56);
      *&v212 = v92;
      v101 = *(v100 + 8 * v92);
      sub_1AAD9A534(v205 + 448, v227, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v102 = *(v99 + 184);
      if (v102)
      {
        if (*(v99 + 152))
        {
          if (*(v99 + 176))
          {
            v103 = 0;
            v104 = *(v102 + 16);
            if (v104)
            {
              v105 = *(v99 + 184);
            }

            else
            {
              v105 = 0;
            }

            if (v104)
            {
              v106 = 2;
            }

            else
            {
              v106 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v105 = *(v99 + 160);
            v103 = *(v99 + 168);
            v106 = 1;
          }
        }

        else
        {
          v106 = 0;
          v105 = *(v99 + 136);
          v103 = *(v99 + 144);
        }
      }

      else
      {
        v105 = 0;
        v103 = 0;
        v106 = 255;
      }

      sub_1AAD880F8(v227, v105, v103, v106, v225);
      sub_1AAD9A5B4(v226);
      memcpy(v241, v226, 0x1E0uLL);
      sub_1AADB35BC(v225, v241, *(v205 + 528), *(v205 + 536), *(v205 + 544), *(v205 + 552), v99, v207, v224);
      swift_unknownObjectRetain();
      *&v211 = sub_1AAF8CF34();
      v108 = sub_1AAF8CDC4();
      v204 = sub_1AAF8CF54();
      if (!(*(*(v108 - 8) + 48))(v109, 1, v108))
      {
        sub_1AAD9A6F4(0);
        *(swift_allocObject() + 16) = v214;
        sub_1AACED220(v224, &v221);
        sub_1AACBB650(0, &qword_1EB424650, MEMORY[0x1E697A3C0], 1);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v204)(&v222, 0);
      (v211)(&v223, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v211 = v101;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v110 = v197;
      v111 = sub_1AAD0F5D8(v197, qword_1EB432060);
      (*v217)(v196, v111, v110);
      v112 = v194;
      sub_1AAF8D5E4();
      v113 = v195;
      v114 = v198;
      sub_1AAF8CF94();
      (*v216)(v112, v113);
      (*v215)(v114, v193);
      sub_1AAD9A5F8(v224);
      sub_1AAD9A64C(v225);
      sub_1AAD9A3D0(v227, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v205, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v115 = v228;
      if (v211)
      {
        *(*(v228 + 56) + 8 * v212) = v211;
      }

      else
      {
        v116 = v212;
        sub_1AAD9A6A0(*(v228 + 48) + 8 * v212);
        sub_1AAD92370(v116, v115, v117);
      }

      v62 = v210;
      v210[3] = v115;
      if (v200)
      {
        v118 = *(v209 + 16);
        v83 = v218;
        v107 = v213;
        goto LABEL_92;
      }

      v61 = v203;
      v83 = v218;
      v107 = v213;
      if ((v203 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v80 = *v62;
      v81 = *(*v62 + 16);
LABEL_83:
      if (v61 >= v81)
      {
        goto LABEL_142;
      }

      v118 = *(v209 + 16);
      if (v54 >= v118)
      {
        goto LABEL_143;
      }

      v119 = (v107 + 32) & ~v107;
      v120 = *(v80 + v119 + v83 * v61 + 8);
      v121 = *(v209 + v119 + v83 * v54 + 8);
      if (v120 != -1 && v121 != -1 && v120 == v121)
      {

        v48 = v210;
        v42 = v220;
      }

      else
      {
LABEL_92:
        if (v54 >= v118)
        {
          goto LABEL_138;
        }

        v124 = v62;
        sub_1AAD9A440(v209 + ((v107 + 32) & ~v107) + v83 * v54, v199, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v124[3];
        v227[0] = v126;
        v128 = sub_1AADB0938(v53);
        v129 = *(v126 + 16);
        v130 = (v127 & 1) == 0;
        v131 = v129 + v130;
        if (__OFADD__(v129, v130))
        {
          goto LABEL_139;
        }

        v132 = v127;
        if (*(v126 + 24) < v131)
        {
          sub_1AAD89DD4(v131, v125, &qword_1EB424168, &_s8ResourceVN_0);
          v133 = sub_1AADB0938(v53);
          if ((v132 & 1) != (v134 & 1))
          {
            goto LABEL_148;
          }

          v128 = v133;
          goto LABEL_97;
        }

        v135 = v208;
        if ((v125 & 1) == 0)
        {
          sub_1AAD948F8(&qword_1EB424168, &_s8ResourceVN_0);
LABEL_97:
          v135 = v208;
        }

        if ((v132 & 1) == 0)
        {
          goto LABEL_140;
        }

        v213 = v227[0];
        v136 = *(v227[0] + 56);
        v218 = v128;
        v137 = *(v136 + 8 * v128);
        v138 = *(v135 + 32);
        v235 = *(v135 + 16);
        v236 = v138;
        v237 = *(v135 + 48);
        v139 = v199;
        v140 = v199[8];
        v240[6] = v199[7];
        v240[7] = v140;
        v240[8] = v199[9];
        v141 = v199[4];
        v240[2] = v199[3];
        v240[3] = v141;
        v142 = v199[5];
        v240[5] = v199[6];
        v240[4] = v142;
        v143 = v199[1];
        v240[1] = v199[2];
        v240[0] = v143;
        v144 = v135;
        v145 = sub_1AADC6AE0(v240);
        v146 = *(v144 + 56);
        LODWORD(v147) = v145;
        v212 = v147;
        v148 = *(v144 + 72);
        v232 = v146;
        v233 = v148;
        v234 = *(v144 + 88);
        v149 = v139[17];
        v239[6] = v139[16];
        v239[7] = v149;
        v239[8] = v139[18];
        v150 = v139[13];
        v239[2] = v139[12];
        v239[3] = v150;
        v151 = v139[14];
        v239[5] = v139[15];
        v239[4] = v151;
        v152 = v139[10];
        v239[1] = v139[11];
        v239[0] = v152;
        LODWORD(v153) = sub_1AADC6AE0(v239);
        v211 = v153;
        v154 = *(v144 + 112);
        v229 = *(v144 + 96);
        v230 = v154;
        v231 = *(v144 + 128);
        v155 = v139[26];
        v238[6] = v139[25];
        v238[7] = v155;
        v238[8] = v139[27];
        v156 = v139[22];
        v238[2] = v139[21];
        v238[3] = v156;
        v157 = v139[23];
        v238[5] = v139[24];
        v238[4] = v157;
        v158 = v139[19];
        v238[1] = v139[20];
        v238[0] = v158;
        v159 = sub_1AADC6AE0(v238);
        *&v160 = __PAIR64__(v211, v212);
        *(&v160 + 1) = v159;
        v212 = v160;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v161 = sub_1AAF8CC64();
        *(v162 + 32) = v212;
        v161(v226, 0);
        swift_unknownObjectRelease();
        v163 = v139;
        if ((v139[37] & 1) == 0)
        {
          *&v212 = *(v139 + 72);
          v164 = *(v139 + 73);

          v165 = sub_1AAF8CC64();
          *(v166 + 16) = v212;
          *(v166 + 24) = v164;
          v165(v226, 0);

          v163 = v199;
        }

        sub_1AAD9A4C4(v163, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
        v167 = v213;
        *(*(v213 + 56) + 8 * v218) = v137;

        v48 = v210;
        v210[3] = v167;
        v42 = v220;
      }
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v54 >= *(v209 + 16))
      {
        goto LABEL_130;
      }

      v218 = v46;
      v64 = v206;
      sub_1AAD9A440(v209 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v54, v206, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v65 = sub_1AADBF760(v64, v208, v207);
      sub_1AAD9A4C4(v64, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v66 = v210;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66[3];
      *&v226[0] = v68;
      v69 = sub_1AADB0938(v53);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_131;
      }

      v75 = v70;
      if (*(v68 + 24) >= v74)
      {
        if (v67)
        {
          v77 = *&v226[0];
          if (v70)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v168 = v69;
          sub_1AAD948F8(&qword_1EB424168, &_s8ResourceVN_0);
          v69 = v168;
          v77 = *&v226[0];
          if (v75)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AAD89DD4(v74, v67, &qword_1EB424168, &_s8ResourceVN_0);
        v69 = sub_1AADB0938(v53);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_148;
        }

        v77 = *&v226[0];
        if (v75)
        {
LABEL_15:
          *(v77[7] + 8 * v69) = v65;

          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v77[(v69 >> 6) + 8] |= 1 << v69;
      *(v77[6] + 8 * v69) = v53;
      *(v77[7] + 8 * v69) = v65;
      v78 = v77[2];
      v73 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v73)
      {
        goto LABEL_132;
      }

      v77[2] = v79;
LABEL_16:
      v48 = v210;
      v210[3] = v77;
      v42 = v220;
      v46 = v218;
    }
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_127;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v49);
    ++v41;
    if (v46)
    {
      v41 = v49;
      goto LABEL_22;
    }
  }

  v170 = v48;

  v171 = v170[2];
  v172 = 1 << *(v171 + 32);
  v173 = -1;
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  v174 = v173 & *(v171 + 64);
  v175 = (v172 + 63) >> 6;

  v176 = 0;
  while (v174)
  {
LABEL_117:
    v178 = __clz(__rbit64(v174));
    v174 &= v174 - 1;
    v179 = *(*(v171 + 48) + ((v176 << 9) | (8 * v178)));
    if (v42[2])
    {

      sub_1AADB0938(v180);
      v182 = v181;

      if (v182)
      {

        continue;
      }
    }

    else
    {
    }

    v183 = v210;
    v184 = sub_1AADB0938(v179);
    v186 = v185;

    if (v186)
    {
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v188 = v183[3];
      v227[0] = v188;
      if (!v187)
      {
        sub_1AAD948F8(&qword_1EB424168, &_s8ResourceVN_0);
        v188 = v227[0];
      }

      v189 = *(*(v188 + 56) + 8 * v184);
      sub_1AAD92370(v184, v188, v190);
      v183[3] = v188;
      *&v226[0] = v189;
      off_1EE75C078(v226, v208);
      swift_unknownObjectRelease();
      v42 = v220;
    }

    else
    {
      v42 = v220;
    }
  }

  while (1)
  {
    v177 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      break;
    }

    if (v177 >= v175)
    {

      v191 = v210;

      v192 = v201;
      *v191 = v209;
      v191[1] = v192;
      v191[2] = v42;
      return;
    }

    v174 = *(v171 + 64 + 8 * v177);
    ++v176;
    if (v174)
    {
      v176 = v177;
      goto LABEL_117;
    }
  }

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
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_1AAF905B4();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_1AAD845F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v193 = a5;
  v201 = a4;
  v202 = a3;
  v195 = a2;
  v192 = sub_1AAF8D554();
  v198 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1AAF8D5F4();
  v197 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1AAF8CFB4();
  v196 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8, type metadata accessor for Resolved3DContentList.Item);
  *&v213 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v194 = (&v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v183 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v183 - v14;
  sub_1AAD9A864(0, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
  *&v212 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v211 = (&v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v210 = (&v183 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v209 = (&v183 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v208 = (&v183 - v22);
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v203 = a1;
  if (v23)
  {
    v226[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    *&v207 = *(a1 + 16);
    if (v23 > v207)
    {
      goto LABEL_142;
    }

    v25 = 0;
    v24 = v226[0];
    *&v205 = a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
    v206 = v23;
    do
    {
      if (v207 == v25)
      {
        goto LABEL_137;
      }

      v26 = v212;
      v27 = *(v212 + 48);
      v28 = v205 + *(v213 + 72) * v25;
      v29 = v208;
      v214 = v24;
      sub_1AAD9A440(v28, v208 + v27, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v30 = v209;
      *v209 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v31 = v210;
      sub_1AAD9AB7C(v30, v210, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v34 = v211;
      sub_1AAD9ABF0(v30, v211, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v35 = *v34;
      v24 = v214;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v226[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v226[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v206 != v25);
    a1 = v203;
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v226[0] = v39;

  sub_1AAD99F34(v40, 1, v226);

  v41 = v226[0];
  v42 = v226[0] + 64;
  v43 = 1 << *(v226[0] + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v226[0] + 64);
  v46 = (v43 + 63) >> 6;
  v209 = (v197 + 8);
  v210 = (v198 + 16);
  v208 = (v196 + 8);
  v206 = &v221[1];

  v47 = 0;
  v207 = xmmword_1AAF92AB0;
  v48 = v204;
  v214 = v41;
  v211 = v46;
  if (!v45)
  {
    while (1)
    {
LABEL_18:
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_136;
      }

      if (v52 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v52);
      ++v47;
      if (v45)
      {
        v47 = v52;
        goto LABEL_22;
      }
    }

    v163 = v48[2];
    v164 = 1 << *(v163 + 32);
    v165 = -1;
    if (v164 < 64)
    {
      v165 = ~(-1 << v164);
    }

    v166 = v165 & *(v163 + 64);
    v167 = (v164 + 63) >> 6;

    v168 = 0;
    while (1)
    {
      if (!v166)
      {
        while (1)
        {
          v169 = v168 + 1;
          if (__OFADD__(v168, 1))
          {
            break;
          }

          if (v169 >= v167)
          {

            v181 = v204;

            v182 = v195;
            *v181 = v203;
            v181[1] = v182;
            v181[2] = v41;
            return;
          }

          v166 = *(v163 + 64 + 8 * v169);
          ++v168;
          if (v166)
          {
            v168 = v169;
            goto LABEL_126;
          }
        }

LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_126:
      v170 = __clz(__rbit64(v166));
      v166 &= v166 - 1;
      v171 = *(*(v163 + 48) + ((v168 << 9) | (8 * v170)));
      if (!v41[2])
      {
        break;
      }

      sub_1AADB0938(v172);
      v174 = v173;

      if (v174)
      {
      }

      else
      {
LABEL_130:
        v175 = v204;
        v176 = sub_1AADB0938(v171);
        v178 = v177;

        if (v178)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v180 = v175[3];
          v216[0] = v180;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AAD94754();
            v180 = v216[0];
          }

          v213 = *(*(v180 + 56) + 16 * v176);
          sub_1AAD92110(v176, v180, *&v213);
          v175[3] = v180;
          v221[0] = v213;
          off_1EE75C0F8(v221, v202);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v41 = v214;
        }

        else
        {
          v41 = v214;
        }
      }
    }

    goto LABEL_130;
  }

  while (1)
  {
LABEL_22:
    while (1)
    {
      v53 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v54 = (v47 << 9) | (8 * v53);
      v55 = *(v41[6] + v54);
      v56 = *(v41[7] + v54);
      v57 = v48[2];
      v58 = *(v57 + 16);

      if (!v58)
      {
        break;
      }

      sub_1AADB0938(v55);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        break;
      }

      if (!*(v57 + 16))
      {
        break;
      }

      v61 = sub_1AADB0938(v55);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v63 = *(*(v57 + 56) + 8 * v61);
      if (v193)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_143;
        }

        v64 = *(a1 + 16);
        v48 = v204;
      }

      else
      {
        v46 = v211;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_153;
        }

        v48 = v204;
        v84 = *v204;
        v85 = *(*v204 + 16);
        if (v63 >= v85)
        {
          goto LABEL_154;
        }

        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_155;
        }

        v64 = *(a1 + 16);
        if (v56 >= v64)
        {
          goto LABEL_156;
        }

        v86 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v87 = *(v213 + 72);
        v88 = *(v84 + v86 + v87 * v63 + 12);
        v89 = *(a1 + v86 + v87 * v56 + 12);
        if (v88 != -1 && v89 != -1 && v88 == v89)
        {
          v110 = *(v213 + 80);
          goto LABEL_83;
        }
      }

      if (v56 >= v64)
      {
        goto LABEL_144;
      }

      v186 = v63;
      *&v205 = *(v213 + 80);
      v92 = *(v213 + 72);
      sub_1AAD9A440(a1 + ((v205 + 32) & ~v205) + v92 * v56, v199, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);

      v93 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v48[3];
      v94 = v222;
      v96 = sub_1AADB0938(v55);
      v97 = *(v94 + 16);
      v98 = (v95 & 1) == 0;
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_145;
      }

      v100 = v95;
      if (*(v94 + 24) >= v99)
      {
        if (v93)
        {
          v103 = v202;
          if ((v95 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v162 = v96;
          sub_1AAD94754();
          v96 = v162;
          v103 = v202;
          if ((v100 & 1) == 0)
          {
            goto LABEL_146;
          }
        }
      }

      else
      {
        sub_1AAD89A64(v99, v93);
        v101 = sub_1AADB0938(v55);
        if ((v100 & 1) != (v102 & 1))
        {
          goto LABEL_158;
        }

        v96 = v101;
        v103 = v202;
        if ((v100 & 1) == 0)
        {
          goto LABEL_146;
        }
      }

      v104 = *(v222 + 56);
      v196 = v96;
      v212 = *(v104 + 16 * v96);
      sub_1AAD9A534(v199 + 128, v216, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v105 = *(v103 + 184);
      v197 = v92;
      if (v105)
      {
        if (*(v103 + 152))
        {
          if (*(v103 + 176))
          {
            v106 = 0;
            v107 = *(v105 + 16);
            if (v107)
            {
              v108 = v105;
            }

            else
            {
              v108 = 0;
            }

            if (v107)
            {
              v109 = 2;
            }

            else
            {
              v109 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v108 = *(v103 + 160);
            v106 = *(v103 + 168);
            v109 = 1;
          }
        }

        else
        {
          v109 = 0;
          v108 = *(v103 + 136);
          v106 = *(v103 + 144);
        }
      }

      else
      {
        v108 = 0;
        v106 = 0;
        v109 = 255;
      }

      sub_1AAD880F8(v216, v108, v106, v109, v220);
      v111 = v199;
      v112 = *(v199 + 208);
      v113 = *(v199 + 216);
      sub_1AAD9A96C(v103, v221);

      sub_1AADADC74(v223, v103, v112, v113);
      memcpy(v221, v223, sizeof(v221));
      nullsub_1();
      memcpy(v226, v221, 0x1E0uLL);
      sub_1AADB35BC(v220, v226, *(v111 + 224), *(v111 + 232), *(v111 + 240), *(v111 + 248), v103, v201, v219);
      swift_unknownObjectRetain();
      v198 = sub_1AAF8CF34();
      v114 = sub_1AAF8CDC4();
      v115 = sub_1AAF8CF54();
      if (!(*(*(v114 - 8) + 48))(v116, 1, v114))
      {
        sub_1AAD9A6F4(0);
        *(swift_allocObject() + 16) = v207;
        sub_1AACED220(v219, &v215);
        sub_1AACBB650(0, &qword_1EB424650, MEMORY[0x1E697A3C0], 1);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      v115(&v217, 0);
      (v198)(&v218, 0);
      v198 = v55;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v117 = v187;
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      a1 = v203;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v118 = v192;
      v119 = sub_1AAD0F5D8(v192, qword_1EB432060);
      (*v210)(v191, v119, v118);
      v120 = v189;
      sub_1AAF8D5E4();
      v121 = v190;
      sub_1AAF8CF94();
      sub_1AAD9A9C8(v223);
      (*v209)(v120, v121);
      (*v208)(v117, v188);
      sub_1AAD9A5F8(v219);
      sub_1AAD9A64C(v220);
      sub_1AAD9A3D0(v216, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v199, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v122 = v222;
      if (v212)
      {
        *(*(v222 + 56) + 16 * v196) = v212;
      }

      else
      {
        v123 = v196;
        sub_1AAD9A6A0(*(v222 + 48) + 8 * v196);
        sub_1AAD92110(v123, v122, v124);
      }

      v55 = v198;
      v48 = v204;

      v48[3] = v122;
      if (v193)
      {
        v125 = *(a1 + 16);
        v110 = v205;
        v87 = v197;
LABEL_92:
        if (v56 >= v125)
        {
          goto LABEL_147;
        }

        sub_1AAD9A440(a1 + ((v110 + 32) & ~v110) + v87 * v56, v194, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v220[0] = v48[3];
        v132 = v220[0];
        v134 = sub_1AADB0938(v55);
        v135 = *(v132 + 16);
        v136 = (v133 & 1) == 0;
        v137 = v135 + v136;
        if (__OFADD__(v135, v136))
        {
          goto LABEL_148;
        }

        v138 = v133;
        if (*(v132 + 24) >= v137)
        {
          if (v131)
          {
            v141 = v202;
            if ((v133 & 1) == 0)
            {
              goto LABEL_149;
            }
          }

          else
          {
            sub_1AAD94754();
            v141 = v202;
            if ((v138 & 1) == 0)
            {
              goto LABEL_149;
            }
          }
        }

        else
        {
          sub_1AAD89A64(v137, v131);
          v139 = sub_1AADB0938(v55);
          if ((v138 & 1) != (v140 & 1))
          {
            goto LABEL_158;
          }

          v134 = v139;
          v141 = v202;
          if ((v138 & 1) == 0)
          {
            goto LABEL_149;
          }
        }

        v79 = v220[0];
        v212 = *(*(v220[0] + 56) + 16 * v134);
        v142 = *(v141 + 416);
        if (*(v142 + 16))
        {
          v143 = v194[3];
          v198 = v194[2];
          v144 = *v194;

          v145 = sub_1AADB0938(v144);
          if ((v146 & 1) == 0)
          {
            goto LABEL_106;
          }

          v186 = v144;
          v205 = *(*(v142 + 56) + 16 * v145);
          v147 = *(v202 + 96);
          v224[4] = *(v202 + 80);
          v224[5] = v147;
          v224[6] = *(v202 + 112);
          v225 = *(v202 + 128);
          v148 = *(v202 + 32);
          v224[0] = *(v202 + 16);
          v224[1] = v148;
          v149 = *(v202 + 64);
          v224[2] = *(v202 + 48);
          v224[3] = v149;

          v150 = v205;
          swift_unknownObjectRetain();
          v151 = *(&v205 + 1);
          swift_unknownObjectRetain();
          v196 = v151;
          v197 = v150;
          sub_1AADC36F0(v150, v151, v198, v143, v224, v152);

          sub_1AAD9AA1C();
          sub_1AAF8E144();
          if (qword_1ED9B36D8 != -1)
          {
            swift_once();
          }

          sub_1AACBFDA4(&xmmword_1ED9C34F0, v216);
          v153 = sub_1AACD20AC(v221, v216);
          sub_1AAD10630(v216);
          sub_1AAD10630(v221);
          v154 = v186;
          if (v153)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_106:
          }

          else
          {
            v198 = v143;
            v155 = qword_1EB422B70;

            if (v155 != -1)
            {
              swift_once();
            }

            v184 = qword_1EB424818;
            v156 = swift_allocObject();
            *(v156 + 16) = v154;
            *(v156 + 24) = v205;
            v157 = v156;
            v185 = v156;
            v158 = swift_allocObject();
            *(v158 + 16) = sub_1AAD9AA70;
            *(v158 + 24) = v157;
            *&v221[2] = sub_1AAD9AA7C;
            *(&v221[2] + 1) = v158;
            *&v221[0] = MEMORY[0x1E69E9820];
            *(&v221[0] + 1) = 1107296256;
            *&v221[1] = sub_1AAD8867C;
            *(&v221[1] + 1) = &unk_1F1FD18C8;
            v159 = _Block_copy(v221);
            *&v205 = *(&v221[2] + 1);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            dispatch_sync(v184, v159);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            _Block_release(v159);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_157;
            }
          }
        }

        sub_1AAD9A4C4(v194, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
        *(v79[7] + 16 * v134) = v212;

        goto LABEL_17;
      }

      v46 = v211;
      v63 = v186;
      v110 = v205;
      v87 = v197;
      if (v186 < 0)
      {
        goto LABEL_150;
      }

      v84 = *v48;
      v85 = *(*v48 + 16);
LABEL_83:
      if (v63 >= v85)
      {
        goto LABEL_151;
      }

      v125 = *(a1 + 16);
      if (v56 >= v125)
      {
        goto LABEL_152;
      }

      v126 = (v110 + 32) & ~v110;
      v127 = *(v84 + v126 + v87 * v63 + 8);
      v128 = *(a1 + v126 + v87 * v56 + 8);
      if (v127 == -1 || v128 == -1 || v127 != v128)
      {
        goto LABEL_92;
      }

      v41 = v214;
      if (!v45)
      {
        goto LABEL_18;
      }
    }

    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_138;
    }

    if (v56 >= *(a1 + 16))
    {
      break;
    }

    v65 = v200;
    sub_1AAD9A440(a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v56, v200, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
    v66 = sub_1AADC3F68(v65, v202, v201);
    *&v212 = v67;
    sub_1AAD9A4C4(v65, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
    v68 = v204;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v68[3];
    *&v221[0] = v70;
    v71 = sub_1AADB0938(v55);
    v73 = *(v70 + 16);
    v74 = (v72 & 1) == 0;
    v75 = __OFADD__(v73, v74);
    v76 = v73 + v74;
    if (v75)
    {
      goto LABEL_140;
    }

    v77 = v72;
    if (*(v70 + 24) >= v76)
    {
      if ((v69 & 1) == 0)
      {
        v161 = v71;
        sub_1AAD94754();
        v71 = v161;
      }
    }

    else
    {
      sub_1AAD89A64(v76, v69);
      v71 = sub_1AADB0938(v55);
      if ((v77 & 1) != (v78 & 1))
      {
        goto LABEL_158;
      }
    }

    v79 = *&v221[0];
    if (v77)
    {
      v49 = (*(*&v221[0] + 56) + 16 * v71);
      v50 = v212;
      *v49 = v66;
      v49[1] = v50;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      *(*&v221[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
      *(v79[6] + 8 * v71) = v55;
      v80 = (v79[7] + 16 * v71);
      v81 = v212;
      *v80 = v66;
      v80[1] = v81;
      v82 = v79[2];
      v75 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v75)
      {
        goto LABEL_141;
      }

      v79[2] = v83;
    }

LABEL_17:
    a1 = v203;
    v51 = v204;
    v204[3] = v79;
    v48 = v51;
    v41 = v214;
    v46 = v211;
    if (!v45)
    {
      goto LABEL_18;
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
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
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  sub_1AAF905B4();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_1AAD85B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v194 = a5;
  v201 = a4;
  v202 = a3;
  v195 = a2;
  v191 = sub_1AAF8D554();
  v198 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AAF8D5F4();
  v197 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1AAF8CFB4();
  v196 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v193 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088, type metadata accessor for Resolved3DContentList.Item);
  v213 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = (&v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v187 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v200 = (&v187 - v14);
  sub_1AAD9A864(0, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
  v212 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v211 = (&v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v210 = (&v187 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v209 = (&v187 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v208 = &v187 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v203 = a1;
  if (v23)
  {
    v235[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v207 = *(a1 + 16);
    if (v23 > v207)
    {
      goto LABEL_132;
    }

    v25 = 0;
    v24 = v235[0];
    *&v205 = a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
    *&v206 = v23;
    do
    {
      if (v207 == v25)
      {
        goto LABEL_127;
      }

      v26 = v212;
      v27 = *(v212 + 48);
      v28 = v205 + *(v213 + 72) * v25;
      v29 = v208;
      v214 = v24;
      sub_1AAD9A440(v28, v208 + v27, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v30 = v209;
      *v209 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v31 = v210;
      sub_1AAD9AB7C(v30, v210, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v34 = v211;
      sub_1AAD9ABF0(v30, v211, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v35 = *v34;
      v24 = v214;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v235[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v235[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v206 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v235[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v235);

  v42 = v235[0];
  v43 = v235[0] + 64;
  v44 = 1 << *(v235[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v235[0] + 64);
  v47 = (v44 + 63) >> 6;
  v211 = (v198 + 16);
  v210 = (v197 + 8);
  v209 = (v196 + 8);

  v208 = xmmword_1AAF92AB0;
  v48 = v204;
  v214 = v42;
  while (1)
  {
    while (1)
    {
      if (!v46)
      {
        do
        {
          v49 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
            goto LABEL_126;
          }

          if (v49 >= v47)
          {
            goto LABEL_107;
          }

          v46 = *(v43 + 8 * v49);
          ++v41;
        }

        while (!v46);
        v41 = v49;
      }

      v50 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v51 = (v41 << 9) | (8 * v50);
      v52 = v42[7];
      v42 = *(v42[6] + v51);
      v53 = *(v52 + v51);
      v54 = v48[2];
      v55 = *(v54 + 16);

      if (!v55)
      {
        break;
      }

      sub_1AADB0938(v42);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        break;
      }

      if (!*(v54 + 16))
      {
        break;
      }

      v58 = sub_1AADB0938(v42);
      if ((v59 & 1) == 0)
      {
        break;
      }

      v60 = *(*(v54 + 56) + 8 * v58);
      if (v194)
      {
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_133;
        }

        v61 = v204;
        v62 = *(v203 + 16);
      }

      else
      {
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_142;
        }

        v61 = v204;
        v79 = *v204;
        v80 = *(*v204 + 16);
        if (v60 >= v80)
        {
          goto LABEL_143;
        }

        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = *(v203 + 16);
        if (v53 >= v62)
        {
          goto LABEL_145;
        }

        v81 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v82 = *(v213 + 72);
        v83 = *(v79 + v81 + v82 * v60 + 12);
        v84 = *(v203 + v81 + v82 * v53 + 12);
        if (v83 != -1 && v84 != -1 && v83 == v84)
        {
          v106 = *(v213 + 80);
          goto LABEL_83;
        }
      }

      if (v53 >= v62)
      {
        goto LABEL_134;
      }

      v197 = *(*(v54 + 56) + 8 * v58);
      v207 = *(v213 + 80);
      v87 = v61;
      v212 = *(v213 + 72);
      sub_1AAD9A440(v203 + ((v207 + 32) & ~v207) + v212 * v53, v199, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v87[3];
      v222 = v89;
      v91 = sub_1AADB0938(v42);
      v92 = *(v89 + 16);
      v93 = (v90 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_135;
      }

      v95 = v90;
      if (*(v89 + 24) >= v94)
      {
        v98 = v202;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v162 = v91;
        sub_1AAD948F8(&qword_1EB424198, &_s8ResourceVN_1);
        v91 = v162;
      }

      else
      {
        sub_1AAD89DD4(v94, isUniquelyReferenced_nonNull_native, &qword_1EB424198, &_s8ResourceVN_1);
        v96 = sub_1AADB0938(v42);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_146;
        }

        v91 = v96;
      }

      v98 = v202;
LABEL_58:
      if ((v95 & 1) == 0)
      {
        goto LABEL_136;
      }

      v99 = *(v222 + 56);
      *&v206 = v91;
      v100 = *(v99 + 8 * v91);
      sub_1AAD9A534(v199 + 448, v221, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v101 = *(v98 + 184);
      if (v101)
      {
        if (*(v98 + 152))
        {
          if (*(v98 + 176))
          {
            v102 = 0;
            v103 = *(v101 + 16);
            if (v103)
            {
              v104 = *(v98 + 184);
            }

            else
            {
              v104 = 0;
            }

            if (v103)
            {
              v105 = 2;
            }

            else
            {
              v105 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v104 = *(v98 + 160);
            v102 = *(v98 + 168);
            v105 = 1;
          }
        }

        else
        {
          v105 = 0;
          v104 = *(v98 + 136);
          v102 = *(v98 + 144);
        }
      }

      else
      {
        v104 = 0;
        v102 = 0;
        v105 = 255;
      }

      sub_1AAD880F8(v221, v104, v102, v105, v219);
      sub_1AAD9A5B4(v220);
      memcpy(v235, v220, 0x1E0uLL);
      sub_1AADB35BC(v219, v235, *(v199 + 528), *(v199 + 536), *(v199 + 544), *(v199 + 552), v98, v201, v218);
      swift_unknownObjectRetain();
      *&v205 = sub_1AAF8CF34();
      v107 = sub_1AAF8CDC4();
      v198 = sub_1AAF8CF54();
      if (!(*(*(v107 - 8) + 48))(v108, 1, v107))
      {
        sub_1AAD9A6F4(0);
        *(swift_allocObject() + 16) = v208;
        sub_1AACED220(v218, &v215);
        sub_1AACBB650(0, &qword_1EB424650, MEMORY[0x1E697A3C0], 1);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v198)(&v216, 0);
      (v205)(&v217, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v205 = v100;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v109 = v191;
      v110 = sub_1AAD0F5D8(v191, qword_1EB432060);
      (*v211)(v190, v110, v109);
      v111 = v188;
      sub_1AAF8D5E4();
      v112 = v189;
      v113 = v193;
      sub_1AAF8CF94();
      (*v210)(v111, v112);
      (*v209)(v113, v187);
      sub_1AAD9A5F8(v218);
      sub_1AAD9A64C(v219);
      sub_1AAD9A3D0(v221, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v199, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v114 = v222;
      if (v205)
      {
        *(*(v222 + 56) + 8 * v206) = v205;
      }

      else
      {
        v115 = v206;
        sub_1AAD9A6A0(*(v222 + 48) + 8 * v206);
        sub_1AAD92370(v115, v114, v116);
      }

      v61 = v204;
      v204[3] = v114;
      if (v194)
      {
        v117 = *(v203 + 16);
        v82 = v212;
        v106 = v207;
        goto LABEL_92;
      }

      v60 = v197;
      v82 = v212;
      v106 = v207;
      if ((v197 & 0x8000000000000000) != 0)
      {
        goto LABEL_139;
      }

      v79 = *v61;
      v80 = *(*v61 + 16);
LABEL_83:
      if (v60 >= v80)
      {
        goto LABEL_140;
      }

      v117 = *(v203 + 16);
      if (v53 >= v117)
      {
        goto LABEL_141;
      }

      v118 = (v106 + 32) & ~v106;
      v119 = *(v79 + v118 + v82 * v60 + 8);
      v120 = *(v203 + v118 + v82 * v53 + 8);
      if (v119 != -1 && v120 != -1 && v119 == v120)
      {

        v48 = v204;
        v42 = v214;
      }

      else
      {
LABEL_92:
        if (v53 >= v117)
        {
          goto LABEL_137;
        }

        v123 = v61;
        sub_1AAD9A440(v203 + ((v106 + 32) & ~v106) + v82 * v53, v192, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v123[3];
        v221[0] = v125;
        v126 = sub_1AADB0938(v42);
        v128 = *(v125 + 16);
        v129 = (v127 & 1) == 0;
        v72 = __OFADD__(v128, v129);
        v130 = v128 + v129;
        if (v72)
        {
          goto LABEL_138;
        }

        v131 = v127;
        if (*(v125 + 24) >= v130)
        {
          v133 = v202;
          if (v124)
          {
            if ((v127 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v163 = v126;
            sub_1AAD948F8(&qword_1EB424198, &_s8ResourceVN_1);
            v133 = v202;
            v126 = v163;
            if ((v131 & 1) == 0)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          sub_1AAD89DD4(v130, v124, &qword_1EB424198, &_s8ResourceVN_1);
          v126 = sub_1AADB0938(v42);
          if ((v131 & 1) != (v132 & 1))
          {
            goto LABEL_146;
          }

          v133 = v202;
          if ((v131 & 1) == 0)
          {
LABEL_106:
            __break(1u);
LABEL_107:
            v164 = v48;

            v165 = v164[2];
            v166 = 1 << *(v165 + 32);
            v167 = -1;
            if (v166 < 64)
            {
              v167 = ~(-1 << v166);
            }

            v168 = v167 & *(v165 + 64);
            v169 = (v166 + 63) >> 6;

            v170 = 0;
            while (1)
            {
              if (!v168)
              {
                while (1)
                {
                  v171 = v170 + 1;
                  if (__OFADD__(v170, 1))
                  {
                    break;
                  }

                  if (v171 >= v169)
                  {

                    v185 = v204;

                    v186 = v195;
                    *v185 = v203;
                    v185[1] = v186;
                    v185[2] = v42;
                    return;
                  }

                  v168 = *(v165 + 64 + 8 * v171);
                  ++v170;
                  if (v168)
                  {
                    v170 = v171;
                    goto LABEL_116;
                  }
                }

LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

LABEL_116:
              v172 = __clz(__rbit64(v168));
              v168 &= v168 - 1;
              v173 = *(*(v165 + 48) + ((v170 << 9) | (8 * v172)));
              if (v42[2])
              {

                sub_1AADB0938(v174);
                v176 = v175;

                if (v176)
                {

                  continue;
                }
              }

              else
              {
              }

              v177 = v204;
              v178 = sub_1AADB0938(v173);
              v180 = v179;

              if (v180)
              {
                v181 = swift_isUniquelyReferenced_nonNull_native();
                v182 = v177[3];
                v221[0] = v182;
                if (!v181)
                {
                  sub_1AAD948F8(&qword_1EB424198, &_s8ResourceVN_1);
                  v182 = v221[0];
                }

                v183 = *(*(v182 + 56) + 8 * v178);
                sub_1AAD92370(v178, v182, v184);
                v177[3] = v182;
                *&v220[0] = v183;
                off_1EE75C0B8(v220, v202);
                swift_unknownObjectRelease();
                v42 = v214;
              }

              else
              {
                v42 = v214;
              }
            }
          }
        }

        v212 = v221[0];
        v134 = *(*(v221[0] + 56) + 8 * v126);
        v135 = *(v133 + 32);
        v229 = *(v133 + 16);
        v230 = v135;
        v231 = *(v133 + 48);
        v136 = v192;
        v137 = v192[8];
        v234[6] = v192[7];
        v234[7] = v137;
        v234[8] = v192[9];
        v138 = v192[4];
        v234[2] = v192[3];
        v234[3] = v138;
        v139 = v192[5];
        v234[5] = v192[6];
        v234[4] = v139;
        v140 = v192[1];
        v234[1] = v192[2];
        v234[0] = v140;
        v207 = v126;
        v141 = v133;
        v142 = sub_1AADC6AE0(v234);
        v143 = *(v141 + 56);
        LODWORD(v144) = v142;
        v206 = v144;
        v145 = *(v141 + 72);
        v226 = v143;
        v227 = v145;
        v228 = *(v141 + 88);
        v146 = v136[17];
        v233[6] = v136[16];
        v233[7] = v146;
        v233[8] = v136[18];
        v147 = v136[13];
        v233[2] = v136[12];
        v233[3] = v147;
        v148 = v136[14];
        v233[5] = v136[15];
        v233[4] = v148;
        v149 = v136[10];
        v233[1] = v136[11];
        v233[0] = v149;
        LODWORD(v150) = sub_1AADC6AE0(v233);
        v205 = v150;
        v151 = *(v141 + 112);
        v223 = *(v141 + 96);
        v224 = v151;
        v225 = *(v141 + 128);
        v152 = v136[26];
        v232[6] = v136[25];
        v232[7] = v152;
        v232[8] = v136[27];
        v153 = v136[22];
        v232[2] = v136[21];
        v232[3] = v153;
        v154 = v136[23];
        v232[5] = v136[24];
        v232[4] = v154;
        v155 = v136[19];
        v232[1] = v136[20];
        v232[0] = v155;
        v156 = sub_1AADC6AE0(v232);
        *&v157 = __PAIR64__(v205, v206);
        *(&v157 + 1) = v156;
        v206 = v157;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v158 = sub_1AAF8CC64();
        *(v159 + 32) = v206;
        v158(v220, 0);
        swift_unknownObjectRelease();
        sub_1AAD9A4C4(v136, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
        v160 = v212;
        *(*(v212 + 56) + 8 * v207) = v134;

        v48 = v204;
        v204[3] = v160;
        v42 = v214;
      }
    }

    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

    if (v53 >= *(v203 + 16))
    {
      break;
    }

    v212 = v46;
    v63 = v200;
    sub_1AAD9A440(v203 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v53, v200, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
    v64 = sub_1AADC0610(v63, v202, v201);
    sub_1AAD9A4C4(v63, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
    v65 = v204;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v65[3];
    *&v220[0] = v67;
    v68 = sub_1AADB0938(v42);
    v70 = *(v67 + 16);
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_130;
    }

    v74 = v69;
    if (*(v67 + 24) >= v73)
    {
      if (v66)
      {
        v76 = *&v220[0];
        if (v69)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v161 = v68;
        sub_1AAD948F8(&qword_1EB424198, &_s8ResourceVN_1);
        v68 = v161;
        v76 = *&v220[0];
        if (v74)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1AAD89DD4(v73, v66, &qword_1EB424198, &_s8ResourceVN_1);
      v68 = sub_1AADB0938(v42);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_146;
      }

      v76 = *&v220[0];
      if (v74)
      {
LABEL_15:
        *(v76[7] + 8 * v68) = v64;

        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v76[(v68 >> 6) + 8] |= 1 << v68;
    *(v76[6] + 8 * v68) = v42;
    *(v76[7] + 8 * v68) = v64;
    v77 = v76[2];
    v72 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v72)
    {
      goto LABEL_131;
    }

    v76[2] = v78;
LABEL_16:
    v48 = v204;
    v204[3] = v76;
    v42 = v214;
    v46 = v212;
  }

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
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  sub_1AAF905B4();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_1AAD86EFC()
{
  v1 = v0;
  v142[57] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v123 = *(v2 - 8);
  v124 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v116[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v116[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v116[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v116[-v12];
  OutputValue = AGGraphGetOutputValue();
  v120 = v10;
  v121 = v7;
  v122 = v13;
  if (!OutputValue)
  {
    sub_1AAF8D094();
    swift_allocObject();
    v15 = sub_1AAF8D084();
    sub_1AAF8D074();
    swift_allocObject();
    v16 = sub_1AAF8D084();
    sub_1AAF8CC24();

    sub_1AAF8CC24();

    v17 = MEMORY[0x1E69E7CC0];
    v18 = sub_1AAD78BF4(MEMORY[0x1E69E7CC0]);
    v125 = v19;
    *&v126 = v18;
    v20 = sub_1AAD78C2C(v17);
    v119 = v21;
    v22 = v4;
    v23 = sub_1AAD78C10(v17);
    v25 = v24;
    v26 = sub_1AAD78BD8(v17);
    *&v141[0] = v15;
    *(&v141[0] + 1) = v16;
    v141[1] = 0x3FF0000000000000uLL;
    *&v141[2] = 0;
    *(&v141[2] + 1) = 0x3FF0000000000000;
    *&v141[3] = 0x3F80000000000000;
    v141[4] = 0u;
    *(&v141[3] + 1) = 0x3FF0000000000000;
    *&v141[5] = 0x3FF0000000000000;
    *(&v141[5] + 1) = 0x3F80000000000000;
    *(&v141[6] + 8) = 0u;
    *&v141[6] = 0x3FF0000000000000;
    *(&v141[7] + 1) = 0x3FF0000000000000;
    *&v141[8] = 0x3F80000000000000;
    *(&v141[8] + 8) = 0u;
    *(&v141[9] + 8) = 0u;
    *(&v141[10] + 8) = 0u;
    *(&v141[11] + 8) = 0u;
    WORD4(v141[12]) = 0;
    memset(&v141[13], 0, 33);
    *(&v141[16] + 8) = 0u;
    *(&v141[15] + 8) = 0u;
    BYTE8(v141[17]) = 0;
    memset(&v141[18], 0, 33);
    *(&v141[20] + 1) = v126;
    *&v141[21] = v125;
    *(&v141[21] + 1) = MEMORY[0x1E69E7CC8];
    *&v141[22] = MEMORY[0x1E69E7CC8];
    *(&v141[22] + 1) = v20;
    *&v141[23] = v119;
    *(&v141[23] + 1) = MEMORY[0x1E69E7CC8];
    *&v141[24] = MEMORY[0x1E69E7CC8];
    *(&v141[24] + 1) = v23;
    v4 = v22;
    *&v141[25] = v25;
    *(&v141[25] + 1) = MEMORY[0x1E69E7CC8];
    *&v141[26] = MEMORY[0x1E69E7CC8];
    *(&v141[26] + 1) = v26;
    *&v141[27] = v27;
    *(&v141[27] + 1) = MEMORY[0x1E69E7CC8];
    *&v141[28] = MEMORY[0x1E69E7CC8];
    nullsub_1();
    memcpy(v142, (v1 + 72), 0x1C8uLL);
    sub_1AAD9A3D0(v142, &qword_1EB424108, &type metadata for Chart3DModel);
    memcpy((v1 + 72), v141, 0x1C8uLL);
  }

  Value = AGGraphGetValue();
  v29 = *(Value + 80);
  v128[4] = *(Value + 64);
  v128[5] = v29;
  v128[6] = *(Value + 96);
  v129 = *(Value + 112);
  v30 = *(Value + 16);
  v128[0] = *Value;
  v128[1] = v30;
  v31 = *(Value + 48);
  v128[2] = *(Value + 32);
  v128[3] = v31;
  *&v126 = v32;
  if (v32)
  {
    memcpy(v142, (v1 + 72), 0x1C8uLL);
    if (sub_1AAD00C24(v142) == 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1AAD78620(v128);
  }

  v33 = *(v1 + 20);
  LODWORD(v125) = *MEMORY[0x1E698D3F8];
  if (v33 != v125)
  {
    v34 = AGGraphGetValue();
    v141[0] = *v34;
    v36 = *(v34 + 32);
    v35 = *(v34 + 48);
    v37 = *(v34 + 16);
    LOWORD(v141[4]) = *(v34 + 64);
    v141[2] = v36;
    v141[3] = v35;
    v141[1] = v37;
    if (v38)
    {
      memcpy(v142, (v1 + 72), 0x1C8uLL);
      if (sub_1AAD00C24(v142) == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v139[2] = v141[2];
      v139[3] = v141[3];
      LOWORD(v139[4]) = v141[4];
      v139[0] = v141[0];
      v139[1] = v141[1];
      v39 = *(v1 + 256);
      v140[2] = *(v1 + 240);
      v140[3] = v39;
      LOWORD(v140[4]) = *(v1 + 272);
      v40 = *(v1 + 224);
      v140[0] = *(v1 + 208);
      v140[1] = v40;
      sub_1AAD9A374(v141, v138);
      sub_1AAD9A3D0(v140, &qword_1EB424120, &type metadata for PlottedValueStylingContext);
      v41 = v139[3];
      *(v1 + 240) = v139[2];
      *(v1 + 256) = v41;
      *(v1 + 272) = v139[4];
      v42 = v139[1];
      *(v1 + 208) = v139[0];
      *(v1 + 224) = v42;
    }
  }

  v119 = v4;
  AGGraphGetValue();
  if (v43)
  {
    v44 = AGGraphGetValue();
    v45 = *v44;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    v118 = *(v44 + 24);
    v117 = *(v44 + 32);
    memcpy(v142, (v1 + 72), 0x1C8uLL);
    if (sub_1AAD00C24(v142) != 1)
    {
      v48 = *(v1 + 280);
      v49 = *(v1 + 288);
      v50 = *(v1 + 296);

      sub_1AAD9A328(v48, v49, v50);
      *(v1 + 280) = v45;
      *(v1 + 288) = v46;
      v51 = v118;
      *(v1 + 296) = v47;
      *(v1 + 304) = v51;
      *(v1 + 312) = v117;
      goto LABEL_13;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_13:
  AGGraphGetValue();
  if ((v52 & 1) == 0)
  {
    goto LABEL_16;
  }

  v53 = AGGraphGetValue();
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  v118 = *(v53 + 24);
  v117 = *(v53 + 32);
  memcpy(v142, (v1 + 72), 0x1C8uLL);
  if (sub_1AAD00C24(v142) == 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v57 = *(v1 + 320);
  v58 = *(v1 + 328);
  v59 = *(v1 + 336);

  sub_1AAD9A328(v57, v58, v59);
  *(v1 + 320) = v54;
  *(v1 + 328) = v55;
  v60 = v118;
  *(v1 + 336) = v56;
  *(v1 + 344) = v60;
  *(v1 + 352) = v117;
LABEL_16:
  AGGraphGetValue();
  if (v61)
  {
    v62 = AGGraphGetValue();
    v63 = *v62;
    v64 = *(v62 + 8);
    v65 = *(v62 + 16);
    v118 = *(v62 + 24);
    v117 = *(v62 + 32);
    memcpy(v142, (v1 + 72), 0x1C8uLL);
    if (sub_1AAD00C24(v142) != 1)
    {
      v66 = *(v1 + 360);
      v67 = *(v1 + 368);
      v68 = *(v1 + 376);

      sub_1AAD9A328(v66, v67, v68);
      *(v1 + 360) = v63;
      *(v1 + 368) = v64;
      v69 = v118;
      *(v1 + 376) = v65;
      *(v1 + 384) = v69;
      *(v1 + 392) = v117;
      goto LABEL_19;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_19:
  v70 = v125;
  v72 = v123;
  v71 = v124;
  v73 = v126;
  if (*v1 != v125)
  {
    sub_1AAD9B4A8(0, &qword_1EB423530, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList);
    v74 = AGGraphGetValue();
    if ((v75 | v73))
    {
      v77 = *v74;
      v76 = v74[1];
      memcpy(v140, (v1 + 72), 0x1C8uLL);
      memcpy(v141, (v1 + 72), 0x1C8uLL);
      if (sub_1AAD00C24(v141) == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      memcpy(v142, v141, 0x1C8uLL);

      sub_1AAD9A534(v140, v139, &qword_1EB424108, &type metadata for Chart3DModel);
      v78 = AGGraphGetValue();
      v79 = v122;
      (*(v72 + 16))(v122, v78, v71);
      memcpy(v139, (v1 + 72), 0x1C8uLL);
      if (sub_1AAD00C24(v139) == 1)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1AAD81DB8(v77, v76, v142, v79, v73 & 1);
      sub_1AAD9A3D0(v140, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v72 + 8))(v79, v71);
    }
  }

  if (*(v1 + 4) != v70)
  {
    sub_1AAD9B4A8(0, &qword_1EB423690, &type metadata for RectangleMark, &off_1EE75C048, type metadata accessor for Resolved3DContentList);
    v80 = AGGraphGetValue();
    if ((v81 | v73))
    {
      v82 = *v80;
      v83 = v80[1];
      memcpy(v139, (v1 + 72), 0x1C8uLL);
      memcpy(v140, (v1 + 72), 0x1C8uLL);
      if (sub_1AAD00C24(v140) == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      memcpy(v141, v140, 0x1C8uLL);

      sub_1AAD9A534(v139, v138, &qword_1EB424108, &type metadata for Chart3DModel);
      v84 = AGGraphGetValue();
      v85 = v120;
      (*(v72 + 16))(v120, v84, v71);
      memcpy(v138, (v1 + 72), sizeof(v138));
      if (sub_1AAD00C24(v138) == 1)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_1AAD831D4(v82, v83, v141, v85, v73 & 1);
      sub_1AAD9A3D0(v139, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v72 + 8))(v85, v71);
      v70 = v125;
    }
  }

  if (*(v1 + 8) != v70)
  {
    sub_1AAD9B4A8(0, &qword_1EB423660, &type metadata for SurfacePlot, &off_1EE75C0C8, type metadata accessor for Resolved3DContentList);
    v86 = AGGraphGetValue();
    if ((v87 | v73))
    {
      v88 = *v86;
      v89 = v86[1];
      memcpy(v138, (v1 + 72), sizeof(v138));
      memcpy(v139, (v1 + 72), 0x1C8uLL);
      if (sub_1AAD00C24(v139) == 1)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      memcpy(v140, v139, 0x1C8uLL);

      sub_1AAD9A534(v138, v137, &qword_1EB424108, &type metadata for Chart3DModel);
      v71 = v124;
      v90 = AGGraphGetValue();
      v91 = v123;
      v92 = v121;
      (*(v123 + 16))(v121, v90, v71);
      memcpy(v137, (v1 + 72), sizeof(v137));
      if (sub_1AAD00C24(v137) == 1)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v93 = v89;
      v73 = v126;
      sub_1AAD845F0(v88, v93, v140, v92, v126 & 1);
      sub_1AAD9A3D0(v138, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v91 + 8))(v92, v71);
      v72 = v91;
      v70 = v125;
    }
  }

  if (*(v1 + 12) != v70)
  {
    sub_1AAD9B4A8(0, &qword_1EB423680, &type metadata for RuleMark, &off_1EE75C088, type metadata accessor for Resolved3DContentList);
    v94 = AGGraphGetValue();
    if ((v95 | v73))
    {
      v96 = *v94;
      v97 = v94[1];
      memcpy(v137, (v1 + 72), sizeof(v137));
      memcpy(v138, (v1 + 72), sizeof(v138));
      if (sub_1AAD00C24(v138) == 1)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      memcpy(v139, v138, 0x1C8uLL);

      sub_1AAD9A534(v137, v136, &qword_1EB424108, &type metadata for Chart3DModel);
      v98 = AGGraphGetValue();
      v99 = v119;
      (*(v72 + 16))(v119, v98, v71);
      memcpy(v136, (v1 + 72), sizeof(v136));
      if (sub_1AAD00C24(v136) == 1)
      {
LABEL_62:
        __break(1u);
        return;
      }

      sub_1AAD85B3C(v96, v97, v139, v99, v126 & 1);
      sub_1AAD9A3D0(v137, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v72 + 8))(v99, v71);
    }
  }

  if ((*(v1 + 529) & 1) == 0)
  {
    memcpy(v138, (v1 + 72), sizeof(v138));
    if (sub_1AAD00C24(v138) != 1)
    {
      v100 = v138[1];
      memcpy(v137, (v1 + 72), sizeof(v137));
      if (sub_1AAD00C24(v137) != 1)
      {
        v101 = v137[0];
        memcpy(v136, (v1 + 72), sizeof(v136));
        if (sub_1AAD00C24(v136) != 1)
        {
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain();
          sub_1AAF8D094();
          v102 = sub_1AAF8CC64();
          *(v103 + 32) = 0;
          *(v103 + 40) = 0;
          v102(&v130, 0);
          swift_unknownObjectRelease();
          sub_1AAD9A288(&unk_1F1FCEC60);
          v126 = v104;
          swift_unknownObjectRetain();
          v105 = sub_1AAF8CC64();
          *v106 = v126;
          v105(&v130, 0);
          swift_unknownObjectRelease();
          v107 = *(v1 + 40);
          v108 = *(v1 + 64);
          type metadata accessor for MetalView.CaptureManager();
          v109 = swift_allocObject();
          *(v109 + 16) = 0;
          *(v109 + 24) = 0;
          v127 = v109;
          swift_unknownObjectRetain();

          sub_1AAF8EE24();
          v110 = v130;
          v111 = v131;
          v130 = v107;
          v131 = v100;
          v132 = v101;
          v133 = v108;
          v134 = v110;
          v135 = v111;
          sub_1AAD9A2D4();
          v130 = sub_1AAF8EF44();
          AGGraphSetOutputValue();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(v1 + 528) = 256;
          goto LABEL_44;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_44:
  v112 = *(v1 + 64);
  swift_getKeyPath();
  v138[0] = v112;
  sub_1AAD9C1D8(&qword_1EB424118, type metadata accessor for RenderTrigger, &unk_1AAF9F13C);
  sub_1AAF8D0C4();

  v138[0] = v112;
  swift_getKeyPath();
  sub_1AAF8D0E4();

  v113 = *(v112 + 16);
  v114 = __CFADD__(v113, 1);
  v115 = v113 + 1;
  if (v114)
  {
    __break(1u);
  }

  *(v112 + 16) = v115;
  v138[0] = v112;
  swift_getKeyPath();
  sub_1AAF8D0D4();
}

uint64_t sub_1AAD87E88(double a1)
{
  sub_1AAD77B28(0, a1);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8D014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  sub_1AAF8D074();
  sub_1AAF8D094();
  sub_1AAF8CC34();
  (*(v7 + 16))(v9, v12, v6);
  sub_1AAD9C1D8(&qword_1EB423F70, MEMORY[0x1E697A360], MEMORY[0x1E697A368]);
  sub_1AAF8F744();
  sub_1AAD9C1D8(&qword_1EB423F78, sub_1AAD77B28, MEMORY[0x1E697A358]);
  while (1)
  {
    sub_1AAF8FE94();
    if (!v15[1])
    {
      break;
    }

    sub_1AAD87E88(v13);
  }

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v12, v6);
}

void sub_1AAD880F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  sub_1AAD9A534(a1, v39, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  v41 = a2;
  v42 = a3;
  v43 = v5;
  sub_1AAD9A760(0);
  if (v40 == 255)
  {
    if (v5 == 0xFF)
    {
LABEL_9:
      sub_1AAD9A3D0(v39, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      while (1)
      {
        if (qword_1EB422C10 != -1)
        {
          swift_once();
        }

        v23 = qword_1EB432210;
        if (*(qword_1EB432210 + 16))
        {
          break;
        }

        __break(1u);
LABEL_47:
        swift_once();
LABEL_26:
        v23 = qword_1EB432210;
        if (*(qword_1EB432210 + 16))
        {
          break;
        }

        __break(1u);
LABEL_28:
        if (v40 != 255)
        {
          goto LABEL_53;
        }

        sub_1AAD9A828(a2, a3, 2);
      }

      *a5 = *(v23 + 32);
      *(a5 + 40) = 0;

      return;
    }

    sub_1AAD9A814(a2, a3, v5);
LABEL_24:
    if (v5 >= 2u)
    {
      goto LABEL_28;
    }

    sub_1AAD9A828(a2, a3, v5);
    sub_1AAD9A3D0(v39, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
    if (qword_1EB422C10 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_26;
  }

  sub_1AAD9A534(v39, &v35, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  if ((v38 & 1) == 0)
  {
    v13 = *v36;
    *a5 = v35;
    *(a5 + 16) = v13;
    *(a5 + 25) = *&v36[9];
LABEL_44:
    sub_1AAD9A3D0(v39, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
    return;
  }

  v9 = v35;
  v10 = *&v36[16];
  v11 = *&v36[24];
  v12 = v37;
  if (v5 != 2)
  {
    if (v5 == 255)
    {
      sub_1AAD04750(v35, *(&v35 + 1), v36[0]);

      sub_1AAD0E818(v10, v11, v12);
      goto LABEL_9;
    }

    v27 = *&v36[24];
    v22 = v36[0];
    sub_1AAD9A814(a2, a3, v5);
    sub_1AAD04750(v9, *(&v9 + 1), v22);

    sub_1AAD0E818(v10, v27, v12);
    goto LABEL_24;
  }

  if (v37 < 0)
  {
    v12 = v36[0];
    sub_1AAD9A814(a2, a3, 2);
    if (qword_1EB422C10 != -1)
    {
      swift_once();
    }

    if (*(qword_1EB432210 + 16))
    {
      v18 = *(qword_1EB432210 + 32);

      sub_1AAD04750(v9, *(&v9 + 1), v12);

LABEL_42:
      sub_1AAD9A828(a2, a3, 2);
      v24 = 0;
LABEL_43:
      *a5 = v18;
      v25 = v34;
      *(a5 + 8) = v33;
      *(a5 + 24) = v25;
      *(a5 + 40) = v24;
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_49;
  }

  v26 = v36[0];
  if (v37 != 2)
  {
    sub_1AAD9A850(a2, a3, 2);
    sub_1AACD7C50(v10, v11, v12);
    if (qword_1EB422C10 == -1)
    {
LABEL_39:
      if (*(qword_1EB432210 + 16))
      {
        v18 = *(qword_1EB432210 + 32);

        sub_1AAD0E818(v10, v11, v12);
        sub_1AAD04750(v9, *(&v9 + 1), v26);

        v19 = v10;
        v20 = v11;
        v21 = v12;
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    swift_once();
    goto LABEL_39;
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a2 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == v10 && v11 == *v16;
      if (v17 || (sub_1AAF904F4() & 1) != 0)
      {
        break;
      }

      ++v15;
      v16 += 2;
      if (v14 == v15)
      {
        goto LABEL_20;
      }
    }

    v28 = v15;
    sub_1AAD9A850(a2, a3, 2);
    sub_1AACD7C50(v10, v11, 2);
    sub_1AAD9E228(&v28, &v29);
    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD04750(v9, *(&v9 + 1), v26);

    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD9A828(a2, a3, 2);
    v18 = v29;
    v33 = v30;
    v34 = v31;
    v24 = v32;
    goto LABEL_43;
  }

LABEL_20:
  sub_1AAD9A850(a2, a3, 2);
  sub_1AACD7C50(v10, v11, 2);
  if (qword_1EB422C10 != -1)
  {
LABEL_51:
    swift_once();
  }

  if (*(qword_1EB432210 + 16))
  {
    v18 = *(qword_1EB432210 + 32);

    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD04750(v9, *(&v9 + 1), v26);

    v19 = v10;
    v20 = v11;
    v21 = 2;
LABEL_41:
    sub_1AAD0E818(v19, v20, v21);
    goto LABEL_42;
  }

  __break(1u);
LABEL_53:
  sub_1AAF904E4();
  __break(1u);
}

void sub_1AAD886A4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AAD9C1D8(&qword_1EB424118, type metadata accessor for RenderTrigger, &unk_1AAF9F13C);
  sub_1AAF8D0C4();

  *a2 = *(v3 + 16);
}

void sub_1AAD88774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CalendarCache.Key(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AAD9BAD4(0);
  v41 = v4;
  v9 = sub_1AAF90394();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v42 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v40 + 72);
      v25 = v23 + v24 * v22;
      if (v41)
      {
        sub_1AAD9BBD8(v25, v7, type metadata accessor for CalendarCache.Key);
      }

      else
      {
        sub_1AAD9BB70(v25, v7, type metadata accessor for CalendarCache.Key);
      }

      v26 = v7;
      v27 = *(*(v42 + 56) + 8 * v22);
      sub_1AAF90694();
      v28 = v26;
      sub_1AACED800(v43);
      v29 = sub_1AAF906F4();
      v30 = -1 << *(v10 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1AAD9BBD8(v28, *(v10 + 48) + v24 * v18, type metadata accessor for CalendarCache.Key);
      *(*(v10 + 56) + 8 * v18) = v27;
      v7 = v28;
      ++*(v10 + 16);
      v8 = v42;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1AAD88ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424218, sub_1AAD9B96C, &type metadata for StackGroupV2, &type metadata for StackContext.Item);
  v49 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v47 = (v5 + 64);
    v48 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v45 = v3;
    v46 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v51 = v19;
      if (v49)
      {
        v23 = *(v5 + 56);
        v24 = (*(v5 + 48) + 72 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v29 = *(v24 + 1);
        v28 = *(v24 + 2);
        v54 = *(v24 + 3);
        v53 = v24[32];
        v30 = *(v24 + 5);
        v56 = *(v24 + 6);
        v55 = *(v24 + 7);
        v57 = v24[64];
        v52 = *(v23 + 16 * v22);
      }

      else
      {
        v31 = *(v5 + 48) + 72 * v22;
        v32 = *(v31 + 16);
        v33 = *(v31 + 32);
        v34 = *(v31 + 48);
        v57 = *(v31 + 64);
        v60 = v57;
        v59 = v34;
        v35 = *v31;
        v58[1] = v32;
        v58[2] = v33;
        v58[0] = v35;
        v52 = *(*(v5 + 56) + 16 * v22);
        v30 = *(&v33 + 1);
        v55 = *(&v59 + 1);
        v56 = v59;
        v29 = *(&v35 + 1);
        v54 = *(&v32 + 1);
        v28 = v32;
        v53 = v33;
        v27 = BYTE2(v35);
        v26 = BYTE1(v35);
        v25 = v35;
        sub_1AAD9B9C0(v58, v61);
      }

      sub_1AAF90694();
      v50 = v25;
      MEMORY[0x1AC5992C0](v25);
      sub_1AAF8E7A4();
      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v27);
      sub_1AAF0A240(v58, v29, v28, v54, v53);
      sub_1AAF04AC0(v58, v30, v56, v55, v57);
      v36 = sub_1AAF906F4();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v12 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v14 = v29;
        v15 = v28;
        v16 = v27;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v12 + 8 * v39);
          if (v43 != -1)
          {
            v13 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v38) & ~*(v12 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v14 = v29;
      v15 = v28;
      v16 = v27;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v7 + 48) + 72 * v13;
      *v17 = v50;
      *(v17 + 1) = v26;
      *(v17 + 2) = v16;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      *(v17 + 24) = v54;
      *(v17 + 32) = v53;
      *(v17 + 40) = v30;
      *(v17 + 48) = v56;
      *(v17 + 56) = v55;
      *(v17 + 64) = v57;
      *(*(v7 + 56) + 16 * v13) = v52;
      ++*(v7 + 16);
      v5 = v48;
      v11 = v51;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v46)
      {
        break;
      }

      v21 = v47[v8];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v47, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v47 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1AAD88F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9AE40(0, qword_1EB423F80, MEMORY[0x1E697A3A8], MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0]);
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1AAF90684();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1AAD891B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BD98();
  v37 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v37)
      {
        v27 = v26[1];
        v38 = *v26;
        v39 = v27;
      }

      else
      {
        sub_1AAD9BDF8(v26, &v38);
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v28 = sub_1AAF906F4();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v39;
      *v17 = v38;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1AAD89460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424138, sub_1AAD68514, MEMORY[0x1E69815C0], MEMORY[0x1E69E6530]);
  v31 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8ECB4();
      v22 = sub_1AAF906F4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD89710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
  v34 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      v35 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + 32;
        do
        {
          sub_1AAD80DAC(v26, v42);
          sub_1AAD80DAC(v42, v39);
          if (v41)
          {
            v37[0] = v39[0];
            v37[1] = v39[1];
            v38 = v40;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v37);
          }

          else
          {
            v27 = *&v39[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v27);
          }

          sub_1AAD80E5C(v42);
          v26 += 48;
          --v25;
        }

        while (v25);
      }

      v15 = sub_1AAF906F4();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + 8 * v19) = v24;
      v12 = v36;
      *(*(v7 + 56) + 8 * v19) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

void sub_1AAD89A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424188, sub_1AAD80D58, &type metadata for ChartContentID, &_s8ResourceVN_2);
  v34 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      v36 = *(*(v5 + 56) + 16 * v23);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + 32;
        do
        {
          sub_1AAD80DAC(v26, v42);
          sub_1AAD80DAC(v42, v39);
          if (v41)
          {
            v37[0] = v39[0];
            v37[1] = v39[1];
            v38 = v40;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v37);
          }

          else
          {
            v27 = *&v39[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v27);
          }

          sub_1AAD80E5C(v42);
          v26 += 48;
          --v25;
        }

        while (v25);
      }

      v15 = sub_1AAF906F4();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + 8 * v19) = v24;
      *(*(v7 + 56) + 16 * v19) = v36;
      ++*(v7 + 16);
      v5 = v33;
      v12 = v35;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v35 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

void sub_1AAD89DD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1AAD9BF84(0, a3, sub_1AAD80D58, &type metadata for ChartContentID, a4);
  v39 = v6;
  v8 = sub_1AAF90394();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v23 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
LABEL_16:
      v26 = v23 | (v10 << 6);
      v27 = *(*(v7 + 48) + 8 * v26);
      v28 = *(*(v7 + 56) + 8 * v26);
      if ((v39 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v27 + 16));
      v29 = *(v27 + 16);
      if (v29)
      {
        v30 = v27 + 32;
        do
        {
          sub_1AAD80DAC(v30, v46);
          sub_1AAD80DAC(v46, v43);
          if (v45)
          {
            v41[0] = v43[0];
            v41[1] = v43[1];
            v42 = v44;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v41);
          }

          else
          {
            v31 = *&v43[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v31);
          }

          sub_1AAD80E5C(v46);
          v30 += 48;
          --v29;
        }

        while (v29);
      }

      v17 = sub_1AAF906F4();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v18) >> 6;
        v22 = v28;
        while (++v20 != v33 || (v32 & 1) == 0)
        {
          v34 = v20 == v33;
          if (v20 == v33)
          {
            v20 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v20);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_8:
      *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v27;
      *(*(v9 + 56) + 8 * v21) = v22;
      ++*(v9 + 16);
      v7 = v38;
      v14 = v40;
    }

    v24 = v10;
    while (1)
    {
      v10 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v25 = v11[v10];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v40 = (v25 - 1) & v25;
        goto LABEL_16;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_39;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v5 = v9;
}

void sub_1AAD8A130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9AE40(0, &qword_1EB424178, sub_1AAD9AABC, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1AAD9AB20(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      v27 = sub_1AAF8FFE4();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1AAD8A400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BD38();
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1AAF90684();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8A664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AAF8CBA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AAD9BC9C(0);
  v41 = v4;
  v10 = sub_1AAF90394();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1AAD9C1D8(&qword_1ED9B1650, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
      v28 = sub_1AAF8F474();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1AAD8AA18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9AC64();
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1AAF90684();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
}

void sub_1AAD8AC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2938, sub_1AACB62F8, &type metadata for Spec.Channel, &type metadata for Spec.Axis);
  v35 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v36 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v35 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v36;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8AF44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B0C60, sub_1AACFDD38, &type metadata for EncodableProperty, &type metadata for DomainOverrideFeedback);
  v35 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8B208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B67C();
  v34 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8B4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B79C();
  v39 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_1AAD9B194(v27, &v40);
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v30 = sub_1AAF906F4();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1AAD8B764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B7FC();
  v41 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = v25[4];
      if ((v41 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v31 = sub_1AAF906F4();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v26;
      v17[1] = v27;
      v17[2] = v28;
      v17[3] = v29;
      v17[4] = v30;
      ++*(v7 + 16);
      v5 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8BA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B73C();
  v35 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8BCD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9AEEE0, type metadata accessor for SgArea.Points, sub_1AAD9BA1C, &type metadata for AreaSeriesKey);
  v44 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v44 & 1) == 0)
        {

          v3 = v42;
          goto LABEL_68;
        }

        v41 = 1 << *(v5 + 32);
        v3 = v42;
        if (v41 >= 64)
        {
          bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v41;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 48 * v21;
      v24 = *v23;
      v47 = *(v23 + 8);
      v25 = *(v23 + 16);
      v46 = *(v23 + 24);
      v45 = *(v23 + 32);
      v26 = *(v23 + 40);
      v27 = *(v22 + 8 * v21);
      if ((v44 & 1) == 0)
      {
        sub_1AAD9BA70(v24, v47, v25, v46, v45, *(v23 + 40));
      }

      sub_1AAF90694();
      if ((v25 & 0x8000000000000000) == 0)
      {
        MEMORY[0x1AC5992C0](0);
        if (!v25)
        {
          v28 = 0;
LABEL_24:
          MEMORY[0x1AC5992C0](v28);
          if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v29 = v24;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_27;
        }

        if (v25 == 1)
        {
          v28 = 1;
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      MEMORY[0x1AC5992C0](1);
      if (v25 > 0xFBu)
      {
        sub_1AAF906B4();
        goto LABEL_40;
      }

      sub_1AAF906B4();
      if ((v25 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v48, v24, v47, v25 & 1);
        goto LABEL_40;
      }

      MEMORY[0x1AC5992C0](0);
      if (v25)
      {
        if (v25 != 1)
        {
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_40;
        }

        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      MEMORY[0x1AC5992C0](v30);
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v31 = v24;
      }

      else
      {
        v31 = 0;
      }

      MEMORY[0x1AC5992F0](v31);
LABEL_40:
      if (v26 < 0xFC)
      {
        sub_1AAF906B4();
        if ((v26 & 0x80) == 0)
        {
          MEMORY[0x1AC5992C0](0);
          if (!v26)
          {
            v32 = 0;
            goto LABEL_57;
          }

          if (v26 == 1)
          {
            v32 = 1;
LABEL_57:
            MEMORY[0x1AC5992C0](v32);
            if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v29 = v46;
            }

            else
            {
              v29 = 0;
            }

LABEL_27:
            MEMORY[0x1AC5992F0](v29);
            goto LABEL_47;
          }

LABEL_28:
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_47;
        }

        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v48, v46, v45, v26 & 1);
      }

      else
      {
        sub_1AAF906B4();
      }

LABEL_47:
      v33 = sub_1AAF906F4();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v27;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_70:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 48 * v15;
      *v17 = v24;
      *(v17 + 8) = v47;
      *(v17 + 16) = v25;
      *(v17 + 24) = v46;
      *(v17 + 32) = v45;
      *(v17 + 40) = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v43;
    }
  }

LABEL_68:
  *v3 = v7;
}

void sub_1AAD8C184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9B09E0, type metadata accessor for SgLine.Points, sub_1AAD9B85C, &type metadata for LineSeriesKey);
  v51 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v49 = v2;
    v50 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v20 = v8;
        while (1)
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_88;
          }

          if (v8 >= v13)
          {
            break;
          }

          v21 = v9[v8];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v12 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v51 & 1) == 0)
        {

          v3 = v49;
          goto LABEL_86;
        }

        v48 = 1 << *(v5 + 32);
        v3 = v49;
        if (v48 >= 64)
        {
          bzero(v9, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v48;
        }

        *(v5 + 16) = 0;
        goto LABEL_85;
      }

      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v51)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 72 * v22;
        v53 = *(v24 + 48);
        v54 = *v24;
        v55 = *(v24 + 32);
        v56 = *(v24 + 16);
        v25 = *(v24 + 64);
        v52 = *(v23 + 8 * v22);
      }

      else
      {
        v26 = *(v5 + 48) + 72 * v22;
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v29 = *(v26 + 48);
        v61 = *(v26 + 64);
        v60 = v29;
        v57 = *v26;
        v58 = v28;
        v59 = v27;
        v30 = *(*(v5 + 56) + 8 * v22);
        sub_1AAD9B8B0(&v57, v62);
        v52 = v30;

        v53 = v60;
        v54 = v57;
        v55 = v59;
        v56 = v58;
        v25 = v61;
      }

      sub_1AAF90694();
      if ((*(&v55 + 1) & 0x8000000000000000) != 0)
      {
        break;
      }

      MEMORY[0x1AC5992C0](0);
      if (v56)
      {
        LOBYTE(v31) = v25;
        if (v56 != 1)
        {
          goto LABEL_28;
        }

        MEMORY[0x1AC5992C0](1);
        v32 = v54;
LABEL_65:
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v32;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x1AC5992F0](v39);
        goto LABEL_69;
      }

      MEMORY[0x1AC5992C0](0);
      if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v33 = v54;
      }

      else
      {
        v33 = 0;
      }

      MEMORY[0x1AC5992F0](v33);
      LOBYTE(v31) = v25;
LABEL_69:
      v40 = sub_1AAF906F4();
      v41 = -1 << *(v7 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v17 = v55;
        v16 = v56;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_88:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v17 = v55;
      v16 = v56;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 72 * v15;
      *(v18 + 16) = v16;
      *(v18 + 32) = v17;
      *v18 = v54;
      *(v18 + 48) = v53;
      *(v18 + 64) = v31;
      *(*(v7 + 56) + 8 * v15) = v52;
      ++*(v7 + 16);
      v5 = v50;
    }

    MEMORY[0x1AC5992C0](1);
    if (v56 <= 0xFBu)
    {
      sub_1AAF906B4();
      if ((v56 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(&v57, v54, *(&v54 + 1), v56 & 1);
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        if (v56)
        {
          v31 = v25;
          if (v56 == 1)
          {
            MEMORY[0x1AC5992C0](1);
            if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v34 = v54;
            }

            else
            {
              v34 = 0;
            }

            MEMORY[0x1AC5992F0](v34);
          }

          else
          {
            MEMORY[0x1AC5992C0](2);
            sub_1AAF8F6C4();
          }

LABEL_42:
          if (BYTE8(v55) < 0xFCu)
          {
            sub_1AAF906B4();
            if ((BYTE8(v55) & 0x80) == 0)
            {
              MEMORY[0x1AC5992C0](0);
              if (BYTE8(v55))
              {
                if (BYTE8(v55) != 1)
                {
                  MEMORY[0x1AC5992C0](2);
                  sub_1AAF8F6C4();
                  goto LABEL_56;
                }

                v36 = 1;
              }

              else
              {
                v36 = 0;
              }

              MEMORY[0x1AC5992C0](v36);
              if ((*(&v56 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v37 = *(&v56 + 1);
              }

              else
              {
                v37 = 0;
              }

              MEMORY[0x1AC5992F0](v37);
              goto LABEL_56;
            }

            MEMORY[0x1AC5992C0](1);
            sub_1AACDC020(&v57, *(&v56 + 1), v55, BYTE8(v55) & 1);
          }

          else
          {
            sub_1AAF906B4();
          }

LABEL_56:
          if (v31 >= 0xFC)
          {
            sub_1AAF906B4();
            goto LABEL_69;
          }

          sub_1AAF906B4();
          if ((v31 & 0x80) != 0)
          {
            MEMORY[0x1AC5992C0](1);
            sub_1AACDC020(&v57, v53, *(&v53 + 1), v31 & 1);
            goto LABEL_69;
          }

          MEMORY[0x1AC5992C0](0);
          if (v31)
          {
            if (v31 != 1)
            {
LABEL_28:
              MEMORY[0x1AC5992C0](2);
              sub_1AAF8F6C4();
              goto LABEL_69;
            }

            v38 = 1;
          }

          else
          {
            v38 = 0;
          }

          MEMORY[0x1AC5992C0](v38);
          v32 = v53;
          goto LABEL_65;
        }

        MEMORY[0x1AC5992C0](0);
        if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v54;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x1AC5992F0](v35);
      }
    }

    else
    {
      sub_1AAF906B4();
    }

    v31 = v25;
    goto LABEL_42;
  }

LABEL_85:

LABEL_86:
  *v3 = v7;
}

void sub_1AAD8C7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B310();
  v38 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      if ((v38 & 1) == 0)
      {
        sub_1AACD7304(v23, v24, v25);
      }

      v27 = sub_1AAF90684();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8CA7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9AD7A8, sub_1AAD9B370, &type metadata for HashableText, MEMORY[0x1E69E63B0]);
  v40 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v39 = v6;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v21 + 8 * v20);
      if ((v40 & 1) == 0)
      {
        sub_1AACD7304(*v22, *(v22 + 8), *(v22 + 16));
      }

      v7 = v39;
      sub_1AAF90694();
      v28 = sub_1AAF906F4();
      v29 = -1 << *(v39 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v39 + 48) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      *(*(v39 + 56) + 8 * v15) = v27;
      ++*(v39 + 16);
      v5 = v38;
      v12 = v41;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1AAD8CD74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B90C();
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      if ((v4 & 1) == 0)
      {
      }

      v25 = sub_1AAF90684();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1AAD8CFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B6DC();
  v34 = v4;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      v25 = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}