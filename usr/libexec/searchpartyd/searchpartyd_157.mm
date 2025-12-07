void *sub_101128BDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v16 = *(sub_1000BC4D4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000BC4D4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

Swift::Int sub_101128E3C(uint64_t *a1)
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
      sub_101129004(v7, v8, a1, v4);
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
    return sub_101128F34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_101128F34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101129004(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1011295E0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100A5B430((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1011295E0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100B31E68(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100B31DDC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1011295E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id sub_101129808()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_101129930(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100DE9538(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1011299C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100101BAC();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100017D5C(v6, *v4);
      sub_100DE9688(v7, v6, v5);
      sub_100016590(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_101129AF4(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&qword_1016C8E18, type metadata accessor for SharedBeaconRecord, &unk_10140BAFC);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v11, v6, type metadata accessor for SharedBeaconRecord);
      sub_100DE9B64(v8, v6);
      sub_10112BDD4(v8, type metadata accessor for SharedBeaconRecord);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_101129C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPDisabledReason(0);
  sub_100009894(&unk_1016A9A50, type metadata accessor for SPDisabledReason, &unk_1013867EC);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DE9D98(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_101129D3C(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&qword_1016C8E10, type metadata accessor for BeaconNamingRecord, &unk_1013E8E6C);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v11, v6, type metadata accessor for BeaconNamingRecord);
      sub_100DE9EA8(v8, v6);
      sub_10112BDD4(v8, type metadata accessor for BeaconNamingRecord);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_101129EC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1004695BC();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100017D5C(v6, *v4);
      sub_100DEAD2C(v7, v6, v5);
      sub_100016590(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_101129FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100589064();
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 16);

      sub_100DEB438(&v8, v7, v6, v5);

      v4 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_10112A090(uint64_t a1)
{
  v2 = type metadata accessor for RawSearchResult(0);
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v44 = &v39 - v13;
  v14 = *(a1 + 16);
  sub_100009894(&qword_1016C8D60, type metadata accessor for RawSearchResult, &unk_1013E3E28);
  v15 = Set.init(minimumCapacity:)();
  v41 = v14;
  if (!v14)
  {
    return v15;
  }

  v16 = 0;
  v40 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v17 = *(v3 + 72);
  v18 = v44;
  v43 = v12;
  while (1)
  {
    v42 = v16;
    sub_10112BD6C(v40 + v17 * v16, v18, type metadata accessor for RawSearchResult);
    Hasher.init(_seed:)();
    sub_100D15128(v46);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v15 + 32);
    v21 = v19 & ~v20;
    if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v23 = *v18;
      do
      {
        sub_10112BD6C(*(v15 + 48) + v21 * v17, v6, type metadata accessor for RawSearchResult);
        v24 = v44;
        if (*v6 == v23 && (static Date.== infix(_:_:)() & 1) != 0 && *&v6[v2[6]] == *(v24 + v2[6]) && *&v6[v2[7]] == *(v24 + v2[7]) && *&v6[v2[8]] == *(v24 + v2[8]))
        {
          v25 = static UUID.== infix(_:_:)();
          sub_10112BDD4(v6, type metadata accessor for RawSearchResult);
          if (v25)
          {
            v18 = v44;
            sub_10112BDD4(v44, type metadata accessor for RawSearchResult);
            goto LABEL_34;
          }
        }

        else
        {
          sub_10112BDD4(v6, type metadata accessor for RawSearchResult);
        }

        v21 = (v21 + 1) & v22;
      }

      while (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v43;
    sub_10112BD6C(v44, v43, type metadata accessor for RawSearchResult);
    v45 = v15;
    v28 = *(v15 + 16);
    if (*(v15 + 24) <= v28)
    {
      v29 = v28 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_100DF50BC(v29);
      }

      else
      {
        sub_100E08824(v29);
      }

      v15 = v45;
      Hasher.init(_seed:)();
      sub_100D15128(v46);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v15 + 32);
      v21 = v30 & ~v31;
      if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v32 = ~v31;
        v33 = *v27;
        do
        {
          sub_10112BD6C(*(v15 + 48) + v21 * v17, v9, type metadata accessor for RawSearchResult);
          if (*v9 == v33 && (static Date.== infix(_:_:)() & 1) != 0 && *&v9[v2[6]] == *&v43[v2[6]] && *&v9[v2[7]] == *&v43[v2[7]] && *&v9[v2[8]] == *&v43[v2[8]])
          {
            v34 = static UUID.== infix(_:_:)();
            sub_10112BDD4(v9, type metadata accessor for RawSearchResult);
            if (v34)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_10112BDD4(v9, type metadata accessor for RawSearchResult);
          }

          v21 = (v21 + 1) & v32;
        }

        while (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        v27 = v43;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04FE0();
      v15 = v45;
    }

    *(v15 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v21;
    sub_10112BC34(v27, *(v15 + 48) + v21 * v17, type metadata accessor for RawSearchResult);
    v18 = v44;
    sub_10112BDD4(v44, type metadata accessor for RawSearchResult);
    v35 = *(v15 + 16);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      break;
    }

    *(v15 + 16) = v37;
LABEL_34:
    v16 = v42 + 1;
    if (v42 + 1 == v41)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_37:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10112A718(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100009894(&qword_1016964C0, type metadata accessor for URLResourceKey, &unk_10138A470);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DED13C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112A7D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10058BB20();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100DED444(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10112A86C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
  sub_10048E9B8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10002E98C(v6, *v4);
      sub_100DED594(v7, v6, v5);
      sub_100429EA8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10112A91C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPBeaconType(0);
  sub_100009894(&qword_1016C1AA0, type metadata accessor for SPBeaconType, &unk_101386AD4);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DEE55C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112A9D8(uint64_t a1)
{
  v2 = type metadata accessor for WildModeTrackingLocation(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&qword_1016C8E20, type metadata accessor for WildModeTrackingLocation, &unk_10139B634);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v11, v6, type metadata accessor for WildModeTrackingLocation);
      sub_100DEE7EC(v8, v6);
      sub_10112BDD4(v8, type metadata accessor for WildModeTrackingLocation);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10112AB64(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100DEEB44(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112AC34(uint64_t a1)
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&qword_1016BC000, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100DEEC84(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10112AE04(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for AnyCancellable();
  sub_100009894(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100DEF098(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10112AFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100009894(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DEF808(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112B084(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_10112B154(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&qword_1016C8D90, type metadata accessor for BeaconIdentifier, &unk_1013BEEC4);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v11, v6, type metadata accessor for BeaconIdentifier);
      sub_100DEFD8C(v8, v6);
      sub_10112BDD4(v8, type metadata accessor for BeaconIdentifier);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10112B2E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10112BEDC();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 48);
      v12[2] = *(v4 + 32);
      v12[3] = v5;
      v12[4] = *(v4 + 64);
      v13 = *(v4 + 80);
      v6 = *(v4 + 16);
      v12[0] = *v4;
      v12[1] = v6;
      sub_100E0ED8C(v12, v9);
      sub_100DF010C(v7, v12);
      v9[3] = v7[3];
      v9[4] = v7[4];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      v9[2] = v7[2];
      sub_100E0EDE8(v9);
      v4 += 88;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10112B3C0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10112BF84();
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100015794(v11, v6);
      sub_100DF0448(v8, v6);
      sub_1002EA198(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10112B534(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DF0D58(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112B5A8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for Characteristic();
  sub_100009894(&qword_1016A5B28, type metadata accessor for Characteristic, &unk_1013D4780);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100DF104C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10112B748(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10112BE34();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v8;
      v12[3] = v7;
      v12[4] = v9;

      sub_100DF1524(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10112B800(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100D48DC8();
  result = Set.init(minimumCapacity:)();
  v13 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[7];
      v14[6] = v4[6];
      v14[7] = v5;
      v6 = v4[9];
      v14[8] = v4[8];
      v14[9] = v6;
      v7 = v4[3];
      v14[2] = v4[2];
      v14[3] = v7;
      v8 = v4[5];
      v14[4] = v4[4];
      v14[5] = v8;
      v9 = *v4;
      v10 = v4[1];
      v4 += 10;
      v14[0] = v9;
      v14[1] = v10;
      sub_10013CD18(v14, v12);
      sub_100DF1AF8(v11, v14);
      v12[6] = v11[6];
      v12[7] = v11[7];
      v12[8] = v11[8];
      v12[9] = v11[9];
      v12[2] = v11[2];
      v12[3] = v11[3];
      v12[4] = v11[4];
      v12[5] = v11[5];
      v12[0] = v11[0];
      v12[1] = v11[1];
      sub_10013CDDC(v12);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_10112B8D8(uint64_t a1)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100009894(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100DED164(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10112BAD8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_10112BB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
  sub_10112BC9C();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DF27F4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10112BBE0()
{
  result = qword_1016C8D58;
  if (!qword_1016C8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D58);
  }

  return result;
}

uint64_t sub_10112BC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10112BC9C()
{
  result = qword_1016C8DF0;
  if (!qword_1016C8DF0)
  {
    sub_1000BC580(&qword_1016ABEB0, &unk_1013BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8DF0);
  }

  return result;
}

unint64_t sub_10112BD18()
{
  result = qword_1016C8E08;
  if (!qword_1016C8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E08);
  }

  return result;
}

uint64_t sub_10112BD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10112BDD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10112BE34()
{
  result = qword_1016C8E48;
  if (!qword_1016C8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E48);
  }

  return result;
}

unint64_t sub_10112BE88()
{
  result = qword_1016C8E70;
  if (!qword_1016C8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E70);
  }

  return result;
}

unint64_t sub_10112BEDC()
{
  result = qword_1016C8E90;
  if (!qword_1016C8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E90);
  }

  return result;
}

unint64_t sub_10112BF30()
{
  result = qword_1016C8EF8;
  if (!qword_1016C8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8EF8);
  }

  return result;
}

unint64_t sub_10112BF84()
{
  result = qword_1016C8F30;
  if (!qword_1016C8F30)
  {
    sub_1000BC580(&qword_1016980D0, &unk_10138F3B0);
    sub_100009894(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F30);
  }

  return result;
}

unint64_t sub_10112C038()
{
  result = qword_1016C8F48;
  if (!qword_1016C8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F48);
  }

  return result;
}

unint64_t sub_10112C08C()
{
  result = qword_1016C8F98;
  if (!qword_1016C8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F98);
  }

  return result;
}

void sub_10112C0E8(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = *(*v1 + 16);
  if (v7 >= v8)
  {
    goto LABEL_18;
  }

  if (v7 + 1 >= v8)
  {
    v34 = *v1;
    sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    sub_10112C464();
    v3 = DataProtocol.hexString.getter();
    v2 = v17;
    if (qword_101695288 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C730);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = sub_1000136BC(v3, v2, &v34);

      *(v21 + 4) = v23;
      v24 = "Missing length: %{public}s";
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v26, v25, v24, v27, v28);
      sub_100007BAC(v22);

LABEL_17:

LABEL_18:
      v4 = 0;
      v16 = 0;
      v9 = 0;
      v11 = 0;
      v15 = 0;
      goto LABEL_19;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = v6 + 32;
  v10 = *(v6 + 32 + v7 + 1);
  v11 = v7 + 2;
  v12 = v7 + 2 + v10;
  if (__OFADD__(v7 + 2, v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v9 + v7);
  if (v12 - 1 >= v8)
  {
    v34 = *v1;
    sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    sub_10112C464();
    v11 = DataProtocol.hexString.getter();
    v9 = v29;
    if (qword_101695288 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v13 = __OFADD__(v7, v10 + 2);
  v14 = v7 + v10 + 2;
  if (v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C730);

    v19 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v32 = 16777986;
      *(v32 + 4) = v4;
      *(v32 + 5) = 256;
      *(v32 + 7) = v10;
      *(v32 + 8) = 2082;
      v33 = sub_1000136BC(v11, v9, &v34);

      *(v32 + 10) = v33;
      v24 = "Truncated data for T:%hhu L:%hhu: %{public}s";
      v25 = v31;
      v26 = v19;
      v27 = v32;
      v28 = 18;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = (2 * v12) | 1;
  v1[1] = v14;

LABEL_19:
  *a1 = v4;
  a1[1] = v16;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v15;
}

unint64_t sub_10112C464()
{
  result = qword_1016C8FB8;
  if (!qword_1016C8FB8)
  {
    sub_1000BC580(&unk_10169BA40, &unk_1013918E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8FB8);
  }

  return result;
}

void *sub_10112C4C8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100016590(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1000148E8(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100016590(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10112C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1011339C8(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_10112C704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v14 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_101133F28(v6, &v6[v10], v7, *(a1 + 36), 0, a1);
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 32);
    v12(a2, v6, v11);
    v12(a2 + *(v4 + 48), &v6[v10], v11);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

double sub_10112C8E0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_10113427C(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_10112C948(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000BB408(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000BB408(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_101133A9C(v3, v5, v2 != 0, a1, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v12 = v11;
  sub_1000BB408(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10112CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_101134114(result, *(a1 + 36), a1, &v11);
    v5 = v13;
    v6 = v14;
    v16[2] = v13;
    v16[3] = v14;
    v7 = v15;
    v17 = v15;
    v8 = v12;
    v9 = v11;
    v16[0] = v11;
    v16[1] = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v6;
    *(a2 + 64) = v7;
    *a2 = v9;
    *(a2 + 16) = v8;
    v19 = v7;
    v18[2] = v5;
    v18[3] = v6;
    v18[0] = v9;
    v18[1] = v8;
    sub_1009871D4(v16, &v10);
    return sub_1007206EC(v18);
  }

  return result;
}

uint64_t sub_10112CB48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v14 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_101134030(v6, &v6[v10], v7, *(a1 + 36), 0, a1);
    *a2 = *v6;
    v11 = *(v4 + 48);
    v12 = type metadata accessor for MACAddress();
    (*(*(v12 - 8) + 32))(&a2[v11], &v6[v10], v12);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10112CD04(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000BB408(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000BB408(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_101133CB4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000BB408(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10112CE20@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v42 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v43 = &v34 - v6;
  __chkstk_darwin(v5);
  v35 = (&v34 - v7);
  v40 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v8 = *(v40 - 8);
  v9 = __chkstk_darwin(v40);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
  v14 = *(v8 + 72);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v41 = 4 * v14;
  v39 = swift_allocObject();
  v16 = v39 + v15;
  v17 = type metadata accessor for KeySyncSnapshot(0);
  sub_1000D2A70(v1 + v17[5], v16, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v1 + v17[6], v16 + v14, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v1 + v17[10], v16 + 2 * v14, &unk_1016AF8A0, &unk_10139D7C0);
  v18 = v1 + v17[9];
  v19 = v1;
  v20 = v16;
  sub_1000D2A70(v18, v16 + 3 * v14, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v19 + v17[11], v16 + v41, &unk_1016AF8A0, &unk_10139D7C0);
  v21 = (v42 + 48);
  v22 = _swiftEmptyArrayStorage;
  v23 = 5;
  v38 = v20;
  v41 = v2;
  do
  {
    sub_1000D2A70(v20, v13, &unk_1016AF8A0, &unk_10139D7C0);
    sub_1000D2AD8(v13, v11, &unk_1016AF8A0, &unk_10139D7C0);
    if ((*v21)(v11, 1, v2) == 1)
    {
      sub_10000B3A8(v11, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      sub_1000D2AD8(v11, v43, &unk_1016C8FC0, &unk_10139D7D0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100A5B85C(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_100A5B85C((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1000D2AD8(v43, v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, &unk_1016C8FC0, &unk_10139D7D0);
      v2 = v41;
    }

    v20 += v14;
    --v23;
  }

  while (v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v22[2];
  if (!v26)
  {

    v32 = 1;
    v31 = v37;
    return (*(v42 + 56))(v31, v32, 1, v2);
  }

  v27 = v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v28 = v35;
  result = sub_1000D2A70(v27, v35, &unk_1016C8FC0, &unk_10139D7D0);
  v30 = v36;
  if (v26 == 1)
  {
LABEL_12:

    v31 = v37;
    sub_1000D2AD8(v28, v37, &unk_1016C8FC0, &unk_10139D7D0);
    v32 = 0;
    return (*(v42 + 56))(v31, v32, 1, v2);
  }

  v33 = 1;
  while (v33 < v22[2])
  {
    sub_1000D2A70(v27 + *(v42 + 72) * v33, v30, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v28 >= *v30)
    {
      result = sub_10000B3A8(v30, &unk_1016C8FC0, &unk_10139D7D0);
    }

    else
    {
      sub_10000B3A8(v28, &unk_1016C8FC0, &unk_10139D7D0);
      result = sub_1000D2AD8(v30, v28, &unk_1016C8FC0, &unk_10139D7D0);
    }

    if (v26 == ++v33)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for KeySyncSnapshot(uint64_t a1)
{
  result = qword_1016C9168;
  if (!qword_1016C9168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10112D3D0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v43 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v37 = *(v43 - 8);
  v1 = __chkstk_darwin(v43);
  v3 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v1);
  v42 = &v36 - v5;
  __chkstk_darwin(v4);
  v7 = (&v36 - v6);
  v41 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v8 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
  v14 = *(v8 + 72);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v40 = swift_allocObject();
  v16 = v40 + v15;
  v17 = type metadata accessor for KeySyncSnapshot(0);
  v18 = v39;
  sub_1000D2A70(&v39[*(v17 + 20)], v16, &unk_1016AF8A0, &unk_10139D7C0);
  v19 = v18 + *(v17 + 24);
  v20 = v16;
  v21 = v14;
  sub_1000D2A70(v19, v20 + v14, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v20, v13, &unk_1016AF8A0, &unk_10139D7C0);
  v39 = v13;
  v22 = v11;
  v23 = v11;
  v24 = v37;
  sub_1000D2AD8(v13, v22, &unk_1016AF8A0, &unk_10139D7C0);
  v38 = *(v24 + 48);
  if (v38(v23, 1, v43) != 1)
  {
    sub_1000D2AD8(v23, v42, &unk_1016C8FC0, &unk_10139D7D0);
    i = _swiftEmptyArrayStorage;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  sub_10000B3A8(v23, &unk_1016AF8A0, &unk_10139D7C0);
  for (i = _swiftEmptyArrayStorage; ; sub_1000D2AD8(v42, i + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v27, &unk_1016C8FC0, &unk_10139D7D0))
  {
    v28 = v20 + v21;
    v29 = v39;
    sub_1000D2A70(v28, v39, &unk_1016AF8A0, &unk_10139D7C0);
    sub_1000D2AD8(v29, v23, &unk_1016AF8A0, &unk_10139D7C0);
    if (v38(v23, 1, v43) == 1)
    {
      sub_10000B3A8(v23, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      v30 = v42;
      sub_1000D2AD8(v23, v42, &unk_1016C8FC0, &unk_10139D7D0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_100A5B85C(0, i[2] + 1, 1, i);
      }

      v32 = i[2];
      v31 = i[3];
      if (v32 >= v31 >> 1)
      {
        i = sub_100A5B85C((v31 > 1), v32 + 1, 1, i);
      }

      i[2] = v32 + 1;
      sub_1000D2AD8(v30, i + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v32, &unk_1016C8FC0, &unk_10139D7D0);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = i[2];
    if (!v33)
    {
      break;
    }

    v23 = i + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    sub_1000D2A70(v23, v7, &unk_1016C8FC0, &unk_10139D7D0);
    if (v33 == 1)
    {
LABEL_16:

      v34 = v36;
      sub_1000D2AD8(v7, v36, &unk_1016C8FC0, &unk_10139D7D0);
      return (*(v24 + 56))(v34, 0, 1, v43);
    }

    v21 = 1;
    while (v21 < i[2])
    {
      sub_1000D2A70(v23 + *(v24 + 72) * v21, v3, &unk_1016C8FC0, &unk_10139D7D0);
      if (*v7 >= *v3)
      {
        sub_10000B3A8(v3, &unk_1016C8FC0, &unk_10139D7D0);
      }

      else
      {
        sub_10000B3A8(v7, &unk_1016C8FC0, &unk_10139D7D0);
        sub_1000D2AD8(v3, v7, &unk_1016C8FC0, &unk_10139D7D0);
      }

      if (v33 == ++v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    i = sub_100A5B85C(0, i[2] + 1, 1, i);
LABEL_4:
    v27 = i[2];
    v26 = i[3];
    if (v27 >= v26 >> 1)
    {
      i = sub_100A5B85C((v26 > 1), v27 + 1, 1, i);
    }

    i[2] = v27 + 1;
  }

  return (*(v24 + 56))(v36, 1, 1, v43);
}

void sub_10112D9E4(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v240 = a1;
  v237 = a2;
  v230 = type metadata accessor for DateInterval();
  v231 = *(v230 - 8);
  __chkstk_darwin(v230);
  v236 = &v212 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v257 = v3;
  v258 = v4;
  v5 = __chkstk_darwin(v3);
  v234 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v233 = &v212 - v8;
  v9 = __chkstk_darwin(v7);
  v235 = &v212 - v10;
  __chkstk_darwin(v9);
  v239 = &v212 - v11;
  v12 = sub_1000BC4D4(&unk_1016C9060, &qword_1014090E0);
  __chkstk_darwin(v12 - 8);
  v241 = &v212 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v15 = __chkstk_darwin(v14 - 8);
  v232 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v228 = &v212 - v18;
  v19 = __chkstk_darwin(v17);
  v227 = &v212 - v20;
  v21 = __chkstk_darwin(v19);
  v214 = &v212 - v22;
  v23 = __chkstk_darwin(v21);
  v249 = &v212 - v24;
  __chkstk_darwin(v23);
  v246 = &v212 - v25;
  v252 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v254 = *(v252 - 8);
  v26 = __chkstk_darwin(v252);
  v229 = (&v212 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v217 = (&v212 - v29);
  v30 = __chkstk_darwin(v28);
  v218 = (&v212 - v31);
  v32 = __chkstk_darwin(v30);
  v213 = (&v212 - v33);
  v34 = __chkstk_darwin(v32);
  v250 = &v212 - v35;
  __chkstk_darwin(v34);
  v247 = &v212 - v36;
  v37 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  v38 = __chkstk_darwin(v37 - 8);
  v226 = &v212 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v243 = &v212 - v40;
  v251 = sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
  v253 = *(v251 - 8);
  v41 = __chkstk_darwin(v251);
  v216 = (&v212 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v244 = &v212 - v43;
  v44 = sub_1000BC4D4(&qword_1016B3D28, &qword_1013D4A90);
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44);
  v48 = &v212 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v46);
  v51 = &v212 - v50;
  v52 = __chkstk_darwin(v49);
  v238 = &v212 - v53;
  v54 = __chkstk_darwin(v52);
  v248 = &v212 - v55;
  v56 = __chkstk_darwin(v54);
  v245 = &v212 - v57;
  v58 = __chkstk_darwin(v56);
  v242 = &v212 - v59;
  __chkstk_darwin(v58);
  v61 = &v212 - v60;
  v62 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v63 = __chkstk_darwin(v62 - 8);
  v225 = &v212 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v66 = &v212 - v65;
  v67 = sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v68 = *(v67 - 8);
  v69 = __chkstk_darwin(v67);
  v215 = &v212 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v72 = &v212 - v71;
  v256 = type metadata accessor for KeySyncSnapshot(0);
  v221 = v256[8];
  sub_1000D2A70(v255 + v221, v66, &qword_1016C9048, &qword_1014090D8);
  v73 = *(v68 + 48);
  v223 = v68 + 48;
  v222 = v73;
  v74 = v73(v66, 1, v67);
  v75 = v258;
  v224 = v67;
  v259 = v44;
  if (v74 == 1)
  {
    sub_10000B3A8(v66, &qword_1016C9048, &qword_1014090D8);
    v76 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000D2AD8(v66, v72, &qword_1016C8FE8, &qword_1014090A8);
    v77 = *(v67 + 36);
    v78 = *(v44 + 48);
    *v61 = 6;
    (*(v75 + 16))(&v61[v78], &v72[v77], v257);
    v76 = sub_100A5BCBC(0, 1, 1, _swiftEmptyArrayStorage);
    v80 = v76[2];
    v79 = v76[3];
    if (v80 >= v79 >> 1)
    {
      v76 = sub_100A5BCBC((v79 > 1), v80 + 1, 1, v76);
    }

    sub_10000B3A8(v72, &qword_1016C8FE8, &qword_1014090A8);
    v76[2] = v80 + 1;
    sub_1000D2AD8(v61, v76 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v80, &qword_1016B3D28, &qword_1013D4A90);
  }

  v81 = v256[7];
  v82 = v255;
  v83 = v243;
  sub_1000D2A70(v255 + v81, v243, &qword_1016C9040, &qword_1014090D0);
  v84 = *(v253 + 48);
  v85 = v251;
  v253 += 48;
  v219 = v84;
  v86 = v84(v83, 1, v251);
  v87 = v252;
  v220 = v81;
  if (v86 == 1)
  {
    sub_10000B3A8(v83, &qword_1016C9040, &qword_1014090D0);
    v88 = v87;
    v89 = v82;
    v90 = v254;
  }

  else
  {
    v91 = v83;
    v92 = v244;
    sub_1000D2AD8(v91, v244, &qword_1016C9018, &qword_1014090B8);
    v93 = *(v85 + 36);
    v94 = v259[12];
    v95 = v242;
    *v242 = 5;
    (*(v258 + 16))(&v95[v94], &v92[v93], v257);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_100A5BCBC(0, v76[2] + 1, 1, v76);
    }

    v88 = v87;
    v97 = v76[2];
    v96 = v76[3];
    v89 = v82;
    if (v97 >= v96 >> 1)
    {
      v76 = sub_100A5BCBC((v96 > 1), v97 + 1, 1, v76);
    }

    v90 = v254;
    sub_10000B3A8(v244, &qword_1016C9018, &qword_1014090B8);
    v76[2] = v97 + 1;
    sub_1000D2AD8(v242, v76 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v97, &qword_1016B3D28, &qword_1013D4A90);
  }

  v243 = v256[6];
  v98 = v246;
  sub_1000D2A70(v89 + v243, v246, &unk_1016AF8A0, &unk_10139D7C0);
  v101 = *(v90 + 48);
  v100 = v90 + 48;
  v99 = v101;
  v102 = (v101)(v98, 1, v88);
  v244 = v101;
  if (v102 == 1)
  {
    sub_10000B3A8(v98, &unk_1016AF8A0, &unk_10139D7C0);
  }

  else
  {
    v103 = v98;
    v104 = v247;
    sub_1000D2AD8(v103, v247, &unk_1016C8FC0, &unk_10139D7D0);
    v105 = *(v88 + 36);
    v106 = v259[12];
    v107 = v245;
    *v245 = 2;
    (*(v258 + 16))(&v107[v106], v104 + v105, v257);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_100A5BCBC(0, v76[2] + 1, 1, v76);
    }

    v109 = v76[2];
    v108 = v76[3];
    if (v109 >= v108 >> 1)
    {
      v76 = sub_100A5BCBC((v108 > 1), v109 + 1, 1, v76);
    }

    sub_10000B3A8(v247, &unk_1016C8FC0, &unk_10139D7D0);
    v76[2] = v109 + 1;
    sub_1000D2AD8(v245, v76 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v109, &qword_1016B3D28, &qword_1013D4A90);
    v99 = v244;
  }

  v247 = v256[5];
  v110 = v89 + v247;
  v111 = v249;
  sub_1000D2A70(v110, v249, &unk_1016AF8A0, &unk_10139D7C0);
  v112 = (v99)(v111, 1, v88);
  v254 = v100;
  if (v112 != 1)
  {
    v120 = v111;
    v121 = v250;
    sub_1000D2AD8(v120, v250, &unk_1016C8FC0, &unk_10139D7D0);
    v122 = *(v88 + 36);
    v114 = v258;
    v123 = v259[12];
    v124 = v248;
    *v248 = 1;
    v125 = v121 + v122;
    v113 = v257;
    (*(v114 + 16))(&v124[v123], v125, v257);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_100A5BCBC(0, v76[2] + 1, 1, v76);
    }

    v127 = v76[2];
    v126 = v76[3];
    if (v127 >= v126 >> 1)
    {
      v76 = sub_100A5BCBC((v126 > 1), v127 + 1, 1, v76);
    }

    sub_10000B3A8(v250, &unk_1016C8FC0, &unk_10139D7D0);
    v76[2] = v127 + 1;
    sub_1000D2AD8(v248, v76 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v127, &qword_1016B3D28, &qword_1013D4A90);
    v115 = v76[2];
    if (v115)
    {
      goto LABEL_22;
    }

LABEL_29:
    v119 = 1;
    v118 = v241;
    goto LABEL_30;
  }

  sub_10000B3A8(v111, &unk_1016AF8A0, &unk_10139D7C0);
  v113 = v257;
  v114 = v258;
  v115 = v76[2];
  if (!v115)
  {
    goto LABEL_29;
  }

LABEL_22:
  v116 = v76 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  sub_1000D2A70(v116, v51, &qword_1016B3D28, &qword_1013D4A90);
  if (v115 != 1)
  {
    v143 = 1;
    v144 = &qword_1013D4A90;
    while (v143 < v76[2])
    {
      sub_1000D2A70(v116 + *(v45 + 72) * v143, v48, &qword_1016B3D28, &qword_1013D4A90);
      if (static Date.< infix(_:_:)())
      {
        sub_10000B3A8(v51, &qword_1016B3D28, &qword_1013D4A90);
        sub_1000D2AD8(v48, v51, &qword_1016B3D28, &qword_1013D4A90);
      }

      else
      {
        sub_10000B3A8(v48, &qword_1016B3D28, &qword_1013D4A90);
      }

      if (v115 == ++v143)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_152:
    v152 = 0;
    v149 = 0;
    goto LABEL_153;
  }

LABEL_23:
  v118 = v241;
  sub_1000D2AD8(v51, v241, &qword_1016B3D28, &qword_1013D4A90);
  v119 = 0;
  v113 = v257;
  v114 = v258;
LABEL_30:
  v128 = v259;
  (*(v45 + 56))(v118, v119, 1, v259);

  if ((*(v45 + 48))(v118, 1, v128) == 1)
  {
    sub_10000B3A8(v118, &unk_1016C9060, &qword_1014090E0);
    sub_1011341C4();
    swift_allocError();
    *v129 = 1;
    swift_willThrow();
    return;
  }

  v130 = v238;
  sub_1000D2AD8(v118, v238, &qword_1016B3D28, &qword_1013D4A90);
  v131 = *v130;
  v132 = v128[12];
  v133 = v113;
  v134 = v239;
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v136 = v135;
  v137 = *(v114 + 8);
  v137(v134, v133);
  if (v136 < -86400.0)
  {
    v138 = v232;
    sub_1000D2A70(v255 + v243, v232, &unk_1016AF8A0, &unk_10139D7C0);
    if ((v244)(v138, 1, v252) == 1)
    {
      sub_10000B3A8(v138, &unk_1016AF8A0, &unk_10139D7C0);
      if (qword_101695270 != -1)
      {
        swift_once();
      }

      v139 = type metadata accessor for Logger();
      sub_1000076D4(v139, qword_10177C6B8);
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&_mh_execute_header, v140, v141, "Last key sync is older than 24 hours and no latched key found. Fall back to date range based keys.", v142, 2u);
      }

      goto LABEL_71;
    }

    v148 = v229;
    sub_1000D2AD8(v138, v229, &unk_1016C8FC0, &unk_10139D7D0);
    v149 = *v148;
    if (*v148)
    {
      v150 = v149 / 0x60 + 1;
      if (!is_mul_ok(v150, 0x60uLL))
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v151 = 96 * v150;
      v152 = v151 - 1;
      v153 = v151 - 96;
      if (v153 <= 1)
      {
        v153 = 1;
      }

      if (v152 < v153)
      {
        goto LABEL_175;
      }

      if (v152 < v149)
      {
        sub_1011341C4();
        swift_allocError();
        *v154 = 2;
        swift_willThrow();
        sub_10000B3A8(v148, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_106:
        v183 = v130;
LABEL_150:
        sub_10000B3A8(v183, &qword_1016B3D28, &qword_1013D4A90);
        return;
      }

      v144 = v152 / 0x60 + 1;
    }

    else
    {
      v144 = 0;
      v152 = 0;
    }

    DateInterval.duration.getter();
    v170 = v169 / 86400.0;
    if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v170 > -1.0)
    {
      if (v170 < 1.84467441e19)
      {
        v45 = v144 + 1 + v170;
        if (!__CFADD__(v144 + 1, v170))
        {
          if (v45 < v144)
          {
            sub_1011341C4();
            swift_allocError();
            *v171 = 2;
            swift_willThrow();
            sub_10000B3A8(v148, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_149:
            v183 = v238;
            goto LABEL_150;
          }

          sub_10000B3A8(v148, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_145:
          sub_10000B3A8(v238, &qword_1016B3D28, &qword_1013D4A90);
          v167 = 0;
          goto LABEL_78;
        }

        goto LABEL_173;
      }

LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    __break(1u);
    goto LABEL_172;
  }

  v259 = v137;
  v145 = v233;
  DateInterval.start.getter();
  sub_101134BBC(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    (v259)(v145, v133);
    v146 = *(v114 + 16);
    v147 = v235;
    v146(v235, &v130[v132], v133);
  }

  else
  {
    v147 = v235;
    (*(v114 + 32))(v235, v145, v133);
    v146 = *(v114 + 16);
  }

  v146(v239, v147, v133);
  DateInterval.end.getter();
  v155 = v236;
  DateInterval.init(start:end:)();
  if (v131 <= 4)
  {
    if (v131 == 1)
    {
      v156 = v228;
      sub_1000D2A70(v255 + v247, v228, &unk_1016AF8A0, &unk_10139D7C0);
      if ((v244)(v156, 1, v252) != 1)
      {
        v177 = v217;
        sub_1000D2AD8(v156, v217, &unk_1016C8FC0, &unk_10139D7D0);
        v178 = *v177 - 1;
        if (!*v177)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        if (v178 <= 1)
        {
          v149 = 1;
        }

        else
        {
          v149 = *v177 - 1;
        }

        v179 = v149 / 0x60 + 1;
        if (!is_mul_ok(v179, 0x60uLL))
        {
          goto LABEL_180;
        }

        v180 = 96 * v179;
        v152 = v180 - 1;
        v181 = v180 - 96;
        if (v181 <= 1)
        {
          v181 = 1;
        }

        if (v152 < v181)
        {
          goto LABEL_183;
        }

        if (v178 > v152)
        {
          sub_1011341C4();
          swift_allocError();
          *v182 = 2;
          swift_willThrow();
          v163 = v177;
          goto LABEL_105;
        }

        DateInterval.duration.getter();
        v186 = v185 / 86400.0;
        if ((*&v186 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        if (v186 <= -1.0)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v187 = v236;
        if (v186 >= 1.84467441e19)
        {
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        v188 = v152 / 0x60;
        v189 = v152 / 0x60 + 2;
        v45 = v189 + v186;
        if (__CFADD__(v189, v186))
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (v45 <= v188)
        {
          sub_1011341C4();
          swift_allocError();
          *v205 = 2;
          swift_willThrow();
          v199 = &unk_1016C8FC0;
          v200 = &unk_10139D7D0;
          v201 = v177;
          goto LABEL_147;
        }

        v190 = v177;
        v144 = v188 + 1;
        v191 = &unk_1016C8FC0;
        v192 = &unk_10139D7D0;
        goto LABEL_144;
      }

LABEL_73:
      (*(v231 + 8))(v155, v230);
      (v259)(v147, v257);
      sub_10000B3A8(v130, &qword_1016B3D28, &qword_1013D4A90);
      v164 = &unk_1016AF8A0;
      v165 = &unk_10139D7C0;
      goto LABEL_76;
    }

    if (v131 == 2)
    {
      v156 = v227;
      sub_1000D2A70(v255 + v243, v227, &unk_1016AF8A0, &unk_10139D7C0);
      if ((v244)(v156, 1, v252) != 1)
      {
        v157 = v156;
        v158 = v218;
        sub_1000D2AD8(v157, v218, &unk_1016C8FC0, &unk_10139D7D0);
        v149 = *v158;
        if (*v158)
        {
          v159 = v149 / 0x60 + 1;
          if (!is_mul_ok(v159, 0x60uLL))
          {
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v160 = 96 * v159;
          v152 = v160 - 1;
          v161 = v160 - 96;
          if (v161 <= 1)
          {
            v161 = 1;
          }

          if (v152 < v161)
          {
            goto LABEL_193;
          }

          if (v152 < v149)
          {
            sub_1011341C4();
            swift_allocError();
            *v162 = 2;
            swift_willThrow();
            v163 = v218;
LABEL_105:
            sub_10000B3A8(v163, &unk_1016C8FC0, &unk_10139D7D0);
            (*(v231 + 8))(v155, v230);
            (v259)(v147, v257);
            goto LABEL_106;
          }

          v144 = v152 / 0x60 + 1;
          goto LABEL_136;
        }

LABEL_122:
        v144 = 0;
        v152 = 0;
LABEL_136:
        DateInterval.duration.getter();
        v203 = v202 / 86400.0;
        if ((*&v203 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        if (v203 <= -1.0)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        v187 = v236;
        if (v203 >= 1.84467441e19)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        v45 = v144 + 1 + v203;
        if (__CFADD__(v144 + 1, v203))
        {
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (v45 < v144)
        {
          sub_1011341C4();
          swift_allocError();
          *v204 = 2;
          swift_willThrow();
          v199 = &unk_1016C8FC0;
          v200 = &unk_10139D7D0;
          v201 = v218;
          goto LABEL_147;
        }

        v191 = &unk_1016C8FC0;
        v192 = &unk_10139D7D0;
        v190 = v218;
        goto LABEL_144;
      }

      goto LABEL_73;
    }

LABEL_70:
    (*(v231 + 8))(v155, v230);
    (v259)(v147, v257);
LABEL_71:
    v164 = &qword_1016B3D28;
    v165 = &qword_1013D4A90;
    v166 = v130;
LABEL_77:
    sub_10000B3A8(v166, v164, v165);
    v149 = 0;
    v152 = 0;
    v144 = 0;
    v45 = 0;
    v167 = 1;
LABEL_78:
    v168 = v237;
    *v237 = v149;
    v168[1] = v152;
    v168[2] = v144;
    v168[3] = v45;
    *(v168 + 32) = v167;
    return;
  }

  if (v131 == 5)
  {
    v156 = v226;
    sub_1000D2A70(v255 + v220, v226, &qword_1016C9040, &qword_1014090D0);
    if (v219(v156, 1, v251) != 1)
    {
      v184 = v216;
      sub_1000D2AD8(v156, v216, &qword_1016C9018, &qword_1014090B8);
      v149 = *v184;
      if (*v184)
      {
        v144 = v149 / 0x60 + 1;
      }

      else
      {
        v144 = 0;
      }

      DateInterval.duration.getter();
      v194 = v193 / 86400.0;
      if ((*&v194 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_178;
      }

      if (v194 <= -1.0)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v187 = v236;
      if (v194 >= 1.84467441e19)
      {
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      v195 = v144 + 1;
      v45 = v144 + 1 + v194;
      if (__CFADD__(v144 + 1, v194))
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      if (v45 < v144)
      {
        goto LABEL_134;
      }

      if (!is_mul_ok(v195, 0x60uLL))
      {
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }

      v196 = 96 * v195;
      v152 = v196 - 1;
      v197 = v196 - 96;
      if (v197 <= 1)
      {
        v197 = 1;
      }

      if (v152 < v197)
      {
        goto LABEL_198;
      }

      if (v152 < v149)
      {
LABEL_134:
        sub_1011341C4();
        swift_allocError();
        *v198 = 2;
        swift_willThrow();
        v199 = &qword_1016C9018;
        v200 = &qword_1014090B8;
        v201 = v184;
LABEL_147:
        sub_10000B3A8(v201, v199, v200);
        (*(v231 + 8))(v187, v230);
        goto LABEL_148;
      }

      v191 = &qword_1016C9018;
      v192 = &qword_1014090B8;
      v190 = v184;
LABEL_144:
      sub_10000B3A8(v190, v191, v192);
      (*(v231 + 8))(v187, v230);
      (v259)(v235, v257);
      goto LABEL_145;
    }

    (*(v231 + 8))(v155, v230);
    (v259)(v147, v257);
    sub_10000B3A8(v130, &qword_1016B3D28, &qword_1013D4A90);
    v164 = &qword_1016C9040;
    v165 = &qword_1014090D0;
LABEL_76:
    v166 = v156;
    goto LABEL_77;
  }

  if (v131 != 6)
  {
    goto LABEL_70;
  }

  v156 = v225;
  sub_1000D2A70(v255 + v221, v225, &qword_1016C9048, &qword_1014090D8);
  if (v222(v156, 1, v224) == 1)
  {
    (*(v231 + 8))(v155, v230);
    (v259)(v147, v257);
    sub_10000B3A8(v130, &qword_1016B3D28, &qword_1013D4A90);
    v164 = &qword_1016C9048;
    v165 = &qword_1014090D8;
    goto LABEL_76;
  }

  v143 = v215;
  sub_1000D2AD8(v156, v215, &qword_1016C8FE8, &qword_1014090A8);
  v144 = *v143;
  DateInterval.duration.getter();
  v173 = v172 / 86400.0;
  if ((*&v173 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v117 = v255;
  v76 = v252;
  v116 = v214;
  if (v173 <= -1.0)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v174 = v236;
  if (v173 >= 1.84467441e19)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v175 = v144 + v173;
  if (__CFADD__(v144, v173))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v45 = v175 + 1;
  if (v175 == -1)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v45 < v144)
  {
    sub_1011341C4();
    swift_allocError();
    *v176 = 2;
    swift_willThrow();
    sub_10000B3A8(v143, &qword_1016C8FE8, &qword_1014090A8);
    (*(v231 + 8))(v174, v230);
LABEL_148:
    (v259)(v235, v257);
    goto LABEL_149;
  }

  v258 = 3 * v144;
  if (!v144)
  {
    goto LABEL_152;
  }

  if (is_mul_ok(v144, 0x60uLL))
  {
    v152 = 96 * v144 - 1;
    if (96 * v144 - 96 <= 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = 96 * v144 - 96;
    }

    if (v152 < v149)
    {
      __break(1u);
      goto LABEL_122;
    }

LABEL_153:
    sub_1000D2A70(v117 + v256[9], v116, &unk_1016AF8A0, &unk_10139D7C0);
    if ((v244)(v116, 1, v76) == 1)
    {
      sub_10000B3A8(v116, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      v206 = v116;
      v207 = v213;
      sub_1000D2AD8(v206, v213, &unk_1016C8FC0, &unk_10139D7D0);
      v208 = *v207;
      sub_10000B3A8(v207, &unk_1016C8FC0, &unk_10139D7D0);
      if (v149 < v208)
      {
        sub_10000B3A8(v143, &qword_1016C8FE8, &qword_1014090A8);
        (*(v231 + 8))(v236, v230);
        (v259)(v235, v257);
        sub_10000B3A8(v238, &qword_1016B3D28, &qword_1013D4A90);
        if (v152 >= v208)
        {
          v167 = 0;
          v149 = v208;
          goto LABEL_78;
        }

        if (v152 >= v149)
        {
          v167 = 0;
          goto LABEL_78;
        }

        goto LABEL_202;
      }
    }

    v209 = v259;
    if (v144)
    {
      v152 = 32 * v258 - 1;
      v210 = 32 * v258 - 96;
      if (v210 <= 1)
      {
        v210 = 1;
      }

      if (v152 < v210)
      {
        goto LABEL_201;
      }

      if (v152 >= v149)
      {
LABEL_169:
        sub_10000B3A8(v143, &qword_1016C8FE8, &qword_1014090A8);
        (*(v231 + 8))(v236, v230);
        (v209)(v235, v257);
        goto LABEL_145;
      }
    }

    else if (!v149)
    {
      v152 = 0;
      goto LABEL_169;
    }

    sub_1011341C4();
    swift_allocError();
    *v211 = 2;
    swift_willThrow();
    sub_10000B3A8(v143, &qword_1016C8FE8, &qword_1014090A8);
    (*(v231 + 8))(v236, v230);
    (v209)(v235, v257);
    goto LABEL_149;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
}

uint64_t sub_10112FB78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v80) = a1;
  v69 = a2;
  v78 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3 = *(v78 - 8);
  v4 = __chkstk_darwin(v78);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v81 = &v64 - v7;
  v8 = __chkstk_darwin(v6);
  v66 = &v64 - v9;
  __chkstk_darwin(v8);
  v70 = (&v64 - v10);
  v11 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v64 - v12);
  v71 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v77 = *(v71 - 8);
  v14 = __chkstk_darwin(v71);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v64 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v64 - v21;
  v23 = __chkstk_darwin(v20);
  v72 = (&v64 - v24);
  v25 = __chkstk_darwin(v23);
  v75 = (&v64 - v26);
  __chkstk_darwin(v25);
  v76 = (&v64 - v27);
  v28 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  __chkstk_darwin(v28 - 8);
  v30 = (&v64 - v29);
  v73 = type metadata accessor for KeySyncSnapshot(0);
  v74 = v2;
  sub_1000D2A70(v2 + v73[8], v30, &qword_1016C9048, &qword_1014090D8);
  v31 = sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  if (v32 == 1)
  {
    sub_10000B3A8(v30, &qword_1016C9048, &qword_1014090D8);
    goto LABEL_10;
  }

  v33 = *v30;
  result = sub_10000B3A8(v30, &qword_1016C8FE8, &qword_1014090A8);
  if (!v33)
  {
    goto LABEL_10;
  }

  v35 = v74;
  if (is_mul_ok(v33, 0x60uLL))
  {
    if (96 * v33 - 96 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = 96 * v33 - 96;
    }

    if (96 * v33 - 1 >= v36)
    {
LABEL_11:
      v37 = v32 == 1;
      v38 = v80;
      sub_101132634(v36, v37, v80 & 1, v76);
      v39 = v73;
      sub_1000D2A70(v35 + v73[7], v13, &qword_1016C9040, &qword_1014090D0);
      v40 = sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
      if ((*(*(v40 - 8) + 48))(v13, 1, v40) == 1)
      {
        sub_10000B3A8(v13, &qword_1016C9040, &qword_1014090D0);
        v41 = v78;
        (*(v3 + 56))(v75, 1, 1, v78);
      }

      else
      {
        v42 = *v13;
        sub_10000B3A8(v13, &qword_1016C9018, &qword_1014090B8);
        sub_101132634(v42, 0, v38 & 1, v75);
        v41 = v78;
      }

      sub_1000D2A70(v35 + v39[5], v22, &unk_1016AF8A0, &unk_10139D7C0);
      v79 = *(v3 + 48);
      v80 = v3 + 48;
      if (v79(v22, 1, v41) == 1)
      {
        sub_10000B3A8(v22, &unk_1016AF8A0, &unk_10139D7C0);
        v43 = 1;
        v44 = v72;
      }

      else
      {
        v45 = v70;
        result = sub_1000D2AD8(v22, v70, &unk_1016C8FC0, &unk_10139D7D0);
        v46 = fmax(*v45 + -1.0, 1.0);
        if (v46 == INFINITY)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v46 <= -1.0)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v46 >= 1.84467441e19)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v47 = v46;
        v44 = v72;
        Date.addingTimeInterval(_:)();
        sub_10000B3A8(v45, &unk_1016C8FC0, &unk_10139D7D0);
        v43 = 0;
        *v44 = v47;
        v41 = v78;
      }

      v48 = v77;
      v77 = v3;
      v67 = *(v3 + 56);
      v68 = v3 + 56;
      v67(v44, v43, 1, v41);
      sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v70 = swift_allocObject();
      v51 = v70 + v50;
      sub_1000D2A70(v44, v70 + v50, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v74 + v73[6], v51 + v49, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v75, v51 + 2 * v49, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v76, v51 + 3 * v49, &unk_1016AF8A0, &unk_10139D7C0);
      v52 = _swiftEmptyArrayStorage;
      v53 = 4;
      v74 = v51;
      do
      {
        sub_1000D2A70(v51, v19, &unk_1016AF8A0, &unk_10139D7C0);
        sub_1000D2AD8(v19, v16, &unk_1016AF8A0, &unk_10139D7C0);
        if (v79(v16, 1, v41) == 1)
        {
          sub_10000B3A8(v16, &unk_1016AF8A0, &unk_10139D7C0);
        }

        else
        {
          sub_1000D2AD8(v16, v81, &unk_1016C8FC0, &unk_10139D7D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_100A5B85C(0, v52[2] + 1, 1, v52);
          }

          v55 = v52[2];
          v54 = v52[3];
          if (v55 >= v54 >> 1)
          {
            v52 = sub_100A5B85C((v54 > 1), v55 + 1, 1, v52);
          }

          v52[2] = v55 + 1;
          sub_1000D2AD8(v81, v52 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v55, &unk_1016C8FC0, &unk_10139D7D0);
          v41 = v78;
        }

        v51 += v49;
        --v53;
      }

      while (v53);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v56 = v52[2];
      if (!v56)
      {

        sub_10000B3A8(v72, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v75, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v76, &unk_1016AF8A0, &unk_10139D7C0);
        v62 = 1;
        v61 = v69;
        return (v67)(v61, v62, 1, v78);
      }

      v57 = v77;
      v58 = v52 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v59 = v66;
      result = sub_1000D2A70(v58, v66, &unk_1016C8FC0, &unk_10139D7D0);
      v60 = v65;
      if (v56 == 1)
      {
LABEL_31:

        sub_10000B3A8(v72, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v75, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v76, &unk_1016AF8A0, &unk_10139D7C0);
        v61 = v69;
        sub_1000D2AD8(v59, v69, &unk_1016C8FC0, &unk_10139D7D0);
        v62 = 0;
        return (v67)(v61, v62, 1, v78);
      }

      v63 = 1;
      while (v63 < v52[2])
      {
        sub_1000D2A70(v58 + *(v57 + 72) * v63, v60, &unk_1016C8FC0, &unk_10139D7D0);
        if (static Date.< infix(_:_:)())
        {
          sub_10000B3A8(v59, &unk_1016C8FC0, &unk_10139D7D0);
          result = sub_1000D2AD8(v60, v59, &unk_1016C8FC0, &unk_10139D7D0);
        }

        else
        {
          result = sub_10000B3A8(v60, &unk_1016C8FC0, &unk_10139D7D0);
        }

        if (v56 == ++v63)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    __break(1u);
LABEL_10:
    v36 = 0;
    v35 = v74;
    goto LABEL_11;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1011305AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v40 = &v37 - v4;
  v5 = type metadata accessor for KeySyncMetadata(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  v10 = __chkstk_darwin(v42);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v14, 0);
    v15 = v46;
    v16 = *(v6 + 80);
    v39 = a1;
    v17 = a1 + ((v16 + 32) & ~v16);
    v44 = *(v6 + 72);
    v45 = v9;
    v18 = (v9 + 16);
    v43 = v9 + 32;
    v19 = v42;
    do
    {
      sub_101134ADC(v17, v8, type metadata accessor for KeySyncMetadata);
      (*v18)(v13, v8, v19);
      sub_101134B44(v8, type metadata accessor for KeySyncMetadata);
      v46 = v15;
      v21 = v15[2];
      v20 = v15[3];
      if (v21 >= v20 >> 1)
      {
        sub_101123D4C((v20 > 1), v21 + 1, 1);
        v15 = v46;
      }

      v15[2] = v21 + 1;
      (*(v45 + 32))(v15 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v21, v13, v19);
      v17 += v44;
      --v14;
    }

    while (v14);
    a1 = v39;
    v9 = v45;
  }

  v22 = sub_10000954C(v15);

  if (*(v22 + 16) != 1)
  {

    goto LABEL_11;
  }

  v23 = v40;
  sub_10112C648(v22, v40);

  v24 = v42;
  if ((*(v9 + 48))(v23, 1, v42) == 1)
  {

    sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
    sub_1011341C4();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  v27 = v41;
  (*(v9 + 32))(v41, v23, v24);
  v28 = v24;
  v29 = v38;
  (*(v9 + 16))(v38, v27, v28);
  v30 = type metadata accessor for KeySyncSnapshot(0);
  v31 = v30[5];

  sub_101130D24(1u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v29 + v31);
  v32 = v30[6];

  sub_101130D24(2u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v29 + v32);
  v33 = v30[10];

  sub_101130D24(4u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v29 + v33);
  v34 = v30[7];

  sub_101130D24(5u, a1, &qword_1016C9018, &qword_1014090B8, &type metadata for PrimaryWildIndex, &qword_1016C9020, &qword_1014090C0, &qword_1016C9028, v29 + v34);
  v35 = v30[8];

  sub_101130D24(6u, a1, &qword_1016C8FE8, &qword_1014090A8, &type metadata for SecondaryIndex, &qword_1016C9000, &qword_1014090B0, &unk_1016C9008, v29 + v35);
  v36 = v30[9];

  sub_101130D24(7u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v29 + v36);
  sub_101130D24(8u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v29 + v30[11]);
  return (*(v9 + 8))(v41, v42);
}

uint64_t sub_101130BB4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C6B8);
  sub_1000076D4(v0, qword_10177C6B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101130C38(uint64_t a1)
{
  v1._countAndFlagsBits = sub_1010B7ABC(*(a1 + 16), *(a1 + 24));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  type metadata accessor for Date();
  sub_101134BBC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 40;
}

uint64_t sub_101130D24@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v89 = a8;
  v90 = a7;
  v88 = a6;
  v94 = a5;
  v99 = a9;
  v10 = a1;
  v92 = a3;
  v93 = a4;
  v11 = sub_1000BC4D4(a3, a4);
  v97 = *(v11 - 8);
  v98 = v11;
  __chkstk_darwin(v11);
  v91 = (&v87 - v12);
  v107 = type metadata accessor for KeySyncMetadata(0);
  v13 = *(v107 - 8);
  v14 = __chkstk_darwin(v107);
  v105 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v104 = &v87 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v87 - v19;
  v20 = __chkstk_darwin(v18);
  v95 = &v87 - v21;
  v22 = __chkstk_darwin(v20);
  v101 = &v87 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v87 - v25;
  __chkstk_darwin(v24);
  v28 = &v87 - v27;
  v29 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  v30 = __chkstk_darwin(v29 - 8);
  v96 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v102 = &v87 - v32;
  v33 = *(a2 + 16);
  v103 = v10;
  v106 = v26;
  if (v33)
  {
    v34 = 0;
    v35 = _swiftEmptyArrayStorage;
    while (v34 < *(a2 + 16))
    {
      v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v37 = *(v13 + 72);
      sub_101134ADC(a2 + v36 + v37 * v34, v28, type metadata accessor for KeySyncMetadata);
      if (v28[*(v107 + 20)] == v10)
      {
        sub_101134218(v28, v105);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109[0] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101123CD8(0, v35[2] + 1, 1);
          v35 = v109[0];
        }

        v40 = v35[2];
        v39 = v35[3];
        if (v40 >= v39 >> 1)
        {
          sub_101123CD8((v39 > 1), v40 + 1, 1);
          v35 = v109[0];
        }

        v35[2] = v40 + 1;
        sub_101134218(v105, v35 + v36 + v40 * v37);
        v10 = v103;
        v26 = v106;
      }

      else
      {
        sub_101134B44(v28, type metadata accessor for KeySyncMetadata);
      }

      if (v33 == ++v34)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_13:

  v41 = v35[2];
  if (v41)
  {
    v42 = v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    sub_101134ADC(v42, v26, type metadata accessor for KeySyncMetadata);
    v26 = v102;
    v10 = v100;
    v43 = v107;
    v28 = v104;
    if (v41 != 1)
    {
      v58 = 1;
      v59 = v106;
      while (v58 < v35[2])
      {
        sub_101134ADC(v42 + *(v13 + 72) * v58, v28, type metadata accessor for KeySyncMetadata);
        if (static Date.< infix(_:_:)())
        {
          sub_101134B44(v59, type metadata accessor for KeySyncMetadata);
          sub_101134218(v28, v59);
        }

        else
        {
          sub_101134B44(v28, type metadata accessor for KeySyncMetadata);
        }

        ++v58;
        v28 = v104;
        if (v41 == v58)
        {
          goto LABEL_15;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_31;
    }

LABEL_15:

    sub_101134218(v106, v26);
    v44 = 0;
    v28 = v10;
    v10 = v101;
    v45 = v95;
  }

  else
  {

    v44 = 1;
    v10 = v101;
    v26 = v102;
    v28 = v100;
    v45 = v95;
    v43 = v107;
  }

  (*(v13 + 56))(v26, v44, 1, v43);
  v46 = v96;
  sub_1000D2A70(v26, v96, &unk_1016C8FF0, &qword_101393148);
  if ((*(v13 + 48))(v46, 1, v43) == 1)
  {
    sub_10000B3A8(v26, &unk_1016C8FF0, &qword_101393148);
    v47 = v46;
    goto LABEL_19;
  }

  sub_101134218(v46, v10);
  sub_101134ADC(v10, v45, type metadata accessor for KeySyncMetadata);
  sub_10001F280(v45 + *(v43 + 24), v109);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    v51 = v91;
    *v91 = v108;
    v52 = *(v43 + 28);
    v53 = v98;
    v54 = *(v98 + 36);
    v55 = type metadata accessor for Date();
    (*(*(v55 - 8) + 16))(v51 + v54, v45 + v52, v55);
    sub_101134B44(v45, type metadata accessor for KeySyncMetadata);
    sub_101134B44(v10, type metadata accessor for KeySyncMetadata);
    sub_10000B3A8(v26, &unk_1016C8FF0, &qword_101393148);
    v56 = v99;
    sub_1000D2AD8(v51, v99, v92, v93);
    v50 = v53;
    v49 = v56;
    v48 = 0;
    return (*(v97 + 56))(v49, v48, 1, v50);
  }

  v60 = v88;
  v61 = v90;
  sub_1000BC4D4(v88, v90);
  sub_1000041A4(v89, v60, v61, &unk_1014092F8);
  swift_allocError();
  swift_willThrow();
  sub_101134B44(v45, type metadata accessor for KeySyncMetadata);
  if (qword_101695270 != -1)
  {
    goto LABEL_59;
  }

LABEL_31:
  v62 = type metadata accessor for Logger();
  sub_1000076D4(v62, qword_10177C6B8);
  sub_101134ADC(v10, v28, type metadata accessor for KeySyncMetadata);
  swift_errorRetain();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v65 = 136315650;
    if (v103 <= 3)
    {
      v75 = 0xE800000000000000;
      v76 = 0x6E776F6E6B6E752ELL;
      v77 = 0xEF64657461726170;
      v78 = 0x6553686374616C2ELL;
      if (v103 != 2)
      {
        v78 = 0xD00000000000001CLL;
        v77 = 0x800000010134B930;
      }

      if (v103)
      {
        v76 = 0x6E774F7261656E2ELL;
        v75 = 0xEA00000000007265;
      }

      if (v103 <= 1)
      {
        v73 = v76;
      }

      else
      {
        v73 = v78;
      }

      if (v103 <= 1)
      {
        v74 = v75;
      }

      else
      {
        v74 = v77;
      }
    }

    else
    {
      v67 = 0xEE00797261646E6FLL;
      v68 = 0x636553646C69772ELL;
      v69 = 0x736142746E69682ELL;
      v70 = 0xEA00000000006465;
      if (v103 != 7)
      {
        v69 = 0x67696C4179656B2ELL;
        v70 = 0xED0000746E656D6ELL;
      }

      if (v103 != 6)
      {
        v68 = v69;
        v67 = v70;
      }

      v71 = 0xD000000000000018;
      v72 = 0x800000010134B910;
      if (v103 != 4)
      {
        v71 = 0x697250646C69772ELL;
        v72 = 0xEC0000007972616DLL;
      }

      if (v103 <= 5)
      {
        v73 = v71;
      }

      else
      {
        v73 = v68;
      }

      if (v103 <= 5)
      {
        v74 = v72;
      }

      else
      {
        v74 = v67;
      }
    }

    v79 = v99;
    v80 = sub_1000136BC(v73, v74, v109);

    *(v65 + 4) = v80;
    *(v65 + 12) = 2082;
    v81 = sub_1009927F0();
    v82 = v28;
    v84 = v83;
    sub_101134B44(v82, type metadata accessor for KeySyncMetadata);
    v85 = sub_1000136BC(v81, v84, v109);

    *(v65 + 14) = v85;
    *(v65 + 22) = 2114;
    swift_errorRetain();
    v86 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 24) = v86;
    *v66 = v86;
    _os_log_impl(&_mh_execute_header, v63, v64, "Can't create data of %s type from %{public}s metadata! %{public}@", v65, 0x20u);
    sub_10000B3A8(v66, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_101134B44(v101, type metadata accessor for KeySyncMetadata);
    sub_10000B3A8(v102, &unk_1016C8FF0, &qword_101393148);
    v48 = 1;
    v49 = v79;
    goto LABEL_20;
  }

  sub_101134B44(v28, type metadata accessor for KeySyncMetadata);
  sub_101134B44(v10, type metadata accessor for KeySyncMetadata);
  v47 = v26;
LABEL_19:
  sub_10000B3A8(v47, &unk_1016C8FF0, &qword_101393148);
  v48 = 1;
  v49 = v99;
LABEL_20:
  v50 = v98;
  return (*(v97 + 56))(v49, v48, 1, v50);
}

uint64_t sub_1011318B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_101131980(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1011319B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for KeySyncData.CodingKeys(255, v13, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v10 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    v15 = 1;
    type metadata accessor for Date();
    sub_101134BBC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_101131BA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v35 = type metadata accessor for Date();
  v32 = *(v35 - 8);
  v7 = __chkstk_darwin(v35);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a2 - 8);
  __chkstk_darwin(v7);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeySyncData.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v41 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v41 - 8);
  __chkstk_darwin(v41);
  v12 = &v31 - v11;
  v39 = a3;
  v40 = a2;
  v14 = type metadata accessor for KeySyncData(0, a2, a3, v13);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  sub_1000035D0(a1, a1[3]);
  v18 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v31 = v15;
  v19 = v17;
  v42 = v14;
  v20 = v36;
  v21 = v37;
  v44 = 0;
  v22 = v38;
  v23 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(v21 + 32);
  v39 = v19;
  v24(v19, v22, v23);
  v43 = 1;
  sub_101134BBC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v34;
  v25 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v12, v41);
  v27 = v42;
  v28 = v39;
  (*(v32 + 32))(&v39[*(v42 + 36)], v26, v25);
  v29 = v31;
  (*(v31 + 16))(v33, v28, v27);
  sub_100007BAC(a1);
  return (*(v29 + 8))(v28, v27);
}

Swift::Int sub_101132050(uint64_t a1)
{
  Hasher.init(_seed:)();
  Message.MessageError.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1011320A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011318B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1011320D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10042AD9C();
  *a1 = result;
  return result;
}

uint64_t sub_101132104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_101132158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1011321E8()
{
  v27 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  __chkstk_darwin(v27);
  v2 = &v26 - v1;
  v26 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  __chkstk_darwin(v26);
  v4 = &v26 - v3;
  v5 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(183);
  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000010137BE90;
  String.append(_:)(v8);
  type metadata accessor for UUID();
  sub_101134BBC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0x800000010137BEB0;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  v11 = type metadata accessor for KeySyncSnapshot(0);
  sub_1000D2A70(v0 + v11[5], v7, &unk_1016AF8A0, &unk_10139D7C0);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000011;
  v13._object = 0x800000010137BED0;
  String.append(_:)(v13);
  sub_1000D2A70(v0 + v11[6], v7, &unk_1016AF8A0, &unk_10139D7C0);
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x800000010137BEF0;
  String.append(_:)(v15);
  sub_1000D2A70(v0 + v11[7], v4, &qword_1016C9040, &qword_1014090D0);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000017;
  v17._object = 0x800000010137BF10;
  String.append(_:)(v17);
  sub_1000D2A70(v0 + v11[8], v2, &qword_1016C9048, &qword_1014090D8);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x800000010137BF30;
  String.append(_:)(v19);
  sub_1000D2A70(v0 + v11[9], v7, &unk_1016AF8A0, &unk_10139D7C0);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x800000010137BF50;
  String.append(_:)(v21);
  sub_1000D2A70(v0 + v11[10], v7, &unk_1016AF8A0, &unk_10139D7C0);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v23._object = 0x800000010137BF70;
  v23._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v23);
  sub_1000D2A70(v0 + v11[11], v7, &unk_1016AF8A0, &unk_10139D7C0);
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  return v28;
}

uint64_t sub_101132634@<X0>(unint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, unint64_t *a4@<X8>)
{
  v24 = a3;
  v25 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v23[-v11];
  v13 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v23[-v14];
  v16 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  __chkstk_darwin(v16);
  v19 = &v23[-v18];
  if (a2)
  {
    v20 = *(v17 + 56);

    return v20(a4, 1, 1, v16);
  }

  else
  {
    v26 = v17;
    sub_10112CE20(v15);
    if ((*(v26 + 48))(v15, 1, v16) == 1)
    {
      sub_10000B3A8(v15, &unk_1016AF8A0, &unk_10139D7C0);
      return (*(v26 + 56))(a4, 1, 1, v16);
    }

    else
    {
      sub_1000D2AD8(v15, v19, &unk_1016C8FC0, &unk_10139D7D0);
      v22 = v25;
      Date.addingTimeInterval(_:)();
      if (v24)
      {
        Date.timeIntervalSince(_:)();
      }

      Date.addingTimeInterval(_:)();
      (*(v7 + 8))(v12, v6);
      sub_10000B3A8(v19, &unk_1016C8FC0, &unk_10139D7D0);
      *a4 = v22;
      (*(v7 + 32))(a4 + *(v16 + 36), v10, v6);
      return (*(v26 + 56))(a4, 0, 1, v16);
    }
  }
}

uint64_t sub_1011329B0(void *a1)
{
  v3 = sub_1000BC4D4(&unk_1016C9290, &qword_101409380);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_101134A88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_101134BBC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9[1] = type metadata accessor for KeySyncSnapshot(0);
    v16 = 1;
    v7 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    sub_1000041A4(&qword_1016C92A0, &unk_1016C8FC0, &unk_10139D7D0, &unk_101409138);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9[0] = v7;
    v14 = 3;
    sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
    sub_1000041A4(&qword_1016C92A8, &qword_1016C9018, &qword_1014090B8, &unk_101409138);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = 4;
    sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
    sub_1000041A4(qword_1016C92B0, &qword_1016C8FE8, &qword_1014090A8, &unk_101409138);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_101132D9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  __chkstk_darwin(v3 - 8);
  v50 = v44 - v4;
  v5 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  __chkstk_darwin(v5 - 8);
  v51 = v44 - v6;
  v7 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v8 = __chkstk_darwin(v7 - 8);
  v47 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v48 = v44 - v11;
  v12 = __chkstk_darwin(v10);
  v49 = v44 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = v44 - v15;
  __chkstk_darwin(v14);
  v17 = (v44 - v16);
  v18 = type metadata accessor for UUID();
  v53 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016C9260, &qword_101409378);
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v22 = v44 - v21;
  v23 = type metadata accessor for KeySyncSnapshot(0);
  __chkstk_darwin(v23);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101134A88();
  v57 = v22;
  v26 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_100007BAC(a1);
  }

  v58 = v17;
  v27 = v25;
  v66 = 0;
  sub_101134BBC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = v54;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v18;
  v30 = *(v53 + 32);
  v45 = v27;
  v30(v27, v28, v18);
  v31 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v65 = 1;
  v32 = sub_1000041A4(&qword_1016C9278, &unk_1016C8FC0, &unk_10139D7D0, &unk_101409160);
  v33 = v58;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44[3] = v29;
  sub_1000D2AD8(v33, v45 + v23[5], &unk_1016AF8A0, &unk_10139D7C0);
  v64 = 2;
  v34 = v52;
  v54 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v58 = a1;
  v44[1] = v32;
  v44[2] = v31;
  sub_1000D2AD8(v34, v45 + v23[6], &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
  v63 = 3;
  sub_1000041A4(&qword_1016C9280, &qword_1016C9018, &qword_1014090B8, &unk_101409160);
  v35 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v23;
  v37 = v23[7];
  v38 = v45;
  sub_1000D2AD8(v35, v45 + v37, &qword_1016C9040, &qword_1014090D0);
  sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v62 = 4;
  sub_1000041A4(&qword_1016C9288, &qword_1016C8FE8, &qword_1014090A8, &unk_101409160);
  v39 = v50;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v39, v38 + v36[8], &qword_1016C9048, &qword_1014090D8);
  v61 = 5;
  v40 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v40, v38 + v36[9], &unk_1016AF8A0, &unk_10139D7C0);
  v60 = 6;
  v41 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v41, v38 + v36[10], &unk_1016AF8A0, &unk_10139D7C0);
  v59 = 7;
  v42 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v55 + 8))(v57, v56);
  sub_1000D2AD8(v42, v38 + v36[11], &unk_1016AF8A0, &unk_10139D7C0);
  sub_101134ADC(v38, v46, type metadata accessor for KeySyncSnapshot);
  sub_100007BAC(v58);
  return sub_101134B44(v38, type metadata accessor for KeySyncSnapshot);
}

unint64_t sub_1011337C0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x697463656E6E6F63;
    if (v1 != 6)
    {
      v5 = 0x6E67696C4179656BLL;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656E774F7261656ELL;
    v3 = 0x4B6465686374616CLL;
    if (v1 != 2)
    {
      v3 = 0x6D697250646C6977;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1011338F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101134D70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10113391C(uint64_t a1)
{
  v2 = sub_101134A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101133958(uint64_t a1)
{
  v2 = sub_101134A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011339C8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_101133A9C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100008BB8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100008BB8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_101133CB4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v7 = -1 << *(a4 + 32);
    a1 = v6 & ~v7;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v8 = ~v7;
      sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        a1 = (a1 + 1) & v8;
        if (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_101133F28(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v15 = *(v12 + 16);
  v13 = *(v12 + 72) * a3;
  v15(v9, v10 + v13, v11);
  v14 = *(a6 + 56) + v13;

  return (v15)(a2, v14, v11);
}

_OWORD *sub_101134030(_OWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(a6 + 56);
  v10 = *(*(a6 + 48) + 16 * a3);
  *result = v10;
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * a3, v9);

  return sub_100017D5C(v10, *(&v10 + 1));
}

uint64_t sub_101134114@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v15 = v4;
    v16 = v5;
    v6 = *(a3 + 56) + 72 * result;
    v13[0] = *v6;
    v8 = *(v6 + 32);
    v7 = *(v6 + 48);
    v9 = *(v6 + 16);
    v14 = *(v6 + 64);
    v13[2] = v8;
    v13[3] = v7;
    v13[1] = v9;
    v10 = *(v6 + 48);
    *(a4 + 32) = *(v6 + 32);
    *(a4 + 48) = v10;
    *(a4 + 64) = *(v6 + 64);
    v11 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v11;
    return sub_1009871D4(v13, v12);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1011341C4()
{
  result = qword_1016C8FE0;
  if (!qword_1016C8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8FE0);
  }

  return result;
}

uint64_t sub_101134218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10113427C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10113431C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016C9178, &unk_1016C8FC0, &unk_10139D7D0);
    if (v2 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016C9180, &qword_1016C9018, &qword_1014090B8);
      if (v3 <= 0x3F)
      {
        sub_1002ECE54(319, &unk_1016C9188, &qword_1016C8FE8, &qword_1014090A8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_101134420(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1011344A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10113470C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

unint64_t sub_101134A18()
{
  result = qword_1016C9250;
  if (!qword_1016C9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9250);
  }

  return result;
}

unint64_t sub_101134A88()
{
  result = qword_1016C9268;
  if (!qword_1016C9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9268);
  }

  return result;
}

uint64_t sub_101134ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101134B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101134BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_101134C18()
{
  result = qword_1016C9340;
  if (!qword_1016C9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9340);
  }

  return result;
}

unint64_t sub_101134CC4()
{
  result = qword_1016C9348;
  if (!qword_1016C9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9348);
  }

  return result;
}

unint64_t sub_101134D1C()
{
  result = qword_1016C9350;
  if (!qword_1016C9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9350);
  }

  return result;
}

uint64_t sub_101134D70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E774F7261656ELL && a2 == 0xEC00000079654B72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B6465686374616CLL && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D697250646C6977 && a2 == 0xEE0079654B797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010137BF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010137BFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xED000079654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E67696C4179656BLL && a2 == 0xEC000000746E656DLL)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_101135038(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1000128F8(v1);
      return;
    }

LABEL_17:
    v12 = [v11 altDSID];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100A5B2CC(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100A5B2CC((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1011352FC(uint64_t a1)
{
  v98 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v100 = *(v5 - 8);
  __chkstk_darwin(v5);
  v99 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessagingMessageContext(0);
  v95 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v96 = v8;
  v97 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS.QoSClass();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date();
  v104 = *(v107 - 8);
  v10 = __chkstk_darwin(v107);
  v110 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v88 - v12;
  v113 = type metadata accessor for UUID();
  v105 = *(v113 - 8);
  __chkstk_darwin(v113);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = __chkstk_darwin(v15 - 8);
  v109 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v1;
  v24 = *(v1 + 168);
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_101694940 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v89 = v4;
    v90 = v5;
    v91 = v2;
    OS_dispatch_queue.sync<A>(execute:)();
    v103 = sub_101073C70(aBlock);

    v112 = *(v102 + 144);
    v26 = sub_100007F54();
    v2 = v26;
    v27 = v26[2];
    v28 = _swiftEmptyArrayStorage;
    if (!v27)
    {
      break;
    }

    v4 = 0;
    v5 = (v26 + 4);
    v29 = (v105 + 1);
    v111 = v19;
    v108 = (v105 + 1);
    while (v4 < *(v2 + 16))
    {
      sub_10001F280(v5, &aBlock);
      v31 = v116;
      v30 = v117;
      sub_1000035D0(&aBlock, v116);
      (*(*(*(v30 + 1) + 8) + 32))(v31);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v32 = sub_100035730(v14, 0, 0);
      v33 = sub_10003ABC0(v19, v14, v32, 1);

      (*v29)(v14, v113);
      sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
      if (v33)
      {
        sub_100031694(&aBlock, &v119);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v28[2] + 1, 1);
          v28 = v122;
        }

        v35 = v2;
        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          sub_100025B1C((v36 > 1), v37 + 1, 1);
        }

        v38 = v120;
        v39 = v121;
        v40 = sub_10015049C(&v119, v120);
        __chkstk_darwin(v40);
        v42 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v43 + 16))(v42);
        sub_1006252D4(v37, v42, &v122, v38, v39);
        sub_100007BAC(&v119);
        v28 = v122;
        v2 = v35;
        v19 = v111;
        v29 = v108;
      }

      else
      {
        sub_100007BAC(&aBlock);
      }

      ++v4;
      v5 += 40;
      if (v27 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_16:

  v44 = v28[2];
  if (v44)
  {
    v88 = v28;
    v45 = (v28 + 4);
    v111 = (v105 + 1);
    v105 = (v104 + 6);
    v103 = (v104 + 4);
    v108 = (v104 + 1);
    v104 += 2;
    v46 = _swiftEmptyDictionarySingleton;
    do
    {
      sub_10001F280(v45, &aBlock);
      v51 = v116;
      v52 = v117;
      sub_1000035D0(&aBlock, v116);
      v53 = *(*(v52 + 1) + 8);
      v54 = *(v53 + 32);

      v54(v51, v53);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v55 = sub_100035730(v14, 0, 0);
      v56 = v109;
      sub_10003ABC0(v109, v14, v55, 1);
      v57 = v56;

      v58 = *v111;
      (*v111)(v14, v113);
      v59 = *v105;
      v60 = v56;
      v61 = v107;
      v62 = (*v105)(v60, 1, v107);
      v63 = v106;
      if (v62 == 1)
      {
        v64 = v110;
        static Date.trustedNow.getter(v110);
        Date.addingTimeInterval(_:)();
        v65 = v64;
        v66 = v109;
        (*v108)(v65, v61);
        if (v59(v66, 1, v61) != 1)
        {
          sub_10000B3A8(v66, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*v103)(v106, v57, v61);
      }

      v48 = v116;
      v47 = v117;
      sub_1000035D0(&aBlock, v116);
      (*(*(*(v47 + 1) + 8) + 32))(v48);
      v49 = v110;
      (*v104)(v110, v63, v61);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v46;
      sub_100FFD694(v49, v14, v50);

      v58(v14, v113);
      (*v108)(v63, v61);
      v46 = v119;
      sub_100007BAC(&aBlock);
      v45 += 40;
      --v44;
    }

    while (v44);
  }

  else
  {

    v46 = _swiftEmptyDictionarySingleton;
  }

  v67 = static os_log_type_t.info.getter();
  v68 = v91;
  v69 = v101;
  v70 = v89;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v71 = qword_10177C378;
  if (os_log_type_enabled(qword_10177C378, v67))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&aBlock = v73;
    *v72 = 136315138;
    sub_100004114(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v74 = Dictionary.description.getter();
    v76 = sub_1000136BC(v74, v75, &aBlock);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v71, v67, "handleNearbyBeaconsRequest response: %s", v72, 0xCu);
    sub_100007BAC(v73);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v77 = v93;
  v78 = v92;
  v79 = v94;
  (*(v93 + 104))(v92, enum case for DispatchQoS.QoSClass.default(_:), v94);
  v80 = static OS_dispatch_queue.global(qos:)();
  (*(v77 + 8))(v78, v79);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = v97;
  sub_101149F2C(v98, v97, type metadata accessor for MessagingMessageContext);
  v83 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v46;
  *(v84 + 24) = v81;
  sub_101149EC4(v82, v84 + v83, type metadata accessor for MessagingMessageContext);
  v117 = sub_10114827C;
  v118 = v84;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v115 = sub_100006684;
  v116 = &unk_101668760;
  v85 = _Block_copy(&aBlock);

  v86 = v99;
  static DispatchQoS.unspecified.getter();
  v119 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v85);

  (*(v69 + 8))(v70, v68);
  (*(v100 + 8))(v86, v90);
}

uint64_t sub_101136210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[0] = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v19[1] = *(v4 + 176);
  (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v13 + 32))(v16 + v15, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[0];
  aBlock[4] = sub_1011499C4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668CB0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v8, v6);
  (*(v20 + 8))(v11, v21);
}

uint64_t sub_10113659C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a1;
  v35 = a7;
  v39 = a5;
  v40 = a6;
  v33 = a4;
  v38 = type metadata accessor for SharedBeaconRecord(0);
  v31 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = v9;
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138B360;
  v12 = type metadata accessor for MessagingMessageContext(0);
  v13 = a2 + *(v12 + 24);
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  *(v11 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v11 + 64) = v16;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v17 = (a2 + *(v12 + 48));
  v18 = *v17;
  v19 = v17[1];
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v18;
  *(v11 + 80) = v19;
  sub_101149F2C(a3, v10, type metadata accessor for SharedBeaconRecord);

  v20 = String.init<A>(describing:)();
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v16;
  v21 = v36;
  *(v11 + 112) = v20;
  *(v11 + 120) = v22;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v21, "Incoming sharedBeacon (family sharing) from %@ (%@): %@", 55, 2, v11);

  if (sub_1011483FC(a2, v39, v40, a3))
  {
    v23 = v33;
    sub_101149F2C(a3, v10, type metadata accessor for SharedBeaconRecord);
    v24 = a3;
    v25 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v26 = (v32 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v34;
    *(v27 + 16) = v23;
    *(v27 + 24) = v28;
    sub_101149EC4(v10, v27 + v25, type metadata accessor for SharedBeaconRecord);
    *(v27 + v26) = v35;

    sub_1006DF8EC(v24, 0, sub_1011485AC, v27);
  }

  else
  {
    v30 = static os_log_type_t.error.getter();
    return os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v21, "Ignoring share not from a family member!", 40, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_1011368C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a1;
  v148 = a5;
  v153 = 0;
  v8 = type metadata accessor for Date();
  v141 = *(v8 - 8);
  v142 = v8;
  v9 = __chkstk_darwin(v8);
  v139 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = &v132 - v11;
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = __chkstk_darwin(v12 - 8);
  v137 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  *&v146 = &v132 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v132 - v18;
  __chkstk_darwin(v17);
  v145 = &v132 - v20;
  v21 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v21);
  v23 = (&v132 - v22);
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v149 = *(v24 - 8);
  v150 = v24;
  v25 = __chkstk_darwin(v24);
  v138 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v136 = &v132 - v28;
  v29 = __chkstk_darwin(v27);
  v143 = &v132 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v132 - v32;
  v134 = v34;
  __chkstk_darwin(v31);
  v36 = &v132 - v35;
  v144 = a2;
  v152 = *(a2 + 144);
  v135 = a3;
  Transaction.capture()();
  v151 = v36;
  sub_101149F2C(a4, v36, type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v147, v23, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_101149EC4(v23, v33, type metadata accessor for SharedBeaconRecord);
    v42 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v43 = qword_10177C378;
    v147 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    v146 = xmmword_101385D80;
    *(v44 + 16) = xmmword_101385D80;
    sub_101149F2C(v33, v143, type metadata accessor for SharedBeaconRecord);
    v39 = v150;
    v45 = String.init<A>(describing:)();
    v47 = v46;
    *(v44 + 56) = &type metadata for String;
    v138 = sub_100008C00();
    *(v44 + 64) = v138;
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Successfully saved received SharedBeaconRecord: %@", 50, 2, v44);

    v48 = v145;
    sub_101149F2C(v33, v145, type metadata accessor for SharedBeaconRecord);
    v49 = v149;
    (*(v149 + 56))(v48, 0, 1, v39);
    sub_1000D2A70(v48, v19, &unk_101698C30, &unk_101392630);
    v50 = (*(v49 + 48))(v19, 1, v39);
    v51 = v152;
    v52 = v136;
    if (v50 == 1)
    {
      sub_10000B3A8(v19, &unk_101698C30, &unk_101392630);
      v53 = v151;
      v54 = v148;
    }

    else
    {
      v137 = v43;
      v133 = v33;
      sub_101149EC4(v19, v136, type metadata accessor for SharedBeaconRecord);
      v55 = v144;
      v56 = *(v144 + 320);
      v57 = &v151[*(v39 + 20)];
      v58 = v52;
      v59 = v140;
      v60 = static Date.trustedNow.getter(v140);
      __chkstk_darwin(v60);
      *(&v132 - 4) = v56;
      *(&v132 - 24) = 0;
      *(&v132 - 2) = v57;
      v19 = v139;
      v61 = v142;
      v62 = v153;
      OS_dispatch_queue.sync<A>(execute:)();
      v153 = v62;
      Date.timeIntervalSince(_:)();
      v64 = v63;
      v39 = v141 + 8;
      v65 = *(v141 + 8);
      v65(v19, v61);
      v65(v59, v61);
      if (v64 <= 60.0)
      {
        sub_101149F94(v58, type metadata accessor for SharedBeaconRecord);
        v54 = v148;
        v33 = v133;
        v43 = v137;
        v53 = v151;
      }

      else
      {
        static Date.trustedNow.getter(v59);
        sub_1010B1D04(v57, v59, 0);
        v65(v59, v61);
        v53 = v151;
        v66 = v143;
        sub_101149F2C(v151, v143, type metadata accessor for SharedBeaconRecord);
        v67 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v135;
        *(v68 + 24) = v55;
        sub_101149EC4(v66, v68 + v67, type metadata accessor for SharedBeaconRecord);

        sub_10055F5E4(v58, sub_10114A048, v68);

        sub_101149F94(v58, type metadata accessor for SharedBeaconRecord);
        v54 = v148;
        v33 = v133;
        v43 = v137;
      }

      v51 = v152;
    }

    v37 = *(v54 + 16);
    if (!v37)
    {
      goto LABEL_37;
    }

    v112 = v54;
    v113 = v153;
    v114 = sub_1013131C0(1uLL, v37, v112);
    if (v113)
    {
      v117 = static os_log_type_t.error.getter();
      v118 = swift_allocObject();
      *(v118 + 16) = v146;
      v155[0] = v113;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v119 = String.init<A>(describing:)();
      v120 = v138;
      *(v118 + 56) = &type metadata for String;
      *(v118 + 64) = v120;
      *(v118 + 32) = v119;
      *(v118 + 40) = v121;
      os_log(_:dso:log:_:_:)(v117, &_mh_execute_header, v43, "Error saving keys: %@", 21, 2, v118);

      sub_10000B3A8(v145, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v122 = v114;
      v123 = v115;
      v124 = v116;
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v125 = v155[0];
      v126 = sub_1012E9F5C(v53, 1, v122, v123, v124, 0, 0, 0);
      sub_1012F0B9C(v53 + *(v150 + 20), v126, v155);

      v127 = v155[0];
      v128 = type metadata accessor for Transaction();
      v153 = &v132;
      v155[0] = v127;
      __chkstk_darwin(v128);
      *(&v132 - 6) = v125;
      *(&v132 - 5) = v53;
      *(&v132 - 4) = 0;
      *(&v132 - 3) = 0;
      *(&v132 - 2) = v155;

      static Transaction.named<A>(_:with:)();
      sub_10000B3A8(v145, &unk_101698C30, &unk_101392630);
    }

    sub_101149F94(v53, type metadata accessor for SharedBeaconRecord);
    sub_100A8306C(2u);
    v129 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v129, &_mh_execute_header, v43, "Auto-accepting share from family member", 39, 2, _swiftEmptyArrayStorage);
    return sub_101149F94(v33, type metadata accessor for SharedBeaconRecord);
  }

  v155[0] = *v23;
  v19 = v155[0];
  swift_errorRetain();
  v37 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = v144;
    goto LABEL_15;
  }

  v38 = v154;
  v155[0] = v154;
  sub_100004114(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
  _BridgedStoredNSError.code.getter();
  v39 = v144;
  if (v154 != 14)
  {

LABEL_15:
    v51 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  v40 = static os_log_type_t.default.getter();
  v41 = v150;
  if (qword_101695030 != -1)
  {
    v131 = v40;
    swift_once();
    v40 = v131;
    v41 = v150;
  }

  v147 = qword_10177C378;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_10177C378, "record already modified in CloudKit -- assuming another device is handing the share", 83, 2, _swiftEmptyArrayStorage);

  while (1)
  {
    v74 = v149;
    v75 = v146;
    (*(v149 + 56))(v146, 1, 1, v41);
    v76 = v75;
    v77 = v137;
    sub_1000D2A70(v76, v137, &unk_101698C30, &unk_101392630);
    v78 = (*(v74 + 48))(v77, 1, v41);
    v79 = v138;
    if (v78 == 1)
    {
      sub_10000B3A8(v77, &unk_101698C30, &unk_101392630);
      v80 = v148;
    }

    else
    {
      v144 = v37;
      v145 = v19;
      sub_101149EC4(v77, v138, type metadata accessor for SharedBeaconRecord);
      v81 = *(v39 + 320);
      v82 = &v151[*(v41 + 20)];
      v83 = v140;
      v84 = static Date.trustedNow.getter(v140);
      __chkstk_darwin(v84);
      *(&v132 - 4) = v81;
      *(&v132 - 24) = 0;
      *(&v132 - 2) = v82;
      v85 = v139;
      v86 = v142;
      v87 = v153;
      OS_dispatch_queue.sync<A>(execute:)();
      v153 = v87;
      Date.timeIntervalSince(_:)();
      v89 = v88;
      v90 = *(v141 + 8);
      v90(v85, v86);
      v90(v83, v86);
      if (v89 > 60.0)
      {
        static Date.trustedNow.getter(v83);
        sub_1010B1D04(v82, v83, 0);
        v90(v83, v86);
        v91 = v143;
        sub_101149F2C(v151, v143, type metadata accessor for SharedBeaconRecord);
        v92 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = v135;
        *(v93 + 24) = v39;
        sub_101149EC4(v91, v93 + v92, type metadata accessor for SharedBeaconRecord);

        sub_10055F5E4(v79, sub_101148664, v93);
      }

      sub_101149F94(v79, type metadata accessor for SharedBeaconRecord);
      v80 = v148;
      v37 = v144;
      v19 = v145;
    }

    v51 = *(v80 + 16);
    if (v51)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_16:
    v69 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_101385D80;
    v155[0] = v19;
    swift_errorRetain();
    v71 = String.init<A>(describing:)();
    v73 = v72;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = sub_100008C00();
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    v147 = v69;
    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v69, "Failed to save received SharedBeaconRecord: %@", 46, 2, v70);

    v41 = v150;
  }

  v94 = v80;
  v95 = v153;
  v96 = sub_1013131C0(1uLL, v51, v94);
  if (v95)
  {
    v99 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_101385D80;
    v155[0] = v95;
    swift_errorRetain();
    v101 = String.init<A>(describing:)();
    v103 = v102;
    *(v100 + 56) = &type metadata for String;
    *(v100 + 64) = sub_100008C00();
    *(v100 + 32) = v101;
    *(v100 + 40) = v103;
    os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, v147, "Error saving keys: %@", 21, 2, v100);

    sub_10000B3A8(v146, &unk_101698C30, &unk_101392630);
    v33 = v151;
  }

  else
  {
    v104 = v96;
    v105 = v97;
    v106 = v98;
    type metadata accessor for BeaconKeyManager(0);
    v107 = v151;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v108 = v155[0];
    v109 = sub_1012E9F5C(v107, 1, v104, v105, v106, 0, 0, 0);
    sub_1012F0B9C(v107 + *(v150 + 20), v109, v155);

    v110 = v155[0];
    v111 = type metadata accessor for Transaction();
    v155[0] = v110;
    __chkstk_darwin(v111);
    *(&v132 - 6) = v108;
    *(&v132 - 5) = v107;
    *(&v132 - 4) = 0;
    *(&v132 - 3) = 0;
    *(&v132 - 2) = v155;

    static Transaction.named<A>(_:with:)();

    sub_10000B3A8(v146, &unk_101698C30, &unk_101392630);

    v33 = v107;
  }

  return sub_101149F94(v33, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_101137AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a4;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v11);
  v13 = (v28 - v12);
  Transaction.capture()();
  PassthroughSubject.send(_:)();
  sub_1000D2A70(a1, v13, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v28[1] = v14;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Failed to auto-accept share: %@", 31, 2, v17);

    sub_1010B22E4(v28[0] + *(v5 + 20), 0);
  }

  else
  {
    sub_101149EC4(v13, v10, type metadata accessor for SharedBeaconRecord);
    v22 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_101149F2C(v10, v8, type metadata accessor for SharedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Successfully auto-accepted %@", 29, 2, v24, v28[0]);

    return sub_101149F94(v10, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101137E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a1;
  v52 = a6;
  v53 = a7;
  v49 = a5;
  v51 = a4;
  v55 = a3;
  v44 = type metadata accessor for UUID();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v8;
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v46 = v10;
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v42 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138B360;
  v13 = type metadata accessor for MessagingMessageContext(0);
  v14 = a2 + *(v13 + 24);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  *(v12 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v12 + 64) = v17;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  v18 = (a2 + *(v13 + 48));
  v19 = *v18;
  v20 = v18[1];
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  v21 = v55;
  sub_101149F2C(v55, v11, type metadata accessor for SharedBeaconRecord);

  v22 = v11;
  v41 = v11;
  v23 = String.init<A>(describing:)();
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v17;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v42, "Incoming sharedBeacon (Family Accessory) from %@ (%@): %@", 57, 2, v12);

  v25 = v50;
  v26 = v48;
  v27 = v44;
  (*(v50 + 16))(v48, v49, v44);
  sub_101149F2C(v21, v22, type metadata accessor for SharedBeaconRecord);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v45 + 80) + v31 + 8) & ~*(v45 + 80);
  v33 = swift_allocObject();
  v34 = v27;
  v35 = v51;
  *(v33 + 16) = v51;
  (*(v25 + 32))(v33 + v28, v26, v34);
  v36 = v54;
  *(v33 + v29) = v54;
  v37 = v53;
  *(v33 + v30) = v52;
  *(v33 + v31) = v37;
  sub_101149EC4(v41, v33 + v32, type metadata accessor for SharedBeaconRecord);
  v38 = *(v35 + 144);
  swift_retain_n();

  sub_100B1C66C(v55, 0, v38, v36, sub_101148960, v33);
}

char *sub_101138278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v116 = a7;
  v123 = a6;
  v124 = a3;
  v132 = 0;
  *&v133 = a5;
  v121 = a4;
  v125 = a2;
  v131 = a1;
  v134 = type metadata accessor for FamilyCryptoKeysV2(0);
  v122 = *(v134 - 8);
  v7 = __chkstk_darwin(v134);
  v130 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v135 = &v115 - v10;
  v11 = __chkstk_darwin(v9);
  v126 = (&v115 - v12);
  v13 = __chkstk_darwin(v11);
  v127 = (&v115 - v14);
  v15 = __chkstk_darwin(v13);
  v128 = (&v115 - v16);
  __chkstk_darwin(v15);
  v129 = (&v115 - v17);
  v120 = type metadata accessor for UUID();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = v18;
  v118 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v115 - v24;
  v26 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v26 - 8);
  v28 = &v115 - v27;
  v29 = type metadata accessor for SharedBeaconRecord(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v131, v28, &unk_101698C30, &unk_101392630);
  v33 = *(v30 + 48);
  v115 = v29;
  if (v33(v28, 1, v29) == 1)
  {
    sub_10000B3A8(v28, &unk_101698C30, &unk_101392630);
    v34 = v129;
    v35 = v132;
  }

  else
  {
    sub_101149EC4(v28, v32, type metadata accessor for SharedBeaconRecord);
    v36 = *(v125 + 320);
    v37 = static Date.trustedNow.getter(v25);
    __chkstk_darwin(v37);
    *(&v115 - 4) = v36;
    *(&v115 - 24) = 0;
    *(&v115 - 2) = v124;
    v35 = v132;
    OS_dispatch_queue.sync<A>(execute:)();
    Date.timeIntervalSince(_:)();
    v39 = v38;
    v40 = *(v20 + 8);
    v40(v23, v19);
    v40(v25, v19);
    if (v39 > 60.0)
    {
      static Date.trustedNow.getter(v25);
      v41 = v124;
      sub_1010B1D04(v124, v25, 0);
      v40(v25, v19);
      v42 = v119;
      v43 = v118;
      v44 = v120;
      (*(v119 + 16))(v118, v41, v120);
      v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v46 = swift_allocObject();
      v47 = v125;
      *(v46 + 16) = v121;
      *(v46 + 24) = v47;
      (*(v42 + 32))(v46 + v45, v43, v44);

      sub_10055B758(v32, sub_101148978, v46);
    }

    sub_101149F94(v32, type metadata accessor for SharedBeaconRecord);
    v34 = v129;
  }

  v48 = *(v133 + 16);
  if (!v48)
  {
    v56 = static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      return os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, qword_10177C378, "No primaryKeys!", 15, 2, _swiftEmptyArrayStorage);
    }

LABEL_55:
    v113 = v56;
    swift_once();
    v56 = v113;
    return os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, qword_10177C378, "No primaryKeys!", 15, 2, _swiftEmptyArrayStorage);
  }

  v49 = v122;
  v50 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v51 = v133 + v50;
  sub_101149F2C(v133 + v50, v34, type metadata accessor for FamilyCryptoKeysV2);
  v52 = *(v49 + 72);
  v53 = v128;
  sub_101149F2C(v51 + v52 * (v48 - 1), v128, type metadata accessor for FamilyCryptoKeysV2);
  v54 = *(v123 + 16);
  if (v54)
  {
    v55 = v123 + v50;
    sub_101149F2C(v55, v127, type metadata accessor for FamilyCryptoKeysV2);
    v131 = v52;
    v56 = sub_101149F2C(v55 + (v54 - 1) * v52, v126, type metadata accessor for FamilyCryptoKeysV2);
    v57 = *v34;
    if (*v53 >= *v34)
    {
      v123 = *v53;
      v124 = v57;
      v121 = v55;
      v122 = v54;
      v136[0] = _swiftEmptyArrayStorage;
      sub_101124C34(0, v48, 0);
      v58 = v136[0];
      v133 = xmmword_10138BBF0;
      do
      {
        sub_101149F2C(v51, v135, type metadata accessor for FamilyCryptoKeysV2);
        v59 = type metadata accessor for __DataStorage();
        swift_allocObject();
        v60 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter())
          {
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v56))
            {
              goto LABEL_52;
            }
          }

          swift_allocObject();
          v61 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v60 = v61;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_57;
        }

        v63 = result;
        v56 = __DataStorage._offset.getter();
        v64 = -v56;
        if (__OFSUB__(0, v56))
        {
          __break(1u);
          goto LABEL_51;
        }

        v132 = v59;
        v65 = __DataStorage._length.getter();
        if (v65 >= 32)
        {
          v66 = 32;
        }

        else
        {
          v66 = v65;
        }

        bzero(&v63[v64], v66);

        v67 = v135;
        v68 = (v135 + *(v134 + 24));
        v70 = *v68;
        v69 = v68[1];
        sub_100017D5C(*v68, v69);
        sub_101149F94(v67, type metadata accessor for FamilyCryptoKeysV2);
        v136[0] = v58;
        v72 = *(v58 + 16);
        v71 = *(v58 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_101124C34((v71 > 1), v72 + 1, 1);
          v58 = v136[0];
        }

        *(v58 + 16) = v72 + 1;
        v73 = v58 + 48 * v72;
        *(v73 + 32) = 0x2000000000;
        *(v73 + 40) = v60 | 0x4000000000000000;
        *(v73 + 48) = v70;
        *(v73 + 56) = v69;
        *(v73 + 64) = v133;
        v51 += v131;
        --v48;
      }

      while (v48);
      result = sub_1013131C0(v124, v123, v58);
      if (v35)
      {
LABEL_46:
        sub_101149F94(v126, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v127, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v128, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v129, type metadata accessor for FamilyCryptoKeysV2);
        v99 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v100 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_101385D80;
        v136[0] = v35;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v102 = String.init<A>(describing:)();
        v104 = v103;
        *(v101 + 56) = &type metadata for String;
        *(v101 + 64) = sub_100008C00();
        *(v101 + 32) = v102;
        *(v101 + 40) = v104;
        os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, v100, "Error saving keys: %@", 21, 2, v101);
      }

      v124 = 0;
      v119 = v74;
      v118 = result;
      v135 = v75;
      v76 = *v127;
      v123 = *v126;
      v120 = v76;
      if (v123 < v76)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v136[0] = _swiftEmptyArrayStorage;
      v77 = v122;
      sub_101124C34(0, v122, 0);
      v78 = v136[0];
      v79 = v131;
      v80 = v121;
      while (1)
      {
        sub_101149F2C(v80, v130, type metadata accessor for FamilyCryptoKeysV2);
        swift_allocObject();
        v81 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter())
          {
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v56))
            {
              goto LABEL_53;
            }
          }

          swift_allocObject();
          v82 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v81 = v82;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_58;
        }

        v83 = result;
        v56 = __DataStorage._offset.getter();
        v84 = -v56;
        if (__OFSUB__(0, v56))
        {
          break;
        }

        v85 = __DataStorage._length.getter();
        if (v85 >= 32)
        {
          v86 = 32;
        }

        else
        {
          v86 = v85;
        }

        bzero(&v83[v84], v86);

        v87 = v130;
        v88 = (v130 + *(v134 + 24));
        v89 = *v88;
        v90 = v88[1];
        sub_100017D5C(*v88, v90);
        sub_101149F94(v87, type metadata accessor for FamilyCryptoKeysV2);
        v136[0] = v78;
        v92 = *(v78 + 16);
        v91 = *(v78 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_101124C34((v91 > 1), v92 + 1, 1);
          v78 = v136[0];
        }

        *(v78 + 16) = v92 + 1;
        v93 = v78 + 48 * v92;
        *(v93 + 32) = 0x2000000000;
        *(v93 + 40) = v81 | 0x4000000000000000;
        *(v93 + 48) = v89;
        *(v93 + 56) = v90;
        *(v93 + 64) = v133;
        v80 += v79;
        if (!--v77)
        {
          v35 = v124;
          v96 = sub_1013131C0(v120, v123, v78);
          if (v35)
          {

            goto LABEL_46;
          }

          v105 = v96;
          v106 = v97;
          v107 = v98;
          type metadata accessor for BeaconKeyManager(0);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v108 = v136[0];
          v109 = v116;
          v110 = sub_1012E9F5C(v116, 1, v118, v119, v135, v105, v106, v107);
          sub_1012F0B9C(v109 + *(v115 + 20), v110, v136);

          v111 = v136[0];
          v112 = type metadata accessor for Transaction();
          v136[0] = v111;
          __chkstk_darwin(v112);
          *(&v115 - 6) = v108;
          *(&v115 - 5) = v109;
          *(&v115 - 4) = 0;
          *(&v115 - 3) = 0;
          *(&v115 - 2) = v136;

          static Transaction.named<A>(_:with:)();

          sub_100A8306C(2u);
          sub_101149F94(v126, type metadata accessor for FamilyCryptoKeysV2);
          sub_101149F94(v127, type metadata accessor for FamilyCryptoKeysV2);
          sub_101149F94(v128, type metadata accessor for FamilyCryptoKeysV2);
          v95 = v129;
          return sub_101149F94(v95, type metadata accessor for FamilyCryptoKeysV2);
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  v94 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    v114 = v94;
    swift_once();
    v94 = v114;
  }

  os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, qword_10177C378, "No secondaryKeys!", 17, 2, _swiftEmptyArrayStorage);
  sub_101149F94(v128, type metadata accessor for FamilyCryptoKeysV2);
  v95 = v34;
  return sub_101149F94(v95, type metadata accessor for FamilyCryptoKeysV2);
}

uint64_t sub_10113918C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v37 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v14);
  v16 = (&v36 - v15);
  Transaction.capture()();
  sub_1000D2A70(a1, v16, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v41 = *v16;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v18 = v40;
      v41 = v40;
      sub_100004114(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if (v40 == 14)
      {
        v19 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          v35 = v19;
          swift_once();
          v19 = v35;
        }

        os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C378, "record already modified in CloudKit -- assuming another device is handing the share", 83, 2, _swiftEmptyArrayStorage);

LABEL_14:
        (*(v5 + 56))(v13, 1, 1, v37);
        v39(v13);

        return sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
      }
    }

    v29 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    v41 = v17;
    swift_errorRetain();
    v32 = String.init<A>(describing:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Failed to save received SharedBeaconRecord (Family Accessory): %@", 65, 2, v31);

    goto LABEL_14;
  }

  sub_101149EC4(v16, v10, type metadata accessor for SharedBeaconRecord);
  v20 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_101149F2C(v10, v8, type metadata accessor for SharedBeaconRecord);
  v23 = v37;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Successfully saved received SharedBeaconRecord (Family Accessory): %@", 69, 2, v22);

  v27 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v21, "Auto-accepting family Accessory share", 37, 2, _swiftEmptyArrayStorage);
  sub_101149F2C(v10, v13, type metadata accessor for SharedBeaconRecord);
  (*(v5 + 56))(v13, 0, 1, v23);
  v39(v13);
  sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
  return sub_101149F94(v10, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10113974C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a1;
  v52 = a6;
  v53 = a7;
  v49 = a5;
  v51 = a4;
  v55 = a3;
  v44 = type metadata accessor for UUID();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v8;
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v46 = v10;
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v42 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138B360;
  v13 = type metadata accessor for MessagingMessageContext(0);
  v14 = a2 + *(v13 + 24);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  *(v12 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v12 + 64) = v17;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  v18 = (a2 + *(v13 + 48));
  v19 = *v18;
  v20 = v18[1];
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  v21 = v55;
  sub_101149F2C(v55, v11, type metadata accessor for SharedBeaconRecord);

  v22 = v11;
  v41 = v11;
  v23 = String.init<A>(describing:)();
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v17;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v42, "Incoming sharedBeacon (Family AirPods) from %@ (%@): %@", 55, 2, v12);

  v25 = v50;
  v26 = v48;
  v27 = v44;
  (*(v50 + 16))(v48, v49, v44);
  sub_101149F2C(v21, v22, type metadata accessor for SharedBeaconRecord);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v45 + 80) + v31 + 8) & ~*(v45 + 80);
  v33 = swift_allocObject();
  v34 = v27;
  v35 = v51;
  *(v33 + 16) = v51;
  (*(v25 + 32))(v33 + v28, v26, v34);
  v36 = v54;
  *(v33 + v29) = v54;
  v37 = v53;
  *(v33 + v30) = v52;
  *(v33 + v31) = v37;
  sub_101149EC4(v41, v33 + v32, type metadata accessor for SharedBeaconRecord);
  v38 = *(v35 + 144);
  swift_retain_n();

  sub_100B1CE18(v55, 0, v38, v36, sub_101148CA4, v33);
}

char *sub_101139B4C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v95 = a7;
  v104 = a6;
  v109 = a5;
  v100 = a4;
  v102 = a3;
  v105 = a2;
  v108 = a1;
  v112 = 0;
  v7 = type metadata accessor for FamilyCryptoKeysV1(0);
  v103 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v106 = (&v94 - v12);
  v13 = __chkstk_darwin(v11);
  v107 = (&v94 - v14);
  v15 = __chkstk_darwin(v13);
  v110 = (&v94 - v16);
  __chkstk_darwin(v15);
  v111 = (&v94 - v17);
  v99 = type metadata accessor for UUID();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v18;
  v97 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v101 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v94 - v23;
  v25 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v25 - 8);
  v27 = &v94 - v26;
  v28 = type metadata accessor for SharedBeaconRecord(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v108, v27, &unk_101698C30, &unk_101392630);
  v32 = *(v29 + 48);
  v108 = v28;
  if (v32(v27, 1, v28) == 1)
  {
    sub_10000B3A8(v27, &unk_101698C30, &unk_101392630);
  }

  else
  {
    sub_101149EC4(v27, v31, type metadata accessor for SharedBeaconRecord);
    v33 = *(v105 + 320);
    v34 = static Date.trustedNow.getter(v24);
    __chkstk_darwin(v34);
    *(&v94 - 4) = v33;
    *(&v94 - 24) = 0;
    v35 = v102;
    *(&v94 - 2) = v102;
    v36 = v112;
    OS_dispatch_queue.sync<A>(execute:)();
    v112 = v36;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v101 + 8);
    v39(v22, v19);
    v39(v24, v19);
    if (v38 > 60.0)
    {
      static Date.trustedNow.getter(v24);
      sub_1010B1D04(v35, v24, 0);
      v39(v24, v19);
      v40 = v98;
      v41 = v97;
      v42 = v99;
      (*(v98 + 16))(v97, v35, v99);
      v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v44 = swift_allocObject();
      v45 = v105;
      *(v44 + 16) = v100;
      *(v44 + 24) = v45;
      (*(v40 + 32))(v44 + v43, v41, v42);

      sub_10055B758(v31, sub_101148EA4, v44);
    }

    sub_101149F94(v31, type metadata accessor for SharedBeaconRecord);
  }

  v47 = v110;
  v46 = v111;
  v48 = *(v109 + 16);
  if (!v48)
  {
    v55 = static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      return os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, qword_10177C378, "No primaryKeys!", 15, 2, _swiftEmptyArrayStorage);
    }

LABEL_30:
    v92 = v55;
    swift_once();
    v55 = v92;
    return os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, qword_10177C378, "No primaryKeys!", 15, 2, _swiftEmptyArrayStorage);
  }

  v49 = v103;
  v50 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v51 = v109 + v50;
  sub_101149F2C(v109 + v50, v111, type metadata accessor for FamilyCryptoKeysV1);
  v52 = *(v49 + 72);
  sub_101149F2C(v51 + v52 * (v48 - 1), v47, type metadata accessor for FamilyCryptoKeysV1);
  v53 = *(v104 + 16);
  if (!v53)
  {
    v74 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v93 = v74;
      swift_once();
      v74 = v93;
    }

    os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, qword_10177C378, "No secondaryKeys!", 17, 2, _swiftEmptyArrayStorage);
    sub_101149F94(v47, type metadata accessor for FamilyCryptoKeysV1);
    v91 = v46;
    return sub_101149F94(v91, type metadata accessor for FamilyCryptoKeysV1);
  }

  v54 = v104 + v50;
  sub_101149F2C(v104 + v50, v107, type metadata accessor for FamilyCryptoKeysV1);
  v55 = sub_101149F2C(v54 + (v53 - 1) * v52, v106, type metadata accessor for FamilyCryptoKeysV1);
  v56 = *v46;
  if (*v47 < *v46)
  {
    __break(1u);
    goto LABEL_30;
  }

  v104 = *v47;
  v109 = v56;
  *&v115[0] = _swiftEmptyArrayStorage;
  sub_101124C34(0, v48, 0);
  v57 = *&v115[0];
  do
  {
    sub_101149F2C(v51, v10, type metadata accessor for FamilyCryptoKeysV1);
    sub_100DE5F74(v114);
    sub_101149F94(v10, type metadata accessor for FamilyCryptoKeysV1);
    *&v115[0] = v57;
    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_101124C34((v58 > 1), v59 + 1, 1);
      v57 = *&v115[0];
    }

    *(v57 + 16) = v59 + 1;
    v60 = (v57 + 48 * v59);
    v61 = v114[0];
    v62 = v114[2];
    v60[3] = v114[1];
    v60[4] = v62;
    v60[2] = v61;
    v51 += v52;
    --v48;
  }

  while (v48);
  v63 = v112;
  result = sub_1013131C0(v109, v104, v57);
  if (v63)
  {
    sub_101149F94(v106, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v107, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v110, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v111, type metadata accessor for FamilyCryptoKeysV1);
    v75 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v76 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_101385D80;
    v113[0] = v63;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v78 = String.init<A>(describing:)();
    v80 = v79;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100008C00();
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v76, "Error saving keys: %@", 21, 2, v77);
  }

  else
  {
    v103 = v65;
    v102 = result;
    v112 = v66;
    v67 = *v107;
    v109 = *v106;
    v104 = v67;
    if (v109 >= v67)
    {
      v113[0] = _swiftEmptyArrayStorage;
      sub_101124C34(0, v53, 0);
      v68 = v113[0];
      do
      {
        sub_101149F2C(v54, v10, type metadata accessor for FamilyCryptoKeysV1);
        sub_100DE5F74(v115);
        sub_101149F94(v10, type metadata accessor for FamilyCryptoKeysV1);
        v113[0] = v68;
        v70 = *(v68 + 16);
        v69 = *(v68 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_101124C34((v69 > 1), v70 + 1, 1);
          v68 = v113[0];
        }

        *(v68 + 16) = v70 + 1;
        v71 = (v68 + 48 * v70);
        v72 = v115[0];
        v73 = v115[2];
        v71[3] = v115[1];
        v71[4] = v73;
        v71[2] = v72;
        v54 += v52;
        --v53;
      }

      while (v53);
      v81 = sub_1013131C0(v104, v109, v68);
      v83 = v82;
      v85 = v84;
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v86 = v113[0];
      v87 = v95;
      v88 = sub_1012E9F5C(v95, 1, v102, v103, v112, v81, v83, v85);
      sub_1012F0B9C(v87 + *(v108 + 20), v88, v113);

      v89 = v113[0];
      v90 = type metadata accessor for Transaction();
      v113[0] = v89;
      __chkstk_darwin(v90);
      *(&v94 - 6) = v86;
      *(&v94 - 5) = v87;
      *(&v94 - 4) = 0;
      *(&v94 - 3) = 0;
      *(&v94 - 2) = v113;

      static Transaction.named<A>(_:with:)();

      sub_100A8306C(2u);
      sub_101149F94(v106, type metadata accessor for FamilyCryptoKeysV1);
      sub_101149F94(v107, type metadata accessor for FamilyCryptoKeysV1);
      sub_101149F94(v110, type metadata accessor for FamilyCryptoKeysV1);
      v91 = v111;
      return sub_101149F94(v91, type metadata accessor for FamilyCryptoKeysV1);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10113A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7, uint64_t a8)
{
  v32 = a7;
  v33 = a8;
  v34 = a5;
  v35 = a6;
  v36 = a4;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v15);
  v17 = (&v32 - v16);
  Transaction.capture()();
  PassthroughSubject.send(_:)();
  sub_1000D2A70(a1, v17, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v20 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v37 = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, v32, v33, 2, v21);

    sub_1010B22E4(v36, 0);
  }

  else
  {
    sub_101149EC4(v17, v14, type metadata accessor for SharedBeaconRecord);
    v26 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    sub_101149F2C(v14, v12, type metadata accessor for SharedBeaconRecord);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, v34, v35, 2, v28);

    return sub_101149F94(v14, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10113ABB8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v37 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v14);
  v16 = (&v36 - v15);
  Transaction.capture()();
  sub_1000D2A70(a1, v16, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v41 = *v16;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v18 = v40;
      v41 = v40;
      sub_100004114(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if (v40 == 14)
      {
        v19 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          v35 = v19;
          swift_once();
          v19 = v35;
        }

        os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C378, "record already modified in CloudKit -- assuming another device is handing the share", 83, 2, _swiftEmptyArrayStorage);

LABEL_14:
        (*(v5 + 56))(v13, 1, 1, v37);
        v39(v13);

        return sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
      }
    }

    v29 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    v41 = v17;
    swift_errorRetain();
    v32 = String.init<A>(describing:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Failed to save received SharedBeaconRecord (Family AirPods): %@", 63, 2, v31);

    goto LABEL_14;
  }

  sub_101149EC4(v16, v10, type metadata accessor for SharedBeaconRecord);
  v20 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_101149F2C(v10, v8, type metadata accessor for SharedBeaconRecord);
  v23 = v37;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Successfully saved received SharedBeaconRecord (Family AirPods): %@", 67, 2, v22);

  v27 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v21, "Auto-accepting Family AirPods share", 35, 2, _swiftEmptyArrayStorage);
  sub_101149F2C(v10, v13, type metadata accessor for SharedBeaconRecord);
  (*(v5 + 56))(v13, 0, 1, v23);
  v39(v13);
  sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
  return sub_101149F94(v10, type metadata accessor for SharedBeaconRecord);
}

void sub_10113B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v140 = a4;
  v141 = a3;
  v127 = a1;
  v139 = type metadata accessor for MessagingMessageContext(0);
  v124 = *(v139 - 8);
  __chkstk_darwin(v139);
  v125 = v5;
  v126 = v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  __chkstk_darwin(v6 - 8);
  v132 = v121 - v7;
  v8 = type metadata accessor for ShareRecord(0);
  v133 = *(v8 - 8);
  v134 = v8;
  v9 = __chkstk_darwin(v8);
  v130 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v10;
  __chkstk_darwin(v9);
  v131 = (v121 - v11);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v12 - 8);
  v14 = v121 - v13;
  v15 = type metadata accessor for DirectorySequence();
  v136 = *(v15 - 8);
  v137 = v15;
  __chkstk_darwin(v15);
  v148 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for URL();
  *&v146 = *(v135 - 8);
  v17 = __chkstk_darwin(v135);
  v19 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (v121 - v20);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v123 = v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = v121 - v27;
  v122 = v29;
  __chkstk_darwin(v26);
  v31 = v121 - v30;
  v32 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) + 20);
  v143 = v23;
  v33 = *(v23 + 16);
  v33(v31, a2 + v32, v22);
  v145 = v22;
  v121[1] = v23 + 16;
  v121[0] = v33;
  v33(v28, a2, v22);
  v129 = *(v141 + 144);
  v147 = *(v129 + 168);
  v34 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v144 = v31;
  v35 = v135;
  sub_1000076D4(v135, qword_10177A518);
  v142 = v28;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v34);
  v151 = _swiftEmptyArrayStorage;
  v150 = _swiftEmptyArrayStorage;
  v36 = [objc_opt_self() defaultManager];
  v138 = v21;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v37 = v146;
  v38 = *(v146 + 48);
  v39 = v35;
  if (v38(v14, 1, v35) != 1)
  {
    v40 = *(v37 + 32);
    do
    {
      v40(v19, v14, v39);
      v41 = objc_autoreleasePoolPush();
      v42 = v149;
      sub_1005FF9CC(v19, v147, &v151, &v150);
      v149 = v42;
      if (v42)
      {
        goto LABEL_27;
      }

      objc_autoreleasePoolPop(v41);
      (*(v37 + 8))(v19, v39);
      DirectorySequence.next()();
    }

    while (v38(v14, 1, v39) != 1);
  }

  (*(v136 + 8))(v148, v137);
  v43 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v44 = static OS_os_log.default.getter();
  v45 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10138BBE0;
  v47 = v151;
  v48 = v151[2];
  *(v46 + 56) = &type metadata for Int;
  *(v46 + 64) = &protocol witness table for Int;
  *(v46 + 32) = v48;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v49 = v138;
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  *(v46 + 96) = &type metadata for String;
  v148 = sub_100008C00();
  *(v46 + 104) = v148;
  *(v46 + 72) = v50;
  *(v46 + 80) = v52;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Found %i records at %@", 22, 2, v46);

  (*(v146 + 8))(v49, v39);

  v53 = v140 + *(v139 + 24);
  v55 = *(v53 + 8);
  v54 = *(v53 + 16);
  v56 = String._bridgeToObjectiveC()();
  v57 = [v56 _stripPotentialTokenURIWithToken:0];

  if (!v57)
  {

    v71 = static os_log_type_t.error.getter();
    v62 = v144;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v72 = qword_10177C378;
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_101385D80;
    v74 = v148;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = v74;
    *(v73 + 32) = v55;
    *(v73 + 40) = v54;

    os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v72, "No fromID for %@", 16, 2, v73);
    goto LABEL_15;
  }

  v147 = v45;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  __chkstk_darwin(v61);
  v62 = v144;
  v121[-2] = v144;
  v63 = v132;
  v64 = v149;
  sub_1012BD72C(sub_1011490F0, v47, v132);

  if ((*(v133 + 48))(v63, 1, v134) == 1)
  {

    sub_10000B3A8(v63, &qword_1016A4780, &qword_1013B34F0);
    v65 = static os_log_type_t.error.getter();
    v66 = v148;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v67 = qword_10177C378;
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_101385D80;
    v69 = UUID.uuidString.getter();
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = v66;
    *(v68 + 32) = v69;
    *(v68 + 40) = v70;
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v67, "No share record found for share identifier %@", 45, 2, v68);
LABEL_15:

    v75 = *(v143 + 8);
    v76 = v145;
    v75(v142, v145);
LABEL_26:
    v75(v62, v76);
    return;
  }

  v139 = v58;
  v149 = v64;
  v77 = v131;
  sub_101149EC4(v63, v131, type metadata accessor for ShareRecord);
  v78 = static os_log_type_t.default.getter();
  v79 = v148;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v80 = qword_10177C378;
  v81 = swift_allocObject();
  v146 = xmmword_101385D80;
  *(v81 + 16) = xmmword_101385D80;
  sub_101149F2C(v77, v130, type metadata accessor for ShareRecord);
  v82 = v134;
  v83 = String.init<A>(describing:)();
  *(v81 + 56) = &type metadata for String;
  *(v81 + 64) = v79;
  *(v81 + 32) = v83;
  *(v81 + 40) = v84;
  os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v80, "Found shareRecord: %@", 21, 2, v81);

  v85 = (v77 + *(v82 + 40));
  v86 = v77;
  v87 = *v85;
  v88 = v85[1];
  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {

    v90 = static os_log_type_t.default.getter();
    v91 = swift_allocObject();
    *(v91 + 16) = v146;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = v79;
    *(v91 + 32) = v87;
    *(v91 + 40) = v88;

    os_log(_:dso:log:_:_:)(v90, &_mh_execute_header, v80, "Ignoring since this share has already been accepted (correlationIdentifier: %@)", 79, 2, v91);

    v75 = *(v143 + 8);
    v76 = v145;
    v75(v142, v145);
    sub_101149F94(v86, type metadata accessor for ShareRecord);
    goto LABEL_26;
  }

  v92 = v126;
  sub_101149F2C(v140, v126, type metadata accessor for MessagingMessageContext);
  v93 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v140 = swift_allocObject();
  sub_101149EC4(v92, v140 + v93, type metadata accessor for MessagingMessageContext);
  v94 = v123;
  v95 = v145;
  (v121[0])(v123, v142, v145);
  v96 = v143;
  v97 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v98 = (v122 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  v100 = v127;
  *(v99 + 16) = v141;
  *(v99 + 24) = v100;
  (*(v96 + 32))(v99 + v97, v94, v95);
  v138 = v99;
  v101 = (v99 + v98);
  *v101 = v139;
  v101[1] = v60;

  v102 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v103 = qword_10177C380;
  v104 = swift_allocObject();
  *(v104 + 16) = v146;
  v105 = v148;
  *(v104 + 56) = &type metadata for String;
  *(v104 + 64) = v105;
  *(v104 + 32) = 0x65736C6166;
  *(v104 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v103, "Modify record. Disk First? (%@)", 31, 2, v104);

  v41 = objc_autoreleasePoolPush();
  v106 = v131;
  v107 = v149;
  sub_101121490(v131);
  v148 = v108;
  v109 = v130;
  if (!v107)
  {
    objc_autoreleasePoolPop(v41);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v149 = 0;
    sub_101149F2C(v106, v109, type metadata accessor for ShareRecord);
    v110 = *(v133 + 80);
    v111 = v128;
    v112 = swift_allocObject();
    v113 = v140;
    *(v112 + 16) = sub_10114A04C;
    *(v112 + 24) = v113;
    v147 = type metadata accessor for ShareRecord;
    sub_101149EC4(v109, v112 + ((v110 + 32) & ~v110), type metadata accessor for ShareRecord);

    sub_100FDCA40(v148, sub_10114A050, v112);

    v114 = swift_allocObject();
    v115 = v106;
    v116 = v138;
    *(v114 + 16) = sub_101149410;
    *(v114 + 24) = v116;

    Future.addFailure(block:)();

    sub_101149F2C(v115, v109, type metadata accessor for ShareRecord);
    v117 = (v110 + 16) & ~v110;
    v118 = (v111 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    sub_101149EC4(v109, v119 + v117, v147);
    *(v119 + v118) = v129;
    v120 = (v119 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v120 = sub_101149410;
    v120[1] = v116;

    Future.addSuccess(block:)();

    v75 = *(v143 + 8);
    v76 = v145;
    v75(v142, v145);
    sub_101149F94(v131, type metadata accessor for ShareRecord);
    v62 = v144;
    goto LABEL_26;
  }

LABEL_27:
  objc_autoreleasePoolPop(v41);
  __break(1u);
}

uint64_t sub_10113C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v48 = a4;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v47 = &v42 - v8;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShareRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v17);
  v19 = (&v42 - v18);
  Transaction.capture()();
  sub_1000D2A70(a1, v19, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v49 = v20;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Accept share failed (Accessory Family): %@", 42, 2, v23);
  }

  else
  {
    sub_101149EC4(v19, v16, type metadata accessor for ShareRecord);
    v28 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_101149F2C(v16, v14, type metadata accessor for ShareRecord);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    v34 = sub_100008C00();
    *(v30 + 64) = v34;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Accept share succeeded: %@", 26, 2, v30);

    sub_100A8306C(0);
    v35 = v47;
    sub_100AA33AC(v48, v47);
    if ((*(v45 + 48))(v35, 1, v46) == 1)
    {
      sub_101149F94(v16, type metadata accessor for ShareRecord);
      return sub_10000B3A8(v35, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v36 = v35;
      v37 = v44;
      sub_101149EC4(v36, v44, type metadata accessor for OwnedBeaconRecord);
      if (sub_1000322C8())
      {
        v38 = static os_log_type_t.default.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10138BBE0;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v34;
        *(v39 + 32) = v42;
        *(v39 + 40) = v43;

        v40 = UUID.uuidString.getter();
        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v34;
        *(v39 + 72) = v40;
        *(v39 + 80) = v41;
        os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v29, "Updating all other sharees since %@ accepted sharing beacon: %@", 63, 2, v39);
      }

      sub_101149F94(v37, type metadata accessor for OwnedBeaconRecord);
      return sub_101149F94(v16, type metadata accessor for ShareRecord);
    }
  }
}

