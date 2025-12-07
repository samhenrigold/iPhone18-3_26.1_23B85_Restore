uint64_t sub_245FF9474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
  result = sub_246092374();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + (v20 << 6));
      v34 = v22[2];
      v35 = v22[3];
      v32 = *v22;
      v33 = v22[1];
      result = sub_2460924F4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v32;
      v16[1] = v33;
      v16[2] = v34;
      v16[3] = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
  return result;
}

unint64_t sub_245FF96F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_246092504();
      MEMORY[0x24C196E90](v9);
      result = sub_246092544();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PhotogrammetrySession.Request(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_245FF98C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_2460924F4();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_245FF9A30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_245FF8528(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_245FFA164();
      goto LABEL_7;
    }

    sub_245FF8964(v13, a3 & 1);
    v20 = sub_245FF8528(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for PhotogrammetrySession.Request(0) - 8) + 72) * v10;

    return sub_245FFE924(a1, v18);
  }

LABEL_13:

  return sub_245FF9F70(v10, a2, a1, v16);
}

unint64_t sub_245FF9B7C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_245FFA398();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF8CC0(v14, a3 & 1);
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      return sub_245F97BAC(a1, v19[7] + 32 * result, &unk_27EE3AA00, &qword_246098380);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v20 = (v19[7] + 32 * result);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_245FF9CC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_245FFA524();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF8F4C(v14, a3 & 1);
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7] + (result << 6);
      v21 = *(a1 + 16);
      *v20 = *a1;
      *(v20 + 16) = v21;
      *(v20 + 32) = *(a1 + 32);
      *(v20 + 48) = *(a1 + 48);
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v22 = v19[7] + (result << 6);
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = *(a1 + 48);
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_245FF9E14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_245FFA68C();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF91D8(v14, a3 & 1);
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7] + 80 * result;
      v21 = *(a1 + 48);
      *(v20 + 32) = *(a1 + 32);
      *(v20 + 48) = v21;
      *(v20 + 64) = *(a1 + 64);
      v22 = *(a1 + 16);
      *v20 = *a1;
      *(v20 + 16) = v22;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v23 = v19[7] + 80 * result;
    *(v23 + 64) = *(a1 + 64);
    v24 = *(a1 + 48);
    *(v23 + 32) = *(a1 + 32);
    *(v23 + 48) = v24;
    v25 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v25;
    v26 = v19[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v19[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FF9F70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  result = sub_245FFE800(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PhotogrammetrySession.Request);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_245FFA018()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A610, &unk_246098470);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_245FFA164()
{
  v1 = v0;
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
  v5 = *v0;
  v6 = sub_246092364();
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
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_245FFE868(*(v5 + 56) + v22, v4, type metadata accessor for PhotogrammetrySession.Request);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_245FFE800(v4, *(v7 + 56) + v22, type metadata accessor for PhotogrammetrySession.Request);
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

void *sub_245FFA398()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A518, &qword_246098388);
  v2 = *v0;
  v3 = sub_246092364();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        result = sub_245F8E7A4(*(v2 + 56) + 32 * v17, v21, &unk_27EE3AA00, &qword_246098380);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 32 * v17);
        v20 = v21[1];
        *v19 = v21[0];
        v19[1] = v20;
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

void *sub_245FFA524()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A520, &qword_246098390);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 48) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + (v14 << 6);
      v18 = *(v17 + 48);
      v19 = *v17;
      v20 = *(v17 + 16);
      v21 = *(v17 + 32);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + (v14 << 6);
      *v22 = v19;
      *(v22 + 16) = v20;
      *(v22 + 32) = v21;
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

void *sub_245FFA68C()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(v23 + 16) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 80 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 48);
      v20 = *(v17 + 64);
      v22 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v23 = *(v4 + 56) + 80 * v14;
      *(v23 + 64) = v20;
      *(v23 + 32) = v18;
      *(v23 + 48) = v19;
      *v23 = v22;
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

void *sub_245FFA800()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; v22[3] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 6));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + (v14 << 6));
      *v22 = v18;
      v22[1] = v19;
      v22[2] = v20;
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

uint64_t sub_245FFA960(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_246091B84();
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
      sub_245FFF308(&qword_27EE3A5E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_246091BB4();
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
    sub_245FFAF9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_245FFAC40(uint64_t a1)
{
  v2 = v1;
  v36 = sub_246091704();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  result = sub_246092244();
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
      sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_246091B84();
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

uint64_t sub_245FFAF9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FFAC40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_245FFB240();
      goto LABEL_12;
    }

    sub_245FFB478(v11 + 1);
  }

  v13 = *v3;
  sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v14 = sub_246091B84();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_245FFF308(&qword_27EE3A5E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_246091BB4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FFB240()
{
  v1 = v0;
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  v6 = *v0;
  v7 = sub_246092234();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_245FFB478(uint64_t a1)
{
  v2 = v1;
  v33 = sub_246091704();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  v7 = sub_246092244();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_246091B84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_245FFB794@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_245FF8590(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_245FF8CC0(v16, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = result;
    sub_245FFA398();
    result = v22;
    v18 = v10;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v18 = v10;
  if (v4)
  {
LABEL_7:
    v19 = (v18[7] + 32 * result);
    v20 = v19[1];
    *a3 = *v19;
    *(a3 + 16) = v20;
    v21 = a1[1];
    *v19 = *a1;
    v19[1] = v21;
LABEL_12:
    *v5 = v18;
    return result;
  }

LABEL_10:
  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  v23 = (v18[7] + 32 * result);
  v24 = a1[1];
  *v23 = *a1;
  v23[1] = v24;
  v25 = v18[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v18[2] = v26;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFB8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_245FF8590(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_245FF8F4C(v16, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v26 = result;
    sub_245FFA524();
    result = v26;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = v10;
    v19 = v10[7] + (result << 6);
    v20 = *v19;
    v21 = *(v19 + 16);
    v22 = *(v19 + 32);
    v23 = *(v19 + 48);
    v24 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v24;
    *(v19 + 32) = *(a1 + 32);
    *(v19 + 48) = *(a1 + 48);
    v25 = 0;
LABEL_12:
    *v5 = v18;
    *a3 = v20;
    *(a3 + 16) = v21;
    *(a3 + 32) = v22;
    *(a3 + 48) = v23;
    *(a3 + 49) = v25;
    return result;
  }

LABEL_10:
  v18 = v10;
  v25 = 1;
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a2;
  v27 = v10[7] + (result << 6);
  v28 = *(a1 + 16);
  *v27 = *a1;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a1 + 32);
  *(v27 + 48) = *(a1 + 48);
  v29 = v10[2];
  v30 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    v23 = 0;
    v10[2] = v30;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFBAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_245FF8590(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_245FF91D8(v16, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v28 = result;
    sub_245FFA68C();
    result = v28;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = 0;
    v19 = v10;
    v20 = v10[7] + 80 * result;
    v21 = *(v20 + 64);
    *(v20 + 64) = *(a1 + 64);
    v22 = *v20;
    v23 = *(v20 + 16);
    v24 = *(v20 + 32);
    v25 = *(v20 + 48);
    v26 = *(a1 + 48);
    *(v20 + 32) = *(a1 + 32);
    *(v20 + 48) = v26;
    v27 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v27;
LABEL_12:
    *v5 = v19;
    *a3 = v22;
    *(a3 + 16) = v23;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    *(a3 + 64) = v21;
    *(a3 + 65) = v18;
    return result;
  }

LABEL_10:
  v19 = v10;
  v18 = 1;
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a2;
  v29 = v10[7] + 80 * result;
  *(v29 + 64) = *(a1 + 64);
  v30 = *(a1 + 48);
  *(v29 + 32) = *(a1 + 32);
  *(v29 + 48) = v30;
  v31 = *(a1 + 16);
  *v29 = *a1;
  *(v29 + 16) = v31;
  v32 = v10[2];
  v33 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    v21 = 0;
    v10[2] = v33;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FFBC68(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  result = 0;
  v10 = a1 ^ a5;
  if (!HIDWORD(v10) && (v10 & 1) == 0 && a2 == a6)
  {
    result = 0;
    if (a3)
    {
      if (!a7 || a3 != a7)
      {
        return result;
      }
    }

    else if (a7)
    {
      return result;
    }

    if (((a4 ^ a8) & 1) == 0)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

unint64_t sub_245FFBCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A5B0, &qword_246098410);
    v3 = sub_246092384();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_245FF84C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFBDAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_245F8E624(a2, a3);
    v5 = sub_246092384();
    for (i = (a1 + 40); ; i += 4)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_245FF8590(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 4 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFBE84()
{
  result = qword_27EE3A490;
  if (!qword_27EE3A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A490);
  }

  return result;
}

unint64_t sub_245FFBED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  v3 = sub_246092384();
  v4 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 96);
  v18 = *(a1 + 112);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  result = sub_245FF8590(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 80 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 6;
    v4 = *(v7 - 2);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 64);
    v14 = *v7;
    v15 = v7[1];
    result = sub_245FF8590(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFC018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A520, &qword_246098390);
    v3 = sub_246092384();
    for (i = (a1 + 96); ; i += 80)
    {
      v5 = *(i - 8);
      v15 = *(i - 2);
      v16 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_245FF8590(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + (result << 6);
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A518, &qword_246098388);
    v3 = sub_246092384();
    for (i = a1 + 32; ; i += 40)
    {
      sub_245F8E7A4(i, &v13, &qword_27EE3A600, &unk_246098458);
      v5 = v13;
      result = sub_245FF8590(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC244(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A5F8, &qword_246098450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3A5F8, &qword_246098450);
      v11 = *v5;
      result = sub_245FF8528(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for PhotogrammetrySession.Request(0);
      result = sub_245FFE800(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PhotogrammetrySession.Request);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A4F0, &qword_246098350);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, v13, &qword_27EE3A4F8, &qword_246098358);
      result = sub_245FCB8AC(v13);
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
      result = sub_245F8E6C0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
    v3 = sub_246092384();
    for (i = (a1 + 96); ; i += 5)
    {
      v5 = *(i - 8);
      v14 = *(i - 2);
      v15 = *(i - 3);
      v12 = *i;
      v13 = *(i - 1);
      result = sub_245FF8590(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + (result << 6));
      *v8 = v15;
      v8[1] = v14;
      v8[2] = v13;
      v8[3] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245FFC654()
{
  v49 = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v47 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v47 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v47 - v17;
  type metadata accessor for ObjectCaptureImageFolderReader(0);
  v47[0] = sub_245FA7AB0();
  if (!CPGSessionOptionsCreate())
  {
    v23 = sub_245FA31EC();
    (*(v1 + 16))(v3, v23, v0);
    v24 = sub_2460918D4();
    v25 = sub_246091FB4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_245F8A000, v24, v25, "Failed to create session options!", v26, 2u);
      MEMORY[0x24C1989D0](v26, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    goto LABEL_23;
  }

  if (CPGSessionOptionsSetAutoMaskingEnabled())
  {
    v19 = sub_245FA31EC();
    (*(v1 + 16))(v6, v19, v0);
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_245F8A000, v20, v21, "Failed to enable auto masking in session options!", v22, 2u);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    if (*sub_24601FCF0() == 1)
    {
      v27 = CPGSessionOptionsSetReconstructionPowerSetting();
      v28 = sub_245FA31EC();
      v29 = *(v1 + 16);
      if (v27)
      {
        v29(v15, v28, v0);
        v30 = sub_2460918D4();
        v31 = sub_246091FB4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_245F8A000, v30, v31, "Failed to set reconstruction power setting in session options!", v32, 2u);
          MEMORY[0x24C1989D0](v32, -1, -1);
        }

        (*(v1 + 8))(v15, v0);
        goto LABEL_23;
      }

      v29(v18, v28, v0);
      v33 = sub_2460918D4();
      v34 = sub_246091FC4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_245F8A000, v33, v34, "Use low power mode to reconstruct on iPhones.", v35, 2u);
        MEMORY[0x24C1989D0](v35, -1, -1);
      }

      (*(v1 + 8))(v18, v0);
    }

    v48 = 0;
    if (CPGRequestCreateWithDetail() || !v48)
    {
      v36 = sub_245FA31EC();
      (*(v1 + 16))(v9, v36, v0);
      v37 = sub_2460918D4();
      v38 = sub_246091FB4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_245F8A000, v37, v38, "Failed to create request with detail level!", v39, 2u);
        MEMORY[0x24C1989D0](v39, -1, -1);
      }

      (*(v1 + 8))(v9, v0);
    }

    else
    {
      CPGSessionGetEstimatedProcessingTimeByNumberOfPixels();
      if (v41 > 0.0)
      {
        v42 = v41;
        CPGRequestRelease();
        CPGSessionOptionsRelease();
        return *&v42;
      }

      v43 = sub_245FA31EC();
      (*(v1 + 16))(v12, v43, v0);
      v44 = sub_2460918D4();
      v45 = sub_246091FB4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_245F8A000, v44, v45, "Failed to get estimated processing time by number of pixels!", v46, 2u);
        MEMORY[0x24C1989D0](v46, -1, -1);
      }

      (*(v1 + 8))(v12, v0);
    }

    CPGRequestRelease();
  }

LABEL_23:
  CPGSessionOptionsRelease();
  return 0;
}

uint64_t sub_245FFCCA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CPGSessionOptionsSetAutoMaskingEnabled())
  {
    sub_245FFCF7C();
    swift_allocError();
    v10 = "iguration completed";
    v11 = 0xD00000000000002DLL;
  }

  else
  {
    if (*sub_24601FCF0() == 1)
    {
      if (CPGSessionOptionsSetReconstructionPowerSetting())
      {
        sub_245FFCF7C();
        swift_allocError();
        v10 = "sSetAutoMaskingEnabled failed";
        v11 = 0xD000000000000035;
        goto LABEL_11;
      }

      v12 = sub_245FA31EC();
      (*(v6 + 16))(v8, v12, v5);
      v17 = sub_2460918D4();
      v16 = sub_246091FC4();
      if (os_log_type_enabled(v17, v16))
      {
        v13 = swift_slowAlloc();
        v15 = v13;
        *v13 = 0;
        _os_log_impl(&dword_245F8A000, v17, v16, "Using low power mode for reconstruction on iPhones", v13, 2u);
        MEMORY[0x24C1989D0](v15, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
    }

    CPGSfmOptionsSetSampleOrdering();
    CPGSfmOptionsSetFeatureSensitivity();
    CPGSfmOptionsSetProcessingMode();
    CPGSfmOptionsSetUsePriors();
    CPGSfmOptionsSetPowerSetting();
    result = CPGSessionOptionsSetSfmOptions();
    if (!result)
    {
      return result;
    }

    v11 = 0xD000000000000026;
    sub_245FFCF7C();
    swift_allocError();
    v10 = "CPGSfmOptionsCreate failed";
  }

LABEL_11:
  *v9 = v11;
  *(v9 + 8) = v10 | 0x8000000000000000;
  *(v9 + 16) = 1;
  return swift_willThrow();
}

unint64_t sub_245FFCF7C()
{
  result = qword_27EE3A4A0;
  if (!qword_27EE3A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A4A0);
  }

  return result;
}

uint64_t sub_245FFCFD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245FFD008()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 26, v3 | 7);
}

