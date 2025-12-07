uint64_t sub_100287EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  result = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *v2;
  if (*v2 != v6)
  {
    if (v6 <= result)
    {
      v9 = *v2;
    }

    else
    {
      v9 = v2[1];
    }

    v8 = *v2;
    while (1)
    {
      if (v9 == v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (*(v7 + v8) == a1 && (result >= v8 || *(v7 + v8 - 1) != a2))
      {
        break;
      }

      *v2 = ++v8;
      v2[1] = v6;
      v2[2] = v7;
      if (v6 == v8)
      {
        v8 = v6;
        break;
      }
    }

    if (v8 >= result)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (v6 < v8)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_100287F60(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (result <= 1u)
  {
    if (!result)
    {
      v6 = v5 - v4;
      if (!v4)
      {
        v6 = 0;
      }

      if ((v3 & 0x8000000000000000) == 0 && v6 >= v3)
      {
        if ((v2 & 0x8000000000000000) == 0 && v6 >= v2)
        {
          if (v2 - v3 >= 2)
          {
            v7 = v2 - 2;
            if (v2 - 2 >= v3)
            {
              if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
              {
                goto LABEL_49;
              }

              return 0;
            }

            goto LABEL_63;
          }

          return 0;
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_60;
    }

    v10 = v5 - v4;
    if (!v4)
    {
      v10 = 0;
    }

    v11 = v7 >= v2 || v7 < v3;
    if (v11 || v7 < 0 || v7 >= v10)
    {
      goto LABEL_62;
    }

    if (*(v4 + v7) != 13)
    {
      return 0;
    }

LABEL_49:
    v1[1] = v7;
    return 1;
  }

  if (result == 2)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_59;
    }

    v8 = v5 - v4;
    if (!v4)
    {
      v8 = 0;
    }

    v9 = v7 >= v2 || v7 < v3;
    if (v9 || v7 < 0 || v7 >= v8)
    {
      goto LABEL_61;
    }

    if (*(v4 + v7) != 10)
    {
      return 0;
    }

    goto LABEL_49;
  }

  v12 = v5 - v4;
  if (!v4)
  {
    v12 = 0;
  }

  if (v3 < 0 || v12 < v3)
  {
    goto LABEL_56;
  }

  if (v2 < 0 || v12 < v2)
  {
    goto LABEL_58;
  }

  if (v2 - v3 < 2)
  {
LABEL_50:
    result = sub_1002A8574(*v1, v1[1], v1[2], v1[3]);
    if ((result & 0x1FF) == 0xA)
    {
      if (v2 > v3)
      {
        *v1 = v3;
        v1[1] = v2 - 1;
        v1[2] = v4;
        v1[3] = v5;
        return 1;
      }

      goto LABEL_65;
    }

    return 0;
  }

  v7 = v2 - 2;
  if (v2 - 2 >= v3)
  {
    if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_10028815C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v7 = 0;
  v8 = a4 - a3;
  if (a4 <= a3)
  {
LABEL_11:
    v14 = 0;
    v15 = 0;
    if (!result)
    {
      return a7(v15, v14);
    }

    goto LABEL_15;
  }

  v9 = (a5 + a3);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 != 13 && v10 != 10)
    {
      *(result + v7) = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    --v8;
  }

  while (v8);
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_15:
      v14 = v7 + result;
      v15 = result;
      return a7(v15, v14);
    }

    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    return a7(v15, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002881FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

void *sub_100288230(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr))
{
  v6 = 0;
  v7 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v8 = (a4 + a2);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 != 13 && v9 != 10)
    {
      *(result + v6) = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }

    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    result = a5(&var1);
    if (!v5)
    {
      return var1;
    }
  }

  return result;
}

void *sub_1002882B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(_BYTE *__return_ptr, uint64_t, uint64_t))
{
  if (a2 == a1)
  {
LABEL_13:
    if (a3)
    {
      v10 = a3 + a2;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      v11 = a3 + a1;
    }

    else
    {
      v11 = 0;
    }

    result = a5(&v27[7], v11, v10);
    if (!v5)
    {
      return v27[7];
    }
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = a1;
    while (1)
    {
      if (v7 >= a2)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (a1 < 0 || v7 >= v6)
      {
        goto LABEL_39;
      }

      v8 = *(a3 + v7);
      if (v8 == 13 || v8 == 10)
      {
        break;
      }

      if (a2 == ++v7)
      {
        goto LABEL_13;
      }
    }

    if (v6 < a2)
    {
      goto LABEL_41;
    }

    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (a2 - a1 >= 1025)
    {
      goto LABEL_42;
    }

    do
    {
      v13 = __chkstk_darwin(a1);
      v15 = &v27[-v14];
      v16 = 0;
      while (1)
      {
        v17 = *(a3 + a1);
        if (v17 != 13 && v17 != 10)
        {
          v15[v16] = v17;
          if (__OFADD__(v16++, 1))
          {
            break;
          }
        }

        if (++a1 >= a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      if ((v16 & 0x8000000000000000) == 0)
      {
        (a5)(&v27[6], v15, &v15[v16], v13);
        if (v5)
        {
          return swift_willThrow();
        }

        else
        {
          return v27[6];
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v20 = a1;
      v21 = a2;
      v22 = a5;
      v23 = a3;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      a1 = v20;
    }

    while ((isStackAllocationSafe & 1) != 0);
    v25 = swift_slowAlloc();
    v26 = sub_100288230(v25, v20, v21, v23, v22);

    if (!v5)
    {
      return v26;
    }
  }

  return result;
}

void *sub_100288504(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 <= a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      *(result + v5) = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (!result)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    return _swiftEmptyArrayStorage;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v11 = result;
      v12 = sub_10015BEAC(v5, 0);
      memmove(v12 + 4, v11, v5);
      return v12;
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1002885B8(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      result[v4] = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }
    }

    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    v11 = &result[v4];
    if (result)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_100269CE4(result, v12, &v13);
  }
}

uint64_t MediaType.init(type:subtype:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1004A5814();
  v12 = v10;
  if ((v11 != 0x72617069746C756DLL || v10 != 0xE900000000000074) && (sub_1004A6D34() & 1) == 0)
  {
    if (v11 == 0x746163696C707061 && v12 == 0xEB000000006E6F69 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 1;
    }

    else if (v11 == 0x6F69647561 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 2;
    }

    else if (v11 == 0x6567616D69 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 3;
    }

    else if (v11 == 0x6567617373656DLL && v12 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 4;
    }

    else if (v11 == 1954047348 && v12 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 5;
    }

    else if (v11 == 0x6F65646976 && v12 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 6;
    }

    else if (v11 == 1953394534 && v12 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 7;
    }

    else if (v11 == 0x656C706D617865 && v12 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      v17 = 8;
    }

    else
    {
      if (v11 == 0x6C65646F6DLL && v12 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = sub_1004A6D34();

        if ((v18 & 1) == 0)
        {
          v17 = 10;
          goto LABEL_19;
        }
      }

      v17 = 9;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    a2 = 0;
    v17 = 0;
    a1 = a3;
    a3 = 0;
    goto LABEL_19;
  }

  v15 = sub_1004A5814();
  v16 = v14;
  if ((v15 != 0x646578696DLL || v14 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    if (v15 == 0x747365676964 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 2;
      goto LABEL_19;
    }

    if (v15 == 0x74616E7265746C61 && v16 == 0xEB00000000657669 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 3;
      goto LABEL_19;
    }

    if (v15 == 0x646574616C6572 && v16 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 4;
      goto LABEL_19;
    }

    if (v15 == 0x74726F706572 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 5;
      goto LABEL_19;
    }

    if (v15 == 0x64656E676973 && v16 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 6;
      goto LABEL_19;
    }

    if (v15 == 0x6574707972636E65 && v16 == 0xE900000000000064 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 7;
      goto LABEL_19;
    }

    if (v15 == 0x7461642D6D726F66 && v16 == 0xE900000000000061 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 8;
      goto LABEL_19;
    }

    if (v15 == 0x2D646578696D2D78 && v16 == 0xEF6563616C706572 || (sub_1004A6D34() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 9;
      goto LABEL_19;
    }

    if (v15 == 0x676E617265747962 && v16 == 0xE900000000000065)
    {

LABEL_86:

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 10;
      goto LABEL_19;
    }

    v19 = sub_1004A6D34();

    if (v19)
    {
      goto LABEL_86;
    }

    v17 = 0;
LABEL_14:
    a1 = a3;
    a2 = a4;
    a3 = 0;
    a4 = 0;
    goto LABEL_19;
  }

  a1 = 0;
  a3 = 0;
  a4 = 0;
  v17 = 0;
  a2 = 1;
LABEL_19:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v17;
  return result;
}

uint64_t sub_100288E48(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x74616E7265746C61;
    v7 = 0x676E617265747962;
    v8 = 0x747365676964;
    if (a1 != 3)
    {
      v8 = 0x6574707972636E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x756F64656C707061;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x646574616C6572;
    v2 = 0x74726F706572;
    if (a1 != 9)
    {
      v2 = 0x64656E676973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461642D6D726F66;
    v4 = 0x646578696DLL;
    if (a1 != 6)
    {
      v4 = 0x2D646578696D2D78;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

BOOL sub_100288FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7);
}

unint64_t sub_100289074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028B90C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1002890A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100288E48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002890D0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1953394534;
    v6 = 0x656C706D617865;
    if (a1 != 8)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1954047348;
    if (a1 != 5)
    {
      v7 = 0x6F65646976;
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
    v1 = 0x72617069746C756DLL;
    v2 = 0x6F69647561;
    v3 = 0x6567616D69;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746163696C707061;
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

uint64_t sub_10028920C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004A6D34();
  }

  return v12 & 1;
}

Swift::Int sub_1002892B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004A6E94();
  a3(v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10028933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1002893AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004A6E94();
  a4(v6);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_100289414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028B958(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100289444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002890D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MediaType.uniformType(filename:mimeType:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a5;
  v7 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  __chkstk_darwin(v7 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v51 = sub_1004A4874();
  v12 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v45 - v15;
  __chkstk_darwin(v16);
  v48 = &v45 - v17;
  v18 = sub_1004A5734();
  v19 = [v18 pathExtension];

  sub_1004A5764();
  v46 = sub_1004A5814();
  v50 = v20;

  v21 = sub_1004A5734();
  v22 = [v21 pathExtension];

  sub_1004A5764();
  v23 = sub_1004A5814();
  v25 = v24;

  v54 = a3;
  if ((a3 != 0x746163696C707061 || a4 != 0xEF70697A2F6E6F69) && (sub_1004A6D34() & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26 || v23 == 7367034 && v25 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    v27 = sub_1004A5734();
    v28 = [v27 stringByDeletingPathExtension];

    v29 = v51;
    if (!v28)
    {
      sub_1004A5764();
      v28 = sub_1004A5734();
    }

    v30 = [v28 pathExtension];

    sub_1004A5764();
    v23 = sub_1004A5814();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v25 = v32;
    }

    else
    {
      v23 = 7367034;

      v25 = 0xE300000000000000;
    }
  }

  else
  {
LABEL_16:
    v29 = v51;
  }

  v34 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v34 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    goto LABEL_24;
  }

  String.declaredUTTypeFromExtension.getter(v11);
  if ((*(v12 + 48))(v11, 1, v29) == 1)
  {

    sub_10028B4FC(v11);
LABEL_24:

    sub_1004A4824();
    v35 = v49;
    sub_1004A47D4();
    if ((*(v12 + 48))(v35, 1, v29) == 1)
    {

      sub_10028B4FC(v35);
      return (*(v12 + 56))(v52, 1, 1, v29);
    }

    v36 = *(v12 + 32);
    v37 = v47;
    v36(v47, v35, v29);
    v38 = sub_1004A4864();

    if (v38)
    {
      (*(v12 + 8))(v37, v29);
      return (*(v12 + 56))(v52, 1, 1, v29);
    }

    v44 = v52;
    v36(v52, v37, v29);
    return (*(v12 + 56))(v44, 0, 1, v29);
  }

  v51 = a4;
  v40 = *(v12 + 32);
  v40(v48, v11, v29);
  v41 = v53;
  sub_1004A4854();
  v42 = sub_1004A4844();
  v43 = *(v12 + 8);
  v43(v41, v29);
  if ((v42 & 1) == 0 && (v23 != v46 || v25 != v50) && (sub_1004A6D34() & 1) == 0)
  {
    if ((sub_1004A6D34() & 1) == 0)
    {
      String.declaredUTTypeFromExtension.getter(v52);

      return (v43)(v48, v29);
    }

    v43(v48, v29);

    goto LABEL_24;
  }

  v44 = v52;
  v40(v52, v48, v29);
  return (*(v12 + 56))(v44, 0, 1, v29);
}

uint64_t String.declaredUTTypeFromExtension.getter@<X0>(char *a3@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1004A4874();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;

  sub_1004A4824();
  sub_1004A4804();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10028B4FC(v6);
LABEL_5:

    sub_1004A4834();
    return sub_1004A4804();
  }

  v12 = *(v8 + 32);
  v12(v11, v6, v7);
  if (sub_1004A4864())
  {
    (*(v8 + 8))(v11, v7);
    goto LABEL_5;
  }

  v12(a3, v11, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t MediaType.description.getter()
{
  sub_100270CA4(v0, v2);
  v3._countAndFlagsBits = v0;
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v3);
}

uint64_t sub_100289D3C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_100270CA4(v4, v3);
  v6._countAndFlagsBits = v4;
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v6);
}

uint64_t MediaType.Multipart.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          sub_10026E848(a1, 0);
          return 0;
        case 1:
          return 0x646578696DLL;
        case 2:
          return 0x747365676964;
      }

LABEL_26:
      sub_10026E754(a1, a2);
      return a1;
    }

    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }
}

uint64_t sub_100289F60()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10026E754(v1, v2);

  return _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v1, v2);
}

uint64_t sub_100289FA4(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 109 && v5 == 117 && v6 == 108 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_6;
  }

  if (v4 == 105)
  {
    if (v5 == 109 && v6 == 97 && v7 == 103)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_6;
    }

LABEL_28:
    v12 = v5 == 101;
    goto LABEL_29;
  }

  if (v4 == 97)
  {
    if (v5 == 117)
    {
      if (v6 == 100 && v7 == 105)
      {
        v8 = a1;
        v9 = a2;
        v10 = 2;
        goto LABEL_6;
      }
    }

    else if (v5 == 112 && v6 == 112 && v7 == 108)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v12 = v5 == 101;
  if (v4 == 109 && v5 == 101 && v6 == 115 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_6;
  }

LABEL_29:
  if (v4 > 0x73u)
  {
    if (v4 == 118)
    {
      if (v5 != 105 || v6 != 100 || v7 != 101)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_6;
    }

    if (v4 == 116)
    {
      if (v6 != 120)
      {
        v12 = 0;
      }

      if (!v12 || v7 != 116)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
      goto LABEL_6;
    }

    goto LABEL_43;
  }

  if (v4 == 101)
  {
    if (v5 != 120 || v6 != 97 || v7 != 109)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_6;
  }

  if (v4 != 102)
  {
LABEL_43:
    if (v4 != 109 || v5 != 111 || v6 != 100 || v7 != 101)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 9;
LABEL_6:
    result = sub_10026ECB8(v8, v9, v10);
    if (result != 10)
    {
      return result;
    }

    return 10;
  }

  if (v5 == 111 && v6 == 110 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 7;
    goto LABEL_6;
  }

  return 10;
}

uint64_t sub_10028A2A8(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 100)
  {
    if (v5 == 105 && v6 == 103 && v7 == 101)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_16;
    }
  }

  else if (v4 == 109 && v5 == 105 && v6 == 120 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 6;
    goto LABEL_16;
  }

  if (v4 == 97 && v5 == 108 && v6 == 116 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  if (v4 > 0x71u)
  {
    switch(v4)
    {
      case 'x':
        if (v5 != 45 || v6 != 109 || v7 != 105)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 7;
        goto LABEL_16;
      case 's':
        if (v5 != 105 || v6 != 103 || v7 != 110)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 10;
        goto LABEL_16;
      case 'r':
        if (v5 != 101)
        {
          return 11;
        }

        if (v6 == 112)
        {
          if (v7 != 111)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 9;
        }

        else
        {
          if (v6 != 108 || v7 != 97)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 8;
        }

LABEL_16:
        result = sub_10026EB84(v8, v9, v10);
        if (result != 11)
        {
          return result;
        }

        return 11;
    }

LABEL_43:
    if (v4 != 97 || v5 != 112 || v6 != 112 || v7 != 108)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 98)
  {
    if (v5 != 121 || v6 != 116 || v7 != 101)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_16;
  }

  if (v4 == 101)
  {
    if (v5 != 110 || v6 != 99 || v7 != 114)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_16;
  }

  if (v4 != 102)
  {
    goto LABEL_43;
  }

  if (v5 == 111 && v6 == 114 && v7 == 109)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_16;
  }

  return 11;
}

uint64_t sub_10028A5C8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_100289FA4(a1, a2);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v19 = 0;
        v18 = a5 & 1;
        v14 = 16;
        goto LABEL_42;
      }

      if ((a5 & 1) == 0)
      {
        result = sub_10028A2A8(a3, a4);
        if (result <= 5u)
        {
          if (result > 2u)
          {
            if (result == 3)
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              a3 = 3;
            }

            else
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              if (result == 4)
              {
                a3 = 4;
              }

              else
              {
                a3 = 5;
              }
            }
          }

          else if (result)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 1)
            {
              a3 = 1;
            }

            else
            {
              a3 = 2;
            }
          }

          else
          {
            a3 = 0;
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
          }

          goto LABEL_42;
        }

        if (result <= 8u)
        {
          if (result == 6)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            a3 = result;
          }

          else
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 7)
            {
              a3 = 7;
            }

            else
            {
              a3 = 8;
            }
          }

          goto LABEL_42;
        }

        if (result == 9)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 9;
          goto LABEL_42;
        }

        if (result == 10)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 10;
          goto LABEL_42;
        }
      }

      v19 = 0;
      v14 = 0;
      v18 = (a5 | 0x80u) & 0x81;
      goto LABEL_42;
    }

    v13 = a5 & 1;
    v14 = 32;
    v15 = v13;
    if (result == 3)
    {
      v16 = 48;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 64;
    }

    v17 = result == 2;
    goto LABEL_12;
  }

  v13 = a5 & 1;
  if (result <= 7u)
  {
    v14 = 80;
    v15 = a5 & 1;
    if (result == 6)
    {
      v16 = 96;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 112;
    }

    v17 = result == 5;
LABEL_12:
    if (v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = 0;
    if (!v17)
    {
      v14 = v16;
    }

    goto LABEL_42;
  }

  v20 = a5 & 1;
  if (result == 9)
  {
    v21 = a3;
  }

  else
  {
    v21 = a1;
  }

  if (result == 9)
  {
    v22 = a4;
  }

  else
  {
    v22 = a2;
  }

  if (result == 9)
  {
    v23 = 0;
  }

  else
  {
    v20 = a3;
    v23 = a4;
  }

  if (result == 9)
  {
    v24 = -112;
  }

  else
  {
    v24 = a5 & 1 | 0xA0;
  }

  if (result == 8)
  {
    v18 = a5 & 1;
  }

  else
  {
    a3 = v21;
    a4 = v22;
    v18 = v20;
  }

  if (result == 8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v23;
  }

  if (result == 8)
  {
    v14 = 0x80;
  }

  else
  {
    v14 = v24;
  }

LABEL_42:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v14;
  return result;
}

char *sub_10028A894@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 - result;
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
    goto LABEL_59;
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_35:
      if (v4)
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 1;
        v5 = v3;