void sub_10113C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v132 = a3;
  v119 = a1;
  v5 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  __chkstk_darwin(v5 - 8);
  v122 = &v112 - v6;
  v7 = type metadata accessor for ShareRecord(0);
  v125 = *(v7 - 8);
  v126 = v7;
  v8 = __chkstk_darwin(v7);
  v120 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v118 = &v112 - v11;
  v117 = v12;
  __chkstk_darwin(v10);
  v124 = &v112 - v13;
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v14 - 8);
  v16 = &v112 - v15;
  v17 = type metadata accessor for DirectorySequence();
  v128 = *(v17 - 8);
  v129 = v17;
  __chkstk_darwin(v17);
  v139 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for URL();
  v137 = *(v127 - 8);
  v19 = __chkstk_darwin(v127);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v112 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v123 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v121 = &v112 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v112 - v31;
  v115 = v33;
  __chkstk_darwin(v30);
  v35 = &v112 - v34;
  v36 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) + 20);
  v135 = v25;
  v37 = *(v25 + 16);
  v133 = v35;
  v37(v35, a2 + v36, v24);
  v136 = v24;
  v114 = v25 + 16;
  v113 = v37;
  v37(v32, a2, v24);
  v116 = *(v132 + 144);
  v138 = *(v116 + 168);
  v38 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v39 = v127;
  sub_1000076D4(v127, qword_10177A518);
  v134 = v32;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v38);
  v142 = _swiftEmptyArrayStorage;
  v141 = _swiftEmptyArrayStorage;
  v40 = [objc_opt_self() defaultManager];
  *&v130 = v23;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v41 = v137;
  v42 = *(v137 + 48);
  v43 = v39;
  if (v42(v16, 1, v39) == 1)
  {
LABEL_7:
    (*(v128 + 8))(v139, v129);
    v47 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v48 = static OS_os_log.default.getter();
    v49 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    v51 = v142;
    v52 = v142[2];
    *(v50 + 56) = &type metadata for Int;
    *(v50 + 64) = &protocol witness table for Int;
    *(v50 + 32) = v52;
    sub_100004114(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v53 = v130;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    *(v50 + 96) = &type metadata for String;
    v139 = sub_100008C00();
    *(v50 + 104) = v139;
    *(v50 + 72) = v54;
    *(v50 + 80) = v56;
    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Found %i records at %@", 22, 2, v50);

    (*(v137 + 8))(v53, v43);

    v57 = v131 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    v59 = *(v57 + 8);
    v58 = *(v57 + 16);
    v60 = String._bridgeToObjectiveC()();
    v61 = [v60 _stripPotentialTokenURIWithToken:0];

    if (v61)
    {
      v62 = v49;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v64;

      __chkstk_darwin(v65);
      v66 = v133;
      *(&v112 - 2) = v133;
      v67 = v122;
      v68 = v140;
      sub_1012BD72C(sub_10114A060, v51, v122);

      if ((*(v125 + 48))(v67, 1, v126) == 1)
      {

        sub_10000B3A8(v67, &qword_1016A4780, &qword_1013B34F0);
        v69 = static os_log_type_t.error.getter();
        v70 = v134;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v71 = qword_10177C378;
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_101385D80;
        v73 = UUID.uuidString.getter();
        v74 = v139;
        *(v72 + 56) = &type metadata for String;
        *(v72 + 64) = v74;
        *(v72 + 32) = v73;
        *(v72 + 40) = v75;
        os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v71, "No share record found for shareIdentifier %@", 44, 2, v72);

        v76 = v70;
      }

      else
      {
        v137 = v63;
        v140 = v68;
        v81 = v124;
        sub_101149EC4(v67, v124, type metadata accessor for ShareRecord);
        v82 = static os_log_type_t.error.getter();
        v83 = v134;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v84 = qword_10177C378;
        v131 = v62;
        v85 = swift_allocObject();
        v130 = xmmword_101385D80;
        *(v85 + 16) = xmmword_101385D80;
        v86 = v118;
        sub_101149F2C(v81, v118, type metadata accessor for ShareRecord);
        v87 = String.init<A>(describing:)();
        v88 = v139;
        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = v88;
        *(v85 + 32) = v87;
        *(v85 + 40) = v89;
        os_log(_:dso:log:_:_:)(v82, &_mh_execute_header, v84, "Found shareRecord: %@", 21, 2, v85);

        sub_101149F2C(v81, v86, type metadata accessor for ShareRecord);
        v90 = v66;
        v91 = v136;
        v92 = v113;
        v113(v121, v90, v136);
        v92(v123, v83, v91);
        v93 = (*(v125 + 80) + 24) & ~*(v125 + 80);
        v94 = (v117 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
        v95 = v135;
        v96 = *(v135 + 80);
        v97 = (v96 + v94 + 8) & ~v96;
        v98 = (v115 + v96 + v97) & ~v96;
        v129 = (v115 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v99 = swift_allocObject();
        *(v99 + 16) = v119;
        sub_101149EC4(v86, v99 + v93, type metadata accessor for ShareRecord);
        *(v99 + v94) = v132;
        v100 = *(v95 + 32);
        v100(v99 + v97, v121, v91);
        v100(v99 + v98, v123, v91);
        v101 = (v99 + v129);
        v102 = v138;
        *v101 = v137;
        v101[1] = v102;

        v103 = static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v104 = qword_10177C380;
        v105 = swift_allocObject();
        *(v105 + 16) = v130;
        v106 = v124;
        sub_101149F2C(v124, v120, type metadata accessor for ShareRecord);
        v107 = String.init<A>(describing:)();
        v108 = v139;
        *(v105 + 56) = &type metadata for String;
        *(v105 + 64) = v108;
        *(v105 + 32) = v107;
        *(v105 + 40) = v109;
        os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v104, "Attempting to remove: %@", 24, 2, v105);

        sub_100B0F7D8(v106, v116, sub_1011497D4, v99);

        sub_101149F94(v106, type metadata accessor for ShareRecord);
        v66 = v133;
        v76 = v134;
      }
    }

    else
    {

      v77 = static os_log_type_t.error.getter();
      v66 = v133;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v78 = qword_10177C378;
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_101385D80;
      v80 = v139;
      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v80;
      *(v79 + 32) = v59;
      *(v79 + 40) = v58;

      os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v78, "No fromID for %@", 16, 2, v79);

      v76 = v134;
    }

    v110 = v136;
    v111 = *(v135 + 8);
    v111(v76, v136);
    v111(v66, v110);
  }

  else
  {
    v44 = *(v41 + 32);
    while (1)
    {
      v44(v21, v16, v43);
      v45 = objc_autoreleasePoolPush();
      v46 = v140;
      sub_1005FF9CC(v21, v138, &v142, &v141);
      v140 = v46;
      if (v46)
      {
        break;
      }

      objc_autoreleasePoolPop(v45);
      (*(v41 + 8))(v21, v43);
      DirectorySequence.next()();
      if (v42(v16, 1, v43) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v45);
    __break(1u);
  }
}

