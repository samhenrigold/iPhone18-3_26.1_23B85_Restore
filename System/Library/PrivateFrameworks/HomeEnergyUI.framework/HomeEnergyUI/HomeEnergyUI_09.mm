uint64_t sub_20D8D4E40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D9755F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_20D975878();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

  return result;
}

void sub_20D8D4FB0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D9755F8() + 1) & ~v5;
    do
    {
      sub_20D975888();

      sub_20D975158();
      v9 = sub_20D9758A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_20D8D5160(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20D8D4A48(a2, a3);
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
      sub_20D8D5DA4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20D90856C(v16, a4 & 1);
    v11 = sub_20D8D4A48(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_20D9757F8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_20D7E39A4(a1, v22);
  }

  else
  {
    sub_20D8D5824(v11, a2, a3, a1, v21);
  }
}

void sub_20D8D52B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20D8D4A48(a2, a3);
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
      sub_20D908824(v16, a4 & 1);
      v11 = sub_20D8D4A48(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_20D9757F8();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_20D8D5F48();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
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

unint64_t sub_20D8D5428(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_20D8D4AC0(a1);
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
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_20D8D60B4();
    result = v17;
    goto LABEL_8;
  }

  sub_20D908AC8(v14, a2 & 1);
  result = sub_20D8D4AC0(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

void sub_20D8D5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20D8D4A48(a3, a4);
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
      sub_20D909114(v18, a5 & 1);
      v13 = sub_20D8D4A48(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_20D9757F8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_20D8D644C();
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
}

void sub_20D8D56D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20D8D4AC0(a2);
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
      sub_20D909670(v14, a3 & 1);
      v9 = sub_20D8D4AC0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_20D9757F8();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_20D8D65C4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_20D8D5824(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D7E39A4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_20D8D5890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  result = sub_20D8D6C58(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for HistoricalUsageWidgetCommon.Home);
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

unint64_t sub_20D8D5944(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_20D8D5988(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20D9757C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20D8D5A40(uint64_t a1, uint64_t a2)
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

unint64_t sub_20D8D5AAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20D8D6DD0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F3237D0](v9, a1);
      sub_20D84D3F0(v9);
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

unint64_t sub_20D8D5B74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_20D8D6CC0(*(v2 + 48) + v12 * v10, v8, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      if (sub_20D972668())
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_20D9757C8() & 1) != 0)
        {
          break;
        }
      }

      sub_20D8D6D70(v8, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_20D8D6D70(v8, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  }

  return v10;
}

unint64_t sub_20D8D5D24(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_20D97B4C0[*(*(v2 + 48) + result)] == qword_20D97B4C0[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_20D8D5DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
  v2 = *v0;
  v3 = sub_20D975758();
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
        sub_20D7EB630(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20D7E39A4(v25, (*(v4 + 56) + v22));
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

id sub_20D8D5F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A340, &qword_20D97B428);
  v2 = *v0;
  v3 = sub_20D975758();
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

void *sub_20D8D60B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v2 = *v0;
  v3 = sub_20D975758();
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

void *sub_20D8D6200()
{
  v1 = v0;
  v2 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A380, &unk_20D97B490);
  v4 = *v0;
  v5 = sub_20D975758();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_20D8D6CC0(*(v4 + 48) + v21, v27, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_20D8D6C58(v20, *(v29 + 48) + v21, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void sub_20D8D644C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A378, &unk_20D97B470);
  v2 = *v0;
  v3 = sub_20D975758();
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

void sub_20D8D65C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A350, &unk_20D97D120);
  v2 = *v0;
  v3 = sub_20D975758();
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

unint64_t sub_20D8D6720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
    v3 = sub_20D975778();
    v4 = a1 + 32;

    while (1)
    {
      sub_20D7EB7E8(v4, &v13, &qword_27C839EB0, &qword_20D979E50);
      v5 = v13;
      v6 = v14;
      result = sub_20D8D4A48(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20D7E39A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20D8D6850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v3 = sub_20D975778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_20D8D4AC0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_20D8D6930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A378, &unk_20D97B470);
    v3 = sub_20D975778();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20D8D4A48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_20D8D6A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s16MockFilterPeriodOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t _s16MockFilterPeriodOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double _s16MockFilterPeriodOwst(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 57) = 0u;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D8D6BB4(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_20D8D6BE4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1;
    v3 = *(result + 56) & 1;
    v4 = *(result + 72) & 1 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 40) = v2;
    *(result + 56) = v3;
    *(result + 72) = v4;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0x80;
  }

  return result;
}

uint64_t sub_20D8D6C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8D6CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8D6D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D8D6D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D8D6E78@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v45 = a1;
  v47 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3B0, &qword_20D97B640);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3B8, &qword_20D97B648);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3C0, &unk_20D97B650);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v13 = sub_20D974378();
  *(inited + 32) = v13;
  v14 = sub_20D974348();
  *(inited + 33) = v14;
  v15 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v13)
  {
    v15 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v14)
  {
    v15 = sub_20D974358();
  }

  v16 = 0uLL;
  v17 = 0uLL;
  v18 = v46;
  if ((v46 & 1) == 0)
  {
    sub_20D973AD8();
    *(&v17 + 1) = v19;
    *(&v16 + 1) = v20;
  }

  v43 = v17;
  v44 = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3C8, &unk_20D97B660);
  (*(*(v21 - 8) + 16))(v5, v45, v21);
  v22 = &v5[*(v3 + 36)];
  *v22 = v15;
  v23 = v44;
  *(v22 + 24) = v43;
  *(v22 + 8) = v23;
  v22[40] = v18 & 1;
  sub_20D974C48();
  sub_20D973C18();
  sub_20D7EAF18(v5, v8, &qword_27C83A3B0, &qword_20D97B640);
  v24 = &v8[*(v6 + 36)];
  v25 = v49;
  *v24 = v48;
  *(v24 + 1) = v25;
  *(v24 + 2) = v50;
  v26 = sub_20D974C48();
  v28 = v27;
  v29 = &v11[*(v9 + 36)];
  sub_20D974C08();
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)] = 256;
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36)];
  *v30 = v26;
  v30[1] = v28;
  sub_20D7EAF18(v8, v11, &qword_27C83A3B8, &qword_20D97B648);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3D0, &unk_20D97B678);
  v32 = v47;
  v33 = (v47 + *(v31 + 36));
  v34 = *(sub_20D973DE8() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_20D974118();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #16.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)] = 256;
  return sub_20D7EAF18(v11, v32, &qword_27C83A3C0, &unk_20D97B650);
}

uint64_t sub_20D8D7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D974378();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3D8, &qword_20D97B688);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3E0, &qword_20D97B690) + 36);
  *v6 = v4;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  LOBYTE(a1) = sub_20D974348();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3E8, &qword_20D97B698) + 36);
  *v7 = a1;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  sub_20D974C48();
  sub_20D973C18();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3F0, &qword_20D97B6A0) + 36));
  *v8 = v19;
  v8[1] = v20;
  v8[2] = v21;
  v9 = sub_20D974C48();
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3F8, &qword_20D97B6A8) + 36);
  sub_20D974C08();
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36));
  *v13 = v9;
  v13[1] = v11;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A400, &qword_20D97B6B0) + 36));
  v15 = *(sub_20D973DE8() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_20D974118();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v14 = 0;
  *(v14 + 1) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550);
  *&v14[*(result + 36)] = 256;
  return result;
}

uint64_t sub_20D8D74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20D974C48();
  sub_20D973C18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A408, &qword_20D97B6B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A410, &qword_20D97B6C0) + 36));
  *v5 = v12;
  v5[1] = v13;
  v5[2] = v14;
  v6 = sub_20D974C48();
  v8 = v7;
  v9 = sub_20D9748C8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A418, &qword_20D97B6C8);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = 256;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  return result;
}

unint64_t sub_20D8D75FC()
{
  result = qword_27C83A398;
  if (!qword_27C83A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A398);
  }

  return result;
}

unint64_t sub_20D8D7650()
{
  result = qword_27C83A3A0;
  if (!qword_27C83A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A3A0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx010HomeEnergyB020FakeSmallWidgetStyleVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_20D973DA8();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_20D8D7714()
{
  result = qword_27C83A3A8;
  if (!qword_27C83A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A3A8);
  }

  return result;
}

unint64_t sub_20D8D77EC()
{
  result = qword_27C83A420;
  if (!qword_27C83A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3D0, &unk_20D97B678);
    sub_20D8D78A4();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A420);
  }

  return result;
}

unint64_t sub_20D8D78A4()
{
  result = qword_27C83A428;
  if (!qword_27C83A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3C0, &unk_20D97B650);
    sub_20D8D7BDC(&qword_27C83A430, &qword_27C83A3B8, &qword_20D97B648, sub_20D8D7988);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A428);
  }

  return result;
}

unint64_t sub_20D8D7988()
{
  result = qword_27C83A438;
  if (!qword_27C83A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3B0, &qword_20D97B640);
    sub_20D7EBC4C(&qword_27C83A440, &qword_27C83A3C8, &unk_20D97B660, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A438);
  }

  return result;
}

unint64_t sub_20D8D7A40()
{
  result = qword_27C83A448;
  if (!qword_27C83A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A400, &qword_20D97B6B0);
    sub_20D8D7AF8();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A448);
  }

  return result;
}

unint64_t sub_20D8D7AF8()
{
  result = qword_27C83A450;
  if (!qword_27C83A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3F8, &qword_20D97B6A8);
    sub_20D8D7BDC(&qword_27C83A458, &qword_27C83A3F0, &qword_20D97B6A0, sub_20D8D7C60);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A450);
  }

  return result;
}

uint64_t sub_20D8D7BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8D7C60()
{
  result = qword_27C83A460;
  if (!qword_27C83A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3E8, &qword_20D97B698);
    sub_20D8D7CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A460);
  }

  return result;
}

unint64_t sub_20D8D7CEC()
{
  result = qword_27C83A468;
  if (!qword_27C83A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3E0, &qword_20D97B690);
    sub_20D7EBC4C(&qword_27C83A470, &qword_27C83A3D8, &qword_20D97B688, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A468);
  }

  return result;
}

unint64_t sub_20D8D7DA4()
{
  result = qword_27C83A478;
  if (!qword_27C83A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A418, &qword_20D97B6C8);
    sub_20D8D7E5C();
    sub_20D7EBC4C(&qword_27C83A490, &qword_27C83A498, &unk_20D97B6D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A478);
  }

  return result;
}

unint64_t sub_20D8D7E5C()
{
  result = qword_27C83A480;
  if (!qword_27C83A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A410, &qword_20D97B6C0);
    sub_20D7EBC4C(&qword_27C83A488, &qword_27C83A408, &qword_20D97B6B8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A480);
  }

  return result;
}

uint64_t sub_20D8D7F20(unsigned __int8 a1)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8D8010(unsigned __int8 a1)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8D8124@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_20D971E68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D971E58();
  sub_20D971E48();
  MEMORY[0x20F31FFF0](7824750, 0xE300000000000000);
  sub_20D8D8374();
  sub_20D971E18();
  sub_20D971E28();
  v9 = sub_20D9721C8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_20D7E3944(v4, &qword_27C838B78, &qword_20D97A5A0);
    sub_20D8DAAE4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_20D8D8374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C83A4A8, &qword_20D97B7A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v319 = &v287 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v318 = &v287 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v315 = &v287 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v340 = &v287 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v310 = &v287 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v309 = &v287 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v287 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v308 = &v287 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v287 - v20;
  v22 = sub_20D971E08();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v288 = &v287 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v303 = &v287 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v339 = &v287 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v302 = &v287 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v338 = &v287 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v337 = &v287 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v301 = &v287 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v336 = &v287 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v317 = &v287 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v316 = &v287 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v335 = &v287 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v300 = &v287 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v334 = &v287 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v333 = &v287 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v299 = &v287 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v332 = &v287 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v331 = &v287 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v298 = &v287 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v330 = &v287 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v329 = &v287 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v297 = &v287 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v328 = &v287 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v314 = &v287 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v313 = &v287 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v327 = &v287 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v296 = &v287 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v326 = &v287 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v325 = &v287 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v295 = &v287 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v324 = &v287 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v323 = &v287 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v294 = &v287 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v322 = &v287 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v312 = &v287 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v311 = &v287 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v321 = &v287 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v293 = &v287 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v320 = &v287 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v292 = &v287 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v291 = &v287 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v290 = &v287 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v289 = &v287 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v307 = &v287 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v306 = &v287 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v305 = &v287 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v304 = &v287 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v118 = &v287 - v117;
  MEMORY[0x28223BE20](v116);
  v120 = &v287 - v119;
  v343 = v23;
  v344 = MEMORY[0x277D84F90];
  if (!*(v1 + 24))
  {
    v341 = *(v23 + 56);
    v341(v21, 1, 1, v22);
LABEL_5:
    sub_20D7E3944(v21, qword_27C83A4A8, &qword_20D97B7A0);
    v121 = v340;
    v122 = *(v1 + 48);
    if (!v122)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v342 = v17;

  sub_20D971DF8();
  v341 = *(v23 + 56);
  v341(v21, 0, 1, v22);

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v17 = v342;
    goto LABEL_5;
  }

  v152 = *(v23 + 32);
  v152(v120, v21, v22);
  (*(v23 + 16))(v118, v120, v22);
  v153 = sub_20D8D423C(0, 1, 1, MEMORY[0x277D84F90]);
  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  if (v155 >= v154 >> 1)
  {
    v153 = sub_20D8D423C((v154 > 1), v155 + 1, 1, v153);
  }

  v156 = v343 + 8;
  (*(v343 + 8))(v120, v22);
  *(v153 + 2) = v155 + 1;
  v157 = &v153[(*(v156 + 72) + 32) & ~*(v156 + 72)];
  v158 = *(v156 + 64);
  v23 = v343;
  v152(&v157[v158 * v155], v118, v22);
  v344 = v153;
  v121 = v340;
  v17 = v342;
  v122 = *(v1 + 48);
  if (v122)
  {
LABEL_6:
    v124 = *(v1 + 56);
    v123 = *(v1 + 64);
    v345 = *(v1 + 32);
    v346 = v122;
    v347 = v124;
    v348 = v123;
    v125 = sub_20D8DAB38();
    sub_20D95A78C(v125);
  }

LABEL_7:
  v126 = *(v1 + 88);

  v127 = v308;
  sub_20D8DBF3C(v126, v308);

  v342 = *(v23 + 48);
  if ((v342)(v127, 1, v22) == 1)
  {
    sub_20D7E3944(v127, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v128 = *(v23 + 32);
    v129 = v304;
    v128(v304, v127, v22);
    (*(v23 + 16))(v305, v129, v22);
    v130 = v344;
    v131 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_20D8D423C(0, *(v130 + 2) + 1, 1, v130);
    }

    v133 = *(v130 + 2);
    v132 = *(v130 + 3);
    if (v133 >= v132 >> 1)
    {
      v130 = sub_20D8D423C((v132 > 1), v133 + 1, 1, v130);
    }

    (*(v23 + 8))(v304, v22);
    *(v130 + 2) = v133 + 1;
    v128(&v130[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v133], v305, v22);
    v344 = v130;
    v17 = v131;
    v121 = v340;
  }

  v134 = *(v1 + 112);

  sub_20D8DC130(v134, v17);

  if ((v342)(v17, 1, v22) == 1)
  {
    sub_20D7E3944(v17, qword_27C83A4A8, &qword_20D97B7A0);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v136 = v343;
    v135 = v309;
    v341(v309, 1, 1, v22);
    goto LABEL_29;
  }

  v146 = v343;
  v147 = *(v343 + 32);
  v148 = v306;
  v147(v306, v17, v22);
  (*(v146 + 16))(v307, v148, v22);
  v149 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_20D8D423C(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_20D8D423C((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v146 + 8))(v306, v22);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v151], v307, v22);
  v344 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v135 = v309;
  sub_20D971DF8();
  v136 = v343;
  v341(v135, 0, 1, v22);

  if ((v342)(v135, 1, v22) != 1)
  {
    v137 = *(v136 + 32);
    v138 = v289;
    v137(v289, v135, v22);
    (*(v136 + 16))(v290, v138, v22);
    v139 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_20D8D423C(0, *(v139 + 2) + 1, 1, v139);
    }

    v141 = *(v139 + 2);
    v140 = *(v139 + 3);
    if (v141 >= v140 >> 1)
    {
      v139 = sub_20D8D423C((v140 > 1), v141 + 1, 1, v139);
    }

    v142 = v343 + 8;
    (*(v343 + 8))(v289, v22);
    *(v139 + 2) = v141 + 1;
    v143 = &v139[(*(v142 + 72) + 32) & ~*(v142 + 72)];
    v144 = *(v142 + 64);
    v136 = v343;
    v137(&v143[v144 * v141], v290, v22);
    v344 = v139;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_20D7E3944(v135, qword_27C83A4A8, &qword_20D97B7A0);
  if (!*(v1 + 176))
  {
LABEL_22:
    v145 = v310;
    v341(v310, 1, 1, v22);
LABEL_31:
    sub_20D7E3944(v145, qword_27C83A4A8, &qword_20D97B7A0);
    goto LABEL_41;
  }

LABEL_30:

  v145 = v310;
  sub_20D971DF8();
  v341(v145, 0, 1, v22);

  if ((v342)(v145, 1, v22) == 1)
  {
    goto LABEL_31;
  }

  v159 = *(v136 + 32);
  v160 = v291;
  v159(v291, v145, v22);
  (*(v136 + 16))(v292, v160, v22);
  v161 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_20D8D423C(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_20D8D423C((v162 > 1), v163 + 1, 1, v161);
  }

  (*(v136 + 8))(v291, v22);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v163], v292, v22);
  v344 = v161;
