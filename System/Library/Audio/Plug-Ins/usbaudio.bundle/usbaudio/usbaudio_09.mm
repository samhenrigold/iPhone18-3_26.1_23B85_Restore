unint64_t sub_10009EF14()
{
  result = qword_1001772F0;
  if (!qword_1001772F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772F0);
  }

  return result;
}

unint64_t sub_10009EF68()
{
  result = qword_1001772F8;
  if (!qword_1001772F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772F8);
  }

  return result;
}

unint64_t sub_10009EFBC()
{
  result = qword_100177300;
  if (!qword_100177300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177300);
  }

  return result;
}

unint64_t sub_10009F014()
{
  result = qword_100177308;
  if (!qword_100177308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for tADCControlRequestParameterBlockLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for tADCControlRequestParameterBlockLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10009F1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10009F200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10009F264()
{
  result = qword_100177310;
  if (!qword_100177310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177310);
  }

  return result;
}

uint64_t sub_10009F2B8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_36;
  }

  result = sub_1000D5D10(a1, a2, 2);
  if (v5)
  {
    return result;
  }

  v12 = v11;
  v97 = v10;
  v13 = sub_1001128D0(a1, 2uLL);
  v15 = v13;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      *(&v99 + 6) = 0;
      *&v99 = 0;
      goto LABEL_17;
    }

    v18 = *(v13 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_107:
      __DataStorage._length.getter();
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_96;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_108;
    }

LABEL_15:
    v26 = v22;
    goto LABEL_18;
  }

  if (v17)
  {
    if (v13 > v13 >> 32)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v23 = __DataStorage._bytes.getter();
    if (!v23)
    {
LABEL_109:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_110;
    }

    v24 = v23;
    v25 = __DataStorage._offset.getter();
    if (__OFSUB__(v15, v25))
    {
LABEL_97:
      __break(1u);
    }

    v22 = (v15 - v25 + v24);
    __DataStorage._length.getter();
    if (!v22)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    goto LABEL_15;
  }

  *&v99 = v13;
  WORD4(v99) = v14;
  BYTE10(v99) = BYTE2(v14);
  BYTE11(v99) = BYTE3(v14);
  BYTE12(v99) = BYTE4(v14);
  BYTE13(v99) = BYTE5(v14);
LABEL_17:
  v26 = &v99;
LABEL_18:
  v27 = sub_10010A954(v26, 1);
  sub_10007676C(v15, v16);
  if (!*(v27 + 2))
  {
    __break(1u);
    goto LABEL_95;
  }

  v28 = v27[16];

  if (v28 != a3)
  {
    goto LABEL_27;
  }

  switch(a4)
  {
    case 2:
      if (!v97)
      {
        goto LABEL_36;
      }

      sub_1000D5D10(v97, v12, 12 * a3);
      v41 = sub_1001128D0(v97, 12 * a3);
      v43 = v41;
      v44 = v42;
      v45 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v45 != 2)
        {
          *(&v99 + 6) = 0;
          *&v99 = 0;
          goto LABEL_73;
        }

        v51 = *(v41 + 16);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
LABEL_113:
          __DataStorage._length.getter();
LABEL_114:
          __break(1u);
LABEL_115:
          __DataStorage._length.getter();
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v54))
        {
          goto LABEL_102;
        }

        v55 = (v51 - v54 + v53);
        __DataStorage._length.getter();
        if (!v55)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (!v45)
        {
          *&v99 = v41;
          WORD4(v99) = v42;
          BYTE10(v99) = BYTE2(v42);
          BYTE11(v99) = BYTE3(v42);
          BYTE12(v99) = BYTE4(v42);
          BYTE13(v99) = BYTE5(v42);
LABEL_73:
          v76 = &v99;
LABEL_74:
          v77 = sub_10010B344(v76, a3);
          sub_10007676C(v43, v44);
          v78 = v77[2];
          if (v78)
          {
            sub_100047400(0, v78, 0);
            v79 = v77 + 5;
            do
            {
              v80 = *(v79 - 1);
              v81 = *v79;
              v83 = _swiftEmptyArrayStorage[2];
              v82 = _swiftEmptyArrayStorage[3];
              if (v83 >= v82 >> 1)
              {
                v96 = *(v79 - 1);
                sub_100047400((v82 > 1), v83 + 1, 1);
                v80 = v96;
              }

              v100 = &type metadata for AudioClassRange32bit;
              v101 = &off_100163F78;
              *&v99 = v80;
              DWORD2(v99) = v81;
              _swiftEmptyArrayStorage[2] = v83 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v83 + 4]);
              v79 += 3;
              --v78;
            }

            while (v78);
          }

          goto LABEL_92;
        }

        if (v41 > v41 >> 32)
        {
          goto LABEL_99;
        }

        v73 = __DataStorage._bytes.getter();
        if (!v73)
        {
LABEL_118:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_119;
        }

        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v75))
        {
          goto LABEL_105;
        }

        v55 = (v43 - v75 + v74);
        result = __DataStorage._length.getter();
        if (!v55)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          return result;
        }
      }

      v76 = v55;
      goto LABEL_74;
    case 1:
      if (v97)
      {
        sub_1000D5D10(v97, v12, 6 * a3);
        v36 = sub_1001128D0(v97, 6 * a3);
        v38 = v36;
        v39 = v37;
        v40 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v40 != 2)
          {
            *(&v99 + 6) = 0;
            *&v99 = 0;
            goto LABEL_60;
          }

          v46 = *(v36 + 16);
          v47 = __DataStorage._bytes.getter();
          if (!v47)
          {
LABEL_111:
            __DataStorage._length.getter();
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v48 = v47;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v46, v49))
          {
            goto LABEL_101;
          }

          v50 = (v46 - v49 + v48);
          __DataStorage._length.getter();
          if (!v50)
          {
            goto LABEL_112;
          }

LABEL_58:
          v64 = v50;
          goto LABEL_61;
        }

        if (!v40)
        {
          *&v99 = v36;
          WORD4(v99) = v37;
          BYTE10(v99) = BYTE2(v37);
          BYTE11(v99) = BYTE3(v37);
          BYTE12(v99) = BYTE4(v37);
          BYTE13(v99) = BYTE5(v37);
LABEL_60:
          v64 = &v99;
LABEL_61:
          v65 = sub_10010B440(v64, a3);
          sub_10007676C(v38, v39);
          v66 = v65[2];
          if (v66)
          {
            sub_100047400(0, v66, 0);
            v67 = v65 + 18;
            do
            {
              v68 = *(v67 - 2);
              v69 = *(v67 - 1);
              v70 = *v67;
              v72 = _swiftEmptyArrayStorage[2];
              v71 = _swiftEmptyArrayStorage[3];
              if (v72 >= v71 >> 1)
              {
                sub_100047400((v71 > 1), v72 + 1, 1);
              }

              v67 += 3;
              v100 = &type metadata for AudioClassRange16bit;
              v101 = &off_100163F40;
              LOWORD(v99) = v68;
              WORD1(v99) = v69;
              WORD2(v99) = v70;
              _swiftEmptyArrayStorage[2] = v72 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v72 + 4]);
              --v66;
            }

            while (v66);
          }

          goto LABEL_92;
        }

        if (v36 <= v36 >> 32)
        {
          v61 = __DataStorage._bytes.getter();
          if (!v61)
          {
LABEL_117:
            __DataStorage._length.getter();
            __break(1u);
            goto LABEL_118;
          }

          v62 = v61;
          v63 = __DataStorage._offset.getter();
          if (__OFSUB__(v38, v63))
          {
            goto LABEL_104;
          }

          v50 = (v38 - v63 + v62);
          result = __DataStorage._length.getter();
          if (!v50)
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          goto LABEL_58;
        }

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
        goto LABEL_107;
      }

LABEL_36:
      sub_10000CA2C();
      swift_allocError();
      v35 = 57;
      goto LABEL_37;
    case 0:
      if (v97)
      {
        sub_1000D5D10(v97, v12, 3 * a3);
        v29 = sub_1001128D0(v97, 3 * a3);
        v31 = v29;
        v32 = v30;
        v33 = v30 >> 62;
        if ((v30 >> 62) > 1)
        {
          if (v33 != 2)
          {
            *(&v99 + 6) = 0;
            *&v99 = 0;
            goto LABEL_86;
          }

          v56 = *(v29 + 16);
          v57 = __DataStorage._bytes.getter();
          if (!v57)
          {
            goto LABEL_115;
          }

          v58 = v57;
          v59 = __DataStorage._offset.getter();
          if (!__OFSUB__(v56, v59))
          {
            v60 = (v56 - v59 + v58);
            __DataStorage._length.getter();
            if (v60)
            {
LABEL_84:
              v87 = v60;
              goto LABEL_87;
            }

            goto LABEL_116;
          }

          goto LABEL_103;
        }

        if (!v33)
        {
          *&v99 = v29;
          WORD4(v99) = v30;
          BYTE10(v99) = BYTE2(v30);
          BYTE11(v99) = BYTE3(v30);
          BYTE12(v99) = BYTE4(v30);
          BYTE13(v99) = BYTE5(v30);
LABEL_86:
          v87 = &v99;
LABEL_87:
          v88 = sub_10010B53C(v87, a3);
          sub_10007676C(v31, v32);
          v89 = v88[2];
          if (v89)
          {
            sub_100047400(0, v89, 0);
            v90 = v88 + 34;
            do
            {
              v91 = *(v90 - 2);
              v92 = *(v90 - 1);
              v93 = *v90;
              v95 = _swiftEmptyArrayStorage[2];
              v94 = _swiftEmptyArrayStorage[3];
              if (v95 >= v94 >> 1)
              {
                sub_100047400((v94 > 1), v95 + 1, 1);
              }

              v90 += 3;
              v100 = &type metadata for AudioClassRange8bit;
              v101 = &off_100163F08;
              LOBYTE(v99) = v91;
              BYTE1(v99) = v92;
              BYTE2(v99) = v93;
              _swiftEmptyArrayStorage[2] = v95 + 1;
              sub_10000D0A0(&v99, &_swiftEmptyArrayStorage[5 * v95 + 4]);
              --v89;
            }

            while (v89);
          }

LABEL_92:

          *a5 = _swiftEmptyArrayStorage;
          return result;
        }

        if (v29 <= v29 >> 32)
        {
          v84 = __DataStorage._bytes.getter();
          if (!v84)
          {
LABEL_119:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_120;
          }

          v85 = v84;
          v86 = __DataStorage._offset.getter();
          if (!__OFSUB__(v31, v86))
          {
            v60 = (v31 - v86 + v85);
            result = __DataStorage._length.getter();
            if (v60)
            {
              goto LABEL_84;
            }

            goto LABEL_122;
          }

          goto LABEL_106;
        }

        goto LABEL_100;
      }

      goto LABEL_36;
  }

LABEL_27:
  sub_10000CA2C();
  swift_allocError();
  v35 = 32;
LABEL_37:
  *v34 = v35;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

char *sub_10009FC64(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_10007676C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10007676C(v7, v6);
    *v4 = xmmword_100123980;
    sub_10007676C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1000A00F8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_10007676C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100123980;
    sub_10007676C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000A00F8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_10009FFFC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100112818(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000A0598(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000A0614(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1000A0090(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000A00F8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000A01AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v8 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v8 + v9;
      if (v8 + v9 == NSData.endIndex.getter())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_15;
      }

      v11 = NSData.subscript.getter();
      v12 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v10 < v12 || v10 >= result)
      {
        break;
      }

      *(a2 + v9) = v11;
      if (a3 - 1 == v9)
      {
        v8 += v9 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A0294(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 < 7 && ((0x4Fu >> a1) & 1) != 0)
  {
    if ([objc_allocWithZone(NSMutableData) initWithLength:qword_100123D48[a1]])
    {
      return a1;
    }

    sub_10000CA2C();
    swift_allocError();
    v13 = 31;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v7._object = 0x800000010012BF00;
    v7._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v7);
    v16 = a1;
    _print_unlocked<A, B>(_:_:)();
    v8 = v14;
    v9 = v15;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v10 = sub_10000A1BC(v3, qword_1001794F0);
    sub_10000A2A4(v10, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v11, qword_100179508);
    sub_100039F58(2, v5, v8, v9);

    sub_10000C9D0(v5);
    sub_10000CA2C();
    swift_allocError();
    v13 = 29;
  }

  *v12 = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000A04F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1001127F8(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

uint64_t sub_1000A0598(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000A0614(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000A0698(unsigned __int8 a1, void *a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v26 = swift_slowAlloc();
    *v26 = 1;
    v27 = a2[3];
    v28 = a2[4];
    sub_10001EAB8(a2, v27);
    (*(v28 + 16))(&v46, v27, v28);
    sub_100001AB4(&qword_100177318, &qword_100123B20);
    if (swift_dynamicCast())
    {
      v29 = v49;
      v30 = a2[3];
      v31 = a2[4];
      sub_10001EAB8(a2, v30);
      (*(v31 + 32))(&v46, v30, v31);
      if (swift_dynamicCast())
      {
        v48 = v49;
        v32 = a2[3];
        v33 = a2[4];
        sub_10001EAB8(a2, v32);
        (*(v33 + 48))(&v46, v32, v33);
        if (swift_dynamicCast())
        {
          v35 = v48;
          v34 = v49;
          *(v26 + 2) = v29;
          *(v26 + 6) = v35;
          *(v26 + 10) = v34;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v26 length:14];
          goto LABEL_16;
        }
      }
    }
  }

  else if (a1 == 1)
  {
    v17 = swift_slowAlloc();
    *v17 = 1;
    v18 = a2[3];
    v19 = a2[4];
    sub_10001EAB8(a2, v18);
    (*(v19 + 16))(&v46, v18, v19);
    sub_100001AB4(&qword_100177318, &qword_100123B20);
    if (swift_dynamicCast())
    {
      v20 = v49;
      v21 = a2[3];
      v22 = a2[4];
      sub_10001EAB8(a2, v21);
      (*(v22 + 32))(&v46, v21, v22);
      if (swift_dynamicCast())
      {
        v48 = v49;
        v23 = a2[3];
        v24 = a2[4];
        sub_10001EAB8(a2, v23);
        (*(v24 + 48))(&v46, v23, v24);
        if (swift_dynamicCast())
        {
          v25 = v49;
          v17[1] = v20;
          v17[2] = v48;
          v17[3] = v25;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v17 length:8];
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    if (a1)
    {
      v38 = v5;
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v39._object = 0x800000010012BF00;
      v39._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v39);
      LOBYTE(v49) = a1;
      _print_unlocked<A, B>(_:_:)();
      v40 = v46;
      v41 = v47;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v42 = sub_10000A1BC(v38, qword_1001794F0);
      sub_10000A2A4(v42, v7);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v43, qword_100179508);
      sub_100039F58(2, v7, v40, v41);

      sub_10000C9D0(v7);
      v37 = 29;
      goto LABEL_23;
    }

    v8 = swift_slowAlloc();
    *v8 = 1;
    v9 = a2[3];
    v10 = a2[4];
    sub_10001EAB8(a2, v9);
    (*(v10 + 8))(&v46, v9, v10);
    sub_100001AB4(&qword_100177320, &qword_100123B28);
    if (swift_dynamicCast())
    {
      v11 = v49;
      v12 = a2[3];
      v13 = a2[4];
      sub_10001EAB8(a2, v12);
      (*(v13 + 24))(&v46, v12, v13);
      if (swift_dynamicCast())
      {
        v48 = v49;
        v14 = a2[3];
        v15 = a2[4];
        sub_10001EAB8(a2, v14);
        (*(v15 + 40))(&v46, v14, v15);
        if (swift_dynamicCast())
        {
          v16 = v49;
          *(v8 + 2) = v11;
          *(v8 + 3) = v48;
          *(v8 + 4) = v16;
          [objc_allocWithZone(NSMutableData) initWithBytesNoCopy:v8 length:5];
LABEL_16:
          sub_10000CE78(a2);
          return a1 | 0x100u;
        }
      }
    }
  }

  v37 = 1;
LABEL_23:
  sub_10000CA2C();
  swift_allocError();
  *v44 = v37;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0xE000000000000000;
  swift_willThrow();
  return sub_10000CE78(a2);
}

uint64_t sub_1000A0D14(unsigned __int8 a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for LogID(0);
  result = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    goto LABEL_14;
  }

  if (a1 == 1)
  {
LABEL_9:
    if (a2 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = 6 * a2;
    if ((a2 * 6) >> 64 != (6 * a2) >> 63)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v10 = (v12 + 2);
    if (!__OFADD__(v12, 2))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    if ((a2 & 0x8000000000000000) == 0)
    {
      if ((a2 * 12) >> 64 == (12 * a2) >> 63)
      {
        v10 = ((12 * a2) | 2);
LABEL_17:
        if ([objc_allocWithZone(NSMutableData) initWithLength:v10])
        {
          return a1 | 0x100u;
        }

        sub_10000CA2C();
        swift_allocError();
        v14 = 31;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    v3 = result;
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v15._object = 0x800000010012BF00;
    v15._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v15);
    v20 = a1;
    _print_unlocked<A, B>(_:_:)();
    a2 = v18;
    v4 = v19;
    if (qword_100173CB8 == -1)
    {
LABEL_21:
      v16 = sub_10000A1BC(v3, qword_1001794F0);
      sub_10000A2A4(v16, v10);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v17, qword_100179508);
      sub_100039F58(2, v10, a2, v4);

      sub_10000C9D0(v10);
      sub_10000CA2C();
      swift_allocError();
      v14 = 29;
LABEL_24:
      *v13 = v14;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      return swift_willThrow();
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = 3 * a2;
  if ((a2 * 3) >> 64 == (3 * a2) >> 63)
  {
    v10 = (v11 + 2);
    if (!__OFADD__(v11, 2))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000A0FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1;
  v7 = type metadata accessor for LogID(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 != 8)
  {
    a2 = v8;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v12._object = 0x800000010012BF00;
    v12._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v12);
    v19 = v5;
    _print_unlocked<A, B>(_:_:)();
    v3 = v17;
    v5 = v18;
    if (qword_100173CB8 == -1)
    {
LABEL_6:
      v13 = sub_10000A1BC(a2, qword_1001794F0);
      sub_10000A2A4(v13, v10);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v14, qword_100179508);
      sub_100039F58(2, v10, v3, v5);

      sub_10000C9D0(v10);
      sub_10000CA2C();
      swift_allocError();
      v16 = 29;
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v10 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ([objc_allocWithZone(NSMutableData) initWithLength:a2 + 1])
  {
    return 8;
  }

  sub_10000CA2C();
  swift_allocError();
  v16 = 31;
LABEL_10:
  *v15 = v16;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t sub_1000A1244()
{
  result = qword_100177328;
  if (!qword_100177328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100177328);
  }

  return result;
}

uint64_t sub_1000A1290(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100177338, &qword_100123B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000A12F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_1000A0090(sub_1000A13B4, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_1000A1360(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000A13B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = **(v3 + 16);
  result = sub_1000A01AC(v10, a1, a2);
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2] = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioClassRange16bit(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_1000A1470()
{
  result = qword_100177340;
  if (!qword_100177340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177340);
  }

  return result;
}

unint64_t sub_1000A14C8()
{
  result = qword_100177348;
  if (!qword_100177348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177348);
  }

  return result;
}

unint64_t sub_1000A1520()
{
  result = qword_100177350;
  if (!qword_100177350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177350);
  }

  return result;
}

unint64_t sub_1000A1574()
{
  result = qword_100177358;
  if (!qword_100177358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177358);
  }

  return result;
}

unint64_t sub_1000A15C8()
{
  result = qword_100177360;
  if (!qword_100177360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177360);
  }

  return result;
}

unint64_t sub_1000A161C()
{
  result = qword_100177368;
  if (!qword_100177368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177368);
  }

  return result;
}

unint64_t sub_1000A1670()
{
  result = qword_100177370;
  if (!qword_100177370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177370);
  }

  return result;
}

unint64_t sub_1000A16C4()
{
  result = qword_100177378;
  if (!qword_100177378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177378);
  }

  return result;
}

unint64_t sub_1000A1718()
{
  result = qword_100177380;
  if (!qword_100177380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177380);
  }

  return result;
}

AUASDCore::CS46L06Interface::MemOffset_optional __swiftcall CS46L06Interface.MemOffset.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 18499)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 18756)
  {
    v2.value = AUASDCore_CS46L06Interface_MemOffset_id;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue == 21836)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000A17F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4843554C4944uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1000A1890(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4843554C4944uLL >> (16 * v2));
  return Hasher._finalize()();
}