LABEL_42:
        v23 = &result[v5];
        if (result)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = &v17[v16];
        if (v17)
        {
          v26 = v14;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = &v17[v15];
        }

        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

        v29 = a3;
        result = sub_10028A5C8(result, v24, v27, v28, v14, v32);
        a3 = v29;
        v12 = v32[0];
        v30 = v32[1];
        v31 = v33;
        goto LABEL_56;
      }

      v12 = 0uLL;
      goto LABEL_55;
    }

    v6 = result[v5];
    if ((v6 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_18;
    }

    v7 = v6 - 34;
    v8 = v7 > 0x3B;
    v9 = (1 << v7) & 0xE0000007F0024C1;
    if (!v8 && v9 != 0)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v4 < v5 + 1)
    {
      goto LABEL_58;
    }

    v11 = v5 + 1 <= v5;
    ++v5;
    if (v11)
    {
      __break(1u);
LABEL_18:
      v12 = 0uLL;
      if (!v5)
      {
        goto LABEL_55;
      }

      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v13 = result[v5];
      v14 = v13 != 47;
      if (v13 == 47)
      {
        v16 = v5 + 1;
        v15 = v5 + 1;
        v3 = 1;
        while (v4 != v16)
        {
          v19 = result[v16];
          if ((v19 - 127) < 0xFFFFFFA2)
          {
            goto LABEL_39;
          }

          v20 = v19 - 34;
          v8 = v20 > 0x3B;
          v21 = (1 << v20) & 0xE0000007F0024C1;
          if (!v8 && v21 != 0)
          {
            goto LABEL_39;
          }

          if (__OFADD__(v16, 1))
          {
            goto LABEL_61;
          }

          if (v4 < ++v16)
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v16, v16 - 1))
          {
            __break(1u);
            goto LABEL_35;
          }
        }

        v16 = v4;
LABEL_39:
        if (v16 - 1 == v5)
        {
          goto LABEL_55;
        }

        v17 = result;
        v18 = v16;
        if (v16 <= v5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v5;
      }

      if (v18 == v4)
      {
        goto LABEL_42;
      }

LABEL_55:
      v31 = -2;
      v30 = 0uLL;
LABEL_56:
      *a3 = v12;
      *(a3 + 16) = v30;
      *(a3 + 32) = v31;
      return result;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10028AA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 4)
  {
    if (v8)
    {
LABEL_10:
      if (v6)
      {
LABEL_11:
        result = 0;
        v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      result = sub_10027C548(v4, v5);
      goto LABEL_14;
    }

    v18 = v4;
    if ((v6 & 0x80) != 0)
    {
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    result = 0;
    v15 = 0;
    v17 = 0;
    v11 = qword_1004EC8F8[v18];
  }

  else
  {
    if (v7 >> 4 <= 9)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 24);
    result = sub_10027C548(v4, v5);
    if (v7)
    {
LABEL_14:
      v15 = 0;
      v17 = 0;
      goto LABEL_15;
    }

    v12 = result;
    v13 = v6;
    v14 = v11;
    v15 = sub_10027C548(v13, v9);
    result = v12;
    v17 = v16;
    v11 = v14;
  }

LABEL_15:
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v8;
  return result;
}

BOOL _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 > 4)
  {
    if (*(a1 + 32) > 7u)
    {
      if (v6 == 8)
      {
        if (*(a2 + 32) != 8)
        {
          return 0;
        }
      }

      else
      {
        if (v6 != 9)
        {
          if (*(a2 + 32) != 10)
          {
            return 0;
          }

          v9 = a1[2];
          v8 = a1[3];
          v11 = a2[2];
          v10 = a2[3];
          if ((v4 != *a2 || v5 != a2[1]) && (sub_1004A6D34() & 1) == 0)
          {
            return 0;
          }

          if (v8)
          {
            if (v10)
            {
              if (v9 == v11 && v8 == v10)
              {
                return 1;
              }

              return (sub_1004A6D34() & 1) != 0;
            }
          }

          else if (!v10)
          {
            return 1;
          }

          return 0;
        }

        if (*(a2 + 32) != 9)
        {
          return 0;
        }
      }
    }

    else if (v6 == 5)
    {
      if (*(a2 + 32) != 5)
      {
        return 0;
      }
    }

    else if (v6 == 6)
    {
      if (*(a2 + 32) != 6)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 7)
    {
      return 0;
    }

LABEL_35:
    v7 = a2[1];
    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
          goto LABEL_38;
        }

        return (sub_1004A6D34() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (*(a1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }
    }

    else if (v6 == 3)
    {
      if (*(a2 + 32) != 3)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 4)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a1 + 32))
  {
    if (*(a2 + 32) != 1)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = a2[1];
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v5 == 1)
    {
      return v7 == 1;
    }

    if (v5 == 2)
    {
      return v7 == 2;
    }

LABEL_80:
    if ((v7 - 1) < 0xB)
    {
      return 0;
    }

    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
LABEL_38:
          if (v5 == v7)
          {
            return 1;
          }
        }

        return (sub_1004A6D34() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (v5 > 8)
  {
    switch(v5)
    {
      case 9:
        return v7 == 9;
      case 10:
        return v7 == 10;
      case 11:
        return v7 == 11;
    }

    goto LABEL_80;
  }

  if (v5 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v5 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 != 8)
  {
    return 0;
  }

  return 1;
}

BOOL _s9IMAP2MIME9MediaTypeO9MultipartO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }

    if (a2 == 2)
    {
      return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  if ((a4 - 1) < 0xB)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1004A6D34() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(uint64_t result, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }
    }

    else if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x646578696DLL;
    }

    else if (a2 == 2)
    {
      return 0x747365676964;
    }
  }

  else
  {
    sub_10026E848(result, a2);
    return 0;
  }

  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(Swift::String a1)
{
  a1._object = *(a1._countAndFlagsBits + 8);
  v1 = *(a1._countAndFlagsBits + 32);
  if (v1 > 4)
  {
    if (*(a1._countAndFlagsBits + 32) <= 7u)
    {
      if (v1 == 5)
      {
        if (!a1._object)
        {
          sub_100279734(a1._countAndFlagsBits);
          return 1954047348;
        }

        v8 = 1954047348;
      }

      else
      {
        if (v1 == 6)
        {
          if (a1._object)
          {
            v2 = 1701079414;
LABEL_21:
            v3 = v2 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
            goto LABEL_34;
          }

          sub_100279734(a1._countAndFlagsBits);
          return 0x6F65646976;
        }

        if (!a1._object)
        {
          sub_100279734(a1._countAndFlagsBits);
          return 1953394534;
        }

        v8 = 1953394534;
      }

      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x2F00000000;
      goto LABEL_34;
    }

    if (v1 != 8)
    {
      if (v1 != 9)
      {
        v12 = *(a1._countAndFlagsBits + 24);
        if (v12)
        {
          v13 = *(a1._countAndFlagsBits + 16);
          v17 = *a1._countAndFlagsBits;
          countAndFlagsBits = a1._countAndFlagsBits;

          v19._countAndFlagsBits = 47;
          v19._object = 0xE100000000000000;
          sub_1004A5994(v19);
          v20._countAndFlagsBits = v13;
          v20._object = v12;
          sub_1004A5994(v20);
          v7 = countAndFlagsBits;
          goto LABEL_35;
        }

        v15 = *a1._countAndFlagsBits;
        v16 = a1._countAndFlagsBits;

        sub_100279734(v16);
        return v15;
      }

      if (!a1._object)
      {
        sub_100279734(a1._countAndFlagsBits);
        return 0x6C65646F6DLL;
      }

      v3 = 0x2F6C65646F6DLL;
LABEL_34:
      v17 = v3;
      v10 = a1._countAndFlagsBits;
      a1._countAndFlagsBits = *a1._countAndFlagsBits;
      sub_1004A5994(a1);
      v7 = v10;
      goto LABEL_35;
    }

    if (!a1._object)
    {
      sub_100279734(a1._countAndFlagsBits);
      return 0x656C706D617865;
    }

    v9 = 0x6C706D617865;
    goto LABEL_28;
  }

  if (*(a1._countAndFlagsBits + 32) <= 1u)
  {
    if (*(a1._countAndFlagsBits + 32))
    {
      if (a1._object)
      {
        v3 = 0x746163696C707061;
        goto LABEL_34;
      }

      sub_100279734(a1._countAndFlagsBits);
      return 0x746163696C707061;
    }

    else
    {
      if (a1._object)
      {
        v17 = 0x72617069746C756DLL;
        v4 = *a1._countAndFlagsBits;
        v5 = a1._countAndFlagsBits;
        v6 = *(a1._countAndFlagsBits + 8);
        sub_10026E754(*a1._countAndFlagsBits, a1._object);
        v18._countAndFlagsBits = _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v4, v6);
        sub_1004A5994(v18);

        v7 = v5;
LABEL_35:
        sub_100279734(v7);
        return v17;
      }

      sub_100279734(a1._countAndFlagsBits);
      return 0x72617069746C756DLL;
    }
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      if (!a1._object)
      {
        sub_100279734(a1._countAndFlagsBits);
        return 0x6567616D69;
      }

      v3 = 0x2F6567616D69;
      goto LABEL_34;
    }

    if (!a1._object)
    {
      sub_100279734(a1._countAndFlagsBits);
      return 0x6567617373656DLL;
    }

    v9 = 0x67617373656DLL;
LABEL_28:
    v3 = v9 & 0xFFFFFFFFFFFFLL | 0x2F65000000000000;
    goto LABEL_34;
  }

  if (a1._object)
  {
    v2 = 1768191329;
    goto LABEL_21;
  }

  sub_100279734(a1._countAndFlagsBits);
  return 0x6F69647561;
}

uint64_t sub_10028B4FC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028B564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 33))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10028B5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10028B60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xC)
  {
    return (v3 - 11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028B66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_10028B6BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10028B860()
{
  result = qword_1005D6888;
  if (!qword_1005D6888)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for UnsafeMediaType.Multipart.Known, v0, v1);
    atomic_store(result, &qword_1005D6888);
  }

  return result;
}

unint64_t sub_10028B8B8()
{
  result = qword_1005D6890;
  if (!qword_1005D6890)
  {
    result = swift_getWitnessTable(byte_1004EC8D0, &type metadata for UnsafeMediaType.Kind, v0, v1);
    atomic_store(result, &qword_1005D6890);
  }

  return result;
}