LABEL_41:

  sub_20D8DCA48(v164);
  if (v165)
  {
    v166 = v293;
    sub_20D971DF8();

    v167 = v343;
    v168 = *(v343 + 32);
    v169 = v320;
    v168(v320, v166, v22);
    (*(v167 + 16))(v321, v169, v22);
    v170 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_20D8D423C(0, *(v170 + 2) + 1, 1, v170);
    }

    v172 = *(v170 + 2);
    v171 = *(v170 + 3);
    if (v172 >= v171 >> 1)
    {
      v170 = sub_20D8D423C((v171 > 1), v172 + 1, 1, v170);
    }

    (*(v167 + 8))(v320, v22);
    *(v170 + 2) = v172 + 1;
    v168(&v170[((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v172], v321, v22);
    v344 = v170;
  }

  else
  {
  }

  v173 = type metadata accessor for TapToRadarDraft(0);
  sub_20D8DC288(v121);
  if ((v342)(v121, 1, v22) == 1)
  {
    sub_20D7E3944(v121, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v174 = v343;
    v175 = *(v343 + 32);
    v176 = v311;
    v175(v311, v121, v22);
    (*(v174 + 16))(v312, v176, v22);
    v177 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_20D8D423C(0, *(v177 + 2) + 1, 1, v177);
    }

    v179 = *(v177 + 2);
    v178 = *(v177 + 3);
    if (v179 >= v178 >> 1)
    {
      v177 = sub_20D8D423C((v178 > 1), v179 + 1, 1, v177);
    }

    (*(v174 + 8))(v311, v22);
    *(v177 + 2) = v179 + 1;
    v175(&v177[((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v179], v312, v22);
    v344 = v177;
  }

  sub_20D8DC834(v180);
  if (v181)
  {
    v182 = v294;
    sub_20D971DF8();

    v183 = v343;
    v184 = *(v343 + 32);
    v185 = v322;
    v184(v322, v182, v22);
    (*(v183 + 16))(v323, v185, v22);
    v186 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_20D8D423C(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_20D8D423C((v187 > 1), v188 + 1, 1, v186);
    }

    (*(v183 + 8))(v322, v22);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v188], v323, v22);
    v344 = v186;
  }

  else
  {
  }

  sub_20D8DC834(v189);
  if (v190)
  {
    v191 = v295;
    sub_20D971DF8();

    v192 = v343;
    v193 = *(v343 + 32);
    v194 = v324;
    v193(v324, v191, v22);
    (*(v192 + 16))(v325, v194, v22);
    v195 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v195 = sub_20D8D423C(0, *(v195 + 2) + 1, 1, v195);
    }

    v197 = *(v195 + 2);
    v196 = *(v195 + 3);
    if (v197 >= v196 >> 1)
    {
      v195 = sub_20D8D423C((v196 > 1), v197 + 1, 1, v195);
    }

    (*(v192 + 8))(v324, v22);
    *(v195 + 2) = v197 + 1;
    v193(&v195[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v197], v325, v22);
    v344 = v195;
  }

  else
  {
  }

  sub_20D8DC704(v198);
  if (v199)
  {
    v200 = v296;
    sub_20D971DF8();

    v201 = v343;
    v202 = *(v343 + 32);
    v203 = v326;
    v202(v326, v200, v22);
    (*(v201 + 16))(v327, v203, v22);
    v204 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v204 = sub_20D8D423C(0, *(v204 + 2) + 1, 1, v204);
    }

    v206 = *(v204 + 2);
    v205 = *(v204 + 3);
    if (v206 >= v205 >> 1)
    {
      v204 = sub_20D8D423C((v205 > 1), v206 + 1, 1, v204);
    }

    v207 = v343 + 8;
    (*(v343 + 8))(v326, v22);
    *(v204 + 2) = v206 + 1;
    v208 = &v204[(*(v207 + 72) + 32) & ~*(v207 + 72)];
    v209 = *(v207 + 64);
    v210 = v343;
    v202(&v208[v209 * v206], v327, v22);
    v344 = v204;
  }

  else
  {

    v210 = v343;
  }

  v211 = v315;
  sub_20D971DF8();

  v340 = (v210 + 56);
  v341(v211, 0, 1, v22);

  if ((v342)(v211, 1, v22) == 1)
  {
    sub_20D7E3944(v211, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v212 = *(v210 + 32);
    v213 = v313;
    v212(v313, v211, v22);
    (*(v210 + 16))(v314, v213, v22);
    v214 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_20D8D423C(0, *(v214 + 2) + 1, 1, v214);
    }

    v216 = *(v214 + 2);
    v215 = *(v214 + 3);
    if (v216 >= v215 >> 1)
    {
      v214 = sub_20D8D423C((v215 > 1), v216 + 1, 1, v214);
    }

    (*(v210 + 8))(v313, v22);
    *(v214 + 2) = v216 + 1;
    v212(&v214[((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v216], v314, v22);
    v344 = v214;
  }

  sub_20D8DC704(v217);
  if (v218)
  {
    v219 = v297;
    sub_20D971DF8();

    v220 = v343;
    v221 = *(v343 + 32);
    v222 = v328;
    v221(v328, v219, v22);
    (*(v220 + 16))(v329, v222, v22);
    v223 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v223 = sub_20D8D423C(0, *(v223 + 2) + 1, 1, v223);
    }

    v225 = *(v223 + 2);
    v224 = *(v223 + 3);
    if (v225 >= v224 >> 1)
    {
      v223 = sub_20D8D423C((v224 > 1), v225 + 1, 1, v223);
    }

    (*(v220 + 8))(v328, v22);
    *(v223 + 2) = v225 + 1;
    v221(&v223[((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v225], v329, v22);
    v344 = v223;
  }

  else
  {
  }

  sub_20D8DC544(v226);
  if (v227)
  {
    v228 = v298;
    sub_20D971DF8();

    v229 = v343;
    v230 = *(v343 + 32);
    v231 = v330;
    v230(v330, v228, v22);
    (*(v229 + 16))(v331, v231, v22);
    v232 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_20D8D423C(0, *(v232 + 2) + 1, 1, v232);
    }

    v234 = *(v232 + 2);
    v233 = *(v232 + 3);
    if (v234 >= v233 >> 1)
    {
      v232 = sub_20D8D423C((v233 > 1), v234 + 1, 1, v232);
    }

    (*(v229 + 8))(v330, v22);
    *(v232 + 2) = v234 + 1;
    v230(&v232[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v234], v331, v22);
    v344 = v232;
  }

  else
  {
  }

  sub_20D8DC704(v235);
  if (v236)
  {
    v237 = v299;
    sub_20D971DF8();

    v238 = v343;
    v239 = *(v343 + 32);
    v240 = v332;
    v239(v332, v237, v22);
    (*(v238 + 16))(v333, v240, v22);
    v241 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v241 = sub_20D8D423C(0, *(v241 + 2) + 1, 1, v241);
    }

    v243 = *(v241 + 2);
    v242 = *(v241 + 3);
    if (v243 >= v242 >> 1)
    {
      v241 = sub_20D8D423C((v242 > 1), v243 + 1, 1, v241);
    }

    (*(v238 + 8))(v332, v22);
    *(v241 + 2) = v243 + 1;
    v239(&v241[((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v243], v333, v22);
    v344 = v241;
  }

  else
  {
  }

  v244 = *(v1 + v173[19] + 16);

  sub_20D8DB614(v244);
  if (v245)
  {
    v246 = v300;
    sub_20D971DF8();

    v247 = v343;
    v248 = *(v343 + 32);
    v249 = v334;
    v248(v334, v246, v22);
    (*(v247 + 16))(v335, v249, v22);
    v250 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v250 = sub_20D8D423C(0, *(v250 + 2) + 1, 1, v250);
    }

    v252 = *(v250 + 2);
    v251 = *(v250 + 3);
    if (v252 >= v251 >> 1)
    {
      v250 = sub_20D8D423C((v251 > 1), v252 + 1, 1, v250);
    }

    (*(v247 + 8))(v334, v22);
    *(v250 + 2) = v252 + 1;
    v248(&v250[((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v252], v335, v22);
    v344 = v250;
  }

  else
  {
  }

  v253 = v318;
  sub_20D971DF8();

  v341(v253, 0, 1, v22);

  if ((v342)(v253, 1, v22) == 1)
  {
    sub_20D7E3944(v253, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v254 = v343;
    v255 = *(v343 + 32);
    v256 = v316;
    v255(v316, v253, v22);
    (*(v254 + 16))(v317, v256, v22);
    v257 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v257 = sub_20D8D423C(0, *(v257 + 2) + 1, 1, v257);
    }

    v259 = *(v257 + 2);
    v258 = *(v257 + 3);
    if (v259 >= v258 >> 1)
    {
      v257 = sub_20D8D423C((v258 > 1), v259 + 1, 1, v257);
    }

    (*(v254 + 8))(v316, v22);
    *(v257 + 2) = v259 + 1;
    v255(&v257[((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v259], v317, v22);
    v344 = v257;
  }

  v260 = *(v1 + v173[21] + 16);

  sub_20D8DBB00(v260);
  if (v261)
  {
    v262 = v301;
    sub_20D971DF8();

    v263 = v343;
    v264 = *(v343 + 32);
    v265 = v336;
    v264(v336, v262, v22);
    (*(v263 + 16))(v337, v265, v22);
    v266 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = sub_20D8D423C(0, *(v266 + 2) + 1, 1, v266);
    }

    v268 = *(v266 + 2);
    v267 = *(v266 + 3);
    if (v268 >= v267 >> 1)
    {
      v266 = sub_20D8D423C((v267 > 1), v268 + 1, 1, v266);
    }

    (*(v263 + 8))(v336, v22);
    *(v266 + 2) = v268 + 1;
    v264(&v266[((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v268], v337, v22);
    v344 = v266;
  }

  else
  {
  }

  sub_20D8DC704(v269);
  if (v270)
  {
    v271 = v302;
    sub_20D971DF8();

    v272 = v343;
    v273 = *(v343 + 32);
    v274 = v338;
    v273(v338, v271, v22);
    (*(v272 + 16))(v339, v274, v22);
    v275 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_20D8D423C(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_20D8D423C((v276 > 1), v277 + 1, 1, v275);
    }

    (*(v272 + 8))(v338, v22);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v277], v339, v22);
    v344 = v275;
  }

  else
  {
  }

  if (!*(v1 + v173[23] + 24))
  {
    v278 = v319;
    v341(v319, 1, 1, v22);
    goto LABEL_140;
  }

  v278 = v319;
  sub_20D971DF8();
  v341(v278, 0, 1, v22);

  if ((v342)(v278, 1, v22) == 1)
  {
LABEL_140:
    sub_20D7E3944(v278, qword_27C83A4A8, &qword_20D97B7A0);
    return v344;
  }

  v279 = v343;
  v280 = *(v343 + 32);
  v281 = v303;
  v280(v303, v278, v22);
  v282 = v288;
  (*(v279 + 16))(v288, v281, v22);
  v283 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_20D8D423C(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_20D8D423C((v284 > 1), v285 + 1, 1, v283);
  }

  (*(v279 + 8))(v303, v22);
  *(v283 + 2) = v285 + 1;
  v280(&v283[((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v285], v282, v22);
  return v283;
}

unint64_t sub_20D8DAAE4()
{
  result = qword_27C83A4A0;
  if (!qword_27C83A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A4A0);
  }

  return result;
}

uint64_t sub_20D8DAB38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A390, &unk_20D97B4B0);
  sub_20D971E08();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D97A6F0;
  sub_20D9757A8();
  sub_20D971DF8();

  sub_20D971DF8();
  sub_20D971DF8();
  return v0;
}

uint64_t sub_20D8DACB4()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  sub_20D975158();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D8DAD34(uint64_t a1)
{
  MEMORY[0x20F323A50](*v1);
  sub_20D975158();

  return sub_20D975158();
}

uint64_t sub_20D8DADA4()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  sub_20D975158();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D8DAE20(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_20D9757C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_20D9757C8();
}

unint64_t sub_20D8DAED4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20D8DB038(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_20D8DAED4(*a1);
  v5 = v4;
  if (v3 == sub_20D8DAED4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20D9757C8();
  }

  return v8 & 1;
}

uint64_t sub_20D8DB0C0()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D8DAED4(v1);
  sub_20D975158();

  return sub_20D9758A8();
}

double sub_20D8DB124(uint64_t a1)
{
  sub_20D8DAED4(*v1);
  sub_20D975158();

  return result;
}

uint64_t sub_20D8DB178()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D8DAED4(v1);
  sub_20D975158();

  return sub_20D9758A8();
}

unint64_t sub_20D8DB1D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20D8DDF6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_20D8DB208@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D8DAED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_20D8DB248(uint64_t a1)
{
  sub_20D975158();

  return result;
}

unint64_t sub_20D8DB34C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20D8DDFB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20D8DB37C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double sub_20D8DB45C(uint64_t a1)
{
  sub_20D975158();

  return result;
}

unint64_t sub_20D8DB53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20D8DE004(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20D8DB56C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_20D8DB614(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_20D8D4130(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_20D8D4130((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_20D8D4130((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
          if ((v1 & 8) == 0)
          {
LABEL_16:
            if ((v1 & 0x10) == 0)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
              sub_20D8767E0();
              v1 = sub_20D974F98();

              return v1;
            }

LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
            }

            v16 = *(v2 + 2);
            v15 = *(v2 + 3);
            if (v16 >= v15 >> 1)
            {
              v2 = sub_20D8D4130((v15 > 1), v16 + 1, 1, v2);
            }

            *(v2 + 2) = v16 + 1;
            v17 = &v2[16 * v16];
            *(v17 + 4) = 0x79627261654ELL;
            *(v17 + 5) = 0xE600000000000000;
            goto LABEL_33;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
        }

        v13 = *(v2 + 2);
        v12 = *(v2 + 3);
        if (v13 >= v12 >> 1)
        {
          v2 = sub_20D8D4130((v12 > 1), v13 + 1, 1, v2);
        }

        *(v2 + 2) = v13 + 1;
        v14 = &v2[16 * v13];
        *(v14 + 4) = 0x616C506572616853;
        *(v14 + 5) = 0xE900000000000079;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_20D8D4130((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

BOOL sub_20D8DB98C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20D8DB9BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20D8DB9E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_20D8DBAC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_20D8DDF34(a1);

  *a2 = v3;
}

uint64_t sub_20D8DBB00(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_20D9757C8();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

double sub_20D8DBCD0(uint64_t a1)
{
  sub_20D975158();

  return result;
}

unint64_t sub_20D8DBDD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20D8DE050(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20D8DBE04(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000020D981670;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000020D981690;
    }

    v5 = 0x800000020D981630;
    if (v2 != 3)
    {
      v5 = 0x800000020D981650;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_20D8DBED4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_20D8DBF3C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v6 = 1;
  }

  else
  {
    sub_20D971DF8();

    v6 = 0;
  }

  v7 = sub_20D971E08();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_20D8DC130@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v6 = 1;
  }

  else
  {
    sub_20D971DF8();

    v6 = 0;
  }

  v7 = sub_20D971E08();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_20D8DC288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
  sub_20D81A220(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_20D975078();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_20D972528();
    v16 = [v13 stringFromDate_];

    sub_20D975098();
    (*(v8 + 8))(v10, v7);
    sub_20D971DF8();

    v12 = 0;
  }

  v17 = sub_20D971E08();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_20D8DC544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_20D8D4130((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v16 = sub_20D974F98();

  return v16;
}

uint64_t sub_20D8DC704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20D8D4130(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_20D8D4130((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v9 = sub_20D974F98();

  return v9;
}

uint64_t sub_20D8DC834(uint64_t a1)
{
  v23 = sub_20D9721C8();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_20D9721A8();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_20D8D4130(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_20D8D4130((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v19 = sub_20D974F98();

  return v19;
}

uint64_t sub_20D8DCA48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_20D9757A8();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20D8D4130(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_20D8D4130((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v10 = sub_20D974F98();

  return v10;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27C83A530;
  if (!qword_27C83A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D8DCC04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D8DCC84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_20D8DCE08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_20D8DD098(uint64_t a1)
{
  sub_20D8DD4C0(319, &qword_27C83A540, &unk_27C83CA30, &qword_20D976870, sub_20D8DD3F4);
  if (v1 <= 0x3F)
  {
    sub_20D8DD470();
    if (v2 <= 0x3F)
    {
      sub_20D8DD4C0(319, &qword_27C83A558, &qword_27C83A560, &qword_20D97B7F0, sub_20D8DD530);
      if (v3 <= 0x3F)
      {
        sub_20D8DD4C0(319, &qword_27C83A570, &qword_27C83A578, &qword_20D97B7F8, sub_20D8DD5AC);
        if (v4 <= 0x3F)
        {
          sub_20D8DD4C0(319, &qword_27C83A588, &qword_27C83A590, &qword_20D97B800, sub_20D8DD628);
          if (v5 <= 0x3F)
          {
            sub_20D8DD4C0(319, &qword_27C83A5A0, &qword_27C8389E8, &qword_20D9768D0, sub_20D8DD6A4);
            if (v6 <= 0x3F)
            {
              sub_20D8DD4C0(319, &qword_27C83A5B0, &qword_27C83A5B8, &qword_20D97B808, sub_20D8DD720);
              if (v7 <= 0x3F)
              {
                sub_20D8DD4C0(319, &qword_27C83A5C8, &qword_27C8398E8, &unk_20D97ABF0, sub_20D8DD79C);
                if (v8 <= 0x3F)
                {
                  sub_20D8DD894(319, &qword_27C83A5D8, MEMORY[0x277D839B0], &off_28249E0F8);
                  if (v9 <= 0x3F)
                  {
                    sub_20D8DD4C0(319, &qword_27C83A5E0, &qword_27C83A5E8, &qword_20D97B810, sub_20D8DD818);
                    if (v10 <= 0x3F)
                    {
                      sub_20D8DD894(319, &qword_27C83A5F8, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_28249E530);
                      if (v11 <= 0x3F)
                      {
                        sub_20D8DD894(319, &qword_27C83A600, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_28249E520);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_20D8DD3F4()
{
  result = qword_27C83A548;
  if (!qword_27C83A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83CA30, &qword_20D976870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A548);
  }

  return result;
}

void sub_20D8DD470()
{
  if (!qword_27C83A550)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83A550);
    }
  }
}

void sub_20D8DD4C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_20D8DD530()
{
  result = qword_27C83A568;
  if (!qword_27C83A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A560, &qword_20D97B7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A568);
  }

  return result;
}

unint64_t sub_20D8DD5AC()
{
  result = qword_27C83A580;
  if (!qword_27C83A580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A578, &qword_20D97B7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A580);
  }

  return result;
}

unint64_t sub_20D8DD628()
{
  result = qword_27C83A598;
  if (!qword_27C83A598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A598);
  }

  return result;
}

unint64_t sub_20D8DD6A4()
{
  result = qword_27C83A5A8;
  if (!qword_27C83A5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389E8, &qword_20D9768D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5A8);
  }

  return result;
}

unint64_t sub_20D8DD720()
{
  result = qword_27C83A5C0;
  if (!qword_27C83A5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A5B8, &qword_20D97B808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5C0);
  }

  return result;
}

unint64_t sub_20D8DD79C()
{
  result = qword_27C83A5D0;
  if (!qword_27C83A5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8398E8, &unk_20D97ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5D0);
  }

  return result;
}

unint64_t sub_20D8DD818()
{
  result = qword_27C83A5F0;
  if (!qword_27C83A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A5E8, &qword_20D97B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5F0);
  }

  return result;
}

void sub_20D8DD894(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RatePlanType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatePlanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D8DDBC8()
{
  result = qword_27C83A608;
  if (!qword_27C83A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A608);
  }

  return result;
}

unint64_t sub_20D8DDC20()
{
  result = qword_27C83A610;
  if (!qword_27C83A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A610);
  }

  return result;
}

unint64_t sub_20D8DDC78()
{
  result = qword_27C83A618;
  if (!qword_27C83A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A618);
  }

  return result;
}

unint64_t sub_20D8DDCD0()
{
  result = qword_27C83A620;
  if (!qword_27C83A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A620);
  }

  return result;
}

unint64_t sub_20D8DDD24()
{
  result = qword_27C83A628;
  if (!qword_27C83A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A628);
  }

  return result;
}

unint64_t sub_20D8DDD7C()
{
  result = qword_27C83A630;
  if (!qword_27C83A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A630);
  }

  return result;
}

unint64_t sub_20D8DDDD4()
{
  result = qword_27C83A638;
  if (!qword_27C83A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A638);
  }

  return result;
}

unint64_t sub_20D8DDE2C()
{
  result = qword_27C83A640;
  if (!qword_27C83A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A640);
  }

  return result;
}

unint64_t sub_20D8DDE84()
{
  result = qword_27C83A648;
  if (!qword_27C83A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A648);
  }

  return result;
}

unint64_t sub_20D8DDEE0()
{
  result = qword_27C83A650;
  if (!qword_27C83A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A650);
  }

  return result;
}

uint64_t sub_20D8DDF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_20D8DDF6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D975788();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20D8DDFB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D975788();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20D8DE004(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D975788();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20D8DE050(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D975788();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D8DE0E4()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC30 = result;
  *algn_28112AC38 = v1;
  return result;
}

uint64_t sub_20D8DE180()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC40 = result;
  *algn_28112AC48 = v1;
  return result;
}

uint64_t sub_20D8DE22C()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC68 = result;
  unk_28112AC70 = v1;
  return result;
}

uint64_t sub_20D8DE2D4()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC78 = result;
  unk_28112AC80 = v1;
  return result;
}

double sub_20D8DE378()
{
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277D075B0], v1);
  sub_20D865490(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    (*(v2 + 8))(v4, v1);

LABEL_5:
    v6 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
    v7 = (v0 + *(v6 + 28));
    v8 = v7[1];
    if (!v8)
    {
      return *v7;
    }

    result = *(v0 + *(v6 + 24));
    if ((*v7 - result) / v8 >= 0.0)
    {
      return *v7;
    }

    return result;
  }

  v5 = sub_20D9757C8();
  (*(v2 + 8))(v4, v1);

  if (v5)
  {
    goto LABEL_5;
  }

  v10 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v11 = v0 + *(v10 + 28);
  v12 = *(v11 + 8);
  result = 0.0;
  if (v12)
  {
    v13 = *v11;
    v14 = v0 + *(v10 + 24);
    v15 = *v14;
    result = (v13 - *v14) / v12;
    if (result < 0.0)
    {
      v16 = *(v14 + 8);
      result = 0.0;
      if (v16)
      {
        return (v15 - v13) / v16;
      }
    }
  }

  return result;
}

double sub_20D8DE5D4()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (!v5)
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(v0 + *(v7 + 20) + v3 + 8);
    v6 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0.0;
    return v6 - v10;
  }

  v6 = (*v4 - *(v0 + *(v1 + 28))) / v5;
  v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v8 = *(v4 + *(v7 + 20) + 8);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
  type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v10 = (*(v0 + *(v9 + 20) + v3) - *(v0 + *(v9 + 20) + *(v2 + 28))) / v8;
  return v6 - v10;
}

double sub_20D8DE6AC()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 28);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (!v5)
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(v0 + *(v7 + 20) + v3 + 8);
    v6 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0.0;
    return v6 - v10;
  }

  v6 = (*v4 - *(v0 + *(v1 + 24))) / v5;
  v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v8 = *(v4 + *(v7 + 20) + 8);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
  type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v10 = (*(v0 + *(v9 + 20) + v3) - *(v0 + *(v9 + 20) + *(v2 + 24))) / v8;
  return v6 - v10;
}

uint64_t sub_20D8DE784()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 28);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (v5)
  {
    v6 = *v4;
    v7 = *(v0 + *(v1 + 24));
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(v4 + *(v8 + 20) + 8);
    if (v9)
    {
      v10 = v8;
      v11 = (v6 - v7) / v5;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v9 = *(v0 + *(v12 + 20) + v3 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = v12;
  v11 = 0.0;
LABEL_6:
  result = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = (*(v0 + *(v10 + 20) + v3) - *(v0 + *(v10 + 20) + *(v2 + 24))) / v9;
  if (v14 == 0.0)
  {
    return 0;
  }

  v15 = rint((v11 / v14 + -1.0) * 100.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v15 <= -100)
  {
    return -100;
  }

  else
  {
    return v15;
  }
}

uint64_t DynamicEnergyUsagesCalculations.init(currentScrolledDate:snapshot:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) - 8;
  v6 = MEMORY[0x28223BE20](v76);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v74 = sub_20D972628();
  v72 = *(v74 - 8);
  v11 = MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = sub_20D972E88();
  v73 = v17;
  v75 = *(v17 - 8);
  v18 = v75;
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for HistoricalUsageSnapshot(0);
  v21 = *(v69 + 48);
  v22 = *(v18 + 16);
  v78 = a2;
  v22(v20, a2 + v21, v17);
  sub_20D8DEDE8(a1, a2, v16);
  v68 = v16;
  sub_20D972DF8();
  v70 = v10;
  v23 = sub_20D972E78();
  v24 = sub_20D972D18();
  v26 = v25;
  v27 = v24;
  v28 = sub_20D972D28();
  v30 = v29;
  v31 = v28;
  sub_20D8DF438(v10, a3);
  v32 = sub_20D972D58();
  v33 = sub_20D972DC8();
  v34 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  *(a3 + v34[5]) = v23;
  v35 = (a3 + v34[6]);
  *v35 = v26;
  v35[1] = v27;
  v36 = (a3 + v34[7]);
  *v36 = v30;
  v36[1] = v31;
  *(a3 + v34[8]) = v32;
  *(a3 + v34[9]) = v33;
  v66 = a3;
  sub_20D972D48();
  sub_20D972DF8();
  v67 = v8;
  v37 = sub_20D972E78();
  v38 = sub_20D972D18();
  v40 = v39;
  v41 = v38;
  v42 = sub_20D972D28();
  v44 = v43;
  v45 = v42;
  v65 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v46 = a3 + *(v65 + 20);
  sub_20D8DF438(v8, v46);
  v47 = sub_20D972D58();
  v48 = sub_20D972DC8();
  *(v46 + v34[5]) = v37;
  v49 = (v46 + v34[6]);
  *v49 = v40;
  v49[1] = v41;
  v50 = (v46 + v34[7]);
  *v50 = v44;
  v50[1] = v45;
  *(v46 + v34[8]) = v47;
  *(v46 + v34[9]) = v48;
  v51 = v71;
  sub_20D971D48();
  LOBYTE(v47) = sub_20D972538();
  v52 = *(v72 + 8);
  v53 = v74;
  v52(v51, v74);
  v54 = v65;
  v55 = v47 & 1;
  v56 = v66;
  *(v66 + *(v65 + 28)) = v55;
  sub_20D971D78();
  v57 = v77;
  LOBYTE(v33) = sub_20D972548();
  v58 = v51;
  v59 = v53;
  v52(v58, v53);
  v60 = v56;
  *(v56 + *(v54 + 32)) = v33 & 1;
  v61 = v70;
  v62 = v78;
  LOBYTE(v56) = sub_20D972538();
  sub_20D7FEF04(v62);
  v52(v79, v59);
  sub_20D8DF4E8(v67);
  v52(v57, v59);
  sub_20D8DF4E8(v61);
  v52(v68, v59);
  result = (*(v75 + 8))(v20, v73);
  *(v60 + *(v54 + 24)) = v56 & 1;
  return result;
}

uint64_t sub_20D8DEDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v54 = a3;
  v48 = sub_20D972838();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20D9727B8();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972AF8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9727D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = type metadata accessor for HistoricalUsageSnapshot(0);
  v22 = *(v21 + 52);
  v42[1] = *(v21 + 48);
  sub_20D972E48();
  sub_20D972D38();
  (*(v9 + 8))(v11, v8);
  v23 = v50;
  v24 = v51;
  sub_20D972458();
  v26 = v25;
  (*(v13 + 16))(v18, v20, v12);
  v27 = a2 + v22;
  v28 = v52;
  (*(v23 + 16))(v52, v27, v24);
  v29 = (*(v23 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D075B0])
  {
    sub_20D9730E8();
    if (v30 * 0.5 < v26)
    {
      v31 = MEMORY[0x277CC9980];
LABEL_11:
      v33 = v47;
      v34 = v44;
      v35 = v49;
      (*(v47 + 104))(v44, *v31, v49);
      v36 = v43;
      sub_20D972E68();
      v37 = v45;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v29 == *MEMORY[0x277D075B8] || v29 == *MEMORY[0x277D075C8])
  {
    sub_20D973018();
    if (v38 * 0.5 < v26)
    {
      v31 = MEMORY[0x277CC9968];
      goto LABEL_11;
    }

LABEL_16:
    (*(v13 + 8))(v20, v12);
    return (*(v13 + 32))(v54, v18, v12);
  }

  if (v29 == *MEMORY[0x277D075D0])
  {
    sub_20D973058();
    if (v32 * 0.5 < v26)
    {
      v33 = v47;
      v34 = v44;
      v35 = v49;
      (*(v47 + 104))(v44, *MEMORY[0x277CC99B8], v49);
      v36 = v43;
      sub_20D972E68();
      v37 = v45;
LABEL_12:
      sub_20D9730C8();
      (*(v46 + 8))(v36, v48);
      (*(v33 + 8))(v34, v35);
      v39 = *(v13 + 8);
      v39(v18, v12);
      v39(v20, v12);
      (*(v13 + 32))(v18, v37, v12);
      return (*(v13 + 32))(v54, v18, v12);
    }

    goto LABEL_16;
  }

  if (v29 == *MEMORY[0x277D075C0])
  {
    sub_20D9730A8();
    if (v40 * 0.5 < v26)
    {
      v31 = MEMORY[0x277CC9998];
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  (*(v13 + 8))(v20, v12);
  (*(v13 + 32))(v54, v18, v12);
  return (*(v23 + 8))(v28, v24);
}

uint64_t sub_20D8DF438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8DF4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D8DF578(uint64_t a1)
{
  result = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D8DF620(uint64_t a1)
{
  sub_20D8DF6D4(319);
  if (v1 <= 0x3F)
  {
    sub_20D8DF768(319);
    if (v2 <= 0x3F)
    {
      sub_20D8DF7C0();
      if (v3 <= 0x3F)
      {
        sub_20D8DF824(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D8DF6D4(uint64_t a1)
{
  if (!qword_281124BC8)
  {
    sub_20D972628();
    sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_20D975418();
    if (!v2)
    {
      atomic_store(v1, &qword_281124BC8);
    }
  }
}

void sub_20D8DF768(uint64_t a1)
{
  if (!qword_281124C08)
  {
    sub_20D972C58();
    v1 = sub_20D975288();
    if (!v2)
    {
      atomic_store(v1, &qword_281124C08);
    }
  }
}

void sub_20D8DF7C0()
{
  if (!qword_281124BE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281124BE8);
    }
  }
}

void sub_20D8DF824(uint64_t a1)
{
  if (!qword_281124C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A658, &qword_20D97BEF8);
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281124C48);
    }
  }
}

id sub_20D8DF88C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_20D8DFD74();
    v4 = sub_20D974F38();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(uint64_t a1)
{
  if (qword_27C838460 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CB0);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000011, 0x800000020D989AC0, &v39);
    *(v5 + 12) = 2080;
    aBlock = 0x6C7070612E6D6F63;
    v41 = 0xEF2E656D6F482E65;
    v7 = HEUIFAnalyticsEventType.rawValue.getter();
    v9 = sub_20D7E5BB0(4, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x20F323300](v9, v11, v13, v15);
    v18 = v17;

    MEMORY[0x20F323340](v16, v18);

    v19 = sub_20D7F4DC8(aBlock, v41, &v39);

    *(v5 + 14) = v19;
    *(v5 + 22) = 2080;
    sub_20D7E3B94();
    sub_20D8DFD74();
    v20 = sub_20D974F58();
    v22 = v21;

    v23 = sub_20D7F4DC8(v20, v22, &v39);

    *(v5 + 24) = v23;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Sending analytics event for [%s]: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v24 = *(a1 + 16);
  aBlock = 0x6C7070612E6D6F63;
  v41 = 0xEF2E656D6F482E65;
  LOBYTE(v39) = v24;
  v25 = HEUIFAnalyticsEventType.rawValue.getter();
  v27 = sub_20D7E5BB0(4, v25, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x20F323300](v27, v29, v31, v33);
  v36 = v35;

  MEMORY[0x20F323340](v34, v36);

  v37 = sub_20D975078();

  v44 = sub_20D8DFD58;
  v45 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_20D8DF88C;
  v43 = &block_descriptor_2;
  v38 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D8DFD74()
{
  result = qword_281124B88;
  if (!qword_281124B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124B88);
  }

  return result;
}

void sub_20D8DFDC0()
{
  v0 = sub_20D975078();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_28112ABE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_20D8DFE54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394E0, &qword_20D978CF0);
      v7 = *(sub_20D973158() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_20D973158();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(uint64_t a1, uint64_t a2, unsigned int (*a3)(unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v111 = a2;
  v112 = a1;
  v6 = sub_20D972628();
  v110 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v102 - v10;
  v127 = sub_20D973158();
  v11 = *(v127 - 8);
  v12 = MEMORY[0x28223BE20](v127);
  v119 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v102 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A660, &qword_20D97BF48);
  v124 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v118 = (&v102 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A668, &unk_20D97BF50);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v114 = (&v102 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  v29 = sub_20D972488();
  v30 = MEMORY[0x28223BE20](v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = *(a3 + 2);
  if (v126 <= 1)
  {
    goto LABEL_2;
  }

  v113 = v21;
  v102 = v9;
  v108 = v6;
  v117 = a3;
  v107 = a4;
  v34 = v30;
  v35 = v31;
  v36 = v33;
  sub_20D972FD8();
  v37 = sub_20D972478();
  v120 = v38;
  v121 = v37;
  v39 = *(v35 + 8);
  v104 = v36;
  v106 = v34;
  v105 = v35 + 8;
  v103 = v39;
  v39(v36, v34);
  v40 = 0;
  v115 = v11 + 16;
  v116 = v11;
  v41 = v124;
  v124 += 6;
  v125 = (v41 + 7);
  v122 = (v11 + 32);
  v123 = (v11 + 8);
  while (1)
  {
    v43 = v126;
    if (v40 == v126)
    {
      v44 = 1;
      v40 = v126;
    }

    else
    {
      if (v40 >= v126)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_43;
      }

      if (__OFADD__(v40, 1))
      {
        goto LABEL_53;
      }

      v45 = v116;
      v46 = v118;
      v47 = v117 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40;
      v48 = *(v16 + 48);
      *v118 = v40;
      (*(v45 + 16))(v46 + v48, v47, v127);
      sub_20D7EAF18(v46, v26, &qword_27C83A660, &qword_20D97BF48);
      v44 = 0;
      ++v40;
    }

    v49 = *v125;
    (*v125)(v26, v44, 1, v16);
    sub_20D7EAF18(v26, v28, &qword_27C83A668, &unk_20D97BF50);
    a3 = *v124;
    if ((*v124)(v28, 1, v16) == 1)
    {
      break;
    }

    v50 = *v28;
    (*v122)(v15, v28 + *(v16 + 48), v127);
    if (v121 == sub_20D973148() && v120 == v51)
    {

      (*v123)(v15, v127);
    }

    else
    {
      v42 = sub_20D9757C8();

      (*v123)(v15, v127);
      if (v42)
      {
        v43 = v50;
        break;
      }
    }
  }

  v52 = v109;
  v53 = v112;
  if (v43 < 1)
  {
    v121 = v43;
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v54 = sub_20D9734F8();
    __swift_project_value_buffer(v54, qword_27C840CE0);
    v55 = v110;
    v56 = v108;
    (*(v110 + 16))(v52, v53, v108);
    v57 = sub_20D9734D8();
    v58 = sub_20D975458();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v128[0] = v120;
      *v59 = 136315394;
      *(v59 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v128);
      *(v59 + 12) = 2080;
      sub_20D7F5854();
      v60 = sub_20D9757A8();
      v62 = v61;
      (*(v110 + 8))(v52, v56);
      v63 = sub_20D7F4DC8(v60, v62, v128);

      *(v59 + 14) = v63;
      _os_log_impl(&dword_20D7C9000, v57, v58, "%s: no data to determine TOU period in effect at start time %s", v59, 0x16u);
      v64 = v120;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v64, -1, -1);
      MEMORY[0x20F324260](v59, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v52, v56);
    }
  }

  else
  {
    v121 = v43 - 1;
  }

  v65 = v104;
  sub_20D972FD8();
  v66 = sub_20D972478();
  v68 = v67;
  v103(v65, v106);
  v28 = 0;
  while (1)
  {
    v26 = v126;
    if (v28 == v126)
    {
      v70 = 1;
      v28 = v126;
      v71 = v113;
    }

    else
    {
      if (v28 >= v126)
      {
        goto LABEL_54;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_55;
      }

      v72 = v116;
      v73 = v118;
      v74 = v117 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v28;
      v75 = *(v16 + 48);
      *v118 = v28;
      (*(v72 + 16))(v73 + v75, v74, v127);
      v76 = v73;
      v71 = v113;
      sub_20D7EAF18(v76, v113, &qword_27C83A660, &qword_20D97BF48);
      v70 = 0;
      ++v28;
    }

    v49(v71, v70, 1, v16);
    v77 = v114;
    sub_20D7EAF18(v71, v114, &qword_27C83A668, &unk_20D97BF50);
    if (a3(v77, 1, v16) == 1)
    {

      goto LABEL_42;
    }

    v26 = *v77;
    (*v122)(v119, v77 + *(v16 + 48), v127);
    if (sub_20D973148() == v66 && v78 == v68)
    {
      break;
    }

    v69 = sub_20D9757C8();

    (*v123)(v119, v127);
    if ((v69 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  (*v123)(v119, v127);
LABEL_33:

  v79 = v126;
  if (v26 < v126)
  {
    ++v26;
    a3 = v117;
    v80 = v121;
    v28 = 0x27C838000;
    v81 = v26 - v121;
    if (v26 < v121)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

LABEL_42:
  v28 = 0x27C838000uLL;
  a3 = v117;
  if (qword_27C838480 != -1)
  {
    goto LABEL_56;
  }

LABEL_43:
  v82 = sub_20D9734F8();
  __swift_project_value_buffer(v82, qword_27C840CE0);
  v83 = v110;
  v84 = v102;
  v85 = v108;
  (*(v110 + 16))(v102, v111, v108);
  v86 = sub_20D9734D8();
  v87 = sub_20D975458();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v83;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v128[0] = v90;
    *v89 = 136315394;
    *(v89 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v128);
    *(v89 + 12) = 2080;
    sub_20D7F5854();
    v91 = sub_20D9757A8();
    v92 = v84;
    v94 = v93;
    (*(v88 + 8))(v92, v85);
    v95 = sub_20D7F4DC8(v91, v94, v128);

    *(v89 + 14) = v95;
    _os_log_impl(&dword_20D7C9000, v86, v87, "%s: no data to determine when TOU period in effect at end time %s ends", v89, 0x16u);
    swift_arrayDestroy();
    v96 = v90;
    v28 = 0x27C838000;
    MEMORY[0x20F324260](v96, -1, -1);
    MEMORY[0x20F324260](v89, -1, -1);
  }

  else
  {

    (*(v83 + 8))(v84, v85);
  }

  v79 = v126;
  v80 = v121;
  v81 = v26 - v121;
  if (v26 >= v121)
  {
LABEL_35:
    if (!v80 && v26 == v79)
    {
      goto LABEL_2;
    }

    if (v80 < 0)
    {
      __break(1u);
    }

    else if (v79 >= v26)
    {
      if (v79 != v81)
      {
        sub_20D8DFE54(a3, a3 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v80, (2 * v26) | 1);
        return;
      }

LABEL_2:

      return;
    }

    __break(1u);
    return;
  }

LABEL_47:
  if (*(v28 + 1152) != -1)
  {
    swift_once();
  }

  v97 = sub_20D9734F8();
  __swift_project_value_buffer(v97, qword_27C840CE0);
  v98 = sub_20D9734D8();
  v99 = sub_20D975458();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v128[0] = v101;
    *v100 = 136315138;
    *(v100 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v128);
    _os_log_impl(&dword_20D7C9000, v98, v99, "%s: firstIndex > lastIndex", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x20F324260](v101, -1, -1);
    MEMORY[0x20F324260](v100, -1, -1);
  }
}

uint64_t HistoricalUsageSummaryView.init(displayDate:snapshotManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v46 = a1;
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9744B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HistoricalUsageSummaryView(0);
  v14 = *(v13 + 32);
  v48 = v13;
  if (qword_281125B78 != -1)
  {
    swift_once();
    v13 = v48;
  }

  v15 = unk_281125C10;
  v50[10] = xmmword_281125C20;
  v50[11] = xmmword_281125C30;
  v16 = xmmword_281125C30;
  v50[12] = xmmword_281125C40;
  v17 = xmmword_281125BD0;
  v18 = xmmword_281125BE0;
  v50[6] = xmmword_281125BE0;
  v50[7] = xmmword_281125BF0;
  v19 = xmmword_281125BF0;
  v20 = xmmword_281125C00;
  v50[8] = xmmword_281125C00;
  v50[9] = unk_281125C10;
  v21 = xmmword_281125B90;
  v22 = xmmword_281125BA0;
  v50[2] = xmmword_281125BA0;
  v50[3] = xmmword_281125BB0;
  v23 = xmmword_281125BB0;
  v24 = xmmword_281125BC0;
  v50[4] = xmmword_281125BC0;
  v50[5] = xmmword_281125BD0;
  v25 = xmmword_281125B80;
  v50[0] = xmmword_281125B80;
  v50[1] = xmmword_281125B90;
  v26 = (a3 + v14);
  v26[10] = xmmword_281125C20;
  v26[11] = v16;
  v26[12] = xmmword_281125C40;
  v26[6] = v18;
  v26[7] = v19;
  v26[8] = v20;
  v26[9] = v15;
  v26[2] = v22;
  v26[3] = v23;
  v26[4] = v24;
  v26[5] = v17;
  *v26 = v25;
  v26[1] = v21;
  v49[26] = 0x3FF0000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A68], v9);
  sub_20D85D690(v50, v49);
  sub_20D7E6420();
  sub_20D973B68();
  v43 = *(v7 + 16);
  v27 = v46;
  v43(a3, v46, v6);
  v28 = v13;
  v29 = *(v13 + 20);
  v30 = v44;
  *(a3 + v29) = v44;
  v42 = v6;
  v31 = *(v28 + 24);
  swift_getKeyPath();
  v49[0] = v30;
  sub_20D8E4540(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);

  sub_20D972858();

  v32 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  swift_beginAccess();
  v33 = v30 + v32;
  v34 = v31;
  sub_20D8E1E18(v33, a3 + v31, type metadata accessor for HistoricalUsageSnapshot);
  v35 = v45;
  v36 = v27;
  v37 = v27;
  v38 = v42;
  v43(v45, v36, v42);
  v39 = a3 + v34;
  v40 = v47;
  sub_20D8E1E18(v39, v47, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v35, v40, a3 + *(v48 + 28));

  return (*(v7 + 8))(v37, v38);
}

uint64_t HistoricalUsageSummaryView.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D972628();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9725C8();
  return HistoricalUsageSummaryView.init(displayDate:snapshotManager:)(v6, a1, a2);
}

uint64_t HistoricalUsageSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for HistoricalUsageSummaryView(0);
  v3 = *(v2 - 8);
  v62[1] = v2;
  v63 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A670, &qword_20D97BF88);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A678, &qword_20D97BF90);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A680, &qword_20D97BF98);
  MEMORY[0x28223BE20](v12);
  v14 = v62 - v13;
  *v8 = sub_20D974168();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A688, &qword_20D97BFA0) + 44)];
  v65 = v1;
  sub_20D8E1724(v1, v15);
  v16 = sub_20D974328();
  sub_20D973AD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A690, &qword_20D97BFA8) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_20D974338();
  sub_20D973AD8();
  v27 = &v8[*(v6 + 44)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v33 = sub_20D974348();
  *(inited + 32) = v33;
  v34 = sub_20D974368();
  *(inited + 33) = v34;
  v35 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v33)
  {
    v35 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v34)
  {
    v35 = sub_20D974358();
  }

  sub_20D973AD8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_20D7EAF18(v8, v11, &qword_27C83A670, &qword_20D97BF88);
  v44 = &v11[*(v9 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_20D974C48();
  v47 = v46;
  v48 = &v14[*(v12 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v49 = v65;
  sub_20D973B78();
  v50 = v67 * 24.0;
  v51 = *(sub_20D973DE8() + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_20D974118();
  (*(*(v53 - 8) + 104))(v48 + v51, v52, v53);
  *v48 = v50;
  v48[1] = v50;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
  sub_20D974C08();
  *(v48 + *(v54 + 56)) = 256;
  v55 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
  *v55 = v45;
  v55[1] = v47;
  sub_20D7EAF18(v11, v14, &qword_27C83A678, &qword_20D97BF90);
  v56 = v64;
  sub_20D8E1E18(v49, v64, type metadata accessor for HistoricalUsageSummaryView);
  v57 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v58 = swift_allocObject();
  sub_20D8E1E80(v56, v58 + v57);
  v59 = v66;
  sub_20D7EAF18(v14, v66, &qword_27C83A680, &qword_20D97BF98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A6A0, &qword_20D97BFD0);
  v61 = (v59 + *(result + 36));
  *v61 = sub_20D8E1EE4;
  v61[1] = v58;
  v61[2] = 0;
  v61[3] = 0;
  return result;
}

uint64_t sub_20D8E1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v56 - v9;
  v61 = sub_20D972628();
  v57 = *(v61 - 8);
  v10 = v57;
  MEMORY[0x28223BE20](v61);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7C8, &qword_20D97C228) - 8;
  v16 = MEMORY[0x28223BE20](v64);
  v66 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v20 = type metadata accessor for HistoricalUsageSummaryView(0);
  v21 = *(v20 + 24);
  v22 = v20;
  v58 = a1;
  v59 = v20;
  v63 = v21;
  v60 = type metadata accessor for HistoricalUsageSnapshot;
  sub_20D8E1E18(a1 + v21, v15, type metadata accessor for HistoricalUsageSnapshot);
  v62 = a1 + *(v22 + 28);
  v23 = *(v10 + 16);
  v24 = v61;
  v23(v12, v62 + *(v4 + 60), v61);
  v25 = v19;
  sub_20D8E1E18(v15, v19, type metadata accessor for HistoricalUsageSnapshot);
  v26 = type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0);
  v23(&v25[*(v26 + 20)], v12, v24);
  v27 = v15;
  LOBYTE(v4) = sub_20D972D68();
  (*(v57 + 8))(v12, v24);
  sub_20D8E4588(v15, type metadata accessor for HistoricalUsageSnapshot);
  v28 = v25;
  v25[*(v26 + 24)] = v4 & 1;
  LOBYTE(v4) = sub_20D974338();
  v29 = v58;
  v30 = (v58 + *(v59 + 32));
  sub_20D973AD8();
  v31 = v28 + *(v64 + 44);
  *v31 = v4;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  v36 = v27;
  sub_20D8E1E18(v29 + v63, v27, v60);
  v37 = v65;
  sub_20D8E1E18(v62, v65, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v38 = v30[9];
  v39 = v30[11];
  v81 = v30[10];
  v82 = v39;
  v40 = v30[11];
  v83 = v30[12];
  v41 = v30[5];
  v42 = v30[7];
  v77 = v30[6];
  v78 = v42;
  v43 = v30[7];
  v44 = v30[9];
  v79 = v30[8];
  v80 = v44;
  v45 = v30[1];
  v46 = v30[3];
  v73 = v30[2];
  v74 = v46;
  v47 = v30[3];
  v48 = v30[5];
  v75 = v30[4];
  v76 = v48;
  v49 = v30[1];
  v72[0] = *v30;
  v72[1] = v49;
  v71[10] = v81;
  v71[11] = v40;
  v71[12] = v30[12];
  v71[6] = v77;
  v71[7] = v43;
  v71[8] = v79;
  v71[9] = v38;
  v71[2] = v73;
  v71[3] = v47;
  v71[4] = v75;
  v71[5] = v41;
  v71[0] = v72[0];
  v71[1] = v45;
  sub_20D85D690(v72, &v70);
  v50 = v67;
  sub_20D92046C(v36, v37, v71, v67);
  v51 = v66;
  sub_20D7EB7E8(v28, v66, &qword_27C83A7C8, &qword_20D97C228);
  v52 = v68;
  sub_20D8E1E18(v50, v68, type metadata accessor for HistoricalUsageSummaryChart);
  v53 = v69;
  sub_20D7EB7E8(v51, v69, &qword_27C83A7C8, &qword_20D97C228);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7D0, &qword_20D97C230);
  sub_20D8E1E18(v52, v53 + *(v54 + 48), type metadata accessor for HistoricalUsageSummaryChart);
  sub_20D8E4588(v50, type metadata accessor for HistoricalUsageSummaryChart);
  sub_20D7E3944(v28, &qword_27C83A7C8, &qword_20D97C228);
  sub_20D8E4588(v52, type metadata accessor for HistoricalUsageSummaryChart);
  return sub_20D7E3944(v51, &qword_27C83A7C8, &qword_20D97C228);
}

uint64_t sub_20D8E1C6C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HistoricalUsageSummaryView(0) + 24);
  LODWORD(v2) = *(v1 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 64));
  v3 = v2 == 6;
  __dst[424] = 1;
  if (v2 == 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v2;
  }

  __dst[416] = 1;
  __dst[408] = 1;
  __dst[400] = 1;
  __dst[392] = 1;
  __dst[384] = 1;
  __dst[376] = 1;
  __dst[368] = 1;
  __dst[360] = 1;
  __dst[352] = 1;
  __dst[344] = 1;
  __dst[336] = 1;
  __dst[328] = 1;
  __dst[320] = 1;
  __dst[312] = v3;
  __dst[304] = 1;
  v6[0] = 0;
  LOWORD(v6[1]) = 513;
  v6[2] = 0;
  LOBYTE(v6[3]) = 1;
  v6[4] = 0;
  LOBYTE(v6[5]) = 1;
  memset(&v6[6], 0, 24);
  LOBYTE(v6[9]) = 1;
  memset(&v6[10], 0, 24);
  LOBYTE(v6[13]) = 1;
  v6[14] = 0;
  LOWORD(v6[15]) = 513;
  v6[16] = 0;
  LOWORD(v6[17]) = 1;
  memset(&v6[18], 0, 24);
  LOBYTE(v6[21]) = 1;
  v6[22] = 0;
  LOBYTE(v6[23]) = 1;
  v6[24] = 0;
  LOBYTE(v6[25]) = 1;
  v6[26] = 0;
  LOWORD(v6[27]) = 513;
  v6[28] = 0;
  LOWORD(v6[29]) = 513;
  v6[30] = 0;
  LOBYTE(v6[31]) = 1;
  v6[32] = 0;
  LOBYTE(v6[33]) = 1;
  v6[34] = v2;
  LOBYTE(v6[35]) = v3;
  v6[36] = 0;
  LOBYTE(v6[37]) = 1;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v4 = swift_allocObject();
  sub_20D7E3AF0(__src);
  *(v4 + 16) = 31;
  memcpy(__dst, __src, 0x129uLL);
  memcpy((v4 + 24), v6, 0x129uLL);
  sub_20D7E3944(__dst, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v4);
}