unsigned __int16 *sub_1000A18E4@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 18756)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 21836)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 18499)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

void sub_1000A1940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v8 = [objc_allocWithZone(NSMutableData) initWithBytes:a1 length:8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x554C, v8, ObjectType, v9);
    if (v4)
    {

      swift_unknownObjectRelease();
LABEL_8:
      *a4 = v6;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    v12 = swift_getObjectType();
    sub_1000522EC(0x554C, v12, &type metadata for UInt64, v11, &v14);
    swift_unknownObjectRelease();
    if (v4)
    {
LABEL_7:

      goto LABEL_8;
    }

    if ((v15 & 1) == 0 && v14 != 0x4B4C4E554D454D48)
    {
      sub_10000CA2C();
      v6 = swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_7;
    }
  }
}

uint64_t sub_1000A1ABC()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 0u;
  v24 = 13057;
  v6 = [objc_allocWithZone(NSMutableData) initWithBytes:&v24 length:64];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    type metadata accessor for C46L06HVCICommandResponse(0);
    v12 = v11;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v8 = v13;
      v14 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      sub_1000522EC(0x4843, ObjectType, v12, v14, v28);
      swift_unknownObjectRelease();
      if (v1)
      {
LABEL_7:

        return v8 & 1;
      }

      if ((v29 & 1) != 0 || WORD2(v28[0]) != 1)
      {
        goto LABEL_9;
      }

      if (BYTE1(v28[0]) == 51)
      {
        if (WORD3(v28[0]) == 3)
        {
          if (BYTE8(v28[0]) == 1)
          {
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v19 = sub_10000A1BC(v3, qword_1001794F0);
            sub_10000A2A4(v19, v5);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v20 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v20, qword_100179508);
            sub_100039AA0(2, v5, 0xD000000000000014, 0x800000010012EE60);
            v8 = 1;
LABEL_14:

            sub_10000C9D0(v5);
            return v8 & 1;
          }

LABEL_9:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v16 = sub_10000A1BC(v3, qword_1001794F0);
          sub_10000A2A4(v16, v5);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v17, qword_100179508);
          sub_100039AA0(2, v5, 0xD000000000000015, 0x800000010012EE40);
          v8 = 0;
          goto LABEL_14;
        }

        sub_10000CA2C();
        swift_allocError();
        v22 = 61;
      }

      else
      {
        sub_10000CA2C();
        swift_allocError();
        v22 = 1;
      }

      *v21 = v22;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_7;
    }

    v23[15] = 1;
    memset(v28, 0, sizeof(v28));
    v29 = 1;
    goto LABEL_9;
  }

  v8 = Strong;
  v9 = *(v2 + 24);
  v10 = swift_getObjectType();
  sub_100052AFC(0x4843, v6, v10, v9);
  if (!v1)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  return v8 & 1;
}

void sub_1000A1EA4(char a1)
{
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 0u;
  v24[0] = 5889;
  v24[1] = a1 & 1;
  v7 = [objc_allocWithZone(NSMutableData) initWithBytes:v24 length:64];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x4843, v7, ObjectType, v8);
    if (v2)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for C46L06HVCICommandResponse(0);
  v11 = v10;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    LOBYTE(v22) = 1;
    memset(v28, 0, sizeof(v28));
    v29 = 1;
LABEL_22:

    return;
  }

  v12 = *(v1 + 24);
  v13 = swift_getObjectType();
  sub_1000522EC(0x4843, v13, v11, v12, v28);
  swift_unknownObjectRelease();
  if (v2 || (v29 & 1) != 0 || WORD2(v28[0]) != 1)
  {
    goto LABEL_22;
  }

  if (BYTE1(v28[0]) != 23)
  {
    sub_10000CA2C();
    swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_22;
  }

  v22 = 0x6E2065646F4D5545;
  v23 = 0xEB0000000020776FLL;
  if (a1)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (a1)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17 = v22;
  v18 = v23;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A1BC(v4, qword_1001794F0);
  sub_10000A2A4(v19, v6);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v20, qword_100179508);
  sub_100039AA0(2, v6, v17, v18);

  sub_10000C9D0(v6);
}

void sub_1000A21EC()
{
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  v11 = 0u;
  v10 = 2305;
  v2 = [objc_allocWithZone(NSMutableData) initWithBytes:&v10 length:64];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x4843, v2, ObjectType, v3);
    if (v1)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for C46L06HVCICommandResponse(0);
  v6 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    sub_1000522EC(0x4843, v8, v6, v7, v14);
    swift_unknownObjectRelease();
    if (!v1 && (v15 & 1) == 0 && WORD2(v14[0]) == 1 && (BYTE1(v14[0]) != 9 || WORD3(v14[0]) != 4))
    {
      sub_10000CA2C();
      swift_allocError();
      *v9 = 1;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 1;
  }
}

void sub_1000A23E4()
{
  v13 = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v12 = 3073;
  WORD2(v13) = 8;
  BYTE7(v13) = 1;
  BYTE9(v13) = 1;
  BYTE11(v13) = 1;
  v2 = [objc_allocWithZone(NSMutableData) initWithBytes:&v12 length:64];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0x4843, v2, ObjectType, v3);
    if (v1)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for C46L06HVCICommandResponse(0);
  v6 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    sub_1000522EC(0x4843, v8, v6, v7, v16);
    swift_unknownObjectRelease();
    if (!v1 && (v17 & 1) == 0 && WORD2(v16[0]) == 1)
    {
      if (BYTE1(v16[0]) == 12 && WORD3(v16[0]) == 4)
      {
        v10[0] = *(v16 + 8);
        v10[1] = *(&v16[1] + 8);
        v10[2] = *(&v16[2] + 8);
        v11 = *(&v16[3] + 1);
        sub_1000A2638(v10);
      }

      else
      {
        sub_10000CA2C();
        swift_allocError();
        *v9 = 1;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0xE000000000000000;
        swift_willThrow();
      }
    }
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v17 = 1;
  }
}

uint64_t sub_1000A2638(unsigned __int8 *a1)
{
  v2 = type metadata accessor for LogID(0);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  v26 = a1[2];
  v27 = 0x74616C4638345145;
  v28 = 0xEA0000000000203ALL;
  if (v5 == 1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5 == 1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10 = v27;
  v11 = v28;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A1BC(v2, qword_1001794F0);
  sub_10000A2A4(v12, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v13, qword_100179508);
  sub_100039AA0(2, v4, v10, v11);

  sub_10000C9D0(v4);
  v27 = 0x616C463239315145;
  v28 = 0xEB00000000203A74;
  if (v6 == 1)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6 == 1)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17 = v27;
  v18 = v28;
  sub_10000A2A4(v12, v4);
  sub_100039AA0(2, v4, v17, v18);

  sub_10000C9D0(v4);
  v27 = 0x616C4663694D5145;
  v28 = 0xEB00000000203A74;
  if (v26 == 1)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v26 == 1)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22 = v27;
  v23 = v28;
  sub_10000A2A4(v12, v4);
  sub_100039AA0(2, v4, v22, v23);

  return sub_10000C9D0(v4);
}

uint64_t CS46L06Interface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1000A2934()
{
  result = qword_100177388;
  if (!qword_100177388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177388);
  }

  return result;
}

uint64_t sub_1000A29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  type metadata accessor for CS46L06Interface();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 24) = a4;
  swift_unknownObjectWeakAssign();
  if (!swift_unknownObjectWeakLoadStrong() || (v8 = *(v7 + 24), ObjectType = swift_getObjectType(), sub_1000522EC(0x4944, ObjectType, &type metadata for UInt64, v8, &v11), swift_unknownObjectRelease(), (v12 & 1) != 0) || (sub_1000522EC(0x554C, a3, &type metadata for UInt64, a4, &v11), (v12 & 1) != 0))
  {

    return 0;
  }

  else
  {
    *(v7 + 32) = v11 == 0x4B434F4C4D454D48;
  }

  return v7;
}

AUASDCore::tADCControlRequestParameterBlockLayout __swiftcall USBDescriptorControl.pbLayout()()
{
  v1 = v0;
  v2 = (v0 >> 18) & 0x3C | (v0 >> 6);
  v3 = HIWORD(v0);
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
      v3 = HIWORD(v1) & 0xF;
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t USBDescriptorControl.label.getter(int a1)
{
  v11 = type metadata accessor for Mirror();
  v2 = *(v11 - 8);
  __chkstk_darwin(v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = &type metadata for USBDescriptorControl;
  BYTE2(v12) = BYTE2(a1);
  LOWORD(v12) = a1;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v5 == result)
  {
    v7 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v7)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v9 = v12;
      v8 = v13;
      sub_10000CE78(v14);
      if (v8)
      {
        (*(v2 + 8))(v4, v11);
        return v9;
      }
    }

    (*(v2 + 8))(v4, v11);

    return 0x6E776F6E6B6E75;
  }

  __break(1u);
  return result;
}

void sub_1000A2FA8(unsigned __int16 *a1@<X0>, __int16 a2@<W1>, _OWORD *a3@<X8>)
{
  LOBYTE(v4) = a2;
  v276 = a3;
  v6 = HIBYTE(a2);
  v7 = type metadata accessor for LogID(0);
  v8 = __chkstk_darwin(v7);
  v275 = &v270 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6 - 25;
  v11 = v371;
  switch(v10)
  {
    case 0:
      v274 = v8;
      v12 = v4 | 0x1900;
      v13 = sub_1000A60F8(a1, v4 | 0x1900u);
      if (v14 >> 60 == 15)
      {
        goto LABEL_323;
      }

      v15 = v13;
      v4 = v14;
      v16 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v16 != 2)
        {
          *&v278[6] = 0;
          *v278 = 0;
          sub_1000D5D10(v278, v278, 12);
          if (!v3)
          {
            v170 = sub_1001128D0(v278, 0xCuLL);
            v273 = v171;
            v172 = sub_1000A61BC(v170, v171, 1, sub_10010C528);
            sub_10007676C(v170, v273);
            if (*(v172 + 16))
            {
              *&v281 = *(v172 + 32);
              DWORD2(v281) = *(v172 + 40);
              goto LABEL_211;
            }

            goto LABEL_311;
          }

          goto LABEL_239;
        }

        v13 = *(v13 + 16);
        v141 = *(v15 + 24);
LABEL_206:
        sub_1000A74F4(v13, v141, &v281);
        if (!v3)
        {
          goto LABEL_212;
        }

        goto LABEL_239;
      }

      if (!v16)
      {
        *v278 = v13;
        *&v278[8] = v14;
        v278[10] = BYTE2(v14);
        v278[11] = BYTE3(v14);
        v278[12] = BYTE4(v14);
        v278[13] = BYTE5(v14);
        sub_1000D5D10(v278, &v278[BYTE6(v14)], 12);
        if (!v3)
        {
          v17 = sub_1001128D0(v278, 0xCuLL);
          v19 = v18;
          v273 = sub_1000A61BC(v17, v18, 1, sub_10010C528);
          sub_10007676C(v17, v19);
          if (*(v273 + 16))
          {
            *&v281 = *(v273 + 32);
            DWORD2(v281) = *(v273 + 40);
LABEL_211:

LABEL_212:
            sub_100076B24(v15, v4);
            sub_1000E51AC(v281, DWORD2(v281), a1, v12, v286);
            v153 = sub_1000A9B38();
            v154 = swift_allocObject();
            v173 = v286[5];
            *(v154 + 80) = v286[4];
            *(v154 + 96) = v173;
            *(v154 + 112) = v287;
            v174 = v286[1];
            *(v154 + 16) = v286[0];
            *(v154 + 32) = v174;
            v175 = v286[3];
            *(v154 + 48) = v286[2];
            *(v154 + 64) = v175;
            v165 = &type metadata for InputTerminal;
            goto LABEL_273;
          }

          goto LABEL_310;
        }

LABEL_239:
        sub_100076B24(v15, v4);
        return;
      }

      v13 = v13;
      v141 = v15 >> 32;
      if (v15 >> 32 >= v15)
      {
        goto LABEL_206;
      }

      goto LABEL_299;
    case 1:
      v274 = v8;
      v76 = v4 | 0x1A00;
      v77 = sub_1000A60F8(a1, v76);
      if (v78 >> 60 == 15)
      {
        goto LABEL_327;
      }

      v15 = v77;
      v4 = v78;
      v79 = v78 >> 62;
      if ((v78 >> 62) > 1)
      {
        if (v79 != 2)
        {
          *&v278[6] = 0;
          *v278 = 0;
          sub_1000D5D10(v278, v278, 9);
          if (v3)
          {
            goto LABEL_239;
          }

          v176 = sub_1001128D0(v278, 9uLL);
          v178 = v177;
          v83 = sub_1000A61BC(v176, v177, 1, sub_10010C624);
          sub_10007676C(v176, v178);
          if (!*(v83 + 16))
          {
LABEL_312:
            __break(1u);
            goto LABEL_313;
          }

LABEL_218:
          *&v281 = *(v83 + 32);
          BYTE8(v281) = *(v83 + 40);

LABEL_219:
          sub_100076B24(v15, v4);
          sub_1000E5310(v281, BYTE8(v281), a1, v76, v288);
          v153 = sub_1000A9A50();
          v154 = swift_allocObject();
          v179 = v288[3];
          *(v154 + 48) = v288[2];
          *(v154 + 64) = v179;
          v180 = v288[5];
          *(v154 + 80) = v288[4];
          *(v154 + 96) = v180;
          v181 = v288[0];
          v182 = v288[1];
LABEL_272:
          *(v154 + 16) = v181;
          *(v154 + 32) = v182;
          v165 = &type metadata for OutputTerminal;
          goto LABEL_273;
        }

        v77 = *(v77 + 16);
        v142 = *(v15 + 24);
LABEL_214:
        sub_1000A7588(v77, v142, &v281);
        if (v3)
        {
          goto LABEL_239;
        }

        goto LABEL_219;
      }

      if (!v79)
      {
        *v278 = v77;
        *&v278[8] = v78;
        v278[10] = BYTE2(v78);
        v278[11] = BYTE3(v78);
        v278[12] = BYTE4(v78);
        v278[13] = BYTE5(v78);
        sub_1000D5D10(v278, &v278[BYTE6(v78)], 9);
        if (v3)
        {
          goto LABEL_239;
        }

        v80 = sub_1001128D0(v278, 9uLL);
        v82 = v81;
        v83 = sub_1000A61BC(v80, v81, 1, sub_10010C624);
        v8 = sub_10007676C(v80, v82);
        if (!*(v83 + 16))
        {
          __break(1u);
LABEL_71:
          v20 = v8;
          sub_1000EF600(a1, v4 | 0x1F00, v301);
          if (v3)
          {
            return;
          }

          sub_1000E6064(v302);
          sub_1000AA19C(v301);
          v206 = sub_10007D34C();
          v207 = swift_allocObject();
          v223 = v302[3];
          *(v207 + 48) = v302[2];
          *(v207 + 64) = v223;
          v224 = v302[5];
          *(v207 + 80) = v302[4];
          *(v207 + 96) = v224;
          v216 = v302[0];
          v217 = v302[1];
LABEL_264:
          *(v207 + 16) = v216;
          *(v207 + 32) = v217;
          v49 = &type metadata for ExtensionUnit;
          goto LABEL_277;
        }

        goto LABEL_218;
      }

      v77 = v77;
      v142 = v15 >> 32;
      if (v15 >> 32 >= v15)
      {
        goto LABEL_214;
      }

      goto LABEL_300;
    case 2:
      v20 = v8;
      sub_1000EE9C4(a1, v4 | 0x1B00, v289);
      if (v3)
      {
        return;
      }

      v61 = *(v290 + 16);
      v62 = (v290 + 32);
      while (v61)
      {
        v63 = *v62++;
        --v61;
        if (v63 == v289[3])
        {
          sub_1000AA2EC(v289);
          goto LABEL_99;
        }
      }

      sub_1000E5400(v291);
      sub_1000AA2EC(v289);
      v206 = sub_100023230();
      v105 = swift_allocObject();
      v266 = v291[3];
      *(v105 + 48) = v291[2];
      *(v105 + 64) = v266;
      *(v105 + 80) = v291[4];
      *(v105 + 96) = v292;
      v267 = v291[0];
      v268 = v291[1];
      goto LABEL_290;
    case 3:
      v20 = v8;
      sub_1000EED70(a1, v4 | 0x1C00, v293);
      if (v3)
      {
        return;
      }

      sub_1000E555C(v294);
      sub_1000AA298(v293);
      v206 = sub_100026850();
      v207 = swift_allocObject();
      v227 = v294[3];
      *(v207 + 48) = v294[2];
      *(v207 + 64) = v227;
      *(v207 + 80) = v295;
      v210 = v294[0];
      v209 = v294[1];
      goto LABEL_265;
    case 4:
      v20 = v8;
      sub_1000EF0B0(a1, v4 | 0x1D00, v296);
      if (v3)
      {
        return;
      }

      sub_1000E5664(v297);
      sub_1000AA244(v296);
      v206 = sub_1000A99A4();
      v207 = swift_allocObject();
      v228 = v297[3];
      *(v207 + 48) = v297[2];
      *(v207 + 64) = v228;
      *(v207 + 80) = v298;
      v229 = v297[1];
      v230 = v297[0];
      goto LABEL_268;
    case 5:
      v20 = v8;
      sub_1000EF264(a1, v4 | 0x1E00, v299);
      if (v3)
      {
        return;
      }

      sub_1000E5854(v300);
      sub_1000AA1F0(v299);
      v206 = sub_10007D3F0();
      v207 = swift_allocObject();
      v220 = v300[3];
      *(v207 + 48) = v300[2];
      *(v207 + 64) = v220;
      *(v207 + 80) = v300[4];
      v213 = v300[0];
      v212 = v300[1];
      goto LABEL_263;
    case 6:
      goto LABEL_71;
    case 8:
      v274 = v8;
      v84 = sub_1000A60F8(a1, v4 | 0x2100u);
      if (v85 >> 60 == 15)
      {
        goto LABEL_328;
      }

      v52 = v84;
      v53 = v85;
      v86 = v85 >> 62;
      if ((v85 >> 62) > 1)
      {
        if (v86 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          sub_1000D5D10(&v281, &v281, 17);
          if (!v3)
          {
            v183 = sub_1001128D0(&v281, 0x11uLL);
            v185 = v184;
            v273 = sub_1000A61BC(v183, v184, 1, sub_10010AA24);
            sub_10007676C(v183, v185);
            v8 = v273;
            if (!*(v273 + 16))
            {
LABEL_313:
              __break(1u);
              goto LABEL_314;
            }

LABEL_225:
            *v278 = *(v8 + 32);
            v278[16] = *(v8 + 48);

LABEL_226:
            sub_100076B24(v52, v53);
            v354 = *v278;
            v355 = v278[16];
            v356 = a1;
            v357 = v4;
            v358 = 33;
            sub_10008B4C8(v303);
            v20 = v274;
            v206 = sub_1000A9B38();
            v207 = swift_allocObject();
            v186 = v303[5];
            *(v207 + 80) = v303[4];
            *(v207 + 96) = v186;
            *(v207 + 112) = v304;
            v187 = v303[1];
            *(v207 + 16) = v303[0];
            *(v207 + 32) = v187;
            v244 = v303[3];
            v188 = v300 + 9;
LABEL_234:
            v247 = *(v188 + 255);
            goto LABEL_267;
          }

LABEL_260:
          sub_100076B24(v52, v53);
          return;
        }

        v84 = *(v84 + 16);
        v143 = *(v52 + 24);
LABEL_221:
        sub_1000A761C(v84, v143, v278);
        if (!v3)
        {
          goto LABEL_226;
        }

        goto LABEL_260;
      }

      if (!v86)
      {
        *&v281 = v84;
        WORD4(v281) = v85;
        BYTE10(v281) = BYTE2(v85);
        BYTE11(v281) = BYTE3(v85);
        BYTE12(v281) = BYTE4(v85);
        BYTE13(v281) = BYTE5(v85);
        sub_1000D5D10(&v281, &v281 + BYTE6(v85), 17);
        if (!v3)
        {
          v87 = sub_1001128D0(&v281, 0x11uLL);
          v89 = v88;
          v273 = sub_1000A61BC(v87, v88, 1, sub_10010AA24);
          sub_10007676C(v87, v89);
          v8 = v273;
          if (!*(v273 + 16))
          {
            __break(1u);
LABEL_79:
            v20 = v8;
            v90 = sub_100092134(a1, v4 | 0x2A00u);
            if (v3)
            {
              return;
            }

            sub_100090628(v90 & 0xFFFFFFFFFFFFFFLL, v91, v92, v93, v318);

            v206 = sub_1000377B8();
            v225 = swift_allocObject();
            v226 = v318[1];
            *(v225 + 16) = v318[0];
            *(v225 + 32) = v226;
            *(v225 + 48) = v318[2];
            *(v225 + 64) = v319;
            *&v284[0] = v225;
            *(v284 + 8) = *v278;
            v49 = &type metadata for ClockSelector;
            goto LABEL_278;
          }

          goto LABEL_225;
        }

        goto LABEL_260;
      }

      v84 = v84;
      v143 = v52 >> 32;
      if (v52 >> 32 >= v52)
      {
        goto LABEL_221;
      }

      goto LABEL_301;
    case 9:
      v274 = v8;
      v106 = v4 | 0x2200;
      v107 = sub_1000A60F8(a1, v4 | 0x2200u);
      if (v108 >> 60 == 15)
      {
        goto LABEL_331;
      }

      v15 = v107;
      v4 = v108;
      v109 = v108 >> 62;
      if ((v108 >> 62) > 1)
      {
        if (v109 != 2)
        {
          *&v278[6] = 0;
          *v278 = 0;
          sub_1000D5D10(v278, v278, 12);
          if (v3)
          {
            goto LABEL_239;
          }

          v249 = sub_1001128D0(v278, 0xCuLL);
          v251 = v250;
          v273 = sub_1000A61BC(v249, v250, 1, sub_10010AB1C);
          sub_10007676C(v249, v251);
          v8 = v273;
          if (!*(v273 + 16))
          {
LABEL_315:
            __break(1u);
            goto LABEL_316;
          }

LABEL_270:
          *&v281 = *(v8 + 32);
          DWORD2(v281) = *(v8 + 40);

LABEL_271:
          sub_100076B24(v15, v4);
          sub_10008BD40(v281, DWORD2(v281), a1, v106, v305);
          v153 = sub_1000A9A50();
          v154 = swift_allocObject();
          v252 = v305[3];
          *(v154 + 48) = v305[2];
          *(v154 + 64) = v252;
          v253 = v305[5];
          *(v154 + 80) = v305[4];
          *(v154 + 96) = v253;
          v181 = v305[0];
          v182 = v305[1];
          goto LABEL_272;
        }

        v107 = *(v107 + 16);
        v145 = *(v15 + 24);
LABEL_236:
        sub_1000A76B0(v107, v145, &v281);
        if (v3)
        {
          goto LABEL_239;
        }

        goto LABEL_271;
      }

      if (!v109)
      {
        *v278 = v107;
        *&v278[8] = v108;
        v278[10] = BYTE2(v108);
        v278[11] = BYTE3(v108);
        v278[12] = BYTE4(v108);
        v278[13] = BYTE5(v108);
        sub_1000D5D10(v278, &v278[BYTE6(v108)], 12);
        if (v3)
        {
          goto LABEL_239;
        }

        v110 = sub_1001128D0(v278, 0xCuLL);
        v112 = v111;
        v273 = sub_1000A61BC(v110, v111, 1, sub_10010AB1C);
        sub_10007676C(v110, v112);
        v8 = v273;
        if (!*(v273 + 16))
        {
          __break(1u);
LABEL_106:
          v20 = v8;
          sub_1000E2994(a1, v4 | 0x3000, v323);
          if (v3)
          {
            return;
          }

          sub_1000D81B0(v324);
          sub_1000A9FFC(v323);
          v206 = sub_100023230();
          v207 = swift_allocObject();
          v231 = v324[3];
          *(v207 + 48) = v324[2];
          *(v207 + 64) = v231;
          *(v207 + 80) = v324[4];
          *(v207 + 96) = v325;
          v232 = v324[1];
          *(v207 + 16) = v324[0];
          *(v207 + 32) = v232;
          v49 = &type metadata for MixerUnit;
          goto LABEL_277;
        }

        goto LABEL_270;
      }

      v107 = v107;
      v145 = v15 >> 32;
      if (v15 >> 32 >= v15)
      {
        goto LABEL_236;
      }

      goto LABEL_303;
    case 10:
      v20 = v8;
      sub_100091464(a1, v4 | 0x2300u, v306);
      if (v3)
      {
        return;
      }

      v102 = *(v307 + 16);
      v103 = (v307 + 32);
      while (v102)
      {
        v104 = *v103++;
        --v102;
        if (v104 == v306[3])
        {
          sub_1000AA148(v306);
LABEL_99:
          v105 = 0;
          v49 = 0;
          v206 = 0;
          goto LABEL_291;
        }
      }

      sub_10008CDF0(v308);
      sub_1000AA148(v306);
      v206 = sub_100023230();
      v105 = swift_allocObject();
      v269 = v308[3];
      *(v105 + 48) = v308[2];
      *(v105 + 64) = v269;
      *(v105 + 80) = v308[4];
      *(v105 + 96) = v309;
      v267 = v308[0];
      v268 = v308[1];