unint64_t sub_10028B90C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AB378;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10028B958(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AB4A0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 33))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 32) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 32) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_10028BB78@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char **a7@<X8>)
{
  v82 = a7;
  v13 = sub_1004A5384();
  v80 = *(v13 - 8);
  v81 = v13;
  __chkstk_darwin(v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v15);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v84) = a2;
  v86[16] = a2;
  v87 = a3;
  v88 = a4;
  v18 = a5;
  v89 = a5;
  v90 = a6;
  v83 = a6;
  v85[2] = sub_10029555C;
  v85[3] = v86;
  swift_retain_n();
  v19 = Message.isEmpty.getter();
  if (v19)
  {
    v82 = &v79;
    v117 = 0;
    __chkstk_darwin(v19);
    *(&v79 - 48) = 0;
    *(&v79 - 5) = a3;
    *(&v79 - 4) = a4;
    *(&v79 - 3) = &v117;
    *(&v79 - 2) = a5;
    v21 = a5;
    *(&v79 - 1) = v83;
    v22 = a4;
    v23 = swift_allocObject();
    v80 = a3;
    v24 = v23 + 1;
    sub_100276450(&v118);
    v25 = v127;
    v23[9] = v126;
    v23[10] = v25;
    v23[11] = v128[0];
    *(v23 + 185) = *(v128 + 9);
    v26 = v123;
    v23[5] = v122;
    v23[6] = v26;
    v27 = v125;
    v23[7] = v124;
    v23[8] = v27;
    v28 = v119;
    v23[1] = v118;
    v23[2] = v28;
    v29 = v121;
    v23[3] = v120;
    v23[4] = v29;
    v30 = swift_allocObject();
    v81 = &v79;
    *(v30 + 16) = 2;
    __chkstk_darwin(v30);
    *(&v79 - 4) = v23;
    *(&v79 - 3) = v31;
    *(&v79 - 2) = sub_100277394;
    *(&v79 - 1) = (&v79 - 8);
    __chkstk_darwin(v31);
    *(&v79 - 4) = (v23 + 1);
    *(&v79 - 3) = UInt32.init(_:);
    *(&v79 - 2) = 0;
    v130 = _swiftEmptyArrayStorage;
    v131 = v84;
    v133 = 0;
    v134 = 0;
    v132 = 0;

    v32 = v135;
    sub_100295F74(sub_100277378, (&v79 - 6), sub_100277390, (&v79 - 6), 0, 0);
    if (v32)
    {
    }

    else
    {
      v84 = v21;
      v135 = v30;
      swift_beginAccess();
      if (*(v30 + 16) == 2 && (swift_beginAccess(), v43 = v23[10], v44 = v23[8], v103 = v23[9], v104 = v43, v45 = v23[10], v105[0] = v23[11], *(v105 + 9) = *(v23 + 185), v46 = v23[6], v47 = v23[4], v99 = v23[5], v100 = v46, v48 = v23[6], v49 = v23[8], v101 = v23[7], v102 = v49, v50 = v23[2], v95 = *v24, v96 = v50, v51 = v23[4], v53 = *v24, v52 = v23[2], v97 = v23[3], v98 = v51, v114 = v103, v115 = v45, v116[0] = v23[11], *(v116 + 9) = *(v23 + 185), v110 = v99, v111 = v48, v112 = v101, v113 = v44, v106 = v53, v107 = v52, v108 = v97, v109 = v47, sub_100021348(&v106) != 1))
      {
        v128[10] = v114;
        v128[11] = v115;
        v129[0] = v116[0];
        *(v129 + 9) = *(v116 + 9);
        v128[6] = v110;
        v128[7] = v111;
        v128[8] = v112;
        v128[9] = v113;
        v128[2] = v106;
        v128[3] = v107;
        v128[4] = v108;
        v128[5] = v109;
        v93[8] = v103;
        v93[9] = v104;
        v94[0] = v105[0];
        *(v94 + 9) = *(v105 + 9);
        v93[4] = v99;
        v93[5] = v100;
        v93[6] = v101;
        v93[7] = v102;
        v93[0] = v95;
        v93[1] = v96;
        v93[2] = v97;
        v93[3] = v98;
        sub_1002764DC(v93, v91);
        v64 = sub_1002770A0(0, v80, v22);
        if (v65)
        {
          v66 = (v84)(v64);

          v117 = v66 & 1;
        }

        else
        {
          v66 = v117;
        }

        sub_100025F40(&v95, &qword_1005D65E0, &unk_1004EB070);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = 2;
        }

        *(v135 + 16) = v67;
        v68 = v23[10];
        v91[8] = v23[9];
        v91[9] = v68;
        v92[0] = v23[11];
        *(v92 + 9) = *(v23 + 185);
        v69 = v23[6];
        v91[4] = v23[5];
        v91[5] = v69;
        v70 = v23[8];
        v91[6] = v23[7];
        v91[7] = v70;
        v71 = v23[2];
        v91[0] = *v24;
        v91[1] = v71;
        v72 = v23[4];
        v91[2] = v23[3];
        v91[3] = v72;
        v73 = v127;
        v23[9] = v126;
        v23[10] = v73;
        v23[11] = v128[0];
        *(v23 + 185) = *(v128 + 9);
        v74 = v123;
        v23[5] = v122;
        v23[6] = v74;
        v75 = v125;
        v23[7] = v124;
        v23[8] = v75;
        v76 = v119;
        *v24 = v118;
        v23[2] = v76;
        v77 = v121;
        v23[3] = v120;
        v23[4] = v77;
        sub_100025F40(v91, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
        swift_beginAccess();
        v54 = v23[10];
        v114 = v23[9];
        v115 = v54;
        v116[0] = v23[11];
        *(v116 + 9) = *(v23 + 185);
        v55 = v23[6];
        v110 = v23[5];
        v111 = v55;
        v56 = v23[8];
        v112 = v23[7];
        v113 = v56;
        v57 = v23[2];
        v106 = *v24;
        v107 = v57;
        v58 = v23[4];
        v108 = v23[3];
        v109 = v58;
        v59 = v127;
        v23[9] = v126;
        v23[10] = v59;
        v23[11] = v128[0];
        *(v23 + 185) = *(v128 + 9);
        v60 = v123;
        v23[5] = v122;
        v23[6] = v60;
        v61 = v125;
        v23[7] = v124;
        v23[8] = v61;
        v62 = v119;
        *v24 = v118;
        v23[2] = v62;
        v63 = v121;
        v23[3] = v120;
        v23[4] = v63;
        sub_100025F40(&v106, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_21;
  }

  v33 = v84;
  v34 = a4;
  sub_100286984(a1, v17, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v17;
    v41 = v17[1];

    v42 = v135;
    sub_10028EE70(v40, v41, v33, a3, v34, v18, v83);
    sub_100014D40(v40, v41);
    if (v42)
    {
    }

    goto LABEL_21;
  }

  v35 = v79;
  v36 = v80;
  v37 = v81;
  v38 = (*(v80 + 4))(v79, v17, v81);
  __chkstk_darwin(v38);
  *(&v79 - 4) = v35;
  *(&v79 - 3) = sub_1002955F4;
  *(&v79 - 2) = v85;
  v39 = v135;
  sub_1004A5314();
  if (!v39)
  {
    (*(v36 + 8))(v35, v37);
LABEL_21:
  }

  (*(v36 + 8))(v35, v37);
}

uint64_t sub_10028C3BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char **a7@<X8>)
{
  v82 = a7;
  v13 = sub_1004A5384();
  v80 = *(v13 - 8);
  v81 = v13;
  __chkstk_darwin(v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v15);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v84) = a2;
  v86[16] = a2;
  v87 = a3;
  v88 = a4;
  v18 = a5;
  v89 = a5;
  v90 = a6;
  v83 = a6;
  v85[2] = sub_100295530;
  v85[3] = v86;
  swift_retain_n();
  v19 = Message.isEmpty.getter();
  if (v19)
  {
    v82 = &v79;
    v117 = 0;
    __chkstk_darwin(v19);
    *(&v79 - 48) = 1;
    *(&v79 - 5) = a3;
    *(&v79 - 4) = a4;
    *(&v79 - 3) = &v117;
    *(&v79 - 2) = a5;
    v21 = a5;
    *(&v79 - 1) = v83;
    v22 = a4;
    v23 = swift_allocObject();
    v80 = a3;
    v24 = v23 + 1;
    sub_100276450(&v118);
    v25 = v127;
    v23[9] = v126;
    v23[10] = v25;
    v23[11] = v128[0];
    *(v23 + 185) = *(v128 + 9);
    v26 = v123;
    v23[5] = v122;
    v23[6] = v26;
    v27 = v125;
    v23[7] = v124;
    v23[8] = v27;
    v28 = v119;
    v23[1] = v118;
    v23[2] = v28;
    v29 = v121;
    v23[3] = v120;
    v23[4] = v29;
    v30 = swift_allocObject();
    v81 = &v79;
    *(v30 + 16) = 2;
    __chkstk_darwin(v30);
    *(&v79 - 4) = v23;
    *(&v79 - 3) = v31;
    *(&v79 - 2) = sub_1002772B0;
    *(&v79 - 1) = (&v79 - 8);
    __chkstk_darwin(v31);
    *(&v79 - 4) = (v23 + 1);
    *(&v79 - 3) = UInt32.init(_:);
    *(&v79 - 2) = 0;
    v130 = _swiftEmptyArrayStorage;
    v131 = v84;
    v133 = 0;
    v134 = 0;
    v132 = 0;

    v32 = v135;
    sub_100295F74(sub_100277378, (&v79 - 6), sub_100277390, (&v79 - 6), 0, 0);
    if (v32)
    {
    }

    else
    {
      v84 = v21;
      v135 = v30;
      swift_beginAccess();
      if (*(v30 + 16) == 2 && (swift_beginAccess(), v43 = v23[10], v44 = v23[8], v103 = v23[9], v104 = v43, v45 = v23[10], v105[0] = v23[11], *(v105 + 9) = *(v23 + 185), v46 = v23[6], v47 = v23[4], v99 = v23[5], v100 = v46, v48 = v23[6], v49 = v23[8], v101 = v23[7], v102 = v49, v50 = v23[2], v95 = *v24, v96 = v50, v51 = v23[4], v53 = *v24, v52 = v23[2], v97 = v23[3], v98 = v51, v114 = v103, v115 = v45, v116[0] = v23[11], *(v116 + 9) = *(v23 + 185), v110 = v99, v111 = v48, v112 = v101, v113 = v44, v106 = v53, v107 = v52, v108 = v97, v109 = v47, sub_100021348(&v106) != 1))
      {
        v128[10] = v114;
        v128[11] = v115;
        v129[0] = v116[0];
        *(v129 + 9) = *(v116 + 9);
        v128[6] = v110;
        v128[7] = v111;
        v128[8] = v112;
        v128[9] = v113;
        v128[2] = v106;
        v128[3] = v107;
        v128[4] = v108;
        v128[5] = v109;
        v93[8] = v103;
        v93[9] = v104;
        v94[0] = v105[0];
        *(v94 + 9) = *(v105 + 9);
        v93[4] = v99;
        v93[5] = v100;
        v93[6] = v101;
        v93[7] = v102;
        v93[0] = v95;
        v93[1] = v96;
        v93[2] = v97;
        v93[3] = v98;
        sub_1002764DC(v93, v91);
        v64 = sub_1002770A0(1, v80, v22);
        if (v65)
        {
          v66 = (v84)(v64);

          v117 = v66 & 1;
        }

        else
        {
          v66 = v117;
        }

        sub_100025F40(&v95, &qword_1005D65E0, &unk_1004EB070);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = 2;
        }

        *(v135 + 16) = v67;
        v68 = v23[10];
        v91[8] = v23[9];
        v91[9] = v68;
        v92[0] = v23[11];
        *(v92 + 9) = *(v23 + 185);
        v69 = v23[6];
        v91[4] = v23[5];
        v91[5] = v69;
        v70 = v23[8];
        v91[6] = v23[7];
        v91[7] = v70;
        v71 = v23[2];
        v91[0] = *v24;
        v91[1] = v71;
        v72 = v23[4];
        v91[2] = v23[3];
        v91[3] = v72;
        v73 = v127;
        v23[9] = v126;
        v23[10] = v73;
        v23[11] = v128[0];
        *(v23 + 185) = *(v128 + 9);
        v74 = v123;
        v23[5] = v122;
        v23[6] = v74;
        v75 = v125;
        v23[7] = v124;
        v23[8] = v75;
        v76 = v119;
        *v24 = v118;
        v23[2] = v76;
        v77 = v121;
        v23[3] = v120;
        v23[4] = v77;
        sub_100025F40(v91, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
        swift_beginAccess();
        v54 = v23[10];
        v114 = v23[9];
        v115 = v54;
        v116[0] = v23[11];
        *(v116 + 9) = *(v23 + 185);
        v55 = v23[6];
        v110 = v23[5];
        v111 = v55;
        v56 = v23[8];
        v112 = v23[7];
        v113 = v56;
        v57 = v23[2];
        v106 = *v24;
        v107 = v57;
        v58 = v23[4];
        v108 = v23[3];
        v109 = v58;
        v59 = v127;
        v23[9] = v126;
        v23[10] = v59;
        v23[11] = v128[0];
        *(v23 + 185) = *(v128 + 9);
        v60 = v123;
        v23[5] = v122;
        v23[6] = v60;
        v61 = v125;
        v23[7] = v124;
        v23[8] = v61;
        v62 = v119;
        *v24 = v118;
        v23[2] = v62;
        v63 = v121;
        v23[3] = v120;
        v23[4] = v63;
        sub_100025F40(&v106, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_21;
  }

  v33 = v84;
  v34 = a4;
  sub_100286984(a1, v17, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v17;
    v41 = v17[1];

    v42 = v135;
    sub_100290568(v40, v41, v33, a3, v34, v18, v83);
    sub_100014D40(v40, v41);
    if (v42)
    {
    }

    goto LABEL_21;
  }

  v35 = v79;
  v36 = v80;
  v37 = v81;
  v38 = (*(v80 + 4))(v79, v17, v81);
  __chkstk_darwin(v38);
  *(&v79 - 4) = v35;
  *(&v79 - 3) = sub_1002955F4;
  *(&v79 - 2) = v85;
  v39 = v135;
  sub_1004A5314();
  if (!v39)
  {
    (*(v36 + 8))(v35, v37);
LABEL_21:
  }

  (*(v36 + 8))(v35, v37);
}

uint64_t sub_10028CC04@<X0>(uint64_t a1@<X0>, char a2@<W1>, int64_t a3@<X2>, void *a4@<X3>, void (*a5)(__int128 *)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v84 = a7;
  v13 = sub_1004A5384();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin(v13);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v15);
  v17 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a2 & 1;
  v89[16] = v18;
  v86 = a6;
  v87 = a3;
  v90 = a3;
  v91 = a4;
  v85 = a5;
  v92 = a5;
  v93 = a6;
  v88[2] = sub_1002953FC;
  v88[3] = v89;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v20 = sub_100297350(0, 0, 0, 0);
    v21 = sub_1002975B0(_swiftEmptyArrayStorage, v20);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      *&v117 = sub_100257570(_swiftEmptyArrayStorage);
      sub_100297A70(v23, v24, v18, &v117, v20);

      v25 = v117;
    }

    else
    {

      v25 = sub_100257570(_swiftEmptyArrayStorage);
    }

    v35 = v85;
    v34 = v86;
    v36 = swift_allocObject();
    v84 = &v80;
    *(v36 + 16) = v25;
    __chkstk_darwin(v36);
    *(&v80 - 4) = v87;
    *(&v80 - 3) = a4;
    *(&v80 - 2) = v35;
    *(&v80 - 1) = v34;
    v37 = swift_allocObject();
    v38 = v37 + 1;
    sub_100276450(&v117);
    v39 = v126;
    v37[9] = v125;
    v37[10] = v39;
    v37[11] = v127[0];
    *(v37 + 185) = *(v127 + 9);
    v40 = v122;
    v37[5] = v121;
    v37[6] = v40;
    v41 = v124;
    v37[7] = v123;
    v37[8] = v41;
    v42 = v118;
    v37[1] = v117;
    v37[2] = v42;
    v43 = v120;
    v37[3] = v119;
    v37[4] = v43;
    v44 = swift_allocObject();
    v83 = &v80;
    *(v44 + 16) = 2;
    __chkstk_darwin(v44);
    *(&v80 - 4) = v37;
    *(&v80 - 3) = v45;
    *(&v80 - 2) = sub_1002798A4;
    *(&v80 - 1) = (&v80 - 6);
    __chkstk_darwin(v45);
    *(&v80 - 4) = (v37 + 1);
    *(&v80 - 3) = UInt32.init(_:);
    *(&v80 - 2) = 0;
    v140 = _swiftEmptyArrayStorage;
    v141 = 3;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v46 = v145;
    sub_100295F74(sub_100277324, v47, sub_100277344, (&v80 - 6), sub_10027989C, v36);
    if (v46)
    {
    }

    else
    {
      swift_beginAccess();
      if (*(v44 + 16) == 2 && (swift_beginAccess(), v48 = v37[10], v49 = v37[8], v103 = v37[9], v104 = v48, v50 = v37[10], v105[0] = v37[11], *(v105 + 9) = *(v37 + 185), v51 = v37[6], v52 = v37[4], v99 = v37[5], v100 = v51, v53 = v37[6], v54 = v37[8], v101 = v37[7], v102 = v54, v55 = v37[2], v96[0] = *v38, v96[1] = v55, v56 = v37[4], v58 = *v38, v57 = v37[2], v97 = v37[3], v98 = v56, v114 = v103, v115 = v50, v116[0] = v37[11], *(v116 + 9) = *(v37 + 185), v110 = v99, v111 = v53, v112 = v101, v113 = v49, v106 = v58, v107 = v57, v108 = v97, v109 = v52, sub_100021348(&v106) != 1))
      {
        v145 = v36;
        v138[8] = v114;
        v138[9] = v115;
        v139[0] = v116[0];
        *(v139 + 9) = *(v116 + 9);
        v138[4] = v110;
        v138[5] = v111;
        v138[6] = v112;
        v138[7] = v113;
        v138[0] = v106;
        v138[1] = v107;
        v138[2] = v108;
        v138[3] = v109;
        sub_1002954C0(v96, v94);

        sub_1002954C0(v96, v94);
        sub_1002788DC(v138, v87, a4, v128);
        v133 = v128[4];
        v134 = v128[5];
        v135 = v128[6];
        v136 = v128[7];
        v129 = v128[0];
        v130 = v128[1];
        v131 = v128[2];
        v132 = v128[3];
        if (sub_10027971C(&v129) != 1)
        {
          v137[4] = v133;
          v137[5] = v134;
          v137[6] = v135;
          v137[7] = v136;
          v137[0] = v129;
          v137[1] = v130;
          v137[2] = v131;
          v137[3] = v132;
          v85(v137);
          sub_100025F40(v128, &qword_1005D6610, &unk_1004EC260);
        }

        sub_100025F40(v96, &qword_1005D65E0, &unk_1004EB070);
        *(v44 + 16) = 2;
        v69 = v37[10];
        v94[8] = v37[9];
        v94[9] = v69;
        v95[0] = v37[11];
        *(v95 + 9) = *(v37 + 185);
        v70 = v37[6];
        v94[4] = v37[5];
        v94[5] = v70;
        v71 = v37[8];
        v94[6] = v37[7];
        v94[7] = v71;
        v72 = v37[2];
        v94[0] = *v38;
        v94[1] = v72;
        v73 = v37[4];
        v94[2] = v37[3];
        v94[3] = v73;
        v74 = v126;
        v37[9] = v125;
        v37[10] = v74;
        v37[11] = v127[0];
        *(v37 + 185) = *(v127 + 9);
        v75 = v122;
        v37[5] = v121;
        v37[6] = v75;
        v76 = v124;
        v37[7] = v123;
        v37[8] = v76;
        v77 = v118;
        *v38 = v117;
        v37[2] = v77;
        v78 = v120;
        v37[3] = v119;
        v37[4] = v78;
        sub_100025F40(v94, &qword_1005D65E0, &unk_1004EB070);
      }

      else
      {
        swift_beginAccess();
        v59 = v37[10];
        v114 = v37[9];
        v115 = v59;
        v116[0] = v37[11];
        *(v116 + 9) = *(v37 + 185);
        v60 = v37[6];
        v110 = v37[5];
        v111 = v60;
        v61 = v37[8];
        v112 = v37[7];
        v113 = v61;
        v62 = v37[2];
        v106 = *v38;
        v107 = v62;
        v63 = v37[4];
        v108 = v37[3];
        v109 = v63;
        v64 = v126;
        v37[9] = v125;
        v37[10] = v64;
        v37[11] = v127[0];
        *(v37 + 185) = *(v127 + 9);
        v65 = v122;
        v37[5] = v121;
        v37[6] = v65;
        v66 = v124;
        v37[7] = v123;
        v37[8] = v66;
        v67 = v118;
        *v38 = v117;
        v37[2] = v67;
        v68 = v120;
        v37[3] = v119;
        v37[4] = v68;
        sub_100025F40(&v106, &qword_1005D65E0, &unk_1004EB070);
      }
    }

    goto LABEL_20;
  }

  sub_100286984(a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = *v17;
    v32 = v17[1];

    v33 = v145;
    sub_100291C70(v31, v32, v18, v87, a4, v85, v86);
    sub_100014D40(v31, v32);
    if (v33)
    {
    }

    goto LABEL_20;
  }

  v26 = v81;
  v27 = v82;
  v28 = v83;
  v29 = (*(v82 + 32))(v81, v17, v83);
  __chkstk_darwin(v29);
  *(&v80 - 4) = v26;
  *(&v80 - 3) = sub_1002955F4;
  *(&v80 - 2) = v88;
  v30 = v145;
  sub_1004A5314();
  if (!v30)
  {
    (*(v27 + 8))(v26, v28);
LABEL_20:
  }

  (*(v27 + 8))(v26, v28);
}

uint64_t sub_10028D4F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v50 = a7;
  v49 = a8;
  v14 = sub_1004A5384();
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v16);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = a2;
  v54[16] = a2;
  v52 = a3;
  v55 = a3;
  v56 = a4;
  v19 = a5;
  v86 = a4;
  v20 = a6;
  v21 = v50;
  v57 = a5;
  v58 = v20;
  v59 = v50;
  v53[2] = sub_10029538C;
  v53[3] = v54;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v23 = v51;
    sub_10027B720(3u, 0, 0, 0, 0, v21, &v61);
    if (!v23)
    {
      v24 = v68;
      *&v70 = v61;
      BYTE8(v70) = v62;
      v71 = v63;
      v72 = v64;
      *&v73 = v65;
      WORD4(v73) = v66;
      v74 = v67;
      sub_10027A644();
      v84[2] = v72;
      v84[3] = v73;
      v85 = v74;
      v84[0] = v70;
      v84[1] = v71;
      sub_100279E40(3u, v48, v19, v20);
      sub_10027B6BC(v84);
      v31 = v24[2];
      if (v31)
      {
        v51 = 0;
        v32 = v31 - 1;
        v49 = v24;
        for (i = v24 + 7; ; i += 11)
        {
          v34 = *(i - 2);
          v35 = *(i - 1);
          v36 = *i;
          v37 = i[1];
          v38 = i[2];
          v39 = i[3];
          v40 = i[4];
          v41 = i[6];
          v42 = i[7];
          v43 = *(i + 40);
          v75[0] = *(i - 3);
          v75[1] = v34;
          v75[2] = v35;
          v76 = v36;
          v77 = v37;
          v78 = v38;
          v79 = v39;
          v80 = v40;
          v81 = v43;
          v82 = v41;
          v83 = v42;
          v61 = v75[0];
          v62 = v34;
          *&v63 = v35;
          BYTE8(v63) = v36;
          *&v64 = v37;
          *(&v64 + 1) = v38;
          v65 = v39;
          v66 = v40;
          LOBYTE(v67) = v43;
          v68 = v41;
          v69 = v42;

          sub_10027C1E4(v37, v38, v39, v40, v43);
          sub_100279DB4(v75, &v60);
          sub_100279DEC(&v61);
          v52(v75);
          sub_100279DEC(v75);
          if (!v32)
          {
            break;
          }

          --v32;
        }
      }
    }
  }

  else
  {
    sub_100286984(a1, v18, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v45;
      v26 = v46;
      v27 = v47;
      v28 = (*(v46 + 32))(v45, v18, v47);
      __chkstk_darwin(v28);
      *(&v45 - 4) = v25;
      *(&v45 - 3) = sub_1002953C0;
      *(&v45 - 2) = v53;
      sub_1004A5314();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v29 = *v18;
      v30 = v18[1];

      sub_100293848(v29, v30, v48, v52, v86, v19, v20, v21);
      sub_100014D40(v29, v30);
    }
  }
}

uint64_t sub_10028D97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1004A5384();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a2;
  v25 = a3;
  v21 = sub_100295370;
  v22 = &v23;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1002808F8(0, 0, 0, 0, a2, a3, a4);
  }

  else
  {
    sub_100286984(a1, v13, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = v26;
      v16 = (*(v26 + 32))(v10, v13, v8);
      __chkstk_darwin(v16);
      *&v20[-32] = v10;
      *&v20[-24] = sub_10028EE34;
      *&v20[-16] = v20;
      sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
      sub_1004A5314();
      (*(v15 + 8))(v10, v8);
    }

    else
    {
      v17 = *v13;
      v18 = v13[1];

      sub_100294170(v17, v18, a2, a3, a4);
      sub_100014D40(v17, v18);
    }
  }
}

uint64_t sub_10028DC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10028EE18;
  v21 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1002ACE34(0, 0, 0, 0, a2, a3);
