uint64_t sub_1B0C7C30C(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x7972616E6962;
  v5 = 0xD000000000000010;
  v6 = 0x80000001B0F2E310;
  if (a3 != 3)
  {
    v5 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (a3 != 2)
  {
    v4 = v5;
    v3 = v6;
  }

  if (a3)
  {
    v7 = 1953063480;
  }

  else
  {
    v7 = 1953063479;
  }

  if (a3 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (a3 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v3;
  }

  v10 = a3;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if ((v9 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v13 = v8 & 0x7D76757F6B7FLL;
    }

    if (a1)
    {
LABEL_19:
      if (v13 != a2 - a1)
      {
        return 5;
      }

      goto LABEL_23;
    }
  }

  if (v13)
  {
    return 5;
  }

LABEL_23:
  v14 = 0xE600000000000000;
  v15 = 0x7972616E6962;
  v16 = 0xD000000000000010;
  v17 = 0x80000001B0F2E310;
  if (v10 != 3)
  {
    v16 = 0x343665736162;
    v17 = 0xE600000000000000;
  }

  if (v10 != 2)
  {
    v15 = v16;
    v14 = v17;
  }

  if (v10)
  {
    v18 = 1953063480;
  }

  else
  {
    v18 = 1953063479;
  }

  if (v10 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (v10 <= 1u)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = v14;
  }

  v21 = sub_1B0CADCDC(v19, v20, a1, a2, sub_1B0C95118);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  return v10;
}

uint64_t sub_1B0C7C4CC(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE400000000000000;
  v4 = a3;
  switch(a3)
  {
    case 1:
      v3 = 0xEB00000000657079;
      break;
    case 2:
    case 9:
      v3 = 0xE800000000000000;
      break;
    case 3:
    case 11:
      v3 = 0xE700000000000000;
      break;
    case 4:
    case 6:
      v3 = 0xE500000000000000;
      break;
    case 5:
    case 10:
    case 12:
      v3 = 0xE600000000000000;
      break;
    case 7:
      v3 = 0xE200000000000000;
      break;
    case 8:
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v7 = HIBYTE(v3) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 13;
    }
  }

  else if (v7)
  {
    return 13;
  }

  v8 = sub_1B0C7E5F8(v4);
  v10 = sub_1B0CADCDC(v8, v9, a1, a2, sub_1B0C95118);

  if ((v10 & 1) == 0)
  {
    return 13;
  }

  return v4;
}

uint64_t sub_1B0C7C5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1953063480;
    }

    else
    {
      v2 = 1953063479;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v2 = 0x7972616E6962;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000010;
    v3 = 0x80000001B0F2E310;
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x343665736162;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 1953063480;
    }

    else
    {
      v5 = 1953063479;
    }

    v4 = 0xE400000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x7972616E6962)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x80000001B0F2E310;
    if (v2 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x343665736162)
    {
LABEL_26:
      v6 = sub_1B0E46A78();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_1B0C7C744(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 1702521203;
  if (a1 != 4)
  {
    v5 = 1701667182;
  }

  if (a1 == 3)
  {
    v5 = 0x7461642D64616572;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v6 = 0x6E6F697461657263;
  v7 = 0xED0000657461642DLL;
  if (a1 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001B0F2E2D0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x656D616E656C6966;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE900000000000065;
      if (v8 != 0x7461642D64616572)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1702521203)
        {
          goto LABEL_35;
        }
      }

      else if (v8 != 1701667182)
      {
LABEL_35:
        v11 = sub_1B0E46A78();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xED0000657461642DLL;
      if (v8 != 0x6E6F697461657263)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x80000001B0F2E2D0;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v8 != 0x656D616E656C6966)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t ContentTransferEncoding.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1953063479;
  v2 = 0x7972616E6962;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x343665736162;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1953063480;
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

uint64_t sub_1B0C7C9CC()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7CA94(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C7CB48(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C7CC0C@<X0>(Swift::String *a1@<X0>, IMAP2MIME::ContentTransferEncoding_optional *a2@<X8>)
{
  result = _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1B0C7CC3C(uint64_t *a1@<X8>)
{
  v2 = 1953063479;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  v6 = 0x80000001B0F2E310;
  v7 = 0xD000000000000010;
  if (v3 != 3)
  {
    v7 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v2 = 1953063480;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v2 = v5;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t ContentTransferEncoding.init(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B0E44BB8() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1B0E46A78();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1B0E44BB8() == a1 && v8 == a2)
  {

LABEL_13:

    return 1;
  }

  v9 = sub_1B0E46A78();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1B0E44BB8() == a1 && v10 == a2)
  {

LABEL_18:

    return 2;
  }

  v11 = sub_1B0E46A78();

  if (v11)
  {
    goto LABEL_18;
  }

  if (sub_1B0E44BB8() == a1 && v12 == a2)
  {

LABEL_23:

    return 4;
  }

  v13 = sub_1B0E46A78();

  if (v13)
  {
    goto LABEL_23;
  }

  if (sub_1B0E44BB8() == a1 && v14 == a2)
  {

    return 3;
  }

  v15 = sub_1B0E46A78();

  if (v15)
  {
    return 3;
  }

  return 5;
}

uint64_t sub_1B0C7CFA0(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 4u)
  {
    v2 = ceil(result * 3.0 * 0.25);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        result = v2 + 10;
        if (!__OFADD__(v2, 10))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B0C7D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B0C6549C(a3, a4, a1, v10, 1);
  if (v6)
  {
    sub_1B0C7DD1C(a5);
  }

  else
  {
    result = sub_1B0C7D2C0(v11, v12, v13 & 1);
    if (result)
    {
      v16 = v15 - result;
    }

    else
    {
      v16 = 0;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      return sub_1B0CB3A7C(a5, 0, v16, result, v15, a6);
    }
  }

  return result;
}

unint64_t sub_1B0C7D0C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, int64_t, uint64_t, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = a3 - a2;
    }

    else
    {
      v5 = 0;
    }

    result = a4(0, v5, a2, a3);
    if (v4 && result < v4)
    {
      v4 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C7D154(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 3u)
  {
    if (result == 3)
    {
      if (a2)
      {
        v20 = a3 - a2;
      }

      else
      {
        v20 = 0;
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        return sub_1B0CA63D0(0, v20, a2, a3, a4, a5);
      }
    }

    else
    {
      if (a2)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      return sub_1B0C6549C(a4, a5, a2, v21, 1);
    }
  }

  else
  {
    v9 = a3 - a2;
    if (!a2)
    {
      v9 = 0;
    }

    v10 = v9 & (v9 >> 63);
    if (a5 - a4 < v9)
    {
      v9 = a5 - a4;
    }

    if (a4)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = sub_1B0C7D0C0(v11, a4, a5, sub_1B0433338);
    v15 = v14;
    if (v13)
    {
      v16 = (v13 + v12);
    }

    else
    {
      v16 = 0;
    }

    if (a2 && v16)
    {
      v17 = v13 + v15;
      if (!v13)
      {
        v17 = 0;
      }

      memmove(a2, v16, v17 - v16);
    }

    v18 = sub_1B0C7D0C0(v11, a2, a3, sub_1B0433338);
    if (v19)
    {
      return v19 + v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0C7D2C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (result)
    {
      v4 = a2 - result;
    }

    else
    {
      v4 = 0;
    }

    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = sub_1B0C7D318(0, v4, result, a2);
      if (v6)
      {
        return v6 + v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C7D318(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 < 0 || v4 < a2)
  {
    goto LABEL_29;
  }

  if (a2 - result < 100)
  {
    return result;
  }

  if (a2 < 0x63)
  {
    goto LABEL_30;
  }

  v5 = 0;
  v6 = a3 + a2;
  while (1)
  {
    v7 = a2 + v5 - 99;
    if (v7 >= a2 || a2 - 99 < result || v7 >= a2 - 2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v10 = a2 + v5 - 98;
    if (v10 < result || v10 >= a2)
    {
      goto LABEL_27;
    }

    if (*(v6 + v5 - 99) <= 0x7Eu && *(v6 + v5 - 98) < 0x7Fu)
    {
      break;
    }

    if (++v5 == 97)
    {
      return result;
    }
  }

  v11 = a2 + v5 - 97;
  if (__OFADD__(a2 + v5 - 99, 2))
  {
    goto LABEL_31;
  }

  if (v11 >= result)
  {
    if (v11 > a2)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0C7D3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1B0433338(0, v6, a2, a3);
  if (a1 < 1)
  {
    if (result <= 0 && result > a1)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a1)
  {
    return 0;
  }

  if (a1 < 0 || v6 < a1)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    if (a2)
    {
      if (v5 > a1)
      {
        return *(a2 + a1) | 0x20u;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C7D498@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>, uint64_t a5@<X2>, uint64_t a6@<X3>, void *a7@<X5>)
{
  if (result)
  {
    v12 = a2 - result;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1B0CA63D0(0, v12, result, a2, a5, a6);
    if (v7)
    {
      sub_1B0C7DD1C(a3);
    }

    result = sub_1B0C7D2C0(v14, v15, v16 & 1);
    if (result)
    {
      v18 = v17 - result;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      result = sub_1B0CB3A7C(a3, 0, v18, result, v17, a7);
      *a4 = result;
      a4[1] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C7D54C(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 56)
  {
    if (v5 == 98 && v6 == 105 && v7 == 116)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_26;
    }
  }

  else if (v4 == 55 && v5 == 98 && v6 == 105 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 105 && v6 == 110 && v7 == 97)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_26;
  }

  if (v4 == 113 && v5 == 117 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 97 && v6 == 115 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
LABEL_26:
    result = sub_1B0C7C30C(v8, v9, v10);
    if (result != 5)
    {
      return result;
    }
  }

  return 5;
}

uint64_t sub_1B0C7D714(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a4;
  v12 = a2;
  v48[2] = *MEMORY[0x1E69E9840];
  v13 = a1 == 3;
  if (a1 >= 3u)
  {
LABEL_6:
    if (v13)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {

        v14 = v47;
        v15 = a5;
        if (v12 >= 1025)
        {
          goto LABEL_55;
        }

        sub_1B0C7DCC0(a5, v47);

        isStackAllocationSafe = sub_1B0C7DCC0(a5, v47);
        while (1)
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v18 = sub_1B0CA63D0(0, v12, &v47[-v17 - 8], &v47[v12 - 8 - v17], a3, v10);
          if (v6)
          {
            goto LABEL_46;
          }

          a1 = sub_1B0C7D2C0(v18, v19, v20 & 1);
          if (a1)
          {
            v12 = v21 - a1;
          }

          else
          {
            v12 = 0;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          __break(1u);
LABEL_17:
          if ((v12 & 0x8000000000000000) == 0)
          {
            v7 = 0;
            goto LABEL_19;
          }

LABEL_20:
          v15 = sub_1B0C7D0C0(v12, a3, v10, sub_1B0433338);
          v28 = v26;
          if (v27)
          {
            v14 = v26 - v15;
          }

          else
          {
            v14 = 0;
          }

          if (v14 < 0)
          {
            __break(1u);
          }

          else
          {
            v29 = v27 + v28;
            if (v27)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            if (v27)
            {
              v31 = v27 + v15;
            }

            else
            {
              v31 = 0;
            }

            v15 = sub_1B0C7D318(0, v14, v31, v30);
            if (v32)
            {
              v10 = v14 - v15;
            }

            else
            {
              v10 = 0;
            }

            if ((v10 & 0x8000000000000000) == 0)
            {
              if (v32)
              {
                v33 = v32 + v14;
              }

              else
              {
                v33 = 0;
              }

              if (v32)
              {
                v34 = v32 + v15;
              }

              else
              {
                v34 = 0;
              }

              sub_1B0C7DCC0(a5, v47);
              v22 = a5;
              v23 = v10;
              v24 = v34;
              v25 = v33;
              return sub_1B0CB3A7C(v22, 0, v23, v24, v25, a6);
            }
          }

          __break(1u);
LABEL_55:
          sub_1B0C7DCC0(v15, v14);

          sub_1B0C7DCC0(a5, v47);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v44 = swift_slowAlloc();

            sub_1B0C7DCC0(a5, v47);
            sub_1B0C7D498(v44, v44 + v12, a5, v48, a3, v10, a6);
            MEMORY[0x1B272C230](v44, -1, -1);
            if (v6)
            {
              goto LABEL_47;
            }

            sub_1B0C7DD1C(a5);

            sub_1B0C7DD1C(a5);

            return v48[0];
          }
        }
      }

      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {

      if (v12 >= 1025)
      {
        sub_1B0C7DCC0(a5, v47);

        sub_1B0C7DCC0(a5, v47);
        v36 = swift_stdlib_isStackAllocationSafe();
        if ((v36 & 1) == 0)
        {
          v7 = swift_slowAlloc();

          sub_1B0C7DCC0(a5, v47);
          a1 = sub_1B0C7D01C(v7, v7 + v12, a3, v10, a5, a6);
          if (v6)
          {
            MEMORY[0x1B272C230](v7, -1, -1);
            goto LABEL_47;
          }

          goto LABEL_64;
        }
      }

      else
      {
        sub_1B0C7DCC0(a5, v47);

        v36 = sub_1B0C7DCC0(a5, v47);
      }

      v7 = &v46;
      MEMORY[0x1EEE9AC00](v36);
      v38 = sub_1B0C6549C(a3, v10, &v47[-v37 - 8], &v47[v12 - 8 - v37], 1);
      if (v6)
      {
LABEL_46:
        swift_willThrow();
LABEL_47:
        sub_1B0C7DD1C(a5);

        sub_1B0C7DD1C(a5);
      }

      a1 = sub_1B0C7D2C0(v38, v39, v40 & 1);
      if (a1)
      {
        v12 = v21 - a1;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_52:
        v41 = a1;
        v42 = v21;

        sub_1B0C7DCC0(a5, v47);
        v43 = sub_1B0CB3A7C(a5, 0, v12, v41, v42, a6);
        sub_1B0C7DD1C(a5);

        sub_1B0C7DD1C(a5);

        return v43;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      v45 = a1;
      MEMORY[0x1B272C230](v7, -1, -1);
      sub_1B0C7DD1C(a5);

      sub_1B0C7DD1C(a5);

      return v45;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v7 = a4 - a3;
  v13 = a4 - a3 == a2;
  if (a4 - a3 > a2)
  {
    goto LABEL_20;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_19:

  sub_1B0C7DCC0(a5, v47);
  v22 = a5;
  v23 = v7;
  v24 = a3;
  v25 = v10;
  return sub_1B0CB3A7C(v22, 0, v23, v24, v25, a6);
}

unint64_t _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0C7DC5C()
{
  result = qword_1EB6E5DC0;
  if (!qword_1EB6E5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DC0);
  }

  return result;
}

uint64_t ContentType.attributes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 ContentType.init(mediaType:attributes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t ContentType.Attribute.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContentType.Attribute.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ContentType.Attribute.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t static ContentType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);

  return sub_1B0C78D8C(v6, v7);
}

uint64_t sub_1B0C7E0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v10 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v7, v9))
  {
    return 0;
  }

  return sub_1B0C78D8C(v3, v5);
}

uint64_t ContentType.description.getter()
{
  v1 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v1;
  v6 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B07B4718(v5, v3);
  sub_1B0C7FC44(&v4, v3);
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v0);
}

uint64_t sub_1B0C7E1A0()
{
  v1 = v0[2];
  v5 = v0[1];
  v6 = v1;
  v4 = *v0;
  v7[0] = v4;
  v7[1] = v5;
  v8 = *(v0 + 32);
  v9 = *(&v1 + 1);
  sub_1B07B4718(v7, v3);
  sub_1B0C7FC44(&v9, v3);
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(&v4);
}

uint64_t ContentType.Attribute.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E429A8();
  __swift_project_value_buffer(v9, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v11 = v10;

  if (v11)
  {
    v15 = 8251;
    MEMORY[0x1B2726E80](a1, a2);
    MEMORY[0x1B2726E80](61, 0xE100000000000000);
    v12 = a3;
    v13 = a4;
  }

  else
  {
    v15 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8765, 0xE200000000000000);
    MEMORY[0x1B2726E80](a3, a4);
    v12 = 34;
    v13 = 0xE100000000000000;
  }

  MEMORY[0x1B2726E80](v12, v13);
  return v15;
}

Swift::String __swiftcall String.init(_:)(IMAP2MIME::ContentType::Attribute a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = a1.key._object;
  v4 = a1.key._countAndFlagsBits;
  v5 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E429A8();
  __swift_project_value_buffer(v6, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v8 = v7;

  if (v8)
  {
    v12 = 8251;
    v13 = 0xE200000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v4, v3);

    MEMORY[0x1B2726E80](61, 0xE100000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](countAndFlagsBits, object);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = v4;
    v13 = v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8765, 0xE200000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](countAndFlagsBits, object);
    swift_bridgeObjectRelease_n();

    MEMORY[0x1B2726E80](34, 0xE100000000000000);
  }

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1B0C7E4F8()
{
  v0 = sub_1B0E429A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EB6E5DC8);
  __swift_project_value_buffer(v0, qword_1EB6E5DC8);
  sub_1B0E42958();
  sub_1B0E42998();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1B0C7E5F8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x742D737365636361;
      break;
    case 2:
      result = 0x797261646E756F62;
      break;
    case 3:
      result = 0x74657372616863;
      break;
    case 4:
      result = 0x70736C6564;
      break;
    case 5:
      result = 0x7265626D756ELL;
      break;
    case 6:
      result = 0x6C61746F74;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x7469736F70736964;
      break;
    case 9:
      result = 0x6C6F636F746F7270;
      break;
    case 10:
      result = 0x636C6167696DLL;
      break;
    case 11:
      result = 0x746E656D6D6F63;
      break;
    case 12:
      result = 0x74616D726F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0C7E73C()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0C7E5F8(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C7E7A0(uint64_t a1)
{
  sub_1B0C7E5F8(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C7E7F4(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0C7E5F8(v2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C7E854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C7FFC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0C7E884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C7E5F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0C7E8B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B0C7E5F8(*a1);
  v5 = v4;
  if (v3 == sub_1B0C7E5F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t sub_1B0C7E938()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  while (2)
  {
    if (*v3)
    {
      goto LABEL_5;
    }

    v5 = *(v3 + 32);
    switch(*(v3 - 16))
    {
      case 3:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        goto LABEL_9;
      default:
        v4 = sub_1B0E46A78();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        if ((v4 & 1) == 0)
        {

LABEL_5:
          v3 += 56;
          if (!--v2)
          {
            return 0;
          }

          continue;
        }

LABEL_9:
        if (*(v5 + 16) == 1)
        {
          v6 = *(v5 + 32);
          v7 = *(v5 + 48);

          if (v7 < 0)
          {
            return v6;
          }
        }

        else
        {
        }

        return 0;
    }
  }
}

uint64_t sub_1B0C7EB6C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 48; (*i & 1) != 0; i += 56)
  {
LABEL_3:
    if (!--v2)
    {
      return 0;
    }
  }

  v4 = *(i + 32);
  switch(*(i - 16))
  {
    case 2:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_9;
    default:
      v5 = sub_1B0E46A78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if ((v5 & 1) == 0)
      {

        goto LABEL_3;
      }

LABEL_9:
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 32);
        v7 = *(v4 + 48);

        if (v7 < 0)
        {
          return v6;
        }
      }

      else
      {
      }

      return 0;
  }
}

uint64_t sub_1B0C7EDA4(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 110 && v5 == 97 && v6 == 109 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_31;
  }

  if (v4 == 98)
  {
    if (v5 == 111 && v6 == 117 && v7 == 110)
    {
      v8 = a1;
      v9 = a2;
      v10 = 2;
      goto LABEL_31;
    }
  }

  else if (v4 == 97 && v5 == 99 && v6 == 99 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_31;
  }

  if (v4 == 99 && v5 == 104 && v6 == 97 && v7 == 114)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_31;
  }

  if (v4 == 100 && v5 == 101 && v6 == 108 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_31;
  }

  if (v4 == 110 && v5 == 117 && v6 == 109 && v7 == 98)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_31;
  }

  if (v4 == 105)
  {
    if (v5 == 100 && !v6 && !v7)
    {
      v8 = a1;
      v9 = a2;
      v10 = 7;
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && v6 == 116 && v7 == 97)
    {
      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_31;
    }

LABEL_44:
    v12 = v5 == 105;
    goto LABEL_45;
  }

  v12 = v5 == 105;
  if (v4 == 100 && v5 == 105 && v6 == 115 && v7 == 112)
  {
    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_31;
  }

LABEL_45:
  if (v4 == 109)
  {
    if (v6 != 103)
    {
      v12 = 0;
    }

    if (!v12 || v7 != 97)
    {
      return 13;
    }

    v8 = a1;
    v9 = a2;
    v10 = 10;
    goto LABEL_31;
  }

  if (v4 != 112)
  {
    if (v4 == 99 && v5 == 111 && v6 == 109 && v7 == 109)
    {
      v8 = a1;
      v9 = a2;
      v10 = 11;
    }

    else
    {
      if (v4 != 102 || v5 != 111 || v6 != 114 || v7 != 109)
      {
        return 13;
      }

      v8 = a1;
      v9 = a2;
      v10 = 12;
    }

LABEL_31:
    result = sub_1B0C7C4CC(v8, v9, v10);
    if (result != 13)
    {
      return result;
    }

    return 13;
  }

  if (v5 == 114 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 9;
    goto LABEL_31;
  }

  return 13;
}

uint64_t sub_1B0C7F160@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, char a4@<W2>)
{
  v4 = a2;
  v5 = a1;
  sub_1B0CB0678(a1, a2, a4);
  if (v9)
  {
    v10 = v9;
    sub_1B0C97374(v7, v8, v17);
    v11 = v19;
    if (v19 <= 0xFDu)
    {
      v15 = v18;
      v5 = v17[0];
      v4 = v17[1];
      v16 = MEMORY[0x1E69E7CC0];
      sub_1B0CACFF0(v10, &v16);

      v13 = v15;
      v14 = v16;
      goto LABEL_14;
    }
  }

  result = sub_1B0C96A84(v5, v4);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v5 = 0;
      v4 = 0;
      if (result)
      {
        v13 = xmmword_1B0ECE570;
        v14 = MEMORY[0x1E69E7CC0];
        v11 = 16;
      }

      else
      {
        v11 = 0;
        v13 = xmmword_1B0EDDE50;
        v14 = MEMORY[0x1E69E7CC0];
      }
    }

    else if (result == 2)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = 32;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      if (result == 3)
      {
        v11 = 48;
      }

      else
      {
        v11 = 64;
      }
    }
  }

  else if (result > 7u)
  {
    if (result == 8)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = 0x80;
    }

    else if (result == 9)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1B0ECE570;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = -112;
    }

    else
    {
      v13 = 0uLL;
      v14 = MEMORY[0x1E69E7CC0];
      v11 = -95;
    }
  }

  else if (result == 5)
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1B0ECE570;
    v14 = MEMORY[0x1E69E7CC0];
    v11 = 80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1B0ECE570;
    v14 = MEMORY[0x1E69E7CC0];
    if (result == 6)
    {
      v11 = 96;
    }

    else
    {
      v11 = 112;
    }
  }