LABEL_290:
      *(v105 + 16) = v267;
      *(v105 + 32) = v268;
      v49 = &type metadata for MixerUnit;
LABEL_291:
      v284[0] = v105;
      *&v284[1] = 0;
      goto LABEL_278;
    case 11:
      goto LABEL_30;
    case 12:
      v71 = v8;
      v72 = sub_1000A60F8(a1, v4 | 0x2500u);
      if (v73 >> 60 == 15)
      {
        goto LABEL_326;
      }

      v52 = v72;
      v53 = v73;
      v74 = v73 >> 62;
      if ((v73 >> 62) > 1)
      {
        if (v74 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          v75 = &v281;
          goto LABEL_202;
        }

        v72 = *(v72 + 16);
        v140 = *(v52 + 24);
LABEL_200:
        sub_1000A7744(v72, v140, v278);
LABEL_203:
        if (v3)
        {
          goto LABEL_260;
        }

        sub_100076B24(v52, v53);
        v359 = *v278;
        v360 = v278[4];
        v361 = a1;
        v362 = v4;
        v363 = 37;
        v364 = *&v278[8];
        v365 = v278[16];
        sub_10008DE14(v312);
        v20 = v71;
        sub_1000AA0F4(&v359);
        v206 = sub_1000A99A4();
        v207 = swift_allocObject();
        v229 = v312[1];
        v248 = v312[3];
        *(v207 + 48) = v312[2];
        *(v207 + 64) = v248;
        *(v207 + 80) = v313;
        v230 = v312[0];
        goto LABEL_268;
      }

      if (!v74)
      {
        *&v281 = v72;
        WORD4(v281) = v73;
        BYTE10(v281) = BYTE2(v73);
        BYTE11(v281) = BYTE3(v73);
        BYTE12(v281) = BYTE4(v73);
        BYTE13(v281) = BYTE5(v73);
        v75 = (&v281 + BYTE6(v73));
LABEL_202:
        sub_10008D824(&v281, v75, v278);
        goto LABEL_203;
      }

      v72 = v72;
      v140 = v52 >> 32;
      if (v52 >> 32 >= v52)
      {
        goto LABEL_200;
      }

      goto LABEL_298;
    case 15:
      v20 = v8;
      sub_100091D7C(a1, v4 | 0x2800u, v314);
      if (v3)
      {
        return;
      }

      sub_10008E994(v316);
      sub_1000AA0A0(v314);
      v206 = sub_10007D34C();
      v207 = swift_allocObject();
      v218 = v316[3];
      *(v207 + 48) = v316[2];
      *(v207 + 64) = v218;
      v219 = v316[5];
      *(v207 + 80) = v316[4];
      *(v207 + 96) = v219;
      v216 = v316[0];
      v217 = v316[1];
      goto LABEL_264;
    case 16:
      v274 = v8;
      v21 = v4 | 0x2900;
      v22 = sub_1000A60F8(a1, v4 | 0x2900u);
      if (v23 >> 60 == 15)
      {
        __break(1u);
        goto LABEL_319;
      }

      v15 = v22;
      v4 = v23;
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2)
        {
          *&v278[6] = 0;
          *v278 = 0;
          sub_1000D5D10(v278, v278, 8);
          if (v3)
          {
            goto LABEL_239;
          }

          v149 = sub_1001128D0(v278, 8uLL);
          v151 = v150;
          v273 = sub_1000A61BC(v149, v150, 1, sub_10010B008);
          sub_10007676C(v149, v151);
          v8 = v273;
          if (!*(v273 + 16))
          {
            goto LABEL_307;
          }

LABEL_164:
          v152 = *(v8 + 32);

          sub_100076B24(v15, v4);
          *&v281 = v152;
LABEL_165:
          sub_10008F77C(v281, a1, v21, v317);
          v153 = sub_10002C514();
          v154 = swift_allocObject();
          v155 = v317[1];
          *(v154 + 16) = v317[0];
          *(v154 + 32) = v155;
          v156 = v317[2];
          v157 = v317[3];
LABEL_180:
          *(v154 + 48) = v156;
          *(v154 + 64) = v157;
          v165 = &type metadata for ClockSource;
          goto LABEL_273;
        }

        v22 = *(v22 + 16);
        v134 = *(v15 + 24);
      }

      else
      {
        if (!v24)
        {
          *v278 = v22;
          *&v278[8] = v23;
          v278[10] = BYTE2(v23);
          v278[11] = BYTE3(v23);
          v278[12] = BYTE4(v23);
          v278[13] = BYTE5(v23);
          sub_1000D5D10(v278, &v278[BYTE6(v23)], 8);
          if (v3)
          {
            goto LABEL_239;
          }

          v25 = sub_1001128D0(v278, 8uLL);
          v27 = v26;
          v273 = sub_1000A61BC(v25, v26, 1, sub_10010B008);
          sub_10007676C(v25, v27);
          v8 = v273;
          if (!*(v273 + 16))
          {
            __break(1u);
LABEL_18:
            v274 = v8;
            v28 = v4 | 0x3800;
            v29 = sub_1000A60F8(a1, v28);
            if (v30 >> 60 != 15)
            {
              v15 = v29;
              v4 = v30;
              v31 = v30 >> 62;
              if ((v30 >> 62) > 1)
              {
                if (v31 != 2)
                {
                  *&v278[6] = 0;
                  *v278 = 0;
                  sub_1000D5D10(v278, v278, 11);
                  if (v3)
                  {
                    goto LABEL_239;
                  }

                  v158 = sub_1001128D0(v278, 0xBuLL);
                  v160 = v159;
                  v273 = sub_1000A61BC(v158, v159, 1, sub_10010C304);
                  sub_10007676C(v158, v160);
                  v8 = v273;
                  if (!*(v273 + 16))
                  {
                    goto LABEL_308;
                  }

LABEL_171:
                  v161 = *(v8 + 36);
                  v162 = *(v8 + 37);
                  v271 = *(v8 + 41);
                  LODWORD(v272) = v161;
                  v163 = *(v8 + 32);

                  sub_100076B24(v15, v4);
                  LODWORD(v281) = v163;
                  BYTE4(v281) = v272;
                  *(&v281 + 5) = v162;
                  *(&v281 + 9) = v271;
LABEL_172:
                  *v278 = v281;
                  v278[4] = BYTE4(v281);
                  *&v278[5] = *(&v281 + 5);
                  *&v278[9] = *(&v281 + 9);
                  sub_1000D9A70(*v278, *&v278[8], a1, v28, v339);
                  v153 = sub_1000A9C98();
                  v154 = swift_allocObject();
                  v164 = v339[1];
                  *(v154 + 16) = v339[0];
                  *(v154 + 32) = v164;
                  *(v154 + 48) = v339[2];
                  *(v154 + 64) = v340;
                  v165 = &type metadata for ClockMultiplier;
LABEL_273:
                  *&v284[0] = v154;
                  *(&v284[1] + 1) = v165;
                  v285 = v153;
                  v20 = v274;
                  goto LABEL_279;
                }

                v29 = *(v29 + 16);
                v135 = *(v15 + 24);
LABEL_167:
                sub_1000A7B50(v29, v135, &v281);
                if (v3)
                {
                  goto LABEL_239;
                }

                sub_100076B24(v15, v4);
                goto LABEL_172;
              }

              if (!v31)
              {
                *v278 = v29;
                *&v278[8] = v30;
                v278[10] = BYTE2(v30);
                v278[11] = BYTE3(v30);
                v278[12] = BYTE4(v30);
                v278[13] = BYTE5(v30);
                sub_1000D5D10(v278, &v278[BYTE6(v30)], 11);
                if (v3)
                {
                  goto LABEL_239;
                }

                v32 = sub_1001128D0(v278, 0xBuLL);
                v34 = v33;
                v273 = sub_1000A61BC(v32, v33, 1, sub_10010C304);
                sub_10007676C(v32, v34);
                v8 = v273;
                if (!*(v273 + 16))
                {
                  __break(1u);
LABEL_24:
                  v274 = v8;
                  v35 = v4 | 0x3600;
                  v36 = sub_1000A60F8(a1, v4 | 0x3600u);
                  if (v37 >> 60 != 15)
                  {
                    v15 = v36;
                    v4 = v37;
                    v38 = v37 >> 62;
                    if ((v37 >> 62) > 1)
                    {
                      if (v38 == 2)
                      {
                        v36 = *(v36 + 16);
                        v136 = *(v15 + 24);
                        goto LABEL_174;
                      }

                      *&v278[6] = 0;
                      *v278 = 0;
                      sub_1000D5D10(v278, v278, 12);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      v166 = sub_1001128D0(v278, 0xCuLL);
                      v168 = v167;
                      v273 = sub_1000A61BC(v166, v167, 1, sub_10010C0B0);
                      sub_10007676C(v166, v168);
                      v8 = v273;
                      if (*(v273 + 16))
                      {
LABEL_178:
                        *&v281 = *(v8 + 32);
                        DWORD2(v281) = *(v8 + 40);

LABEL_179:
                        sub_100076B24(v15, v4);
                        *v278 = v281;
                        v278[4] = BYTE4(v281);
                        *&v278[5] = *(&v281 + 5);
                        v278[9] = BYTE9(v281);
                        *&v278[10] = WORD5(v281);
                        sub_1000D8F78(*v278, *&v278[8], a1, v35, v335);
                        v153 = sub_10002C514();
                        v154 = swift_allocObject();
                        v169 = v335[1];
                        *(v154 + 16) = v335[0];
                        *(v154 + 32) = v169;
                        v156 = v335[2];
                        v157 = v335[3];
                        goto LABEL_180;
                      }

LABEL_309:
                      __break(1u);
LABEL_310:
                      __break(1u);
LABEL_311:
                      __break(1u);
                      goto LABEL_312;
                    }

                    if (!v38)
                    {
                      *v278 = v36;
                      *&v278[8] = v37;
                      v278[10] = BYTE2(v37);
                      v278[11] = BYTE3(v37);
                      v278[12] = BYTE4(v37);
                      v278[13] = BYTE5(v37);
                      sub_1000D5D10(v278, &v278[BYTE6(v37)], 12);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      v39 = sub_1001128D0(v278, 0xCuLL);
                      v41 = v40;
                      v273 = sub_1000A61BC(v39, v40, 1, sub_10010C0B0);
                      sub_10007676C(v39, v41);
                      v8 = v273;
                      if (!*(v273 + 16))
                      {
                        __break(1u);
LABEL_30:
                        v20 = v8;
                        v42 = sub_100091820(a1, v4 | 0x2400u);
                        if (v3)
                        {
                          return;
                        }

                        sub_10008D4BC(v42 & 0xFFFFFFFFFFFFFFLL, v43, v44, v45, v310);

                        v206 = sub_100026850();
                        v46 = swift_allocObject();
                        v47 = v310[3];
                        *(v46 + 48) = v310[2];
                        *(v46 + 64) = v47;
                        *(v46 + 80) = v311;
                        v48 = v310[1];
                        *(v46 + 16) = v310[0];
                        *(v46 + 32) = v48;
                        *&v284[0] = v46;
                        *(v284 + 8) = *v278;
                        v49 = &type metadata for SelectorUnit;
                        goto LABEL_278;
                      }

                      goto LABEL_178;
                    }

                    v36 = v36;
                    v136 = v15 >> 32;
                    if (v15 >> 32 >= v15)
                    {
LABEL_174:
                      sub_1000A7ABC(v36, v136, &v281);
                      if (v3)
                      {
                        goto LABEL_239;
                      }

                      goto LABEL_179;
                    }

                    goto LABEL_294;
                  }

                  goto LABEL_320;
                }

                goto LABEL_171;
              }

              v29 = v29;
              v135 = v15 >> 32;
              if (v15 >> 32 >= v15)
              {
                goto LABEL_167;
              }

LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
              goto LABEL_295;
            }

LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          goto LABEL_164;
        }

        v22 = v22;
        v134 = v15 >> 32;
        if (v15 >> 32 < v15)
        {
          __break(1u);
          goto LABEL_293;
        }
      }

      sub_1000A77D8(v22, v134, &v281);
      if (v3)
      {
        goto LABEL_239;
      }

      sub_100076B24(v15, v4);
      goto LABEL_165;
    case 17:
      goto LABEL_79;
    case 21:
      v274 = v8;
      v94 = sub_1000A60F8(a1, v4 | 0x2E00u);
      if (v95 >> 60 == 15)
      {
        goto LABEL_329;
      }

      v52 = v94;
      v53 = v95;
      v96 = v95 >> 62;
      if ((v95 >> 62) > 1)
      {
        if (v96 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          sub_1000D5D10(&v281, &v281, 20);
          if (v3)
          {
            goto LABEL_260;
          }

          v189 = sub_1001128D0(&v281, 0x14uLL);
          v191 = v190;
          v273 = sub_1000A61BC(v189, v190, 1, sub_10010BC54);
          sub_10007676C(v189, v191);
          v8 = v273;
          if (!*(v273 + 16))
          {
LABEL_314:
            __break(1u);
            goto LABEL_315;
          }

LABEL_232:
          *v278 = *(v8 + 32);
          *&v278[16] = *(v8 + 48);

          goto LABEL_233;
        }

        v94 = *(v94 + 16);
        v144 = *(v52 + 24);
LABEL_228:
        sub_1000A786C(v94, v144, v278);
        if (v3)
        {
          goto LABEL_260;
        }

LABEL_233:
        sub_100076B24(v52, v53);
        v366 = *v278;
        v367 = *&v278[16];
        v368 = a1;
        v369 = v4;
        v370 = 46;
        sub_1000D7934(v320);
        v20 = v274;
        v206 = sub_1000A9B38();
        v207 = swift_allocObject();
        v192 = v320[5];
        *(v207 + 80) = v320[4];
        *(v207 + 96) = v192;
        *(v207 + 112) = v321;
        v193 = v320[1];
        *(v207 + 16) = v320[0];
        *(v207 + 32) = v193;
        v244 = v320[3];
        v188 = v315;
        goto LABEL_234;
      }

      if (v96)
      {
        v94 = v94;
        v144 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
          goto LABEL_304;
        }

        goto LABEL_228;
      }

      *&v281 = v94;
      WORD4(v281) = v95;
      BYTE10(v281) = BYTE2(v95);
      BYTE11(v281) = BYTE3(v95);
      BYTE12(v281) = BYTE4(v95);
      BYTE13(v281) = BYTE5(v95);
      sub_1000D5D10(&v281, &v281 + BYTE6(v95), 20);
      if (v3)
      {
        goto LABEL_260;
      }

      v11 = sub_1001128D0(&v281, 0x14uLL);
      v98 = v97;
      v273 = sub_1000A61BC(v11, v97, 1, sub_10010BC54);
      sub_10007676C(v11, v98);
      v8 = v273;
      if (*(v273 + 16))
      {
        goto LABEL_232;
      }

      __break(1u);