LABEL_3:
  }

  sub_100286984(a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = (*(v8 + 32))(v10, v13, v7);
    __chkstk_darwin(v16);
    *&v19[-32] = v10;
    *&v19[-24] = sub_10028EE34;
    *&v19[-16] = v19;
    sub_10000C9C0(&qword_1005D69D0, &qword_1004EDA30);
    sub_1004A5314();
    if (!v3)
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_3;
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v17 = *v13;
    v18 = v13[1];

    sub_100294424(v17, v18, a2, a3);
    sub_100014D40(v17, v18);
    if (!v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028DF64(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Message.isEmpty.getter())
  {
    a1(&v21, 0, 0);
    if (!v3)
    {
      v14 = v21;
    }
  }

  else
  {
    sub_100286984(v2, v12, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = (*(v7 + 32))(v9, v12, v6);
      __chkstk_darwin(v15);
      *(&v20 - 4) = v9;
      *(&v20 - 3) = a1;
      *(&v20 - 2) = a2;
      sub_1004A5314();
      (*(v7 + 8))(v9, v6);
      if (!v3)
      {
        v14 = v21;
      }
    }

    else
    {
      v16 = *v12;
      v17 = v12[1];
      v18 = sub_10028ECC4(a1, a2, *v12, v17);
      sub_100014D40(v16, v17);
      if (!v3)
      {
        LOBYTE(v21) = v18 & 1;
        v14 = v18 & 1;
      }
    }
  }

  return v14 & 1;
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5384();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028E2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v40 = a4;
  v8 = sub_1004A5384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = a1;
  v44 = a2;
  result = Message.isEmpty.getter();
  if (result)
  {
    v17 = a1 == 0;
LABEL_56:
    *v40 = v17;
    return result;
  }

  sub_100286984(a3, v14, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = 0;
    v20 = *v14;
    v19 = v14[1];
    v21 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v28 = *(v20 + 16);
        v39 = *(v20 + 24);
        v29 = sub_1004A40D4();
        if (v29)
        {
          v30 = v29;
          v31 = sub_1004A4104();
          if (__OFSUB__(v28, v31))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v22 = v28 - v31 + v30;
        }

        else
        {
          v22 = 0;
        }

        v32 = v39 - v28;
        if (!__OFSUB__(v39, v28))
        {
          v33 = sub_1004A40F4();
          v34 = a2 - a1;
          if (!a1)
          {
            v34 = 0;
          }

          if (!v22)
          {
            goto LABEL_46;
          }

          v17 = 0;
          if (v33 >= v32)
          {
            v35 = v32;
          }

          else
          {
            v35 = v33;
          }

          if (a1 && v34 == v35)
          {
            goto LABEL_48;
          }

          goto LABEL_54;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (v21)
    {
      v22 = (v20 >> 32) - v20;
      if (v20 >> 32 >= v20)
      {
        v23 = sub_1004A40D4();
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = sub_1004A4104();
        if (!__OFSUB__(v20, v24))
        {
          v23 += v20 - v24;
LABEL_12:
          v25 = sub_1004A40F4();
          v26 = a2 - a1;
          if (!a1)
          {
            v26 = 0;
          }

          if (v23)
          {
            v17 = 0;
            if (v25 >= v22)
            {
              v27 = (v20 >> 32) - v20;
            }

            else
            {
              v27 = v25;
            }

            if (!a1 || v26 != v27)
            {
LABEL_44:
              while (v4)
              {

                sub_100014D40(v20, v19);
                __break(1u);
LABEL_46:
                v17 = v34 == 0;
                if (a1 && !v34)
                {
LABEL_48:
                  if (v22)
                  {
                    v37 = v22 == a1;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v17 = v37;
                }

LABEL_54:
                ;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v17 = v26 == 0;
            if (!a1 || v26)
            {
              goto LABEL_44;
            }
          }

          if (v23)
          {
            v36 = v23 == a1;
          }

          else
          {
            v36 = 0;
          }

          v17 = v36;
          goto LABEL_44;
        }

LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    result = sub_100014D40(v20, v19);
    goto LABEL_56;
  }

  v18 = (*(v9 + 32))(v11, v14, v8);
  __chkstk_darwin(v18);
  *(&v38 - 4) = v11;
  *(&v38 - 3) = sub_1002952A4;
  *(&v38 - 2) = &v42;
  sub_1004A5314();
  if (!v4)
  {
    result = (*(v9 + 8))(v11, v8);
    v17 = v41;
    goto LABEL_56;
  }

  result = (*(v9 + 8))(v11, v8);
  __break(1u);
  return result;
}

BOOL Message.isEmpty.getter()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  v7 = __chkstk_darwin(v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100286984(v1, v9, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_1001B60F8();
    sub_1004A5E64();
    sub_1004A5EA4();
    (*(v3 + 8))(v5, v2);
    return v19[1] == v19[0];
  }

  else
  {
    v12 = *v9;
    v13 = v9[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        sub_100014D40(v12, v13);
        return v17 == v16;
      }

      else
      {
        sub_100014D40(v12, v13);
        return 1;
      }
    }

    else if (v14)
    {
      v18 = *v9;
      sub_100014D40(v12, v13);
      return v18 == v18 >> 32;
    }

    else
    {
      v15 = v9[1];
      sub_100014D40(v12, v13);
      return BYTE6(v15) == 0;
    }
  }
}

unint64_t Message.count.getter()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message.Data(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100286984(v1, v9, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v9, v2);
    v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v5, v2);
    return v10;
  }

  result = *v9;
  v12 = v9[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = v9[1];
      sub_100014D40(result, v12);
      return BYTE6(v14);
    }

    goto LABEL_11;
  }

  if (v13 != 2)
  {
    sub_100014D40(result, v12);
    return 0;
  }

  v16 = *(result + 16);
  v15 = *(result + 24);
  sub_100014D40(result, v12);
  result = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_11:
    v17 = HIDWORD(result);
    v18 = result;
    result = sub_100014D40(result, v12);
    if (__OFSUB__(v17, v18))
    {
      __break(1u);
    }

    else
    {
      return v17 - v18;
    }
  }

  return result;
}

uint64_t sub_10028EADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message.Data(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10028EB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message.Data(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10028EBEC(uint64_t a1)
{
  result = type metadata accessor for Message.Data(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028EC58(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10028ECC4(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1002945DC(v8, v9, a1);
    return v10 & 1;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  v10 = (a1)(&v12, v13, v7);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10028EE70(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v247 = a3;
  v14 = a2 >> 62;
  swift_retain_n();
  v248 = v7;
  v249 = a5;
  v245 = a7;
  v246 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v251, 0, 14);

      v244 = &v239;
      v250 = 0;
      __chkstk_darwin(v75);
      v233 = 0;
      v234 = a4;
      v235 = a5;
      v236 = &v250;
      v237 = a6;
      v238 = a7;
      v17 = swift_allocObject();
      sub_100276450(&v296);
      v76 = v305;
      v17[9] = v304;
      v17[10] = v76;
      v17[11] = v306[0];
      *(v17 + 185) = *(v306 + 9);
      v77 = v301;
      v17[5] = v300;
      v17[6] = v77;
      v78 = v303;
      v17[7] = v302;
      v17[8] = v78;
      v79 = v297;
      v17[1] = v296;
      v17[2] = v79;
      v80 = v299;
      v17[3] = v298;
      v17[4] = v80;
      v81 = swift_allocObject();
      v242 = v232;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      __chkstk_darwin(v81);
      v228 = v17;
      v229 = v83;
      v243 = v83;
      v230 = sub_100277394;
      v231 = v232;
      __chkstk_darwin(v83);
      v224 = v17 + 1;
      v225 = UInt32.init(_:);
      v226 = 0;
      swift_retain_n();
      v84 = v248;
      sub_100296AD8(v247, 0, 0, v251, v251);
      if (!v84)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v318 = _swiftEmptyArrayStorage;
        v319 = v85;
        v320 = v86;
        v321 = v87;
        v322 = v88;
        sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v109 = v17[10];
        v110 = v17[8];
        v282 = v17[9];
        v283 = v109;
        v111 = v17[10];
        v284[0] = v17[11];
        *(v284 + 9) = *(v17 + 185);
        v112 = v17[6];
        v113 = v17[4];
        v278 = v17[5];
        v279 = v112;
        v114 = v17[6];
        v115 = v17[8];
        v280 = v17[7];
        v281 = v115;
        v116 = v17[2];
        v274 = *v18;
        v275 = v116;
        v117 = v17[4];
        v119 = *v18;
        v118 = v17[2];
        v276 = v17[3];
        v277 = v117;
        v293 = v282;
        v294 = v111;
        v295[0] = v17[11];
        *(v295 + 9) = *(v17 + 185);
        v289 = v278;
        v290 = v114;
        v291 = v280;
        v292 = v110;
        v285 = v119;
        v286 = v118;
        v287 = v276;
        v288 = v113;
        if (sub_100021348(&v285) == 1)
        {
          goto LABEL_49;
        }

        v315 = v293;
        v316 = v294;
        v317[0] = v295[0];
        *(v317 + 9) = *(v295 + 9);
        v311 = v289;
        v312 = v290;
        v313 = v291;
        v314 = v292;
        v307 = v285;
        v308 = v286;
        v309 = v287;
        v310 = v288;
        v271 = v282;
        v272 = v283;
        v273[0] = v284[0];
        *(v273 + 9) = *(v284 + 9);
        v267 = v278;
        v268 = v279;
        v269 = v280;
        v270 = v281;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        v266 = v277;
        sub_1002764DC(&v263, &v252);
        v176 = sub_1002770A0(0, v246, v249);
        if (v177)
        {
          v178 = (a6)(v176);

          v250 = v178 & 1;
        }

        else
        {
          v178 = v250;
        }

        sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
        v185 = v17[9];
        v197 = v17[11];
        v261 = v17[10];
        v262[0] = v197;
        *(v262 + 9) = *(v17 + 185);
        v198 = v17[6];
        v256 = v17[5];
        v257 = v198;
        v188 = v17[8];
        v258 = v17[7];
        if (v178)
        {
          v189 = 0;
        }

        else
        {
          v189 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v244 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v243 = &v239;
    swift_retain_n();
    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1004A4104();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1004A40F4();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v242 = &v239;
          v53 = &v51[v48];
          if (!v48)
          {
            v53 = 0;
          }

          v239 = v53;
          LOBYTE(v251[0]) = 0;
          __chkstk_darwin(v50);
          v233 = 0;
          v234 = v246;
          v235 = a5;
          v236 = v251;
          v237 = v244;
          v238 = v245;
          v54 = swift_allocObject();
          sub_100276450(&v296);
          v55 = v305;
          v54[9] = v304;
          v54[10] = v55;
          v54[11] = v306[0];
          *(v54 + 185) = *(v306 + 9);
          v56 = v301;
          v54[5] = v300;
          v54[6] = v56;
          v57 = v303;
          v54[7] = v302;
          v54[8] = v57;
          v58 = v297;
          v54[1] = v296;
          v54[2] = v58;
          v59 = v299;
          v54[3] = v298;
          v54[4] = v59;
          v60 = swift_allocObject();
          v240 = v232;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          __chkstk_darwin(v60);
          v228 = v54;
          v229 = v62;
          v241 = v62;
          v230 = sub_100277394;
          v231 = v232;
          __chkstk_darwin(v62);
          v224 = v54 + 1;
          v225 = UInt32.init(_:);
          v226 = 0;

          v63 = v248;
          sub_100296AD8(v247, 0, v52, v48, v239);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v246;
            v318 = _swiftEmptyArrayStorage;
            v319 = v64;
            v320 = v65;
            v321 = v66;
            v322 = v67;
            sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
            swift_beginAccess();
            if (*v61 == 2 && (swift_beginAccess(), v131 = v54[10], v132 = v54[8], v282 = v54[9], v283 = v131, v133 = v54[10], v284[0] = v54[11], *(v284 + 9) = *(v54 + 185), v134 = v54[6], v135 = v54[4], v278 = v54[5], v279 = v134, v136 = v54[6], v137 = v54[8], v280 = v54[7], v281 = v137, v138 = v54[2], v274 = *v68, v275 = v138, v139 = v54[4], v141 = *v68, v140 = v54[2], v276 = v54[3], v277 = v139, v293 = v282, v294 = v133, v295[0] = v54[11], *(v295 + 9) = *(v54 + 185), v289 = v278, v290 = v136, v291 = v280, v292 = v132, v285 = v141, v286 = v140, v287 = v276, v288 = v135, sub_100021348(&v285) != 1))
            {
              v315 = v293;
              v316 = v294;
              v317[0] = v295[0];
              *(v317 + 9) = *(v295 + 9);
              v311 = v289;
              v312 = v290;
              v313 = v291;
              v314 = v292;
              v307 = v285;
              v308 = v286;
              v309 = v287;
              v310 = v288;
              v271 = v282;
              v272 = v283;
              v273[0] = v284[0];
              *(v273 + 9) = *(v284 + 9);
              v267 = v278;
              v268 = v279;
              v269 = v280;
              v270 = v281;
              v263 = v274;
              v264 = v275;
              v265 = v276;
              v266 = v277;
              sub_1002764DC(&v263, &v252);
              v179 = sub_1002770A0(0, v69, v249);
              if (v180)
              {
                v181 = (v244)(v179);

                LOBYTE(v251[0]) = v181 & 1;
              }

              else
              {
                v181 = v251[0];
              }

              sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
              v199 = v54[9];
              v200 = v54[11];
              v261 = v54[10];
              v262[0] = v200;
              *(v262 + 9) = *(v54 + 185);
              v201 = v54[6];
              v256 = v54[5];
              v257 = v201;
              v202 = v54[8];
              v258 = v54[7];
              if (v181)
              {
                v203 = 0;
              }

              else
              {
                v203 = 2;
              }

              *(v241 + 16) = v203;
              v259 = v202;
              v260 = v199;
              v204 = v54[2];
              v252 = *v68;
              v253 = v204;
              v205 = v54[4];
              v254 = v54[3];
              v255 = v205;
              v206 = v305;
              v54[9] = v304;
              v54[10] = v206;
              v54[11] = v306[0];
              *(v54 + 185) = *(v306 + 9);
              v207 = v301;
              v54[5] = v300;
              v54[6] = v207;
              v208 = v303;
              v54[7] = v302;
              v54[8] = v208;
              v209 = v297;
              *v68 = v296;
              v54[2] = v209;
              v210 = v299;
              v54[3] = v298;
              v54[4] = v210;
              sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);
            }

            else
            {
              swift_beginAccess();
              v142 = v54[10];
              v315 = v54[9];
              v316 = v142;
              v317[0] = v54[11];
              *(v317 + 9) = *(v54 + 185);
              v143 = v54[6];
              v311 = v54[5];
              v312 = v143;
              v144 = v54[8];
              v313 = v54[7];
              v314 = v144;
              v145 = v54[2];
              v307 = *v68;
              v308 = v145;
              v146 = v54[4];
              v309 = v54[3];
              v310 = v146;
              v147 = v305;
              v54[9] = v304;
              v54[10] = v147;
              v54[11] = v306[0];
              *(v54 + 185) = *(v306 + 9);
              v148 = v301;
              v54[5] = v300;
              v54[6] = v148;
              v149 = v303;
              v54[7] = v302;
              v54[8] = v149;
              v150 = v297;
              *v68 = v296;
              v54[2] = v150;
              v151 = v299;
              v54[3] = v298;
              v54[4] = v151;
              sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v251[0] = a1;
    LOWORD(v251[1]) = a2;
    BYTE2(v251[1]) = BYTE2(a2);
    BYTE3(v251[1]) = BYTE3(a2);
    BYTE4(v251[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v251[1]) = BYTE5(a2);

    v244 = &v239;
    v250 = 0;
    __chkstk_darwin(v16);
    v233 = 0;
    v234 = a4;
    v235 = a5;
    v236 = &v250;
    v237 = a6;
    v238 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_100276450(&v296);
    v19 = v305;
    v17[9] = v304;
    v17[10] = v19;
    v17[11] = v306[0];
    *(v17 + 185) = *(v306 + 9);
    v20 = v301;
    v17[5] = v300;
    v17[6] = v20;
    v21 = v303;
    v17[7] = v302;
    v17[8] = v21;
    v22 = v297;
    v17[1] = v296;
    v17[2] = v22;
    v23 = v299;
    v17[3] = v298;
    v17[4] = v23;
    v24 = swift_allocObject();
    v242 = v232;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    __chkstk_darwin(v24);
    v228 = v17;
    v229 = v26;
    v243 = v26;
    v230 = sub_100277394;
    v231 = v232;
    __chkstk_darwin(v26);
    v224 = v17 + 1;
    v225 = UInt32.init(_:);
    v226 = 0;
    swift_retain_n();
    v27 = v248;
    sub_100296AD8(v247, 0, v15, v251, v251 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v318 = _swiftEmptyArrayStorage;
      v319 = v28;
      v320 = v29;
      v321 = v30;
      v322 = v31;
      sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
      swift_beginAccess();
      if (*v25 != 2 || (swift_beginAccess(), v33 = v17[10], v34 = v17[8], v282 = v17[9], v283 = v33, v35 = v17[10], v284[0] = v17[11], *(v284 + 9) = *(v17 + 185), v36 = v17[6], v37 = v17[4], v278 = v17[5], v279 = v36, v38 = v17[6], v39 = v17[8], v280 = v17[7], v281 = v39, v40 = v17[2], v274 = *v18, v275 = v40, v41 = v17[4], v43 = *v18, v42 = v17[2], v276 = v17[3], v277 = v41, v293 = v282, v294 = v35, v295[0] = v17[11], *(v295 + 9) = *(v17 + 185), v289 = v278, v290 = v38, v291 = v280, v292 = v34, v285 = v43, v286 = v42, v287 = v276, v288 = v37, sub_100021348(&v285) == 1))
      {
LABEL_49:
        swift_beginAccess();
        v120 = v17[10];
        v315 = v17[9];
        v316 = v120;
        v317[0] = v17[11];
        *(v317 + 9) = *(v17 + 185);
        v121 = v17[6];
        v311 = v17[5];
        v312 = v121;
        v122 = v17[8];
        v313 = v17[7];
        v314 = v122;
        v123 = v17[2];
        v307 = *v18;
        v308 = v123;
        v124 = v17[4];
        v309 = v17[3];
        v310 = v124;
        v125 = v305;
        v17[9] = v304;
        v17[10] = v125;
        v17[11] = v306[0];
        *(v17 + 185) = *(v306 + 9);
        v126 = v301;
        v17[5] = v300;
        v17[6] = v126;
        v127 = v303;
        v17[7] = v302;
        v17[8] = v127;
        v128 = v297;
        *v18 = v296;
        v17[2] = v128;
        v129 = v299;
        v17[3] = v298;
        v17[4] = v129;
        sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);

LABEL_50:
      }

      v315 = v293;
      v316 = v294;
      v317[0] = v295[0];
      *(v317 + 9) = *(v295 + 9);
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v314 = v292;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v310 = v288;
      v271 = v282;
      v272 = v283;
      v273[0] = v284[0];
      *(v273 + 9) = *(v284 + 9);
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v270 = v281;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      v266 = v277;
      sub_1002764DC(&v263, &v252);
      v173 = sub_1002770A0(0, v246, v249);
      if (v174)
      {
        v175 = (a6)(v173);

        v250 = v175 & 1;
      }

      else
      {
        v175 = v250;
      }

      sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
      v185 = v17[9];
      v186 = v17[11];
      v261 = v17[10];
      v262[0] = v186;
      *(v262 + 9) = *(v17 + 185);
      v187 = v17[6];
      v256 = v17[5];
      v257 = v187;
      v188 = v17[8];
      v258 = v17[7];
      if (v175)
      {
        v189 = 0;
      }

      else
      {
        v189 = 2;
      }

LABEL_70:
      *(v243 + 16) = v189;
      v259 = v188;
      v260 = v185;
      v190 = v32[1];
      v252 = *v32;
      v253 = v190;
      v191 = v32[3];
      v254 = v32[2];
      v255 = v191;
      v192 = v305;
      v32[8] = v304;
      v32[9] = v192;
      v32[10] = v306[0];
      *(v32 + 169) = *(v306 + 9);
      v193 = v301;
      v32[4] = v300;
      v32[5] = v193;
      v194 = v303;
      v32[6] = v302;
      v32[7] = v194;
      v195 = v297;
      *v32 = v296;
      v32[1] = v195;
      v196 = v299;
      v32[2] = v298;
      v32[3] = v196;
      sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);

      goto LABEL_50;
    }

LABEL_30:
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v243 = &v239;
  swift_retain_n();
  v71 = sub_1004A40D4();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1004A4104();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v89 = sub_1004A40F4();
  if (v89 >= v44)
  {
    v90 = v44;
  }

  else
  {
    v90 = v89;
  }

  if (v74)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  if (v91 < 0)
  {
    goto LABEL_89;
  }

  v242 = &v239;
  v92 = v90 + v74;
  if (!v74)
  {
    v92 = 0;
  }

  v239 = v92;
  LOBYTE(v251[0]) = 0;
  __chkstk_darwin(v89);
  v233 = 0;
  v234 = v246;
  v235 = a5;
  v236 = v251;
  v237 = a6;
  v238 = v245;
  v93 = swift_allocObject();
  v94 = v93 + 1;
  sub_100276450(&v296);
  v95 = v305;
  v93[9] = v304;
  v93[10] = v95;
  v93[11] = v306[0];
  *(v93 + 185) = *(v306 + 9);
  v96 = v301;
  v93[5] = v300;
  v93[6] = v96;
  v97 = v303;
  v93[7] = v302;
  v93[8] = v97;
  v98 = v297;
  v93[1] = v296;
  v93[2] = v98;
  v99 = v299;
  v93[3] = v298;
  v93[4] = v99;
  v100 = swift_allocObject();
  v240 = v232;
  v244 = a6;
  *(v100 + 16) = 2;
  v101 = (v100 + 16);
  __chkstk_darwin(v100);
  v228 = v93;
  v229 = v102;
  v241 = v102;
  v230 = sub_100277394;
  v231 = v232;
  __chkstk_darwin(v102);
  v224 = v93 + 1;
  v225 = UInt32.init(_:);
  v226 = 0;

  v103 = v248;
  sub_100296AD8(v247, 0, v91, v74, v239);
  if (!v103)
  {
    v108 = v244;
    v318 = _swiftEmptyArrayStorage;
    v319 = v104;
    v320 = v105;
    v321 = v106;
    v322 = v107;
    sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
    swift_beginAccess();
    if (*v101 == 2 && (swift_beginAccess(), v152 = v93[10], v153 = v93[8], v282 = v93[9], v283 = v152, v154 = v93[10], v284[0] = v93[11], *(v284 + 9) = *(v93 + 185), v155 = v93[6], v156 = v93[4], v278 = v93[5], v279 = v155, v157 = v93[6], v158 = v93[8], v280 = v93[7], v281 = v158, v159 = v93[2], v274 = *v94, v275 = v159, v160 = v93[4], v162 = *v94, v161 = v93[2], v276 = v93[3], v277 = v160, v293 = v282, v294 = v154, v295[0] = v93[11], *(v295 + 9) = *(v93 + 185), v289 = v278, v290 = v157, v291 = v280, v292 = v153, v285 = v162, v286 = v161, v287 = v276, v288 = v156, sub_100021348(&v285) != 1))
    {
      v315 = v293;
      v316 = v294;
      v317[0] = v295[0];
      *(v317 + 9) = *(v295 + 9);
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v314 = v292;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v310 = v288;
      v271 = v282;
      v272 = v283;
      v273[0] = v284[0];
      *(v273 + 9) = *(v284 + 9);
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v270 = v281;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      v266 = v277;
      sub_1002764DC(&v263, &v252);
      v182 = sub_1002770A0(0, v246, v249);
      if (v183)
      {
        v184 = (v108)(v182);

        LOBYTE(v251[0]) = v184 & 1;
      }

      else
      {
        v184 = v251[0];
      }

      sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
      v211 = v93[9];
      v212 = v93[11];
      v261 = v93[10];
      v262[0] = v212;
      *(v262 + 9) = *(v93 + 185);
      v213 = v93[6];
      v256 = v93[5];
      v257 = v213;
      v214 = v93[8];
      v258 = v93[7];
      if (v184)
      {
        v215 = 0;
      }

      else
      {
        v215 = 2;
      }

      *(v241 + 16) = v215;
      v259 = v214;
      v260 = v211;
      v216 = v93[2];
      v252 = *v94;
      v253 = v216;
      v217 = v93[4];
      v254 = v93[3];
      v255 = v217;
      v218 = v305;
      v93[9] = v304;
      v93[10] = v218;
      v93[11] = v306[0];
      *(v93 + 185) = *(v306 + 9);
      v219 = v301;
      v93[5] = v300;
      v93[6] = v219;
      v220 = v303;
      v93[7] = v302;
      v93[8] = v220;
      v221 = v297;
      *v94 = v296;
      v93[2] = v221;
      v222 = v299;
      v93[3] = v298;
      v93[4] = v222;
      sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);
    }

    else
    {
      swift_beginAccess();
      v163 = v93[10];
      v315 = v93[9];
      v316 = v163;
      v317[0] = v93[11];
      *(v317 + 9) = *(v93 + 185);
      v164 = v93[6];
      v311 = v93[5];
      v312 = v164;
      v165 = v93[8];
      v313 = v93[7];
      v314 = v165;
      v166 = v93[2];
      v307 = *v94;
      v308 = v166;
      v167 = v93[4];
      v309 = v93[3];
      v310 = v167;
      v168 = v305;
      v93[9] = v304;
      v93[10] = v168;
      v93[11] = v306[0];
      *(v93 + 185) = *(v306 + 9);
      v169 = v301;
      v93[5] = v300;
      v93[6] = v169;
      v170 = v303;
      v93[7] = v302;
      v93[8] = v170;
      v171 = v297;
      *v94 = v296;
      v93[2] = v171;
      v172 = v299;
      v93[3] = v298;
      v93[4] = v172;
      sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:
}

uint64_t sub_100290568(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v247 = a3;
  v14 = a2 >> 62;
  swift_retain_n();
  v248 = v7;
  v249 = a5;
  v245 = a7;
  v246 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v251, 0, 14);

      v244 = &v239;
      v250 = 0;
      __chkstk_darwin(v75);
      v233 = 1;
      v234 = a4;
      v235 = a5;
      v236 = &v250;
      v237 = a6;
      v238 = a7;
      v17 = swift_allocObject();
      sub_100276450(&v296);
      v76 = v305;
      v17[9] = v304;
      v17[10] = v76;
      v17[11] = v306[0];
      *(v17 + 185) = *(v306 + 9);
      v77 = v301;
      v17[5] = v300;
      v17[6] = v77;
      v78 = v303;
      v17[7] = v302;
      v17[8] = v78;
      v79 = v297;
      v17[1] = v296;
      v17[2] = v79;
      v80 = v299;
      v17[3] = v298;
      v17[4] = v80;
      v81 = swift_allocObject();
      v242 = v232;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      __chkstk_darwin(v81);
      v228 = v17;
      v229 = v83;
      v243 = v83;
      v230 = sub_100277394;
      v231 = v232;
      __chkstk_darwin(v83);
      v224 = v17 + 1;
      v225 = UInt32.init(_:);
      v226 = 0;
      swift_retain_n();
      v84 = v248;
      sub_100296AD8(v247, 0, 0, v251, v251);
      if (!v84)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v318 = _swiftEmptyArrayStorage;
        v319 = v85;
        v320 = v86;
        v321 = v87;
        v322 = v88;
        sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v109 = v17[10];
        v110 = v17[8];
        v282 = v17[9];
        v283 = v109;
        v111 = v17[10];
        v284[0] = v17[11];
        *(v284 + 9) = *(v17 + 185);
        v112 = v17[6];
        v113 = v17[4];
        v278 = v17[5];
        v279 = v112;
        v114 = v17[6];
        v115 = v17[8];
        v280 = v17[7];
        v281 = v115;
        v116 = v17[2];
        v274 = *v18;
        v275 = v116;
        v117 = v17[4];
        v119 = *v18;
        v118 = v17[2];
        v276 = v17[3];
        v277 = v117;
        v293 = v282;
        v294 = v111;
        v295[0] = v17[11];
        *(v295 + 9) = *(v17 + 185);
        v289 = v278;
        v290 = v114;
        v291 = v280;
        v292 = v110;
        v285 = v119;
        v286 = v118;
        v287 = v276;
        v288 = v113;
        if (sub_100021348(&v285) == 1)
        {
          goto LABEL_49;
        }

        v315 = v293;
        v316 = v294;
        v317[0] = v295[0];
        *(v317 + 9) = *(v295 + 9);
        v311 = v289;
        v312 = v290;
        v313 = v291;
        v314 = v292;
        v307 = v285;
        v308 = v286;
        v309 = v287;
        v310 = v288;
        v271 = v282;
        v272 = v283;
        v273[0] = v284[0];
        *(v273 + 9) = *(v284 + 9);
        v267 = v278;
        v268 = v279;
        v269 = v280;
        v270 = v281;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        v266 = v277;
        sub_1002764DC(&v263, &v252);
        v176 = sub_1002770A0(1, v246, v249);
        if (v177)
        {
          v178 = (a6)(v176);

          v250 = v178 & 1;
        }

        else
        {
          v178 = v250;
        }

        sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
        v185 = v17[9];
        v197 = v17[11];
        v261 = v17[10];
        v262[0] = v197;
        *(v262 + 9) = *(v17 + 185);
        v198 = v17[6];
        v256 = v17[5];
        v257 = v198;
        v188 = v17[8];
        v258 = v17[7];
        if (v178)
        {
          v189 = 0;
        }

        else
        {
          v189 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v244 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v243 = &v239;
    swift_retain_n();
    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1004A4104();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1004A40F4();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v242 = &v239;
          v53 = &v51[v48];
          if (!v48)
          {
            v53 = 0;
          }

          v239 = v53;
          LOBYTE(v251[0]) = 0;
          __chkstk_darwin(v50);
          v233 = 1;
          v234 = v246;
          v235 = a5;
          v236 = v251;
          v237 = v244;
          v238 = v245;
          v54 = swift_allocObject();
          sub_100276450(&v296);
          v55 = v305;
          v54[9] = v304;
          v54[10] = v55;
          v54[11] = v306[0];
          *(v54 + 185) = *(v306 + 9);
          v56 = v301;
          v54[5] = v300;
          v54[6] = v56;
          v57 = v303;
          v54[7] = v302;
          v54[8] = v57;
          v58 = v297;
          v54[1] = v296;
          v54[2] = v58;
          v59 = v299;
          v54[3] = v298;
          v54[4] = v59;
          v60 = swift_allocObject();
          v240 = v232;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          __chkstk_darwin(v60);
          v228 = v54;
          v229 = v62;
          v241 = v62;
          v230 = sub_100277394;
          v231 = v232;
          __chkstk_darwin(v62);
          v224 = v54 + 1;
          v225 = UInt32.init(_:);
          v226 = 0;

          v63 = v248;
          sub_100296AD8(v247, 0, v52, v48, v239);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v246;
            v318 = _swiftEmptyArrayStorage;
            v319 = v64;
            v320 = v65;
            v321 = v66;
            v322 = v67;
            sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
            swift_beginAccess();
            if (*v61 == 2 && (swift_beginAccess(), v131 = v54[10], v132 = v54[8], v282 = v54[9], v283 = v131, v133 = v54[10], v284[0] = v54[11], *(v284 + 9) = *(v54 + 185), v134 = v54[6], v135 = v54[4], v278 = v54[5], v279 = v134, v136 = v54[6], v137 = v54[8], v280 = v54[7], v281 = v137, v138 = v54[2], v274 = *v68, v275 = v138, v139 = v54[4], v141 = *v68, v140 = v54[2], v276 = v54[3], v277 = v139, v293 = v282, v294 = v133, v295[0] = v54[11], *(v295 + 9) = *(v54 + 185), v289 = v278, v290 = v136, v291 = v280, v292 = v132, v285 = v141, v286 = v140, v287 = v276, v288 = v135, sub_100021348(&v285) != 1))
            {
              v315 = v293;
              v316 = v294;
              v317[0] = v295[0];
              *(v317 + 9) = *(v295 + 9);
              v311 = v289;
              v312 = v290;
              v313 = v291;
              v314 = v292;
              v307 = v285;
              v308 = v286;
              v309 = v287;
              v310 = v288;
              v271 = v282;
              v272 = v283;
              v273[0] = v284[0];
              *(v273 + 9) = *(v284 + 9);
              v267 = v278;
              v268 = v279;
              v269 = v280;
              v270 = v281;
              v263 = v274;
              v264 = v275;
              v265 = v276;
              v266 = v277;
              sub_1002764DC(&v263, &v252);
              v179 = sub_1002770A0(1, v69, v249);
              if (v180)
              {
                v181 = (v244)(v179);

                LOBYTE(v251[0]) = v181 & 1;
              }

              else
              {
                v181 = v251[0];
              }

              sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
              v199 = v54[9];
              v200 = v54[11];
              v261 = v54[10];
              v262[0] = v200;
              *(v262 + 9) = *(v54 + 185);
              v201 = v54[6];
              v256 = v54[5];
              v257 = v201;
              v202 = v54[8];
              v258 = v54[7];
              if (v181)
              {
                v203 = 0;
              }

              else
              {
                v203 = 2;
              }

              *(v241 + 16) = v203;
              v259 = v202;
              v260 = v199;
              v204 = v54[2];
              v252 = *v68;
              v253 = v204;
              v205 = v54[4];
              v254 = v54[3];
              v255 = v205;
              v206 = v305;
              v54[9] = v304;
              v54[10] = v206;
              v54[11] = v306[0];
              *(v54 + 185) = *(v306 + 9);
              v207 = v301;
              v54[5] = v300;
              v54[6] = v207;
              v208 = v303;
              v54[7] = v302;
              v54[8] = v208;
              v209 = v297;
              *v68 = v296;
              v54[2] = v209;
              v210 = v299;
              v54[3] = v298;
              v54[4] = v210;
              sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);
            }

            else
            {
              swift_beginAccess();
              v142 = v54[10];
              v315 = v54[9];
              v316 = v142;
              v317[0] = v54[11];
              *(v317 + 9) = *(v54 + 185);
              v143 = v54[6];
              v311 = v54[5];
              v312 = v143;
              v144 = v54[8];
              v313 = v54[7];
              v314 = v144;
              v145 = v54[2];
              v307 = *v68;
              v308 = v145;
              v146 = v54[4];
              v309 = v54[3];
              v310 = v146;
              v147 = v305;
              v54[9] = v304;
              v54[10] = v147;
              v54[11] = v306[0];
              *(v54 + 185) = *(v306 + 9);
              v148 = v301;
              v54[5] = v300;
              v54[6] = v148;
              v149 = v303;
              v54[7] = v302;
              v54[8] = v149;
              v150 = v297;
              *v68 = v296;
              v54[2] = v150;
              v151 = v299;
              v54[3] = v298;
              v54[4] = v151;
              sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v251[0] = a1;
    LOWORD(v251[1]) = a2;
    BYTE2(v251[1]) = BYTE2(a2);
    BYTE3(v251[1]) = BYTE3(a2);
    BYTE4(v251[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v251[1]) = BYTE5(a2);

    v244 = &v239;
    v250 = 0;
    __chkstk_darwin(v16);
    v233 = 1;
    v234 = a4;
    v235 = a5;
    v236 = &v250;
    v237 = a6;
    v238 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_100276450(&v296);
    v19 = v305;
    v17[9] = v304;
    v17[10] = v19;
    v17[11] = v306[0];
    *(v17 + 185) = *(v306 + 9);
    v20 = v301;
    v17[5] = v300;
    v17[6] = v20;
    v21 = v303;
    v17[7] = v302;
    v17[8] = v21;
    v22 = v297;
    v17[1] = v296;
    v17[2] = v22;
    v23 = v299;
    v17[3] = v298;
    v17[4] = v23;
    v24 = swift_allocObject();
    v242 = v232;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    __chkstk_darwin(v24);
    v228 = v17;
    v229 = v26;
    v243 = v26;
    v230 = sub_100277394;
    v231 = v232;
    __chkstk_darwin(v26);
    v224 = v17 + 1;
    v225 = UInt32.init(_:);
    v226 = 0;
    swift_retain_n();
    v27 = v248;
    sub_100296AD8(v247, 0, v15, v251, v251 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v318 = _swiftEmptyArrayStorage;
      v319 = v28;
      v320 = v29;
      v321 = v30;
      v322 = v31;
      sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
      swift_beginAccess();
      if (*v25 != 2 || (swift_beginAccess(), v33 = v17[10], v34 = v17[8], v282 = v17[9], v283 = v33, v35 = v17[10], v284[0] = v17[11], *(v284 + 9) = *(v17 + 185), v36 = v17[6], v37 = v17[4], v278 = v17[5], v279 = v36, v38 = v17[6], v39 = v17[8], v280 = v17[7], v281 = v39, v40 = v17[2], v274 = *v18, v275 = v40, v41 = v17[4], v43 = *v18, v42 = v17[2], v276 = v17[3], v277 = v41, v293 = v282, v294 = v35, v295[0] = v17[11], *(v295 + 9) = *(v17 + 185), v289 = v278, v290 = v38, v291 = v280, v292 = v34, v285 = v43, v286 = v42, v287 = v276, v288 = v37, sub_100021348(&v285) == 1))
      {
LABEL_49:
        swift_beginAccess();
        v120 = v17[10];
        v315 = v17[9];
        v316 = v120;
        v317[0] = v17[11];
        *(v317 + 9) = *(v17 + 185);
        v121 = v17[6];
        v311 = v17[5];
        v312 = v121;
        v122 = v17[8];
        v313 = v17[7];
        v314 = v122;
        v123 = v17[2];
        v307 = *v18;
        v308 = v123;
        v124 = v17[4];
        v309 = v17[3];
        v310 = v124;
        v125 = v305;
        v17[9] = v304;
        v17[10] = v125;
        v17[11] = v306[0];
        *(v17 + 185) = *(v306 + 9);
        v126 = v301;
        v17[5] = v300;
        v17[6] = v126;
        v127 = v303;
        v17[7] = v302;
        v17[8] = v127;
        v128 = v297;
        *v18 = v296;
        v17[2] = v128;
        v129 = v299;
        v17[3] = v298;
        v17[4] = v129;
        sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);

LABEL_50:
      }

      v315 = v293;
      v316 = v294;
      v317[0] = v295[0];
      *(v317 + 9) = *(v295 + 9);
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v314 = v292;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v310 = v288;
      v271 = v282;
      v272 = v283;
      v273[0] = v284[0];
      *(v273 + 9) = *(v284 + 9);
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v270 = v281;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      v266 = v277;
      sub_1002764DC(&v263, &v252);
      v173 = sub_1002770A0(1, v246, v249);
      if (v174)
      {
        v175 = (a6)(v173);

        v250 = v175 & 1;
      }

      else
      {
        v175 = v250;
      }

      sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
      v185 = v17[9];
      v186 = v17[11];
      v261 = v17[10];
      v262[0] = v186;
      *(v262 + 9) = *(v17 + 185);
      v187 = v17[6];
      v256 = v17[5];
      v257 = v187;
      v188 = v17[8];
      v258 = v17[7];
      if (v175)
      {
        v189 = 0;
      }

      else
      {
        v189 = 2;
      }

LABEL_70:
      *(v243 + 16) = v189;
      v259 = v188;
      v260 = v185;
      v190 = v32[1];
      v252 = *v32;
      v253 = v190;
      v191 = v32[3];
      v254 = v32[2];
      v255 = v191;
      v192 = v305;
      v32[8] = v304;
      v32[9] = v192;
      v32[10] = v306[0];
      *(v32 + 169) = *(v306 + 9);
      v193 = v301;
      v32[4] = v300;
      v32[5] = v193;
      v194 = v303;
      v32[6] = v302;
      v32[7] = v194;
      v195 = v297;
      *v32 = v296;
      v32[1] = v195;
      v196 = v299;
      v32[2] = v298;
      v32[3] = v196;
      sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);

      goto LABEL_50;
    }

LABEL_30:
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v243 = &v239;
  swift_retain_n();
  v71 = sub_1004A40D4();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1004A4104();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v89 = sub_1004A40F4();
  if (v89 >= v44)
  {
    v90 = v44;
  }

  else
  {
    v90 = v89;
  }

  if (v74)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  if (v91 < 0)
  {
    goto LABEL_89;
  }

  v242 = &v239;
  v92 = v90 + v74;
  if (!v74)
  {
    v92 = 0;
  }

  v239 = v92;
  LOBYTE(v251[0]) = 0;
  __chkstk_darwin(v89);
  v233 = 1;
  v234 = v246;
  v235 = a5;
  v236 = v251;
  v237 = a6;
  v238 = v245;
  v93 = swift_allocObject();
  v94 = v93 + 1;
  sub_100276450(&v296);
  v95 = v305;
  v93[9] = v304;
  v93[10] = v95;
  v93[11] = v306[0];
  *(v93 + 185) = *(v306 + 9);
  v96 = v301;
  v93[5] = v300;
  v93[6] = v96;
  v97 = v303;
  v93[7] = v302;
  v93[8] = v97;
  v98 = v297;
  v93[1] = v296;
  v93[2] = v98;
  v99 = v299;
  v93[3] = v298;
  v93[4] = v99;
  v100 = swift_allocObject();
  v240 = v232;
  v244 = a6;
  *(v100 + 16) = 2;
  v101 = (v100 + 16);
  __chkstk_darwin(v100);
  v228 = v93;
  v229 = v102;
  v241 = v102;
  v230 = sub_100277394;
  v231 = v232;
  __chkstk_darwin(v102);
  v224 = v93 + 1;
  v225 = UInt32.init(_:);
  v226 = 0;

  v103 = v248;
  sub_100296AD8(v247, 0, v91, v74, v239);
  if (!v103)
  {
    v108 = v244;
    v318 = _swiftEmptyArrayStorage;
    v319 = v104;
    v320 = v105;
    v321 = v106;
    v322 = v107;
    sub_100295F74(sub_100277378, v227, sub_100277390, v223, 0, 0);
    swift_beginAccess();
    if (*v101 == 2 && (swift_beginAccess(), v152 = v93[10], v153 = v93[8], v282 = v93[9], v283 = v152, v154 = v93[10], v284[0] = v93[11], *(v284 + 9) = *(v93 + 185), v155 = v93[6], v156 = v93[4], v278 = v93[5], v279 = v155, v157 = v93[6], v158 = v93[8], v280 = v93[7], v281 = v158, v159 = v93[2], v274 = *v94, v275 = v159, v160 = v93[4], v162 = *v94, v161 = v93[2], v276 = v93[3], v277 = v160, v293 = v282, v294 = v154, v295[0] = v93[11], *(v295 + 9) = *(v93 + 185), v289 = v278, v290 = v157, v291 = v280, v292 = v153, v285 = v162, v286 = v161, v287 = v276, v288 = v156, sub_100021348(&v285) != 1))
    {
      v315 = v293;
      v316 = v294;
      v317[0] = v295[0];
      *(v317 + 9) = *(v295 + 9);
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v314 = v292;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v310 = v288;
      v271 = v282;
      v272 = v283;
      v273[0] = v284[0];
      *(v273 + 9) = *(v284 + 9);
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v270 = v281;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      v266 = v277;
      sub_1002764DC(&v263, &v252);
      v182 = sub_1002770A0(1, v246, v249);
      if (v183)
      {
        v184 = (v108)(v182);

        LOBYTE(v251[0]) = v184 & 1;
      }

      else
      {
        v184 = v251[0];
      }

      sub_100025F40(&v274, &qword_1005D65E0, &unk_1004EB070);
      v211 = v93[9];
      v212 = v93[11];
      v261 = v93[10];
      v262[0] = v212;
      *(v262 + 9) = *(v93 + 185);
      v213 = v93[6];
      v256 = v93[5];
      v257 = v213;
      v214 = v93[8];
      v258 = v93[7];
      if (v184)
      {
        v215 = 0;
      }

      else
      {
        v215 = 2;
      }

      *(v241 + 16) = v215;
      v259 = v214;
      v260 = v211;
      v216 = v93[2];
      v252 = *v94;
      v253 = v216;
      v217 = v93[4];
      v254 = v93[3];
      v255 = v217;
      v218 = v305;
      v93[9] = v304;
      v93[10] = v218;
      v93[11] = v306[0];
      *(v93 + 185) = *(v306 + 9);
      v219 = v301;
      v93[5] = v300;
      v93[6] = v219;
      v220 = v303;
      v93[7] = v302;
      v93[8] = v220;
      v221 = v297;
      *v94 = v296;
      v93[2] = v221;
      v222 = v299;
      v93[3] = v298;
      v93[4] = v222;
      sub_100025F40(&v252, &qword_1005D65E0, &unk_1004EB070);
    }

    else
    {
      swift_beginAccess();
      v163 = v93[10];
      v315 = v93[9];
      v316 = v163;
      v317[0] = v93[11];
      *(v317 + 9) = *(v93 + 185);
      v164 = v93[6];
      v311 = v93[5];
      v312 = v164;
      v165 = v93[8];
      v313 = v93[7];
      v314 = v165;
      v166 = v93[2];
      v307 = *v94;
      v308 = v166;
      v167 = v93[4];
      v309 = v93[3];
      v310 = v167;
      v168 = v305;
      v93[9] = v304;
      v93[10] = v168;
      v93[11] = v306[0];
      *(v93 + 185) = *(v306 + 9);
      v169 = v301;
      v93[5] = v300;
      v93[6] = v169;
      v170 = v303;
      v93[7] = v302;
      v93[8] = v170;
      v171 = v297;
      *v94 = v296;
      v93[2] = v171;
      v172 = v299;
      v93[3] = v298;
      v93[4] = v172;
      sub_100025F40(&v307, &qword_1005D65E0, &unk_1004EB070);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:
}

uint64_t sub_100291C70(uint64_t a1, unint64_t a2, char a3, int64_t a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v256 = a4;
  v13 = &v291;
  v14 = a2 >> 62;
  swift_retain_n();
  v254 = a7;
  v255 = a5;
  if (v14 <= 1)
  {
    if (!v14)
    {
      v257[0] = a1;
      LOWORD(v257[1]) = a2;
      BYTE2(v257[1]) = BYTE2(a2);
      BYTE3(v257[1]) = BYTE3(a2);
      BYTE4(v257[1]) = BYTE4(a2);
      v15 = BYTE6(a2);
      BYTE5(v257[1]) = BYTE5(a2);
      swift_retain_n();
      v16 = sub_100297350(0, BYTE6(a2), v257, v257 + BYTE6(a2));
      v17 = sub_1002975B0(_swiftEmptyArrayStorage, v16);
      if (v17)
      {
        v19 = v17;
        v20 = v18;
        *&v326 = sub_100257570(_swiftEmptyArrayStorage);
        sub_100297A70(v19, v20, a3 & 1, &v326, v16);

        v21 = v326;
      }

      else
      {

        v21 = sub_100257570(_swiftEmptyArrayStorage);
      }

      v47 = swift_allocObject();
      v251 = v246;
      *(v47 + 16) = v21;
      __chkstk_darwin(v47);
      v242 = v256;
      v243 = a5;
      v244 = a6;
      v245 = v254;
      v48 = swift_allocObject();
      v49 = v48 + 1;
      sub_100276450(&v291);
      v50 = v300;
      v48[9] = v299;
      v48[10] = v50;
      v48[11] = v301[0];
      *(v48 + 185) = *(v301 + 9);
      v51 = v296;
      v48[5] = v295;
      v48[6] = v51;
      v52 = v298;
      v48[7] = v297;
      v48[8] = v52;
      v53 = v292;
      v48[1] = v291;
      v48[2] = v53;
      v54 = v294;
      v48[3] = v293;
      v48[4] = v54;
      v55 = swift_allocObject();
      v249 = v241;
      *(v55 + 16) = 2;
      v56 = (v55 + 16);
      __chkstk_darwin(v55);
      v237 = v48;
      v238 = v57;
      v250 = v57;
      v239 = sub_1002955DC;
      v240 = v241;
      __chkstk_darwin(v57);
      v233 = v48 + 1;
      v234 = UInt32.init(_:);
      v235 = 0;
      v58 = v253;
      sub_100296AD8(3, 0, v15, v257, v257 + v15);
      if (v58)
      {
        goto LABEL_38;
      }

      v252 = a6;
      v337 = _swiftEmptyArrayStorage;
      v338 = v59;
      v339 = v60;
      v340 = v61;
      v341 = v62;
      sub_100295F74(sub_100277378, v236, sub_100277390, v232, sub_100295664, v47);
      swift_beginAccess();
      if (*v56 != 2 || (swift_beginAccess(), v124 = v48[10], v125 = v48[8], v277 = v48[9], v278 = v124, v126 = v48[10], v279[0] = v48[11], *(v279 + 9) = *(v48 + 185), v127 = v48[6], v128 = v48[4], v273 = v48[5], v274 = v127, v129 = v48[6], v130 = v48[8], v275 = v48[7], v276 = v130, v131 = v48[2], v269 = *v49, v270 = v131, v132 = v48[4], v134 = *v49, v133 = v48[2], v271 = v48[3], v272 = v132, v288 = v277, v289 = v126, v290[0] = v48[11], *(v290 + 9) = *(v48 + 185), v284 = v273, v285 = v129, v286 = v275, v287 = v125, v280 = v134, v281 = v133, v282 = v271, v283 = v128, sub_100021348(&v280) == 1))
      {
        swift_beginAccess();
        v135 = v48[10];
        v334 = v48[9];
        v335 = v135;
        v336[0] = v48[11];
        *(v336 + 9) = *(v48 + 185);
        v136 = v48[6];
        v330 = v48[5];
        v331 = v136;
        v137 = v48[8];
        v332 = v48[7];
        v333 = v137;
        v138 = v48[2];
        v326 = *v49;
        v327 = v138;
        v139 = v48[4];
        v328 = v48[3];
        v329 = v139;
        v140 = v300;
        v48[9] = v299;
        v48[10] = v140;
        v48[11] = v301[0];
        *(v48 + 185) = *(v301 + 9);
        v141 = v296;
        v48[5] = v295;
        v48[6] = v141;
        v142 = v298;
        v48[7] = v297;
        v48[8] = v142;
        v143 = v292;
        *v49 = v291;
        v48[2] = v143;
        v144 = v294;
        v48[3] = v293;
        v48[4] = v144;
        sub_100025F40(&v326, &qword_1005D65E0, &unk_1004EB070);
LABEL_80:

        goto LABEL_81;
      }

      v334 = v288;
      v335 = v289;
      v336[0] = v290[0];
      *(v336 + 9) = *(v290 + 9);
      v330 = v284;
      v331 = v285;
      v332 = v286;
      v333 = v287;
      v326 = v280;
      v327 = v281;
      v328 = v282;
      v329 = v283;
      sub_1002954C0(&v269, &v258);
      v198 = v255;

      sub_1002954C0(&v269, &v258);
      sub_1002788DC(&v326, v256, v198, &v302);
      v314 = v306;
      v315 = v307;
      v316 = v308;
      v317 = v309;
      v310 = v302;
      v311 = v303;
      v312 = v304;
      v313 = v305;
      if (sub_10027971C(&v310) != 1)
      {
        v322 = v314;
        v323 = v315;
        v324 = v316;
        v325 = v317;
        v318 = v310;
        v319 = v311;
        v320 = v312;
        v321 = v313;
        v252(&v318);
        sub_100025F40(&v302, &qword_1005D6610, &unk_1004EC260);
      }

LABEL_79:
      sub_100025F40(&v269, &qword_1005D65E0, &unk_1004EB070);
      *(v250 + 16) = 2;
      v200 = v49[9];
      v266 = v49[8];
      v267 = v200;
      v268[0] = v49[10];
      *(v268 + 9) = *(v49 + 169);
      v201 = v49[5];
      v262 = v49[4];
      v263 = v201;
      v202 = v49[7];
      v264 = v49[6];
      v265 = v202;
      v203 = v49[1];
      v258 = *v49;
      v259 = v203;
      v204 = v49[3];
      v260 = v49[2];
      v261 = v204;
      v205 = v300;
      v49[8] = v299;
      v49[9] = v205;
      v49[10] = v301[0];
      *(v49 + 169) = *(v301 + 9);
      v206 = v296;
      v49[4] = v295;
      v49[5] = v206;
      v207 = v298;
      v49[6] = v297;
      v49[7] = v207;
      v208 = v292;
      *v49 = v291;
      v49[1] = v208;
      v209 = v294;
      v49[2] = v293;
      v49[3] = v209;
      sub_100025F40(&v258, &qword_1005D65E0, &unk_1004EB070);
      goto LABEL_80;
    }

    if (a1 >> 32 >= a1)
    {

      v250 = v246;
      swift_retain_n();
      v37 = sub_1004A40D4();
      v252 = a6;
      if (v37)
      {
        v38 = v37;
        v39 = sub_1004A4104();
        if (__OFSUB__(a1, v39))
        {
          goto LABEL_93;
        }

        v40 = a1 - v39 + v38;
      }

      else
      {
        v40 = 0;
      }

      v79 = sub_1004A40F4();
      if (v79 >= (a1 >> 32) - a1)
      {
        v80 = (a1 >> 32) - a1;
      }

      else
      {
        v80 = v79;
      }

      if (v40)
      {
        v81 = v80;
      }

      else
      {
        v81 = 0;
      }

      if (v40)
      {
        v82 = v80 + v40;
      }

      else
      {
        v82 = 0;
      }

      if ((v81 & 0x8000000000000000) == 0)
      {

        v247 = v82;
        v83 = sub_100297350(0, v81, v40, v82);
        v84 = sub_1002975B0(_swiftEmptyArrayStorage, v83);
        if (v84)
        {
          v86 = v84;
          v87 = v85;
          *&v326 = sub_100257570(_swiftEmptyArrayStorage);
          sub_100297A70(v86, v87, a3 & 1, &v326, v83);

          v88 = v326;
        }

        else
        {

          v88 = sub_100257570(_swiftEmptyArrayStorage);
        }

        v106 = swift_allocObject();
        v249 = v246;
        v251 = v106;
        *(v106 + 16) = v88;
        __chkstk_darwin(v106);
        v242 = v256;
        v243 = a5;
        v107 = v252;
        v244 = v252;
        v245 = v254;
        v108 = swift_allocObject();
        v109 = v108 + 1;
        sub_100276450(&v291);
        v110 = v300;
        v108[9] = v299;
        v108[10] = v110;
        v108[11] = v301[0];
        *(v108 + 185) = *(v301 + 9);
        v111 = v296;
        v108[5] = v295;
        v108[6] = v111;
        v112 = v298;
        v108[7] = v297;
        v108[8] = v112;
        v113 = v292;
        v108[1] = v291;
        v108[2] = v113;
        v114 = v294;
        v108[3] = v293;
        v108[4] = v114;
        v115 = swift_allocObject();
        v246[1] = v241;
        *(v115 + 16) = 2;
        v116 = (v115 + 16);
        __chkstk_darwin(v115);
        v237 = v108;
        v238 = v117;
        v248 = v117;
        v239 = sub_1002955DC;
        v240 = v241;
        __chkstk_darwin(v117);
        v233 = v108 + 1;
        v234 = UInt32.init(_:);
        v235 = 0;
        v118 = v253;
        sub_100296AD8(3, 0, v81, v40, v247);
        if (v118)
        {
LABEL_58:

LABEL_60:
        }

        v105 = v108 + 1;
        v337 = _swiftEmptyArrayStorage;
        v338 = v119;
        v339 = v120;
        v340 = v121;
        v341 = v122;
        sub_100295F74(sub_100277378, v236, sub_100277390, v232, sub_100295664, v251);
        swift_beginAccess();
        if (*v116 == 2)
        {
          swift_beginAccess();
          v177 = v108[10];
          v178 = v108[8];
          v277 = v108[9];
          v278 = v177;
          v179 = v108[10];
          v279[0] = v108[11];
          *(v279 + 9) = *(v108 + 185);
          v180 = v108[6];
          v181 = v108[4];
          v273 = v108[5];
          v274 = v180;
          v182 = v108[6];
          v183 = v108[8];
          v275 = v108[7];
          v276 = v183;
          v184 = v108[2];
          v269 = *v109;
          v270 = v184;
          v185 = v108[4];
          v187 = *v109;
          v186 = v108[2];
          v271 = v108[3];
          v272 = v185;
          v288 = v277;
          v289 = v179;
          v290[0] = v108[11];
          *(v290 + 9) = *(v108 + 185);
          v284 = v273;
          v285 = v182;
          v286 = v275;
          v287 = v178;
          v280 = v187;
          v281 = v186;
          v282 = v271;
          v283 = v181;
          if (sub_100021348(&v280) != 1)
          {
            v334 = v288;
            v335 = v289;
            v336[0] = v290[0];
            *(v336 + 9) = *(v290 + 9);
            v330 = v284;
            v331 = v285;
            v332 = v286;
            v333 = v287;
            v326 = v280;
            v327 = v281;
            v328 = v282;
            v329 = v283;
            sub_1002954C0(&v269, &v258);
            v221 = v255;

            sub_1002954C0(&v269, &v258);
            sub_1002788DC(&v326, v256, v221, &v302);
            v314 = v306;
            v315 = v307;
            v316 = v308;
            v317 = v309;
            v310 = v302;
            v311 = v303;
            v312 = v304;
            v313 = v305;
            if (sub_10027971C(&v310) != 1)
            {
              v322 = v314;
              v323 = v315;
              v324 = v316;
              v325 = v317;
              v318 = v310;
              v319 = v311;
              v320 = v312;
              v321 = v313;
              v107(&v318);
              sub_100025F40(&v302, &qword_1005D6610, &unk_1004EC260);
            }

            sub_100025F40(&v269, &qword_1005D65E0, &unk_1004EB070);
            *(v248 + 16) = 2;
            v222 = v108[10];
            v266 = v108[9];
            v267 = v222;
            v268[0] = v108[11];
            *(v268 + 9) = *(v108 + 185);
            v223 = v108[6];
            v262 = v108[5];
            v263 = v223;
            v224 = v108[8];
            v264 = v108[7];
            v265 = v224;
            v225 = v108[2];
            v258 = *v105;
            v259 = v225;
            v226 = v108[4];
            v260 = v108[3];
            v261 = v226;
            v227 = v300;
            v108[9] = v299;
            v108[10] = v227;
            v108[11] = v301[0];
            *(v108 + 185) = *(v301 + 9);
            v228 = v296;
            v108[5] = v295;
            v108[6] = v228;
            v229 = v298;
            v108[7] = v297;
            v108[8] = v229;
            v230 = v292;
            *v105 = v291;
            v108[2] = v230;
            v231 = v294;
            v108[3] = v293;
            v108[4] = v231;
            sub_100025F40(&v258, &qword_1005D65E0, &unk_1004EB070);
            goto LABEL_88;
          }
        }

LABEL_73:
        swift_beginAccess();
        v188 = v105[9];
        v334 = v105[8];
        v335 = v188;
        v336[0] = v105[10];
        *(v336 + 9) = *(v105 + 169);
        v189 = v105[5];
        v330 = v105[4];
        v331 = v189;
        v190 = v105[7];
        v332 = v105[6];
        v333 = v190;
        v191 = v105[1];
        v326 = *v105;
        v327 = v191;
        v192 = v105[3];
        v328 = v105[2];
        v329 = v192;
        v193 = v300;
        v105[8] = v299;
        v105[9] = v193;
        v105[10] = v301[0];
        *(v105 + 169) = *(v301 + 9);
        v194 = v296;
        v105[4] = v295;
        v105[5] = v194;
        v195 = v298;
        v105[6] = v297;
        v105[7] = v195;
        v196 = v292;
        *v105 = v291;
        v105[1] = v196;
        v197 = v294;
        v105[2] = v293;
        v105[3] = v197;
        sub_100025F40(&v326, &qword_1005D65E0, &unk_1004EB070);
LABEL_88:

        goto LABEL_60;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v14 == 2)
  {
    v252 = a6;
    v22 = *(a1 + 16);
    a6 = *(a1 + 24);

    v251 = v246;
    swift_retain_n();
    v23 = sub_1004A40D4();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1004A4104();
      if (__OFSUB__(v22, v25))
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      v13 = (v22 - v25 + v24);
      v26 = a6 - v22;
      if (!__OFSUB__(a6, v22))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
      v26 = a6 - v22;
      if (!__OFSUB__(a6, v22))
      {
LABEL_9:
        v27 = sub_1004A40F4();
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v13)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        if (v13)
        {
          v30 = v13 + v28;
        }

        else
        {
          v30 = 0;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {

          v248 = v30;
          v31 = sub_100297350(0, v29, v13, v30);
          v32 = sub_1002975B0(_swiftEmptyArrayStorage, v31);
          if (v32)
          {
            v34 = v32;
            v35 = v33;
            *&v326 = sub_100257570(_swiftEmptyArrayStorage);
            sub_100297A70(v34, v35, a3 & 1, &v326, v31);

            v36 = v326;
          }

          else
          {

            v36 = sub_100257570(_swiftEmptyArrayStorage);
          }

          v89 = swift_allocObject();
          v250 = v246;
          *(v89 + 16) = v36;
          __chkstk_darwin(v89);
          v242 = v256;
          v243 = a5;
          v244 = v252;
          v245 = v254;
          v90 = swift_allocObject();
          v91 = v90 + 1;
          sub_100276450(&v291);
          v92 = v300;
          v90[9] = v299;
          v90[10] = v92;
          v90[11] = v301[0];
          *(v90 + 185) = *(v301 + 9);
          v93 = v296;
          v90[5] = v295;
          v90[6] = v93;
          v94 = v298;
          v90[7] = v297;
          v90[8] = v94;
          v95 = v292;
          v90[1] = v291;
          v90[2] = v95;
          v96 = v294;
          v90[3] = v293;
          v90[4] = v96;
          v97 = swift_allocObject();
          v247 = v241;
          *(v97 + 16) = 2;
          v98 = (v97 + 16);
          __chkstk_darwin(v97);
          v237 = v90;
          v238 = v99;
          v249 = v99;
          v239 = sub_1002955DC;
          v240 = v241;
          __chkstk_darwin(v99);
          v233 = v90 + 1;
          v234 = UInt32.init(_:);
          v235 = 0;
          v100 = v253;
          sub_100296AD8(3, 0, v29, v13, v248);
          if (v100)
          {
            goto LABEL_58;
          }

          v105 = v90 + 1;
          v337 = _swiftEmptyArrayStorage;
          v338 = v101;
          v339 = v102;
          v340 = v103;
          v341 = v104;
          sub_100295F74(sub_100277378, v236, sub_100277390, v232, sub_100295664, v89);
          swift_beginAccess();
          if (*v98 == 2)
          {
            swift_beginAccess();
            v166 = v90[10];
            v167 = v90[8];
            v277 = v90[9];
            v278 = v166;
            v168 = v90[10];
            v279[0] = v90[11];
            *(v279 + 9) = *(v90 + 185);
            v169 = v90[6];
            v170 = v90[4];
            v273 = v90[5];
            v274 = v169;
            v171 = v90[6];
            v172 = v90[8];
            v275 = v90[7];
            v276 = v172;
            v173 = v90[2];
            v269 = *v91;
            v270 = v173;
            v174 = v90[4];
            v176 = *v91;
            v175 = v90[2];
            v271 = v90[3];
            v272 = v174;
            v288 = v277;
            v289 = v168;
            v290[0] = v90[11];
            *(v290 + 9) = *(v90 + 185);
            v284 = v273;
            v285 = v171;
            v286 = v275;
            v287 = v167;
            v280 = v176;
            v281 = v175;
            v282 = v271;
            v283 = v170;
            if (sub_100021348(&v280) != 1)
            {
              v334 = v288;
              v335 = v289;
              v336[0] = v290[0];
              *(v336 + 9) = *(v290 + 9);
              v330 = v284;
              v331 = v285;
              v332 = v286;
              v333 = v287;
              v326 = v280;
              v327 = v281;
              v328 = v282;
              v329 = v283;
              sub_1002954C0(&v269, &v258);
              v210 = v255;

              sub_1002954C0(&v269, &v258);
              sub_1002788DC(&v326, v256, v210, &v302);
              v314 = v306;
              v315 = v307;
              v316 = v308;
              v317 = v309;
              v310 = v302;
              v311 = v303;
              v312 = v304;
              v313 = v305;
              if (sub_10027971C(&v310) != 1)
              {
                v322 = v314;
                v323 = v315;
                v324 = v316;
                v325 = v317;
                v318 = v310;
                v319 = v311;
                v320 = v312;
                v321 = v313;
                v252(&v318);
                sub_100025F40(&v302, &qword_1005D6610, &unk_1004EC260);
              }

              sub_100025F40(&v269, &qword_1005D65E0, &unk_1004EB070);
              v249[16] = 2;
              v211 = v90[10];
              v266 = v90[9];
              v267 = v211;
              v268[0] = v90[11];
              *(v268 + 9) = *(v90 + 185);
              v212 = v90[6];
              v262 = v90[5];
              v263 = v212;
              v213 = v90[8];
              v264 = v90[7];
              v265 = v213;
              v214 = v90[2];
              v258 = *v105;
              v259 = v214;
              v215 = v90[4];
              v260 = v90[3];
              v261 = v215;
              v216 = v300;
              v90[9] = v299;
              v90[10] = v216;
              v90[11] = v301[0];
              *(v90 + 185) = *(v301 + 9);
              v217 = v296;
              v90[5] = v295;
              v90[6] = v217;
              v218 = v298;
              v90[7] = v297;
              v90[8] = v218;
              v219 = v292;
              *v105 = v291;
              v90[2] = v219;
              v220 = v294;
              v90[3] = v293;
              v90[4] = v220;
              sub_100025F40(&v258, &qword_1005D65E0, &unk_1004EB070);
              goto LABEL_88;
            }
          }

          goto LABEL_73;
        }

        goto LABEL_90;
      }
    }

    __break(1u);
  }

  else
  {
    memset(v257, 0, 14);
    swift_retain_n();
    v41 = sub_100297350(0, 0, v257, v257);
    v42 = sub_1002975B0(_swiftEmptyArrayStorage, v41);
    if (v42)
    {
      v44 = v42;
      v45 = v43;
      *&v326 = sub_100257570(_swiftEmptyArrayStorage);
      sub_100297A70(v44, v45, a3 & 1, &v326, v41);

      v46 = v326;
      goto LABEL_34;
    }
  }

  v46 = sub_100257570(_swiftEmptyArrayStorage);
LABEL_34:
  v63 = v256;
  v64 = swift_allocObject();
  v251 = v246;
  *(v64 + 16) = v46;
  __chkstk_darwin(v64);
  v242 = v63;
  v243 = a5;
  v244 = a6;
  v245 = v254;
  v65 = swift_allocObject();
  v49 = v65 + 1;
  sub_100276450(&v291);
  v66 = v300;
  v65[9] = v299;
  v65[10] = v66;
  v65[11] = v301[0];
  *(v65 + 185) = *(v13 + 169);
  v67 = v296;
  v65[5] = v295;
  v65[6] = v67;
  v68 = v298;
  v65[7] = v297;
  v65[8] = v68;
  v69 = v292;
  v65[1] = v291;
  v65[2] = v69;
  v70 = v294;
  v65[3] = v293;
  v65[4] = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = 2;
  v72 = (v71 + 16);
  __chkstk_darwin(v71);
  v237 = v65;
  v238 = v73;
  v250 = v73;
  v239 = sub_1002955DC;
  v240 = v241;
  __chkstk_darwin(v73);
  v233 = v65 + 1;
  v234 = UInt32.init(_:);
  v235 = 0;
  v74 = v253;
  sub_100296AD8(3, 0, 0, v257, v257);
  if (!v74)
  {
    v252 = a6;
    v337 = _swiftEmptyArrayStorage;
    v338 = v75;
    v339 = v76;
    v340 = v77;
    v341 = v78;
    sub_100295F74(sub_100277378, v236, sub_100277390, v232, sub_100295664, v64);
    swift_beginAccess();
    if (*v72 != 2 || (swift_beginAccess(), v145 = v65[10], v146 = v65[8], v277 = v65[9], v278 = v145, v147 = v65[10], v279[0] = v65[11], *(v279 + 9) = *(v65 + 185), v148 = v65[6], v149 = v65[4], v273 = v65[5], v274 = v148, v150 = v65[6], v151 = v65[8], v275 = v65[7], v276 = v151, v152 = v65[2], v269 = *v49, v270 = v152, v153 = v65[4], v155 = *v49, v154 = v65[2], v271 = v65[3], v272 = v153, v288 = v277, v289 = v147, v290[0] = v65[11], *(v290 + 9) = *(v65 + 185), v284 = v273, v285 = v150, v286 = v275, v287 = v146, v280 = v155, v281 = v154, v282 = v271, v283 = v149, sub_100021348(&v280) == 1))
    {
      swift_beginAccess();
      v156 = v65[10];
      v334 = v65[9];
      v335 = v156;
      v336[0] = v65[11];
      *(v336 + 9) = *(v65 + 185);
      v157 = v65[6];
      v330 = v65[5];
      v331 = v157;
      v158 = v65[8];
      v332 = v65[7];
      v333 = v158;
      v159 = v65[2];
      v326 = *v49;
      v327 = v159;
      v160 = v65[4];
      v328 = v65[3];
      v329 = v160;
      v161 = v300;
      v65[9] = v299;
      v65[10] = v161;
      v65[11] = v301[0];
      *(v65 + 185) = *(v301 + 9);
      v162 = v296;
      v65[5] = v295;
      v65[6] = v162;
      v163 = v298;
      v65[7] = v297;
      v65[8] = v163;
      v164 = v292;
      *v49 = v291;
      v65[2] = v164;
      v165 = v294;
      v65[3] = v293;
      v65[4] = v165;
      sub_100025F40(&v326, &qword_1005D65E0, &unk_1004EB070);

LABEL_81:
    }

    v334 = v288;
    v335 = v289;
    v336[0] = v290[0];
    *(v336 + 9) = *(v290 + 9);
    v330 = v284;
    v331 = v285;
    v332 = v286;
    v333 = v287;
    v326 = v280;
    v327 = v281;
    v328 = v282;
    v329 = v283;
    sub_1002954C0(&v269, &v258);
    v199 = v255;

    sub_1002954C0(&v269, &v258);
    sub_1002788DC(&v326, v256, v199, &v302);
    v314 = v306;
    v315 = v307;
    v316 = v308;
    v317 = v309;
    v310 = v302;
    v311 = v303;
    v312 = v304;
    v313 = v305;
    if (sub_10027971C(&v310) != 1)
    {
      v322 = v314;
      v323 = v315;
      v324 = v316;
      v325 = v317;
      v318 = v310;
      v319 = v311;
      v320 = v312;
      v321 = v313;
      v252(&v318);
      sub_100025F40(&v302, &qword_1005D6610, &unk_1004EC260);
    }

    goto LABEL_79;
  }

LABEL_38:
}

uint64_t sub_100293848(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8)
{
  v95 = a4;
  v96 = a5;
  v15 = a2 >> 62;
  swift_retain_n();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v97[0] = a1;
      LOWORD(v97[1]) = a2;
      BYTE2(v97[1]) = BYTE2(a2);
      BYTE3(v97[1]) = BYTE3(a2);
      BYTE4(v97[1]) = BYTE4(a2);
      BYTE5(v97[1]) = BYTE5(a2);

      swift_retain_n();
      sub_10027B720(3u, 0, BYTE6(a2), v97, v97 + BYTE6(a2), a8, &v99);
      if (!v8)
      {
        v16 = v106;
        *&v108 = v99;
        BYTE8(v108) = v100;
        v109 = v101;
        v110 = v102;
        *&v111 = v103;
        WORD4(v111) = v104;
        v112 = v105;
        sub_10027A644();
        v133[2] = v110;
        v133[3] = v111;
        v134 = v112;
        v133[0] = v108;
        v133[1] = v109;
        sub_100279E40(3u, a3, a6, a7);
        sub_10027B6BC(v133);
        v40 = *(v16 + 16);
        if (v40)
        {
          v41 = v40 - 1;
          v94 = v16;
          for (i = v16 + 56; ; i += 88)
          {
            v43 = *(i - 16);
            v44 = *(i - 8);
            v45 = *i;
            v46 = *(i + 8);
            v47 = *(i + 16);
            v48 = *(i + 24);
            v49 = *(i + 32);
            v50 = *(i + 48);
            v51 = *(i + 56);
            v52 = *(i + 40);
            v124[0] = *(i - 24);
            v124[1] = v43;
            v124[2] = v44;
            v125 = v45;
            v126 = v46;
            v127 = v47;
            v128 = v48;
            v129 = v49;
            v130 = v52;
            v131 = v50;
            v132 = v51;
            v99 = v124[0];
            v100 = v43;
            *&v101 = v44;
            BYTE8(v101) = v45;
            *&v102 = v46;
            *(&v102 + 1) = v47;
            v103 = v48;
            v104 = v49;
            LOBYTE(v105) = v52;
            v106 = v50;
            v107 = v51;

            sub_10027C1E4(v46, v47, v48, v49, v52);
            sub_100279DB4(v124, v98);
            sub_100279DEC(&v99);
            v95(v124);
            sub_100279DEC(v124);
            if (!v41)
            {
              break;
            }

            --v41;
          }
        }

LABEL_59:

        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (a1 >> 32 >= a1)
    {
      v94 = a7;
      v30 = v8;

      v93 = &v93;
      swift_retain_n();
      v31 = sub_1004A40D4();
      if (v31)
      {
        v32 = sub_1004A4104();
        if (__OFSUB__(a1, v32))
        {
          goto LABEL_68;
        }

        v31 += a1 - v32;
      }

      v33 = sub_1004A40F4();
      if (v33 >= (a1 >> 32) - a1)
      {
        v34 = (a1 >> 32) - a1;
      }

      else
      {
        v34 = v33;
      }

      if (v31)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = v34 + v31;
        if (v31)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        sub_10027B720(3u, 0, v35, v31, v37, a8, &v99);
        if (!v30)
        {
          v38 = v106;
          *&v108 = v99;
          BYTE8(v108) = v100;
          v109 = v101;
          v110 = v102;
          *&v111 = v103;
          WORD4(v111) = v104;
          v112 = v105;
          sub_10027A644();
          v144[2] = v110;
          v144[3] = v111;
          v145 = v112;
          v144[0] = v108;
          v144[1] = v109;
          sub_100279E40(3u, a3, a6, v94);
          sub_10027B6BC(v144);
          v79 = *(v38 + 16);
          if (v79)
          {
            v80 = v79 - 1;
            v94 = v38;
            for (j = v38 + 56; ; j += 88)
            {
              v82 = *(j - 16);
              v83 = *(j - 8);
              v84 = *j;
              v85 = *(j + 8);
              v86 = *(j + 16);
              v87 = *(j + 24);
              v88 = *(j + 32);
              v89 = *(j + 48);
              v90 = *(j + 56);
              v91 = *(j + 40);
              v135[0] = *(j - 24);
              v135[1] = v82;
              v135[2] = v83;
              v136 = v84;
              v137 = v85;
              v138 = v86;
              v139 = v87;
              v140 = v88;
              v141 = v91;
              v142 = v89;
              v143 = v90;
              v99 = v135[0];
              v100 = v82;
              *&v101 = v83;
              BYTE8(v101) = v84;
              *&v102 = v85;
              *(&v102 + 1) = v86;
              v103 = v87;
              v104 = v88;
              LOBYTE(v105) = v91;
              v106 = v89;
              v107 = v90;

              sub_10027C1E4(v85, v86, v87, v88, v91);
              sub_100279DB4(v135, v98);
              sub_100279DEC(&v99);
              v95(v135);
              sub_100279DEC(v135);
              if (!v80)
              {
                break;
              }

              --v80;
            }
          }

LABEL_62:
        }

        goto LABEL_38;
      }

      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (v15 != 2)
  {
    memset(v97, 0, 14);

    swift_retain_n();
    sub_10027B720(3u, 0, 0, v97, v97, a8, &v99);
    if (!v8)
    {
      v39 = v106;
      *&v108 = v99;
      BYTE8(v108) = v100;
      v109 = v101;
      v110 = v102;
      *&v111 = v103;
      WORD4(v111) = v104;
      v112 = v105;
      sub_10027A644();
      v122[2] = v110;
      v122[3] = v111;
      v123 = v112;
      v122[0] = v108;
      v122[1] = v109;
      sub_100279E40(3u, a3, a6, a7);
      sub_10027B6BC(v122);
      v53 = *(v39 + 16);
      if (v53)
      {
        v54 = v53 - 1;
        v94 = v39;
        for (k = v39 + 56; ; k += 88)
        {
          v56 = *(k - 16);
          v57 = *(k - 8);
          v58 = *k;
          v59 = *(k + 8);
          v60 = *(k + 16);
          v61 = *(k + 24);
          v62 = *(k + 32);
          v63 = *(k + 48);
          v64 = *(k + 56);
          v65 = *(k + 40);
          v113[0] = *(k - 24);
          v113[1] = v56;
          v113[2] = v57;
          v114 = v58;
          v115 = v59;
          v116 = v60;
          v117 = v61;
          v118 = v62;
          v119 = v65;
          v120 = v63;
          v121 = v64;
          v99 = v113[0];
          v100 = v56;
          *&v101 = v57;
          BYTE8(v101) = v58;
          *&v102 = v59;
          *(&v102 + 1) = v60;
          v103 = v61;
          v104 = v62;
          LOBYTE(v105) = v65;
          v106 = v63;
          v107 = v64;

          sub_10027C1E4(v59, v60, v61, v62, v65);
          sub_100279DB4(v113, v98);
          sub_100279DEC(&v99);
          v95(v113);
          sub_100279DEC(v113);
          if (!v54)
          {
            break;
          }

          --v54;
        }
      }

      goto LABEL_59;
    }

LABEL_60:
  }

  v94 = a7;
  v17 = v8;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);

  v93 = &v93;
  swift_retain_n();
  v20 = sub_1004A40D4();
  if (v20)
  {
    v21 = sub_1004A4104();
    if (__OFSUB__(v18, v21))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v24 = sub_1004A40F4();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 < 0)
  {
    goto LABEL_65;
  }

  v27 = v25 + v20;
  if (v20)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_10027B720(3u, 0, v26, v20, v28, a8, &v99);
  if (!v17)
  {
    v29 = v106;
    *&v108 = v99;
    BYTE8(v108) = v100;
    v109 = v101;
    v110 = v102;
    *&v111 = v103;
    WORD4(v111) = v104;
    v112 = v105;
    sub_10027A644();
    v155[2] = v110;
    v155[3] = v111;
    v156 = v112;
    v155[0] = v108;
    v155[1] = v109;
    sub_100279E40(3u, a3, a6, v94);
    sub_10027B6BC(v155);
    v66 = *(v29 + 16);
    if (v66)
    {
      v67 = v66 - 1;
      v94 = v29;
      for (m = v29 + 56; ; m += 88)
      {
        v69 = *(m - 16);
        v70 = *(m - 8);
        v71 = *m;
        v72 = *(m + 8);
        v73 = *(m + 16);
        v74 = *(m + 24);
        v75 = *(m + 32);
        v76 = *(m + 48);
        v77 = *(m + 56);
        v78 = *(m + 40);
        v146[0] = *(m - 24);
        v146[1] = v69;
        v146[2] = v70;
        v147 = v71;
        v148 = v72;
        v149 = v73;
        v150 = v74;
        v151 = v75;
        v152 = v78;
        v153 = v76;
        v154 = v77;
        v99 = v146[0];
        v100 = v69;
        *&v101 = v70;
        BYTE8(v101) = v71;
        *&v102 = v72;
        *(&v102 + 1) = v73;
        v103 = v74;
        v104 = v75;
        LOBYTE(v105) = v78;
        v106 = v76;
        v107 = v77;

        sub_10027C1E4(v72, v73, v74, v75, v78);
        sub_100279DB4(v146, v98);
        sub_100279DEC(&v99);
        v95(v146);
        sub_100279DEC(v146);
        if (!v67)
        {
          break;
        }

        --v67;
      }
    }

    goto LABEL_62;
  }

LABEL_38:
}

uint64_t sub_100294170@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2 >> 62;
  swift_retain_n();
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      memset(v28, 0, 14);
      swift_retain_n();
      v11 = v28;
      v12 = a5;
      v13 = 0;
      goto LABEL_33;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);

    v27 = &v27;
    swift_retain_n();
    v16 = sub_1004A40D4();
    if (v16)
    {
      v17 = sub_1004A4104();
      if (__OFSUB__(v15, v17))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (v18)
    {
      goto LABEL_36;
    }

    v20 = sub_1004A40F4();
    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    if (v16)
    {
      a1 = v21;
    }

    else
    {
      a1 = 0;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v28[0] = a1;
    LOWORD(v28[1]) = a2;
    BYTE2(v28[1]) = BYTE2(a2);
    BYTE3(v28[1]) = BYTE3(a2);
    BYTE4(v28[1]) = BYTE4(a2);
    BYTE5(v28[1]) = BYTE5(a2);
    swift_retain_n();
    v11 = v28 + BYTE6(a2);
    v12 = a5;
    v13 = BYTE6(a2);
LABEL_33:
    sub_1002808F8(0, v13, v28, v11, a3, a4, v12);
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = &v27;
  swift_retain_n();
  v16 = sub_1004A40D4();
  if (v16)
  {
    v22 = sub_1004A4104();
    if (__OFSUB__(a1, v22))
    {
      goto LABEL_39;
    }

    v16 += a1 - v22;
  }

  v23 = sub_1004A40F4();
  if (v23 >= (a1 >> 32) - a1)
  {
    v21 = (a1 >> 32) - a1;
  }

  else
  {
    v21 = v23;
  }

  if (v16)
  {
    a1 = v21;
  }

  else
  {
    a1 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v24 = v21 + v16;
  if (v16)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1002808F8(0, a1, v16, v25, a3, a4, a5);
}

uint64_t sub_100294424@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2 >> 62;
  swift_retain_n();
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      memset(v15, 0, 14);
      swift_retain_n();
      v9 = v15;
      v10 = a4;
      v11 = 0;
      goto LABEL_9;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v8)
    {
      v15[0] = a1;
      LOWORD(v15[1]) = a2;
      BYTE2(v15[1]) = BYTE2(a2);
      BYTE3(v15[1]) = BYTE3(a2);
      BYTE4(v15[1]) = BYTE4(a2);
      BYTE5(v15[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = (v15 + BYTE6(a2));
      v10 = a4;
      v11 = BYTE6(a2);
LABEL_9:
      sub_1002ACE34(0, v11, v15, v9, a3, v10);
    }

    v13 = a1;
    v12 = a1 >> 32;
    if (v12 < v13)
    {
      __break(1u);
    }
  }

  swift_retain_n();
  sub_100294690(v13, v12, a3, a4);
}

uint64_t sub_1002945DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1004A40D4();
  v8 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1004A40F4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

void *sub_100294690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{

  result = sub_1004A40D4();
  v10 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v10 = (v10 + a1 - result);
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_1004A40F4();
  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_17;
  }

  v15 = (v10 + v13);
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_1002ACE34(0, v14, v10, v16, a4, x8_0);
}

uint64_t sub_10029476C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;

  result = sub_1004A40D4();
  v10 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1004A40F4();
  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_19;
  }

  v15 = v13 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_100257014(0, v14, v10, v16, a4, &v17);

  if (!v5)
  {
    return v17;
  }

  return result;
}

void *sub_100294858(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v15[0] = a1;
      LOWORD(v15[1]) = a2;
      BYTE2(v15[1]) = BYTE2(a2);
      BYTE3(v15[1]) = BYTE3(a2);
      BYTE4(v15[1]) = BYTE4(a2);
      v4 = v15;
      v8 = BYTE6(a2);
      BYTE5(v15[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = v15 + v8;
      v10 = v8;
      goto LABEL_9;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    swift_retain_n();
    v4 = sub_10029476C(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v15, 0, 14);
  swift_retain_n();
  v9 = v15;
  v10 = 0;
LABEL_9:
  sub_100257014(0, v10, v15, v9, a3, &v14);

  if (!v3)
  {
    v4 = v14;
  }

LABEL_11:

  return v4;
}

void *sub_100294A24(uint64_t a1, void *a2)
{
  v5 = sub_1004A5384();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1002955C0;
  v20 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_100257014(0, 0, 0, 0, a2, v21);
    v13 = v2;

    if (!v2)
    {
      return v21[0];
    }
  }

  else
  {
    sub_100286984(a1, v11, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = (*(v6 + 32))(v8, v11, v5);
      __chkstk_darwin(v14);
      *&v18[-32] = v8;
      *&v18[-24] = sub_100267954;
      *&v18[-16] = v18;
      sub_10000C9C0(&qword_1005D69E0, &qword_1004EC998);
      v13 = v8;
      sub_1004A5314();
      (*(v6 + 8))(v8, v5);

      if (!v2)
      {
        return v21[1];
      }
    }

    else
    {
      v15 = *v11;
      v16 = v11[1];

      v13 = sub_100294858(v15, v16, a2);

      sub_100014D40(v15, v16);
    }
  }

  return v13;
}

char *sub_100294D24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = BYTE6(a2);
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v25, 0, 14);
      v5 = swift_retain_n();
      v6 = v25;
      v7 = 0;
      goto LABEL_33;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    swift_retain_n();
    v10 = sub_1004A40D4();
    if (v10)
    {
      v11 = sub_1004A4104();
      if (__OFSUB__(v8, v11))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_36;
    }

    a1 = sub_1004A40F4();
    if (a1 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = a1;
    }

    if (v10)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v25[0] = a1;
    LOWORD(v25[1]) = a2;
    BYTE2(v25[1]) = BYTE2(a2);
    BYTE3(v25[1]) = BYTE3(a2);
    BYTE4(v25[1]) = BYTE4(a2);
    BYTE5(v25[1]) = BYTE5(a2);
    v5 = swift_retain_n();
    v6 = v25 + v3;
    v7 = v3;
LABEL_33:
    v23 = sub_1002A477C(v5, 0, v7, v25, v6);
    goto LABEL_34;
  }

  v16 = a1;
  v17 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_retain_n();
  v10 = sub_1004A40D4();
  if (v10)
  {
    v18 = sub_1004A4104();
    if (__OFSUB__(v16, v18))
    {
      goto LABEL_39;
    }

    v10 += v16 - v18;
  }

  v19 = sub_1004A40F4();
  if (v19 >= v17)
  {
    v14 = v17;
  }

  else
  {
    v14 = v19;
  }

  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v20 = v14 + v10;
  if (v10)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v23 = sub_1002A477C(v22, 0, v15, v10, v21);
LABEL_34:

  return v23;
}

char *sub_100294F90(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004A5384();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100295270;
  v21 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v14 = sub_1002A477C(v13, 0, 0, 0, 0);
  }

  else
  {
    sub_100286984(a1, v11, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = (*(v6 + 32))(v8, v11, v5);
      __chkstk_darwin(v15);
      *&v19[-32] = v8;
      *&v19[-24] = sub_100269AF8;
      *&v19[-16] = v19;
      sub_10000C9C0(&qword_1005D69D8, &qword_1004EC990);
      v14 = v8;
      sub_1004A5314();
      if (!v2)
      {
        (*(v6 + 8))(v8, v5);

        return v22;
      }

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v16 = *v11;
      v17 = v11[1];

      v14 = sub_100294D24(v16, v17, a2);

      sub_100014D40(v16, v17);
    }
  }

  return v14;
}

uint64_t sub_1002952A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24) - v4;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    if (v4)
    {
      v6 = v5 == a2 - result;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      *a3 = 0;
      return result;
    }
  }

  else
  {
    v7 = v5 == 0;
    if (v4)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (result)
  {
    v9 = v4 == result;
  }

  else
  {
    v9 = 0;
  }

  v7 = v9;
LABEL_21:
  *a3 = v7;
  return result;
}

void *sub_1002952F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v9, a1, a1 + v7);
  if (!v3)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_10029542C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100295464()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1002954C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D65E0, &unk_1004EB070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100295668(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = a2 - isStackAllocationSafe;
  if (isStackAllocationSafe)
  {
    v4 = a2 - isStackAllocationSafe;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    v2 = isStackAllocationSafe;
    if (v5 < 1025)
    {
      goto LABEL_7;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v10 = swift_slowAlloc();
    v11 = sub_1002957B8(v10, v2, a2);

    return v11;
  }

LABEL_7:
  __chkstk_darwin(isStackAllocationSafe);
  v7 = &v12 - v6;
  if (v2)
  {
    memmove(&v12 - v6, v2, v3);
  }

  else
  {
    v3 = 0;
  }

  v7[v3] = 0;
  return CompactEncDet_EncodingNameAliasToEncoding(v7);
}

uint64_t sub_1002957B8(void *a1, void *__src, uint64_t a3)
{
  if (a1)
  {
    if (!__src)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v4 = a3 - __src;
    v5 = a1;
    memmove(a1, __src, a3 - __src);
    a1 = v5;
  }

  else
  {
    v4 = a3 - __src;
  }

  if (__src)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  *(a1 + v6) = 0;
  return CompactEncDet_EncodingNameAliasToEncoding(a1);
}

uint64_t sub_100295838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);
  v6._countAndFlagsBits = 91;
  v6._object = 0xE100000000000000;
  sub_1004A5994(v6);
  sub_1004A6934();
  v7._countAndFlagsBits = 8285;
  v7._object = 0xE200000000000000;
  sub_1004A5994(v7);
  v8._countAndFlagsBits = sub_100295930(v4, v1, v2, v3);
  sub_1004A5994(v8);

  return 0;
}