uint64_t sub_20D8E1E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8E1E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8E1EE4()
{
  v1 = *(type metadata accessor for HistoricalUsageSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D8E1C6C(v2);
}

uint64_t sub_20D8E1F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_20D971FC8();
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A708, &qword_20D97C0D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v97 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A710, &qword_20D97C0D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v96 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = (&v83 - v12);
  v13 = sub_20D974458();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v99 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D9726E8();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D975058();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A718, &qword_20D97C0E0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v94 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v83 - v25;
  v91 = type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0);
  v26 = *(v91 + 24);
  v93 = a1;
  if (*(a1 + v26) == 1)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v27 = qword_28112ABE8;
    v28 = qword_28112ABE8;
    sub_20D9726B8();
    v29 = sub_20D975108(v21, 0, 0, v27, v18, "electricity usage summary title", 31, 2);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v31 = qword_28112ABE8;
    sub_20D9726B8();
    v29 = sub_20D9750F8();
  }

  *&v114 = v29;
  *(&v114 + 1) = v30;
  sub_20D7E1EF8();
  v32 = sub_20D9745C8();
  v34 = v33;
  v36 = v35;
  sub_20D974388();
  v87 = *MEMORY[0x277CE0A10];
  v37 = *(v14 + 104);
  v88 = v14 + 104;
  v89 = v37;
  v38 = v99;
  v37(v99);
  sub_20D974478();

  v39 = *(v14 + 8);
  v85 = v14 + 8;
  v86 = v39;
  v39(v38, v13);
  v40 = sub_20D974558();
  v84 = v13;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_20D7EADC0(v32, v34, v36 & 1);

  v90 = objc_opt_self();
  v46 = [v90 labelColor];
  sub_20D974888();
  v47 = sub_20D974508();
  v49 = v48;
  LOBYTE(v32) = v50;
  v52 = v51;

  sub_20D7EADC0(v41, v43, v45 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v128 = v32 & 1;
  *&v114 = v47;
  *(&v114 + 1) = v49;
  LOBYTE(v115) = v32 & 1;
  *(&v115 + 1) = v52;
  LOWORD(v123) = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A720, &qword_20D97C0E8);
  sub_20D8E3F4C();
  sub_20D9747D8();
  v126[6] = v120;
  v126[7] = v121;
  v126[8] = v122;
  v127 = v123;
  v126[2] = v116;
  v126[3] = v117;
  v126[4] = v118;
  v126[5] = v119;
  v126[0] = v114;
  v126[1] = v115;
  sub_20D7E3944(v126, &qword_27C83A720, &qword_20D97C0E8);
  v53 = sub_20D974088();
  v54 = v101;
  *v101 = v53;
  v54[1] = 0x4010000000000000;
  *(v54 + 16) = 0;
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A740, &qword_20D97C0F8) + 44);
  v56 = v93;
  sub_20D8E2A34(v93, v55);
  HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)(v56 + *(v91 + 20), v92);
  v57 = sub_20D9745B8();
  v59 = v58;
  LOBYTE(v32) = v60;
  sub_20D974388();
  v61 = v99;
  v62 = v84;
  v89(v99, v87, v84);
  sub_20D974478();

  v86(v61, v62);
  v63 = sub_20D974558();
  v65 = v64;
  LOBYTE(v62) = v66;
  v99 = v67;

  sub_20D7EADC0(v57, v59, v32 & 1);

  KeyPath = swift_getKeyPath();
  v69 = swift_getKeyPath();
  LOBYTE(v114) = v62 & 1;
  LOBYTE(v102) = 0;
  v70 = [v90 secondaryLabelColor];
  v71 = sub_20D974888();
  v72 = swift_getKeyPath();
  sub_20D974C58();
  sub_20D973E08();
  *&v102 = v63;
  *(&v102 + 1) = v65;
  LOBYTE(v103) = v62 & 1;
  *(&v103 + 1) = v99;
  *&v104 = KeyPath;
  *(&v104 + 1) = 2;
  LOBYTE(v105) = 0;
  *(&v105 + 1) = v69;
  *&v106 = 0x3FE8000000000000;
  *(&v106 + 1) = v72;
  *&v107 = v71;
  WORD4(v113[1]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A748, &qword_20D97C190);
  sub_20D8E4200();
  v73 = v95;
  sub_20D9747D8();
  v123 = v111;
  v124 = v112;
  v125[0] = v113[0];
  *(v125 + 10) = *(v113 + 10);
  v120 = v108;
  v121 = v109;
  v122 = v110;
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v119 = v107;
  v114 = v102;
  v115 = v103;
  sub_20D7E3944(&v114, &qword_27C83A748, &qword_20D97C190);
  v74 = v100;
  v75 = v94;
  sub_20D7EB7E8(v100, v94, &qword_27C83A718, &qword_20D97C0E0);
  v76 = v101;
  v77 = v96;
  sub_20D7EB7E8(v101, v96, &qword_27C83A710, &qword_20D97C0D8);
  v78 = v73;
  v79 = v97;
  sub_20D7EB7E8(v73, v97, &qword_27C83A708, &qword_20D97C0D0);
  v80 = v98;
  sub_20D7EB7E8(v75, v98, &qword_27C83A718, &qword_20D97C0E0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7A8, &qword_20D97C1D0);
  sub_20D7EB7E8(v77, v80 + *(v81 + 48), &qword_27C83A710, &qword_20D97C0D8);
  sub_20D7EB7E8(v79, v80 + *(v81 + 64), &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v78, &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v76, &qword_27C83A710, &qword_20D97C0D8);
  sub_20D7E3944(v74, &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v79, &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v77, &qword_27C83A710, &qword_20D97C0D8);
  return sub_20D7E3944(v75, &qword_27C83A718, &qword_20D97C0E0);
}