LABEL_87:
      v99 = v8;
      v100 = sub_1000A60F8(a1, v4 | 0x5100u);
      if (v101 >> 60 == 15)
      {
        goto LABEL_330;
      }

      v52 = v100;
      v53 = v101;
      sub_1000A72B4(v100, v101, v278);
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v52, v53);
      *(v11 + 16) = *v278;
      v400 = *&v278[16];
      v401 = a1;
      v402 = v4;
      v403 = 81;
      v404 = v279;
      sub_1000FF350(v351);
      sub_1000A99FC(v399);
      v237 = sub_1000A9A50();
      v238 = swift_allocObject();
      v239 = v351[3];
      v238[3] = v351[2];
      v238[4] = v239;
      v240 = v351[5];
      v238[5] = v351[4];
      v238[6] = v240;
      v241 = v351[1];
      v238[1] = v351[0];
      v238[2] = v241;
      *&v284[0] = v238;
      *(&v284[1] + 1) = &type metadata for OutputTerminal;
      v285 = v237;
      v20 = v99;
LABEL_279:
      sub_1000A9878(v284, &v281);
      if (!v283)
      {
        sub_1000A98E8(&v281);
        goto LABEL_283;
      }

      sub_10001EFE4(&v281, v278);
      v259 = v279;
      sub_10001EAB8(v278, v279);
      if ((*(*(&v259 + 1) + 16))(v259, *(&v259 + 1)))
      {
        sub_10000CE78(v278);
LABEL_283:
        v260 = v284[1];
        v261 = v276;
        *v276 = v284[0];
        v261[1] = v260;
        *(v261 + 4) = v285;
        return;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v262 = sub_10000A1BC(v20, qword_1001794F0);
      sub_10000A2A4(v262, v275);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v263 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v263, qword_100179508);
      v264 = v275;
      sub_100039F58(1, v275, 0x2064696C61766E49, 0xEE00797469746E65);
      sub_10000C9D0(v264);
      sub_1000A98E8(v284);
      v265 = v276;
      *v276 = 0u;
      v265[1] = 0u;
      *(v265 + 4) = 0;
      sub_10000CE78(v278);
      return;
    case 22:
      v274 = v8;
      v113 = sub_1000A60F8(a1, v4 | 0x2F00u);
      if (v114 >> 60 == 15)
      {
        goto LABEL_332;
      }

      v52 = v113;
      v53 = v114;
      v115 = v114 >> 62;
      if ((v114 >> 62) > 1)
      {
        if (v115 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          sub_1000D5D10(&v281, &v281, 19);
          if (v3)
          {
            goto LABEL_260;
          }

          v194 = sub_1001128D0(&v281, 0x13uLL);
          v273 = v195;
          v272 = sub_1000A61BC(v194, v195, 1, sub_10010BD50);
          sub_10007676C(v194, v273);
          v8 = v272;
          if (!*(v272 + 16))
          {
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
          }

LABEL_245:
          *v278 = *(v8 + 32);
          *&v278[15] = *(v8 + 47);

          goto LABEL_246;
        }

        v113 = *(v113 + 16);
        v146 = *(v52 + 24);
      }

      else
      {
        if (!v115)
        {
          *&v281 = v113;
          WORD4(v281) = v114;
          BYTE10(v281) = BYTE2(v114);
          BYTE11(v281) = BYTE3(v114);
          BYTE12(v281) = BYTE4(v114);
          BYTE13(v281) = BYTE5(v114);
          sub_1000D5D10(&v281, &v281 + BYTE6(v114), 19);
          if (v3)
          {
            goto LABEL_260;
          }

          v116 = sub_1001128D0(&v281, 0x13uLL);
          v273 = v117;
          v272 = sub_1000A61BC(v116, v117, 1, sub_10010BD50);
          sub_10007676C(v116, v273);
          v8 = v272;
          if (!*(v272 + 16))
          {
            __break(1u);
LABEL_114:
            v274 = v8;
            v118 = sub_1000A60F8(a1, v4 | 0x3300u);
            if (v119 >> 60 == 15)
            {
LABEL_333:
              __break(1u);
LABEL_334:
              __break(1u);
              JUMPOUT(0x1000A6008);
            }

            v52 = v118;
            v53 = v119;
            v120 = v119 >> 62;
            if ((v119 >> 62) > 1)
            {
              if (v120 != 2)
              {
                *&v278[6] = 0;
                *v278 = 0;
                v121 = v278;
                goto LABEL_250;
              }

              v118 = *(v118 + 16);
              v147 = *(v52 + 24);
            }

            else
            {
              if (!v120)
              {
                *v278 = v118;
                *&v278[8] = v119;
                v278[10] = BYTE2(v119);
                v278[11] = BYTE3(v119);
                v278[12] = BYTE4(v119);
                v278[13] = BYTE5(v119);
                v121 = &v278[BYTE6(v119)];
LABEL_250:
                sub_1000DEF88(v278, v121, &v281);
LABEL_251:
                if (!v3)
                {
                  sub_100076B24(v52, v53);
                  v199 = BYTE6(v281);
                  v200.i32[0] = v281;
                  v201 = vmovl_u8(v200);
                  *v278 = v281;
                  *&v278[4] = WORD2(v281);
                  v278[6] = BYTE6(v281);
                  *&v278[8] = a1;
                  v278[16] = v4;
                  v278[17] = 51;
                  *&v279 = *(&v281 + 1);
                  WORD4(v279) = v282;
                  if (v282)
                  {
                    v202 = v282 | 0x10000;
                  }

                  else
                  {
                    v202 = -65536;
                  }

                  v203 = v201.u8[6];
                  sub_1000A9EC0(v278);
                  v204 = *&v278[8];
                  v205 = *&v278[16];
                  v277 = 0;
                  v153 = sub_10007D774();
                  v154 = swift_allocObject();
                  *(v154 + 16) = v199;
                  *(v154 + 24) = v277;
                  *(v154 + 32) = v203;
                  *(v154 + 42) = BYTE2(v202);
                  *(v154 + 40) = v202;
                  *(v154 + 48) = v204;
                  *(v154 + 56) = v205;
                  *(v154 + 64) = _swiftEmptyArrayStorage;
                  *(v154 + 72) = 0;
                  v165 = &type metadata for EffectUnit;
                  goto LABEL_273;
                }

                goto LABEL_260;
              }

              v118 = v118;
              v147 = v52 >> 32;
              if (v52 >> 32 < v52)
              {
LABEL_305:
                __break(1u);
                goto LABEL_306;
              }
            }

            sub_1000A7A28(v118, v147, &v281);
            goto LABEL_251;
          }

          goto LABEL_245;
        }

        v113 = v113;
        v146 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }
      }

      sub_1000A7900(v113, v146, v278);
      if (v3)
      {
        goto LABEL_260;
      }

LABEL_246:
      sub_100076B24(v52, v53);
      *v371 = *v278;
      *&v371[15] = *&v278[15];
      v372 = a1;
      v373 = v4;
      v374 = 47;
      sub_1000D7D80(v322);
      v20 = v274;
      v206 = sub_1000A9A50();
      v207 = swift_allocObject();
      v196 = v322[3];
      *(v207 + 48) = v322[2];
      *(v207 + 64) = v196;
      v197 = v322[5];
      *(v207 + 80) = v322[4];
      *(v207 + 96) = v197;
      v198 = v322[1];
      *(v207 + 16) = v322[0];
      *(v207 + 32) = v198;
      v49 = &type metadata for OutputTerminal;
LABEL_277:
      *&v284[0] = v207;
LABEL_278:
      *(&v284[1] + 1) = v49;
      v285 = v206;
      goto LABEL_279;
    case 23:
      goto LABEL_106;
    case 24:
      v20 = v8;
      sub_1000E2D34(a1, v4 | 0x3100u, v326);
      if (v3)
      {
        return;
      }

      sub_1000D8610(v327);
      sub_1000A9FA8(v326);
      v206 = sub_100026850();
      v207 = swift_allocObject();
      v208 = v327[3];
      *(v207 + 48) = v327[2];
      *(v207 + 64) = v208;
      *(v207 + 80) = v328;
      v209 = v327[1];
      v210 = v327[0];
LABEL_265:
      *(v207 + 16) = v210;
      *(v207 + 32) = v209;
      v49 = &type metadata for SelectorUnit;
      goto LABEL_277;
    case 25:
      v56 = v8;
      v57 = sub_1000A60F8(a1, v4 | 0x3200u);
      if (v58 >> 60 == 15)
      {
        goto LABEL_322;
      }

      v52 = v57;
      v53 = v58;
      v59 = v58 >> 62;
      if ((v58 >> 62) > 1)
      {
        if (v59 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          v60 = &v281;
          goto LABEL_190;
        }

        v57 = *(v57 + 16);
        v138 = *(v52 + 24);
      }

      else
      {
        if (!v59)
        {
          *&v281 = v57;
          WORD4(v281) = v58;
          BYTE10(v281) = BYTE2(v58);
          BYTE11(v281) = BYTE3(v58);
          BYTE12(v281) = BYTE4(v58);
          BYTE13(v281) = BYTE5(v58);
          v60 = (&v281 + BYTE6(v58));
LABEL_190:
          sub_1000DE238(&v281, v60, v278);
          goto LABEL_191;
        }

        v57 = v57;
        v138 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
          goto LABEL_302;
        }
      }

      sub_1000A7994(v57, v138, v278);
LABEL_191:
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v52, v53);
      v375 = *v278;
      v376 = v278[4];
      v377 = a1;
      v378 = v4;
      v379 = 50;
      v380 = *&v278[8];
      v381 = *&v278[16];
      sub_1000D8848(v329);
      v20 = v56;
      sub_1000A9F54(&v375);
      v206 = sub_1000A99A4();
      v207 = swift_allocObject();
      v229 = v329[1];
      v243 = v329[3];
      *(v207 + 48) = v329[2];
      *(v207 + 64) = v243;
      *(v207 + 80) = v330;
      v230 = v329[0];
LABEL_268:
      *(v207 + 16) = v230;
      *(v207 + 32) = v229;
      v49 = &type metadata for FeatureUnit;
      goto LABEL_277;
    case 26:
      goto LABEL_114;
    case 27:
      v20 = v8;
      sub_1000E2DA8(a1, v4 | 0x3400, v331);
      if (v3)
      {
        return;
      }

      sub_1000D8A2C(v332);
      sub_1000A9E1C(v331);
      v206 = sub_10007D3F0();
      v207 = swift_allocObject();
      v211 = v332[3];
      *(v207 + 48) = v332[2];
      *(v207 + 64) = v211;
      *(v207 + 80) = v332[4];
      v212 = v332[1];
      v213 = v332[0];
LABEL_263:
      *(v207 + 16) = v213;
      *(v207 + 32) = v212;
      v49 = &type metadata for ProcessingUnit;
      goto LABEL_277;
    case 28:
      v20 = v8;
      sub_1000E3138(a1, v4 | 0x3500, v333);
      if (v3)
      {
        return;
      }

      sub_1000D8B4C(v334);
      sub_1000A9D78(v333);
      v206 = sub_10007D34C();
      v207 = swift_allocObject();
      v214 = v334[3];
      *(v207 + 48) = v334[2];
      *(v207 + 64) = v214;
      v215 = v334[5];
      *(v207 + 80) = v334[4];
      *(v207 + 96) = v215;
      v216 = v334[0];
      v217 = v334[1];
      goto LABEL_264;
    case 29:
      goto LABEL_24;
    case 30:
      v20 = v8;
      sub_1000E34D8(a1, v4 | 0x3700u, v336);
      if (v3)
      {
        return;
      }

      sub_1000D956C(v337);
      sub_1000A9D24(v336);
      v206 = sub_1000377B8();
      v207 = swift_allocObject();
      v221 = v337[1];
      *(v207 + 16) = v337[0];
      *(v207 + 32) = v221;
      *(v207 + 48) = v337[2];
      v222 = v338;
      goto LABEL_266;
    case 31:
      goto LABEL_18;
    case 34:
      goto LABEL_124;
    case 53:
      v274 = v8;
      v122 = sub_1000A60F8(a1, v4 | 0x4E00u);
      if (v123 >> 60 == 15)
      {
        goto LABEL_334;
      }

      v52 = v122;
      v53 = v123;
      v124 = v123 >> 62;
      if ((v123 >> 62) > 1)
      {
        if (v124 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          sub_1000D5D10(&v281, &v281, 22);
          if (v3)
          {
            goto LABEL_260;
          }

          v254 = sub_1001128D0(&v281, 0x16uLL);
          v256 = v255;
          v273 = sub_1000A61BC(v254, v255, 1, sub_10010D1E4);
          sub_10007676C(v254, v256);
          v8 = v273;
          if (!*(v273 + 16))
          {
            goto LABEL_317;
          }

LABEL_275:
          *v278 = *(v8 + 32);
          *&v278[14] = *(v8 + 46);

          goto LABEL_276;
        }

        v122 = *(v122 + 16);
        v148 = *(v52 + 24);
      }

      else
      {
        if (!v124)
        {
          *&v281 = v122;
          WORD4(v281) = v123;
          BYTE10(v281) = BYTE2(v123);
          BYTE11(v281) = BYTE3(v123);
          BYTE12(v281) = BYTE4(v123);
          BYTE13(v281) = BYTE5(v123);
          sub_1000D5D10(&v281, &v281 + BYTE6(v123), 22);
          if (v3)
          {
            goto LABEL_260;
          }

          v125 = sub_1001128D0(&v281, 0x16uLL);
          v127 = v126;
          v273 = sub_1000A61BC(v125, v126, 1, sub_10010D1E4);
          sub_10007676C(v125, v127);
          v8 = v273;
          if (!*(v273 + 16))
          {
            __break(1u);
LABEL_124:
            v128 = v8;
            sub_1000E3908(a1, v4 | 0x3B00, v341);
            if (v3)
            {
              return;
            }

            if (v345)
            {
              v129 = v345 | 0x10000;
            }

            else
            {
              v129 = -65536;
            }

            v130 = v341[3];
            v131 = v344;
            v132 = v342;
            v133 = v343;
            v206 = sub_10007D494();
            v207 = swift_allocObject();
            *(v207 + 16) = v130;
            *(v207 + 26) = BYTE2(v129);
            *(v207 + 24) = v129;
            *(v207 + 32) = v132;
            v20 = v128;
            *(v207 + 40) = v133;
            *(v207 + 48) = 0;
            *(v207 + 56) = v131;
            v49 = &type metadata for PowerDomain;
            goto LABEL_277;
          }

          goto LABEL_275;
        }

        v122 = v122;
        v148 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
          goto LABEL_309;
        }
      }

      sub_1000A7BE4(v122, v148, v278);
      if (v3)
      {
        goto LABEL_260;
      }

