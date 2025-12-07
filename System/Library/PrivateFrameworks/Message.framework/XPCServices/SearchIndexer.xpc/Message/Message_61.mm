uint64_t sub_1003EEB28(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v11 = 0x4545502E59444F42;
  }

  else
  {
    v11 = 1497648962;
  }

  if (a1)
  {
    v12 = 0xE90000000000004BLL;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(v6 + 20);
  v14 = sub_1002F178C(v11, v12, v6 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = v11;
    v16._object = v12;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v19 = *(v6 + 20);
  v20 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v6 + 20) = v21;
  result = sub_100492D08(a2, a3, a4);
  v22 = __OFADD__(v17, result);
  v23 = v17 + result;
  if (v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (a6)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1003BE2D8();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1003EEC4C(char a1, void *a2, uint64_t a3, char a4)
{
  v8 = *(v4 + 20);
  result = sub_1002F178C(0x5952414E4942uLL, 0xE600000000000000, v4 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 0x5952414E4942;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v4 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v13;
  if (a1)
  {
    v14 = result;
    result = sub_1002F178C(0x4B4545502EuLL, 0xE500000000000000, v4 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x4B4545502ELL;
      v16._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v4 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_21;
    }

    result = v14;
    *(v4 + 20) = v20;
  }

  else
  {
    v17 = 0;
  }

  v21 = result + v17;
  if (__OFADD__(result, v17))
  {
    goto LABEL_18;
  }

  result = sub_100492F74(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a4)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1003BE2D8();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1003EEDA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  v15 = *a6;
  v16 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v16;
  v19 = v12;
  v21 = v14;
  v20 = v13;
  sub_1004919E0(v11, v18, a3, a4, a5, v15, a8, a9);
  if (!v9)
  {
    *a7 = v17;
  }
}

unint64_t _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 5) | (a1[7] << 16);
  v5 = *(a1 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  *&v50[5] = *(a1 + 29);
  *v50 = *(a1 + 3);
  v8 = (v5 << 8) | (v4 << 40);
  v9 = v8 | v3;
  v10 = *&v50[8] | (v50[12] << 32);
  v11 = v50[12] >> 5;
  if (v11 > 2)
  {
    if (v50[12] >> 5 <= 4u)
    {
      if (v11 == 3)
      {
        if (((a2[36] << 32) & 0xE000000000) != 0x6000000000)
        {
          goto LABEL_180;
        }

        if ((v3 ^ *a2))
        {
          goto LABEL_180;
        }

        v12 = *(a2 + 1);
        v13 = *(v7 + 16);
        if (v13 != *(v12 + 16))
        {
          goto LABEL_180;
        }

        if (v13 && v7 != v12)
        {
          v14 = (v7 + 32);
          v15 = (v12 + 32);
          while (*v14 == *v15)
          {
            ++v14;
            ++v15;
            if (!--v13)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_180;
        }

LABEL_12:
        if (v50[0])
        {
          if ((a2[24] & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else if ((a2[24] & 1) != 0 || v6 != *(a2 + 2))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (((a2[36] << 32) & 0xE000000000) != 0x8000000000)
      {
        goto LABEL_180;
      }

      v10 = *a2;
      v24 = *((v8 | v3) + 0x10);
      if (v24 != *(*a2 + 16))
      {
        goto LABEL_180;
      }

      if (!v24 || v9 == v10)
      {
LABEL_179:
        LOBYTE(v10) = 1;
        return v10 & 1;
      }

      v9 += 32;
      v3 = v10 + 32;
      while (v24)
      {
        v26 = *v9;
        v9 += 8;
        v25 = v26;
        v27 = *v3;
        v3 += 8;
        v28 = v25 == v27;
        v10 = v25 == v27;
        v28 = !v28 || v24-- == 1;
        if (v28)
        {
          return v10 & 1;
        }
      }

      __break(1u);
LABEL_153:
      if (v10 == v3 && v9 == 10 && !v24)
      {
        v43 = *(a2 + 8) | (a2[36] << 32);
        if ((v43 & 0xE000000000) != 0xC000000000 || v43 != 0xC000000000 || *a2 != 10)
        {
          goto LABEL_180;
        }

LABEL_178:
        if (!(*(a2 + 2) | *(a2 + 3) | *(a2 + 1)))
        {
          goto LABEL_179;
        }

LABEL_180:
        LOBYTE(v10) = 0;
        return v10 & 1;
      }

      if (v10 == v3 && v9 == 11 && !v24)
      {
        v44 = *(a2 + 8) | (a2[36] << 32);
        if ((v44 & 0xE000000000) != 0xC000000000 || v44 != 0xC000000000 || *a2 != 11)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

LABEL_168:
      if (v10 == v3 && v9 == 12 && !v24)
      {
        v45 = *(a2 + 8) | (a2[36] << 32);
        if ((v45 & 0xE000000000) != 0xC000000000 || v45 != 0xC000000000 || *a2 != 12)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v46 = *(a2 + 8) | (a2[36] << 32);
        if ((v46 & 0xE000000000) != v3 || v46 != 0xC000000000 || *a2 != 13)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_178;
    }

    if (v11 != 5)
    {
      v24 = v6 | v7 | *v50;
      v3 = 0xC000000000;
      if (v10 == 0xC000000000 && !(v24 | v9))
      {
        v29 = *(a2 + 8) | (a2[36] << 32);
        if ((v29 & 0xE000000000) != 0xC000000000)
        {
          goto LABEL_180;
        }

        if (v29 != 0xC000000000)
        {
          goto LABEL_180;
        }

        v30 = vorrq_s8(*a2, *(a2 + 1));
        if (vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (v10 == 0xC000000000 && v9 == 1 && v24 == 0)
      {
        v32 = *(a2 + 8) | (a2[36] << 32);
        if ((v32 & 0xE000000000) != 0xC000000000 || v32 != 0xC000000000 || *a2 != 1)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 2 && v24 == 0)
      {
        v34 = *(a2 + 8) | (a2[36] << 32);
        if ((v34 & 0xE000000000) != 0xC000000000 || v34 != 0xC000000000 || *a2 != 2)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 3 && !v24)
      {
        v35 = *(a2 + 8) | (a2[36] << 32);
        if ((v35 & 0xE000000000) != 0xC000000000 || v35 != 0xC000000000 || *a2 != 3)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 4 && !v24)
      {
        v36 = *(a2 + 8) | (a2[36] << 32);
        if ((v36 & 0xE000000000) != 0xC000000000 || v36 != 0xC000000000 || *a2 != 4)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 5 && !v24)
      {
        v37 = *(a2 + 8) | (a2[36] << 32);
        if ((v37 & 0xE000000000) != 0xC000000000 || v37 != 0xC000000000 || *a2 != 5)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 6 && !v24)
      {
        v38 = *(a2 + 8) | (a2[36] << 32);
        if ((v38 & 0xE000000000) != 0xC000000000 || v38 != 0xC000000000 || *a2 != 6)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 7 && !v24)
      {
        v40 = *(a2 + 8) | (a2[36] << 32);
        if ((v40 & 0xE000000000) != 0xC000000000 || v40 != 0xC000000000 || *a2 != 7)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 8 && !v24)
      {
        v41 = *(a2 + 8) | (a2[36] << 32);
        if ((v41 & 0xE000000000) != 0xC000000000 || v41 != 0xC000000000 || *a2 != 8)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 9 && !v24)
      {
        v42 = *(a2 + 8) | (a2[36] << 32);
        if ((v42 & 0xE000000000) != 0xC000000000 || v42 != 0xC000000000 || *a2 != 9)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      goto LABEL_153;
    }

    if (((a2[36] << 32) & 0xE000000000) != 0xA000000000)
    {
      goto LABEL_180;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    if (a2[36] >> 5)
    {
      goto LABEL_180;
    }

LABEL_33:
    LOBYTE(v10) = v3 ^ *a2 ^ 1;
    return v10 & 1;
  }

  if (v11 == 1)
  {
    v16 = BYTE4(v10) & 0x1F;
    v18 = *(a2 + 1);
    v17 = *(a2 + 2);
    v19 = a2[24];
    v48 = *(a2 + 28);
    v20 = HIDWORD(v48) | (a2[36] << 32);
    if ((v20 & 0xE000000000) != 0x2000000000)
    {
      goto LABEL_180;
    }

    if ((v3 ^ *a2))
    {
      goto LABEL_180;
    }

    v21 = *(v7 + 16);
    if (v21 != *(v18 + 16))
    {
      goto LABEL_180;
    }

    v49 = BYTE4(v20) & 0x1F;
    if (v21 && v7 != v18)
    {
      v22 = (v7 + 32);
      v23 = (v18 + 32);
      while (*v22 == *v23)
      {
        ++v22;
        ++v23;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_180;
    }

LABEL_25:
    if (!v50[0])
    {
      if (a2[24])
      {
        goto LABEL_180;
      }

      goto LABEL_93;
    }

    if (v50[0] == 1)
    {
      if (v19 != 1)
      {
        goto LABEL_180;
      }

LABEL_93:
      if ((sub_10020FB40(v6, v17) & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_123;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 2)
        {
          goto LABEL_123;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 3)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v6)
      {
        if (v19 != 2 || v17)
        {
          return v10 & 1;
        }

LABEL_123:
        if (v16)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if (*&v50[4] == v48)
          {
            v39 = v49;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            goto LABEL_180;
          }
        }

        goto LABEL_179;
      }

      if (v19 == 2 && v17 == 1)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    if (((a2[36] << 32) & 0xE000000000) != 0x4000000000)
    {
      goto LABEL_180;
    }

    v10 = *a2;
    v24 = *a2 | v8;
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_168;
    }

    LOBYTE(v10) = v10 == v9;
  }

  return v10 & 1;
}

unint64_t sub_1003EF590()
{
  result = qword_1005DC618;
  if (!qword_1005DC618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchAttribute, &type metadata for FetchAttribute, v0, v1);
    atomic_store(result, &qword_1005DC618);
  }

  return result;
}

uint64_t sub_1003EF5E4(uint64_t a1)
{
  v1 = *(a1 + 36) >> 5;
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1003EF600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0x3FFFFFFF | (*(a1 + 36) >> 1 << 30);
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

uint64_t sub_1003EF65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-4 * a2);
      *(result + 32) = 0;
      *(result + 36) = (-a2 >> 29) & 6;
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EF6BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x1F;
  return result;
}

uint64_t sub_1003EF6D8(uint64_t result, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 32);
    result += 32;
    v3 = (a2 << 37) | ((*(result + 4) & 1) << 32);
    *(result - 8) &= 0xFFFFFFFF00000003;
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = -64;
  }

  return result;
}

unint64_t sub_1003EF774(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6 = *a1;
  v7[0] = v3;
  *(v7 + 13) = *(a1 + 29);
  v4 = v2[1];
  v8 = *v2;
  v9[0] = v4;
  *(v9 + 13) = *(v2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v6, &v8) & 1;
}

uint64_t sub_1003EF7F0()
{
  v1 = v0;
  v2 = *(v0 + 20);
  result = sub_1002F178C(0x2820514553444F4DuLL, 0xE800000000000000, v0 + 8, v2);
  if (v4)
  {
    v5._countAndFlagsBits = 0x2820514553444F4DLL;
    v5._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = result;
  v7 = *(v0 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 20) = v8;
  v9 = sub_1004A6CE4();
  v11 = v10;
  v12 = sub_1002F178C(v9, v10, v0 + 8, v8);
  if (v13)
  {
    v14._countAndFlagsBits = v9;
    v14._object = v11;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
  }

  v15 = v12;

  v16 = *(v1 + 20);
  v17 = (v16 + v15);
  if (__CFADD__(v16, v15))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v6, v15);
  v19 = v6 + v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v1 + 8, (v16 + v15));
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = *(v1 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v24;
  v18 = __OFADD__(v19, result);
  result += v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003EF954()
{
  result = qword_1005DC620;
  if (!qword_1005DC620)
  {
    result = swift_getWitnessTable("I;\b", &type metadata for FetchModificationResponse, v0, v1);
    atomic_store(result, &qword_1005DC620);
  }

  return result;
}

uint64_t sub_1003EF9B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v1 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v15;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __chkstk_darwin(result);
  v35[2] = sub_1003F0200;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_100452548(0, sub_1003F076C, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  result = v8 + v34;
  if (!__OFADD__(v8, v34))
  {
    return result;
  }

  __break(1u);
  return 0;
}

void FetchModifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  Modifier = type metadata accessor for FetchModifier(0);
  __chkstk_darwin(Modifier);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F05A4(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v16;
      v18 = *(v16 + 1);
      v20 = v16[8];
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4((v20 & 1) != 0);
      sub_1004A6EE4(v19);
      sub_1004A6EE4(v18);
    }

    else
    {
      sub_1003E05A4(v16, v13);
      sub_1004A6EB4(2uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003E0614(&v13[*(v11 + 52)], v10);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1002FC114(v10, v7);
        sub_1004A6EC4(1u);
        ParameterValue.hash(into:)(a1);
        sub_1003F070C(v7, type metadata accessor for ParameterValue);
      }

      sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
    }
  }

  else
  {
    v21 = *v16;
    sub_1004A6EB4(0);
    sub_1004A6EF4(v21);
  }
}

Swift::Int FetchModifier.hashValue.getter()
{
  sub_1004A6E94();
  FetchModifier.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003EFF28(uint64_t a1)
{
  sub_1004A6E94();
  FetchModifier.hash(into:)(v2);
  return sub_1004A6F14();
}

char *sub_1003EFF64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (v39 - v5);
  Modifier = type metadata accessor for FetchModifier(0);
  __chkstk_darwin(Modifier);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F05A4(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_18;
    }

    v11 = *v9;
    v12 = v9[8];
    v13 = *(v2 + 5);
    result = sub_1002F178C(0x204C414954524150uLL, 0xE800000000000000, (v2 + 8), v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x204C414954524150;
      v16._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v2 + 5);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    *(v2 + 5) = v20;
    v9 = v2;
    v21 = sub_100475674(v11, v12);
    v22 = __OFADD__(v17, v21);
    result = (v17 + v21);
    if (!v22)
    {
      return result;
    }

    __break(1u);
  }

  v23 = *v9;
  v24 = *(v2 + 5);
  v6 = 0;
  result = sub_1002F178C(0x534445474E414843uLL, 0xED00002045434E49, (v2 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0x534445474E414843;
    v26._object = 0xED00002045434E49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = result;
  v28 = *(v2 + 5);
  v29 = (v28 + result);
  if (__CFADD__(v28, result))
  {
    goto LABEL_21;
  }

  *(v2 + 5) = v29;
  v39[0] = v23;
  v30 = sub_1004A6CE4();
  v32 = v31;
  v33 = sub_1002F178C(v30, v31, (v2 + 8), v29);
  if (v34)
  {
    v35._countAndFlagsBits = v30;
    v35._object = v32;
    v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
  }

  v9 = v33;

  v36 = *(v2 + 5);
  v19 = __CFADD__(v36, v9);
  v37 = v36 + v9;
  if (v19)
  {
    goto LABEL_22;
  }

  *(v2 + 5) = v37;
  result = &v9[v27];
  if (!__OFADD__(v27, v9))
  {
    return result;
  }

  __break(1u);
LABEL_18:
  sub_1003E05A4(v9, v6);
  v38 = sub_10049EB14(v6);
  sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
  return v38;
}

uint64_t _s12NIOIMAPCore213FetchModifierO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v27 - v5);
  Modifier = type metadata accessor for FetchModifier(0);
  __chkstk_darwin(Modifier);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = (&v27 - v14);
  v16 = sub_10000C9C0(&qword_1005DC6D8, &qword_100503310);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v20 = &v27 + *(v19 + 56) - v17;
  sub_1003F05A4(a1, &v27 - v17);
  sub_1003F05A4(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003F05A4(v18, v12);
      v22 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v20[8];
        if (v12[8])
        {
          if (*v20 != v22)
          {
            v23 = 0;
          }

          if (v23 != 1)
          {
LABEL_8:
            sub_1003F070C(v18, type metadata accessor for FetchModifier);
            return 0;
          }
        }

        else
        {
          if (*v20 != v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
            goto LABEL_8;
          }
        }

        sub_1003F070C(v18, type metadata accessor for FetchModifier);
        return 1;
      }

LABEL_16:
      sub_100025F40(v18, &qword_1005DC6D8, &qword_100503310);
      return 0;
    }

    sub_1003F05A4(v18, v9);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_16;
    }

    sub_1003E05A4(v20, v6);
    v26 = sub_100436BFC(v9, v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
LABEL_14:
    sub_1003F070C(v18, type metadata accessor for FetchModifier);
    return v26;
  }

  sub_1003F05A4(v18, v15);
  v24 = *v15;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    goto LABEL_16;
  }

  if (((*v20 | v24) & 0x8000000000000000) == 0)
  {
    v26 = *v20 == v24;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FetchModifier(uint64_t a1)
{
  result = qword_1005DC6A0;
  if (!qword_1005DC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F05A4(uint64_t a1, uint64_t a2)
{
  Modifier = type metadata accessor for FetchModifier(0);
  (*(*(Modifier - 8) + 16))(a2, a1, Modifier);
  return a2;
}

void sub_1003F0650(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1003F06C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003F070C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F076C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100491B64(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SearchModificationSequence.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 BodyStructure.Fields.init(parameters:id:contentDescription:encoding:octetCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a8;
  v20 = a10;
  sub_1003F088C(&v14, &v13);
  sub_1003F08C4(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

void BodyStructure.Fields.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  sub_1004A6EB4(v4);
  v5 = v2;

  if (!v4)
  {
LABEL_5:
    sub_1003E1B30(&v10);
    if (v9[4])
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v9[6])
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1004A6EC4(0);
      if (v9[6])
      {
LABEL_7:
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (v9[8])
        {
LABEL_8:
          sub_1004A6EC4(1u);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_12:
          sub_1004A6EB4(v9[9]);
          return;
        }

LABEL_11:
        sub_1004A6EC4(0);
        goto LABEL_12;
      }
    }

    sub_1004A6EC4(0);
    if (v9[8])
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v6 = 0;
  v7 = v3 + 40;
  v8 = v2 + 40;
  while (v6 < *(v5 + 16))
  {
    ++v6;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v7 += 16;
    v8 += 16;
    if (v4 == v6)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.Fields.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Fields.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003F0AEC(uint64_t a1)
{
  sub_1004A6E94();
  BodyStructure.Fields.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1003F0B28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

void sub_1003F0B84(void *a1)
{
  v2 = v1;
  sub_1004633BC(*a1, a1[1], a1[2]);
  v5 = v4;
  v6 = *(v1 + 20);
  v7 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = (v10 + v7);
  if (__CFADD__(v10, v7))
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v11;
  v12 = __OFADD__(v5, v7);
  v13 = v5 + v7;
  if (v12)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = a1[4];
  if (v14)
  {
    sub_100441B60(a1[3], v14);
    v16 = v13 + v15;
    if (!__OFADD__(v13, v15))
    {
      goto LABEL_7;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v11);
  if (v43)
  {
    v44._countAndFlagsBits = 4999502;
    v44._object = 0xE300000000000000;
    v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v11);
  }

  v45 = *(v1 + 20);
  v30 = __CFADD__(v45, v42);
  v46 = v45 + v42;
  if (v30)
  {
    goto LABEL_44;
  }

  *(v1 + 20) = v46;
  v16 = v13 + v42;
  if (__OFADD__(v13, v42))
  {
    goto LABEL_28;
  }

LABEL_7:
  v17 = *(v1 + 20);
  v18 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v17);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v21 = *(v1 + 20);
  v13 = (v21 + v18);
  if (__CFADD__(v21, v18))
  {
    goto LABEL_37;
  }

  *(v1 + 20) = v13;
  v12 = __OFADD__(v16, v18);
  v16 += v18;
  if (v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = a1[6];
  if (v22)
  {
    sub_100441B60(a1[5], v22);
    v12 = __OFADD__(v16, v23);
    v24 = v16 + v23;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_29:
  v47 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v13);
  if (v48)
  {
    v49._countAndFlagsBits = 4999502;
    v49._object = 0xE300000000000000;
    v47 = ByteBuffer._setStringSlowpath(_:at:)(v49, v13);
  }

  v50 = *(v1 + 20);
  v30 = __CFADD__(v50, v47);
  v51 = v50 + v47;
  if (v30)
  {
    goto LABEL_45;
  }

  *(v1 + 20) = v51;
  v12 = __OFADD__(v16, v47);
  v24 = v16 + v47;
  if (v12)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_13:
  v25 = *(v1 + 20);
  v26 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v1 + 20);
  v30 = __CFADD__(v29, v26);
  v31 = v29 + v26;
  if (v30)
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v31;
  v32 = v24 + v26;
  if (__OFADD__(v24, v26))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = sub_1003E6524(*(a1 + 7));
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v52._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v52);

  v35 = *(v1 + 20);
  v36 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v35);
  if (v37)
  {
    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    v36 = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
  }

  v39 = v36;

  v40 = *(v2 + 20);
  v30 = __CFADD__(v40, v39);
  v41 = v40 + v39;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v41;
  if (__OFADD__(v34, v39))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if ((sub_10020FB40(a1[1], a2[1]) & 1) == 0 || (sub_10020FB40(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    if (!v7 || (a1[3] != a2[3] || v6 != v7) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || (a1[5] != a2[5] || v8 != v9) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[8];
  v11 = a2[8];
  if (v10)
  {
    if (v11 && (a1[7] == a2[7] && v10 == v11 || (sub_1004A6D34() & 1) != 0))
    {
      return a1[9] == a2[9];
    }
  }

  else if (!v11)
  {
    return a1[9] == a2[9];
  }

  return 0;
}

unint64_t sub_1003F0F84()
{
  result = qword_1005DC6E0;
  if (!qword_1005DC6E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Fields, &type metadata for BodyStructure.Fields, v0, v1);
    atomic_store(result, &qword_1005DC6E0);
  }

  return result;
}

uint64_t sub_1003F0FE8(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_1003C40B8;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003A3458, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1003F1208(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1004A5A94();
  }

  else
  {
    return 0;
  }
}

uint64_t static Flag.Keyword.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004A5834();
  v6 = v5;
  if (v4 == sub_1004A5834() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

uint64_t Flag.Keyword.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Flag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6F24();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F04();
}

Swift::Int sub_1003F13A0()
{
  sub_1004A6F24();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F04();
}

uint64_t sub_1003F1404(uint64_t a1)
{
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003F1458(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1003F14BC(void *a1, uint64_t *a2)
{
  v2 = sub_1004A5834();
  v4 = v3;
  if (v2 == sub_1004A5834() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004A6D34();
  }

  return v7 & 1;
}

uint64_t static Flag.extension(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_1003F1208(a1, a2);
  if (v4)
  {
    if (result == 92 && v4 == 0xE100000000000000)
    {

LABEL_6:

      return a1;
    }

    v5 = sub_1004A6D34();

    if (v5)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003F1694()
{
  result = qword_1005DC6E8;
  if (!qword_1005DC6E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Flag, &type metadata for Flag, v0, v1);
    atomic_store(result, &qword_1005DC6E8);
  }

  return result;
}

uint64_t sub_1003F16F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492094(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

unint64_t sub_1003F175C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_10010C210(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1004A5A24();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1004A67E4();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1004A59F4();
LABEL_24:
    v16 = 0;
    v17 = v14 - 32;
    if (v14 < 0x20u)
    {
      return v16;
    }

    if (v17 <= 0x3D)
    {
      if (v17 == 61)
      {
        goto LABEL_8;
      }

      if (((1 << (v14 - 32)) & 0x1000000000000725) != 0)
      {
        return v16;
      }
    }

    if (v14 == 123)
    {
      return v16;
    }

    if ((v14 & 0x80) != 0)
    {
      return 0;
    }

LABEL_8:
    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t Flag.Keyword.init(_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if ((sub_1003F175C(a1, a2) & 1) == 0)
  {

    return 0;
  }

  return v2;
}

Swift::Int Flag.Keyword.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_1003F19E8()
{
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_1003F1C04()
{
  result = qword_1005DC6F0;
  if (!qword_1005DC6F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Flag.Keyword, &type metadata for Flag.Keyword, v0, v1);
    atomic_store(result, &qword_1005DC6F0);
  }

  return result;
}

unint64_t sub_1003F1C5C()
{
  result = qword_1005DC6F8;
  if (!qword_1005DC6F8)
  {
    result = swift_getWitnessTable("aN\b", &type metadata for Flag, v0, v1);
    atomic_store(result, &qword_1005DC6F8);
  }

  return result;
}

unint64_t sub_1003F1CB4()
{
  result = qword_1005DC700;
  if (!qword_1005DC700)
  {
    result = swift_getWitnessTable("IN\b", &type metadata for Flag, v0, v1);
    atomic_store(result, &qword_1005DC700);
  }

  return result;
}

Swift::Int sub_1003F1D90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1004A6E94();
  QuotaRoot.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1004A6F14();
}

unint64_t FramingResult.debugDescription.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v5)
    {
      sub_1004A6724(30);

      strcpy(v17, "INCOMPLETE: ");
      BYTE5(v17[1]) = 0;
      HIWORD(v17[1]) = -5120;
      v18 = a1;
      v23._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v23);

      v24._object = 0x80000001004B07C0;
      v24._countAndFlagsBits = 0xD000000000000010;
      sub_1004A5994(v24);
      return v17[0];
    }

    v6 = 0x4554454C504D4F43;
    v7 = 0xEA0000000000203ALL;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0x3A44494C41564E49;
    v7 = 0xE900000000000020;
LABEL_8:
    v18 = v6;
    v19 = v7;
    swift_beginAccess();

    v14 = sub_1004A58D4();
    v16 = v15;
    sub_10030422C(a1, a2, a3);
    v25._countAndFlagsBits = v14;
    v25._object = v16;
    sub_1004A5994(v25);
    goto LABEL_9;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1004A6724(32);

  v18 = 0xD000000000000010;
  v19 = 0x80000001004B07A0;
  swift_beginAccess();

  v9 = sub_1004A58D4();
  v11 = v10;
  sub_10030422C(a1, a2, a3);
  v20._countAndFlagsBits = v9;
  v20._object = v11;
  sub_1004A5994(v20);

  v21._countAndFlagsBits = 0x696E69616D657220;
  v21._object = 0xEC000000203A676ELL;
  sub_1004A5994(v21);
  v22._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v22);
LABEL_9:

  return v18;
}

void FramingResult.hash(into:)(uint64_t a1, Swift::UInt a2, unint64_t a3, unint64_t a4, Swift::UInt64 a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      sub_1004A6EB4(2uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      sub_1004A6EF4(a5);
      return;
    }

    v7 = 3;
  }

  else
  {
    if (v6)
    {
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(a2);
      return;
    }

    v7 = 0;
  }

  sub_1004A6EB4(v7);
  swift_beginAccess();
  sub_1004A6EA4();
}

Swift::Int FramingResult.hashValue.getter(Swift::UInt a1, unint64_t a2, unint64_t a3, Swift::UInt64 a4)
{
  sub_1004A6E94();
  FramingResult.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

void sub_1003F2224(uint64_t a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4);
  if (HIBYTE(a4) <= 1)
  {
    if (!v5)
    {
      sub_1004A6EB4(1uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      return;
    }

    v6 = 2;
  }

  else if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    if (v5 != 3)
    {
      sub_1004A6EB4(0);
      return;
    }

    v6 = 4;
  }

  sub_1004A6EB4(v6);
  sub_1004A6EF4(a2);
}

void sub_1003F22EC(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unint64_t a4)
{
  v6 = a4 >> 61;
  if ((a4 >> 61) > 1)
  {
    if (v6 == 2)
    {
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(a2 & 1);
      sub_1004A6EF4(a3);
      return;
    }

    if (v6 != 3)
    {
      v8 = 1;
      goto LABEL_10;
    }

    v7 = 4;
LABEL_7:
    sub_1004A6EB4(v7);
    v8 = a2 & 1;
LABEL_10:
    sub_1004A6EB4(v8);
    return;
  }

  if (!v6)
  {
    v7 = 0;
    goto LABEL_7;
  }

  sub_1004A6EB4(2uLL);

  sub_1003F2224(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFFLL);
}

Swift::Int sub_1003F23B8(Swift::UInt64 a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v10, a1, a2, a3 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1004A6F14();
    }

    v7 = 0;
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      v8 = 1;
      goto LABEL_10;
    }

    v7 = 4;
LABEL_7:
    sub_1004A6EB4(v7);
    v8 = a1 & 1;
LABEL_10:
    sub_1004A6EB4(v8);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(a1 & 1);
  sub_1004A6EF4(a2);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2490()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  FramingResult.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F24FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1004A6E94();
  FramingResult.hash(into:)(v7, v2, v3, v5, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003F2224(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F25E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  sub_1003F2224(v6, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2674(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  v5 = v4 >> 61;
  if ((v4 >> 61) <= 1)
  {
    if (v5)
    {
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v9, v2, v3, v4 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1004A6F14();
    }

    v6 = 0;
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      v7 = 1;
      goto LABEL_10;
    }

    v6 = 4;
LABEL_7:
    sub_1004A6EB4(v6);
    v7 = v2 & 1;
LABEL_10:
    sub_1004A6EB4(v7);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v2 & 1);
  sub_1004A6EF4(v3);
  return sub_1004A6F14();
}

uint64_t FramingParser.init(bufferSizeLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1005DB9D0 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a2 = v9;
    a1 = v8;
  }

  v3 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v4 = dword_1005DE398;
  v5 = word_1005DE39C;
  v6 = byte_1005DE39E;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = qword_1005DE390;
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  *(a2 + 54) = v6;
  *(a2 + 56) = a1;
}

char *FramingParser.appendAndFrameBuffer(_:)(uint64_t a1)
{
  if (*(a1 + 12) == *(a1 + 8))
  {
    return _swiftEmptyArrayStorage;
  }

  ByteBuffer.writeBuffer(_:)(a1);
  return sub_1003F286C();
}

char *sub_1003F286C()
{
  result = sub_1003F29B4();
  v2 = *(result + 2);
  if (v2)
  {
    if (*&result[32 * v2 + 16] >> 62 == 1)
    {
      v3 = *(v0 + 40);
      v4 = *(v0 + 44);
      if (*(v0 + 56) < (v4 - v3))
      {
        v5 = result;

        sub_1003F4C10();
        swift_allocError();
        swift_willThrow();
        if (v3 < 0x3E9 || v4 >> 1 >= v3)
        {
          return v5;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = *(v0 + 40);
  if (v6 >= 0x3E9 && *(v0 + 44) >> 1 < v6)
  {
    v5 = result;
LABEL_12:
    ByteBuffer.discardReadBytes()();
    return v5;
  }

  return result;
}

void FramingParser.appendAndFrameBytes(_:)(const void *a1, const void *a2)
{
  if (a1 && a2 != a1)
  {
    ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 44));
    v3 = *(v2 + 44);
    v5 = __CFADD__(v3, v4);
    v6 = v3 + v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 44) = v6;
      sub_1003F286C();
    }
  }
}

char *sub_1003F29B4()
{
  v1 = _swiftEmptyArrayStorage;
  while (*(v0 + 44) != *(v0 + 40))
  {
    sub_1003F2AB4();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1003041C4(v2, v4, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100460DD8(0, *(v1 + 2) + 1, 1, v1);
    }

    v11 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100460DD8((v10 > 1), v11 + 1, 1, v1);
    }

    *(v1 + 2) = v11 + 1;
    v12 = &v1[32 * v11];
    *(v12 + 4) = v3;
    *(v12 + 5) = v5;
    *(v12 + 6) = v7;
    *(v12 + 7) = v9;
    if (v7 >> 62 == 1)
    {
      break;
    }

    sub_10030422C(v3, v5, v7);
  }

  return v1;
}

void sub_1003F2AB4()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 44);
  v4 = v2 - v3;
  if (v1 >= v4)
  {
    return;
  }

  while (1)
  {
    v5 = *v0;
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v7 >> 61;
    if ((v7 >> 61) > 1)
    {
      break;
    }

    if (v8)
    {
      sub_1003F4C64(*v0, *(v0 + 8), *(v0 + 16), HIBYTE(v7) & 0x1F);
      sub_1003F3088(v5, v6, v7 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1003F4C74(v5, v6, v7);
      return;
    }

    if (v1 >= v4)
    {
      __break(1u);
      goto LABEL_59;
    }

    v15 = *(v0 + 54);
    v16 = *(v0 + 52);
    v17 = *(v0 + 32);
    swift_beginAccess();
    v18 = *(v17 + 24) + (v15 | (v16 << 8)) + v3;
    v19 = *(v18 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v19 > 33)
    {
      if (v19 != 34)
      {
        if (v19 == 123)
        {
          *v0 = 0;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0x2400000000000000;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }

    if (v19 == 10)
    {
      if (v5)
      {
        goto LABEL_51;
      }

      v20 = v3 + 1;
      if (v3 == -1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (v1 || v2 < v20)
      {
        goto LABEL_56;
      }

      v14 = 0;
      *(v0 + 40) = v20;
      *(v0 + 24) = 0;
LABEL_27:
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      *v0 = 1;
      goto LABEL_5;
    }

    if (v19 == 13)
    {
      if (v14 >= v4)
      {
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
      }

      else
      {
        if (*(v18 + v14) == 10)
        {
          v14 = v1 + 2;
          *(v0 + 24) = v1 + 2;
        }

        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
        *v0 = 1;
      }

LABEL_51:
      v27 = ByteBuffer.readSlice(length:)(v14);
      *(v0 + 24) = 0;
      if (v27)
      {
        return;
      }

      goto LABEL_59;
    }

LABEL_5:
    v3 = *(v0 + 40);
    v4 = v2 - v3;
    v1 = v14;
    if (v14 >= v4)
    {
      return;
    }
  }

  if (v8 == 3)
  {
    if (v1 >= v4)
    {
      goto LABEL_59;
    }

    v9 = *(v0 + 54);
    v10 = *(v0 + 52);
    v11 = *(v0 + 32);
    swift_beginAccess();
    v12 = *(v11 + 24) + (v9 | (v10 << 8)) + v3;
    v13 = *(v12 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v13 == 10)
    {
      goto LABEL_47;
    }

    if (v13 == 13)
    {
      goto LABEL_41;
    }

    if (v5)
    {
      goto LABEL_3;
    }

    if (v13 == 34)
    {
      goto LABEL_27;
    }

    if (v13 != 92)
    {
LABEL_3:
      *v0 = 0;
      *(v0 + 8) = 0;
    }

    else
    {
      *v0 = xmmword_1004DB2C0;
    }

    *(v0 + 16) = 0x6000000000000000;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    sub_1003F3358(v5 & 1, *(v0 + 8));
    v21 = *(v0 + 24);
    if (v21 <= 0)
    {
      return;
    }

    v22 = ByteBuffer.readSlice(length:)(v21);
    *(v0 + 24) = 0;
    if (v22)
    {
      if (v6 >= (HIDWORD(v23) - v23))
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v24 = v0;
  sub_1003F2FC4();
  v25 = *(v0 + 24);
  v0 += 32;
  v14 = ByteBuffer.readSlice(length:)(v25);
  *(v24 + 24) = 0;
  if (v14)
  {
    return;
  }

  __break(1u);
LABEL_41:
  if (v14 >= v4)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else
  {
    if (*(v12 + v14) == 10)
    {
      v14 = v1 + 2;
      *(v0 + 24) = v1 + 2;
    }

    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

LABEL_47:
  v26 = ByteBuffer.readSlice(length:)(v14);
  *(v0 + 24) = 0;
  if (v26)
  {
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1003F2FC4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v1 >= (*(v0 + 44) - v2))
  {
    result = sub_1003F4C74(*v0, *(v0 + 8), *(v0 + 16));
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 54);
    v4 = *(v0 + 52);
    v5 = *(v0 + 32);
    swift_beginAccess();
    if (*(*(v5 + 24) + (v3 | (v4 << 8)) + v2 + v1) == 10)
    {
      *(v0 + 24) = v1 + 1;
    }

    result = sub_1003F4C74(*v0, *(v0 + 8), *(v0 + 16));
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

  return result;
}

unint64_t sub_1003F3088(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) > 1)
  {
    if (v5 == 2)
    {
      v6 = sub_1003F3FE8(a1);
      goto LABEL_8;
    }

    if (v5 == 3)
    {
      v6 = sub_1003F4104(a1);
      goto LABEL_8;
    }

    v9 = *(v3 + 24);
    v10 = *(v4 + 40);
    if (v9 >= (*(v4 + 44) - v10))
    {
      goto LABEL_18;
    }

    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v4 + 54);
      v12 = *(v4 + 52);
      v13 = *(v4 + 32);
      swift_beginAccess();
      if (*(*(v13 + 24) + (v11 | (v12 << 8)) + v10 + v9) == 126)
      {
        *(v4 + 24) = v9 + 1;
      }

      if (qword_1005DB9D0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v14 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v15 = qword_1005DE390;
    v16 = dword_1005DE398 | (word_1005DE39C << 32) | (byte_1005DE39E << 48);
    v17 = *v4;
    v18 = *(v4 + 8);
    v19 = *(v4 + 16);

    sub_1003F4C74(v17, v18, v19);
    *v4 = v14;
    *(v4 + 8) = v15;
    *(v4 + 16) = v16 | 0x2000000000000000;
    a1 = v14;
    a2 = v15;
    v7 = v16;
    goto LABEL_17;
  }

  if (!v5)
  {
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
LABEL_17:
    v6 = sub_1003F37AC(a1, a2, v7);
    goto LABEL_8;
  }

  v6 = sub_1003F3E90(a1);
LABEL_8:
  if ((v6 & 1) == 0)
  {
    result = ByteBuffer.readSlice(length:)(*(v4 + 24));
    *(v4 + 24) = 0;
    if (!result)
    {
      __break(1u);
    }

    return result;
  }

LABEL_18:
  v20 = *(v4 + 16);
  v21 = v20 >> 61;
  if ((v20 >> 61) > 1)
  {
    if (v21 == 2)
    {
      return 1;
    }

    if (v21 == 3)
    {
      return 3;
    }

    return 0;
  }

  if (!v21)
  {
    return 2;
  }

  result = HIBYTE(v20) & 0x1F;
  if ((HIBYTE(v20) & 0x1Fu) > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      return 2;
    }

    return 3;
  }

  if (result)
  {
    return 3;
  }

  if (HIDWORD(*(v4 + 8)) == *(v4 + 8))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_1003F3358(char a1, unint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v6 = *(v3 + 40);
    v5 = *(v3 + 44);
    v7 = v5 - v6;
    if (v4 < v7)
    {
      if (v4 < 0)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(v3 + 54);
      v9 = *(v3 + 52);
      v10 = *(v3 + 32);
      v11 = a2;
      swift_beginAccess();
      a2 = v11;
      v2 = (v8 | (v9 << 8)) + v6;
      if (*(*(v10 + 24) + v2 + v4) == 10)
      {
        v7 = (v6 + 1);
        if (v6 == -1)
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (v5 < v7)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        *(v3 + 40) = v7;
      }
    }
  }

  v12 = (*(v3 + 44) - *(v3 + 40));
  v7 = *(v3 + 24);
  v13 = __OFSUB__(v12, v7);
  v2 = v12 - v7;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_18:
    *(v3 + 24) = v2 + v7;
    __break(1u);
    return;
  }

  v14 = a2 - v2;
  if (a2 <= v2)
  {
    *(v3 + 24) = v7 + a2;
    sub_1003F4C74(*v3, *(v3 + 8), *(v3 + 16));
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 1;
  }

  else
  {
    *(v3 + 24) = v2 + v7;
    sub_1003F4C74(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = 1;
    *(v3 + 8) = v14;
    *(v3 + 16) = 0x4000000000000000;
  }
}

void FramingParser.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = v6 >> 61;
  if ((v6 >> 61) <= 1)
  {
    if (v7)
    {
      v10 = *(v2 + 5) | (v2[7] << 16);
      v11 = *(v2 + 1);
      sub_1004A6EB4(2uLL);
      sub_1003F2224(a1, (v11 << 8) | (v10 << 40) | v4, v5, v6 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v8 = 0;
    goto LABEL_7;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v8 = 4;
LABEL_7:
    sub_1004A6EB4(v8);
    v9 = v4 & 1;
LABEL_10:
    sub_1004A6EB4(v9);
    goto LABEL_12;
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v4 & 1);
  sub_1004A6EF4(v5);
LABEL_12:
  sub_1004A6EB4(*(v2 + 3));
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1004A6EB4(*(v2 + 7));
}

Swift::Int FramingParser.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v4)
    {
      v7 = *(v0 + 5) | (v0[7] << 16);
      v8 = *(v0 + 1);
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v10, (v8 << 8) | (v7 << 40) | v1, v2, v3 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v5 = 0;
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      v6 = 1;
      goto LABEL_10;
    }

    v5 = 4;
LABEL_7:
    sub_1004A6EB4(v5);
    v6 = v1 & 1;
LABEL_10:
    sub_1004A6EB4(v6);
    goto LABEL_12;
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v1 & 1);
  sub_1004A6EF4(v2);
LABEL_12:
  sub_1004A6EB4(*(v0 + 3));
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1004A6EB4(*(v0 + 7));
  return sub_1004A6F14();
}

Swift::Int sub_1003F3724(uint64_t a1)
{
  sub_1004A6E94();
  FramingParser.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1003F3760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

unsigned __int8 *sub_1003F37AC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v64 = a3;
  v4 = a2;
  v5 = a1;
  v66 = a1;
  v67 = a2;
  v6 = HIDWORD(a2);
  v68 = a3;
  v7 = HIWORD(a3);
  v70 = BYTE6(a3);
  v8 = HIDWORD(a3);
  v69 = WORD2(a3);
  v9 = *(v3 + 32);
  v11 = *(v3 + 40);
  v10 = *(v3 + 44);
  v12 = *(v3 + 52);
  v13 = *(v3 + 54);

  swift_beginAccess();
  v14 = (v10 - v11);
  v15 = v7;
  v16 = v8;
  v17 = v13 | (v12 << 8);
  while (1)
  {
    v18 = v63[3];
    v19 = v11 + v18;
    if (__OFADD__(v11, v18))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v19 < v11 || v18 >= v14)
    {
      v28 = v64 | (v16 << 32) | (v15 << 48) | 0x2000000000000000;
      sub_1003F4C74(*v63, v63[1], v63[2]);
      *v63 = v5;
      v63[1] = v4 | (v6 << 32);
      v29 = 1;
      v63[2] = v28;
      return (v29 & 1);
    }

    v21 = *(*(v9 + 24) + v17 + v19);
    v63[3] = v18 + 1;
    if ((v21 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v4 = v6 + 1;
    if (v6 == -1)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v4 >= v64)
      {
        v22 = v4 - v64;
      }

      else
      {
        v22 = 0;
      }

      v23 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v6);
    v5 = v66;
    v24 = v69;
    v4 = v70;
    swift_beginAccess();
    v25 = v70 | (v69 << 8);
    v64 = v68;
    v26 = v68 - v25;
    if (v68 - v25 >= v6)
    {
      v26 = v6;
    }

    if (!v6)
    {
      v26 = 0;
    }

    *(*(v66 + 24) + v25 + v26) = v21;
    v6 = (HIDWORD(v67) + 1);
    if (HIDWORD(v67) == -1)
    {
      goto LABEL_102;
    }

    v16 = v24;
    v15 = v4;
    ++HIDWORD(v67);
    v4 = v67;
    if ((v6 - v67) >= 0x15)
    {
      LOBYTE(v14) = v15;
      sub_1003F4C9C();
      swift_allocError();
      *v27 = v5;
      *(v27 + 8) = v4;
      *(v27 + 12) = v6;
      *(v27 + 16) = v64;
      *(v27 + 20) = v24;
      goto LABEL_95;
    }
  }

  if (v21 == 43)
  {
    goto LABEL_26;
  }

  if (v21 == 125)
  {
    LOBYTE(v14) = v15;
    LOWORD(v17) = v16;
    swift_beginAccess();

    v43 = sub_1004A58D4();
    v45 = v44;

    v46 = sub_100325504(v43, v45);
    if (v47)
    {
      goto LABEL_94;
    }

    v48 = v46;
    sub_1003F4C74(*v63, v63[1], v63[2]);
    *v63 = v48;
    *(v63 + 1) = xmmword_1005036D0;
    v49 = v62;
    v50 = sub_1003F4104(v48);
    goto LABEL_98;
  }

  if (v21 != 45)
  {
    sub_1003F4CF0();
    swift_allocError();
    swift_willThrow();
  }

LABEL_26:
  v31 = v15;
  LOWORD(v14) = v16;
  swift_beginAccess();
  LOWORD(v17) = v14;
  LOBYTE(v14) = v31;

  v32 = sub_1004A58D4();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v36 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v37 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
LABEL_103:

    goto LABEL_94;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v71 = 0;
    v39 = sub_10010C818(v32, v34, 10);
    v60 = v61;
    goto LABEL_93;
  }

  if ((v34 & 0x2000000000000000) != 0)
  {
    v65[0] = v32;
    v65[1] = v34 & 0xFFFFFFFFFFFFFFLL;
    if (v32 == 43)
    {
      if (!v35)
      {
LABEL_109:
        __break(1u);
        return result;
      }

      if (--v35)
      {
        v39 = 0;
        v55 = v65 + 1;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = __CFADD__(10 * v39, v56);
          v39 = 10 * v39 + v56;
          if (v42)
          {
            break;
          }

          ++v55;
          if (!--v35)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v32 == 45)
    {
      if (!v35)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (--v35)
      {
        v39 = 0;
        v51 = v65 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = 10 * v39 >= v52;
          v39 = 10 * v39 - v52;
          if (!v42)
          {
            break;
          }

          ++v51;
          if (!--v35)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v35)
    {
      v39 = 0;
      v58 = v65;
      while (1)
      {
        v59 = *v58 - 48;
        if (v59 > 9)
        {
          break;
        }

        if (!is_mul_ok(v39, 0xAuLL))
        {
          break;
        }

        v42 = __CFADD__(10 * v39, v59);
        v39 = 10 * v39 + v59;
        if (v42)
        {
          break;
        }

        ++v58;
        if (!--v35)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v39 = 0;
    LOBYTE(v35) = 1;
    goto LABEL_92;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {
    result = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v38 = *result;
  if (v38 == 43)
  {
    if (v36 < 1)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v35 = v36 - 1;
    if (v36 == 1)
    {
      goto LABEL_91;
    }

    v39 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    v53 = result + 1;
    while (1)
    {
      v54 = *v53 - 48;
      if (v54 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = __CFADD__(10 * v39, v54);
      v39 = 10 * v39 + v54;
      if (v42)
      {
        goto LABEL_91;
      }

      ++v53;
      if (!--v35)
      {
        goto LABEL_92;
      }
    }
  }

  if (v38 != 45)
  {
    if (!v36)
    {
      goto LABEL_91;
    }

    v39 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v57 = *result - 48;
      if (v57 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = __CFADD__(10 * v39, v57);
      v39 = 10 * v39 + v57;
      if (v42)
      {
        goto LABEL_91;
      }

      ++result;
      if (!--v36)
      {
        goto LABEL_83;
      }
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    goto LABEL_107;
  }

  v35 = v36 - 1;
  if (v36 == 1)
  {
    goto LABEL_91;
  }

  v39 = 0;
  if (result)
  {
    v40 = result + 1;
    while (1)
    {
      v41 = *v40 - 48;
      if (v41 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = 10 * v39 >= v41;
      v39 = 10 * v39 - v41;
      if (!v42)
      {
        goto LABEL_91;
      }

      ++v40;
      if (!--v35)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_83:
  LOBYTE(v35) = 0;
LABEL_92:
  v71 = v35;
  v60 = v35;
LABEL_93:

  if (v60)
  {
LABEL_94:
    sub_1003F4C9C();
    swift_allocError();
    *v27 = v5;
    *(v27 + 8) = v4;
    *(v27 + 12) = v6;
    *(v27 + 16) = v64;
    *(v27 + 20) = v17;
LABEL_95:
    *(v27 + 22) = v14;
    return swift_willThrow();
  }

  sub_1003F4C74(*v63, v63[1], v63[2]);
  *v63 = v39;
  *(v63 + 1) = xmmword_1005036E0;
  v49 = v62;
  v50 = sub_1003F3FE8(v39);
LABEL_98:
  v29 = v50;

  if (!v49)
  {
    return (v29 & 1);
  }

  return result;
}

uint64_t sub_1003F3E90(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    switch(v10)
    {
      case '+':
LABEL_7:
        sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1005036E0;
        return 1;
      case '}':
        sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1005036D0;
        result = sub_1003F4104(v6);
        if (!v2)
        {
          return result & 1;
        }

        break;
      case '-':
        goto LABEL_7;
      default:
        sub_1003F4CF0();
        swift_allocError();
        return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1003F3FE8(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    if (v10 == 125)
    {
      sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
      *v1 = v6;
      *(v1 + 8) = xmmword_1005036D0;
      result = sub_1003F4104(v6);
      if (!v2)
      {
        return result & 1;
      }
    }

    else
    {
      sub_1003F4CF0();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1003F4104(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else if (v4 < v2 || v3 >= (*(v1 + 44) - v2))
  {
    return 1;
  }

  else
  {
    v5 = result;
    v6 = *(v1 + 32);
    v7 = *(v1 + 52);
    v8 = *(v1 + 54);
    swift_beginAccess();
    v9 = *(*(v6 + 24) + (v8 | (v7 << 8)) + v4);
    *(v1 + 24) = v3 + 1;
    if (v9 == 10)
    {
      sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
      result = 0;
      *v1 = 1;
      *(v1 + 8) = v5;
      *(v1 + 16) = 0x4000000000000000;
    }

    else if (v9 == 13)
    {
      sub_1003F422C(v5);
      return 0;
    }

    else
    {
      sub_1003F4CF0();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1003F422C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  if (v3 >= (*(v1 + 44) - v4))
  {
    result = sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 0;
LABEL_7:
    *v1 = v8;
    *(v1 + 8) = v2;
    *(v1 + 16) = 0x4000000000000000;
    return result;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 54);
    v6 = *(v1 + 52);
    v7 = *(v1 + 32);
    swift_beginAccess();
    if (*(*(v7 + 24) + (v5 | (v6 << 8)) + v4 + v3) == 10)
    {
      *(v1 + 24) = v3 + 1;
    }

    result = sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1003F42FC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a3);
  v7 = HIBYTE(a6);
  if (HIBYTE(a3) > 1)
  {
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v6 != 3)
      {
        return v7 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
      }

      if (v7 != 3)
      {
        return 0;
      }
    }

    return a1 == a4;
  }

  if (!v6)
  {
    if (!v7)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6);
    }

    return 0;
  }

  if (v7 == 1)
  {
    return a1 == a4;
  }

  return 0;
}

BOOL sub_1003F4380(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      if (a6 >> 61 == 1)
      {
        v9 = HIBYTE(a6) & 0x1F;
        v10 = HIBYTE(a3) & 0x1F;
        if ((HIBYTE(a3) & 0x1Fu) <= 1)
        {
          if (v10)
          {
            if (v9 == 1 && a1 == a4)
            {
              return 1;
            }
          }

          else if (!v9 && sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL))
          {
            return 1;
          }
        }

        else if (v10 == 2)
        {
          if (v9 == 2 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v10 == 3)
        {
          if (v9 == 3 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v9 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a6 >> 61)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      return a6 >> 61 == 4 && !(a5 | a4) && a6 == 0x8000000000000000;
    }

    if (a6 >> 61 != 3)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (a6 >> 61 != 2)
  {
    return 0;
  }

  return ((a4 ^ a1) & 1) == 0 && a2 == a5;
}

BOOL _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1) | ((*(a2 + 5) | (a2[7] << 16)) << 32);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v9 == 2)
    {
      if (v8 >> 61 == 2)
      {
        v10 = 0;
        if (((v2 ^ v5) & 1) != 0 || v4 != v7)
        {
          return v10;
        }

        goto LABEL_34;
      }
    }

    else if (v9 == 3)
    {
      if (v8 >> 61 == 3)
      {
LABEL_8:
        if ((v2 ^ v5))
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else if (v8 >> 61 == 4)
    {
      v10 = 0;
      if (v8 != 0x8000000000000000 || v5 | (v6 << 8) | v7)
      {
        return v10;
      }

      goto LABEL_34;
    }

    return 0;
  }

  if (!v9)
  {
    if (!(v8 >> 61))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v8 >> 61 != 1)
  {
    return 0;
  }

  v11 = v5 | (v6 << 8);
  v12 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
  v13 = v8 & 0x1F00000000000000;
  v14 = HIBYTE(v3) & 0x1F;
  if ((HIBYTE(v3) & 0x1Fu) <= 1)
  {
    if (v14)
    {
      v10 = 0;
      v15 = 0x100000000000000;
      goto LABEL_32;
    }

    if (v13)
    {
      return 0;
    }

    v16 = a1;
    v17 = a2;
    v18 = sub_10020FBD0(v12, v4, v3 & 0xFFFFFFFFFFFFFFLL, v11, v7, v8 & 0xFFFFFFFFFFFFFFLL);
    a2 = v17;
    v19 = v18;
    a1 = v16;
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 2)
    {
      v10 = 0;
      v15 = 0x200000000000000;
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v10 = 0;
      v15 = 0x300000000000000;
LABEL_32:
      if (v13 != v15 || v12 != v11)
      {
        return v10;
      }

      goto LABEL_34;
    }

    if (v13 != 0x400000000000000 || v8 & 0xFFFFFFFFFFFFFFLL | v7 | v11)
    {
      return 0;
    }
  }

LABEL_34:
  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v20 = a1;
  v21 = a2;
  if (!sub_10020FBD0(*(a1 + 4), *(a1 + 5), *(a1 + 12) | (*(a1 + 26) << 32) | (a1[54] << 48), *(a2 + 4), *(a2 + 5), *(a2 + 12) | (*(a2 + 26) << 32) | (a2[54] << 48)))
  {
    return 0;
  }

  return *(v20 + 7) == *(v21 + 7);
}

BOOL _s12NIOIMAPCore213FramingResultO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (a7 >> 62 == 2)
      {
        return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL) && a4 == a8;
      }

      return 0;
    }

    if (a7 >> 62 != 3)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    if (a7 >> 62)
    {
      return 0;
    }

LABEL_15:
    v12 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_10020FBD0(a1, a2, v12, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
  }

  return a7 >> 62 == 1 && a1 == a5;
}

unint64_t sub_1003F47C0()
{
  result = qword_1005DC708;
  if (!qword_1005DC708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidFrame, &type metadata for InvalidFrame, v0, v1);
    atomic_store(result, &qword_1005DC708);
  }

  return result;
}

unint64_t sub_1003F4818()
{
  result = qword_1005DC710;
  if (!qword_1005DC710)
  {
    result = swift_getWitnessTable("Q5\b", &type metadata for LiteralSizeParsingError, v0, v1);
    atomic_store(result, &qword_1005DC710);
  }

  return result;
}

unint64_t sub_1003F4870()
{
  result = qword_1005DC718;
  if (!qword_1005DC718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FramingResult, &type metadata for FramingResult, v0, v1);
    atomic_store(result, &qword_1005DC718);
  }

  return result;
}

unint64_t sub_1003F48C8()
{
  result = qword_1005DC720;
  if (!qword_1005DC720)
  {
    result = swift_getWitnessTable("Y4\b", &type metadata for FramingParser, v0, v1);
    atomic_store(result, &qword_1005DC720);
  }

  return result;
}

uint64_t sub_1003F4948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = ((*(a1 + 23) >> 6) & 0xFFFFFF03 | (4 * (*(a1 + 23) & 0x3F))) ^ 0xFF;
  if (v3 >= 0xFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F4998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((-a2 >> 2) - (a2 << 6)) << 56;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1003F4A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1003F4A60(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1003F4AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 24))
  {
    return (*a1 + 28);
  }

  v3 = (((*(a1 + 16) >> 59) >> 2) & 0xFFFFFFE7 | (8 * ((*(a1 + 16) >> 59) & 3))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F4B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 3) & 3) - 4 * a2) << 59;
    }
  }

  return result;
}

uint64_t sub_1003F4B78(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0x7FFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1004F5DA0;
  }

  return result;
}

unint64_t sub_1003F4BBC()
{
  result = qword_1005DC728;
  if (!qword_1005DC728)
  {
    result = swift_getWitnessTable(")1\b", &type metadata for FramingParser.State, v0, v1);
    atomic_store(result, &qword_1005DC728);
  }

  return result;
}

unint64_t sub_1003F4C10()
{
  result = qword_1005DC730;
  if (!qword_1005DC730)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for ByteToMessageDecoderError.PayloadTooLargeError, v0, v1);
    atomic_store(result, &qword_1005DC730);
  }

  return result;
}

uint64_t sub_1003F4C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1003F4C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    return sub_1003F4C8C(result, a2, a3, HIBYTE(a3) & 0x1F);
  }

  return result;
}

uint64_t sub_1003F4C8C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return v4;
}

unint64_t sub_1003F4C9C()
{
  result = qword_1005DC738;
  if (!qword_1005DC738)
  {
    result = swift_getWitnessTable("96\b", &type metadata for LiteralSizeParsingError, v0, v1);
    atomic_store(result, &qword_1005DC738);
  }

  return result;
}

unint64_t sub_1003F4CF0()
{
  result = qword_1005DC740;
  if (!qword_1005DC740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidFrame, &type metadata for InvalidFrame, v0, v1);
    atomic_store(result, &qword_1005DC740);
  }

  return result;
}

uint64_t sub_1003F4D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 24))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 23);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003F4D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003F4DE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

