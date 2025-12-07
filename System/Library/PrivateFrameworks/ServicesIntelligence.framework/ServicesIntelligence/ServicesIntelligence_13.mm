uint64_t sub_230E1A718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1D2F8;

  return sub_230D8EB34(a1, v4);
}

uint64_t sub_230E1A7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1BF00;

  return sub_230D8EB34(a1, v4);
}

double sub_230E1A888@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_230DA41A0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    *&v15[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DB9FA0();
      v10 = *&v15[0];
    }

    memmove(a3, (*(v10 + 56) + (v8 << 7)), 0x79uLL);
    sub_230E1ACCC(v8, v10);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_230D65C88(v15);
    v12 = v19;
    a3[4] = v18;
    a3[5] = v12;
    a3[6] = v20[0];
    *(a3 + 105) = *(v20 + 9);
    v13 = v15[1];
    *a3 = v15[0];
    a3[1] = v13;
    result = *&v16;
    v14 = v17;
    a3[2] = v16;
    a3[3] = v14;
  }

  return result;
}

double sub_230E1A960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_230DA41A0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBA17C();
      v10 = v12;
    }

    sub_230D0E394((*(v10 + 56) + 32 * v8), a3);
    sub_230E1AE88(v8, v10);
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

uint64_t sub_230E1AA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_230DA41A0(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBA810();
      v10 = v12;
    }

    v11 = *(v10 + 56) + 24 * v8;
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    result = sub_230E1B038(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_230E1AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = v5;
  result = sub_230DB4E78(a1, a2, a3, a4);
  if (v9)
  {
    v10 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v13 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBAF54();
      v12 = v13;
    }

    *a5 = *(*(v12 + 56) + v10);
    result = sub_230E1B3A4(v10, v12);
    *v6 = v12;
  }

  else
  {
    *a5 = 3;
  }

  return result;
}

double sub_230E1AB68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_230DA41A0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DB9E1C();
      v10 = v12;
    }

    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_230E1B1F4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_230E6E750;
  }

  return result;
}

double sub_230E1AC18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_230DA41A0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230DBB23C();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 48 * v8);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v11[2];
    sub_230E1B57C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

char *sub_230E1ACCC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      v9 = sub_230E699D0();

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
        result = (v14 + (v3 << 7));
        v15 = (v14 + (v6 << 7));
        if (v3 << 7 != v6 << 7 || (v3 = v6, result >= v15 + 128))
        {
          result = memmove(result, v15, 0x80uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230E1AE88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      v10 = sub_230E699D0();

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

  return result;
}

uint64_t sub_230E1B038(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      v10 = sub_230E699D0();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

  return result;
}

uint64_t sub_230E1B1F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      v9 = sub_230E699D0();

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

  return result;
}

uint64_t sub_230E1B3A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      sub_230E69100();
      v9 = sub_230E699D0();

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
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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

  return result;
}

uint64_t sub_230E1B57C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230E694C0() + 1) & ~v5;
    do
    {
      sub_230E699B0();

      sub_230E69100();
      v11 = sub_230E699D0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

unint64_t sub_230E1B738(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_230DA41A0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_230DB5A54(v22, a7 & 1);
      result = sub_230DA41A0(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_230DB9644();
      result = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * result;
    *v28 = a1;
    *(v28 + 8) = a2 & 1;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
    return result;
  }

  v27[(result >> 6) + 8] |= 1 << result;
  v29 = (v27[6] + 16 * result);
  *v29 = a5;
  v29[1] = a6;
  v30 = v27[7] + 32 * result;
  *v30 = a1;
  *(v30 + 8) = a2 & 1;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4 & 1;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v32;
}

uint64_t sub_230E1B948(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_230DA41A0(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230DB602C(v20, a6 & 1);
      v15 = sub_230DA41A0(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_230DB9990();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_230D0F474(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

uint64_t sub_230E1BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void), void (*a8)(uint64_t, void))
{
  v10 = v8;
  v17 = *v8;
  v18 = sub_230DB4B4C(a2, a3, a4, a5);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a6 & 1) == 0)
  {
    if (v25 < v23 || (a6 & 1) != 0)
    {
      a8(v23, a6 & 1);
      v18 = sub_230DB4B4C(a2, a3, a4, a5);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      a7();
      v18 = v26;
    }
  }

  v28 = *v10;
  if (v24)
  {
    *(v28[7] + 8 * v18) = a1;
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v30 = v28[6] + 32 * v18;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v28[7] + 8 * v18) = a1;
  v31 = v28[2];
  v22 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v32;
}

uint64_t sub_230E1BCE4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB6CB0(v16, a4 & 1);
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230DB9FA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 7);

    return sub_230E1DF64(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 7));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[6];
  *(v25 + 105) = *(a1 + 105);
  v25[5] = v30;
  v25[6] = v31;
  v25[4] = v29;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

_OWORD *sub_230E1BE84(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DBA17C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_230DB7074(v16, a4 & 1);
    v11 = sub_230DA41A0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_230E69950();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_230D0E394(a1, v22);
  }

  else
  {
    sub_230E1C5FC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_230E1BFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_230DB4E78(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230DB89E8(v20, a6 & 1);
      result = sub_230DB4E78(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_230DBAF54();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + result) = a1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = (v25[6] + 32 * result);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + result) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

uint64_t sub_230E1C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_230DA41A0(a3, a4);
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
      sub_230DB69F4(v18, a5 & 1);
      v13 = sub_230DA41A0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_230DB9E1C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_230D0F4A8(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_230E1C2F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB8CBC(v16, a4 & 1);
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_230E69950();
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      v19 = v11;
      sub_230DBB0CC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

LABEL_19:
    JUMPOUT(0x23191E910);
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

uint64_t sub_230E1C46C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230DA41A0(a2, a3);
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
      sub_230DB8F64(v16, a4 & 1);
      v11 = sub_230DA41A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_230E69950();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230DBB23C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_230E1E148(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[2];
  v25[1] = a1[1];
  v25[2] = v27;
  *v25 = v26;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

_OWORD *sub_230E1C5FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_230D0E394(a4, (a5[7] + 32 * a1));
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

unint64_t sub_230E1C668(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_230E1C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_230D65D5C;

  return sub_230E06B74(a2, a3, a4, a5);
}

uint64_t sub_230E1C768(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v39 = MEMORY[0x277D84F90];
  sub_230D48E68(0, v4, 0);
  v5 = v39;
  v7 = v6 + 64;
  result = sub_230E694B0();
  v9 = result;
  v10 = 0;
  v37 = *(v6 + 36);
  v31 = v6 + 72;
  v32 = v4;
  v33 = v6 + 64;
  v34 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v6 + 36))
    {
      goto LABEL_25;
    }

    v36 = v10;
    v14 = v5;
    v15 = (*(v6 + 48) + 16 * v9);
    v16 = *v15;
    v5 = v15[1];
    v17 = (*(v6 + 56) + 16 * v9);
    v18 = *v17;
    v19 = v17[1];
    swift_bridgeObjectRetain_n();
    sub_230D0DCF8(v18, v19);
    sub_230D0DCF8(v18, v19);

    sub_230D0F494(v18, v19);
    v38[0] = v18;
    v38[1] = v19;
    v20 = a2(v16, v5, v38);
    if (v3)
    {

      sub_230D0F494(v18, v19);

      return v5;
    }

    v21 = v20;

    result = sub_230D0F494(v18, v19);
    v5 = v14;
    v39 = v14;
    v23 = *(v14 + 16);
    v22 = *(v14 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_230D48E68((v22 > 1), v23 + 1, 1);
      v5 = v39;
    }

    *(v5 + 16) = v23 + 1;
    *(v5 + 8 * v23 + 32) = v21;
    v7 = v33;
    v6 = v34;
    v11 = 1 << *(v34 + 32);
    if (v9 >= v11)
    {
      goto LABEL_26;
    }

    v24 = *(v33 + 8 * v13);
    if ((v24 & (1 << v9)) == 0)
    {
      goto LABEL_27;
    }

    if (v37 != *(v34 + 36))
    {
      goto LABEL_28;
    }

    v25 = v24 & (-2 << (v9 & 0x3F));
    if (v25)
    {
      v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v3 = 0;
      v12 = v32;
    }

    else
    {
      v26 = v13 << 6;
      v27 = v13 + 1;
      v12 = v32;
      v28 = (v31 + 8 * v13);
      v3 = 0;
      while (v27 < (v11 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_230D52C58(v9, v37, 0);
          v11 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_230D52C58(v9, v37, 0);
    }

LABEL_4:
    v10 = v36 + 1;
    v9 = v11;
    if (v36 + 1 == v12)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230E1CA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
    v3 = sub_230E69520();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_230E699B0();

      sub_230E69100();
      result = sub_230E699D0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_230E698C0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_230E1CBD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v3 = v2;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v76 = MEMORY[0x277D84F90];
    sub_230D48E68(0, v5, 0);
    v77 = a1 + 64;
    result = sub_230E694B0();
    v7 = result;
    if (result < 0 || result >= 1 << *(a1 + 32))
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      result = v76;
      v8 = *(a1 + 36);
      v42 = v5;
      v9 = 1;
      v43 = v8;
      while (1)
      {
        v10 = v7 >> 6;
        if ((*(v77 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        if (v8 != *(a1 + 36))
        {
          goto LABEL_28;
        }

        v45 = v9;
        v46 = result;
        v11 = (*(a1 + 48) + 16 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*(a1 + 56) + (v7 << 7));
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v57[2] = v14[2];
        v57[3] = v15;
        v57[0] = v17;
        v57[1] = v16;
        v19 = v14[5];
        v18 = v14[6];
        v20 = v14[4];
        *(v58 + 9) = *(v14 + 105);
        v57[5] = v19;
        v58[0] = v18;
        v57[4] = v20;
        v21 = *v14;
        v22 = v14[1];
        v23 = v14[3];
        v52 = v14[2];
        v53 = v23;
        v50 = v21;
        v51 = v22;
        v24 = v14[4];
        v25 = v14[5];
        v26 = v14[6];
        *(v56 + 9) = *(v14 + 105);
        v55 = v25;
        v56[0] = v26;
        v54 = v24;
        memmove(&__dst, v14, 0x79uLL);
        v66[0] = v12;
        v66[1] = v13;
        v71 = v54;
        v72 = v55;
        v73[0] = v56[0];
        *(v73 + 9) = *(v56 + 9);
        v67 = v50;
        v68 = v51;
        v69 = v52;
        v70 = v53;
        swift_bridgeObjectRetain_n();
        sub_230D0FA64(v57, &v47, &qword_27DB5B8E0, &qword_230E71DD8);
        sub_230D0FA64(&__dst, &v47, &qword_27DB5B8E0, &qword_230E71DD8);
        sub_230D2D9F8(v66, &qword_27DB5D7B8, &qword_230E7F0B0);
        v74[3] = v61;
        v74[4] = v62;
        v74[1] = __dst;
        v74[2] = v60;
        *(v75 + 9) = *(v65 + 9);
        v74[6] = v64;
        v75[0] = v65[0];
        v74[5] = v63;
        *&v74[0] = v12;
        *(&v74[0] + 1) = v13;
        v48[5] = v64;
        v49[0] = v65[0];
        *(v49 + 9) = *(v75 + 9);
        v48[3] = v62;
        v48[4] = v63;
        v47 = v74[0];
        v48[0] = __dst;
        v48[1] = v60;
        v48[2] = v61;
        v27 = a2(v12, v13, v48);
        if (v3)
        {
          sub_230D2D9F8(v74, &qword_27DB5D7B8, &qword_230E7F0B0);
        }

        v28 = v27;
        sub_230D2D9F8(v74, &qword_27DB5D7B8, &qword_230E7F0B0);
        result = v46;
        v76 = v46;
        v30 = *(v46 + 16);
        v29 = *(v46 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_230D48E68((v29 > 1), v30 + 1, 1);
          result = v76;
        }

        *(result + 16) = v30 + 1;
        *(result + 8 * v30 + 32) = v28;
        v31 = 1 << *(a1 + 32);
        if (v7 >= v31)
        {
          goto LABEL_29;
        }

        v32 = *(v77 + 8 * v10);
        if ((v32 & (1 << v7)) == 0)
        {
          goto LABEL_30;
        }

        v8 = v43;
        if (v43 != *(a1 + 36))
        {
          goto LABEL_31;
        }

        v33 = v32 & (-2 << (v7 & 0x3F));
        if (v33)
        {
          v7 = __clz(__rbit64(v33)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v3 = 0;
          v34 = v42;
        }

        else
        {
          v35 = v10 << 6;
          v36 = v10 + 1;
          v37 = (a1 + 72 + 8 * v10);
          v3 = 0;
          v34 = v42;
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = result;
              sub_230D52C58(v7, v43, 0);
              result = v40;
              v7 = __clz(__rbit64(v38)) + v35;
              goto LABEL_20;
            }
          }

          v41 = result;
          sub_230D52C58(v7, v43, 0);
          result = v41;
          v7 = v31;
        }

LABEL_20:
        if (v45 == v34)
        {
          return result;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v9 = v45 + 1;
          if (v7 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_230E1D028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v45 = MEMORY[0x277D84F90];
  sub_230D48E68(0, v4, 0);
  v5 = v45;
  v7 = v6 + 64;
  result = sub_230E694B0();
  if (result < 0 || result >= 1 << *(v6 + 32))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 36);
    v31 = v6 + 72;
    v32 = v4;
    v10 = 1;
    v34 = v9;
    v35 = v6;
    v33 = v6 + 64;
    while ((*(v7 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      if (v9 != *(v6 + 36))
      {
        goto LABEL_28;
      }

      v38 = 1 << result;
      v39 = result >> 6;
      v37 = v10;
      v46 = v5;
      v11 = (*(v6 + 48) + 16 * result);
      v12 = v11[1];
      v40 = result;
      v41 = *v11;
      v13 = (*(v6 + 56) + 48 * result);
      v14 = *v13;
      v15 = v13[1];
      v17 = v13[2];
      v16 = v13[3];
      v42 = v3;
      v5 = v13[4];
      v18 = v13[5];
      v43[0] = v41;
      v43[1] = v12;
      v43[2] = v14;
      v43[3] = v15;
      v43[4] = v17;
      v43[5] = v16;
      v43[6] = v5;
      v43[7] = v18;
      swift_bridgeObjectRetain_n();
      sub_230D0F898(v14, v15, v17, v16, v5);
      sub_230D0F898(v14, v15, v17, v16, v5);
      sub_230D2D9F8(v43, &qword_27DB5D790, &qword_230E7F088);
      v44[0] = v41;
      v44[1] = v12;
      v44[2] = v14;
      v44[3] = v15;
      v44[4] = v17;
      v44[5] = v16;
      v44[6] = v5;
      v44[7] = v18;
      v19 = a2();
      v3 = v42;
      if (v42)
      {
        sub_230D2D9F8(v44, &qword_27DB5D790, &qword_230E7F088);

        return v5;
      }

      v20 = v19;
      sub_230D2D9F8(v44, &qword_27DB5D790, &qword_230E7F088);
      v5 = v46;
      v45 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_230D48E68((v21 > 1), v22 + 1, 1);
        v5 = v45;
      }

      *(v5 + 16) = v22 + 1;
      *(v5 + 8 * v22 + 32) = v20;
      v9 = v34;
      v6 = v35;
      v23 = 1 << *(v35 + 32);
      result = v40;
      if (v40 >= v23)
      {
        goto LABEL_29;
      }

      v7 = v33;
      v24 = *(v33 + 8 * v39);
      if ((v24 & v38) == 0)
      {
        goto LABEL_30;
      }

      if (v34 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v25 = v24 & (-2 << (v40 & 0x3F));
      if (v25)
      {
        result = __clz(__rbit64(v25)) | v40 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v39 << 6;
        v27 = v39 + 1;
        v28 = (v31 + 8 * v39);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_230D52C58(v40, v34, 0);
            result = __clz(__rbit64(v29)) + v26;
            goto LABEL_20;
          }
        }

        sub_230D52C58(v40, v34, 0);
        result = v23;
      }

LABEL_20:
      if (v37 == v32)
      {
        return v5;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v10 = v37 + 1;
        if (result < 1 << *(v35 + 32))
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_230E1D398(uint64_t a1)
{
  v2 = sub_230E689B0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D778, &qword_230E7F070);
    v11 = sub_230E69520();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_230E1E050(&qword_27DB5D780, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = sub_230E68FE0();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_230E1E050(&qword_27DB5D788, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = sub_230E69020();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_230E1D6C0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_230E69610())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7B0, &qword_230E7F0A0);
      v3 = sub_230E69520();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_230E69610();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x23191DE50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_230E69420();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_230DC2854();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_230E69430();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_230E69420();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_230DC2854();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_230E69430();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_230E1D98C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    v2 = v19;
    if (v22 > 3u)
    {
      if (v22 > 5u)
      {
        if (v22 != 6)
        {
          return 0xD000000000000048;
        }

        sub_230E69540();

        v20 = 0xD000000000000021;
        if (v21)
        {
          v11 = v2;
        }

        else
        {
          v11 = 0xD00000000000001DLL;
        }

        if (v21)
        {
          v12 = v21;
        }

        else
        {
          v12 = 0x8000000230E84890;
        }

        MEMORY[0x23191DA00](v11, v12);

        sub_230DC29B0(v2, v21, 6u);
      }

      else if (v22 == 4)
      {

        sub_230E69540();

        v20 = 0xD000000000000020;
        if (v21)
        {
          v7 = v2;
        }

        else
        {
          v7 = 0xD000000000000024;
        }

        if (v21)
        {
          v8 = v21;
        }

        else
        {
          v8 = 0x8000000230E81F10;
        }

        MEMORY[0x23191DA00](v7, v8);

        sub_230DC29B0(v2, v21, 4u);
      }

      else
      {

        sub_230E69540();

        v20 = 0xD000000000000023;
        if (v21)
        {
          v15 = v2;
        }

        else
        {
          v15 = 0xD000000000000022;
        }

        if (v21)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0x8000000230E81EC0;
        }

        MEMORY[0x23191DA00](v15, v16);

        sub_230DC29B0(v2, v21, 5u);
      }
    }

    else if (v22 > 1u)
    {
      if (v22 == 2)
      {

        sub_230E69540();

        v20 = 0xD000000000000020;
        if (v21)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0xD00000000000002DLL;
        }

        if (v21)
        {
          v10 = v21;
        }

        else
        {
          v10 = 0x8000000230E81FC0;
        }

        MEMORY[0x23191DA00](v9, v10);

        sub_230DC29B0(v2, v21, 2u);
      }

      else
      {

        sub_230E69540();

        v20 = 0xD000000000000024;
        if (v21)
        {
          v17 = v2;
        }

        else
        {
          v17 = 0xD000000000000020;
        }

        if (v21)
        {
          v18 = v21;
        }

        else
        {
          v18 = 0x8000000230E81F70;
        }

        MEMORY[0x23191DA00](v17, v18);

        sub_230DC29B0(v2, v21, 3u);
      }
    }

    else if (v22)
    {

      sub_230E69540();

      v20 = 0xD000000000000018;
      if (v21)
      {
        v13 = v2;
      }

      else
      {
        v13 = 0xD00000000000001CLL;
      }

      if (v21)
      {
        v14 = v21;
      }

      else
      {
        v14 = 0x8000000230E82060;
      }

      MEMORY[0x23191DA00](v13, v14);

      sub_230DC29B0(v2, v21, 1u);
    }

    else
    {

      sub_230E69540();

      v20 = 0xD00000000000001DLL;
      if (v21)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0xD000000000000028;
      }

      if (v21)
      {
        v4 = v21;
      }

      else
      {
        v4 = 0x8000000230E820A0;
      }

      MEMORY[0x23191DA00](v3, v4);

      sub_230DC29B0(v2, v21, 0);
    }
  }

  else
  {
    swift_getErrorValue();
    swift_getDynamicType();
    v20 = sub_230E69A80();
    MEMORY[0x23191DA00](8250, 0xE200000000000000);
    swift_getErrorValue();
    v5 = sub_230E69960();
    MEMORY[0x23191DA00](v5);
  }

  return v20;
}

unint64_t sub_230E1DE8C()
{
  result = qword_27DB5D760;
  if (!qword_27DB5D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D760);
  }

  return result;
}

uint64_t sub_230E1DFC0(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return sub_230E059E8(a1, a2, v8, v4, v5);
}

unint64_t sub_230E1DFFC()
{
  result = qword_281566778;
  if (!qword_281566778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566778);
  }

  return result;
}

uint64_t sub_230E1E050(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_230E1E098()
{
  result = qword_27DB5D7A8;
  if (!qword_27DB5D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7A8);
  }

  return result;
}

uint64_t sub_230E1E1A4(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = a3[5];
  v10[4] = a3[4];
  v10[5] = v6;
  v11[0] = a3[6];
  *(v11 + 9) = *(a3 + 105);
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v8 = a3[3];
  v10[2] = a3[2];
  v10[3] = v8;
  return sub_230E053B0(a1, a2, v10, v4, v5);
}

uint64_t sub_230E1E1F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_230E1E274()
{
  result = qword_27DB5D7C8;
  if (!qword_27DB5D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7C8);
  }

  return result;
}

uint64_t sub_230E1E2D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 58) = a6;
  *(v7 + 57) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = a7;
  *(v7 + 56) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_230E1E304, 0, 0);
}