LABEL_14:
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v13;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  return result;
}

uint64_t sub_1B0C7F3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v76[0] = *a1;
  v76[1] = v6;
  v77 = *(a1 + 32);
  sub_1B0C97560(v76, v74);
  v7 = a1;
  v60 = v74[0];
  v59 = v74[1];
  v8 = v75;
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    sub_1B0C7DD1C(v7);

    v12 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v54 = v59;
    *a3 = v60;
    *(a3 + 16) = v54;
    *(a3 + 32) = v8;
    *(a3 + 40) = v12;
    return result;
  }

  v56 = v7;
  v57 = v75;
  v58 = a3;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1B0CBA4AC(0, v10, 0);
  v11 = 0;
  v61 = 0;
  v12 = v70;
  v63 = v9 + 32;
  v64 = a2;
  v62 = v10;
  while (1)
  {
    v66 = v12;
    v13 = (v63 + 56 * v11);
    v14 = *v13;
    v15 = v13[3];
    v16 = v13[4];
    v17 = *(v13 + 40);
    v18 = v13[6];
    if (v13[2])
    {
      v19 = v13[1];
      v71 = 0;
      v72 = 0xE000000000000000;
      if (v14)
      {
        v20 = v19 - v14;
      }

      else
      {
        v20 = 0;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      MEMORY[0x1B2726D20](v20);
      if (v14)
      {
        v21 = v19 == v14;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = v71;
        v23 = v72;
        do
        {
          if (*v14 - 1 <= 0x7D)
          {
            v68 = v22;
            v69 = v23;
            sub_1B0E44C58();
            v22 = v68;
            v23 = v69;
          }

          ++v14;
        }

        while (v14 != v19);
        v71 = v22;
        v72 = v23;
      }

      v25 = v71;
      v24 = v72;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v24 = 0xE400000000000000;
      v25 = 1701667182;
      switch(v14)
      {
        case 1:
          v25 = 0x742D737365636361;
          v24 = 0xEB00000000657079;
          break;
        case 2:
          v24 = 0xE800000000000000;
          v25 = 0x797261646E756F62;
          break;
        case 3:
          v24 = 0xE700000000000000;
          v25 = 0x74657372616863;
          break;
        case 4:
          v24 = 0xE500000000000000;
          v25 = 0x70736C6564;
          break;
        case 5:
          v24 = 0xE600000000000000;
          v25 = 0x7265626D756ELL;
          break;
        case 6:
          v24 = 0xE500000000000000;
          v25 = 0x6C61746F74;
          break;
        case 7:
          v24 = 0xE200000000000000;
          v25 = 25705;
          break;
        case 8:
          v25 = 0x7469736F70736964;
          v24 = 0xEB000000006E6F69;
          break;
        case 9:
          v24 = 0xE800000000000000;
          v25 = 0x6C6F636F746F7270;
          break;
        case 10:
          v24 = 0xE600000000000000;
          v25 = 0x636C6167696DLL;
          break;
        case 11:
          v24 = 0xE700000000000000;
          v25 = 0x746E656D6D6F63;
          break;
        case 12:
          v24 = 0xE600000000000000;
          v25 = 0x74616D726F66;
          break;
        default:
          break;
      }
    }

    v65 = v25;
    if (v17)
    {
      if (*(v18 + 16) == 1 && *(v18 + 48) < 0)
      {
        v27 = *(v18 + 32);
        v26 = *(v18 + 40);
        if (sub_1B0CAE540(v27, v26))
        {
          break;
        }
      }
    }

    v41 = v24;
    v71 = 0;
    v72 = 0xE000000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v64;

    sub_1B0CAF2F8(v15, v16, v17, v18, v15, v16, v17, v18, v42, &v71);
    swift_bridgeObjectRelease_n();

    v43 = v71;
    v44 = v72;
    v45 = v62;
    v12 = v66;
LABEL_43:
    v70 = v12;
    v47 = *(v12 + 16);
    v46 = *(v12 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1B0CBA4AC((v46 > 1), v47 + 1, 1);
      v12 = v70;
    }

    ++v11;
    *(v12 + 16) = v47 + 1;
    v48 = (v12 + 32 * v47);
    v48[4] = v65;
    v48[5] = v41;
    v48[6] = v43;
    v48[7] = v44;
    if (v11 == v45)
    {
      sub_1B0C7DD1C(v56);

      a3 = v58;
      v8 = v57;
      goto LABEL_64;
    }
  }

  if (v27)
  {
    v28 = v26 - v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 < 0)
  {
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v29 = sub_1B0CB4F5C(0, v28, v27, v26);
  if (v31)
  {
    v32 = v31 + v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31 + v29;
  }

  else
  {
    v33 = 0;
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  v34 = v32 - v33;
  if (v33)
  {
    v35 = v32 - v33;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1B2726D20](v35);
  v67 = 0;
  if (!v33)
  {
    v34 = 0;
    v36 = v64;
LABEL_59:

    goto LABEL_60;
  }

  v36 = v64;
  if (v34 < 0)
  {
    goto LABEL_66;
  }

  if (v34 < 1025)
  {
    goto LABEL_59;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_60:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v71 = &v55 - v49;
    v72 = v34;
    v73 = 0;
    v50 = v61;
    sub_1B0CAC0EC(&v71, &v68, v33, v32, v36, &v67, v51, v52);
    if (v50)
    {
      goto LABEL_68;
    }

    v61 = 0;
    v41 = v24;
    goto LABEL_62;
  }

  v38 = swift_slowAlloc();

  v39 = v61;
  sub_1B0CB1ED8(v38, v32 - v33, &v68, v33, v32, v36, &v67, v40);
  if (!v39)
  {
    v61 = 0;
    v41 = v24;
    MEMORY[0x1B272C230](v38, -1, -1);
LABEL_62:
    v45 = v62;
    v12 = v66;

    v43 = v68;
    v44 = v69;
    goto LABEL_43;
  }

  MEMORY[0x1B272C230](v38, -1, -1);
  __break(1u);
LABEL_68:

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  v3 = _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v22);
  v20 = v3;
  v4 = *(a1 + 40);
  v21 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);
      v12 = *(v6 - 1);
      v11 = *v6;
      v13 = qword_1EB6E5CC8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v13 != -1)
      {
        swift_once();
      }

      v14 = sub_1B0E429A8();
      __swift_project_value_buffer(v14, qword_1EB6E5DC8);
      sub_1B07C7F5C();
      sub_1B0E45EF8();
      if (v15)
      {
        v18 = 8251;
        v19 = 0xE200000000000000;
        MEMORY[0x1B2726E80](v10, v9);
        MEMORY[0x1B2726E80](61, 0xE100000000000000);
        v7 = v12;
        v8 = v11;
      }

      else
      {
        v18 = v10;
        v19 = v9;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](8765, 0xE200000000000000);
        MEMORY[0x1B2726E80](v12, v11);
        v7 = 34;
        v8 = 0xE100000000000000;
      }

      MEMORY[0x1B2726E80](v7, v8);
      MEMORY[0x1B2726E80](v18, v19);

      MEMORY[0x1B2726E80](8251, 0xE200000000000000);

      v6 += 4;
      --v5;
    }

    while (v5);
    sub_1B0C7FD04(&v21);
    return v20;
  }

  else
  {
    v17 = v3;
    sub_1B0C7FD04(&v21);
    return v17;
  }
}

uint64_t sub_1B0C7FC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5DE0, &qword_1B0EDDE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME9MediaTypeO9MultipartO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C7FD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5DE0, &qword_1B0EDDE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C7FD7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0C7FDC4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0C7FF74()
{
  result = qword_1EB6E5DE8;
  if (!qword_1EB6E5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DE8);
  }

  return result;
}