uint64_t sub_10113D5E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v45 = a5;
  v46 = a6;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = v41 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    v42 = v16;
    v20 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C378;
    v41[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    sub_101149F2C(a3, v19, type metadata accessor for ShareRecord);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v27 = v21;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Successfully deleted shareRecord %@", 35, 2, v22);

    sub_100A8306C(0);
    sub_1010B22E4(v45, 0);
    sub_100025020(v46, v47);
    if (v47[3])
    {
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v28 = swift_dynamicCast();
      (*(v14 + 56))(v12, v28 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v29 = v42;
        sub_101149EC4(v12, v42, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          v30 = static os_log_type_t.default.getter();
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_10138BBE0;
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = v26;
          *(v31 + 32) = v43;
          *(v31 + 40) = v44;

          v32 = UUID.uuidString.getter();
          *(v31 + 96) = &type metadata for String;
          *(v31 + 104) = v26;
          *(v31 + 72) = v32;
          *(v31 + 80) = v33;
          os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v27, "Updating all other sharees since %@ declined sharing: %@", 56, 2, v31);
        }

        return sub_101149F94(v29, type metadata accessor for OwnedBeaconRecord);
      }
    }

    else
    {
      sub_10000B3A8(v47, &qword_101696920, &unk_10138B200);
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
  }

  v35 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  sub_101149F2C(a3, v19, type metadata accessor for ShareRecord);
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_100008C00();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "Failed to delete shareRecord %@", 31, 2, v37);
}