uint64_t sub_1002958F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 - a2 >= a4)
    {
      return a2 + a4;
    }

    __break(1u);
  }

  else if (a4 <= 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100295930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x3E6C696E3CLL;
  }

  if (a3 - a2 < a4)
  {
    __break(1u);
  }

  else
  {
    sub_1004A6934();
    v5._countAndFlagsBits = 3943982;
    v5._object = 0xE300000000000000;
    sub_1004A5994(v5);
    sub_1004A6934();
    v6._countAndFlagsBits = 3943982;
    v6._object = 0xE300000000000000;
    sub_1004A5994(v6);
    sub_1004A6934();
    return 0;
  }

  return result;
}

char *sub_100295A44(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = a5 - a4;
  v48 = a5 - a4;
  if (!a4)
  {
    v10 = 0;
  }

  v50 = v10;
  v11 = result;
  v49 = result;
  while (1)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v16 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v17 = &result[-v16];
        if (&result[-v16] < 0)
        {
          goto LABEL_45;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_144;
        }

        if (v7 - v8 < v18)
        {
          goto LABEL_45;
        }

        v15 = &v17[v8];
        if (__OFADD__(v17, v8))
        {
          goto LABEL_152;
        }

        v5 = &v18[v8];
        if (__OFADD__(v18, v8))
        {
          goto LABEL_154;
        }

        if (v18 < v17 || v5 < v15)
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v22 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v23 = &result[-v22];
        if (&result[-v22] < 0)
        {
          goto LABEL_45;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_146;
        }

        if (v7 - v8 < v24)
        {
LABEL_45:
          v5 = 0;
          v25 = 1;
          v15 = v7;
          v26 = v7 - v8;
          if (v7 == v8)
          {
            goto LABEL_119;
          }

          goto LABEL_46;
        }

        v15 = &v23[v8];
        if (__OFADD__(v23, v8))
        {
          goto LABEL_149;
        }

        v5 = &v24[v8];
        if (__OFADD__(v24, v8))
        {
          goto LABEL_156;
        }

        if (v24 < v23 || v5 < v15)
        {
          goto LABEL_157;
        }

        if (v8 < v15)
        {
          if (v15 > v7)
          {
            goto LABEL_162;
          }

          if (v15[a4 - 1] == 13)
          {
            --v15;
          }
        }
      }
    }

    else if (v11)
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v19 = a4 + v8;
      result = memchr((a4 + v8), 13, v7 - v8);
      if (!result)
      {
        goto LABEL_45;
      }

      v20 = &result[-v19];
      if (&result[-v19] < 0)
      {
        goto LABEL_45;
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_143;
      }

      if (v7 - v8 < v21)
      {
        goto LABEL_45;
      }

      v15 = &v20[v8];
      if (__OFADD__(v20, v8))
      {
        goto LABEL_151;
      }

      v5 = &v21[v8];
      if (__OFADD__(v21, v8))
      {
        goto LABEL_153;
      }

      if (v21 < v20 || v5 < v15)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v12 = a4 + v8;
      result = memmem((a4 + v8), v7 - v8, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_45;
      }

      v13 = &result[-v12];
      if (&result[-v12] < 0)
      {
        goto LABEL_45;
      }

      v14 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        goto LABEL_145;
      }

      if (v7 - v8 < v14)
      {
        goto LABEL_45;
      }

      v15 = &v13[v8];
      if (__OFADD__(v13, v8))
      {
        goto LABEL_150;
      }

      v5 = &v14[v8];
      if (__OFADD__(v14, v8))
      {
        goto LABEL_155;
      }

      if (v14 < v13 || v5 < v15)
      {
        goto LABEL_159;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_135;
    }

    if (v15 > v7)
    {
      goto LABEL_136;
    }

    v25 = 0;
    v26 = &v15[-v8];
    if (v15 == v8)
    {
      goto LABEL_119;
    }