uint64_t sub_230E1E304()
{
  *(*(v0 + 16) + 24) = &type metadata for LogMetricsResponse;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_230E1E3CC;
  v2 = *(v0 + 58);
  v3 = *(v0 + 57);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 56);

  return sub_230D86654(v6, v7, v4, v3, v2, v5);
}

uint64_t sub_230E1E3CC()
{

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v1 = sub_230E1E4E4;
  }

  else
  {
    v1 = sub_230D8F184;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_230E1E4E4()
{
  v1 = *(v0 + 16);
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ServicesIntelligenceProvider.getConfiguration(requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E1E580, v2, 0);
}

uint64_t sub_230E1E580()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_230E1E990;
    v7 = *(v0 + 96);

    return (sub_230D7CC14)(v7, 18, v0 + 16);
  }

  else
  {
    *(v0 + 184) = 18;
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_230E1E744;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 184), 0, 0);
  }
}

uint64_t sub_230E1E744()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230E1E854, v1, 0);
}

uint64_t sub_230E1E854()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 16) = v1;
  v11 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_230E1E990;
  v13 = *(v0 + 96);

  return (sub_230D7CC14)(v13, 18, v0 + 16);
}

uint64_t sub_230E1E990()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ServicesIntelligenceProvider.refreshConfiguration(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230E1EAF0, v1, 0);
}

uint64_t sub_230E1EAF0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230E1EEF8;

    return (sub_230D78530)(19, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 19;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230E1ECB0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230E1ECB0()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230E1EDC0, v1, 0);
}

uint64_t sub_230E1EDC0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230E1EEF8;

  return (sub_230D78530)(19, v0 + 16);
}

uint64_t sub_230E1EEF8(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_230E1F040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  return MEMORY[0x2822009F8](sub_230E1F060, a2, 0);
}

uint64_t sub_230E1F060()
{
  sub_230E68950();
  if (sub_230DA3484())
  {
    v1 = *(v0 + 336);
    sub_230D1CDE0(v1, v0 + 160);
    sub_230D1CDE0(v1, v0 + 200);
    v2 = swift_task_alloc();
    *(v0 + 344) = v2;
    *v2 = v0;
    v2[1] = sub_230E1F1BC;
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);

    return sub_230D790A4(v0 + 64, 20, v3, v4);
  }

  else
  {
    sub_230E68950();
    **(v0 + 320) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_230E1F1BC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = sub_230E1F6CC;
  }

  else
  {
    v5 = *(v2 + 328);
    sub_230D1CE3C(*(v2 + 336));
    v4 = sub_230E1F2E0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E1F2E0()
{
  v1 = *(v0 + 336);
  sub_230D1CE3C(v1);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_230D1CDE0(v1, v0 + 240);
  sub_230D1CDE0(v1, v0 + 280);

  sub_230E1E0EC(v0 + 16, v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_230E1F3E0;

  return (sub_230D80950)(21);
}

uint64_t sub_230E1F3E0(char a1)
{
  v4 = *v2;
  *(v4 + 368) = v1;

  v5 = *(v4 + 336);
  v6 = *(v4 + 328);
  if (v1)
  {
    sub_230D1CE3C(v5);
    v7 = sub_230E1F660;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    sub_230D1CE3C(v5);
    v7 = sub_230E1F540;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E1F540()
{
  v1 = *(v0 + 376);
  sub_230D1CE3C(*(v0 + 336));
  sub_230D814C8(v0 + 16);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000035, 0x8000000230E84BB0);
  if (v1)
  {
    v2 = 0x6564656563637553;
  }

  else
  {
    v2 = 0x64656C696146;
  }

  if (v1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x23191DA00](v2, v3);

  sub_230E68950();

  **(v0 + 320) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230E1F660()
{
  sub_230D1CE3C(*(v0 + 336));
  sub_230D814C8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E1F6CC()
{
  v1 = *(v0 + 336);
  sub_230D1CE3C(v1);
  sub_230D1CE3C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230E1F73C(uint64_t a1)
{
  v1[49] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  v1[50] = swift_task_alloc();
  v2 = sub_230E68860();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v3 = sub_230E68910();
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E1F890, 0, 0);
}

uint64_t sub_230E1F890()
{
  v1 = sub_230E69030();
  v2 = sub_230E69030();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];
  v0[57] = v3;

  sub_230E68900();
  v4 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v0[58] = v4;
  [v4 setFormatOptions_];
  v5 = sub_230E688B0();
  v6 = [v4 stringFromDate_];

  if (!v6)
  {
    sub_230E69060();
    v6 = sub_230E69030();
  }

  v0[59] = v6;
  v7 = sub_230E69030();
  v8 = [v3 dictionaryForKey_];
  v0[60] = v8;

  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_230E1FAEC;
  v9 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C8, &qword_230E7F228);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_230E20654;
  v0[21] = &block_descriptor_1;
  v0[22] = v9;
  [v8 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230E1FAEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  if (v2)
  {

    v3 = sub_230E20468;
  }

  else
  {
    v3 = sub_230E1FC04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E1FC04()
{
  v1 = *(v0 + 368);
  v2 = sub_230E69030();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_230E694A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  *(v0 + 320) = v37;
  *(v0 + 336) = v38;
  if (!*(v0 + 344))
  {
    v36 = v1;

    v8 = &unk_27DB5D8D0;
    v9 = &qword_230E756A0;
    v10 = v0 + 320;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = v1;

    goto LABEL_11;
  }

  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 400);
  sub_230E68830();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v36 = v1;
    v7 = *(v0 + 400);

    v8 = &qword_27DB5D8C0;
    v9 = &qword_230E6C210;
    v10 = v7;
LABEL_9:
    sub_230D2D9F8(v10, v8, v9);
LABEL_11:
    v11 = *(v0 + 480);
    v13 = *(v0 + 456);
    v12 = *(v0 + 464);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 432);
    sub_230D07E18();
    swift_allocError();
    *v17 = 0xD00000000000001ELL;
    *(v17 + 8) = 0x8000000230E84DC0;
    *(v17 + 16) = 0;
    swift_willThrow();

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 472);
  v21 = *(v0 + 456);
  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);

  (*(v23 + 32))(v22, v25, v24);
  v26 = objc_allocWithZone(MEMORY[0x277CEE6D0]);
  v27 = sub_230E68800();
  v28 = [v26 initWithURL_];
  *(v0 + 496) = v28;

  v29 = sub_230E69030();
  [v28 addValue:v20 forHTTPHeaderField:v29];

  v30 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(v0 + 504) = v30;
  v31 = [v30 requestByEncodingRequest:v28 parameters:0];
  *(v0 + 512) = v31;
  v32 = [objc_opt_self() defaultSessionConfiguration];
  v33 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  *(v0 + 520) = v33;

  v34 = [v33 dataTaskPromiseWithRequestPromise_];
  *(v0 + 528) = v34;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 384;
  *(v0 + 88) = sub_230E200E4;
  v35 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8E0, &qword_230E7F230);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_230DC1810;
  *(v0 + 232) = &block_descriptor_100;
  *(v0 + 240) = v35;
  [v34 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_230E200E4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_230E20534;
  }

  else
  {
    v2 = sub_230E201F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E201F4()
{
  v1 = *(v0 + 384);

  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  v2 = [v1 data];
  v3 = sub_230E68890();
  v5 = v4;

  sub_230E1E098();
  sub_230E686A0();
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  v15 = *(v0 + 504);
  v16 = *(v0 + 496);
  v8 = *(v0 + 440);
  v18 = *(v0 + 456);
  v19 = *(v0 + 432);
  v9 = *(v0 + 416);
  v20 = *(v0 + 424);
  v21 = *(v0 + 448);
  v17 = *(v0 + 408);
  v10 = *(v0 + 392);

  sub_230D0F4A8(v3, v5);

  (*(v9 + 8))(v20, v17);
  (*(v8 + 8))(v21, v19);
  v12 = *(v0 + 288);
  v11 = *(v0 + 304);
  *v10 = *(v0 + 272);
  v10[1] = v12;
  v10[2] = v11;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_230E20468(uint64_t a1)
{
  v2 = v1[60];
  v4 = v1[57];
  v3 = v1[58];
  v6 = v1[55];
  v5 = v1[56];
  v7 = v1[54];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_230E20534(uint64_t a1)
{
  v2 = v1[65];
  v4 = v1[63];
  v3 = v1[64];
  v5 = v1[62];
  v6 = v1[58];
  v7 = v1[55];
  v15 = v1[56];
  v16 = v1[66];
  v14 = v1[54];
  v12 = v1[57];
  v13 = v1[53];
  v9 = v1[51];
  v8 = v1[52];
  swift_willThrow();

  (*(v8 + 8))(v13, v9);
  (*(v7 + 8))(v15, v14);

  v10 = v1[1];

  return v10();
}

uint64_t sub_230E20654(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_230E20734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1952) = a4;
  *(v4 + 1944) = a3;
  *(v4 + 1936) = a2;
  *(v4 + 1928) = a1;
  *(v4 + 2720) = *a4;
  *(v4 + 1960) = *(a4 + 8);
  *(v4 + 2721) = *(a4 + 24);
  *(v4 + 1976) = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  *(v4 + 1984) = swift_task_alloc();
  v6 = sub_230E68910();
  *(v4 + 1992) = v6;
  *(v4 + 2000) = *(v6 - 8);
  *(v4 + 2008) = swift_task_alloc();
  v7 = sub_230E68D80();
  *(v4 + 2016) = v7;
  *(v4 + 2024) = *(v7 - 8);
  *(v4 + 2032) = swift_task_alloc();
  *(v4 + 2040) = swift_task_alloc();
  *(v4 + 2048) = swift_task_alloc();
  *(v4 + 2056) = swift_task_alloc();
  *(v4 + 2064) = swift_task_alloc();
  *(v4 + 2072) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E20930, a2, 0);
}

uint64_t sub_230E20930()
{
  v1 = v0[243];
  sub_230E68D70();
  sub_230E1E0EC(v1, (v0 + 103));
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[243];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 40);
    sub_230D814C8(v5);
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][processConfiguration] Started with version %ld", v6, 0xCu);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  else
  {
    sub_230D814C8(v0[243]);
  }

  v7 = v0[259];
  v8 = v0[253];
  v9 = v0[252];
  v10 = v0[244];

  v11 = *(v8 + 8);
  v0[260] = v11;
  v0[261] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  sub_230D1CDE0(v10, (v0 + 222));
  sub_230D1CDE0(v10, (v0 + 212));

  v12 = swift_task_alloc();
  v0[262] = v12;
  *v12 = v0;
  v12[1] = sub_230E20B64;
  v13 = v0[244];
  v14 = v0[242];

  return sub_230D6F7D0(39, v13, v14, v14);
}

uint64_t sub_230E20B64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2104) = a1;
  *(v4 + 2112) = v1;

  v5 = *(v3 + 1952);
  v6 = *(v3 + 1936);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230E21884;
  }

  else
  {
    v7 = sub_230E20CE4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E20CE4()
{
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 2720);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 1176) = v4;
  *(v0 + 1184) = v3;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v6;
  *(v0 + 1208) = v1;
  sub_230D1CDE0(v5, v0 + 1056);
  v7 = swift_task_alloc();
  *(v0 + 2120) = v7;
  *v7 = v0;
  v7[1] = sub_230E20E18;
  v8 = *(v0 + 2104);

  return sub_230E45E9C(v8, v0 + 1176);
}

uint64_t sub_230E20E18(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 2128) = a1;
  *(v4 + 2723) = a2;
  *(v4 + 2136) = v2;

  if (v2)
  {
    v5 = *(v4 + 1936);
    sub_230D666B4(*(v4 + 1176), *(v4 + 1184), *(v4 + 1192), *(v4 + 1200), *(v4 + 1208));

    return MEMORY[0x2822009F8](sub_230E21628, v5, 0);
  }

  else
  {
    v6 = *(v4 + 1976);
    v7 = *(v4 + 1968);
    v8 = *(v4 + 1960);
    v9 = *(v4 + 2720);
    v10 = *(v4 + 1952);
    v11 = *(v4 + 2721) & 1 | (*(v4 + 2722) << 8);
    sub_230D666B4(*(v4 + 1176), *(v4 + 1184), *(v4 + 1192), *(v4 + 1200), *(v4 + 1208));
    *(v4 + 1096) = v9;
    *(v4 + 1104) = v8;
    *(v4 + 1112) = v7;
    *(v4 + 1120) = v11;
    *(v4 + 1128) = v6;
    sub_230D1CDE0(v10, v4 + 1136);
    v12 = swift_task_alloc();
    *(v4 + 2144) = v12;
    *v12 = v4;
    v12[1] = sub_230E2107C;
    v13 = *(v4 + 2104);

    return static SystemDatabase.getSystemStatus(using:requestContext:)(v4 + 2718, v13, v4 + 1096);
  }
}

uint64_t sub_230E2107C()
{
  v1 = *v0;
  v2 = (*v0)[242];

  sub_230D666B4(v1[137], v1[138], v1[139], v1[140], v1[141]);

  return MEMORY[0x2822009F8](sub_230E2122C, v2, 0);
}

uint64_t sub_230E2122C()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  if (sub_230E3AB40(*(v0 + 2128), *(v0 + 2723) & 1, *(v0 + 1944), *(v0 + 2718)))
  {
    if (*(v0 + 2723))
    {
      v1 = 0x8000000230E84BF0;
      v2 = 0xD000000000000016;
    }

    else
    {
      *(v0 + 1920) = *(v0 + 2128);
      v2 = sub_230E69890();
      v1 = v6;
    }

    v7 = *(v0 + 1944);
    sub_230E68D70();
    sub_230E1E0EC(v7, v0 + 968);

    v8 = sub_230E68D60();
    v9 = sub_230E693E0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 2080);
    v12 = *(v0 + 2064);
    v13 = *(v0 + 2016);
    v14 = *(v0 + 1944);
    if (v10)
    {
      v15 = swift_slowAlloc();
      v26 = v11;
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136315394;
      v17 = sub_230D7E620(v2, v1, v27);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v14 + 40);
      sub_230D814C8(v14);
      _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][processConfiguration] Updating from version %s to %ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x23191EAE0](v16, -1, -1);
      MEMORY[0x23191EAE0](v15, -1, -1);

      v26(v12, v13);
    }

    else
    {

      sub_230D814C8(v14);

      v11(v12, v13);
    }

    v18 = *(v0 + 1976);
    v19 = *(v0 + 1968);
    v20 = *(v0 + 1960);
    v21 = *(v0 + 2720);
    v22 = *(v0 + 1952);
    v23 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
    *(v0 + 2717) = 0;
    *(v0 + 1256) = v21;
    *(v0 + 1264) = v20;
    *(v0 + 1272) = v19;
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v18;
    sub_230D1CDE0(v22, v0 + 1296);
    v24 = swift_task_alloc();
    *(v0 + 2152) = v24;
    *v24 = v0;
    v24[1] = sub_230E21AE0;
    v25 = *(v0 + 2104);

    return sub_230E46438((v0 + 2717), v25, v0 + 1256);
  }

  else
  {
    v3 = *(v0 + 1928);

    *v3 = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_230E21628()
{

  v1 = v0[267];
  v0[286] = v1;
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v0[260];
  v10 = v0[254];
  v11 = v0[252];
  v12 = v0[244];

  v9(v10, v11);
  sub_230D1CDE0(v12, (v0 + 192));
  sub_230D1CDE0(v12, (v0 + 177));

  v13 = swift_task_alloc();
  v0[287] = v13;
  *v13 = v0;
  v13[1] = sub_230E241A4;
  v14 = v0[244];
  v15 = v0[242];

  return sub_230D6F7D0(39, v14, v15, v15);
}

uint64_t sub_230E21884()
{
  sub_230D1CE3C(v0[244]);
  v1 = v0[264];
  v0[286] = v1;
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v0[260];
  v10 = v0[254];
  v11 = v0[252];
  v12 = v0[244];

  v9(v10, v11);
  sub_230D1CDE0(v12, (v0 + 192));
  sub_230D1CDE0(v12, (v0 + 177));

  v13 = swift_task_alloc();
  v0[287] = v13;
  *v13 = v0;
  v13[1] = sub_230E241A4;
  v14 = v0[244];
  v15 = v0[242];

  return sub_230D6F7D0(39, v14, v15, v15);
}

uint64_t sub_230E21AE0()
{
  v2 = *v1;
  (*v1)[270] = v0;

  v3 = v2[242];
  sub_230D666B4(v2[157], v2[158], v2[159], v2[160], v2[161]);
  if (v0)
  {
    v4 = sub_230E2209C;
  }

  else
  {
    v4 = sub_230E21C60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E21C60()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  sub_230D1CDE0(v1, v0 + 1376);
  sub_230E1E0EC(v2, v0 + 920);
  sub_230D1CDE0(v1, v0 + 1456);

  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 1496);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1952);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E806D0, v27);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v5 + 8), *(v5 + 16), v27);
    *(v6 + 22) = 2080;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  *(v0 + 1880) = *(*(v0 + 1952) + 24);
  if ((*(v0 + 1880) & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(v0 + 1888);
  v11 = RequestType.rawValue.getter();
  v13 = v12;
  sub_230D1CE90(v0 + 1880, v0 + 1896);
  LOBYTE(v11) = sub_230D33FDC(v11, v13, v10);

  if ((v11 & 1) == 0)
  {
    v14 = *(v0 + 1881);
    sub_230D1F9CC(v0 + 1880);
    if (v14 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = swift_task_alloc();
    *(v0 + 2176) = v15;
    *v15 = v0;
    v16 = sub_230E222F8;
    goto LABEL_12;
  }

  sub_230D1F9CC(v0 + 1880);
LABEL_8:
  sub_230E68950();
  *(v0 + 2168) = CFAbsoluteTimeGetCurrent();
  *(v0 + 2336) = 0u;
  *(v0 + 2352) = 0u;
  *(v0 + 2368) = 0u;
  *(v0 + 2384) = 0u;
  *(v0 + 2400) = 0u;
  *(v0 + 2416) = 0u;
  *(v0 + 2432) = 0u;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = 0u;
  *(v0 + 2480) = 0u;
  *(v0 + 2496) = 0u;
  *(v0 + 2512) = 0u;
  *(v0 + 2528) = 0u;
  *(v0 + 2544) = 0u;
  *(v0 + 2560) = 0u;
  *(v0 + 2576) = 0u;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = 0u;
  *(v0 + 2656) = 0u;
  *(v0 + 2672) = 0u;
  *(v0 + 2688) = 0u;
  *(v0 + 2704) = 0;
  *(v0 + 2708) = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 2336), (v0 + 2708));
  *(v0 + 2712) = v17;
  v18 = 0.0;
  if (!v17)
  {
    v19 = *(v0 + 2384);
    v20 = *(v0 + 2456);
    v21 = __CFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
  }

  *(v0 + 2192) = v18;
  *(v0 + 1912) = 0;
  v15 = swift_task_alloc();
  *(v0 + 2200) = v15;
  *v15 = v0;
  v16 = sub_230E22450;
LABEL_12:
  v15[1] = v16;
  v23 = *(v0 + 1952);
  v24 = *(v0 + 1944);
  v25 = *(v0 + 1936);

  return sub_230E27BE0(v0 + 568, v25, v23, v24);
}