uint64_t sub_20D8E2A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v106 = sub_20D971F38();
  MEMORY[0x28223BE20](v106);
  v4 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = v95 - v6;
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v105 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_20D971F48();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D975038();
  MEMORY[0x28223BE20](v10 - 8);
  v95[1] = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v12 - 8);
  v110 = v95 - v13;
  v14 = sub_20D974458();
  v108 = *(v14 - 8);
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  v107 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D972AF8();
  v118 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v116 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = v95 - v19;
  v100 = sub_20D971FC8();
  v98 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100);
  v22 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = (v95 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A718, &qword_20D97C0E0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v113 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v112 = v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B0, &qword_20D97C1D8);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (v95 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B8, &qword_20D97C1E0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v111 = v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = v95 - v35;
  v37 = *(type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0) + 24);
  v102 = v4;
  v103 = a1;
  LODWORD(v37) = *(a1 + v37);
  v115 = v36;
  if (v37 == 1)
  {
    v95[0] = v22;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v38 = qword_27C840E88;
    v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v41 = *MEMORY[0x277CE1050];
    v42 = sub_20D9749F8();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    *v31 = v38;

    *(v31 + *(v28 + 36)) = sub_20D974908();
    v43 = v115;
    sub_20D7EAF18(v31, v115, &qword_27C83A7B0, &qword_20D97C1D8);
    (*(v29 + 56))(v43, 0, 1, v28);
    v22 = v95[0];
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v28);
  }

  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972DB8();
  v45 = v44;
  sub_20D972E58();
  (*(v118 + 104))(v116, *MEMORY[0x277D075B0], v16);
  sub_20D8E4540(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v129[0] == v119)
  {
    v46 = *(v118 + 8);
    v46(v116, v16);
    v46(v117, v16);

LABEL_9:
    sub_20D88D380(0, v104, v45, COERCE__INT64(1.0));
    goto LABEL_13;
  }

  v47 = v22;
  v48 = sub_20D9757C8();
  v49 = *(v118 + 8);
  v49(v116, v16);
  v49(v117, v16);

  if (v48)
  {
    goto LABEL_9;
  }

  v50 = v47;
  sub_20D88D380(0, v47, v45, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  *&v129[0] = MEMORY[0x277D84F90];
  sub_20D8E4540(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
  v51 = v96;
  v52 = v99;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v97 + 8))(v51, v52);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v53 = qword_28112ABE8;
  v54 = sub_20D9726E8();
  (*(*(v54 - 8) + 56))(v101, 1, 1, v54);
  *&v129[0] = MEMORY[0x277D84F90];
  sub_20D8E4540(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v55 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v98 + 8))(v50, v100);