LABEL_46:
    if (v8 < 0 || v50 < v8)
    {
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
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      return result;
    }

    if ((v15 & 0x8000000000000000) != 0 || v50 < v15)
    {
      goto LABEL_125;
    }

    if (!a4)
    {
      break;
    }

    if (v26 > 399)
    {
      break;
    }

    v27 = a4 + v8;
    v28 = v9;
    v29 = v7;
    v30 = v25;
    v31 = v5;
    result = memchr((a4 + v8), 58, v26);
    v5 = v31;
    v25 = v30;
    v7 = v29;
    v9 = v28;
    if (!result)
    {
      break;
    }

    v32 = &result[-v27];
    if (&result[-v27] < 0)
    {
      break;
    }

    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_133;
    }

    if (v26 < v33)
    {
      break;
    }

    v34 = &v32[v8];
    if (__OFADD__(v32, v8))
    {
      goto LABEL_137;
    }

    if (__OFADD__(v33, v8))
    {
      goto LABEL_138;
    }

    if (v33 < v32 || &v33[v8] < v34)
    {
      goto LABEL_139;
    }

    if (v48 < v8)
    {
      goto LABEL_140;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_141;
    }

    if (v48 < v34)
    {
      goto LABEL_142;
    }

    if ((v32 - 61) < 0xFFFFFFFFFFFFFFC4)
    {
      break;
    }

    if (v34 < v8)
    {
      goto LABEL_147;
    }

    if (v15 < v34)
    {
      goto LABEL_148;
    }

    if (v34 != v8)
    {
      v44 = v8;
      while (v44 < v34)
      {
        v45 = *(a4 + v44);
        v38 = v45 > 0x20;
        v46 = (1 << v45) & 0x100002600;
        if (!v38 && v46 != 0)
        {
          goto LABEL_64;
        }

        if (v34 == ++v44)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_134;
    }

LABEL_90:
    if (v25)
    {
      if (v7 >= v8)
      {
        return v7;
      }

      goto LABEL_161;
    }

    if (v5 > v7)
    {
      goto LABEL_129;
    }

    if (v5 < v8)
    {
      goto LABEL_130;
    }

    if (v9 <= 0x12)
    {
      ++v9;
      v8 = v5;
      v11 = v49;
      if (v5 != v7)
      {
        continue;
      }
    }

    return v5;
  }