uint64_t sub_230E2209C()
{

  v1 = v0[270];
  v0[286] = v1;
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v0[260];
  v10 = v0[254];
  v11 = v0[252];
  v12 = v0[244];

  v9(v10, v11);
  sub_230D1CDE0(v12, (v0 + 192));
  sub_230D1CDE0(v12, (v0 + 177));

  v13 = swift_task_alloc();
  v0[287] = v13;
  *v13 = v0;
  v13[1] = sub_230E241A4;
  v14 = v0[244];
  v15 = v0[242];

  return sub_230D6F7D0(39, v14, v15, v15);
}

uint64_t sub_230E222F8()
{
  v2 = *v1;
  *(*v1 + 2184) = v0;

  v3 = *(v2 + 1936);
  if (v0)
  {
    v4 = sub_230E22D54;
  }

  else
  {
    v4 = sub_230E22BD0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E22450()
{
  v2 = *v1;
  *(*v1 + 2208) = v0;

  v3 = *(v2 + 1936);
  if (v0)
  {
    v4 = sub_230E22768;
  }

  else
  {
    v4 = sub_230E225A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E225A8()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2016);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1944);
  sub_230D3B2D4(23, *(v0 + 2192), *(v0 + 2712) != 0, v4, (v0 + 1912), *(v0 + 2168));
  v1(v2, v3);

  sub_230D1CE3C(v4);
  sub_230D814C8(v5);
  v6 = *(v0 + 1952);
  sub_230D1CE3C(v6);
  v7 = *(v0 + 648);
  *(v0 + 504) = *(v0 + 632);
  *(v0 + 520) = v7;
  v8 = *(v0 + 680);
  *(v0 + 536) = *(v0 + 664);
  *(v0 + 552) = v8;
  v9 = *(v0 + 584);
  *(v0 + 440) = *(v0 + 568);
  *(v0 + 456) = v9;
  v10 = *(v0 + 616);
  *(v0 + 472) = *(v0 + 600);
  *(v0 + 488) = v10;
  sub_230D1CDE0(v6, v0 + 1576);
  sub_230D1CDE0(v6, v0 + 1616);

  v11 = swift_task_alloc();
  *(v0 + 2216) = v11;
  *v11 = v0;
  v11[1] = sub_230E22A78;
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);

  return sub_230D79AE0(v0 + 1856, 25, v12, v13, v13, v12);
}

uint64_t sub_230E22768(uint64_t a1)
{
  v2 = *(v1 + 2208);
  v3 = *(v1 + 2192);
  v4 = *(v1 + 2168);
  v5 = *(v1 + 2080);
  v6 = *(v1 + 2056);
  v7 = *(v1 + 2016);
  v8 = *(v1 + 1952);
  v27 = *(v1 + 1944);
  v9 = *(v1 + 2712) != 0;
  *(v1 + 1912) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D3B2D4(23, v3, v9, v8, (v1 + 1912), v4);
  MEMORY[0x23191E910](v2);
  v5(v6, v7);

  sub_230D1CE3C(v8);
  sub_230D814C8(v27);
  v11 = *(v1 + 2208);
  sub_230D1CE3C(*(v1 + 1952));

  *(v1 + 2288) = v11;
  sub_230E68D70();
  v12 = v11;
  v13 = sub_230E68D60();
  v14 = sub_230E69400();
  MEMORY[0x23191E910](v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_230D02000, v13, v14, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v15, 0xCu);
    sub_230D2D9F8(v16, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v16, -1, -1);
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  v19 = *(v1 + 2080);
  v20 = *(v1 + 2032);
  v21 = *(v1 + 2016);
  v22 = *(v1 + 1952);

  v19(v20, v21);
  sub_230D1CDE0(v22, v1 + 1536);
  sub_230D1CDE0(v22, v1 + 1416);

  v23 = swift_task_alloc();
  *(v1 + 2296) = v23;
  *v23 = v1;
  v23[1] = sub_230E241A4;
  v24 = *(v1 + 1952);
  v25 = *(v1 + 1936);

  return sub_230D6F7D0(39, v24, v25, v25);
}

uint64_t sub_230E22A78()
{
  v2 = *v1;
  *(*v1 + 2224) = v0;

  v3 = *(v2 + 1936);
  if (v0)
  {
    v4 = sub_230E22FF4;
  }

  else
  {
    v4 = sub_230E23268;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E22BD0()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  (*(v0 + 2080))(*(v0 + 2056), *(v0 + 2016));

  sub_230D1CE3C(v1);
  sub_230D814C8(v2);
  v3 = *(v0 + 1952);
  sub_230D1CE3C(v3);
  v4 = *(v0 + 648);
  *(v0 + 504) = *(v0 + 632);
  *(v0 + 520) = v4;
  v5 = *(v0 + 680);
  *(v0 + 536) = *(v0 + 664);
  *(v0 + 552) = v5;
  v6 = *(v0 + 584);
  *(v0 + 440) = *(v0 + 568);
  *(v0 + 456) = v6;
  v7 = *(v0 + 616);
  *(v0 + 472) = *(v0 + 600);
  *(v0 + 488) = v7;
  sub_230D1CDE0(v3, v0 + 1576);
  sub_230D1CDE0(v3, v0 + 1616);

  v8 = swift_task_alloc();
  *(v0 + 2216) = v8;
  *v8 = v0;
  v8[1] = sub_230E22A78;
  v9 = *(v0 + 1952);
  v10 = *(v0 + 1936);

  return sub_230D79AE0(v0 + 1856, 25, v9, v10, v10, v9);
}

uint64_t sub_230E22D54()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  (*(v0 + 2080))(*(v0 + 2056), *(v0 + 2016));

  sub_230D1CE3C(v1);
  sub_230D814C8(v2);
  v3 = *(v0 + 2184);
  sub_230D1CE3C(*(v0 + 1952));

  *(v0 + 2288) = v3;
  sub_230E68D70();
  v4 = v3;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = *(v0 + 2080);
  v12 = *(v0 + 2032);
  v13 = *(v0 + 2016);
  v14 = *(v0 + 1952);

  v11(v12, v13);
  sub_230D1CDE0(v14, v0 + 1536);
  sub_230D1CDE0(v14, v0 + 1416);

  v15 = swift_task_alloc();
  *(v0 + 2296) = v15;
  *v15 = v0;
  v15[1] = sub_230E241A4;
  v16 = *(v0 + 1952);
  v17 = *(v0 + 1936);

  return sub_230D6F7D0(39, v16, v17, v17);
}

uint64_t sub_230E22FF4()
{
  v1 = v0[244];
  sub_230E3B3FC((v0 + 55));
  sub_230D1CE3C(v1);

  v2 = v0[278];
  v0[286] = v2;
  sub_230E68D70();
  v3 = v2;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v0[260];
  v11 = v0[254];
  v12 = v0[252];
  v13 = v0[244];

  v10(v11, v12);
  sub_230D1CDE0(v13, (v0 + 192));
  sub_230D1CDE0(v13, (v0 + 177));

  v14 = swift_task_alloc();
  v0[287] = v14;
  *v14 = v0;
  v14[1] = sub_230E241A4;
  v15 = v0[244];
  v16 = v0[242];

  return sub_230D6F7D0(39, v15, v16, v16);
}

uint64_t sub_230E23268()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  sub_230D1CE3C(v1);
  *(v0 + 2232) = *(v0 + 1856);
  *(v0 + 2248) = *(v0 + 1872);
  sub_230D1CDE0(v1, v0 + 1656);
  sub_230E1E0EC(v2, v0 + 872);
  sub_230D1CDE0(v1, v0 + 1736);

  v3 = swift_task_alloc();
  *(v0 + 2256) = v3;
  *v3 = v0;
  v3[1] = sub_230E233AC;
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1944);
  v6 = *(v0 + 1936);

  return sub_230D80070(22, v4, v6, v6, v4, v5);
}

uint64_t sub_230E233AC(char a1)
{
  v2 = *(*v1 + 1952);
  v3 = *(*v1 + 1944);
  v4 = *(*v1 + 1936);
  *(*v1 + 2724) = a1;

  sub_230D814C8(v3);
  sub_230D1CE3C(v2);

  return MEMORY[0x2822009F8](sub_230E23538, v4, 0);
}

uint64_t sub_230E23538()
{
  v58 = v0;
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2724);
  sub_230D1CE3C(*(v0 + 1952));
  if (v1 == 1)
  {
    v39 = sub_230D0F35C(MEMORY[0x277D84F90]);
    v40 = 0;
    v41 = 1;
  }

  else
  {
    sub_230D0D224();
    v2 = swift_allocError();
    *v3 = 0xD00000000000001BLL;
    *(v3 + 8) = 0x8000000230E84C10;
    *(v3 + 16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D800, &unk_230E7F8F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_230E6B3B0;
    *(v4 + 32) = 0x65726F74735F766BLL;
    *(v4 + 40) = 0xE800000000000000;
    *(v4 + 48) = v2;
    v5 = v2;
    v6 = sub_230D0F35C(v4);
    swift_setDeallocating();
    sub_230D2D9F8(v4 + 32, &qword_27DB5D808, &qword_230E7F188);
    swift_deallocClassInstance();
    MEMORY[0x23191E910](v2);
    sub_230E68D70();
    v7 = sub_230E68D60();
    v8 = sub_230E69400();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 2080);
    v11 = *(v0 + 2048);
    v12 = *(v0 + 2016);
    v39 = v6;
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][processConfiguration] KV store update failed, but continuing (KV is convenience only)", v13, 2u);
      MEMORY[0x23191EAE0](v13, -1, -1);
    }

    v10(v11, v12);
    v40 = 1;
    v41 = 0;
  }

  v36 = *(v0 + 2232);
  v47 = *(v0 + 1976);
  v45 = *(v0 + 1968);
  v44 = *(v0 + 1960);
  v43 = *(v0 + 2720);
  v46 = *(v0 + 1952);
  v37 = *(v0 + 2248);
  v38 = *(v0 + 1944);
  v42 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  v14 = *(v0 + 440);
  *(v0 + 2725) = v14;
  v16 = *(v0 + 448);
  v15 = *(v0 + 456);
  v17 = *(v0 + 464);
  v18 = *(v0 + 472);
  v19 = *(v0 + 488);
  v34 = *(v0 + 496);
  v35 = *(v0 + 480);
  v33 = *(v0 + 504);
  v20 = *(v0 + 512);

  sub_230E3B3FC(v0 + 440);
  *(v0 + 312) = v14;
  *(v0 + 320) = v16;
  *(v0 + 328) = v15;
  *(v0 + 336) = v17;
  *(v0 + 344) = v18;
  *(v0 + 352) = v35;
  *(v0 + 360) = v19;
  *(v0 + 368) = v34;
  *(v0 + 376) = v33;
  *(v0 + 384) = v20;
  *(v0 + 392) = v36;
  *(v0 + 408) = v37;
  *(v0 + 416) = v41;
  *(v0 + 424) = v40;
  *(v0 + 432) = v39;
  v21 = *(v0 + 392);
  v53 = *(v0 + 376);
  v54 = v21;
  v22 = *(v0 + 424);
  v55 = *(v0 + 408);
  v56 = v22;
  v23 = *(v0 + 328);
  v49 = *(v0 + 312);
  v50 = v23;
  v24 = *(v0 + 360);
  v51 = *(v0 + 344);
  v52 = v24;
  sub_230E651C4(&v48);
  v25 = v48;
  *(v0 + 2726) = v48;
  v26 = *(v38 + 40);
  *(v0 + 2264) = v26;
  v27 = *(v0 + 392);
  *(v0 + 760) = *(v0 + 376);
  *(v0 + 776) = v27;
  v28 = *(v0 + 424);
  *(v0 + 792) = *(v0 + 408);
  *(v0 + 808) = v28;
  v29 = *(v0 + 328);
  *(v0 + 696) = *(v0 + 312);
  *(v0 + 712) = v29;
  v30 = *(v0 + 360);
  *(v0 + 728) = *(v0 + 344);
  *(v0 + 744) = v30;
  *(v0 + 2716) = v25;
  *(v0 + 1816) = v43;
  *(v0 + 1824) = v44;
  *(v0 + 1832) = v45;
  *(v0 + 1840) = v42;
  *(v0 + 1848) = v47;
  sub_230D1CDE0(v46, v0 + 1016);
  v31 = swift_task_alloc();
  *(v0 + 2272) = v31;
  *v31 = v0;
  v31[1] = sub_230E23978;

  return sub_230E25104(v26, (v0 + 696), (v0 + 2716), (v0 + 1816));
}

uint64_t sub_230E23978()
{
  v2 = *v1;
  (*v1)[285] = v0;

  v3 = v2[242];
  sub_230D666B4(v2[227], v2[228], v2[229], v2[230], v2[231]);
  if (v0)
  {
    v4 = sub_230E2492C;
  }

  else
  {
    v4 = sub_230E23AF8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E23AF8()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2008);
  v3 = *(v0 + 2000);
  v49 = *(v0 + 1984);
  v4 = *(v0 + 1952);
  v47 = *(v0 + 1992);
  v48 = *(v0 + 1936);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D810, &qword_230E7F198);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_230E6B3B0;
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = 0x8000000230E84C30;
  sub_230E65328(v1, v0 + 16);
  v6 = *(v0 + 160);
  *(v5 + 176) = *(v0 + 144);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 176);
  v7 = *(v0 + 96);
  *(v5 + 112) = *(v0 + 80);
  *(v5 + 128) = v7;
  v8 = *(v0 + 128);
  *(v5 + 144) = *(v0 + 112);
  *(v5 + 160) = v8;
  v9 = *(v0 + 32);
  *(v5 + 48) = *(v0 + 16);
  *(v5 + 64) = v9;
  v10 = *(v0 + 64);
  *(v5 + 80) = *(v0 + 48);
  *(v5 + 96) = v10;
  v11 = sub_230D0F540(v5);
  swift_setDeallocating();
  sub_230D2D9F8(v5 + 32, &qword_27DB5A968, &qword_230E6BA08);
  swift_deallocClassInstance();
  sub_230E68900();
  sub_230E688D0();
  v13 = v12;
  (*(v3 + 8))(v2, v47);
  v15 = *(v4 + 8);
  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D820, &qword_230E7F1A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_230E6B3B0;
  *(v16 + 32) = v11;
  *(v16 + 40) = 0xD000000000000011;
  *(v16 + 48) = 0x8000000230E84C30;
  *(v16 + 56) = 1;
  *(v16 + 64) = v13 * 1000.0;
  *(v16 + 72) = v15;
  *(v16 + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_230E6B3B0;
  v18 = swift_allocObject();
  *(v18 + 16) = v48;
  *(v18 + 24) = 0;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_230E7F1B0;
  *(v19 + 24) = v18;
  *(v17 + 32) = &unk_230E6E478;
  *(v17 + 40) = v19;
  v20 = sub_230E69310();
  (*(*(v20 - 8) + 56))(v49, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v17;

  sub_230D8F204(0, 0, v49, &unk_230E73420, v21);

  sub_230E68D70();
  sub_230E3B530(v0 + 312, v0 + 184);
  v22 = sub_230E68D60();
  v23 = sub_230E693E0();
  sub_230E3B3FC(v0 + 312);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 2726);
    v25 = *(v0 + 2725);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53[0] = v27;
    *v26 = 136315650;
    if (v25)
    {
      v28 = 0x6574656C706D6F43;
    }

    else
    {
      v28 = 0x64656C696146;
    }

    if (v25)
    {
      v29 = 0xE900000000000064;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = sub_230D7E620(v28, v29, v53);

    v31 = 0xEC000000676E697ALL;
    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v32 = 0x696C616974696E69;
    v33 = 0xE800000000000000;
    v34 = 0x6465646172676564;
    if (v24 != 2)
    {
      v34 = 0x726F727265;
      v33 = 0xE500000000000000;
    }

    if (v24)
    {
      v32 = 0x7964616572;
      v31 = 0xE500000000000000;
    }

    if (v24 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v34;
    }

    if (v24 <= 1)
    {
      v36 = v31;
    }

    else
    {
      v36 = v33;
    }

    v52 = *(v0 + 2080);
    v50 = *(v0 + 2016);
    v51 = *(v0 + 2040);
    v37 = sub_230D7E620(v35, v36, v53);

    *(v26 + 14) = v37;
    *(v26 + 22) = 2080;
    v38 = sub_230E657B4();
    v40 = v39;
    sub_230E3B3FC(v0 + 312);
    v41 = sub_230D7E620(v38, v40, v53);

    *(v26 + 24) = v41;
    _os_log_impl(&dword_230D02000, v22, v23, "[ServicesIntelligenceProvider][processConfiguration] %s - Status: %s, Details: %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v27, -1, -1);
    MEMORY[0x23191EAE0](v26, -1, -1);

    v52(v51, v50);
  }

  else
  {
    v42 = *(v0 + 2080);
    v43 = *(v0 + 2040);
    v44 = *(v0 + 2016);

    sub_230E3B3FC(v0 + 312);

    v42(v43, v44);
  }

  **(v0 + 1928) = *(v0 + 2725);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_230E241A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2304) = a1;
  *(v4 + 2312) = v1;

  v5 = *(v3 + 1952);
  v6 = *(v3 + 1936);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230E24814;
  }

  else
  {
    v7 = sub_230E24324;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E24324()
{
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 2720);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 2719) = 3;
  *(v0 + 1336) = v4;
  *(v0 + 1344) = v3;
  *(v0 + 1352) = v2;
  *(v0 + 1360) = v6;
  *(v0 + 1368) = v1;
  sub_230D1CDE0(v5, v0 + 1216);
  v7 = swift_task_alloc();
  *(v0 + 2320) = v7;
  *v7 = v0;
  v7[1] = sub_230E24464;
  v8 = *(v0 + 2304);

  return sub_230E46438((v0 + 2719), v8, v0 + 1336);
}

