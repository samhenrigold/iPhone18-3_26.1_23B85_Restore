uint64_t sub_10006C86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006C8C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    *result = a2 - 15;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 15;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_10006C908(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 sub_10006C924(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10006C980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006C9D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10006CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    goto LABEL_15;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v6 + 16);
  if (v11 < v7 || v11 < result)
  {
    goto LABEL_18;
  }

  if (result >= v7)
  {
    if (result != v11)
    {
      v13 = v6 + (result << 6) + 48;
      while ((*(v13 + 40) & 1) == 0)
      {
        ++result;
        v13 += 64;
        if (v11 == result)
        {
          goto LABEL_15;
        }
      }

      if ((*v13 & 0x6000000000000000) == 0x2000000000000000)
      {
        v18 = *(v13 + 24);
        v14 = *(v13 - 16);
        v15 = *(v13 - 8);
        v16 = result;
        sub_100066FA0(v14, v15, *v13, *(v13 + 8), *(v13 + 16));
        result = sub_10006EE9C(v4, v16);
        v9 = v18;
        v17 = 1;
LABEL_16:
        *a4 = v9;
        *(a4 + 16) = v17;
        *(a4 + 24) = v14;
        *(a4 + 32) = v15;
        return result;
      }
    }

LABEL_15:
    v17 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10006CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = result;
  v15 = *(v6 + 16);
  if (v15 < v7 || v15 < result)
  {
    goto LABEL_22;
  }

  if (result < v7)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 == v15)
  {
LABEL_10:

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0uLL;
    goto LABEL_11;
  }

  v17 = v14 << 6;
  while (1)
  {
    v18 = *(v6 + v17 + 48);
    v19 = (v18 >> 61) & 3;
    if (v19)
    {
      break;
    }

LABEL_13:
    ++v14;
    v17 += 64;
    if (v15 == v14)
    {
      goto LABEL_10;
    }
  }

  if (v19 == 2)
  {
    sub_100058C08(*(v6 + v17 + 32), *(v6 + v17 + 40), v18, *(v6 + v17 + 56), *(v6 + v17 + 64));
    goto LABEL_13;
  }

  v20 = *(v6 + 16);
  if (v20 < v7)
  {
    goto LABEL_24;
  }

  if (v14 >= v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = (v6 + v17);
  v22 = *(v6 + v17 + 48);
  if ((v22 & 0x6000000000000000) != 0x2000000000000000)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v23 = v21[7];
  v24 = v21[8];
  v12 = v21[4];
  v13 = v21[5];
  v25 = v6 + v17;
  v11 = *(v6 + v17 + 88);
  v26 = *(v25 + 72);
  sub_100066FA0(v12, v13, v22, v23, v24);
  result = sub_10006EE9C(v4, v14);
  v9 = v26;
LABEL_11:
  *a4 = v9;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_10006CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  if (v9)
  {
LABEL_2:
    result = 0;
    v10 = 0uLL;
    v11 = 0uLL;
LABEL_15:
    *a4 = v10;
    *(a4 + 16) = v11;
    *(a4 + 32) = result;
    return result;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(v6 + 16);
  if (v12 < v7 || v12 < result)
  {
    goto LABEL_17;
  }

  if (result >= v7)
  {
    v14 = (v6 + (result << 6) + 88);
    v15 = v12 - result + 1;
    while (--v15)
    {
      v16 = v14 + 64;
      v17 = *v14;
      v14 += 64;
      if (v17 == 1)
      {
        v19 = *(v16 - 10);
        v18 = *(v16 - 9);
        result = sub_10006EFF0(v19, v18, 1);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v20 = v4[2];
        if (v19 < *(v20 + 16))
        {
          *&v21 = vdupq_n_s64(1uLL).u64[0];
          *(&v21 + 1) = *(v20 + 16 * v19 + 32);
          v22 = v21;

          v11 = v22;
          *&v10 = v19;
          *(&v10 + 1) = v18;
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_2;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006CDA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
    goto LABEL_7;
  }

  if (v2 < v3)
  {
    v5 = *v1 + (v2 << 6);
    v6 = *(v5 + 48);
    if ((v6 & 0x6000000000000000) == 0x2000000000000000)
    {
      v7 = *(v5 + 88);
      v14 = *(v5 + 72);
      v8 = *(v5 + 56);
      v9 = *(v5 + 64);
      v11 = *(v5 + 32);
      v10 = *(v5 + 40);
      v1[1] = v2 + 1;
      v12 = a1;
      result = sub_100066FA0(v11, v10, v6, v8, v9);
      v4 = v14;
      a1 = v12;
LABEL_8:
      *a1 = v4;
      *(a1 + 16) = v7;
      *(a1 + 24) = v11;
      *(a1 + 32) = v10;
      return result;
    }

LABEL_7:
    v7 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10006CE68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v3 = *(v0[1] + 16 * v1);
  v0[2] = v1 + 1;

  return v3;
}

void *sub_10006CED4()
{
  if ((v0[2] & 0x8000000000000080) != 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = String.count.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  result = sub_10004E8A0(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v7 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v8 = 4 * v7;
    v9 = 15;
    while (v8 > v9 >> 14)
    {
      v10 = String.subscript.getter();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v11;
        v16 = v10;
        sub_10004E8A0((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v16;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[6 * v13];
      v14[4] = v6;
      v14[5] = v10;
      v14[6] = v11;
      v14[7] = 64;
      v14[8] = 0;
      v14[9] = 0;
      result = String.index(after:)();
      v9 = result;
      if (v4 == ++v6)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D038@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
LABEL_7:
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = *v1 + (v2 << 6) + 48;
    while ((*v5 & 0x6000000000000000) != 0x2000000000000000)
    {
      ++v2;
      v5 += 64;
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }

    v7 = *(v5 - 16);
    v8 = *(v5 - 8);
    v11 = *(v5 + 24);
    v6 = *(v5 + 40);
    v9 = a1;
    sub_100066FA0(v7, v8, *v5, *(v5 + 8), *(v5 + 16));
    result = sub_10006F1A0(v2);
    v4 = v11;
    a1 = v9;
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

void *sub_10006D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    goto LABEL_106;
  }

  if (a2 < 0)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v5 = a1 + 32;
    v6 =  + 88;
    v7 = _swiftEmptyArrayStorage;
    v8 = a2;
    v9 = a2;
LABEL_4:
    v10 = (v6 + (v8 << 6));
    while (v3 != v9)
    {
      if (v8 < a2 || v9 >= v3)
      {
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
        goto LABEL_107;
      }

      ++v9;
      v11 = *v10;
      v10 += 64;
      if (v11)
      {
        v12 = *(v10 - 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100043D74(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_100043D74((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v12;
        v8 = v9;
        goto LABEL_4;
      }
    }

    v71 = _swiftEmptyArrayStorage;
    if (v3 != a2)
    {
      v71 = _swiftEmptyArrayStorage;
      v56 = a2;
      do
      {
        v57 = v56;
        while (1)
        {
          if (v57 < a2 || v56 >= v3)
          {
            goto LABEL_100;
          }

          v58 = (v5 + (v56 << 6));
          v59 = v58[1];
          v79 = *v58;
          v80 = v59;
          *v81 = v58[2];
          *&v81[9] = *(v58 + 41);
          ++v56;
          if ((v59 & 0x6000000000000000) != 0x4000000000000000 || v80 != 0x4000000000000000 || *(&v80 + 1) | *v81 | *(&v79 + 1) | v79)
          {
            break;
          }

LABEL_89:
          if (v56 == v3)
          {
            goto LABEL_15;
          }
        }

        if ((v81[24] & 1) == 0)
        {
          v60 = *(v7 + 2);
          v61 = (v7 + 32);
          while (v60)
          {
            v62 = *v61++;
            --v60;
            if (v62 == *&v81[8])
            {
              goto LABEL_89;
            }
          }
        }

        sub_100062A60(&v79, &v83);
        v63 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004E8C0(0, v71[2] + 1, 1);
          v63 = v71;
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          sub_10004E8C0((v64 > 1), v65 + 1, 1);
          v63 = v71;
        }

        v63[2] = v65 + 1;
        v71 = v63;
        v66 = &v63[8 * v65];
        v67 = v79;
        v68 = v80;
        v69 = *v81;
        *(v66 + 73) = *&v81[9];
        v66[3] = v68;
        v66[4] = v69;
        v66[2] = v67;
      }

      while (v56 != v3);
    }

LABEL_15:

    v15 = v71[2];
    if (v15)
    {
      v82 = _swiftEmptyArrayStorage;
      sub_10004E900(0, v15, 0);
      v16 = 0;
      v17 = v82;
      v73 = v15;
      while (1)
      {
        v18 = &v71[8 * v16 + 4];
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *&v85[9] = *(v18 + 41);
        v84 = v20;
        *v85 = v21;
        v83 = v19;
        v23 = *(&v21 + 1);
        v22 = *&v85[16];
        v24 = v85[24];
        if (v85[24] == 1)
        {
          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_103;
          }
        }

        else
        {
          if ((v84 & 0x6000000000000000) == 0)
          {
            v48 = v83;
            if ((v84 & 0x8000000000000000) != 0)
            {
              v50 = *v85;
              v75 = *(&v84 + 1);
              if (v84 >> 6)
              {
                if (v84 >> 6 == 1)
                {
                  *&v77 = 0;
                  *(&v77 + 1) = 0xE000000000000000;
                  sub_100062A60(&v83, &v79);
                  v51._countAndFlagsBits = 45;
                  v51._object = 0xE100000000000000;
                  String.append(_:)(v51);
                  Character.write<A>(to:)();
LABEL_77:
                  v79 = v77;
                  v54._countAndFlagsBits = 61;
                  v54._object = 0xE100000000000000;
                  String.append(_:)(v54);
                  v55._countAndFlagsBits = v75;
                  v55._object = v50;
                  String.append(_:)(v55);
                  v26 = *(&v79 + 1);
                  v74 = v79;
                  goto LABEL_25;
                }

                *&v77 = 45;
                v53 = 0xE100000000000000;
              }

              else
              {
                *&v77 = 11565;
                v53 = 0xE200000000000000;
              }

              *(&v77 + 1) = v53;
              sub_100062A60(&v83, &v79);
              String.append(_:)(v48);
              goto LABEL_77;
            }

            if (v84 >> 6)
            {
              if (v84 >> 6 == 1)
              {
                v76 = 0;
                v78 = 0xE000000000000000;
                sub_100062A60(&v83, &v79);
                v49._countAndFlagsBits = 45;
                v49._object = 0xE100000000000000;
                String.append(_:)(v49);
                Character.write<A>(to:)();
LABEL_73:
                v26 = v78;
                v74 = v76;
                goto LABEL_25;
              }

              v76 = 45;
              v52 = 0xE100000000000000;
            }

            else
            {
              v76 = 11565;
              v52 = 0xE200000000000000;
            }

            v78 = v52;
            sub_100062A60(&v83, &v79);
            String.append(_:)(v48);
            goto LABEL_73;
          }

          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_105;
          }
        }

        v25 = (a3 + 32 + 16 * *(&v21 + 1));
        v26 = v25[1];
        v74 = *v25;
        sub_100062A60(&v83, &v79);

LABEL_25:
        sub_100062BE0();
        v27 = Set.init(minimumCapacity:)();
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v23);
        if (v24)
        {
          v28 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v28 = v22;
        }

        Hasher._combine(_:)(v28);
        v29 = Hasher._finalize()();
        v30 = -1 << *(v27 + 32);
        v31 = v29 & ~v30;
        if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          do
          {
            v33 = *(v27 + 48) + 24 * v31;
            if ((*(v33 + 17) & 1) == 0 && *v33 == v23)
            {
              if (*(v33 + 16))
              {
                if (v24)
                {
                  goto LABEL_59;
                }
              }

              else if ((v24 & 1) == 0 && *(v33 + 8) == v22)
              {
                goto LABEL_59;
              }
            }

            v31 = (v31 + 1) & v32;
          }

          while (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v27 + 16);
        if (*(v27 + 24) <= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_10005717C(v35 + 1);
          }

          else
          {
            sub_1000583B8(v35 + 1);
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v23);
          if (v24)
          {
            v36 = 0;
          }

          else
          {
            Hasher._combine(_:)(1uLL);
            v36 = v22;
          }

          Hasher._combine(_:)(v36);
          v37 = Hasher._finalize()();
          v38 = -1 << *(v27 + 32);
          v31 = v37 & ~v38;
          if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v39 = ~v38;
            do
            {
              v40 = *(v27 + 48) + 24 * v31;
              if ((*(v40 + 17) & 1) == 0 && *v40 == v23)
              {
                if (*(v40 + 16))
                {
                  if (v24)
                  {
                    goto LABEL_108;
                  }
                }

                else if ((v24 & 1) == 0 && *(v40 + 8) == v22)
                {
                  goto LABEL_108;
                }
              }

              v31 = (v31 + 1) & v39;
            }

            while (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100057FB0();
        }

        *(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v31;
        v41 = *(v27 + 48) + 24 * v31;
        *v41 = v23;
        *(v41 + 8) = v22;
        *(v41 + 16) = v24;
        *(v41 + 17) = 0;
        v42 = *(v27 + 16);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_101;
        }

        *(v27 + 16) = v44;
LABEL_59:
        sub_100062ABC(&v83);
        v82 = v17;
        v46 = v17[2];
        v45 = v17[3];
        if (v46 >= v45 >> 1)
        {
          sub_10004E900((v45 > 1), v46 + 1, 1);
          v17 = v82;
        }

        ++v16;
        v17[2] = v46 + 1;
        v47 = &v17[3 * v46];
        v47[4] = v27;
        v47[5] = v74;
        v47[6] = v26;
        if (v16 == v73)
        {

          return v17;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006D8FC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    v11 = String.count.getter();
    if (v11 < 2)
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10008E640;
      *(v3 + 32) = a1;
      *(v3 + 40) = a2;
      *(v3 + 48) = 0x2000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;

      return v3;
    }

    if (v11 == 2)
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10008E640;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0x4000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

    goto LABEL_23;
  }

  v7 = 0;
  v8 = 4 * v6;
  v3 = 15;
  while (1)
  {
    if (String.subscript.getter() == 45 && v10 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v3 = String.index(after:)();
    v7 = v3 >> 14;
    if (v3 >> 14 == v8)
    {
      goto LABEL_11;
    }
  }

  result = String.distance(from:to:)();
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  v13 = result;
  v14 = String.subscript.getter();
  if (v13 == 1)
  {
    v16 = v14;
    v17 = v15;

    sub_10006F844(v16, v17, v54);
    if (v47)
    {
LABEL_20:

      return v3;
    }

    v21 = v54[0];
    v22 = v54[1];
    v45 = v54[2];
    v48 = v54[3];
    v23 = v54[4];
    v24 = sub_10006CED4();
    v25 = v24[2];
    if (!v25)
    {

      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v29 = swift_allocObject();
      v30 = v23;
      v3 = v29;
      *(v29 + 16) = xmmword_10008E640;
      *(v29 + 32) = v21;
      *(v29 + 40) = v22;
      *(v29 + 48) = v45;
      *(v29 + 56) = v48;
      *(v29 + 64) = v30;
      *(v29 + 72) = a3;
      *(v29 + 80) = 0;
      *(v29 + 88) = 1;
      return v3;
    }

    if (v25 != 1)
    {
      v31 = v24;

      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v32 = swift_allocObject();
      v33 = v23;
      v3 = v32;
      *(v32 + 16) = xmmword_10008E640;
      *(v32 + 32) = v21;
      *(v32 + 40) = v22;
      *(v32 + 48) = v45;
      *(v32 + 56) = v48;
      *(v32 + 64) = v33;
      *(v32 + 72) = a3;
      *(v32 + 80) = 0;
      *(v32 + 88) = 1;
      v34 = v31[2];
      if (v34)
      {
        v46 = v34 - 1;
        for (i = v31 + 5; ; i += 6)
        {
          v36 = *i;
          v44 = *(i - 1);
          v37 = i[1];
          v38 = i[2];
          v39 = i[3];
          v40 = i[4];
          sub_100066FC0(*i, v37, v38, v39, v40);
          v42 = *(v3 + 16);
          v41 = *(v3 + 24);
          if (v42 >= v41 >> 1)
          {
            v3 = sub_100043C68((v41 > 1), v42 + 1, 1, v3);
          }

          v57 = 0;
          *(v3 + 16) = v42 + 1;
          v43 = v3 + (v42 << 6);
          *(v43 + 32) = v36;
          *(v43 + 40) = v37;
          *(v43 + 48) = v38;
          *(v43 + 56) = v39;
          *(v43 + 64) = v40;
          *(v43 + 72) = a3;
          *(v43 + 80) = v44;
          *(v43 + 88) = v57;
          if (!v46)
          {
            break;
          }

          --v46;
        }
      }

      goto LABEL_20;
    }

    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;
    result = sub_100070364(v54);
    if ((v16 ^ v17) >= 0x4000)
    {
      v26 = Substring.subscript.getter();
      v28 = v27;

      *(v3 + 32) = v26;
      *(v3 + 40) = v28;
      *(v3 + 48) = 64;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  if (!v13)
  {

    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;
    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
    *(v3 + 48) = 0x2000000000000000;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;

    return v3;
  }

  if (v13 == 2)
  {
    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;

    sub_10006DF1C(a1, a2, v55);
    v18 = v56;
    v19 = v55[1];
    *(v3 + 32) = v55[0];
    *(v3 + 48) = v19;
    *(v3 + 64) = v18;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;
    return v3;
  }

LABEL_23:
  sub_10002A1BC();
  swift_allocError();
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = v50;
  *(v20 + 32) = v51;
  *(v20 + 48) = v52;
  *(v20 + 64) = v53;
  *(v20 + 80) = 5;
  swift_willThrow();

  return v3;
}

unint64_t sub_10006DF1C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_10006E0DC(61, 0xE100000000000000, a1, a2);
  if (v7)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1;
    }

    v9 = v8 << 16;
    if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v10 = v9 | 7;
    }

    else
    {
      v10 = v9 | 0xB;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = String.subscript.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1000117E4(v10, a1, a2);
  v19 = v18;

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v21)
  {
    result = v19;
  }

  if (v19 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v22 = Substring.subscript.getter();
    v24 = v23;

    v25 = sub_10006961C(v11, v13, v15, v17);
    v27 = v26;
    v29 = v28;
    if ((v22 ^ v24) >> 14)
    {
      v30 = static String._fromSubstring(_:)();
      v31 = v33;

      v32 = v29 | 0x8000000000000000;
    }

    else
    {

      v30 = 0;
      v31 = 0;
      v32 = v29;
    }

    *a3 = v25;
    a3[1] = v27;
    a3[2] = v32;
    a3[3] = v30;
    a3[4] = v31;
  }

  return result;
}

unint64_t sub_10006E0DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10006E1CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (v3 < 0)
  {
    v6 = v0[3];
    v5 = v0[4];
    v10 = sub_100068E38(v1, v2, v3);
    v7._countAndFlagsBits = 61;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v1 = v6;
    v2 = v5;
LABEL_9:
    String.append(_:)(*&v1);
    return v10;
  }

  if (!(v3 >> 6))
  {
    v8 = 11565;
LABEL_8:
    v10 = v8;
    goto LABEL_9;
  }

  if (v3 >> 6 != 1)
  {
    v8 = 45;
    goto LABEL_8;
  }

  v10 = 0;
  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  Character.write<A>(to:)();
  return v10;
}

uint64_t sub_10006E2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10006F464(v5, v7) & 1;
}

uint64_t sub_10006E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10006F628(v5, v7) & 1;
}

BOOL sub_10006E344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v3 = *(a1 + 40);
  v13 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = *(a2 + 40);
  v15 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if ((sub_10006F628(v12, v14) & 1) == 0 || v3 != v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (v4 == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1;
    }

    return (v11 & 1) == 0;
  }

  return (v9 & 1) != 0;
}

Swift::Int sub_10006E3E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006E454(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10006E4E8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v3 = v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10006E548()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006E590(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10006E5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10006E628(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_10006E6D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

Swift::Int sub_10006E70C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v4 = v2;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_10006E780()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006E7D4(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v4)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10006E848(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E898(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006E8E8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006E938(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E988(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16) == 1)
    {
      if (v2)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E9D4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100055D64(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_100055CD4(v3, v5);
}

uint64_t sub_10006EA4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = (v3 >> 61) & 3;
  if (v4)
  {
    if (v4 != 1)
    {
      return 0x74616E696D726574;
    }

    v14 = 0x272065756C6176;
    String.append(_:)(*&v1);
    v1 = 39;
    v2 = 0xE100000000000000;
    goto LABEL_13;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = v0[3];
    v8 = v0[4];
    v9 = sub_100068E38(v1, v2, v3);
    v10._countAndFlagsBits = v7;
    v10._object = v8;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 39;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v14 = v9;

    v12._countAndFlagsBits = 0x2065756C6176203BLL;
    v12._object = 0xE900000000000027;
    String.append(_:)(v12);

    return v14;
  }

  if (!(v3 >> 6))
  {
    v13 = 11565;
LABEL_12:
    v14 = v13;
LABEL_13:
    String.append(_:)(*&v1);
    return v14;
  }

  if (v3 >> 6 != 1)
  {
    v13 = 45;
    goto LABEL_12;
  }

  v14 = 0;
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  Character.write<A>(to:)();
  return v14;
}

uint64_t sub_10006EBE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return v6;
}

void sub_10006ECA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = (v6 >> 61) & 3;
  if (v10)
  {
    if (v10 != 1)
    {
      v18._countAndFlagsBits = sub_10006EBE4(v7, v8, v9);
      String.append(_:)(v18);

      v19 = 757932125;
      v20 = 0xE400000000000000;
LABEL_9:
      String.append(_:)(*&v19);
      goto LABEL_10;
    }

    v11._countAndFlagsBits = sub_10006EBE4(v7, v8, v9);
    String.append(_:)(v11);

    v12._countAndFlagsBits = 2564189;
    v12._object = 0xE300000000000000;
    String.append(_:)(v12);
    v13 = v5;
    v14 = v4;
LABEL_8:
    String.append(_:)(*&v13);
    v19 = 39;
    v20 = 0xE100000000000000;
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23._countAndFlagsBits = sub_10006EBE4(v7, v8, v9);
    String.append(_:)(v23);

    v24._countAndFlagsBits = 8285;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = sub_100068E38(v5, v4, v6);
    String.append(_:)(v25);

    v26._countAndFlagsBits = 10045;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v13 = v21;
    v14 = v22;
    goto LABEL_8;
  }

  v15._countAndFlagsBits = sub_10006EBE4(v7, v8, v9);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 8285;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_100068E38(v5, v4, v6);
  String.append(_:)(v17);

LABEL_10:
  *a2 = 91;
  a2[1] = 0xE100000000000000;
}

uint64_t sub_10006EE9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 <= a2)
  {
    v3 = result;
    if (v2 != a2)
    {
      if (v2 < a2)
      {
        v5 = a2 << 6;
        v6 = a2;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          v8 = *v3;
          if (v7 >= *(*v3 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v8 + v5 - 32);
          v10 = *(v8 + v5 - 16);
          v11 = *(v8 + v5);
          *&v24[9] = *(v8 + v5 + 9);
          v23 = v10;
          *v24 = v11;
          v22 = v9;
          sub_100062A60(&v22, v20);
          result = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v8;
          if ((result & 1) == 0)
          {
            result = sub_100058878(v8);
            v8 = result;
            *v3 = result;
          }

          v12 = v7 + 1;
          if (v12 >= *(v8 + 16))
          {
            goto LABEL_18;
          }

          v13 = (v8 + v5);
          v14 = *(v8 + v5 + 32);
          v15 = *(v8 + v5 + 48);
          v16 = *(v8 + v5 + 64);
          *&v21[9] = *(v8 + v5 + 73);
          v20[1] = v15;
          *v21 = v16;
          v20[0] = v14;
          v17 = v22;
          v18 = v23;
          v19 = *v24;
          *(v13 + 73) = *&v24[9];
          v13[3] = v18;
          v13[4] = v19;
          v13[2] = v17;
          result = sub_100062ABC(v20);
          v6 = v12 - 1;
          if (v12 - 1 == v2)
          {
            goto LABEL_14;
          }

          if (v2 < v6)
          {
            v5 -= 64;
            if (v6 <= a2)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
    }

LABEL_14:
    if (!__OFADD__(v2, 1))
    {
      v3[1] = v2 + 1;
      return result;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10006EFF0(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 16);
  if (v6 < v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 >= v6)
  {
    return result;
  }

  v7 = v5 << 6;
  v8 = v3[1];
  while (1)
  {
    v9 = *(v4 + v7 + 72);
    if (v9 == result)
    {
      break;
    }

    ++v8;
    v7 += 64;
    if (v9 > result || v8 >= v6)
    {
      return result;
    }
  }

  if (a3)
  {
    if (v6 != v8)
    {
      v11 = (v4 + v7 + 72);
      v12 = v8;
      while (1)
      {
        v13 = *v11;
        v11 += 8;
        if (v13 != result)
        {
          break;
        }

        if (v6 == ++v12)
        {
          goto LABEL_35;
        }
      }

      v6 = v12;
    }

LABEL_35:
    if (v6 >= v8)
    {

      return sub_10006F2EC(v8, v6);
    }

    goto LABEL_43;
  }

  if (*(v4 + v7 + 88) == 1)
  {
    v14 = result;
    v15 = a2;
    sub_10006F1A0(v8);
    a2 = v15;
    result = v14;
    ++v8;
    v4 = *v3;
    v5 = v3[1];
  }

  if (v5 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = *(v4 + 16);
  if (v16 < v5 || v16 < v8)
  {
    goto LABEL_44;
  }

  if (v8 < v5)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v8 != v16)
  {
    for (i = (v4 + (v8 << 6) + 88); ; i += 64)
    {
      if (v8 >= v16)
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(i - 2) == result && (*i & 1) == 0 && *(i - 1) == a2)
      {
        break;
      }

      if (v16 == ++v8)
      {
        return result;
      }
    }

    return sub_10006F1A0(v8);
  }

  return result;
}

uint64_t sub_10006F1A0(uint64_t result)
{
  v3 = v1[1];
  if (v3 <= result)
  {
    if (v3 != result)
    {
      v4 = result;
      if (v3 >= result)
      {
LABEL_13:
        __break(1u);
      }

      else
      {
        v2 = *v1;
        v5 = result << 6;
        v6 = result;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          if (v7 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + v5 - 32);
          v9 = *(v2 + v5 - 16);
          v10 = *(v2 + v5);
          *&v23[9] = *(v2 + v5 + 9);
          v22 = v9;
          *v23 = v10;
          v21 = v8;
          sub_100062A60(&v21, v19);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100058878(v2);
            v2 = result;
          }

          v11 = v7 + 1;
          if (v11 >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          v12 = (v2 + v5);
          v13 = *(v2 + v5 + 32);
          v14 = *(v2 + v5 + 48);
          v15 = *(v2 + v5 + 64);
          *&v20[9] = *(v2 + v5 + 73);
          v19[1] = v14;
          *v20 = v15;
          v19[0] = v13;
          v16 = v21;
          v17 = v22;
          v18 = *v23;
          *(v12 + 73) = *&v23[9];
          v12[3] = v17;
          v12[4] = v18;
          v12[2] = v16;
          result = sub_100062ABC(v19);
          v6 = v11 - 1;
          if (v11 - 1 == v3)
          {
            goto LABEL_17;
          }

          if (v3 < v6)
          {
            v5 -= 64;
            if (v6 <= v4)
            {
              continue;
            }
          }

          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      *v1 = v2;
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v1[1] = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_10006F2EC(uint64_t result, unint64_t a2)
{
  v5 = result;
  v6 = v2[1];
  if (v6 >= result)
  {
    goto LABEL_12;
  }

  v3 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    while (1)
    {
      v24 = a2;
      if (v5 >= 1)
      {
        break;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      *v2 = v3;
      a2 = v24;
LABEL_12:
      v21 = a2 - v5;
      if (__OFSUB__(a2, v5))
      {
        goto LABEL_17;
      }

      v22 = __OFADD__(v6, v21);
      v23 = v6 + v21;
      if (!v22)
      {
        v2[1] = v23;
        return result;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_100058878(v3);
      v3 = result;
      v7 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        goto LABEL_21;
      }
    }

    v8 = v5 + 1;
    v9 = (v5 << 6) - 32;
    v10 = (a2 << 6) - 32;
    while (1)
    {
      a2 = *(v3 + 16);
      if (v8 - 2 >= a2)
      {
        break;
      }

      v11 = *(v3 + v9);
      v12 = *(v3 + v9 + 16);
      v13 = *(v3 + v9 + 32);
      *&v28[9] = *(v3 + v9 + 41);
      v27 = v12;
      *v28 = v13;
      v26 = v11;
      sub_100062A60(&v26, v25);
      if (v7 >= a2)
      {
        goto LABEL_16;
      }

      v14 = (v3 + v10);
      v15 = *(v3 + v10);
      v16 = *(v3 + v10 + 16);
      v17 = *(v3 + v10 + 32);
      *&v30[9] = *(v3 + v10 + 41);
      v29[1] = v16;
      *v30 = v17;
      v29[0] = v15;
      v18 = v26;
      v19 = v27;
      v20 = *v28;
      *(v14 + 41) = *&v28[9];
      v14[1] = v19;
      v14[2] = v20;
      *v14 = v18;
      result = sub_100062ABC(v29);
      if (v6 >= v8 - 2)
      {
        goto LABEL_11;
      }

      --v7;
      --v8;
      v9 -= 64;
      v10 -= 64;
      if (v8 < 2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10006F464(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = a2[2];
    if (v7 < 0)
    {
      return 0;
    }

    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    if (v6 >> 6)
    {
      v11 = v7 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v11 == 64)
        {
          if (v4 == v8 && v5 == v9)
          {
            if ((v6 ^ v7))
            {
              return 0;
            }
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (((v6 ^ v7) & 1) != 0 || (v20 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if (v10 >= 0x40)
    {
      return 0;
    }

    return v4 == v8 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  v12 = a2[2];
  if ((v12 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[3];
  v18 = a2[4];
  if (!(v6 >> 6))
  {
    if (a2[2] >= 0x40u)
    {
      return 0;
    }

LABEL_28:
    if ((v4 != v15 || v5 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v19 = v12 & 0xC0;
  if (v6 >> 6 != 1)
  {
    if (v19 != 128)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v19 != 64)
  {
    return 0;
  }

  if (v4 == v15 && v5 == v16)
  {
    if ((v6 ^ v12))
    {
      return 0;
    }
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v22 & 1) == 0 || ((v6 ^ v12))
    {
      return result;
    }
  }

LABEL_38:
  if (v13 == v17 && v14 == v18)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006F628(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v6 >> 61) & 3;
  if (!v7)
  {
    v10 = a2[2];
    if ((v10 & 0x6000000000000000) != 0)
    {
      return 0;
    }

    v11 = *a2;
    v12 = a2[1];
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v10 < 0)
      {
        return 0;
      }

      v13 = a2[2];
      if (v6 >> 6)
      {
        v14 = v10 & 0xC0;
        if (v6 >> 6 == 1)
        {
          if (v14 != 64)
          {
            return 0;
          }

          if (v4 == v11 && v5 == v12)
          {
            if ((v6 ^ v10))
            {
              return 0;
            }
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (((v6 ^ v10) & 1) != 0 || (v21 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        if (v14 != 128)
        {
          return 0;
        }
      }

      else if (v13 >= 0x40)
      {
        return 0;
      }

      if (v4 == v11 && v5 == v12)
      {
        return 1;
      }

      return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v16 = a1[3];
    v17 = a1[4];
    v18 = a2[3];
    v19 = a2[4];
    if (v6 >> 6)
    {
      v20 = v10 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v20 != 64 || (v4 != v11 || v5 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v6 ^ v10) & 1) != 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v20 != 128)
      {
        return 0;
      }
    }

    else if (a2[2] >= 0x40u)
    {
      return 0;
    }

    if ((v4 != v11 || v5 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    if (v16 == v18 && v17 == v19)
    {
      return 1;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (v7 != 1)
  {
    v15 = a2[2];
    return (v15 & 0x6000000000000000) == 0x4000000000000000 && v15 == 0x4000000000000000 && !(a2[3] | a2[4] | a2[1] | *a2);
  }

  if ((a2[2] & 0x6000000000000000) != 0x2000000000000000)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10006F844@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v5 = a5;
  v6 = a2 >> 14;
  v7 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    result = Substring.distance(from:to:)();
    if (result == 1)
    {
      goto LABEL_27;
    }

LABEL_3:
    v9 = static String._fromSubstring(_:)();
    v11 = v10;

    v12 = 0;
    v13 = 0;
    v14 = 128;
    goto LABEL_24;
  }

  v37 = a1 >> 14;
  do
  {
    if (Substring.subscript.getter() == 61 && v15 == 0xE100000000000000)
    {

LABEL_13:
      if (v7 < v37)
      {
        __break(1u);
      }

      else
      {
        v18 = Substring.subscript.getter();
        if ((v18 ^ v19) < 0x4000)
        {

          if (Substring.distance(from:to:)() == 1)
          {
            v20 = Substring.subscript.getter();
            v22 = v21;
            v23 = 64;
          }

          else
          {
            v20 = static String._fromSubstring(_:)();
            v22 = v26;
            v23 = 0x80;
          }

          v27 = sub_100068E38(v20, v22, v23);
          v29 = v28;
          sub_100028AE8(v20, v22, v23);
          sub_10002A1BC();
          swift_allocError();
          *v30 = v27;
          *(v30 + 8) = v29;
          *(v30 + 16) = v33;
          *(v30 + 32) = v34;
          *(v30 + 48) = v35;
          *(v30 + 64) = v36;
          *(v30 + 80) = 5;
          return swift_willThrow();
        }

        result = Substring.index(after:)();
        if (v6 >= result >> 14)
        {
          Substring.subscript.getter();

          v12 = static String._fromSubstring(_:)();
          v13 = v24;

          if (Substring.distance(from:to:)() == 1)
          {
            v14 = 0x8000000000000040;
            v9 = Substring.subscript.getter();
            v11 = v25;
          }

          else
          {
            v9 = static String._fromSubstring(_:)();
            v11 = v31;
            v14 = 0x8000000000000080;
          }

          v5 = a5;

LABEL_24:
          *v5 = v9;
          v5[1] = v11;
          v5[2] = v14;
          v5[3] = v12;
          v5[4] = v13;
          return result;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_13;
    }

    v7 = Substring.index(after:)() >> 14;
  }

  while (v7 != v6);
  result = Substring.distance(from:to:)();
  v5 = a5;
  if (result != 1)
  {
    goto LABEL_3;
  }

  if (v37 != v6)
  {
    v9 = Substring.subscript.getter();
    v11 = v17;

    v12 = 0;
    v13 = 0;
    v14 = 64;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10006FC54(uint64_t a1)
{
  v28 = _swiftEmptyArrayStorage;
  v2 = (2 * *(a1 + 16)) | 1;
  v24 = a1;
  v25 = a1 + 32;
  v26 = 0;
  v27 = v2;

  result = sub_10006CE68();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10006D8FC(result, v5, v6);
      if (v1)
      {

        swift_unknownObjectRelease();

        return v5;
      }

      v8 = v7;

      result = sub_100041924(v9);
      if (!*(v8 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(v8 + 48);
      v21 = *(v8 + 32);
      v22 = v10;
      v23[0] = *(v8 + 64);
      *(v23 + 9) = *(v8 + 73);
      sub_100062A60(&v21, v20);

      if ((v22 & 0x6000000000000000) == 0x4000000000000000 && v22 == 0x4000000000000000 && !(*(&v22 + 1) | *&v23[0] | *(&v21 + 1) | v21))
      {
        break;
      }

      result = sub_100062ABC(&v21);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      result = sub_10006CE68();
      v5 = v12;
      ++v6;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v13 = (v27 >> 1) - v26;
  if (v27 >> 1 != v26)
  {
    if ((v27 >> 1) > v26)
    {
      v5 = v28;
      v14 = (v25 + 16 * v26 + 8);
      while (1)
      {
        v16 = *(v14 - 1);
        v15 = *v14;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100043C68(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_100043C68((v17 > 1), v18 + 1, 1, v5);
          v5 = result;
        }

        LOBYTE(v21) = 1;
        *(v5 + 16) = v18 + 1;
        v19 = v5 + (v18 << 6);
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        *(v19 + 48) = 0x2000000000000000;
        *(v19 + 56) = 0;
        *(v19 + 64) = 0;
        *(v19 + 72) = v11;
        *(v19 + 80) = 0;
        *(v19 + 88) = v21;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        ++v11;
        v14 += 2;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v5 = v28;
LABEL_16:
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10006FEE0(uint64_t result, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) == 0)
  {
    v5 = *(a4 + 16);
    if (v5 >= a5)
    {
      if (a5 < 0)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = (a4 + (a5 << 6) + 88);
      do
      {
        if (v5 == a5)
        {
          return 0;
        }

        v9 = *(v6 - 2);
        if (v9 > result)
        {
          return a5;
        }

        if (v9 == result)
        {
          v7 = *v6;
          if (a3)
          {
            if ((v7 & 1) == 0)
            {
              return a5;
            }
          }

          else
          {
            if (*(v6 - 1) <= a2)
            {
              v7 = 1;
            }

            if (v7 != 1)
            {
              return a5;
            }
          }
        }

        v6 += 64;
      }

      while (!__OFADD__(a5++, 1));
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_10006FF78@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4 < a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 == a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = xmmword_100091330;
    v11 = 0uLL;
LABEL_7:
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    *(a3 + 40) = v10;
    *(a3 + 56) = v7;
    *(a3 + 64) = v5;
    *(a3 + 72) = v6;
    *(a3 + 80) = v8;
    return result;
  }

  if (v4 > a2)
  {
    v12 = (result + (a2 << 6));
    *&v19[9] = *(v12 + 73);
    v13 = v12[4];
    v18 = v12[3];
    *v19 = v13;
    v17 = v12[2];
    v5 = *(&v13 + 1);
    v6 = *&v19[16];
    v8 = v19[24];
    v20 = 0;
    v14 = v18;
    v15 = v17;
    v7 = v13;
    result = sub_100062A60(&v17, v16);
    v10 = v14;
    v11 = v15;
    v9 = v8;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100070064(uint64_t result, int64_t a2)
{
  v2 = *(result + 16);
  if (v2 < a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v2 == a2)
  {
    return 0;
  }

  if (v2 - a2 > 1)
  {
    return 1;
  }

  if (v2 <= a2)
  {
    goto LABEL_15;
  }

  v3 = (result + (a2 << 6));
  v4 = v3[6];
  result = 1;
  if ((v4 & 0x6000000000000000) == 0x4000000000000000 && v4 == 0x4000000000000000)
  {
    v5 = v3[8];
    if (!(v3[7] | v3[5] | v3[4] | v5))
    {
      sub_100066FA0(0, 0, 0x4000000000000000uLL, 0, v5);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100070114(uint64_t a1, int64_t a2)
{
  v20 = *(a1 + 16);
  if (v20 < a2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = v20 - a2;
  if (v20 == a2)
  {
    return 0x3E7974706D653CLL;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_10004E820(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v30;
    v7 = a2;
    v8 = (a1 + (a2 << 6) + 32);
    while ((v7 + v5) < v20 && v5 < v2)
    {
      v10 = v8[1];
      v28[0] = *v8;
      v28[1] = v10;
      v12 = *v8;
      v11 = v8[1];
      v29[0] = v8[2];
      *(v29 + 9) = *(v8 + 41);
      v24 = v12;
      v25 = v11;
      v26[0] = v8[2];
      *(v26 + 9) = *(v8 + 41);
      sub_100062A60(v28, &v21);
      sub_10006ECA8(&v24, v27);
      v21 = v24;
      v22 = v25;
      v23[0] = v26[0];
      *(v23 + 9) = *(v26 + 9);
      sub_100062ABC(&v21);
      v13 = v27[0];
      v14 = v27[1];
      v30 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_10004E820((v15 > 1), v16 + 1, 1);
        v7 = a2;
        v6 = v30;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      if (~a2 + v20 == v5)
      {
        *&v28[0] = v6;
        sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
        sub_10002BB28();
        v18 = BidirectionalCollection<>.joined(separator:)();

        return v18;
      }

      ++v5;
      v8 += 4;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  v21 = v24;
  v22 = v25;
  v23[0] = v26[0];
  *(v23 + 9) = *(v26 + 9);
  sub_100062ABC(&v21);

  __break(1u);
  return result;
}

uint64_t sub_1000703F0(uint64_t a1)
{
  if (((*(a1 + 16) >> 61) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 16) >> 61) & 3;
  }
}

__n128 sub_100070410(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10007042C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 1) & 0x1F;
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

uint64_t sub_100070480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (2 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SplitArguments.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SplitArguments.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_100070560()
{
  result = qword_1000B5E08;
  if (!qword_1000B5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E08);
  }

  return result;
}

unint64_t sub_1000705B8()
{
  result = qword_1000B5E10;
  if (!qword_1000B5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E10);
  }

  return result;
}

uint64_t sub_100070610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 1) & 0x1F;
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

uint64_t sub_100070664(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (2 * (-a2 & 0x1FLL));
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

uint64_t sub_1000706D0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0x80000000000000C1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_100091340;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SplitArguments.SubIndex(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SplitArguments.SubIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SplitArguments.SubIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100070780(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007079C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1000707CC()
{
  result = qword_1000B5E18;
  if (!qword_1000B5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E18);
  }

  return result;
}

uint64_t sub_100070838()
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v19[-v5];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v7 = dispatch thunk of JSONEncoder.outputFormatting.modify();
  sub_100070B0C(v6, v4);
  v8 = *(v2 + 8);
  v8(v4, v1);
  v8(v6, v1);
  v7(&v21, 0);
  v9 = v0[3];
  v23 = v0[2];
  v24 = v9;
  v10 = v0[5];
  v25 = v0[4];
  v26 = v10;
  v11 = v0[1];
  v21 = *v0;
  v22 = v11;
  sub_100070DE4(v0, v20);
  sub_100070E1C();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  sub_10004CA70(v20);
  static String.Encoding.utf8.getter();
  v15 = String.init(data:encoding:)();
  if (v16)
  {
    v17 = v15;
    sub_100018518(v12, v14);

    return v17;
  }

  else
  {
    sub_100018518(v12, v14);

    return 0;
  }
}

uint64_t sub_100070B0C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = sub_1000021C0(&qword_1000B5E28, &unk_100095940);
  __chkstk_darwin();
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = *(v9 + 16);
  v23 = v2;
  v14(v11, v2, v8);
  v21 = sub_100070E70(&qword_1000B5E30, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  dispatch thunk of SetAlgebra.intersection(_:)();
  sub_100070E70(&qword_1000B5E38, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  v22 = a2;
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = v4;
  v16 = *(v4 + 48);
  *v7 = (v15 & 1) == 0;
  if (v15)
  {
    (*(v9 + 32))(&v7[v16], v13, v8);
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v17 = v22;
    v14(&v7[v16], v22, v8);
    v14(v11, v17, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v18 = v24;
  sub_100070EB4(v7, v24);
  v19 = *v18;
  (*(v9 + 32))(v26, &v18[*(v25 + 48)], v8);
  return v19;
}

unint64_t sub_100070E1C()
{
  result = qword_1000B5E20;
  if (!qword_1000B5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E20);
  }

  return result;
}

uint64_t sub_100070E70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100070EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5E28, &unk_100095940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100070F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v29 = sub_10004C130(*(a1 + 16 + 16 * v1), *(*(a1 + 16 + 16 * v1 + 8) + 8), 2, 0, 0, 0);
    sub_10002E058(a1, &v30);
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v55[8] = v38;
    v55[9] = v39;
    v55[10] = v40;
    v55[11] = v41;
    v55[4] = v34;
    v55[5] = v35;
    v55[6] = v36;
    v55[7] = v37;
    v55[0] = v30;
    v55[1] = v31;
    v55[2] = v32;
    v55[3] = v33;
    if (sub_10002F07C(v55) != 1)
    {
      v57[8] = v25;
      v57[9] = v26;
      v57[10] = v27;
      v57[11] = v28;
      v57[4] = v21;
      v57[5] = v22;
      v57[6] = v23;
      v57[7] = v24;
      v57[0] = v17;
      v57[1] = v18;
      v57[2] = v19;
      v57[3] = v20;
      sub_10005CE10(v57);
      sub_100002BCC(&v30, &qword_1000B5208, &qword_1000914C0);
    }

    sub_10002E350(a1, &v42);
    v13 = v50;
    v14 = v51;
    v15 = v52;
    v16 = v53;
    v9 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v5 = v42;
    v6 = v43;
    v7 = v44;
    v8 = v45;
    v54[8] = v50;
    v54[9] = v51;
    v54[10] = v52;
    v54[11] = v53;
    v54[4] = v46;
    v54[5] = v47;
    v54[6] = v48;
    v54[7] = v49;
    v54[0] = v42;
    v54[1] = v43;
    v54[2] = v44;
    v54[3] = v45;
    if (sub_10002F07C(v54) != 1)
    {
      v56[8] = v13;
      v56[9] = v14;
      v56[10] = v15;
      v56[11] = v16;
      v56[4] = v9;
      v56[5] = v10;
      v56[6] = v11;
      v56[7] = v12;
      v56[0] = v5;
      v56[1] = v6;
      v56[2] = v7;
      v56[3] = v8;
      sub_10005CE10(v56);
      sub_100002BCC(&v42, &qword_1000B5208, &qword_1000914C0);
    }

    return v29;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    sub_100074524(_swiftEmptyArrayStorage);
  }

  return v3;
}

unint64_t sub_10007116C(unint64_t a1, uint64_t a2)
{
  v4 = _swiftEmptyArrayStorage;
  v178 = _swiftEmptyArrayStorage;
  v179 = sub_100074524(_swiftEmptyArrayStorage);
  v5 = *(a1 + 16);

  v126 = a2;

  if (!v5)
  {
LABEL_103:

    return v4;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + 32;
  v124 = v5;
  v125 = a1;
  v123 = a1 + 32;
LABEL_5:
  if (v7 < v5)
  {
    v10 = (v9 + 192 * v7);
    v11 = v10[9];
    v12 = v10[7];
    v162 = v10[8];
    v163 = v11;
    v13 = v10[9];
    v14 = v10[11];
    v164 = v10[10];
    v165 = v14;
    v15 = v10[5];
    v16 = v10[3];
    v158 = v10[4];
    v159 = v15;
    v17 = v10[5];
    v18 = v10[7];
    v160 = v10[6];
    v161 = v18;
    v19 = v10[1];
    v155[0] = *v10;
    v155[1] = v19;
    v20 = v10[3];
    v22 = *v10;
    v21 = v10[1];
    v156 = v10[2];
    v157 = v20;
    v174 = v162;
    v175 = v13;
    v23 = v10[11];
    v176 = v164;
    v177 = v23;
    v170 = v158;
    v171 = v17;
    v172 = v160;
    v173 = v12;
    v166 = v22;
    v167 = v21;
    v24 = v7 + 1;
    v168 = v156;
    v169 = v16;
    if (v20 != 1)
    {
      sub_1000289DC(v155, &v143);
      goto LABEL_4;
    }

    v25 = sub_10007272C(v7 + 1, v5, a1, &v166);
    if (v26)
    {
      v27 = v5;
    }

    else
    {
      v27 = v25;
    }

    sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
    result = swift_allocObject();
    v28 = v174;
    v29 = v173;
    v151 = v174;
    v152 = v175;
    v30 = v176;
    v153 = v176;
    v154 = v177;
    v31 = v170;
    v32 = v169;
    v147 = v170;
    v148 = v171;
    v33 = v171;
    v34 = v172;
    v149 = v172;
    v150 = v173;
    v143 = v166;
    v144 = v167;
    v36 = v166;
    v35 = v167;
    v37 = v168;
    v145 = v168;
    v146 = v169;
    *(result + 176) = v175;
    *(result + 192) = v30;
    *(result + 208) = v177;
    *(result + 112) = v33;
    *(result + 128) = v34;
    *(result + 144) = v29;
    *(result + 160) = v28;
    *(result + 16) = xmmword_10008E640;
    *(result + 32) = v36;
    *(result + 48) = v35;
    *(result + 64) = v37;
    v38 = v143;
    *(result + 80) = v32;
    *(result + 96) = v31;
    if (v27 <= v7)
    {
      goto LABEL_111;
    }

    if (v5 < v27)
    {
      goto LABEL_112;
    }

    v128 = v8;
    v130[0] = result;

    sub_1000289DC(v155, v132);
    sub_1000289DC(&v143, v132);
    v127 = v27;
    result = sub_100041D00(v24, v27, a1, v126);
    v39 = v130[0];
    v129 = v130[0];
    if (v38 >= 2)
    {
      v40 = *(v130[0] + 16);
      if (v40)
      {
        v41 = 0;
        v42 = (v130[0] + 32);
        v43 = _swiftEmptyArrayStorage;
        while (v41 < *(v39 + 16))
        {
          result = *v42;
          if (*v42 >= 2)
          {
            v44 = *v42;
          }

          else
          {
            v44 = _swiftEmptyArrayStorage;
          }

          v45 = v44[2];
          v46 = *(v43 + 2);
          v47 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_106;
          }

          sub_100028B00(result);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v47 > *(v43 + 3) >> 1)
          {
            if (v46 <= v47)
            {
              v48 = v46 + v45;
            }

            else
            {
              v48 = v46;
            }

            result = sub_100043274(result, v48, 1, v43);
            v43 = result;
          }

          v39 = v129;
          if (v44[2])
          {
            if ((*(v43 + 3) >> 1) - *(v43 + 2) < v45)
            {
              goto LABEL_108;
            }

            swift_arrayInitWithCopy();

            if (v45)
            {
              v49 = *(v43 + 2);
              v50 = __OFADD__(v49, v45);
              v51 = v49 + v45;
              if (v50)
              {
                goto LABEL_109;
              }

              *(v43 + 2) = v51;
            }
          }

          else
          {

            if (v45)
            {
              goto LABEL_107;
            }
          }

          ++v41;
          v42 += 24;
          if (v40 == v41)
          {
            goto LABEL_34;
          }
        }

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
        goto LABEL_110;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_34:
      sub_10002F06C(v38);
      *&v166 = v43;
    }

    v52 = *(v39 + 16);
    if (!v52)
    {
      v53 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v131 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v52, 0);
    v53 = v131;
    v54 = (v39 + 32);
    v55 = v52;
    while (1)
    {
      v56 = *v54;
      v57 = v54[1];
      v58 = v54[3];
      v133 = v54[2];
      v134 = v58;
      v132[0] = v56;
      v132[1] = v57;
      v59 = v54[4];
      v60 = v54[5];
      v61 = v54[7];
      v137 = v54[6];
      v138 = v61;
      v135 = v59;
      v136 = v60;
      v62 = v54[8];
      v63 = v54[9];
      v64 = v54[11];
      v141 = v54[10];
      v142 = v64;
      v139 = v62;
      v140 = v63;
      v66 = *(&v136 + 1);
      v65 = v137;
      v67 = BYTE7(v137) & 0xF;
      if ((v137 & 0x2000000000000000) == 0)
      {
        v67 = *(&v136 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
      }

      else
      {
        v68 = v133;
        v69 = _swiftEmptyArrayStorage;
        if (*&v132[0] >= 2uLL)
        {
        }

        v66 = sub_1000592A8(v69);
        v65 = v70;
        v72 = v71;
        sub_1000289DC(v132, v130);

        if (v72 > 0xFD)
        {
          if (!v68[2])
          {
            sub_100028A38(v132);
            v65 = 0xE500000000000000;
            v66 = 0x65756C6176;
            goto LABEL_47;
          }

          v73 = v68[4];
          v74 = v68[5];

          v66 = sub_10004CE4C(45, 0xE100000000000000, v73, v74);
          v65 = v75;
        }

        sub_100028A38(v132);
      }

LABEL_47:
      v131 = v53;
      v77 = v53[2];
      v76 = v53[3];
      if (v77 >= v76 >> 1)
      {
        sub_10004E820((v76 > 1), v77 + 1, 1);
        v53 = v131;
      }

      v53[2] = v77 + 1;
      v78 = &v53[2 * v77];
      v78[4] = v66;
      v78[5] = v65;
      v54 += 12;
      if (!--v55)
      {
        v39 = v129;
LABEL_53:
        v79 = v53 + 5;
        v80 = v53[2] + 1;
        while (--v80)
        {
          v81 = *(v79 - 1);
          v82 = *v79;
          v79 += 2;
          v83 = HIBYTE(v82) & 0xF;
          if ((v82 & 0x2000000000000000) == 0)
          {
            v83 = v81 & 0xFFFFFFFFFFFFLL;
          }

          if (v83)
          {

            goto LABEL_60;
          }
        }

        v81 = 0;
        v82 = 0xE000000000000000;
LABEL_60:

        v84 = 0;
        *(&v171 + 1) = v81;
        *&v172 = v82;
        v85 = v39 + 56;
        v86 = _swiftEmptyArrayStorage;
        v87 = *(v39 + 16);
LABEL_61:
        v88 = (v85 + 192 * v84);
        while (v87 != v84)
        {
          if (v84 >= *(v39 + 16))
          {
            __break(1u);
            goto LABEL_105;
          }

          v89 = v88 + 24;
          ++v84;
          v90 = *v88;
          v88 += 24;
          if (v90)
          {
            v91 = *(v89 - 25);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100042F3C(0, *(v86 + 2) + 1, 1, v86);
              v86 = result;
            }

            v93 = *(v86 + 2);
            v92 = *(v86 + 3);
            if (v93 >= v92 >> 1)
            {
              result = sub_100042F3C((v92 > 1), v93 + 1, 1, v86);
              v86 = result;
            }

            *(v86 + 2) = v93 + 1;
            v94 = &v86[16 * v93];
            *(v94 + 4) = v91;
            *(v94 + 5) = v90;
            v39 = v129;
            goto LABEL_61;
          }
        }

        if (*(v86 + 2))
        {
          v95 = *(v86 + 4);
          v96 = *(v86 + 5);
        }

        else
        {
          v95 = 0;
          v96 = 0;
        }

        *&v167 = v95;
        *(&v167 + 1) = v96;
        if (v52)
        {
          *&v132[0] = _swiftEmptyArrayStorage;
          sub_10004E820(0, v52, 0);
          v97 = *&v132[0];
          v98 = (v39 + 96);
          v99 = v52;
          do
          {
            v101 = *(v98 - 1);
            v100 = *v98;
            *&v132[0] = v97;
            v103 = v97[2];
            v102 = v97[3];
            v104 = v103 + 1;

            if (v103 >= v102 >> 1)
            {
              sub_10004E820((v102 > 1), v103 + 1, 1);
              v97 = *&v132[0];
            }

            v97[2] = v104;
            v105 = &v97[2 * v103];
            v105[4] = v101;
            v105[5] = v100;
            v98 += 24;
            --v99;
          }

          while (v99);
        }

        else
        {
          v104 = _swiftEmptyArrayStorage[2];
          v97 = _swiftEmptyArrayStorage;
        }

        v106 = v97 + 5;
        v107 = v104 + 1;
        while (--v107)
        {
          v109 = *(v106 - 1);
          v108 = *v106;
          v106 += 2;
          v110 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v110 = v109 & 0xFFFFFFFFFFFFLL;
          }

          if (v110)
          {

            goto LABEL_87;
          }
        }

        v109 = 0;
        v108 = 0xE000000000000000;
LABEL_87:

        *(&v169 + 1) = v109;
        *&v170 = v108;
        if (v52)
        {
          *&v132[0] = _swiftEmptyArrayStorage;
          sub_10004E820(0, v52, 0);
          v111 = *&v132[0];
          v112 = (v129 + 112);
          do
          {
            v114 = *(v112 - 1);
            v113 = *v112;
            *&v132[0] = v111;
            v116 = v111[2];
            v115 = v111[3];

            if (v116 >= v115 >> 1)
            {
              sub_10004E820((v115 > 1), v116 + 1, 1);
              v111 = *&v132[0];
            }

            v111[2] = v116 + 1;
            v117 = &v111[2 * v116];
            v117[4] = v114;
            v117[5] = v113;
            v112 += 24;
            --v52;
          }

          while (v52);
        }

        else
        {

          v111 = _swiftEmptyArrayStorage;
        }

        v118 = v111 + 5;
        v119 = v111[2] + 1;
        v5 = v124;
        a1 = v125;
        v9 = v123;
        v24 = v127;
        while (--v119)
        {
          v121 = *(v118 - 1);
          v120 = *v118;
          v118 += 2;
          v122 = HIBYTE(v120) & 0xF;
          if ((v120 & 0x2000000000000000) == 0)
          {
            v122 = v121 & 0xFFFFFFFFFFFFLL;
          }

          if (v122)
          {

            goto LABEL_101;
          }
        }

        v121 = 0;
        v120 = 0xE000000000000000;
LABEL_101:

        *(&v170 + 1) = v121;
        *&v171 = v120;
        v8 = v128;
LABEL_4:
        v180[8] = v174;
        v180[9] = v175;
        v180[10] = v176;
        v180[11] = v177;
        v180[4] = v170;
        v180[5] = v171;
        v180[6] = v172;
        v180[7] = v173;
        v180[0] = v166;
        v180[1] = v167;
        v180[2] = v168;
        v180[3] = v169;
        sub_10005CE10(v180);
        v151 = v174;
        v152 = v175;
        v153 = v176;
        v154 = v177;
        v147 = v170;
        v148 = v171;
        v149 = v172;
        v150 = v173;
        v143 = v166;
        v144 = v167;
        v145 = v168;
        v146 = v169;
        result = sub_100028A38(&v143);
        v7 = v24;
        if (v24 == v5)
        {
          v4 = v178;
          goto LABEL_103;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_100071A94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
LABEL_88:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = (result + 16 + 16 * v2);
  v133 = v4[1];
  v134 = *v4;
  v5 = v2 - 1;
  v118 = result;
  if (v2 == 1)
  {

    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    *&v142 = _swiftEmptyArrayStorage;

    result = sub_10004E820(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v3 + 40;
    do
    {
      if (!v5)
      {
        __break(1u);
        goto LABEL_87;
      }

      result = (*(*v7 + 24))();
      *&v142 = v6;
      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v12 = result;
        v13 = v8;
        sub_10004E820((v9 > 1), v10 + 1, 1);
        v8 = v13;
        result = v12;
        v3 = v118;
        v6 = v142;
      }

      *(v6 + 2) = v10 + 1;
      v11 = &v6[16 * v10];
      *(v11 + 4) = result;
      *(v11 + 5) = v8;
      v7 += 16;
      --v5;
    }

    while (v5);
    (*(*(v3 + 40) + 16))(v155);
    v166[0] = v156;
    sub_100029F9C(v166, &v142);
    sub_100027BE4(v155);
    v14 = *(&v166[0] + 1);
    if (*(&v166[0] + 1))
    {
      v15 = *&v166[0];
      v16 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v6;
      if (!isUniquelyReferenced_nonNull_native || v16 >= *(v6 + 3) >> 1)
      {
        v6 = sub_100042F3C(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v6);
        v154 = v6;
      }

      sub_100072648(0, 0, 1, v15, v14);
      sub_100002BCC(v166, &qword_1000B51D8, &qword_100094230);
    }
  }

  v18 = *(v133 + 16);
  (v18)(v157);
  sub_100027BE4(v157);
  if (v157[15])
  {
    (*(v157[16] + 16))(v158);
    v114 = v158[1];
    v115 = v158[0];

    sub_100027BE4(v158);
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v116 = v18;
  (v18)(v159);
  CommandConfiguration.subcommands.getter();
  v20 = v19;
  sub_100027BE4(v159);
  v21 = *(v20 + 16);
  v135 = v6;
  if (v21)
  {
    *&v142 = _swiftEmptyArrayStorage;
    sub_10004E978(0, v21, 0);
    v22 = 32;
    v140 = v142;
    do
    {
      v137 = *(v20 + v22);

      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v3;
      if ((v23 & 1) == 0)
      {
        v24 = sub_100043048(0, *(v3 + 16) + 1, 1, v3);
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_100043048((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      *&v24[16 * v26 + 32] = v137;
      sub_100071A94(v24, v160);
      v27 = v140;
      *&v142 = v140;
      v29 = v140[2];
      v28 = v140[3];
      if (v29 >= v28 >> 1)
      {
        sub_10004E978((v28 > 1), v29 + 1, 1);
        v27 = v142;
      }

      v27[2] = v29 + 1;
      v140 = v27;
      v30 = &v27[11 * v29];
      v31 = v160[1];
      *(v30 + 2) = v160[0];
      *(v30 + 3) = v31;
      v32 = v160[2];
      v33 = v160[3];
      v34 = v160[4];
      v30[14] = v161;
      *(v30 + 5) = v33;
      *(v30 + 6) = v34;
      *(v30 + 4) = v32;
      v22 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {

    v140 = _swiftEmptyArrayStorage;
  }

  v35 = sub_100070F24(v3);
  v37 = v36;

  v38 = sub_10007116C(v35, v37);

  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = v38 + 32;
    v110 = v39 - 1;
    v111 = v38 + 32;
    v42 = _swiftEmptyArrayStorage;
    v112 = *(v38 + 16);
    v113 = v38;
LABEL_30:
    v43 = (v41 + 192 * v40);
    v44 = v40;
    while (v44 < *(v38 + 16))
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = v43[3];
      v144 = v43[2];
      v145 = v47;
      v142 = v45;
      v143 = v46;
      v48 = v43[4];
      v49 = v43[5];
      v50 = v43[7];
      v148 = v43[6];
      v149 = v50;
      v146 = v48;
      v147 = v49;
      v51 = v43[8];
      v52 = v43[9];
      v53 = v43[11];
      v152 = v43[10];
      v153 = v53;
      v150 = v51;
      v151 = v52;
      v54 = v142;
      if (v142 != 1)
      {
        if (v142)
        {
          if (BYTE8(v152))
          {
            v55 = 1;
          }

          else
          {
            v55 = 2;
          }

          v131 = v55;
        }

        else
        {
          v131 = 0;
        }

        v130 = BYTE8(v142);
        v126 = *(&v143 + 1);
        v127 = v143;
        v109 = v144;
        v124 = *(&v145 + 1);
        v125 = *(&v144 + 1);
        v122 = *(&v146 + 1);
        v123 = v146;
        v56 = *(&v147 + 1);
        v57 = HIBYTE(*(&v149 + 1)) & 0xFLL;
        v58 = v148;
        if ((*(&v149 + 1) & 0x2000000000000000) == 0)
        {
          v57 = v149 & 0xFFFFFFFFFFFFLL;
        }

        v119 = BYTE8(v148);
        if (v57)
        {
          v128 = *(&v149 + 1);
          v129 = v149;
        }

        else
        {
          v128 = 0;
          v129 = 0;
        }

        v132 = v42;
        if (v54 >= 2)
        {
          v59 = v54;
        }

        else
        {
          v59 = _swiftEmptyArrayStorage;
        }

        v60 = v59[2];
        v138 = v56;
        if (v60)
        {
          sub_1000289DC(&v142, v141);
          sub_100028B00(v54);
          v141[0] = _swiftEmptyArrayStorage;
          sub_10004E998(0, v60, 0);
          v61 = v141[0];
          v62 = (v59 + 6);
          do
          {
            v64 = *(v62 - 2);
            v63 = *(v62 - 1);
            v65 = *v62;
            sub_10002BB8C(v64, v63, *v62);
            v141[0] = v61;
            v67 = v61[2];
            v66 = v61[3];
            if (v67 >= v66 >> 1)
            {
              sub_10004E998((v66 > 1), v67 + 1, 1);
              v61 = v141[0];
            }

            v61[2] = v67 + 1;
            v68 = &v61[3 * v67];
            *(v68 + 32) = v65 >> 6;
            v62 += 24;
            v68[5] = v64;
            v68[6] = v63;
            --v60;
          }

          while (v60);

          v56 = v138;
        }

        else
        {
          sub_1000289DC(&v142, v141);
          sub_100028B00(v54);

          v61 = _swiftEmptyArrayStorage;
        }

        v69 = _swiftEmptyArrayStorage;
        if (v54 >= 2)
        {

          v69 = v54;
        }

        v70 = sub_1000592A8(v69);
        v72 = v71;
        v74 = v73;
        v75 = v73;

        if (v75 <= 0xFD)
        {
          v76 = v74 >> 6;
        }

        else
        {
          v76 = 0;
        }

        if (v75 <= 0xFD)
        {
          v77 = v70;
        }

        else
        {
          v77 = 0;
        }

        if (v75 <= 0xFD)
        {
          v78 = v72;
        }

        else
        {
          v78 = 0;
        }

        v120 = v78;
        v121 = v77;
        v79 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v79 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {

          v6 = v135;
          v80 = v58;
        }

        else
        {
          v81 = _swiftEmptyArrayStorage;
          if (v54 >= 2)
          {

            v81 = v54;
          }

          v82 = sub_1000592A8(v81);
          v80 = v83;
          v85 = v84;

          v6 = v135;
          if (v85 <= 0xFD)
          {
            v138 = v82;
          }

          else if (v109[2])
          {
            v86 = v109[4];
            v87 = v109[5];

            v138 = sub_10004CE4C(45, 0xE100000000000000, v86, v87);
            v80 = v88;
          }

          else
          {
            v80 = 0xE500000000000000;
            v138 = 0x65756C6176;
          }
        }

        *(&v108 + 1) = v120;
        *&v108 = v121;
        ArgumentInfoV0.init(kind:shouldDisplay:sectionTitle:isOptional:isRepeating:names:preferredName:valueName:defaultValue:allValues:abstract:discussion:)(v131, v119 == 0, v129, v128, v130 & 1, (v130 & 2) != 0, v61, v76, v162, v108, v138, v80, v127, v126, v125, v124, v123, v122, v89);
        sub_100028A38(&v142);
        v42 = v132;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000440BC(0, *(v132 + 2) + 1, 1, v132);
          v42 = result;
        }

        v38 = v113;
        v91 = *(v42 + 2);
        v90 = *(v42 + 3);
        if (v91 >= v90 >> 1)
        {
          result = sub_1000440BC((v90 > 1), v91 + 1, 1, v42);
          v42 = result;
        }

        v40 = v44 + 1;
        *(v42 + 2) = v91 + 1;
        v92 = &v42[136 * v91];
        *(v92 + 2) = v162[0];
        v93 = v162[1];
        v94 = v162[2];
        v95 = v162[4];
        *(v92 + 5) = v162[3];
        *(v92 + 6) = v95;
        *(v92 + 3) = v93;
        *(v92 + 4) = v94;
        v96 = v162[5];
        v97 = v162[6];
        v98 = v162[7];
        *(v92 + 20) = v163;
        *(v92 + 8) = v97;
        *(v92 + 9) = v98;
        *(v92 + 7) = v96;
        v41 = v111;
        v39 = v112;
        if (v110 != v44)
        {
          goto LABEL_30;
        }

        goto LABEL_85;
      }

      ++v44;
      v43 += 12;
      v6 = v135;
      if (v39 == v44)
      {
        goto LABEL_85;
      }
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_85:

  v99 = (*(v133 + 24))(v134, v133);
  v136 = v100;
  v139 = v99;
  v116(v141, v134, v133);
  v101 = v141[4];
  v102 = v141[5];

  sub_100027BE4(v141);
  v116(&v142, v134, v133);
  v103 = v146;
  v104 = v6;
  v105 = *(&v146 + 1);

  sub_100027BE4(&v142);
  CommandInfoV0.init(superCommands:commandName:abstract:discussion:defaultSubcommand:subcommands:arguments:)(v104, v139, v136, v101, v102, v103, v105, v115, v164, v114, v140, v42);
  result = swift_unknownObjectRelease();
  v106 = v164[3];
  *(a2 + 32) = v164[2];
  *(a2 + 48) = v106;
  *(a2 + 64) = v164[4];
  *(a2 + 80) = v165;
  v107 = v164[1];
  *a2 = v164[0];
  *(a2 + 16) = v107;
  return result;
}

unint64_t sub_100072474(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t (*sub_1000724B8(uint64_t (**a1)(), int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x240uLL);
  }

  *a1 = result;
  if (a2 < a3 || a2 >= a4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a5 + 16) > a2)
  {
    v11 = (a5 + 192 * a2);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[5];
    *(result + 2) = v11[4];
    *(result + 3) = v14;
    *result = v12;
    *(result + 1) = v13;
    v15 = v11[6];
    v16 = v11[7];
    v17 = v11[9];
    *(result + 6) = v11[8];
    *(result + 7) = v17;
    *(result + 4) = v15;
    *(result + 5) = v16;
    v18 = v11[10];
    v19 = v11[11];
    v20 = v11[13];
    *(result + 10) = v11[12];
    *(result + 11) = v20;
    *(result + 8) = v18;
    *(result + 9) = v19;
    v21 = v11[2];
    v22 = v11[3];
    v23 = v11[5];
    *(result + 14) = v11[4];
    *(result + 15) = v23;
    *(result + 12) = v21;
    *(result + 13) = v22;
    v24 = v11[6];
    v25 = v11[7];
    v26 = v11[9];
    *(result + 18) = v11[8];
    *(result + 19) = v26;
    *(result + 16) = v24;
    *(result + 17) = v25;
    v27 = v11[10];
    v28 = v11[11];
    v29 = v11[13];
    *(result + 22) = v11[12];
    *(result + 23) = v29;
    *(result + 20) = v27;
    *(result + 21) = v28;
    sub_1000289DC(result, result + 384);
    return sub_1000725DC;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1000725DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 336);
  v1[32] = *(*a1 + 320);
  v1[33] = v2;
  v3 = v1[23];
  v1[34] = v1[22];
  v1[35] = v3;
  v4 = v1[17];
  v1[28] = v1[16];
  v1[29] = v4;
  v5 = v1[19];
  v1[30] = v1[18];
  v1[31] = v5;
  v6 = v1[13];
  v1[24] = v1[12];
  v1[25] = v6;
  v7 = v1[15];
  v1[26] = v1[14];
  v1[27] = v7;
  sub_100028A38((v1 + 24));

  free(v1);
}

unint64_t sub_100072648(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_10007272C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3 + 32;
  v28 = result;
  v5 = result;
  while (1)
  {
    if (v5 == a2)
    {
      return 0;
    }

    if (v5 >= a2)
    {
      break;
    }

    if (v28 < 0)
    {
      goto LABEL_38;
    }

    if (v5 >= *(a3 + 16))
    {
      goto LABEL_39;
    }

    v7 = *(v25 + 192 * v5 + 32);
    v8 = *(a4 + 32);
    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      return v5;
    }

    if (v9)
    {
      v10 = v7 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      v12 = v7 + 32;
      v13 = v8 + 32;
      while (v11 != v9)
      {
        v14 = (v12 + 24 * v11);
        result = *v14;
        v15 = v14[1];
        v16 = v14[2];
        v17 = (v13 + 24 * v11);
        v18 = v17[2];
        if (result != *v17 || v15 != v17[1])
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return v5;
          }
        }

        v20 = *(v16 + 16);
        if (v20 != *(v18 + 16))
        {
          return v5;
        }

        if (v20)
        {
          v21 = v16 == v18;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v16 + 40);
          v23 = (v18 + 40);
          while (v20)
          {
            result = *(v22 - 1);
            if (result != *(v23 - 1) || *v22 != *v23)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                return v5;
              }
            }

            v22 += 2;
            v23 += 2;
            if (!--v20)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        if (++v11 == v9)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
      break;
    }

LABEL_2:
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

__n128 sub_1000728D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000728EC(uint64_t a1, int a2)
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

uint64_t sub_100072934(uint64_t result, int a2, int a3)
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

uint64_t sub_10007299C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000729E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100072A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v47 = *(a4 + 1);
  v45 = a4[4];
  v14 = a4[5];
  v43 = *(a4 + 48);
  if (*(a6 + 16))
  {
    v57 = a6;
    v58 = sub_100074250;
    v59 = 0;

    sub_10002600C(a4, &v71, &qword_1000B52F0, qword_100091640);

    sub_10003357C(a7, a8, a9);
    sub_1000021C0(&qword_1000B5E50, &qword_100095B10);
    sub_1000743A8();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v37 = v16;
    v38 = v15;
  }

  else
  {

    sub_10002600C(a4, &v71, &qword_1000B52F0, qword_100091640);

    sub_10003357C(a7, a8, a9);
    v37 = 0;
    v38 = 0;
  }

  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008E640;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  v18 = a4[1];
  v40 = a7;
  if (v18)
  {
    v19 = *a4;
    v79[0] = *a4;
    v79[1] = v18;
    if (v14)
    {

      v20 = a7;
      v21 = a8;
      sub_10003357C(v20, a8, a9);
      sub_100039960(v79, &v71);

      v22 = v14;
LABEL_11:

      v24 = v45;
      v25 = v43;
      goto LABEL_13;
    }

    sub_100039960(v79, &v71);
  }

  else
  {
    v19 = 0;
    v18 = 0xE000000000000000;
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
  }

  v23 = a7;
  v21 = a8;
  sub_10003357C(v23, a8, a9);

  if (a4[1])
  {
    v45 = 0;
    v43 = *(a4 + 48);
    v22 = 0xE000000000000000;
    goto LABEL_11;
  }

  v24 = 0;
  v25 = 0;
  v22 = 0xE000000000000000;
LABEL_13:
  *&v49 = 3;
  *(&v49 + 1) = v38;
  if (a9 == 255)
  {
    v26 = 4;
  }

  else
  {
    v26 = a9;
  }

  v46 = v26;
  if (a9 == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = v21;
  }

  if (a9 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = v40;
  }

  v42 = v28;
  v44 = v27;
  *&v50 = v37;
  *(&v50 + 1) = v17;
  *&v51 = _swiftEmptyArrayStorage;
  BYTE8(v51) = 0;
  *&v52 = v19;
  *(&v52 + 1) = v18;
  v53 = v47;
  *&v54 = v24;
  *(&v54 + 1) = v22;
  LOBYTE(v55) = v25;
  *(&v55 + 1) = 0;
  v56 = 0xE000000000000000;
  v57 = 3;
  v58 = v38;
  v59 = v37;
  v60 = v17;
  v61 = _swiftEmptyArrayStorage;
  v62 = 0;
  v63 = v19;
  v64 = v18;
  v65 = v47;
  v66 = v24;
  v67 = v22;
  v68 = v25;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_10002F094(&v49, &v71);
  sub_10002F0F0(&v57);
  v29 = swift_allocObject();
  v29[2] = sub_100065610;
  v29[3] = 0;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = a6;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = a3;
  v75 = v53;
  v76 = v54;
  v77 = v55;
  v78 = v56;
  v71 = v49;
  v72 = v50;
  v73 = v51;
  v74 = v52;

  sub_1000676CC(v40, v21, a9);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10008E640;
  v32 = v76;
  *(v31 + 104) = v75;
  *(v31 + 120) = v32;
  *(v31 + 136) = v77;
  v33 = v72;
  *(v31 + 40) = v71;
  *(v31 + 56) = v33;
  v34 = v74;
  *(v31 + 72) = v73;
  *(v31 + 32) = 0;
  v35 = v78;
  *(v31 + 88) = v34;
  *(v31 + 152) = v35;
  *(v31 + 160) = v42;
  *(v31 + 168) = v44;
  *(v31 + 176) = v46;
  *(v31 + 177) = a5;
  *(v31 + 184) = sub_100074474;
  *(v31 + 192) = v29;
  *(v31 + 200) = 1;
  *(v31 + 208) = sub_100074500;
  *(v31 + 216) = v30;
  return sub_100072F04(v31);
}

uint64_t sub_100072F04(uint64_t a1)
{
  sub_100074524(_swiftEmptyArrayStorage);

  v2 = *(a1 + 16);

  v42 = v2;
  if (!v2)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_33:

    if (v4[2])
    {
      sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
      v38 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v38 = &_swiftEmptyDictionarySingleton;
    }

    v56 = v38;
    sub_100074640(v4, 1, &v56);

    return a1;
  }

  v3 = 0;
  v40 = a1;
  v41 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  while (v3 < *(a1 + 16))
  {
    v5 = (v41 + 192 * v3);
    v6 = v5[7];
    v7 = v5[9];
    v52 = v5[8];
    v53 = v7;
    v8 = v5[11];
    v9 = v5[9];
    v54 = v5[10];
    v55 = v8;
    v10 = v5[5];
    v11 = v5[3];
    v48 = v5[4];
    v49 = v10;
    v12 = v5[7];
    v13 = v5[5];
    v50 = v5[6];
    v51 = v12;
    v14 = v5[1];
    v45[0] = *v5;
    v45[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v46 = v5[2];
    v47 = v15;
    v64 = v6;
    v63 = v50;
    v62 = v13;
    v61 = v48;
    v68 = v5[11];
    v67 = v54;
    v66 = v9;
    v65 = v52;
    v57 = v17;
    v58 = v16;
    v59 = v46;
    v60 = v11;
    v56 = v3;
    v18 = v17;
    if (v17 >= 2)
    {
      v19 = v17;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = v19[2];
    if (v20)
    {
      v43 = v4;
      sub_1000289DC(v45, v44);
      sub_100028B00(v18);
      v44[0] = _swiftEmptyArrayStorage;
      sub_10004E9B8(0, v20, 0);
      v21 = v44[0];
      v22 = (v19 + 6);
      do
      {
        v23 = *(v22 - 2);
        v24 = *(v22 - 1);
        if ((*v22 & 0xC0) == 0x40)
        {
          v25 = 64;
        }

        else
        {
          v25 = *v22;
        }

        sub_10002BB8C(*(v22 - 2), *(v22 - 1), *v22);
        v44[0] = v21;
        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          sub_10004E9B8((v26 > 1), v27 + 1, 1);
          v21 = v44[0];
        }

        v22 += 24;
        v21[2] = v27 + 1;
        v28 = &v21[4 * v27];
        v28[4] = v23;
        v28[5] = v24;
        *(v28 + 48) = v25;
        v28[7] = v3;
        --v20;
      }

      while (v20);

      sub_100002BCC(&v56, &qword_1000B5E60, &qword_100095B18);
      a1 = v40;
      v4 = v43;
    }

    else
    {
      sub_1000289DC(v45, v44);
      sub_100028B00(v18);

      sub_100002BCC(&v56, &qword_1000B5E60, &qword_100095B18);
      v21 = _swiftEmptyArrayStorage;
    }

    v29 = v21[2];
    v30 = v4[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v33 = v4[3] >> 1, v33 >= v31))
    {
      if (v21[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v34 = v30 + v29;
      }

      else
      {
        v34 = v30;
      }

      v4 = sub_100043494(isUniquelyReferenced_nonNull_native, v34, 1, v4);
      v33 = v4[3] >> 1;
      if (v21[2])
      {
LABEL_28:
        if (v33 - v4[2] < v29)
        {
          goto LABEL_40;
        }

        sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v35 = v4[2];
          v36 = __OFADD__(v35, v29);
          v37 = v35 + v29;
          if (v36)
          {
            goto LABEL_41;
          }

          v4[2] = v37;
        }

        goto LABEL_4;
      }
    }

    if (v29)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v3 == v42)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_1000732CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *(*a8)(void *__return_ptr, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, __int128 a10, uint64_t a11)
{
  result = a8(v33, a10, *(&a10 + 1), a11, a1, a2, a3, a4, a5, a6);
  if (v11)
  {
    return result;
  }

  v15 = v33[0];
  v14 = v33[1];
  v16 = *a7;
  if (*(*a7 + 16) && (v17 = sub_1000561CC(a10, *(&a10 + 1), a11), (v18 & 1) != 0))
  {
    sub_100058AFC(*(v16 + 56) + 72 * v17, &v24);
    v30[1] = v26;
    v31 = v27;
    v32 = v28;
    v29 = v24;
    v30[0] = v25;
  }

  else
  {
    v29 = a10;
    *&v30[0] = a11;
    *(&v30[0] + 1) = _swiftEmptyArrayStorage;
    *&v31 = sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    *(&v31 + 1) = &_swiftEmptySetSingleton;
    v32 = 1;
  }

  sub_10002600C(v30 + 8, &v24, &qword_1000B5428, &qword_100093030);
  if (!*(&v25 + 1))
  {
    sub_100002BCC(&v24, &qword_1000B5428, &qword_100093030);
    goto LABEL_10;
  }

  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  if (!swift_dynamicCast())
  {
LABEL_10:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v19 = v33[4];
LABEL_11:
  if (v32 == 1)
  {

    v32 = 0;
    v19 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_100042F3C(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100042F3C((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[16 * v21];
  *(v22 + 4) = v15;
  *(v22 + 5) = v14;
  *(&v25 + 1) = sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  *&v24 = v19;
  sub_100062CA0(&v24, v30 + 8);

  sub_100055BDC(v23);
  sub_10006AD50(&v29);
  sub_100039234(&v29);
}

void *sub_100073578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = a8(v19, a10, a11, a12, a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    v18[3] = &type metadata for String;
    v18[0] = v19[0];
    v18[1] = v19[1];
    sub_10002600C(v18, v16, &qword_1000B5428, &qword_100093030);
    v15[0] = a10;
    v15[1] = a11;
    v15[2] = a12;
    v16[4] = a1;
    v17 = 1;

    sub_10006AD50(v15);
    sub_100039234(v15);
    sub_100002BCC(v18, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

void *sub_1000736AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = a8(v19, a10, a11, a12, a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    v18[3] = &type metadata for Any + 8;
    v18[0] = swift_allocObject();
    sub_10004CC10(v19, v18[0] + 16);
    sub_10002600C(v18, v16, &qword_1000B5428, &qword_100093030);
    v15[0] = a10;
    v15[1] = a11;
    v15[2] = a12;
    v16[4] = a1;
    v17 = 1;

    sub_10006AD50(v15);
    sub_100039234(v15);
    sub_100002B38(v19);
    return sub_100002BCC(v18, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

uint64_t sub_1000737FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {
    v11 = a1;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
    goto LABEL_6;
  }

  v11 = sub_100068C4C(&off_1000AC310);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  v13 = a4;
LABEL_6:
  v18[0] = v13;
  v18[3] = v12;
  sub_10002600C(v18, v16, &qword_1000B5428, &qword_100093030);
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v16[4] = v11;
  v17 = 1;

  sub_10006AD50(v15);
  sub_100039234(v15);
  return sub_100002BCC(v18, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_100073928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 1)
  {
    v13 = a1;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    a4 = 0;
    v15 = 0;
    v14 = 0;
    v20[2] = 0;
    goto LABEL_6;
  }

  v13 = sub_100068C4C(&off_1000AC348);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = &type metadata for String;
  v15 = a5;
LABEL_6:
  v20[0] = a4;
  v20[1] = v15;
  v20[3] = v14;
  sub_10002600C(v20, v18, &qword_1000B5428, &qword_100093030);
  v17[0] = a6;
  v17[1] = a7;
  v17[2] = a8;
  v18[4] = v13;
  v19 = 1;

  sub_10006AD50(v17);
  sub_100039234(v17);
  return sub_100002BCC(v20, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_100073A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 == 1)
  {
    v11 = sub_100068C4C(&off_1000AC380);
  }

  else
  {
    v11 = a1;
  }

  sub_10002600C(a4, &v13, &qword_1000B5428, &qword_100093030);
  if (v15[0])
  {
    *(&v18 + 1) = &type metadata for Any + 8;
    *&v17 = swift_allocObject();
    sub_100058B58(&v13, (v17 + 16));
  }

  else
  {
    sub_100002BCC(&v13, &qword_1000B5428, &qword_100093030);
    v17 = 0u;
    v18 = 0u;
  }

  sub_10002600C(&v17, v15, &qword_1000B5428, &qword_100093030);
  *&v13 = a5;
  *(&v13 + 1) = a6;
  v14 = a7;
  v15[4] = v11;
  v16 = 1;

  sub_10006AD50(&v13);
  sub_100039234(&v13);
  return sub_100002BCC(&v17, &qword_1000B5428, &qword_100093030);
}

double sub_100073BBC()
{
  v0 = sub_10003AD7C(_swiftEmptyArrayStorage);

  v3 = xmmword_100091350;
  v4 = 0uLL;
  *&v5 = 0xD000000000000021;
  *(&v5 + 1) = 0x8000000100099560;
  v6 = 0uLL;
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  LOBYTE(v9) = 1;
  *(&v9 + 1) = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  *&v11 = 0;
  *(&v11 + 1) = v0;
  v12 = _swiftEmptyArrayStorage;
  v13 = xmmword_100091350;
  v14 = 0;
  v15 = 0;
  v16 = 0xD000000000000021;
  v17 = 0x8000000100099560;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = 0;
  v23 = 0xE000000000000000;
  v24 = 1;
  v25 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v27 = 0;
  v28 = 0;
  v29 = v0;
  v30 = _swiftEmptyArrayStorage;
  sub_10004314C(&v3, &v2);
  sub_100027BE4(&v13);
  xmmword_1000B6698 = v9;
  unk_1000B66A8 = v10;
  xmmword_1000B66B8 = v11;
  qword_1000B66C8 = v12;
  xmmword_1000B6658 = v5;
  unk_1000B6668 = v6;
  xmmword_1000B6678 = v7;
  unk_1000B6688 = v8;
  result = *&v3;
  xmmword_1000B6638 = v3;
  unk_1000B6648 = v4;
  return result;
}

uint64_t (*sub_100073CE4(char a1))()
{
  v2 = sub_10003AD7C(&off_1000ABF88);
  swift_arrayDestroy();

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = xmmword_100091310;
  *(v3 + 48) = xmmword_100091310;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 2;
  return sub_1000674D0;
}

uint64_t sub_100073DB0()
{
  if (*v0)
  {
    return 1886152040;
  }

  else
  {
    return 0x616D6D6F63627573;
  }
}

uint64_t sub_100073DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D6D6F63627573 && a2 == 0xEB0000000073646ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886152040 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100073ECC(uint64_t a1)
{
  v2 = sub_100075134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073F08(uint64_t a1)
{
  v2 = sub_100075134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073F44@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B5168 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10004314C(&xmmword_1000B6638, v2);
}

uint64_t sub_100073FB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10004FD40();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 9) = v5;
  *(v3 + 25) = v6;
  *(v3 + 72) = *&v8[15];
  *(v3 + 57) = *v8;
  *(v3 + 41) = v7;
  *(v3 + 88) = 0;
  swift_willThrow();
}

uint64_t (*sub_100074050@<X0>(uint64_t a1@<X8>))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = _swiftEmptyArrayStorage;
  *(v2 + 96) = -1;
  result = sub_100073CE4(0);
  *a1 = sub_10007431C;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
  *(a1 + 24) = sub_1000674D0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 1;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  return result;
}

double sub_10007410C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100074D28(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_100074158(uint64_t a1)
{
  result = sub_100074180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100074180()
{
  result = qword_1000B5E40;
  if (!qword_1000B5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E40);
  }

  return result;
}

unint64_t sub_1000741D4(uint64_t a1)
{
  result = sub_1000741FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000741FC()
{
  result = qword_1000B5E48;
  if (!qword_1000B5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E48);
  }

  return result;
}

uint64_t sub_100074250@<X0>(void *a2@<X8>)
{
  result = _print_unlocked<A, B>(_:_:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1000742B4()
{
  if (*(v0 + 24))
  {
  }

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 80), *(v0 + 88), v1);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100074354()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_1000743A8()
{
  result = qword_1000B5E58;
  if (!qword_1000B5E58)
  {
    sub_100002B84(&qword_1000B5E50, &qword_100095B10);
    sub_10002BB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E58);
  }

  return result;
}

uint64_t sub_10007442C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100074474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v9[16] = *(v7 + 40);
  *v9 = *(v7 + 24);
  return sub_1000732CC(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *&v9[8], *(v7 + 48));
}

uint64_t sub_1000744A8()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100074524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_10002BB8C(v5, v6, *(i - 8));
      result = sub_1000560F8(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100074640(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v37 = *(result + 56);
  v10 = *a3;
  sub_10002BB8C(v8, v7, v9);
  result = sub_1000560F8(v8, v7, v9);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_10006B49C(v15, i & 1);
    result = sub_1000560F8(v8, v7, v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = v18[6] + 24 * result;
    *v22 = v8;
    *(v22 + 8) = v7;
    *(v22 + 16) = v9;
    *(v18[7] + 8 * result) = v37;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_10006AE74();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;
  result = sub_100028AE8(v8, v7, v9);
  *(v18[7] + 8 * v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v6 = *(i - 8);
      v3 = *i;
      v27 = *a3;
      sub_10002BB8C(v7, v9, *(i - 8));
      result = sub_1000560F8(v7, v9, v6);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        break;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_10006B49C(v31, 1);
        result = sub_1000560F8(v7, v9, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = *(v33[7] + 8 * result);
        v26 = result;
        result = sub_100028AE8(v7, v9, v6);
        *(v33[7] + 8 * v26) = v25;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = v33[6] + 24 * result;
        *v34 = v7;
        *(v34 + 8) = v9;
        *(v34 + 16) = v6;
        *(v33[7] + 8 * result) = v3;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

void *sub_1000748F8(void *a1)
{
  sub_100074524(_swiftEmptyArrayStorage);

  v2 = sub_100084C84(a1);
  v3 = v2[2];

  v40 = v3;
  if (!v3)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_33:

    if (v5[2])
    {
      sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
      v36 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v36 = &_swiftEmptyDictionarySingleton;
    }

    v55 = v36;
    sub_100074640(v5, 1, &v55);

    return v2;
  }

  v4 = 0;
  v38 = v2;
  v39 = v2 + 4;
  v5 = _swiftEmptyArrayStorage;
  while (v4 < v2[2])
  {
    v6 = &v39[24 * v4];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[3];
    v54[2] = v6[2];
    v54[3] = v9;
    v54[0] = v7;
    v54[1] = v8;
    v10 = v6[4];
    v11 = v6[5];
    v12 = v6[7];
    v54[6] = v6[6];
    v54[7] = v12;
    v54[4] = v10;
    v54[5] = v11;
    v13 = v6[8];
    v14 = v6[9];
    v15 = v6[11];
    v54[10] = v6[10];
    v54[11] = v15;
    v54[8] = v13;
    v54[9] = v14;
    v50 = v6[8];
    v51 = v6[9];
    v52 = v6[10];
    v53 = v6[11];
    v46 = v6[4];
    v47 = v6[5];
    v48 = v6[6];
    v49 = v6[7];
    v42 = *v6;
    v43 = v6[1];
    v44 = v6[2];
    v45 = v6[3];
    v55 = v4;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v63 = v49;
    v62 = v48;
    v61 = v47;
    v60 = v46;
    v67 = v53;
    v66 = v52;
    v65 = v51;
    v64 = v50;
    v16 = v42;
    if (v42 >= 2)
    {
      v17 = v42;
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v18)
    {
      v41 = v5;
      sub_1000289DC(v54, &v42);
      sub_100028B00(v16);
      *&v42 = _swiftEmptyArrayStorage;
      sub_10004E9B8(0, v18, 0);
      v19 = v42;
      v20 = (v17 + 6);
      do
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        if ((*v20 & 0xC0) == 0x40)
        {
          v23 = 64;
        }

        else
        {
          v23 = *v20;
        }

        sub_10002BB8C(*(v20 - 2), *(v20 - 1), *v20);
        *&v42 = v19;
        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          sub_10004E9B8((v24 > 1), v25 + 1, 1);
          v19 = v42;
        }

        v20 += 24;
        v19[2] = v25 + 1;
        v26 = &v19[4 * v25];
        v26[4] = v21;
        v26[5] = v22;
        *(v26 + 48) = v23;
        v26[7] = v4;
        --v18;
      }

      while (v18);

      sub_100002BCC(&v55, &qword_1000B5E60, &qword_100095B18);
      v2 = v38;
      v5 = v41;
    }

    else
    {
      sub_1000289DC(v54, &v42);
      sub_100028B00(v16);

      sub_100002BCC(&v55, &qword_1000B5E60, &qword_100095B18);
      v19 = _swiftEmptyArrayStorage;
    }

    v27 = v19[2];
    v28 = v5[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v31 = v5[3] >> 1, v31 >= v29))
    {
      if (v19[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v32 = v28 + v27;
      }

      else
      {
        v32 = v28;
      }

      v5 = sub_100043494(isUniquelyReferenced_nonNull_native, v32, 1, v5);
      v31 = v5[3] >> 1;
      if (v19[2])
      {
LABEL_28:
        if (v31 - v5[2] < v27)
        {
          goto LABEL_40;
        }

        sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
        swift_arrayInitWithCopy();

        if (v27)
        {
          v33 = v5[2];
          v34 = __OFADD__(v33, v27);
          v35 = v33 + v27;
          if (v34)
          {
            goto LABEL_41;
          }

          v5[2] = v35;
        }

        goto LABEL_4;
      }
    }

    if (v27)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v4 == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100074D28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1000021C0(&qword_1000B5E68, &qword_100095B20);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  sub_100073CE4(0);
  v9 = v8;
  sub_100002AA0(a1, a1[3]);
  sub_100075134();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000022C8(sub_1000674D0, v9, 1);
    return sub_100002B38(a1);
  }

  else
  {
    v10 = v9;
    v11 = v5;
    v12 = v17;
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    v21 = 0;
    sub_100075188();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v22;
    v20 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000022C8(sub_1000674D0, v10, 1);
    (*(v11 + 8))(v7, v4);
    v19 = 0;
    v18 = 0;
    result = sub_100002B38(a1);
    *v12 = v13;
    *(v12 + 8) = 0;
    *(v12 + 16) = v19;
    *(v12 + 24) = v15 & 1;
    *(v12 + 32) = 0;
    *(v12 + 40) = v18;
    *(v12 + 48) = _swiftEmptyArrayStorage;
    *(v12 + 56) = 0;
  }

  return result;
}

unint64_t sub_100074FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C0(&qword_1000B5DE8, &qword_100094B00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002600C(v4, &v18, &qword_1000B5E90, &qword_100095B38);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      result = sub_1000561CC(v18, v19, v20);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 24 * result);
      *v10 = v5;
      v10[1] = v6;
      v10[2] = v7;
      v11 = v3[7] + 72 * result;
      *v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      *(v11 + 64) = v25;
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 96;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100075134()
{
  result = qword_1000B5E70;
  if (!qword_1000B5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E70);
  }

  return result;
}

unint64_t sub_100075188()
{
  result = qword_1000B5E78;
  if (!qword_1000B5E78)
  {
    sub_100002B84(&qword_1000B5180, &unk_100095FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E78);
  }

  return result;
}

unint64_t sub_100075204(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5E80, &qword_100095B28);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000021C0(&qword_1000B5E88, &qword_100095B30);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002600C(v9, v5, &qword_1000B5E80, &qword_100095B28);
      result = sub_1000562A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100058B58(&v5[v8], (v7[7] + 32 * v13));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000753F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100073CE4(0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v6;

    sub_10004E820(0, v7, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = a1 + 40;
    do
    {
      v11 = (*(*v10 + 24))();
      v19 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v18 = v11;
        v16 = v12;
        sub_10004E820((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v9 = v19;
      }

      v9[2] = v14 + 1;
      v15 = &v9[2 * v14];
      v15[4] = v11;
      v15[5] = v12;
      v10 += 16;
      --v7;
    }

    while (v7);

    result = sub_1000022C8(sub_1000674D0, v8, 1);
  }

  else
  {
    result = sub_1000022C8(sub_1000674D0, v6, 1);
    v9 = _swiftEmptyArrayStorage;
  }

  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  return result;
}

unint64_t sub_100075574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C0(&qword_1000B5E00, &qword_100094B10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001F970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100075678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = sub_100056308(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_100056308(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007579C()
{
  sub_100002B38((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000757E8()
{
  result = qword_1000B5E98;
  if (!qword_1000B5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5E98);
  }

  return result;
}

unint64_t sub_100075840()
{
  result = qword_1000B5EA0;
  if (!qword_1000B5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5EA0);
  }

  return result;
}

unint64_t sub_100075898()
{
  result = qword_1000B5EA8;
  if (!qword_1000B5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5EA8);
  }

  return result;
}

uint64_t sub_100075900(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_100075980(uint64_t result, char a2)
{
  v84 = result;
  if (a2)
  {
    result = sub_10008334C();
    v84 = result;
    v5 = v4;
    if (v4 & 1) != 0 || (v3)
    {
      result = sub_1000836A4();
      v7 = 80;
      if ((v6 & 1) == 0)
      {
        v7 = result;
      }

      v8 = v84;
      if (v5)
      {
        v8 = v7;
      }

      v84 = v8;
    }
  }

  v83 = v2;
  v9 = v2[5];
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v88 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v10, 0);
    v11 = _swiftEmptyArrayStorage;
    v12 = v9 + 40;
    do
    {
      v13 = *(v12 - 8);
      v14 = *v12;
      v15 = *(v12 + 16);
      v16 = *(v12 + 8);
      sub_10007A7CC(v13, *v12, v16);

      v17 = sub_10007A2F4(v84, v13, v14, v16, v15);
      v19 = v18;
      sub_10007A7E4(v13, v14, v16);

      v88 = v11;
      v21 = v11[2];
      v20 = v11[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        result = sub_10004E820((v20 > 1), v21 + 1, 1);
        v11 = v88;
      }

      v11[2] = v22;
      v23 = &v11[2 * v21];
      v23[4] = v17;
      v23[5] = v19;
      v12 += 56;
      --v10;
    }

    while (v10);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage[2];
  }

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
LABEL_17:
  v26 = &v11[2 * v24 + 5];
  while (v22 != v24)
  {
    if (v24 >= v11[2])
    {
      goto LABEL_58;
    }

    ++v24;
    v28 = *(v26 - 1);
    v27 = *v26;
    v26 += 2;
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v88 = v25;
      if ((result & 1) == 0)
      {
        result = sub_10004E820(0, v25[2] + 1, 1);
        v25 = v88;
      }

      v31 = v25[2];
      v30 = v25[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_10004E820((v30 > 1), v31 + 1, 1);
        v25 = v88;
      }

      v25[2] = v31 + 1;
      v32 = &v25[2 * v31];
      v32[4] = v28;
      v32[5] = v27;
      goto LABEL_17;
    }
  }

  v88 = v25;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  v36 = v83;
  v37 = v83[1];
  v38 = v83[2];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    String.append(_:)(*&v37);
    v40 = sub_10007603C(v84, 0, 0x574549565245564FLL, 0xEA0000000000203ALL);
    v42 = v41;

    v88 = v40;
    v89 = v42;

    v43._countAndFlagsBits = 2570;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);

    v44 = v40;
    v45 = v89;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
  }

  result = sub_100077404();
  if (result)
  {
    v46 = *v83;
    v47 = *(*v83 + 16);
    if (v47)
    {
      v81 = v45;
      v82 = v44;
      v85 = v35;
      v48 = v33;
      v88 = _swiftEmptyArrayStorage;
      sub_10004E820(0, v47, 0);
      v49 = _swiftEmptyArrayStorage;
      v50 = v46 + 40;
      do
      {
        v51 = (*(*v50 + 24))();
        v88 = v49;
        v54 = *(v49 + 2);
        v53 = *(v49 + 3);
        if (v54 >= v53 >> 1)
        {
          v80 = v51;
          v56 = v52;
          sub_10004E820((v53 > 1), v54 + 1, 1);
          v52 = v56;
          v51 = v80;
          v49 = v88;
        }

        *(v49 + 2) = v54 + 1;
        v55 = &v49[16 * v54];
        *(v55 + 4) = v51;
        *(v55 + 5) = v52;
        v50 += 16;
        --v47;
      }

      while (v47);
      (*(*(v46 + 40) + 16))(&v88);
      v91[0] = v90;
      sub_100029F9C(v91, &v86);
      result = sub_100027BE4(&v88);
      v59 = *(&v91[0] + 1);
      if (*(&v91[0] + 1))
      {
        v60 = *&v91[0];
        v61 = *(v49 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v48;
        if (!isUniquelyReferenced_nonNull_native || v61 >= *(v49 + 3) >> 1)
        {
          v49 = sub_100042F3C(isUniquelyReferenced_nonNull_native, v61 + 1, 1, v49);
        }

        v35 = v85;
        sub_100072648(0, 0, 1, v60, v59);
        result = sub_100002BCC(v91, &qword_1000B51D8, &qword_100094230);
        v63 = *(v49 + 2);
        if (v63)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v33 = v48;
        v35 = v85;
        v63 = *(v49 + 2);
        if (v63)
        {
LABEL_46:
          v64 = swift_isUniquelyReferenced_nonNull_native();
          if (!v64 || v63 >= *(v49 + 3) >> 1)
          {
            sub_100042F3C(v64, v63 + 1, 1, v49);
          }

          v36 = v83;
          v45 = v81;
          sub_100072648(1uLL, 1, 1, 1886152040, 0xE400000000000000);
          v86 = 0;
          v87 = 0xE000000000000000;
          _StringGuts.grow(_:)(43);

          v86 = 0x272065655320200ALL;
          v87 = 0xE800000000000000;
          v65 = BidirectionalCollection<>.joined(separator:)();
          v67 = v66;

          v68._countAndFlagsBits = v65;
          v68._object = v67;
          String.append(_:)(v68);

          v69._object = 0x8000000100099590;
          v69._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v69);
          v57 = v86;
          v58 = v87;
          v44 = v82;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
LABEL_50:
  v70 = v36[3];
  v71 = v36[4];
  v72 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v72 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (v72)
  {
    v86 = 0x203A4547415355;
    v87 = 0xE700000000000000;
    sub_100077228(7, v70, v71);
    String.append(_:)(v73);

    v74._countAndFlagsBits = 2570;
    v74._object = 0xE200000000000000;
    String.append(_:)(v74);
    v75 = v86;
    v76 = v87;
  }

  else
  {
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v86 = v44;
  v87 = v45;
  v77 = v76;
  String.append(_:)(*&v75);

  v78._countAndFlagsBits = v33;
  v78._object = v35;
  String.append(_:)(v78);

  v79._countAndFlagsBits = v57;
  v79._object = v58;
  String.append(_:)(v79);

  return v86;
}

uint64_t sub_10007603C(uint64_t a1, Swift::Int a2, uint64_t a3, unint64_t a4)
{
  v8 = a1 - a2;
  if (!__OFSUB__(a1, a2))
  {
    if (v8 < 1)
    {
      return 0;
    }

    v9 = a4;
    v10 = a3;
    v111 = _swiftEmptyArrayStorage;
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v100 = 4 * v11;
    v4 = 15;
    v103 = a1 - a2;
LABEL_11:
    v24 = sub_1000117E4(v4, v10, v9);
    v5 = v25;
    v6 = v26;
    v27 = Substring.index(_:offsetBy:limitedBy:)();
    if (v28)
    {
      v29 = v5;
    }

    else
    {
      v29 = v27;
    }

    if (v29 >> 14 >= v24 >> 14)
    {
      v109 = v4 >> 14;
      v5 = Substring.subscript.getter();
      v31 = v30;

      v8 = v5 >> 14;
      v7 = v31;
      while (v8 != v7 >> 14)
      {
        v7 = Substring.index(before:)();
        v33 = Substring.subscript.getter();
        v6 = v34;
        if (v33 == 10 && v34 == 0xE100000000000000)
        {

LABEL_28:

          if (v109 > v7 >> 14)
          {
            goto LABEL_83;
          }

          v38 = String.subscript.getter();
          v5 = v38;
          v4 = v39;
          v8 = v38 >> 14;
          v41 = v40 >> 14;
          if (v38 >> 14 == v40 >> 14)
          {
            v12 = Substring.subscript.getter();
            v14 = v13;
            v16 = v15;
            v18 = v17;

            v19 = sub_1000436D4(0, 1, 1, _swiftEmptyArrayStorage);
            v21 = *(v19 + 2);
            v20 = *(v19 + 3);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v19 = sub_1000436D4((v20 > 1), v21 + 1, 1, v19);
            }

            v8 = v103;
          }

          else
          {
            v110 = _swiftEmptyArrayStorage;
            do
            {
              v107 = v38;
              while (1)
              {
                v42 = Substring.subscript.getter();
                v6 = v43;
                if (v42 == 10 && v43 == 0xE100000000000000)
                {
                  break;
                }

                v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v44)
                {
                  goto LABEL_38;
                }

                v8 = Substring.index(after:)() >> 14;
                if (v8 == v41)
                {
                  v38 = v107;
                  goto LABEL_46;
                }
              }

LABEL_38:
              if (v8 < v107 >> 14)
              {
                goto LABEL_84;
              }

              v45 = Substring.subscript.getter();
              v108 = v46;
              v104 = v48;
              v105 = v47;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v49 = v110;
              }

              else
              {
                v49 = sub_1000436D4(0, *(v110 + 2) + 1, 1, v110);
              }

              v51 = *(v49 + 2);
              v50 = *(v49 + 3);
              v6 = (v51 + 1);
              if (v51 >= v50 >> 1)
              {
                v49 = sub_1000436D4((v50 > 1), v51 + 1, 1, v49);
              }

              *(v49 + 2) = v6;
              v110 = v49;
              v52 = &v49[32 * v51];
              *(v52 + 4) = v45;
              *(v52 + 5) = v108;
              *(v52 + 6) = v105;
              *(v52 + 7) = v104;
              v38 = Substring.index(after:)();
              v8 = v38 >> 14;
            }

            while (v38 >> 14 != v41);
LABEL_46:
            if (v41 < v38 >> 14)
            {
              goto LABEL_85;
            }

            v12 = Substring.subscript.getter();
            v14 = v53;
            v16 = v54;
            v18 = v55;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v8 = v103;
              v19 = v110;
            }

            else
            {
              v19 = sub_1000436D4(0, *(v110 + 2) + 1, 1, v110);
              v8 = v103;
            }

            v21 = *(v19 + 2);
            v56 = *(v19 + 3);
            v22 = v21 + 1;
            if (v21 >= v56 >> 1)
            {
              v19 = sub_1000436D4((v56 > 1), v21 + 1, 1, v19);
            }
          }

          *(v19 + 2) = v22;
          v23 = &v19[32 * v21];
          *(v23 + 4) = v12;
          *(v23 + 5) = v14;
          *(v23 + 6) = v16;
          *(v23 + 7) = v18;
          sub_1000424C8(v19);
          v9 = a4;
          v10 = a3;
LABEL_10:
          v4 = String.index(after:)();
          goto LABEL_11;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_28;
        }
      }

      v7 = v31;
      if (v100 != v31 >> 14)
      {
        while (v8 != v7 >> 14)
        {
          v7 = Substring.index(before:)();
          v36 = Substring.subscript.getter();
          v6 = v37;
          if (v36 == 32 && v37 == 0xE100000000000000)
          {

LABEL_58:

            v10 = a3;
            if (v109 > v7 >> 14)
            {
              goto LABEL_86;
            }

LABEL_63:
            v64 = String.subscript.getter();
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v71 = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_1000436D4(0, *(v111 + 2) + 1, 1, v111);
            }

            v73 = *(v71 + 2);
            v72 = *(v71 + 3);
            if (v73 >= v72 >> 1)
            {
              v71 = sub_1000436D4((v72 > 1), v73 + 1, 1, v71);
            }

            *(v71 + 2) = v73 + 1;
            v74 = &v71[32 * v73];
            *(v74 + 4) = v64;
            *(v74 + 5) = v66;
            *(v74 + 6) = v68;
            *(v74 + 7) = v70;
            v111 = v71;
            v8 = v103;
            goto LABEL_10;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_58;
          }
        }

        v57 = sub_1000117E4(v4, a3, v9);
        v59 = v58 >> 14;
        v60 = v57 >> 14;
        if (v57 >> 14 == v58 >> 14)
        {
LABEL_69:

          v76 = v4;
          v77 = a3;
          v78 = a4;
          goto LABEL_71;
        }

        v5 = v57;
        v8 = v58;
        v7 = v57;
        while (1)
        {
          v61 = Substring.subscript.getter();
          v6 = v62;
          if (v61 == 32 && v62 == 0xE100000000000000)
          {
            break;
          }

          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v63)
          {
            goto LABEL_61;
          }

          v7 = Substring.index(after:)();
          v60 = v7 >> 14;
          if (v7 >> 14 == v59)
          {
            goto LABEL_69;
          }
        }

LABEL_61:

        v9 = a4;
        if (v60 >= v109)
        {
          v10 = a3;
          goto LABEL_63;
        }

        goto LABEL_88;
      }

      v76 = v4;
      v77 = a3;
      v78 = v9;
LABEL_71:
      v4 = sub_1000117E4(v76, v77, v78);
      v5 = v79;
      v8 = v80;
      v7 = v81;
      v6 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v6 = sub_1000436D4(0, *(v6 + 2) + 1, 1, v6);
LABEL_72:
  v83 = *(v6 + 2);
  v82 = *(v6 + 3);
  v84 = v83 + 1;
  if (v83 >= v82 >> 1)
  {
    v6 = sub_1000436D4((v82 > 1), v83 + 1, 1, v6);
  }

  *(v6 + 2) = v84;
  v85 = &v6[32 * v83];
  *(v85 + 4) = v4;
  *(v85 + 5) = v5;
  *(v85 + 6) = v8;
  *(v85 + 7) = v7;
  sub_10004E860(0, v83 + 1, 0);
  v86 = (v6 + 56);
  do
  {
    v87 = *(v86 - 3);
    v88 = *(v86 - 2);
    v89 = *(v86 - 1);
    v90 = *v86;

    if ((v88 ^ v87) >= 0x4000)
    {
      v91._countAndFlagsBits = 32;
      v91._object = 0xE100000000000000;
      String.init(repeating:count:)(v91, a2);
      Substring.distance(from:to:)();
      String.count.getter();
      static String._fromSubstring(_:)();
      String.append<A>(contentsOf:)();

      Substring.init(_:)();
      static String._fromSubstring(_:)();

      sub_10002EFC4();
      String.append<A>(contentsOf:)();
      v87 = Substring.init(_:)();
      v88 = v92;
      v89 = v93;
      v95 = v94;

      v90 = v95;
    }

    v97 = _swiftEmptyArrayStorage[2];
    v96 = _swiftEmptyArrayStorage[3];
    if (v97 >= v96 >> 1)
    {
      sub_10004E860((v96 > 1), v97 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v97 + 1;
    v98 = &_swiftEmptyArrayStorage[4 * v97];
    v98[4] = v87;
    v98[5] = v88;
    v98[6] = v89;
    v98[7] = v90;
    v86 += 4;
    --v84;
  }

  while (v84);

  sub_1000021C0(&qword_1000B51F0, &qword_1000914B8);
  sub_10000BD8C(&qword_1000B51F8, &qword_1000B51F0, &qword_1000914B8, &protocol conformance descriptor for [A]);
  sub_10002F018();
  v75 = Sequence<>.joined(separator:)();

  return v75;
}

Swift::Int sub_100076A2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100076AB0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100076B1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100076B9C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100076C94()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v8 = *v0;

      v3._countAndFlagsBits = 0x6D6D6F6362755320;
      v3._object = 0xEC00000073646E61;
      String.append(_:)(v3);
      return v8;
    }

    else
    {
      v6 = v2 | v1;
      if (v2 ^ 1 | v1)
      {
        v7 = 0x736E6F6974704FLL;
      }

      else
      {
        v7 = 0x616D6D6F63627553;
      }

      if (v6)
      {
        return v7;
      }

      else
      {
        return 0x746E656D75677241;
      }
    }
  }

  else
  {
    v5 = *v0;

    return v5;
  }
}

uint64_t sub_100076D80(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(v4 | v5))
    {
      return v9 == 2 && (v8 | v7) == 0;
    }

    if (v4 ^ 1 | v5)
    {
      if (v9 != 2 || v7 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 2 || v7 != 1)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }
  }

  else if (!v9)
  {
LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_100076E28@<X0>(uint64_t *a9@<X8>)
{
  result = sub_10007D0A0();
  *a9 = result;
  a9[1] = v11;
  return result;
}

BOOL sub_100076E8C(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_100076EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = result;
  v6 = a3;
  v8 = 0;
  v9 = *(a4 + 16);
  v10 = a4 + 40;
  v38 = _swiftEmptyArrayStorage;
  v34 = a4 + 40;
LABEL_2:
  v11 = (v10 + 16 * v8);
  while (1)
  {
    if (v9 == v8)
    {
      result = sub_10007A7CC(v36, a2, v6);
      *a6 = v36;
      *(a6 + 8) = a2;
      *(a6 + 16) = v6;
      *(a6 + 24) = v38;
      *(a6 + 32) = 0;
      *(a6 + 40) = 0xE000000000000000;
      *(a6 + 48) = 0;
      return result;
    }

    if (v8 >= v9)
    {
      break;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v39 = v8 + 1;
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = *(*v11 + 16);
    v15 = v9;
    v14(v42, v13, *v11);
    result = sub_100027BE4(v42);
    ++v8;
    v11 += 2;
    if (v43)
    {
      v32 = v6;
      v33 = a6;
      v40 = (*(v12 + 24))(v13, v12);
      v41 = v16;
      v14(v44, v13, v12);
      v17 = v45;
      v47 = v45;

      sub_100027BE4(v44);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 40);
        do
        {
          v21 = *(v19 - 1);
          v20 = *v19;

          v22._countAndFlagsBits = v21;
          v22._object = v20;
          String.append(_:)(v22);

          v23._countAndFlagsBits = 8236;
          v23._object = 0xE200000000000000;
          String.append(_:)(v23);

          v19 += 2;
          --v18;
        }

        while (v18);
      }

      sub_100002BCC(&v47, &qword_1000B5180, &unk_100095FF0);
      v24 = *(a5 + 120);
      if (v24 && v13 == v24)
      {
        v25._countAndFlagsBits = 0x6C75616665642820;
        v25._object = 0xEA00000000002974;
        String.append(_:)(v25);
      }

      v14(v46, v13, v12);
      v26 = v46[4];
      v27 = v46[5];

      sub_100027BE4(v46);
      v28 = v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      a6 = v33;
      if ((result & 1) == 0)
      {
        result = sub_100043E78(0, *(v38 + 2) + 1, 1, v38);
        v28 = result;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_100043E78((v29 > 1), v30 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v30 + 1;
      v38 = v28;
      v31 = (v28 + 48 * v30);
      v31[4] = v40;
      v31[5] = v41;
      v31[6] = v26;
      v31[7] = v27;
      v31[8] = 0;
      v31[9] = 0xE000000000000000;
      v8 = v39;
      v6 = v32;
      v9 = v15;
      v10 = v34;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000771A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_100077228(7, v1, v2);
  String.append(_:)(v4);

  return 0x203A6567617355;
}

void sub_100077228(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v22 = 10;
  v23 = 0xE100000000000000;
  v21[2] = &v22;

  v7 = sub_10002E594(1, 0, sub_10002A00C, v21, a2, a3, v6);
  v8 = v7;
  if (v7[2] == 2)
  {

    v9 = static String._fromSubstring(_:)();
    v11 = v10;

    v22 = v9;
    v23 = v11;
    v12._countAndFlagsBits = 10;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    if (v8[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v13 = v8[8];
      v14 = v8[9];
      v15 = v8[10];
      v16 = v8[11];

      v17 = sub_10002BEDC(a1, v13, v14, v15, v16);
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);
    }
  }

  else
  {
    v22 = v7;
    sub_1000021C0(&qword_1000B51F0, &qword_1000914B8);
    sub_10000BD8C(&qword_1000B51F8, &qword_1000B51F0, &qword_1000914B8, &protocol conformance descriptor for [A]);
    sub_10002F018();
    Sequence<>.joined(separator:)();
  }
}

BOOL sub_100077404()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 56; !*(i - 8) || *(i - 8) == 2 && *(i - 24) ^ 1 | *(i - 16); i += 56)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return *(*i + 16) != 0;
}

char *sub_100077460(char a1, uint64_t a2)
{
  v4 = sub_1000681D4(1886152040, 0xE400000000000000, 0, 0);
  v6 = sub_10003B384(v4, v5, a2);

  v7 = 0;
  v8 = -*(v6 + 2);
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = v7 + 1;
  v11 = &v6[24 * v7 + 32];
  while (1)
  {
    v7 = v10;
    if (v8 + v10 == 1)
    {

      v23[0] = v9;

      sub_100077720(v23);

      return v23[0];
    }

    if ((v10 - 1) >= *(v6 + 2))
    {
      break;
    }

    v12 = *(v11 + 16);
    if (!a1)
    {
      v17 = *v11;
      v18 = *(v11 + 8);
      sub_10002BB8C(*v11, v18, *(v11 + 16));
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100043274(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_100043274((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[24 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v21[48] = v12;
      goto LABEL_2;
    }

    ++v10;
    v11 += 24;
    if (v12 >> 6 != 1)
    {
      v13 = *(v11 - 24);
      v14 = *(v11 - 16);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 45;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      _print_unlocked<A, B>(_:_:)();
      sub_100028AE8(v13, v14, v12);
      if (v12 >> 6)
      {
        v17 = 0;
        v18 = 0xE000000000000000;
        LOBYTE(v12) = 0x80;
      }

      else
      {
        LOBYTE(v12) = 0;
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      goto LABEL_11;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::Int sub_100077720(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100078CBC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10007778C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10007778C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100077B44(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100077884(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100077884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v30 = *a4;
    v4 = *a4 + 24 * a3;
    v5 = result - a3;
LABEL_6:
    v28 = v4;
    v29 = a3;
    v27 = v5;
    v6 = v4;
    while (1)
    {
      v37 = *v4;
      v32 = *(v4 + 8);
      v7 = *(v4 + 16);
      v9 = *(v6 - 24);
      v6 -= 24;
      v8 = v9;
      v10 = *(v4 - 16);
      v11 = *(v4 - 8);
      if (v11 >> 6)
      {
        if (v11 >> 6 == 1)
        {
          v33 = 0;
          v35 = 0xE000000000000000;
          sub_10002BB8C(v37, v32, v7);
          sub_10002BB8C(v8, v10, v11);
          v12._countAndFlagsBits = 45;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);
          Character.write<A>(to:)();
          goto LABEL_13;
        }

        v33 = 45;
        v13 = 0xE100000000000000;
      }

      else
      {
        v33 = 11565;
        v13 = 0xE200000000000000;
      }

      v35 = v13;
      sub_10002BB8C(v37, v32, v7);
      sub_10002BB8C(v8, v10, v11);
      v14._countAndFlagsBits = v8;
      v14._object = v10;
      String.append(_:)(v14);
LABEL_13:
      v15 = v7;
      v16 = v33;
      v17 = v35;
      v31 = v15;
      v18 = v15 >> 6;
      if (!v18)
      {
        v34 = 11565;
        v20 = 0xE200000000000000;
LABEL_18:
        v36 = v20;
        v21._countAndFlagsBits = v37;
        v21._object = v32;
        String.append(_:)(v21);
        goto LABEL_19;
      }

      if (v18 != 1)
      {
        v34 = 45;
        v20 = 0xE100000000000000;
        goto LABEL_18;
      }

      v34 = 0;
      v36 = 0xE000000000000000;
      v19._countAndFlagsBits = 45;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      Character.write<A>(to:)();
LABEL_19:
      if (v16 == v34 && v17 == v36)
      {

        sub_100028AE8(v8, v10, v11);
        result = sub_100028AE8(v37, v32, v31);
LABEL_5:
        a3 = v29 + 1;
        v4 = v28 + 24;
        v5 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100028AE8(v8, v10, v11);
      result = sub_100028AE8(v37, v32, v31);
      if ((v22 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v30)
      {
        __break(1u);
        return result;
      }

      v23 = *(v4 + 16);
      v24 = *v4;
      *v4 = *v6;
      *(v4 + 16) = *(v6 + 16);
      *(v4 - 24) = v24;
      *(v4 - 8) = v23;
      v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100077B44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v131 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_123:
    v9 = *v131;
    if (!*v131)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_125:
      v124 = v5;
      v125 = *(v8 + 2);
      if (v125 >= 2)
      {
        while (*a3)
        {
          v126 = *&v8[16 * v125];
          v5 = *&v8[16 * v125 + 24];
          sub_1000785D0((*a3 + 24 * v126), (*a3 + 24 * *&v8[16 * v125 + 16]), *a3 + 24 * v5, v9);
          if (v124)
          {
          }

          if (v5 < v126)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100078CA8(v8);
          }

          if (v125 - 2 >= *(v8 + 2))
          {
            goto LABEL_150;
          }

          v127 = &v8[16 * v125];
          *v127 = v126;
          *(v127 + 1) = v5;
          result = sub_100078C1C(v125 - 1);
          v125 = *(v8 + 2);
          if (v125 <= 1)
          {
          }
        }

        goto LABEL_160;
      }
    }

LABEL_156:
    result = sub_100078CA8(v8);
    v8 = result;
    goto LABEL_125;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (2)
  {
    v9 = v7++;
    v138 = v8;
    if (v7 >= v6)
    {
      goto LABEL_40;
    }

    v136 = v6;
    v129 = v5;
    v10 = v9;
    v11 = *a3;
    v12 = *a3 + 24 * v7;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v132 = v10;
    v16 = *a3 + 24 * v10;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_10002BB8C(v13, v14, v15);
    sub_10002BB8C(v17, v18, v19);
    v20 = sub_100068E38(v17, v18, v19);
    v22 = v21;
    if (v20 == sub_100068E38(v13, v14, v15) && v22 == v23)
    {
      v142 = 0;
    }

    else
    {
      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100028AE8(v17, v18, v19);
    result = sub_100028AE8(v13, v14, v15);
    v25 = 0;
    v26 = v132 + 2;
    v27 = (v11 + 24 * v132 + 64);
    v28 = 24 * v132;
    v8 = v138;
    do
    {
      v7 = v26;
      v30 = v25;
      v5 = v28;
      if (v26 >= v136)
      {
        break;
      }

      v140 = v26;
      v31 = *(v27 - 2);
      v32 = *(v27 - 1);
      v33 = *v27;
      v34 = *(v27 - 5);
      v35 = *(v27 - 4);
      v36 = *(v27 - 24);
      v148 = v31;
      v146 = v32;
      v144 = v34;
      if (v36 >> 6)
      {
        if (v36 >> 6 == 1)
        {
          v150 = 0;
          v154 = 0xE000000000000000;
          sub_10002BB8C(v31, v32, v33);
          sub_10002BB8C(v34, v35, v36);
          v37._countAndFlagsBits = 45;
          v37._object = 0xE100000000000000;
          String.append(_:)(v37);
          Character.write<A>(to:)();
          goto LABEL_21;
        }

        v150 = 45;
        v38 = 0xE100000000000000;
      }

      else
      {
        v150 = 11565;
        v38 = 0xE200000000000000;
      }

      v154 = v38;
      sub_10002BB8C(v31, v32, v33);
      sub_10002BB8C(v34, v35, v36);
      v39._countAndFlagsBits = v34;
      v39._object = v35;
      String.append(_:)(v39);
LABEL_21:
      v41 = v150;
      v40 = v154;
      if (v33 >> 6)
      {
        if (v33 >> 6 == 1)
        {
          v151 = 0;
          v155 = 0xE000000000000000;
          v42._countAndFlagsBits = 45;
          v42._object = 0xE100000000000000;
          String.append(_:)(v42);
          Character.write<A>(to:)();
          goto LABEL_27;
        }

        v151 = 45;
        v43 = 0xE100000000000000;
      }

      else
      {
        v151 = 11565;
        v43 = 0xE200000000000000;
      }

      v155 = v43;
      v44._countAndFlagsBits = v148;
      v44._object = v146;
      String.append(_:)(v44);
LABEL_27:
      if (v41 == v151 && v40 == v155)
      {
        v29 = 0;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_100028AE8(v144, v35, v36);
      result = sub_100028AE8(v148, v146, v33);
      v7 = v140;
      v26 = v140 + 1;
      v27 += 24;
      v25 = v30 + 1;
      v28 = v5 + 24;
      v8 = v138;
    }

    while (((v142 ^ v29) & 1) == 0);
    if (v142)
    {
      v9 = v132;
      if (v7 < v132)
      {
        goto LABEL_153;
      }

      v45 = 24 * v132;
      if (v132 < v7)
      {
        v46 = 0;
        do
        {
          if (v132 + v46 != v132 + v30 + 1)
          {
            v47 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v48 = (v47 + v45);
            v49 = v47 + v5;
            v50 = v45;
            v51 = *(v48 + 16);
            v52 = *v48;
            v53 = *(v49 + 40);
            *v48 = *(v49 + 24);
            *(v48 + 2) = v53;
            *(v49 + 24) = v52;
            *(v49 + 40) = v51;
            v45 = v50;
          }

          --v30;
          ++v46;
          v5 -= 24;
          v45 += 24;
        }

        while (v46 + v132 < v132 + v30 + 2);
      }

      v5 = v129;
    }

    else
    {
      v5 = v129;
      v9 = v132;
    }

LABEL_40:
    v54 = a3[1];
    if (v7 >= v54)
    {
      goto LABEL_72;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_152;
    }

    if (v7 - v9 >= a4)
    {
LABEL_72:
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100043390(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v79 = *(v8 + 2);
      v78 = *(v8 + 3);
      v80 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        result = sub_100043390((v78 > 1), v79 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v80;
      v81 = &v8[16 * v79];
      *(v81 + 4) = v9;
      *(v81 + 5) = v7;
      v82 = *v131;
      if (!*v131)
      {
        goto LABEL_161;
      }

      if (!v79)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_123;
        }

        continue;
      }

      while (1)
      {
        v9 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v83 = *(v8 + 4);
          v84 = *(v8 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_92:
          if (v86)
          {
            goto LABEL_140;
          }

          v99 = &v8[16 * v80];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_143;
          }

          v105 = &v8[16 * v9 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_147;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v9 = v80 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v109 = &v8[16 * v80];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_106:
        if (v104)
        {
          goto LABEL_142;
        }

        v112 = &v8[16 * v9];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_145;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_113:
        v120 = v9 - 1;
        if (v9 - 1 >= v80)
        {
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
          goto LABEL_155;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v121 = *&v8[16 * v120 + 32];
        v122 = *&v8[16 * v9 + 40];
        sub_1000785D0((*a3 + 24 * v121), (*a3 + 24 * *&v8[16 * v9 + 32]), *a3 + 24 * v122, v82);
        if (v5)
        {
        }

        if (v122 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078CA8(v8);
        }

        if (v120 >= *(v8 + 2))
        {
          goto LABEL_137;
        }

        v123 = &v8[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        result = sub_100078C1C(v9);
        v80 = *(v8 + 2);
        if (v80 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v8[16 * v80 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_138;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_139;
      }

      v94 = &v8[16 * v80];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_141;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_144;
      }

      if (v98 >= v90)
      {
        v116 = &v8[16 * v9 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_148;
        }

        if (v85 < v119)
        {
          v9 = v80 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

    break;
  }

  v55 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_154;
  }

  if (v55 >= v54)
  {
    v55 = a3[1];
  }

  if (v55 < v9)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v7 == v55)
  {
    goto LABEL_72;
  }

  v130 = v5;
  v143 = *a3;
  v56 = *a3 + 24 * v7;
  v133 = v9;
  v134 = v55;
  v57 = v9 - v7;
  while (2)
  {
    v141 = v7;
    v135 = v57;
    v137 = v56;
    v58 = v56;
LABEL_52:
    v59 = *v56;
    v60 = *(v56 + 8);
    v61 = *(v56 + 16);
    v63 = *(v58 - 24);
    v58 -= 24;
    v62 = v63;
    v64 = *(v56 - 16);
    v65 = *(v56 - 8);
    v149 = *v56;
    v147 = v60;
    v145 = *(v56 - 8);
    if (v65 >> 6)
    {
      if (v65 >> 6 == 1)
      {
        v152 = 0;
        v156 = 0xE000000000000000;
        sub_10002BB8C(v59, v60, v61);
        sub_10002BB8C(v62, v64, v65);
        v66._countAndFlagsBits = 45;
        v66._object = 0xE100000000000000;
        String.append(_:)(v66);
        Character.write<A>(to:)();
        goto LABEL_58;
      }

      v152 = 45;
      v67 = 0xE100000000000000;
    }

    else
    {
      v152 = 11565;
      v67 = 0xE200000000000000;
    }

    v156 = v67;
    sub_10002BB8C(v59, v60, v61);
    sub_10002BB8C(v62, v64, v65);
    v68._countAndFlagsBits = v62;
    v68._object = v64;
    String.append(_:)(v68);
LABEL_58:
    v70 = v152;
    v69 = v156;
    if (!(v61 >> 6))
    {
      v153 = 11565;
      v72 = 0xE200000000000000;
LABEL_63:
      v157 = v72;
      v73._countAndFlagsBits = v149;
      v73._object = v147;
      String.append(_:)(v73);
      goto LABEL_64;
    }

    if (v61 >> 6 != 1)
    {
      v153 = 45;
      v72 = 0xE100000000000000;
      goto LABEL_63;
    }

    v153 = 0;
    v157 = 0xE000000000000000;
    v71._countAndFlagsBits = 45;
    v71._object = 0xE100000000000000;
    String.append(_:)(v71);
    Character.write<A>(to:)();
LABEL_64:
    if (v70 == v153 && v69 == v157)
    {

      sub_100028AE8(v62, v64, v145);
      sub_100028AE8(v149, v147, v61);
LABEL_50:
      v7 = v141 + 1;
      v56 = v137 + 24;
      v57 = v135 - 1;
      if (v141 + 1 == v134)
      {
        v7 = v134;
        v5 = v130;
        v8 = v138;
        v9 = v133;
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_100028AE8(v62, v64, v145);
  result = sub_100028AE8(v149, v147, v61);
  if ((v74 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v143)
  {
    v75 = *(v56 + 16);
    v76 = *v56;
    *v56 = *v58;
    *(v56 + 16) = *(v58 + 16);
    *(v56 - 24) = v76;
    *(v56 - 8) = v75;
    v56 = v58;
    if (__CFADD__(v57++, 1))
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

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

uint64_t sub_1000785D0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    v34 = 24 * v11;
    if (a4 != __dst || &__dst[v34] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v13 = &v4[v34];
    if (v10 < 24 || v6 <= v7)
    {
LABEL_63:
      v33 = v6;
      goto LABEL_64;
    }

    v72 = v4;
    v68 = v7;
    while (1)
    {
      v35 = 0;
      v36 = v13;
      v60 = v6 - 24;
      v61 = v13;
      v82 = v6;
      v70 = v5;
      while (1)
      {
        v37 = &v36[v35];
        v38 = *&v36[v35 - 24];
        v39 = *&v36[v35 - 16];
        v40 = v36[v35 - 8];
        v41 = *(v6 - 3);
        v42 = *(v6 - 2);
        v43 = *(v6 - 8);
        v62 = &v36[v35 - 24];
        v63 = v42;
        v64 = v41;
        if (v43 >> 6)
        {
          if (v43 >> 6 == 1)
          {
            v75 = 0;
            v79 = 0xE000000000000000;
            sub_10002BB8C(v38, v39, v40);
            sub_10002BB8C(v41, v42, v43);
            v44._countAndFlagsBits = 45;
            v44._object = 0xE100000000000000;
            String.append(_:)(v44);
            Character.write<A>(to:)();
            goto LABEL_45;
          }

          v75 = 45;
          v45 = 0xE100000000000000;
        }

        else
        {
          v75 = 11565;
          v45 = 0xE200000000000000;
        }

        v79 = v45;
        sub_10002BB8C(v38, v39, v40);
        sub_10002BB8C(v41, v42, v43);
        v46._countAndFlagsBits = v41;
        v46._object = v42;
        String.append(_:)(v46);
LABEL_45:
        v48 = v75;
        v47 = v79;
        v66 = v40;
        if (!(v40 >> 6))
        {
          v76 = 11565;
          v50 = 0xE200000000000000;
LABEL_50:
          v80 = v50;
          v51._countAndFlagsBits = v38;
          v51._object = v39;
          String.append(_:)(v51);
          goto LABEL_51;
        }

        if (v40 >> 6 != 1)
        {
          v76 = 45;
          v50 = 0xE100000000000000;
          goto LABEL_50;
        }

        v76 = 0;
        v80 = 0xE000000000000000;
        v49._countAndFlagsBits = 45;
        v49._object = 0xE100000000000000;
        String.append(_:)(v49);
        Character.write<A>(to:)();
LABEL_51:
        v52 = v39;
        if (v48 == v76 && v47 == v80)
        {
          v53 = v38;
          v54 = 0;
        }

        else
        {
          v53 = v38;
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v55 = (v70 + v35 - 24);
        sub_100028AE8(v64, v63, v43);
        sub_100028AE8(v53, v52, v66);
        if (v54)
        {
          break;
        }

        v6 = v82;
        v36 = v61;
        if ((v70 + v35) != v37)
        {
          v56 = *v62;
          *(v70 + v35 - 8) = *(v62 + 16);
          *v55 = v56;
        }

        v35 -= 24;
        v13 = &v61[v35];
        v4 = v72;
        if (&v61[v35] <= v72)
        {
          goto LABEL_63;
        }
      }

      v33 = v60;
      if ((v70 + v35) != v82)
      {
        v57 = *v60;
        *(v70 + v35 - 8) = *(v60 + 2);
        *v55 = v57;
      }

      v13 = &v61[v35];
      v4 = v72;
      if (&v61[v35] > v72)
      {
        v5 = v70 + v35 - 24;
        v6 = v60;
        if (v60 > v68)
        {
          continue;
        }
      }

      v13 = &v61[v35];
      goto LABEL_64;
    }
  }

  v12 = 24 * v9;
  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 24 && v6 < v5)
  {
    v65 = &v4[v12];
    v69 = v5;
    do
    {
      v67 = v7;
      v15 = *v6;
      v14 = *(v6 + 1);
      v81 = v6;
      v16 = v6[16];
      v18 = *v4;
      v17 = *(v4 + 1);
      v19 = v4[16];
      v71 = v4;
      if (v19 >> 6)
      {
        if (v19 >> 6 == 1)
        {
          v73 = 0;
          v77 = 0xE000000000000000;
          sub_10002BB8C(v15, v14, v16);
          sub_10002BB8C(v18, v17, v19);
          v20._countAndFlagsBits = 45;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);
          Character.write<A>(to:)();
          goto LABEL_14;
        }

        v73 = 45;
        v21 = 0xE100000000000000;
      }

      else
      {
        v73 = 11565;
        v21 = 0xE200000000000000;
      }

      v77 = v21;
      sub_10002BB8C(v15, v14, v16);
      sub_10002BB8C(v18, v17, v19);
      v22._countAndFlagsBits = v18;
      v22._object = v17;
      String.append(_:)(v22);
LABEL_14:
      v24 = v73;
      v23 = v77;
      if (!(v16 >> 6))
      {
        v74 = 11565;
        v26 = 0xE200000000000000;
LABEL_19:
        v78 = v26;
        v27._countAndFlagsBits = v15;
        v27._object = v14;
        String.append(_:)(v27);
        goto LABEL_20;
      }

      if (v16 >> 6 != 1)
      {
        v74 = 45;
        v26 = 0xE100000000000000;
        goto LABEL_19;
      }

      v74 = 0;
      v78 = 0xE000000000000000;
      v25._countAndFlagsBits = 45;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      Character.write<A>(to:)();
LABEL_20:
      if (v24 == v74 && v23 == v78)
      {

        sub_100028AE8(v18, v17, v19);
        sub_100028AE8(v15, v14, v16);
LABEL_25:
        v29 = v71;
        v4 = v71 + 24;
        v30 = v67;
        v31 = v67 == v71;
        v6 = v81;
        goto LABEL_26;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100028AE8(v18, v17, v19);
      sub_100028AE8(v15, v14, v16);
      if ((v28 & 1) == 0)
      {
        goto LABEL_25;
      }

      v29 = v81;
      v6 = v81 + 24;
      v30 = v67;
      v31 = v67 == v81;
      v4 = v71;
LABEL_26:
      v13 = v65;
      if (!v31)
      {
        v32 = *v29;
        *(v30 + 2) = *(v29 + 2);
        *v30 = v32;
      }

      v7 = v30 + 24;
    }

    while (v4 < v65 && v6 < v69);
  }

  v33 = v7;
LABEL_64:
  v58 = 24 * ((v13 - v4) / 24);
  if (v33 != v4 || v33 >= &v4[v58])
  {
    memmove(v33, v4, v58);
  }

  return 1;
}