unint64_t sub_1B0C7FFC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t EmailAddress.name.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t EmailAddress.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmailAddress.address.getter()
{
  v1 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t EmailAddress.localPart.getter()
{
  v1 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t EmailAddress.domainPart.getter()
{
  v1 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

double EmailAddress.init(name:localPart:domainPart:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  sub_1B0C81E40(a2, a3, a4, a5, a6, a7, v12);
  v8 = v12[3];
  a1[2] = v12[2];
  a1[3] = v8;
  v9 = v12[5];
  a1[4] = v12[4];
  a1[5] = v9;
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  a1[1] = v11;
  return result;
}

uint64_t sub_1B0C801B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10) & 1;
}

uint64_t sub_1B0C80214(uint64_t a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (v1[9] >> 14 < v1[8] >> 14)
  {
    __break(1u);
  }

  v3 = sub_1B0E45E28();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LODWORD(v37) = 0;
  NFCInstance = unorm2_getNFCInstance();
  if (NFCInstance)
  {
    sub_1B0CB3CC8(v3, v5, v7, v9, NFCInstance);
    v17 = v12;
    if (v12)
    {
      v15 = v11;
    }

    else
    {
      v15 = MEMORY[0x1B2726D00](v3, v5, v7, v9);
      v17 = v19;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B0C826F8();
    v13 = swift_allocError();
    *v14 = 0;
    *(v14 + 4) = 0;
    swift_willThrow();
    v15 = MEMORY[0x1B2726D00](v3, v5, v7, v9);
    v17 = v16;

    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_10:
      v18 = *(a1 + 88);
      goto LABEL_11;
    }
  }

  LODWORD(v37) = 0;
  v18 = MEMORY[0x1B272C4F0](60, &v37);
LABEL_11:
  v39[0] = v18;
  sub_1B0C8BD64(v39, v15, v17, &v37);
  *(a1 + 88) = v18;
  *(a1 + 96) = 0;

  v21 = v37;
  v20 = v38;
  v22 = v1[4];
  v23 = v1[5];
  v25 = v1[6];
  v24 = v1[7];
  LODWORD(v37) = 0;
  v26 = unorm2_getNFCInstance();
  v27 = v37;
  if (v26 && v37 <= 0)
  {
    sub_1B0CB3CC8(v22, v23, v25, v24, v26);
    v34 = v29;
    if (v29)
    {
      v32 = v28;
    }

    else
    {
      v32 = MEMORY[0x1B2726D00](v22, v23, v25, v24);
      v34 = v36;
    }
  }

  else
  {
    sub_1B0C826F8();
    v30 = swift_allocError();
    *v31 = v27;
    *(v31 + 4) = 0;
    swift_willThrow();
    v32 = MEMORY[0x1B2726D00](v22, v23, v25, v24);
    v34 = v33;
  }

  v37 = v32;
  v38 = v34;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](64, 0xE100000000000000);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v21, v20);

  return v37;
}

char *sub_1B0C80520(uint64_t a1)
{
  v1 = sub_1B0C81C64(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B0E46138())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2728410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = sub_1B0C806F0(v6, 0);

      v10 = *(v9 + 16);
      v11 = *(v5 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v5 + 3) >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v5 = sub_1B0C811B0(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        if (*(v9 + 16))
        {
LABEL_19:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v10)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v15 = *(v5 + 2);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_29;
            }

            *(v5 + 2) = v17;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v4;
      if (v8 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_32:

  return v5;
}

uint64_t sub_1B0C806F0(void *a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    v3 = [a1 groupList];
    if (v3)
    {
      v4 = v3;
      sub_1B0C82674();
      v5 = sub_1B0E451B8();
    }

    else
    {
      v5 = 0;
    }

    v7 = [a1 displayName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B0E44AD8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [a1 localPart];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B0E44AD8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = [a1 domain];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B0E44AD8();
      v21 = v20;

      if (v5)
      {
LABEL_14:
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v5 >> 62)
        {
          goto LABEL_49;
        }

        for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B0E46138())
        {
          v24 = 0;
          v41 = v5 & 0xC000000000000001;
          v6 = MEMORY[0x1E69E7CC0];
          v25 = v22;
          while (1)
          {
            if (v41)
            {
              v26 = v5;
              v27 = MEMORY[0x1B2728410](v24, v5);
            }

            else
            {
              if (v24 >= *(v22 + 16))
              {
                goto LABEL_44;
              }

              v26 = v5;
              v27 = *(v5 + 8 * v24 + 32);
            }

            v28 = v27;
            v29 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v22 = sub_1B0C806F0(v27, a2 + 1);

            v30 = *(v22 + 16);
            v31 = *(v6 + 16);
            v5 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_45;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v5 <= *(v6 + 24) >> 1)
            {
              if (*(v22 + 16))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v31 <= v5)
              {
                v33 = v31 + v30;
              }

              else
              {
                v33 = v31;
              }

              v6 = sub_1B0C811B0(isUniquelyReferenced_nonNull_native, v33, 1, v6);
              if (*(v22 + 16))
              {
LABEL_32:
                if ((*(v6 + 24) >> 1) - *(v6 + 16) < v30)
                {
                  goto LABEL_47;
                }

                swift_arrayInitWithCopy();

                if (v30)
                {
                  v34 = *(v6 + 16);
                  v35 = __OFADD__(v34, v30);
                  v36 = v34 + v30;
                  if (v35)
                  {
                    goto LABEL_48;
                  }

                  *(v6 + 16) = v36;
                }

                goto LABEL_18;
              }
            }

            if (v30)
            {
              goto LABEL_46;
            }

LABEL_18:
            ++v24;
            v5 = v26;
            v22 = v25;
            if (v29 == i)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          ;
        }

        v6 = MEMORY[0x1E69E7CC0];
LABEL_51:

        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
      if (v5)
      {
        goto LABEL_14;
      }
    }

    if (v16)
    {
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5DF0, &unk_1B0EDE270);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1B0EC1E70;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C81E40(v9, v11, v14, v16, v19, v21, v43);
        v37 = v43[3];
        *(v6 + 64) = v43[2];
        *(v6 + 80) = v37;
        v38 = v43[5];
        *(v6 + 96) = v43[4];
        *(v6 + 112) = v38;
        v39 = v43[1];
        *(v6 + 32) = v43[0];
        *(v6 + 48) = v39;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v6 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_52:

    return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1B0C80AF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E78, &qword_1B0EDE298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B0C80BF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E90, &qword_1B0EDE2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_1B0C80D00(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE8, &unk_1B0EDE300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5EF0, &qword_1B0E9B500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C80E48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E70, &qword_1B0EDE290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0C80F4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E68, &qword_1B0EDE288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B0C81088(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0C811B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5DF0, &unk_1B0EDE270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C812D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5ED0, &qword_1B0EDE2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C813F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5ED8, &unk_1B0EDE2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C81520(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EB0, &qword_1B0EDE2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C81648(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EB8, &qword_1B0EDE2D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C81754(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EC0, &qword_1B0EDE2E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0C81860(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EA8, &qword_1B0EDE2C8);
  v10 = *(type metadata accessor for ReplacementNode(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ReplacementNode(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0C81A38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1B0C81B48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EA0, &qword_1B0EDE2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0C81C64(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_1B0E44AC8();
  v3 = [v1 addressListFromHeaderValue_];

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E60, &qword_1B0EDE280);
    v5 = sub_1B0E451B8();

    v13 = v4;
    if (v5 >> 62)
    {
LABEL_20:
      v6 = sub_1B0E46138();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2728410](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v10 = [v8 emailAddressValue];
      v11 = swift_unknownObjectRelease();
      ++v7;
      if (v10)
      {
        MEMORY[0x1B27272B0](v11);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B0E45218();
        }

        sub_1B0E45298();
        v4 = v13;
        v7 = v9;
      }
    }
  }

  return v4;
}

uint64_t sub_1B0C81E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v47 = a3;
  *(&v47 + 1) = a4;
  MEMORY[0x1B2726E80](64, 0xE100000000000000);
  if ((*(&v47 + 1) & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  }

  else
  {
    v10 = v47 & 0xFFFFFFFFFFFFLL;
  }

  MEMORY[0x1B2726E80](a5, a6);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44EE8();
  v15 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  if ((*(&v47 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 < v10)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = sub_1B0E44EE8();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v32 = v30;
    v33 = v47;
    *&v34 = v29;
    *(&v34 + 1) = v16;
    *&v35 = v17;
    *(&v35 + 1) = v18;
    *&v36 = v19;
    *(&v36 + 1) = v21;
    *&v37 = v23;
    *(&v37 + 1) = v25;
    v38[0] = v30;
    v38[1] = v47;
    v39 = v29;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    sub_1B0C826C0(&v32, v31);
    result = sub_1B0C8274C(v38);
    v26 = v35;
    a7[2] = v34;
    a7[3] = v26;
    v27 = v37;
    a7[4] = v36;
    a7[5] = v27;
    v28 = v33;
    *a7 = v32;
    a7[1] = v28;
  }

  return result;
}

uint64_t sub_1B0C82014(uint64_t a1, unint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E44DB8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    do
    {
      if (v4 == 2573 && v5 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_3;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        v12 = sub_1B0E44C18();
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = v4;
        }

        else
        {
          v8 = ((v4 & 0x1000000000000000) != 0 ? (v5 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v9 = *v8;
        }

        v10 = v9;
        v11 = (__clz(~v9) - 24) << 16;
        v12 = v10 < 0 ? v11 : 65541;
      }

      if (v12 >> 14 != 4 * v7)
      {
        goto LABEL_3;
      }

      v13 = sub_1B0C04CF0(v4, v5);
      if ((v13 & 0x100000000) != 0)
      {
        goto LABEL_56;
      }

      if ((v13 & 0xFFFFFF80) != 0)
      {
LABEL_3:
      }

      else
      {
        v14 = sub_1B0C04CF0(v4, v5);
        if ((v14 & 0x100000000) != 0)
        {
          goto LABEL_57;
        }

        v15 = v14;

        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_55;
        }

        if (v15 - 34 <= 0x3A && ((1 << (v15 - 34)) & 0x4000000540004C1) != 0)
        {

          MEMORY[0x1B2726E80](34, 0xE100000000000000);
          v16 = 0;
          goto LABEL_32;
        }
      }

      v4 = sub_1B0E44DB8();
      v5 = v6;
    }

    while (v6);
  }

  v16 = 1;
LABEL_32:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E44DB8();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    do
    {
      if (v19 == 34 && v20 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0)
      {

        v21 = 8796;
      }

      else
      {
        if ((v19 != 92 || v20 != 0xE100000000000000) && (sub_1B0E46A78() & 1) == 0)
        {
          MEMORY[0x1B2726E70](v19, v20);

          goto LABEL_39;
        }

        v21 = 23644;
      }

      MEMORY[0x1B2726E80](v21, 0xE200000000000000);
LABEL_39:
      v19 = sub_1B0E44DB8();
      v20 = v22;
    }

    while (v22);
  }

  if ((v16 & 1) == 0)
  {
    MEMORY[0x1B2726E80](34, 0xE100000000000000);
  }

  v23 = 0;
  v24 = sub_1B0E44EE8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  NFCInstance = unorm2_getNFCInstance();
  if (NFCInstance)
  {
    sub_1B0CB3CC8(v24, v26, v28, v30, NFCInstance);
    v34 = v33;
    v36 = v35;

    if (v34)
    {

      return v36;
    }
  }

  else
  {
  }

  return v23;
}

uint64_t sub_1B0C82424@<X0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>)
{
  v6 = sub_1B0CB4AE0(a2, a3);
  v8 = sub_1B0CACDC4(v6, v7, a4);
  v9 = sub_1B0C80520(v8);

  if (*(v9 + 2))
  {
    v10 = *(v9 + 3);
    v27 = *(v9 + 2);
    v28 = v10;
    v11 = *(v9 + 5);
    v29 = *(v9 + 4);
    v30 = v11;
    v12 = *(v9 + 7);
    v31 = *(v9 + 6);
    v32 = v12;
    v24 = v28;
    v25 = v27;
    v22 = v30;
    v23 = v29;
    v20 = v12;
    v21 = v31;
    sub_1B0C826C0(&v27, v26);

    v15 = v20;
    v14 = v21;
    v17 = v22;
    v16 = v23;
    v19 = v24;
    v18 = v25;
  }

  else
  {

    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v18;
  a1[1] = v19;
  a1[2] = v16;
  a1[3] = v17;
  a1[4] = v14;
  a1[5] = v15;
  return result;
}

uint64_t _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1B0E46A78() & 1) == 0 || (sub_1B0C8C5C0(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5], a2[6], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];

  return sub_1B0C8C5C0(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1B0C825C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C8260C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for EmailAddress()
{
  return &type metadata for EmailAddress;
}

{
  return &type metadata for EmailAddress;
}

unint64_t sub_1B0C82674()
{
  result = qword_1EB6E5DF8;
  if (!qword_1EB6E5DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6E5DF8);
  }

  return result;
}

unint64_t sub_1B0C826F8()
{
  result = qword_1EB6E5EC8;
  if (!qword_1EB6E5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5EC8);
  }

  return result;
}

uint64_t sub_1B0C827A4(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v7 = a1[10], v8 = a1[8], v56 = a1[9], v57 = v7, v9 = a1[10], v58[0] = a1[11], *(v58 + 9) = *(a1 + 185), v10 = a1[6], v11 = a1[4], v52 = a1[5], v53 = v10, v12 = a1[6], v13 = a1[8], v54 = a1[7], v55 = v13, v14 = a1[2], v48 = a1[1], v49 = v14, v15 = a1[4], v17 = a1[1], v16 = a1[2], v50 = a1[3], v51 = v15, v67 = v56, v68 = v9, v69[0] = a1[11], *(v69 + 9) = *(a1 + 185), v63 = v52, v64 = v12, v65 = v54, v66 = v8, v59 = v17, v60 = v16, v61 = v50, v62 = v11, sub_1B03BCF14(&v59) != 1))
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1B0C83634(v46, v44);
    v29 = a3(v70);
    if (v3)
    {
      sub_1B0C835CC(&v48);
    }

    else
    {
      v30 = v29;
      sub_1B0C835CC(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_1B0C835A8(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
    sub_1B0C835A8(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_1B0C835CC(v28);
}

uint64_t sub_1B0C82ADC(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  result = sub_1B0C827A4(a2, a3, a4);
  if (!v4)
  {
    *&v18 = v7;
    BYTE8(v18) = v8;
    *&v19 = v9;
    *(&v19 + 1) = v10;
    *v20 = v11;
    memset(&v20[8], 0, 48);
    v20[56] = 2;
    LOBYTE(v21) = 2;
    *v22 = 0uLL;
    v22[16] = 2;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    swift_beginAccess();
    v13 = a2[10];
    v23[8] = a2[9];
    v23[9] = v13;
    v24[0] = a2[11];
    *(v24 + 9) = *(a2 + 185);
    v14 = a2[6];
    v23[4] = a2[5];
    v23[5] = v14;
    v15 = a2[8];
    v23[6] = a2[7];
    v23[7] = v15;
    v16 = a2[2];
    v23[0] = a2[1];
    v23[1] = v16;
    v17 = a2[4];
    v23[2] = a2[3];
    v23[3] = v17;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[11] = v21;
    *(a2 + 185) = *&v22[1];
    a2[5] = *&v20[32];
    a2[6] = *&v20[48];
    a2[7] = 0u;
    a2[8] = 0u;
    a2[1] = v18;
    a2[2] = v19;
    a2[3] = *v20;
    a2[4] = *&v20[16];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C835CC(v23);
    swift_beginAccess();
    return *(a3 + 16);
  }

  return result;
}

uint64_t sub_1B0C82C44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, void))
{
  v13 = a1[3];
  v14 = a1[5];
  swift_beginAccess();
  v15 = *(a6 + 144);
  v39[8] = *(a6 + 128);
  v39[9] = v15;
  v40[0] = *(a6 + 160);
  *(v40 + 9) = *(a6 + 169);
  v16 = *(a6 + 80);
  v39[4] = *(a6 + 64);
  v39[5] = v16;
  v17 = *(a6 + 112);
  v39[6] = *(a6 + 96);
  v39[7] = v17;
  v18 = *(a6 + 16);
  v39[0] = *a6;
  v39[1] = v18;
  v19 = *(a6 + 48);
  v39[2] = *(a6 + 32);
  v39[3] = v19;
  if (sub_1B03BCF14(v39) != 1)
  {
    v30 = *a1;
    v29 = a1[1];
    v31 = *(a1 + 16);
    v32 = a1[4];
    v33 = v32 >> 59;
    if ((v32 >> 59) <= 5)
    {
      if (v33)
      {
        if (v33 == 5)
        {
          *(a6 + 40) = v30;
          *(a6 + 48) = v29;
          *(a6 + 56) = v31 & 1;
          *(a6 + 64) = v13;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }
      }

      else
      {
        *(a6 + 168) = v30;
        *(a6 + 176) = v29;
        *(a6 + 184) = v31 & 1;
      }
    }

    else
    {
      switch(v33)
      {
        case 6:
          *(a6 + 144) = v30;
          *(a6 + 152) = v29;
          *(a6 + 160) = v31 & 1;
          break;
        case 8:
          *(a6 + 72) = v30;
          *(a6 + 80) = v29;
          *(a6 + 88) = v31 & 1;
          break;
        case 9:
          v34 = *(a1 + 17);
          v35 = *(a1 + 21);
          *(a6 + 96) = v30;
          *(a6 + 104) = v29;
          *(a6 + 112) = v31;
          *(a6 + 113) = v34;
          *(a6 + 117) = v35;
          *(a6 + 119) = *(a1 + 23);
          *(a6 + 120) = v13;
          *(a6 + 128) = v32;
          *(a6 + 136) = v14;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          break;
      }
    }
  }

  swift_beginAccess();
  v20 = *(a6 + 128);
  v21 = *(a6 + 160);
  v37[9] = *(a6 + 144);
  v38[0] = v21;
  *(v38 + 9) = *(a6 + 169);
  v22 = *(a6 + 80);
  v37[4] = *(a6 + 64);
  v37[5] = v22;
  v23 = *(a6 + 112);
  v37[6] = *(a6 + 96);
  v37[7] = v23;
  v37[8] = v20;
  v24 = *(a6 + 16);
  v37[0] = *a6;
  v37[1] = v24;
  v25 = *(a6 + 48);
  v37[2] = *(a6 + 32);
  v37[3] = v25;
  result = sub_1B03BCF14(v37);
  if (result != 1)
  {
    v27 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v27, MEMORY[0x1E69E7CC0]);

    if (v28)
    {
      return a7(a1, a2, a3, a4, a5 & 1);
    }
  }

  return result;
}

unint64_t sub_1B0C82E8C()
{
  if (*(v0 + 184) == 2)
  {
    return 0;
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if (v2)
  {
    v4 = v3 - v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
LABEL_79:

    return 0;
  }

  v7 = sub_1B0CB4AF8(0, v4, v2, v3);
  v9 = v8;
  if (!v5)
  {
    v14 = v6;
    v15 = sub_1B0433338(0, v7, 0, v6);
    result = sub_1B0433338(v7, v9, 0, v14);
    if (__OFADD__(v15, result))
    {
      __break(1u);
    }

    else if ((v15 + result) >= v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v10 = v5;
  v11 = v6;
  v12 = sub_1B0433338(0, v7, v5, v6);
  v13 = sub_1B0433338(v7, v9, v10, v11);
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_82;
  }

  if (v12 + v13 < v12)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_13:
  result = sub_1B0E44C68();
  v17 = HIBYTE(v16) & 0xF;
  v18 = result & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v19 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_79;
  }

  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v42[0] = result;
      v42[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v17)
        {
          v18 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            v31 = v42 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_89:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v17)
        {
          v21 = 0;
          v36 = v42;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if (v17)
      {
        v18 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          v25 = v42 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_87;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      result = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_21:
      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          if (--v18)
          {
            v21 = 0;
            if (result)
            {
              v28 = (result + 1);
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_73;
                }

                v30 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_73;
                }

                v21 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_73;
                }

                ++v28;
                if (!--v18)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_73;
        }

        goto LABEL_88;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_73;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_73:
        v21 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_74;
      }

      if (v18 >= 1)
      {
        if (--v18)
        {
          v21 = 0;
          if (result)
          {
            v22 = (result + 1);
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_73;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_73;
              }

              ++v22;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_72:
          LOBYTE(v18) = 0;
LABEL_74:
          v43 = v18;
          v39 = v18;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_83:
    result = sub_1B0E46368();
    v18 = v41;
    goto LABEL_21;
  }

  v43 = 0;
  v21 = sub_1B0B6CEA8(result, v16, 10);
  v39 = v40;
LABEL_75:

  if (v39)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_1B0C8326C(_OWORD *a1, uint64_t a2, char **a3, void *a4)
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v9 = a1[10], v10 = a1[8], v58 = a1[9], v59 = v9, v11 = a1[10], v60[0] = a1[11], *(v60 + 9) = *(a1 + 185), v12 = a1[6], v13 = a1[4], v54 = a1[5], v55 = v12, v14 = a1[6], v15 = a1[8], v56 = a1[7], v57 = v15, v16 = a1[2], v50 = a1[1], v51 = v16, v17 = a1[4], v19 = a1[1], v18 = a1[2], v52 = a1[3], v53 = v17, v69 = v58, v70 = v11, v71[0] = a1[11], *(v71 + 9) = *(a1 + 185), v65 = v54, v66 = v14, v67 = v56, v68 = v10, v61 = v19, v62 = v18, v63 = v52, v64 = v13, sub_1B03BCF14(&v61) != 1))
  {
    v72[8] = v69;
    v72[9] = v70;
    v73[0] = v71[0];
    *(v73 + 9) = *(v71 + 9);
    v72[4] = v65;
    v72[5] = v66;
    v72[6] = v67;
    v72[7] = v68;
    v72[0] = v61;
    v72[1] = v62;
    v72[2] = v63;
    v72[3] = v64;
    v48[8] = v58;
    v48[9] = v59;
    v49[0] = v60[0];
    *(v49 + 9) = *(v60 + 9);
    v48[4] = v54;
    v48[5] = v55;
    v48[6] = v56;
    v48[7] = v57;
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1B0C83634(v48, v46);
    v31 = sub_1B0CB1424(v72, a3, a4);
    if (v4)
    {
      sub_1B0C835CC(&v50);
    }

    else
    {
      v32 = v31;
      sub_1B0C835CC(&v50);
      swift_beginAccess();
      *(a2 + 16) = v32;
    }

    sub_1B0C835A8(v44);
    swift_beginAccess();
    v33 = a1[10];
    v46[8] = a1[9];
    v46[9] = v33;
    v47[0] = a1[11];
    *(v47 + 9) = *(a1 + 185);
    v34 = a1[6];
    v46[4] = a1[5];
    v46[5] = v34;
    v35 = a1[8];
    v46[6] = a1[7];
    v46[7] = v35;
    v36 = a1[2];
    v46[0] = a1[1];
    v46[1] = v36;
    v37 = a1[4];
    v46[2] = a1[3];
    v46[3] = v37;
    v38 = v44[9];
    a1[9] = v44[8];
    a1[10] = v38;
    a1[11] = v45[0];
    *(a1 + 185) = *(v45 + 9);
    v39 = v44[5];
    a1[5] = v44[4];
    a1[6] = v39;
    v40 = v44[7];
    a1[7] = v44[6];
    a1[8] = v40;
    v41 = v44[1];
    a1[1] = v44[0];
    a1[2] = v41;
    v42 = v44[3];
    a1[3] = v44[2];
    a1[4] = v42;
    v30 = v46;
  }

  else
  {
    sub_1B0C835A8(&v50);
    swift_beginAccess();
    v20 = a1[10];
    v69 = a1[9];
    v70 = v20;
    v71[0] = a1[11];
    *(v71 + 9) = *(a1 + 185);
    v21 = a1[6];
    v65 = a1[5];
    v66 = v21;
    v22 = a1[8];
    v67 = a1[7];
    v68 = v22;
    v23 = a1[2];
    v61 = a1[1];
    v62 = v23;
    v24 = a1[4];
    v63 = a1[3];
    v64 = v24;
    v25 = v59;
    a1[9] = v58;
    a1[10] = v25;
    a1[11] = v60[0];
    *(a1 + 185) = *(v60 + 9);
    v26 = v55;
    a1[5] = v54;
    a1[6] = v26;
    v27 = v57;
    a1[7] = v56;
    a1[8] = v27;
    v28 = v51;
    a1[1] = v50;
    a1[2] = v28;
    v29 = v53;
    a1[3] = v52;
    a1[4] = v29;
    v30 = &v61;
  }

  return sub_1B0C835CC(v30);
}