uint64_t sub_245FFD0D8()
{
  v1 = *(sub_246091704() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v3 + 2);
  v5 = v3[24];
  v6 = *(v3 + 2);
  v7 = *v3 | (*(v3 + 1) << 32);
  if (v3[25])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_245FD5F50(*(v0 + 16), (v0 + v2), v7, v6, v4, v8 | v5);
}

uint64_t type metadata accessor for PGManager(uint64_t a1)
{
  result = qword_27EE3C3F0;
  if (!qword_27EE3C3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_245FFD204()
{
  result = qword_27EE3A4C0;
  if (!qword_27EE3A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A4C0);
  }

  return result;
}

uint64_t sub_245FFD274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245FFD28C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_245F9135C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245FFD2EC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_245FFD33C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245FFD394()
{
  v1 = type metadata accessor for PhotogrammetrySample(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 232);
  if (v6 != 1)
  {
  }

  v7 = *(v1 + 76);
  v8 = sub_2460917D4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v1 + 80);
  v11 = sub_246091834();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_245FFD5D0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PhotogrammetrySample(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_245FFD65C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245FFD6B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245FFD6FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_245FFD74C(uint64_t a1)
{
  sub_245FFD91C(319, &qword_27EE3A4C8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_245FFD91C(319, &qword_27EE3A4D0, type metadata accessor for PhotogrammetrySession.Request);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_245FFD91C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2460920F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_245FFD97C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_245FFD9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

__n128 sub_245FFDA20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_245FFDA34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
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

uint64_t sub_245FFDA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraTrackingState.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraTrackingState.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245FFDC70()
{
  result = qword_27EE3C580[0];
  if (!qword_27EE3C580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE3C580);
  }

  return result;
}

uint64_t sub_245FFDCC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_245FFDCD4(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = sub_245FA31EC();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245F8A000, v7, v8, "Processing warning generated.", v9, 2u);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_245FFDE2C(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  result = MEMORY[0x24C1968D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_245FFA960(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

char *sub_245FFDFC8(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  SfmMap = CPGOutputGetSfmMap();
  if (!SfmMap)
  {
    v32 = sub_245FA31EC();
    (*(v3 + 16))(v5, v32, v2);
    v33 = sub_2460918D4();
    v34 = sub_246091FB4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v60 = a1;
      v61 = v36;
      *v35 = 136446210;
      v37 = sub_246091C54();
      v39 = sub_245F8D3C0(v37, v38, &v61);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_245F8A000, v33, v34, "Can't get SfM map from native output %{public}s", v35, 0xCu);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v35, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84F90];
  }

  v16 = SfmMap;
  v17 = CPGSfmMapCopyAllSampleIDs();
  if (!v17)
  {
    v40 = sub_245FA31EC();
    (*(v3 + 16))(v8, v40, v2);
    v41 = sub_2460918D4();
    v42 = sub_246091FB4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v16;
      v61 = v44;
      *v43 = 136446210;
      v45 = sub_246091C54();
      v47 = sub_245F8D3C0(v45, v46, &v61);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_245F8A000, v41, v42, "Can't get sample ids from SfM map %{public}s", v43, 0xCu);
      sub_245F8E6F4(v44);
      MEMORY[0x24C1989D0](v44, -1, -1);
      MEMORY[0x24C1989D0](v43, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return MEMORY[0x277D84F90];
  }

  v18 = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_24;
  }

  v61 = 0;
  sub_246091DC4();

  v20 = v61;
  if (!v61)
  {
LABEL_24:
    v48 = sub_245FA31EC();
    (*(v3 + 16))(v11, v48, v2);
    v49 = sub_2460918D4();
    v50 = sub_246091FB4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v18;
      v61 = v52;
      *v51 = 136446210;
      sub_245F8E624(&qword_27EE3A500, &qword_246098360);
      v53 = sub_246091C54();
      v55 = sub_245F8D3C0(v53, v54, &v61);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_245F8A000, v49, v50, "Can't convert sample ids array: %{public}s", v51, 0xCu);
      sub_245F8E6F4(v52);
      MEMORY[0x24C1989D0](v52, -1, -1);
      MEMORY[0x24C1989D0](v51, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    return MEMORY[0x277D84F90];
  }

  v21 = v61[2];
  if (v21)
  {
    v58 = (v3 + 16);
    v59 = v2;
    v22 = MEMORY[0x277D84F90];
    v57 = (v3 + 8);
    v23 = 32;
    *&v19 = 134349056;
    v56 = v19;
    while (1)
    {
      v24 = *(v20 + v23);
      if ((CPGSfmMapIsSampleRegistered() & 1) == 0)
      {
        v25 = sub_245FA31EC();
        (*v58)(v14, v25, v59);
        v26 = sub_2460918D4();
        v27 = sub_246091FA4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = v56;
          *(v28 + 4) = v24;
          _os_log_impl(&dword_245F8A000, v26, v27, "Adding low quality sample: id=%{public}llu...", v28, 0xCu);
          MEMORY[0x24C1989D0](v28, -1, -1);
        }

        result = (*v57)(v14, v59);
        if (v24 < 0)
        {
          __break(1u);
          return result;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_245FF82A8(0, *(v22 + 2) + 1, 1, v22, &qword_27EE3A0E8, &qword_24609ADA0);
        }

        v31 = *(v22 + 2);
        v30 = *(v22 + 3);
        if (v31 >= v30 >> 1)
        {
          v22 = sub_245FF82A8((v30 > 1), v31 + 1, 1, v22, &qword_27EE3A0E8, &qword_24609ADA0);
        }

        *(v22 + 2) = v31 + 1;
        *&v22[8 * v31 + 32] = v24;
      }

      v23 += 8;
      if (!--v21)
      {

        return v22;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_245FFE618(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Properties = CPGOutputGetProperties();
  if (Properties)
  {
    v6 = Properties;
    Copy = CFDictionaryCreateCopy(0, v6);

    if (Copy)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v14 = 0;
        sub_246091B54();

        result = v14;
        if (v14)
        {
          return result;
        }
      }

      else
      {
      }
    }
  }

  v9 = sub_245FA31EC();
  (*(v2 + 16))(v4, v9, v1);
  v10 = sub_2460918D4();
  v11 = sub_246091FB4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_245F8A000, v10, v11, "Can't convert backend properties dict to [AnyHashable: Any]!", v12, 2u);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_245FFC41C(MEMORY[0x277D84F90]);
}

uint64_t sub_245FFE800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_245FFE868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_245FFE8D0()
{
  result = qword_27EE3A580;
  if (!qword_27EE3A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A580);
  }

  return result;
}

uint64_t sub_245FFE924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245FFE988()
{
  result = qword_27EE3A5A0;
  if (!qword_27EE3A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A5A0);
  }

  return result;
}

unint64_t sub_245FFE9DC()
{
  result = qword_27EE3A5A8;
  if (!qword_27EE3A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A5A8);
  }

  return result;
}

uint64_t sub_245FFEA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245FFEAFC()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 3, v11))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_245FFECD0()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 3, v11))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_245FFEE80(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_246091704() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v6, v7, v1 + v3, v8);
}

uint64_t sub_245FFEF64()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_245FFEFA4()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_245FD8C80(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48), *(v0 + 56));
}

uint64_t sub_245FFEFEC()
{
  v1 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + 26, v2 | v7 | 7);
}

uint64_t sub_245FFF16C()
{
  v1 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_246091704() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v6 + 2);
  v8 = v6[24];
  v9 = *(v6 + 2);
  v10 = *v6 | (*(v6 + 1) << 32);
  if (v6[25])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return sub_245FD75F8(*(v0 + 16), v0 + v2, v0 + v5, v10, v9, v7, v11 | v8);
}