unint64_t sub_1003F4E28()
{
  result = qword_1005DC748;
  if (!qword_1005DC748)
  {
    result = swift_getWitnessTable(byte_100503DB8, &type metadata for LineFeedByteStrategy, v0, v1);
    atomic_store(result, &qword_1005DC748);
  }

  return result;
}

unint64_t sub_1003F4E80()
{
  result = qword_1005DC750;
  if (!qword_1005DC750)
  {
    result = swift_getWitnessTable(byte_100503DE0, &type metadata for FramingParser.LiteralHeaderState, v0, v1);
    atomic_store(result, &qword_1005DC750);
  }

  return result;
}

unint64_t sub_1003F4ED8()
{
  result = qword_1005DC758;
  if (!qword_1005DC758)
  {
    result = swift_getWitnessTable(byte_100503E88, &type metadata for FramingParser.QuotedState, v0, v1);
    atomic_store(result, &qword_1005DC758);
  }

  return result;
}

uint64_t FullDateTime.date.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 FullDateTime.time.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FullDateTime.time.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void __swiftcall FullDateTime.init(date:time:)(NIOIMAPCore2::FullDateTime *__return_ptr retstr, NIOIMAPCore2::FullDate date, NIOIMAPCore2::FullTime *time)
{
  retstr->date = date;
  v3 = *&time->second;
  *&retstr->time.hour = *&time->hour;
  *&retstr->time.second = v3;
  retstr->time.fraction.is_nil = time->fraction.is_nil;
}