uint64_t sub_10113DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v65 = a4;
  v55 = a1;
  v64 = type metadata accessor for UUID();
  v54 = *(v64 - 8);
  __chkstk_darwin(v64);
  v53 = v5;
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v63 = type metadata accessor for SharedBeaconRecord(0);
  v61 = *(v63 - 8);
  v9 = __chkstk_darwin(v63);
  v51 = v10;
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v51 - v11;
  v66 = dispatch_group_create();
  LODWORD(v60) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C378;
  v57 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138B360;
  v14 = type metadata accessor for MessagingMessageContext(0);
  v15 = a2 + *(v14 + 24);
  v17 = *(v15 + 8);
  v16 = *(v15 + 16);
  *(v13 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v13 + 64) = v18;
  *(v13 + 32) = v17;
  *(v13 + 40) = v16;
  v19 = *(v14 + 48);
  v56 = a2;
  v20 = (a2 + v19);
  v21 = *v20;
  v22 = v20[1];
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v21;
  *(v13 + 80) = v22;
  sub_100004114(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23 = v12;

  v24 = v62;
  v25 = v64;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v18;
  *(v13 + 112) = v26;
  *(v13 + 120) = v27;
  os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v23, "Incoming unshareBeacon from %@ (%@): %@", 39, 2, v13);

  v60 = *(v65 + 144);
  sub_100AA42BC(v24, v8);
  v28 = v61;
  v29 = v24;
  if ((*(v61 + 48))(v8, 1, v63) == 1)
  {
    sub_10000B3A8(v8, &unk_101698C30, &unk_101392630);
    v30 = static os_log_type_t.default.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    v32 = UUID.uuidString.getter();
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v18;
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v23, "No shared beacon with identifier: %@", 36, 2, v31);
  }

  else
  {
    v35 = v59;
    sub_101149EC4(v8, v59, type metadata accessor for SharedBeaconRecord);
    if (sub_100582460(v56, v35))
    {
      v57 = v23;
      dispatch_group_enter(v66);
      v36 = v52;
      sub_101149F2C(v35, v52, type metadata accessor for SharedBeaconRecord);
      v37 = v54;
      (*(v54 + 16))(v58, v29, v25);
      v38 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v39 = (v51 + *(v37 + 80) + v38) & ~*(v37 + 80);
      v40 = (v53 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = v35;
      v42 = swift_allocObject();
      v43 = v66;
      *(v42 + 16) = v55;
      *(v42 + 24) = v43;
      sub_101149EC4(v36, v42 + v38, type metadata accessor for SharedBeaconRecord);
      v44 = v42 + v39;
      v45 = v65;
      (*(v37 + 32))(v44, v58, v64);
      *(v42 + v40) = v45;

      v46 = v43;

      sub_100DDDDF4(v41, sub_101148F58, v42);
      v47 = v63;

      OS_dispatch_group.wait()();
      if (*(v41 + v47[11]) == -1 && *(v41 + v47[12]) == -1)
      {
        PassthroughSubject.send(_:)();
      }

      else
      {
        v48 = static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v57, "PLACEHOLDER: Handle incoming explicit unshare", 45, 2, _swiftEmptyArrayStorage);
        sub_10113E3D8(v41 + v47[5]);
      }

      v49 = v41;
    }

    else
    {
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v23, "Ignoring unshare request since correlationIdentifier does not match", 67, 2, _swiftEmptyArrayStorage);

      v49 = v35;
    }

    return sub_101149F94(v49, type metadata accessor for SharedBeaconRecord);
  }
}