uint64_t sub_245FFF298(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FFF308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_245FFF468@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24600A110(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_245FFF4B4(__CVBuffer *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = CVBufferCopyAttachment(a1, *MEMORY[0x277CD3410], 0);
  v7 = v6;
  if (v6)
  {
    v15 = v6;
    swift_dynamicCast();
    v8 = v14[3];
  }

  else
  {
    v9 = sub_245FA3174();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_2460918D4();
    v11 = sub_246091FB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Couldn't find the orientation image property attachment!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v8 = 0;
  }

  return v8 | ((v7 == 0) << 32);
}

void *sub_245FFF67C(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_245F8E498(MEMORY[0x277D84F90]);
  v63 = v10;
  v11 = *MEMORY[0x277CD3038];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3038]))
  {
    v12 = CVBufferCopyAttachment(a1, v11, 0);
    if (v12)
    {
      *&v61 = v12;
      v13 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v14 = sub_246091C04();
        v16 = v15;
        ObjectType = v13;
        *&v61 = *&v60[0];
        sub_245F8E6C0(&v61, v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v14, v16, isUniquelyReferenced_nonNull_native);

        v63 = v10;
      }
    }
  }

  v18 = *MEMORY[0x277CD3490];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3490]))
  {
    v19 = CVBufferCopyAttachment(a1, v18, 0);
    if (v19)
    {
      *&v61 = v19;
      v20 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v21 = *&v60[0];
        v22 = sub_246091C04();
        v24 = v23;
        ObjectType = v20;
        *&v61 = v21;
        sub_245F8E6C0(&v61, v60);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v22, v24, v25);

        v63 = v10;
      }
    }
  }

  v26 = CVBufferCopyAttachment(a1, *MEMORY[0x277CD3410], 0);
  v27 = sub_246091C04();
  v29 = v27;
  v30 = v28;
  if (v26)
  {
    ObjectType = swift_getObjectType();
    *&v61 = v26;
    sub_245F8E6C0(&v61, v60);
    swift_unknownObjectRetain();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_246008DF4(v60, v29, v30, v31);

    v63 = v10;
  }

  else
  {
    sub_246007958(v27, v28, &v61);

    sub_245F8E744(&v61, &unk_27EE3AA00, &qword_246098380);
  }

  v32 = *MEMORY[0x277CD3258];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3258]))
  {
    v33 = CVBufferCopyAttachment(a1, v32, 0);
    if (v33)
    {
      *&v61 = v33;
      v34 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v35 = a5;
        v36 = a2;
        v37 = a3;
        v38 = a4;
        v39 = *&v60[0];
        v59 = sub_246091C04();
        v41 = v40;
        ObjectType = v34;
        *&v61 = v39;
        a4 = v38;
        a3 = v37;
        a2 = v36;
        a5 = v35;
        sub_245F8E6C0(&v61, v60);
        v42 = v63;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v59, v41, v43);

        v63 = v42;
      }
    }
  }

  if (a5)
  {
    swift_unknownObjectRelease();
    return v63;
  }

  else
  {
    sub_245F8E624(&qword_27EE39F18, &qword_246096608);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_246096640;
    *(v45 + 32) = a2;
    *(v45 + 40) = a3;
    *(v45 + 48) = a4;
    v46 = sub_245F8E498(MEMORY[0x277D84F90]);
    v47 = *MEMORY[0x277CD33B0];
    if (CVBufferHasAttachment(a1, *MEMORY[0x277CD33B0]))
    {

      v48 = CVBufferCopyAttachment(a1, v47, 0);
      if (v48 && (*&v61 = v48, sub_245F8E624(&qword_27EE39ED0, &unk_246096480), (swift_dynamicCast() & 1) != 0))
      {
        v46 = *&v60[0];
      }

      else
      {
        v46 = sub_245F8E498(MEMORY[0x277D84F90]);
      }
    }

    result = OCNonModularSPI_AppleMakerNote_FocusAccelerometerVector();
    if (result)
    {
      v49 = result;
      v50 = sub_246091C04();
      v52 = v51;

      ObjectType = sub_245F8E624(&qword_27EE3A638, &unk_2460985B0);
      *&v61 = v45;
      sub_245F8E6C0(&v61, v60);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      sub_246008DF4(v60, v50, v52, v53);

      v54 = sub_246091C04();
      v56 = v55;
      ObjectType = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      *&v61 = v46;
      sub_245F8E6C0(&v61, v60);
      v57 = v63;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      sub_246008DF4(v60, v54, v56, v58);

      swift_unknownObjectRelease();
      return v57;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_245FFFC14(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3ACE0, &unk_246098880);
    v14 = sub_24600790C(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_246009C80();
        v18 = v22;
      }

      sub_24600BE48(*(v18 + 56) + *(v10 + 72) * v16, v8);
      sub_246008910(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_245F8E744(v8, &qword_27EE3ACE0, &unk_246098880);
  }

  else
  {
    sub_24600BE48(a1, v13);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_2460090E0(v13, v19, a2);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_245FFFE48@<X0>(uint64_t result@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (result)
  {
    v4 = a2[2];
    if (v4)
    {
      if (*&v4 <= *(a3 + 16))
      {
        v5 = a2 + 4;
        v6 = (a3 + 32);
        v7 = (result + 24);
        while (1)
        {
          v8 = *v5->f32;
          *(v7 - 3) = vcvtq_f64_f32(*v5);
          *(v7 - 1) = *(&v8 + 2);
          v10 = *v6++;
          v9 = v10;
          if (v10 >> 31)
          {
            break;
          }

          *v7 = v9;
          v7 += 4;
          v5 += 2;
          if (!--*&v4)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_245FFFEBC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_245F8E624(&qword_27EE3A640, &qword_2460985C0);
    swift_allocObject();

    v1 = sub_246091944();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_245FFFF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460919F4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246091A64();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24600CBB4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFA70;
  v14 = _Block_copy(aBlock);

  sub_246091A14();
  v19 = MEMORY[0x277D84F90];
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_246000284@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_2460002D8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_24600031C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_245FFFEBC();
    sub_245F8E624(&qword_27EE3A640, &qword_2460985C0);
    sub_245F9218C(&qword_27EE3A648, &qword_27EE3A640, &qword_2460985C0, MEMORY[0x277CBCEB0]);
    v1 = sub_2460919A4();

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t ObjectCaptureHEICBundleWriter.WriteInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0) + 20);
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ObjectCaptureHEICBundleWriter.WriteInfo.error.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_24600A140(v4, v5);
}

uint64_t ObjectCaptureHEICBundleWriter.WriteInfo.init(shotID:url:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  *a4 = a1;
  v8 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  v9 = *(v8 + 20);
  v10 = sub_246091704();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v12 = &a4[*(v8 + 24)];
  *v12 = v6;
  *(v12 + 1) = v7;
  return result;
}

uint64_t sub_2460005C8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    sub_245F8E624(&qword_27EE3A650, &qword_2460985C8);
    swift_allocObject();
    v1 = sub_246091934();
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_24600064C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_2460006A0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

uint64_t sub_2460006E4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    sub_2460005C8();
    sub_245F8E624(&qword_27EE3A650, &qword_2460985C8);
    sub_245F9218C(&qword_27EE3A658, &qword_27EE3A650, &qword_2460985C8, MEMORY[0x277CBCE20]);
    v1 = sub_2460919A4();

    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t ObjectCaptureHEICBundleWriter.__allocating_init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectCaptureHEICBundleWriter.init(publishers:url:)(a1, a2);
  return v4;
}

uint64_t ObjectCaptureHEICBundleWriter.init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v93 = a1;
  v103[3] = *MEMORY[0x277D85DE8];
  v87 = sub_245F8E624(&qword_27EE3A660, &qword_2460985D0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v77 - v4;
  v83 = sub_245F8E624(&qword_27EE3A668, &qword_2460985D8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - v5;
  v6 = sub_245F8E624(&qword_27EE3A670, &qword_2460985E0);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v77 - v7;
  v80 = sub_245F8E624(&qword_27EE3A678, &qword_2460985E8);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v77 - v8;
  v98 = sub_2460918F4();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_246092034();
  v101 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246092004();
  MEMORY[0x28223BE20](v11);
  v12 = sub_246091A64();
  MEMORY[0x28223BE20](v12 - 8);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_subscriptions) = MEMORY[0x277D84FA0];
  v13 = (v2 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotMetadataMap;
  v15 = MEMORY[0x277D84F90];
  *(v3 + v14) = sub_24600A164(MEMORY[0x277D84F90]);
  v16 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotFeatureMatchabilityScoreMap;
  *(v3 + v16) = sub_24600A32C(v15);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) = 0;
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID) = -1;
  v17 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
  *(v3 + v17) = sub_24600A40C(v15);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle) = 0;
  v92 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue;
  v100 = sub_245F90360();
  v91 = "onPowerSetting failed";
  sub_246091A54();
  v103[0] = v15;
  v89 = sub_24600CAC0(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v90 = sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  v18 = *MEMORY[0x277D85260];
  v88 = *(v101 + 104);
  v101 += 104;
  v19 = v95;
  v88(v94, v18, v95);
  *(v3 + v92) = sub_246092074();
  v92 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveQueue;
  sub_246091A54();
  v103[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v20 = v94;
  v21 = v19;
  v22 = v88;
  v88(v94, v18, v21);
  *(v3 + v92) = sub_246092074();
  v92 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateQueue;
  sub_246091A54();
  sub_246091FF4();
  v22(v20, v18, v95);
  *(v3 + v92) = sub_246092074();
  v23 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup;
  *(v3 + v23) = dispatch_group_create();
  v24 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup;
  *(v3 + v24) = dispatch_group_create();
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) = 0;
  v25 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  sub_245F8E624(&qword_27EE3A680, &qword_246098960);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v3 + v25) = v26;
  v27 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  *(v3 + v27) = sub_24600A5F4(MEMORY[0x277D84F90]);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_meshWriter) = 0;
  v28 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v29 = sub_246091704();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v3 + v28, v99, v29);
  v31 = sub_245FA3174();
  (*(v96 + 16))(v97, v31, v98);

  v32 = sub_2460918D4();
  v33 = sub_246091FC4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v101 = v30;
    v35 = v34;
    v36 = swift_slowAlloc();
    v103[0] = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    v37 = sub_2460916F4();
    v39 = v29;
    v40 = v3;
    v41 = sub_245F8D3C0(v37, v38, v103);

    *(v35 + 14) = v41;
    v3 = v40;
    v29 = v39;
    _os_log_impl(&dword_245F8A000, v32, v33, "HEIC Writer: Writer output URL: %{private,mask.hash}s", v35, 0x16u);
    sub_245F8E6F4(v36);
    MEMORY[0x24C1989D0](v36, -1, -1);
    v42 = v35;
    v30 = v101;
    MEMORY[0x24C1989D0](v42, -1, -1);
  }

  (*(v96 + 8))(v97, v98);
  v43 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle;
  swift_beginAccess();
  v44 = OCNonModularSPI_CMPhoto_HeicWriteCreate();
  swift_endAccess();
  if (v44)
  {
    v45 = 0x80000002460A1010;
    sub_24600A7DC();
    swift_allocError();
    v47 = 0xD000000000000039;
LABEL_7:
    *v46 = v47;
    v46[1] = v45;
    goto LABEL_8;
  }

  if (OCNonModularSPI_CMPhoto_HeicWriteStart())
  {
    OCNonModularSPI_CMPhoto_HeicWriteDestroy();
    *(v3 + v43) = 0;
    v45 = 0x80000002460A1050;
    sub_24600A7DC();
    swift_allocError();
    v47 = 0xD000000000000034;
    goto LABEL_7;
  }

  v49 = [objc_opt_self() defaultManager];
  v50 = sub_246091674();
  v103[0] = 0;
  v51 = [v49 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:v103];

  if (v51)
  {
    v52 = v93;
    v53 = (*(*v93 + 216))(v103[0]);
    v91 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue;
    v102 = *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue);
    v54 = v102;
    v103[0] = v53;
    v98 = sub_246092024();
    v55 = *(v98 - 8);
    v97 = *(v55 + 56);
    v94 = (v55 + 56);
    v90 = v29;
    v56 = v84;
    (v97)(v84, 1, 1, v98);
    v57 = v54;
    v101 = v30;
    v58 = v57;
    sub_245F8E624(&qword_27EE3A690, &qword_2460985F0);
    v96 = MEMORY[0x277CBCD90];
    sub_245F9218C(&qword_27EE3A698, &qword_27EE3A690, &qword_2460985F0, MEMORY[0x277CBCD90]);
    v95 = sub_24600CAC0(&qword_27EE3A6A0, sub_245F90360, MEMORY[0x277D85228]);
    v59 = v78;
    sub_2460919C4();
    sub_245F8E744(v56, &qword_27EE3A670, &qword_2460985E0);

    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = sub_24600A868;
    *(v61 + 24) = v60;
    v92 = MEMORY[0x277CBCD60];
    sub_245F9218C(&qword_27EE3A6A8, &qword_27EE3A678, &qword_2460985E8, MEMORY[0x277CBCD60]);

    v62 = v80;
    sub_2460919B4();

    (*(v79 + 8))(v59, v62);
    v63 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_subscriptions;
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    v65 = (*(*v52 + 264))(v64);
    v102 = *&v91[v3];
    v66 = v102;
    v103[0] = v65;
    (v97)(v56, 1, 1, v98);
    v67 = v66;
    sub_245F8E624(&qword_27EE3A6B0, &qword_2460985F8);
    sub_245F9218C(&qword_27EE3A6B8, &qword_27EE3A6B0, &qword_2460985F8, v96);
    v68 = v81;
    sub_2460919C4();
    sub_245F8E744(v56, &qword_27EE3A670, &qword_2460985E0);

    swift_allocObject();
    swift_weakInit();
    sub_245F9218C(&qword_27EE3A6C0, &qword_27EE3A668, &qword_2460985D8, v92);
    v69 = v83;
    sub_2460919B4();

    (*(v82 + 8))(v68, v69);
    v89 = v63;
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    v71 = (*(*v52 + 312))(v70);
    v102 = *&v91[v3];
    v72 = v102;
    v103[0] = v71;
    (v97)(v56, 1, 1, v98);
    v73 = v72;
    sub_245F8E624(&qword_27EE3A6C8, &qword_246098600);
    sub_245F9218C(&qword_27EE3A6D0, &qword_27EE3A6C8, &qword_246098600, v96);
    v74 = v85;
    sub_2460919C4();
    sub_245F8E744(v56, &qword_27EE3A670, &qword_2460985E0);

    swift_allocObject();
    swift_weakInit();

    sub_245F9218C(&qword_27EE3A6D8, &qword_27EE3A660, &qword_2460985D0, v92);
    v75 = v87;
    sub_2460919B4();

    (*(v86 + 8))(v74, v75);
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    (*(v101 + 8))(v99, v90);
    return v3;
  }

  v76 = v103[0];
  sub_2460915D4();