double sub_1B0C835A8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B0C835CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F00, &unk_1B0EDE440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C8366C(_OWORD *a1, uint64_t a2, char **a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v7 = a1[10], v8 = a1[8], v56 = a1[9], v57 = v7, v9 = a1[10], v58[0] = a1[11], *(v58 + 9) = *(a1 + 185), v10 = a1[6], v11 = a1[4], v52 = a1[5], v53 = v10, v12 = a1[6], v13 = a1[8], v54 = a1[7], v55 = v13, v14 = a1[2], v48 = a1[1], v49 = v14, v15 = a1[4], v17 = a1[1], v16 = a1[2], v50 = a1[3], v51 = v15, v67 = v56, v68 = v9, v69[0] = a1[11], *(v69 + 9) = *(a1 + 185), v63 = v52, v64 = v12, v65 = v54, v66 = v8, v59 = v17, v60 = v16, v61 = v50, v62 = v11, sub_1B03BCF14(&v59) != 1))
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1B0C83634(v46, v44);
    v29 = sub_1B0CA5C7C(v70, a3);
    if (v3)
    {
      sub_1B0C835CC(&v48);
    }

    else
    {
      v30 = v29;
      sub_1B0C835CC(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_1B0C835A8(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
    sub_1B0C835A8(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_1B0C835CC(v28);
}

uint64_t sub_1B0C839A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_1B0C839E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Message.enumerateDecodedPlainText(input:outputLimit:cache:_:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v10 = a1;

  return sub_1B0C985F0(v5, v10, a2, a3, a4, a5, v11);
}

uint64_t Message.enumerateDecodedHTMLText(input:outputLimit:cache:_:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v10 = a1;

  return sub_1B0C98E34(v5, v10, a2, a3, a4, a5, v11);
}

uint64_t sub_1B0C83C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void *a7, uint64_t (*a8)(void), uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t (*a12)(uint64_t), uint64_t (*a13)(uint64_t *, uint64_t, uint64_t, uint64_t, void))
{
  v113 = 0;
  v81[16] = a10;
  v82 = a6;
  v83 = a7;
  v84 = &v113;
  v85 = a8;
  v86 = a9;
  v15 = swift_allocObject();
  v16 = v15 + 1;
  sub_1B0C835A8(&v130);
  v17 = v139;
  v15[9] = v138;
  v15[10] = v17;
  v15[11] = v140[0];
  *(v15 + 185) = *(v140 + 9);
  v18 = v135;
  v15[5] = v134;
  v15[6] = v18;
  v19 = v137;
  v15[7] = v136;
  v15[8] = v19;
  v20 = v131;
  v15[1] = v130;
  v15[2] = v20;
  v21 = v133;
  v15[3] = v132;
  v15[4] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 2;
  v77 = v15;
  v78 = v22;
  v79 = a11;
  v80 = v81;
  v73 = v15 + 1;
  v74 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v75 = 0;
  v23 = v141;
  sub_1B0CA33D0(a5, a1, a2, a3, a4);
  if (v23)
  {
  }

  else
  {
    LODWORD(v141) = a10;
    v28 = v15 + 1;
    v125 = MEMORY[0x1E69E7CC0];
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v129 = v27;
    sub_1B0CA286C(a12, v76, a13, v72, 0, 0);
    swift_beginAccess();
    if (*(v22 + 16) == 2 && (swift_beginAccess(), v30 = v15[10], v31 = v15[8], v99 = v15[9], v100 = v30, v32 = v15[10], v101[0] = v15[11], *(v101 + 9) = *(v15 + 185), v33 = v15[6], v34 = v15[4], v95 = v15[5], v96 = v33, v35 = v15[6], v36 = v15[8], v97 = v15[7], v98 = v36, v37 = v15[2], v91 = *v16, v92 = v37, v38 = v15[4], v40 = *v16, v39 = v15[2], v93 = v15[3], v94 = v38, v110 = v99, v111 = v32, v112[0] = v15[11], *(v112 + 9) = *(v15 + 185), v106 = v95, v107 = v35, v108 = v97, v109 = v31, v102 = v40, v103 = v39, v104 = v93, v105 = v34, sub_1B03BCF14(&v102) != 1))
    {
      v122 = v110;
      v123 = v111;
      v124[0] = v112[0];
      *(v124 + 9) = *(v112 + 9);
      v118 = v106;
      v119 = v107;
      v120 = v108;
      v121 = v109;
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v117 = v105;
      v89[8] = v99;
      v89[9] = v100;
      v90[0] = v101[0];
      *(v90 + 9) = *(v101 + 9);
      v89[4] = v95;
      v89[5] = v96;
      v89[6] = v97;
      v89[7] = v98;
      v89[0] = v91;
      v89[1] = v92;
      v89[2] = v93;
      v89[3] = v94;
      sub_1B0C83634(v89, v87);
      v52 = sub_1B0C84278(v141, a6, a7);
      if (v53)
      {
        v54 = a8(v52);

        v113 = v54 & 1;
      }

      else
      {
        v54 = v113;
      }

      sub_1B0C835CC(&v91);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = 2;
      }

      *(v22 + 16) = v55;
      v56 = v15[10];
      v87[8] = v15[9];
      v87[9] = v56;
      v88[0] = v15[11];
      *(v88 + 9) = *(v15 + 185);
      v57 = v15[6];
      v87[4] = v15[5];
      v87[5] = v57;
      v58 = v15[8];
      v87[6] = v15[7];
      v87[7] = v58;
      v59 = v15[2];
      v87[0] = *v28;
      v87[1] = v59;
      v60 = v15[4];
      v87[2] = v15[3];
      v87[3] = v60;
      v61 = v139;
      v15[9] = v138;
      v15[10] = v61;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v62 = v135;
      v15[5] = v134;
      v15[6] = v62;
      v63 = v137;
      v15[7] = v136;
      v15[8] = v63;
      v64 = v131;
      *v28 = v130;
      v15[2] = v64;
      v65 = v133;
      v15[3] = v132;
      v15[4] = v65;
      v51 = v87;
    }

    else
    {
      swift_beginAccess();
      v41 = v15[10];
      v122 = v15[9];
      v123 = v41;
      v124[0] = v15[11];
      *(v124 + 9) = *(v15 + 185);
      v42 = v15[6];
      v118 = v15[5];
      v119 = v42;
      v43 = v15[8];
      v120 = v15[7];
      v121 = v43;
      v44 = v15[2];
      v114 = *v16;
      v115 = v44;
      v45 = v15[4];
      v116 = v15[3];
      v117 = v45;
      v46 = v139;
      v15[9] = v138;
      v15[10] = v46;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v47 = v135;
      v15[5] = v134;
      v15[6] = v47;
      v48 = v137;
      v15[7] = v136;
      v15[8] = v48;
      v49 = v131;
      *v16 = v130;
      v15[2] = v49;
      v50 = v133;
      v15[3] = v132;
      v15[4] = v50;
      v51 = &v114;
    }

    sub_1B0C835CC(v51);
  }
}

uint64_t TextPartEnumerationResult.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C84184()
{
  result = qword_1EB6E5F08;
  if (!qword_1EB6E5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F08);
  }

  return result;
}