uint64_t sub_230E24464()
{
  v2 = *v1;
  (*v1)[291] = v0;

  v3 = v2[242];
  sub_230D666B4(v2[167], v2[168], v2[169], v2[170], v2[171]);
  if (v0)
  {
    v4 = sub_230E246FC;
  }

  else
  {
    v4 = sub_230E245E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E245E4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_230E246FC()
{
  MEMORY[0x23191E910](*(v0 + 2288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E24814()
{
  v1 = v0[286];
  sub_230D1CE3C(v0[244]);
  MEMORY[0x23191E910](v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230E2492C()
{

  sub_230E3B3FC((v0 + 39));
  v1 = v0[285];
  v0[286] = v1;
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v0[260];
  v10 = v0[254];
  v11 = v0[252];
  v12 = v0[244];

  v9(v10, v11);
  sub_230D1CDE0(v12, (v0 + 192));
  sub_230D1CDE0(v12, (v0 + 177));

  v13 = swift_task_alloc();
  v0[287] = v13;
  *v13 = v0;
  v13[1] = sub_230E241A4;
  v14 = v0[244];
  v15 = v0[242];

  return sub_230D6F7D0(39, v14, v15, v15);
}

uint64_t ServicesIntelligenceProvider.createDomainDatabases(requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E24BC0, v2, 0);
}

uint64_t sub_230E24BC0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_230E24FD0;
    v7 = *(v0 + 96);

    return (sub_230D79AE0)(v7, 25, v0 + 16);
  }

  else
  {
    *(v0 + 184) = 25;
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_230E24D84;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 184), 0, 0);
  }
}

uint64_t sub_230E24D84()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230E24E94, v1, 0);
}

uint64_t sub_230E24E94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 16) = v1;
  v11 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_230E24FD0;
  v13 = *(v0 + 96);

  return (sub_230D79AE0)(v13, 25, v0 + 16);
}

uint64_t sub_230E24FD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230E25104(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t *a4)
{
  *(v5 + 432) = a1;
  *(v5 + 440) = v4;
  v10 = sub_230E68D80();
  *(v5 + 448) = v10;
  *(v5 + 456) = *(v10 - 8);
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v12;
  v13 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v13;
  v14 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v14;
  v15 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v15;
  *(v5 + 633) = *a3;
  v16 = *a4;
  v17 = a4[1];
  *(v5 + 504) = v11;
  *(v5 + 512) = v16;
  *(v5 + 520) = v17;
  v18 = a4[2];
  v19 = a4[3];
  *(v5 + 528) = v18;
  *(v5 + 536) = v19;
  v20 = a4[4];
  *(v5 + 544) = v20;
  if (a1 < 1)
  {
    *(v5 + 272) = v16;
    *(v5 + 280) = v17;
    *(v5 + 288) = v18;
    *(v5 + 296) = v19;
    *(v5 + 304) = v20;
    v23 = swift_task_alloc();
    *(v5 + 592) = v23;
    *v23 = v5;
    v23[1] = sub_230E25778;
    v22 = v5 + 272;
  }

  else
  {
    *(v5 + 352) = v16;
    *(v5 + 360) = v17;
    *(v5 + 368) = v18;
    *(v5 + 376) = v19;
    *(v5 + 384) = v20;
    v21 = swift_task_alloc();
    *(v5 + 552) = v21;
    *v21 = v5;
    v21[1] = sub_230E25308;
    v22 = v5 + 352;
  }

  return sub_230D05310(v22);
}

uint64_t sub_230E25308(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  if (v1)
  {
    v6 = *(v4 + 440);

    return MEMORY[0x2822009F8](sub_230E26194, v6, 0);
  }

  else
  {
    v7 = *(v4 + 544);
    v8 = *(v4 + 528);
    *(v4 + 392) = *(v4 + 512);
    *(v4 + 408) = v8;
    *(v4 + 424) = v7;
    v9 = swift_task_alloc();
    *(v4 + 576) = v9;
    *v9 = v5;
    v9[1] = sub_230E254B8;
    v10 = *(v4 + 432);

    return static SystemDatabase.updateConfigurationVersion(_:using:requestContext:)(v10, a1, v4 + 392);
  }
}

uint64_t sub_230E254B8()
{
  v2 = *(*v1 + 440);
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_230E2639C;
  }

  else
  {
    v3 = sub_230E255E0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_230E255E0()
{
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 432);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Successfully updated configuration version to %ld", v4, 0xCu);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = *(v0 + 504);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  (*(v7 + 8))(v5, v6);
  v8 = *(v0 + 544);
  v9 = *(v0 + 528);
  *(v0 + 272) = *(v0 + 512);
  *(v0 + 288) = v9;
  *(v0 + 304) = v8;
  v10 = swift_task_alloc();
  *(v0 + 592) = v10;
  *v10 = v0;
  v10[1] = sub_230E25778;

  return sub_230D05310(v0 + 272);
}

uint64_t sub_230E25778(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 600) = a1;
  *(v4 + 608) = v1;

  if (v1)
  {
    v6 = *(v4 + 440);

    return MEMORY[0x2822009F8](sub_230E265AC, v6, 0);
  }

  else
  {
    v7 = *(v4 + 544);
    *(v4 + 632) = *(v4 + 633);
    v8 = *(v4 + 528);
    *(v4 + 312) = *(v4 + 512);
    *(v4 + 328) = v8;
    *(v4 + 344) = v7;
    v9 = swift_task_alloc();
    *(v4 + 616) = v9;
    *v9 = v5;
    v9[1] = sub_230E25944;

    return sub_230E46438((v4 + 632), a1, v4 + 312);
  }
}

uint64_t sub_230E25944()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_230E25F84;
  }

  else
  {
    v4 = sub_230E25A5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E25A5C()
{
  v46 = v0;
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 633);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v45[0] = v5;
    v6 = 0xEC000000676E697ALL;
    *v4 = 136315138;
    v7 = 0x696C616974696E69;
    v8 = 0xE800000000000000;
    v9 = 0x6465646172676564;
    if (v3 != 2)
    {
      v9 = 0x726F727265;
      v8 = 0xE500000000000000;
    }

    if (v3)
    {
      v7 = 0x7964616572;
      v6 = 0xE500000000000000;
    }

    if (v3 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v42 = *(v0 + 496);
    v12 = *(v0 + 448);
    v13 = *(v0 + 456);
    v14 = sub_230D7E620(v10, v11, v45);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] System status set to: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);

    v15 = *(v13 + 8);
    v15(v42, v12);
  }

  else
  {
    v16 = *(v0 + 496);
    v17 = *(v0 + 448);
    v18 = *(v0 + 456);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v19 = *(v0 + 128);
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || v19 >= 1)
  {
    v43 = v15;
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v20 = sub_230E68D60();
    v21 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 488);
    v24 = *(v0 + 448);
    if (v22)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      v27 = *(v0 + 96);
      v45[4] = *(v0 + 80);
      v45[5] = v27;
      v28 = *(v0 + 128);
      v45[6] = *(v0 + 112);
      v45[7] = v28;
      v29 = *(v0 + 32);
      v45[0] = *(v0 + 16);
      v45[1] = v29;
      v30 = *(v0 + 64);
      v45[2] = *(v0 + 48);
      v45[3] = v30;
      v31 = sub_230E657B4();
      v33 = v19;
      v34 = sub_230D7E620(v31, v32, &v44);

      *(v25 + 4) = v34;
      v19 = v33;
      _os_log_impl(&dword_230D02000, v20, v21, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Component failures detected: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x23191EAE0](v26, -1, -1);
      MEMORY[0x23191EAE0](v25, -1, -1);
    }

    else
    {
    }

    v43(v23, v24);
    if (v19 >= 1)
    {
      sub_230E68D70();
      v35 = sub_230E68D60();
      v36 = sub_230E69400();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_230D02000, v35, v36, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] KV store sync failed - debug functionality may be impacted", v37, 2u);
        MEMORY[0x23191EAE0](v37, -1, -1);
      }

      v38 = *(v0 + 480);
      v39 = *(v0 + 448);

      v43(v38, v39);
    }
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_230E25F84()
{

  v1 = v0[78];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v15 = v0[58];
  if (v5)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update system status: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v3;
  v12 = v0[56];
  v11 = v0[57];

  (*(v11 + 8))(v15, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E26194()
{
  v1 = v0[71];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v15 = v0[59];
  if (v5)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update configuration version: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v3;
  v11 = v0[57];
  v12 = v0[56];

  (*(v11 + 8))(v15, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E2639C()
{

  v1 = v0[73];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v15 = v0[59];
  if (v5)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update configuration version: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v3;
  v11 = v0[57];
  v12 = v0[56];

  (*(v11 + 8))(v15, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E265AC()
{
  v1 = v0[76];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v15 = v0[58];
  if (v5)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update system status: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v3;
  v12 = v0[56];
  v11 = v0[57];

  (*(v11 + 8))(v15, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E267B4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 448) = a3;
  *(v4 + 456) = a4;
  *(v4 + 432) = a1;
  *(v4 + 440) = a2;
  v6 = a4[1];
  *(v4 + 464) = *a4;
  *(v4 + 480) = v6;
  *(v4 + 496) = a4[2];
  v7 = sub_230E68D80();
  *(v4 + 512) = v7;
  *(v4 + 520) = *(v7 - 8);
  *(v4 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E268B8, a2, 0);
}

uint64_t sub_230E268B8()
{
  v1 = v0[56];
  sub_230E68950();
  sub_230D1CDE0(v1, (v0 + 20));
  sub_230D1CDE0(v1, (v0 + 25));

  v2 = swift_task_alloc();
  v0[67] = v2;
  *v2 = v0;
  v2[1] = sub_230E269E8;
  v4 = v0[55];
  v3 = v0[56];

  return sub_230D72678(15, v3, v4, 0, v4);
}

uint64_t sub_230E269E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  v5 = *(v3 + 448);
  v6 = *(v3 + 440);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230E26B68;
  }

  else
  {
    v7 = sub_230E26CA8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E26B68()
{
  sub_230D1CE3C(*(v0 + 448));
  v1 = *(v0 + 552);
  sub_230E69540();
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000003DLL, 0x8000000230E84C90);
  *(v0 + 416) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  **(v0 + 432) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230E26CA8()
{
  v1 = *(v0 + 544);
  sub_230D1CE3C(*(v0 + 448));

  return MEMORY[0x2822009F8](sub_230E26D40, v1, 0);
}

uint64_t sub_230E26D40()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v31 = *(v0 + 464);
  v32 = *(v0 + 480);
  v5 = sub_230D0DA94(MEMORY[0x277D84F90]);
  *(v0 + 560) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D898, &qword_230E7F1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6769666E6F635F5FLL;
  *(inited + 40) = 0xEF6E6F6974617275;
  *(inited + 48) = v31;
  *(inited + 64) = v32;
  *(inited + 80) = v2;
  *(inited + 88) = v1;
  sub_230E1E0EC(v3, v0 + 112);
  v7 = sub_230D0F748(inited);
  *(v0 + 568) = v7;
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5D8A0, &qword_230E7F1C8);
  sub_230D1CDE0(v4, v0 + 240);

  sub_230E68D70();
  sub_230D1CDE0(v4, v0 + 280);
  v8 = sub_230E68D60();
  v9 = sub_230E693E0();
  sub_230D1CE3C(v4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 448);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_230D7E620(*(v10 + 8), *(v10 + 16), v33);
    *(v11 + 22) = 2080;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v11 + 24) = v14;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);
  }

  *(v0 + 368) = *(*(v0 + 448) + 24);
  if ((*(v0 + 368) & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = *(v0 + 376);
  v16 = RequestType.rawValue.getter();
  v18 = v17;
  sub_230D1CE90(v0 + 368, v0 + 400);
  LOBYTE(v16) = sub_230D33FDC(v16, v18, v15);

  if ((v16 & 1) == 0)
  {
    v19 = *(v0 + 369);
    sub_230D1F9CC(v0 + 368);
    if (v19 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v20 = swift_task_alloc();
    *(v0 + 584) = v20;
    *v20 = v0;
    v21 = sub_230E27230;
    goto LABEL_12;
  }

  sub_230D1F9CC(v0 + 368);
LABEL_8:
  sub_230E68950();
  *(v0 + 576) = CFAbsoluteTimeGetCurrent();
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 0;
  *(v0 + 1012) = 93;
  v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 640), (v0 + 1012));
  *(v0 + 1016) = v22;
  v23 = 0.0;
  if (!v22)
  {
    v24 = *(v0 + 688);
    v25 = *(v0 + 760);
    v26 = __CFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      __break(1u);
    }

    v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
  }

  *(v0 + 600) = v23;
  *(v0 + 424) = 0;
  v20 = swift_task_alloc();
  *(v0 + 608) = v20;
  *v20 = v0;
  v21 = sub_230E27390;
LABEL_12:
  v20[1] = v21;
  v28 = *(v0 + 544);
  v29 = *(v0 + 448);

  return sub_230E04FD4(v7, v5, v28, v29);
}

uint64_t sub_230E27230(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[40] = v2;
  v4[41] = a1;
  v4[42] = v1;
  v4[74] = v1;

  v5 = v3[68];
  if (v1)
  {
    v6 = sub_230E27ADC;
  }

  else
  {
    v6 = sub_230E279D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E27390(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[43] = v2;
  v4[44] = a1;
  v4[45] = v1;
  v4[77] = v1;

  v5 = v3[68];
  if (v1)
  {
    v6 = sub_230E2762C;
  }

  else
  {
    v6 = sub_230E274F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E274F0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 448);
  sub_230D34F14(9, *(v0 + 600), *(v0 + 1016) != 0, v4, (v0 + 424), *(v0 + 576));
  (*(v2 + 8))(v1, v3);

  sub_230D1CE3C(v4);
  v5 = *(v0 + 352);
  v6 = *(v0 + 440);

  *(v0 + 624) = v5;

  return MEMORY[0x2822009F8](sub_230E277A4, v6, 0);
}

uint64_t sub_230E2762C(uint64_t a1)
{
  v2 = *(v1 + 616);
  v3 = *(v1 + 600);
  v4 = *(v1 + 576);
  v5 = *(v1 + 528);
  v6 = *(v1 + 520);
  v7 = *(v1 + 512);
  v8 = *(v1 + 448);
  v9 = *(v1 + 1016) != 0;
  *(v1 + 424) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D34F14(9, v3, v9, v8, (v1 + 424), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  sub_230D1CE3C(v8);

  *(v1 + 632) = *(v1 + 616);
  v11 = *(v1 + 440);

  return MEMORY[0x2822009F8](sub_230E27894, v11, 0);
}

uint64_t sub_230E277A4()
{
  v1 = *(v0 + 624) == 1;
  sub_230E68950();

  **(v0 + 432) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230E27894()
{

  v1 = *(v0 + 632);
  sub_230E69540();
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000003DLL, 0x8000000230E84C90);
  *(v0 + 416) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  **(v0 + 432) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230E279D4()
{
  v1 = v0[56];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_230D1CE3C(v1);
  v2 = v0[41];
  v3 = v0[55];

  v0[78] = v2;

  return MEMORY[0x2822009F8](sub_230E277A4, v3, 0);
}

uint64_t sub_230E27ADC()
{
  v1 = v0[56];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_230D1CE3C(v1);

  v0[79] = v0[74];
  v2 = v0[55];

  return MEMORY[0x2822009F8](sub_230E27894, v2, 0);
}

uint64_t sub_230E27BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[108] = a4;
  v4[107] = a3;
  v4[106] = a2;
  v4[105] = a1;
  v7 = sub_230E68D80();
  v4[109] = v7;
  v4[110] = *(v7 - 8);
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  sub_230D1CDE0(a3, (v4 + 40));

  return MEMORY[0x2822009F8](sub_230E27D30, a2, 0);
}

uint64_t sub_230E27D30()
{
  sub_230D1CDE0(v0[107], (v0 + 45));

  v1 = swift_task_alloc();
  v0[117] = v1;
  *v1 = v0;
  v1[1] = sub_230E27E30;
  v2 = v0[107];
  v3 = v0[106];

  return sub_230D6F7D0(39, v2, v3, v3);
}

uint64_t sub_230E27E30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 944) = a1;
  *(v4 + 952) = v1;

  v5 = *(v3 + 856);
  v6 = *(v3 + 848);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230E28F48;
  }

  else
  {
    v7 = sub_230E27FB0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E27FB0()
{
  v1 = v0[108];
  sub_230D1CE3C(v0[107]);
  v0[120] = *v1;

  return MEMORY[0x2822009F8](sub_230E28050, 0, 0);
}

uint64_t sub_230E28050()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = qword_27DB5A438;
  *(v0 + 968) = qword_27DB5A438;
  sub_230D1CDE0(v1, v0 + 400);

  return MEMORY[0x2822009F8](sub_230E28150, v2, 0);
}

uint64_t sub_230E28150()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 856);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 440);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 856);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80950, v28);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(*(v4 + 8), *(v4 + 16), v28);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 856);
  *(v0 + 752) = *(v9 + 24);
  *(v0 + 2308) = *v9;
  v10 = *(v0 + 752);
  *(v0 + 2309) = v10;
  v11 = *(v0 + 753);
  *(v0 + 2310) = v11;
  v12 = *(v0 + 760);
  *(v0 + 976) = v12;
  if (v10 & 1) != 0 && ((v13 = RequestType.rawValue.getter(), v15 = v14, sub_230D1CE90(v0 + 752, v0 + 800), LOBYTE(v13) = sub_230D33FDC(v13, v15, v12), , sub_230D1F9CC(v0 + 752), (v13) || v11 >= 2))
  {
    sub_230E68950();
    *(v0 + 984) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1168) = 0u;
    *(v0 + 1184) = 0u;
    *(v0 + 1200) = 0u;
    *(v0 + 1216) = 0u;
    *(v0 + 1232) = 0u;
    *(v0 + 1248) = 0u;
    *(v0 + 1264) = 0u;
    *(v0 + 1280) = 0u;
    *(v0 + 1296) = 0u;
    *(v0 + 1312) = 0u;
    *(v0 + 1328) = 0u;
    *(v0 + 1344) = 0u;
    *(v0 + 1360) = 0u;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *(v0 + 1408) = 0u;
    *(v0 + 1424) = 0u;
    *(v0 + 1440) = 0u;
    *(v0 + 1456) = 0u;
    *(v0 + 1472) = 0u;
    *(v0 + 1488) = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
    *(v0 + 2292) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1168), (v0 + 2292));
    *(v0 + 2296) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 1216);
      v21 = *(v0 + 1288);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 1000) = v19;
    v16 = swift_task_alloc();
    *(v0 + 1008) = v16;
    *v16 = v0;
    v17 = sub_230E28778;
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 992) = v16;
    *v16 = v0;
    v17 = sub_230E2854C;
  }

  v16[1] = v17;
  v24 = *(v0 + 960);
  v25 = *(v0 + 944);
  v26 = *(v0 + 856);

  return sub_230E4FA50(v0 + 704, v24, v25, v26);
}

uint64_t sub_230E2854C()
{
  v1 = *(*v0 + 968);

  return MEMORY[0x2822009F8](sub_230E28688, v1, 0);
}

uint64_t sub_230E28688()
{
  v1 = v0[116];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[107];
  v5 = v0[106];
  v6 = *(v2 + 8);
  v0[127] = v6;
  v0[128] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);

  sub_230D1CE3C(v4);

  return MEMORY[0x2822009F8](sub_230E289C4, v5, 0);
}

uint64_t sub_230E28778()
{
  v1 = *(*v0 + 968);

  return MEMORY[0x2822009F8](sub_230E288B4, v1, 0);
}

uint64_t sub_230E288B4(__n128 a1)
{
  sub_230E4D2AC(44, *(v1 + 1000), *(v1 + 2296) != 0, *(v1 + 856), *(v1 + 984));
  v2 = *(v1 + 928);
  v3 = *(v1 + 880);
  v4 = *(v1 + 872);
  v5 = *(v1 + 856);
  v6 = *(v1 + 848);
  v7 = *(v3 + 8);
  *(v1 + 1016) = v7;
  *(v1 + 1024) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);

  sub_230D1CE3C(v5);

  return MEMORY[0x2822009F8](sub_230E289C4, v6, 0);
}

