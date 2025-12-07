Swift::Int sub_162148()
{
  result = sub_10944(&off_CEF7D0);
  qword_E71068 = result;
  return result;
}

Swift::Int sub_162170(unsigned __int8 a1)
{
  sub_ABB5C0();
  v2 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v2 = a1;
  }

  sub_ABB5D0(v2);
  return sub_ABB610();
}

_UNKNOWN **sub_1621D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_164018();
  *a1 = result;
  return result;
}

void sub_162238()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    sub_ABB5D0(6uLL);
    v2 = v1;
  }

  sub_ABB5D0(v2);
}

Swift::Int sub_162280(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  v3 = v2 - 3;
  if ((v2 - 3) >= 6)
  {
    sub_ABB5D0(6uLL);
    v3 = v2;
  }

  sub_ABB5D0(v3);
  return sub_ABB610();
}

char *sub_162384()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 0x20) != 0)
  {
    v3 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v6 = *(v3 + 3);
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v10 = v3;
      v11 = *(v3 + 2);
      v12 = sub_6A6AC((v6 > 1), v5 + 1, 1, v10);
      v5 = v11;
      v3 = v12;
    }

    *(v3 + 2) = v7;
    v3[v5 + 32] = 4;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = _swiftEmptyArrayStorage;
  if ((v1 & 0x10) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_6A6AC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v3[v9 + 32] = 3;
  }

LABEL_14:
  v13 = v3;

  sub_162F48(&v13);

  return v13;
}