LABEL_13:
  v56 = sub_20D9745B8();
  v58 = v57;
  v60 = v59;
  v61 = [objc_opt_self() labelColor];
  *&v129[0] = sub_20D974888();
  v62 = sub_20D974518();
  v64 = v63;
  v66 = v65;
  sub_20D7EADC0(v56, v58, v60 & 1);

  sub_20D974438();
  v68 = v107;
  v67 = v108;
  v69 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277CE0A10], v109);
  sub_20D974478();

  (*(v67 + 8))(v68, v69);
  v70 = sub_20D974558();
  v72 = v71;
  LOBYTE(v68) = v73;

  sub_20D7EADC0(v62, v64, v66 & 1);

  v74 = *MEMORY[0x277CE09A0];
  v75 = sub_20D9743C8();
  v76 = *(v75 - 8);
  v77 = v110;
  (*(v76 + 104))(v110, v74, v75);
  (*(v76 + 56))(v77, 0, 1, v75);
  v78 = sub_20D9744E8();
  v80 = v79;
  LOBYTE(v76) = v81;
  sub_20D7EADC0(v70, v72, v68 & 1);

  sub_20D7E3944(v77, &qword_27C838C08, &qword_20D977450);
  sub_20D9743F8();
  v82 = sub_20D9744F8();
  v84 = v83;
  LOBYTE(v72) = v85;
  v87 = v86;
  sub_20D7EADC0(v78, v80, v76 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v131 = v72 & 1;
  *&v119 = v82;
  *(&v119 + 1) = v84;
  LOBYTE(v120) = v72 & 1;
  *(&v120 + 1) = v87;
  v128 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A720, &qword_20D97C0E8);
  sub_20D8E3F4C();
  v88 = v112;
  sub_20D9747D8();
  v129[6] = v125;
  v129[7] = v126;
  v129[8] = v127;
  v130 = v128;
  v129[2] = v121;
  v129[3] = v122;
  v129[4] = v123;
  v129[5] = v124;
  v129[0] = v119;
  v129[1] = v120;
  sub_20D7E3944(v129, &qword_27C83A720, &qword_20D97C0E8);
  v89 = v115;
  v90 = v111;
  sub_20D7EB7E8(v115, v111, &qword_27C83A7B8, &qword_20D97C1E0);
  v91 = v113;
  sub_20D7EB7E8(v88, v113, &qword_27C83A718, &qword_20D97C0E0);
  v92 = v114;
  sub_20D7EB7E8(v90, v114, &qword_27C83A7B8, &qword_20D97C1E0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7C0, &qword_20D97C1E8);
  sub_20D7EB7E8(v91, v92 + *(v93 + 48), &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v88, &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v89, &qword_27C83A7B8, &qword_20D97C1E0);
  sub_20D7E3944(v91, &qword_27C83A718, &qword_20D97C0E0);
  return sub_20D7E3944(v90, &qword_27C83A7B8, &qword_20D97C1E0);
}

uint64_t sub_20D8E39F4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974168();
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A700, &qword_20D97C0C8);
  return sub_20D8E1F60(v2, a2 + *(v4 + 44));
}

void sub_20D8E3A74(uint64_t a1)
{
  sub_20D972628();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageSnapshotManager(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HistoricalUsageSnapshot(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
        if (v4 <= 0x3F)
        {
          sub_20D7E63C4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_20D8E3B48()
{
  result = qword_27C83A6B8;
  if (!qword_27C83A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A6A0, &qword_20D97BFD0);
    sub_20D8E3BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6B8);
  }

  return result;
}

unint64_t sub_20D8E3BD4()
{
  result = qword_27C83A6C0;
  if (!qword_27C83A6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A680, &qword_20D97BF98);
    sub_20D8E3C8C();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6C0);
  }

  return result;
}

unint64_t sub_20D8E3C8C()
{
  result = qword_27C83A6C8;
  if (!qword_27C83A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A678, &qword_20D97BF90);
    sub_20D8E3D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6C8);
  }

  return result;
}

unint64_t sub_20D8E3D18()
{
  result = qword_27C83A6D0;
  if (!qword_27C83A6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A670, &qword_20D97BF88);
    sub_20D8E3DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6D0);
  }

  return result;
}

unint64_t sub_20D8E3DA4()
{
  result = qword_27C83A6D8;
  if (!qword_27C83A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A690, &qword_20D97BFA8);
    sub_20D7EBC4C(&qword_27C83A6E0, &qword_27C83A6E8, &unk_20D97C050, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6D8);
  }

  return result;
}

uint64_t sub_20D8E3EA4(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = sub_20D972628();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D8E3F4C()
{
  result = qword_27C83A728;
  if (!qword_27C83A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A720, &qword_20D97C0E8);
    sub_20D8E3FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A728);
  }

  return result;
}

unint64_t sub_20D8E3FD8()
{
  result = qword_27C83A730;
  if (!qword_27C83A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A738, &qword_20D97C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A730);
  }

  return result;
}

uint64_t sub_20D8E4080(uint64_t a1)
{
  v2 = sub_20D9749F8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E28();
}

uint64_t sub_20D8E4148@<X0>(uint64_t a1@<X8>)
{
  result = sub_20D974018();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_20D8E4200()
{
  result = qword_27C83A750;
  if (!qword_27C83A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A748, &qword_20D97C190);
    sub_20D8E428C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A750);
  }

  return result;
}

unint64_t sub_20D8E428C()
{
  result = qword_27C83A758;
  if (!qword_27C83A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A760, &qword_20D97C198);
    sub_20D8E4318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A758);
  }

  return result;
}

unint64_t sub_20D8E4318()
{
  result = qword_27C83A768;
  if (!qword_27C83A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A770, &qword_20D97C1A0);
    sub_20D8E43D0();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A768);
  }

  return result;
}

unint64_t sub_20D8E43D0()
{
  result = qword_27C83A778;
  if (!qword_27C83A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A780, &qword_20D97C1A8);
    sub_20D8E4488();
    sub_20D7EBC4C(&qword_281124DC8, &qword_27C83A7A0, &unk_20D97C1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A778);
  }

  return result;
}

unint64_t sub_20D8E4488()
{
  result = qword_27C83A788;
  if (!qword_27C83A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A790, &unk_20D97C1B0);
    sub_20D7EBC4C(&qword_281124DA8, &qword_27C83A798, &unk_20D980730, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A788);
  }

  return result;
}

uint64_t sub_20D8E4540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D8E4588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D8E45FC()
{
  result = qword_27C83A7E8;
  if (!qword_27C83A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7E8);
  }

  return result;
}

void sub_20D8E4650(uint64_t a1, char a2, uint64_t a3, int a4, double a5)
{
  v67 = a4;
  v66[1] = a3;
  v72 = sub_20D973C88();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = 10.0;
  }

  else
  {
    v10 = *&a1;
  }

  v11 = sub_20D973CE8();
  v12 = sub_20D8E5248();
  v13 = sub_20D9753C8();
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v75 = MEMORY[0x277D84F90];
    sub_20D95DA7C(0, v13 & ~(v13 >> 63), 0);
    v14 = v75;
    sub_20D9753B8();
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v69 = v8;
    *&v70 = *&v8 + 16;
    v16 = (*&v8 + 8);
    do
    {
      v17 = sub_20D9753F8();
      v18 = v12;
      v20 = v71;
      v19 = v72;
      (**&v70)(v71);
      v17(v74, 0);
      sub_20D973DD8();
      v74[0] = v21 & 1;
      v73 = v22 & 1;
      sub_20D973C68();
      v24 = v23;
      v26 = v25;
      (*v16)(v20, v19);
      v75 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_20D95DA7C((v27 > 1), v28 + 1, 1);
        v14 = v75;
      }

      *(v14 + 16) = v28 + 1;
      v29 = v14 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      sub_20D9753E8();
      --v15;
      v12 = v18;
    }

    while (v15);
    v8 = v69;
  }

  v30 = *(v14 + 16);
  if (v30)
  {
    v31 = (v14 + 32);
    v32 = 0.0;
    do
    {
      v33 = *v31;
      v31 += 2;
      v34 = v33;
      if (v32 <= v33)
      {
        v32 = v34;
      }

      --v30;
    }

    while (v30);
  }

  else
  {
    v32 = 0.0;
  }

  v35 = (v10 - a5) * 0.5;
  v36 = v10;
  if (v32 <= v35)
  {
    v37 = (v10 - a5) * 0.5;
  }

  else
  {
    v37 = 0.0;
  }

  if (v32 <= v35)
  {
    v36 = (v10 - a5) * 0.5;
  }

  v69 = v36;
  v70 = v37;
  v38 = sub_20D9753C8();
  v39 = MEMORY[0x277D84F90];
  if (!v38)
  {
LABEL_29:
    v54 = *(v39 + 16);
    if (v32 <= v35)
    {
      if (v54)
      {
        v57 = 0.0;
        v58 = 40;
        do
        {
          if (v57 <= *(v39 + v58))
          {
            v57 = *(v39 + v58);
          }

          v58 += 16;
          --v54;
        }

        while (v54);
      }

      goto LABEL_38;
    }

    if (v54)
    {
      if (v54 == 1)
      {
        v55 = 0;
        v56 = 0.0;
      }

      else
      {
        v55 = v54 & 0x7FFFFFFFFFFFFFFELL;
        v59 = (v39 + 56);
        v56 = 0.0;
        v60 = v54 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v61 = *(v59 - 2);
          v62 = *v59;
          v59 += 4;
          v56 = v56 + v61 + v62;
          v60 -= 2;
        }

        while (v60);
        if (v54 == v55)
        {
          goto LABEL_38;
        }
      }

      v63 = v54 - v55;
      v64 = (v39 + 16 * v55 + 40);
      do
      {
        v65 = *v64;
        v64 += 2;
        v56 = v56 + v65;
        --v63;
      }

      while (v63);
    }

LABEL_38:

    return;
  }

  v40 = v38;
  v75 = MEMORY[0x277D84F90];
  sub_20D95DA7C(0, v38 & ~(v38 >> 63), 0);
  v39 = v75;
  sub_20D9753B8();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v68 = (*&v8 + 16);
    v41 = (*&v8 + 8);
    do
    {
      v42 = sub_20D9753F8();
      v43 = v71;
      v44 = v12;
      v45 = v11;
      v46 = v72;
      (*v68)(v71);
      v42(v74, 0);
      v74[0] = 0;
      v73 = v32 > v35;
      sub_20D973C68();
      v48 = v47;
      v50 = v49;
      (*v41)(v43, v46);
      v75 = v39;
      v52 = *(v39 + 16);
      v51 = *(v39 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_20D95DA7C((v51 > 1), v52 + 1, 1);
        v39 = v75;
      }

      *(v39 + 16) = v52 + 1;
      v53 = v39 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      sub_20D9753E8();
      --v40;
      v11 = v45;
      v12 = v44;
    }

    while (v40);
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_20D8E4B64(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v66 = a1;
  v13 = sub_20D973C88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D973CE8();
  sub_20D8E5248();
  v18 = sub_20D9753C8();
  v19 = MEMORY[0x277D84F90];
  v65 = v14;
  if (v18)
  {
    v20 = v18;
    v71 = MEMORY[0x277D84F90];
    sub_20D95DA7C(0, v18 & ~(v18 >> 63), 0);
    v19 = v71;
    result = sub_20D9753B8();
    if (v20 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v64 = a2;
    v22 = a7;
    *&v67 = v14 + 8;
    *&v68 = v14 + 16;
    do
    {
      v23 = sub_20D9753F8();
      (**&v68)(v16);
      v23(v70, 0);
      LOBYTE(v70[0]) = 0;
      v69 = 0;
      sub_20D973C68();
      v25 = v24;
      v27 = v26;
      v28 = v13;
      (**&v67)(v16, v13);
      v71 = v19;
      v29 = v17;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_20D95DA7C((v30 > 1), v31 + 1, 1);
        v19 = v71;
      }

      *(v19 + 16) = v31 + 1;
      v32 = v19 + 16 * v31;
      *(v32 + 32) = v25;
      *(v32 + 40) = v27;
      sub_20D9753E8();
      --v20;
      v17 = v29;
      v13 = v28;
    }

    while (v20);
    v33 = a3;
    v34 = a4;
    a7 = v22;
    LOBYTE(a2) = v64;
  }

  else
  {
    v33 = a3;
    v34 = a4;
  }

  v35 = a6;
  v36 = *(v19 + 16);
  if (v36)
  {
    v37 = a5;
    v38 = (v19 + 32);
    v39 = 0.0;
    do
    {
      v40 = *v38;
      v38 += 2;
      v41 = v40;
      if (v39 <= v40)
      {
        v39 = v41;
      }

      --v36;
    }

    while (v36);
  }

  else
  {
    v37 = a5;
    v39 = 0.0;
  }

  v42 = *&v66;
  if (a2)
  {
    v42 = 10.0;
  }

  v67 = (v42 - a7) * 0.5;
  v43 = v33;
  v72.origin.x = v33;
  v72.origin.y = v34;
  v72.size.width = v37;
  v72.size.height = v35;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v33;
  v73.origin.y = v34;
  v73.size.width = v37;
  v73.size.height = v35;
  MinY = CGRectGetMinY(v73);
  v74.origin.x = v43;
  v74.origin.y = v34;
  v74.size.width = v37;
  v74.size.height = v35;
  v46 = (CGRectGetWidth(v74) - a7) * 0.5;
  v75.origin.x = v43;
  v75.origin.y = v34;
  v75.size.width = v37;
  v47 = v67;
  v48 = v46;
  v75.size.height = v35;
  Width = CGRectGetWidth(v75);
  if (v39 > v47)
  {
    v50 = Width;
  }

  else
  {
    v50 = v48;
  }

  sub_20D9753B8();
  result = sub_20D9753D8();
  v51 = v70[0];
  v52 = v71;
  if (v71 < v70[0])
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v70[0] == v71)
  {
    return result;
  }

  if (v70[0] >= v71)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v53 = (v65 + 8);
  v68 = v50 + a7;
  do
  {
    v54 = v51 + 1;
    sub_20D973CF8();
    LOBYTE(v70[0]) = 0;
    LOBYTE(v71) = 1;
    sub_20D973C68();
    v56 = v55;
    v57 = *v53;
    (*v53)(v16, v13);
    sub_20D973CF8();
    sub_20D974C98();
    v58 = v39 > v47;
    LOBYTE(v70[0]) = 0;
    LOBYTE(v71) = 0;
    if (v39 > v47)
    {
      v59 = MinY + v56 + a7;
    }

    else
    {
      v59 = MinY;
    }

    v60 = v47;
    v61 = a7;
    if (v58)
    {
      v62 = MinX;
    }

    else
    {
      v62 = v68 + MinX;
    }

    sub_20D973C78();
    result = (v57)(v16, v13);
    MinY = v59;
    MinX = v62;
    a7 = v61;
    v47 = v60;
    ++v51;
  }

  while (v52 != v54);
  return result;
}