void sub_10113E168(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v7 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    sub_101149F2C(a4, v9, type metadata accessor for SharedBeaconRecord);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Failed to remove shared beacon: %@", 34, 2, v12);
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Successfully removed shared beacon: %@", 38, 2, v18);

    sub_100A8306C(0);
  }

  dispatch_group_leave(a3);
}

void sub_10113E3D8(uint64_t a1)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 144);
  v7 = sub_10002F740();
  v32 = a1;
  v8 = sub_10002EBE8(sub_10114905C, v31, v7);
  v9 = v8[2];
  if (v9)
  {
    v10 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10138BBE0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v16 = v8[2];
    *(v12 + 96) = &type metadata for Int;
    *(v12 + 104) = &protocol witness table for Int;
    *(v12 + 72) = v16;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "clearAllIgnoredRecords for shared beacon: %@. ignoredRecords count %d.", 70, 2, v12);

    v17 = *(v4 + 80);
    v29 = v8;
    v18 = v8 + ((v17 + 32) & ~v17);
    v19 = *(v4 + 72);
    do
    {
      sub_101149F2C(v18, v6, type metadata accessor for WildModeAssociationRecord);
      v20 = *(v30 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for URL();
      v22 = sub_1000076D4(v21, qword_10177A8D0);
      v23 = __chkstk_darwin(v22);
      *(&v29 - 4) = v20;
      *(&v29 - 3) = v6;
      *(&v29 - 2) = v23;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101149F94(v6, type metadata accessor for WildModeAssociationRecord);
      v18 += v19;
      --v9;
    }

    while (v9);

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BA08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      _os_log_impl(&_mh_execute_header, v25, v26, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v27, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(0);
    if (v28)
    {
    }

    sub_100A8AF58();
  }

  else
  {
  }
}