uint64_t sub_230E289C4()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 864);
  *(v0 + 1032) = *(v0 + 704);
  *(v0 + 1048) = *(v0 + 720);
  v2 = *(v1 + 32);
  *(v0 + 1056) = v2;
  *(v0 + 832) = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_230E29034, 0, 0);
  }

  else
  {
    sub_230E68D70();
    v3 = sub_230E68D60();
    v4 = sub_230E693F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] No logging configuration to store", v5, 2u);
      MEMORY[0x23191EAE0](v5, -1, -1);
    }

    v6 = *(v0 + 1016);
    v7 = *(v0 + 920);
    v8 = *(v0 + 872);

    v6(v7, v8);
    *(v0 + 1112) = sub_230D0F35C(MEMORY[0x277D84F90]);
    *(v0 + 1096) = 0u;
    v9 = *(v0 + 864);
    v10 = *(v0 + 856);
    sub_230D1CDE0(v10, v0 + 480);
    sub_230D1CDE0(v10, v0 + 520);

    sub_230E1E0EC(v9, v0 + 272);
    sub_230E68D70();
    sub_230D1CDE0(v10, v0 + 560);
    v11 = sub_230E68D60();
    v12 = sub_230E693E0();
    sub_230D1CE3C(v10);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 856);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35[0] = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_230D7E620(0xD000000000000024, 0x8000000230E806F0, v35);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_230D7E620(*(v13 + 8), *(v13 + 16), v35);
      *(v14 + 22) = 2080;
      v16 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v16);

      v17 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

      *(v14 + 24) = v17;
      _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v15, -1, -1);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

    if (*(v0 + 2309) & 1) != 0 && ((v18 = *(v0 + 976), v19 = *(v0 + 2310), v20 = RequestType.rawValue.getter(), v22 = v21, sub_230D1CE90(v0 + 752, v0 + 784), LOBYTE(v20) = sub_230D33FDC(v20, v22, v18), , sub_230D1F9CC(v0 + 752), (v20) || v19 >= 2))
    {
      sub_230E68950();
      *(v0 + 1120) = CFAbsoluteTimeGetCurrent();
      *(v0 + 1912) = 0u;
      *(v0 + 1928) = 0u;
      *(v0 + 1944) = 0u;
      *(v0 + 1960) = 0u;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 0u;
      *(v0 + 2008) = 0u;
      *(v0 + 2024) = 0u;
      *(v0 + 2040) = 0u;
      *(v0 + 2056) = 0u;
      *(v0 + 2072) = 0u;
      *(v0 + 2088) = 0u;
      *(v0 + 2104) = 0u;
      *(v0 + 2120) = 0u;
      *(v0 + 2136) = 0u;
      *(v0 + 2152) = 0u;
      *(v0 + 2168) = 0u;
      *(v0 + 2184) = 0u;
      *(v0 + 2200) = 0u;
      *(v0 + 2216) = 0u;
      *(v0 + 2232) = 0u;
      *(v0 + 2248) = 0u;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0;
      *(v0 + 2284) = 93;
      v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1912), (v0 + 2284));
      *(v0 + 2304) = v25;
      v26 = 0.0;
      if (!v25)
      {
        v27 = *(v0 + 1960);
        v28 = *(v0 + 2032);
        v29 = __CFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
        }

        v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
      }

      *(v0 + 1144) = v26;
      *(v0 + 816) = 0;
      v23 = swift_task_alloc();
      *(v0 + 1152) = v23;
      *v23 = v0;
      v24 = sub_230E29EC4;
    }

    else
    {
      v23 = swift_task_alloc();
      *(v0 + 1128) = v23;
      *v23 = v0;
      v24 = sub_230E29D6C;
    }

    v23[1] = v24;
    v31 = *(v0 + 864);
    v32 = *(v0 + 856);
    v33 = *(v0 + 848);

    return sub_230E2AED8(v0 + 728, v33, v32, v31);
  }
}

uint64_t sub_230E28F48()
{
  sub_230D1CE3C(*(v0 + 856));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E29034()
{
  v1 = *(v0 + 968);
  sub_230D1CDE0(*(v0 + 856), v0 + 640);

  sub_230E3B58C(v0 + 832, v0 + 824);

  return MEMORY[0x2822009F8](sub_230E290F0, v1, 0);
}

uint64_t sub_230E290F0()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 856);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 600);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 856);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80930, v26);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(*(v4 + 8), *(v4 + 16), v26);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v26);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 2309) & 1) != 0 && ((v9 = *(v0 + 976), v10 = *(v0 + 2310), v11 = RequestType.rawValue.getter(), v13 = v12, sub_230D1CE90(v0 + 752, v0 + 768), LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , sub_230D1F9CC(v0 + 752), (v11) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 1064) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1540) = 0u;
    *(v0 + 1556) = 0u;
    *(v0 + 1572) = 0u;
    *(v0 + 1588) = 0u;
    *(v0 + 1604) = 0u;
    *(v0 + 1620) = 0u;
    *(v0 + 1636) = 0u;
    *(v0 + 1652) = 0u;
    *(v0 + 1668) = 0u;
    *(v0 + 1684) = 0u;
    *(v0 + 1700) = 0u;
    *(v0 + 1716) = 0u;
    *(v0 + 1732) = 0u;
    *(v0 + 1748) = 0u;
    *(v0 + 1764) = 0u;
    *(v0 + 1780) = 0u;
    *(v0 + 1796) = 0u;
    *(v0 + 1812) = 0u;
    *(v0 + 1828) = 0u;
    *(v0 + 1844) = 0u;
    *(v0 + 1860) = 0u;
    *(v0 + 1876) = 0u;
    *(v0 + 1892) = 0u;
    *(v0 + 1908) = 0;
    *(v0 + 2288) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1540), (v0 + 2288));
    *(v0 + 2300) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 1588);
      v20 = *(v0 + 1660);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 1080) = v18;
    v14 = *(v0 + 1056);
    v15 = swift_task_alloc();
    *(v0 + 1088) = v15;
    *v15 = v0;
    v16 = sub_230E296FC;
  }

  else
  {
    v14 = *(v0 + 1056);
    v15 = swift_task_alloc();
    *(v0 + 1072) = v15;
    *v15 = v0;
    v16 = sub_230E294E4;
  }

  v15[1] = v16;
  v23 = *(v0 + 944);
  v24 = *(v0 + 856);

  return sub_230E40478(v0 + 680, v14, v23, v24);
}

uint64_t sub_230E294E4()
{
  v1 = *(*v0 + 968);

  return MEMORY[0x2822009F8](sub_230E29620, v1, 0);
}

uint64_t sub_230E29620()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  (*(v0 + 1016))(*(v0 + 912), *(v0 + 872));
  sub_230D2D9F8(v0 + 832, &qword_27DB5D8A8, &qword_230E7F1D8);

  sub_230D1CE3C(v1);

  return MEMORY[0x2822009F8](sub_230E29934, v2, 0);
}

uint64_t sub_230E296FC()
{
  v1 = *(*v0 + 968);

  return MEMORY[0x2822009F8](sub_230E29838, v1, 0);
}

uint64_t sub_230E29838(__n128 a1)
{
  sub_230E4D2AC(43, *(v1 + 1080), *(v1 + 2300) != 0, *(v1 + 856), *(v1 + 1064));
  v2 = *(v1 + 856);
  v3 = *(v1 + 848);
  (*(v1 + 1016))(*(v1 + 912), *(v1 + 872));
  sub_230D2D9F8(v1 + 832, &qword_27DB5D8A8, &qword_230E7F1D8);

  sub_230D1CE3C(v2);

  return MEMORY[0x2822009F8](sub_230E29934, v3, 0);
}

uint64_t sub_230E29934()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 680);
  *(v0 + 1112) = *(v0 + 696);
  *(v0 + 1096) = v1;
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  sub_230D1CDE0(v3, v0 + 480);
  sub_230D1CDE0(v3, v0 + 520);

  sub_230E1E0EC(v2, v0 + 272);
  sub_230E68D70();
  sub_230D1CDE0(v3, v0 + 560);
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();
  sub_230D1CE3C(v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 856);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_230D7E620(0xD000000000000024, 0x8000000230E806F0, v28);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v6 + 8), *(v6 + 16), v28);
    *(v7 + 22) = 2080;
    v9 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v9);

    v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v7 + 24) = v10;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  if (*(v0 + 2309) & 1) != 0 && ((v11 = *(v0 + 976), v12 = *(v0 + 2310), v13 = RequestType.rawValue.getter(), v15 = v14, sub_230D1CE90(v0 + 752, v0 + 784), LOBYTE(v13) = sub_230D33FDC(v13, v15, v11), , sub_230D1F9CC(v0 + 752), (v13) || v12 >= 2))
  {
    sub_230E68950();
    *(v0 + 1120) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1912) = 0u;
    *(v0 + 1928) = 0u;
    *(v0 + 1944) = 0u;
    *(v0 + 1960) = 0u;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 0u;
    *(v0 + 2008) = 0u;
    *(v0 + 2024) = 0u;
    *(v0 + 2040) = 0u;
    *(v0 + 2056) = 0u;
    *(v0 + 2072) = 0u;
    *(v0 + 2088) = 0u;
    *(v0 + 2104) = 0u;
    *(v0 + 2120) = 0u;
    *(v0 + 2136) = 0u;
    *(v0 + 2152) = 0u;
    *(v0 + 2168) = 0u;
    *(v0 + 2184) = 0u;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0u;
    *(v0 + 2232) = 0u;
    *(v0 + 2248) = 0u;
    *(v0 + 2264) = 0u;
    *(v0 + 2280) = 0;
    *(v0 + 2284) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1912), (v0 + 2284));
    *(v0 + 2304) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 1960);
      v21 = *(v0 + 2032);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 1144) = v19;
    *(v0 + 816) = 0;
    v16 = swift_task_alloc();
    *(v0 + 1152) = v16;
    *v16 = v0;
    v17 = sub_230E29EC4;
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 1128) = v16;
    *v16 = v0;
    v17 = sub_230E29D6C;
  }

  v16[1] = v17;
  v24 = *(v0 + 864);
  v25 = *(v0 + 856);
  v26 = *(v0 + 848);

  return sub_230E2AED8(v0 + 728, v26, v25, v24);
}

uint64_t sub_230E29D6C()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_230E2AD90;
  }

  else
  {
    v4 = sub_230E2A7C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E29EC4()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_230E2A610;
  }

  else
  {
    v4 = sub_230E2A01C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E2A01C()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1016);
  v2 = *(v0 + 904);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  sub_230D3B794(24, *(v0 + 1144), *(v0 + 2304) != 0, v5, (v0 + 816), *(v0 + 1120));
  v1(v2, v3);

  sub_230D1CE3C(v5);
  sub_230D814C8(v4);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1096);
  v47 = v7;
  v8 = *(v0 + 1048);
  v48 = *(v0 + 1040);
  v51 = *(v0 + 1104);
  v9 = *(v0 + 1032);
  sub_230D1CE3C(*(v0 + 856));
  v10 = *(v0 + 728);
  v11 = *(v0 + 736);
  v12 = *(v0 + 744);
  v15 = v9 > 0 || v7 > 0 || v10 > 0;

  v16 = MEMORY[0x277D84F90];
  v17 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v18 = sub_230D0F35C(v16);
  *(v0 + 16) = v15;
  *(v0 + 24) = v9;
  *(v0 + 32) = v48;
  *(v0 + 40) = v8;
  *(v0 + 48) = v47;
  *(v0 + 56) = v51;
  *(v0 + 64) = v6;
  v49 = v11;
  v52 = v10;
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  *(v0 + 88) = v12;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v17;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = v18;
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = sub_230E68D60();
  v20 = sub_230E693E0();
  if (!os_log_type_enabled(v19, v20))
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v21 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v23 = swift_slowAlloc();
  *v23 = 134219264;

  *(v23 + 4) = v22;

  *(v23 + 12) = 2048;

  v24 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  *(v23 + 14) = v24;

  *(v23 + 22) = 2048;

  *(v23 + 24) = v26;

  *(v23 + 32) = 2048;

  if (__OFADD__(v26, v25))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  *(v23 + 34) = v26 + v25;

  *(v23 + 42) = 2048;

  *(v23 + 44) = v52;

  *(v23 + 52) = 2048;

  if (__OFADD__(v52, v49))
  {
    goto LABEL_30;
  }

  *(v23 + 54) = v52 + v49;

  _os_log_impl(&dword_230D02000, v19, v20, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] SystemDB sync completed - UseCases: %ld/%ld, Logging: %ld/%ld, DatabaseRegistry: %ld/%ld", v23, 0x3Eu);
  MEMORY[0x23191EAE0](v23, -1, -1);
LABEL_16:

  (*(v0 + 1016))(*(v0 + 896), *(v0 + 872));
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || *(v0 + 128) >= 1)
  {
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v27 = sub_230E68D60();
    v28 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1016);
    v31 = *(v0 + 888);
    v32 = *(v0 + 872);
    if (v29)
    {
      v53 = *(v0 + 872);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54[0] = v34;
      *v33 = 136315138;
      v35 = sub_230E657B4();
      v50 = v30;
      v37 = sub_230D7E620(v35, v36, v54);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_230D02000, v27, v28, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] Some components failed: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x23191EAE0](v34, -1, -1);
      MEMORY[0x23191EAE0](v33, -1, -1);

      v50(v31, v53);
    }

    else
    {

      v30(v31, v32);
    }
  }

  else
  {
  }

  v38 = *(v0 + 840);
  v39 = *(v0 + 128);
  v41 = *(v0 + 80);
  v40 = *(v0 + 96);
  v38[6] = *(v0 + 112);
  v38[7] = v39;
  v38[4] = v41;
  v38[5] = v40;
  v42 = *(v0 + 16);
  v43 = *(v0 + 32);
  v44 = *(v0 + 64);
  v38[2] = *(v0 + 48);
  v38[3] = v44;
  *v38 = v42;
  v38[1] = v43;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_230E2A610(uint64_t a1)
{
  v2 = *(v1 + 1160);
  v3 = *(v1 + 1144);
  v4 = *(v1 + 1120);
  v5 = *(v1 + 1016);
  v6 = *(v1 + 904);
  v7 = *(v1 + 872);
  v13 = *(v1 + 864);
  v8 = *(v1 + 856);
  v9 = *(v1 + 2304) != 0;
  *(v1 + 816) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D3B794(24, v3, v9, v8, (v1 + 816), v4);
  MEMORY[0x23191E910](v2);
  v5(v6, v7);

  sub_230D1CE3C(v8);
  sub_230D814C8(v13);
  sub_230D1CE3C(*(v1 + 856));

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230E2A7C8()
{
  v52 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  (*(v0 + 1016))(*(v0 + 904), *(v0 + 872));

  sub_230D1CE3C(v2);
  sub_230D814C8(v1);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1096);
  v44 = v4;
  v5 = *(v0 + 1048);
  v45 = *(v0 + 1040);
  v48 = *(v0 + 1104);
  v6 = *(v0 + 1032);
  sub_230D1CE3C(*(v0 + 856));
  v7 = *(v0 + 728);
  v8 = *(v0 + 736);
  v9 = *(v0 + 744);
  v12 = v6 > 0 || v4 > 0 || v7 > 0;

  v13 = MEMORY[0x277D84F90];
  v14 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v15 = sub_230D0F35C(v13);
  *(v0 + 16) = v12;
  *(v0 + 24) = v6;
  *(v0 + 32) = v45;
  *(v0 + 40) = v5;
  *(v0 + 48) = v44;
  *(v0 + 56) = v48;
  *(v0 + 64) = v3;
  v46 = v8;
  v49 = v7;
  *(v0 + 72) = v7;
  *(v0 + 80) = v8;
  *(v0 + 88) = v9;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v14;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = v15;
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = sub_230E68D60();
  v17 = sub_230E693E0();
  if (!os_log_type_enabled(v16, v17))
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v18 = *(v0 + 1040);
  v19 = *(v0 + 1032);
  v20 = swift_slowAlloc();
  *v20 = 134219264;

  *(v20 + 4) = v19;

  *(v20 + 12) = 2048;

  v21 = v19 + v18;
  if (__OFADD__(v19, v18))
  {
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v0 + 1104);
  v23 = *(v0 + 1096);
  *(v20 + 14) = v21;

  *(v20 + 22) = 2048;

  *(v20 + 24) = v23;

  *(v20 + 32) = 2048;

  if (__OFADD__(v23, v22))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  *(v20 + 34) = v23 + v22;

  *(v20 + 42) = 2048;

  *(v20 + 44) = v49;

  *(v20 + 52) = 2048;

  if (__OFADD__(v49, v46))
  {
    goto LABEL_30;
  }

  *(v20 + 54) = v49 + v46;

  _os_log_impl(&dword_230D02000, v16, v17, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] SystemDB sync completed - UseCases: %ld/%ld, Logging: %ld/%ld, DatabaseRegistry: %ld/%ld", v20, 0x3Eu);
  MEMORY[0x23191EAE0](v20, -1, -1);
LABEL_16:

  (*(v0 + 1016))(*(v0 + 896), *(v0 + 872));
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || *(v0 + 128) >= 1)
  {
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v24 = sub_230E68D60();
    v25 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 1016);
    v28 = *(v0 + 888);
    v29 = *(v0 + 872);
    if (v26)
    {
      v50 = *(v0 + 872);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51[0] = v31;
      *v30 = 136315138;
      v32 = sub_230E657B4();
      v47 = v27;
      v34 = sub_230D7E620(v32, v33, v51);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_230D02000, v24, v25, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] Some components failed: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x23191EAE0](v31, -1, -1);
      MEMORY[0x23191EAE0](v30, -1, -1);

      v47(v28, v50);
    }

    else
    {

      v27(v28, v29);
    }
  }

  else
  {
  }

  v35 = *(v0 + 840);
  v36 = *(v0 + 128);
  v38 = *(v0 + 80);
  v37 = *(v0 + 96);
  v35[6] = *(v0 + 112);
  v35[7] = v36;
  v35[4] = v38;
  v35[5] = v37;
  v39 = *(v0 + 16);
  v40 = *(v0 + 32);
  v41 = *(v0 + 64);
  v35[2] = *(v0 + 48);
  v35[3] = v41;
  *v35 = v39;
  v35[1] = v40;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_230E2AD90()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  (*(v0 + 1016))(*(v0 + 904), *(v0 + 872));

  sub_230D1CE3C(v2);
  sub_230D814C8(v1);
  sub_230D1CE3C(*(v0 + 856));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230E2AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v6 = sub_230E68D80();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = *(type metadata accessor for SQLDatabaseConfiguration(0) - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E2B058, a2, 0);
}

uint64_t sub_230E2B058()
{
  v1 = v0[31];
  v0[46] = sub_230D0F35C(MEMORY[0x277D84F90]);
  sub_230D1CDE0(v1, (v0 + 2));
  sub_230D1CDE0(v1, (v0 + 7));

  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_230E2B140;
  v3 = v0[31];

  return (sub_230D6F7D0)(39, v3);
}