uint64_t (*sub_20D8E511C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_20D973A88();
  return sub_20D8E51A4;
}

void sub_20D8E51A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_20D8E51F4()
{
  result = qword_27C83A7F0;
  if (!qword_27C83A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7F0);
  }

  return result;
}

unint64_t sub_20D8E5248()
{
  result = qword_27C83A7F8;
  if (!qword_27C83A7F8)
  {
    sub_20D973CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7F8);
  }

  return result;
}

uint64_t sub_20D8E52A0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    swift_once();
    return sub_20D971FF8();
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v1 = qword_27C8389D0;

  return v1;
}

uint64_t sub_20D8E5420(char a1, char a2, unsigned __int8 a3)
{
  v6 = sub_20D974898();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20D979110;
  if (a3 <= 1u)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    if (a2)
    {
LABEL_2:
      (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
      v11 = sub_20D974978();
      goto LABEL_10;
    }
  }

  else if (a2)
  {
    goto LABEL_2;
  }

  if (qword_281126F30 != -1)
  {
    swift_once();
  }

LABEL_10:
  *(v10 + 32) = v11;
  return MEMORY[0x20F322D80](v10);
}

uint64_t sub_20D8E5710(char a1)
{
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (a1 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v8 = qword_28112ABE8;
      v9 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v7, 0, 0, v8, v4, "Text to describe energy consumption during a less clean period", 62, 2);
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v13 = qword_28112ABE8;
      v14 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v7, 0, 0, v13, v4, "Text to describe energy consumption during a clean period", 57, 2);
    }
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v11 = qword_28112ABE8;
    v12 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v7, 0, 0, v11, v4, "Text to describe energy consumption during a period of grid strain", 66, 2);
  }
}

uint64_t HistoricalUsageDetailsSheet.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v3 = sub_20D972AF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = type metadata accessor for HistoricalUsageDetailsSheet(0);
  sub_20D9725C8();
  (*(v10 + 16))(v13, v15, v9);
  sub_20D974A38();
  (*(v10 + 8))(v15, v9);
  (*(v4 + 104))(v8, *MEMORY[0x277D075B8], v3);
  (*(v4 + 16))(v22, v8, v3);
  sub_20D974A38();
  (*(v4 + 8))(v8, v3);
  v17 = a2 + *(v16 + 28);
  v24 = 1;
  sub_20D974A38();
  v18 = v26;
  *v17 = v25[0];
  *(v17 + 1) = v18;
  v19 = *(v16 + 32);
  *(a2 + v19) = 12;
  *a2 = v23;
  result = sub_20D879E98(v25);
  *(a2 + v19) = v25[0];
  return result;
}

uint64_t type metadata accessor for HistoricalUsageDetailsSheet(uint64_t a1)
{
  result = qword_27C83A850;
  if (!qword_27C83A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HistoricalUsageDetailsSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for HistoricalUsageDetailsSheet(0);
  v37 = *(v2 - 8);
  v36 = *(v37 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D973CD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A800, &qword_20D97C3D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A808, &qword_20D97C3D8);
  sub_20D7EBC4C(&qword_27C83A810, &qword_27C83A808, &qword_20D97C3D8, MEMORY[0x277CE14C0]);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C83A818, &qword_27C83A800, &qword_20D97C3D0, MEMORY[0x277CDE5A0]);
  v12 = v34;
  sub_20D974878();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A820, &unk_20D97C3E0);
  v16 = v12;
  sub_20D9754B8();

  v33 = type metadata accessor for HistoricalUsageDetailsSheet;
  v17 = v35;
  sub_20D8EB370(v38, v35, type metadata accessor for HistoricalUsageDetailsSheet);
  v18 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v19 = swift_allocObject();
  v37 = type metadata accessor for HistoricalUsageDetailsSheet;
  sub_20D8EAC00(v17, v19 + v18, type metadata accessor for HistoricalUsageDetailsSheet);
  v20 = (v12 + *(v15 + 56));
  *v20 = sub_20D8E9C54;
  v20[1] = v19;
  v21 = [v13 defaultCenter];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A838, &qword_20D97C3F8);
  sub_20D9754B8();

  v23 = v38;
  v24 = v33;
  sub_20D8EB370(v38, v17, v33);
  v25 = swift_allocObject();
  v26 = v37;
  sub_20D8EAC00(v17, v25 + v18, v37);
  v27 = (v16 + *(v22 + 56));
  *v27 = sub_20D8E9FDC;
  v27[1] = v25;
  sub_20D8EB370(v23, v17, v24);
  v28 = swift_allocObject();
  sub_20D8EAC00(v17, v28 + v18, v26);
  v29 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A840, &qword_20D97C400) + 36));
  *v29 = sub_20D8EA2D0;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  sub_20D8EB370(v23, v17, v24);
  v30 = swift_allocObject();
  sub_20D8EAC00(v17, v30 + v18, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A848, &qword_20D97C408);
  v32 = (v16 + *(result + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_20D8EA6A4;
  v32[3] = v30;
  return result;
}

uint64_t sub_20D8E61C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A890, &qword_20D97C498);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v112 = &v107 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v122 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v121 = &v107 - v7;
  v110 = sub_20D9744B8();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for HistoricalUsageEnergyTip(0);
  MEMORY[0x28223BE20](v107);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8A0, &qword_20D97C4A8);
  MEMORY[0x28223BE20](v114);
  v115 = &v107 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8A8, &qword_20D97C4B0);
  v12 = *(v116 - 8);
  v13 = MEMORY[0x28223BE20](v116);
  v113 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8B0, &qword_20D97C4B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v118 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = &v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8B8, &qword_20D97C4C0);
  MEMORY[0x28223BE20](v20);
  v22 = &v107 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8C0, &qword_20D97C4C8);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v107 - v27;
  *v22 = sub_20D974158();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8C8, &unk_20D97C4D0);
  sub_20D8E6F3C(a1, &v22[*(v29 + 44)]);
  sub_20D973BB8();
  sub_20D7EBC4C(&qword_27C83A8D0, &qword_27C83A8B8, &qword_20D97C4C0, MEMORY[0x277CE1198]);
  sub_20D974798();
  sub_20D7E3944(v22, &qword_27C83A8B8, &qword_20D97C4C0);
  v30 = sub_20D974148();
  v31 = *(v24 + 44);
  v124 = v28;
  v32 = &v28[v31];
  *v32 = v30;
  v32[1] = sub_20D7EDA0C;
  v32[2] = 0;
  v33 = type metadata accessor for HistoricalUsageDetailsSheet(0);
  v34 = a1 + *(v33 + 28);
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v130) = *v34;
  v131 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  if (v126 == 1 && (v37 = *(a1 + *(v33 + 32)), v37 != 12))
  {
    LOBYTE(v126) = v35;
    v127 = v36;
    sub_20D974A68();
    v40 = v130;
    v41 = v131;
    v42 = v132;
    *&v10[*(v107 + 24)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
    swift_storeEnumTagMultiPayload();
    *v10 = v37;
    *(v10 + 1) = v40;
    *(v10 + 2) = v41;
    v10[24] = v42;
    v130 = 0x3FF0000000000000;
    (*(v109 + 104))(v108, *MEMORY[0x277CE0A68], v110);
    sub_20D7E6420();
    sub_20D973B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D977210;
    v44 = sub_20D974328();
    *(inited + 32) = v44;
    v45 = sub_20D974338();
    *(inited + 33) = v45;
    v46 = sub_20D974358();
    sub_20D974358();
    if (sub_20D974358() != v44)
    {
      v46 = sub_20D974358();
    }

    sub_20D974358();
    if (sub_20D974358() != v45)
    {
      v46 = sub_20D974358();
    }

    sub_20D973AD8();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v115;
    sub_20D8EAC00(v10, v115, type metadata accessor for HistoricalUsageEnergyTip);
    v56 = v55 + *(v114 + 36);
    *v56 = v46;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    v57 = sub_20D974148();
    v58 = v113;
    sub_20D7EAF18(v55, v113, &qword_27C83A8A0, &qword_20D97C4A8);
    v59 = v116;
    v60 = (v58 + *(v116 + 36));
    *v60 = v57;
    v60[1] = sub_20D7EDA0C;
    v60[2] = 0;
    v61 = v58;
    v62 = v111;
    sub_20D7EAF18(v61, v111, &qword_27C83A8A8, &qword_20D97C4B0);
    sub_20D7EAF18(v62, v125, &qword_27C83A8A8, &qword_20D97C4B0);
    v39 = v59;
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v39 = v116;
  }

  v63 = 1;
  (*(v12 + 56))(v125, v38, 1, v39);
  v64 = *a1;
  swift_getKeyPath();
  v130 = v64;
  sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v65 = *(v64 + 40);
  v66 = *(v64 + 48);

  sub_20D965130(v65, v66, &v130);
  v113 = v130;
  v116 = v131;
  v67 = v132;
  v115 = v133;
  v114 = v134;
  swift_getKeyPath();
  v126 = v64;
  sub_20D972858();

  v68 = *(v64 + 48);
  if (v68)
  {
    v69 = *(v64 + 40);

    v70 = _s12HomeEnergyUI25UtilityIntegrationStringsV20electricityUsageFrom11utilityNameS2S_tFZ_0(v69, v68);
    v72 = v71;

    v126 = v70;
    v127 = v72;
    sub_20D7E1EF8();
    v73 = sub_20D9745C8();
    v75 = v74;
    LOBYTE(v72) = v76;
    sub_20D974398();
    v77 = sub_20D974558();
    v79 = v78;
    v81 = v80;

    sub_20D7EADC0(v73, v75, v72 & 1);

    v82 = sub_20D974588();
    v84 = v83;
    LOBYTE(v72) = v85;
    sub_20D7EADC0(v77, v79, v81 & 1);

    sub_20D974968();
    v86 = sub_20D974508();
    v88 = v87;
    LOBYTE(v77) = v89;
    v91 = v90;

    sub_20D7EADC0(v82, v84, v72 & 1);

    v126 = v86;
    v127 = v88;
    v128 = v77 & 1;
    v129 = v91;
    sub_20D973BC8();
    v92 = v112;
    sub_20D974798();
    sub_20D7EADC0(v86, v88, v77 & 1);

    v93 = v119;
    v94 = v121;
    v95 = v120;
    (*(v119 + 32))(v121, v92, v120);
    v63 = 0;
  }

  else
  {
    v94 = v121;
    v95 = v120;
    v93 = v119;
  }

  (*(v93 + 56))(v94, v63, 1, v95);
  v96 = v117;
  sub_20D7EB7E8(v124, v117, &qword_27C83A8C0, &qword_20D97C4C8);
  v97 = v125;
  v98 = v118;
  sub_20D7EB7E8(v125, v118, &qword_27C83A8B0, &qword_20D97C4B8);
  v99 = v122;
  sub_20D7EB7E8(v94, v122, &qword_27C83A898, &qword_20D97C4A0);
  v100 = v123;
  sub_20D7EB7E8(v96, v123, &qword_27C83A8C0, &qword_20D97C4C8);
  v101 = v94;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8D8, &qword_20D97C508);
  sub_20D7EB7E8(v98, v100 + v102[12], &qword_27C83A8B0, &qword_20D97C4B8);
  v103 = v100 + v102[16];
  v104 = v116;
  *v103 = v113;
  *(v103 + 8) = v104;
  *(v103 + 16) = v67;
  v105 = v114;
  *(v103 + 24) = v115;
  *(v103 + 32) = v105;
  *(v103 + 40) = 256;
  sub_20D7EB7E8(v99, v100 + v102[20], &qword_27C83A898, &qword_20D97C4A0);

  sub_20D7E3944(v101, &qword_27C83A898, &qword_20D97C4A0);
  sub_20D7E3944(v97, &qword_27C83A8B0, &qword_20D97C4B8);
  sub_20D7E3944(v124, &qword_27C83A8C0, &qword_20D97C4C8);
  sub_20D7E3944(v99, &qword_27C83A898, &qword_20D97C4A0);

  sub_20D7E3944(v98, &qword_27C83A8B0, &qword_20D97C4B8);
  return sub_20D7E3944(v96, &qword_27C83A8C0, &qword_20D97C4C8);
}

uint64_t sub_20D8E6F3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8E0, &qword_20D97C540);
  v3 = MEMORY[0x28223BE20](v90);
  v93 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = &v68 - v5;
  v6 = type metadata accessor for HistoricalUsageDetailsSheet(0);
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v85 = v7;
  v86 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972AF8();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20D974458();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20D9741E8();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8E8, &qword_20D97C548);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8F0, &qword_20D97C550);
  v14 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v16 = &v68 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8F8, &qword_20D97C558);
  MEMORY[0x28223BE20](v76);
  v18 = &v68 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A900, &qword_20D97C560);
  MEMORY[0x28223BE20](v78);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A908, &qword_20D97C568);
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v81 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v94 = &v68 - v24;
  if (qword_27C838680 != -1)
  {
    swift_once();
  }

  v95 = qword_27C840D30;
  v96 = *algn_27C840D38;
  v71 = *(v6 + 24);

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A68();
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A910, &qword_20D97C570);
  v72 = MEMORY[0x277D075D8];
  sub_20D8EB134(&qword_27C83A918, MEMORY[0x277D075D8], MEMORY[0x277D075E0]);
  sub_20D7EBC4C(&qword_27C83A920, &qword_27C83A910, &qword_20D97C570, MEMORY[0x277CE14C0]);
  sub_20D7E1EF8();
  v25 = v89;
  sub_20D974AF8();
  sub_20D9741D8();
  sub_20D7EBC4C(&qword_27C83A928, &qword_27C83A8F0, &qword_20D97C550, MEMORY[0x277CDF038]);
  v26 = v73;
  v27 = v75;
  sub_20D974738();
  (*(v74 + 8))(v12, v27);
  (*(v14 + 8))(v16, v26);
  v28 = sub_20D974338();
  sub_20D973AD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A930, &qword_20D97C578) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_20D974428();
  v38 = v79;
  v39 = v77;
  v40 = v80;
  (*(v79 + 104))(v77, *MEMORY[0x277CE0A10], v80);
  v41 = sub_20D974478();

  (*(v38 + 8))(v39, v40);
  KeyPath = swift_getKeyPath();
  v43 = &v18[*(v76 + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  sub_20D9743D8();
  sub_20D8EAC68();
  sub_20D974708();
  sub_20D7E3944(v18, &qword_27C83A8F8, &qword_20D97C558);
  v44 = sub_20D974958();
  v45 = swift_getKeyPath();
  v46 = &v20[*(v78 + 36)];
  *v46 = v45;
  v46[1] = v44;
  v47 = v69;
  v48 = v87;
  sub_20D974A48();
  v49 = v86;
  sub_20D8EB370(v47, v86, type metadata accessor for HistoricalUsageDetailsSheet);
  v50 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v51 = swift_allocObject();
  sub_20D8EAC00(v49, v51 + v50, type metadata accessor for HistoricalUsageDetailsSheet);
  sub_20D8EB040();
  sub_20D8EB134(&qword_2811250F8, v72, MEMORY[0x277D075E8]);
  v52 = v94;
  sub_20D974848();

  (*(v88 + 8))(v48, v25);
  sub_20D7E3944(v20, &qword_27C83A900, &qword_20D97C560);
  v53 = v91;
  sub_20D8E8C8C(v47, v91);
  LOBYTE(v44) = sub_20D974338();
  sub_20D973AD8();
  v54 = v53 + *(v90 + 36);
  *v54 = v44;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  v60 = v81;
  v59 = v82;
  v61 = *(v82 + 16);
  v62 = v83;
  v61(v81, v52, v83);
  v63 = v93;
  sub_20D7EB7E8(v53, v93, &qword_27C83A8E0, &qword_20D97C540);
  v64 = v92;
  v61(v92, v60, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A950, &qword_20D97C5F0);
  sub_20D7EB7E8(v63, &v64[*(v65 + 48)], &qword_27C83A8E0, &qword_20D97C540);
  sub_20D7E3944(v53, &qword_27C83A8E0, &qword_20D97C540);
  v66 = *(v59 + 8);
  v66(v94, v62);
  sub_20D7E3944(v63, &qword_27C83A8E0, &qword_20D97C540);
  return (v66)(v60, v62);
}

uint64_t sub_20D8E79E0@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9B0, &qword_20D97C6F8);
  v116 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v6 = &v92 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9B8, &unk_20D97C700);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v92 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v92 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v103 = &v92 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v92 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v92 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v110 = &v92 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v92 - v25;
  MEMORY[0x28223BE20](v24);
  v108 = &v92 - v26;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v27 = qword_28112ABE8;
  v28 = qword_28112ABE8;
  v104 = v27;
  v29 = v28;
  v30 = sub_20D9745A8();
  v32 = v31;
  LOBYTE(v27) = v33;
  v35 = v34;
  v36 = *MEMORY[0x277D075B0];
  v37 = *(v2 + 104);
  v112 = v2 + 104;
  v106 = v37;
  v37(v4, v36, v1);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838810, &qword_20D976358);
  v39 = &v6[*(v38 + 36)];
  v40 = *(v2 + 32);
  v113 = v38;
  v114 = v2 + 32;
  v107 = v40;
  v41 = v4;
  v40(v39, v4, v1);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838818, &qword_20D97C710);
  v39[*(v111 + 36)] = 1;
  *v6 = v30;
  *(v6 + 1) = v32;
  v6[16] = v27 & 1;
  *(v6 + 3) = v35;
  v42 = sub_20D8EB134(&qword_27C83A918, MEMORY[0x277D075D8], MEMORY[0x277D075E0]);
  v117 = MEMORY[0x277CE0BD8];
  v118 = v1;
  v119 = MEMORY[0x277CE0BC8];
  v120 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v101;
  sub_20D9747D8();
  v115 = *(v116 + 8);
  v116 += 8;
  v115(v6, v43);
  sub_20D9740F8();
  v44 = sub_20D9745A8();
  v46 = v45;
  LOBYTE(v39) = v47;
  v49 = v48;
  v50 = *MEMORY[0x277D075B8];
  v51 = v41;
  v100 = v41;
  v93 = v1;
  v106(v41, v50, v1);
  v52 = &v6[*(v113 + 36)];
  v107(v52, v51, v1);
  v52[*(v111 + 36)] = 1;
  *v6 = v44;
  *(v6 + 1) = v46;
  v6[16] = v39 & 1;
  *(v6 + 3) = v49;
  sub_20D9747D8();
  v115(v6, v43);
  sub_20D9740F8();
  v53 = sub_20D9745A8();
  v55 = v54;
  LOBYTE(v39) = v56;
  v58 = v57;
  v59 = v100;
  v60 = v93;
  v61 = v106;
  v106(v100, *MEMORY[0x277D075C8], v93);
  v62 = &v6[*(v113 + 36)];
  v107(v62, v59, v60);
  v62[*(v111 + 36)] = 1;
  *v6 = v53;
  *(v6 + 1) = v55;
  v6[16] = v39 & 1;
  *(v6 + 3) = v58;
  v63 = v101;
  sub_20D9747D8();
  v115(v6, v63);
  sub_20D9740F8();
  v64 = sub_20D9745A8();
  v66 = v65;
  LOBYTE(v39) = v67;
  v69 = v68;
  v70 = v100;
  v61(v100, *MEMORY[0x277D075D0], v60);
  v71 = &v6[*(v113 + 36)];
  v72 = v70;
  v73 = v70;
  v74 = v107;
  v107(v71, v72, v60);
  v71[*(v111 + 36)] = 1;
  *v6 = v64;
  *(v6 + 1) = v66;
  v6[16] = v39 & 1;
  *(v6 + 3) = v69;
  sub_20D9747D8();
  v115(v6, v63);
  sub_20D9740F8();
  v75 = sub_20D9745A8();
  v77 = v76;
  LOBYTE(v39) = v78;
  v80 = v79;
  v106(v73, *MEMORY[0x277D075C0], v60);
  v81 = &v6[*(v113 + 36)];
  v74(v81, v73, v60);
  v81[*(v111 + 36)] = 1;
  *v6 = v75;
  *(v6 + 1) = v77;
  v6[16] = v39 & 1;
  *(v6 + 3) = v80;
  v82 = v94;
  sub_20D9747D8();
  v115(v6, v63);
  v83 = v103;
  sub_20D7EB7E8(v108, v103, &qword_27C83A9B8, &unk_20D97C700);
  v84 = v95;
  sub_20D7EB7E8(v109, v95, &qword_27C83A9B8, &unk_20D97C700);
  v85 = v96;
  sub_20D7EB7E8(v110, v96, &qword_27C83A9B8, &unk_20D97C700);
  v86 = v102;
  v87 = v97;
  sub_20D7EB7E8(v102, v97, &qword_27C83A9B8, &unk_20D97C700);
  v88 = v98;
  sub_20D7EB7E8(v82, v98, &qword_27C83A9B8, &unk_20D97C700);
  v89 = v99;
  sub_20D7EB7E8(v83, v99, &qword_27C83A9B8, &unk_20D97C700);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C0, &qword_20D97C718);
  sub_20D7EB7E8(v84, v89 + v90[12], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v85, v89 + v90[16], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v87, v89 + v90[20], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v88, v89 + v90[24], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v82, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v86, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v110, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v109, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v108, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v88, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v87, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v85, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v84, &qword_27C83A9B8, &unk_20D97C700);
  return sub_20D7E3944(v103, &qword_27C83A9B8, &unk_20D97C700);
}