LABEL_276:
      sub_100076B24(v52, v53);
      *v382 = *v278;
      *&v382[14] = *&v278[14];
      v383 = a1;
      v384 = v4;
      v385 = 78;
      sub_1000FF098(v346);
      v20 = v274;
      v206 = sub_10002C514();
      v207 = swift_allocObject();
      v257 = v346[1];
      *(v207 + 16) = v346[0];
      *(v207 + 32) = v257;
      v258 = v346[3];
      *(v207 + 48) = v346[2];
      *(v207 + 64) = v258;
      v49 = &type metadata for ClockSource;
      goto LABEL_277;
    case 54:
      v274 = v8;
      v50 = sub_1000A60F8(a1, v4 | 0x4F00u);
      if (v51 >> 60 == 15)
      {
        goto LABEL_321;
      }

      v52 = v50;
      v53 = v51;
      v54 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v54 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          v55 = &v281;
          goto LABEL_184;
        }

        v50 = *(v50 + 16);
        v137 = *(v52 + 24);
      }

      else
      {
        if (!v54)
        {
          *&v281 = v50;
          WORD4(v281) = v51;
          BYTE10(v281) = BYTE2(v51);
          BYTE11(v281) = BYTE3(v51);
          BYTE12(v281) = BYTE4(v51);
          BYTE13(v281) = BYTE5(v51);
          v55 = (&v281 + BYTE6(v51));
LABEL_184:
          sub_1001060E8(&v281, v55, v278);
LABEL_185:
          if (!v3)
          {
            sub_100076B24(v52, v53);
            v386 = *v278;
            v387 = *&v278[16];
            v388 = a1;
            v389 = v4;
            v390 = 79;
            v391 = v279;
            sub_1000FF138(v347);
            v20 = v274;
            sub_1000A9BEC(&v386);
            v206 = sub_1000377B8();
            v207 = swift_allocObject();
            v242 = v347[1];
            *(v207 + 16) = v347[0];
            *(v207 + 32) = v242;
            *(v207 + 48) = v347[2];
            v222 = v348;
LABEL_266:
            *(v207 + 64) = v222;
            v49 = &type metadata for ClockSelector;
            goto LABEL_277;
          }

          goto LABEL_260;
        }

        v50 = v50;
        v137 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
LABEL_295:
          __break(1u);
          goto LABEL_296;
        }
      }

      sub_1000A7C78(v50, v137, v278);
      goto LABEL_185;
    case 55:
      v274 = v8;
      v64 = sub_1000A60F8(a1, v4 | 0x5000u);
      if (v65 >> 60 == 15)
      {
        goto LABEL_324;
      }

      v52 = v64;
      v53 = v65;
      v66 = v65 >> 62;
      if ((v65 >> 62) > 1)
      {
        if (v66 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          v67 = &v281;
          goto LABEL_196;
        }

        v64 = *(v64 + 16);
        v139 = *(v52 + 24);
      }

      else
      {
        if (!v66)
        {
          *&v281 = v64;
          WORD4(v281) = v65;
          BYTE10(v281) = BYTE2(v65);
          BYTE11(v281) = BYTE3(v65);
          BYTE12(v281) = BYTE4(v65);
          BYTE13(v281) = BYTE5(v65);
          v67 = (&v281 + BYTE6(v65));
LABEL_196:
          sub_100103C58(&v281, v67, v278);
LABEL_197:
          if (!v3)
          {
            sub_100076B24(v52, v53);
            *v392 = *v278;
            *&v392[14] = *&v278[14];
            v393 = DWORD2(v279);
            v394 = a1;
            v395 = v4;
            v396 = 80;
            v397 = v279;
            v398 = v280;
            sub_1000FF244(v349);
            v20 = v274;
            sub_1000A9AE4(v392);
            v206 = sub_1000A9B38();
            v207 = swift_allocObject();
            v244 = v349[3];
            v245 = v349[5];
            *(v207 + 80) = v349[4];
            *(v207 + 96) = v245;
            *(v207 + 112) = v350;
            v246 = v349[1];
            *(v207 + 16) = v349[0];
            *(v207 + 32) = v246;
            v247 = v349[2];
LABEL_267:
            *(v207 + 48) = v247;
            *(v207 + 64) = v244;
            v49 = &type metadata for InputTerminal;
            goto LABEL_277;
          }

          goto LABEL_260;
        }

        v64 = v64;
        v139 = v52 >> 32;
        if (v52 >> 32 < v52)
        {
          goto LABEL_297;
        }
      }

      sub_1000A7D0C(v64, v139, v278);
      goto LABEL_197;
    case 56:
      goto LABEL_87;
    case 59:
      v68 = v8;
      v69 = sub_1000A60F8(a1, v4 | 0x5400u);
      if (v70 >> 60 == 15)
      {
        goto LABEL_325;
      }

      v52 = v69;
      v53 = v70;
      sub_1000A73D4(v69, v70, v278);
      if (v3)
      {
        goto LABEL_260;
      }

      sub_100076B24(v52, v53);
      v405 = *v278;
      v406 = *&v278[8];
      v407 = *&v278[12];
      v408 = a1;
      v409 = v4;
      v410 = 84;
      v411 = *&v278[16];
      sub_1000FF45C(v352);
      sub_1000A9950(&v405);
      v233 = sub_1000A99A4();
      v234 = swift_allocObject();
      v235 = v352[3];
      *(v234 + 48) = v352[2];
      *(v234 + 64) = v235;
      *(v234 + 80) = v353;
      v236 = v352[1];
      *(v234 + 16) = v352[0];
      *(v234 + 32) = v236;
      *&v284[0] = v234;
      *(&v284[1] + 1) = &type metadata for FeatureUnit;
      v285 = v233;
      v20 = v68;
      goto LABEL_279;
    default:
      v20 = v8;
      v285 = 0;
      memset(v284, 0, sizeof(v284));
      goto LABEL_279;
  }
}

unint64_t sub_1000A60F8(unsigned __int16 *a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v4 = USBDescriptor.usbDescriptor()(a1, a2);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (v5 <= 0xE)
      {
        return sub_100112818(v4, &v4[v5]);
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        __DataStorage.init(bytes:length:)();
        return v5 << 32;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v2 - 77 < 8 || v2 == 74)
  {
    return sub_1001128D0(a1, *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A61BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v19, 0, 14);
      goto LABEL_15;
    }

    v7 = *(a1 + 16);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      v9 = v8;
      v10 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v10))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v11 = (v7 - v10 + v9);
      __DataStorage._length.getter();
      if (v11)
      {
LABEL_13:
        v17 = v11;
        v18 = a3;
        return a4(v17, v18);
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
    v19[0] = a1;
    LOWORD(v19[1]) = a2;
    BYTE2(v19[1]) = BYTE2(a2);
    BYTE3(v19[1]) = BYTE3(a2);
    BYTE4(v19[1]) = BYTE4(a2);
    BYTE5(v19[1]) = BYTE5(a2);
LABEL_15:
    v17 = v19;
    v18 = a3;
    return a4(v17, v18);
  }

  v12 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
LABEL_22:
    result = __DataStorage._length.getter();
    goto LABEL_23;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  if (__OFSUB__(v12, v15))
  {
    goto LABEL_19;
  }

  v11 = (v12 - v15 + v14);
  result = __DataStorage._length.getter();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t USBDescriptor.usbDescriptor()(uint64_t a1, __int16 a2)
{
  result = 0;
  switch(HIBYTE(a2))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4B:
    case 0x4C:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t USBDescriptor.descriptorTypeName.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = type metadata accessor for Mirror();
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = &type metadata for USBDescriptor;
  v13 = a1;
  v17 = a1;
  LOBYTE(v18) = v2;
  v14 = v4;
  BYTE1(v18) = v4;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v8 == result)
  {
    v10 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v11 = v17;
      v12 = v18;
      sub_10000CE78(v19);
      if (v12)
      {
LABEL_6:
        (*(v15 + 8))(v7, v16);
        return v11;
      }
    }

    v17 = v13;
    LOBYTE(v18) = v2;
    BYTE1(v18) = v14;
    v11 = String.init<A>(describing:)();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void USBDescriptor.hash(into:)(uint64_t a1, Swift::UInt a2, __int16 a3)
{
  switch(HIBYTE(a3))
  {
    case 1:
      v4 = 1;
      goto LABEL_89;
    case 2:
      v4 = 2;
      goto LABEL_89;
    case 3:
      v4 = 3;
      goto LABEL_89;
    case 4:
      v4 = 4;
      goto LABEL_89;
    case 5:
      v4 = 5;
      goto LABEL_89;
    case 6:
      v4 = 6;
      goto LABEL_89;
    case 7:
      v4 = 7;
      goto LABEL_89;
    case 8:
      v4 = 8;
      goto LABEL_89;
    case 9:
      v4 = 9;
      goto LABEL_89;
    case 0xA:
      v4 = 10;
      goto LABEL_89;
    case 0xB:
      v4 = 11;
      goto LABEL_89;
    case 0xC:
      v4 = 12;
      goto LABEL_89;
    case 0xD:
      v4 = 13;
      goto LABEL_89;
    case 0xE:
      v4 = 14;
      goto LABEL_89;
    case 0xF:
      v4 = 15;
      goto LABEL_89;
    case 0x10:
      v4 = 16;
      goto LABEL_89;
    case 0x11:
      v4 = 17;
      goto LABEL_89;
    case 0x12:
      v4 = 18;
      goto LABEL_89;
    case 0x13:
      v4 = 19;
      goto LABEL_89;
    case 0x14:
      v4 = 20;
      goto LABEL_89;
    case 0x15:
      v5 = 21;
      goto LABEL_68;
    case 0x16:
      v5 = 22;
LABEL_68:
      v6 = a3;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(a2);
      Hasher._combine(_:)(v6);
      return;
    case 0x17:
      v4 = 23;
      goto LABEL_89;
    case 0x18:
      v4 = 24;
      goto LABEL_89;
    case 0x19:
      v4 = 25;
      goto LABEL_89;
    case 0x1A:
      v4 = 26;
      goto LABEL_89;
    case 0x1B:
      v4 = 27;
      goto LABEL_89;
    case 0x1C:
      v4 = 28;
      goto LABEL_89;
    case 0x1D:
      v4 = 29;
      goto LABEL_89;
    case 0x1E:
      v4 = 30;
      goto LABEL_89;
    case 0x1F:
      v4 = 31;
      goto LABEL_89;
    case 0x20:
      v4 = 32;
      goto LABEL_89;
    case 0x21:
      v4 = 33;
      goto LABEL_89;
    case 0x22:
      v4 = 34;
      goto LABEL_89;
    case 0x23:
      v4 = 35;
      goto LABEL_89;
    case 0x24:
      v4 = 36;
      goto LABEL_89;
    case 0x25:
      v4 = 37;
      goto LABEL_89;
    case 0x26:
      v4 = 38;
      goto LABEL_89;
    case 0x27:
      v4 = 39;
      goto LABEL_89;
    case 0x28:
      v4 = 40;
      goto LABEL_89;
    case 0x29:
      v4 = 41;
      goto LABEL_89;
    case 0x2A:
      v4 = 42;
      goto LABEL_89;
    case 0x2B:
      v4 = 43;
      goto LABEL_89;
    case 0x2C:
      v4 = 44;
      goto LABEL_89;
    case 0x2D:
      v4 = 45;
      goto LABEL_89;
    case 0x2E:
      v4 = 46;
      goto LABEL_89;
    case 0x2F:
      v4 = 47;
      goto LABEL_89;
    case 0x30:
      v4 = 48;
      goto LABEL_89;
    case 0x31:
      v4 = 49;
      goto LABEL_89;
    case 0x32:
      v4 = 50;
      goto LABEL_89;
    case 0x33:
      v4 = 51;
      goto LABEL_89;
    case 0x34:
      v4 = 52;
      goto LABEL_89;
    case 0x35:
      v4 = 53;
      goto LABEL_89;
    case 0x36:
      v4 = 54;
      goto LABEL_89;
    case 0x37:
      v4 = 55;
      goto LABEL_89;
    case 0x38:
      v4 = 56;
      goto LABEL_89;
    case 0x39:
      v4 = 57;
      goto LABEL_89;
    case 0x3A:
      v4 = 58;
      goto LABEL_89;
    case 0x3B:
      v4 = 59;
      goto LABEL_89;
    case 0x3C:
      v4 = 60;
      goto LABEL_89;
    case 0x3D:
      v4 = 61;
      goto LABEL_89;
    case 0x3E:
      v4 = 62;
      goto LABEL_89;
    case 0x3F:
      v4 = 63;
      goto LABEL_89;
    case 0x40:
      v4 = 64;
      goto LABEL_89;
    case 0x41:
      v4 = 65;
      goto LABEL_89;
    case 0x42:
      v4 = 66;
      goto LABEL_89;
    case 0x43:
      v4 = 67;
      goto LABEL_89;
    case 0x44:
      v4 = 68;
      goto LABEL_89;
    case 0x45:
      v4 = 69;
      goto LABEL_89;
    case 0x46:
      v4 = 70;
      goto LABEL_89;
    case 0x47:
      v4 = 71;
      goto LABEL_89;
    case 0x48:
      v4 = 72;
      goto LABEL_89;
    case 0x49:
      v4 = 73;
      goto LABEL_89;
    case 0x4A:
      v4 = 74;
      goto LABEL_89;
    case 0x4B:
      v4 = 75;
      goto LABEL_89;
    case 0x4C:
      v4 = 76;
      goto LABEL_89;
    case 0x4D:
      v4 = 77;
      goto LABEL_89;
    case 0x4E:
      v4 = 78;
      goto LABEL_89;
    case 0x4F:
      v4 = 79;
      goto LABEL_89;
    case 0x50:
      v4 = 80;
      goto LABEL_89;
    case 0x51:
      v4 = 81;
      goto LABEL_89;
    case 0x52:
      v4 = 82;
      goto LABEL_89;
    case 0x53:
      v4 = 83;
      goto LABEL_89;
    case 0x54:
      v4 = 84;
      goto LABEL_89;
    case 0x55:
      v4 = 85;
      goto LABEL_89;
    default:
      v4 = 0;
LABEL_89:
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(a2);
      return;
  }
}

Swift::Int USBDescriptor.hashValue.getter(Swift::UInt a1, __int16 a2)
{
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000A6BC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000A6C24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  USBDescriptor.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void USBDescriptorControl.hash(into:)(uint64_t a1, unsigned int a2)
{
  switch((a2 >> 18) & 0x3C | (a2 >> 6))
  {
    case 1u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 1;
      goto LABEL_58;
    case 2u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 2;
      goto LABEL_58;
    case 3u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 3;
      goto LABEL_58;
    case 4u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 4;
      goto LABEL_58;
    case 5u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 5;
      goto LABEL_58;
    case 6u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 6;
      goto LABEL_58;
    case 7u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 7;
      goto LABEL_58;
    case 8u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 8;
      goto LABEL_58;
    case 9u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 9;
      goto LABEL_58;
    case 0xAu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 10;
      goto LABEL_58;
    case 0xBu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 11;
      goto LABEL_58;
    case 0xCu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 12;
      goto LABEL_58;
    case 0xDu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 13;
      goto LABEL_58;
    case 0xEu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 14;
      goto LABEL_58;
    case 0xFu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 15;
      goto LABEL_58;
    case 0x10u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 16;
      goto LABEL_58;
    case 0x11u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 17;
      goto LABEL_58;
    case 0x12u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 18;
      goto LABEL_58;
    case 0x13u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 19;
      goto LABEL_58;
    case 0x14u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 20;
      goto LABEL_58;
    case 0x15u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 21;
      goto LABEL_58;
    case 0x16u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 22;
      goto LABEL_58;
    case 0x17u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 23;
      goto LABEL_58;
    case 0x18u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 24;
      goto LABEL_58;
    case 0x19u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 25;
      goto LABEL_58;
    case 0x1Au:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 26;
      goto LABEL_58;
    case 0x1Bu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 27;
      goto LABEL_58;
    case 0x1Cu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 28;
      goto LABEL_58;
    case 0x1Du:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 29;
      goto LABEL_58;
    case 0x1Eu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 30;
      goto LABEL_58;
    case 0x1Fu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 31;
      goto LABEL_58;
    case 0x20u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 32;
      goto LABEL_58;
    case 0x21u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 33;
      goto LABEL_58;
    case 0x22u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 34;
      goto LABEL_58;
    case 0x23u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 35;
      goto LABEL_58;
    case 0x24u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 36;
      goto LABEL_58;
    case 0x25u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 37;
      goto LABEL_58;
    case 0x26u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 38;
      goto LABEL_58;
    case 0x27u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 39;
      goto LABEL_58;
    case 0x28u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 40;
      goto LABEL_58;
    case 0x29u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 41;
      goto LABEL_58;
    case 0x2Au:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 42;
      goto LABEL_58;
    case 0x2Bu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 43;
      goto LABEL_58;
    case 0x2Cu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 44;
      goto LABEL_58;
    case 0x2Du:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 45;
      goto LABEL_58;
    case 0x2Eu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 46;
      goto LABEL_58;
    case 0x2Fu:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 47;
      goto LABEL_58;
    case 0x30u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 48;
      goto LABEL_58;
    case 0x31u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 49;
      goto LABEL_58;
    case 0x32u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 50;
      goto LABEL_58;
    case 0x33u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 51;
      goto LABEL_58;
    case 0x34u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 52;
      goto LABEL_58;
    case 0x35u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 53;
      goto LABEL_58;
    case 0x36u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 54;
      goto LABEL_58;
    case 0x37u:
      v4 = a2 >> 8;
      v3 = HIWORD(a2) & 0xF;
      v5 = 55;
LABEL_58:
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(a2 & 1);
      Hasher._combine(_:)(v4);
      break;
    default:
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(a2 & 1);
      Hasher._combine(_:)(BYTE1(a2));
      v3 = BYTE2(a2);
      break;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int USBDescriptorControl.hashValue.getter(int a1)
{
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v3, a1 & 0xFFFFFF);
  return Hasher._finalize()();
}

Swift::Int sub_1000A71EC()
{
  v1 = *v0 | (*(v0 + 2) << 16);
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A724C(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 2) << 16);
  Hasher.init(_seed:)();
  USBDescriptorControl.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

_BYTE *sub_1000A72B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_100104A68(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000A7DA0(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A7DA0(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_100104A68(v8, v4, a3);
}

_BYTE *sub_1000A73D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1001056AC(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000A7E34(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A7E34(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1001056AC(v8, v4, a3);
}

_BYTE *sub_1000A74F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E7B44(v7, v13, a3);
}

_BYTE *sub_1000A7588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E7DA4(v7, v13, a3);
}

_BYTE *sub_1000A761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008B268(v7, v13, a3);
}

_BYTE *sub_1000A76B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008BAE0(v7, v13, a3);
}

_BYTE *sub_1000A7744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008D824(v7, v13, a3);
}

_BYTE *sub_1000A77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10008F534(v7, v13, a3);
}

_BYTE *sub_1000A786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DD0B4(v7, v13, a3);
}

_BYTE *sub_1000A7900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DD314(v7, v13, a3);
}

void *sub_1000A7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DE238(v7, v13, a3);
}

void *sub_1000A7A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000DEF88(v7, v13, a3);
}

_BYTE *sub_1000A7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E0ED4(v7, v13, a3);
}

_BYTE *sub_1000A7B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E1CE0(v7, v13, a3);
}

_BYTE *sub_1000A7BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100105E88(v7, v13, a3);
}

void *sub_1000A7C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001060E8(v7, v13, a3);
}

void *sub_1000A7D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100103C58(v7, v13, a3);
}

_BYTE *sub_1000A7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_100104A68(v7, v13, a3);
}

_BYTE *sub_1000A7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001056AC(v7, v13, a3);
}