LABEL_8:
  swift_willThrow();

  (*(v30 + 8))(v99, v29);
  return v3;
}

uint64_t sub_24600198C(uint64_t *a1, double *a2, uint64_t a3)
{
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v13 = a1[3];
  v12 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v29 = v12;
    sub_24608FCD0();
    OCSignPostsAriadneDbgCode();
    result = kdebug_trace();
    v16 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID;
    v17 = *(v15 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(v15 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID) = v19;
      sub_24600733C(*a2);
      sub_246091634();

      v27 = v13;
      v28 = v5;
      v20 = v10;
      v21 = *(v15 + v16);
      v22 = a2;
      v23 = v11;
      v24 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v15 + v24);
      *(v15 + v24) = 0x8000000000000000;
      sub_246008F44(v21, v8, isUniquelyReferenced_nonNull_native);
      *(v15 + v24) = v34;
      swift_endAccess();
      v26 = *(v15 + v16);
      *&v30 = v9;
      *(&v30 + 1) = v20;
      v31 = v23;
      v32 = v27;
      v33 = v29;
      sub_2460032D8(v26, &v30, v22, v8);
      sub_24608FCDC();
      OCSignPostsAriadneDbgCode();
      kdebug_trace();

      return (*(v6 + 8))(v8, v28);
    }
  }

  return result;
}

uint64_t sub_246001BC8(double *a1, uint64_t a2)
{
  v3 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *a1;
    sub_24600B080(a1, v5);
    v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_245FFFC14(v5, v7);
    swift_endAccess();
  }

  return result;
}

void sub_246001D00(uint64_t *a1, uint64_t a2)
{
  v122 = sub_245F8E624(&qword_27EE3A718, &qword_246098868);
  MEMORY[0x28223BE20](v122);
  v4 = (&v116 - v3);
  v138 = sub_246091704();
  v124 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v141 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460918F4();
  v128 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v116 - v10;
  MEMORY[0x28223BE20](v11);
  v117 = &v116 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v116 - v14;
  MEMORY[0x28223BE20](v15);
  v127 = &v116 - v16;
  v17 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v132 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v116 - v21;
  v22 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  MEMORY[0x28223BE20](v22 - 8);
  v140 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = (&v116 - v25);
  v26 = sub_246091AA4();
  v123 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v129 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v116 - v29;
  v125 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  v118 = v26;
  v116 = v4;
  v119 = v8;
  v130 = v6;
  sub_24608FD00();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v126 = v30;
  sub_246091A84();
  v33 = v32;
  v34 = *(v32 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup);
  sub_246091FE4();

  v35 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotMetadataMap;
  swift_beginAccess();
  v36 = *(v33 + v35);
  v37 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v137 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v41 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
  v133 = v36;

  v142 = v33;
  v136 = v41;
  swift_beginAccess();
  v42 = 0;
  v43 = (v38 + 63) >> 6;
  v135 = (v124 + 8);
  v134 = xmmword_246096EF0;
  for (i = v140; ; i = v140)
  {
    if (!v40)
    {
      if (v43 <= v42 + 1)
      {
        v46 = v42 + 1;
      }

      else
      {
        v46 = v43;
      }

      v47 = v46 - 1;
      while (1)
      {
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v45 >= v43)
        {
          v71 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
          (*(*(v71 - 8) + 56))(i, 1, 1, v71);
          v40 = 0;
          v42 = v47;
          goto LABEL_18;
        }

        v40 = *(v37 + 8 * v45);
        ++v42;
        if (v40)
        {
          v42 = v45;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v45 = v42;
LABEL_17:
    v48 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v49 = v48 | (v45 << 6);
    v50 = *(*(v133 + 48) + 8 * v49);
    v51 = v131;
    sub_24600B080(*(v133 + 56) + *(v132 + 72) * v49, v131);
    v52 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
    v53 = *(v52 + 48);
    *i = v50;
    sub_24600BE48(v51, i + v53);
    (*(*(v52 - 8) + 56))(i, 0, 1, v52);
LABEL_18:
    v54 = v139;
    sub_245FC5914(i, v139, &qword_27EE3A720, &unk_246098870);
    v55 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    v56 = *v54;
    sub_24600BE48(v54 + *(v55 + 48), v19);
    v57 = objc_opt_self();
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v58 = swift_allocObject();
    *(v58 + 16) = v134;
    v59 = v142;
    *(v58 + 32) = sub_2460916F4();
    *(v58 + 40) = v60;
    v143 = sub_24602138C(v56);
    v144 = v61;
    MEMORY[0x24C196640](0x434945482ELL, 0xE500000000000000);
    v62 = v144;
    *(v58 + 48) = v143;
    *(v58 + 56) = v62;
    v63 = sub_246091DB4();

    v64 = [v57 pathWithComponents_];

    sub_246091C04();
    v65 = v141;
    sub_246091634();

    v66 = *(v59 + v136);
    if (*(v66 + 16))
    {

      v67 = sub_246007838(v65);
      if (v68)
      {
        v69 = *(*(v66 + 56) + 8 * v67);

        v70 = v69;
        v65 = v141;
        sub_246004940(v70, v19, v141);
      }

      else
      {
      }
    }

    (*v135)(v65, v138);
    sub_24600C49C(v19, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  }

  v72 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup);
  sub_246091FE4();

  sub_246091A84();
  v73 = sub_246091A74();
  v74 = sub_246091A74();
  v75 = v73 - v74;
  if (v73 < v74)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v76 = sub_245FA3174();
  v77 = *(v128 + 16);
  v78 = v130;
  v77(v127, v76, v130);
  v79 = sub_2460918D4();
  v80 = sub_246091FC4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = v75;
    v82 = swift_slowAlloc();
    *v82 = 134349056;
    *(v82 + 4) = v81 / 1000000000.0;
    _os_log_impl(&dword_245F8A000, v79, v80, "HEIC Writer: Update all images used %{public}f seconds.", v82, 0xCu);
    MEMORY[0x24C1989D0](v82, -1, -1);
  }

  v83 = *(v128 + 8);
  v83(v127, v78);
  sub_24608FD0C();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  if (v125 != 7)
  {
    v91 = v120;
    v77(v120, v76, v78);
    v92 = sub_2460918D4();
    v93 = sub_246091FB4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_245F8A000, v92, v93, "HEIC Writer: Failed to write HEIC bundle.", v94, 2u);
      MEMORY[0x24C1989D0](v94, -1, -1);
    }

    v83(v91, v78);
    v87 = v142;
    v95 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    if (!v95)
    {
      goto LABEL_42;
    }

    v96 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v143 = v125;
    sub_24600CA6C();

    v97 = sub_246092484();
    v98 = v116;
    *v116 = v97;
    v98[1] = v99;
    swift_storeEnumTagMultiPayload();
    v95(v98);
    v87 = v142;
    sub_245FFDCC4(v95, v96);
    v100 = v98;
LABEL_41:
    sub_245F8E744(v100, &qword_27EE3A718, &qword_246098868);
    goto LABEL_42;
  }

  if (*(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) < 1)
  {
    v101 = v117;
    v77(v117, v76, v78);
    v102 = sub_2460918D4();
    v103 = sub_246091FC4();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_245F8A000, v102, v103, "HEIC Writer: Failed to write HEIC bundle, no files written!", v104, 2u);
      MEMORY[0x24C1989D0](v104, -1, -1);
    }

    v83(v101, v78);
    v87 = v142;
    v88 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    if (!v88)
    {
      goto LABEL_42;
    }

    v89 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v90 = v116;
    *v116 = 0xD00000000000001DLL;
    v90[1] = 0x80000002460A1360;
LABEL_40:
    swift_storeEnumTagMultiPayload();

    v88(v90);
    v105 = v89;
    v87 = v142;
    sub_245FFDCC4(v88, v105);
    v100 = v90;
    goto LABEL_41;
  }

  v77(v121, v76, v78);
  v84 = sub_2460918D4();
  v85 = sub_246091FC4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_245F8A000, v84, v85, "HEIC Writer: Successfully wrote HEIC bundle.", v86, 2u);
    MEMORY[0x24C1989D0](v86, -1, -1);
  }

  v83(v121, v78);
  v87 = v142;
  v88 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
  if (v88)
  {
    v89 = *(v142 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v90 = v116;
    (*(v124 + 16))(v116, v142 + v137, v138);
    goto LABEL_40;
  }

LABEL_42:
  v106 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle;
  swift_beginAccess();
  v107 = OCNonModularSPI_CMPhoto_HeicWriteStop();
  v108 = OCNonModularSPI_CMPhoto_HeicWriteDestroy();
  *(v87 + v106) = 0;
  v109 = v119;
  v77(v119, v76, v130);
  v110 = v109;
  v111 = sub_2460918D4();
  v112 = sub_246091FC4();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 67240448;
    *(v113 + 4) = v107;
    *(v113 + 8) = 1026;
    *(v113 + 10) = v108;
    _os_log_impl(&dword_245F8A000, v111, v112, "HEIC Writer: HEIC bundle writer stopped with state %{public}d and destroyed with state %{public}d", v113, 0xEu);
    MEMORY[0x24C1989D0](v113, -1, -1);
  }

  v83(v110, v130);
  v114 = *(v123 + 8);
  v115 = v118;
  v114(v129, v118);
  v114(v126, v115);
}