char *sub_162544(void *a1)
{
  if (![v1 hasLoadedValueForKey:*a1])
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = [v1 traits];
  v3 = v2;
  if ((v2 & 2) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v4 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  v8 = v6 + 1;
  if (v6 >= v7 >> 1)
  {
    v20 = v4;
    v21 = *(v4 + 2);
    v22 = sub_6A6AC((v7 > 1), v6 + 1, 1, v20);
    v6 = v21;
    v4 = v22;
  }

  *(v4 + 2) = v8;
  v4[v6 + 32] = 6;
  if ((v3 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v10 = *(v4 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v23 = v4;
      v24 = *(v4 + 2);
      v25 = sub_6A6AC((v10 > 1), v9 + 1, 1, v23);
      v9 = v24;
      v4 = v25;
    }

    *(v4 + 2) = v11;
    v4[v9 + 32] = 5;
  }

LABEL_14:
  if ((v3 & 0x20) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v15 = *(v4 + 2);
    v16 = *(v4 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v29 = v4;
      v30 = *(v4 + 2);
      v31 = sub_6A6AC((v16 > 1), v15 + 1, 1, v29);
      v15 = v30;
      v4 = v31;
    }

    *(v4 + 2) = v17;
    v4[v15 + 32] = 3;
    if ((v3 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v13 = *(v4 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v26 = v4;
    v27 = *(v4 + 2);
    v28 = sub_6A6AC((v13 > 1), v12 + 1, 1, v26);
    v12 = v27;
    v4 = v28;
  }

  *(v4 + 2) = v14;
  v4[v12 + 32] = 4;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v3)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v19 = *(v4 + 2);
    v18 = *(v4 + 3);
    if (v19 >= v18 >> 1)
    {
      v4 = sub_6A6AC((v18 > 1), v19 + 1, 1, v4);
    }

    *(v4 + 2) = v19 + 1;
    v4[v19 + 32] = 7;
  }

LABEL_33:
  v32 = v4;

  sub_162F48(&v32);

  return v32;
}

char *sub_16286C()
{
  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 2) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    if ((v1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_6A6AC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 6;
  if ((v2 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_6A6AC((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v3[v7 + 32] = 5;
  }

LABEL_12:
  if ((v2 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_6A6AC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v3[v9 + 32] = 4;
    if ((v2 & 0x10) == 0)
    {
LABEL_14:
      if ((v2 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_6A6AC((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  v3[v11 + 32] = 3;
  if (v2)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_6A6AC((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v3[v13 + 32] = 7;
  }

LABEL_31:
  v15 = v3;

  sub_162F48(&v15);

  return v15;
}

char *sub_162B74(uint64_t (*a1)(__n128))
{
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v40 = &v28[-v5];
  v6 = __chkstk_darwin();
  v8 = &v28[-v7];
  v9 = a1(v6);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    return _swiftEmptyArrayStorage;
  }

  v13 = *(v3 + 16);
  v12 = v3 + 16;
  v11 = v13;
  v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v30 = v9;
  v15 = v9 + v14;
  v16 = *(v12 + 56);
  v36 = (v12 + 72);
  v37 = v16;
  v35 = enum case for AudioVariant.dolbyAtmos(_:);
  v34 = enum case for AudioVariant.dolbyAudio(_:);
  v33 = enum case for AudioVariant.lossless(_:);
  v32 = enum case for AudioVariant.highResolutionLossless(_:);
  v31 = enum case for AudioVariant.lossyStereo(_:);
  v29 = enum case for AudioVariant.spatialAudio(_:);
  v38 = v12;
  v17 = (v12 - 8);
  v18 = _swiftEmptyArrayStorage;
  do
  {
    v11(v8, v15, v2);
    v19 = v40;
    v11(v40, v8, v2);
    v20 = v39;
    v11(v39, v19, v2);
    v21 = (*v36)(v20, v2);
    if (v21 == v35)
    {
      v22 = 3;
    }

    else if (v21 == v34)
    {
      v22 = 4;
    }

    else if (v21 == v33)
    {
      v22 = 6;
    }

    else
    {
      if (v21 != v32)
      {
        if (v21 == v31)
        {
          v26 = *v17;
          (*v17)(v8, v2);
        }

        else
        {
          if (v21 == v29)
          {
            v22 = 8;
            goto LABEL_12;
          }

          v26 = *v17;
          (*v17)(v8, v2);
          v26(v39, v2);
        }

        v26(v40, v2);
        goto LABEL_17;
      }

      v22 = 5;
    }

LABEL_12:
    v23 = *v17;
    (*v17)(v8, v2);
    v23(v40, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_6A6AC(0, *(v18 + 2) + 1, 1, v18);
    }

    v25 = *(v18 + 2);
    v24 = *(v18 + 3);
    if (v25 >= v24 >> 1)
    {
      v18 = sub_6A6AC((v24 > 1), v25 + 1, 1, v18);
    }

    *(v18 + 2) = v25 + 1;
    v18[v25 + 32] = v22;
LABEL_17:
    v15 += v37;
    --v10;
  }

  while (v10);

  return v18;
}

void sub_162F48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163DB8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_162FB4(v4);
  *a1 = v2;
}

void sub_162FB4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_ABB2B0(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1631D8(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1630AC(0, v2, 1, a1);
  }
}

uint64_t sub_1630AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6:
            if (v10 == 6)
            {
              goto LABEL_4;
            }

            v11 = 3;
            goto LABEL_27;
          case 7:
            if (v10 == 7)
            {
              goto LABEL_4;
            }

            v11 = 4;
            goto LABEL_27;
          case 8:
            if (v10 == 8)
            {
              goto LABEL_4;
            }

            v11 = 5;
            goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            if (v10 == 3)
            {
              goto LABEL_4;
            }

            v11 = 0;
            goto LABEL_27;
          case 4:
            if (v10 == 4)
            {
              goto LABEL_4;
            }

            v11 = 1;
            goto LABEL_27;
          case 5:
            if (v10 == 5)
            {
              goto LABEL_4;
            }

            v11 = 2;
            goto LABEL_27;
        }
      }

      if (v10 - 3 > 5)
      {
        if (v7 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

      v11 = 6;
LABEL_27:
      result = (v10 - 3);
      if (v10 - 3 >= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = (v10 - 3);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_31:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_1631D8(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_175:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_216;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_177:
      v82 = v7 + 16;
      v83 = *(v7 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[16 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_1639A0((*a3 + *v84), (*a3 + *v86), (*a3 + v87), v4);
          if (v92)
          {
            goto LABEL_184;
          }

          if (v87 < v85)
          {
            goto LABEL_202;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_203;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_204;
          }

          v92 = 0;
          v83 = *v82 - 1;
          memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
            goto LABEL_184;
          }
        }

        goto LABEL_214;
      }

LABEL_184:

      return;
    }

LABEL_210:
    v7 = sub_163DA4(v7);
    goto LABEL_177;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_81;
    }

    v9 = *(*a3 + v6);
    v10 = *(*a3 + v8);
    if (v9 > 5)
    {
      switch(v9)
      {
        case 6u:
          if (v10 != 6)
          {
            v11 = 3;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 7u:
          if (v10 != 7)
          {
            v11 = 4;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 8u:
          if (v10 != 8)
          {
            v11 = 5;
            goto LABEL_28;
          }

LABEL_25:
          v12 = 0;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          if (v10 != 3)
          {
            v11 = 0;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 4u:
          if (v10 != 4)
          {
            v11 = 1;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 5u:
          if (v10 != 5)
          {
            v11 = 2;
LABEL_28:
            LODWORD(v14) = v10 - 3;
            if (v14 >= 6)
            {
              v14 = 6;
            }

            else
            {
              v14 = v14;
            }

            v13 = v11 >= v14;
            goto LABEL_32;
          }

          goto LABEL_25;
      }
    }

    if (v10 - 3 < 6)
    {
      v11 = 6;
      goto LABEL_28;
    }

    v13 = v9 >= v10;
LABEL_32:
    v12 = !v13;
LABEL_35:
    v6 = v8 + 2;
    if (v8 + 2 >= v5)
    {
      goto LABEL_72;
    }

    do
    {
      v15 = *(*a3 + v6);
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6u:
            if (v9 == 6)
            {
              goto LABEL_37;
            }

            v16 = 3;
            goto LABEL_60;
          case 7u:
            if (v9 == 7)
            {
              goto LABEL_37;
            }

            v16 = 4;
            goto LABEL_60;
          case 8u:
            if (v9 == 8)
            {
              goto LABEL_37;
            }

            v16 = 5;
            goto LABEL_60;
        }
      }

      else
      {
        switch(v15)
        {
          case 3u:
            if (v9 == 3)
            {
              goto LABEL_37;
            }

            v16 = 0;
            goto LABEL_60;
          case 4u:
            if (v9 == 4)
            {
              goto LABEL_37;
            }

            v16 = 1;
            goto LABEL_60;
          case 5u:
            if (v9 == 5)
            {
              goto LABEL_37;
            }

            v16 = 2;
            goto LABEL_60;
        }
      }

      if ((v9 - 3) < 6u)
      {
        v16 = 6;
LABEL_60:
        LODWORD(v17) = (v9 - 3);
        if (v17 >= 6)
        {
          v17 = 6;
        }

        else
        {
          v17 = v17;
        }

        v18 = v16 >= v17;
        goto LABEL_64;
      }

      v18 = v15 >= v9;
      if (v15 == v9)
      {
LABEL_37:
        if (v12)
        {
          goto LABEL_73;
        }

        goto LABEL_38;
      }

LABEL_64:
      v19 = !v18;
      if (v12 != v19)
      {
        goto LABEL_72;
      }

LABEL_38:
      ++v6;
      LOBYTE(v9) = v15;
    }

    while (v5 != v6);
    v6 = v5;
LABEL_72:
    if (v12)
    {
LABEL_73:
      if (v6 < v8)
      {
        goto LABEL_207;
      }

      if (v8 < v6)
      {
        v20 = v6 - 1;
        v21 = v8;
        do
        {
          if (v21 != v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_213;
            }

            v24 = *(v23 + v21);
            *(v23 + v21) = *(v23 + v20);
            *(v23 + v20) = v24;
          }
        }

        while (++v21 < v20--);
        v5 = a3[1];
      }
    }

LABEL_81:
    if (v6 >= v5)
    {
      goto LABEL_124;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_206;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_124;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_208;
    }

    if (v8 + a4 < v5)
    {
      v5 = v8 + a4;
    }

    if (v5 < v8)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    if (v6 == v5)
    {
LABEL_124:
      if (v6 < v8)
      {
        goto LABEL_205;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_6A6C0(0, *(v7 + 2) + 1, 1, v7);
      }

      v35 = *(v7 + 2);
      v34 = *(v7 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v7 = sub_6A6C0((v34 > 1), v35 + 1, 1, v7);
      }

      *(v7 + 2) = v36;
      v4 = (v7 + 32);
      v37 = &v7[16 * v35 + 32];
      *v37 = v8;
      *(v37 + 1) = v6;
      v38 = *a1;
      if (!*a1)
      {
        goto LABEL_215;
      }

      if (!v35)
      {
LABEL_3:
        v5 = a3[1];
        a4 = v89;
        if (v6 >= v5)
        {
          goto LABEL_175;
        }

        continue;
      }

      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_144:
          if (v43)
          {
            goto LABEL_192;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_194;
          }

          v62 = &v4[16 * v39];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_199;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_166;
          }

          goto LABEL_159;
        }

        if (v36 < 2)
        {
          goto LABEL_200;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_159:
        if (v61)
        {
          goto LABEL_196;
        }

        v69 = &v4[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_198;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_166:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*a3)
        {
          goto LABEL_212;
        }

        v77 = &v4[16 * v39 - 16];
        v78 = *v77;
        v79 = &v4[16 * v39];
        v80 = *(v79 + 1);
        sub_1639A0((*a3 + *v77), (*a3 + *v79), (*a3 + v80), v38);
        if (v92)
        {
          goto LABEL_184;
        }

        if (v80 < v78)
        {
          goto LABEL_187;
        }

        if (v39 > *(v7 + 2))
        {
          goto LABEL_188;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v7 + 2);
        if (v39 >= v81)
        {
          goto LABEL_189;
        }

        v92 = 0;
        v36 = v81 - 1;
        memmove(&v4[16 * v39], v79 + 16, 16 * (v81 - 1 - v39));
        *(v7 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v4[16 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_190;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_191;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_193;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_195;
      }

      if (v55 >= v47)
      {
        v73 = &v4[16 * v39];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_201;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_166;
      }

      goto LABEL_144;
    }

    break;
  }

  v25 = *a3;
  v26 = (*a3 + v6);
  v27 = v8 - v6;
  while (2)
  {
    v28 = *(v25 + v6);
    v29 = v27;
    v30 = v26;
LABEL_92:
    v31 = *(v30 - 1);
    if (v28 > 5)
    {
      switch(v28)
      {
        case 6:
          if (v31 == 6)
          {
            goto LABEL_90;
          }

          v32 = 3;
          break;
        case 7:
          if (v31 == 7)
          {
            goto LABEL_90;
          }

          v32 = 4;
          break;
        case 8:
          if (v31 == 8)
          {
            goto LABEL_90;
          }

          v32 = 5;
          break;
        default:
          goto LABEL_107;
      }

LABEL_113:
      if (v31 - 3 >= 6)
      {
        v33 = 6;
      }

      else
      {
        v33 = (v31 - 3);
      }

      if (v32 < v33)
      {
        goto LABEL_117;
      }

LABEL_90:
      ++v6;
      ++v26;
      --v27;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  switch(v28)
  {
    case 3:
      if (v31 == 3)
      {
        goto LABEL_90;
      }

      v32 = 0;
      goto LABEL_113;
    case 4:
      if (v31 == 4)
      {
        goto LABEL_90;
      }

      v32 = 1;
      goto LABEL_113;
    case 5:
      if (v31 == 5)
      {
        goto LABEL_90;
      }

      v32 = 2;
      goto LABEL_113;
  }

LABEL_107:
  if (v31 - 3 <= 5)
  {
    v32 = 6;
    goto LABEL_113;
  }

  if (v28 >= v31)
  {
    goto LABEL_90;
  }

LABEL_117:
  if (v25)
  {
    *v30 = v31;
    *--v30 = v28;
    v13 = __CFADD__(v29++, 1);
    if (v13)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
}

uint64_t sub_1639A0(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11 > 5)
        {
          switch(v11)
          {
            case 6u:
              if (v12 == 6)
              {
                goto LABEL_36;
              }

              v13 = 3;
              goto LABEL_28;
            case 7u:
              if (v12 == 7)
              {
                goto LABEL_36;
              }

              v13 = 4;
              goto LABEL_28;
            case 8u:
              if (v12 == 8)
              {
                goto LABEL_36;
              }

              v13 = 5;
              goto LABEL_28;
          }
        }

        else
        {
          switch(v11)
          {
            case 3u:
              if (v12 == 3)
              {
                goto LABEL_36;
              }

              v13 = 0;
              goto LABEL_28;
            case 4u:
              if (v12 == 4)
              {
                goto LABEL_36;
              }

              v13 = 1;
              goto LABEL_28;
            case 5u:
              if (v12 == 5)
              {
                goto LABEL_36;
              }

              v13 = 2;
              goto LABEL_28;
          }
        }

        if (v12 - 3 > 5)
        {
          if (v11 < v12)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        v13 = 6;
LABEL_28:
        if (v12 - 3 >= 6)
        {
          v14 = 6;
        }

        else
        {
          v14 = (v12 - 3);
        }

        if (v13 < v14)
        {
LABEL_32:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_36:
        v16 = v4 + 1;
        LOBYTE(v11) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v16)
          {
            goto LABEL_41;
          }
        }

LABEL_40:
        *v7 = v11;
LABEL_41:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_92;
    }

LABEL_91:
    if (v6 >= v10)
    {
      goto LABEL_92;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_90:
    if (v6 != v4)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  do
  {
    v17 = v6 - 1;
    --v5;
    v18 = v10;
    while (1)
    {
      v20 = *--v18;
      v19 = v20;
      v21 = *v17;
      if (v20 > 5)
      {
        break;
      }

      if (v19 == 3)
      {
        if (v21 != 3)
        {
          v22 = 0;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v19 != 4)
      {
        if (v19 == 5)
        {
          if (v21 != 5)
          {
            v22 = 2;
            goto LABEL_74;
          }

          goto LABEL_78;
        }

LABEL_68:
        if (v21 - 3 <= 5)
        {
          v22 = 6;
          goto LABEL_74;
        }

        if (v19 < v21)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (v21 != 4)
      {
        v22 = 1;
        goto LABEL_74;
      }

LABEL_78:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v19;
      }

      --v5;
      v10 = v18;
      if (v18 <= v4)
      {
        v10 = v18;
        goto LABEL_90;
      }
    }

    if (v19 == 6)
    {
      if (v21 != 6)
      {
        v22 = 3;
        goto LABEL_74;
      }

      goto LABEL_78;
    }

    if (v19 != 7)
    {
      if (v19 == 8)
      {
        if (v21 != 8)
        {
          v22 = 5;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v21 == 7)
    {
      goto LABEL_78;
    }

    v22 = 4;
LABEL_74:
    if (v21 - 3 >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = (v21 - 3);
    }

    if (v22 >= v23)
    {
      goto LABEL_78;
    }

LABEL_82:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v17 > v7);
  v6 = v17;
  if (v17 == v4)
  {
    goto LABEL_91;
  }

LABEL_92:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_163D18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_163DA4(v3);
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

BOOL sub_163E30(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

BOOL sub_163EF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 == 6)
        {
          return 0;
        }

        v3 = 3;
        goto LABEL_29;
      case 7u:
        if (a2 == 7)
        {
          return 0;
        }

        v3 = 4;
        goto LABEL_29;
      case 8u:
        if (a2 == 8)
        {
          return 0;
        }

        v3 = 5;
        goto LABEL_29;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 == 3)
        {
          return 0;
        }

        v3 = 0;
        goto LABEL_29;
      case 4u:
        if (a2 == 4)
        {
          return 0;
        }

        v3 = 1;
        goto LABEL_29;
      case 5u:
        if (a2 == 5)
        {
          return 0;
        }

        v3 = 2;
        goto LABEL_29;
    }
  }

  if ((a2 - 3) >= 6u)
  {
    return a1 < a2;
  }

  v3 = 6;
LABEL_29:
  if ((a2 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a2 - 3);
  }

  return v3 < v4;
}

_UNKNOWN **sub_164018()
{
  sub_6D5C0(0, 3, 0);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_6D5C0((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_6D5C0((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  if (v2 < (v1 + 3))
  {
    sub_6D5C0((v0 > 1), v1 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v1 + 3;
  *(&_swiftEmptyArrayStorage[4] + v4) = 2;
  sub_19694(_swiftEmptyArrayStorage);
  return &off_CF0360;
}

uint64_t getEnumTagSinglePayload for AudioTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1642A0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1642B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1642D4()
{
  result = qword_DF2790;
  if (!qword_DF2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2790);
  }

  return result;
}

unint64_t sub_164370()
{
  result = qword_DF27A8;
  if (!qword_DF27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF27A8);
  }

  return result;
}

void sub_164494(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSGridModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = v5;
    v7 = v5;
  }
}

double sub_1645B8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1657A8, v12);

  return result;
}

double sub_164688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_164928(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
  if (v2)
  {
    v44 = v2;
    v3 = [v1 sectionProperties];
    if (v3)
    {
      v4 = v3;
      v5 = type metadata accessor for JSModelGridSectionBuilder();
      v6 = objc_allocWithZone(v5);
      v7 = &v6[OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties];
      v7[2] = 0;
      *v7 = 2;
      *&v6[OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_requestedProperties] = v4;
      v57.receiver = v6;
      v57.super_class = v5;
      v8 = objc_msgSendSuper2(&v57, "init");
    }

    else
    {
      v8 = 0;
    }

    v9 = [v1 itemProperties];
    v43 = v1;
    if (v9)
    {
      v10 = v9;
      v11 = [v1 itemKind];
      if (!v11 || (v12 = v11, [v11 modelClass], v12, swift_getObjCClassMetadata(), (v13 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v13 = [objc_opt_self() emptyPropertySet];
      }

      v14 = [v10 propertySetByCombiningWithPropertySet:{v13, v1}];

      v15 = objc_allocWithZone(type metadata accessor for JSModelGridItemBuilder());
      v16 = sub_4E1C54(v14);
    }

    else
    {
      v16 = 0;
    }

    v56 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v55 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v17 = JSGrid.sections.getter();
    v19 = v17;
    if (v17 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v21 = 0;
      v49 = v8;
      v50 = v19 & 0xC000000000000001;
      v45 = v19 + 32;
      v46 = v19 & 0xFFFFFFFFFFFFFF8;
      v47 = i;
      v48 = v19;
      while (1)
      {
        if (v50)
        {
          v22 = sub_35FC8C(v21, v19, v18);
        }

        else
        {
          if (v21 >= *(v46 + 16))
          {
            goto LABEL_42;
          }

          v22 = *(v45 + 8 * v21);
        }

        v23 = v22;
        if (__OFADD__(v21++, 1))
        {
          break;
        }

        if (v8)
        {
          sub_1A5D14(v22);
          v51 = v25;
          [v56 appendSection:?];
          [v55 appendSection:v23];
          v26 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
          swift_beginAccess();
          v27 = *&v23[v26];
          if (v27 >> 62)
          {
            v28 = sub_ABB060();
            v52 = v23;
            v53 = v21;
            if (v28)
            {
LABEL_24:

              v30 = 0;
              while (1)
              {
                if ((v27 & 0xC000000000000001) != 0)
                {
                  v35 = sub_360C78(v30, v27, v29);
                }

                else
                {
                  if (v30 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_40;
                  }

                  v35 = *(v27 + 8 * v30 + 32);
                }

                v19 = v35;
                v36 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  break;
                }

                if (v16)
                {
                  v37 = [a1 userIdentity];
                  if (!v37)
                  {
                    __break(1u);
                    goto LABEL_45;
                  }

                  v31 = v37;
                  sub_4DFEA4(v19, v37);
                  v33 = v32;

                  v8 = &selRef__authenticateReturningError_;
                  [v55 appendItem:v19];
                  v34 = v33;
                  [v56 appendItem:v34];
                }

                ++v30;
                if (v36 == v28)
                {
                  goto LABEL_15;
                }
              }

              __break(1u);
LABEL_40:
              __break(1u);
              break;
            }
          }

          else
          {
            v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
            v52 = v23;
            v53 = v21;
            if (v28)
            {
              goto LABEL_24;
            }
          }

LABEL_15:

          v19 = v48;
          v8 = v49;
          i = v47;
          v21 = v53;
          if (v53 == v47)
          {
            goto LABEL_44;
          }
        }

        else
        {

          if (v21 == i)
          {
            goto LABEL_44;
          }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v38 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v43 unpersonalizedContentDescriptors:v56];
    [v38 setRepresentedObjects:v55];
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    *(v39 + 24) = a1;
    aBlock[4] = sub_1656BC;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_27_0;
    v40 = _Block_copy(aBlock);
    v41 = v43;
    v42 = a1;

    [v38 performWithResponseHandler:v40];

    _Block_release(v40);
  }

  else
  {
LABEL_45:
    __break(1u);
  }
}

void sub_164E9C(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSGridModelResponse());
    v9 = a1;
    v13 = sub_1650F8(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_1650F8(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_sectionsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSGridModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    v12 = v11;
    v13 = *JSGrid.sectionsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_sectionsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_165524(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1655EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_16563C()
{

  return swift_deallocObject();
}

uint64_t sub_16567C()
{

  return swift_deallocObject();
}

uint64_t sub_1656C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1656FC()
{

  return swift_deallocObject();
}

uint64_t sub_165750()
{

  return swift_deallocObject();
}

uint64_t sub_1657B8()
{

  return swift_deallocObject();
}

void sub_16580C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail);
  v2 = type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = v1;
  v115.receiver = v3;
  v115.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v115, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v112 = v7;
  v8 = [v6 standardUserDefaults];
  LOBYTE(v5) = NSUserDefaults.showAllTVShows.getter();

  if (v5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = [objc_opt_self() kindWithVariants:v9];
  [v7 setItemKind:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_B00DA0;
  *(v108 + 32) = sub_AB92A0();
  *(v108 + 40) = v11;
  *(v108 + 48) = sub_AB92A0();
  *(v108 + 56) = v12;
  *(v108 + 64) = sub_AB92A0();
  *(v108 + 72) = v13;
  *(v108 + 80) = sub_AB92A0();
  *(v108 + 88) = v14;
  *(v108 + 96) = sub_AB92A0();
  *(v108 + 104) = v15;
  *(v108 + 112) = sub_AB92A0();
  *(v108 + 120) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v110 = inited;
  v111 = inited + 32;
  *(inited + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_AF85F0;
  v109 = v21;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF85E0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  *(v23 + 48) = sub_AB92A0();
  *(v23 + 56) = v25;
  *(v23 + 64) = sub_AB92A0();
  *(v23 + 72) = v26;
  *(v23 + 80) = sub_AB92A0();
  *(v23 + 88) = v27;
  *(v23 + 96) = sub_AB92A0();
  *(v23 + 104) = v28;
  *(v23 + 112) = sub_AB92A0();
  *(v23 + 120) = v29;
  *(v23 + 128) = sub_AB92A0();
  *(v23 + 136) = v30;
  *(v23 + 144) = sub_AB92A0();
  *(v23 + 152) = v31;
  *(v23 + 160) = sub_AB92A0();
  *(v23 + 168) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_AF8820;
  *(v33 + 32) = sub_AB92A0();
  *(v33 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF4EC0;
  *(v35 + 32) = sub_AB92A0();
  *(v35 + 40) = v36;
  isa = sub_AB9740().super.isa;
  v38 = objc_opt_self();
  v39 = [v38 propertySetWithProperties:isa];

  *(v33 + 48) = v39;
  *(v33 + 56) = sub_AB92A0();
  *(v33 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF85F0;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v42;
  *(v41 + 48) = sub_AB92A0();
  *(v41 + 56) = v43;
  v44 = sub_AB9740().super.isa;
  v45 = [v38 propertySetWithProperties:v44];

  *(v33 + 72) = v45;
  *(v33 + 80) = sub_AB92A0();
  *(v33 + 88) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_AF85F0;
  *(v47 + 32) = sub_AB92A0();
  *(v47 + 40) = v48;
  *(v47 + 48) = sub_AB92A0();
  *(v47 + 56) = v49;
  v50 = sub_AB9740().super.isa;
  v51 = [v38 propertySetWithProperties:v50];

  *(v33 + 96) = v51;
  sub_96EA4(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v52 = objc_allocWithZone(MPPropertySet);
  v53 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v54 = sub_AB8FD0().super.isa;

  v55 = [v52 initWithProperties:v53 relationships:v54];

  v56 = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v57 = sub_10F414(v56);
  v58 = [v55 propertySetByCombiningWithPropertySet:v57];

  v59 = sub_10F414(v56);
  v60 = [v58 propertySetByCombiningWithPropertySet:v59];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v63 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v64 = [v62 propertySetByCombiningWithPropertySet:v63];

  v65 = [v60 propertySetByCombiningWithPropertySet:v64];
  v109[6] = v65;
  v109[7] = sub_AB92A0();
  v109[8] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_B00DB0;
  *(v67 + 32) = sub_AB92A0();
  *(v67 + 40) = v68;
  *(v67 + 48) = sub_AB92A0();
  *(v67 + 56) = v69;
  *(v67 + 64) = sub_AB92A0();
  *(v67 + 72) = v70;
  *(v67 + 80) = sub_AB92A0();
  *(v67 + 88) = v71;
  *(v67 + 96) = sub_AB92A0();
  *(v67 + 104) = v72;
  *(v67 + 112) = sub_AB92A0();
  *(v67 + 120) = v73;
  *(v67 + 128) = sub_AB92A0();
  *(v67 + 136) = v74;
  *(v67 + 144) = sub_AB92A0();
  *(v67 + 152) = v75;
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_AF4EC0;
  *(v76 + 32) = sub_AB92A0();
  *(v76 + 40) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_AF85F0;
  *(v78 + 32) = sub_AB92A0();
  *(v78 + 40) = v79;
  *(v78 + 48) = sub_AB92A0();
  *(v78 + 56) = v80;
  v81 = sub_AB9740().super.isa;
  v82 = [v38 propertySetWithProperties:v81];

  *(v76 + 48) = v82;
  sub_96EA4(v76);
  swift_setDeallocating();
  sub_12E1C(v76 + 32, &unk_DE8E80, &unk_AF87C0);
  v83 = objc_allocWithZone(MPPropertySet);
  v84 = sub_AB9740().super.isa;

  v85 = sub_AB8FD0().super.isa;

  v86 = [v83 initWithProperties:v84 relationships:v85];

  v87 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v88 = sub_10F414(v87);
  v89 = [v86 propertySetByCombiningWithPropertySet:v88];

  v90 = sub_10F414(v87);
  v91 = [v89 propertySetByCombiningWithPropertySet:v90];

  v92 = swift_getObjCClassFromMetadata();
  v93 = [v92 requiredLibraryNavigationHandlerProperties];
  v94 = [v92 requiredStoreNavigationHandlerProperties];
  v95 = [v93 propertySetByCombiningWithPropertySet:v94];

  v96 = [v91 propertySetByCombiningWithPropertySet:v95];
  v109[9] = v96;
  sub_96EA4(v109);
  swift_setDeallocating();
  swift_arrayDestroy();
  v97 = objc_allocWithZone(MPPropertySet);
  v98 = sub_AB9740().super.isa;

  v99 = sub_AB8FD0().super.isa;

  v100 = [v97 initWithProperties:v98 relationships:v99];

  *(v110 + 48) = v100;
  sub_96EA4(v110);
  swift_setDeallocating();
  sub_12E1C(v111, &unk_DE8E80, &unk_AF87C0);
  v101 = objc_allocWithZone(MPPropertySet);
  v102 = sub_AB9740().super.isa;

  v103 = sub_AB8FD0().super.isa;

  v104 = [v101 initWithProperties:v102 relationships:v103];

  [v112 setItemProperties:v104];
  v105 = swift_allocObject();
  *(v105 + 16) = v113;
  aBlock[4] = sub_169C44;
  aBlock[5] = v105;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_49;
  v106 = _Block_copy(aBlock);
  v107 = v113;

  [v112 performWithResponseHandler:v106];
  _Block_release(v106);
}

void sub_166518()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_E71898];
    type metadata accessor for TVShowEpisodeDetailView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
    *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView] = v4;
    v6 = v4;

    v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled] = 0;
    *(*&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 0;
    sub_25DF4C();
    *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkCachingReference] = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_artworkCachingReference];
    swift_retain_n();

    sub_22B15C();

    [v3 addSubview:v6];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler];
    v9 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler];
    v10 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler + 8];
    *v8 = sub_169CE4;
    v8[1] = v7;

    sub_17654(v9, v10);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler];
    v13 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler];
    v14 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler + 8];
    *v12 = sub_169CEC;
    v12[1] = v11;

    sub_17654(v13, v14);

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
    v17 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
    v18 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler + 8];
    *v16 = sub_169CF4;
    v16[1] = v15;

    sub_17654(v17, v18);

    *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate + 8] = &off_D127D8;
    swift_unknownObjectWeakAssign();
    sub_167A64();
  }

  else
  {
    __break(1u);
  }
}

void sub_166808(uint64_t a1)
{
  v1 = sub_AB3430();
  v71 = *(v1 - 8);
  v72 = v1;
  __chkstk_darwin();
  v70 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v10 = &v62 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v62 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v73 = &v62 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v67 = v3;
  v18 = v4;
  v19 = *&Strong[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
  if (!v19)
  {

    return;
  }

  v66 = v6;
  v20 = v19;
  v68 = JSTVShowEpisodeDetail.item.getter();
  if (!v68)
  {

    return;
  }

  v21 = v20;
  v22 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v23 = MPModelObject.bestIdentifier(for:)(*v22, 1u);
  if (!v24)
  {

    return;
  }

  v64 = v19;
  v80 = &type metadata for String;
  *&v79 = v23;
  *(&v79 + 1) = v24;
  v25 = [v21 innerObject];
  if (v25)
  {
    v26 = v21;
    v27 = v25;
    v28 = MPModelObject.metricsDictionary.getter();

    v21 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = v18;
  sub_9ACFC(&v79, v81);
  v82 = 256;
  v83 = 2;
  v84 = v28;
  v30 = *JSMetricsController.shared.unsafeMutableAddressor();
  JSMetricsController.recordNativeEvent(_:)();

  v62 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  v87 = xmmword_AF7710;
  v63 = v17;
  PresentationSource.init(viewController:position:)(v63, v85, &v79);
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v65 = v21;
  v31 = [v21 innerObject];
  sub_2641C4(v31, v17, static MPMediaLibraryFilteringOptions.none.getter, 0, v73);

  sub_15F84(v77, &v74, &unk_DE8E30, "\b]\r");
  v32 = v67;
  if (*(&v75 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v33 = _s30CollectionViewSelectionHandlerVMa(0);
    v34 = swift_dynamicCast();
    v35 = *(v33 - 8);
    (*(v35 + 56))(v10, v34 ^ 1u, 1, v33);
    v36 = (*(v35 + 48))(v10, 1, v33);
    v37 = v66;
    if (v36 != 1)
    {
      (*(v29 + 16))(v14, &v10[*(v33 + 20)], v32);
      sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
      v38 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_12E1C(&v74, &unk_DE8E30, "\b]\r");
    v39 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
    v37 = v66;
  }

  sub_12E1C(v10, &qword_E037A0, &unk_AF8B30);
  v38 = 1;
LABEL_16:
  (*(v29 + 56))(v14, v38, 1, v32);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(ObjectType, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    sub_15F84(v14, v12, &unk_DE8E20, &qword_AF7990);
    if ((*(v29 + 48))(v12, 1, v32) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    else
    {
      (*(v29 + 32))(v69, v12, v32);
      sub_2D668();
      sub_ABAD10();
    }

    v50 = swift_getObjectType();
    v51 = v70;
    sub_3B8F68(v50);
    v49 = sub_21CCAC(1, v51, &v74, v50, v48);
    (*(v71 + 8))(v51, v72);
    sub_12E1C(&v74, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    v49 = 0;
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  sub_15F28(&v79, &v74);
  sub_15F84(v77, (v8 + 104), &unk_DE8E30, "\b]\r");
  v56 = v73;
  sub_15F84(v73, &v8[*(v37 + 28)], &unk_DEA510, "\b]\r");
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v74, v8);
  *(v8 + 12) = v64;
  v57 = *v62;
  *(&v75 + 1) = v37;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
  sub_2D604(v8, boxed_opaque_existential_0);
  v59 = v65;
  v60 = v57;
  v61 = v68;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v68, 0, v49, v55, &v74);

  sub_12E1C(v56, &unk_DEA510, "\b]\r");
  sub_12E1C(v77, &unk_DE8E30, "\b]\r");
  sub_1611C(&v79);
  sub_169BB8(v81);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v74, &unk_DE8E40, &unk_AF8050);
}

void sub_16714C(void *a1, uint64_t a2)
{
  v3 = sub_AB3430();
  v67 = *(v3 - 8);
  __chkstk_darwin();
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v68 = *(v5 - 8);
  __chkstk_darwin();
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v11 = &v60 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v60 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v69 = &v60 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v60 = v3;
  v64 = v7;
  v19 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail);
  v20 = OBJC_IVAR____TtC11MusicJSCore21JSTVShowEpisodeDetail_containerDetailLink;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (!v21)
  {

    return;
  }

  v63 = v21;
  v61 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = v18;
  [a1 bounds];
  v84[0] = a1;
  v84[1] = v23;
  v84[2] = v24;
  v84[3] = v25;
  v84[4] = v26;
  v85 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v84, 15, v76);
  v80[0] = v76[0];
  v80[1] = v76[1];
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v27 = a1;
  v62 = v22;
  PresentationSource.init(viewController:position:)(v22, v80, v75);
  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
  sub_15F84(v73, &v70, &unk_DE8E30, "\b]\r");
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v29 = _s30CollectionViewSelectionHandlerVMa(0);
    v30 = swift_dynamicCast();
    v31 = *(v29 - 8);
    (*(v31 + 56))(v11, v30 ^ 1u, 1, v29);
    v32 = (*(v31 + 48))(v11, 1, v29);
    v33 = v64;
    v34 = v68;
    if (v32 != 1)
    {
      (*(v68 + 16))(v15, &v11[*(v29 + 20)], v5);
      sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
      v35 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v70, &unk_DE8E30, "\b]\r");
    v36 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    v33 = v64;
    v34 = v68;
  }

  sub_12E1C(v11, &qword_E037A0, &unk_AF8B30);
  v35 = 1;
LABEL_9:
  (*(v34 + 56))(v15, v35, 1, v5);
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37 && (v38 = v37, sub_12B2FC(), v40 = v39, v42 = v41, v38, v40))
  {
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(ObjectType, v42);
    v45 = v44;
    swift_unknownObjectRelease();
    sub_15F84(v15, v13, &unk_DE8E20, &qword_AF7990);
    if ((*(v34 + 48))(v13, 1, v5) == 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
    }

    else
    {
      (*(v34 + 32))(v65, v13, v5);
      sub_2D668();
      sub_ABAD10();
    }

    v47 = swift_getObjectType();
    v48 = v66;
    sub_3B8F68(v47);
    v46 = sub_21CCAC(1, v48, &v70, v47, v45);
    (*(v67 + 8))(v48, v60);
    sub_12E1C(&v70, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    v46 = 0;
  }

  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    sub_12AFE8();
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  sub_15F28(v75, &v70);
  sub_15F84(v73, (v9 + 104), &unk_DE8E30, "\b]\r");
  v53 = v33;
  v54 = &v9[*(v33 + 28)];
  v55 = v69;
  sub_15F84(v69, v54, &unk_DEA510, "\b]\r");
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v70, v9);
  *(v9 + 12) = 0;
  v56 = *v61;
  *(&v71 + 1) = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  sub_2D604(v9, boxed_opaque_existential_0);
  v58 = v56;
  v59 = v63;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v63, 0, v46, v52, &v70);

  sub_12E1C(v55, &unk_DEA510, "\b]\r");
  sub_12E1C(v73, &unk_DE8E30, "\b]\r");
  sub_1611C(v75);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v70, &unk_DE8E40, &unk_AF8050);
}

void sub_1679E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    [v4 setNeedsLayout];
  }
}

void sub_167A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = v1;
  sub_1689FC();
  v5 = [v3 itemType];
  if (v5 == &dword_8)
  {
    v6 = &selRef_episode;
  }

  else
  {
    if (v5 != &dword_C)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = &selRef_movie;
  }

  v7 = [v3 *v6];
LABEL_10:
  v8 = v7;
  sub_2294C0(v7, 0);
}

void sub_167B9C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
    if (v13)
    {
      v14 = v13;
      sub_229208(v5, v7, v9, v11);
      if (*&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem])
      {
        sub_22921C(v12, v9);
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }
    }

    else
    {
      v16 = 1.0;
    }

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    [v1 setPreferredContentSize:{CGRectGetWidth(v18), v16}];
  }

  else
  {
    __break(1u);
  }
}

void sub_167D34(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  if (v3)
  {
    v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled] = 1;
    *(*&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 1;
    v4 = v3;
    sub_25DF4C();
  }
}

void sub_167E20(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse];
  if (a1)
  {
    if (v3 == a1 || v3 == 0)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = [v3 results];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 firstItem];

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 contentItem];
      v10 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
      *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem] = v9;
      if (v10)
      {
        if (v9 == v10)
        {
          v12 = v10;
          swift_unknownObjectRelease();
LABEL_20:

          return;
        }

LABEL_17:
        v12 = v10;
        v11 = v9;
        if ([v1 isViewLoaded])
        {
          sub_167A64();
          sub_1689FC();
        }

        swift_unknownObjectRelease();

        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_17;
      }
    }

    swift_unknownObjectRelease();
  }
}