uint64_t static FullTime.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void FullDateTime.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 24));
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v5);
  if (v6)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }
}

Swift::Int FullDateTime.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 24));
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v5);
  if (v6)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }

  return sub_1004A6F14();
}

BOOL sub_1003F5154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

NIOIMAPCore2::FullDate __swiftcall FullDate.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  if ((month - 13) < 0xFFFFFFFFFFFFFFF4 || (day - 32) < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

void __swiftcall FullTime.init(hour:minute:second:fraction:)(NIOIMAPCore2::FullTime *__return_ptr retstr, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int_optional fraction)
{
  retstr->hour = hour;
  retstr->minute = minute;
  retstr->second = second;
  retstr->fraction.value = fraction.value;
  retstr->fraction.is_nil = fraction.is_nil;
}

void FullTime.hash(into:)()
{
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6EB4(*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }
}

Swift::Int FullTime.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6EB4(*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003F52E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v4);
  if (v5 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v3);
  }

  return sub_1004A6F14();
}

void sub_1003F5384()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v3);
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }
}

Swift::Int sub_1003F53FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v5);
  if (v6 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003F549C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1003F54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1003F5810(a1, 4);
  v9 = v8;
  v10 = sub_1003F5810(a2, 2);
  v12 = v11;
  v13 = *(v4 + 20);
  v14 = sub_1003F5810(a3, 2);
  v16 = v15;
  v25._countAndFlagsBits = 45;
  v25._object = 0xE100000000000000;
  sub_1004A5994(v25);
  v26._countAndFlagsBits = v10;
  v26._object = v12;
  sub_1004A5994(v26);

  v27._countAndFlagsBits = 45;
  v27._object = 0xE100000000000000;
  sub_1004A5994(v27);
  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_1004A5994(v28);

  v17 = sub_1002F178C(v7, v9, v4 + 8, v13);
  if (v18)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v13);
  }

  v20 = v17;

  v22 = *(v4 + 20);
  v23 = __CFADD__(v22, v20);
  v24 = v22 + v20;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v24;
    return v20;
  }

  return result;
}