uint64_t sub_246002C14()
{
  v1 = *(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);

  os_unfair_lock_lock(v1 + 4);
  sub_24600A938();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_246002C8C(uint64_t a1)
{
  v47 = sub_246091834();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245F8E624(&qword_27EE3A708, &qword_246098850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v36 = v10;
  v37 = a1;
  v11 = *(a1 + v10);
  v12 = *(v11 + 64);
  v38 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v39 = v2 + 32;
  v40 = v2 + 16;
  v44 = v2;
  v45 = v11;
  v46 = (v2 + 8);

  v17 = 0;
  v41 = v9;
  v42 = v6;
  v18 = v43;
  if (v15)
  {
    while (1)
    {
      v19 = v17;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v25 = v44;
      v24 = v45;
      v26 = v47;
      (*(v44 + 16))(v18, *(v45 + 48) + *(v44 + 72) * v23, v47);
      v27 = *(*(v24 + 56) + 8 * v23);
      v28 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
      v29 = *(v28 + 48);
      v30 = *(v25 + 32);
      v6 = v42;
      v30(v42, v18, v26);
      *&v6[v29] = v27;
      (*(*(v28 - 8) + 56))(v6, 0, 1, v28);

      v21 = v19;
      v9 = v41;
LABEL_13:
      sub_245FC5914(v6, v9, &qword_27EE3A708, &qword_246098850);
      v31 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
      if ((*(*(v31 - 8) + 48))(v9, 1, v31) == 1)
      {
        break;
      }

      sub_246091AD4();

      (*v46)(v9, v47);
      v17 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v33 = v37;
    *(v37 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) = 1;
    v34 = sub_24600A5F4(MEMORY[0x277D84F90]);
    *(v33 + v36) = v34;
  }

  else
  {
LABEL_5:
    if (v16 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v32 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
        (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v38 + 8 * v19);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2460030A0()
{
  v1 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v2 = *(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v5 = *(v0 + v1);

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t sub_246003134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_246009228(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v9;
  return swift_endAccess();
}

uint64_t sub_2460031D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v7 = sub_245FC1BDC(a2);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_246009E90();
    }

    v13 = *(v12 + 48);
    v14 = sub_246091834();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v8 = *(*(v12 + 56) + 8 * v10);
    sub_246008AD4(v10, v12);
    *(a1 + v6) = v12;
  }

  *a3 = v8;
  return swift_endAccess();
}

uint64_t sub_2460032D8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v60 = a3;
  v68 = a1;
  v6 = sub_2460918F4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2460919F4();
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_246091704();
  v73 = *(v75 - 8);
  v59 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091834();
  v82 = *(v12 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v57 = &v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = a2[1];
  v89 = *a2;
  v90 = v20;
  v91 = *(a2 + 4);
  v65 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v21 = *(v4 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v85[8] = sub_24600C540;
  v86 = v4;
  v62 = v4;

  os_unfair_lock_lock(v21 + 4);
  sub_24600CC94();
  v69 = 0;
  os_unfair_lock_unlock(v21 + 4);

  v22 = v19;
  v77 = v19;
  sub_246091824();
  v23 = swift_allocObject();
  v76 = v23;
  *(v23 + 16) = 0;
  v61 = (v23 + 16);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v82;
  v26 = *(v82 + 16);
  v66 = v82 + 16;
  v67 = v26;
  v27 = v12;
  v81 = v12;
  v26(v16, v22, v12);
  sub_24600B080(v60, v72);
  v28 = v73;
  (*(v73 + 16))(v74, v63, v75);
  v29 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v58 + 80) + v31 + 40) & ~*(v58 + 80);
  v33 = (v11 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = (v59 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  (*(v82 + 32))(v35 + v29, v57, v27);
  *(v35 + v30) = v76;
  v36 = v35 + v31;
  *(v36 + 32) = v91;
  v37 = v90;
  *v36 = v89;
  *(v36 + 16) = v37;
  sub_24600BE48(v72, v35 + v32);
  (*(v73 + 32))(v35 + v33, v74, v75);
  *(v35 + v34) = v68;
  aBlock[4] = sub_24600C828;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFA20;
  _Block_copy(aBlock);
  v87[5] = MEMORY[0x277D84F90];

  sub_24600C978(&v89, v87);
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  v38 = v64;
  sub_2460921A4();
  sub_246091AE4();
  swift_allocObject();
  v39 = sub_246091AC4();

  v40 = v61;
  swift_beginAccess();
  *v40 = v39;

  v41 = *(v62 + v65);
  v42 = v62;
  v43 = v77;
  v85[2] = v62;
  v85[3] = v77;
  v85[4] = v39;
  v83 = sub_24600CC74;
  v84 = v85;

  os_unfair_lock_lock(v41 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v41 + 4);

  dispatch_group_enter(*(v42 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup));
  sub_246092064();
  sub_245FA3174();
  (*(v79 + 16))();
  v67(v38, v43, v81);
  v44 = sub_2460918D4();
  v45 = sub_246091F94();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v87[0] = v47;
    *v46 = 136315138;
    v48 = sub_2460917F4();
    v49 = v38;
    v51 = v50;
    v52 = *(v82 + 8);
    v52(v49, v81);
    v53 = sub_245F8D3C0(v48, v51, v87);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_245F8A000, v44, v45, "HEIC Writer: Save work item submitted: %s", v46, 0xCu);
    sub_245F8E6F4(v47);
    MEMORY[0x24C1989D0](v47, -1, -1);
    MEMORY[0x24C1989D0](v46, -1, -1);

    (*(v79 + 8))(v78, v80);
    v52(v77, v81);
  }

  else
  {

    v54 = v81;
    v55 = *(v82 + 8);
    v55(v38, v81);
    (*(v79 + 8))(v78, v80);
    v55(v77, v54);
  }
}

void sub_246003B98(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) == 1)
  {
    v6 = sub_245FA3174();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_2460918D4();
    v8 = sub_246091FB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245F8A000, v7, v8, "HEIC Writer: Writer is cancelled!", v9, 2u);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_246003D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v47 = a6;
  v45 = a5;
  v50 = a4;
  v43 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v49 = result;
  if (result)
  {
    v48 = a2;
    swift_beginAccess();
    v46 = a3;
    if (*(a3 + 16) && (, v19 = sub_246091AB4(), , (v19 & 1) == 0))
    {
      v35 = v49;
      v36 = *(v50 + 16);
      v51[0] = *v50;
      v51[1] = v36;
      v52 = *(v50 + 32);
      v37 = v47;
      sub_246005E18(v51, v45, v47);
      sub_2460005C8();
      v38 = *(v35 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
      v39 = v43;
      v40 = *(v43 + 20);
      v41 = sub_246091704();
      v42 = v44;
      (*(*(v41 - 8) + 16))(&v44[v40], v37, v41);
      *v42 = v38;
      *(v42 + *(v39 + 24)) = xmmword_246098580;
      sub_246091924();

      v32 = v50;
      sub_24600C49C(v42, type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo);
      v23 = v48;
      v34 = v46;
    }

    else
    {
      v20 = sub_245FA3174();
      v21 = v14;
      v22 = v13;
      (*(v14 + 16))(v17, v20, v13);
      v23 = v48;
      (*(v10 + 16))(v12, v48, v9);
      v24 = sub_2460918D4();
      v25 = sub_246091F94();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v47 = v22;
        v27 = v26;
        v45 = swift_slowAlloc();
        *&v51[0] = v45;
        *v27 = 136315138;
        v28 = sub_2460917F4();
        v30 = v29;
        (*(v10 + 8))(v12, v9);
        v31 = sub_245F8D3C0(v28, v30, v51);
        v32 = v50;

        *(v27 + 4) = v31;
        _os_log_impl(&dword_245F8A000, v24, v25, "HEIC Writer: Save work item cancelled: %s", v27, 0xCu);
        v33 = v45;
        sub_245F8E6F4(v45);
        v23 = v48;
        MEMORY[0x24C1989D0](v33, -1, -1);
        MEMORY[0x24C1989D0](v27, -1, -1);

        (*(v21 + 8))(v17, v47);
        v34 = v46;
        v35 = v49;
      }

      else
      {

        (*(v10 + 8))(v12, v9);
        (*(v21 + 8))(v17, v22);
        v34 = v46;
        v35 = v49;
        v32 = v50;
      }
    }

    sub_2460044B4(v35, v23, (v34 + 16), v32);
  }

  return result;
}

uint64_t sub_2460044B4(uint64_t a1, char *a2, uint64_t *a3, void *a4)
{
  v51 = a4;
  v47 = a2;
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v49 = a1;
  v55 = a1;
  v56 = a2;
  v52 = sub_24600CC44;
  v53 = &v54;

  os_unfair_lock_lock(v17 + 4);
  sub_24600CC5C(v57);
  v18 = v10;
  os_unfair_lock_unlock(v17 + 4);

  swift_beginAccess();
  *a3 = 0;
  v19 = v11;

  v20 = sub_245FA3174();
  v48 = v12;
  v21 = *(v12 + 16);
  v46 = v20;
  v21(v16);
  v22 = v10;
  v23 = v7;
  (*(v8 + 16))(v22, v47, v7);
  v47 = v16;
  v24 = sub_2460918D4();
  v25 = sub_246091F94();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = v11;
    v27 = v26;
    v28 = v21;
    v29 = swift_slowAlloc();
    v57[0] = v29;
    *v27 = 136315138;
    v30 = sub_2460917F4();
    v31 = v18;
    v33 = v32;
    (*(v8 + 8))(v31, v23);
    v34 = sub_245F8D3C0(v30, v33, v57);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_245F8A000, v24, v25, "HEIC Writer: Save work item removed from active: %s", v27, 0xCu);
    sub_245F8E6F4(v29);
    v35 = v29;
    v21 = v28;
    MEMORY[0x24C1989D0](v35, -1, -1);
    v36 = v27;
    v19 = v45;
    MEMORY[0x24C1989D0](v36, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v18, v23);
  }

  v37 = *(v48 + 8);
  v37(v47, v19);
  dispatch_group_leave(*(v49 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup));
  v38 = v50;
  (v21)(v50, v46, v19);
  v39 = v51;
  sub_24600C978(v51, v57);
  v40 = sub_2460918D4();
  v41 = sub_246091F94();
  sub_24600C9D4(v39);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134349056;
    *(v42 + 4) = *v51;
    _os_log_impl(&dword_245F8A000, v40, v41, "HEIC Writer: High-resolution pixel buffer %{public}f released after saving HEIC.", v42, 0xCu);
    MEMORY[0x24C1989D0](v42, -1, -1);
  }

  return (v37)(v38, v19);
}

uint64_t sub_246004940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v55 = a2;
  v62 = a1;
  v75 = sub_2460918F4();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2460919F4();
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_246091704();
  v68 = *(v54 - 8);
  v52 = *(v68 + 64);
  MEMORY[0x28223BE20](v54);
  v67 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_246091834();
  v73 = *(v69 - 8);
  v9 = v73[8];
  MEMORY[0x28223BE20](v69);
  v66 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v50 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v59 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v16 = *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v82 = nullsub_1;
  v83 = v3;
  v57 = v3;

  os_unfair_lock_lock(v16 + 4);
  sub_24600CC94();
  v63 = 0;
  os_unfair_lock_unlock(v16 + 4);

  v71 = v15;
  sub_246091824();
  v17 = swift_allocObject();
  v70 = v17;
  *(v17 + 16) = 0;
  v56 = (v17 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v73;
  v20 = v73[2];
  v60 = v73 + 2;
  v61 = v20;
  v21 = v69;
  (v20)(v12, v15, v69);
  sub_24600B080(v55, &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v68;
  v23 = v54;
  (*(v68 + 16))(v67, v58, v54);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v53 + 80) + v25 + 8) & ~*(v53 + 80);
  v27 = (v8 + *(v22 + 80) + v26) & ~*(v22 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v18;
  (v19[4])(v29 + v24, v50, v21);
  *(v29 + v25) = v70;
  sub_24600BE48(v51, v29 + v26);
  (*(v68 + 32))(v29 + v27, v67, v23);
  *(v29 + v28) = v62;
  aBlock[4] = sub_24600BEAC;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF9D0;
  _Block_copy(aBlock);
  v84 = MEMORY[0x277D84F90];
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  sub_246091AE4();
  swift_allocObject();
  v30 = sub_246091AC4();

  v31 = v56;
  swift_beginAccess();
  *v31 = v30;

  v32 = *(v57 + v59);
  v79 = v57;
  v33 = v57;
  v34 = v71;
  v80 = v71;
  v81 = v30;
  v76 = sub_24600C008;
  v77 = &v78;

  os_unfair_lock_lock(v32 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v32 + 4);

  sub_246092064();
  dispatch_group_enter(*(v33 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup));
  v35 = sub_245FA3174();
  v36 = v66;
  (*(v72 + 16))(v74, v35, v75);
  v37 = v69;
  v61(v36, v34);
  v38 = sub_2460918D4();
  v39 = sub_246091F94();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v84 = v41;
    *v40 = 136315138;
    v42 = sub_2460917F4();
    v43 = v36;
    v45 = v44;
    v46 = v73[1];
    v46(v43, v37);
    v47 = sub_245F8D3C0(v42, v45, &v84);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_245F8A000, v38, v39, "HEIC Writer: Update work item submitted: %s", v40, 0xCu);
    sub_245F8E6F4(v41);
    MEMORY[0x24C1989D0](v41, -1, -1);
    MEMORY[0x24C1989D0](v40, -1, -1);

    (*(v72 + 8))(v74, v75);
    v46(v71, v37);
  }

  else
  {

    v48 = v73[1];
    v48(v36, v37);
    (*(v72 + 8))(v74, v75);
    v48(v71, v37);
  }
}

uint64_t sub_2460052E8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  v45 = a5;
  v43 = a4;
  v47 = a2;
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  MEMORY[0x28223BE20](v41);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = v12[-1].n128_u64[1];
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v46 = result;
  if (result)
  {
    swift_beginAccess();
    v44 = a3;
    if (*(a3 + 16) && (, v18 = sub_246091AB4(), , (v18 & 1) == 0))
    {
      v35 = v45;
      sub_24600C038(v43);
      v34 = v46;
      sub_2460005C8();
      v36 = *(v34 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
      v37 = v41;
      v38 = *(v41 + 20);
      v39 = sub_246091704();
      v40 = v42;
      (*(*(v39 - 8) + 16))(&v42[v38], v35, v39);
      *v40 = v36;
      *(v40 + *(v37 + 24)) = xmmword_246098580;
      sub_246091924();

      sub_24600C49C(v40, type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo);
      v33 = v44;
      v32 = v47;
    }

    else
    {
      v19 = sub_245FA3174();
      v20 = v13;
      (*(v13 + 16))(v16, v19, v12);
      v21 = v47;
      (*(v9 + 16))(v11, v47, v8);
      v22 = sub_2460918D4();
      v23 = sub_246091F94();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v45 = v20;
        v25 = v24;
        v26 = swift_slowAlloc();
        v48 = v26;
        *v25 = 136315138;
        v27 = sub_2460917F4();
        v43 = v12;
        v29 = v28;
        (*(v9 + 8))(v11, v8);
        v30 = sub_245F8D3C0(v27, v29, &v48);
        v31 = v47;

        *(v25 + 4) = v30;
        _os_log_impl(&dword_245F8A000, v22, v23, "HEIC Writer: Update work item cancelled: %s", v25, 0xCu);
        sub_245F8E6F4(v26);
        MEMORY[0x24C1989D0](v26, -1, -1);
        MEMORY[0x24C1989D0](v25, -1, -1);

        (*(v45 + 8))(v16, v43);
        v32 = v31;
        v33 = v44;
        v34 = v46;
      }

      else
      {

        (*(v9 + 8))(v11, v8);
        (*(v20 + 8))(v16, v12);
        v33 = v44;
        v34 = v46;
        v32 = v21;
      }
    }

    sub_246005ACC(v34, v32, (v33 + 16));
  }

  return result;
}