uint64_t sub_230E2B140(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  sub_230D1CE3C(v5);
  v6 = *(v3 + 240);
  if (v1)
  {
    v7 = sub_230E2B640;
  }

  else
  {
    v7 = sub_230E2B290;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E2B290()
{
  v1 = *(v0 + 256);
  sub_230D1CE3C(*(v0 + 248));
  v2 = *(v1 + 16);
  *(v0 + 400) = v2;
  v3 = *(v2 + 16);
  *(v0 + 408) = v3;
  if (v3)
  {
    v4 = *(v0 + 336);
    v5 = *(v4 + 80);
    *(v0 + 132) = v5;
    *(v0 + 416) = *(v4 + 72);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    *(v0 + 464) = 0;
    *(v0 + 472) = v6;
    *(v0 + 448) = 0;
    *(v0 + 456) = 0;
    *(v0 + 440) = v6;
    sub_230E3B394(v2 + ((v5 + 32) & ~v5), v7, type metadata accessor for SQLDatabaseConfiguration);
    *(v0 + 131) = *(v7 + 16);
    *(v0 + 480) = *v7;
    *(v0 + 488) = *(v7 + 8);
    v8 = sub_230E2B738;

LABEL_5:
    v19 = v8;
LABEL_6:

    return MEMORY[0x2822009F8](v19, 0, 0);
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 256);
  v11 = *(v10 + 24);
  *(v0 + 424) = v11;
  v12 = *(v11 + 16);
  *(v0 + 432) = v12;
  if (v12)
  {
    *(v0 + 568) = v9;
    *(v0 + 544) = 0;
    *(v0 + 560) = 0;
    *(v0 + 552) = 0;
    *(v0 + 536) = v9;
    v13 = *(v11 + 32);
    *(v0 + 576) = v13;
    v14 = *(v11 + 40);
    *(v0 + 584) = v14;
    v15 = *(v11 + 48);
    *(v0 + 161) = v15;
    v16 = *(v11 + 56);
    v17 = *(v11 + 64);
    v18 = *(v11 + 65);
    *(v0 + 96) = v13;
    *(v0 + 104) = v14;
    *(v0 + 112) = v15;
    *(v0 + 120) = v16;
    *(v0 + 128) = v17;
    *(v0 + 129) = v18;
    v8 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
    goto LABEL_5;
  }

  v20 = *(v10 + 8);
  *(v0 + 520) = v20;
  v21 = *(v20 + 16);
  *(v0 + 528) = v21;
  if (v21)
  {
    *(v0 + 648) = v9;
    *(v0 + 624) = 0;
    *(v0 + 640) = 0;
    *(v0 + 632) = 0;
    *(v0 + 616) = v9;
    v22 = *(v20 + 32);
    *(v0 + 162) = v22;
    *(v0 + 130) = v22;
    v19 = sub_230E2D368;
    goto LABEL_6;
  }

  v23 = *(v9 + 16);
  sub_230E68D70();

  v24 = sub_230E68D60();
  v25 = sub_230E693E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218496;
    *(v26 + 4) = 0;
    *(v26 + 12) = 2048;
    *(v26 + 14) = 0;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v23;

    _os_log_impl(&dword_230D02000, v24, v25, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v26, 0x20u);
    MEMORY[0x23191EAE0](v26, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 280);
  v29 = *(v0 + 264);
  v30 = *(v0 + 232);

  (*(v27 + 8))(v28, v29);
  *v30 = 0;
  v30[1] = v23;
  v30[2] = v9;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_230E2B640()
{
  sub_230D1CE3C(*(v0 + 248));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E2B738()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 131);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 248);
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = 0;
  *(v7 + 56) = v4;
  *(v7 + 64) = v6;
  v8 = swift_task_alloc();
  *(v0 + 504) = v8;
  *v8 = v0;
  v8[1] = sub_230E2B884;

  return (sub_230D12EB8)();
}

uint64_t sub_230E2B884()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_230E2BF8C;
  }

  else
  {

    v2 = sub_230E2B9CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E2B9E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v56 = v3;
  v4 = *(v3 + 448);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = *(v3 + 352);
  v7 = *(v3 + 360);
  sub_230E68D70();
  sub_230E3B394(v7, v6, type metadata accessor for SQLDatabaseConfiguration);
  v8 = sub_230E68D60();
  v9 = sub_230E693F0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v3 + 352);
  v12 = *(v3 + 360);
  v53 = *(v3 + 264);
  v54 = *(v3 + 328);
  v13 = (*(v3 + 272) + 8);
  if (v10)
  {
    v52 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v14 = 136315138;
    v51 = v12;
    v16 = *v11;
    v17 = v11[1];

    sub_230E3B334(v11, type metadata accessor for SQLDatabaseConfiguration);
    v18 = sub_230D7E620(v16, v17, &v55);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored SQL database: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23191EAE0](v15, -1, -1);
    v19 = v14;
    v5 = v52;
    MEMORY[0x23191EAE0](v19, -1, -1);

    (*v13)(v54, v53);
    v20 = v51;
  }

  else
  {

    sub_230E3B334(v11, type metadata accessor for SQLDatabaseConfiguration);
    (*v13)(v54, v53);
    v20 = v12;
  }

  sub_230E3B334(v20, type metadata accessor for SQLDatabaseConfiguration);
  v21 = *(v3 + 440);
  v22 = *(v3 + 408);
  v23 = *(v3 + 464) + 1;
  if (v23 != v22)
  {
    *(v3 + 456) = v5;
    *(v3 + 464) = v23;
    *(v3 + 440) = v21;
    *(v3 + 448) = v5;
    v35 = *(v3 + 360);
    sub_230E3B394(*(v3 + 400) + ((*(v3 + 132) + 32) & ~*(v3 + 132)) + *(v3 + 416) * v23, v35, type metadata accessor for SQLDatabaseConfiguration);
    *(v3 + 131) = *(v35 + 16);
    *(v3 + 480) = *v35;
    *(v3 + 488) = *(v35 + 8);
    v34 = sub_230E2B738;

    goto LABEL_9;
  }

  v24 = *(v3 + 472);
  v25 = *(v3 + 256);
  v26 = *(v25 + 24);
  *(v3 + 424) = v26;
  v27 = *(v26 + 16);
  *(v3 + 432) = v27;
  if (v27)
  {
    *(v3 + 568) = v24;
    *(v3 + 560) = 0;
    *(v3 + 552) = v5;
    *(v3 + 544) = v5;
    *(v3 + 536) = v21;
    v28 = *(v26 + 32);
    *(v3 + 576) = v28;
    v29 = *(v26 + 40);
    *(v3 + 584) = v29;
    v30 = *(v26 + 48);
    *(v3 + 161) = v30;
    v31 = *(v26 + 56);
    v32 = *(v26 + 64);
    v33 = *(v26 + 65);
    *(v3 + 96) = v28;
    *(v3 + 104) = v29;
    *(v3 + 112) = v30;
    *(v3 + 120) = v31;
    *(v3 + 128) = v32;
    *(v3 + 129) = v33;
    v34 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
LABEL_9:
    a1 = v34;
    goto LABEL_10;
  }

  v36 = *(v25 + 8);
  *(v3 + 520) = v36;
  v37 = *(v36 + 16);
  *(v3 + 528) = v37;
  if (v37)
  {
    *(v3 + 648) = v24;
    *(v3 + 640) = 0;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    *(v3 + 616) = v21;
    v38 = *(v36 + 32);
    *(v3 + 162) = v38;
    *(v3 + 130) = v38;
    a1 = sub_230E2D368;
LABEL_10:
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v39 = *(v24 + 16);
  sub_230E68D70();

  v40 = sub_230E68D60();
  v41 = sub_230E693E0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218496;
    *(v42 + 4) = v22;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v5;
    *(v42 + 22) = 2048;
    *(v42 + 24) = v39;

    _os_log_impl(&dword_230D02000, v40, v41, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v42, 0x20u);
    MEMORY[0x23191EAE0](v42, -1, -1);
  }

  else
  {
  }

  v43 = v5;
  v44 = v39;

  v45 = *(v3 + 272);
  v46 = *(v3 + 280);
  v47 = *(v3 + 264);
  v48 = *(v3 + 232);

  (*(v45 + 8))(v46, v47);
  *v48 = v43;
  v48[1] = v44;
  v48[2] = v24;

  v49 = *(v3 + 8);

  return v49();
}

uint64_t sub_230E2BFA8()
{
  v64 = v0;
  *(v0 + 136) = *(v0 + 131);
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 440);
  v58 = *(v0 + 344);
  v60 = *(v0 + 360);
  *(v0 + 144) = *(v0 + 480);
  *(v0 + 152) = v2;
  *(v0 + 160) = 0;
  v4 = DatabaseIdentifier.stringRepresentation()();

  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v3;
  sub_230E1C2F0(v1, v4._countAndFlagsBits, v4._object, isUniquelyReferenced_nonNull_native);

  v62 = v3;
  sub_230E68D70();
  sub_230E3B394(v60, v58, type metadata accessor for SQLDatabaseConfiguration);
  v7 = v1;
  v8 = sub_230E68D60();
  v9 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 512);
  v12 = *(v0 + 360);
  v13 = *(v0 + 344);
  v14 = *(v0 + 320);
  v15 = *(v0 + 264);
  v16 = (*(v0 + 272) + 8);
  if (v10)
  {
    v61 = *(v0 + 320);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v12;
    v19 = swift_slowAlloc();
    v63 = v19;
    *v17 = 136315394;
    v56 = v16;
    v57 = v15;
    v21 = *v13;
    v20 = v13[1];

    sub_230E3B334(v13, type metadata accessor for SQLDatabaseConfiguration);
    v22 = sub_230D7E620(v21, v20, &v63);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v11;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store SQL database %s: %@", v17, 0x16u);
    sub_230D2D9F8(v18, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23191EAE0](v19, -1, -1);
    MEMORY[0x23191EAE0](v17, -1, -1);

    MEMORY[0x23191E910](v11);
    (*v56)(v61, v57);
    v25 = v59;
  }

  else
  {

    MEMORY[0x23191E910](v11);
    sub_230E3B334(v13, type metadata accessor for SQLDatabaseConfiguration);
    (*v16)(v14, v15);
    v25 = v12;
  }

  sub_230E3B334(v25, type metadata accessor for SQLDatabaseConfiguration);
  v26 = *(v0 + 448);
  v27 = *(v0 + 456);
  v28 = *(v0 + 408);
  v29 = *(v0 + 464) + 1;
  if (v29 != v28)
  {
    *(v0 + 464) = v29;
    *(v0 + 472) = v62;
    *(v0 + 448) = v26;
    *(v0 + 456) = v27;
    *(v0 + 440) = v62;
    v40 = *(v0 + 360);
    sub_230E3B394(*(v0 + 400) + ((*(v0 + 132) + 32) & ~*(v0 + 132)) + *(v0 + 416) * v29, v40, type metadata accessor for SQLDatabaseConfiguration);
    *(v0 + 131) = *(v40 + 16);
    *(v0 + 480) = *v40;
    *(v0 + 488) = *(v40 + 8);
    v39 = sub_230E2B738;

    goto LABEL_8;
  }

  v30 = *(v0 + 256);
  v31 = *(v30 + 24);
  *(v0 + 424) = v31;
  v32 = *(v31 + 16);
  *(v0 + 432) = v32;
  if (v32)
  {
    *(v0 + 568) = v62;
    *(v0 + 560) = 0;
    *(v0 + 552) = v27;
    *(v0 + 544) = v26;
    *(v0 + 536) = v62;
    v33 = *(v31 + 32);
    *(v0 + 576) = v33;
    v34 = *(v31 + 40);
    *(v0 + 584) = v34;
    v35 = *(v31 + 48);
    *(v0 + 161) = v35;
    v36 = *(v31 + 56);
    v37 = *(v31 + 64);
    v38 = *(v31 + 65);
    *(v0 + 96) = v33;
    *(v0 + 104) = v34;
    *(v0 + 112) = v35;
    *(v0 + 120) = v36;
    *(v0 + 128) = v37;
    *(v0 + 129) = v38;
    v39 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
LABEL_8:
    v41 = v39;
LABEL_9:

    return MEMORY[0x2822009F8](v41, 0, 0);
  }

  v42 = *(v30 + 8);
  *(v0 + 520) = v42;
  v43 = *(v42 + 16);
  *(v0 + 528) = v43;
  if (v43)
  {
    *(v0 + 648) = v62;
    *(v0 + 640) = 0;
    *(v0 + 632) = v27;
    *(v0 + 624) = v26;
    *(v0 + 616) = v62;
    v44 = *(v42 + 32);
    *(v0 + 162) = v44;
    *(v0 + 130) = v44;
    v41 = sub_230E2D368;
    goto LABEL_9;
  }

  v45 = *(v62 + 16);
  sub_230E68D70();

  v46 = sub_230E68D60();
  v47 = sub_230E693E0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218496;
    *(v48 + 4) = v28;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v27;
    *(v48 + 22) = 2048;
    *(v48 + 24) = v45;

    _os_log_impl(&dword_230D02000, v46, v47, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v48, 0x20u);
    MEMORY[0x23191EAE0](v48, -1, -1);
  }

  else
  {
  }

  v49 = v45;

  v50 = *(v0 + 272);
  v51 = *(v0 + 280);
  v52 = *(v0 + 264);
  v53 = *(v0 + 232);

  (*(v50 + 8))(v51, v52);
  *v53 = v27;
  v53[1] = v49;
  v53[2] = v62;

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_230E2C62C()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 161);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 384);
  v5 = *(v0 + 248);
  v6 = swift_task_alloc();
  *(v0 + 592) = v6;
  *(v6 + 16) = v0 + 96;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = 257;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  v7 = swift_task_alloc();
  *(v0 + 600) = v7;
  *v7 = v0;
  v7[1] = sub_230E2C780;

  return (sub_230D12EB8)();
}

uint64_t sub_230E2C780()
{
  *(*v1 + 608) = v0;

  if (v0)
  {

    v2 = sub_230E2CDA4;
  }

  else
  {

    v2 = sub_230E2C8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E2C8E4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v49 = v3;
  v4 = *(v3 + 544);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_230E68D70();

  v6 = sub_230E68D60();
  v7 = sub_230E693F0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v3 + 584);
  if (v8)
  {
    v10 = v5;
    v11 = *(v3 + 576);
    v12 = *(v3 + 272);
    v46 = *(v3 + 264);
    v47 = *(v3 + 312);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = v14;
    *v13 = 136315138;
    v15 = sub_230D7E620(v11, v9, &v48);

    *(v13 + 4) = v15;
    v5 = v10;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored vector database: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    a1 = (*(v12 + 8))(v47, v46);
  }

  else
  {
    v16 = *(v3 + 312);
    v17 = *(v3 + 264);
    v18 = *(v3 + 272);

    a1 = (*(v18 + 8))(v16, v17);
  }

  v19 = *(v3 + 536);
  v20 = *(v3 + 432);
  v21 = *(v3 + 560) + 1;
  if (v21 != v20)
  {
    *(v3 + 560) = v21;
    *(v3 + 552) = v5;
    *(v3 + 544) = v5;
    *(v3 + 536) = v19;
    v26 = *(v3 + 424) + 40 * v21;
    v27 = *(v26 + 32);
    *(v3 + 576) = v27;
    v28 = *(v26 + 40);
    *(v3 + 584) = v28;
    v29 = *(v26 + 48);
    *(v3 + 161) = v29;
    v30 = *(v26 + 56);
    v31 = *(v26 + 64);
    LOBYTE(v26) = *(v26 + 65);
    *(v3 + 96) = v27;
    *(v3 + 104) = v28;
    *(v3 + 112) = v29;
    *(v3 + 120) = v30;
    *(v3 + 128) = v31;
    *(v3 + 129) = v26;
    swift_bridgeObjectRetain_n();
    a1 = sub_230E2C62C;
LABEL_9:
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v22 = *(v3 + 568);
  v23 = *(*(v3 + 256) + 8);
  *(v3 + 520) = v23;
  v24 = *(v23 + 16);
  *(v3 + 528) = v24;
  if (v24)
  {
    *(v3 + 648) = v22;
    *(v3 + 640) = 0;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    *(v3 + 616) = v19;
    v25 = *(v23 + 32);
    *(v3 + 162) = v25;
    *(v3 + 130) = v25;
    a1 = sub_230E2D368;
    goto LABEL_9;
  }

  v32 = *(v3 + 408);
  v33 = v32 + v20;
  if (__OFADD__(v32, v20))
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v34 = *(v22 + 16);
  sub_230E68D70();

  v35 = sub_230E68D60();
  v36 = sub_230E693E0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218496;
    *(v37 + 4) = v33;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v5;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v34;

    _os_log_impl(&dword_230D02000, v35, v36, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v37, 0x20u);
    MEMORY[0x23191EAE0](v37, -1, -1);
  }

  else
  {
  }

  v38 = v5;
  v39 = v34;

  v40 = *(v3 + 272);
  v41 = *(v3 + 280);
  v42 = *(v3 + 264);
  v43 = *(v3 + 232);

  (*(v40 + 8))(v41, v42);
  *v43 = v38;
  v43[1] = v39;
  v43[2] = v22;

  v44 = *(v3 + 8);

  return v44();
}

uint64_t sub_230E2CDC0()
{
  v63 = v0;
  *(v0 + 168) = *(v0 + 161);
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 536);
  *(v0 + 176) = *(v0 + 576);
  *(v0 + 184) = v2;
  *(v0 + 192) = 1;
  v4 = DatabaseIdentifier.stringRepresentation()();

  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v3;
  sub_230E1C2F0(v1, v4._countAndFlagsBits, v4._object, isUniquelyReferenced_nonNull_native);

  v7 = v3;
  sub_230E68D70();

  v8 = v1;
  v9 = sub_230E68D60();
  v10 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  if (v11)
  {
    v14 = *(v0 + 576);
    v15 = *(v0 + 272);
    v59 = *(v0 + 264);
    v60 = *(v0 + 304);
    v61 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v62 = v18;
    *v16 = 136315394;
    v19 = sub_230D7E620(v14, v13, &v62);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store vector database %s: %@", v16, 0x16u);
    sub_230D2D9F8(v17, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23191EAE0](v18, -1, -1);
    v22 = v61;
    MEMORY[0x23191EAE0](v16, -1, -1);

    MEMORY[0x23191E910](v12);
    v23 = (*(v15 + 8))(v60, v59);
  }

  else
  {
    v26 = *(v0 + 304);
    v27 = v3;
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    MEMORY[0x23191E910](*(v0 + 608));

    v30 = v29;
    v22 = v27;
    v23 = (*(v28 + 8))(v26, v30);
  }

  v31 = *(v0 + 552);
  v32 = *(v0 + 544);
  v33 = *(v0 + 432);
  v34 = *(v0 + 560) + 1;
  if (v34 != v33)
  {
    *(v0 + 568) = v22;
    *(v0 + 560) = v34;
    *(v0 + 552) = v31;
    *(v0 + 544) = v32;
    *(v0 + 536) = v22;
    v38 = *(v0 + 424) + 40 * v34;
    v39 = *(v38 + 32);
    *(v0 + 576) = v39;
    v40 = *(v38 + 40);
    *(v0 + 584) = v40;
    v41 = *(v38 + 48);
    *(v0 + 161) = v41;
    v42 = *(v38 + 56);
    v43 = *(v38 + 64);
    LOBYTE(v38) = *(v38 + 65);
    *(v0 + 96) = v39;
    *(v0 + 104) = v40;
    *(v0 + 112) = v41;
    *(v0 + 120) = v42;
    *(v0 + 128) = v43;
    *(v0 + 129) = v38;
    swift_bridgeObjectRetain_n();
    v23 = sub_230E2C62C;
LABEL_8:
    v24 = 0;
    v25 = 0;

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  v35 = *(*(v0 + 256) + 8);
  *(v0 + 520) = v35;
  v36 = *(v35 + 16);
  *(v0 + 528) = v36;
  if (v36)
  {
    *(v0 + 648) = v22;
    *(v0 + 640) = 0;
    *(v0 + 632) = v31;
    *(v0 + 624) = v32;
    *(v0 + 616) = v22;
    v37 = *(v35 + 32);
    *(v0 + 162) = v37;
    *(v0 + 130) = v37;
    v23 = sub_230E2D368;
    goto LABEL_8;
  }

  v44 = *(v0 + 408);
  v45 = v44 + v33;
  if (__OFADD__(v44, v33))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  v46 = *(v22 + 16);
  sub_230E68D70();

  v47 = sub_230E68D60();
  v48 = sub_230E693E0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v22;
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    *(v50 + 4) = v45;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v31;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v46;

    _os_log_impl(&dword_230D02000, v47, v48, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v50, 0x20u);
    MEMORY[0x23191EAE0](v50, -1, -1);
    v51 = v49;
  }

  else
  {

    v51 = v22;
  }

  v52 = v46;

  v53 = *(v0 + 272);
  v54 = *(v0 + 280);
  v55 = *(v0 + 264);
  v56 = *(v0 + 232);

  (*(v53 + 8))(v54, v55);
  *v56 = v31;
  v56[1] = v52;
  v56[2] = v51;

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_230E2D368()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 162);
  v2 = *(v0 + 384);
  v3 = *(v0 + 248);
  v4 = swift_task_alloc();
  *(v0 + 656) = v4;
  *(v4 + 16) = v0 + 130;
  *(v4 + 24) = v1;
  *(v4 + 32) = 1852399981;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 48) = 514;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 664) = v5;
  *v5 = v0;
  v5[1] = sub_230E2D4B8;

  return (sub_230D12EB8)();
}