uint64_t sub_1003F5630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1003F5810(*a1, 2);
  v6 = v5;
  v7 = sub_1003F5810(*(a1 + 8), 2);
  v9 = v8;
  v10 = *(v2 + 20);
  v11 = sub_1003F5810(*(a1 + 16), 2);
  v13 = v12;
  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  sub_1004A5994(v28);
  v29._countAndFlagsBits = v7;
  v29._object = v9;
  sub_1004A5994(v29);

  v30._countAndFlagsBits = 58;
  v30._object = 0xE100000000000000;
  sub_1004A5994(v30);
  v31._countAndFlagsBits = v11;
  v31._object = v13;
  sub_1004A5994(v31);

  v14 = sub_1002F178C(v4, v6, v2 + 8, v10);
  if (v15)
  {
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v19 = *(v2 + 20);
  v20 = (v19 + v17);
  if (__CFADD__(v19, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 20) = v20;
  if (*(a1 + 32))
  {
    v21 = 0;
  }

  else
  {
    v32._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v32);

    v22 = sub_1002F178C(0x2EuLL, 0xE100000000000000, v2 + 8, v20);
    if (v23)
    {
      v24._countAndFlagsBits = 46;
      v24._object = 0xE100000000000000;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v20);
    }

    v21 = v22;

    v25 = *(v2 + 20);
    v26 = __CFADD__(v25, v21);
    v27 = v25 + v21;
    if (v26)
    {
      goto LABEL_14;
    }

    *(v2 + 20) = v27;
  }

  result = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F5810(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004A6CE4();
  v5 = v4;
  if (sub_1004A5924() >= a2)
  {
    return v3;
  }

  result = sub_1004A5924();
  v7 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    v9._countAndFlagsBits = 48;
    v9._object = 0xE100000000000000;
    v8 = sub_1004A5A74(v9, v7);

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_1004A5994(v10);

    return v8;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0;
  }

  return (*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48);
}