double sub_167F9C(void *a1)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_169CDC, v3);

  return result;
}

void sub_16806C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
    v6 = a2;
    v7 = v5;
    sub_417214(a2);
    sub_167E20(v5);
  }
}

void sub_1680F8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40, &qword_AF7998);
  __chkstk_darwin();
  v6 = &v58 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v58 - v8;
  v10 = OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem;
  v11 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
  if (!v11)
  {
    return;
  }

  v12 = [v11 episode];
  if (!v12)
  {
    v18 = *&v3[v10];
    if (!v18)
    {
      return;
    }

    v12 = [v18 movie];
    if (!v12)
    {
      return;
    }
  }

  v63 = v12;
  v13 = [v12 relativeModelObjectForStoreLibraryPersonalization];
  if (!v13)
  {
    v17 = v63;
    goto LABEL_11;
  }

  v14 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  v62 = v13;
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus);
    v16 = v15[4];
    if ((v16 & 0xFE) != 0xF8)
    {
      v19 = *v15;
      v58 = v15[1];
      v59 = v19;
      v20 = v15[5];
      v60 = v15[3];
      v61 = v20;
      v21 = v15[2];
      if ((v16 & 0xFE) != 0x7A && v16 >> 1 == 127)
      {
        v22 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v23 = MPModelObject.bestIdentifier(for:)(*v22, 0);
        if (v24)
        {
          v68[3] = &type metadata for String;
          v68[0] = v23;
          v68[1] = v24;
          v25 = MPModelObject.metricsDictionary.getter();
          v69 = 0;
          v70 = 0;
          v71 = v25;
          v26 = *JSMetricsController.shared.unsafeMutableAddressor();
          JSMetricsController.recordNativeEvent(_:)();
          sub_169BB8(v68);
        }
      }

      v27 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v28 = sub_AB9260();
      [v27 appendSection:v28];

      [v27 appendItem:v62];
      v29 = type metadata accessor for LibraryAddKeepLocalHandlingController();
      v30 = v27;
      [a3 bounds];
      v85[0] = a3;
      v85[1] = v31;
      v85[2] = v32;
      v85[3] = v33;
      v85[4] = v34;
      v86 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v85, 15, v72);
      v81[0] = v72[0];
      v81[1] = v72[1];
      v82 = v73;
      v83 = v74;
      v84 = v75;
      v35 = a3;
      *&v36 = PresentationSource.init(viewController:position:)(v3, v81, v68).n128_u64[0];
      if ((v16 & 0xFE) == 0x7A)
      {
        goto LABEL_19;
      }

      v37 = v16 >> 1;
      if (v37 <= 0x7C)
      {
        if (v37 != 62)
        {
          if (v37 == 63)
          {
            goto LABEL_26;
          }

LABEL_29:
          if (v16 < 0)
          {
            MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v61, v6);
            v52 = sub_AB8230();
            v53 = *(v52 - 8);
            if ((*(v53 + 48))(v6, 1, v52) == 1)
            {

              sub_1611C(v68);
              v54 = &qword_DE7F40;
              v55 = &qword_AF7998;
              v56 = v6;
            }

            else
            {
              MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v76);
              (*(v53 + 8))(v6, v52);
              if (!v79)
              {
                goto LABEL_19;
              }

              v64[0] = v76[0];
              v64[1] = v76[1];
              v64[2] = v77;
              v65 = v78;
              v66 = v79;
              v67 = v80;
              v57 = Alert.uiAlertController.getter(v77);
              PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v57, 1, 1, 0, 0);

              sub_1611C(v68);
              v54 = &unk_DE7F48;
              v55 = &unk_AF8BC0;
              v56 = v76;
            }

            sub_12E1C(v56, v54, v55);
            goto LABEL_21;
          }

          if ([v30 firstItem])
          {
            objc_opt_self();
            v41 = swift_dynamicCastObjCClass();
            if (v41)
            {
              v42 = v41;
              v43 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
              [v43 setModelObject:v42];
              [v43 setEnableState:3];
              v44 = [objc_opt_self() sharedDeviceLibraryController];
              [v44 performKeepLocalChangeRequest:v43 withRelatedModelObjects:0];

              sub_1611C(v68);
              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_43;
          }

LABEL_19:

LABEL_20:
          sub_1611C(v68);
LABEL_21:

          return;
        }

        if (![v30 firstItem])
        {
          goto LABEL_19;
        }

        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;
          if (([v47 libraryRemovalSupportedOptions] & 2) != 0)
          {
            sub_2BA534(v48, 0, v68);
          }

          else
          {
            sub_2BAC50(v48, 0);
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (v37 == 125)
        {
          if ([v30 firstItem])
          {
            objc_opt_self();
            v45 = swift_dynamicCastObjCClass();
            if (!v45)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v45 = 0;
          }

          v49 = sub_AB9990();
          (*(*(v49 - 8) + 56))(v9, 1, 1, v49);
          sub_15F28(v68, v64);
          sub_AB9940();
          v50 = sub_AB9930();
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = &protocol witness table for MainActor;
          sub_17704(v64, v51 + 32);
          sub_DBDC8(0, 0, v9, &unk_AF79B0, v51);

          sub_1611C(v68);
          goto LABEL_46;
        }

        if (v37 != 126)
        {
          if (v37 == 127)
          {
LABEL_26:
            v38 = sub_AB9990();
            (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
            sub_15F28(v68, v64);
            v39 = swift_allocObject();
            *(v39 + 16) = 0;
            *(v39 + 24) = 0;
            *(v39 + 32) = v29;
            *(v39 + 40) = v27;
            v40 = v58;
            *(v39 + 48) = v59;
            *(v39 + 56) = v40;
            *(v39 + 64) = v21;
            *(v39 + 72) = v60;
            *(v39 + 80) = v16;
            *(v39 + 81) = v76[0];
            *(v39 + 84) = *(v76 + 3);
            *(v39 + 96) = 0;
            *(v39 + 104) = 0;
            *(v39 + 88) = v61;
            sub_17704(v64, v39 + 112);
            sub_DC0B8(0, 0, v9, &unk_AF79C0, v39);
            sub_1611C(v68);

LABEL_46:

            return;
          }

          goto LABEL_29;
        }

        if (![v30 firstItem])
        {
          goto LABEL_19;
        }

        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          sub_2B9FD0(v46, 0, v68);
LABEL_50:

          sub_1611C(v68);
          swift_unknownObjectRelease();
          return;
        }
      }

LABEL_43:

      swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  v17 = v62;
LABEL_11:
}