BOOL _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  switch(HIBYTE(a2))
  {
    case 1:
      v4 = HIBYTE(a4) == 1;
      return v4 && a1 == a3;
    case 2:
      v4 = HIBYTE(a4) == 2;
      return v4 && a1 == a3;
    case 3:
      v4 = HIBYTE(a4) == 3;
      return v4 && a1 == a3;
    case 4:
      v4 = HIBYTE(a4) == 4;
      return v4 && a1 == a3;
    case 5:
      v4 = HIBYTE(a4) == 5;
      return v4 && a1 == a3;
    case 6:
      v4 = HIBYTE(a4) == 6;
      return v4 && a1 == a3;
    case 7:
      v4 = HIBYTE(a4) == 7;
      return v4 && a1 == a3;
    case 8:
      v4 = HIBYTE(a4) == 8;
      return v4 && a1 == a3;
    case 9:
      v4 = HIBYTE(a4) == 9;
      return v4 && a1 == a3;
    case 0xA:
      v4 = HIBYTE(a4) == 10;
      return v4 && a1 == a3;
    case 0xB:
      v4 = HIBYTE(a4) == 11;
      return v4 && a1 == a3;
    case 0xC:
      v4 = HIBYTE(a4) == 12;
      return v4 && a1 == a3;
    case 0xD:
      v4 = HIBYTE(a4) == 13;
      return v4 && a1 == a3;
    case 0xE:
      v4 = HIBYTE(a4) == 14;
      return v4 && a1 == a3;
    case 0xF:
      v4 = HIBYTE(a4) == 15;
      return v4 && a1 == a3;
    case 0x10:
      v4 = HIBYTE(a4) == 16;
      return v4 && a1 == a3;
    case 0x11:
      v4 = HIBYTE(a4) == 17;
      return v4 && a1 == a3;
    case 0x12:
      v4 = HIBYTE(a4) == 18;
      return v4 && a1 == a3;
    case 0x13:
      v4 = HIBYTE(a4) == 19;
      return v4 && a1 == a3;
    case 0x14:
      v4 = HIBYTE(a4) == 20;
      return v4 && a1 == a3;
    case 0x15:
      v5 = HIBYTE(a4) == 21;
      return v5 && a1 == a3 && a2 == a4;
    case 0x16:
      v5 = HIBYTE(a4) == 22;
      return v5 && a1 == a3 && a2 == a4;
    case 0x17:
      v4 = HIBYTE(a4) == 23;
      return v4 && a1 == a3;
    case 0x18:
      v4 = HIBYTE(a4) == 24;
      return v4 && a1 == a3;
    case 0x19:
      v4 = HIBYTE(a4) == 25;
      return v4 && a1 == a3;
    case 0x1A:
      v4 = HIBYTE(a4) == 26;
      return v4 && a1 == a3;
    case 0x1B:
      v4 = HIBYTE(a4) == 27;
      return v4 && a1 == a3;
    case 0x1C:
      v4 = HIBYTE(a4) == 28;
      return v4 && a1 == a3;
    case 0x1D:
      v4 = HIBYTE(a4) == 29;
      return v4 && a1 == a3;
    case 0x1E:
      v4 = HIBYTE(a4) == 30;
      return v4 && a1 == a3;
    case 0x1F:
      v4 = HIBYTE(a4) == 31;
      return v4 && a1 == a3;
    case 0x20:
      v4 = HIBYTE(a4) == 32;
      return v4 && a1 == a3;
    case 0x21:
      v4 = HIBYTE(a4) == 33;
      return v4 && a1 == a3;
    case 0x22:
      v4 = HIBYTE(a4) == 34;
      return v4 && a1 == a3;
    case 0x23:
      v4 = HIBYTE(a4) == 35;
      return v4 && a1 == a3;
    case 0x24:
      v4 = HIBYTE(a4) == 36;
      return v4 && a1 == a3;
    case 0x25:
      v4 = HIBYTE(a4) == 37;
      return v4 && a1 == a3;
    case 0x26:
      v4 = HIBYTE(a4) == 38;
      return v4 && a1 == a3;
    case 0x27:
      v4 = HIBYTE(a4) == 39;
      return v4 && a1 == a3;
    case 0x28:
      v4 = HIBYTE(a4) == 40;
      return v4 && a1 == a3;
    case 0x29:
      v4 = HIBYTE(a4) == 41;
      return v4 && a1 == a3;
    case 0x2A:
      v4 = HIBYTE(a4) == 42;
      return v4 && a1 == a3;
    case 0x2B:
      v4 = HIBYTE(a4) == 43;
      return v4 && a1 == a3;
    case 0x2C:
      v4 = HIBYTE(a4) == 44;
      return v4 && a1 == a3;
    case 0x2D:
      v4 = HIBYTE(a4) == 45;
      return v4 && a1 == a3;
    case 0x2E:
      v4 = HIBYTE(a4) == 46;
      return v4 && a1 == a3;
    case 0x2F:
      v4 = HIBYTE(a4) == 47;
      return v4 && a1 == a3;
    case 0x30:
      v4 = HIBYTE(a4) == 48;
      return v4 && a1 == a3;
    case 0x31:
      v4 = HIBYTE(a4) == 49;
      return v4 && a1 == a3;
    case 0x32:
      v4 = HIBYTE(a4) == 50;
      return v4 && a1 == a3;
    case 0x33:
      v4 = HIBYTE(a4) == 51;
      return v4 && a1 == a3;
    case 0x34:
      v4 = HIBYTE(a4) == 52;
      return v4 && a1 == a3;
    case 0x35:
      v4 = HIBYTE(a4) == 53;
      return v4 && a1 == a3;
    case 0x36:
      v4 = HIBYTE(a4) == 54;
      return v4 && a1 == a3;
    case 0x37:
      v4 = HIBYTE(a4) == 55;
      return v4 && a1 == a3;
    case 0x38:
      v4 = HIBYTE(a4) == 56;
      return v4 && a1 == a3;
    case 0x39:
      v4 = HIBYTE(a4) == 57;
      return v4 && a1 == a3;
    case 0x3A:
      v4 = HIBYTE(a4) == 58;
      return v4 && a1 == a3;
    case 0x3B:
      v4 = HIBYTE(a4) == 59;
      return v4 && a1 == a3;
    case 0x3C:
      v4 = HIBYTE(a4) == 60;
      return v4 && a1 == a3;
    case 0x3D:
      v4 = HIBYTE(a4) == 61;
      return v4 && a1 == a3;
    case 0x3E:
      v4 = HIBYTE(a4) == 62;
      return v4 && a1 == a3;
    case 0x3F:
      v4 = HIBYTE(a4) == 63;
      return v4 && a1 == a3;
    case 0x40:
      v4 = HIBYTE(a4) == 64;
      return v4 && a1 == a3;
    case 0x41:
      v4 = HIBYTE(a4) == 65;
      return v4 && a1 == a3;
    case 0x42:
      v4 = HIBYTE(a4) == 66;
      return v4 && a1 == a3;
    case 0x43:
      v4 = HIBYTE(a4) == 67;
      return v4 && a1 == a3;
    case 0x44:
      v4 = HIBYTE(a4) == 68;
      return v4 && a1 == a3;
    case 0x45:
      v4 = HIBYTE(a4) == 69;
      return v4 && a1 == a3;
    case 0x46:
      v4 = HIBYTE(a4) == 70;
      return v4 && a1 == a3;
    case 0x47:
      v4 = HIBYTE(a4) == 71;
      return v4 && a1 == a3;
    case 0x48:
      v4 = HIBYTE(a4) == 72;
      return v4 && a1 == a3;
    case 0x49:
      v4 = HIBYTE(a4) == 73;
      return v4 && a1 == a3;
    case 0x4A:
      v4 = HIBYTE(a4) == 74;
      return v4 && a1 == a3;
    case 0x4B:
      v4 = HIBYTE(a4) == 75;
      return v4 && a1 == a3;
    case 0x4C:
      v4 = HIBYTE(a4) == 76;
      return v4 && a1 == a3;
    case 0x4D:
      v4 = HIBYTE(a4) == 77;
      return v4 && a1 == a3;
    case 0x4E:
      v4 = HIBYTE(a4) == 78;
      return v4 && a1 == a3;
    case 0x4F:
      v4 = HIBYTE(a4) == 79;
      return v4 && a1 == a3;
    case 0x50:
      v4 = HIBYTE(a4) == 80;
      return v4 && a1 == a3;
    case 0x51:
      v4 = HIBYTE(a4) == 81;
      return v4 && a1 == a3;
    case 0x52:
      v4 = HIBYTE(a4) == 82;
      return v4 && a1 == a3;
    case 0x53:
      v4 = HIBYTE(a4) == 83;
      return v4 && a1 == a3;
    case 0x54:
      v4 = HIBYTE(a4) == 84;
      return v4 && a1 == a3;
    case 0x55:
      v4 = HIBYTE(a4) == 85;
      return v4 && a1 == a3;
    default:
      v4 = HIBYTE(a4) == 0;
      return v4 && a1 == a3;
  }
}

BOOL sub_1000A8314(unsigned int a1, unsigned int a2)
{
  v2 = (a2 >> 18) & 0x3C | (a2 >> 6);
  switch((a1 >> 18) & 0x3C | (a1 >> 6))
  {
    case 1u:
      v57 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v58 = BYTE1(a1) == BYTE1(a2) && v57;
      result = v2 == 1 && v58;
      break;
    case 2u:
      v49 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v50 = BYTE1(a1) == BYTE1(a2) && v49;
      result = v2 == 2 && v50;
      break;
    case 3u:
      v53 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v54 = BYTE1(a1) == BYTE1(a2) && v53;
      result = v2 == 3 && v54;
      break;
    case 4u:
      v37 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v38 = BYTE1(a1) == BYTE1(a2) && v37;
      result = v2 == 4 && v38;
      break;
    case 5u:
      v67 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v68 = BYTE1(a1) == BYTE1(a2) && v67;
      result = v2 == 5 && v68;
      break;
    case 6u:
      v73 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v74 = BYTE1(a1) == BYTE1(a2) && v73;
      result = v2 == 6 && v74;
      break;
    case 7u:
      v55 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v56 = BYTE1(a1) == BYTE1(a2) && v55;
      result = v2 == 7 && v56;
      break;
    case 8u:
      v79 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v80 = BYTE1(a1) == BYTE1(a2) && v79;
      result = v2 == 8 && v80;
      break;
    case 9u:
      v43 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v44 = BYTE1(a1) == BYTE1(a2) && v43;
      result = v2 == 9 && v44;
      break;
    case 0xAu:
      v77 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v78 = BYTE1(a1) == BYTE1(a2) && v77;
      result = v2 == 10 && v78;
      break;
    case 0xBu:
      v33 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v34 = BYTE1(a1) == BYTE1(a2) && v33;
      result = v2 == 11 && v34;
      break;
    case 0xCu:
      v41 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v42 = BYTE1(a1) == BYTE1(a2) && v41;
      result = v2 == 12 && v42;
      break;
    case 0xDu:
      v71 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v72 = BYTE1(a1) == BYTE1(a2) && v71;
      result = v2 == 13 && v72;
      break;
    case 0xEu:
      v27 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v28 = BYTE1(a1) == BYTE1(a2) && v27;
      result = v2 == 14 && v28;
      break;
    case 0xFu:
      v51 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v52 = BYTE1(a1) == BYTE1(a2) && v51;
      result = v2 == 15 && v52;
      break;
    case 0x10u:
      v23 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v24 = BYTE1(a1) == BYTE1(a2) && v23;
      result = v2 == 16 && v24;
      break;
    case 0x11u:
      v61 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v62 = BYTE1(a1) == BYTE1(a2) && v61;
      result = v2 == 17 && v62;
      break;
    case 0x12u:
      v75 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v76 = BYTE1(a1) == BYTE1(a2) && v75;
      result = v2 == 18 && v76;
      break;
    case 0x13u:
      v91 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v92 = BYTE1(a1) == BYTE1(a2) && v91;
      result = v2 == 19 && v92;
      break;
    case 0x14u:
      v65 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v66 = BYTE1(a1) == BYTE1(a2) && v65;
      result = v2 == 20 && v66;
      break;
    case 0x15u:
      v69 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v70 = BYTE1(a1) == BYTE1(a2) && v69;
      result = v2 == 21 && v70;
      break;
    case 0x16u:
      v87 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v88 = BYTE1(a1) == BYTE1(a2) && v87;
      result = v2 == 22 && v88;
      break;
    case 0x17u:
      v95 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v96 = BYTE1(a1) == BYTE1(a2) && v95;
      result = v2 == 23 && v96;
      break;
    case 0x18u:
      v47 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v48 = BYTE1(a1) == BYTE1(a2) && v47;
      result = v2 == 24 && v48;
      break;
    case 0x19u:
      v45 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v46 = BYTE1(a1) == BYTE1(a2) && v45;
      result = v2 == 25 && v46;
      break;
    case 0x1Au:
      v103 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v104 = BYTE1(a1) == BYTE1(a2) && v103;
      result = v2 == 26 && v104;
      break;
    case 0x1Bu:
      v19 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v20 = BYTE1(a1) == BYTE1(a2) && v19;
      result = v2 == 27 && v20;
      break;
    case 0x1Cu:
      v97 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v98 = BYTE1(a1) == BYTE1(a2) && v97;
      result = v2 == 28 && v98;
      break;
    case 0x1Du:
      v99 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v100 = BYTE1(a1) == BYTE1(a2) && v99;
      result = v2 == 29 && v100;
      break;
    case 0x1Eu:
      v81 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v82 = BYTE1(a1) == BYTE1(a2) && v81;
      result = v2 == 30 && v82;
      break;
    case 0x1Fu:
      v59 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v60 = BYTE1(a1) == BYTE1(a2) && v59;
      result = v2 == 31 && v60;
      break;
    case 0x20u:
      v83 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v84 = BYTE1(a1) == BYTE1(a2) && v83;
      result = v2 == 32 && v84;
      break;
    case 0x21u:
      v29 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v30 = BYTE1(a1) == BYTE1(a2) && v29;
      result = v2 == 33 && v30;
      break;
    case 0x22u:
      v21 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v22 = BYTE1(a1) == BYTE1(a2) && v21;
      result = v2 == 34 && v22;
      break;
    case 0x23u:
      v15 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v16 = BYTE1(a1) == BYTE1(a2) && v15;
      result = v2 == 35 && v16;
      break;
    case 0x24u:
      v17 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v18 = BYTE1(a1) == BYTE1(a2) && v17;
      result = v2 == 36 && v18;
      break;
    case 0x25u:
      v9 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v10 = BYTE1(a1) == BYTE1(a2) && v9;
      result = v2 == 37 && v10;
      break;
    case 0x26u:
      v101 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v102 = BYTE1(a1) == BYTE1(a2) && v101;
      result = v2 == 38 && v102;
      break;
    case 0x27u:
      v89 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v90 = BYTE1(a1) == BYTE1(a2) && v89;
      result = v2 == 39 && v90;
      break;
    case 0x28u:
      v39 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v40 = BYTE1(a1) == BYTE1(a2) && v39;
      result = v2 == 40 && v40;
      break;
    case 0x29u:
      v63 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v64 = BYTE1(a1) == BYTE1(a2) && v63;
      result = v2 == 41 && v64;
      break;
    case 0x2Au:
      v93 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v94 = BYTE1(a1) == BYTE1(a2) && v93;
      result = v2 == 42 && v94;
      break;
    case 0x2Bu:
      v7 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v8 = BYTE1(a1) == BYTE1(a2) && v7;
      result = v2 == 43 && v8;
      break;
    case 0x2Cu:
      v25 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v26 = BYTE1(a1) == BYTE1(a2) && v25;
      result = v2 == 44 && v26;
      break;
    case 0x2Du:
      v85 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v86 = BYTE1(a1) == BYTE1(a2) && v85;
      result = v2 == 45 && v86;
      break;
    case 0x2Eu:
      v111 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v112 = BYTE1(a1) == BYTE1(a2) && v111;
      result = v2 == 46 && v112;
      break;
    case 0x2Fu:
      v13 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v14 = BYTE1(a1) == BYTE1(a2) && v13;
      result = v2 == 47 && v14;
      break;
    case 0x30u:
      v31 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v32 = BYTE1(a1) == BYTE1(a2) && v31;
      result = v2 == 48 && v32;
      break;
    case 0x31u:
      v35 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v36 = BYTE1(a1) == BYTE1(a2) && v35;
      result = v2 == 49 && v36;
      break;
    case 0x32u:
      v5 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v6 = BYTE1(a1) == BYTE1(a2) && v5;
      result = v2 == 50 && v6;
      break;
    case 0x33u:
      v113 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v114 = BYTE1(a1) == BYTE1(a2) && v113;
      result = v2 == 51 && v114;
      break;
    case 0x34u:
      v109 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v110 = BYTE1(a1) == BYTE1(a2) && v109;
      result = v2 == 52 && v110;
      break;
    case 0x35u:
      v11 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v12 = BYTE1(a1) == BYTE1(a2) && v11;
      result = v2 == 53 && v12;
      break;
    case 0x36u:
      v105 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v106 = BYTE1(a1) == BYTE1(a2) && v105;
      result = v2 == 54 && v106;
      break;
    case 0x37u:
      v107 = ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0xF0000) == 0;
      v108 = BYTE1(a1) == BYTE1(a2) && v107;
      result = v2 == 55 && v108;
      break;
    default:
      v3 = BYTE1(a1) == BYTE1(a2) && ((a2 ^ a1) & 0xFF0000) == 0;
      if ((a2 ^ a1))
      {
        v3 = 0;
      }

      if (v2)
      {
        result = 0;
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

unint64_t sub_1000A8EB4()
{
  result = qword_1001774A0;
  if (!qword_1001774A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774A0);
  }

  return result;
}

unint64_t sub_1000A8F0C()
{
  result = qword_1001774A8;
  if (!qword_1001774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774A8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for USBDescriptor(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for USBDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && *(a1 + 10))
  {
    return (*a1 + 171);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0x55)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for USBDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *(result + 8) = 0;
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USBDescriptorControl(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C9)
  {
    if ((a2 + 33552439) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16775223;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16775223;
      }
    }
  }

  v4 = ((((8 * *(a1 + 2)) & 0x780 | (*a1 >> 1)) >> 5) & 0xFFFFF83F | (((*a1 >> 1) & 0x1F) << 6)) ^ 0x7FF;
  if (v4 >= 0x7C8)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for USBDescriptorControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33552439) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x7C8)
  {
    v3 = 0;
  }

  if (a2 > 0x7C8)
  {
    *result = a2 - 1993;
    *(result + 2) = (a2 - 1993) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1993) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = (-a2 >> 5) & 0x3E | ((-a2 & 0x7FF) << 6) & 0xFE;
      *(result + 2) = ((((-a2 >> 5) & 0x3E | ((-a2 & 0x7FF) << 6)) - (a2 << 18)) & 0xF000FE) >> 16;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unsigned __int16 *sub_1000A9174(unsigned __int16 *result)
{
  v1 = *result | (*(result + 2) << 16);
  *result &= 0xFF3Fu;
  *(result + 2) = BYTE2(v1) & 0xF;
  return result;
}

unsigned __int16 *sub_1000A9198(unsigned __int16 *result, int a2)
{
  v2 = ((a2 << 18) | ((a2 & 3) << 6)) & 0xF000F0 | (*result | (*(result + 2) << 16)) & 0xFFF01;
  *result = ((a2 & 3) << 6) | *result & 0xFF01;
  *(result + 2) = BYTE2(v2);
  return result;
}