unint64_t sub_1003F5964()
{
  result = qword_1005DC760;
  if (!qword_1005DC760)
  {
    result = swift_getWitnessTable("y.\b", &type metadata for FullDateTime, v0, v1);
    atomic_store(result, &qword_1005DC760);
  }

  return result;
}

unint64_t sub_1003F59BC()
{
  result = qword_1005DC768;
  if (!qword_1005DC768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FullDate, &type metadata for FullDate, v0, v1);
    atomic_store(result, &qword_1005DC768);
  }

  return result;
}

unint64_t sub_1003F5A14()
{
  result = qword_1005DC770;
  if (!qword_1005DC770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FullTime, &type metadata for FullTime, v0, v1);
    atomic_store(result, &qword_1005DC770);
  }

  return result;
}

uint64_t sub_1003F5A98(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v7 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(*(a1 + 2), a2, a3, a4, a5);
  swift_beginAccess();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v6; ; i = 0)
  {
    v11 = v8 + i;
    if (!__CFADD__(v8, i))
    {
      break;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v8 = HIDWORD(qword_1005DE390);
    v9 = dword_1005DE398;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 >= v9)
    {
      v12 = v11 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_15;
  }

  v5 += 32;
  ByteBuffer._ensureAvailableCapacity(_:at:)(i, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v5, &v5[v6], v8);
  if (__CFADD__(v8, i))
  {
    goto LABEL_16;
  }

  return v7;
}

uint64_t GmailLabel.init(mailboxName:)(char *a1)
{
  v1 = sub_1003F5A98(a1, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v1;
}

Swift::String __swiftcall GmailLabel.makeDisplayString()()
{
  sub_10045C954(v0, v1, v2 & 0xFFFFFFFFFFFFFFLL);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1003F5D94(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_1003F5FB4;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73E4, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_1003F5FB4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 22);
  if (v2 == v3 || (swift_beginAccess(), *(*(v1 + 24) + (v6 | (v5 << 8)) + v3) != 92))
  {
    sub_1003B1E70(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  else
  {
    v7 = v1;
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    EncodeBuffer.writeBuffer(_:)(&v7);
  }
}

unint64_t sub_1003F6074()
{
  result = qword_1005DC778;
  if (!qword_1005DC778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GmailLabel, &type metadata for GmailLabel, v0, v1);
    atomic_store(result, &qword_1005DC778);
  }

  return result;
}

uint64_t *sub_1003F60D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = (a2 + 1);
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);

      sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      v18 = v8;
      if (!v8)
      {
        sub_1003F6698(v12, v9, a3, a4, a5, a6, a7, v50);
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        v38 = v50[8];
        v39 = v50[9];
        v40 = v50[10];
        v34 = v50[4];
        v35 = v50[5];
        v36 = v50[6];
        v37 = v50[7];
        v30 = v50[0];
        v31 = v50[1];
        v32 = v50[2];
        v33 = v50[3];
        result = sub_100193BE8(&v30);
LABEL_15:
        v61 = v38;
        v62 = v39;
        v63 = v40;
        v64 = v41;
        v57 = v34;
        v58 = v35;
        v59 = v36;
        v60 = v37;
        v53 = v30;
        v54 = v31;
        v55 = v32;
        v56 = v33;
        v21 = v39;
        *(a8 + 128) = v38;
        *(a8 + 144) = v21;
        *(a8 + 160) = v63;
        *(a8 + 176) = v64;
        v22 = v58;
        *(a8 + 64) = v57;
        *(a8 + 80) = v22;
        v23 = v60;
        *(a8 + 96) = v59;
        *(a8 + 112) = v23;
        v24 = v54;
        *a8 = v53;
        *(a8 + 16) = v24;
        v25 = v56;
        *(a8 + 32) = v55;
        *(a8 + 48) = v25;
        return result;
      }

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
    }

    swift_willThrow();
    *&v42 = v18;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      *&v42 = v18;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, v9, a3);
    sub_1003F6B10(v12, v9, a3, a4, a5, a6, a7, v51);
    v46 = v51[4];
    v47 = v51[5];
    v48 = v51[6];
    v49 = v52;
    v42 = v51[0];
    v43 = v51[1];
    v44 = v51[2];
    v45 = v51[3];
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, v9, a3);

    v34 = v46;
    v35 = v47;
    v36 = v48;
    *&v37 = v49;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    result = sub_1001AD7A0(&v30);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1003F6534@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v22 = *(result + 22);
    v23 = *(result + 10);

    sub_1003F77A0(v11, v9, a3, v24);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v23;
      *(v11 + 22) = v22;
      return swift_willThrow();
    }

    v16 = v24[9];
    *(a8 + 128) = v24[8];
    *(a8 + 144) = v16;
    *(a8 + 160) = v24[10];
    *(a8 + 176) = v25;
    v17 = v24[5];
    *(a8 + 64) = v24[4];
    *(a8 + 80) = v17;
    v18 = v24[7];
    *(a8 + 96) = v24[6];
    *(a8 + 112) = v18;
    v19 = v24[1];
    *a8 = v24[0];
    *(a8 + 16) = v19;
    v20 = v24[3];
    *(a8 + 32) = v24[2];
    *(a8 + 48) = v20;
  }

  return result;
}

uint64_t *sub_1003F6698@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);

      sub_1003FD618(v11, v9, a3, a4, a5, a6, a7, v37);
      if (!v8)
      {
        v22 = &v38;

        v23 = v37;
        goto LABEL_21;
      }

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {

      sub_1003FDCF0(v11, v9, a3, a4, a5, a6, a7, v39);
      v22 = &v40;

      v23 = v39;
LABEL_21:
      v24 = *(v22 + 3);
      v45 = *(v22 + 2);
      v46 = v24;
      v47 = *(v22 + 4);
      v25 = *(v22 + 1);
      v43 = *v22;
      v44 = v25;
      v26 = *(v23 + 2);
      *(a8 + 16) = *(v23 + 1);
      *(a8 + 32) = v26;
      v27 = *(v23 + 4);
      *(a8 + 48) = *(v23 + 3);
      *(a8 + 64) = v27;
      v28 = v43;
      *(a8 + 104) = v44;
      *(a8 + 88) = v28;
      v29 = v46;
      *(a8 + 152) = v47;
      v30 = v45;
      *(a8 + 136) = v29;
      v48 = v22[10];
      v31 = v23[10];
      v32 = v23[1];
      *a8 = *v23;
      *(a8 + 8) = v32;
      *(a8 + 80) = v31;
      *(a8 + 168) = v48;
      *(a8 + 120) = v30;
      return result;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v9 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v21 = a3;
        return swift_willThrow();
      }

      sub_1003FD2FC(v11, v9, a3, a4, a5, a6, a7, v41);
      v22 = &v42;

      v23 = v41;
      goto LABEL_21;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F6B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = a3;
  if (v18 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v20 = v14;
    return swift_willThrow();
  }

  v13 = a7;
  v8 = a6;
  v15 = a5;
  v12 = a4;
  v11 = a1;
  v78 = a8;
  v19 = *a1;
  v16 = a1[1];
  LODWORD(v113) = *(a1 + 4);
  v81 = *(a1 + 10);
  v79 = *(a1 + 22);
  v98 = _swiftEmptyArrayStorage;

  sub_10047199C(v11, &v98, v18, v14, v12, v15, v8, v13);
  if (v9)
  {

LABEL_9:
    *v11 = v19;
    *(v11 + 8) = v16;
    *(v11 + 16) = v113;
    *(v11 + 20) = v81;
    *(v11 + 22) = v79;
    return swift_willThrow();
  }

  v76 = v19;

  if (v18 + 1 >= v14)
  {

    sub_1003A5228();
    swift_allocError();
    *v21 = v14;
    swift_willThrow();
    goto LABEL_9;
  }

  v75 = v98;
  sub_100469DF8(v11);
  v23 = sub_10041FC00(v11, v18, v14, v12, v15, v8, v13);
  v10 = 0;
  v73 = v24;
  v74 = *v11;
  v69 = v23;
  v17 = *(v11 + 8);
  v71 = *(v11 + 20);
  v72 = *(v11 + 16);
  v70 = *(v11 + 22);
  if (v18 + 2 >= v14)
  {
    sub_1003A5228();
    v10 = swift_allocError();
    *v25 = v14;
LABEL_25:
    v28 = v74;
    goto LABEL_26;
  }

  sub_100469DF8(v11);
  v68 = v18 + 3;
  if (v18 + 3 < v14)
  {
    swift_retain_n();
    sub_1003FC4D8(v11, v18 + 3, v14, v12, v15, v8, v13);
LABEL_31:
    v65 = a3;
    v66 = a2;
    v67 = a1;
    goto LABEL_32;
  }

  sub_1003A5228();
  v10 = swift_allocError();
  *v26 = v14;

  swift_willThrow();
  *&v90 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v90 = v10;
    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_24;
    }
  }

  if (v68 >= v14)
  {

    sub_1003A5228();
    v10 = swift_allocError();
    *v27 = v14;
    swift_willThrow();
LABEL_24:

    goto LABEL_25;
  }

  sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v68, v14);
  v10 = 0;
  sub_100266C9C(_swiftEmptyArrayStorage);
  v66 = v41;
  v67 = v40;
  v65 = v42;
LABEL_32:

  v43 = *v11;
  v44 = *(v11 + 8);
  v63 = *(v11 + 20);
  v64 = *(v11 + 16);
  v45 = v18 + 4;
  v62 = *(v11 + 22);
  if (v45 >= v14)
  {
    sub_1003A5228();
    v10 = swift_allocError();
    *v46 = v14;
  }

  else
  {

    sub_100469DF8(v11);
    if (!v10)
    {

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v45, v14);

      v55 = sub_10046F674(v11, v68, v14, v12, v15, v8, v13);
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v90 = 0uLL;
      v91 = 0uLL;
      *&v92 = 0;
      *(&v92 + 1) = v55;
      *&v93 = v57;
      *(&v93 + 1) = v59;
      *&v94 = v61;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = v55;
      v104 = v57;
      v105 = v59;
      v106 = v61;
      sub_1003E2704(&v90, &v83);
      sub_1003E273C(&v98);
      v54 = *(&v90 + 1);
      v113 = v90;
      v48 = *(&v91 + 1);
      v47 = v91;
      v50 = *(&v92 + 1);
      v49 = v92;
      v52 = *(&v93 + 1);
      v51 = v93;
      v53 = v94;
      goto LABEL_38;
    }
  }

  swift_willThrow();
  v28 = v74;
  *v11 = v43;
  *(v11 + 8) = v44;
  *(v11 + 16) = v64;
  *(v11 + 20) = v63;
  *(v11 + 22) = v62;
  swift_willThrow();
  *&v90 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v113 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
LABEL_38:
    v84 = xmmword_1004B1230;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    *&v88 = 0;
    sub_100025F40(&v84, &qword_1005DBCD8, &qword_1004FE5F0);
    *&v90 = v67;
    *(&v90 + 1) = v66;
    *&v91 = v65;
    *(&v91 + 1) = v113;
    *&v92 = v54;
    *(&v92 + 1) = v47;
    *&v93 = v48;
    *(&v93 + 1) = v49;
    *&v94 = v50;
    *(&v94 + 1) = v51;
    *&v95 = v52;
    *(&v95 + 1) = v53;
    v98 = v67;
    v99 = v66;
    v100 = v65;
    v101 = v113;
    v102 = v54;
    v103 = v47;
    v104 = v48;
    v105 = v49;
    v106 = v50;
    v107 = v51;
    v108 = v52;
    v109 = v53;
    sub_100400058(&v90, &v83);
    sub_1004000B4(&v98);
    v113 = v90;
    v80 = v91;
    v82 = *(&v90 + 1);
    v77 = *(&v91 + 1);
    v30 = *(&v92 + 1);
    v29 = v92;
    v32 = *(&v93 + 1);
    v31 = v93;
    v34 = *(&v94 + 1);
    v33 = v94;
    v36 = *(&v95 + 1);
    v35 = v95;
    goto LABEL_28;
  }

  v19 = v76;
LABEL_26:
  swift_willThrow();
  *v11 = v28;
  *(v11 + 8) = v17;
  *(v11 + 16) = v72;
  *(v11 + 20) = v71;
  *(v11 + 22) = v70;
  swift_willThrow();
  *&v90 = v10;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v113 = 0;
  v80 = 0;
  v82 = 0;
  v77 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_28:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v84 = 0u;
  sub_100025F40(&v84, &qword_1005DBCC8, &qword_1004FE5E0);
  *&v90 = v75;
  *(&v90 + 1) = v69;
  *&v91 = v73;
  *(&v91 + 1) = v113;
  *&v92 = v82;
  *(&v92 + 1) = v80;
  *&v93 = v77;
  *(&v93 + 1) = v29;
  *&v94 = v30;
  *(&v94 + 1) = v31;
  *&v95 = v32;
  *(&v95 + 1) = v33;
  *&v96 = v34;
  *(&v96 + 1) = v35;
  v97 = v36;
  v98 = v75;
  v99 = v69;
  v100 = v73;
  v101 = v113;
  v102 = v82;
  v103 = v80;
  v104 = v77;
  v105 = v29;
  v106 = v30;
  v107 = v31;
  v108 = v32;
  v109 = v33;
  v110 = v34;
  v111 = v35;
  v112 = v36;
  sub_100259A40(&v90, &v83);
  result = sub_100267AA8(&v98);
  v37 = v95;
  *(v78 + 64) = v94;
  *(v78 + 80) = v37;
  *(v78 + 96) = v96;
  *(v78 + 112) = v97;
  v38 = v91;
  *v78 = v90;
  *(v78 + 16) = v38;
  v39 = v93;
  *(v78 + 32) = v92;
  *(v78 + 48) = v39;
  return result;
}