uint64_t sub_20D8E8520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v36 = a1;
  v4 = sub_20D972628();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v7;
  v8 = sub_20D972AF8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v12 = sub_20D9734F8();
  __swift_project_value_buffer(v12, qword_27C840CC8);
  (*(v9 + 16))(v11, a2, v8);
  v13 = sub_20D9734D8();
  v14 = sub_20D975478();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v80[0] = v17;
    *v16 = 136315138;
    v18 = sub_20D972AE8();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_20D7F4DC8(v18, v20, v80);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20D7C9000, v13, v14, "Picker selected: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v22 = sub_20D972AD8();
  LOBYTE(v80[0]) = 1;
  LOBYTE(v79[0]) = 1;
  LOBYTE(v76[0]) = 1;
  LOBYTE(v75[0]) = 1;
  LOBYTE(v74[0]) = 1;
  LOBYTE(v73[0]) = 1;
  LOBYTE(v68[0]) = 1;
  LOBYTE(v67[0]) = 1;
  LOBYTE(v66[0]) = 1;
  LOBYTE(v63[0]) = 1;
  LOBYTE(v62[0]) = 1;
  LOBYTE(v61[0]) = 1;
  LOBYTE(v77) = 0;
  LOBYTE(v71) = 1;
  LOBYTE(v69) = 1;
  LOBYTE(v64) = 1;
  v58[0] = 0;
  LOWORD(v58[1]) = 513;
  v58[2] = 0;
  LOBYTE(v58[3]) = 1;
  v58[4] = 0;
  LOBYTE(v58[5]) = 1;
  memset(&v58[6], 0, 24);
  LOBYTE(v58[9]) = 1;
  memset(&v58[10], 0, 24);
  LOBYTE(v58[13]) = 1;
  v58[14] = 0;
  LOWORD(v58[15]) = 513;
  v58[16] = 0;
  LOWORD(v58[17]) = 1;
  memset(&v58[18], 0, 24);
  LOBYTE(v58[21]) = 1;
  v58[22] = 0;
  LOBYTE(v58[23]) = 1;
  v58[24] = 0;
  LOBYTE(v58[25]) = 1;
  v58[26] = 0;
  LOWORD(v58[27]) = 513;
  v58[28] = 0;
  LOWORD(v58[29]) = 513;
  v58[30] = v22;
  LOBYTE(v58[31]) = 0;
  v58[32] = 0;
  LOBYTE(v58[33]) = 1;
  v58[34] = 0;
  LOBYTE(v58[35]) = 1;
  v58[36] = 0;
  LOBYTE(v58[37]) = 1;
  nullsub_5();
  v35 = type metadata accessor for HEUIFAnalyticsEvent();
  v23 = swift_allocObject();
  sub_20D7E3AF0(v59);
  *(v23 + 16) = 32;
  memcpy(v60, v59, 0x129uLL);
  memcpy((v23 + 24), v58, 0x129uLL);
  sub_20D7E3944(v60, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v23);

  v24 = v37;
  sub_20D972618();
  v34[2] = *(type metadata accessor for HistoricalUsageDetailsSheet(0) + 20);
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  v25 = v38;
  sub_20D974A48();
  sub_20D972458();
  v27 = v26;
  v28 = v39;
  v29 = v40;
  v30 = *(v39 + 8);
  v30(v25, v40);
  v30(v24, v29);
  v31 = sub_20D972AD8();
  v57 = 0;
  v56 = 1;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  v52 = 1;
  v51 = 1;
  v50 = 1;
  v49 = 1;
  v48 = 1;
  v47 = 1;
  v46 = 1;
  v45 = 0;
  v44 = 1;
  v43 = 1;
  v42 = 1;
  v79[0] = v27;
  LOWORD(v79[1]) = 512;
  *(&v79[1] + 2) = v77;
  HIWORD(v79[1]) = v78;
  v79[2] = 0;
  LOBYTE(v79[3]) = 1;
  *(&v79[3] + 1) = v76[0];
  HIDWORD(v79[3]) = *(v76 + 3);
  v79[4] = 0;
  LOBYTE(v79[5]) = 1;
  *(&v79[5] + 1) = v75[0];
  HIDWORD(v79[5]) = *(v75 + 3);
  memset(&v79[6], 0, 24);
  LOBYTE(v79[9]) = 1;
  HIDWORD(v79[9]) = *(v74 + 3);
  *(&v79[9] + 1) = v74[0];
  memset(&v79[10], 0, 24);
  LOBYTE(v79[13]) = 1;
  HIDWORD(v79[13]) = *(v73 + 3);
  *(&v79[13] + 1) = v73[0];
  v79[14] = 0;
  LOWORD(v79[15]) = 513;
  HIWORD(v79[15]) = v72;
  *(&v79[15] + 2) = v71;
  v79[16] = 0;
  LOWORD(v79[17]) = 1;
  *(&v79[17] + 2) = v69;
  HIWORD(v79[17]) = v70;
  memset(&v79[18], 0, 24);
  LOBYTE(v79[21]) = 1;
  *(&v79[21] + 1) = v68[0];
  HIDWORD(v79[21]) = *(v68 + 3);
  v79[22] = 0;
  LOBYTE(v79[23]) = 1;
  HIDWORD(v79[23]) = *(v67 + 3);
  *(&v79[23] + 1) = v67[0];
  v79[24] = 0;
  LOBYTE(v79[25]) = 1;
  HIDWORD(v79[25]) = *(v66 + 3);
  *(&v79[25] + 1) = v66[0];
  v79[26] = 0;
  LOWORD(v79[27]) = 513;
  *(&v79[27] + 2) = v64;
  HIWORD(v79[27]) = v65;
  v79[28] = 0;
  LOWORD(v79[29]) = 513;
  HIWORD(v79[29]) = v63[7];
  *(&v79[29] + 2) = *&v63[5];
  v79[30] = v31;
  LOBYTE(v79[31]) = 0;
  HIDWORD(v79[31]) = *(&v63[1] + 1);
  *(&v79[31] + 1) = *v63;
  v79[32] = 0;
  LOBYTE(v79[33]) = 1;
  *(&v79[33] + 1) = v62[0];
  HIDWORD(v79[33]) = *(v62 + 3);
  v79[34] = 0;
  LOBYTE(v79[35]) = 1;
  *(&v79[35] + 1) = v61[0];
  HIDWORD(v79[35]) = *(v61 + 3);
  v79[36] = 0;
  LOBYTE(v79[37]) = 1;
  nullsub_5();
  v32 = swift_allocObject();
  *(v32 + 16) = 33;
  memcpy(v80, v59, 0x129uLL);
  memcpy((v32 + 24), v79, 0x129uLL);
  sub_20D7E3944(v80, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v32);

  sub_20D9725C8();
  (*(v28 + 16))(v25, v24, v29);
  sub_20D974A58();
  return (v30)(v24, v29);
}

uint64_t sub_20D8E8C8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A958, &qword_20D97C5F8);
  MEMORY[0x28223BE20](v50);
  v51 = v49 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A960, &qword_20D97C600);
  MEMORY[0x28223BE20](v61);
  v52 = v49 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A968, &qword_20D97C608);
  MEMORY[0x28223BE20](v59);
  v58 = v49 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A970, &qword_20D97C610);
  MEMORY[0x28223BE20](v54);
  v57 = v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A978, &qword_20D97C618);
  MEMORY[0x28223BE20](v53);
  v8 = v49 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A980, &qword_20D97C620);
  MEMORY[0x28223BE20](v55);
  v10 = v49 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A988, &qword_20D97C628);
  MEMORY[0x28223BE20](v60);
  v56 = v49 - v11;
  v12 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HistoricalUsageIntervalView(0);
  MEMORY[0x28223BE20](v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D972AF8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistoricalUsageDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v22 = v19;
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 == *MEMORY[0x277D075B0])
  {
    v24 = *a1;
    swift_getKeyPath();
    v63 = v24;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v25 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v24 + v25, v14, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v14, v17);
    sub_20D8EB370(v17, v8, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    sub_20D9741B8();
    sub_20D7EB7E8(v10, v57, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    v26 = v56;
    sub_20D9741B8();
    sub_20D7E3944(v10, &qword_27C83A980, &qword_20D97C620);
    v27 = &qword_27C83A988;
    v28 = &qword_20D97C628;
    sub_20D7EB7E8(v26, v58, &qword_27C83A988, &qword_20D97C628);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    v29 = v26;
    goto LABEL_9;
  }

  v30 = a1;
  v49[0] = v10;
  v49[1] = v15;
  v32 = v56;
  v31 = v57;
  v33 = v58;
  if (v23 == *MEMORY[0x277D075B8])
  {
    v34 = *v30;
    swift_getKeyPath();
    v63 = v34;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v35 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v34 + v35, v14, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v14, v17);
    sub_20D8EB370(v17, v8, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    v36 = v49[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v36, v31, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    v37 = v36;
LABEL_7:
    sub_20D7E3944(v37, &qword_27C83A980, &qword_20D97C620);
    v27 = &qword_27C83A988;
    v28 = &qword_20D97C628;
    sub_20D7EB7E8(v32, v33, &qword_27C83A988, &qword_20D97C628);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    v29 = v32;
    goto LABEL_9;
  }

  if (v23 == *MEMORY[0x277D075C8])
  {
    v38 = *v30;
    swift_getKeyPath();
    v63 = v38;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v39 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v38 + v39, v14, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v14, v17);
    sub_20D8EB370(v17, v8, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    v40 = v49[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v40, v31, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    v37 = v40;
    goto LABEL_7;
  }

  if (v23 == *MEMORY[0x277D075D0])
  {
    v42 = *v30;
    swift_getKeyPath();
    v63 = v42;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v43 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v42 + v43, v14, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v14, v17);
    sub_20D8EB370(v17, v8, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    v44 = v49[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v44, v31, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    sub_20D7E3944(v44, &qword_27C83A980, &qword_20D97C620);
    v27 = &qword_27C83A988;
    v28 = &qword_20D97C628;
    sub_20D7EB7E8(v32, v33, &qword_27C83A988, &qword_20D97C628);
    goto LABEL_8;
  }

  if (v23 != *MEMORY[0x277D075C0])
  {
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    v48 = v52;
    sub_20D9741B8();
    sub_20D7EB7E8(v48, v33, &qword_27C83A960, &qword_20D97C600);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    sub_20D7E3944(v48, &qword_27C83A960, &qword_20D97C600);
    return (*(v22 + 8))(v21, v18);
  }

  v45 = *v30;
  swift_getKeyPath();
  v63 = v45;
  sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v46 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot;
  swift_beginAccess();
  sub_20D8EB370(v45 + v46, v14, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageIntervalView.init(usageSnapshot:)(v14, v17);
  sub_20D8EB370(v17, v51, type metadata accessor for HistoricalUsageIntervalView);
  swift_storeEnumTagMultiPayload();
  sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
  v47 = v52;
  sub_20D9741B8();
  v27 = &qword_27C83A960;
  v28 = &qword_20D97C600;
  sub_20D7EB7E8(v47, v33, &qword_27C83A960, &qword_20D97C600);
  swift_storeEnumTagMultiPayload();
  sub_20D8EB17C();
  sub_20D8EB2B4();
  sub_20D9741B8();
  v29 = v47;
LABEL_9:
  sub_20D7E3944(v29, v27, v28);
  return sub_20D8EB3D8(v17);
}

uint64_t sub_20D8E9B18()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_20D9725C8();
  type metadata accessor for HistoricalUsageDetailsSheet(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A58();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_20D8E9C6C()
{
  v16 = sub_20D972AF8();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_20D972618();
  type metadata accessor for HistoricalUsageDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v13 = sub_20D972AD8();
  (*(v0 + 8))(v2, v16);
  v32 = 0;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v21 = 1;
  v20 = 0;
  v19 = 1;
  v18 = 1;
  v17 = 1;
  v33[0] = v11;
  LOWORD(v33[1]) = 512;
  v33[2] = 0;
  LOBYTE(v33[3]) = 1;
  v33[4] = 0;
  LOBYTE(v33[5]) = 1;
  memset(&v33[6], 0, 24);
  LOBYTE(v33[9]) = 1;
  memset(&v33[10], 0, 24);
  LOBYTE(v33[13]) = 1;
  v33[14] = 0;
  LOWORD(v33[15]) = 513;
  v33[16] = 0;
  LOWORD(v33[17]) = 1;
  memset(&v33[18], 0, 24);
  LOBYTE(v33[21]) = 1;
  v33[22] = 0;
  LOBYTE(v33[23]) = 1;
  v33[24] = 0;
  LOBYTE(v33[25]) = 1;
  v33[26] = 0;
  LOWORD(v33[27]) = 513;
  v33[28] = 0;
  LOWORD(v33[29]) = 513;
  v33[30] = v13;
  LOBYTE(v33[31]) = 0;
  v33[32] = 0;
  LOBYTE(v33[33]) = 1;
  v33[34] = 0;
  LOBYTE(v33[35]) = 1;
  v33[36] = 0;
  LOBYTE(v33[37]) = 1;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v14 = swift_allocObject();
  sub_20D7E3AF0(v34);
  *(v14 + 16) = 33;
  memcpy(v35, v34, 0x129uLL);
  memcpy((v14 + 24), v33, 0x129uLL);
  sub_20D7E3944(v35, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v14);
}

uint64_t sub_20D8E9FF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HistoricalUsageDetailsSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20D8EA078()
{
  v0 = sub_20D972AF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for HistoricalUsageDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v4 = sub_20D972AD8();
  (*(v1 + 8))(v3, v0);
  v7[120] = 1;
  v7[112] = 1;
  v7[104] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  v7[72] = 1;
  v7[64] = 1;
  v7[56] = 1;
  v7[48] = 1;
  v7[40] = 1;
  v7[32] = 1;
  v7[24] = 0;
  v7[16] = 1;
  v7[8] = 1;
  v7[0] = 1;
  v8[0] = 0;
  LOWORD(v8[1]) = 513;
  v8[2] = 0;
  LOBYTE(v8[3]) = 1;
  v8[4] = 0;
  LOBYTE(v8[5]) = 1;
  memset(&v8[6], 0, 24);
  LOBYTE(v8[9]) = 1;
  memset(&v8[10], 0, 24);
  LOBYTE(v8[13]) = 1;
  v8[14] = 0;
  LOWORD(v8[15]) = 513;
  v8[16] = 0;
  LOWORD(v8[17]) = 1;
  memset(&v8[18], 0, 24);
  LOBYTE(v8[21]) = 1;
  v8[22] = 0;
  LOBYTE(v8[23]) = 1;
  v8[24] = 0;
  LOBYTE(v8[25]) = 1;
  v8[26] = 0;
  LOWORD(v8[27]) = 513;
  v8[28] = 0;
  LOWORD(v8[29]) = 513;
  v8[30] = v4;
  LOBYTE(v8[31]) = 0;
  v8[32] = 0;
  LOBYTE(v8[33]) = 1;
  v8[34] = 0;
  LOBYTE(v8[35]) = 1;
  v8[36] = 0;
  LOBYTE(v8[37]) = 1;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v5 = swift_allocObject();
  sub_20D7E3AF0(v9);
  *(v5 + 16) = 32;
  memcpy(v10, v9, 0x129uLL);
  memcpy((v5 + 24), v8, 0x129uLL);
  sub_20D7E3944(v10, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v5);
}

uint64_t sub_20D8EA2E8()
{
  v17 = sub_20D972AF8();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_20D972618();
  type metadata accessor for HistoricalUsageDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v13 = sub_20D972AD8();
  (*(v0 + 8))(v2, v17);
  v33 = 0;
  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v21 = 0;
  v20 = 1;
  v19 = 1;
  v18 = 1;
  v34[0] = v11;
  LOWORD(v34[1]) = 512;
  v34[2] = 0;
  LOBYTE(v34[3]) = 1;
  v34[4] = 0;
  LOBYTE(v34[5]) = 1;
  memset(&v34[6], 0, 24);
  LOBYTE(v34[9]) = 1;
  memset(&v34[10], 0, 24);
  LOBYTE(v34[13]) = 1;
  v34[14] = 0;
  LOWORD(v34[15]) = 513;
  v34[16] = 0;
  LOWORD(v34[17]) = 1;
  memset(&v34[18], 0, 24);
  LOBYTE(v34[21]) = 1;
  v34[22] = 0;
  LOBYTE(v34[23]) = 1;
  v34[24] = 0;
  LOBYTE(v34[25]) = 1;
  v34[26] = 0;
  LOWORD(v34[27]) = 513;
  v34[28] = 0;
  LOWORD(v34[29]) = 513;
  v34[30] = v13;
  LOBYTE(v34[31]) = 0;
  v34[32] = 0;
  LOBYTE(v34[33]) = 1;
  v34[34] = 0;
  LOBYTE(v34[35]) = 1;
  v34[36] = 0;
  LOBYTE(v34[37]) = 1;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v14 = swift_allocObject();
  sub_20D7E3AF0(v35);
  *(v14 + 16) = 33;
  memcpy(v36, v35, 0x129uLL);
  memcpy((v14 + 24), v34, 0x129uLL);
  sub_20D7E3944(v36, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v14);

  if (qword_27C8385C8 != -1)
  {
    swift_once();
  }

  v15 = qword_27C840D10;
  sub_20D9725C8();
  result = sub_20D88BE64(v9);
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_20D8EA6BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HistoricalUsageDetailsSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_20D8EA778(uint64_t a1)
{
  type metadata accessor for HistoricalUsageSnapshotManager(319);
  if (v1 <= 0x3F)
  {
    sub_20D8EA8C4(319, &qword_27C83A860, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_20D8EA8C4(319, &qword_27C83A868, MEMORY[0x277D075D8]);
      if (v3 <= 0x3F)
      {
        sub_20D8EA918(319, &qword_281124D80, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_20D8EA918(319, &qword_27C83A870, &type metadata for EnergyTip, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D8EA8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D974A78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20D8EA918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D8EA968()
{
  result = qword_27C83A878;
  if (!qword_27C83A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A848, &qword_20D97C408);
    sub_20D8EA9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A878);
  }

  return result;
}

unint64_t sub_20D8EA9F4()
{
  result = qword_27C83A880;
  if (!qword_27C83A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A840, &qword_20D97C400);
    sub_20D7EBC4C(&qword_27C83A888, &qword_27C83A838, &qword_20D97C3F8, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A880);
  }

  return result;
}

uint64_t sub_20D8EAAAC()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "Accessibility string used to describe the time interval chosen to display", 73, 2);
  qword_27C840D30 = result;
  *algn_27C840D38 = v9;
  return result;
}

uint64_t sub_20D8EAC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D8EAC68()
{
  result = qword_27C83A938;
  if (!qword_27C83A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F8, &qword_20D97C558);
    sub_20D8EAD20();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A938);
  }

  return result;
}

unint64_t sub_20D8EAD20()
{
  result = qword_27C83A940;
  if (!qword_27C83A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A930, &qword_20D97C578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F0, &qword_20D97C550);
    sub_20D9741E8();
    sub_20D7EBC4C(&qword_27C83A928, &qword_27C83A8F0, &qword_20D97C550, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A940);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for HistoricalUsageDetailsSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);

  v7 = v0 + v3 + v1[8];
  v8 = sub_20D972AF8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8EAFC0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HistoricalUsageDetailsSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D8E8520(a1, a2, v6);
}

unint64_t sub_20D8EB040()
{
  result = qword_27C83A948;
  if (!qword_27C83A948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A900, &qword_20D97C560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F8, &qword_20D97C558);
    sub_20D8EAC68();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A948);
  }

  return result;
}

uint64_t sub_20D8EB134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D8EB17C()
{
  result = qword_27C83A998;
  if (!qword_27C83A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A988, &qword_20D97C628);
    sub_20D8EB200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A998);
  }

  return result;
}