void sub_1689FC()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse];
  if (!v2)
  {
    return;
  }

  v195 = v1;
  v3 = [v2 results];
  if (!v3)
  {
LABEL_138:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 firstItem];

  if (!v5)
  {
    v12 = v195;
    goto LABEL_15;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
    if (v7)
    {
      v8 = v6;
      v191 = v0;
      v192 = v7;
      v10 = MPModelStoreBrowseContentItem.kind.getter();
      v11 = v9;
      if (v9 != 8)
      {
        if (v9 != 12)
        {
          if (v9 == 255)
          {

            swift_unknownObjectRelease();
            v12 = v192;
LABEL_15:

            return;
          }

LABEL_132:
          v182 = [v191 view];
          [v182 setNeedsLayout];

          sub_3EB30(v10, v11);
          swift_unknownObjectRelease();

          return;
        }

        v13 = [v8 headlineText];
        if (v13)
        {
          v14 = v13;
          v15 = sub_AB92A0();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0xE000000000000000;
        }

        v23 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
        v24 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
        v25 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8];
        *v23 = v15;
        v23[1] = v17;
        sub_22A254(v24, v25);

        v26 = [v8 titleText];
        if (v26)
        {
          v27 = v26;
          v28 = sub_AB92A0();
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
LABEL_39:
            v47 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
            v48 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
            v49 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8];
            *v47 = v28;
            v47[1] = v30;
            sub_22A3A4(v48, v49);

            v50 = [v8 showNameText];
            if (v50)
            {
              v51 = v50;
              v52 = sub_AB92A0();
              v54 = v53;

              v55 = HIBYTE(v54) & 0xF;
              if ((v54 & 0x2000000000000000) == 0)
              {
                v55 = v52 & 0xFFFFFFFFFFFFLL;
              }

              if (v55)
              {
                v56 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
                v57 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
                v58 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
                *v56 = v52;
                v56[1] = v54;
                if ((v57 != v52 || v58 != v54) && (sub_ABB3C0() & 1) == 0)
                {
                  v59 = sub_22A108();

                  String.trim()();

                  v60 = sub_AB9260();

                  [v59 setTitle:v60 forState:0];

                  [v195 setNeedsLayout];
                  v61 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
                  if (v61)
                  {
                    v62 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler + 8];

                    v61(v195);
                    sub_17654(v61, v62);
                  }
                }
              }
            }

            v63 = [v8 descriptionText];
            if (v63)
            {
              v64 = v63;
              v65 = sub_AB92A0();
              v67 = v66;

              v68 = HIBYTE(v67) & 0xF;
              if ((v67 & 0x2000000000000000) == 0)
              {
                v68 = v65 & 0xFFFFFFFFFFFFLL;
              }

              if (v68)
              {
                goto LABEL_57;
              }
            }

            v69 = [v10 descriptionText];
            if (v69)
            {
              v70 = v69;
              v65 = sub_AB92A0();
              v67 = v71;
            }

            else
            {
              v65 = 0;
              v67 = 0xE000000000000000;
            }

LABEL_57:
            v72 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
            v73 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
            v74 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8];
            *v72 = v65;
            v72[1] = v67;
            sub_22A4D8(v73, v74);

            v75 = [v8 episodeInformationItems];
            v189 = v8;
            if (!v75 || (v76 = v75, v77 = sub_AB9760(), v76, v79 = sub_12DAD4(v77, v78), , !v79))
            {
              v84 = _swiftEmptyArrayStorage;
              v95 = v195;
              goto LABEL_88;
            }

            v81 = v79;
            v187 = v10;
            if (v79 >> 62)
            {
              v183 = sub_ABB060();
              v81 = v79;
              v82 = v183;
            }

            else
            {
              v82 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
            }

            v185 = v11;
            if (!v82)
            {
              v84 = _swiftEmptyArrayStorage;
LABEL_87:

              v95 = v195;
              v10 = v187;
              v11 = v185;
LABEL_88:
              *&v95[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems] = v84;

              sub_22A608(v115, v116, v117);
              v118 = [v189 backgroundArtworkCatalog];
              if (!v118)
              {
                v118 = [v10 editorialArtworkCatalog];
              }

              v119 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog];
              *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog] = v118;
              v120 = v118;
              v121 = v118;

              v122 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
              v123 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
              v124 = *(v123 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
              *(v123 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = v120;
              v125 = v121;

              sub_74EA4(v120);

              v126 = [v10 playbackPosition];
              if (v126)
              {
LABEL_91:
                v127 = v126;
                [v126 bookmarkTime];
                v129 = v128;

                goto LABEL_130;
              }

LABEL_129:
              v129 = 0.0;
LABEL_130:
              [v10 duration];
              v180 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition];
              *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition] = v129 / v181;
              if (sub_AB38D0())
              {
                *(*v122 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = *v180;
                sub_25DD64();
              }

              goto LABEL_132;
            }

            if (v82 >= 1)
            {
              v83 = 0;
              v193 = v81 & 0xC000000000000001;
              v84 = _swiftEmptyArrayStorage;
              v85 = v81;
              do
              {
                if (v193)
                {
                  v86 = sub_360360(v83, v81, v80);
                }

                else
                {
                  v86 = *(v81 + 8 * v83 + 32);
                }

                v87 = v86;
                v88 = (*&stru_68.segname[swift_isaMask & *v86])();
                v89 = (*(&stru_68.size + (swift_isaMask & *v87)))();
                v91 = v90;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v84 = sub_6B1FC(0, *(v84 + 2) + 1, 1, v84);
                }

                v93 = *(v84 + 2);
                v92 = *(v84 + 3);
                if (v93 >= v92 >> 1)
                {
                  v84 = sub_6B1FC((v92 > 1), v93 + 1, 1, v84);
                }

                *(v84 + 2) = v93 + 1;
                v94 = &v84[24 * v93];
                v94[32] = v88 & 1;
                ++v83;
                *(v94 + 5) = v89;
                *(v94 + 6) = v91;

                v81 = v85;
              }

              while (v82 != v83);
              goto LABEL_87;
            }

            __break(1u);
            goto LABEL_137;
          }
        }

        v32 = [v10 title];
        if (v32)
        {
          v33 = v32;
          v28 = sub_AB92A0();
          v30 = v34;
        }

        else
        {
          v28 = 0;
          v30 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v18 = [v8 headlineText];
      if (v18)
      {
        v19 = v18;
        v20 = sub_AB92A0();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v35 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
      v36 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
      v37 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8];
      *v35 = v20;
      v35[1] = v22;
      sub_22A254(v36, v37);

      v38 = [v8 titleText];
      if (v38)
      {
        v39 = v38;
        v40 = sub_AB92A0();
        v42 = v41;

        v43 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v43 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
LABEL_75:
          v96 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
          v97 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
          v98 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8];
          *v96 = v40;
          v96[1] = v42;
          sub_22A3A4(v97, v98);

          v99 = [v8 showNameText];
          if (v99)
          {
            v100 = v99;
            v101 = sub_AB92A0();
            v103 = v102;

            v104 = HIBYTE(v103) & 0xF;
            if ((v103 & 0x2000000000000000) == 0)
            {
              v104 = v101 & 0xFFFFFFFFFFFFLL;
            }

            if (v104)
            {
              v105 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v106 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v107 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
              *v105 = v101;
              v105[1] = v103;
              if (v106 == v101 && v107 == v103)
              {
                goto LABEL_99;
              }

LABEL_96:
              if ((sub_ABB3C0() & 1) == 0)
              {
                v133 = sub_22A108();

                String.trim()();

                v134 = sub_AB9260();

                [v133 setTitle:v134 forState:0];

                [v195 setNeedsLayout];
                v135 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
                if (v135)
                {
                  v136 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler + 8];

                  v135(v195);
                  sub_17654(v135, v136);
                }
              }

LABEL_99:

              v137 = [v8 descriptionText];
              if (v137)
              {
                v138 = v137;
                v139 = sub_AB92A0();
                v141 = v140;

                v142 = HIBYTE(v141) & 0xF;
                if ((v141 & 0x2000000000000000) == 0)
                {
                  v142 = v139 & 0xFFFFFFFFFFFFLL;
                }

                if (v142)
                {
LABEL_107:
                  v146 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
                  v147 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
                  v148 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8];
                  *v146 = v139;
                  v146[1] = v141;
                  sub_22A4D8(v147, v148);

                  v149 = [v8 episodeInformationItems];
                  v190 = v8;
                  if (v149 && (v150 = v149, v151 = sub_AB9760(), v150, v153 = sub_12DAD4(v151, v152), , v153))
                  {
                    v155 = v153;
                    if (v153 >> 62)
                    {
                      v184 = sub_ABB060();
                      v155 = v153;
                      v156 = v184;
                    }

                    else
                    {
                      v156 = *(&dword_10 + (v153 & 0xFFFFFFFFFFFFFF8));
                    }

                    v188 = v10;
                    v186 = v11;
                    if (v156)
                    {
                      if (v156 < 1)
                      {
LABEL_137:
                        __break(1u);
                        goto LABEL_138;
                      }

                      v157 = 0;
                      v194 = v155 & 0xC000000000000001;
                      v158 = _swiftEmptyArrayStorage;
                      v159 = v155;
                      do
                      {
                        if (v194)
                        {
                          v160 = sub_360360(v157, v155, v154);
                        }

                        else
                        {
                          v160 = *(v155 + 8 * v157 + 32);
                        }

                        v161 = v160;
                        v162 = (*&stru_68.segname[swift_isaMask & *v160])();
                        v163 = (*(&stru_68.size + (swift_isaMask & *v161)))();
                        v165 = v164;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v158 = sub_6B1FC(0, *(v158 + 2) + 1, 1, v158);
                        }

                        v167 = *(v158 + 2);
                        v166 = *(v158 + 3);
                        if (v167 >= v166 >> 1)
                        {
                          v158 = sub_6B1FC((v166 > 1), v167 + 1, 1, v158);
                        }

                        *(v158 + 2) = v167 + 1;
                        v168 = &v158[24 * v167];
                        v168[32] = v162 & 1;
                        ++v157;
                        *(v168 + 5) = v163;
                        *(v168 + 6) = v165;

                        v155 = v159;
                      }

                      while (v156 != v157);
                    }

                    else
                    {
                      v158 = _swiftEmptyArrayStorage;
                    }

                    v169 = v195;
                    v10 = v188;
                    v11 = v186;
                  }

                  else
                  {
                    v158 = _swiftEmptyArrayStorage;
                    v169 = v195;
                  }

                  *&v169[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems] = v158;

                  sub_22A608(v170, v171, v172);
                  v173 = [v190 backgroundArtworkCatalog];
                  if (!v173)
                  {
                    v173 = [v10 artworkCatalog];
                  }

                  v174 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog];
                  *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog] = v173;
                  v175 = v173;
                  v176 = v173;

                  v122 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
                  v177 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
                  v178 = *(v177 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
                  *(v177 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = v175;
                  v179 = v176;

                  sub_74EA4(v175);

                  v126 = [v10 playbackPosition];
                  if (v126)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_129;
                }
              }

              v143 = [v10 descriptionText];
              if (v143)
              {
                v144 = v143;
                v139 = sub_AB92A0();
                v141 = v145;
              }

              else
              {
                v139 = 0;
                v141 = 0xE000000000000000;
              }

              goto LABEL_107;
            }
          }

          v108 = [v10 show];
          if (v108)
          {
            v109 = v108;
            v110 = [v108 title];
            if (v110)
            {
              v111 = v110;
              v112 = sub_AB92A0();
              v114 = v113;

LABEL_94:
              v130 = &v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v131 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v132 = *&v195[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
              *v130 = v112;
              v130[1] = v114;
              if (v131 == v112 && v132 == v114)
              {
                goto LABEL_99;
              }

              goto LABEL_96;
            }
          }

          v112 = 0;
          v114 = 0xE000000000000000;
          goto LABEL_94;
        }
      }

      v44 = [v10 title];
      if (v44)
      {
        v45 = v44;
        v40 = sub_AB92A0();
        v42 = v46;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      goto LABEL_75;
    }
  }

  swift_unknownObjectRelease();
}

void sub_1699B8()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem);
}

uint64_t sub_169AA8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_169B24()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_169C0C()
{

  return swift_deallocObject();
}

double block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_169C64()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_169C9C()
{

  return swift_deallocObject();
}