uint64_t sub_246005ACC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = a3;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v28 = a1;
  v33 = a1;
  v34 = a2;
  v30 = sub_24600C4FC;
  v31 = &v32;

  os_unfair_lock_lock(v13 + 4);
  sub_24600C528(v35);
  os_unfair_lock_unlock(v13 + 4);

  v14 = sub_245FA3174();
  v27 = v10;
  (*(v10 + 16))(v12, v14, v9);
  v15 = *(v6 + 16);
  v26 = v5;
  v15(v8, a2, v5);
  v16 = sub_2460918D4();
  v17 = sub_246091F94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315138;
    v20 = sub_2460917F4();
    v22 = v21;
    (*(v6 + 8))(v8, v26);
    v23 = sub_245F8D3C0(v20, v22, v35);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_245F8A000, v16, v17, "HEIC Writer: Update work item removed from active: %s", v18, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v26);
  }

  (*(v27 + 8))(v12, v9);
  dispatch_group_leave(*(v28 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup));
  v24 = v29;
  swift_beginAccess();
  *v24 = 0;
}

void sub_246005E18(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v205 = a3;
  v215 = a2;
  v274 = *MEMORY[0x277D85DE8];
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v4 - 8);
  v207 = &v196 - v5;
  v6 = sub_246091834();
  v208 = *(v6 - 8);
  v209 = v6;
  MEMORY[0x28223BE20](v6);
  v204 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  MEMORY[0x28223BE20](v214);
  v9 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v196 - v15;
  v17 = *a1;
  v18 = a1[2];
  v20 = a1[3];
  v19 = a1[4];
  v212 = a1[1];
  v213 = v20;
  v210 = v19;
  if (v18)
  {
    v21 = v18;
    v22 = sub_245FC664C(v21);

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  v211 = v18;
  v23 = v213;
  if (v213)
  {
    v21 = v213;
    v24 = sub_245FC6820(v21);

    if (!v24)
    {

LABEL_25:
      sub_24600A7DC();
      swift_allocError();
      *v74 = 0;
      v74[1] = 0;
      swift_willThrow();

      return;
    }
  }

  v201 = v13;
  v202 = v10;
  v203 = v11;
  v25 = v215 + v214[7];
  v26 = *(v25 + 112);
  v27 = *(v25 + 80);
  v267 = *(v25 + 96);
  v268 = v26;
  v28 = *(v25 + 112);
  v269 = *(v25 + 128);
  v29 = *(v25 + 48);
  v30 = *(v25 + 16);
  v263 = *(v25 + 32);
  v264 = v29;
  v31 = *(v25 + 48);
  v32 = *(v25 + 80);
  v265 = *(v25 + 64);
  v266 = v32;
  v33 = *(v25 + 16);
  v262[0] = *v25;
  v262[1] = v33;
  v271[6] = v267;
  v271[7] = v28;
  v272 = *(v25 + 128);
  v271[2] = v263;
  v271[3] = v31;
  v271[4] = v265;
  v271[5] = v27;
  v270 = *(v25 + 144);
  v273 = *(v25 + 144);
  v271[0] = v262[0];
  v271[1] = v30;
  v34 = sub_245F97C14(v271);
  v35 = v211;
  if (v34 != 1)
  {
    v36 = v272;
    if (v272)
    {
      v37 = v269;
      if (!sub_245FC66D0(v36) || (Width = CVPixelBufferGetWidth(v36), Width != CVPixelBufferGetWidth(v212)) || (Height = CVPixelBufferGetHeight(v36), Height != CVPixelBufferGetHeight(v212)))
      {

        sub_24600A7DC();
        swift_allocError();
        *v75 = 0;
        v75[1] = 0;
        swift_willThrow();
        sub_245F8E744(v262, &qword_27EE3A990, &qword_246099C20);
        return;
      }

      sub_245F8E744(v262, &qword_27EE3A990, &qword_246099C20);
    }
  }

  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v233 = 0u;
  v40 = v212;
  v41 = sub_245FFF4B4(v212);
  if ((v41 & 0x100000000) != 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = v40;
  *&v233 = v40;
  if (v35)
  {
    v44 = v35;

    *(&v234 + 1) = v35;
  }

  v45 = v213;
  if (v213)
  {
    v46 = v213;

    *&v235 = v45;
  }

  v47 = *(v25 + 80);
  v229[4] = *(v25 + 64);
  v229[5] = v47;
  v48 = *(v25 + 112);
  v229[6] = *(v25 + 96);
  v229[7] = v48;
  v49 = *(v25 + 16);
  v229[0] = *v25;
  v229[1] = v49;
  v50 = *(v25 + 48);
  v229[2] = *(v25 + 32);
  v229[3] = v50;
  v52 = *(v25 + 128);
  v51 = *(v25 + 136);
  v232 = *(v25 + 144);
  v231 = v51;
  v230 = v52;
  v53 = sub_245F97C14(v229);
  v54 = v215;
  if (v53 != 1)
  {
    v55 = v230;
    if (v230)
    {
      v56 = v230;
      v57 = v52;

      *(&v235 + 1) = v55;
    }
  }

  v58 = *(v54 + 144);
  if (v42 != v58)
  {
    LODWORD(v199) = v42;
    v59 = sub_245FA3174();
    v60 = v202;
    (*(v203 + 16))(v16, v59, v202);
    sub_24600B080(v54, v9);
    v61 = sub_2460918D4();
    LODWORD(v198) = sub_246091FB4();
    v200 = v61;
    if (os_log_type_enabled(v61, v198))
    {
      v62 = swift_slowAlloc();
      v197 = v62;
      v196 = swift_slowAlloc();
      *&v218 = v196;
      *v62 = 136315394;
      LODWORD(v228[0]) = v199;
      type metadata accessor for CGImagePropertyOrientation(0);
      v63 = sub_246091C54();
      v65 = sub_245F8D3C0(v63, v64, &v218);

      v66 = v197;
      *(v197 + 1) = v65;
      *(v66 + 6) = 2080;
      LODWORD(v228[0]) = *(v9 + 36);
      v54 = v215;
      v67 = sub_246091C54();
      v69 = v68;
      sub_24600C49C(v9, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v70 = sub_245F8D3C0(v67, v69, &v218);

      v71 = v197;
      *(v197 + 14) = v70;
      v72 = v200;
      _os_log_impl(&dword_245F8A000, v200, v198, "HEIC Writer: orientation in image attachment: %s doesn't match metadata.camera.orientation: %s!", v71, 0x16u);
      v73 = v196;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v73, -1, -1);
      MEMORY[0x24C1989D0](v71, -1, -1);

      (*(v203 + 8))(v16, v202);
    }

    else
    {

      sub_24600C49C(v9, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      (*(v203 + 8))(v16, v60);
    }
  }

  LODWORD(v234) = v58;
  v76 = *(v54 + 32);
  v242 = *(v54 + 16);
  v243 = v76;
  v77 = *(v54 + 64);
  v244 = *(v54 + 48);
  v78 = *(v54 + 80);
  v79 = *(v54 + 96);
  v80 = *(v54 + 112);
  v237 = v77;
  v238 = v78;
  v239 = v79;
  v240 = v80;
  v81 = sub_245FFF67C(v212, *(v54 + v214[10]), *(v54 + v214[10] + 8), *(v54 + v214[10] + 16), *(v54 + v214[10] + 24));
  v82 = sub_246091C04();
  if (v81[2])
  {
    v84 = sub_245F8D968(v82, v83);
    v86 = v85;

    if (v86)
    {
      sub_245F8E5C8(*&v81[7] + 32 * v84, &v218);
      sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v87 = *&v228[0];
        goto LABEL_34;
      }
    }
  }

  else
  {
  }

  v87 = sub_245F8E498(MEMORY[0x277D84F90]);
LABEL_34:
  v88 = OCNonModularSPI_AppleMakerNote_Timestamp();
  if (!v88)
  {
    __break(1u);
    goto LABEL_115;
  }

  v89 = v88;
  v90 = sub_246091C04();
  v92 = v91;

  *(&v219 + 1) = MEMORY[0x277D839F8];
  *&v218 = v17;
  sub_245F8E6C0(&v218, v228);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v216 = v87;
  sub_246008DF4(v228, v90, v92, isUniquelyReferenced_nonNull_native);

  v94 = v216;
  v95 = OCNonModularSPI_AppleMakerNote_Camera();
  if (!v95)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v96 = v95;
  v97 = sub_246091C04();
  v99 = v98;

  v100 = OCNonModularSPI_AppleMakerNote_BackWideAngleCamera();
  *(&v219 + 1) = MEMORY[0x277D849A8];
  LODWORD(v218) = v100;
  sub_245F8E6C0(&v218, v228);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v216 = v94;
  sub_246008DF4(v228, v97, v99, v101);

  v102 = v216;
  v103 = sub_246091C04();
  v105 = v104;
  v198 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  *(&v219 + 1) = v198;
  *&v218 = v102;
  sub_245F8E6C0(&v218, v228);
  v200 = v102;

  v106 = swift_isUniquelyReferenced_nonNull_native();
  v216 = v81;
  sub_246008DF4(v228, v103, v105, v106);

  v199 = v216;
  v107 = sub_246091B34();
  v108 = v107;

  *(&v233 + 1) = v107;
  v109 = v215;
  LODWORD(v241) = dword_246098930[*(v215 + 128)];
  OCNonModularSPI_Serialization_InvalidObjectTransform();
  v250 = v110;
  v251 = v111;
  v252 = v112;
  v253 = v113;
  *&v114 = sub_24600B6D0(v109);
  v254 = v114;
  v255 = v115;
  v256 = v116;
  v257 = v117;
  v118 = *(v109 + v214[11]);
  if (!v118)
  {
    goto LABEL_53;
  }

  v119 = v118;
  v120 = [v119 points];
  v121 = [v119 count];
  if (v121)
  {
    v122 = v121;
    v81 = sub_246007730(v121, 0);
    memcpy(&v81[4], v120, 16 * v122);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
  }

  v123 = [v119 identifiers];
  v124 = [v119 count];
  if (v124)
  {
    v125 = v124;
    v126 = sub_2460077B4(v124, 0);
    memcpy(v126 + 4, v123, 8 * v125);
  }

  else
  {
    v126 = MEMORY[0x277D84F90];
  }

  v127 = v81[2];
  v109 = v215;
  if (!*&v127)
  {

    goto LABEL_50;
  }

  if (*&v127 >> 58)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *&v218 = sub_24600B0E4(32 * *&v127);
  *(&v218 + 1) = v128;
  v129 = sub_24600B230(&v218, v81, v126);

  if ((v129 & 1) == 0)
  {
    sub_245FAEC7C(v218, *(&v218 + 1));

LABEL_53:
    v133 = v210;
    if (!v210)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (*(&v218 + 1) >> 60 != 15)
  {
    v130 = *(&v218 + 1);
    v81 = v218;
    v131 = sub_246091734();

    sub_245FAEC68(v81, v130);
    v132 = v131;

    *&v258 = v131;
    v133 = v210;
    if (!v210)
    {
      goto LABEL_55;
    }

LABEL_54:
    *&v236 = v133;
    goto LABEL_55;
  }

LABEL_50:

  v133 = v210;
  if (v210)
  {
    goto LABEL_54;
  }

LABEL_55:
  v134 = *(v109 + 136);
  if (!v134)
  {

    goto LABEL_59;
  }

  v135 = v134;
  v136 = OCNonModularSPI_AVCameraCalibrationData_CreateDictionaryFrom();
  if (!v136)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v137 = v136;
  sub_246091B64();

  v138 = sub_246091B34();

  v139 = v138;

  *&v245 = v138;
  v109 = v215;
LABEL_59:
  sub_246091188();

  v140 = sub_246091BD4();

  v141 = v140;

  *(&v258 + 1) = v140;
  v142 = *(v25 + 96);
  v143 = *(v25 + 128);
  v225 = *(v25 + 112);
  v226 = v143;
  v227 = *(v25 + 144);
  v144 = *(v25 + 48);
  v220 = *(v25 + 32);
  v221 = v144;
  v145 = *(v25 + 80);
  v222 = *(v25 + 64);
  v223 = v145;
  v224 = v142;
  v146 = *(v25 + 16);
  v218 = *v25;
  v219 = v146;
  if (sub_245F97C14(&v218) == 1 || v227 == 1)
  {
    v147 = v214;
    v148 = v109 + v214[8];
    v150 = v208;
    v149 = v209;
    v151 = v207;
    if (*(v148 + 73) & 1) != 0 || (*(v148 + 72))
    {
      LODWORD(v152) = -1;
      goto LABEL_68;
    }

    v152 = *(v148 + 64);
  }

  else
  {
    v152 = *(&v226 + 1);
    v147 = v214;
    v150 = v208;
    v149 = v209;
    v151 = v207;
  }

  if (v152 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_96;
  }

  if (v152 > 0x7FFFFFFF)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_68:
  LODWORD(v259) = v152;
  sub_245F8E7A4(v109 + v147[6], v151, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v150 + 48))(v151, 1, v149) == 1)
  {
    sub_245F8E744(v151, &qword_27EE3A350, &unk_2460969A0);
  }

  else
  {
    v153 = v204;
    (*(v150 + 32))(v204, v151, v149);
    sub_2460917F4();
    v154 = sub_246091BD4();

    v155 = *(v150 + 8);
    v156 = v154;
    v155(v153, v149);

    *(&v259 + 1) = v154;
  }

  v157 = *(v109 + v147[9]);
  if (v157 != 2)
  {
    LOBYTE(v228[0]) = v157 & 1;
    v158 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
    if (v158 >= 0xFFFFFFFF80000000)
    {
      if (v158 <= 0x7FFFFFFF)
      {
        goto LABEL_75;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  LODWORD(v158) = -1;
LABEL_75:
  LODWORD(v260) = v158;
  v159 = v109 + v147[12];
  if (*(v159 + 8))
  {
    LODWORD(v160) = -1;
  }

  else
  {
    v160 = *v159;
    if (v160 < 0xFFFFFFFF80000000)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v160 > 0x7FFFFFFF)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }
  }

  DWORD1(v260) = v160;
  if ((*(v109 + 224) & 1) == 0)
  {
    v162 = *(v109 + 176);
    v161 = *(v109 + 192);
    v163 = *(v109 + 208);
    v164 = *(v109 + 216);
    v246 = *(v109 + 160);
    v247 = v162;
    v248 = v161;
    *(&v249 + 1) = v164;
    *&v249 = v163;
  }

  v215 = *(v109 + v147[13]);
  v165 = v215;
  if (!(v215 >> 62))
  {
    v81 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v81)
    {
      goto LABEL_107;
    }

    goto LABEL_83;
  }

LABEL_99:
  if (!sub_246092354())
  {
    goto LABEL_107;
  }

  v174 = sub_246092354();
  if (v174)
  {
    v81 = v174;
    if (v174 < 1)
    {
      __break(1u);
      goto LABEL_103;
    }

LABEL_117:
    v165 = v215;
LABEL_83:
    v166 = 0;
    v167 = v165 & 0xC000000000000001;
    v168 = MEMORY[0x277D84F90];
    do
    {
      if (v167)
      {
        v169 = MEMORY[0x24C196C20](v166, v165);
      }

      else
      {
        v169 = *(v165 + 8 * v166 + 32);
      }

      v170 = (*(*v169 + 192))();
      if (v170)
      {
        v171 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_2460075FC(0, v168[2] + 1, 1, v168);
        }

        v173 = v168[2];
        v172 = v168[3];
        if (v173 >= v172 >> 1)
        {
          v168 = sub_2460075FC((v172 > 1), v173 + 1, 1, v168);
        }

        v168[2] = v173 + 1;
        v168[v173 + 4] = v171;
        v165 = v215;
      }

      else
      {
      }

      v166 = (v166 + 1);
    }

    while (v81 != v166);
  }