uint64_t sub_1000A91DC(uint64_t result)
{
  v1 = *(result + 6);
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      if (v1 == 1)
      {
        return result;
      }

      v3 = 48;
LABEL_11:
      sub_10000CA2C();
      swift_allocError();
      *v4 = v3;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0xE000000000000000;
      return swift_willThrow();
    }

    v2 = *(result + 7);
    if (v2 != 48 && v2 != 32 && *(result + 7))
    {
      v3 = 47;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1000A92FC(uint64_t a1, char a2)
{
  if (a2 != 48 && a2 != 32)
  {
    if (a2)
    {
      sub_10000CA2C();
      swift_allocError();
      *v2 = 47;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0xE000000000000000;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A940C(uint64_t a1, char a2)
{
  if (a2 != 48 && a2 != 32)
  {
    if (a2)
    {
      sub_10000CA2C();
      swift_allocError();
      *v2 = 47;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0xE000000000000000;
      return swift_willThrow();
    }
  }

  return result;
}

_BYTE *sub_1000A95A4(uint64_t a1, __int16 a2)
{
  type metadata accessor for LogID(0);
  result = __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = result[1];
  if (v8 > 0xA)
  {
    if (v8 == 49 || v8 == 48 || v8 == 11)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v8 == 4)
  {
    if (result[5] == 1)
    {
      return sub_1000A91DC(result);
    }
  }

  else
  {
    if (v8 != 5)
    {
LABEL_21:
      if (HIBYTE(a2) != 255)
      {
        if (HIBYTE(a2) == 1)
        {
          return sub_1000A940C(result, a2);
        }

        else if (!HIBYTE(a2))
        {
          return sub_1000A92FC(result, a2);
        }
      }

      return result;
    }

    if (*result == 9)
    {
      if (HIBYTE(a2) != 255)
      {
        if (HIBYTE(a2) > 1u)
        {
          if (HIBYTE(a2) == 2)
          {
            return result;
          }
        }

        else if (!a2)
        {
          return result;
        }
      }

      v9 = result;
      if (qword_100173CB8 != -1)
      {
        v12 = v5;
        swift_once();
        v5 = v12;
      }

      v10 = sub_10000A1BC(v5, qword_1001794F0);
      sub_10000A2A4(v10, v7);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v11, qword_100179508);
      sub_100039F58(1, v7, 0xD000000000000027, 0x800000010012EED0);
      sub_10000C9D0(v7);
      return v9;
    }
  }

  return result;
}

uint64_t sub_1000A9878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100176880, &qword_100122158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A98E8(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100176880, &qword_100122158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A99A4()
{
  result = qword_1001774B0;
  if (!qword_1001774B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774B0);
  }

  return result;
}

unint64_t sub_1000A9A50()
{
  result = qword_1001774B8;
  if (!qword_1001774B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774B8);
  }

  return result;
}

uint64_t sub_1000A9AA4()
{

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1000A9B38()
{
  result = qword_1001774C0;
  if (!qword_1001774C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774C0);
  }

  return result;
}

uint64_t sub_1000A9B8C()
{

  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_10007676C(*(v0 + 88), v1);
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000A9C40()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000A9C98()
{
  result = qword_1001774C8;
  if (!qword_1001774C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774C8);
  }

  return result;
}

uint64_t sub_1000A9CEC()
{

  return _swift_deallocObject(v0, 68, 7);
}

uint64_t sub_1000A9DCC()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000A9E70()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A9F14()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000AA050()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000AA344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022F64(a1, &v17);
  v6 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v7 = v17;
    sub_10000CE78(v18);
    if (*(a2 + 16))
    {
      v8 = sub_10001D11C(v7, v6);
      if (v9)
      {
        sub_10001EAFC(*(a2 + 56) + 40 * v8, &v17);
        v10 = &v17;
LABEL_7:
        sub_10000D0A0(v10, v16);
        *&v17 = v7;
        *(&v17 + 1) = v6;
        result = sub_10000D0A0(v16, v18);
        v12 = v18[0];
        *a3 = v17;
        *(a3 + 16) = v12;
        *(a3 + 32) = v18[1];
        *(a3 + 48) = v19;
        return result;
      }
    }

    sub_100022F64(a1, &v17);

    sub_100001AB4(&qword_1001774D0, &qword_100123FB0);
    if (swift_dynamicCast())
    {
      v10 = v14;
      goto LABEL_7;
    }

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1000AA608(v14);
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v17 = 0xD000000000000029;
    *(&v17 + 1) = 0x800000010012C0D0;
    v13._countAndFlagsBits = v7;
    v13._object = v6;
    String.append(_:)(v13);
  }

  else
  {
    sub_10000CE78(v18);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000AA550()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000AA580@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1000AA590(uint64_t a1)
{
  v2 = sub_1000AA7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AA5CC(uint64_t a1)
{
  v2 = sub_1000AA7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA608(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_1001774D8, &qword_100123FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AA670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000AA6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AA708()
{
  result = qword_1001774E0;
  if (!qword_1001774E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E0);
  }

  return result;
}

unint64_t sub_1000AA760()
{
  result = qword_1001774E8;
  if (!qword_1001774E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E8);
  }

  return result;
}

unint64_t sub_1000AA7B4()
{
  result = qword_1001774F0;
  if (!qword_1001774F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774F0);
  }

  return result;
}

BOOL sub_1000AA808(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t ActiveStreamingInterface.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void ActiveControlInterface.usbDevice.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActiveControlInterface.usbDevice.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000AAA40;
}

void sub_1000AAA40(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ActiveControlInterface.hasLatencyControl.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v2)
    {
      v3 = *(v2 + 16);
      v4 = (v2 + 32);
      while (v3)
      {
        v5 = *v4++;
        --v3;
        if (v5 == 22)
        {

          return 0;
        }
      }
    }
  }

  return *(v0 + 49);
}

uint64_t ActiveControlInterface.interfaceName.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_1000AAB8C(uint64_t a1, char *a2, int a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v67 = a5;
  v7 = v6;
  v68 = a6;
  LODWORD(v72) = a3;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v11 - 1);
  v71 = v11;
  __chkstk_darwin(v11);
  v69 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = *(a1 + 80);
  *(v6 + 96) = *(a1 + 64);
  *(v6 + 112) = v15;
  *(v6 + 128) = *(a1 + 96);
  *(v6 + 144) = *(a1 + 112);
  v16 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v16;
  v17 = *(a1 + 48);
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = v17;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19 = v67;
  v18 = v68;
  *(v6 + 168) = a4;
  *(v6 + 176) = v19;
  *(v6 + 184) = v18;
  v20 = sub_1000ABA40();
  v67 = "usbHostInterface";
  v68 = v20;
  sub_100057294(a1, &v74);
  static DispatchQoS.userInteractive.getter();
  *&v74 = _swiftEmptyArrayStorage;
  sub_1000ABA8C(&qword_100177010, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001AB4(&unk_1001772C0, &unk_100122650);
  sub_1000ABAD4();
  v21 = a2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v70 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 192) = v22;
  v23 = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
  v24 = *&v21[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = (v24 + 32);
    while (v25)
    {
      v27 = *v26++;
      --v25;
      if (v27 == 15)
      {
        v28 = 4;
        goto LABEL_7;
      }
    }
  }

  v28 = *(a1 + 16);
LABEL_7:
  *(v6 + 208) = v28;
  if ((v72 & 1) == 0)
  {
    *(v6 + 200) = 0;
    goto LABEL_14;
  }

  v29 = *&v21[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = v22;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v43 = *(*a1 + 2);
      v44 = v30;
      v45 = v66;
      v46 = sub_1000F8CF8(v43, v30, sub_1000ABB38, 0);
      if (!v45)
      {
        v63 = v46;

        *(v7 + 200) = v63;
LABEL_14:
        v38 = *(v7 + 128);
        if (v38 == 1)
        {
          sub_1000572F0(a1);

          *(v7 + 160) = 0;
        }

        else
        {
          v39 = *(v7 + 88);
          v82[0] = *(v7 + 72);
          v82[1] = v39;
          v82[2] = *(v7 + 104);
          v40 = *(v7 + 120);
          v85 = *(v7 + 136);
          v83 = v40;
          v84 = v38;
          v41 = *(*a1 + 7);
          v42 = *(v7 + 88);
          v74 = *(v7 + 72);
          v75 = v42;
          v76 = *(v7 + 104);
          *&v77 = *(v7 + 120);
          *(&v77 + 1) = v38;
          v78 = *(v7 + 136);
          sub_100022594(&v74, v73);
          sub_1000572F0(a1);
          type metadata accessor for ActiveEndpoint();
          swift_allocObject();
          v73[0] = 1;
          *(v7 + 160) = sub_100116CD8(v82, v21, v41, 0x100000000);
        }

        return v7;
      }

      sub_1000572F0(a1);

      goto LABEL_21;
    }

LABEL_20:
    sub_1000572F0(a1);
    sub_10000CA2C();
    swift_allocError();
    *v47 = 1;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_21:
    v48 = 0;
    goto LABEL_22;
  }

  v32 = v31;
  v33 = v29;
  v34 = [v32 interfaceDescriptor];
  v35 = *(*a1 + 2);
  if (v34[2] == v35)
  {
    *(v7 + 200) = v32;
    v36 = v33;
    v37 = *&v21[v23];
    if (!v37)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v71 = v33;
  v53 = v21;
  v54 = *(v7 + 192);
  v55 = v54;
  v72 = v53;
  v56 = v66;
  v57 = sub_1000F8CF8(v35, v54, sub_1000ABB38, 0);
  if (!v56)
  {
    v58 = v57;

    *(v7 + 200) = v58;
    v33 = v71;
    v21 = v72;
    v37 = *&v72[v23];
    if (!v37)
    {
LABEL_34:

      goto LABEL_14;
    }

LABEL_29:
    v59 = *(v37 + 16);
    v60 = (v37 + 32);
    while (v59)
    {
      v61 = *v60++;
      --v59;
      if (v61 == 17)
      {
        *&v74 = 0;
        if ([v32 setIdleTimeout:&v74 error:2000.0])
        {
          v62 = v74;
          goto LABEL_34;
        }

        v64 = v74;
        sub_1000572F0(a1);
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v48 = 1;
        v21 = v33;
        goto LABEL_22;
      }
    }

    goto LABEL_34;
  }

  sub_1000572F0(a1);

  v48 = 0;
  v21 = v72;
LABEL_22:

  swift_unknownObjectRelease();
  v49 = *(v7 + 112);
  v78 = *(v7 + 96);
  v79 = v49;
  v80 = *(v7 + 128);
  v81 = *(v7 + 144);
  v50 = *(v7 + 48);
  v74 = *(v7 + 32);
  v75 = v50;
  v51 = *(v7 + 80);
  v76 = *(v7 + 64);
  v77 = v51;
  sub_1000572F0(&v74);
  swift_unknownObjectWeakDestroy();

  if (v48)
  {
  }

  type metadata accessor for ActiveControlInterface();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_1000AB280(uint64_t a1, int a2)
{
  v3 = type metadata accessor for LogID(0);
  result = __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -536870896)
  {
    if (qword_100173CB8 != -1)
    {
      v9 = result;
      swift_once();
      result = v9;
    }

    v7 = sub_10000A1BC(result, qword_1001794F0);
    sub_10000A2A4(v7, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v8, qword_100179508);
    sub_100039AA0(1, v6, 0xD000000000000018, 0x800000010012F080);
    return sub_10000C9D0(v6);
  }

  return result;
}

uint64_t ActiveControlInterface.entity(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 168);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_10001EAFC(v8, &v11);
      v9 = v12;
      v10 = v13;
      sub_10001EAB8(&v11, v12);
      if ((*(v10 + 48))(v9, v10) == v6)
      {
        return sub_10001EFE4(&v11, a2);
      }

      ++v7;
      result = sub_10000CE78(&v11);
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveControlInterface.processInterrupt(attribute:wValue:)(AUASDCore::AUAInterruptAttribute_optional attribute, Swift::UInt16 wValue)
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v9 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    active = ActiveFunction.deviceName.getter(ObjectType, v9);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0xE700000000000000;
    active = 0x6E776F6E6B6E55;
  }

  if (attribute.value == AUASDCore_AUAInterruptAttribute_MEM)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v31 = active;
    v32 = v13;
    v14._object = 0x800000010012EFA0;
    v14._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v14);
    v15 = v31;
    v16 = v32;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A1BC(v6, qword_1001794F0);
    sub_10000A2A4(v17, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v18, qword_100179508);
    sub_100039AA0(2, v8, v15, v16);

    sub_10000C9D0(v8);
    if (*(v3 + 16))
    {
      v19 = *(v3 + 24);
      v20 = swift_getObjectType();
      v21 = *(v19 + 112);
      swift_unknownObjectRetain();
      v22 = v21(v20, v19);
      swift_unknownObjectRelease();
      if (v22)
      {
        B2PInterface.processInterrupt(wValue:)(wValue);

        return;
      }
    }
  }

  else
  {
    if (attribute.value == AUASDCore_AUAInterruptAttribute_unknownDefault)
    {

      return;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v23._countAndFlagsBits = active;
    v23._object = v13;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0xD000000000000030;
    v24._object = 0x800000010012EF60;
    String.append(_:)(v24);
    value = attribute.value;
    _print_unlocked<A, B>(_:_:)();
    v25 = v31;
    v26 = v32;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v27 = sub_10000A1BC(v6, qword_1001794F0);
    sub_10000A2A4(v27, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v28, qword_100179508);
    sub_100039F58(2, v8, v25, v26);

    sub_10000C9D0(v8);
  }

  sub_10000CA2C();
  swift_allocError();
  *v29 = 2;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0xE000000000000000;
  swift_willThrow();
}

uint64_t ActiveControlInterface.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 112);
  v5[4] = *(v0 + 96);
  v5[5] = v1;
  v5[6] = *(v0 + 128);
  v6 = *(v0 + 144);
  v2 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v2;
  v3 = *(v0 + 80);
  v5[2] = *(v0 + 64);
  v5[3] = v3;
  sub_1000572F0(v5);
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ActiveControlInterface.__deallocating_deinit()
{
  ActiveControlInterface.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1000AB9B8()
{
  result = qword_100177500;
  if (!qword_100177500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177500);
  }

  return result;
}

unint64_t sub_1000ABA40()
{
  result = qword_1001772B0;
  if (!qword_1001772B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001772B0);
  }

  return result;
}

uint64_t sub_1000ABA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000ABAD4()
{
  result = qword_100177018;
  if (!qword_100177018)
  {
    sub_10001E8F0(&unk_1001772C0, &unk_100122650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177018);
  }

  return result;
}

uint64_t sub_1000ABB3C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1000ABC00(uint64_t (*a1)(void), uint64_t a2)
{
  v6 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = 13762560;
  if (Strong)
  {
    v2 = Strong;
    v9 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v9) = (*(v9 + 40))(ObjectType, v9);
    swift_unknownObjectRelease();
    if (v9 == 32)
    {
      v8 = 13764352;
    }

    else
    {
      v8 = 13762560;
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_10000D040(v41, &qword_100175790, &unk_100121070);
    sub_10000CA2C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v2 = v11;
  v12 = *(v6 + 24);
  v13 = swift_getObjectType();
  v40[3] = a1(0);
  v40[4] = a2;
  v40[0] = v6;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v8, v40, 0, v13, v12, v41);
  swift_unknownObjectRelease();
  sub_10000CE78(v40);
  if (v3)
  {
    return v2;
  }

  sub_10000D0A0(v41, v43);
  v14 = v44;
  v15 = sub_10001EAB8(v43, v44);
  v16 = v36;
  v17 = *(v14 - 8);
  __chkstk_darwin(v15);
  v45 = v18;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v36 - v19;
  (*(v17 + 16))(v36 - v19);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v21 = swift_getAssociatedTypeWitness(), v39 = v36, v37 = v36, __chkstk_darwin(v21), v38 = v17, swift_getAssociatedConformanceWitness(), v22 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v36[1] = v36, __chkstk_darwin(v22), v17 = v38, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v23 = dispatch thunk of static Comparable.>= infix(_:_:)(), v16 = v39, result = (*(v17 + 8))(v36 - v19, v14), (v23))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
    {
      LODWORD(v41[0]) = -1;
      v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v25)
      {
        if (v26 <= 32)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v39 = v16;
          v37 = v36;
          __chkstk_darwin(AssociatedTypeWitness);
          v38 = v17;
          swift_getAssociatedConformanceWitness();
          v28 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          __chkstk_darwin(v28);
          v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          v17 = v38;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v31 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v17 + 8))(v30, v14);
          if ((v31 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else if (v26 <= 32)
      {
LABEL_19:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_20;
      }

      __chkstk_darwin(v26);
      v34 = v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10001E938();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v17 + 8))(v34, v14);
      if (v35)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_20:
    v2 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v17 + 8))(v20, v14);
    sub_10000CE78(v43);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static AsyncFeedbackType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::String __swiftcall AsyncFeedbackType.string()()
{
  v2 = v0;
  v3 = 0xD000000000000011;
  if (!v1)
  {
    v5 = "Explicit Feedback";
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v5 = "Implicit Feedback";
LABEL_7:
    v4 = ((v5 - 32) | 0x8000000000000000);
    goto LABEL_9;
  }

  if (v1 == 2)
  {
    v4 = 0x800000010012F100;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = v1;
    _StringGuts.grow(_:)(24);

    v7._countAndFlagsBits = v2;
    v7._object = v6;
    String.append(_:)(v7);
    v3 = 0xD000000000000016;
    v4 = 0x800000010012F0A0;
  }

LABEL_9:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void AsyncFeedbackType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      Hasher._combine(_:)(v3);
      return;
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int AsyncFeedbackType.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (a2 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000AC4A8()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000AC538(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      Hasher._combine(_:)(v3);
      return;
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int sub_1000AC5D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000AC65C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return v4 == 0;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

char *sub_1000AC700()
{
  if (qword_100173CD8 != -1)
  {
    swift_once();
  }

  sub_10007DC6C(v0);
  if (qword_100173CE0 != -1)
  {
    swift_once();
  }

  result = sub_10007DC6C(v1);
  qword_100179540 = &off_100159ED0;
  return result;
}

uint64_t AUAStream.functionProtocol.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___AUAAudioDevice_function);
    v3 = v2 == 0;
    if (v2)
    {
      v4 = *(Strong + OBJC_IVAR___AUAAudioDevice_function + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v2) = (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
    v3 = 1;
  }

  return v2 | (v3 << 8);
}

uint64_t AUAStream.started.getter()
{
  v1 = OBJC_IVAR___AUAStream_started;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAStream.started.setter(char a1)
{
  v3 = OBJC_IVAR___AUAStream_started;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000AC9C4()
{
  v1 = *(*(v0 + OBJC_IVAR___AUAStream_interface) + 72);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 3;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

LABEL_6:
    v4 = *(v3 + 104);

    v5 = *(v4 + 128);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t AUAStream.controlScope.getter()
{
  v1 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAStream.controlScope.setter(int a1)
{
  v3 = OBJC_IVAR___AUAStream_controlScope;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1000ACB88()
{
  v1 = [v0 physicalFormat];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for AUAStreamFormat();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *(v3 + OBJC_IVAR___AUAStreamFormat_altSetting);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 104);
  v6 = *(v5 + 56);
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = *(v5 + 48);
  v8 = *(v5 + 32);
  v23[0] = *(v5 + 16);
  v23[1] = v8;
  v9 = *(v5 + 64);
  v23[2] = *(v5 + 48);
  v23[3] = v9;
  v23[4] = *(v5 + 80);
  v10 = *&v23[0];
  sub_100022594(v23, &v22);
  v11 = IOUSBGetEndpointSynchronizationType(v10);
  if (IOUSBGetEndpointDirection(v10) != 1 || v11)
  {
    sub_1000225F0(v23);
    if (v11 == 1)
    {
      goto LABEL_24;
    }
  }

  else if (IOUSBGetEndpointUsageType(v10))
  {
    sub_1000225F0(v23);
  }

  else
  {
    wMaxPacketSize = v10->wMaxPacketSize;
    sub_1000225F0(v23);
    if (wMaxPacketSize >= 9 || wMaxPacketSize <= 2)
    {
      goto LABEL_24;
    }
  }

  if ((v7 & 1) == 0)
  {
LABEL_21:

    return;
  }

  v12 = [v0 physicalFormat];
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  [v12 sampleRate];
  v15 = v14;

  if (v15 == 0.0)
  {
LABEL_24:

    return;
  }

  if (!is_mul_ok(v6, 0x3E8uLL))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = [v0 physicalFormat];
  if (!v16)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 sampleRate];
  v19 = v18;
  v20 = v18;

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v19 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v19)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (1000 * v6 / v19 == -1)
  {
    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_1000ACDAC()
{
  v1 = *(v0 + OBJC_IVAR___AUAStream_interface);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  v4 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor];
  if (qword_100173CE8 != -1)
  {
    v15 = Strong;
    swift_once();
    Strong = v15;
  }

  v5 = *(qword_100179540 + 16);
  if (!v5)
  {

LABEL_18:
    v13 = 0;
    v12 = 0;
    return v12 | v13;
  }

  v6 = 0;
  v7 = 0;
  v8 = *&Strong[v3];
  v9 = (qword_100179540 + 80);
  do
  {
    if (*(v9 - 6) == *(v8 + 8) && *(v9 - 5) == *(v8 + 10))
    {
      v10 = *(v9 - 2);
      if ((v10 & 0x8000000000000000) == 0 && v10 == *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum])
      {
        v11 = *(v4 + 12);
        if (*(v9 - 4) <= v11 && *(v9 - 3) >= v11)
        {
          v6 |= *(v9 - 1) == *(*(v1 + 32) + 2);
          if (*(v9 - 1) == *(*(v1 + 32) + 2))
          {
            v7 = *v9;
          }

          else
          {
            v7 = v7;
          }
        }
      }
    }

    v9 += 14;
    --v5;
  }

  while (v5);

  v12 = v7 << 32;
  v13 = v6 & 1;
  return v12 | v13;
}

void sub_1000ACF28(unint64_t a1)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v23 = 107;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v6 = Strong;
  [Strong samplingRate];
  v8 = v7;

  v9 = [v1 physicalFormat];
  v105 = a1 >> 62;
  v106 = a1;
  v104 = v1;
  if (v9)
  {
    v10 = v9;
    v102 = v2;
    if (a1 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v106 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v13 = *(v106 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 isEqual:v10])
        {
          [v14 minimumSampleRate];
          v17 = v16;
          [v14 maximumSampleRate];
          v19 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v17 maximum:v18];
          [v19 minimum];
          if (v20 + -0.001 > v8)
          {
          }

          else
          {
            [v19 maximum];
            v22 = v21;

            if (v8 <= v22 + 0.001)
            {

              v36 = v1;
              v10 = v106;
              goto LABEL_84;
            }
          }
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      ;
    }

LABEL_66:

    v3 = v102;
    v10 = v106;
    goto LABEL_67;
  }

  v24 = *&v1[OBJC_IVAR___AUAStream_interface];
  swift_beginAccess();
  v10 = a1;
  if (!*(v24 + 16) || (v25 = *(v24 + 24), ObjectType = swift_getObjectType(), v27 = v3, v28 = *(v25 + 16), swift_unknownObjectRetain(), v29 = v28(ObjectType, v25), v3 = v27, v30 = v29, swift_unknownObjectRelease(), !v30))
  {
LABEL_67:
    v60 = 0;
    v36 = (v10 & 0xC000000000000001);
    v61 = v105;
    while (1)
    {
      if (v105)
      {
        if (v60 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_82:
          v14 = 0;
          goto LABEL_83;
        }
      }

      else if (v60 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      if (v36)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v62 = *(v10 + 8 * v60 + 32);
      }

      v14 = v62;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      [v62 minimumSampleRate];
      v64 = v63;
      [v14 maximumSampleRate];
      v66 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v64 maximum:v65];
      [v66 minimum];
      if (v67 + -0.001 > v8)
      {
      }

      else
      {
        [v66 maximum];
        v69 = v68;

        if (v8 <= v69 + 0.001)
        {
          goto LABEL_83;
        }
      }

      ++v60;
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (*(v24 + 16))
  {
    v31 = *(v24 + 24);
    v32 = swift_getObjectType();
    v33 = *(v31 + 40);
    swift_unknownObjectRetain();
    v34 = v33(v32, v31);
    swift_unknownObjectRelease();
    if (v34 <= 0x20)
    {
      v35 = 16;
    }

    else
    {
      v35 = 24;
    }
  }

  else
  {
    v35 = 16;
  }

  v37 = *&v30[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  v101 = v30;
  if (v37 && sub_1000AA808(0x19u, v37))
  {
    v35 = 24;
    if ((v106 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }
  }

  else if ((v106 & 0x8000000000000000) != 0)
  {
    goto LABEL_124;
  }

  if ((v106 & 0x4000000000000000) == 0)
  {
    v38 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
LABEL_125:

      goto LABEL_67;
    }

    goto LABEL_32;
  }

LABEL_124:
  v38 = _CocoaArrayWrapper.endIndex.getter();
  if (!v38)
  {
    goto LABEL_125;
  }

LABEL_32:
  v39 = 0;
  v40 = v106 & 0xC000000000000001;
  v103 = v35;
  while (1)
  {
    if (v40)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v39 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v41 = *(v106 + 8 * v39 + 32);
    }

    v14 = v41;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_61;
    }

    if (v35 != [v41 bitsPerChannel] || objc_msgSend(v14, "channelsPerFrame") != 2)
    {
      goto LABEL_34;
    }

    [v14 minimumSampleRate];
    v44 = v43;
    [v14 maximumSampleRate];
    v46 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v44 maximum:v45];
    [v46 minimum];
    if (v47 + -0.001 <= v8)
    {
      break;
    }

    v35 = v103;
LABEL_34:

    ++v39;
    if (v42 == v38)
    {
      v50 = 0;
      while (1)
      {
        if (v40)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v50 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v51 = *(v106 + 8 * v50 + 32);
        }

        v14 = v51;
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_63;
        }

        if (v35 == [v51 bitsPerChannel] && objc_msgSend(v14, "channelsPerFrame") == 1)
        {
          [v14 minimumSampleRate];
          v54 = v53;
          [v14 maximumSampleRate];
          v56 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v54 maximum:v55];
          [v56 minimum];
          if (v57 + -0.001 > v8)
          {

            v35 = v103;
          }

          else
          {
            [v56 maximum];
            v59 = v58;

            v35 = v103;
            if (v8 <= v59 + 0.001)
            {
              goto LABEL_58;
            }
          }
        }

        ++v50;
        if (v52 == v38)
        {
          goto LABEL_125;
        }
      }
    }
  }

  [v46 maximum];
  v49 = v48;

  v35 = v103;
  if (v8 > v49 + 0.001)
  {
    goto LABEL_34;
  }