void sub_169CFC(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = sub_AB3470();
  v3 = *(v29 - 8);
  __chkstk_darwin();
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v6 = 0;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v23 = (v3 + 8);
    v24 = i;
    v25 = a1;
    while (1)
    {
      if (v27)
      {
        v7 = sub_3624F0();
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v28;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v32 = sub_AB3440();
      v12 = v11;
      (*v23)(v10, v29);
      v13 = [v8 value];
      v14 = sub_AB92A0();
      v16 = v15;

      v17 = v30;
      sub_1A9FC(&v31, v14, v16);

      v18 = *(v17 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 120) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_6B80C(0, *(v18 + 2) + 1, 1, v18);
        *(v30 + 120) = v18;
      }

      v3 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v3 >= v20 >> 1)
      {
        v18 = sub_6B80C((v20 > 1), v3 + 1, 1, v18);
        *(v30 + 120) = v18;
      }

      *(v18 + 2) = v3 + 1;
      v21 = &v18[40 * v3];
      *(v21 + 4) = v32;
      *(v21 + 5) = v12;
      *(v21 + 6) = v14;
      *(v21 + 7) = v16;
      v21[64] = 1;

      ++v6;
      a1 = v25;
      if (v9 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_169F8C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_3624F0();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_16B110(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_16A080(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE8, &qword_B00F78);
    v1 = sub_ABB0C0();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v11 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    swift_unknownObjectRetain();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {

      swift_unknownObjectRelease();
      return;
    }

    v13 = v12;
    sub_AB92A0();
    sub_ABB5C0();
    sub_AB93F0();
    v14 = sub_ABB610();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v6[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      v9 = v11;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v6[v17];
        if (v21 != -1)
        {
          v8 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_28;
    }

    v8 = __clz(__rbit64((-1 << v16) & ~v6[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
    v9 = v11;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    *(v1[6] + 8 * v8) = v9;
    *(v1[7] + 8 * v8) = v13;
    ++v1[2];
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_16A318(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BC0, &qword_B00F60);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_9ACA0(*(a1 + 48) + 40 * v11, v24);
    sub_808B0(*(a1 + 56) + 32 * v11, v25 + 8);
    v22[0] = v25[0];
    v22[1] = v25[1];
    v23 = v26;
    v21[0] = v24[0];
    v21[1] = v24[1];
    sub_9ACA0(v21, v20);
    if (!swift_dynamicCast())
    {
      sub_12E1C(v21, &unk_DF2B40, &qword_B473A0);

      return;
    }

    sub_808B0(v22 + 8, v20);
    sub_12E1C(v21, &unk_DF2B40, &qword_B473A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    v12 = sub_2EBF88(v18, v19);
    if (v13)
    {
      v8 = (v2[6] + 16 * v12);
      *v8 = v18;
      v8[1] = v19;
      v9 = v12;

      *(v2[7] + 8 * v9) = v18;
      swift_unknownObjectRelease();
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
      v14 = (v2[6] + 16 * v12);
      *v14 = v18;
      v14[1] = v19;
      *(v2[7] + 8 * v12) = v18;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_25;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }
}

void sub_16A5E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0, &qword_B00F10);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_9ACA0(*(a1 + 48) + 40 * v11, v27);
    sub_808B0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_9ACA0(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_808B0(v25 + 8, v20);
    sub_12E1C(v24, &unk_DF2B40, &qword_B473A0);
    v21 = v18;
    sub_9ACFC(v20, v22);
    v12 = v21;
    sub_9ACFC(v22, v23);
    sub_9ACFC(v23, &v21);
    v13 = sub_2EBF88(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_9ACFC(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_9ACFC(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_12E1C(v24, &unk_DF2B40, &qword_B473A0);
}

void sub_16A8C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEED0, &unk_B0A2A0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_9ACA0(*(a1 + 48) + 40 * v11, v33);
        sub_808B0(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_9ACA0(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_12E1C(v30, &unk_DF2B40, &qword_B473A0);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_808B0(v31 + 8, v23);
        sub_12E1C(v30, &unk_DF2B40, &qword_B473A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_2EBF88(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_9AD68(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_12E1C(&v24, &qword_DF2BD0, &unk_AFDC00);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_16ABF0(uint64_t a1)
{
  v1 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v1;
  v20 = *(a1 + 128);
  v21 = *(a1 + 144);
  v2 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v2;
  v3 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v3;
  v4 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v4;
  if (sub_90064(v17) == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(&v18 + 1);
    v5 = v18;
    if (*(&v18 + 1))
    {
    }
  }

  sub_16C270(0xD00000000000001ALL, 0x8000000000B54160, &v15);
  if (!v16)
  {
    sub_12E1C(&v15, &unk_DE8E40, &unk_AF8050);
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  if (!v6)
  {
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_21:
    v10 = 0;
    return v10 & 1;
  }

  if (v9)
  {
    if (v5 != v8 || v6 != v9)
    {
      v11 = sub_ABB3C0();

      v10 = v11 ^ 1;
      return v10 & 1;
    }

    goto LABEL_21;
  }

LABEL_20:

  v10 = 1;
  return v10 & 1;
}

Swift::Int sub_16AD70()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_AB93F0();
  if (v1)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

void sub_16ADF4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_AB93F0();
  if (v2)
  {
    sub_ABB5E0(1u);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

Swift::Int sub_16AE70(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_ABB5C0();
  sub_AB93F0();
  if (v2)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

uint64_t sub_16AEF0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a2[1];
  v7 = a2[11];
  v8 = a2[12];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t sub_16AFA0(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_AB92A0();
  sub_16CCAC(v3, v4, &v10);

  v5 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B90, &unk_B00F50);
  v6 = sub_AB9760();
  sub_169CFC(v6, &v10);

  v7 = [a1 phoneNumbers];
  v8 = sub_AB9760();
  sub_169F8C(v8, &v10);

  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  sub_2B7BC(v18, v20);
  sub_1ADEC(v19, v18);
  sub_2B818(v19);
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v16;
  v20[7] = v17;
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  return sub_2B818(v20);
}

uint64_t sub_16B110(void **a1, uint64_t a2)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v29 = sub_AB3440();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = [v8 value];
  v12 = [v11 unformattedInternationalStringValue];
  if (v12)
  {
    v13 = v12;
  }

  else
  {

    v13 = [v8 value];
    v11 = [v13 stringValue];
  }

  v14 = sub_AB92A0();
  v16 = v15;

  v17 = [v8 value];
  v18 = [v17 unformattedInternationalStringValue];
  if (v18)
  {
    v19 = v18;
    v20 = sub_AB92A0();
    v22 = v21;
  }

  else
  {

    v20 = 0;
    v22 = 0;
  }

  sub_1A9FC(&v30, v14, v16);

  v23 = *(a2 + 120);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v23;
  if ((result & 1) == 0)
  {
    result = sub_6B80C(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
    *(a2 + 120) = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_6B80C((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
    *(a2 + 120) = result;
  }

  *(v23 + 16) = v26 + 1;
  v27 = v23 + 40 * v26;
  *(v27 + 32) = v29;
  *(v27 + 40) = v10;
  *(v27 + 48) = v20;
  *(v27 + 56) = v22;
  *(v27 + 64) = 0;
  return result;
}

void sub_16B388(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

double sub_16B3E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a2 + 112);
  *(v8 + 120) = *(a2 + 96);
  *(v8 + 136) = v9;
  *(v8 + 152) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 56) = *(a2 + 32);
  *(v8 + 72) = v10;
  v11 = *(a2 + 80);
  *(v8 + 88) = *(a2 + 64);
  *(v8 + 104) = v11;
  v12 = *(a2 + 16);
  *(v8 + 24) = *a2;
  *(v8 + 16) = a1 & 1;
  v13 = *(a2 + 144);
  *(v8 + 40) = v12;
  *(v8 + 168) = v13;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  sub_15F84(a2, v21, &unk_E05300, &unk_AFA030);
  sub_307CC(a3, a4);
  BagProvider.shared.unsafeMutableAddressor();
  v14 = swift_allocObject();
  v15 = *(a2 + 112);
  *(v14 + 120) = *(a2 + 96);
  *(v14 + 136) = v15;
  *(v14 + 152) = *(a2 + 128);
  v16 = *(a2 + 48);
  *(v14 + 56) = *(a2 + 32);
  *(v14 + 72) = v16;
  v17 = *(a2 + 80);
  *(v14 + 88) = *(a2 + 64);
  *(v14 + 104) = v17;
  v18 = *(a2 + 16);
  *(v14 + 24) = *a2;
  *(v14 + 16) = a1 & 1;
  v19 = *(a2 + 144);
  *(v14 + 40) = v18;
  *(v14 + 168) = v19;
  *(v14 + 176) = sub_16D11C;
  *(v14 + 184) = v8;
  sub_15F84(a2, v21, &unk_E05300, &unk_AFA030);

  BagProvider.getBag(completion:)(sub_16D12C, v14);

  return result;
}

void sub_16B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
    v18 = a6;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF4EC0;
    swift_errorRetain();
    sub_ABAD90(77);
    v19._object = 0x8000000000B54110;
    v19._countAndFlagsBits = 0xD000000000000047;
    sub_AB94A0(v19);
    sub_ABAF70();
    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    sub_AB94A0(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    sub_ABAF70();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_ABACD0();
    a6 = v18;
  }

  if (a1 == 1 || a4 || (a5 & 1) != 0)
  {
    if ((a5 & 1) == 0)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_171210, 0);
    }

    if (a7)
    {
      a7(a1, a2, a3, a4);
    }
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = a8;
    sub_307CC(a7, a8);
    sub_16DE94(a1, a2, a3, a6, sub_170C70, v17);
  }
}

uint64_t sub_16B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  result = static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_171210, 0);
  if (a5)
  {
    return a5(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_16B8A8@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[1] = a3;
  v30 = a5;
  v29 = sub_AB2A90();
  v6 = *(v29 - 8);
  __chkstk_darwin();
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v10 = v28 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v28 - v15;
  sub_AB3180();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v16, v10, v11);
    (*(v12 + 16))(v14, v16, v11);
    sub_AB2A50();
    sub_AB2A20();
    v33._countAndFlagsBits = 0x2D746E65746E6F43;
    v33._object = 0xEC00000065707954;
    v31.value._countAndFlagsBits = 0xD00000000000001FLL;
    v31.value._object = 0x8000000000B54060;
    sub_AB2A80(v31, v33);
    isa = 0;
    if (a4 >> 60 != 15)
    {
      isa = sub_AB3250().super.isa;
    }

    v21 = MSVGzipCompressData();

    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = sub_AB3260();
    v24 = v23;

    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2 || *(v22 + 16) == *(v22 + 24))
      {
        goto LABEL_14;
      }
    }

    else if (v25)
    {
      if (v22 == v22 >> 32)
      {
LABEL_14:
        sub_466B8(v22, v24);
        goto LABEL_15;
      }
    }

    else if ((v24 & 0xFF000000000000) == 0)
    {
      goto LABEL_14;
    }

    v34._object = 0x8000000000B54080;
    v32.value._countAndFlagsBits = 1885960807;
    v32.value._object = 0xE400000000000000;
    v34._countAndFlagsBits = 0xD000000000000010;
    sub_AB2A80(v32, v34);
    sub_AB2A70();
LABEL_15:
    (*(v12 + 8))(v16, v11);
    v19 = v30;
    v26 = v8;
    v18 = v29;
    (*(v6 + 32))(v30, v26, v29);
    v17 = 0;
    return (*(v6 + 56))(v19, v17, 1, v18);
  }

  sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);
  v17 = 1;
  v18 = v29;
  v19 = v30;
  return (*(v6 + 56))(v19, v17, 1, v18);
}

void sub_16BC90(void *a1, uint64_t a2, void (*a3)(uint64_t, void, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      (a3)(1, 0, 0, a2, a5, a6, a7);
    }
  }

  else if (a1 && (v9 = a5, (v12 = [a1 parsedBodyDictionary]) != 0) && (v13 = v12, v14 = sub_AB8FF0(), v13, sub_16A5E8(v14), v16 = v15, , v16))
  {
    v17 = sub_16D13C(v9 & 1);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = a6;
    v18[4] = a7;
    v18[5] = a3;
    v18[6] = a4;
    v22[4] = sub_170BD0;
    v22[5] = v18;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_1B5EB4;
    v22[3] = &block_descriptor_16;
    v19 = _Block_copy(v22);

    sub_307CC(a3, a4);

    [v17 addOperationWithBlock:v19];
    _Block_release(v19);
  }

  else if (a3)
  {
    sub_170A5C();
    v20 = swift_allocError();
    *v21 = 4;
    a3(1, 0, 0, v20);
  }
}

double sub_16BEBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void, __n128))
{
  if (a4)
  {

    (a4)(a1, a2, a3, 0);
  }

  return result;
}

void sub_16BF58(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = a2 & 1;
  v11 = sub_16D13C(a2 & 1);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  v13 = *(a3 + 112);
  *(v12 + 128) = *(a3 + 96);
  *(v12 + 144) = v13;
  *(v12 + 160) = *(a3 + 128);
  v14 = *(a3 + 144);
  v15 = *(a3 + 48);
  *(v12 + 64) = *(a3 + 32);
  *(v12 + 80) = v15;
  v16 = *(a3 + 80);
  *(v12 + 96) = *(a3 + 64);
  *(v12 + 112) = v16;
  v17 = *(a3 + 16);
  *(v12 + 32) = *a3;
  *(v12 + 48) = v17;
  *(v12 + 176) = v14;
  *(v12 + 184) = a4;
  *(v12 + 192) = a5;
  aBlock[4] = sub_16D29C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_50;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  sub_15F84(a3, v20, &unk_E05300, &unk_AFA030);
  sub_307CC(a4, a5);

  [v11 addOperationWithBlock:v18];
  _Block_release(v18);
}

void sub_16C0C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    type metadata accessor for SocialContactsCoordinator();
    v6 = *(a2 + 112);
    v16[6] = *(a2 + 96);
    v16[7] = v6;
    v16[8] = *(a2 + 128);
    v17 = *(a2 + 144);
    v7 = *(a2 + 48);
    v16[2] = *(a2 + 32);
    v16[3] = v7;
    v8 = *(a2 + 80);
    v16[4] = *(a2 + 64);
    v16[5] = v8;
    v9 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v9;
    v10 = sub_90064(v16);
    v11 = v5;
    if (v10 != 1)
    {
      sub_15F84(a2, &v13, &unk_E05300, &unk_AFA030);
      if ((sub_16ABF0(a2) & 1) == 0)
      {
        sub_16C270(0xD000000000000010, 0x8000000000B4F1E0, &v14);
        sub_12E1C(a2, &unk_E05300, &unk_AFA030);
        if (*(&v15 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0, qword_AFBB40);
          if (swift_dynamicCast())
          {
            v12 = v13;
            goto LABEL_8;
          }

LABEL_7:
          v12 = &_swiftEmptySetSingleton;
LABEL_8:
          JSAccount.friendsDiscoverySocialProfileIDs.setter(v12);

          return;
        }

LABEL_6:
        sub_12E1C(&v14, &unk_DE8E40, &unk_AF8050);
        goto LABEL_7;
      }

      sub_12E1C(a2, &unk_E05300, &unk_AFA030);
    }

    v14 = 0u;
    v15 = 0u;
    goto LABEL_6;
  }
}

void sub_16C270(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  if (qword_DE68E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_DF2A28);
  sub_15F84(v14, v8, &unk_DF2AE0, &qword_AFC930);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DF2AE0, &qword_AFC930);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_AB3160();
  v15 = sub_AB9260();

  v16 = [v13 fileExistsAtPath:v15];

  if (!v16 || (sub_AB3160(), v17 = sub_AB9260(), , v18 = [v13 contentsAtPath:v17], v17, !v18))
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v27 = a2;
  v19 = sub_AB3260();
  v21 = v20;

  sub_13C80(0, &qword_DEBB58, NSKeyedUnarchiver_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B10, &unk_B00F00);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF85D0;
  *(v22 + 32) = sub_13C80(0, &qword_DF2B18, NSDictionary_ptr);
  *(v22 + 40) = sub_13C80(0, &unk_DF2B20, NSSet_ptr);
  *(v22 + 48) = sub_13C80(0, &qword_DE8170, NSString_ptr);
  *(v22 + 56) = sub_13C80(0, &qword_DF1300, NSNumber_ptr);
  v28 = v19;
  v29 = v21;
  sub_ABA0E0();

  if (!*(&v32 + 1))
  {
    (*(v10 + 8))(v12, v9);
    sub_12E1C(&v31, &unk_DE8E40, &unk_AF8050);
LABEL_8:
    sub_466B8(v28, v29);
    goto LABEL_10;
  }

  sub_9ACFC(&v31, v33);
  sub_808B0(v33, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
    goto LABEL_8;
  }

  v23 = v30;
  if (*(v30 + 16) && (v24 = sub_2EBF88(a1, v27), (v25 & 1) != 0))
  {
    sub_808B0(*(v23 + 56) + 32 * v24, a3);
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
    *a3 = 0u;
    a3[1] = 0u;
  }

  sub_466B8(v28, v29);
LABEL_11:
}

id sub_16C784()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_DF2A10 = result;
  return result;
}

uint64_t sub_16C7CC()
{
  sub_36A48();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 1;
    }
  }

  else
  {
    sub_12E1C(&v1, &unk_DE8E40, &unk_AF8050);
  }

  return 1;
}

uint64_t sub_16C880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __swift_allocate_value_buffer(v0, qword_DF2A28);
  v1 = __swift_project_value_buffer(v0, qword_DF2A28);
  return sub_16C8D8(v1);
}

uint64_t sub_16C8D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v16[-v6];
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = [objc_opt_self() defaultManager];
  v17 = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v17];
  v12 = v17;

  if (v11)
  {
    sub_AB3150();

    (*(v3 + 32))(v9, v7, v2);
    sub_AB3110();
    sub_AB3120();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v9, v2);
    v14 = 0;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v14 = 1;
  }

  return (*(v3 + 56))(a1, v14, 1, v2);
}

uint64_t sub_16CB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_16CBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_16CC58()
{
  result = qword_DF2AD8;
  if (!qword_DF2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2AD8);
  }

  return result;
}

double sub_16CCAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = sub_AB3440();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  LOWORD(v22[0]) = 0;
  BYTE2(v22[0]) = 0;
  *(v22 + 3) = v19;
  BYTE7(v22[0]) = v20;
  *(v22 + 8) = 0u;
  *(&v22[1] + 8) = 0u;
  *(&v22[2] + 8) = 0u;
  *(&v22[3] + 8) = 0u;
  *(&v22[4] + 1) = v10;
  *&v23 = v12;
  *(&v23 + 1) = &_swiftEmptySetSingleton;
  *&v24 = &_swiftEmptySetSingleton;
  *(&v24 + 1) = _swiftEmptyArrayStorage;
  v25[0] = a1;
  v25[1] = a2;
  v26 = 0;
  v27 = 0;
  v29 = v20;
  v28 = v19;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v34 = v10;
  v35 = v12;
  v36 = &_swiftEmptySetSingleton;
  v37 = &_swiftEmptySetSingleton;
  v38 = _swiftEmptyArrayStorage;
  sub_2B7BC(&v21, v18);
  sub_2B818(v25);
  v13 = v22[4];
  a3[4] = v22[3];
  a3[5] = v13;
  v14 = v24;
  a3[6] = v23;
  a3[7] = v14;
  v15 = v22[0];
  *a3 = v21;
  a3[1] = v15;
  result = *&v22[1];
  v17 = v22[2];
  a3[2] = v22[1];
  a3[3] = v17;
  return result;
}

uint64_t sub_16CE70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v2 = &v15[-v1];
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_DE68E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_DF2A28);
  sub_15F84(v7, v2, &unk_DF2AE0, &qword_AFC930);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_12E1C(v2, &unk_DF2AE0, &qword_AFC930);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() defaultManager];
  sub_AB30F0(v10);
  v12 = v11;
  v16 = 0;
  v13 = [v9 removeItemAtURL:v11 error:&v16];
  v14 = v16;

  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  sub_AB3050();

  swift_willThrow();
  (*(v4 + 8))(v6, v3);
}

id sub_16D13C(char a1)
{
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  if (a1)
  {
    v3 = 25;
  }

  else
  {
    v3 = 9;
  }

  v4 = sub_AB9260();
  [v2 setName:v4];

  [v2 setQualityOfService:v3];
  return v2;
}

uint64_t sub_16D1F4()
{
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 184))
  {
  }

  return swift_deallocObject();
}

double block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_16D2C8(char a1, uint64_t a2, void (*a3)(uint64_t, void, void, uint64_t), uint64_t a4)
{
  if (a1)
  {
    goto LABEL_8;
  }

  if (byte_DF2A18 != 1)
  {
    byte_DF2A18 = 1;
LABEL_8:
    v9 = a1 & 1;
    v10 = sub_16D13C(a1 & 1);
    v11 = swift_allocObject();
    v12 = *(a2 + 112);
    *(v11 + 120) = *(a2 + 96);
    *(v11 + 136) = v12;
    *(v11 + 152) = *(a2 + 128);
    v13 = *(a2 + 48);
    *(v11 + 56) = *(a2 + 32);
    *(v11 + 72) = v13;
    v14 = *(a2 + 80);
    *(v11 + 88) = *(a2 + 64);
    *(v11 + 104) = v14;
    v15 = *(a2 + 16);
    *(v11 + 24) = *a2;
    *(v11 + 16) = v9;
    v16 = *(a2 + 144);
    *(v11 + 40) = v15;
    *(v11 + 168) = v16;
    *(v11 + 176) = a3;
    *(v11 + 184) = a4;
    aBlock[4] = sub_C3538;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_37;
    v17 = _Block_copy(aBlock);
    sub_15F84(a2, v18, &unk_E05300, &unk_AFA030);
    sub_307CC(a3, a4);

    [v10 addOperationWithBlock:v17];
    _Block_release(v17);

    return;
  }

  if (a3)
  {
    sub_170A5C();
    v7 = swift_allocError();
    *v8 = 1;
    a3(1, 0, 0, v7);
  }
}

void *sub_16D4C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  *(inited + 48) = sub_AB92A0();
  *(inited + 56) = v2;
  *(inited + 64) = sub_AB92A0();
  *(inited + 72) = v3;
  sub_12B708(inited, v4);
  v5 = objc_allocWithZone(CNContactFetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10, &unk_AFF5C0);
  isa = sub_AB9740().super.isa;
  v7 = [v5 initWithKeysToFetch:isa];

  v17 = &_swiftEmptySetSingleton;
  if (qword_DE68D8 != -1)
  {
    swift_once();
  }

  v8 = qword_DF2A10;
  v9 = swift_allocObject();
  *(v9 + 16) = &v17;
  v10 = swift_allocObject();
  v10[2] = sub_170BF0;
  v10[3] = v9;
  aBlock[4] = sub_170C08;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_16B388;
  aBlock[3] = &block_descriptor_25_0;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v12 = [v8 enumerateContactsWithFetchRequest:v7 error:aBlock usingBlock:v11];
  v13 = aBlock[0];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  if (!v12)
  {
    sub_AB3050();

    swift_willThrow();
  }

  v14 = v17;

  swift_setDeallocating();
  swift_arrayDestroy();

  return v14;
}