uint64_t sub_10113E7C4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(type metadata accessor for WildModeAssociationRecord(0) + 20);
  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_1000D2A70(v26 + v15, v9, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v9[v16], &qword_1016980D0, &unk_10138F3B0);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) != 1)
  {
    v19 = v25;
    sub_1000D2A70(v9, v25, &qword_1016980D0, &unk_10138F3B0);
    if (v17(&v9[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v9[v16], v3);
      sub_100004114(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      v21(v19, v3);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v18 & 1;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v19, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  if (v17(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v18 = 0;
    return v18 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v18 = 1;
  return v18 & 1;
}

void sub_10113EBC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v121 = a4;
  v122 = a3;
  v109 = a1;
  v112 = type metadata accessor for UUID();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v106 = v5;
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for MessagingMessageContext(0);
  v103 = *(v120 - 8);
  __chkstk_darwin(v120);
  v104 = v6;
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ShareRecord(0);
  v125 = *(v117 - 8);
  v7 = __chkstk_darwin(v117);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  *&v126 = &v102 - v11;
  v12 = __chkstk_darwin(v10);
  v114 = &v102 - v13;
  v110 = v14;
  __chkstk_darwin(v12);
  v16 = (&v102 - v15);
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v17 - 8);
  v19 = &v102 - v18;
  v123 = type metadata accessor for DirectorySequence();
  v118 = *(v123 - 8);
  __chkstk_darwin(v123);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v124 = *(v22 - 1);
  v23 = __chkstk_darwin(v22);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v102 - v26;
  v108 = a2;
  v113 = *(a2 + 144);
  v127 = *(v113 + 168);
  v28 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_37:
    swift_once();
  }

  v115 = v9;
  v116 = v16;
  sub_1000076D4(v22, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v28);
  v131 = _swiftEmptyArrayStorage;
  v130 = _swiftEmptyArrayStorage;
  v29 = [objc_opt_self() defaultManager];
  v119 = v27;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v128 = v21;
  DirectorySequence.next()();
  v30 = v124;
  v31 = *(v124 + 48);
  if (v31(v19, 1, v22) != 1)
  {
    v32 = *(v30 + 32);
    while (1)
    {
      v32(v25, v19, v22);
      v33 = objc_autoreleasePoolPush();
      v34 = v129;
      sub_1005FF9CC(v25, v127, &v131, &v130);
      v129 = v34;
      if (v34)
      {
        break;
      }

      objc_autoreleasePoolPop(v33);
      (*(v30 + 8))(v25, v22);
      DirectorySequence.next()();
      if (v31(v19, 1, v22) == 1)
      {
        goto LABEL_6;
      }
    }

    objc_autoreleasePoolPop(v33);
    __break(1u);
    goto LABEL_39;
  }

LABEL_6:
  (*(v118 + 8))(v128, v123);
  v35 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v36 = static OS_os_log.default.getter();
  v123 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 1) = xmmword_10138BBE0;
  v19 = v131;
  v37 = *(v131 + 2);
  *(v25 + 7) = &type metadata for Int;
  *(v25 + 8) = &protocol witness table for Int;
  *(v25 + 4) = v37;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v38 = v119;
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v40;
  v16 = &type metadata for String;
  *(v25 + 12) = &type metadata for String;
  v128 = sub_100008C00();
  *(v25 + 13) = v128;
  *(v25 + 9) = v39;
  *(v25 + 10) = v9;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "Found %i records at %@", 22, 2, v25);

  (*(v124 + 8))(v38, v22);

  v41 = v121 + *(v120 + 24);
  v43 = *(v41 + 8);
  v42 = *(v41 + 16);
  v27 = String._bridgeToObjectiveC()();
  v44 = [v27 _stripPotentialTokenURIWithToken:0];

  if (!v44)
  {

    v51 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v52 = qword_10177C378;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    v54 = v128;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v54;
    *(v53 + 32) = v43;
    *(v53 + 40) = v42;

    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "No fromID for %@", 16, 2, v53);
LABEL_30:

    return;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v45;

  v21 = *(v19 + 2);
  if (!v21)
  {
    v27 = v128;
LABEL_27:

    v72 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v73 = qword_10177C378;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_101385D80;
    *(v74 + 56) = v16;
    *(v74 + 64) = v27;
    v75 = v127;
    *(v74 + 32) = v22;
    *(v74 + 40) = v75;
    os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "No share record found for %@", 28, 2, v74);
    goto LABEL_30;
  }

  v28 = 0;
  v46 = v117;
  while (1)
  {
    if (v28 >= *(v19 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    v25 = v16;
    v47 = v126;
    v9 = *(v125 + 80);
    v48 = (v9 + 32) & ~v9;
    sub_101149F2C(&v19[v48 + *(v125 + 72) * v28], v126, type metadata accessor for ShareRecord);
    v49 = v47 + *(v46 + 36);
    v50 = *(v49 + 8) == v22 && *(v49 + 16) == v127;
    if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v28;
    sub_101149F94(v126, type metadata accessor for ShareRecord);
    v16 = v25;
    v27 = v128;
    if (v21 == v28)
    {
      goto LABEL_27;
    }
  }

  v55 = v114;
  sub_101149EC4(v126, v114, type metadata accessor for ShareRecord);
  v56 = v55;
  v57 = v116;
  sub_101149EC4(v56, v116, type metadata accessor for ShareRecord);
  LODWORD(v125) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v58 = qword_10177C378;
  v59 = swift_allocObject();
  v126 = xmmword_101385D80;
  *(v59 + 16) = xmmword_101385D80;
  v60 = v57;
  sub_101149F2C(v57, v115, type metadata accessor for ShareRecord);
  v61 = v117;
  v62 = String.init<A>(describing:)();
  v63 = v128;
  *(v59 + 56) = v25;
  *(v59 + 64) = v63;
  *(v59 + 32) = v62;
  *(v59 + 40) = v64;
  v65 = v125;
  v125 = v58;
  os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v58, "Found shareRecord: %@", 21, 2, v59);

  v66 = (v60 + *(v61 + 40));
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    v70 = static os_log_type_t.default.getter();
    v71 = swift_allocObject();
    *(v71 + 16) = v126;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = v63;
    *(v71 + 32) = v67;
    *(v71 + 40) = v68;

    os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v125, "Ignoring since this share has already been accepted (correlationIdentifier: %@)", 79, 2, v71);