LABEL_58:

LABEL_83:
  v36 = v104;
LABEL_84:
  v70 = *&v36[OBJC_IVAR___AUAStream_interface];
  swift_beginAccess();
  if (!*(v70 + 16))
  {
    active = 0;
    v75 = 0;
    if (v105)
    {
      goto LABEL_93;
    }

LABEL_86:
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

LABEL_94:
    if (v14 && ([v14 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for AUAStreamFormat(), (swift_dynamicCast() & 1) != 0))
    {
      v80 = v107;
      [v80 sampleRate];
      if (v81 != v8)
      {
        [v80 setSampleRate:v8];
      }

      _StringGuts.grow(_:)(38);
      if (v75)
      {
        v82 = active;
      }

      else
      {
        v82 = 0x206E776F6E6B6E55;
      }

      if (!v75)
      {
        v75 = 0xEE00656369766564;
      }

      v83 = v75;
      String.append(_:)(*&v82);

      v84._countAndFlagsBits = 0xD000000000000022;
      v84._object = 0x80000001001300F0;
      String.append(_:)(v84);
      v85 = v80;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90._countAndFlagsBits = v87;
      v90._object = v89;
      String.append(_:)(v90);

      v91 = OBJC_IVAR___AUAStream_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v92, qword_100179508);
      sub_100039AA0(3, &v36[v91], 0, 0xE000000000000000);

      [v36 setPhysicalFormat:v85];

      if (v105)
      {
LABEL_106:
        sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);

        _bridgeCocoaArray<A>(_:)();

LABEL_116:
        sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v36 setPhysicalFormats:isa];

        v99 = swift_unknownObjectWeakLoadStrong();
        if (v99)
        {
          v100 = v99;
          AUAAudioDevice.setStreamVisibility(_:_:)(v36, v14 != 0);
        }

        return;
      }
    }

    else
    {
      _StringGuts.grow(_:)(58);
      if (v75)
      {
        v93 = active;
      }

      else
      {
        v93 = 0x206E776F6E6B6E55;
      }

      if (!v75)
      {
        v75 = 0xEE00656369766564;
      }

      v94 = v75;
      String.append(_:)(*&v93);

      v95._countAndFlagsBits = 0xD000000000000038;
      v95._object = 0x80000001001300B0;
      String.append(_:)(v95);
      v96 = OBJC_IVAR___AUAStream_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v97, qword_100179508);
      sub_100039F58(3, &v36[v96], 0, 0xE000000000000000);

      [v36 setPhysicalFormat:0];
      if (v105)
      {
        goto LABEL_106;
      }
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
    goto LABEL_116;
  }

  v71 = *(v70 + 24);
  v72 = swift_getObjectType();
  swift_unknownObjectRetain();
  active = ActiveFunction.deviceName.getter(v72, v71);
  v75 = v74;
  swift_unknownObjectRelease();
  if (!v105)
  {
    goto LABEL_86;
  }

LABEL_93:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_94;
  }

LABEL_87:
  if (v14)
  {
    goto LABEL_94;
  }

  sub_10000CA2C();
  v61 = swift_allocError();
  *v76 = 108;
  *(v76 + 8) = 0;
  *(v76 + 16) = 0xE000000000000000;
  swift_willThrow();
  swift_errorRetain();
  v60 = _convertErrorToNSError(_:)();
  v3 = [v60 code];

  if (v3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_121;
  }

  if (v3 <= 0x7FFFFFFF)
  {
    _StringGuts.grow(_:)(33);

    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_10011DE90;
    *(v77 + 56) = &type metadata for Int32;
    *(v77 + 64) = &protocol witness table for Int32;
    *(v77 + 32) = v3;
    v78._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v78);

    v60 = 0xD00000000000001FLL;
    v3 = 0x8000000100130090;
    v61 = OBJC_IVAR___AUAStream_logID;
    if (qword_100173CC0 == -1)
    {
      goto LABEL_91;
    }

    goto LABEL_123;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  swift_once();
LABEL_91:
  v79 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v79, qword_100179508);
  sub_100039F58(3, &v36[v61], v60, v3);

  swift_willThrow();
}

uint64_t sub_1000ADCB0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v0[OBJC_IVAR___AUAStream_transferManager];
  if (result)
  {
    v7 = *(*result + 104);
    v8 = *result + 104;
    v9 = OBJC_IVAR___AUAStream_logID;
    v92 = OBJC_IVAR___AUAStream_audioDevice;

    v96 = v7;
    v95 = v8;
    (v7)(&v111);
    v10 = v114;
    if (v114)
    {
      v100 = &v0[v9];
      v11 = v113;
      v12 = v112;
      v94 = "AUAStream_enqueueNextTransfer";
      v99 = ", numUSBTransfers ";
      v90 = (v3 + 16);
      v89 = (v3 + 8);
      v85 = &v107;
      v84 = 0x8000000100130070;
      v83 = "changePhysicalFormat(_:)";
      v93 = 0xD000000000000012;
      *(&v13 + 1) = 2;
      v86 = xmmword_10011DE90;
      *&v13 = 136446210;
      v88 = v13;
      v91 = v0;
      v87 = v5;
      while (1)
      {
        v97 = v115;
        v15 = v111;
        aBlock = 0;
        v106 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        v16._countAndFlagsBits = 0x726566736E617274;
        v16._object = 0xEB00000000204449;
        String.append(_:)(v16);
        LODWORD(v104) = v15;
        v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v17);

        v18._object = (v94 | 0x8000000000000000);
        v18._countAndFlagsBits = v93;
        String.append(_:)(v18);
        LODWORD(v104) = v11;
        v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v19);

        v20._object = (v99 | 0x8000000000000000);
        v20._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v20);
        v101 = v12;
        v104 = v12;
        v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v21);

        v23 = aBlock;
        v22 = v106;
        if (qword_100173CB0 != -1)
        {
          swift_once();
        }

        if (byte_1001794E8 == 1)
        {
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v24, qword_100179508);
          aBlock = StaticString.description.getter();
          v106 = v25;
          v26._countAndFlagsBits = 32;
          v26._object = 0xE100000000000000;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v23;
          v27._object = v22;
          String.append(_:)(v27);

          sub_100039AA0(4, v100, aBlock, v106);
        }

        else
        {
          v102 = v11;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v28, qword_100179508);
          v29 = type metadata accessor for LogID(0);
          (*v90)(v5, &v100[*(v29 + 20)], v2);

          v30 = OSSignposter.logHandle.getter();
          v31 = static os_signpost_type_t.event.getter();

          if (OS_os_log.signpostsEnabled.getter())
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            aBlock = v33;
            *v32 = v88;
            v34 = sub_100035760(v23, v22, &aBlock);

            *(v32 + 4) = v34;
            v35 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v35, "AUAStream_enqueueNextTransfer", "%{public}s", v32, 0xCu);
            sub_10000CE78(v33);
            v1 = v91;
          }

          else
          {
          }

          (*v89)(v5, v2);
          v11 = v102;
        }

        v36 = [v1 physicalFormat];
        if (!v36)
        {
          goto LABEL_27;
        }

        v37 = v36;
        type metadata accessor for AUAStreamFormat();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {
          break;
        }

        v39 = *(v38 + OBJC_IVAR___AUAStreamFormat_altSetting);
        if (v39 && (v40 = *(*(v39 + 104) + 120)) != 0)
        {
          v102 = v11;
          v41 = swift_allocObject();
          *(v41 + 16) = v1;
          v42 = *(v40 + 16);

          sub_10000D0B8(&v111, &aBlock, &qword_100177B48, &qword_100124528);
          v43 = v1;
          if (![v42 increment])
          {

            sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
            sub_10000D040(&v111, &qword_100177B48, &qword_100124528);

            goto LABEL_5;
          }

          v44 = *(v40 + 24);
          v45 = swift_allocObject();
          v45[2] = sub_1000BDAE8;
          v45[3] = v41;
          v45[4] = v40;
          v109 = sub_1000BDD3C;
          v110 = v45;
          aBlock = _NSConcreteStackBlock;
          v106 = 1107296256;
          v107 = sub_1000B9C68;
          v108 = &unk_100164AC0;
          v46 = _Block_copy(&aBlock);

          aBlock = 0;
          LOBYTE(v44) = [v44 enqueueIORequestWithData:v10 transactionList:v97 transactionListCount:v102 firstFrameNumber:v101 options:0 error:&aBlock completionHandler:v46];
          _Block_release(v46);
          if (v44)
          {
            v47 = aBlock;

            sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
            sub_10000D040(&v111, &qword_100177B48, &qword_100124528);

LABEL_46:
            v5 = v87;
            goto LABEL_5;
          }

          v81 = aBlock;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          [*(v40 + 16) decrement];
          swift_willThrow();

          sub_10000D040(&v111, &qword_100177B48, &qword_100124528);

          v5 = v87;
        }

        else
        {
          sub_10000CA2C();
          swift_allocError();
          *v48 = 1;
          *(v48 + 8) = 0;
          *(v48 + 16) = 0xE000000000000000;
          swift_willThrow();
        }

LABEL_28:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v51 = *(Strong + OBJC_IVAR___AUAAudioDevice_function), v52 = *(Strong + OBJC_IVAR___AUAAudioDevice_function + 8), v53 = Strong, swift_unknownObjectRetain(), v53, v51) && (ObjectType = swift_getObjectType(), v55 = (*(v52 + 16))(ObjectType, v52), swift_unknownObjectRelease(), v55))
        {
          v56 = *&v55[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
          v57 = v56;

          if (v56)
          {
            v58 = [v57 frameNumberWithTime:0];
            v59 = _convertErrorToNSError(_:)();
            v60 = [v59 code];

            if (v60 < 0xFFFFFFFF80000000)
            {
              __break(1u);
LABEL_50:
              __break(1u);
            }

            if (v60 > 0x7FFFFFFF)
            {
              goto LABEL_50;
            }

            v102 = v57;
            aBlock = 0;
            v106 = 0xE000000000000000;
            _StringGuts.grow(_:)(47);

            aBlock = 0x20726F727265;
            v106 = 0xE600000000000000;
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v61 = swift_allocObject();
            *(v61 + 16) = v86;
            *(v61 + 56) = &type metadata for Int32;
            *(v61 + 64) = &protocol witness table for Int32;
            *(v61 + 32) = v60;
            v62._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v62);

            v63._countAndFlagsBits = 0x617246727563202CLL;
            v63._object = 0xEB0000000020656DLL;
            String.append(_:)(v63);
            v104 = v58;
            v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v64);

            v65._object = (v99 | 0x8000000000000000);
            v65._countAndFlagsBits = 0xD000000000000018;
            String.append(_:)(v65);
            v104 = v101;
            v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v66);

            sub_100038CF0("AUAStream_enqueueNextTransfer_error", 35, 2, aBlock, v106, v100);

            if (v60 != -536870165)
            {
              v67 = swift_unknownObjectWeakLoadStrong();
              if (v67)
              {
                v68 = v67;
                aBlock = 0xD000000000000019;
                v106 = v84;
                v69._countAndFlagsBits = 8236;
                v69._object = 0xE200000000000000;
                String.append(_:)(v69);
                v70._countAndFlagsBits = 0xD000000000000016;
                v70._object = (v83 | 0x8000000000000000);
                String.append(_:)(v70);
                v71._countAndFlagsBits = 2108704;
                v71._object = 0xE300000000000000;
                String.append(_:)(v71);
                v104 = 528;
                v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v72);

                sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v106, &v68[OBJC_IVAR___AUAAudioDevice_logID]);

                v73 = *&v68[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
                v74 = swift_allocObject();
                v74[2] = AUAError.init(_:message:);
                v74[3] = 0;
                aBlock = sub_100038564;
                v106 = v74;
                v75 = *(v73 + 16);
                v76 = __chkstk_darwin(v74);
                __chkstk_darwin(v76);

                os_unfair_lock_lock(v75 + 4);
                sub_10003854C(&v104);
                os_unfair_lock_unlock(v75 + 4);
                LOBYTE(v73) = v104;

                if (v73)
                {
                  v77 = swift_allocObject();
                  *(v77 + 16) = v68;
                  v109 = sub_10001EFC8;
                  v110 = v77;
                  aBlock = _NSConcreteStackBlock;
                  v106 = 1107296256;
                  v107 = sub_1000172D4;
                  v108 = &unk_100164A48;
                  v78 = _Block_copy(&aBlock);
                  v79 = v68;

                  v80 = type metadata accessor for AUAAudioDevice(0);
                  v103.receiver = v79;
                  v103.super_class = v80;
                  objc_msgSendSuper2(&v103, "requestConfigurationChange:", v78);
                  _Block_release(v78);

                  sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
                }

                else
                {

                  sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
                }
              }

              else
              {

                v14 = sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
              }

              v1 = v91;
              goto LABEL_46;
            }
          }

          else
          {
          }

          v14 = sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
          v1 = v91;
        }

        else
        {

          v14 = sub_10000D040(&v111, &qword_100177B48, &qword_100124528);
        }

LABEL_5:
        v96(&v111, v14);
        v12 = v112;
        v11 = v113;
        v10 = v114;
        if (!v114)
        {
        }
      }

LABEL_27:
      sub_10000CA2C();
      swift_allocError();
      *v49 = 1;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_28;
    }
  }

  return result;
}