void sub_16D7D0(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v43 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 112);
  v49 = *(a2 + 96);
  v50 = v13;
  v51 = *(a2 + 128);
  v52 = *(a2 + 144);
  v14 = *(a2 + 48);
  v48[2] = *(a2 + 32);
  v48[3] = v14;
  v15 = *(a2 + 80);
  v48[4] = *(a2 + 64);
  v48[5] = v15;
  v16 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v16;
  if (sub_90064(v48) != 1)
  {
    v53 = v49;
    v17 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      v44 = v53;
      if (qword_DE68E8 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v7, qword_DF2A28);
      sub_15F84(v18, v9, &unk_DF2AE0, &qword_AFC930);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
      }

      else
      {
        (*(v11 + 32))(v46, v9, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
        inited = swift_initStackObject();
        v43 = v11;
        v20 = inited;
        *(inited + 16) = xmmword_AF8820;
        *(inited + 32) = 0xD000000000000017;
        *(inited + 40) = 0x8000000000B54020;
        sub_AB3420();
        sub_AB32B0();
        v22 = v21;
        (*(v4 + 8))(v6, v3);
        v20[6] = v22;
        v20[9] = &type metadata for Double;
        v20[10] = 0xD000000000000010;
        v20[11] = 0x8000000000B4F1E0;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0, qword_AFBB40);
        v20[12] = v45;
        v20[15] = v23;
        v20[16] = 0xD00000000000001ALL;
        v20[21] = &type metadata for String;
        v24 = v44;
        v20[17] = 0x8000000000B54160;
        v20[18] = v24;
        v20[19] = v17;

        sub_15F84(&v53, v47, &unk_DEE6F0, &unk_AF8970);
        sub_97420(v20);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
        swift_arrayDestroy();
        v25 = objc_opt_self();
        isa = sub_AB8FD0().super.isa;
        v47[0] = 0;
        v27 = [v25 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v47];
        v28 = v47[0];

        if (v27)
        {
          v29 = sub_AB3260();
          v31 = v30;

          sub_AB3270();
          if (qword_DE68E0 != -1)
          {
            swift_once();
          }

          v32 = qword_DF2A20;

          v33 = v45;
          v34 = sub_4CA4C8(v45, v32);

          if (v34)
          {
            (*(v43 + 8))(v46, v10);
          }

          else
          {
            qword_DF2A20 = v33;

            v35 = *JSBridge.shared.unsafeMutableAddressor();
            v36 = swift_allocObject();
            v37 = *(a2 + 80);
            *(v36 + 80) = *(a2 + 64);
            *(v36 + 96) = v37;
            v38 = *(a2 + 48);
            *(v36 + 48) = *(a2 + 32);
            *(v36 + 64) = v38;
            *(v36 + 160) = *(a2 + 144);
            v39 = *(a2 + 128);
            *(v36 + 128) = *(a2 + 112);
            *(v36 + 144) = v39;
            *(v36 + 112) = *(a2 + 96);
            v40 = *(a2 + 16);
            *(v36 + 16) = *a2;
            *(v36 + 32) = v40;
            v41 = *&stru_B8.segname[(swift_isaMask & *v35) + 16];
            v42 = v35;
            sub_15F84(a2, v47, &unk_E05300, &unk_AFA030);
            v41(sub_170D5C, v36);
            (*(v43 + 8))(v46, v10);
          }

          sub_466B8(v29, v31);
        }

        else
        {
          sub_AB3050();

          swift_willThrow();
          (*(v43 + 8))(v46, v10);
        }
      }
    }
  }
}

void sub_16DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void, __n128), uint64_t a6)
{
  v12 = *(sub_AB9300() - 8);
  __chkstk_darwin();
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2 || (v85 = v13, !*(a1 + 16)) || (v16 = sub_2EBF88(0x73646E65697266, 0xE700000000000000), (v17 & 1) == 0) || (sub_808B0(*(a1 + 56) + 32 * v16, v90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B80, qword_B00F38), (swift_dynamicCast() & 1) == 0))
  {
    if (a5)
    {
      sub_170A5C();
      v21 = swift_allocError();
      *v22 = 4;
      (a5)(1, 0, 0, v21);
    }

    return;
  }

  v83 = a4;
  v87 = &_swiftEmptySetSingleton;
  v18 = *(v88 + 16);
  if (!v18)
  {

    v70 = &_swiftEmptySetSingleton;
    goto LABEL_55;
  }

  v84 = a2;
  v78 = a3;
  v79 = a6;
  v75 = (v12 + 8);
  v19 = 32;
  v20 = v88;
  v82 = v88;
  do
  {
    v23 = *(v20 + v19);
    if (!*(v23 + 16))
    {
      goto LABEL_12;
    }

    v24 = sub_2EBF88(0x49746361746E6F63, 0xE900000000000064);
    if ((v25 & 1) == 0 || !*(v23 + 16))
    {
      goto LABEL_25;
    }

    v26 = (*(v23 + 56) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];

    v29 = sub_2EBF88(0x64616F6C796170, 0xE700000000000000);
    if ((v30 & 1) == 0 || !*(v84 + 16))
    {
      goto LABEL_11;
    }

    v31 = (*(v23 + 56) + 16 * v29);
    v32 = v31[1];
    v81 = *v31;

    v33 = v84;
    v34 = sub_2EBF88(v27, v28);
    if ((v35 & 1) == 0)
    {

      v20 = v82;
LABEL_11:

      goto LABEL_12;
    }

    v80 = v32;
    v36 = *(*(v33 + 56) + (v34 << 6) + 8);

    if (!v36)
    {

      goto LABEL_36;
    }

    v77 = v36;
    v38 = v80;
    v37 = v81;
    sub_AB9460();
    sub_AB9590();
    v74 = sub_AB93B0();
    v76 = v39;

    v40 = sub_AB9460();
    v41 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v41 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v41 < v40 >> 14)
    {
      __break(1u);
    }

    sub_AB9590();
    v81 = sub_AB93B0();

    v42 = sub_AB31E0();
    if (v43 >> 60 == 15)
    {

      goto LABEL_36;
    }

    v72 = v42;
    v73 = v43;
    v44 = sub_AB31E0();
    if (v45 >> 60 == 15)
    {

LABEL_35:
      sub_466A4(v72, v73);

      goto LABEL_36;
    }

    v46 = v44;
    v47 = v45;
    v48 = sub_AB31E0();
    if (v49 >> 60 == 15)
    {
      goto LABEL_34;
    }

    v50 = v49;
    v81 = v48;
    v51 = sub_281A6C(1uLL, v48, v49, v72, v73, v46, v47, 0);
    if (v52 >> 60 == 15)
    {
      sub_466A4(v81, v50);
LABEL_34:
      sub_466A4(v46, v47);
      goto LABEL_35;
    }

    v71 = v50;
    v74 = v46;
    v76 = v51;
    *&v90[0] = v51;
    *(&v90[0] + 1) = v52;
    v53 = v52;
    sub_AB92F0();
    sub_170C78();
    sub_AB92D0();
    if (!v54)
    {
      sub_466A4(v76, v53);
      sub_466A4(v81, v71);
      sub_466A4(v74, v47);
      v68 = v72;
      v69 = v73;
      goto LABEL_46;
    }

    sub_466A4(v76, v53);
    sub_466A4(v81, v71);
    sub_466A4(v74, v47);
    sub_466A4(v72, v73);
    sub_AB92F0();
    v55 = sub_AB92B0();
    v57 = v56;
    (*v75)(v15, v85);

    if (v57 >> 60 == 15)
    {
      goto LABEL_47;
    }

    v58 = objc_opt_self();
    v76 = v55;
    v81 = v57;
    isa = sub_AB3250().super.isa;
    v86 = 0;
    v60 = [v58 JSONObjectWithData:isa options:0 error:&v86];
    v61 = v86;

    if (!v60)
    {
      sub_AB3050();

      swift_willThrow();

      v88 = 0u;
      v89 = 0u;
      v20 = v82;
LABEL_49:
      sub_12E1C(&v88, &unk_DE8E40, &unk_AF8050);
      goto LABEL_51;
    }

    sub_ABAB50();
    swift_unknownObjectRelease();
    v20 = v82;
    if (!*(&v89 + 1))
    {
      goto LABEL_49;
    }

    sub_9ACFC(&v88, v90);
    sub_808B0(v90, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590, &unk_B02860);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v90);
LABEL_51:
      sub_466A4(v76, v81);

LABEL_25:

      goto LABEL_12;
    }

    v62 = v86;
    if (*(v86 + 2))
    {
      v63 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
      if (v64)
      {
        v65 = (v62[7] + 16 * v63);
        v66 = *v65;
        v67 = v65[1];

        sub_1A9FC(&v88, v66, v67);
        __swift_destroy_boxed_opaque_existential_0(v90);

        v68 = v76;
        v69 = v81;
LABEL_46:
        sub_466A4(v68, v69);
LABEL_47:

LABEL_36:

        v20 = v82;
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v90);

    sub_466A4(v76, v81);

    v20 = v82;
LABEL_12:
    v19 += 8;
    --v18;
  }

  while (v18);

  v70 = v87;
  a3 = v78;
  a2 = v84;
LABEL_55:
  sub_16D7D0(v70, v83);

  if (a5)
  {
    (a5)(a1, a2, a3, 0);
  }
}

void *sub_16E7B8(uint64_t a1, uint64_t a2)
{
  sub_AB9300();
  __chkstk_darwin();
  v7 = *(a1 + 16);
  if (v7)
  {
    v82 = v4;
    v83 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = a2;
    v8 = (a1 + 32);
    v80 = "currentUserSocialProfileID";
    v81 = (v5 + 8);
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v13 = *v8;
      v14 = *(*v8 + 16);

      if (v14)
      {
        v15 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
        if (v16)
        {
          sub_15F84(*(v13 + 56) + 32 * v15, &v90, &unk_DE8E40, &unk_AF8050);
          sub_12E1C(&v90, &qword_DF2BD8, &unk_B00F68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_6B828(0, v9[2] + 1, 1, v9);
          }

          v18 = v9[2];
          v17 = v9[3];
          if (v18 >= v17 >> 1)
          {
            v9 = sub_6B828((v17 > 1), v18 + 1, 1, v9);
          }

          v9[2] = v18 + 1;
          v9[v18 + 4] = v13;
          goto LABEL_5;
        }
      }

      v90 = 0uLL;
      *&v91 = 0;
      *(&v91 + 1) = 1;
      sub_12E1C(&v90, &qword_DF2BD8, &unk_B00F68);
      if (!*(v13 + 16))
      {
        goto LABEL_62;
      }

      v19 = sub_2EBF88(0x49746361746E6F63, 0xE900000000000064);
      if ((v20 & 1) == 0)
      {
        goto LABEL_62;
      }

      sub_15F84(*(v13 + 56) + 32 * v19, &v88, &unk_DE8E40, &unk_AF8050);
      v90 = v88;
      v91 = v89;
      if (!*(&v89 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_62;
      }

      v21 = v87;
      v85 = v86;
      if (*(v13 + 16) && (v22 = sub_2EBF88(0x64616F6C796170, 0xE700000000000000), (v23 & 1) != 0))
      {
        sub_15F84(*(v13 + 56) + 32 * v22, &v88, &unk_DE8E40, &unk_AF8050);
      }

      else
      {
        v88 = 0uLL;
        *&v89 = 0;
        *(&v89 + 1) = 1;
      }

      if (*(&v89 + 1) == 1)
      {

        v10 = &v88;
        v11 = &qword_DF2BD8;
        v12 = &unk_B00F68;
LABEL_4:
        sub_12E1C(v10, v11, v12);
        goto LABEL_5;
      }

      v90 = v88;
      v91 = v89;
      if (!*(&v89 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_62;
      }

      v79 = v21;
      v24 = v84;
      if (!*(v84 + 16))
      {
        goto LABEL_35;
      }

      v77 = v86;
      v78 = v87;
      v25 = sub_2EBF88(v85, v79);
      if ((v26 & 1) == 0 || (v27 = (*(v24 + 56) + (v25 << 6)), (v28 = v27[1]) == 0))
      {

        goto LABEL_62;
      }

      v75 = *v27;

      v76 = v28;
      v29 = v78;
      sub_AB9460();
      v30 = v29;
      sub_AB9590();
      v73 = sub_AB93B0();
      v74 = v31;

      v32 = v77;
      v33 = sub_AB9460();
      v34 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v34 < v33 >> 14)
      {
        __break(1u);
      }

      sub_AB9590();
      v72 = sub_AB93B0();
      v77 = v35;

      v36 = sub_AB31E0();
      if (v37 >> 60 == 15)
      {

        goto LABEL_62;
      }

      v38 = v37;
      v75 = v36;
      v39 = sub_AB31E0();
      if (v40 >> 60 == 15)
      {

        v41 = v75;
        v42 = v38;
LABEL_44:
        sub_466A4(v41, v42);

        goto LABEL_62;
      }

      v73 = v39;
      v71 = v40;
      v74 = v38;
      v43 = sub_AB31E0();
      if (v44 >> 60 == 15)
      {
        v45 = v73;
        v46 = v71;
LABEL_43:
        sub_466A4(v45, v46);
        v41 = v75;
        v42 = v74;
        goto LABEL_44;
      }

      v47 = v44;
      v77 = v43;
      v48 = v71;
      v49 = sub_281A6C(1uLL, v43, v44, v75, v74, v73, v71, 0);
      if (v50 >> 60 == 15)
      {
        sub_466A4(v77, v47);
        v45 = v73;
        v46 = v48;
        goto LABEL_43;
      }

      v72 = v49;
      *&v90 = v49;
      *(&v90 + 1) = v50;
      v51 = v50;
      v52 = v83;
      sub_AB92F0();
      sub_170C78();
      v53 = sub_AB92D0();
      if (v54)
      {
        v70[1] = v53;
        v55 = v72;
        v72 = v54;
        sub_466A4(v55, v51);
        sub_466A4(v77, v47);
        sub_466A4(v73, v71);
        sub_466A4(v75, v74);
        sub_AB92F0();
        v77 = sub_AB92B0();
        v57 = v56;
        (*v81)(v52, v82);

        if (v57 >> 60 != 15)
        {
          v58 = objc_opt_self();
          v59 = v57;
          v60 = v58;
          v75 = v59;
          isa = sub_AB3250().super.isa;
          v86 = 0;
          v62 = [v60 JSONObjectWithData:isa options:0 error:&v86];
          v63 = v86;

          if (v62)
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
            if (*(&v89 + 1))
            {
              sub_9ACFC(&v88, &v90);
              sub_808B0(&v90, &v88);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0, &qword_AF9080);
              if (swift_dynamicCast())
              {
                v64 = v86;
                *&v88 = v85;
                *(&v88 + 1) = v79;
                *(&v89 + 1) = &type metadata for String;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v86 = v64;
                sub_936D8(&v88, 0xD000000000000011, v80 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
                v85 = v86;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = sub_6B828(0, v9[2] + 1, 1, v9);
                }

                v67 = v9[2];
                v66 = v9[3];
                if (v67 >= v66 >> 1)
                {
                  v9 = sub_6B828((v66 > 1), v67 + 1, 1, v9);
                }

                __swift_destroy_boxed_opaque_existential_0(&v90);
                v9[2] = v67 + 1;
                v9[v67 + 4] = v85;
                sub_466A4(v77, v75);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_0(&v90);

                sub_466A4(v77, v75);
              }

              goto LABEL_62;
            }

            v68 = v75;
          }

          else
          {

            sub_AB3050();

            swift_willThrow();

            v88 = 0u;
            v89 = 0u;
            v68 = v75;
          }

          sub_12E1C(&v88, &unk_DE8E40, &unk_AF8050);
          sub_466A4(v77, v68);
LABEL_35:

LABEL_62:

          goto LABEL_5;
        }
      }

      else
      {
        sub_466A4(v72, v51);
        sub_466A4(v77, v47);
        sub_466A4(v73, v71);
        sub_466A4(v75, v74);
      }

LABEL_5:
      ++v8;
      if (!--v7)
      {
        return v9;
      }
    }

    v10 = &v90;
    v11 = &unk_DE8E40;
    v12 = &unk_AF8050;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_16F208(uint64_t a1, __int128 *a2)
{
  v4 = a2[7];
  v39 = a2[6];
  v40 = v4;
  v41 = a2[8];
  v42 = *(a2 + 18);
  v5 = a2[3];
  v35 = a2[2];
  v36 = v5;
  v6 = a2[5];
  v37 = a2[4];
  v38 = v6;
  v7 = a2[1];
  v33 = *a2;
  v34 = v7;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v24 - v12;
  type metadata accessor for SocialContactsCoordinator();
  v14 = a2[7];
  v31[6] = a2[6];
  v31[7] = v14;
  v31[8] = a2[8];
  v32 = *(a2 + 18);
  v15 = a2[3];
  v31[2] = a2[2];
  v31[3] = v15;
  v16 = a2[5];
  v31[4] = a2[4];
  v31[5] = v16;
  v17 = a2[1];
  v31[0] = *a2;
  v31[1] = v17;
  if (sub_90064(v31) == 1)
  {
    goto LABEL_4;
  }

  v27[6] = v39;
  v27[7] = v40;
  v27[8] = v41;
  v28 = v42;
  v27[2] = v35;
  v27[3] = v36;
  v27[4] = v37;
  v27[5] = v38;
  v27[0] = v33;
  v27[1] = v34;
  sub_C343C(v27, v26);
  if (sub_16ABF0(a2))
  {
    sub_12E1C(a2, &unk_E05300, &unk_AFA030);
LABEL_4:
    v29 = 0u;
    v30 = 0u;
LABEL_5:
    sub_12E1C(&v29, &unk_DE8E40, &unk_AF8050);
    return 0;
  }

  sub_16C270(0xD000000000000017, 0x8000000000B54020, &v29);
  sub_12E1C(a2, &unk_E05300, &unk_AFA030);
  if (!*(&v30 + 1))
  {
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_C343C(v27, v26);
  if (sub_16ABF0(a2))
  {
    sub_12E1C(a2, &unk_E05300, &unk_AFA030);
    v24 = 0u;
    v25 = 0u;
LABEL_15:
    sub_12E1C(&v24, &unk_DE8E40, &unk_AF8050);
    goto LABEL_16;
  }

  sub_16C270(0xD000000000000017, 0x8000000000B54020, &v24);
  sub_12E1C(a2, &unk_E05300, &unk_AFA030);
  if (!*(&v25 + 1))
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    sub_AB32A0();
    sub_AB3420();
    sub_AB3340();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v11, v8);
    v21(v13, v8);
    if (v20 > a1)
    {
      return 0;
    }
  }