uint64_t sub_1B0C841E8(uint64_t a1, char a2, uint64_t a3, void *a4, char *a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_1B0C84278(a2 & 1, a3, a4);
  if (v9)
  {
    v10 = a6(v8);

    *a5 = v10 & 1;
  }

  else
  {
    v10 = *a5;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1B0C84278(char a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 136);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 128);
  if ((v5 & 0xF0) != 0x50)
  {
    return 0;
  }

  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  if (*(v3 + 112))
  {
    return 0;
  }

  v25 = *(v3 + 112);
  v11 = sub_1B0C895C4(v6, v7);
  if (a1)
  {
    if (v11 != 1819112552 || v12 != 0xE400000000000000)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (v11 == 0x6E69616C70 && v12 == 0xE500000000000000)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = sub_1B0E46A78();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v26[0] = v6;
  v26[1] = v7;
  v27 = v25;
  v28 = v5;
  v29 = v4;
  if (*(v3 + 88) == 2 || (v14 = sub_1B0CB4AE0(*(v3 + 72), *(v3 + 80)), v16 = sub_1B0C7D54C(v14, v15), v16 == 5))
  {
    v16 = 0;
  }

  if (a2 <= 0)
  {
    return 0;
  }

  result = sub_1B0CA21F0(*(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v19 = v18 - result;
  if (!result)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 >= a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = v22;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v24 = sub_1B0C7D714(v16, v23, v20, v21, v26, a3);

    return v24;
  }

  return result;
}

uint64_t sub_1B0C84530(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

uint64_t DisplayPart.Attachment.part.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double DisplayPart.Attachment.contentType.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  sub_1B07ACBF8(v3, v4, v5, v6, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

__n128 DisplayPart.Attachment.contentType.setter(uint64_t a1)
{
  sub_1B07ACE18(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  return result;
}

uint64_t DisplayPart.Attachment.contentDisposition.getter()
{
  v1 = *(v0 + 56);
  sub_1B08C50F0(v1, *(v0 + 64));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t DisplayPart.Attachment.contentDisposition.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B08C512C(v3[7], v3[8]);

  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  return result;
}

uint64_t DisplayPart.Attachment.contentID.getter()
{
  v1 = *(v0 + 80);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t DisplayPart.Attachment.contentID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t DisplayPart.Attachment.encodedBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

__n128 DisplayPart.Attachment.init(part:contentDisposition:contentType:contentTransferEncoding:estimatedDecodedSize:encodedBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a5 + 16);
  *(a9 + 8) = *a5;
  *a9 = a1;
  *(a9 + 24) = v10;
  result = *(a5 + 32);
  *(a9 + 40) = result;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a4;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

BOOL sub_1B0C848EC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(v13, v14);
}

uint64_t DisplayPart.AlternativePartStrategy.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C84A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, void (*a8)(_OWORD *), uint64_t a9)
{
  v140 = a6;
  v73 = a1;
  v74 = a2;
  v75 = a3;
  v76 = a4;
  v12 = sub_1B0CA3C44(a1, a2, a3, a4);
  v13 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v12);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    *&v124 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    sub_1B0CA4364(v15, v16, a5 & 1, &v124, v12);

    v17 = v124;
  }

  else
  {

    v17 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
  }

  v18 = swift_allocObject();
  v79 = &v70;
  *(v18 + 16) = v17;
  MEMORY[0x1EEE9AC00](v18);
  v69[2] = v140;
  v69[3] = a7;
  v69[4] = a8;
  v69[5] = a9;
  v19 = swift_allocObject();
  v71 = a8;
  sub_1B0C835A8(&v103);
  v21 = v112;
  v19[9] = v111;
  v19[10] = v21;
  v19[11] = v113[0];
  *(v19 + 185) = *(v113 + 9);
  v22 = v108;
  v19[5] = v107;
  v19[6] = v22;
  v23 = v110;
  v19[7] = v109;
  v19[8] = v23;
  v24 = v104;
  v19[1] = v103;
  v19[2] = v24;
  v25 = v106;
  v19[3] = v105;
  v19[4] = v25;
  v26 = swift_allocObject();
  v72 = v69;
  *(v26 + 16) = 2;
  v27 = (v26 + 16);
  MEMORY[0x1EEE9AC00](v26);
  v68[2] = v19;
  v68[3] = v28;
  v78 = v28;
  v68[4] = sub_1B0C86A10;
  v68[5] = v69;
  MEMORY[0x1EEE9AC00](v28);
  v67[2] = v19 + 1;
  v67[3] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v67[4] = 0;
  v29 = v77;
  sub_1B0CA33D0(3, v73, v74, v75, v76);
  if (v29)
  {
  }

  else
  {
    v76 = a9;
    v77 = a7;
    v20 = v19 + 1;
    v135 = MEMORY[0x1E69E7CC0];
    v136 = v30;
    v137 = v31;
    v138 = v32;
    v139 = v33;
    sub_1B0CA286C(sub_1B0C844A0, v68, sub_1B0C844C0, v67, sub_1B0C86A08, v18);
    swift_beginAccess();
    if (*v27 == 2 && (swift_beginAccess(), v35 = v19[10], v36 = v19[8], v89 = v19[9], v90 = v35, v37 = v19[10], v91[0] = v19[11], *(v91 + 9) = *(v19 + 185), v38 = v19[6], v39 = v19[4], v85 = v19[5], v86 = v38, v40 = v19[6], v41 = v19[8], v87 = v19[7], v88 = v41, v42 = v19[2], v82[0] = *v20, v82[1] = v42, v43 = v19[4], v45 = *v20, v44 = v19[2], v83 = v19[3], v84 = v43, v100 = v89, v101 = v37, v102[0] = v19[11], *(v102 + 9) = *(v19 + 185), v96 = v85, v97 = v40, v98 = v87, v99 = v36, v92 = v45, v93 = v44, v94 = v83, v95 = v39, sub_1B03BCF14(&v92) != 1))
    {
      v132 = v100;
      v133 = v101;
      v134[0] = v102[0];
      *(v134 + 9) = *(v102 + 9);
      v128 = v96;
      v129 = v97;
      v130 = v98;
      v131 = v99;
      v124 = v92;
      v125 = v93;
      v126 = v94;
      v127 = v95;
      sub_1B03B5C80(v82, v80, &qword_1EB6E5F00, &unk_1B0EDE440);
      sub_1B03B5C80(v82, v80, &qword_1EB6E5F00, &unk_1B0EDE440);
      v56 = v77;

      sub_1B0C85B6C(&v124, v140, v56, v114);
      v119 = v114[4];
      v120 = v114[5];
      v121 = v114[6];
      v122 = v114[7];
      v115 = v114[0];
      v116 = v114[1];
      v117 = v114[2];
      v118 = v114[3];
      if (sub_1B0C8699C(&v115) != 1)
      {
        v123[4] = v119;
        v123[5] = v120;
        v123[6] = v121;
        v123[7] = v122;
        v123[0] = v115;
        v123[1] = v116;
        v123[2] = v117;
        v123[3] = v118;
        v71(v123);
        sub_1B0398EFC(v114, &qword_1EB6E5F30, "nP\b");
      }

      sub_1B0398EFC(v82, &qword_1EB6E5F00, &unk_1B0EDE440);
      *(v78 + 16) = 2;
      v57 = v19[10];
      v80[8] = v19[9];
      v80[9] = v57;
      v81[0] = v19[11];
      *(v81 + 9) = *(v19 + 185);
      v58 = v19[6];
      v80[4] = v19[5];
      v80[5] = v58;
      v59 = v19[8];
      v80[6] = v19[7];
      v80[7] = v59;
      v60 = v19[2];
      v80[0] = *v20;
      v80[1] = v60;
      v61 = v19[4];
      v80[2] = v19[3];
      v80[3] = v61;
      v62 = v112;
      v19[9] = v111;
      v19[10] = v62;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v63 = v108;
      v19[5] = v107;
      v19[6] = v63;
      v64 = v110;
      v19[7] = v109;
      v19[8] = v64;
      v65 = v104;
      *v20 = v103;
      v19[2] = v65;
      v66 = v106;
      v19[3] = v105;
      v19[4] = v66;
      sub_1B0398EFC(v80, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    else
    {
      swift_beginAccess();
      v46 = v19[10];
      v132 = v19[9];
      v133 = v46;
      v134[0] = v19[11];
      *(v134 + 9) = *(v19 + 185);
      v47 = v19[6];
      v128 = v19[5];
      v129 = v47;
      v48 = v19[8];
      v130 = v19[7];
      v131 = v48;
      v49 = v19[2];
      v124 = *v20;
      v125 = v49;
      v50 = v19[4];
      v126 = v19[3];
      v127 = v50;
      v51 = v112;
      v19[9] = v111;
      v19[10] = v51;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v52 = v108;
      v19[5] = v107;
      v19[6] = v52;
      v53 = v110;
      v19[7] = v109;
      v19[8] = v53;
      v54 = v104;
      *v20 = v103;
      v19[2] = v54;
      v55 = v106;
      v19[3] = v105;
      v19[4] = v55;
      sub_1B0398EFC(&v124, &qword_1EB6E5F00, &unk_1B0EDE440);
    }
  }
}

uint64_t Message.decodedAttachmentByteCountUpperBound(attachment:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    result = *(a1 + 120) - v2;
  }

  else
  {
    result = 0;
  }

  if (*(a1 + 96) >= 4u)
  {
    v4 = ceil(result * 3.0 * 0.25);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        result = v4 + 10;
        if (!__OFADD__(v4, 10))
        {
          return result;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

unint64_t Message.decode(attachment:into:)(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1B0C7D154(*(a1 + 96), a2, a3, *(a1 + 112), *(a1 + 120));
  if (!v3 && (v5 & 1) != 0)
  {
    sub_1B0C866A0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void sub_1B0C851E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_1B0CA7EF4(a1);
    if ((v4 & 1) != 0 && *(*(a2 + 56) + 8 * v3) >= 2uLL)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }
}

uint64_t sub_1B0C85238(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *))
{

  sub_1B0C83634(a1, v9);
  sub_1B0C85B6C(a1, a2, a3, v10);
  v15 = v10[4];
  v16 = v10[5];
  v17 = v10[6];
  v18 = v10[7];
  v11 = v10[0];
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if (sub_1B0C8699C(&v11) != 1)
  {
    v9[4] = v15;
    v9[5] = v16;
    v9[6] = v17;
    v9[7] = v18;
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v9[3] = v14;
    a4(v9);
    sub_1B0398EFC(v10, &qword_1EB6E5F30, "nP\b");
  }

  return 2;
}

void sub_1B0C85330(__int128 *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a1 + 5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v11 = a1[1];
  v72 = *a1;
  v73 = v11;
  v74 = *(a1 + 4);
  v75 = v6;
  if (*(a2 + 88) == 2 || (v12 = sub_1B0CB4AE0(*(a2 + 72), *(a2 + 80)), v14 = sub_1B0C7D54C(v12, v13), v14 == 5))
  {
    v14 = 0;
  }

  v76[0] = v72;
  v76[1] = v73;
  v77 = v74;
  sub_1B0C97560(v76, &v69);
  if (v71 != 5)
  {
LABEL_31:
    sub_1B07AD0E0(&v69);
    goto LABEL_32;
  }

  v15 = v70;
  if (!v70)
  {
LABEL_32:

    sub_1B0C83634(a2, &v61);
    sub_1B0C857C4(a2, v14, a4, &v61);
    if (sub_1B03BCF14(&v61) == 1)
    {
      sub_1B0C8697C(&v53);
    }

    else
    {
      v49 = v65;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v45 = v61;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      sub_1B0A6BFC0(&v45);
      v57 = v49;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v53 = v45;
      v54 = v46;
      v55 = v47;
      v56 = v48;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    }

    v40 = v58;
    a5[4] = v57;
    a5[5] = v40;
    v41 = v60;
    a5[6] = v59;
    a5[7] = v41;
    v42 = v54;
    *a5 = v53;
    a5[1] = v42;
    v29 = v55;
    v30 = v56;
    goto LABEL_36;
  }

  v16 = v69;
  if ((v69 != 0x6E69616C70 || v70 != 0xE500000000000000) && (sub_1B0E46A78() & 1) == 0)
  {
    if (v16 == 1819112552 && v15 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {
      if (a3 < 1)
      {
        sub_1B07AD0E0(&v69);
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v31 = sub_1B0CA21F0(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
        v33 = v32 - v31;
        if (!v31)
        {
          v33 = 0;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          goto LABEL_44;
        }

        v34 = v31;
        v35 = v32;
        v36 = 2 * v33;
        if (v36 < a3)
        {
          a3 = v36;
        }

        sub_1B03B5C80(a1, &v61, &qword_1EB6E5F20, &qword_1B0EDE988);

        v37 = sub_1B0C7D714(v14, a3, v34, v35, &v72, a4);
        v39 = v38;

        sub_1B0398EFC(a1, &qword_1EB6E5F20, &qword_1B0EDE988);
        sub_1B07AD0E0(&v69);
        if (!v39)
        {
          goto LABEL_17;
        }
      }

      *&v45 = v37;
      *(&v45 + 1) = v39;
      sub_1B0C869B4(&v45);
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (a3 < 1)
  {
    v23 = 0;
    v25 = 0xE000000000000000;
LABEL_38:
    v43 = *(a2 + 112);
    v78[0] = *(a2 + 96);
    v78[1] = v43;
    v78[2] = *(a2 + 128);
    sub_1B03B5C80(v78, &v61, &qword_1EB6E5F20, &qword_1B0EDE988);
    v44 = sub_1B0CA6214(v78);
    sub_1B07AD0E0(&v69);
    *&v45 = v23;
    *(&v45 + 1) = v25;
    LOBYTE(v46) = v44;
    sub_1B0C869D4(&v45);
LABEL_39:
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v53 = v45;
    v54 = v46;
    v55 = v47;
    v56 = v48;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    goto LABEL_18;
  }

  v17 = sub_1B0CA21F0(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v19 = v18 - v17;
  if (!v17)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 >= 0)
  {
    v20 = v17;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 < a3)
    {
      a3 = v22;
    }

    sub_1B03B5C80(a1, &v61, &qword_1EB6E5F20, &qword_1B0EDE988);

    v23 = sub_1B0C7D714(v14, a3, v20, v21, &v72, a4);
    v25 = v24;

    sub_1B0398EFC(a1, &qword_1EB6E5F20, &qword_1B0EDE988);
    if (v25)
    {
      goto LABEL_38;
    }

    sub_1B07AD0E0(&v69);
LABEL_17:
    sub_1B0C8697C(&v61);
LABEL_18:
    v26 = v66;
    a5[4] = v65;
    a5[5] = v26;
    v27 = v68;
    a5[6] = v67;
    a5[7] = v27;
    v28 = v62;
    *a5 = v61;
    a5[1] = v28;
    v29 = v63;
    v30 = v64;
LABEL_36:
    a5[2] = v29;
    a5[3] = v30;
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1B0C857C4(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 136);
  if (!v7)
  {

    sub_1B0C86928(a1);
LABEL_7:
    sub_1B0C869F0(&v94);
LABEL_24:
    v48 = v99;
    *(a4 + 64) = v98;
    *(a4 + 80) = v48;
    v49 = v101;
    *(a4 + 96) = v100;
    *(a4 + 112) = v49;
    v50 = v95;
    *a4 = v94;
    *(a4 + 16) = v50;
    v51 = v97;
    *(a4 + 32) = v96;
    *(a4 + 48) = v51;
    return;
  }

  v8 = *(a1 + 128);
  v9 = *(a1 + 112);
  v91[0] = *(a1 + 96);
  v91[1] = v9;
  v92 = v8;
  v93 = v7;
  v10 = *(a1 + 56);
  v89 = *(a1 + 40);
  v90 = v10;
  v11 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    sub_1B0C86928(a1);

    goto LABEL_7;
  }

  v13 = v90;
  v14 = *(&v89 + 1);
  v15 = v89;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B03B5C80(&v89, &v94, &qword_1EB6E5F28, &qword_1B0EDE990);
  sub_1B0C7F3B4(v91, a3, &v86);

  v16 = sub_1B0C7A280(v15, v14, v13 & 1, v11, a3);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v57 = v21;
  v58 = v20;
  v59 = *a1;
  v55 = v16;
  v56 = *(a1 + 32);
  if (*(a1 + 160) == 2)
  {
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = 0;
    v24 = 0;
LABEL_20:
    v42 = sub_1B0CA21F0(v17, v18, v19, v56);
    v44 = v42;
    v45 = v43;
    if (v42)
    {
      v46 = v43 - v42;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_1B0C7CFA0(v46, a2);

    sub_1B0C86928(a1);
    *v60 = v22;
    *&v60[40] = v88;
    *&v60[24] = v87;
    *&v60[8] = v86;
    *&v60[56] = v55;
    *&v61 = v58;
    *(&v61 + 1) = v57;
    *&v62 = v23;
    *(&v62 + 1) = v24;
    LOBYTE(v63) = a2;
    *(&v63 + 1) = v47;
    *&v64 = v44;
    *(&v64 + 1) = v45;
    v69 = v61;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v65 = *v60;
    v66 = *&v60[16];
    v67 = *&v60[32];
    v68 = *&v60[48];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v73 = v59;
    v77 = v55;
    v78 = v58;
    v79 = v57;
    v80 = v23;
    v81 = v24;
    v82 = a2;
    v83 = v47;
    v84 = v44;
    v85 = v45;
    sub_1B08C4F88(v60, &v94);
    sub_1B08C5168(&v73);
    v98 = v69;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    goto LABEL_24;
  }

  v53 = *(a1 + 16);
  v54 = *(a1 + 24);
  v52 = *(a1 + 8);
  v25 = *(a1 + 144);
  v26 = *(a1 + 152);
  if (v25)
  {
    v27 = v26 - v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = sub_1B0CB4AF8(0, v27, v25, v26);
  v32 = v31;
  if (v28)
  {
    v33 = v28;
    v34 = v29;
    v35 = sub_1B0433338(0, v30, v28, v29);
    v36 = sub_1B0433338(v30, v32, v33, v34);
    if (!__OFADD__(v35, v36))
    {
      v19 = v54;
      if (v35 + v36 >= v35)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = sub_1B0E44C68();
        v24 = v37;
        v17 = v52;
        v18 = v53;
LABEL_19:
        v22 = v59;
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v29;
  v39 = sub_1B0433338(0, v30, 0, v29);
  v40 = sub_1B0433338(v30, v32, 0, v38);
  if (__OFADD__(v39, v40))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v53;
  v19 = v54;
  if (v39 + v40 >= v39)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B0E44C68();
    v24 = v41;
    v17 = v52;
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
}

void sub_1B0C85B6C(uint64_t a1@<X0>, int64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  if (*(a1 + 184) != 2)
  {

    sub_1B0C86928(a1);
    goto LABEL_53;
  }

  v6 = *(a1 + 128);
  v97[1] = *(a1 + 112);
  v97[2] = v6;
  v97[0] = *(a1 + 96);
  if (!*(&v6 + 1))
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, MEMORY[0x1E69E7CC0]))
    {
      sub_1B0CB0678("text/plain", "", 0);
      v19 = 0uLL;
      if (v18)
      {
        v20 = v18;
        sub_1B0C97374(v16, v17, &v98);
        v21 = v100;
        if (v100 <= 0xFDuLL)
        {
          v59 = v98;
          v61 = v99;
          *&v104 = v15;
          sub_1B0CACFF0(v20, &v104);

          v19 = v59;
          v23 = v61;
          v22 = v104;
        }

        else
        {

          v21 = 0;
          v22 = 0;
          v23 = 0uLL;
          v19 = 0uLL;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0uLL;
      }

      v89 = v19;
      v90 = v23;
      *&v91 = v21;
      *(&v91 + 1) = v22;
      sub_1B0C85330(&v89, a1, a2, a3, &v78);

      sub_1B0C86928(a1);
LABEL_52:
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v62 = v78;
      v63 = v79;
      v64 = v80;
      v65 = v81;
      v72 = v80;
      v73 = v81;
      v70 = v78;
      v71 = v79;
      v76 = v84;
      v77 = v85;
      v74 = v82;
      v75 = v83;
      if (sub_1B0C8699C(&v70) != 1)
      {
        v108 = v66;
        v109 = v67;
        v110 = v68;
        v111 = v69;
        v104 = v62;
        v105 = v63;
        v106 = v64;
        v107 = v65;
        goto LABEL_55;
      }

LABEL_53:
      sub_1B0C8697C(&v104);
LABEL_55:
      v53 = v109;
      a4[4] = v108;
      a4[5] = v53;
      v54 = v111;
      a4[6] = v110;
      a4[7] = v54;
      v55 = v105;
      *a4 = v104;
      a4[1] = v55;
      v56 = v107;
      a4[2] = v106;
      a4[3] = v56;
      return;
    }

    sub_1B0C86928(a1);
    goto LABEL_30;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 128);
  *&v98 = v7;
  *(&v98 + 1) = v8;
  *&v99 = v9;
  *(&v99 + 1) = v10;
  v100 = v12;
  v101 = v11;
  if (*(a1 + 88) == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v24 = sub_1B0CB4AE0(*(a1 + 72), *(a1 + 80));
    v57 = a4;
    v26 = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = v26;
    a4 = v57;
    v28 = sub_1B0C7D54C(v24, v27);
    if (v28 != 5)
    {
      goto LABEL_12;
    }
  }

  v28 = 0;
LABEL_12:
  v102[0] = v7;
  v102[1] = v8;
  v102[2] = v9;
  v102[3] = v10;
  v103 = v12;
  sub_1B0C97560(v102, &v86);
  if (v88 != 5)
  {
    sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
    sub_1B07AD0E0(&v86);
    goto LABEL_29;
  }

  v29 = v87;
  if (!v87)
  {
    sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
LABEL_29:
    sub_1B0C857C4(a1, v28, a3, &v89);
    if (sub_1B03BCF14(&v89) != 1)
    {
      v74 = v93;
      v75 = v94;
      v76 = v95;
      v77 = v96;
      v70 = v89;
      v71 = v90;
      v72 = v91;
      v73 = v92;
      sub_1B0A6BFC0(&v70);
      v108 = v74;
      v109 = v75;
      v110 = v76;
      v111 = v77;
      v104 = v70;
      v105 = v71;
      v106 = v72;
      v107 = v73;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      goto LABEL_51;
    }

LABEL_30:
    sub_1B0C8697C(&v78);
    goto LABEL_52;
  }

  v30 = a4;
  v31 = v86;
  if ((v86 != 0x6E69616C70 || v87 != 0xE500000000000000) && (sub_1B0E46A78() & 1) == 0)
  {
    sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
    if (v31 == 1819112552 && v29 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {
      if (a2 < 1)
      {
        sub_1B07AD0E0(&v86);

        sub_1B0C86928(a1);
        v49 = 0;
        v51 = 0xE000000000000000;
        a4 = v30;
      }

      else
      {
        v42 = sub_1B0CA21F0(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
        v44 = v43 - v42;
        if (!v42)
        {
          v44 = 0;
        }

        if (v44 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v45 = v42;
        v46 = v43;
        v47 = 2 * v44;
        if (v47 >= a2)
        {
          v48 = a2;
        }

        else
        {
          v48 = v47;
        }

        sub_1B03B5C80(v97, &v104, &qword_1EB6E5F20, &qword_1B0EDE988);

        v49 = sub_1B0C7D714(v28, v48, v45, v46, &v98, a3);
        v51 = v50;

        sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
        sub_1B07AD0E0(&v86);

        sub_1B0C86928(a1);
        a4 = v30;
        if (!v51)
        {
LABEL_25:
          sub_1B0C8697C(&v104);
LABEL_51:
          v82 = v108;
          v83 = v109;
          v84 = v110;
          v85 = v111;
          v78 = v104;
          v79 = v105;
          v80 = v106;
          v81 = v107;
          goto LABEL_52;
        }
      }

      *&v70 = v49;
      *(&v70 + 1) = v51;
      sub_1B0C869B4(&v70);
      goto LABEL_50;
    }

    sub_1B07AD0E0(&v86);
    a4 = v30;
    goto LABEL_29;
  }

  if (a2 < 1)
  {
    v39 = 0;
    v41 = 0xE000000000000000;
    a4 = v30;
LABEL_49:
    v52 = sub_1B0CA6214(v97);
    sub_1B07AD0E0(&v86);

    sub_1B0C86928(a1);
    *&v70 = v39;
    *(&v70 + 1) = v41;
    LOBYTE(v71) = v52;
    sub_1B0C869D4(&v70);
LABEL_50:
    v93 = v74;
    v94 = v75;
    v95 = v76;
    v96 = v77;
    v89 = v70;
    v90 = v71;
    v91 = v72;
    v92 = v73;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v111 = v96;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v107 = v92;
    goto LABEL_51;
  }

  v32 = sub_1B0CA21F0(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v34 = v33 - v32;
  if (!v32)
  {
    v34 = 0;
  }

  if (v34 + 0x4000000000000000 >= 0)
  {
    v35 = v32;
    v36 = v33;
    v37 = 2 * v34;
    if (v37 >= a2)
    {
      v38 = a2;
    }

    else
    {
      v38 = v37;
    }

    sub_1B03B5C80(v97, &v104, &qword_1EB6E5F20, &qword_1B0EDE988);

    v39 = sub_1B0C7D714(v28, v38, v35, v36, &v98, a3);
    v41 = v40;

    sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
    a4 = v30;
    if (v41)
    {
      goto LABEL_49;
    }

    sub_1B0398EFC(v97, &qword_1EB6E5F20, &qword_1B0EDE988);
    sub_1B07AD0E0(&v86);

    sub_1B0C86928(a1);
    goto LABEL_25;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

BOOL _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  v6 = *(a1 + 24);
  v25[0] = *(a1 + 8);
  v25[1] = v6;
  v26 = *(a1 + 40);
  v7 = *(a2 + 24);
  v23[0] = *(a2 + 8);
  v23[1] = v7;
  v24 = *(a2 + 40);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v25, v23) || (sub_1B0C78D8C(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 1)
  {
    if (v11 != 1)
    {
      return 0;
    }
  }

  else if (v9)
  {
    if (v11 < 3)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v9 != v11)
    {
      v12 = *(a1 + 72);
      v13 = *(a2 + 72);
      v14 = sub_1B0E46A78();
      v10 = v13;
      v15 = v14;
      v8 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_1B0C78C0C(v8, v10) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 88);
  v17 = *(a2 + 88);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v17 || (*(a1 + 80) != *(a2 + 80) || v16 != v17) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if ((sub_1B0C7C5D4() & 1) == 0 || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = *(a1 + 120) - v18;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a2 + 112);
  if (v21)
  {
    result = 0;
    if (!v18 || v19 != *(a2 + 120) - v21)
    {
      return result;
    }
  }

  else
  {
    result = v19 == 0;
    if (!v18 || v19)
    {
      return result;
    }
  }

  return v21 && v18 == v21;
}

uint64_t _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v38[4] = a1[4];
  v38[5] = v3;
  v4 = a1[7];
  v38[6] = a1[6];
  v38[7] = v4;
  v5 = a1[1];
  v38[0] = *a1;
  v38[1] = v5;
  v6 = a1[3];
  v38[2] = a1[2];
  v38[3] = v6;
  v7 = sub_1B08C4EF0(v38);
  v8 = sub_1B0507400(v38);
  if (!v7)
  {
    v17 = *v8;
    v18 = *(v8 + 8);
    v19 = *(v8 + 16);
    v20 = a2[5];
    v43 = a2[4];
    v44 = v20;
    v21 = a2[7];
    v45 = a2[6];
    v46 = v21;
    v22 = a2[1];
    v39 = *a2;
    v40 = v22;
    v23 = a2[3];
    v41 = a2[2];
    v42 = v23;
    if (!sub_1B08C4EF0(&v39))
    {
      if (v24 = sub_1B0507400(&v39), v25 = *(v24 + 16), v17 == *v24) && v18 == *(v24 + 8) || (sub_1B0E46A78())
      {
        v16 = v19 == v25;
        return v16 & 1;
      }
    }

LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (v7 != 1)
  {
    v43 = *(v8 + 64);
    v44 = *(v8 + 80);
    v45 = *(v8 + 96);
    v46 = *(v8 + 112);
    v39 = *v8;
    v40 = *(v8 + 16);
    v41 = *(v8 + 32);
    v42 = *(v8 + 48);
    v26 = a2[5];
    v36[4] = a2[4];
    v36[5] = v26;
    v27 = a2[7];
    v36[6] = a2[6];
    v36[7] = v27;
    v28 = a2[1];
    v36[0] = *a2;
    v36[1] = v28;
    v29 = a2[3];
    v36[2] = a2[2];
    v36[3] = v29;
    if (sub_1B08C4EF0(v36) == 2)
    {
      v30 = sub_1B0507400(v36);
      v31 = v30[5];
      v37[4] = v30[4];
      v37[5] = v31;
      v32 = v30[7];
      v37[6] = v30[6];
      v37[7] = v32;
      v33 = v30[1];
      v37[0] = *v30;
      v37[1] = v33;
      v34 = v30[3];
      v37[2] = v30[2];
      v37[3] = v34;
      v16 = _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(&v39, v37);
      return v16 & 1;
    }

    goto LABEL_14;
  }

  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = a2[5];
  v43 = a2[4];
  v44 = v11;
  v12 = a2[7];
  v45 = a2[6];
  v46 = v12;
  v13 = a2[1];
  v39 = *a2;
  v40 = v13;
  v14 = a2[3];
  v41 = a2[2];
  v42 = v14;
  if (sub_1B08C4EF0(&v39) != 1)
  {
    goto LABEL_14;
  }

  v15 = sub_1B0507400(&v39);
  if (v9 == *v15 && v10 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1B0E46A78();
  }

  return v16 & 1;
}

unint64_t sub_1B0C866A0()
{
  result = qword_1EB6E5F10;
  if (!qword_1EB6E5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F10);
  }

  return result;
}

unint64_t sub_1B0C866F8()
{
  result = qword_1EB6E5F18;
  if (!qword_1EB6E5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F18);
  }

  return result;
}

uint64_t sub_1B0C86758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 4;
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

double sub_1B0C867A8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 16 * -a2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C86820(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 7 | (a2 << 62);
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v2;
  return result;
}

uint64_t sub_1B0C86850(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1B0C86898(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_1B0C8697C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xFFFFFFFF0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_1B0C8699C(uint64_t a1)
{
  if ((*(a1 + 40) >> 4) > 0x80000000)
  {
    return -(*(a1 + 40) >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C869B4(uint64_t result)
{
  v1 = *(result + 96) & 7 | 0x4000000000000000;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t sub_1B0C869D4(uint64_t result)
{
  v1 = *(result + 96) & 7;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

double sub_1B0C869F0(_OWORD *a1)
{
  result = 0.0;
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

uint64_t Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = a1;

  return sub_1B0C99F70(v6, v12, a2, a3, a4, a5, a6, v13);
}

void sub_1B0C86AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9, void *a10)
{
  sub_1B0C88870(3u, a1, a2, a3, a4, a10, &v29);
  if (!v10)
  {
    v14 = v36;
    *&v38 = v29;
    BYTE8(v38) = v30;
    v39 = v31;
    v40 = v32;
    *&v41 = v33;
    WORD4(v41) = v34;
    v42 = v35;
    sub_1B0C87794();
    v52[2] = v40;
    v52[3] = v41;
    v53 = v42;
    v52[0] = v38;
    v52[1] = v39;
    sub_1B0C86F90(3u, a5, a8, a9);
    v54 = 0;
    sub_1B0C8880C(v52);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v15 - 1;
      for (i = (v14 + 56); ; i += 88)
      {
        v18 = *(i - 2);
        v19 = *(i - 1);
        v20 = *i;
        v21 = *(i + 1);
        v22 = *(i + 2);
        v23 = *(i + 3);
        v24 = *(i + 4);
        v25 = *(i + 6);
        v26 = *(i + 7);
        v27 = i[40];
        v43[0] = *(i - 3);
        v43[1] = v18;
        v43[2] = v19;
        v44 = v20;
        v45 = v21;
        v46 = v22;
        v47 = v23;
        v48 = v24;
        v49 = v27;
        v50 = v25;
        v51 = v26;
        v29 = v43[0];
        v30 = v18;
        *&v31 = v19;
        BYTE8(v31) = v20;
        *&v32 = v21;
        *(&v32 + 1) = v22;
        v33 = v23;
        v34 = v24;
        LOBYTE(v35) = v27;
        v36 = v25;
        v37 = v26;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C8926C(v21, v22, v23, v24, v27);
        sub_1B07B47AC(v43, v28);
        sub_1B07AD030(&v29);
        a6(v43);
        sub_1B07AD030(v43);
        if (!v16)
        {
          break;
        }

        --v16;
      }
    }
  }
}

uint64_t UnsafeExtractedAttachment.part.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UnsafeExtractedAttachment.filename.getter()
{
  v1 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t UnsafeExtractedAttachment.filename.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B0C86DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20E0, &qword_1B0EDE9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnsafeExtractedAttachment.unsafeBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

double UnsafeExtractedAttachment.init(part:filename:encoding:mediaType:unsafeBytes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a5 + 16);
  *&v14[7] = *a5;
  *&v14[23] = v9;
  *&v16[9] = *v14;
  *&v16[25] = *&v14[16];
  v14[39] = *(a5 + 32);
  *&v16[41] = *&v14[32];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *v16 = a3;
  v16[8] = a4;
  *&v16[56] = a6;
  v17 = a7;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v19 = a4;
  v22 = *&v14[32];
  v21 = *&v14[16];
  v20 = *v14;
  v23 = a6;
  v24 = a7;
  sub_1B07B47AC(&v15, &v13);
  sub_1B07AD030(v18);
  v10 = *&v16[32];
  *(a8 + 32) = *&v16[16];
  *(a8 + 48) = v10;
  *(a8 + 64) = *&v16[48];
  *(a8 + 80) = v17;
  result = *&v15;
  v12 = *v16;
  *a8 = v15;
  *(a8 + 16) = v12;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME9MediaTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1B0C86F90(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v73 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - v11;
  v13 = v4[8];
  v72 = *(v13 + 16);
  if (v72)
  {
    v71 = *(v4 + 56);
    if (v71 == 2)
    {
      v14 = *v4;
      sub_1B0C8874C();
      swift_allocError();
      *v15 = v14;
      swift_willThrow();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return;
    }

    v25 = v4[5];
    v70 = v4[6];
    v26 = *(v4 + 57);
    v27 = *(v4 + 8);
    v29 = v4[2];
    v28 = v4[3];
    v69 = v25;
    v30 = v4[4];
    if (v26 == 1)
    {
      v31 = v27;
      v68 = v28;
      v32 = sub_1B0CA21F0(v27, v29, v28, v30);
      v28 = v68;
      LODWORD(v27) = v31;
      if (v32)
      {
        v34 = v33 - v32;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 1;
    }

    sub_1B0CA824C(a2, v34, v26 ^ 1, 0, 0, a3, a4, v27, v10, v29, v28, v30);
    v36 = 0;
    v37 = (v13 + 32);
    v68 = &v75;
    v66 = v78;
    v38 = v70 - v69;
    if (!v69)
    {
      v38 = 0;
    }

    v65 = v38;
    v64 = &v77;
    v63 = &v76;
    v67 = a2;
    while (1)
    {
      v79[0] = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v80 = *(v37 + 8);
      v79[2] = v40;
      v79[3] = v41;
      v79[1] = v39;
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      memmove(__dst, v37, 0x48uLL);
      if (a2)
      {
        if (a2 != 1)
        {
          v74 = 10;
          v53 = sub_1B0C887A0(v79, v78);
          v77 = 11565;
          MEMORY[0x1EEE9AC00](v53);
          *(&v62 - 64) = v36 == 0;
          *(&v62 - 7) = a3;
          *(&v62 - 6) = a4;
          *(&v62 - 5) = &v74;
          v44 = v68;
          v58 = v68;
          v59 = &v77;
          v46.n128_f64[0] = MEMORY[0x1EEE9AC00](v54);
          v60 = sub_1B0C887D8;
          v61 = v55;
          if (v71)
          {
            if (v65 < 0)
            {
              goto LABEL_48;
            }

            sub_1B0C940AC(0, v65, v69, v70, sub_1B0C887F0, &v58);
          }

          else
          {
            if (v36)
            {
              (a3)(&v74, v44, v46.n128_f64[0]);
            }

            v56 = &v77;
            v57 = &v83;
LABEL_39:
            (a3)(v56, *(v57 - 32), v46);
            a3(v69, v70);
            a3(&v74, v44);
          }

          a2 = v67;
          goto LABEL_41;
        }

        v74 = 13;
        v43 = sub_1B0C887A0(v79, v78);
        v76 = 11565;
        MEMORY[0x1EEE9AC00](v43);
        *(&v62 - 64) = v36 == 0;
        *(&v62 - 7) = a3;
        *(&v62 - 6) = a4;
        *(&v62 - 5) = &v74;
        v44 = v68;
        v58 = v68;
        v59 = &v76;
        v46.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
        v60 = sub_1B0C895A8;
        v61 = v47;
        if ((v71 & 1) == 0)
        {
          if (v36)
          {
            (a3)(&v74, v44, v46.n128_f64[0]);
          }

          v56 = &v76;
          v57 = &v82;
          goto LABEL_39;
        }

        a2 = v67;
        v48 = v65;
        if (v65 < 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_1B0C887A0(v79, v78);
        v75 = 11565;
        MEMORY[0x1EEE9AC00](&v62);
        *(&v62 - 64) = v36 == 0;
        *(&v62 - 7) = a3;
        *(&v62 - 6) = a4;
        *(&v62 - 5) = "\r\n";
        v58 = "";
        v59 = &v75;
        v51.n128_f64[0] = MEMORY[0x1EEE9AC00](v49);
        v60 = sub_1B0C895A8;
        v61 = v52;
        if ((v71 & 1) == 0)
        {
          v62 = v50;
          if (v36)
          {
            (a3)("\r\n", "", v51.n128_f64[0]);
          }

          (a3)(&v75, v63, v51);
          a3(v69, v70);
          a3("\r\n", "");
          goto LABEL_41;
        }

        v48 = v65;
        if (v65 < 0)
        {
          goto LABEL_46;
        }
      }

      sub_1B0C940AC(0, v48, v69, v70, sub_1B0C8958C, &v58);
LABEL_41:
      sub_1B0C86F90(v73, a2, a3, a4);
      sub_1B0C8880C(__dst);
      if (v5)
      {
        return;
      }

      ++v36;
      v37 = (v37 + 72);
      if (v42 == v72)
      {
        sub_1B0CA8BF4(v69, v70, v71 & 1, a2, a3, a4);
        return;
      }
    }
  }

  v16 = *(v4 + 57);
  v17 = *(v4 + 8);
  v18 = v4[2];
  v19 = v4[3];
  v20 = v4[4];
  if (v16 == 1)
  {
    v21 = sub_1B0CA21F0(v17, v18, v19, v20);
    if (v21)
    {
      v24 = v22 - v21;
    }

    else
    {
      v24 = 0;
    }

    sub_1B0CA824C(a2, v24, 0, 0, 0, a3, a4, v17, v23, v18, v19, v20);
  }

  else
  {
    v35 = type metadata accessor for PartReplacement(0);
    (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    sub_1B0CA873C(a2, v12, a3, a4, v17, v18, v19, v20);
    sub_1B0398EFC(v12, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  }
}

void sub_1B0C87794()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
LABEL_3:
    v5 = 72 * v3 + 89;
    do
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1B0C785B4(v1);
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_26;
      }

      sub_1B0C87794();
      if (v3 >= *(v1 + 2))
      {
        goto LABEL_27;
      }

      if (v1[v5] == 1)
      {
        v4 = 0;
        ++v3;
        if (v6 != v2)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

      ++v3;
      v5 += 72;
    }

    while (v6 != v2);
    *(v0 + 64) = v1;
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  if ((*(v0 + 57) & 1) == 0)
  {
    v7 = *(v1 + 2) + 1;
    v8 = 96;
    while (--v7)
    {
      v9 = *&v1[v8];
      v8 += 72;
      if (*(v9 + 16))
      {
        return;
      }
    }

    v1 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *(v0 + 64) = v1;
  }
}

uint64_t sub_1B0C878D4(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = SectionSpecifier.Part.isSubPart(of:)(v4);

    if (v5)
    {
      return 1;
    }
  }

  if (a1[17] && (*(a1 + 128) <= 0xFu ? (v7 = (a1[14] & 0x80) == 0) : (v7 = 0), v7 && ((v8 = a1[12], v8 != 10) ? (v9 = v8 == 4) : (v9 = 1), v9)))
  {
    v10 = *a1;
    v6 = 1;
    swift_beginAccess();
    *(a2 + 16) = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    swift_beginAccess();
    v6 = 0;
    *(a2 + 16) = 0;
  }

  return v6;
}

uint64_t sub_1B0C879E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v14 = a10;
  v15 = *a1;
  v186 = *(a1 + 8);
  v104 = a1[2];
  v102 = a1[4];
  v103 = a1[3];
  swift_beginAccess();
  v16 = *(a2 + 128);
  v17 = *(a2 + 96);
  v171 = *(a2 + 112);
  v172 = v16;
  v18 = *(a2 + 128);
  v173 = *(a2 + 144);
  v19 = *(a2 + 64);
  v20 = *(a2 + 32);
  v167 = *(a2 + 48);
  v168 = v19;
  v21 = *(a2 + 64);
  v22 = *(a2 + 96);
  v169 = *(a2 + 80);
  v170 = v22;
  v23 = *(a2 + 32);
  v165 = *(a2 + 16);
  v166 = v23;
  v181 = v171;
  v182 = v18;
  v183 = *(a2 + 144);
  v177 = v167;
  v178 = v21;
  v179 = v169;
  v180 = v17;
  v175 = v165;
  v174 = *(a2 + 160);
  v184 = *(a2 + 160);
  v176 = v20;
  if (sub_1B03BCF14(&v175) == 1)
  {
    swift_beginAccess();
    v24 = *(a2 + 128);
    v161 = *(a2 + 112);
    v162 = v24;
    v163 = *(a2 + 144);
    v164 = *(a2 + 160);
    v25 = *(a2 + 64);
    v157 = *(a2 + 48);
    v158 = v25;
    v26 = *(a2 + 96);
    v159 = *(a2 + 80);
    v160 = v26;
    v27 = *(a2 + 32);
    v155 = *(a2 + 16);
    v156 = v27;
    v28 = v172;
    *(a2 + 112) = v171;
    *(a2 + 128) = v28;
    *(a2 + 144) = v173;
    *(a2 + 160) = v174;
    v29 = v168;
    *(a2 + 48) = v167;
    *(a2 + 64) = v29;
    v30 = v170;
    *(a2 + 80) = v169;
    *(a2 + 96) = v30;
    v31 = v166;
    *(a2 + 16) = v165;
    *(a2 + 32) = v31;
    sub_1B0398EFC(&v155, &qword_1EB6E5F48, &qword_1B0EDEBC8);
    v32 = v15;
    goto LABEL_18;
  }

  v161 = v181;
  v162 = v182;
  v163 = v183;
  v164 = v184;
  v157 = v177;
  v158 = v178;
  v159 = v179;
  v160 = v180;
  v155 = v175;
  v156 = v176;
  v139 = 0uLL;
  LOBYTE(v140) = 2;
  v135 = v171;
  v136 = v172;
  v137 = v173;
  v138 = v174;
  v131 = v167;
  v132 = v168;
  v133 = v169;
  v134 = v170;
  v129 = v165;
  v130 = v166;
  sub_1B0C891CC(&v129, &v122);
  v101 = v15;
  if ((sub_1B0C878D4(&v155, a3) & 1) == 0 && (v184 & 1) == 0)
  {
    v154[0] = v181;
    v154[1] = v182;
    v154[2] = v183;
    if (sub_1B0C63FAC(*(&v177 + 1), v178, SBYTE8(v178), v179, v154))
    {
      if (BYTE8(v180) == 2)
      {
        sub_1B0C89204(&v177 + 8, &v122);

        v98 = 5;
        v33 = *(&v183 + 1);
        if (*(&v183 + 1))
        {
LABEL_8:
          v151[0] = v181;
          v151[1] = v182;
          v152 = v183;
          v153 = v33;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C7F3B4(v151, a8, v144);
          v99 = v144[1];
          v100 = v144[0];
          v185 = v145;
          v34 = v146;
          sub_1B0C8923C(&v177 + 8);
          goto LABEL_26;
        }
      }

      else
      {
        v71 = sub_1B0CB4AE0(*(&v179 + 1), v180);
        v73 = v72;
        sub_1B0C89204(&v177 + 8, &v122);

        v98 = sub_1B0C7D54C(v71, v73);
        v33 = *(&v183 + 1);
        if (*(&v183 + 1))
        {
          goto LABEL_8;
        }
      }

      sub_1B0C8923C(&v177 + 8);
      v185 = 0;
      v34 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_26:
      v94 = BYTE8(v175);
      v92 = *(&v176 + 1);
      v93 = v176;
      v91 = v177;
      v74 = v179;
      if (v179)
      {
        v75 = BYTE8(v178);
        v77 = *(&v177 + 1);
        v76 = v178;
        v78 = v175;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        LOBYTE(v122) = v75 & 1;
        v79 = sub_1B0C795A8(a8, v77, v76, v75 & 1, v74);
        v96 = v80;
        v97 = v79;

        v81 = a9;
        if (v34)
        {
LABEL_28:

          goto LABEL_31;
        }
      }

      else
      {
        v78 = v175;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v96 = 0;
        v97 = 0;
        v81 = a9;
        if (v34)
        {
          goto LABEL_28;
        }
      }

      v100 = 0u;
      v185 = 255;
      v99 = 0u;
LABEL_31:
      v82 = sub_1B0CA21F0(v94, v93, v92, v91);
      v95 = v83;
      swift_beginAccess();
      v84 = *(v81 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v81 + 16) = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = sub_1B0C813F8(0, *(v84 + 2) + 1, 1, v84);
        *(v81 + 16) = v84;
      }

      v87 = *(v84 + 2);
      v86 = *(v84 + 3);
      if (v87 >= v86 >> 1)
      {
        v84 = sub_1B0C813F8((v86 > 1), v87 + 1, 1, v84);
      }

      *(v84 + 2) = v87 + 1;
      v88 = &v84[88 * v87];
      *(v88 + 4) = v78;
      *(v88 + 5) = v97;
      *(v88 + 6) = v96;
      v88[56] = v98;
      v89 = *(&v105 + 3);
      *(v88 + 57) = v105;
      *(v88 + 15) = v89;
      *(v88 + 4) = v100;
      *(v88 + 5) = v99;
      v88[96] = v185;
      v90 = v120[0];
      *(v88 + 25) = *(v120 + 3);
      *(v88 + 97) = v90;
      *(v88 + 13) = v82;
      *(v88 + 14) = v95;
      *(v81 + 16) = v84;
      swift_endAccess();
      v35 = 1;
      v36 = *(&v183 + 1);
      if (!*(&v183 + 1))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v35 = 0;
  v36 = *(&v183 + 1);
  if (!*(&v183 + 1))
  {
    goto LABEL_11;
  }

LABEL_10:
  v147 = v181;
  v148 = v182;
  v149 = v183;
  v150 = v36;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0C7EB6C();
  v39 = v38;
  v41 = v40;
  v42 = v40;

  if (v42 != 2)
  {
    *&v139 = v37;
    *(&v139 + 1) = v39;
    LOBYTE(v140) = v41;
    v15 = v101;
    v14 = a10;
LABEL_14:
    swift_beginAccess();
    if (*(v14 + 16))
    {
      v43 = v175;
      v44 = (2 * *(v175 + 16)) | 1;
      v45 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C885AC(v45, v43 + 32, 0, v44, v14 + 16, v35, &v139);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_11:
  v15 = v101;
  v14 = a10;
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_17:
  sub_1B0398EFC(&v165, &qword_1EB6E5F48, &qword_1B0EDEBC8);
  sub_1B0C89118(&v105);
  swift_beginAccess();
  v46 = *(a2 + 128);
  v125 = *(a2 + 112);
  v126 = v46;
  v127 = *(a2 + 144);
  v128 = *(a2 + 160);
  v47 = *(a2 + 64);
  *v124 = *(a2 + 48);
  *&v124[16] = v47;
  v48 = *(a2 + 96);
  *&v124[32] = *(a2 + 80);
  *&v124[48] = v48;
  v49 = *(a2 + 32);
  v122 = *(a2 + 16);
  v123 = v49;
  v50 = v112;
  v51 = v113;
  *(a2 + 112) = v111;
  *(a2 + 128) = v50;
  *(a2 + 144) = v51;
  *(a2 + 160) = v114;
  v52 = v108;
  *(a2 + 48) = v107;
  *(a2 + 64) = v52;
  v53 = v110;
  *(a2 + 80) = v109;
  *(a2 + 96) = v53;
  v54 = v106;
  *(a2 + 16) = v105;
  *(a2 + 32) = v54;
  sub_1B0398EFC(&v122, &qword_1EB6E5F48, &qword_1B0EDEBC8);
  v32 = *a1;
LABEL_18:
  *&v122 = v15;
  v55 = v186;
  BYTE8(v122) = v186;
  *&v123 = v104;
  *(&v123 + 1) = v103;
  *v124 = v102;
  memset(&v124[8], 0, 48);
  v124[56] = 2;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  swift_beginAccess();
  v56 = *(a2 + 128);
  v135 = *(a2 + 112);
  v136 = v56;
  v137 = *(a2 + 144);
  v138 = *(a2 + 160);
  v57 = *(a2 + 64);
  v131 = *(a2 + 48);
  v132 = v57;
  v58 = *(a2 + 96);
  v133 = *(a2 + 80);
  v134 = v58;
  v59 = *(a2 + 32);
  v129 = *(a2 + 16);
  v130 = v59;
  v60 = v126;
  *(a2 + 112) = v125;
  *(a2 + 128) = v60;
  *(a2 + 144) = v127;
  *(a2 + 160) = v128;
  v61 = *&v124[16];
  *(a2 + 48) = *v124;
  *(a2 + 64) = v61;
  v62 = *&v124[48];
  *(a2 + 80) = *&v124[32];
  *(a2 + 96) = v62;
  v63 = v123;
  *(a2 + 16) = v122;
  *(a2 + 32) = v63;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0398EFC(&v129, &qword_1EB6E5F48, &qword_1B0EDEBC8);
  *&v139 = v15;
  BYTE8(v139) = v55;
  *&v140 = v104;
  *(&v140 + 1) = v103;
  v141 = v102;
  *&v142 = 0;
  WORD4(v142) = 2;
  v64 = MEMORY[0x1E69E7CC0];
  v143 = MEMORY[0x1E69E7CC0];
  *&v109 = MEMORY[0x1E69E7CC0];
  v107 = v102;
  v108 = v142;
  v105 = v139;
  v106 = v140;
  v65 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v65, v64))
  {
    v117 = v141;
    v118 = v142;
    v119 = v143;
    v115 = v139;
    v116 = v140;
    swift_beginAccess();
    v66 = *(v14 + 64);
    v120[2] = *(v14 + 48);
    v120[3] = v66;
    v121 = *(v14 + 80);
    v67 = *(v14 + 32);
    v120[0] = *(v14 + 16);
    v120[1] = v67;
    v68 = v118;
    *(v14 + 48) = v117;
    *(v14 + 64) = v68;
    *(v14 + 80) = v119;
    v69 = v116;
    *(v14 + 16) = v115;
    *(v14 + 32) = v69;
    sub_1B0398EFC(v120, &qword_1EB6E5F58, &qword_1B0EDEBD0);
  }

  else
  {
    swift_beginAccess();
    if (*(v14 + 16))
    {
      sub_1B0C883D4(&v105, v32, v32 + 32, 0, (2 * *(v32 + 16)) | 1);
    }

    swift_endAccess();
    sub_1B0C8880C(&v139);
  }

  return 2;
}

uint64_t sub_1B0C88280(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[5];
  swift_beginAccess();
  v10 = *(a6 + 96);
  v11 = *(a6 + 128);
  v24[7] = *(a6 + 112);
  v24[8] = v11;
  v25 = *(a6 + 144);
  v12 = *(a6 + 48);
  v24[2] = *(a6 + 32);
  v24[3] = v12;
  v13 = *(a6 + 80);
  v24[4] = *(a6 + 64);
  v24[5] = v13;
  v24[6] = v10;
  v14 = *(a6 + 16);
  v24[0] = *a6;
  v24[1] = v14;
  result = sub_1B03BCF14(v24);
  if (result != 1)
  {
    v17 = *a1;
    v16 = a1[1];
    v18 = *(a1 + 16);
    v19 = a1[4];
    v20 = v19 >> 59;
    if ((v19 >> 59) > 7)
    {
      if (v20 == 8)
      {
        *(a6 + 72) = v17;
        *(a6 + 80) = v16;
        *(a6 + 88) = v18 & 1;
      }

      else if (v20 == 9)
      {
        v23 = *(a1 + 17);
        v22 = a1 + 17;
        v21 = v23;
        LOWORD(v23) = *(v22 + 2);
        *(a6 + 96) = v17;
        *(a6 + 104) = v16;
        *(a6 + 112) = v18;
        *(a6 + 113) = v21;
        *(a6 + 117) = v23;
        *(a6 + 119) = v22[6];
        *(a6 + 120) = v8;
        *(a6 + 128) = v19;
        *(a6 + 136) = v9;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }
    }

    else if (v20)
    {
      if (v20 == 5)
      {
        *(a6 + 40) = v17;
        *(a6 + 48) = v16;
        *(a6 + 56) = v18 & 1;
        *(a6 + 64) = v8;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }
    }

    else
    {
      *(a6 + 144) = 1;
    }
  }

  return result;
}

uint64_t sub_1B0C883D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return result;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v9, a4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = (a4 + 1);
  if (__OFSUB__(v9, a4 + 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v5 = sub_1B0C812D0(0, v7, 1, v5);
LABEL_9:
    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_1B0C812D0((v11 > 1), v12 + 1, 1, v5);
    }

    result = swift_unknownObjectRelease();
    *(v5 + 2) = v12 + 1;
    v13 = &v5[72 * v12];
    *(v13 + 2) = *v8;
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);
    v16 = *(v8 + 48);
    *(v13 + 12) = *(v8 + 64);
    *(v13 + 4) = v15;
    *(v13 + 5) = v16;
    *(v13 + 3) = v14;
    *(v6 + 64) = v5;
    return result;
  }

  v7 = *(a3 + 8 * a4);
  if (v9 == a4 + 1)
  {
    v5 = *(v6 + 64);
    if (*(v5 + 2) + 1 != v7)
    {
      return result;
    }

    v10 = result;
    swift_unknownObjectRetain();
    v8 = v10;
    sub_1B0C887A0(v10, v22);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v7 >= 1)
  {
    v17 = *(v6 + 64);
    if (v7 <= *(v17 + 16))
    {
      v20 = result;
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C785B4(v17);
        v17 = result;
      }

      if (v7 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_1B0C883D4(v20, a2, a3, v5, a5);
        result = swift_unknownObjectRelease();
        *(v6 + 64) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C885AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    *(a5 + 57) = a6 & 1;
    v17 = *(a7 + 16);
    *(a5 + 40) = *a7;
    *(a5 + 56) = v17;
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v16, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a2 + 8 * a3);
  if (v9 > 0)
  {
    v7 = *(a5 + 64);
    if (v9 <= *(v7 + 16))
    {
      v25 = a5;
      v8 = a3 + 1;
      if (!__OFSUB__(v16, a3 + 1))
      {
        v13 = a2;
        v14 = a4;
        v10 = a6;
        v15 = a7;
        v11 = v9 - 1;
        v12 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v16 != v8)
        {
          if (result)
          {
            v22 = v15;
            v23 = v10;
LABEL_15:
            if (v9 > *(v7 + 16))
            {
              __break(1u);
              return result;
            }

            sub_1B0C885AC(v12, v13, v8, v14, v7 + 72 * v11 + 32, v23 & 1, v22);
            goto LABEL_17;
          }

LABEL_24:
          result = sub_1B0C785B4(v7);
          v23 = v10;
          v22 = v15;
          v7 = result;
          goto LABEL_15;
        }

        if (result)
        {
          v18 = v15;
          v19 = v10;
LABEL_11:
          if (v9 <= *(v7 + 16))
          {
            v20 = v7 + 72 * v11;
            *(v20 + 89) = v19 & 1;
            v21 = *(v18 + 16);
            *(v20 + 72) = *v18;
            *(v20 + 88) = v21;
LABEL_17:
            result = swift_unknownObjectRelease();
            *(v25 + 64) = v7;
            return result;
          }

          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        v24 = sub_1B0C785B4(v7);
        v19 = v10;
        v18 = v15;
        v7 = v24;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  return result;
}

unint64_t sub_1B0C8874C()
{
  result = qword_1EB6E5F40;
  if (!qword_1EB6E5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F40);
  }

  return result;
}

__n128 sub_1B0C88870@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  v11 = (v10 + 16);
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v12 = swift_allocObject();
  v13 = v12 + 16;
  sub_1B0C89118(&v162);
  v14 = v169;
  *(v12 + 112) = v168;
  *(v12 + 128) = v14;
  *(v12 + 144) = v170;
  *(v12 + 160) = v171;
  v15 = v165;
  *(v12 + 48) = v164;
  *(v12 + 64) = v15;
  v16 = v167;
  *(v12 + 80) = v166;
  *(v12 + 96) = v16;
  v17 = v163;
  *(v12 + 16) = v162;
  *(v12 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v110 = v12;
  v111 = v19;
  v172 = v19;
  v112 = a2;
  v113 = a3;
  v114 = a4;
  v115 = a5;
  v116 = a6;
  v117 = v18;
  v105 = v18;
  v118 = v10;
  v108 = v12 + 16;
  sub_1B0CA33D0(a1, a2, a3, a4, a5);
  if (v106)
  {

LABEL_4:

    return result;
  }

  v104 = (v18 + 16);
  v157 = MEMORY[0x1E69E7CC0];
  v158 = v20;
  v159 = v21;
  v160 = v22;
  v161 = v23;
  sub_1B0CA286C(sub_1B0C89138, v109, sub_1B0C89170, v107, 0, 0);
  swift_beginAccess();
  v25 = *(v12 + 128);
  v140 = *(v12 + 112);
  v141 = v25;
  v142 = *(v12 + 144);
  v143 = *(v12 + 160);
  v26 = *(v12 + 64);
  v136 = *(v12 + 48);
  v137 = v26;
  v27 = *(v12 + 96);
  v138 = *(v12 + 80);
  v139 = v27;
  v28 = *(v12 + 32);
  v134 = *v13;
  v135 = v28;
  if (sub_1B03BCF14(&v134) == 1)
  {
    v29 = *(v12 + 128);
    v130 = *(v12 + 112);
    v131 = v29;
    v132 = *(v12 + 144);
    v133 = *(v12 + 160);
    v30 = *(v12 + 64);
    v126 = *(v12 + 48);
    v127 = v30;
    v31 = *(v12 + 96);
    v128 = *(v12 + 80);
    v129 = v31;
    v32 = *(v12 + 32);
    v124 = *v13;
    v125 = v32;
    v33 = v169;
    *(v12 + 112) = v168;
    *(v12 + 128) = v33;
    *(v12 + 144) = v170;
    *(v12 + 160) = v171;
    v34 = v165;
    *(v12 + 48) = v164;
    *(v12 + 64) = v34;
    v35 = v167;
    *(v12 + 80) = v166;
    *(v12 + 96) = v35;
    v36 = v163;
    *v13 = v162;
    *(v12 + 32) = v36;
    sub_1B0398EFC(&v124, &qword_1EB6E5F48, &qword_1B0EDEBC8);
    v37 = v10 + 16;
    goto LABEL_39;
  }

  v155[6] = v140;
  v155[7] = v141;
  v155[8] = v142;
  v156 = v143;
  v155[2] = v136;
  v155[3] = v137;
  v155[4] = v138;
  v155[5] = v139;
  v155[0] = v134;
  v155[1] = v135;
  v119 = 0;
  v120 = 0;
  v121 = 2;
  v37 = v10 + 16;
  if (sub_1B0C878D4(v155, v172))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else if ((v143 & 1) != 0 || (v154[0] = v140, v154[1] = v141, v154[2] = v142, (sub_1B0C63FAC(*(&v136 + 1), v137, SBYTE8(v137), v138, v154) & 1) == 0))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v88 = *(&v136 + 1);
    v85 = BYTE8(v137);
    v86 = v137;
    v40 = v138;
    v100 = v140;
    v93 = v141;
    v41 = v142;
    if (BYTE8(v139) == 2)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = a6;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v91 = 5;
    }

    else
    {
      v43 = sub_1B0CB4AE0(*(&v138 + 1), v139);
      v45 = v44;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = a6;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v91 = sub_1B0C7D54C(v43, v45);
    }

    if (*(&v41 + 1))
    {
      v151[0] = v100;
      v151[1] = v93;
      v152 = v41;
      v153 = *(&v41 + 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C7F3B4(v151, v42, v144);
      v92 = v144[1];
      v94 = v144[0];
      v101 = v145;
      v46 = v146;
    }

    else
    {

      v101 = 0;
      v46 = 0;
      v92 = 0u;
      v94 = 0u;
    }

    v47 = BYTE8(v134);
    v48 = v135;
    v87 = v136;
    v90 = v134;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v40)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v124) = v85 & 1;
      v97 = sub_1B0C795A8(a6, v88, v86, v85 & 1, v40);
      v89 = v49;
    }

    else
    {
      v97 = 0;
      v89 = 0;
    }

    if (v46)
    {
    }

    else
    {
      v92 = 0u;
      v94 = 0u;
      v101 = -1;
    }

    v50 = sub_1B0CA21F0(v47, v48, *(&v48 + 1), v87);
    v52 = v51;
    swift_beginAccess();
    v53 = *v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1B0C813F8(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1B0C813F8((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[88 * v55];
    *(v56 + 4) = v90;
    *(v56 + 5) = v97;
    *(v56 + 6) = v89;
    v56[56] = v91;
    v57 = *(v123 + 3);
    *(v56 + 57) = v123[0];
    *(v56 + 15) = v57;
    *(v56 + 4) = v94;
    *(v56 + 5) = v92;
    v56[96] = v101;
    v58 = v122[0];
    *(v56 + 25) = *(v122 + 3);
    *(v56 + 97) = v58;
    *(v56 + 13) = v50;
    *(v56 + 14) = v52;
    *v104 = v53;
    swift_endAccess();
    v38 = 1;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  v147 = v140;
  v148 = v141;
  v149 = v142;
  v150 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59 = sub_1B0C7EB6C();
  v61 = v60;
  v63 = v62;
  v64 = v62;

  if (v64 != 2)
  {
    v119 = v59;
    v120 = v61;
    v121 = v63;
LABEL_35:
    swift_beginAccess();
    if (*v11)
    {
      v65 = v134;
      v66 = (2 * *(v134 + 16)) | 1;
      v67 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C885AC(v67, v65 + 32, 0, v66, v11, v38, &v119);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_38;
  }

LABEL_32:
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_38:
  v68 = *(v13 + 112);
  v130 = *(v13 + 96);
  v131 = v68;
  v132 = *(v13 + 128);
  v133 = *(v13 + 144);
  v69 = *(v13 + 48);
  v126 = *(v13 + 32);
  v127 = v69;
  v70 = *(v13 + 80);
  v128 = *(v13 + 64);
  v129 = v70;
  v71 = *(v13 + 16);
  v124 = *v13;
  v125 = v71;
  v72 = v169;
  *(v13 + 96) = v168;
  *(v13 + 112) = v72;
  *(v13 + 128) = v170;
  *(v13 + 144) = v171;
  v73 = v165;
  *(v13 + 32) = v164;
  *(v13 + 48) = v73;
  v74 = v167;
  *(v13 + 64) = v166;
  *(v13 + 80) = v74;
  v75 = v163;
  *v13 = v162;
  *(v13 + 16) = v75;
  sub_1B0398EFC(&v124, &qword_1EB6E5F48, &qword_1B0EDEBC8);
LABEL_39:
  swift_beginAccess();
  v76 = *(v37 + 16);
  v124 = *v37;
  v125 = v76;
  v77 = *(v37 + 48);
  v126 = *(v37 + 32);
  v127 = v77;
  *&v128 = *(v37 + 64);
  v78 = v124;
  if (!v124)
  {
    sub_1B0C89178();
    swift_allocError();
    swift_willThrow();

    goto LABEL_4;
  }

  v79 = v128;
  v80 = BYTE9(v127);
  v81 = BYTE8(v127);
  v82 = v127;
  v83 = BYTE8(v124);
  v98 = v126;
  v102 = v125;
  swift_beginAccess();
  v84 = *(v105 + 16);
  sub_1B03B5C80(&v124, &v119, &qword_1EB6E5F58, &qword_1B0EDEBD0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  *a7 = v78;
  *(a7 + 8) = v83;
  result = v102;
  *(a7 + 16) = v102;
  *(a7 + 32) = v98;
  *(a7 + 48) = v82;
  *(a7 + 56) = v81;
  *(a7 + 57) = v80 & 1;
  *(a7 + 64) = v79;
  *(a7 + 72) = v84;
  return result;
}