LABEL_35:
    sub_101149F94(v116, type metadata accessor for ShareRecord);
    return;
  }

  v76 = v105;
  sub_101149F2C(v121, v105, type metadata accessor for MessagingMessageContext);
  v77 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v125 = swift_allocObject();
  sub_101149EC4(v76, v125 + v77, type metadata accessor for MessagingMessageContext);
  v78 = v107;
  (*(v107 + 16))(v111, v122, v112);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v122 = (v106 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v109;
  *(v80 + 16) = v108;
  *(v80 + 24) = v81;
  (*(v78 + 32))(v80 + v79, v111, v112);
  v124 = v80;
  v82 = (v80 + v122);
  v83 = v127;
  *v82 = v22;
  v82[1] = v83;

  v84 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v85 = qword_10177C380;
  v86 = swift_allocObject();
  *(v86 + 16) = v126;
  v87 = v128;
  *(v86 + 56) = v25;
  *(v86 + 64) = v87;
  *(v86 + 32) = 0x65736C6166;
  *(v86 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "Modify record. Disk First? (%@)", 31, 2, v86);

  v22 = objc_autoreleasePoolPush();
  v88 = v116;
  v89 = v129;
  sub_101121490(v116);
  v128 = v90;
  if (!v89)
  {
    v127 = ~v9;
    objc_autoreleasePoolPop(v22);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v129 = 0;
    v91 = v115;
    sub_101149F2C(v88, v115, type metadata accessor for ShareRecord);
    v92 = v88;
    v93 = v110;
    v94 = swift_allocObject();
    v95 = v125;
    *(v94 + 16) = sub_10114907C;
    *(v94 + 24) = v95;
    *&v126 = type metadata accessor for ShareRecord;
    sub_101149EC4(v91, v94 + v48, type metadata accessor for ShareRecord);

    sub_100FDCA40(v128, sub_101149098, v94);

    v96 = swift_allocObject();
    v97 = v124;
    *(v96 + 16) = sub_101149080;
    *(v96 + 24) = v97;

    Future.addFailure(block:)();

    sub_101149F2C(v92, v91, type metadata accessor for ShareRecord);
    v98 = (v9 + 16) & v127;
    v99 = (v93 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    sub_101149EC4(v91, v100 + v98, v126);
    *(v100 + v99) = v113;
    v101 = (v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v101 = sub_101149080;
    v101[1] = v97;

    Future.addSuccess(block:)();

    goto LABEL_35;
  }

LABEL_39:
  objc_autoreleasePoolPop(v22);
  __break(1u);
}

uint64_t sub_10113FB6C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for MessagingMessageContext(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = (a1 + *(type metadata accessor for ShareRecord(0) + 40));

  *v6 = v5;
  v6[1] = v4;
  return result;
}

void sub_10113FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v54 = a4;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - v8;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShareRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v17);
  v19 = (&v47 - v18);
  Transaction.capture()();
  sub_1000D2A70(a1, v19, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_101149EC4(v19, v16, type metadata accessor for ShareRecord);
    v23 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    sub_101149F2C(v16, v14, type metadata accessor for ShareRecord);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accept share succeeded: %@", 26, 2, v25);

    sub_100A8306C(0);
    sub_100025020(v54, v55);
    if (v55[3])
    {
      v30 = v16;
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v32 = v52;
      v31 = v53;
      v33 = swift_dynamicCast();
      v34 = v51;
      (*(v51 + 56))(v31, v33 ^ 1u, 1, v32);
      if ((*(v34 + 48))(v31, 1, v32) != 1)
      {
        v35 = v50;
        sub_101149EC4(v31, v50, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          v36 = static os_log_type_t.default.getter();
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_10138BBE0;
          *(v37 + 56) = &type metadata for String;
          *(v37 + 64) = v29;
          *(v37 + 32) = v48;
          *(v37 + 40) = v49;

          v38 = UUID.uuidString.getter();
          *(v37 + 96) = &type metadata for String;
          *(v37 + 104) = v29;
          *(v37 + 72) = v38;
          *(v37 + 80) = v39;
          os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v24, "Updating all other sharees since %@ accepted sharing beacon: %@", 63, 2, v37);
        }

        sub_101149F94(v35, type metadata accessor for OwnedBeaconRecord);
        sub_101149F94(v30, type metadata accessor for ShareRecord);
        return;
      }

      sub_101149F94(v16, type metadata accessor for ShareRecord);
    }

    else
    {
      sub_101149F94(v16, type metadata accessor for ShareRecord);
      sub_10000B3A8(v55, &qword_101696920, &unk_10138B200);
      v31 = v53;
      (*(v51 + 56))(v53, 1, 1, v52);
    }

    sub_10000B3A8(v31, &unk_1016A9A20, &qword_10138B280);
    return;
  }

  v20 = *v19;
  v55[0] = *v19;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v21 = v56;
    v55[0] = v56;
    sub_100004114(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
    _BridgedStoredNSError.code.getter();
    if (v56 == 14)
    {
      v22 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        v46 = v22;
        swift_once();
        v22 = v46;
      }

      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C378, "record already modified in CloudKit -- assuming another device is handing the share", 83, 2, _swiftEmptyArrayStorage);

      return;
    }
  }

  v40 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v41 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_101385D80;
  v55[0] = v20;
  swift_errorRetain();
  v43 = String.init<A>(describing:)();
  v45 = v44;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_100008C00();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Accept share failed (Self-beaconing device): %@", 47, 2, v42);
}