void sub_1003F77A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  sub_10046CFC0(a1, a2, v5);
  v10 = v9;
  v11 = 0;
  v67 = a2 + 1;
  v12 = __OFADD__(a2, 1);
  v95 = v12;
  v64 = 1;
  v69 = a2;
  while (1)
  {

    v13 = *(a1 + 8);
    if (*(a1 + 12) == v13)
    {
LABEL_60:
      sub_1003A5324();
      swift_allocError();
LABEL_58:
      swift_willThrow();
      return;
    }

    v14 = a4;
    v15 = v11;
    v16 = *(a1 + 22);
    v17 = *(a1 + 20);
    v18 = *a1;
    swift_beginAccess();
    if (v13 == -1)
    {
      goto LABEL_80;
    }

    v19 = v15 + (HIDWORD(v10) - v10) + 1;
    LODWORD(v16) = *(*(v18 + 24) + (v16 | (v17 << 8)) + v13);
    *(a1 + 8) = v13 + 1;
    if (v16 > 40)
    {
      a4 = v14;
      if (v16 == 41)
      {
        v26 = v64 - 1;
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_82;
        }

        --v64;
        v22 = v69;
        if (v26 <= 0)
        {
          sub_1000519B0(&v73);
          v55 = v82;
          *(v14 + 128) = v81;
          *(v14 + 144) = v55;
          *(v14 + 160) = v83;
          *(v14 + 176) = v84;
          v56 = v78;
          *(v14 + 64) = v77;
          *(v14 + 80) = v56;
          v57 = v80;
          *(v14 + 96) = v79;
          *(v14 + 112) = v57;
          v58 = v74;
          *v14 = v73;
          *(v14 + 16) = v58;
          v59 = v76;
          *(v14 + 32) = v75;
          *(v14 + 48) = v59;
          return;
        }

        v11 = v19;
        v21 = 0;
      }

      else
      {
        if (v16 != 123)
        {
LABEL_67:
          *&v73 = 0;
          *(&v73 + 1) = 0xE000000000000000;
          sub_1004A6724(36);

          *&v73 = 0xD000000000000010;
          *(&v73 + 1) = 0x80000001004B07E0;
          LOBYTE(v87) = v16;
          v99._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v99);

          v100._countAndFlagsBits = 0xD000000000000012;
          v100._object = 0x80000001004B0800;
          sub_1004A5994(v100);
          v53 = v73;
          sub_1003A527C();
          swift_allocError();
          *v54 = v53;
          *(v54 + 16) = 0xD000000000000020;
          *(v54 + 24) = 0x80000001004B03C0;
          *(v54 + 32) = 130;
          goto LABEL_58;
        }

        v11 = v19;
        v22 = v69;
        v23 = sub_10046C278(a1, v69, v5, 1);
        v24 = v23;
        if ((v23 & 0x8000000000000000) != 0)
        {
          sub_1003A527C();
          swift_allocError();
          *v60 = 0xD000000000000011;
          v60[1] = 0x80000001004B08A0;
          v60[2] = 0xD000000000000020;
          v60[3] = 0x80000001004B03C0;
          v60[4] = 202;
LABEL_71:
          swift_willThrow();
          sub_1003A527C();
          swift_allocError();
          *v62 = 0xD000000000000022;
          v62[1] = 0x80000001004B0870;
          v62[2] = 0xD000000000000020;
          v62[3] = 0x80000001004B03C0;
          v62[4] = 115;
          swift_willThrow();

          return;
        }

        v25 = (200000 - v11) & ~((200000 - v11) >> 63);
        if (v25 < v23)
        {
          sub_1003FF690();
          swift_allocError();
          *v61 = v24;
          v61[1] = v25;
          goto LABEL_71;
        }

        sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, a1, v69, v5);
        sub_100464188(a1, v69, v5);
        if (!ByteBuffer.readSlice(length:)(v24))
        {
          goto LABEL_60;
        }

        v21 = 0;
      }
    }

    else
    {
      a4 = v14;
      if (v16 == 34)
      {
        v21 = 1;
        v22 = v69;
        v11 = v19;
      }

      else
      {
        if (v16 != 40)
        {
          goto LABEL_67;
        }

        v20 = __OFADD__(v64++, 1);
        if (v20)
        {
          goto LABEL_83;
        }

        v11 = v19;
        v21 = 0;
        v22 = v69;
      }
    }

    v65 = v5;
    v66 = a4;
    if (v11 >= 200000)
    {
      goto LABEL_61;
    }

LABEL_24:
    if (v21)
    {
      break;
    }

    sub_10046CFC0(a1, v22, v5);
    v10 = v47;
  }

  if (v95)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (v67 >= v5)
  {
    sub_1003A5228();
    swift_allocError();
    *v49 = v5;
    goto LABEL_58;
  }

  v28 = *(a1 + 8);
  v27 = *(a1 + 12);
  if (v27 < v28)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v68 = v11;
  v16 = *(a1 + 16);
  v29 = *(a1 + 20);
  v30 = *(a1 + 22);
  v71 = v30 | (v29 << 8);
  if (v16 - v71 < v27)
  {
    goto LABEL_74;
  }

  v31 = *a1;
  *&v73 = *a1;
  *(&v73 + 1) = __PAIR64__(v27, v28);
  LODWORD(v74) = v16;
  v72 = v29;
  WORD2(v74) = v29;
  v70 = v30;
  BYTE6(v74) = v30;
  *(&v74 + 1) = v28;
  *&v75 = v27;
  v32 = v28;
  while (1)
  {
    if (v27 == v32)
    {
      swift_retain_n();
      sub_1003A52D0(&v73);
      sub_1003A5324();
      swift_allocError();
      swift_willThrow();

      *a1 = v31;
      *(a1 + 8) = v28;
      *(a1 + 12) = v27;
      *(a1 + 16) = v16;
      *(a1 + 20) = v72;
      *(a1 + 22) = v70;
      goto LABEL_58;
    }

    if (v32 < DWORD2(v73))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v32 - DWORD2(v73)) >= (HIDWORD(v73) - DWORD2(v73)))
    {
      goto LABEL_65;
    }

    v33 = v73;
    v34 = WORD2(v74);
    v35 = BYTE6(v74);
    swift_beginAccess();
    v36 = *(*(v33 + 24) + (v35 | (v34 << 8)) + v32);
    if (v36 == 34 || v36 == 92)
    {
      break;
    }

    v20 = __OFADD__(v32++, 1);
    if (v20)
    {
      goto LABEL_66;
    }
  }

  v37 = v31;
  swift_retain_n();
  sub_1003A52D0(&v73);
  v87 = v31;
  v88 = v28;
  v89 = v27;
  v90 = v16;
  v91 = v72;
  v92 = v70;
  v93 = v28;
  v94 = v27;

  sub_1003A52D0(&v87);
  v20 = __OFSUB__(v32, v93);
  v38 = v32 - v93;
  if (v20)
  {
    goto LABEL_75;
  }

  if (v27 < v38 || (v27 - v38) < v28)
  {
    goto LABEL_76;
  }

  if (__CFADD__(v71, v28))
  {
    goto LABEL_77;
  }

  if ((v71 + v28) >> 24)
  {
    v63 = v63 & 0xFF00000000000000 | v16 | (v72 << 32) | (v70 << 48);
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v28, v38, v31);
    v40 = v39;

    v41 = HIDWORD(v40);
  }

  else
  {

    LODWORD(v40) = 0;
    LODWORD(v41) = v38;
  }

  v42 = v28 + v38;
  if (__CFADD__(v28, v38))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *(a1 + 8) = v42;
  v5 = v65;
  a4 = v66;
  if (v27 == v42)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v43 = v42 + 1;
  if (v42 == -1)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v11 = v68 + (v41 - v40) + 1;
  v44 = *(*(v37 + 24) + v71 + v42);
  *(a1 + 8) = v43;
  if (v44 == 34)
  {
    v21 = 0;
LABEL_54:
    v22 = v69;
    if (v11 < 200000)
    {
      goto LABEL_24;
    }

LABEL_61:
    sub_1003A527C();
    swift_allocError();
    *v48 = 0xD000000000000017;
    v48[1] = 0x80000001004B0820;
    v48[2] = 0xD000000000000020;
    v48[3] = 0x80000001004B03C0;
    v48[4] = 89;
    swift_willThrow();
  }

  else
  {
    if (v44 != 92)
    {
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1004A6724(50);

      v85 = 0xD000000000000010;
      v86 = 0x80000001004B07E0;
      v96 = v44;
      v97._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v97);

      v98._object = 0x80000001004B0840;
      v98._countAndFlagsBits = 0xD000000000000020;
      sub_1004A5994(v98);
      v50 = v85;
      v51 = v86;
      sub_1003A527C();
      swift_allocError();
      *v52 = v50;
      v52[1] = v51;
      v52[2] = 0xD000000000000020;
      v52[3] = 0x80000001004B03C0;
      v52[4] = 152;
      swift_willThrow();
      return;
    }

    if (v27 == v43)
    {
      goto LABEL_60;
    }

    v45 = __CFADD__(v43, 1);
    v46 = v43 + 1;
    if (!v45)
    {
      *(a1 + 8) = v46;
      ++v11;
      v21 = 1;
      goto LABEL_54;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

uint64_t sub_1003F80CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v27 = a3;
  }

  else
  {
    v21 = *a1;
    v22 = a1[1];
    v23 = *(a1 + 4);
    v40 = *(a1 + 22);
    v41 = *(a1 + 10);

    v24 = sub_10041F1D8(a1, v14, a3, a5, a6, a7, a8);
    if (!v8)
    {
      v11 = v25;
      v10 = v26;
      v14 = v24;

      v12 = 0;
      goto LABEL_17;
    }

    *a1 = v21;
    a1[1] = v22;
    *(a1 + 4) = v23;
    *(a1 + 10) = v41;
    *(a1 + 22) = v40;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
    }
  }

  if (v14 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v34 = a3;
    return swift_willThrow();
  }

  v28 = *a1;
  v29 = a1[1];
  v30 = *(a1 + 4);
  v31 = *(a1 + 10);
  v32 = *(a1 + 22);

  v33 = sub_10046C278(a1, v14, a3, 1);
  if (v33 < 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v39 = 0xD000000000000011;
    v39[1] = 0x80000001004B08A0;
    v39[2] = 0xD000000000000020;
    v39[3] = 0x80000001004B03C0;
    v39[4] = 202;
    swift_willThrow();

    *a1 = v28;
    a1[1] = v29;
    *(a1 + 4) = v30;
    *(a1 + 10) = v31;
    *(a1 + 22) = v32;
    return swift_willThrow();
  }

  v14 = v33;

  v11 = 0;
  v10 = 0;
  v12 = 1;
LABEL_17:
  v13 = a4;
  v9 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_23:
    result = sub_100461108(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v37 = *(v9 + 16);
  v36 = *(v9 + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_100461108((v36 > 1), v37 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v37 + 1;
  v38 = v9 + 24 * v37;
  *(v38 + 32) = v14;
  *(v38 + 40) = v11;
  *(v38 + 54) = BYTE6(v10);
  *(v38 + 52) = WORD2(v10);
  *(v38 + 48) = v10;
  *(v38 + 55) = v12;
  *v13 = v9;
  return result;
}

uint64_t sub_1003F8478(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_1003F8884(a1, a2, a3, a4, a5, a6, a7, a8);
    v24 = a8;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];
      v20 = *(a1 + 4);
      v22 = *(a1 + 22);
      v23 = *(a1 + 10);
      if (a2 + 1 < a3)
      {
        swift_retain_n();
        sub_100469DF8(a1);
        while (1)
        {

          sub_1003F80CC(a1, a2, a3, a4, a5, a6, a7, v24);

          swift_retain_n();
          sub_100469DF8(a1);
        }
      }

      sub_1003A5228();
      swift_allocError();
      *v21 = a3;

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *a1 = v18;
        a1[1] = v19;
        *(a1 + 4) = v20;
        *(a1 + 10) = v23;
        *(a1 + 22) = v22;

        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1003F8884(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *a1;
  v18 = a1[1];
  v21 = *(a1 + 10);
  v22 = *(a1 + 4);
  v20 = *(a1 + 22);

  sub_1003F80CC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    *a1 = v17;
    a1[1] = v18;
    *(a1 + 4) = v22;
    *(a1 + 10) = v21;
    *(a1 + 22) = v20;

    sub_1003F8478(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t *sub_1003F8A18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_1003F8B6C(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    *(a8 + 32) = v25[2];
    *(a8 + 48) = v20;
    *(a8 + 64) = v25[4];
    *(a8 + 80) = v26;
    v21 = v25[1];
    *a8 = v25[0];
    *(a8 + 16) = v21;
  }

  return result;
}

uint64_t sub_1003F8B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a5;
  result = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v59 = a8;
    if (result)
    {
      v57 = v11;
      v20 = v18;
      v21 = v19;

      sub_10046C184(v22, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 231);
      v24 = v23;
      v26 = v25;

      v56 = v24;
      v11 = v57;
    }

    else
    {
      v56 = 0;
      v26 = 0;
    }

    v27 = __OFADD__(a2, 1);
    v28 = (a2 + 1);
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v58 = v26;
      if (v28 >= a3)
      {
        sub_1003A5228();
        v30 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v29 = a1[1];
        v53 = *(a1 + 10);
        v54 = *(a1 + 4);
        v52 = *(a1 + 22);
        v55 = *a1;
        if ((v28 + 1) < a3)
        {

          sub_100469DF8(a1);

          sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, (v28 + 1), a3);
          v80 = 0;

          v36 = sub_10046F674(a1, v28, a3, a4, v11, a6, a7);
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v63 = 0uLL;
          v64 = 0uLL;
          *&v65 = 0;
          *(&v65 + 1) = v36;
          *&v66 = v38;
          *(&v66 + 1) = v40;
          *&v67 = v42;
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = v36;
          v75 = v38;
          v76 = v40;
          v77 = v42;
          sub_1003E2704(&v63, v60);
          sub_1003E273C(&v69);
          v44 = *(&v63 + 1);
          v43 = v63;
          v46 = *(&v64 + 1);
          v45 = v64;
          v48 = *(&v65 + 1);
          v47 = v65;
          v50 = *(&v66 + 1);
          v49 = v66;
          v51 = v67;
LABEL_13:
          v61[0] = xmmword_1004B1230;
          memset(&v61[1], 0, 48);
          v62 = 0;
          sub_100025F40(v61, &qword_1005DBCD8, &qword_1004FE5F0);
          *&v63 = v56;
          *(&v63 + 1) = v58;
          *&v64 = v43;
          *(&v64 + 1) = v44;
          *&v65 = v45;
          *(&v65 + 1) = v46;
          *&v66 = v47;
          *(&v66 + 1) = v48;
          *&v67 = v49;
          *(&v67 + 1) = v50;
          v68 = v51;
          v69 = v56;
          v70 = v58;
          v71 = v43;
          v72 = v44;
          v73 = v45;
          v74 = v46;
          v75 = v47;
          v76 = v48;
          v77 = v49;
          v78 = v50;
          v79 = v51;
          sub_1003FF7C8(&v63, v60);
          result = sub_1003FF824(&v69);
          v34 = v66;
          *(v59 + 32) = v65;
          *(v59 + 48) = v34;
          *(v59 + 64) = v67;
          *(v59 + 80) = v68;
          v35 = v64;
          *v59 = v63;
          *(v59 + 16) = v35;
          return result;
        }

        sub_1003A5228();
        v32 = swift_allocError();
        *v33 = a3;
        v80 = v32;
        swift_willThrow();
        *a1 = v55;
        a1[1] = v29;
        *(a1 + 4) = v54;
        *(a1 + 10) = v53;
        *(a1 + 22) = v52;
        v30 = v80;
      }

      swift_willThrow();
      *&v63 = v30;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        v43 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v80 = 0;
        v44 = 1;
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t *sub_1003F9178(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = *result;
      v12 = result[1];
      v13 = *(result + 4);
      v22 = *(result + 22);
      v23 = *(result + 10);

      sub_1003FC4D8(v10, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
LABEL_14:
        v20 = v18;

        return v20;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v23;
      *(v10 + 22) = v22;
    }

    swift_willThrow();
    swift_errorRetain();
    v20 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v20;
      }

      v20 = v24;
    }

    if (v8 < a3)
    {

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      sub_100266C9C(_swiftEmptyArrayStorage);
      goto LABEL_14;
    }

    sub_1003A5228();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1003F9428@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_1003F956C(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    a8[2] = v25[2];
    a8[3] = v20;
    a8[4] = v25[4];
    v21 = v25[1];
    *a8 = v25[0];
    a8[1] = v21;
  }

  return result;
}