LABEL_16:
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_16C7CC();

  return v23 != 2;
}

void sub_16F5A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B50, &qword_B00F18);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 32) = 0x6E6F6973726576;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = xmmword_B00DF0;
  *(v5 + 64) = 0xEB00000000687467;
  *(v5 + 72) = a2;
  v6 = sub_9836C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B58, &qword_B00F20);
  swift_arrayDestroy();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B60, &qword_B00F28);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + (v16 << 6));
    v21 = v20[2];
    v22 = v20[3];
    v23 = v20[1];
    v44 = *v20;
    v45 = v23;
    v46 = v21;
    v47 = v22;
    v48[0] = v18;
    v48[1] = v19;
    v49 = v44;
    v50 = v23;
    v51 = v21;
    v52 = v22;
    v24 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v42 = v13;
      v41 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B70, &unk_AFA480);
      v25 = sub_ABB0C0();
      swift_bridgeObjectRetain_n();
      sub_170AB0(&v44, v43);

      v26 = sub_2EBF88(25705, 0xE200000000000000);
      if (v27)
      {
        goto LABEL_21;
      }

      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
      v28 = (v25[6] + 16 * v26);
      *v28 = 25705;
      v28[1] = 0xE200000000000000;
      v29 = (v25[7] + 16 * v26);
      *v29 = v18;
      v29[1] = v19;
      v30 = v25[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_22;
      }

      v25[2] = v32;

      v33 = sub_2EBF88(6775156, 0xE300000000000000);
      if (v34)
      {
        goto LABEL_23;
      }

      *(v25 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
      v35 = (v25[6] + 16 * v33);
      *v35 = 6775156;
      v35[1] = 0xE300000000000000;
      v36 = (v25[7] + 16 * v33);
      *v36 = v41;
      v36[1] = v24;
      v37 = v25[2];
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      v25[2] = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730, &qword_AFCCA0);
      swift_arrayDestroy();
      sub_12E1C(v48, &qword_DF2B68, &qword_B00F30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_6B84C(0, v42[2] + 1, 1, v42);
      }

      v40 = v42[2];
      v39 = v42[3];
      if (v40 >= v39 >> 1)
      {
        v42 = sub_6B84C((v39 > 1), v40 + 1, 1, v42);
      }

      v42[2] = v40 + 1;
      v42[v40 + 4] = v25;
      v13 = v42;
    }

    else
    {

      sub_170AB0(&v44, v43);
      sub_12E1C(v48, &qword_DF2B68, &qword_B00F30);
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B80, qword_B00F38);
      *(inited + 96) = v13;
      sub_97420(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
      swift_arrayDestroy();
      return;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
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
  __break(1u);
}

double sub_16FA90(void *a1, int a2, __int128 *a3, void (*a4)(uint64_t, void, void, uint64_t), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2AF0, &unk_B00EF0);
  __chkstk_darwin();
  v11 = &v123 - v10;
  v12 = sub_AB2A90();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 dictionaryForBagKey:{MPStoreSocialBagKey, v14}];
  if (!v17)
  {
LABEL_14:
    if (a4)
    {
      sub_170A5C();
      v28 = swift_allocError();
      *v29 = 5;
      a4(1, 0, 0, v28);
    }

    return result;
  }

  LODWORD(v143) = a2;
  v19 = v17;
  v20 = sub_AB8FF0();

  v146 = 0xD00000000000001BLL;
  v147 = 0x8000000000B53FC0;
  sub_ABAD10();
  if (!v20[2] || (v21 = sub_2EC004(&v152), (v22 & 1) == 0))
  {
    sub_8085C(&v152);
LABEL_13:

    goto LABEL_14;
  }

  sub_808B0(v20[7] + 32 * v21, v148);
  sub_8085C(&v152);
  if ((swift_dynamicCast() & 1) == 0 || v146 <= 0)
  {
    goto LABEL_13;
  }

  v139 = v146;
  if (v143)
  {
    goto LABEL_26;
  }

  v146 = 0xD000000000000017;
  v147 = 0x8000000000B53FE0;
  sub_ABAD10();
  if (!v20[2] || (v23 = sub_2EC004(&v152), (v24 & 1) == 0))
  {
    sub_8085C(&v152);
    goto LABEL_18;
  }

  sub_808B0(v20[7] + 32 * v23, v148);
  sub_8085C(&v152);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v136 = v16;
  v25 = v146;
  v26 = [objc_opt_self() standardUserDefaults];
  if (sub_16C7CC() != 2)
  {
    if (v25)
    {
      v27 = v13;
      v32 = sub_16C7CC();

      if (v32)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_18:
    if (a4)
    {
      sub_170A5C();
      v30 = swift_allocError();
      *v31 = 0;
LABEL_96:
      a4(1, 0, 0, v30);

      goto LABEL_97;
    }

    goto LABEL_97;
  }

  v27 = v13;

LABEL_22:
  v146 = 0xD000000000000018;
  v147 = 0x8000000000B54000;
  sub_ABAD10();
  if (!v20[2] || (v33 = sub_2EC004(&v152), (v34 & 1) == 0))
  {
    sub_8085C(&v152);
LABEL_93:
    if (!a4)
    {
      goto LABEL_97;
    }

    sub_170A5C();
    v30 = swift_allocError();
    v89 = 2;
    goto LABEL_95;
  }

  sub_808B0(v20[7] + 32 * v33, v148);
  sub_8085C(&v152);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_93;
  }

  v35 = sub_16F208(v146, a3);
  v13 = v27;
  v16 = v136;
  if (v35)
  {
    goto LABEL_93;
  }

LABEL_26:
  v36 = sub_16D4C4();
  if (!v36[2])
  {

    if (a4)
    {
      sub_170A5C();
      v30 = swift_allocError();
      v89 = 3;
LABEL_95:
      *v88 = v89;
      goto LABEL_96;
    }

LABEL_97:

    return result;
  }

  v136 = v16;
  v134 = v12;
  v137 = a5;
  v138 = a4;
  v133 = v143 & 1;
  v37 = (v36 + 7);
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36[7];
  v41 = (v38 + 63) >> 6;
  v142 = v36;

  v42 = 0;
  v131 = 0;
  v43 = _swiftEmptyArrayStorage;
  object = v20;
  v141 = v11;
LABEL_31:
  if (v40)
  {
    v44 = v13;
    goto LABEL_37;
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
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
    }

    if (v45 >= v41)
    {
      break;
    }

    v40 = *&v37[8 * v45];
    ++v42;
    if (v40)
    {
      v44 = v13;
      v42 = v45;
LABEL_37:
      v46 = *(v142[6] + ((v42 << 13) | (__clz(__rbit64(v40)) << 7)) + 120);
      v47 = *(v46 + 16);
      v48 = *(v43 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v49 > *(v43 + 3) >> 1)
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v43 = sub_6B80C(isUniquelyReferenced_nonNull_native, v51, 1, v43);
      }

      v13 = v44;
      v11 = v141;
      v40 &= v40 - 1;
      v20 = object;
      if (*(v46 + 16))
      {
        if ((*(v43 + 3) >> 1) - *(v43 + 2) < v47)
        {
          goto LABEL_108;
        }

        swift_arrayInitWithCopy();

        if (v47)
        {
          v52 = *(v43 + 2);
          v53 = __OFADD__(v52, v47);
          v54 = v52 + v47;
          if (v53)
          {
            goto LABEL_109;
          }

          *(v43 + 2) = v54;
        }
      }

      else
      {

        if (v47)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_31;
    }
  }

  v55 = v142;

  if (!*(v43 + 2))
  {

    v108 = v138;
    if (v138)
    {
      sub_170A5C();
      v109 = swift_allocError();
      *v110 = 3;
      v108(1, 0, 0, v109);
    }

    return result;
  }

  v129 = v13;
  v56 = sub_981D0(_swiftEmptyArrayStorage);
  v57 = v138;
  v132 = *(v43 + 2);
  v135 = v43;
  if (!v132)
  {
    goto LABEL_77;
  }

  v58 = 0;
  v59 = v43 + 64;
  v128 = v43 + 64;
LABEL_52:
  v130 = v56;
  v60 = &v59[40 * v58];
  v61 = v132;
  do
  {
    if (v58 >= v61)
    {
      goto LABEL_104;
    }

    v62 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_105;
    }

    v63 = *(v60 - 1);
    v64 = *v60;
    if (v63)
    {
      v65 = v64 == 2;
    }

    else
    {
      v65 = 1;
    }

    if (!v65)
    {
      v66 = *(v60 - 3);
      v141 = *(v60 - 4);
      if ((*(v60 - 2) || v63 != 0xE000000000000000) && (sub_ABB3C0() & 1) == 0)
      {
        if (v64)
        {
          v67 = sub_AB9370();
          object = v68;
          v69 = v66;

          countAndFlagsBits = v67;
        }

        else
        {
          v69 = v66;

          if (sub_AB9420() < 10)
          {

LABEL_54:

            goto LABEL_55;
          }

          v71._countAndFlagsBits = 17500;
          v71._object = 0xE200000000000000;
          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          v73 = String.replace(usingRegexPattern:with:options:)(v71, v72, 0);
          countAndFlagsBits = v73._countAndFlagsBits;
          object = v73._object;
        }

        v74 = countAndFlagsBits;
        v75 = String.sha256Data.getter(countAndFlagsBits, object);
        if (v76 >> 60 != 15)
        {
          v77 = v76;
          v78 = v75;

          v124 = v78;
          v127 = v69;
          v59 = v128;
          v79 = v139;
          v126 = sub_284904(v78, v77, v139, v80, v81);
          v125 = v82;

          v83 = Data.hexRepresentation.getter(v78, v77);
          v123 = v84;

          LOBYTE(v144) = 0;
          *&v152 = v83;
          *(&v152 + 1) = v123;
          v153 = v126;
          v154 = v125;
          v155 = v79;
          v156 = 0;
          v157 = v74;
          v158 = object;
          v148[0] = v83;
          v148[1] = v123;
          v148[2] = v126;
          v148[3] = v125;
          v148[4] = v79;
          v149 = 0;
          v150 = v74;
          v151 = object;
          sub_170AB0(&v152, &v146);
          sub_170AE8(v148);
          sub_466A4(v124, v77);
          v85 = v127;

          v86 = v130;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v86;
          sub_9385C(&v152, v141, v85, v87);

          swift_bridgeObjectRelease_n();
          v58 = v62;
          v65 = v62 == v61;
          v56 = v146;
          v57 = v138;
          v55 = v142;
          if (v65)
          {
            goto LABEL_77;
          }

          goto LABEL_52;
        }

        goto LABEL_54;
      }
    }

LABEL_55:
    ++v58;
    v60 += 40;
  }

  while (v62 != v61);
  v57 = v138;
  v55 = v142;
  v56 = v130;
LABEL_77:
  sub_16F5A0(v56, v139);
  v91 = v90;
  v92 = 0x7265766F63736964;
  if (v143)
  {
    v92 = 0x65726F4D646E6966;
  }

  v144 = v92;
  v145 = 0xEF73646E65697246;
  sub_ABAD10();
  if (!v20[2] || (v93 = sub_2EC004(v148), (v94 & 1) == 0))
  {
    sub_8085C(v148);
LABEL_86:

    if (!v57)
    {
LABEL_88:

      goto LABEL_97;
    }

LABEL_87:
    sub_170A5C();
    v106 = swift_allocError();
    *v107 = 6;
    v57(1, 0, 0, v106);

    goto LABEL_88;
  }

  sub_808B0(v20[7] + 32 * v93, &v146);
  sub_8085C(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_86;
  }

  v95 = v56;
  v143 = v144;
  v96 = v145;
  v97 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;
  v148[0] = 0;
  v99 = [v97 dataWithJSONObject:isa options:0 error:v148];
  v100 = v148[0];

  if (!v99)
  {

    sub_AB3050();

    swift_willThrow();

LABEL_100:

    v57 = v138;
    if (!v138)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  type metadata accessor for SocialContactsCoordinator();
  v101 = sub_AB3260();
  v103 = v102;

  sub_90090(v101, v103);
  v143 = v96;
  sub_16B8A8(v101, v103, v11);
  v142 = v103;
  sub_466B8(v101, v103);
  v104 = v129;
  v105 = v134;
  if ((*(v129 + 48))(v11, 1, v134) == 1)
  {

    sub_466B8(v101, v142);
    sub_12E1C(v11, &qword_DF2AF0, &unk_B00EF0);
    goto LABEL_100;
  }

  v111 = *(v104 + 32);
  v141 = v91;
  v112 = v136;
  v111(v136, v11, v105);
  sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
  v113 = static ICUserIdentity.active.getter();
  v114 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v113];

  v115 = objc_allocWithZone(ICStoreURLRequest);
  v116 = v114;
  v117 = sub_AB2A30();
  v118 = [v115 initWithURLRequest:v117 requestContext:v116];

  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v119 = static ICURLSessionManager.musicSession.getter();
  v120 = swift_allocObject();
  v121 = v138;
  v122 = v137;
  *(v120 + 16) = v138;
  *(v120 + 24) = v122;
  *(v120 + 32) = v133;
  *(v120 + 40) = v95;
  *(v120 + 48) = v55;
  sub_307CC(v121, v122);
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v118, sub_170B68, v120);

  sub_466B8(v101, v142);
  (*(v104 + 8))(v112, v134);

  return result;
}

unint64_t sub_170A5C()
{
  result = qword_DF2AF8;
  if (!qword_DF2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2AF8);
  }

  return result;
}

uint64_t sub_170B18()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170B78()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170C30()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_170C78()
{
  result = qword_DF2BA0;
  if (!qword_DF2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BA0);
  }

  return result;
}

uint64_t sub_170CCC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170E14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_170E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSGridSection.UniformCellType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSGridSection.UniformCellType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_171048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_171090(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1710E8()
{
  result = qword_DF2BF0;
  if (!qword_DF2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BF0);
  }

  return result;
}

unint64_t sub_171140()
{
  result = qword_DF2BF8;
  if (!qword_DF2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BF8);
  }

  return result;
}

unint64_t sub_1711A8()
{
  result = qword_DF2C00;
  if (!qword_DF2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2C00);
  }

  return result;
}

void sub_171220(uint64_t a1, Swift::UInt a2, Swift::UInt a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v14 = sub_AB31C0();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v18 = sub_2F5AD8();
    if (v19)
    {
      sub_808B0(*(a1 + 56) + 32 * v18, v31);
      sub_171544();
      if (swift_dynamicCast())
      {
        v26 = a3;
        v27 = v30;
        v28 = a6;
        v20 = [v30 absoluteString];
        if (v20)
        {
          v21 = v20;
          sub_AB92A0();
        }

        v22 = v28;
        sub_AB3180();

        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {
          sub_171590(v13);
        }

        else
        {
          (*(v15 + 32))(v17, v13, v14);
          (*(v15 + 16))(v11, v17, v14);
          (*(v15 + 56))(v11, 0, 1, v14);
          v23 = v26;
          sub_2E55B4(v11, a2, v26);
          [v22 removeAttribute:NSLinkAttributeName range:{a2, v23}];
          v24 = sub_AB9260();
          [v22 addAttribute:NSLinkAttributeName value:v24 range:{a2, v23}];
          (*(v15 + 8))(v17, v14);
        }
      }
    }
  }
}

unint64_t sub_171544()
{
  result = qword_DF2C10;
  if (!qword_DF2C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF2C10);
  }

  return result;
}