LABEL_64:
  if (!v9)
  {
    return 0;
  }

  if (v26 <= 399)
  {
    if (v15 <= v8)
    {
      v35 = v8;
    }

    else
    {
      v35 = v15;
    }

    v36 = v8;
    while (1)
    {
      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_124;
      }

      v37 = *(a4 + v36);
      v38 = v37 > 0x20;
      v39 = (1 << v37) & 0x100002600;
      if (v38 || v39 == 0)
      {
        break;
      }

      if (v15 == ++v36)
      {
        v41 = 1;
        v36 = v15;
        v42 = &v15[-v8];
        if (v15 < v8)
        {
          goto LABEL_126;
        }

        goto LABEL_79;
      }
    }

    v41 = 0;
    v42 = v36 - v8;
    if (v36 < v8)
    {
      goto LABEL_126;
    }

LABEL_79:
    if (v15 < v36)
    {
      goto LABEL_127;
    }

    if (a4)
    {
      if (v48 < v8)
      {
        goto LABEL_131;
      }

      if (v48 < v36)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v8 > 0)
      {
        goto LABEL_132;
      }

      if (v36 > 0)
      {
        goto LABEL_128;
      }
    }

    if ((v42 - 13) < 0xFFFFFFFFFFFFFFF4)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      goto LABEL_119;
    }

    goto LABEL_90;
  }