uint64_t sub_230E2D4B8()
{
  *(*v1 + 672) = v0;

  if (v0)
  {

    v2 = sub_230E2DA10;
  }

  else
  {

    v2 = sub_230E2D600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E2D61C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v38 = v3;
  v4 = *(v3 + 624);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_230E68D70();
  v6 = sub_230E68D60();
  v7 = sub_230E693F0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v3 + 296);
  v11 = *(v3 + 264);
  v10 = *(v3 + 272);
  if (v8)
  {
    v12 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, &v37);
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored KV database: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23191EAE0](v14, -1, -1);
    v15 = v13;
    v5 = v12;
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  a1 = (*(v10 + 8))(v9, v11);
  v16 = *(v3 + 528);
  v17 = *(v3 + 640) + 1;
  if (v17 != v16)
  {
    *(v3 + 640) = v17;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    v28 = *(*(v3 + 520) + v17 + 32);
    *(v3 + 162) = v28;
    *(v3 + 130) = v28;
    a1 = sub_230E2D368;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v18 = *(v3 + 432);
  v19 = *(v3 + 408);
  v20 = __OFADD__(v19, v18);
  v21 = v19 + v18;
  if (v20)
  {
    goto LABEL_17;
  }

  v22 = v21 + v16;
  if (__OFADD__(v21, v16))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v23 = *(v3 + 648);
  v24 = *(v23 + 16);
  sub_230E68D70();

  v25 = sub_230E68D60();
  v26 = sub_230E693E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = v22;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v5;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v24;

    _os_log_impl(&dword_230D02000, v25, v26, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v27, 0x20u);
    MEMORY[0x23191EAE0](v27, -1, -1);
  }

  else
  {
  }

  v29 = v5;
  v30 = v24;

  v31 = *(v3 + 272);
  v32 = *(v3 + 280);
  v33 = *(v3 + 264);
  v34 = *(v3 + 232);

  (*(v31 + 8))(v32, v33);
  *v34 = v29;
  v34[1] = v30;
  v34[2] = v23;

  v35 = *(v3 + 8);

  return v35();
}

uint64_t sub_230E2DA2C()
{
  v46 = v0;
  *(v0 + 200) = *(v0 + 162);
  v1 = *(v0 + 672);
  v2 = *(v0 + 616);
  *(v0 + 208) = 1852399981;
  *(v0 + 216) = 0xE400000000000000;
  *(v0 + 224) = 2;
  v3 = DatabaseIdentifier.stringRepresentation()();

  v4 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v2;
  sub_230E1C2F0(v1, v3._countAndFlagsBits, v3._object, isUniquelyReferenced_nonNull_native);

  v6 = v2;
  sub_230E68D70();
  v7 = v1;
  v8 = sub_230E68D60();
  v9 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 672);
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v14 = (*(v0 + 272) + 8);
  if (v10)
  {
    v44 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, &v45);
    *(v15 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store KV database %s: %@", v15, 0x16u);
    sub_230D2D9F8(v16, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23191EAE0](v17, -1, -1);
    v20 = v15;
    v6 = v44;
    MEMORY[0x23191EAE0](v20, -1, -1);

    MEMORY[0x23191E910](v11);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 672));
  }

  v21 = (*v14)(v12, v13);
  v24 = *(v0 + 632);
  v25 = *(v0 + 528);
  v26 = *(v0 + 640) + 1;
  if (v26 != v25)
  {
    *(v0 + 648) = v6;
    *(v0 + 640) = v26;
    *(v0 + 632) = v24;
    *(v0 + 616) = v6;
    v36 = *(*(v0 + 520) + v26 + 32);
    *(v0 + 162) = v36;
    *(v0 + 130) = v36;
    v21 = sub_230E2D368;
    v22 = 0;
    v23 = 0;

    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  v27 = *(v0 + 432);
  v28 = *(v0 + 408);
  v29 = __OFADD__(v28, v27);
  v30 = v28 + v27;
  if (v29)
  {
    __break(1u);
    goto LABEL_17;
  }

  v31 = v30 + v25;
  if (__OFADD__(v30, v25))
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  v32 = *(v6 + 16);
  sub_230E68D70();

  v33 = sub_230E68D60();
  v34 = sub_230E693E0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134218496;
    *(v35 + 4) = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = v24;
    *(v35 + 22) = 2048;
    *(v35 + 24) = v32;

    _os_log_impl(&dword_230D02000, v33, v34, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v35, 0x20u);
    MEMORY[0x23191EAE0](v35, -1, -1);
  }

  else
  {
  }

  v37 = v6;

  v39 = *(v0 + 272);
  v38 = *(v0 + 280);
  v40 = *(v0 + 264);
  v41 = *(v0 + 232);

  (*(v39 + 8))(v38, v40);
  *v41 = v24;
  v41[1] = v32;
  v41[2] = v37;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_230E2DF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 840) = a3;
  *(v3 + 832) = a2;
  *(v3 + 824) = a1;
  *(v3 + 1184) = *a3;
  *(v3 + 848) = *(a3 + 8);
  *(v3 + 1185) = *(a3 + 24);
  *(v3 + 864) = *(a3 + 32);
  *(v3 + 872) = type metadata accessor for DatabaseCreationResult(0);
  *(v3 + 880) = swift_task_alloc();
  *(v3 + 888) = swift_task_alloc();
  *(v3 + 896) = swift_task_alloc();
  *(v3 + 904) = swift_task_alloc();
  v5 = sub_230E68D80();
  *(v3 + 912) = v5;
  *(v3 + 920) = *(v5 - 8);
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 936) = swift_task_alloc();
  *(v3 + 944) = swift_task_alloc();
  *(v3 + 952) = swift_task_alloc();
  *(v3 + 960) = swift_task_alloc();
  *(v3 + 968) = swift_task_alloc();
  *(v3 + 976) = swift_task_alloc();
  *(v3 + 984) = swift_task_alloc();
  *(v3 + 992) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E2E0B4, a2, 0);
}

uint64_t sub_230E2E0B4()
{
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][createDomainDatabases] Starting domain database creation", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  v4 = v0[124];
  v5 = v0[115];
  v6 = v0[114];
  v7 = v0[105];

  v8 = *(v5 + 8);
  v0[125] = v8;
  v8(v4, v6);
  sub_230D1CDE0(v7, (v0 + 62));
  sub_230D1CDE0(v7, (v0 + 67));

  v9 = swift_task_alloc();
  v0[126] = v9;
  *v9 = v0;
  v9[1] = sub_230E2E27C;
  v10 = v0[105];

  return (sub_230D6F7D0)(39, v10);
}

uint64_t sub_230E2E27C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1016) = a1;
  *(v4 + 1024) = v1;

  v5 = *(v3 + 840);
  v6 = *(v3 + 832);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230E2ED38;
  }

  else
  {
    v7 = sub_230E2E3D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E2E3D0()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 840);
  v6 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 576) = v4;
  *(v0 + 584) = v3;
  *(v0 + 592) = v2;
  *(v0 + 600) = v6;
  *(v0 + 608) = v1;
  sub_230D1CDE0(v5, v0 + 616);
  v7 = swift_task_alloc();
  *(v0 + 1032) = v7;
  *v7 = v0;
  v7[1] = sub_230E2E4DC;
  v8 = *(v0 + 1016);

  return sub_230E3CEA4(v8, v0 + 576);
}

uint64_t sub_230E2E4DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[130] = a1;
  v4[131] = v1;

  v5 = v3[104];
  sub_230D666B4(v4[72], v3[73], v3[74], v3[75], v3[76]);
  if (v1)
  {
    v6 = sub_230E2EABC;
  }

  else
  {
    v6 = sub_230E2E678;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E2E678()
{
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1040);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][createDomainDatabases] Found %ld pending databases", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 1040);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 984);
  v9 = *(v0 + 912);
  *(v0 + 1056) = (*(v0 + 920) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v8, v9);
  v10 = *(v6 + 16);
  *(v0 + 1064) = v10;
  if (v10)
  {
    v11 = sub_230D0F35C(MEMORY[0x277D84F90]);
    *(v0 + 1104) = v11;
    *(v0 + 1080) = 0;
    *(v0 + 1096) = 0;
    *(v0 + 1088) = 0;
    *(v0 + 1072) = v11;
    v12 = *(v0 + 1040);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 1184);
    v17 = *(v0 + 840);
    v18 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v19 = v12[3];
    *(v0 + 16) = v12[2];
    *(v0 + 32) = v19;
    v20 = v12[7];
    v21 = v12[4];
    v22 = v12[5];
    *(v0 + 80) = v12[6];
    *(v0 + 96) = v20;
    *(v0 + 48) = v21;
    *(v0 + 64) = v22;
    v23 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v23;
    *(v0 + 656) = v16;
    *(v0 + 664) = v15;
    *(v0 + 672) = v14;
    *(v0 + 680) = v18;
    *(v0 + 688) = v13;
    sub_230D1CDE0(v17, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v24 = swift_task_alloc();
    *(v0 + 1128) = v24;
    *v24 = v0;
    v24[1] = sub_230E2EFB4;
    v25 = *(v0 + 904);

    return sub_230E30794(v25, v0 + 16, v0 + 656);
  }

  else
  {

    sub_230E68D70();
    v27 = sub_230E68D60();
    v28 = sub_230E693E0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_230D02000, v27, v28, "[ServicesIntelligenceProvider][createDomainDatabases] No pending databases - operation successful", v29, 2u);
      MEMORY[0x23191EAE0](v29, -1, -1);
    }

    v30 = *(v0 + 1000);
    v31 = *(v0 + 936);
    v32 = *(v0 + 912);
    v33 = *(v0 + 824);

    v30(v31, v32);
    v34 = sub_230D0F35C(MEMORY[0x277D84F90]);

    *v33 = 0;
    v33[1] = 0;
    *(*(v0 + 824) + 16) = v34;

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_230E2EABC()
{

  v1 = v0[131];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to get pending databases: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v3;
  v10 = v0[125];
  v11 = v0[116];
  v12 = v0[114];

  v10(v11, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E2ED38()
{
  sub_230D1CE3C(v0[105]);
  v1 = v0[128];
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to get pending databases: %@", v5, 0xCu);
    sub_230D2D9F8(v6, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = v3;
  v10 = v0[125];
  v11 = v0[116];
  v12 = v0[114];

  v10(v11, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_230E2EFB4()
{
  v1 = *v0;
  v2 = (*v0)[104];

  sub_230D666B4(v1[82], v1[83], v1[84], v1[85], v1[86]);

  return MEMORY[0x2822009F8](sub_230E2F138, v2, 0);
}

uint64_t sub_230E2F138()
{
  v61 = v0;
  sub_230E3B394(*(v0 + 904), *(v0 + 896), type metadata accessor for DatabaseCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 904);
    v2 = *(v0 + 888);
    sub_230E3B334(*(v0 + 896), type metadata accessor for DatabaseCreationResult);
    sub_230E3B394(v1, v2, type metadata accessor for DatabaseCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = *(v0 + 1120);
      v4 = *(v0 + 1112);
      v5 = *(v0 + 1072);
      v6 = **(v0 + 888);

      v7 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v5;
      sub_230E1C2F0(v6, v4, v3, isUniquelyReferenced_nonNull_native);

      v9 = v5;
      sub_230E68D70();
      sub_230E3B284(v0 + 16, v0 + 304);
      v10 = v6;
      v11 = sub_230E68D60();
      v12 = sub_230E69400();
      sub_230E3B2E0(v0 + 16);
      MEMORY[0x23191E910](v6);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 1120);
        v14 = *(v0 + 1112);
        v58 = *(v0 + 1000);
        v56 = *(v0 + 912);
        v57 = *(v0 + 968);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v60 = v17;
        *v15 = 136315394;

        v18 = sub_230D7E620(v14, v13, &v60);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2112;
        v19 = v6;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v20;
        *v16 = v20;
        _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to create database %s: %@", v15, 0x16u);
        sub_230D2D9F8(v16, &qword_27DB5D7D0, &qword_230E734E0);
        MEMORY[0x23191EAE0](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x23191EAE0](v17, -1, -1);
        MEMORY[0x23191EAE0](v15, -1, -1);

        MEMORY[0x23191E910](v6);
        v58(v57, v56);
      }

      else
      {
        v40 = *(v0 + 1000);
        v41 = *(v0 + 968);
        v42 = *(v0 + 912);
        MEMORY[0x23191E910](v6);

        v40(v41, v42);
      }

      v36 = *(v0 + 1088);
      v25 = *(v0 + 1080);
      v35 = v9;
    }

    else
    {
      sub_230E3B334(*(v0 + 888), type metadata accessor for DatabaseCreationResult);
      v35 = *(v0 + 1104);
      v36 = *(v0 + 1088);
      v25 = *(v0 + 1080);
      v9 = *(v0 + 1072);
    }
  }

  else
  {
    v21 = *(v0 + 1080);
    v22 = *(v0 + 896);
    v23 = sub_230E68860();
    result = (*(*(v23 - 8) + 8))(v22, v23);
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    sub_230E68D70();
    sub_230E3B284(v0 + 16, v0 + 400);
    v26 = sub_230E68D60();
    v27 = sub_230E693F0();
    sub_230E3B2E0(v0 + 16);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 1120);
      v29 = *(v0 + 1112);
      v59 = *(v0 + 1000);
      v30 = *(v0 + 976);
      v31 = *(v0 + 912);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v60 = v33;
      *v32 = 136315138;

      v34 = sub_230D7E620(v29, v28, &v60);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_230D02000, v26, v27, "[ServicesIntelligenceProvider][createDomainDatabases] Successfully created database: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x23191EAE0](v33, -1, -1);
      MEMORY[0x23191EAE0](v32, -1, -1);

      v59(v30, v31);
    }

    else
    {
      v37 = *(v0 + 1000);
      v38 = *(v0 + 976);
      v39 = *(v0 + 912);

      v37(v38, v39);
    }

    v35 = *(v0 + 1104);
    v9 = *(v0 + 1072);
    v36 = v25;
  }

  *(v0 + 1160) = v35;
  *(v0 + 1152) = v36;
  *(v0 + 1144) = v25;
  *(v0 + 1136) = v9;
  sub_230E3B394(*(v0 + 904), *(v0 + 880), type metadata accessor for DatabaseCreationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = *(v0 + 880);
  if (EnumCaseMultiPayload == 1)
  {
    sub_230E3B334(*(v0 + 880), type metadata accessor for DatabaseCreationResult);
    v45 = 2;
  }

  else
  {
    v46 = sub_230E68860();
    (*(*(v46 - 8) + 8))(v44, v46);
    v45 = 1;
  }

  v47 = *(v0 + 864);
  v48 = *(v0 + 856);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
  *(v0 + 736) = *(v0 + 1184);
  *(v0 + 744) = v49;
  *(v0 + 752) = v48;
  *(v0 + 760) = v51;
  *(v0 + 768) = v47;
  sub_230D1CDE0(v50, v0 + 776);
  v52 = swift_task_alloc();
  *(v0 + 1168) = v52;
  *v52 = v0;
  v52[1] = sub_230E2F7E0;
  v53 = *(v0 + 1120);
  v54 = *(v0 + 1112);
  v55 = *(v0 + 1016);

  return sub_230E3DD74(v54, v53, v45, v55, v0 + 736);
}

uint64_t sub_230E2F7E0()
{
  v2 = *v1;
  v2[147] = v0;

  v3 = v2[104];
  sub_230D666B4(v2[92], v2[93], v2[94], v2[95], v2[96]);
  if (v0)
  {
    v4 = sub_230E2FF80;
  }

  else
  {
    v4 = sub_230E2F970;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E2F970()
{
  v47 = v0;
  v1 = *(v0 + 904);
  sub_230E3B2E0(v0 + 16);
  sub_230E3B334(v1, type metadata accessor for DatabaseCreationResult);
  v2 = *(v0 + 1096) + 1;
  if (v2 == *(v0 + 1064))
  {
    v3 = *(*(v0 + 1160) + 16);

    sub_230E68D70();
    swift_bridgeObjectRetain_n();

    v4 = sub_230E68D60();
    v5 = sub_230E693E0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v3;
      v7 = *(v0 + 1152);
      v8 = *(v0 + 1040);
      v9 = swift_slowAlloc();
      *v9 = 134218496;
      *(v9 + 4) = v7;
      *(v9 + 12) = 2048;
      v10 = *(v8 + 16);

      *(v9 + 14) = v10;

      *(v9 + 22) = 2048;
      v3 = v6;

      *(v9 + 24) = v6;

      _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createDomainDatabases] Completed: %ld/%ld successful, %ld failed", v9, 0x20u);
      MEMORY[0x23191EAE0](v9, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v0 + 1000))(*(v0 + 952), *(v0 + 912));
    if (v3)
    {
      sub_230E68D70();

      v28 = sub_230E68D60();
      v29 = sub_230E69400();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 1160);
      v32 = *(v0 + 1000);
      v33 = *(v0 + 944);
      v34 = *(v0 + 912);
      if (v30)
      {
        v35 = swift_slowAlloc();
        v45 = v3;
        v46 = swift_slowAlloc();
        v36 = v46;
        *v35 = 136315138;
        *(v0 + 816) = v31;
        v44 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
        sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
        sub_230D0D278();
        v37 = sub_230E69180();
        v39 = v38;

        v40 = sub_230D7E620(v37, v39, &v46);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_230D02000, v28, v29, "[ServicesIntelligenceProvider][createDomainDatabases] Database creation failures: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v41 = v36;
        v3 = v45;
        MEMORY[0x23191EAE0](v41, -1, -1);
        MEMORY[0x23191EAE0](v35, -1, -1);

        v44(v33, v34);
      }

      else
      {

        v32(v33, v34);
      }
    }

    else
    {
    }

    v42 = *(v0 + 824);
    *v42 = *(v0 + 1152);
    v42[1] = v3;
    *(*(v0 + 824) + 16) = *(v0 + 1160);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v11 = *(v0 + 1152);
    v12 = *(v0 + 1136);
    *(v0 + 1104) = *(v0 + 1160);
    *(v0 + 1096) = v2;
    *(v0 + 1088) = v11;
    *(v0 + 1072) = v12;
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 1184);
    v17 = *(v0 + 840);
    v18 = (*(v0 + 1040) + 96 * v2);
    v19 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v20 = v18[3];
    *(v0 + 16) = v18[2];
    *(v0 + 32) = v20;
    v21 = v18[4];
    v22 = v18[5];
    v23 = v18[7];
    *(v0 + 80) = v18[6];
    *(v0 + 96) = v23;
    *(v0 + 48) = v21;
    *(v0 + 64) = v22;
    v24 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v24;
    *(v0 + 656) = v16;
    *(v0 + 664) = v15;
    *(v0 + 672) = v14;
    *(v0 + 680) = v19;
    *(v0 + 688) = v13;
    sub_230D1CDE0(v17, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v25 = swift_task_alloc();
    *(v0 + 1128) = v25;
    *v25 = v0;
    v25[1] = sub_230E2EFB4;
    v26 = *(v0 + 904);

    return sub_230E30794(v26, v0 + 16, v0 + 656);
  }
}