LABEL_106:
  v175 = sub_246091DB4();

  v176 = v175;

  *(&v260 + 1) = v175;
LABEL_107:
  v177 = v206;
  swift_beginAccess();
  v178 = sub_246091674();
  v179 = OCNonModularSPI_CMPhoto_write();

  if (v179)
  {
    v216 = 0;
    v217 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000045, 0x80000002460A12D0);
    sub_246091EF4();
    v180 = v216;
    v181 = v217;
    sub_24600A7DC();
    swift_allocError();
    *v182 = v180;
    v182[1] = v181;
    swift_willThrow();
  }

  else
  {
    v183 = *(v177 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten);
    v184 = __OFADD__(v183, 1);
    v185 = v183 + 1;
    if (v184)
    {
      __break(1u);
    }

    *(v177 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) = v185;
    v186 = sub_245FA3174();
    v187 = v202;
    v188 = v203;
    (*(v203 + 16))(v201, v186, v202);
    v189 = v210;
    v190 = v212;
    v191 = v211;
    v192 = v213;
    v193 = sub_2460918D4();
    v194 = sub_246091FC4();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 134349056;
      *(v195 + 4) = v17;
      _os_log_impl(&dword_245F8A000, v193, v194, "HEIC Writer: Successfully saved image HEIC file at time = %{public}f", v195, 0xCu);
      MEMORY[0x24C1989D0](v195, -1, -1);
    }

    (*(v188 + 8))(v201, v187);
  }
}

void sub_24600701C(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v21 = a1[1];
  v22 = v8;
  v9 = a1[2];
  v19 = a1[3];
  v20 = v9;
  v10 = sub_245FA3174();
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_2460918D4();
  v12 = sub_246091FA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245F8A000, v11, v12, "HEIC Writer: Removing reconstruction scale from object-centric box for HEIC writing...", v13, 2u);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = sub_246090EC4();
  *&v15 = sub_246021644(v22, v21, v20, v19, *v14);
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
}

void sub_2460071AC(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v21 = a1[1];
  v22 = v8;
  v9 = a1[2];
  v19 = a1[3];
  v20 = v9;
  v10 = sub_245FA3174();
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_2460918D4();
  v12 = sub_246091FA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245F8A000, v11, v12, "HEIC Writer: Removing reconstruction scale from object-centric box for HEIC writing...", v13, 2u);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = sub_246090E60();
  *&v15 = sub_246021644(v22, v21, v20, v19, *v14);
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
}

uint64_t sub_24600733C(double a1)
{
  v2 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_246096EF0;
  *(v3 + 32) = sub_2460916F4();
  *(v3 + 40) = v4;
  v10 = sub_24602138C(a1);
  v11 = v5;
  MEMORY[0x24C196640](0x434945482ELL, 0xE500000000000000);
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  v6 = sub_246091DB4();

  v7 = [v2 pathWithComponents_];

  v8 = sub_246091C04();
  return v8;
}

char *ObjectCaptureHEICBundleWriter.deinit()
{

  v1 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v2 = sub_246091704();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_245FFDCC4(*(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise), *(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8));

  return v0;
}

uint64_t ObjectCaptureHEICBundleWriter.__deallocating_deinit()
{
  ObjectCaptureHEICBundleWriter.deinit();

  return swift_deallocClassInstance();
}