unint64_t sub_20D8EB200()
{
  result = qword_27C83A9A0;
  if (!qword_27C83A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A980, &qword_20D97C620);
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9A0);
  }

  return result;
}

unint64_t sub_20D8EB2B4()
{
  result = qword_27C83A9A8;
  if (!qword_27C83A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A960, &qword_20D97C600);
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView, &protocol conformance descriptor for HistoricalUsageIntervalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9A8);
  }

  return result;
}

uint64_t sub_20D8EB370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8EB3D8(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageIntervalView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RectangularLockUtilityInfoView.init(widgetStartDate:infoSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20D975058();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v12 = type metadata accessor for RectangularLockUtilityInfoView(0);
  v13 = v12[5];
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a3 + v13, a1, v14);
  sub_20D815A38(a2, a3 + v12[6]);
  if (*(a2 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 44)) == 6)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v16 = qword_28112ABE8;
    v17 = qword_28112ABE8;
    sub_20D9726B8();
    v18 = sub_20D975108(v11, 0, 0, v16, v8, "Text to show electricity rates widget title", 43, 2);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v20 = qword_28112ABE8;
    v21 = qword_28112ABE8;
    sub_20D9726B8();
    v18 = sub_20D975108(v11, 0, 0, v20, v8, "Rectangular Utility Info widget title when no homes have a utility configured.", 78, 2);
  }

  v22 = v18;
  v23 = v19;
  sub_20D815AB8(a2);
  result = (*(v15 + 8))(a1, v14);
  v25 = (a3 + v12[7]);
  *v25 = v22;
  v25[1] = v23;
  return result;
}

uint64_t RectangularLockUtilityInfoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C8, &qword_20D97C750);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9D0, &qword_20D97C758);
  sub_20D8EB818(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D8EE150();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C83A9C8, &qword_20D97C750);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9F0, &qword_20D97C770);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_20D8EB818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA10, &qword_20D97C7F0);
  MEMORY[0x28223BE20](v103);
  v99 = &v93 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA18, &qword_20D97C7F8);
  MEMORY[0x28223BE20](v100);
  v102 = &v93 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA20, &qword_20D97C800);
  MEMORY[0x28223BE20](v115);
  v104 = &v93 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA28, &qword_20D97C808);
  MEMORY[0x28223BE20](v101);
  v94 = (&v93 - v6);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA30, &qword_20D97C810);
  MEMORY[0x28223BE20](v108);
  v97 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA38, &qword_20D97C818);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = (&v93 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA40, &qword_20D97C820);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = (&v93 - v16);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA48, &qword_20D97C828);
  MEMORY[0x28223BE20](v109);
  v114 = &v93 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA50, &qword_20D97C830);
  MEMORY[0x28223BE20](v105);
  v19 = &v93 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA58, &qword_20D97C838);
  MEMORY[0x28223BE20](v110);
  v107 = &v93 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA60, &qword_20D97C840);
  MEMORY[0x28223BE20](v106);
  v22 = &v93 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA68, &qword_20D97C848);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = sub_20D9726E8();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20D975058();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA70, &qword_20D97C850);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v113 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v112 = &v93 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v111 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v93 - v42;
  *v43 = sub_20D974088();
  *(v43 + 1) = 0;
  v43[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  sub_20D8EC7A4(a1, &v43[*(v44 + 44)]);
  v45 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView(0) + 24);
  v46 = type metadata accessor for UtilityRateInfoSnapshot(0);
  if (*(v45 + *(v46 + 44)) == 6)
  {
    v47 = *(v46 + 40);
    v48 = *(v45 + v47);
    if (v48 == 7)
    {
      goto LABEL_3;
    }

    if (sub_20D96659C(v48, 1u))
    {
      v74 = sub_20D974088();
      v75 = v98;
      *v98 = v74;
      *(v75 + 8) = 0x4008000000000000;
      *(v75 + 16) = 0;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAC8, &qword_20D97C870);
      sub_20D8ECDE4((v75 + *(v76 + 44)));
      v77 = sub_20D974088();
      v78 = v96;
      *v96 = v77;
      *(v78 + 8) = 0;
      *(v78 + 16) = 1;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAD0, &qword_20D97C878);
      sub_20D8ED144(a1, v78 + *(v79 + 44));
      sub_20D7EB7E8(v75, v15, &qword_27C83AA40, &qword_20D97C820);
      v80 = v95;
      sub_20D7EB7E8(v78, v95, &qword_27C83AA38, &qword_20D97C818);
      v81 = v97;
      sub_20D7EB7E8(v15, v97, &qword_27C83AA40, &qword_20D97C820);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAD8, &qword_20D97C880);
      sub_20D7EB7E8(v80, v81 + *(v82 + 48), &qword_27C83AA38, &qword_20D97C818);
      sub_20D7E3944(v80, &qword_27C83AA38, &qword_20D97C818);
      sub_20D7E3944(v15, &qword_27C83AA40, &qword_20D97C820);
      sub_20D7EB7E8(v81, v19, &qword_27C83AA30, &qword_20D97C810);
      swift_storeEnumTagMultiPayload();
      v83 = MEMORY[0x277CE14C0];
      sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840, MEMORY[0x277CE14C0]);
      sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810, v83);
      v84 = v107;
      sub_20D9741B8();
      sub_20D7EB7E8(v84, v114, &qword_27C83AA58, &qword_20D97C838);
      swift_storeEnumTagMultiPayload();
      sub_20D8EE4EC();
      sub_20D8EE5CC();
      v61 = v112;
      sub_20D9741B8();
      sub_20D7E3944(v84, &qword_27C83AA58, &qword_20D97C838);
      sub_20D7E3944(v81, &qword_27C83AA30, &qword_20D97C810);
      sub_20D7E3944(v78, &qword_27C83AA38, &qword_20D97C818);
      v62 = v98;
      v63 = &qword_27C83AA40;
      v64 = &qword_20D97C820;
      goto LABEL_10;
    }

    v90 = *(v45 + v47);
    if (v90 == 7 || (sub_20D96659C(v90, 2u) & 1) == 0)
    {
LABEL_3:
      v49 = sub_20D974088();
      sub_20D8EDE48(a1, &v117);
      v51 = v117;
      v50 = v118;
      v52 = v119;
      v53 = v120;
      v54 = v121;
      v126 = 0;
      v125 = v120;
      v117 = v49;
      v118 = 0x4008000000000000;
      LOBYTE(v119) = 0;
      v120 = v51;
      v121 = v50;
      v122 = v52;
      v123 = v125;
      v124 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA78, &qword_20D97C858);
      v55 = MEMORY[0x277CE1138];
      sub_20D7EBC4C(&qword_27C83AA80, &qword_27C83AA78, &qword_20D97C858, MEMORY[0x277CE1138]);
      v56 = v99;
      sub_20D9747D8();

      sub_20D7EADC0(v50, v52, v53);

      v57 = &qword_27C83AA10;
      v58 = &qword_20D97C7F0;
      sub_20D7EB7E8(v56, v102, &qword_27C83AA10, &qword_20D97C7F0);
      swift_storeEnumTagMultiPayload();
      v59 = v55;
    }

    else
    {
      v91 = sub_20D974088();
      v56 = v94;
      *v94 = v91;
      *(v56 + 8) = 0x4008000000000000;
      *(v56 + 16) = 0;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAC0, &qword_20D97C868);
      sub_20D8EDAB8((v56 + *(v92 + 44)));
      v57 = &qword_27C83AA28;
      v58 = &qword_20D97C808;
      sub_20D7EB7E8(v56, v102, &qword_27C83AA28, &qword_20D97C808);
      swift_storeEnumTagMultiPayload();
      v59 = MEMORY[0x277CE1138];
    }

    sub_20D7EBC4C(&qword_27C83AA88, &qword_27C83AA28, &qword_20D97C808, v59);
    sub_20D8EE434();
    v60 = v104;
    sub_20D9741B8();
    sub_20D7EB7E8(v60, v114, &qword_27C83AA20, &qword_20D97C800);
    swift_storeEnumTagMultiPayload();
    sub_20D8EE4EC();
    sub_20D8EE5CC();
    v61 = v112;
    sub_20D9741B8();
    sub_20D7E3944(v60, &qword_27C83AA20, &qword_20D97C800);
    v62 = v56;
    v63 = v57;
    v64 = v58;
LABEL_10:
    sub_20D7E3944(v62, v63, v64);
    goto LABEL_11;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v65 = qword_28112ABE8;
  v66 = qword_28112ABE8;
  sub_20D9726B8();
  v67 = sub_20D975108(v34, 0, 0, v65, v31, "Rectangular Utility Info widget text when no homes have a utility configured.", 77, 2);
  v69 = v68;
  *v28 = sub_20D974088();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAE0, &qword_20D97C888);
  sub_20D8EC9E4(v67, v69, &v28[*(v70 + 44)]);

  sub_20D7EB7E8(v28, v26, &qword_27C83AA68, &qword_20D97C848);
  sub_20D7EB7E8(v26, v22, &qword_27C83AA68, &qword_20D97C848);
  v71 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAE8, &unk_20D97C890) + 48)];
  *v71 = 0;
  v71[8] = 1;
  sub_20D7E3944(v26, &qword_27C83AA68, &qword_20D97C848);
  sub_20D7EB7E8(v22, v19, &qword_27C83AA60, &qword_20D97C840);
  swift_storeEnumTagMultiPayload();
  v72 = MEMORY[0x277CE14C0];
  sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840, MEMORY[0x277CE14C0]);
  sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810, v72);
  v73 = v107;
  sub_20D9741B8();
  sub_20D7EB7E8(v73, v114, &qword_27C83AA58, &qword_20D97C838);
  swift_storeEnumTagMultiPayload();
  sub_20D8EE4EC();
  sub_20D8EE5CC();
  v61 = v112;
  sub_20D9741B8();
  sub_20D7E3944(v73, &qword_27C83AA58, &qword_20D97C838);
  sub_20D7E3944(v22, &qword_27C83AA60, &qword_20D97C840);
  sub_20D7E3944(v28, &qword_27C83AA68, &qword_20D97C848);
LABEL_11:
  v85 = v111;
  sub_20D7EB7E8(v43, v111, &qword_27C838EC0, &unk_20D977FE0);
  v86 = v113;
  sub_20D7EB7E8(v61, v113, &qword_27C83AA70, &qword_20D97C850);
  v87 = v116;
  sub_20D7EB7E8(v85, v116, &qword_27C838EC0, &unk_20D977FE0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAB8, &qword_20D97C860);
  sub_20D7EB7E8(v86, v87 + *(v88 + 48), &qword_27C83AA70, &qword_20D97C850);
  sub_20D7E3944(v61, &qword_27C83AA70, &qword_20D97C850);
  sub_20D7E3944(v43, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v86, &qword_27C83AA70, &qword_20D97C850);
  return sub_20D7E3944(v85, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D8EC7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = (a1 + *(type metadata accessor for RectangularLockUtilityInfoView(0) + 28));
  v10 = v9[1];
  v27 = *v9;
  v28 = v10;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  LODWORD(v27) = sub_20D974248();
  v16 = sub_20D974518();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v27 = v16;
  v28 = v18;
  v20 &= 1u;
  v29 = v20;
  v30 = v22;
  sub_20D9747D8();
  sub_20D7EADC0(v16, v18, v20);

  sub_20D7EB7E8(v8, v6, &qword_27C838F18, &unk_20D977860);
  v23 = v26;
  sub_20D7EB7E8(v6, v26, &qword_27C838F18, &unk_20D977860);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D8EC9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v40 = sub_20D974458();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F00, &qword_20D9777E8);
  MEMORY[0x28223BE20](v42);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAF0, &qword_20D97C8A0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - v12;
  v44 = a1;
  v45 = a2;
  sub_20D7E1EF8();

  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  LODWORD(v44) = sub_20D974248();
  v18 = sub_20D974518();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_20D7EADC0(v13, v15, v17 & 1);

  v44 = v18;
  v45 = v20;
  v46 = v22 & 1;
  v47 = v24;
  sub_20D974868();
  sub_20D7EADC0(v18, v20, v22 & 1);

  sub_20D974488();
  v25 = v38;
  v26 = v40;
  (*(v38 + 104))(v6, *MEMORY[0x277CE0A10], v40);
  v27 = sub_20D974478();

  (*(v25 + 8))(v6, v26);
  KeyPath = swift_getKeyPath();
  v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = &v8[*(v42 + 36)];
  *v31 = v30;
  v31[8] = 0;
  sub_20D8EE6D8();
  v32 = v39;
  sub_20D9747D8();
  sub_20D7E3944(v8, &qword_27C838F00, &qword_20D9777E8);
  v33 = v41;
  sub_20D7EB7E8(v32, v41, &qword_27C83AAF0, &qword_20D97C8A0);
  v34 = v43;
  sub_20D7EB7E8(v33, v43, &qword_27C83AAF0, &qword_20D97C8A0);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB10, &unk_20D97C910) + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_20D7E3944(v32, &qword_27C83AAF0, &qword_20D97C8A0);
  return sub_20D7E3944(v33, &qword_27C83AAF0, &qword_20D97C8A0);
}