void sub_101140330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v106 = a3;
  v92 = a1;
  v99 = type metadata accessor for UUID();
  v91 = *(v99 - 8);
  __chkstk_darwin(v99);
  v90 = v5;
  v98 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShareRecord(0);
  v96 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v97 = &v87 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v87 - v12;
  v14 = __chkstk_darwin(v11);
  v87 = &v87 - v15;
  v88 = v16;
  __chkstk_darwin(v14);
  v100 = &v87 - v17;
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v18 - 8);
  v20 = &v87 - v19;
  v21 = type metadata accessor for DirectorySequence();
  v102 = *(v21 - 8);
  v103 = v21;
  __chkstk_darwin(v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for URL();
  *&v107 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v87 - v28;
  v93 = a2;
  v89 = *(a2 + 144);
  v108 = *(v89 + 168);
  v30 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_31:
    swift_once();
  }

  v95 = v13;
  v101 = v6;
  sub_1000076D4(v24, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v30);
  v112 = _swiftEmptyArrayStorage;
  v111 = _swiftEmptyArrayStorage;
  v31 = [objc_opt_self() defaultManager];
  v104 = v29;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v109 = v23;
  DirectorySequence.next()();
  v32 = v107;
  v33 = *(v107 + 48);
  if (v33(v20, 1, v24) == 1)
  {
LABEL_6:
    (*(v102 + 8))(v109, v103);
    v37 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v38 = static OS_os_log.default.getter();
    v39 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10138BBE0;
    v20 = v112;
    v41 = *(v112 + 2);
    *(v40 + 56) = &type metadata for Int;
    *(v40 + 64) = &protocol witness table for Int;
    *(v40 + 32) = v41;
    sub_100004114(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v42 = v104;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    *(v40 + 96) = &type metadata for String;
    v109 = sub_100008C00();
    *(v40 + 104) = v109;
    *(v40 + 72) = v43;
    *(v40 + 80) = v45;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Found %i records at %@", 22, 2, v40);

    (*(v107 + 8))(v42, v24);

    v46 = v105 + *(type metadata accessor for MessagingMessageContext(0) + 24);
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
    v49 = String._bridgeToObjectiveC()();
    v50 = [v49 _stripPotentialTokenURIWithToken:0];

    if (v50)
    {
      v108 = v39;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v51;

      v27 = *(v20 + 2);
      if (v27)
      {
        v23 = 0;
        v29 = v101;
        v30 = v95;
        v6 = v96;
        while (1)
        {
          if (v23 >= *(v20 + 2))
          {
            __break(1u);
            goto LABEL_31;
          }

          v52 = *(v6 + 80);
          sub_101149F2C(&v20[((v52 + 32) & ~v52) + *(v6 + 72) * v23], v30, type metadata accessor for ShareRecord);
          v53 = &v30[*(v29 + 9)];
          v54 = v53[1] == v13 && v53[2] == v24;
          if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v23;
          sub_101149F94(v30, type metadata accessor for ShareRecord);
          v55 = v109;
          if (v27 == v23)
          {
            goto LABEL_26;
          }
        }

        v105 = ~v52;

        v60 = v87;
        sub_101149EC4(v30, v87, type metadata accessor for ShareRecord);
        v61 = v60;
        v62 = v100;
        sub_101149EC4(v61, v100, type metadata accessor for ShareRecord);
        v63 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v64 = qword_10177C378;
        v65 = swift_allocObject();
        v107 = xmmword_101385D80;
        *(v65 + 16) = xmmword_101385D80;
        v66 = v97;
        sub_101149F2C(v62, v97, type metadata accessor for ShareRecord);
        v67 = String.init<A>(describing:)();
        v68 = v109;
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = v68;
        *(v65 + 32) = v67;
        *(v65 + 40) = v69;
        os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v64, "Found shareRecord: %@", 21, 2, v65);

        sub_101149F2C(v62, v66, type metadata accessor for ShareRecord);
        v70 = v91;
        (*(v91 + 16))(v98, v106, v99);
        v71 = (v52 + 24) & v105;
        v72 = (v88 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + *(v70 + 80) + 8) & ~*(v70 + 80);
        v74 = (v90 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = swift_allocObject();
        *(v75 + 16) = v92;
        sub_101149EC4(v97, v75 + v71, type metadata accessor for ShareRecord);
        *(v75 + v72) = v93;
        (*(v70 + 32))(v75 + v73, v98, v99);
        v76 = (v75 + v74);
        *v76 = v13;
        v76[1] = v24;

        v77 = static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v78 = qword_10177C380;
        v79 = swift_allocObject();
        *(v79 + 16) = v107;
        v80 = v100;
        sub_101149F2C(v100, v94, type metadata accessor for ShareRecord);
        v81 = String.init<A>(describing:)();
        v82 = v109;
        *(v79 + 56) = &type metadata for String;
        *(v79 + 64) = v82;
        *(v79 + 32) = v81;
        *(v79 + 40) = v83;
        os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v78, "Attempting to remove: %@", 24, 2, v79);

        sub_100B0F7D8(v80, v89, sub_1011496BC, v75);

        sub_101149F94(v80, type metadata accessor for ShareRecord);
        return;
      }

      v55 = v109;
LABEL_26:

      v84 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v85 = qword_10177C378;
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_101385D80;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = v55;
      *(v86 + 32) = v13;
      *(v86 + 40) = v24;
      os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "No share record found for %@", 28, 2, v86);
    }

    else
    {

      v56 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v57 = qword_10177C378;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_101385D80;
      v59 = v109;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = v59;
      *(v58 + 32) = v48;
      *(v58 + 40) = v47;

      os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v57, "No fromID for %@", 16, 2, v58);
    }

    return;
  }

  v34 = *(v32 + 32);
  while (1)
  {
    v34(v27, v20, v24);
    v35 = objc_autoreleasePoolPush();
    v36 = v110;
    sub_1005FF9CC(v27, v108, &v112, &v111);
    v110 = v36;
    if (v36)
    {
      break;
    }

    objc_autoreleasePoolPop(v35);
    (*(v32 + 8))(v27, v24);
    DirectorySequence.next()();
    if (v33(v20, 1, v24) == 1)
    {
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v35);
  __break(1u);
}