uint64_t sub_230E2FF80()
{
  v68 = v0;
  v1 = *(v0 + 1176);
  sub_230E68D70();
  sub_230E3B284(v0 + 16, v0 + 208);
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  sub_230E3B2E0(v0 + 16);
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1176);
  if (v5)
  {
    v7 = *(v0 + 1120);
    v8 = *(v0 + 1112);
    v64 = *(v0 + 1000);
    v62 = *(v0 + 912);
    v63 = *(v0 + 960);
    v66 = *(v0 + 904);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67 = v11;
    *v9 = 136315394;

    v12 = sub_230D7E620(v8, v7, &v67);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to update status for %s: %@", v9, 0x16u);
    sub_230D2D9F8(v10, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    MEMORY[0x23191E910](v6);
    sub_230E3B2E0(v0 + 16);
    v64(v63, v62);
    v15 = v66;
  }

  else
  {
    v16 = *(v0 + 1000);
    v17 = *(v0 + 960);
    v18 = *(v0 + 912);
    v19 = *(v0 + 904);

    MEMORY[0x23191E910](v6);
    sub_230E3B2E0(v0 + 16);
    v16(v17, v18);
    v15 = v19;
  }

  sub_230E3B334(v15, type metadata accessor for DatabaseCreationResult);
  v20 = *(v0 + 1096) + 1;
  if (v20 == *(v0 + 1064))
  {
    v21 = *(*(v0 + 1160) + 16);

    sub_230E68D70();
    swift_bridgeObjectRetain_n();

    v22 = sub_230E68D60();
    v23 = sub_230E693E0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 1152);
      v25 = v21;
      v26 = *(v0 + 1040);
      v27 = swift_slowAlloc();
      *v27 = 134218496;
      *(v27 + 4) = v24;
      *(v27 + 12) = 2048;
      v28 = *(v26 + 16);

      *(v27 + 14) = v28;
      v21 = v25;

      *(v27 + 22) = 2048;

      *(v27 + 24) = v25;

      _os_log_impl(&dword_230D02000, v22, v23, "[ServicesIntelligenceProvider][createDomainDatabases] Completed: %ld/%ld successful, %ld failed", v27, 0x20u);
      MEMORY[0x23191EAE0](v27, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v0 + 1000))(*(v0 + 952), *(v0 + 912));
    if (v21)
    {
      sub_230E68D70();

      v46 = sub_230E68D60();
      v47 = sub_230E69400();

      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 1160);
      v50 = *(v0 + 1000);
      v51 = *(v0 + 944);
      v52 = *(v0 + 912);
      if (v48)
      {
        v61 = v47;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v67 = v54;
        *v53 = 136315138;
        *(v0 + 816) = v49;
        v65 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
        sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
        sub_230D0D278();
        v55 = sub_230E69180();
        v57 = v56;

        v58 = sub_230D7E620(v55, v57, &v67);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_230D02000, v46, v61, "[ServicesIntelligenceProvider][createDomainDatabases] Database creation failures: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x23191EAE0](v54, -1, -1);
        MEMORY[0x23191EAE0](v53, -1, -1);

        v65(v51, v52);
      }

      else
      {

        v50(v51, v52);
      }
    }

    else
    {
    }

    v59 = *(v0 + 824);
    *v59 = *(v0 + 1152);
    v59[1] = v21;
    *(*(v0 + 824) + 16) = *(v0 + 1160);

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    v29 = *(v0 + 1152);
    v30 = *(v0 + 1136);
    *(v0 + 1104) = *(v0 + 1160);
    *(v0 + 1096) = v20;
    *(v0 + 1088) = v29;
    *(v0 + 1072) = v30;
    v31 = *(v0 + 864);
    v32 = *(v0 + 856);
    v33 = *(v0 + 848);
    v34 = *(v0 + 1184);
    v35 = *(v0 + 840);
    v36 = (*(v0 + 1040) + 96 * v20);
    v37 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v38 = v36[3];
    *(v0 + 16) = v36[2];
    *(v0 + 32) = v38;
    v39 = v36[4];
    v40 = v36[5];
    v41 = v36[7];
    *(v0 + 80) = v36[6];
    *(v0 + 96) = v41;
    *(v0 + 48) = v39;
    *(v0 + 64) = v40;
    v42 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v42;
    *(v0 + 656) = v34;
    *(v0 + 664) = v33;
    *(v0 + 672) = v32;
    *(v0 + 680) = v37;
    *(v0 + 688) = v31;
    sub_230D1CDE0(v35, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v43 = swift_task_alloc();
    *(v0 + 1128) = v43;
    *v43 = v0;
    v43[1] = sub_230E2EFB4;
    v44 = *(v0 + 904);

    return sub_230E30794(v44, v0 + 16, v0 + 656);
  }
}

uint64_t sub_230E30794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 520) = v3;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;
  *(v4 + 528) = type metadata accessor for SQLDatabaseConfiguration(0);
  *(v4 + 536) = swift_task_alloc();
  v6 = sub_230E68D80();
  *(v4 + 544) = v6;
  *(v4 + 552) = *(v6 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v7 = *(a3 + 16);
  *(v4 + 584) = *a3;
  *(v4 + 600) = v7;
  *(v4 + 616) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E308C0, v3, 0);
}

uint64_t sub_230E308C0()
{
  v57 = v0;
  v1 = *(v0 + 512);
  sub_230E68D70();
  sub_230E3B284(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  sub_230E3B2E0(v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 576);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  if (v4)
  {
    v8 = *(v0 + 512);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v55 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(*(v8 + 32), *(v8 + 40), &v55);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(*v8, *(v8 + 8), &v55);
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][createDatabaseFromRegistry] Creating %s database: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v11 = *(v6 + 8);
  v11(v5, v7);
  v12 = (v0 + 304);
  v13 = *(v0 + 512);
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = v14 == 5001555 && v15 == 0xE300000000000000;
  if (v16 || (sub_230E698C0() & 1) != 0)
  {
    sub_230E686C0();
    swift_allocObject();
    sub_230E686B0();
    sub_230E3B8F8(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
    sub_230E686A0();
    v19 = *(v0 + 616);
    v48 = *(v0 + 600);
    v51 = *(v0 + 584);

    *(v0 + 384) = v51;
    *(v0 + 400) = v48;
    *(v0 + 416) = v19;
    v20 = swift_task_alloc();
    *(v0 + 624) = v20;
    *v20 = v0;
    v20[1] = sub_230E31264;
    v21 = *(v0 + 536);
    v22 = *(v0 + 504);

    return sub_230E31710(v22, v21, v0 + 384);
  }

  else
  {
    v52 = v11;
    if (v14 == 0x524F54434556 && v15 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
    {
      sub_230E686C0();
      swift_allocObject();
      sub_230E686B0();
      sub_230D45B30();
      sub_230E686A0();
      v23 = *(v0 + 616);
      v49 = *(v0 + 584);
      v53 = *(v0 + 600);

      v24 = *(v0 + 424);
      v25 = *(v0 + 432);
      *(v0 + 632) = v25;
      v26 = *(v0 + 440);
      v27 = *(v0 + 448);
      *(v0 + 344) = v49;
      v28 = *(v0 + 456);
      v29 = *(v0 + 457);
      *(v0 + 464) = v24;
      *(v0 + 472) = v25;
      *(v0 + 480) = v26;
      *(v0 + 488) = v27;
      *(v0 + 496) = v28;
      *(v0 + 497) = v29;
      *(v0 + 360) = v53;
      *(v0 + 376) = v23;
      v30 = swift_task_alloc();
      *(v0 + 640) = v30;
      *v30 = v0;
      v30[1] = sub_230E3141C;
      v31 = *(v0 + 504);

      return sub_230E32CD0(v31, v0 + 464, v0 + 344);
    }

    else if (v14 == 22091 && v15 == 0xE200000000000000 || (sub_230E698C0() & 1) != 0)
    {
      sub_230E686C0();
      swift_allocObject();
      sub_230E686B0();
      sub_230D0D730();
      sub_230E686A0();
      v32 = *(v0 + 616);
      v50 = *(v0 + 600);
      v54 = *(v0 + 584);

      *(v0 + 459) = *(v0 + 458);
      *v12 = v54;
      *(v0 + 320) = v50;
      *(v0 + 336) = v32;
      v33 = swift_task_alloc();
      *(v0 + 648) = v33;
      *v33 = v0;
      v33[1] = sub_230E315A4;
      v34 = *(v0 + 504);

      return sub_230E34180(v34, (v0 + 459), v12);
    }

    else
    {
      v35 = *(v0 + 512);
      sub_230E68D70();
      sub_230E3B284(v35, v0 + 112);
      v36 = sub_230E68D60();
      v37 = sub_230E69400();
      sub_230E3B2E0(v35);
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 568);
      v40 = *(v0 + 544);
      if (v38)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_230D7E620(v14, v15, &v55);
        _os_log_impl(&dword_230D02000, v36, v37, "[ServicesIntelligenceProvider][createDatabaseFromRegistry] Unknown database type: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x23191EAE0](v42, -1, -1);
        MEMORY[0x23191EAE0](v41, -1, -1);
      }

      v52(v39, v40);
      v43 = *(v0 + 504);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_230E69540();

      v55 = 0xD000000000000017;
      v56 = 0x8000000230E84AF0;
      MEMORY[0x23191DA00](v14, v15);
      v44 = v55;
      v45 = v56;
      sub_230D0D224();
      v46 = swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v45;
      *(v47 + 16) = 1;
      *v43 = v46;
      type metadata accessor for DatabaseCreationResult(0);
      swift_storeEnumTagMultiPayload();

      v17 = *(v0 + 8);

      return v17();
    }
  }
}

uint64_t sub_230E31264()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_230E31374, v1, 0);
}

uint64_t sub_230E31374()
{
  sub_230E3B334(*(v0 + 536), type metadata accessor for SQLDatabaseConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E3141C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230E315A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230E31710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 192) = a1;
  v6 = sub_230E68D80();
  *(v4 + 216) = v6;
  *(v4 + 224) = *(v6 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  type metadata accessor for CreateSQLDatabaseResponse(0);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  type metadata accessor for CreateSQLDatabaseRequest(0);
  *(v4 + 264) = swift_task_alloc();
  v7 = *(a3 + 16);
  *(v4 + 272) = *a3;
  *(v4 + 288) = v7;
  *(v4 + 304) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E31860, v3, 0);
}

uint64_t sub_230E31860()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  *(v0 + 312) = *v2;
  *(v0 + 320) = v2[1];
  sub_230E3B394(v2, v1, type metadata accessor for SQLDatabaseConfiguration);
  *(v0 + 424) = 4;
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_230E3193C;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 424), 0, 0);
}

uint64_t sub_230E3193C()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_230E31A4C, v1, 0);
}

uint64_t sub_230E31A4C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 81);
  v7 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 336) = v4;
  *(v0 + 344) = v7;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 41) = v6;
  *(v0 + 48) = v7;
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  v8[2] = v1;
  v8[3] = v2;
  v8[4] = v0 + 16;
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  v9[1] = sub_230E31B74;
  v10 = *(v0 + 256);

  return sub_230D123C8(v10, 4, v0 + 16, &unk_230E6E500, v8);
}

uint64_t sub_230E31B74()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E31FBC;
  }

  else
  {
    v4 = sub_230E31CFC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E31CFC()
{
  v1 = *(v0 + 304);

  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v2 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v2;

  *(v0 + 376) = v2._object;
  *(v0 + 112) = v5;
  *(v0 + 96) = v6;
  *(v0 + 128) = v1;
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_230E31DF4;

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E31DF4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  if (v1)
  {
    v5 = *(v4 + 208);

    return MEMORY[0x2822009F8](sub_230E32A0C, v5, 0);
  }

  else
  {
    *(v4 + 136) = *(v4 + 272);
    v6 = *(v4 + 176);
    v7 = *(v4 + 304);
    *(v4 + 152) = *(v4 + 288);
    *(v4 + 168) = v7;
    v8 = swift_task_alloc();
    *(v4 + 408) = v8;
    *v8 = v4;
    v8[1] = sub_230E32264;
    v9 = *(v4 + 376);
    v10 = *(v4 + 256);

    return sub_230E3D38C(v6, v9, v10, a1, v4 + 136);
  }
}

uint64_t sub_230E31FBC()
{
  v21 = v0;
  sub_230E3B334(*(v0 + 264), type metadata accessor for CreateSQLDatabaseRequest);
  v1 = *(v0 + 368);
  sub_230E68D70();

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    v7 = *(v0 + 224);
    v18 = *(v0 + 216);
    v19 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_230D7E620(v5, v6, &v20);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v8, 0x16u);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);

    (*(v7 + 8))(v19, v18);
  }

  else
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);

    (*(v14 + 8))(v13, v15);
  }

  **(v0 + 192) = v1;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230E32264()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E3273C;
  }

  else
  {
    v4 = sub_230E323A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E323A0()
{
  v30 = v0;
  v1 = v0[31];
  v2 = v0[32];
  sub_230E68D70();
  sub_230E3B394(v2, v1, type metadata accessor for CreateSQLDatabaseResponse);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[31];
    v27 = v0[30];
    v28 = v0[33];
    v8 = v0[28];
    v26 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v6, v5, &v29);
    *(v9 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = sub_230E69890();
    v13 = v12;
    sub_230E3B334(v7, type metadata accessor for CreateSQLDatabaseResponse);
    v14 = sub_230D7E620(v11, v13, &v29);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Created at %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    (*(v8 + 8))(v27, v26);
    v15 = v28;
  }

  else
  {
    v16 = v0[33];
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[27];
    v20 = v0[28];

    sub_230E3B334(v17, type metadata accessor for CreateSQLDatabaseResponse);
    (*(v20 + 8))(v18, v19);
    v15 = v16;
  }

  sub_230E3B334(v15, type metadata accessor for CreateSQLDatabaseRequest);
  v21 = v0[32];
  v22 = v0[24];
  v23 = sub_230E68860();
  (*(*(v23 - 8) + 32))(v22, v21, v23);
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v24 = v0[1];

  return v24();
}

uint64_t sub_230E3273C()
{
  v23 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  sub_230E3B334(v1, type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E3B334(v2, type metadata accessor for CreateSQLDatabaseRequest);
  v3 = *(v0 + 416);
  sub_230E68D70();

  v4 = v3;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();

  MEMORY[0x23191E910](v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 224);
    v20 = *(v0 + 216);
    v21 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(v7, v8, &v22);
    *(v10 + 12) = 2112;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v10, 0x16u);
    sub_230D2D9F8(v11, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    (*(v9 + 8))(v21, v20);
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 216);

    (*(v16 + 8))(v15, v17);
  }

  **(v0 + 192) = v3;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_230E32A0C()
{
  v22 = v0;
  v1 = *(v0 + 264);
  sub_230E3B334(*(v0 + 256), type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E3B334(v1, type metadata accessor for CreateSQLDatabaseRequest);
  v2 = *(v0 + 400);
  sub_230E68D70();

  v3 = v2;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();

  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);
    v8 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v6, v7, &v21);
    *(v9 + 12) = 2112;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v9, 0x16u);
    sub_230D2D9F8(v10, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    (*(v8 + 8))(v20, v19);
  }

  else
  {
    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v16 = *(v0 + 216);

    (*(v15 + 8))(v14, v16);
  }

  **(v0 + 192) = v2;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E32CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = a1;
  *(v4 + 240) = v3;
  v7 = sub_230E68D80();
  *(v4 + 248) = v7;
  *(v4 + 256) = *(v7 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  type metadata accessor for CreateVectorDatabaseResponse(0);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = *a2;
  *(v4 + 211) = *(a2 + 16);
  *(v4 + 312) = *(a2 + 24);
  *(v4 + 212) = *(a2 + 32);
  *(v4 + 213) = *(a2 + 33);
  v8 = *(a3 + 16);
  *(v4 + 320) = *a3;
  *(v4 + 336) = v8;
  *(v4 + 352) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E32E20, v3, 0);
}

uint64_t sub_230E32E20()
{
  v1 = *(v0 + 213);
  v2 = *(v0 + 212);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 211);
  *(v0 + 176) = *(v0 + 296);
  *(v0 + 184) = v3;
  *(v0 + 192) = v5;
  *(v0 + 200) = v4;
  *(v0 + 208) = v2;
  *(v0 + 209) = v1;

  *(v0 + 210) = 14;
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_230E32EFC;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 210), 0, 0);
}

uint64_t sub_230E32EFC()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_230E3300C, v1, 0);
}

uint64_t sub_230E3300C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 368) = v3;
  *(v0 + 376) = v6;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_230E33104;
  v8 = *(v0 + 288);
  v9 = *(v0 + 240);

  return sub_230D731A0(v8, 14, v0 + 16, v9, v0 + 176);
}

uint64_t sub_230E33104()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_230E33528;
  }

  else
  {
    v4 = sub_230E33270;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E33270()
{
  v1 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v2 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 216) = v2;

  *(v0 + 400) = v2._object;
  *(v0 + 112) = v5;
  *(v0 + 96) = v6;
  *(v0 + 128) = v1;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  *v3 = v0;
  v3[1] = sub_230E33360;

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E33360(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  if (v1)
  {
    v5 = *(v4 + 240);

    return MEMORY[0x2822009F8](sub_230E33EE4, v5, 0);
  }

  else
  {
    *(v4 + 136) = *(v4 + 320);
    v6 = *(v4 + 216);
    v7 = *(v4 + 352);
    *(v4 + 152) = *(v4 + 336);
    *(v4 + 168) = v7;
    v8 = swift_task_alloc();
    *(v4 + 432) = v8;
    *v8 = v4;
    v8[1] = sub_230E337B0;
    v9 = *(v4 + 400);
    v10 = *(v4 + 288);

    return sub_230E3D38C(v6, v9, v10, a1, v4 + 136);
  }
}

uint64_t sub_230E33528()
{
  v21 = v0;

  v1 = *(v0 + 392);
  sub_230E68D70();

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    v7 = *(v0 + 256);
    v18 = *(v0 + 248);
    v19 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_230D7E620(v5, v6, &v20);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v8, 0x16u);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);

    (*(v7 + 8))(v19, v18);
  }

  else
  {
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);

    (*(v14 + 8))(v13, v15);
  }

  **(v0 + 232) = v1;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230E337B0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_230E33C3C;
  }

  else
  {
    v4 = sub_230E338EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E338EC()
{
  v27 = v0;
  v1 = v0[35];
  v2 = v0[36];
  sub_230E68D70();
  sub_230E3B394(v2, v1, type metadata accessor for CreateVectorDatabaseResponse);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v6 = v0[38];
    v7 = v0[35];
    v8 = v0[32];
    v24 = v0[31];
    v25 = v0[34];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v5, v6, &v26);
    *(v9 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = sub_230E69890();
    v13 = v12;
    sub_230E3B334(v7, type metadata accessor for CreateVectorDatabaseResponse);
    v14 = sub_230D7E620(v11, v13, &v26);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Created at %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    (*(v8 + 8))(v25, v24);
  }

  else
  {
    v16 = v0[34];
    v15 = v0[35];
    v17 = v0[31];
    v18 = v0[32];

    sub_230E3B334(v15, type metadata accessor for CreateVectorDatabaseResponse);
    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[36];
  v20 = v0[29];
  v21 = sub_230E68860();
  (*(*(v21 - 8) + 32))(v20, v19, v21);
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v22 = v0[1];

  return v22();
}