uint64_t sub_171590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1715F8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  v12 = sub_AB3430();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  *v13 = sub_1735F8();
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  v80.receiver = v4;
  v80.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  v17 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 layer];
  [v18 setAllowsGroupOpacity:0];

  v19 = v17;
  v20 = [v19 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = v21[4];
  v27 = v21[5];
  v76 = v27;
  v77 = v26;
  v28 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v78 = *v28;
  v74 = *(v28 + 2);
  v75 = *(v28 + 1);
  v73 = *(v28 + 3);
  *v28 = v22;
  *(v28 + 1) = v23;
  *(v28 + 2) = v24;
  *(v28 + 3) = v25;
  *(v28 + 4) = v26;
  *(v28 + 5) = v27;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  sub_2F1C8(v78, v75, v74, v73);
  v79 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v37 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v38 = *(v37 + 168);
  v81[0] = *(v37 + 152);
  v81[1] = v38;
  v81[2] = *(v37 + 184);
  *(v37 + 152) = v22;
  *(v37 + 160) = v23;
  *(v37 + 168) = v24;
  *(v37 + 176) = v25;
  *(v37 + 184) = v77;
  *(v37 + 192) = v76;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  sub_75948(v81);
  sub_12E1C(v81, &unk_DF8690, &unk_AF9900);

  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_DF2C18;
  v48 = qword_DF2C28;
  v49 = qword_DF2C30;
  v50 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v50 = v47;
  *(v50 + 2) = v48;
  *(v50 + 3) = v49;
  type metadata accessor for UIEdgeInsets(0);
  v51 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v52 = *(v50 + 1);
    *v51 = *v50;
    *(v51 + 1) = v52;
    sub_35D498();
    [v19 setNeedsLayout];
  }

  v53 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v19[v53] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v54 = *&v19[v79];
  v55 = *(v54 + 144);
  *(v54 + 144) = 2;
  if (v55 != 2)
  {
    v56 = *(v54 + 112);

    v57 = [v56 image];
    sub_788B8(v57);
  }

  v58 = &v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v59 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v60 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];
  v61 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];

  v62 = [v19 traitCollection];

  v63 = [v62 preferredContentSizeCategory];
  v64 = sub_ABA320();

  if (v64)
  {
    v65 = 3;
  }

  else
  {
    v65 = 1;
  }

  swift_beginAccess();
  *(v59 + 88) = v65;
  sub_2EB2A8();
  if ([v62 horizontalSizeClass] == &dword_0 + 2)
  {
    v66 = 16.0;
  }

  else
  {
    v66 = 12.0;
  }

  swift_beginAccess();
  *(v60 + 104) = v66;
  sub_2EB2A8();
  swift_beginAccess();
  *(v61 + 104) = v66;
  sub_2EB2A8();

  v67 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v68 = *(v58 + 3);
  if (!(v68 >> 62))
  {
    v69 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    if (v69)
    {
      goto LABEL_17;
    }

LABEL_25:

    return;
  }

  v69 = sub_ABB060();
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v69 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v69; ++i)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v72 = sub_36003C(i, v68, v70);
      }

      else
      {
        v72 = *(v68 + 8 * i + 32);
      }

      TextStackView.add(_:)(v72);
    }
  }
}

double sub_171DC0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_171ED4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_171FD0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_172064(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_17217C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_172550(uint64_t a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8, &qword_AFAE20);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v36 - v6;
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(&v1[v15], v9);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    return sub_12E1C(v9, &unk_E01230, "|,\r");
  }

  v37 = v1;
  v18 = v9;
  v19 = *(v11 + 32);
  v19(v14, v18, v10);
  v20 = *(v11 + 16);
  v38 = v14;
  v20(v7, v14, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v21 = *(v2 + 48);
  sub_2EC64(v41, v4);
  sub_2EC64(v7, &v4[v21]);
  if (v16(v4, 1, v10) == 1)
  {
    sub_12E1C(v7, &unk_E01230, "|,\r");
    if (v16(&v4[v21], 1, v10) == 1)
    {
      sub_12E1C(v4, &unk_E01230, "|,\r");
      return (*(v11 + 8))(v38, v10);
    }

    goto LABEL_8;
  }

  v22 = v40;
  sub_2EC64(v4, v40);
  if (v16(&v4[v21], 1, v10) == 1)
  {
    sub_12E1C(v7, &unk_E01230, "|,\r");
    (*(v11 + 8))(v22, v10);
LABEL_8:
    sub_12E1C(v4, &qword_DE81D8, &qword_AFAE20);
    goto LABEL_9;
  }

  v32 = v39;
  v19(v39, &v4[v21], v10);
  sub_2F050();
  v33 = v22;
  v34 = sub_AB91C0();
  v35 = *(v11 + 8);
  v35(v32, v10);
  sub_12E1C(v7, &unk_E01230, "|,\r");
  v35(v33, v10);
  sub_12E1C(v4, &unk_E01230, "|,\r");
  if (v34)
  {
    return (v35)(v38, v10);
  }

LABEL_9:
  v23 = v37;
  v24 = *&v37[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];
  if (qword_DE68F8 != -1)
  {
    swift_once();
  }

  v25 = qword_DF2C38;
  v26 = v38;
  isa = sub_AB3370().super.isa;
  v28 = [v25 stringFromDate:isa];

  v29 = sub_AB92A0();
  v31 = v30;
  swift_beginAccess();
  *(v24 + 112) = v29;
  *(v24 + 120) = v31;

  sub_2EB704();

  [v23 setNeedsLayout];
  return (*(v11 + 8))(v26, v10);
}

id sub_172ADC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_172B34(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7, SEL *a8)
{
  v15 = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  v27.receiver = a1;
  v27.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v27, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26.receiver = v17;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, *a8, a2, a3, a4, a5);
  sub_172C18(a7, v19, v21, v23, v25);
}

void sub_172C18(SEL *a1, double a2, double a3, double a4, double a5)
{
  v7 = v5;
  CGRectGetWidth(*&a2);
  [v5 *a1];
  CGRectGetWidth(v16);
  if (sub_AB38D0())
  {
    v8 = *&v5[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
    v9 = *&v7[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];
    v10 = *&v7[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];
    v11 = [v7 traitCollection];
    v12 = [v11 preferredContentSizeCategory];
    v13 = sub_ABA320();

    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    swift_beginAccess();
    *(v8 + 88) = v14;
    sub_2EB2A8();
    if ([v11 horizontalSizeClass] == &dword_0 + 2)
    {
      v15 = 16.0;
    }

    else
    {
      v15 = 12.0;
    }

    swift_beginAccess();
    *(v9 + 104) = v15;
    sub_2EB2A8();
    swift_beginAccess();
    *(v10 + 104) = v15;
    sub_2EB2A8();
  }
}

void sub_172D7C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  v12 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v31 = v12[2];
  v13 = sub_76368(0, 0, 1);
  v15 = v14;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  CGRectGetMinY(v33);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetHeight(v34);
  v16 = v4;
  sub_ABA470();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_ABA490();
  if (sub_76B28(v25, v26, v27, v28))
  {
    v35.origin.x = v18;
    v35.origin.y = v20;
    v35.size.width = v22;
    v35.size.height = v24;
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = v16;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    v30 = v31 + MaxY - CGRectGetMinY(v36);
    v6 = v6 + v30;
    v10 = v10 - v30;
  }

  sub_42AD48(v16, v6, v8, v10);
}

void sub_17300C(uint64_t a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = sub_ABA320();

  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  swift_beginAccess();
  *(v5 + 88) = v11;
  sub_2EB2A8();
  if ([v8 horizontalSizeClass] == &dword_0 + 2)
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 12.0;
  }

  swift_beginAccess();
  *(v6 + 104) = v12;
  sub_2EB2A8();
  swift_beginAccess();
  *(v7 + 104) = v12;
  sub_2EB2A8();
}

__n128 sub_1731C0()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DF2C18 = *&UIEdgeInsetsZero.top;
  *&qword_DF2C28 = v1;
  return result;
}

id sub_1731DC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  result = [v0 setDateStyle:1];
  qword_DF2C38 = v0;
  return result;
}

double sub_1732AC()
{

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate, &unk_E01230, "|,\r");

  return result;
}

id sub_173364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedMusicVideoVerticalCell(uint64_t a1)
{
  result = qword_DF2C70;
  if (!qword_DF2C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1734AC(uint64_t a1)
{
  sub_2EB24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_173570(void *a1, double a2)
{
  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

void *sub_1735C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_1735F8()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v29[0] = v2;
  *(&v29[0] + 1) = v5;
  v29[1] = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v1;
  v33 = 1;
  v34 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v29);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v29, v42);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v23[0] = v8;
  *(&v23[0] + 1) = v10;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v7;
  v27 = 1;
  v28 = xmmword_AFB160;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x614E747369747261, 0xEA0000000000656DLL, v23);
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AFB160;
  swift_allocObject();
  TextStackView.Component.init(identifier:labelProperties:)(0x656C655265746164, 0xEC00000064657361, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v23, v42);

  sub_2F118(v17, v42);

  v35[0] = v8;
  v35[1] = v10;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v7;
  v40 = 1;
  v41 = xmmword_AFB160;
  sub_2F174(v35);
  v42[0] = v2;
  v42[1] = v5;
  v43 = xmmword_AF7C20;
  v44 = 0;
  v45 = 0;
  v46 = v1;
  v47 = 1;
  v48 = xmmword_AF7C30;
  sub_2F174(v42);
  return v6;
}

double sub_173970(void *a1, double a2)
{
  v4 = sub_1735F8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [a1 preferredContentSizeCategory];
  v12 = sub_ABA320();

  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  *(v4 + 88) = v13;
  sub_2EB2A8();
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 12.0;
  }

  swift_beginAccess();
  *(v6 + 104) = v14;
  sub_2EB2A8();
  swift_beginAccess();
  *(v8 + 104) = v14;
  sub_2EB2A8();
  sub_2F48A4(v10, a1, 0, 0);
  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  [a1 displayScale];
  sub_AB3A00();

  return a2;
}

void sub_173CA8(char a1)
{
  v1[qword_DF2C88] = a1;
  if ([v1 isViewLoaded])
  {
    [v1 loadViewIfNeeded];
    v2 = *&v1[qword_DFE2F8];
    if (v2)
    {
      v3 = [v2 collectionViewLayout];
      [swift_getObjCClassFromObject() invalidationContextClass];
      swift_getObjCClassMetadata();
      sub_13C80(0, &qword_DF1D18, UICollectionViewFlowLayoutInvalidationContext_ptr);
      swift_dynamicCastMetatypeUnconditional();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v4 setInvalidateFlowLayoutDelegateMetrics:1];
      [v3 invalidateLayoutWithContext:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_173DD4()
{
  ObjectType = swift_getObjectType();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v0[qword_DF2C80] = 0;
  v0[qword_DF2C88] = 0;
  v0[qword_DF2C90] = 1;
  v2 = &v0[qword_DF2C98];
  *v2 = 0;
  v2[1] = 0;
  v0[qword_DF2CA0] = 0;
  v3 = qword_DF2CA8;
  sub_176D68(0, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF32D8, qword_B013C0);
  swift_allocObject();
  *&v0[v3] = RequestResponse.Controller.init(request:)(v22, v4, v5, v6);
  v0[qword_DF2CB0] = 0;
  *&v0[qword_DF2CB8] = 0;
  *&v0[qword_DF2CC0] = 0;
  v7 = &v0[qword_DF2CC8];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[qword_DF2CD0];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v10 = sub_AB9260();

  [v9 setTitle:v10];

  v11 = v9;
  v12 = sub_AB9260();
  [v11 setPlayActivityFeatureName:v12];

  v13 = *&v11[qword_DF2CA8];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = (v13 + *(*v13 + 128));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = sub_1799E0;
  v15[1] = v14;

  sub_17654(v16, v17);

  RequestResponse.Controller.setNeedsReload(_:)(0, 0);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = MPMediaLibraryDidChangeNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[qword_DF2CB8] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, 0, 1, 1, sub_1799E8, v18);

  return v11;
}

void sub_1741C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Revision.content.getter(&v11);
    v5 = v11;
    v6 = v4;
    v7 = v5;
    sub_3B4724(v5);

    if (v5)
    {
      v5 = ([v7 isEmpty] ^ 1);
    }

    sub_1742E8();
    sub_3E2E84(v5 ^ 1);

    v8 = v6[qword_DF2CA0];
    v6[qword_DF2CA0] = v5;
    if (v5 == v8 || (v9 = *&v6[qword_DF2C98]) == 0)
    {
    }

    else
    {
      v10 = *&v6[qword_DF2C98 + 8];

      v9(v5);

      sub_17654(v9, v10);
      v7 = v6;
    }
  }
}

void *sub_1742E8()
{
  v1 = qword_DF2CC0;
  if (*&v0[qword_DF2CC0])
  {
    v2 = *&v0[qword_DF2CC0];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v2 = sub_3E2914(v4);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_174390(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

void sub_174464(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1, v4);
  if (v1[qword_DF2C90] == 1)
  {
    v7 = MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = v1[qword_DF2CB0];
    v9 = *v7;
    if (v8 == 1)
    {
      v10 = MetricsEvent.Page.libraryRecentlyDownloaded.unsafeMutableAddressor();
    }

    else
    {
      v10 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
    }

    sub_141658(v10, v6, type metadata accessor for MetricsEvent.Page);
    (*(&stru_68.reloff + (swift_isaMask & *v9)))(v6, 0, 0, 0, 0, 0);
    sub_1416C0(v6, type metadata accessor for MetricsEvent.Page);
  }
}

void sub_1745C8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_174464(a3);
}

void sub_17462C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v5 = a5;
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(v5);
}

void sub_1746A4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DF2CC8];
  v12 = *&v1[qword_DF2CC8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_DF2CD0];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_1747CC(void *a1)
{
  v1 = a1;
  sub_1746A4();
}

void sub_174814(uint64_t a1)
{
  v31.receiver = v1;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  v5 = v1[qword_DF2CB0];
  v1[qword_DF2CB0] = (rawValue & 2) != 0;
  sub_177B68(v5);
  v6 = *&v1[qword_DF2CA8];
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  v11 = *(v6 + 96);
  v32[4] = *(v6 + 80);
  v32[5] = v11;
  v32[2] = v9;
  v32[3] = v10;
  v12 = *(v6 + 112);
  v13 = *(v6 + 128);
  v14 = *(v6 + 144);
  v33 = *(v6 + 160);
  v32[7] = v13;
  v32[8] = v14;
  v32[6] = v12;
  v32[0] = v7;
  v32[1] = v8;
  v15 = *(v6 + 128);
  v27 = *(v6 + 112);
  v28 = v15;
  v29 = *(v6 + 144);
  v30 = *(v6 + 160);
  v16 = *(v6 + 64);
  v23 = *(v6 + 48);
  v24 = v16;
  v17 = *(v6 + 96);
  v25 = *(v6 + 80);
  v26 = v17;
  v18 = *(v6 + 32);
  v21 = *(v6 + 16);
  v22 = v18;
  sub_15F84(v32, v19, &qword_DF32D0, &qword_B013B8);
  sub_174994();
  v19[6] = v27;
  v19[7] = v28;
  v19[8] = v29;
  v20 = v30;
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  RequestResponse.Controller.request.setter(v19);
}

void sub_174994()
{
  v1 = v0;
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF82B0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  *(inited + 48) = sub_AB92A0();
  *(inited + 56) = v6;
  *(inited + 64) = sub_AB92A0();
  *(inited + 72) = v7;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v8;
  *(inited + 96) = sub_AB92A0();
  *(inited + 104) = v9;
  *(inited + 112) = sub_AB92A0();
  *(inited + 120) = v10;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v11;
  *(inited + 144) = sub_AB92A0();
  *(inited + 152) = v12;
  sub_96B2C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730, &qword_AFCCA0);
  swift_arrayDestroy();
  isa = sub_AB8FD0().super.isa;
  v14 = [objc_opt_self() sortDescriptorWithRelatedProperties:isa ascending:0];

  *(v3 + 32) = v14;

  *(v0 + 56) = v3;
  v15 = UITraitCollection.mediaLibrary.getter();

  *v0 = v15;
  v16.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  *(v0 + 80) = v16;
  *(v0 + 88) = 0;
  if ((rawValue & 2) != 0 && (v16.rawValue & 0x80) == 0)
  {
    *(v0 + 80) = v16.rawValue | 0x80;
  }

  v17 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if ((v17 & 2) != 0)
  {
    v18 = 0xD000000000000013;
  }

  else
  {
    v18 = 0x796C746E65636552;
  }

  if ((v17 & 2) != 0)
  {
    v19 = 0x8000000000B54460;
  }

  else
  {
    v19 = 0xEE00646564644120;
  }

  *(v1 + 136) = v18;
  *(v1 + 144) = v19;
}