LABEL_119:
  v5 = v8;
  if (v9)
  {
    return v5;
  }

  return 0;
}

void sub_100295F74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t, void), uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  v8 = v6;
  v15 = a1(v6);
  if (!v7 && v15)
  {
    if (v15 == 1)
    {
      v16 = *(v6 + 32);
      if (v16 < 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      else
      {
        v17 = *(v6 + 16);
        v18 = v17 + v16;
        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        sub_1002AADD4(v17, v19, *(v6 + 8), v92);
        v20 = sub_1002AC09C();
        if (v23 != 2)
        {
          v24 = v20;
          v25 = v21;
          v26 = v22;
          v27 = v23;
          do
          {
            sub_1002AB9E4(v24, v25, v26, v27 & 1, v93);
            a3(v93, v24, v25, v26, v27 & 1);
            sub_1002970DC(v93);
            v24 = sub_1002AC09C();
            v25 = v28;
            v26 = v29;
            v27 = v30;
          }

          while (v30 != 2);
        }
      }
    }

    else
    {
      v106 = 0;
      v31 = *(v6 + 8);
      v32 = v8[2];
      v90 = v8[3];
      v91 = v8[4];
      sub_100296CF8(v91, a3, &v94, v31, v32);
      if (v97)
      {
        v88 = v32;
        v89 = v31;
        v87 = BYTE8(v94);
        v33 = v95;
        v34 = v96;
        v35 = sub_100296FBC(&v94);
        if (v34 <= 0xF && v100 != 2)
        {
          if (!a5 || v33 & 0x80 | v87)
          {
            goto LABEL_23;
          }

          LODWORD(v87) = v100;
          v85 = v99;
          v86 = v98;
          v36 = *v8;
          sub_10029702C(v8, v92);
          sub_1001C1F84(a5, a6);
          v37 = a5(v36);
          switch(v37)
          {
            case 0:
              sub_100297088(v8);
              v35 = sub_1000B5158(a5, a6);
              goto LABEL_23;
            case 1:
LABEL_56:
              sub_100297088(v8);
              sub_1000B5158(a5, a6);
              break;
            case 2:
              sub_100297088(v8);
              sub_1000B5158(a5, a6);
              break;
            default:
              v71 = v36[2];
              if (v71 + 1 == *(v37 + 16))
              {
                v72 = 4;
                while (v71)
                {
                  v73 = v36[v72];
                  v74 = *(v37 + v72 * 8);
                  --v71;
                  ++v72;
                  if (v73 != v74)
                  {
                    sub_1000B5158(a5, a6);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                while (1)
                {
                  v77 = v37;
                  sub_1000CA1A0(v37);
                  swift_unknownObjectRelease();

                  if (!*(v77 + 16))
                  {
                    sub_1000B5158(a5, a6);
                    v76 = v77;
                    goto LABEL_64;
                  }

                  sub_1000B5158(a5, a6);
                  v35 = sub_1000CB838(v77);
LABEL_23:
                  __chkstk_darwin(v35);
                  if (v43)
                  {
                    if (v38)
                    {
                      v44 = v39 - v38;
                    }

                    else
                    {
                      v44 = 0;
                    }

                    if ((v44 & 0x8000000000000000) == 0)
                    {
                      sub_1002882B8(0, v44, v38, v39, sub_100296FEC);
                      return;
                    }

                    goto LABEL_84;
                  }

                  v86 = v38;
                  v85 = v39;
                  v83 = v41;
                  v82 = v42;
                  if (v88)
                  {
                    v45 = v90 - v88 - v91;
                    if ((v90 - v88) < v91)
                    {
                      goto LABEL_86;
                    }

                    if (v90 - v88 - v91 < 0)
                    {
                      goto LABEL_85;
                    }

                    v46 = (v91 + v88);
                    v47 = v90;
                  }

                  else
                  {
                    if (v91 > 0)
                    {
                      goto LABEL_88;
                    }

                    v47 = 0;
                    v46 = 0;
                    v45 = 0;
                  }

                  v84 = v45;
                  v88 = v46;
                  v87 = v47;
                  v48 = v40;
                  sub_10026A1F8(0, v45, v46, v47, v40, v86, v85);
                  if (v50 == -1)
                  {
                    return;
                  }

                  v37 = v49;
                  if ((v50 & 1) == 0)
                  {
                    break;
                  }

                  v51 = 0;
LABEL_68:
                  if (v84 < v37)
                  {
                    goto LABEL_87;
                  }

                  if (v37 >= v51)
                  {
                    return;
                  }

                  __break(1u);
                }

                v78[1] = v78;
                v52 = v84;
                v53 = v88;
                if (v84 < v37)
                {
                  goto LABEL_81;
                }

                if (v37 < 0)
                {
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

                v54 = v48;
                v91 = 0;
                while (1)
                {
                  v55 = v53;
                  v56 = v37;
                  v57 = sub_10026A1F8(v37, v52, v55, v87, v54, v86, v85);
                  if (v59 == 0xFF)
                  {
                    break;
                  }

                  v60 = v57;
                  if (v57 < v56)
                  {
                    goto LABEL_82;
                  }

                  v90 = v56;
                  v61 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    goto LABEL_83;
                  }

                  v62 = v58;
                  v63 = v82;
                  if (v83 == v61)
                  {
                    v63 = 1;
                  }

                  v53 = v88;
                  if (v63 == 1)
                  {
                    v79 = v59;
                    v80 = v58;
                    rawValue = SectionSpecifier.Part.appending(_:)(v61).array._rawValue;
                    v64 = v106;
                    sub_100296AD8(v89, v90, v60, v53, v87);
                    if (v64)
                    {

                      if (v84 < v80)
                      {
                        goto LABEL_89;
                      }

                      if (v80 < v90)
                      {
                        goto LABEL_90;
                      }

                      return;
                    }

                    v101 = rawValue;
                    v102 = v65;
                    v103 = v66;
                    v104 = v67;
                    v105 = v68;
                    sub_100295F74(a1, a2, a3, a4, a5, a6);
                    v106 = 0;
                    v70 = v69;

                    if (!v70)
                    {
                      if (v84 < v80)
                      {
                        goto LABEL_91;
                      }

                      if (v80 < v90)
                      {
                        goto LABEL_92;
                      }

                      return;
                    }

                    v51 = v90;
                    v62 = v80;
                    LOBYTE(v59) = v79;
                    v53 = v88;
                  }

                  else
                  {
                    v51 = v90;
                  }

                  v54 = v89;
                  if (v59)
                  {
                    v37 = v62;
                    goto LABEL_68;
                  }

                  v52 = v84;
                  if (v84 < v62)
                  {
                    goto LABEL_81;
                  }

                  v91 = (v91 + 1);
                  v37 = v62;
                  if (v62 < v51)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else
              {
                v75 = v37;
                sub_1000B5158(a5, a6);
                sub_100297088(v8);
                v76 = v75;
LABEL_64:
                sub_1000CB838(v76);
              }

              break;
          }
        }
      }
    }
  }
}