void *sub_2460075FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_245F8E624(&qword_27EE3A6F8, &unk_246098830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_246007730(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&unk_27EE3B240, &unk_246097000);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2460077B4(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE3A6F0, &unk_246098820);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_246007838(uint64_t a1)
{
  sub_246091704();
  v2 = MEMORY[0x277CC9260];
  sub_24600CAC0(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_246091B84();
  return sub_246009664(a1, v3, MEMORY[0x277CC9260], &qword_27EE3A5E8, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_24600790C(double a1)
{
  v2 = sub_2460924F4();

  return sub_246009804(v2, a1);
}

double sub_246007958@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_245F8D968(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24600986C();
      v10 = v12;
    }

    sub_245F8E6C0((*(v10 + 56) + 32 * v8), a3);
    sub_246008760(v8, v10);
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

uint64_t sub_2460079FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
  v33 = v4;
  result = sub_246092374();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_245F8E6C0(v24, v34);
      }

      else
      {
        sub_245F8E5C8(v24, v34);
      }

      sub_246092504();
      sub_246091C94();
      result = sub_246092544();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_245F8E6C0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_246007CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_245F8E624(&qword_27EE3A740, &qword_246098898);
  v40 = v4;
  result = sub_246092374();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_24600CAC0(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_246091B84();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246008074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
  result = sub_246092374();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v3;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v35 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v4)
      {
        sub_24600BE48(v25, v7);
      }

      else
      {
        sub_24600B080(v25, v7);
      }

      result = sub_2460924F4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_24600BE48(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_246008384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_245F8E624(&qword_27EE3A700, &unk_246098840);
  v39 = v4;
  result = sub_246092374();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24600CAC0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_246008760(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      sub_246092504();

      sub_246091C94();
      v10 = sub_246092544();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_246008910(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2460924F4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_246008AD4(int64_t a1, uint64_t a2)
{
  v38 = sub_246091834();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_2460921C4();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_24600CAC0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_246091B84();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_246008DF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_245F8D968(a2, a3);
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
      sub_24600986C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2460079FC(v16, a4 & 1);
    v11 = sub_245F8D968(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_246092424();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_245F8E6F4(v22);

    sub_245F8E6C0(a1, v22);
  }

  else
  {
    sub_2460093F4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_246008F44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_246007838(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_246009A10();
    goto LABEL_7;
  }

  sub_246007CB4(result, a3 & 1);
  result = sub_246007838(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_246009460(v14, v11, a1, v20);
}

uint64_t sub_2460090E0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24600790C(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      sub_246009C80();
      goto LABEL_7;
    }

    sub_246008074(v13, a2 & 1);
    v20 = sub_24600790C(a3);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v10;

    return sub_24600CB08(a1, v18);
  }

LABEL_13:

  return sub_246009518(v10, a1, v16, a3);
}

uint64_t sub_246009228(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
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
      sub_246009E90();
      goto LABEL_7;
    }

    sub_246008384(v17, a3 & 1);
    v22 = sub_245FC1BDC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2460095AC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_246092424();
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
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_2460093F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_245F8E6C0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_246009460(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091704();
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

uint64_t sub_246009518(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  v7 = a3[7];
  v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  result = sub_24600BE48(a2, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

uint64_t sub_2460095AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
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

unint64_t sub_246009664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
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
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_24600CAC0(v24, v25, v26);
      v20 = sub_246091BB4();
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

unint64_t sub_246009804(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_24600986C()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
  v2 = *v0;
  v3 = sub_246092364();
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
        sub_245F8E5C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_245F8E6C0(v25, (*(v4 + 56) + v22));
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

char *sub_246009A10()
{
  v1 = v0;
  v31 = sub_246091704();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A740, &qword_246098898);
  v3 = *v0;
  v4 = sub_246092364();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
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

  return result;
}

void *sub_246009C80()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
  v6 = *v0;
  v7 = sub_246092364();
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
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v3 + 72) * v21;
        sub_24600B080(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_24600BE48(v5, *(v8 + 56) + v23);
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

char *sub_246009E90()
{
  v1 = v0;
  v33 = sub_246091834();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A700, &unk_246098840);
  v3 = *v0;
  v4 = sub_246092364();
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

unint64_t sub_24600A110(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

double sub_24600A140(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_24600A150(a1, a2);
  }

  return result;
}

double sub_24600A150(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_24600A164(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A760, qword_2460988B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3A760, qword_2460988B8);
      v11 = *v5;
      result = sub_24600790C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      result = sub_24600BE48(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A758, &qword_2460988B0);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24600790C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A40C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A750, &qword_2460988A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A740, &qword_246098898);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3A750, &qword_2460988A8);
      result = sub_246007838(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091704();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A5F4(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A748, &qword_2460988A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A700, &unk_246098840);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3A748, &qword_2460988A0);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A7DC()
{
  result = qword_27EE3A688;
  if (!qword_27EE3A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A688);
  }

  return result;
}

uint64_t sub_24600A830()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24600A870()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24600A8A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  return v3(a1, a1 + *(v4 + 48));
}

unint64_t sub_24600A964()
{
  result = qword_27EE3A6E0;
  if (!qword_27EE3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A6E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARCameraTrackingStateFlattened(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ARCameraTrackingStateFlattened(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24600AB30(uint64_t a1)
{
  result = sub_246091704();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24600AD1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24600AD34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24600AD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_24600ADE0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24600AE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246091704();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 3;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_24600AF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_246091704();
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
    *(a1 + *(a4 + 24) + 8) = (a2 + 3);
  }

  return result;
}

void sub_24600AFC8(uint64_t a1)
{
  sub_246091704();
  if (v1 <= 0x3F)
  {
    sub_24600BA80(319, &qword_27EE3A6E8, &type metadata for ObjectCaptureHEICBundleWriter.Error, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24600B080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600B0E4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2460914F4();
      swift_allocObject();
      sub_2460914C4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_246091724();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24600B184(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5)
{
  result = sub_2460914B4();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_2460914E4();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2460914D4();
  sub_245FFFE48(v11 + v12, a4, a5, &v14);
  if (!v5)
  {
    v13 = v14;
  }

  return v13 & 1;
}

unint64_t sub_24600B230(uint64_t *a1, float32x2_t *a2, uint64_t a3)
{
  v4 = v3;
  v24 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_245FAEC7C(v9, v8);
      *&v23 = v9;
      WORD4(v23) = v8;
      BYTE10(v23) = BYTE2(v8);
      BYTE11(v23) = BYTE3(v8);
      BYTE12(v23) = BYTE4(v8);
      BYTE13(v23) = BYTE5(v8);
      BYTE14(v23) = BYTE6(v8);
      sub_245FFFE48(&v23, a2, a3, &v22);
      if (v3)
      {
        v11 = v23;
        v8 = DWORD2(v23) | ((WORD6(v23) | (BYTE14(v23) << 16)) << 32);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v11;
        a1[1] = v8;
      }

      else
      {
        LOBYTE(v8) = v22;
        v18 = v23;
        v19 = DWORD2(v23) | ((WORD6(v23) | (BYTE14(v23) << 16)) << 32);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v18;
        a1[1] = v19;
      }

      return v8 & 1;
    }

    v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_245FAED40(v9, v8);
    sub_245FAEC7C(v9, v8);
    *a1 = xmmword_246098590;
    sub_245FAEC7C(0, 0xC000000000000000);
    v17 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v17 < v9)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2460914B4() && __OFSUB__(v9, sub_2460914E4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2460914F4();
      swift_allocObject();
      v8 = sub_2460914A4();

      v16 = v8;
      v17 = v9 >> 32;
    }

    if (v17 >= v9)
    {

      v20 = sub_24600B184(v9, v17, v16, a2, a3);
      if (!v4)
      {
        LOBYTE(v8) = v20;

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v9;
        a1[1] = v16 | 0x4000000000000000;
        return v8 & 1;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v15 = v16 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v10 == 2)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_245FAED40(v9, v8);
    sub_245FAEC7C(v9, v8);
    *&v23 = v9;
    *(&v23 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_246098590;
    sub_245FAEC7C(0, 0xC000000000000000);
    sub_246091714();
    v12 = *(&v23 + 1);
    v13 = *(v23 + 16);
    v8 = *(v23 + 24);

    v14 = sub_24600B184(v13, v8, *(&v23 + 1), a2, a3);
    if (!v4)
    {
      LOBYTE(v8) = v14;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *a1 = v23;
      a1[1] = v12 | 0x8000000000000000;
      return v8 & 1;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v15 = *(&v23 + 1) | 0x8000000000000000;
    *a1 = v23;
LABEL_21:
    a1[1] = v15;
    return v8 & 1;
  }

  *(&v23 + 7) = 0;
  *&v23 = 0;
  sub_245FFFE48(&v23, a2, a3, &v22);
  if (!v3)
  {
    LOBYTE(v8) = v22;
  }

  return v8 & 1;
}

double sub_24600B6D0(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v7 = a1 + *(v6 + 28);
  v8 = *(v7 + 112);
  v75[6] = *(v7 + 96);
  v75[7] = v8;
  v75[8] = *(v7 + 128);
  v76 = *(v7 + 144);
  v9 = *(v7 + 48);
  v75[2] = *(v7 + 32);
  v75[3] = v9;
  v10 = *(v7 + 80);
  v75[4] = *(v7 + 64);
  v75[5] = v10;
  v11 = *(v7 + 16);
  v75[0] = *v7;
  v75[1] = v11;
  if (sub_245F97C14(v75) == 1)
  {
    v12 = 1;
    v59.i8[0] = 1;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 1;
  }

  else
  {
    v13 = *(v7 + 112);
    v65 = *(v7 + 96);
    v66 = v13;
    v67 = *(v7 + 128);
    v68 = *(v7 + 144);
    v14 = *(v7 + 48);
    v61 = *(v7 + 32);
    v62 = v14;
    v15 = *(v7 + 80);
    v63 = *(v7 + 64);
    v64 = v15;
    v16 = *(v7 + 16);
    v59 = *v7;
    v60 = v16;
    sub_24600BAD0(&v59, &v49);
    sub_24600701C(v7, &v70);
    v17 = *(v7 + 112);
    v55 = *(v7 + 96);
    v56 = v17;
    v57 = *(v7 + 128);
    v58 = *(v7 + 144);
    v18 = *(v7 + 48);
    v51 = *(v7 + 32);
    v52 = v18;
    v19 = *(v7 + 80);
    v53 = *(v7 + 64);
    v54 = v19;
    v20 = *(v7 + 16);
    v49 = *v7;
    v50 = v20;
    sub_24600BB2C(&v49);
    v12 = 0;
    v74 = 0;
  }

  v21 = v70;
  v22 = v71;
  v23 = v72;
  v24 = v73;
  v25 = a1 + *(v6 + 32);
  if (*(v25 + 73))
  {
    v26 = 1;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = *(v25 + 72);
    v32 = *(v25 + 64);
    v34 = *(v25 + 32);
    v33 = *(v25 + 48);
    v35 = *(v25 + 16);
    v59 = *v25;
    v60 = v35;
    v61 = v34;
    v62 = v33;
    *&v63 = v32;
    BYTE8(v63) = v31 & 1;
    v47 = v71;
    v48 = v70;
    v45 = v73;
    v46 = v72;
    sub_2460071AC(&v59, &v49);
    v24 = v45;
    v23 = v46;
    v22 = v47;
    v21 = v48;
    v26 = 0;
    v27 = v49;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v69 = 0;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  if (v26)
  {
    OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
  }

LABEL_10:
  v45 = v24;
  v46 = v23;
  v47 = v22;
  v48 = v21;
  v36 = sub_245FA3174();
  (*(v3 + 16))(v5, v36, v2);
  v37 = sub_2460918D4();
  v38 = sub_246091FA4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49.i64[0] = v40;
    *v39 = 136315138;
    v59 = v48;
    v60 = v47;
    v61 = v46;
    v62 = v45;
    type metadata accessor for simd_float4x4(0);
    v41 = sub_246091C54();
    v43 = sub_245F8D3C0(v41, v42, &v49);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_245F8A000, v37, v38, "Bounding box with padding removed for serialization = %s", v39, 0xCu);
    sub_245F8E6F4(v40);
    MEMORY[0x24C1989D0](v40, -1, -1);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return *v48.i64;
}

void sub_24600BA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24600BB80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24600BBB8()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v19 = *(v2 + 80);
  v3 = (v19 + 24) & ~v19;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v17 = *(*(v5 - 1) + 80);
  v15 = *(*(v5 - 1) + 64);
  v18 = sub_246091704();
  v6 = *(v18 - 8);
  v7 = *(v6 + 80);
  v14 = *(v6 + 64);

  v13 = *(v2 + 8);
  v13(v0 + v3, v1);

  v16 = (v4 + v17 + 8) & ~v17;
  v8 = v0 + v16;

  v9 = v5[6];
  if (!(*(v2 + 48))(v0 + v16 + v9, 1, v1))
  {
    v13(v8 + v9, v1);
  }

  v10 = *(v8 + v5[7] + 128);
  if (v10 != 1)
  {
  }

  v11 = (v16 + v15 + v7) & ~v7;

  (*(v6 + 8))(v0 + v11, v18);

  return MEMORY[0x2821FE8E8](v0, ((v14 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v19 | v17 | v7 | 7);
}

uint64_t sub_24600BE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600BEAC()
{
  v1 = *(sub_246091834() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_246091704() - 8);
  v8 = *(v0 + v3);
  v9 = *(v0 + 16);
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_2460052E8(v9, v0 + v2, v8, (v0 + v5), v10);
}

uint64_t sub_24600BFF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24600C038(__n128 *a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v36 - v5);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  *&v14 = sub_24600B6D0(a1);
  v40 = v15;
  v41 = v14;
  v38 = v17;
  v39 = v16;
  v18 = sub_246091674();
  sub_246091188();

  v19 = sub_246091BD4();

  updated = OCNonModularSPI_CMPhoto_updateInplace();

  v21 = sub_245FA3174();
  v22 = *(v8 + 16);
  if (updated)
  {
    v22(v13, v21, v7);
    sub_24600B080(a1, v6);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      v26 = *v6;
      sub_24600C49C(v6, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      *(v25 + 4) = v26;
      _os_log_impl(&dword_245F8A000, v23, v24, "HEIC Writer: Failed to update image HEIC file at\ntime = %{public}f!\nTry updating with new file.", v25, 0xCu);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    else
    {

      sub_24600C49C(v6, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    }

    (*(v8 + 8))(v13, v7);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000038, 0x80000002460A1320);
    sub_246091EF4();
    v32 = v42;
    v33 = v43;
    sub_24600A7DC();
    swift_allocError();
    *v34 = v32;
    v34[1] = v33;
    return swift_willThrow();
  }

  else
  {
    v22(v10, v21, v7);
    v27 = v37;
    sub_24600B080(a1, v37);
    v28 = sub_2460918D4();
    v29 = sub_246091FC4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      v31 = *v27;
      sub_24600C49C(v27, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      *(v30 + 4) = v31;
      _os_log_impl(&dword_245F8A000, v28, v29, "HEIC Writer: Success updating image HEIC file at time = %{public}f", v30, 0xCu);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    else
    {

      sub_24600C49C(v27, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24600C49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24600C56C()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v19 = *(v2 + 80);
  v3 = (v19 + 24) & ~v19;
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v17 = *(*(v5 - 1) + 80);
  v6 = (v4 + v17 + 40) & ~v17;
  v16 = *(*(v5 - 1) + 64);
  v18 = sub_246091704();
  v7 = *(v18 - 8);
  v15 = *(v7 + 80);
  v14 = *(v7 + 64);

  v13 = *(v2 + 8);
  v13(v0 + v3, v1);

  v8 = v0 + v6;

  v9 = v5[6];
  if (!(*(v2 + 48))(v0 + v6 + v9, 1, v1))
  {
    v13(v8 + v9, v1);
  }

  v10 = *(v8 + v5[7] + 128);
  if (v10 != 1)
  {
  }

  v11 = (v6 + v16 + v15) & ~v15;

  (*(v7 + 8))(v0 + v11, v18);

  return MEMORY[0x2821FE8E8](v0, ((v14 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v19 | v17 | v15 | 7);
}

uint64_t sub_24600C828()
{
  v1 = *(sub_246091834() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v6 = (v4 + *(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_246091704() - 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_246003D00(v9, v0 + v2, v10, v0 + v4, (v0 + v6), v11);
}

void *sub_24600CA28@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_24600CA6C()
{
  result = qword_27EE3AEA0;
  if (!qword_27EE3AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AEA0);
  }

  return result;
}

uint64_t sub_24600CAC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24600CB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600CB74()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24600CBB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = (result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    v5 = *(result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    v6 = *(result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    *v4 = v1;
    v4[1] = v2;

    sub_245FFDCC4(v5, v6);
  }

  return result;
}

uint64_t sub_24600CCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24600CD4C;

  return sub_246010A1C();
}

uint64_t sub_24600CD4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24600CE44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_246010A1C();
}

uint64_t sub_24600CEE4(char a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 32) = a1;
  *(result + 24) = a3;
  *(result + 16) = a2;
  return result;
}

uint64_t sub_24600CF3C()
{
  v1[5] = v0;
  v2 = sub_246092304();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_2460918F4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600D064, 0, 0);
}

void sub_24600D064()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    *(v1 + 40) = v4;
    v8 = sub_245FA31EC();
    v0[13] = v8;
    v9 = *(v7 + 16);
    v0[14] = v9;
    v0[15] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v8, v6);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "    Starting requestAssets() background task...", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[10];
    v16 = v0[5];

    v17 = *(v15 + 8);
    v0[16] = v17;
    v17(v13, v14);
    if (*(v16 + 16) == 1)
    {
      sub_246010E14();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();

      v19 = v0[1];

      v19();
    }

    else
    {
      v20 = sub_246092564();
      v22 = v21;
      sub_246092454();
      v23 = swift_task_alloc();
      v0[17] = v23;
      *v23 = v0;
      v23[1] = sub_24600D2D0;

      sub_246010220(v20, v22, 0, 0, 1);
    }
  }
}

uint64_t sub_24600D2D0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_24600D57C;
  }

  else
  {
    v3 = sub_24600D438;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}