uint64_t sub_1003F956C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1003F9178(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v51 = v19;
      v52 = v18;
      v53 = result;
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
LABEL_6:
        swift_willThrow();
      }

      v48 = a8;
      sub_100469DF8(a1);
      if (sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7))
      {
        v24 = v22;
        v25 = v23;

        sub_10046C184(v26, v24, v25 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 264);
        v28 = v27;
        v45 = v29;

        v30 = v28;
      }

      else
      {
        v45 = 0;
        v30 = 0;
      }

      sub_100469DF8(a1);

      v49 = v30;
      if (sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7))
      {
        v33 = v31;
        v34 = v32;

        sub_10046C184(v35, v33, v34 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 269);
        v44 = v36;
        v38 = v37;
      }

      else
      {
        v44 = 0;
        v38 = 0;
      }

      sub_100469DF8(a1);

      v47 = v38;
      v46 = sub_1003F9B6C(a1, a2, a3, a4, a5, a6, a7);
      v50 = v39;

      sub_100469DF8(a1);
      a8 = 0;
    }

    v40 = sub_10046C278(a1, a2, a3, 1);
    if (a8)
    {
    }

    if ((v40 & 0x8000000000000000) == 0)
    {
      *&v55 = v53;
      *(&v55 + 1) = v52;
      *&v56 = v51;
      *(&v56 + 1) = v45;
      *&v57 = v49;
      *(&v57 + 1) = v44;
      *&v58 = v47;
      *(&v58 + 1) = v46;
      *&v59 = v50;
      *(&v59 + 1) = v40;
      v60[0] = v53;
      v60[1] = v52;
      v60[2] = v51;
      v60[3] = v45;
      v60[4] = v49;
      v60[5] = v44;
      v60[6] = v47;
      v60[7] = v46;
      v60[8] = v50;
      v60[9] = v40;
      sub_1003F088C(&v55, v54);
      result = sub_1003F08C4(v60);
      v41 = v58;
      v48[2] = v57;
      v48[3] = v41;
      v48[4] = v59;
      v42 = v56;
      *v48 = v55;
      v48[1] = v42;
      return result;
    }

    sub_1003A527C();
    swift_allocError();
    *v43 = 0xD000000000000011;
    v43[1] = 0x80000001004B08A0;
    v43[2] = 0xD000000000000020;
    v43[3] = 0x80000001004B03C0;
    v43[4] = 202;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003F9B6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC788, &qword_100504110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D0FC0;
  *(inited + 32) = sub_1003FA0D8;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1003FA0FC;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1003FA120;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1003FA148;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1003FA260;
  *(inited + 104) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1003FFEA8;
  *(v15 + 24) = v14;
  *(inited + 112) = sub_1003FFEC8;
  *(inited + 120) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003FFEE0;
  *(v17 + 24) = v16;
  *(inited + 128) = sub_100400390;
  *(inited + 136) = v17;
  swift_retain_n();
  sub_1003FA354(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 381);
  v19 = v18;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v19;
}

uint64_t sub_1003F9DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
    sub_10046C184(v18, v20, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 301);
    v29 = sub_1004A5814();
    v30 = v21;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
    }

    else
    {

      sub_100469DF8(a1);

      v23 = sub_1003F9178(a1, a2, a3, a4, a5, a6, a7);
      v25 = v24;
      v27 = v26;
      v28 = v23;
      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

      *a8 = v29;
      a8[1] = v30;
      a8[2] = v28;
      a8[3] = v25;
      a8[4] = v27;
    }
  }

  return result;
}

uint64_t sub_1003FA038(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    sub_10046C184(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 325);
    v7 = sub_1004A5834();
  }

  return v7;
}

uint64_t sub_1003FA170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_1004A5834();
  v14 = v13;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  if (v5)
  {
  }

  sub_10046B71C(a3, a4, 0, 0, a1, v10, v11);
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_1003FA260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1004A5834();
  v10 = v9;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (v3)
  {
  }

  sub_10046B71C(0xD000000000000010, 0x80000001004AD7B0, 0, 0, a1, v6, v7);
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  *a3 = v8;
  a3[1] = v10;
  return result;
}

void sub_1003FA354(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1003FFF94(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FA628(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_100400120(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FA900(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_100400108(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FABD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004001F0(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FAEB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003C0(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FB188(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003A8(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FB45C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003A8(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1003FB730(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1003A527C();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x80000001004B08C0;
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a7;
    swift_willThrow();

    return;
  }

  v26 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v26 >= a4)
      {
        sub_1003A5228();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v24 = v12;
        v25 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1004003D8(a2, v26, v17, &v27);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v24;
        v8 = v25;
      }

      swift_willThrow();
      v28 = v9;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v9;
        swift_errorRetain();
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t *sub_1003FBA08(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v13 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v28 = *(result + 22);
      v29 = *(result + 10);

      sub_1003FBD94(v13, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        a6 = v17;
LABEL_15:

        return a6;
      }

      *v13 = v14;
      v13[1] = v15;
      *(v13 + 4) = v16;
      *(v13 + 10) = v29;
      *(v13 + 22) = v28;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return a6;
      }
    }

    if (v8 < a3)
    {

      v19 = sub_10041F1D8(v13, v8, a3, a4, a5, a6, a7);
      v23 = v19;
      if (!v19)
      {

        return _swiftEmptyArrayStorage;
      }

      v24 = v20;
      v25 = v21;
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_1004CEAA0;
      sub_10046C184(v23, v24, v25 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 402);
      *(a6 + 32) = v26;
      *(a6 + 40) = v27;

      goto LABEL_15;
    }

    sub_1003A5228();
    swift_allocError();
    *v22 = a3;
    swift_willThrow();
    return a6;
  }

  __break(1u);
  return result;
}

void sub_1003FBD94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v15 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
    v17 = v16;
    v50 = a5;
    v51 = a6;
    v52 = a7;
    v53 = a2;
    v18 = v15;
    v20 = v19;
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004CEAA0;
    sub_10046C184(v18, v20, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 409);
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
    }

    else
    {
      if (v53 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v39 = a3;
      }

      else
      {
        v24 = a1[1];
        v44 = *(a1 + 10);
        v45 = *(a1 + 4);
        v43 = *(a1 + 22);
        v46 = *a1;

        if (v53 + 2 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v40 = a3;
          v41 = v46;
        }

        else
        {
          v25 = *a1;
          v26 = a1[1];
          v27 = *(a1 + 4);
          v28 = *(a1 + 10);
          v47 = *(a1 + 22);
          if (v53 + 3 < a3)
          {
            v29 = v21;
            do
            {
              v49 = v29;
              swift_retain_n();
              sub_100469DF8(a1);

              v30 = sub_10041F498(a1, v53 + 2, a3, a4, v50, v51, v52);
              sub_10046C184(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 415);
              v48 = v33;
              v35 = v34;

              v29 = v49;
              v37 = *(v49 + 2);
              v36 = *(v49 + 3);
              if (v37 >= v36 >> 1)
              {
                v29 = sub_100085070((v36 > 1), v37 + 1, 1, v49);
              }

              *(v29 + 2) = v37 + 1;
              v38 = &v29[16 * v37];
              *(v38 + 4) = v35;
              *(v38 + 5) = v48;
              v25 = *a1;
              v26 = a1[1];
              v27 = *(a1 + 4);
              v28 = *(a1 + 10);
              v47 = *(a1 + 22);
            }

            while (v53 + 3 < a3);
          }

          sub_1003A5228();
          swift_allocError();
          *v42 = a3;

          swift_willThrow();
          v41 = v46;

          *a1 = v25;
          a1[1] = v26;
          *(a1 + 4) = v27;
          *(a1 + 10) = v28;
          *(a1 + 22) = v47;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {

          sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, v53, a3);

          return;
        }

        *a1 = v41;
        a1[1] = v24;
        *(a1 + 4) = v45;
        *(a1 + 10) = v44;
        *(a1 + 22) = v43;
      }

      swift_willThrow();
    }
  }
}

void sub_1003FC270(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_10041F498(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_10046C184(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 445);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a2 + 1 < a3)
    {

      sub_100469DF8(a1);

      v19 = sub_10041F4C4(a1, a2, a3, a4, a5, a6, a7);
      v22 = HIDWORD(v20) - v20;
      if (HIDWORD(v20) >= v20)
      {
        if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) >= HIDWORD(v20))
        {
          v24[1] = v20;
          v25 = v21;
          v26 = WORD2(v21);
          v27 = BYTE6(v21);
          v28 = v20;
          v29 = HIDWORD(v20);
          v23[0] = 0;
          v23[1] = 0xE000000000000000;
          v24[0] = v19;

          sub_1004A5874(v22);
          sub_1003BB2E4(v24, v23);

          sub_1003A52D0(v24);
          return;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1003A5228();
    swift_allocError();
    *v18 = a3;
    swift_willThrow();
  }
}

void sub_1003FC4D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v20[0] = 0;
    v20[1] = _swiftEmptyArrayStorage;
    v20[2] = _swiftEmptyArrayStorage;
    sub_1003FC270(a1, a2, a3, a4, a5, a6, a7);
    sub_1002626BC(v17, v18, v15, v16);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;

      swift_willThrow();
    }

    else
    {
      swift_retain_n();

      sub_100467378(a1, a2 + 1, a3, v20, a4, a5, a6, a7);

      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }
}

uint64_t sub_1003FC71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v10 = v6[1];
  v11 = *(v10 + 16);
  if (!*v6)
  {
    if (v11)
    {
      v51 = v6;
      v52 = a1;
      v49 = a2;
      v50 = a3;
      v20 = HIDWORD(a6);
      v55 = WORD2(a6);
      v21 = BYTE6(a6);
      v22 = HIDWORD(a5) - a5;
      swift_beginAccess();
      v16 = 0;
      v48 = v8;
      v23 = (v10 + 54);
      v53 = (v21 & 0xFFFFFFFFFF0000FFLL | (v20 << 8)) + v8;
      v54 = v21;
      do
      {
        v24 = *(v23 - 14);
        v25 = *(v23 - 10);
        if (v25 - v24 == v22)
        {
          v26 = *(v23 - 22);
          v27 = *(v23 - 1);
          v28 = *v23;
          v29 = *(v23 - 6) == a6 && v27 == v55;
          v30 = v29 && v28 == v54;
          v31 = v30 && v26 == a4;
          if (v31 || (swift_beginAccess(), !memcmp((*(v26 + 24) + (v28 | (v27 << 8)) + v24), (*(a4 + 24) + v53), v25 - v24)))
          {

            v11 = 0;
            v32 = v50;
            v6 = v51;
            v13 = v49;
            goto LABEL_21;
          }
        }

        v23 += 24;
        ++v16;
      }

      while (v11 != v16);
      v11 = 0;
      a3 = v50;
      v6 = v51;
      v8 = v48;
      a2 = v49;
      a1 = v52;
      v7 = a6;
    }

    goto LABEL_29;
  }

  v52 = a1;
  v12 = a3;
  v13 = a2;

  v14 = v7;
  v15 = v8;
  v16 = sub_100475648();
  v18 = v17;
  v11 = v19;

  if (v18)
  {
    v8 = v15;
    v7 = v14;
    a2 = v13;
    a3 = v12;
    a1 = v52;
LABEL_29:
    if (a1 == 1)
    {
    }

    v36 = a1;
    v37 = a3;
    v38 = a2;
    sub_10046A8C4(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v11);

    v41 = v6[2];
    v39 = v6 + 2;
    v40 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v41;
    v42 = v36;
    if ((result & 1) == 0)
    {
      result = sub_1003E551C(0, *(v40 + 16) + 1, 1);
      v40 = *v39;
    }

    v43 = v38;
    v44 = v37;
    v46 = *(v40 + 16);
    v45 = *(v40 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_1003E551C((v45 > 1), v46 + 1, 1);
      v44 = v37;
      v43 = v38;
      v40 = *v39;
    }

    *(v40 + 16) = v46 + 1;
    v47 = v40 + 24 * v46;
    *(v47 + 32) = v42;
    *(v47 + 40) = v43;
    *(v47 + 54) = BYTE6(v44);
    *(v47 + 52) = WORD2(v44);
    *(v47 + 48) = v44;
    *v39 = v40;
    return result;
  }

  v32 = v12;
LABEL_21:
  if (v52 == 1)
  {
    sub_1003FE864(v16, v11, sub_10046B5F0, sub_100475644, sub_1003FEC78);

    sub_1003FEAF4(v16);
  }

  v33 = v6[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B630(v33);
    v33 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v33 + 16))
  {
    v35 = v33 + 24 * v16;
    *(v35 + 32) = v52;
    *(v35 + 40) = v13;
    *(v35 + 54) = BYTE6(v32);
    *(v35 + 52) = WORD2(v32);
    *(v35 + 48) = v32;

    v6[2] = v33;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FCAA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = type metadata accessor for ParameterValue(0);
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v73 - v14;
  __chkstk_darwin(v15);
  v75 = &v73 - v16;
  __chkstk_darwin(v17);
  v76 = &v73 - v18;
  v19 = sub_10000C9C0(&qword_1005DC790, &unk_10050A070);
  __chkstk_darwin(v19);
  v22 = &v73 - v20;
  v23 = *v5;
  v24 = v5[1];
  v25 = *(v24 + 16);
  v81 = v10;
  v78 = v12;
  v79 = a3;
  v87 = a4;
  if (v23)
  {
    v26 = v21;
    v27 = &v73 - v20;

    v28 = sub_100475648();
    v29 = a1;
    v31 = v30;
    v33 = v32;

    v34 = &v27[*(v26 + 48)];
    sub_10000E268(v29, v34, &qword_1005D7F50, &unk_100502FF0);
    if (v31)
    {
      v35 = v29;
      v36 = v80;
      v37 = v81;
      v38 = v78;
      goto LABEL_24;
    }

    v54 = v29;
    v55 = v80;
    v56 = v81;
  }

  else
  {
    v39 = a2;
    v73 = a1;
    v74 = v5;
    if (!v25)
    {
LABEL_23:
      v34 = &v22[*(v21 + 48)];
      v35 = v73;
      sub_10000E268(v73, v34, &qword_1005D7F50, &unk_100502FF0);
      v33 = 0;
      v5 = v74;
      v36 = v80;
      v37 = v81;
      v38 = v78;
      a2 = v39;
LABEL_24:
      v59 = (*(v37 + 48))(v34, 1, v36);
      v60 = v79;
      v61 = v87;
      if (v59 == 1)
      {
        sub_100025F40(v35, &qword_1005D7F50, &unk_100502FF0);
      }

      else
      {
        v62 = v34;
        v63 = v77;
        sub_1002FC114(v62, v77);
        sub_10046A8DC(a2, v60, v61 & 0xFFFFFFFFFFFFFFLL, v33);

        sub_1002FC178(v63, v38);
        v66 = v5[2];
        v65 = v5 + 2;
        v64 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v65 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E5340(0, *(v64 + 16) + 1, 1);
          v64 = *v65;
        }

        v69 = *(v64 + 16);
        v68 = *(v64 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1002E5340((v68 > 1), v69 + 1, 1);
        }

        sub_100025F40(v35, &qword_1005D7F50, &unk_100502FF0);
        sub_1002FC1DC(v63);
        v70 = *v65;
        *(v70 + 16) = v69 + 1;
        result = sub_1002FC114(v38, v70 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v69);
        *v65 = v70;
      }

      return result;
    }

    v40 = v79;
    v41 = HIDWORD(v87);
    v84 = WORD2(v87);
    v85 = &v73 - v20;
    v42 = BYTE6(v87);
    v43 = HIDWORD(v79) - v79;
    v86 = v21;
    swift_beginAccess();
    v22 = v85;
    v21 = v86;
    v28 = 0;
    v44 = (v24 + 54);
    v82 = (v42 & 0xFFFFFFFFFF0000FFLL | (v41 << 8)) + v40;
    v83 = v42;
    while (1)
    {
      v45 = *(v44 - 14);
      v46 = *(v44 - 10);
      if (v46 - v45 == v43)
      {
        v47 = *(v44 - 22);
        v48 = *(v44 - 1);
        v49 = *v44;
        v50 = *(v44 - 6) == v87 && v48 == v84;
        v51 = v50 && v49 == v83;
        if (v51 && v47 == v39)
        {
          break;
        }

        swift_beginAccess();
        v53 = memcmp((*(v47 + 24) + (v49 | (v48 << 8)) + v45), (*(v39 + 24) + v82), v46 - v45);
        v22 = v85;
        v21 = v86;
        if (!v53)
        {
          break;
        }
      }

      v44 += 24;
      if (v25 == ++v28)
      {
        goto LABEL_23;
      }
    }

    v34 = &v22[*(v21 + 48)];
    v54 = v73;
    sub_10000E268(v73, v34, &qword_1005D7F50, &unk_100502FF0);
    v33 = 0;
    v5 = v74;
    v55 = v80;
    v56 = v81;
  }

  if ((*(v56 + 48))(v34, 1, v55) == 1)
  {
    sub_1003FE864(v28, v33, sub_10046B670, sub_100475644, sub_1003FEC78);

    v57 = v75;
    sub_1003FE9D8(v28, v75);
    sub_100025F40(v54, &qword_1005D7F50, &unk_100502FF0);
    return sub_1002FC1DC(v57);
  }

  v71 = v76;
  sub_1002FC114(v34, v76);
  v72 = v5[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_10046B5C8(v72);
  }

  result = sub_100025F40(v54, &qword_1005D7F50, &unk_100502FF0);
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < v72[2])
  {
    result = sub_10040018C(v71, v72 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v28);
    v5[2] = v72;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1003FD0B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = result;
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
      }

      else
      {

        sub_100469DF8(v12);
        if (!v8)
        {
          sub_1003F8A18(v12, v9, a3, a4, a5, a6, a7, v35);
          v32 = v35[0];
          v34 = v35[1];
          v28 = v35[2];
          v30 = v35[3];
          v20 = v36;
          v21 = v37;
          v22 = v38;

          v25 = v28;
          v26 = v30;
          v23 = v32;
          v24 = v34;
          goto LABEL_11;
        }
      }

      swift_willThrow();
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = xmmword_1004B1230;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
LABEL_11:
      *a8 = v23;
      *(a8 + 16) = v24;
      *(a8 + 32) = v25;
      *(a8 + 48) = v26;
      *(a8 + 64) = v20;
      *(a8 + 72) = v21;
      *(a8 + 80) = v22;
      return result;
    }
  }

  return result;
}

uint64_t sub_1003FD2FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041F7C0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v32 = v18;
      if (a2 + 1 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v21 = a3;
        return swift_willThrow();
      }

      else
      {
        v29 = result;
        v30 = v19;
        v31 = v20;

        sub_100469DF8(a1);

        sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v47);
        sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v48);
        v22 = swift_allocObject();
        *&v34[88] = xmmword_1004B1230;
        memset(&v34[104], 0, 64);
        v23 = v47[0];
        *&v34[24] = v47[1];
        *&v34[40] = v47[2];
        *&v34[56] = v47[3];
        *&v34[72] = v47[4];
        v22[2] = v29;
        v22[3] = v32;
        v22[4] = v30;
        v22[5] = v31;
        *&v34[168] = 0;
        *v34 = v22;
        *&v34[8] = v23;
        sub_10027F8A8(v48, &v34[88], &qword_1005DBCE8, &qword_1004FE600);
        v43 = *&v34[128];
        v44 = *&v34[144];
        v45 = *&v34[160];
        v39 = *&v34[64];
        v40 = *&v34[80];
        v41 = *&v34[96];
        v42 = *&v34[112];
        v35 = *v34;
        v36 = *&v34[16];
        v37 = *&v34[32];
        v38 = *&v34[48];
        v46[8] = *&v34[128];
        v46[9] = *&v34[144];
        v46[10] = *&v34[160];
        v46[4] = *&v34[64];
        v46[5] = *&v34[80];
        v46[6] = *&v34[96];
        v46[7] = *&v34[112];
        v46[0] = *v34;
        v46[1] = *&v34[16];
        v46[2] = *&v34[32];
        v46[3] = *&v34[48];
        sub_1002578F8(&v35, v33);
        result = sub_100257954(v46);
        v24 = v44;
        a8[8] = v43;
        a8[9] = v24;
        a8[10] = v45;
        v25 = v40;
        a8[4] = v39;
        a8[5] = v25;
        v26 = v42;
        a8[6] = v41;
        a8[7] = v26;
        v27 = v36;
        *a8 = v35;
        a8[1] = v27;
        v28 = v38;
        a8[2] = v37;
        a8[3] = v28;
      }
    }
  }

  return result;
}

uint64_t sub_1003FD618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041F8EC(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
        return swift_willThrow();
      }

      v27 = a8;
      v28 = result;
      v29 = v18;

      sub_100469DF8(a1);

      sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v45);

      sub_100469DF8(a1);

      sub_100402224(a1, a2, a3, a4, a5, a6, a7, v46);

      sub_100469DF8(a1);

      sub_1003F60D8(a1, a2, a3, a4, a5, a6, a7, v48);

      sub_100469DF8(a1);

      result = sub_10046C278(a1, a2, a3, 1);
      a8 = 0;
    }

    if (result < 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v20 = 0xD000000000000011;
      v20[1] = 0x80000001004B08A0;
      v20[2] = 0xD000000000000020;
      v20[3] = 0x80000001004B03C0;
      v20[4] = 202;
      swift_willThrow();
      sub_1003F08C4(v45);
      sub_100051110(v48);
      return sub_1003E771C(v46);
    }

    else
    {
      *&__src[80] = v46[4];
      *&__src[96] = v46[5];
      *&__src[112] = v46[6];
      *&__src[128] = v47;
      *&__src[16] = v46[0];
      *&__src[32] = v46[1];
      *&__src[48] = v46[2];
      *&__src[64] = v46[3];
      *&__src[280] = v48[9];
      *&__src[296] = v48[10];
      *&__src[264] = v48[8];
      *&__src[184] = v48[3];
      *&__src[168] = v48[2];
      *&__src[152] = v48[1];
      *&__src[136] = v48[0];
      *&__src[248] = v48[7];
      *&__src[232] = v48[6];
      *&__src[216] = v48[5];
      *&__src[200] = v48[4];
      __src[312] = v49;
      *__src = v28;
      *&__src[8] = v29;
      *&__src[320] = result;
      sub_1002FA030(v46, v43);
      sub_1000510B4(v48, v43);
      sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v50);
      if (a8)
      {
        sub_1002599EC(__src);
        sub_100051110(v48);
        sub_1003E771C(v46);
        return sub_1003F08C4(v45);
      }

      else
      {
        sub_100051110(v48);
        sub_1003E771C(v46);
        v21 = swift_allocObject();
        memcpy((v21 + 16), __src, 0x148uLL);
        *&v31[88] = xmmword_1004B1230;
        memset(&v31[104], 0, 72);
        *&v31[24] = v45[1];
        *&v31[40] = v45[2];
        *&v31[56] = v45[3];
        *&v31[72] = v45[4];
        *v31 = v21 | 0x4000000000000000;
        *&v31[8] = v45[0];
        sub_10027F8A8(v50, &v31[88], &qword_1005DBCE8, &qword_1004FE600);
        v40 = *&v31[128];
        v41 = *&v31[144];
        v42 = *&v31[160];
        v36 = *&v31[64];
        v37 = *&v31[80];
        v38 = *&v31[96];
        v39 = *&v31[112];
        v32 = *v31;
        v33 = *&v31[16];
        v34 = *&v31[32];
        v35 = *&v31[48];
        v43[8] = *&v31[128];
        v43[9] = *&v31[144];
        v43[10] = *&v31[160];
        v43[4] = *&v31[64];
        v43[5] = *&v31[80];
        v43[6] = *&v31[96];
        v43[7] = *&v31[112];
        v43[0] = *v31;
        v43[1] = *&v31[16];
        v43[2] = *&v31[32];
        v43[3] = *&v31[48];
        sub_1002578F8(&v32, v30);
        result = sub_100257954(v43);
        v22 = v41;
        v27[8] = v40;
        v27[9] = v22;
        v27[10] = v42;
        v23 = v37;
        v27[4] = v36;
        v27[5] = v23;
        v24 = v39;
        v27[6] = v38;
        v27[7] = v24;
        v25 = v33;
        *v27 = v32;
        v27[1] = v25;
        v26 = v35;
        v27[2] = v34;
        v27[3] = v26;
      }
    }
  }

  return result;
}

uint64_t sub_1003FDCF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10041FA98(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    else
    {
      v30 = result;
      v31 = v18;

      sub_100469DF8(a1);

      sub_1003F9428(a1, a2, a3, a4, a5, a6, a7, v46);

      sub_100469DF8(a1);

      v20 = sub_10046C278(a1, a2, a3, 1);
      v21 = v20;
      if ((v20 & 0x8000000000000000) != 0)
      {

        sub_1003A527C();
        swift_allocError();
        *v22 = 0xD000000000000011;
        v22[1] = 0x80000001004B08A0;
        v22[2] = 0xD000000000000020;
        v22[3] = 0x80000001004B03C0;
        v22[4] = 202;
        swift_willThrow();
        return sub_1003F08C4(v46);
      }

      else
      {
        sub_1003FD0B4(a1, a2, a3, a4, a5, a6, a7, v47);
        v23 = swift_allocObject();
        *&v33[88] = xmmword_1004B1230;
        memset(&v33[104], 0, 64);
        v24 = v46[0];
        *&v33[24] = v46[1];
        *&v33[40] = v46[2];
        *&v33[56] = v46[3];
        *&v33[72] = v46[4];
        *(v23 + 16) = v30;
        *(v23 + 24) = v31;
        *(v23 + 32) = v21;
        *&v33[168] = 0;
        *v33 = v23 | 0x8000000000000000;
        *&v33[8] = v24;
        sub_10027F8A8(v47, &v33[88], &qword_1005DBCE8, &qword_1004FE600);
        v42 = *&v33[128];
        v43 = *&v33[144];
        v44 = *&v33[160];
        v38 = *&v33[64];
        v39 = *&v33[80];
        v40 = *&v33[96];
        v41 = *&v33[112];
        v34 = *v33;
        v35 = *&v33[16];
        v36 = *&v33[32];
        v37 = *&v33[48];
        v45[8] = *&v33[128];
        v45[9] = *&v33[144];
        v45[10] = *&v33[160];
        v45[4] = *&v33[64];
        v45[5] = *&v33[80];
        v45[6] = *&v33[96];
        v45[7] = *&v33[112];
        v45[0] = *v33;
        v45[1] = *&v33[16];
        v45[2] = *&v33[32];
        v45[3] = *&v33[48];
        sub_1002578F8(&v34, v32);
        result = sub_100257954(v45);
        v25 = v43;
        a8[8] = v42;
        a8[9] = v25;
        a8[10] = v44;
        v26 = v39;
        a8[4] = v38;
        a8[5] = v26;
        v27 = v41;
        a8[6] = v40;
        a8[7] = v27;
        v28 = v35;
        *a8 = v34;
        a8[1] = v28;
        v29 = v37;
        a8[2] = v36;
        a8[3] = v29;
      }
    }
  }

  return result;
}

char *sub_1003FE11C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v64 = a6;
    v65 = a7;
    if (result)
    {
      v18 = v16;
      v19 = v17;

      sub_10046C184(v20, v18, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 572);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = __OFADD__(a2, 1);
    v24 = a2 + 1;
    if (v23)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    if (v24 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v40 = a3;
    }

    else
    {
      v25 = a1[1];
      v26 = *(a1 + 4);
      v27 = *(a1 + 10);
      v58 = *(a1 + 22);
      v63 = v24 + 1;
      v57 = v22;

      v59 = v27;
      v60 = v26;
      if (v24 + 1 >= a3)
      {
        sub_1003A5228();
        v41 = swift_allocError();
        *v42 = a3;
        v43 = _swiftEmptyArrayStorage;
      }

      else
      {
        v28 = v24 + 2;
        v29 = *a1;
        v30 = a1[1];
        v62 = *(a1 + 4);
        v31 = *(a1 + 10);
        v32 = *(a1 + 22);
        if (v28 < a3)
        {
          v33 = _swiftEmptyArrayStorage;
          do
          {
            swift_retain_n();
            sub_100469DF8(a1);

            v66[0] = _swiftEmptyArrayStorage;
            sub_1003F8884(a1, v63, a3, v66, a4, a5, v64, v65);

            v34 = v66[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_100461124(0, v33[2] + 1, 1, v33);
            }

            v35 = v33;
            v36 = v33[2];
            v37 = v35;
            v38 = v35[3];
            if (v36 >= v38 >> 1)
            {
              v37 = sub_100461124((v38 > 1), v36 + 1, 1, v37);
            }

            v37[2] = v36 + 1;
            v39 = &v37[v36];
            v33 = v37;
            v39[4] = v34;
            v29 = *a1;
            v30 = a1[1];
            v62 = *(a1 + 4);
            v31 = *(a1 + 10);
            v32 = *(a1 + 22);
          }

          while (v28 < a3);
        }

        sub_1003A5228();
        v44 = swift_allocError();
        *v45 = a3;

        v43 = _swiftEmptyArrayStorage;
        swift_willThrow();

        *a1 = v29;
        a1[1] = v30;
        *(a1 + 4) = v62;
        *(a1 + 10) = v31;
        *(a1 + 22) = v32;
        v41 = v44;
      }

      swift_willThrow();
      v66[8] = v41;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        v46 = _swiftEmptyArrayStorage[2];
        if (!v46)
        {
LABEL_40:

          return v57;
        }

        v47 = 0;
        v48 = _swiftEmptyArrayStorage;
        while (v47 < v43[2])
        {
          v49 = v43;
          v50 = _swiftEmptyArrayStorage[v47 + 4];
          v51 = *(v50 + 16);
          v52 = *(v48 + 2);
          v53 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            goto LABEL_42;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v53 > *(v48 + 3) >> 1)
          {
            if (v52 <= v53)
            {
              v54 = v52 + v51;
            }

            else
            {
              v54 = v52;
            }

            result = sub_100461108(result, v54, 1, v48);
            v48 = result;
          }

          v43 = v49;
          if (*(v50 + 16))
          {
            if ((*(v48 + 3) >> 1) - *(v48 + 2) < v51)
            {
              goto LABEL_44;
            }

            swift_arrayInitWithCopy();

            if (v51)
            {
              v55 = *(v48 + 2);
              v23 = __OFADD__(v55, v51);
              v56 = v55 + v51;
              if (v23)
              {
                goto LABEL_45;
              }

              *(v48 + 2) = v56;
            }
          }

          else
          {

            if (v51)
            {
              goto LABEL_43;
            }
          }

          if (v46 == ++v47)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      *a1 = v61;
      a1[1] = v25;
      *(a1 + 4) = v60;
      *(a1 + 10) = v59;
      *(a1 + 22) = v58;
    }

    swift_willThrow();
  }

  return result;
}

void sub_1003FE66C(unint64_t a1, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = sub_1004A4784();
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = sub_1004A4784();
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  v21 = sub_1004A4784();
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v22 < v15)
  {
    if (v17 <= v22)
    {
      v18 = v22;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v23 = a4(v11, v18, 0, v17);

    *v7 = v23;
    return;
  }

  if (!v14 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v24 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v24 = sub_1004A4774();

  *v7 = v24;
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_32:
  swift_beginAccess();
  if ((*(v24 + 24) & 0x3FLL) != v17)
  {
    *(v24 + 24) = *(v24 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }
}