unint64_t sub_10002B338()
{
  result = qword_1000C1220;
  if (!qword_1000C1220)
  {
    sub_10000375C(&qword_1000C1228, &unk_1000A0880);
    sub_10002EEE0(&qword_1000C1230, type metadata accessor for HomeEntity, &unk_1000A0E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1220);
  }

  return result;
}

Swift::Int sub_10002B3EC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002C424(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10002B458(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002B458(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10009ECF4(v2);
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
        sub_100003714(&qword_1000C0EA0, &qword_1000A08B0);
        v5 = sub_10009E6D4();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002B644(v7, v8, a1, v4);
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
    return sub_10002B560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002B560(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_10009ED34(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
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

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002B644(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_10002BF3C(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_10002BC50((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_10009ED34();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10009ED34();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002BF50(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10002BF50((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_10002BC50((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002BF3C(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_10002BEB0(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_10009ED34(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10002BC50(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_10009ED34() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_10009ED34() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_10002BEB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002BF3C(v3);
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

char *sub_10002BF50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1248, &qword_1000A08B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10002C054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetTileInfo(0);
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10002ED9C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for WidgetTileInfo);
      v24 = v23;
      v25 = v31;
      sub_10002EE74(v24, v31, type metadata accessor for WidgetTileInfo);
      sub_10002EE74(v25, a2, type metadata accessor for WidgetTileInfo);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10002C2A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_10002C44C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v91 = sub_10009CF14();
  v8 = *(v91 - 8);
  v9 = __chkstk_darwin(v91);
  v88 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v87 = &v65 - v12;
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  v15 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v65 - v19);
  v86 = type metadata accessor for AccessoryAndSceneEntity(0);
  v74 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for WidgetTileInfo(0);
  v67 = *(v84 - 8);
  v22 = __chkstk_darwin(v84);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v65 - v25;
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v66 = a1;
  v27 = *(a1 + 16);
  v28 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v94 = v8;
    if (a3)
    {
      sub_100003714(&qword_1000C0E20, &unk_1000A0940);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10009FA10;
      *(v29 + 32) = a3;
    }

    else
    {
      v30 = [a2 homes];
      sub_100007330(0, &qword_1000C1260, HMHome_ptr);
      v31 = sub_10009E6A4();

      v29 = v31;
    }

    v95 = _swiftEmptyArrayStorage;
    v65 = v29;
    if (v29 >> 62)
    {
      goto LABEL_42;
    }

    v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = a3;
    if (!v32)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v69 = v32;
      a3 = 0;
      v71 = v65 & 0xC000000000000001;
      v70 = v65 & 0xFFFFFFFFFFFFFF8;
      v68 = v65 + 32;
      v75 = (v94 + 8);
      v78 = (v94 + 32);
      v79 = (v94 + 16);
      v76 = (v74 + 48);
      v77 = (v74 + 56);
      v83 = a4;
      v34 = v66;
      v81 = v17;
      v82 = v14;
      v80 = v20;
      while (1)
      {
        if (v71)
        {
          v35 = sub_10009EAE4();
        }

        else
        {
          if (a3 >= *(v70 + 16))
          {
            goto LABEL_41;
          }

          v35 = *(v68 + 8 * a3);
        }

        v36 = v35;
        if (__OFADD__(a3++, 1))
        {
          break;
        }

        v73 = a3;
        v38 = sub_100007BC0(v35, v34);
        v39 = v38[2];
        if (v39)
        {
          v40 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v72 = v38;
          v41 = v38 + v40;
          v90 = *(v67 + 72);
          v20 = _swiftEmptyArrayStorage;
          v89 = v36;
          while (1)
          {
            v94 = v39;
            v92 = v41;
            sub_10002ED9C(v41, v26, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v26, v24, type metadata accessor for WidgetTileInfo);
            v93 = v20;
            if (!a4)
            {
              goto LABEL_28;
            }

            v42 = [v36 uniqueIdentifier];
            sub_10009CF04();

            if (!*(a4 + 16))
            {
              break;
            }

            v43 = sub_10001B5D0(v14);
            if ((v44 & 1) == 0)
            {
              break;
            }

            v45 = *(*(a4 + 56) + 8 * v43);
            v46 = *v75;

            v46(v14, v91);
            if (!*(v45 + 16) || (v47 = sub_10001B5D0(v26), (v48 & 1) == 0))
            {

              goto LABEL_28;
            }

            v49 = v47;
            v50 = *(v45 + 56);
            v51 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
            v52 = *(v51 - 8);
            (*(v52 + 16))(v17, v50 + *(v52 + 72) * v49, v51);

            (*(v52 + 56))(v17, 0, 1, v51);
LABEL_29:
            sub_100014CC8(v17, &v24[*(v84 + 76)]);
            v28 = v87;
            v54 = v91;
            (*v79)(v87, v24, v91);
            v55 = [v36 uniqueIdentifier];
            v56 = v88;
            sub_10009CF04();

            v57 = v26;
            sub_10002EE04(v26, type metadata accessor for WidgetTileInfo);
            v58 = v86;
            v59 = v80;
            sub_10002ED9C(v24, v80 + *(v86 + 24), type metadata accessor for WidgetTileInfo);
            v60 = *v78;
            (*v78)(v59, v28, v54);
            v60(v59 + *(v58 + 20), v56, v54);
            (*v77)(v59, 0, 1, v58);
            sub_10002EE04(v24, type metadata accessor for WidgetTileInfo);
            if ((*v76)(v59, 1, v58) == 1)
            {
              sub_1000160CC(v59, &qword_1000C1258, &unk_1000A08D0);
              v14 = v82;
              a4 = v83;
              v17 = v81;
              v26 = v57;
              v36 = v89;
              v20 = v93;
            }

            else
            {
              sub_10002EE74(v59, v85, type metadata accessor for AccessoryAndSceneEntity);
              v20 = v93;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_100064F9C(0, v20[2] + 1, 1, v20);
              }

              v17 = v81;
              v14 = v82;
              v26 = v57;
              v62 = v20[2];
              v61 = v20[3];
              v36 = v89;
              if (v62 >= v61 >> 1)
              {
                v20 = sub_100064F9C((v61 > 1), v62 + 1, 1, v20);
              }

              v20[2] = v62 + 1;
              sub_10002EE74(v85, v20 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v62, type metadata accessor for AccessoryAndSceneEntity);
              a4 = v83;
            }

            v41 = v92 + v90;
            v39 = v94 - 1;
            if (v94 == 1)
            {

              v34 = v66;
              goto LABEL_11;
            }
          }

          (*v75)(v14, v91);
LABEL_28:
          v53 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
          (*(*(v53 - 8) + 56))(v17, 1, 1, v53);
          goto LABEL_29;
        }

        v20 = _swiftEmptyArrayStorage;
LABEL_11:
        sub_1000615E8(v20);
        a3 = v73;
        if (v73 == v69)
        {
          v28 = v95;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v32 = sub_10009EBA4();
      v64 = a3;
      if (!v32)
      {
LABEL_38:

        return v28;
      }
    }
  }

  return v28;
}

void *sub_10002CDDC(uint64_t a1)
{
  v2 = sub_10009D1C4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003714(&qword_1000C1288, &qword_1000A0938);
    v9 = sub_10009EAA4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10002EEE0(&qword_1000C1278, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
      v16 = sub_10009E4F4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10002EEE0(&qword_1000C1280, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
          v23 = sub_10009E534();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10002D0FC(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003714(&qword_1000C0BE0, "tz");
    v9 = sub_10009EAA4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = sub_10009E4F4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v23 = sub_10009E534();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10002D41C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 336) = a1;
  sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  *(v3 + 96) = swift_task_alloc();
  v4 = type metadata accessor for AccessoryAndSceneEntity(0);
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();
  v5 = type metadata accessor for WidgetTileInfo(0);
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_10009CF14();
  *(v3 + 168) = v6;
  *(v3 + 176) = *(v6 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10002D644, 0, 0);
}

uint64_t sub_10002D644()
{
  type metadata accessor for HomeWidget();
  v0[28] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[29] = v2;
  v0[30] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_10002D718;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10002D718(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10002D878, 0, 0);
}

uint64_t sub_10002D878()
{
  v23 = v0;
  if (*(v0 + 256))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 160);
    sub_10001E0A8(*(v0 + 80), v3, &qword_1000C0C78, &qword_1000A0390);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 336);
      sub_1000160CC(*(v0 + 160), &qword_1000C0C78, &qword_1000A0390);
      v5 = swift_task_alloc();
      *(v0 + 296) = v5;
      *v5 = v0;
      v5[1] = sub_10002E060;
      v6 = v4;
    }

    else
    {
      v14 = *(v0 + 216);
      v15 = *(v0 + 168);
      v16 = *(v0 + 176);
      (*(v16 + 32))(v14, *(v0 + 160), v15);
      sub_100003714(&qword_1000C0E88, &unk_1000A08E0);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10009F8D0;
      (*(v16 + 16))(v18 + v17, v14, v15);
      v19 = sub_10002D0FC(v18);
      *(v0 + 264) = v19;
      swift_setDeallocating();
      v20 = *(v16 + 8);
      *(v0 + 272) = v20;
      *(v0 + 280) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v20(v18 + v17, v15);
      swift_deallocClassInstance();
      v21 = swift_task_alloc();
      *(v0 + 288) = v21;
      *v21 = v0;
      v21[1] = sub_10002DC70;
      v6 = v19;
    }

    return sub_100074484(v6);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10009D924();
    sub_100015B68(v7, qword_1000C8278);
    v8 = sub_10009D904();
    v9 = sub_10009E824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v22);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s unable to get shared HMHomeManager instance", v10, 0xCu);
      sub_100015F44(v11);
    }

    v12 = *(v0 + 8);

    return v12(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10002DC70(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 48) = v1;
  *(v2 + 56) = a1;

  return _swift_task_switch(sub_10002DD8C, 0, 0);
}

uint64_t sub_10002DD8C()
{
  v14 = v0;
  (*(v0 + 272))(*(v0 + 216), *(v0 + 168));
  v1 = *(v0 + 56);
  *(v0 + 304) = v1;
  if (v1 >> 62)
  {
    v5 = sub_10009EBA4();
    *(v0 + 312) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v2;
    if (v2)
    {
LABEL_3:
      sub_10009E744();
      *(v0 + 320) = sub_10009E734();
      v4 = sub_10009E714();

      return _swift_task_switch(sub_10002E430, v4, v3);
    }
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v6 = sub_10009D924();
  sub_100015B68(v6, qword_1000C8278);
  v7 = sub_10009D904();
  v8 = sub_10009E824();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Unable to match against any valid HMHome's", v9, 0xCu);
    sub_100015F44(v10);
  }

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E060(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  v3 = *(v2 + 336);

  sub_10002EE64(v3);

  return _swift_task_switch(sub_10002E16C, 0, 0);
}

uint64_t sub_10002E16C()
{
  v14 = v0;
  v1 = *(v0 + 72);
  *(v0 + 304) = v1;
  if (v1 >> 62)
  {
    v5 = sub_10009EBA4();
    *(v0 + 312) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v2;
    if (v2)
    {
LABEL_3:
      sub_10009E744();
      *(v0 + 320) = sub_10009E734();
      v4 = sub_10009E714();

      return _swift_task_switch(sub_10002E430, v4, v3);
    }
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v6 = sub_10009D924();
  sub_100015B68(v6, qword_1000C8278);
  v7 = sub_10009D904();
  v8 = sub_10009E824();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Unable to match against any valid HMHome's", v9, 0xCu);
    sub_100015F44(v10);
  }

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E430()
{
  v1 = v0[38];
  v40 = v0[22];

  v5 = 0;
  v38 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v1 + 32;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    if (v38)
    {
      isUniquelyReferenced_nonNull_native = sub_10009EAE4();
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = *(v7 + 8 * v5);
    }

    v9 = isUniquelyReferenced_nonNull_native;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = sub_100034548(isUniquelyReferenced_nonNull_native);

    v12 = v11[2];
    v13 = *(v8 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v8 + 3) >> 1)
    {
      if (!v11[2])
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      isUniquelyReferenced_nonNull_native = sub_100064F74(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
      if (!v11[2])
      {
LABEL_2:

        if (v12)
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v12)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithCopy();

    if (v12)
    {
      v16 = *(v8 + 2);
      v17 = __OFADD__(v16, v12);
      v18 = v16 + v12;
      if (v17)
      {
        goto LABEL_46;
      }

      *(v8 + 2) = v18;
    }

LABEL_3:
    ++v5;
  }

  while (v10 != v0[39]);

  v36 = *(v8 + 2);
  if (v36)
  {
    v19 = 0;
    v20 = v0[22];
    v34 = (v20 + 8);
    v35 = (v20 + 16);
    v37 = (v20 + 32);
    v39 = v0[11];
    while (v19 < *(v8 + 2))
    {
      v21 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v22 = *(v40 + 72);
      (*v35)(v0[26], &v8[v21 + v22 * v19], v0[21]);
      if (v39 && (v23 = *(v39 + 16)) != 0)
      {
        sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = v39 + v21;
        v25 = v23 + 1;
        while (--v25)
        {
          v26 = v24 + v22;
          v27 = sub_10009E534();
          v24 = v26;
          if (v27)
          {
            goto LABEL_32;
          }
        }

        isUniquelyReferenced_nonNull_native = (*v34)(v0[26], v0[21]);
      }

      else
      {
LABEL_32:
        v28 = *v37;
        (*v37)(v0[25], v0[26], v0[21]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BC00(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v30 = _swiftEmptyArrayStorage[2];
        v29 = _swiftEmptyArrayStorage[3];
        if (v30 >= v29 >> 1)
        {
          sub_10001BC00((v29 > 1), v30 + 1, 1);
        }

        v31 = v0[25];
        v32 = v0[21];
        _swiftEmptyArrayStorage[2] = v30 + 1;
        isUniquelyReferenced_nonNull_native = v28(_swiftEmptyArrayStorage + v21 + v30 * v22, v31, v32);
      }

      if (++v19 == v36)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return _swift_task_switch(isUniquelyReferenced_nonNull_native, v3, v4);
  }

LABEL_37:
  v0[41] = _swiftEmptyArrayStorage;

  isUniquelyReferenced_nonNull_native = sub_10002E804;
  v3 = 0;
  v4 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v3, v4);
}

uint64_t sub_10002E804()
{
  v1 = v0;
  v2 = *(v0 + 256);
  if (*(*(v0 + 328) + 16))
  {
    v3 = [*(v0 + 256) homes];
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    v4 = sub_10009E6A4();

    if (v4 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
    {
      v6 = 0;
      v7 = v1[22];
      v8 = v1[14];
      v38 = v4 & 0xC000000000000001;
      v37 = v4 & 0xFFFFFFFFFFFFFF8;
      v35 = v4;
      v36 = v4 + 32;
      v46 = (v7 + 16);
      v47 = v1[13];
      v44 = (v8 + 56);
      v45 = (v7 + 32);
      v33 = v1[17];
      v34 = i;
      v40 = v8;
      v41 = v1;
      v42 = (v8 + 48);
      v43 = v1[16];
      while (1)
      {
        if (v38)
        {
          v9 = sub_10009EAE4();
        }

        else
        {
          if (v6 >= *(v37 + 16))
          {
            goto LABEL_26;
          }

          v9 = *(v36 + 8 * v6);
        }

        v49 = v9;
        v10 = __OFADD__(v6, 1);
        v11 = v6 + 1;
        if (v10)
        {
          break;
        }

        v39 = v11;
        v12 = sub_100007BC0(v9, v1[41]);
        v13 = v12[2];
        if (v13)
        {
          v14 = v12 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
          v48 = *(v33 + 72);
          v15 = _swiftEmptyArrayStorage;
          do
          {
            v51 = v15;
            v52 = v13;
            v17 = v1[23];
            v16 = v1[24];
            v18 = v1[21];
            v19 = v1[18];
            v20 = v1[19];
            v22 = v1 + 12;
            v21 = v1[12];
            v50 = v22[1];
            sub_10002ED9C(v14, v20, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v20, v19, type metadata accessor for WidgetTileInfo);
            v23 = *(v43 + 76);
            sub_1000160CC(v19 + v23, &qword_1000C0C28, &qword_1000A3620);
            v24 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
            (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
            (*v46)(v16, v19, v18);
            v25 = [v49 uniqueIdentifier];
            sub_10009CF04();

            sub_10002EE04(v20, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v19, v21 + *(v47 + 24), type metadata accessor for WidgetTileInfo);
            v26 = *v45;
            (*v45)(v21, v16, v18);
            v26(v21 + *(v47 + 20), v17, v18);
            (*v44)(v21, 0, 1, v50);
            sub_10002EE04(v19, type metadata accessor for WidgetTileInfo);
            if ((*v42)(v21, 1, v50) == 1)
            {
              v1 = v41;
              sub_1000160CC(v41[12], &qword_1000C1258, &unk_1000A08D0);
              v15 = v51;
            }

            else
            {
              v1 = v41;
              sub_10002EE74(v41[12], v41[15], type metadata accessor for AccessoryAndSceneEntity);
              v15 = v51;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_100064F9C(0, v51[2] + 1, 1, v51);
              }

              v28 = v15[2];
              v27 = v15[3];
              if (v28 >= v27 >> 1)
              {
                v15 = sub_100064F9C((v27 > 1), v28 + 1, 1, v15);
              }

              v29 = v41[15];
              v15[2] = v28 + 1;
              sub_10002EE74(v29, v15 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, type metadata accessor for AccessoryAndSceneEntity);
            }

            v14 += v48;
            v13 = v52 - 1;
          }

          while (v52 != 1);

          i = v34;
          v4 = v35;
        }

        else
        {

          v15 = _swiftEmptyArrayStorage;
        }

        sub_1000615E8(v15);
        v6 = v39;
        if (v39 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:
    v30 = v1[32];
  }

  else
  {
  }

  v31 = v1[1];

  return v31(_swiftEmptyArrayStorage);
}

uint64_t sub_10002ED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10002EE64(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002EE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002EF44()
{
  result = qword_1000C1290;
  if (!qword_1000C1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1290);
  }

  return result;
}

unint64_t sub_10002EF9C()
{
  result = qword_1000C1298;
  if (!qword_1000C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1298);
  }

  return result;
}

unint64_t sub_10002F05C()
{
  result = qword_1000C12A0;
  if (!qword_1000C12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12A0);
  }

  return result;
}

uint64_t sub_10002F0B0()
{
  v0 = sub_10009CC04();
  sub_10001F4BC(v0, qword_1000C81F0);
  v1 = sub_100015B68(v0, qword_1000C81F0);
  v2 = enum case for IntentAuthenticationPolicy.requiresAuthentication(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10002F138()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009CF54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10009E5A4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10009CD54();
  sub_10001F4BC(v6, qword_1000C8208);
  sub_100015B68(v6, qword_1000C8208);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_10002F328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v2[4] = swift_task_alloc();
  v3 = sub_10009CE24();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for WidgetTileInfo(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for AccessoryAndSceneEntity(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002F498, 0, 0);
}

uint64_t sub_10002F498(uint64_t a1)
{
  v61 = v1;
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[8];
  sub_10009C954();
  sub_100006850(v2 + *(v4 + 24), v3);
  sub_10003092C(v2, type metadata accessor for AccessoryAndSceneEntity);
  v6 = *(v3 + *(v5 + 56));
  sub_10003092C(v3, type metadata accessor for WidgetTileInfo);
  if (v6 != 1 || (v7 = v1[13], v8 = v1[10], v9 = v1[8], sub_10009C954(), sub_100006850(v7 + *(v4 + 24), v8), sub_10003092C(v7, type metadata accessor for AccessoryAndSceneEntity), v10 = *(v8 + *(v9 + 52)), sub_10003092C(v8, type metadata accessor for WidgetTileInfo), v10 != 1))
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v17 = sub_10009D924();
    sub_100015B68(v17, qword_1000C8278);

    v18 = sub_10009D904();
    v19 = sub_10009E844();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v1[13];
      v21 = v1[10];
      v22 = v1[8];
      v23 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v60);
      *(v23 + 12) = 2080;
      sub_10009C954();
      sub_100006850(v20 + *(v4 + 24), v21);
      sub_10003092C(v20, type metadata accessor for AccessoryAndSceneEntity);
      v24 = (v21 + *(v22 + 24));
      v25 = *v24;
      v26 = v24[1];

      sub_10003092C(v21, type metadata accessor for WidgetTileInfo);
      v27 = sub_10002AD68(v25, v26, &v60);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s %s does not support toggle()", v23, 0x16u);
      swift_arrayDestroy();
    }

    v28 = v1[12];
    v29 = v1[5];
    v30 = v1[6];
    v31 = v1[4];
    sub_10009C954();
    sub_1000259B8();
    sub_10003092C(v28, type metadata accessor for AccessoryAndSceneEntity);
    if ((*(v30 + 48))(v31, 1, v29) == 1)
    {
      sub_10003098C(v1[4]);
LABEL_20:
      sub_10009C934();
      goto LABEL_21;
    }

    (*(v1[6] + 32))(v1[7], v1[4], v1[5]);
    v32 = sub_10009CE04();
    v34 = v33;
    v35 = sub_10009E5C4();
    if (!v34)
    {

      sub_10009E5C4();

LABEL_19:
      (*(v1[6] + 8))(v1[7], v1[5]);
      goto LABEL_20;
    }

    if (v32 != v35 || v34 != v36)
    {
      v37 = sub_10009ED34();

      if (v37)
      {
        goto LABEL_17;
      }

      if (v32 != sub_10009E5C4() || v34 != v45)
      {
        v46 = sub_10009ED34();

        if ((v46 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_17:

LABEL_18:
    v38 = [objc_opt_self() sharedInstance];
    sub_10009CDC4(v39);
    v41 = v40;
    v42 = [v38 openURL:v40];

    goto LABEL_19;
  }

  v11 = v1[13];
  v13 = v1[8];
  v12 = v1[9];
  sub_10009C954();
  sub_100006850(v11 + *(v4 + 24), v12);
  sub_10003092C(v11, type metadata accessor for AccessoryAndSceneEntity);
  v14 = *(v12 + *(v13 + 60) + 8);
  if (v14 < 3)
  {
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    v16 = sub_10003009C;
LABEL_26:
    v15[1] = v16;

    return sub_100061870();
  }

  if (v14 == 3)
  {
    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v16 = sub_10002FCF4;
    goto LABEL_26;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v47 = sub_10009D924();
  sub_100015B68(v47, qword_1000C8278);

  v48 = sub_10009D904();
  v49 = sub_10009E844();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v1[13];
    v51 = v1[10];
    v52 = v1[11];
    v53 = v1[8];
    v54 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v54 = 136315394;
    *(v54 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v60);
    *(v54 + 12) = 2080;
    sub_10009C954();
    sub_100006850(v50 + *(v52 + 24), v51);
    sub_10003092C(v50, type metadata accessor for AccessoryAndSceneEntity);
    v55 = (v51 + *(v53 + 24));
    v56 = *v55;
    v57 = v55[1];

    sub_10003092C(v51, type metadata accessor for WidgetTileInfo);
    v58 = sub_10002AD68(v56, v57, &v60);

    *(v54 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s %s sent toggle() to device", v54, 0x16u);
    swift_arrayDestroy();
  }

  v59 = v1[9];
  sub_10009C934();
  sub_10003092C(v59, type metadata accessor for WidgetTileInfo);
LABEL_21:

  v43 = v1[1];

  return v43();
}

uint64_t sub_10002FCF4()
{

  return _swift_task_switch(sub_10002FDF0, 0, 0);
}

uint64_t sub_10002FDF0()
{
  v17 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v16);
    *(v8 + 12) = 2080;
    sub_10009C954();
    sub_100006850(v4 + *(v6 + 24), v5);
    sub_10003092C(v4, type metadata accessor for AccessoryAndSceneEntity);
    v9 = (v5 + *(v7 + 24));
    v10 = *v9;
    v11 = v9[1];

    sub_10003092C(v5, type metadata accessor for WidgetTileInfo);
    v12 = sub_10002AD68(v10, v11, &v16);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %s sent toggle() to device", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[9];
  sub_10009C934();
  sub_10003092C(v13, type metadata accessor for WidgetTileInfo);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003009C()
{

  return _swift_task_switch(sub_1000309F4, 0, 0);
}

uint64_t sub_100030208@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100015B68(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000302B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_10002F328(a1, v4);
}

uint64_t sub_100030350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000303C8();
  *a1 = result;
  return result;
}

uint64_t sub_100030378(uint64_t a1)
{
  v2 = sub_10002F05C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000303C8()
{
  v0 = sub_10009CB44();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v22 - v5;
  v6 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  __chkstk_darwin(v6 - 8);
  v24 = v22 - v7;
  v8 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v8 - 8);
  v23 = v22 - v9;
  v10 = sub_10009CD34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10009CF54();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10009E5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10009CD54();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v22[1] = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_10009CD64();
  (*(v17 + 56))(v23, 1, 1, v16);
  v18 = type metadata accessor for AccessoryAndSceneEntity(0);
  (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
  v19 = sub_10009C914();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1000308D4();
  return sub_10009C9A4();
}

unint64_t sub_1000308D4()
{
  result = qword_1000C1160;
  if (!qword_1000C1160)
  {
    type metadata accessor for AccessoryAndSceneEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1160);
  }

  return result;
}

uint64_t sub_10003092C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003098C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000309FC()
{
  result = qword_1000C12B0;
  if (!qword_1000C12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12B0);
  }

  return result;
}

unint64_t sub_100030A54()
{
  result = qword_1000C12B8;
  if (!qword_1000C12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12B8);
  }

  return result;
}

unint64_t sub_100030AAC()
{
  result = qword_1000C12C0;
  if (!qword_1000C12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12C0);
  }

  return result;
}

unint64_t sub_100030B04()
{
  result = qword_1000C12C8;
  if (!qword_1000C12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12C8);
  }

  return result;
}

uint64_t sub_100030B98()
{
  v0 = sub_10009CD54();
  sub_10001F4BC(v0, qword_1000C8220);
  sub_100015B68(v0, qword_1000C8220);
  return sub_10009CD14();
}

uint64_t sub_100030C68@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_10009CBF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C1318, &qword_1000A0CC8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, enum case for HasValueComparisonOperator.hasNoValue(_:), v1);
  sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  sub_1000309FC();
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10001CDC8(&qword_1000C1340, &qword_1000C1300, &qword_1000A0C60, &protocol conformance descriptor for IntentParameter<A>);
  sub_10009CC44();
  sub_10001CDC8(&qword_1000C1328, &qword_1000C1318, &qword_1000A0CC8, &protocol conformance descriptor for ParameterSummaryWhenCondition<A, B, C>);
  sub_10009CB64();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_10009CB54();
  return (v12)(v11, v5);
}

uint64_t sub_100030F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C974();
  *a1 = result;
  return result;
}

uint64_t sub_100030FB8()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  swift_getKeyPath();

  v1 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000A0A70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_10009CB14();

  return v3;
}

uint64_t sub_1000310C4(uint64_t a1)
{
  v1 = sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  sub_1000309FC();
  sub_10009CB34();
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10009CB64();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_10009CB54();
  return (v8)(v7, v1);
}

uint64_t sub_100031264()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  swift_getKeyPath();

  v1 = sub_10009CB24();

  swift_getKeyPath();

  v2 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000A0A80;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;

  v4 = sub_10009CB14();

  return v4;
}

uint64_t sub_1000313B4()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10009FA10;
  *(v1 + 32) = v0;

  v2 = sub_10009CB14();

  return v2;
}

uint64_t sub_100031470@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CD54();
  v3 = sub_100015B68(v2, qword_1000C8220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003151C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10009CC14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v3 + 104))(v5, enum case for EquatableComparisonOperator.equalTo(_:), v2);
  v7[15] = 0;
  sub_100003714(&qword_1000C1318, &qword_1000A0CC8);
  sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  sub_10001CDC8(&qword_1000C1328, &qword_1000C1318, &qword_1000A0CC8, &protocol conformance descriptor for ParameterSummaryWhenCondition<A, B, C>);
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10001CDC8(&qword_1000C1338, &qword_1000C10B0, &qword_1000A03A8, &protocol conformance descriptor for IntentParameter<A>);
  return sub_10009CC54();
}

uint64_t sub_100031750(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100031C68();
  *v4 = v2;
  v4[1] = sub_1000317FC;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000317FC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

char *sub_100031904@<X0>(char **a1@<X8>)
{
  result = sub_100031E7C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100031930(uint64_t a1)
{
  v2 = sub_1000309FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009C954();
  if (v6)
  {
    return sub_10009D724();
  }

  sub_100031DAC();
  v4 = sub_10009CBD4();
  if (!v4)
  {
    return sub_10009D734();
  }

  sub_100031A70(v4);

  sub_100003714(&qword_1000C12F0, &unk_1000A0C50);
  sub_10001CDC8(&qword_1000C12F8, &qword_1000C12F0, &unk_1000A0C50, &protocol conformance descriptor for [A]);
  v5 = sub_10009D714();

  return v5;
}

void *sub_100031A70(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10001BC64(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10001BC64((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for UUID;
      v14 = sub_100031E00(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100031E64(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

unint64_t sub_100031C68()
{
  result = qword_1000C12D0;
  if (!qword_1000C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12D0);
  }

  return result;
}

__n128 sub_100031CBC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100031CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100031D18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100031DAC()
{
  result = qword_1000C12E8;
  if (!qword_1000C12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12E8);
  }

  return result;
}

uint64_t *sub_100031E00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100031E64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_100031E7C()
{
  v0 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  __chkstk_darwin(v0 - 8);
  v40 = v35 - v1;
  v52 = sub_10009CB44();
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v35 - v6;
  v7 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  __chkstk_darwin(v7 - 8);
  v39 = v35 - v8;
  v9 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v50 = sub_10009CD34();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009CF54();
  __chkstk_darwin(v15 - 8);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10009E5A4();
  __chkstk_darwin(v18 - 8);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009CD54();
  v45 = v21;
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v35[0] = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009E554();
  v47 = "ToggleIntent.Parameter";
  v41 = v17;
  sub_10009CF44();
  v48 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v12 + 104);
  v49 = v12 + 104;
  v51 = v24;
  v42 = v14;
  v24(v14);
  sub_10009CD64();
  v25 = *(v22 + 56);
  v44 = v22 + 56;
  v46 = v25;
  v25(v11, 1, 1, v21);
  LOBYTE(v57) = 1;
  v26 = sub_10009E6F4();
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v27 = sub_10009C914();
  v28 = *(*(v27 - 8) + 56);
  v29 = v38;
  v28(v38, 1, 1, v27);
  v43 = enum case for InputConnectionBehavior.default(_:);
  v36 = *(v55 + 104);
  v55 += 104;
  v30 = v52;
  v36(v54);
  v39 = sub_10009C9D4();
  v37 = sub_100003714(&qword_1000C1300, &qword_1000A0C60);
  v35[1] = v20;
  sub_10009E554();
  sub_10009CF44();
  v51(v42, v48, v50);
  sub_10009CD64();
  v46(v11, 1, 1, v45);
  v31 = type metadata accessor for HomeEntity(0);
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v28(v29, 1, 1, v27);
  v28(v53, 1, 1, v27);
  v32 = v30;
  v33 = v36;
  (v36)(v54, v43, v32);
  sub_100032750();
  v40 = sub_10009C9A4();
  v37 = sub_100003714(&qword_1000C1310, &qword_1000A0C68);
  sub_10009E554();
  sub_10009CF44();
  v51(v42, v48, v50);
  sub_10009CD64();
  v46(v11, 1, 1, v45);
  v57 = 0;
  v28(v29, 1, 1, v27);
  v28(v53, 1, 1, v27);
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  v56 = sub_10009CBA4();
  (v33)(v54, v43, v52);
  sub_1000248DC();
  sub_10009C994();
  return v39;
}

unint64_t sub_100032750()
{
  result = qword_1000C1308;
  if (!qword_1000C1308)
  {
    type metadata accessor for HomeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1308);
  }

  return result;
}

uint64_t sub_1000327A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C974();
  *a1 = result;
  return result;
}

uint64_t sub_1000327D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C974();
  *a1 = result;
  return result;
}

uint64_t sub_100032800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C974();
  *a1 = result;
  return result;
}

uint64_t sub_10003282C()
{
  v0 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10009CF14();
  sub_10001F4BC(v3, qword_1000C8238);
  v4 = sub_100015B68(v3, qword_1000C8238);
  sub_10009CED4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void *sub_10003295C()
{
  result = sub_10003297C();
  qword_1000C8258 = result;
  return result;
}

void *sub_10003297C()
{
  v115 = type metadata accessor for AccessoryAndSceneEntity(0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v142 = &v94 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v1 - 8);
  v137 = &v94 - v2;
  v113 = sub_10009D5A4();
  v3 = *(v113 - 8);
  v4 = __chkstk_darwin(v113);
  v136 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v135 = &v94 - v6;
  v112 = type metadata accessor for WidgetTileInfo(0);
  __chkstk_darwin(v112);
  v140 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  __chkstk_darwin(v8 - 8);
  v10 = &v94 - v9;
  v11 = sub_10009CF14();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v134 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v141 = &v94 - v16;
  __chkstk_darwin(v15);
  v116 = &v94 - v17;
  v96 = sub_10009CE24();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000249E0(v19);
  v94 = v19;
  v97 = sub_10009CE34();
  v98 = v20;
  if (qword_1000C8250)
  {
    v21 = qword_1000C8250;
  }

  else
  {
    v22 = objc_opt_self();
    isa = sub_10009CE54().super.isa;
    *&v155 = 0;
    v24 = [v22 propertyListWithData:isa options:1 format:0 error:&v155];

    if (!v24)
    {
      v93 = v155;
      sub_10009CD04();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v25 = v155;
    sub_10009E974();
    swift_unknownObjectRelease();
    sub_100003714(&qword_1000C1348, &qword_1000A0D08);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100033B34(v97, v98);
      (*(v95 + 8))(v94, v96);
      return _swiftEmptyArrayStorage;
    }

    v21 = v154;
    qword_1000C8250 = v154;
  }

  v26 = *(v21 + 16);

  v111 = v26;
  if (v26)
  {
    v27 = 0;
    v110 = v21 + 32;
    v109 = (v12 + 48);
    v108 = (v12 + 32);
    v107 = "ies+Samples.swift";
    v28 = (v12 + 16);
    v105 = enum case for StaticRenderingMode.hierarchical(_:);
    v104 = (v3 + 104);
    v103 = enum case for StaticRenderingMode.monochrome(_:);
    v102 = (v3 + 16);
    v101 = (v3 + 8);
    v133 = (v12 + 8);
    v138 = _swiftEmptyArrayStorage;
    v29 = v116;
    v99 = v10;
    v106 = v21;
    v143 = v11;
    v100 = v28;
    while (v27 < *(v21 + 16))
    {
      v30 = *(v110 + 8 * v27);
      if (!*(v30 + 16))
      {
        goto LABEL_40;
      }

      v31 = sub_10001B558(25705, 0xE200000000000000);
      if ((v32 & 1) == 0)
      {
        goto LABEL_41;
      }

      sub_10001B668(*(v30 + 56) + 32 * v31, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      sub_10009CED4();

      if ((*v109)(v10, 1, v11) == 1)
      {
        goto LABEL_58;
      }

      (*v108)(v29, v10, v11);
      if (!*(v30 + 16))
      {
        goto LABEL_42;
      }

      v33 = sub_10001B558(1701667182, 0xE400000000000000);
      if ((v34 & 1) == 0)
      {
        goto LABEL_43;
      }

      sub_10001B668(*(v30 + 56) + 32 * v33, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      if (!*(v30 + 16))
      {
        goto LABEL_44;
      }

      v35 = sub_10001B558(0x656D614E6D6F6F72, 0xE800000000000000);
      if ((v36 & 1) == 0)
      {
        goto LABEL_45;
      }

      sub_10001B668(*(v30 + 56) + 32 * v35, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      if (!*(v30 + 16))
      {
        goto LABEL_46;
      }

      v37 = sub_10001B558(0x626D79536E6F6369, 0xEA00000000006C6FLL);
      if ((v38 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_10001B668(*(v30 + 56) + 32 * v37, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      if (!*(v30 + 16))
      {
        goto LABEL_48;
      }

      v39 = sub_10001B558(0xD000000000000013, v107 | 0x8000000000000000);
      if ((v40 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_10001B668(*(v30 + 56) + 32 * v39, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      v41 = sub_10009E194();
      if (!*(v30 + 16))
      {
        goto LABEL_50;
      }

      v42 = v41;

      v43 = sub_10001B558(0x6176697463417369, 0xEB00000000646574);
      if ((v44 & 1) == 0)
      {
        goto LABEL_51;
      }

      v139 = v42;
      sub_10001B668(*(v30 + 56) + 32 * v43, &v154);
      sub_10001CD4C(&v154, &v155);
      sub_100033B88();
      swift_dynamicCast();
      v45 = v145;
      [v145 BOOLValue];

      if (!*(v30 + 16))
      {
        goto LABEL_52;
      }

      v46 = sub_10001B558(0x6168636165527369, 0xEB00000000656C62);
      if ((v47 & 1) == 0)
      {
        goto LABEL_53;
      }

      sub_10001B668(*(v30 + 56) + 32 * v46, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      v48 = v145;
      v132 = [v145 BOOLValue];

      if (!*(v30 + 16))
      {
        goto LABEL_54;
      }

      v49 = sub_10001B558(0x7453737574617473, 0xEC000000676E6972);
      if ((v50 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_10001B668(*(v30 + 56) + 32 * v49, &v154);
      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      if (!*(v30 + 16))
      {
        goto LABEL_56;
      }

      v51 = sub_10001B558(0x6168636165527369, 0xEB00000000656C62);
      if ((v52 & 1) == 0)
      {
        goto LABEL_57;
      }

      v131 = v27;
      sub_10001B668(*(v30 + 56) + 32 * v51, &v154);

      sub_10001CD4C(&v154, &v155);
      swift_dynamicCast();
      v53 = v144;
      [v144 BOOLValue];

      v54 = *v28;
      (*v28)(v141, v29, v11);
      v54(v134, v29, v11);
      v55 = v153;
      v126 = v152;
      v127 = v150;
      v118 = v151;
      v129 = v148;
      v119 = v149;
      v130 = v146;
      v120 = v147;
      v56 = *v104;
      v57 = v113;
      (*v104)(v135, v105, v113);
      v56(v136, v103, v57);
      v58 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
      v59 = *(*(v58 - 8) + 56);
      v59(v137, 1, 1, v58);

      v128 = sub_10001C968(_swiftEmptyArrayStorage);
      v60 = v140;
      v61 = v112;
      v62 = *(v112 + 72);
      v63 = sub_10009D3F4();
      (*(*(v63 - 8) + 56))(v60 + v62, 1, 1, v63);
      v125 = v61[19];
      v59(v60 + v125, 1, 1, v58);
      v64 = v61[21];
      v124 = v61[20];
      v122 = (v60 + v64);
      v65 = v61[22];
      v123 = v61[23];
      v121 = (v60 + v65);
      v117 = v54;
      v28 = v100;
      v54(v60, v141, v143);
      v66 = v134;
      v54((v60 + v61[5]), v134, v143);
      v67 = (v60 + v61[6]);
      *v67 = v126;
      v67[1] = v55;
      v68 = (v60 + v61[7]);
      v69 = v118;
      *v68 = v127;
      v68[1] = v69;
      v70 = (v60 + v61[8]);
      v71 = v119;
      *v70 = v129;
      v70[1] = v71;
      v72 = (v60 + v61[9]);
      v73 = v120;
      *v72 = v130;
      v72[1] = v73;
      v74 = *v102;
      v75 = v135;
      (*v102)(v60 + v61[10], v135, v57);
      v76 = v136;
      v74(v60 + v61[11], v136, v57);
      *(v60 + v61[12]) = v139;
      *(v60 + v61[13]) = v132;
      v77 = v60 + v61[15];
      *v77 = 0;
      *(v77 + 8) = 4;
      v78 = *v101;
      (*v101)(v76, v57);
      v78(v75, v57);
      v79 = *v133;
      (*v133)(v66, v143);
      v79(v141, v143);
      v80 = v117;
      *(v60 + v61[14]) = 0;
      *(v60 + v61[16]) = v128;
      *(v60 + v61[17]) = 0;
      *(v60 + v124) = 2;
      v81 = v122;
      *v122 = 0;
      *(v81 + 8) = 1;
      v82 = v121;
      *v121 = 0;
      v82[1] = 0;
      *(v60 + v123) = 2;
      v11 = v143;
      v29 = v116;
      sub_100014CC8(v137, v60 + v125);
      v80(v142, v29, v11);
      if (qword_1000C0A78 != -1)
      {
        swift_once();
      }

      v83 = sub_100015B68(v11, qword_1000C8238);
      v84 = v115;
      v85 = v142;
      v80(&v142[*(v115 + 20)], v83, v11);
      sub_100006850(v140, v85 + *(v84 + 24));
      v86 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v131;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_100064F9C(0, v86[2] + 1, 1, v86);
      }

      v10 = v99;
      v90 = v86[2];
      v89 = v86[3];
      if (v90 >= v89 >> 1)
      {
        v86 = sub_100064F9C((v89 > 1), v90 + 1, 1, v86);
      }

      v27 = v88 + 1;

      v79(v29, v11);
      v86[2] = v90 + 1;
      v91 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v138 = v86;
      sub_100033BD4(v142, v86 + v91 + *(v114 + 72) * v90);
      sub_100006918(v140);

      v21 = v106;
      if (v111 == v27)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  v138 = _swiftEmptyArrayStorage;
LABEL_37:
  (*(v95 + 8))(v94, v96);
  sub_100033B34(v97, v98);

  return v138;
}

uint64_t sub_100033B34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100033B88()
{
  result = qword_1000C0E30;
  if (!qword_1000C0E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C0E30);
  }

  return result;
}

uint64_t sub_100033BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100033C38(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v39 = sub_10009CF14();
  v6 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = &v30 - v9;
  v35 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    result = sub_10009E794();
    a1 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v34 = v12;
  v37 = (v6 + 48);
  v38 = (v6 + 56);
  v30 = v6;
  v31 = (v6 + 32);
  v36 = _swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v21 = sub_10009EA44();
    if (!v21 || (v40 = v21, sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr), swift_dynamicCast(), (v20 = v46) == 0))
    {
LABEL_24:
      sub_100015F9C(a1);
      return v36;
    }

LABEL_17:
    v22 = [v20 uniqueIdentifier];
    sub_10009CF04();

    v23 = v39;
    (*v38)(v5, 0, 1, v39);

    if ((*v37)(v5, 1, v23) == 1)
    {
      result = sub_1000242C8(v5);
    }

    else
    {
      v24 = *v31;
      v25 = v39;
      (*v31)(v32, v5, v39);
      v24(v33, v32, v25);
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100064F74(0, v36[2] + 1, 1, v36);
      }

      v28 = v36[2];
      v27 = v36[3];
      if (v28 >= v27 >> 1)
      {
        v36 = sub_100064F74((v27 > 1), v28 + 1, 1, v36);
      }

      v29 = v36;
      v36[2] = v28 + 1;
      result = (v26)(v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, v33, v39);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003407C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v20 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    result = sub_10009E794();
    v3 = v19[1];
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v19[0] = v16;
        sub_1000342C0(v19, &v18);
        if (v2)
        {
          break;
        }

        result = sub_1000615AC(v18);
        v7 = v14;
        v8 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = sub_10009EA44();
        if (v17)
        {
          v18 = v17;
          sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
          swift_dynamicCast();
          v16 = v19[0];
          v14 = v7;
          v15 = v8;
          if (v19[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100015F9C(v3);
    }

    else
    {
LABEL_19:
      sub_100015F9C(v3);
      return v20;
    }
  }

  else
  {
    while (1)
    {
      v14 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = v5[v14];
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000342C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v23 = sub_10009CF14();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v7 = sub_10009E6A4();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v9 = 0;
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 & 0xC000000000000001;
    v20 = v3 + 32;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22)
      {
        v11 = sub_10009EAE4();
      }

      else
      {
        if (v9 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100064F74(0, v10[2] + 1, 1, v10);
      }

      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        v10 = sub_100064F74((v15 > 1), v16 + 1, 1, v10);
      }

      v10[2] = v16 + 1;
      (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v23);
      ++v9;
      if (v13 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_19:

  *v19 = v10;
  return result;
}

void *sub_100034548(void *a1)
{
  v55 = sub_10009CF14();
  v2 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v54 = &v47 - v6;
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = [a1 accessories];
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v10 = sub_10009E6A4();

  v57 = v10;
  sub_100003714(&qword_1000C1350, &qword_1000A0D10);
  sub_100034C5C();
  v11 = sub_10009E7B4();

  v49 = v11;
  v47 = sub_100033C38(v11);
  v48 = 0;
  v50 = a1;
  v12 = [a1 actionSets];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  v13 = sub_10009E6A4();

  if (v13 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v15 = 0;
    v51 = v13 & 0xFFFFFFFFFFFFFF8;
    v52 = v13 & 0xC000000000000001;
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v52)
      {
        v17 = sub_10009EAE4();
      }

      else
      {
        if (v15 >= *(v51 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = [v17 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100064F74(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = sub_100064F74((v21 > 1), v22 + 1, 1, v16);
      }

      v16[2] = v22 + 1;
      (*(v2 + 32))(v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, v8, v55);
      ++v15;
      if (v19 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_19:

  v48 = sub_10003407C(v49);

  v23 = [v50 serviceGroups];
  sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v24 = sub_10009E6A4();

  if (v24 >> 62)
  {
    goto LABEL_35;
  }

  for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10009EBA4())
  {
    v26 = 0;
    v51 = v24 & 0xFFFFFFFFFFFFFF8;
    v52 = v24 & 0xC000000000000001;
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v52)
      {
        v28 = sub_10009EAE4();
      }

      else
      {
        if (v26 >= *(v51 + 16))
        {
          goto LABEL_34;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v31 = j;
      v32 = [v28 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100064F74(0, v27[2] + 1, 1, v27);
      }

      v34 = v27[2];
      v33 = v27[3];
      if (v34 >= v33 >> 1)
      {
        v27 = sub_100064F74((v33 > 1), v34 + 1, 1, v27);
      }

      v27[2] = v34 + 1;
      (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, v54, v55);
      ++v26;
      j = v31;
      if (v30 == v31)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_37:

  v35 = [v50 mediaSystems];
  sub_100007330(0, &qword_1000C1360, HMMediaSystem_ptr);
  v36 = sub_10009E6A4();

  if (v36 >> 62)
  {
    goto LABEL_53;
  }

  for (k = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_10009EBA4())
  {
    v38 = 0;
    v54 = (v36 & 0xC000000000000001);
    v51 = v2 + 32;
    v52 = v36 & 0xFFFFFFFFFFFFFF8;
    v39 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v54)
      {
        v40 = sub_10009EAE4();
      }

      else
      {
        if (v38 >= *(v52 + 16))
        {
          goto LABEL_52;
        }

        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v43 = [v40 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100064F74(0, v39[2] + 1, 1, v39);
      }

      v45 = v39[2];
      v44 = v39[3];
      if (v45 >= v44 >> 1)
      {
        v39 = sub_100064F74((v44 > 1), v45 + 1, 1, v39);
      }

      v39[2] = v45 + 1;
      (*(v2 + 32))(v39 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v45, v53, v55);
      ++v38;
      if (v42 == k)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_55:

  v56 = v47;
  sub_1000615AC(v16);
  sub_1000615AC(v48);
  sub_1000615AC(v27);
  sub_1000615AC(v39);
  return v56;
}

unint64_t sub_100034C5C()
{
  result = qword_1000C1358;
  if (!qword_1000C1358)
  {
    sub_10000375C(&qword_1000C1350, &qword_1000A0D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1358);
  }

  return result;
}

unint64_t sub_100034CC0()
{
  result = qword_1000C0CC8;
  if (!qword_1000C0CC8)
  {
    sub_100007330(255, &qword_1000C0BF0, HMAccessory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CC8);
  }

  return result;
}

uint64_t type metadata accessor for HomeEntity(uint64_t a1)
{
  result = qword_1000C1438;
  if (!qword_1000C1438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100034E4C()
{
  result = qword_1000C1380;
  if (!qword_1000C1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1380);
  }

  return result;
}

uint64_t sub_100034EA0()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C8260);
  sub_100015B68(v0, qword_1000C8260);
  return sub_10009CBB4();
}

uint64_t sub_100034F10(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10009CF14();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v1[6] = swift_task_alloc();
  sub_100003714(&qword_1000C1470, &qword_1000A1108);
  v1[7] = swift_task_alloc();
  v3 = sub_10009CF94();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000350A8, 0, 0);
}

uint64_t sub_1000350A8()
{
  *(v0 + 96) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 104) = sub_10009D1D4();
  sub_100037EA8(&qword_1000C10D0, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100035178, v2, v1);
}

uint64_t sub_100035178()
{

  *(v0 + 112) = sub_10009D004();

  return _swift_task_switch(sub_1000351E8, 0, 0);
}

uint64_t sub_1000351E8()
{
  (*(v0[4] + 56))(v0[6], 1, 1, v0[3]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1000352A4;
  v3 = v0[6];
  v2 = v0[7];

  return WidgetDataModel.home(_:)(v2, v3);
}

uint64_t sub_1000352A4()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);
    v4 = sub_1000357A4;
  }

  else
  {
    sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);

    v4 = sub_100035430;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100035430()
{
  v39 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = sub_10009D924();
  sub_100015B68(v9, qword_1000C8290);
  (*(v8 + 16))(v5, v6, v7);
  v10 = sub_10009D904();
  v11 = sub_10009E844();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  if (v12)
  {
    v36 = v0[8];
    v16 = v0[4];
    v17 = v0[5];
    v18 = v0[3];
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v19 = 136446210;
    v35 = v11;
    sub_10009CF64();
    sub_100037EA8(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = sub_10009ED04();
    v22 = v21;
    (*(v16 + 8))(v17, v18);
    v23 = *(v14 + 8);
    v23(v13, v36);
    v24 = sub_10002AD68(v20, v22, &v38);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v10, v35, "HomeEntity.selectedHome() WidgetDataModel.home=%{public}s", v19, 0xCu);
    sub_100015F44(v37);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v15);
  }

  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[2];
  sub_10009CF64();
  v28 = sub_10009CF84();
  v30 = v29;
  v23(v25, v26);
  v31 = type metadata accessor for HomeEntity(0);
  v32 = (v27 + *(v31 + 20));
  *v32 = v28;
  v32[1] = v30;
  (*(*(v31 - 8) + 56))(v0[2], 0, 1);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1000357A4()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v1, 1, 1, v0[8]);
  sub_1000160CC(v1, &qword_1000C1470, &qword_1000A1108);
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8290);
  v3 = sub_10009D904();
  v4 = sub_10009E824();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomeEntity.selectedHome() WidgetDataModel.home returned 0 homes", v5, 2u);
  }

  v6 = type metadata accessor for HomeEntity(0);
  (*(*(v6 - 8) + 56))(v0[2], 1, 1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_10009ED34();
}

uint64_t sub_100035B60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A88 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CBC4();
  v3 = sub_100015B68(v2, qword_1000C8260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100035C4C(uint64_t a1)
{
  v2 = sub_100037EA8(&qword_1000C1308, type metadata accessor for HomeEntity, &unk_1000A0D20);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100035D10(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10009CD54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = sub_10009E594();
  __chkstk_darwin(v11 - 8);
  sub_10009E584();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10009E574(v15);
  sub_10009E564(*(v1 + *(a1 + 20)));
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10009E574(v16);
  sub_10009CD44();
  (*(v10 + 56))(v8, 1, 1, v9);
  v12 = sub_10009CAA4();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  return sub_10009CAC4();
}

uint64_t sub_100035F68(uint64_t a1)
{
  v2 = sub_100037EA8(&qword_1000C1398, type metadata accessor for HomeEntity, &unk_1000A0EF8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100035FE8()
{
  result = qword_1000C13B8;
  if (!qword_1000C13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13B8);
  }

  return result;
}

unint64_t sub_100036040()
{
  result = qword_1000C13C0;
  if (!qword_1000C13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13C0);
  }

  return result;
}

uint64_t sub_1000360DC(uint64_t a1)
{
  v1[2] = a1;
  sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1000361A4;

  return sub_100037664();
}

uint64_t sub_1000361A4(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000362A4, 0, 0);
}

uint64_t sub_1000362A4()
{
  v13 = v0;
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8290);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A4410, &v12);
    *(v4 + 12) = 2080;
    type metadata accessor for HomeEntity(0);
    v5 = sub_10009E6B4();
    v7 = sub_10002AD68(v5, v6, &v12);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s found homes %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 24);
  v9 = sub_10009CD54();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for HomeEntity(0);
  sub_100037EA8(&qword_1000C1370, type metadata accessor for HomeEntity, &unk_1000A0DD8);
  sub_100037EA8(&qword_1000C1230, type metadata accessor for HomeEntity, &unk_1000A0E98);
  sub_10009CA64();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100036560(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100036618, 0, 0);
}

uint64_t sub_100036618()
{
  type metadata accessor for HomeWidget();
  v0[11] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[12] = v2;
  v0[13] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000366EC;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000366EC(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10003684C, 0, 0);
}

uint64_t sub_10003684C()
{
  v14 = v0;
  v1 = v0[15];
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_100036AA8;
    v3 = v0[10];

    return sub_100034F10(v3);
  }

  else
  {
    if (qword_1000C0A98 != -1)
    {
      swift_once();
    }

    v5 = sub_10009D924();
    sub_100015B68(v5, qword_1000C8290);
    v6 = sub_10009D904();
    v7 = sub_10009E824();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10002AD68(0x52746C7561666564, 0xEF2928746C757365, &v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Error loading HMHomeManager", v8, 0xCu);
      sub_100015F44(v9);
    }

    v10 = v0[6];
    v11 = type metadata accessor for HomeEntity(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100036AA8()
{

  return _swift_task_switch(sub_100036BA4, 0, 0);
}

uint64_t sub_100036BA4()
{
  v17 = v0;
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_10009D924();
  sub_100015B68(v3, qword_1000C8290);
  sub_100037DC8(v2, v1);
  v4 = sub_10009D904();
  v5 = sub_10009E844();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10002AD68(0x52746C7561666564, 0xEF2928746C757365, &v16);
    *(v9 + 12) = 2080;
    sub_100037DC8(v7, v8);
    v10 = sub_10009E5F4();
    v12 = v11;
    sub_1000160CC(v7, &qword_1000C1228, &unk_1000A0880);
    v13 = sub_10002AD68(v10, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s returning selected home: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000160CC(v7, &qword_1000C1228, &unk_1000A0880);
  }

  sub_100037E38(v0[10], v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100036DFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002EF3C;

  return sub_100037EF0(a1);
}

uint64_t sub_100036EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EAAC;

  return sub_1000360DC(a1);
}

unint64_t sub_100036F40()
{
  result = qword_1000C13C8;
  if (!qword_1000C13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13C8);
  }

  return result;
}

uint64_t sub_100036FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100034E4C();
  *v5 = v2;
  v5[1] = sub_10002EF28;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10003708C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EAAC;

  return sub_100036560(a1);
}

uint64_t sub_100037128(uint64_t a1)
{
  v1[2] = a1;
  sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1000371F0;

  return sub_100037664();
}

uint64_t sub_1000371F0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000372F0, 0, 0);
}

uint64_t sub_1000372F0()
{
  v1 = *(v0 + 24);
  v2 = sub_10009CD54();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for HomeEntity(0);
  sub_100037EA8(&qword_1000C1370, type metadata accessor for HomeEntity, &unk_1000A0DD8);
  sub_100037EA8(&qword_1000C1230, type metadata accessor for HomeEntity, &unk_1000A0E98);
  sub_10009CA64();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100037460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100037534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009CF14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000375F0(uint64_t a1)
{
  result = sub_10009CF14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100037664()
{
  v1 = type metadata accessor for HomeEntity(0);
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100037720, 0, 0);
}

uint64_t sub_100037720()
{
  type metadata accessor for HomeWidget();
  v0[9] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[10] = v2;
  v0[11] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1000377F4;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000377F4(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100037954, 0, 0);
}

void *sub_100037954()
{
  v35 = v0;
  v1 = *(v0 + 104);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    goto LABEL_19;
  }

  v3 = [*(v0 + 104) hf_orderedHomes];
  sub_100037D18();
  v4 = sub_10009E6A4();

  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v5 = sub_10009D924();
  sub_100015B68(v5, qword_1000C8290);
  v33 = v4;

  v6 = sub_10009D904();
  v7 = sub_10009E844();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10002AD68(0x69746E45656D6F68, 0xEE00292873656974, &v34);
    *(v8 + 12) = 2080;
    v9 = sub_10009E6B4();
    v11 = sub_10002AD68(v9, v10, &v34);

    *(v8 + 14) = v11;
    v4 = v33;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s found homes %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (v4 >> 62)
  {
    v12 = sub_10009EBA4();
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_18:

    goto LABEL_19;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_8:
  v34 = _swiftEmptyArrayStorage;
  result = sub_10001BD08(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = *(v0 + 56);
  v32 = *(v0 + 48);
  v16 = v4;
  v30 = v1;
  v31 = v4 & 0xC000000000000001;
  v2 = v34;
  do
  {
    if (v31)
    {
      v17 = sub_10009EAE4();
    }

    else
    {
      v17 = *(v16 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = *(v0 + 64);
    v20 = [v17 uniqueIdentifier];
    sub_10009CF04();

    v21 = [v18 name];
    v22 = sub_10009E5C4();
    v24 = v23;

    v25 = (v19 + *(v32 + 20));
    *v25 = v22;
    v25[1] = v24;
    v34 = v2;
    v27 = v2[2];
    v26 = v2[3];
    if (v27 >= v26 >> 1)
    {
      sub_10001BD08((v26 > 1), v27 + 1, 1);
      v2 = v34;
    }

    v28 = *(v0 + 64);
    ++v14;
    v2[2] = v27 + 1;
    sub_100037D64(v28, v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v27);
    v16 = v33;
  }

  while (v12 != v14);

LABEL_19:

  v29 = *(v0 + 8);

  return v29(v2);
}

unint64_t sub_100037D18()
{
  result = qword_1000C1260;
  if (!qword_1000C1260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C1260);
  }

  return result;
}

uint64_t sub_100037D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100037EF0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10009CF14();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for HomeEntity(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_100038044;

  return sub_100037664();
}

uint64_t sub_100038044(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100038144, 0, 0);
}

uint64_t sub_100038144()
{
  v31 = v0;
  v1 = v0[11];
  v26 = *(v1 + 16);
  if (v26)
  {
    v2 = 0;
    v3 = v0[4];
    v23 = v0[2];
    v24 = v0[7];
    v27 = _swiftEmptyArrayStorage;
    v25 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v4 = v2 + 1;
      v28 = *(v24 + 72);
      v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      sub_100038504(v0[11] + v29 + v28 * v2, v0[9]);
      v5 = 0;
      v6 = *(v23 + 16);
      do
      {
        if (v6 == v5)
        {
          sub_100038568(v0[9]);
          goto LABEL_4;
        }

        v7 = v0[5];
        v8 = v0[3];
        (*(v3 + 16))(v7, v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v5++, v8);
        v9 = sub_10009CEF4();
        (*(v3 + 8))(v7, v8);
      }

      while ((v9 & 1) == 0);
      sub_100037D64(v0[9], v0[8]);
      v10 = v27;
      v30 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001BD08(0, v27[2] + 1, 1);
        v10 = v30;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_10001BD08((v11 > 1), v12 + 1, 1);
        v10 = v30;
      }

      v13 = v0[8];
      *(v10 + 16) = v12 + 1;
      v27 = v10;
      sub_100037D64(v13, v10 + v29 + v12 * v28);
LABEL_4:
      v2 = v4;
      v1 = v25;
      if (v4 == v26)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_16:

  if (qword_1000C0A98 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v14 = sub_10009D924();
  sub_100015B68(v14, qword_1000C8290);

  v15 = sub_10009D904();
  v16 = sub_10009E844();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10002AD68(0x7365697469746E65, 0xEE00293A726F6628, &v30);
    *(v17 + 12) = 2080;
    v18 = sub_10009E6B4();
    v20 = sub_10002AD68(v18, v19, &v30);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s matched homes %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v0[1];

  return v21(v27);
}

uint64_t sub_100038504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038568(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000385FC()
{
  v1[2] = v0;
  v2 = sub_10009CF94();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10009D1E4();
  v1[7] = sub_10009D1D4();
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_10003870C;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10003870C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    sub_10003A5E4();
    v4 = sub_10009E714();
    v6 = v5;
    v7 = sub_100038B78;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    sub_10003A5E4();
    v10 = sub_10009E714();
    v9 = v11;
    *(v3 + 80) = v10;
    *(v3 + 88) = v11;
    v7 = sub_1000388B0;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000388B0()
{
  sub_10009E744();
  *(v0 + 96) = sub_10009E734();
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100038944, v2, v1);
}

uint64_t sub_100038944()
{

  v0[13] = sub_10009CFB4();
  v1 = v0[10];
  v2 = v0[11];

  return _swift_task_switch(sub_1000389B4, v1, v2);
}

uint64_t sub_1000389B4()
{
  v1 = v0[13];

  if (v1)
  {
    v16 = v0[13];
    v2 = v0[9];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[4];
      v6 = *(v4 + 16);
      v5 = v4 + 16;
      v15 = v6;
      v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v8 = *(v5 + 56);
      do
      {
        v9 = v0[5];
        v10 = v0[3];
        v15(v9, v7, v10);
        v11.super.isa = v16;
        v12 = sub_10009CF74(v11);
        (*(v5 - 8))(v9, v10);
        if (v12)
        {
          sub_10009E684();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10009E6C4();
          }

          sub_10009E6E4();
        }

        v7 += v8;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
  }

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100038B78()
{

  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

void sub_100038BE8(void *a1@<X8>)
{
  *a1 = 0x74696B656D6F68;
  a1[1] = 0xE700000000000000;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x80000001000A4310;
}

uint64_t sub_100038C20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100038CC4;

  return sub_100039BD8();
}

uint64_t sub_100038CC4(char a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v5;
  v3[1] = sub_100038E04;

  return sub_10003A1C0();
}

uint64_t sub_100038E04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_100038F04, 0, 0);
}

uint64_t sub_100038F04()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = 0xE700000000000000;
  if (*(v0 + 56))
  {
    v4 = 0x80000001000A4710;
  }

  v5 = 0x74696B656D6F68;
  if (*(v0 + 56))
  {
    v5 = 0xD000000000000020;
  }

  *v3 = v5;
  v3[1] = v4;
  v3[2] = v2;
  v3[3] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100038F68@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_10009CD34();
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  __chkstk_darwin(v1);
  v52 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009CF54();
  __chkstk_darwin(v4 - 8);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009E5A4();
  __chkstk_darwin(v6 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009CD54();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&qword_1000C1488, &qword_1000A1178);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_100003714(&qword_1000C1490, &qword_1000A1180);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = sub_100003714(&qword_1000C1498, &qword_1000A1188);
  v19 = *(v18 - 8);
  v48 = v18;
  v49 = v19;
  __chkstk_darwin(v18);
  v54 = &v39 - v20;

  sub_100003714(&qword_1000C14A0, &qword_1000A1190);
  v21 = sub_10000375C(&qword_1000C14A8, &qword_1000A1198);
  v22 = sub_10001CDC8(&qword_1000C14B0, &qword_1000C14A8, &qword_1000A1198, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v57 = v21;
  v58 = v22;
  swift_getOpaqueTypeConformance2();
  sub_100039A10();
  sub_10009E484();
  v23 = sub_10001CDC8(&qword_1000C14C0, &qword_1000C1488, &qword_1000A1178, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v24 = v17;
  sub_10009DE64();
  (*(v11 + 8))(v13, v10);
  sub_10009E554();
  v42 = "LaunchHomeAppControlDisplayName";
  sub_10009CF44();
  v41 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v56 + 104);
  v56 += 104;
  v40 = v25;
  v26 = v52;
  v25(v52);
  v27 = v46;
  sub_10009CD64();
  v57 = v10;
  v58 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v27;
  v30 = v44;
  v31 = v24;
  sub_10009DE44();
  v32 = *(v50 + 8);
  v33 = v29;
  v34 = v29;
  v35 = v51;
  v32(v33, v51);
  (*(v45 + 8))(v31, v30);
  sub_10009E554();
  sub_10009CF44();
  v40(v26, v41, v55);
  sub_10009CD64();
  v57 = v30;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v54;
  v37 = v48;
  sub_10009DE34();
  v32(v34, v35);
  return (*(v49 + 8))(v36, v37);
}

uint64_t sub_100039600(uint64_t *a1)
{
  v2 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_100003714(&qword_1000C14A8, &qword_1000A1198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  sub_10009CE14();
  v13 = sub_10009CE24();
  result = (*(*(v13 - 8) + 48))(v4, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16[1] = sub_10001EFB4(v4);
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v9;
    v15[4] = v12;
    v15[5] = v11;

    sub_100003714(&qword_1000C14C8, &qword_1000A11A8);
    sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8, &protocol conformance descriptor for Label<A, B>);
    sub_10001E244();
    sub_10009E354();
    sub_10009E114();
    sub_10001CDC8(&qword_1000C14B0, &qword_1000C14A8, &qword_1000A1198, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
    sub_10009DDA4();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1000398A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10009CF54();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10009E5A4();
  __chkstk_darwin(v3 - 8);
  sub_10009E554();
  sub_10009CF44();
  sub_10009E5E4();
  sub_1000037A4();

  return sub_10009E254();
}

unint64_t sub_100039A10()
{
  result = qword_1000C14B8;
  if (!qword_1000C14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C14B8);
  }

  return result;
}

uint64_t sub_100039A64()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039AC0()
{
  sub_10000375C(&qword_1000C1498, &qword_1000A1188);
  sub_10000375C(&qword_1000C1490, &qword_1000A1180);
  sub_10000375C(&qword_1000C1488, &qword_1000A1178);
  sub_10001CDC8(&qword_1000C14C0, &qword_1000C1488, &qword_1000A1178, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100039BD8()
{
  v1 = sub_10009D924();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039C94, 0, 0);
}

uint64_t sub_100039C94()
{
  *(v0 + 48) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 56) = sub_10009D1D4();
  sub_10003A5E4();
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100039D34, v2, v1);
}

uint64_t sub_100039D34()
{

  *(v0 + 64) = sub_10009D004();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100039DD4;

  return sub_1000385FC();
}

uint64_t sub_100039DD4(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100039EF4, 0, 0);
}

uint64_t sub_100039EF4()
{
  v24 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[10] + 32;
    while (1)
    {
      if (v4)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_13;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v1 = [v7 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

      if ((v1 & 1) == 0)
      {
        ++v3;
        if (v9 != i)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000C8318;
  sub_10009D934();
  v11 = sub_10009D904();
  v12 = sub_10009E844();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v17 = 136315394;
    v0[2] = &type metadata for LaunchHomeAppControl.CurrentHomeValueProvider;
    sub_100003714(&qword_1000C14D8, &unk_1000A1260);
    v18 = sub_10009E5F4();
    v20 = sub_10002AD68(v18, v19, &v23);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4790, &v23);
    _os_log_impl(&_mh_execute_header, v11, v12, "<%s: %s> Empty homes", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v15 + 8))(v14, v16);
  v1 = 0;
LABEL_20:

  v21 = v0[1];

  return v21(v1);
}

uint64_t sub_10003A1C0()
{
  v1 = sub_10009D924();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10003A2BC;

  return sub_100039BD8();
}

uint64_t sub_10003A2BC(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10003A3BC, 0, 0);
}

uint64_t sub_10003A3BC()
{
  v14 = v0;
  if (*(v0 + 48))
  {
    v1 = 0xD000000000000026;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (*(v0 + 48))
  {
    v2 = "urlStringToHomeApp()";
  }

  else
  {
    v2 = "r Scene in Home app";
  }

  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C8318;
  sub_10009D934();

  v4 = sub_10009D904();
  v5 = sub_10009E844();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10002AD68(0xD000000000000014, 0x80000001000A4740, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10002AD68(v1, v2 | 0x8000000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s urlStringToHomeApp =  %s)", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v8 + 8))(v7, v9);

  v11 = *(v0 + 8);

  return v11(v1, v2 | 0x8000000000000000);
}

unint64_t sub_10003A5E4()
{
  result = qword_1000C10D0;
  if (!qword_1000C10D0)
  {
    sub_10009D1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C10D0);
  }

  return result;
}

__n128 sub_10003A63C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003A648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003A690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A6E0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_100003714(&qword_1000C14E8, &qword_1000A12C8);
  __chkstk_darwin(v36);
  v33 = (&v26 - v1);
  v35 = sub_100003714(&qword_1000C14F0, &qword_1000A12D0);
  v29 = *(v35 - 8);
  v2 = v29;
  v3 = __chkstk_darwin(v35);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v34 = sub_100003714(&qword_1000C14F8, &qword_1000A12D8);
  v32 = *(v34 - 8);
  v8 = v32;
  v9 = __chkstk_darwin(v34);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v30 = sub_10004D284();
  v15 = v14;
  v17 = v16;
  sub_10003AB74();
  v31 = v13;
  sub_10009DDB4();
  sub_10003ABC8();
  v28 = v7;
  sub_10009DDB4();
  v27 = *(v8 + 16);
  v18 = v34;
  v27(v11, v13, v34);
  v19 = *(v2 + 16);
  v20 = v35;
  v19(v5, v7, v35);
  v21 = v33;
  *v33 = v30;
  v21[1] = v15;
  *(v21 + 16) = v17 & 1;
  v22 = v36;
  v27(v21 + *(v36 + 48), v11, v18);
  v19(v21 + *(v22 + 64), v5, v20);

  sub_10009DA24();
  v23 = *(v29 + 8);
  v23(v28, v20);
  v24 = *(v32 + 8);
  v24(v31, v18);
  v23(v5, v20);
  v24(v11, v18);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10003AAF4();
  sub_10009DA64();
  return 0;
}

unint64_t sub_10003AAF4()
{
  result = qword_1000C14E0;
  if (!qword_1000C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C14E0);
  }

  return result;
}

unint64_t sub_10003AB74()
{
  result = qword_1000C1500;
  if (!qword_1000C1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1500);
  }

  return result;
}

unint64_t sub_10003ABC8()
{
  result = qword_1000C1508;
  if (!qword_1000C1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1508);
  }

  return result;
}

unint64_t sub_10003AC20()
{
  result = qword_1000C1510;
  if (!qword_1000C1510)
  {
    sub_10000375C(&qword_1000C1518, &qword_1000A12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1510);
  }

  return result;
}

uint64_t sub_10003AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10003AD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_10003AE6C(uint64_t a1)
{
  sub_10003AF84(319, &qword_1000C1590, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10003AF84(319, &qword_1000C1598, &type metadata for EdgeInsets);
    if (v2 <= 0x3F)
    {
      sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10003AFD0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003AF84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003AFD0(uint64_t a1)
{
  if (!qword_1000C15A8)
  {
    sub_10000375C(&unk_1000C15B0, &unk_1000A1360);
    v1 = sub_10009E944();
    if (!v2)
    {
      atomic_store(v1, &qword_1000C15A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessoriesAndScenesError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoriesAndScenesError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10003B18C(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  type metadata accessor for AccessoryAndSceneEntity(0);
  v2 = _swiftEmptyArrayStorage;
  v3 = &qword_1000C0E60;
  while (1)
  {
    v5 = sub_10001A0E8();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_10009EBA4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_10009EBA4();
      v11 = v27 + v8;
      if (__OFADD__(v27, v8))
      {
LABEL_33:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_10009EBA4();
      goto LABEL_16;
    }

    if (v9)
    {
      goto LABEL_15;
    }

    v12 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = v8;
      goto LABEL_17;
    }

LABEL_16:
    v13 = v8;
    result = sub_10009EAF4();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v15 >> 1) - v14) < v13)
    {
      goto LABEL_37;
    }

    v32 = v13;
    v30 = v1;
    v18 = v12 + 8 * v14 + 32;
    v28 = v12;
    if (v7)
    {
      if (v16 < 1)
      {
        goto LABEL_39;
      }

      sub_10001CDC8(&qword_1000C0E68, v3, &unk_1000A1E40, &protocol conformance descriptor for [A]);
      for (i = 0; i != v16; ++i)
      {
        sub_100003714(v3, &unk_1000A1E40);
        v20 = sub_10001C624(v31, i, v6);
        v22 = v3;
        v23 = *v21;
        (v20)(v31, 0);
        *(v18 + 8 * i) = v23;
        v3 = v22;
      }
    }

    else
    {
      sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    if (v32 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v32);
      v26 = v24 + v32;
      if (v25)
      {
        goto LABEL_38;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v17 = v12;
  result = sub_10009EBA4();
  v12 = v17;
  v16 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v13 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

size_t sub_10003B4F0(size_t result, void *a2)
{
  v2 = a2[2];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = result;
  v5 = 0;
  v6 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage;
  while (v6 <= 1)
  {
    v8 = v5 + v4;
    if (__OFADD__(v5, v4))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    if (v2 >= v8)
    {
      v9 = v5 + v4;
    }

    else
    {
      v9 = v2;
    }

    v10 = v9 - v5;
    if (v9 < v5)
    {
      goto LABEL_31;
    }

    if (v5 < 0)
    {
      goto LABEL_32;
    }

    if (v10 == v2)
    {

      v11 = a2;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (v9 != v5)
      {
        if (v10 < 1)
        {
          v11 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_100003714(&qword_1000C0EC0, &qword_10009FCE8);
          v14 = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
          v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v17 = *(v14 + 72);
          v11 = swift_allocObject();
          result = j__malloc_size(v11);
          if (!v17)
          {
            goto LABEL_33;
          }

          if (result - v16 == 0x8000000000000000 && v17 == -1)
          {
            goto LABEL_34;
          }

          v11[2] = v10;
          v11[3] = 2 * ((result - v16) / v17);
        }

        type metadata accessor for AccessoryAndSceneEntity(0);
        swift_arrayInitWithCopy();
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000656C0(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v13 = v7[2];
    v12 = v7[3];
    v6 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_1000656C0((v12 > 1), v13 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v6;
    v7[v13 + 4] = v11;
    v5 = v8;
    if (v8 >= v2)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_10003B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for AccessoriesAndScenesEntry(0);
  v5[7] = swift_task_alloc();
  v6 = sub_10009D924();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10009D8F4();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003B8BC, 0, 0);
}

uint64_t sub_10003B8BC()
{
  v17 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_100015B68(v3, qword_1000C8278);
  v0[14] = v4;
  (*(v2 + 16))(v1, v4, v3);
  sub_10009D444();
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  v5 = sub_10009D904();
  v6 = sub_10009E844();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4E80, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Getting Snapshot for interactive widgets... - started", v7, 0xCu);
    sub_100015F44(v8);
  }

  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_10003BAE8;
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];

  return sub_10003BD74(v10, v14, v12, v13, v11);
}

uint64_t sub_10003BAE8()
{

  return _swift_task_switch(sub_10003BBE4, 0, 0);
}

uint64_t sub_10003BBE4(uint64_t a1)
{
  v12 = v1;
  v2 = sub_10009D904();
  v3 = sub_10009E844();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4E80, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Getting Snapshot for interactive widgets... - ended", v4, 0xCu);
    sub_100015F44(v5);
  }

  v7 = v1[12];
  v6 = v1[13];
  v8 = v1[11];
  sub_10004EF84(v1[7], v1[2], type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009D8D4();
  (*(v7 + 8))(v6, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_10003BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a3;
  v5[9] = a4;
  v5[6] = a1;
  v5[7] = a2;
  v10 = swift_task_alloc();
  v5[10] = v10;
  *v10 = v5;
  v10[1] = sub_10003BE48;

  return sub_100054658(a2, a3, a4, a5);
}

uint64_t sub_10003BE48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_10003C03C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_10003BF70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003BF70()
{
  v0[5] = v0[12];
  sub_10009C964();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_10009CEB4();
  v5 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v6 = (v4 + *(v5 + 20));
  *v6 = v3;
  v6[1] = v1;
  v6[2] = v2;
  *(v4 + *(v5 + 24)) = 0;
  v8 = v0[1];

  return v8();
}

uint64_t sub_10003C03C()
{
  v26 = v0;
  *(v0 + 16) = *(v0 + 88);
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 104);
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v2 = sub_10009D924();
    sub_100015B68(v2, qword_1000C8278);
    v3 = sub_10009D904();
    v4 = sub_10009E824();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4B90, &v25);
      *(v5 + 12) = 2112;
      sub_10005AFE4();
      swift_allocError();
      *v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v9;
      *v6 = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s accessoriesAndScenes failed: %@", v5, 0x16u);
      sub_1000160CC(v6, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v7);
    }

    *(v0 + 32) = _swiftEmptyArrayStorage;
    sub_10009C964();
  }

  else
  {

    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v10 = sub_10009D924();
    sub_100015B68(v10, qword_1000C8278);
    swift_errorRetain();
    v11 = sub_10009D904();
    v12 = sub_10009E824();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4B90, &v25);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s accessoriesAndScenes failed: %@", v13, 0x16u);
      sub_1000160CC(v14, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v15);
    }

    *(v0 + 24) = _swiftEmptyArrayStorage;
    sub_10009C964();

    v1 = 1;
  }

  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  sub_10009CEB4();
  v21 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v22 = (v20 + *(v21 + 20));
  *v22 = v19;
  v22[1] = v17;
  v22[2] = v18;
  *(v20 + *(v21 + 24)) = v1;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10003C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10009E404();
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10009D924();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_10009D8F4();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10003C640, 0, 0);
}

uint64_t sub_10003C640()
{
  v17 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_100015B68(v3, qword_1000C8278);
  v0[17] = v4;
  (*(v2 + 16))(v1, v4, v3);
  sub_10009D444();
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  v5 = sub_10009D904();
  v6 = sub_10009E844();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4B70, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Loading Timeline for interactive widgets... - started", v7, 0xCu);
    sub_100015F44(v8);
  }

  sub_10005C4A4(v0[3], v0[4], v0[5], v0[6]);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_10003C878;
  v10 = v0[10];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[4];

  return sub_10003BD74(v10, v13, v14, v11, v12);
}

uint64_t sub_10003C878()
{

  return _swift_task_switch(sub_10003C974, 0, 0);
}

uint64_t sub_10003C974(uint64_t a1)
{
  v16 = v1;
  v2 = sub_10009D904();
  v3 = sub_10009E844();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4B70, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Loading Timeline for interactive widgets... - ended", v4, 0xCu);
    sub_100015F44(v5);
  }

  v7 = v1[15];
  v6 = v1[16];
  v8 = v1[14];
  v10 = v1[9];
  v9 = v1[10];
  sub_100003714(&qword_1000C1D28, &qword_1000A1DA8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10009F8D0;
  sub_10004DC34(v9, v12 + v11, type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009E3F4();
  sub_10004DA88(&qword_1000C1D20, type metadata accessor for AccessoriesAndScenesEntry, &unk_1000A1CC8);
  sub_10009E4A4();
  sub_10004DD8C(v9, type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009D8D4();
  (*(v7 + 8))(v6, v8);

  v13 = v1[1];

  return v13();
}

uint64_t sub_10003CBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10009D924();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D8F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v10 = sub_100015B68(v2, qword_1000C8278);
  (*(v3 + 16))(v5, v10, v2);
  sub_10009D444();
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  sub_10009CEA4();
  v11 = sub_100031E7C();
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v17 = (a1 + *(v16 + 20));
  *v17 = v11;
  v17[1] = v13;
  v17[2] = v15;
  *(a1 + *(v16 + 24)) = 0;
  sub_10009D8D4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10003CE04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002EF28;

  return sub_10003B76C(a1, v6, v7, v8, a3);
}

uint64_t sub_10003CEC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002EF28;

  return sub_10003C494(a1, v6, v7, v8, a3);
}

uint64_t sub_10003CF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001EAAC;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10003D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002EF28;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

Swift::Int sub_10003D110()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

Swift::Int sub_10003D184(uint64_t a1)
{
  v2 = *v1;
  sub_10009EDD4();
  sub_10009EDE4(v2);
  return sub_10009EE04();
}

unint64_t sub_10003D1DC()
{
  result = qword_1000C15F0;
  if (!qword_1000C15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C15F0);
  }

  return result;
}

uint64_t sub_10003D24C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AccessoryAndSceneEntity(0);
    return a2;
  }

  return result;
}

uint64_t sub_10003D2E0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = sub_10009D494();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryAndSceneEntity(0);
  v7 = a1 + *(v6 + 24);
  v8 = type metadata accessor for WidgetTileInfo(0);
  v9 = (v7 + *(v8 + 28));
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
  }

  else
  {
    v11 = 0;
  }

  v33 = v11;
  v12 = 0xE000000000000000;
  if (v10)
  {
    v12 = v10;
  }

  v35 = v12;
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  v13 = sub_10009D474();
  v37 = v14;
  v15 = *(v3 + 8);
  v31 = v13;
  v32 = v3 + 8;
  v16 = v34;
  v15(v5, v34);
  v17 = (v36 + *(v6 + 24) + *(v8 + 28));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v17[1];
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();

  v21 = v33;
  sub_10009D484();
  v22 = sub_10009D474();
  v24 = v23;
  v25 = v5;
  v26 = v35;
  v15(v25, v16);
  v27 = v21 == v19 && v26 == v20;
  if (v27 || (sub_10009ED34() & 1) != 0)
  {

    if (v31 == v22 && v37 == v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_10009ED34();
    }
  }

  else
  {

    v28 = sub_10009ED34();
  }

  return v28 & 1;
}

uint64_t sub_10003D590(id *a1, uint64_t a2)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_10009CF04();

  v8 = sub_10009CEF4();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_10003D69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  __chkstk_darwin(v5 - 8);
  v44 = &v38 - v6;
  v7 = type metadata accessor for WidgetTileInfo(0);
  v43 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v38 - v10;
  v11 = sub_10009D4F4();
  v42 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for AccessoryAndSceneEntity(0);
  v18 = v17;
  v19 = a1 + *(v17 + 24);
  v20 = v19 + *(v7 + 60);
  if (*(v20 + 8) != 3)
  {
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  v38 = a1;
  v39 = a3;
  v21 = *v20;
  v22 = sub_10009E7F4();
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v25 = sub_10009D574();
    if (*(v25 + 16) && (v26 = sub_10001B760(v24), (v27 & 1) != 0))
    {
      v28 = v42;
      (*(v42 + 16))(v14, *(v25 + 56) + *(v42 + 72) * v26, v11);

      (*(v28 + 32))(v16, v14, v11);
      v29 = v44;
      sub_10000E9E8(v21, v16, v44);
      (*(v28 + 8))(v16, v11);
      if ((*(v43 + 48))(v29, 1, v7) != 1)
      {
        v31 = v29;
        v32 = v40;
        sub_10004EF84(v31, v40, type metadata accessor for WidgetTileInfo);
        v33 = v41;
        sub_10004EF84(v32, v41, type metadata accessor for WidgetTileInfo);
        sub_10005B1E0(v19 + *(v7 + 76), v33 + *(v7 + 76));
        v34 = sub_10009CF14();
        v35 = *(*(v34 - 8) + 16);
        v37 = v38;
        v36 = v39;
        v35(v39, v38, v34);
        v35(v36 + *(v18 + 20), v37 + *(v18 + 20), v34);
        sub_10004DC34(v33, v36 + *(v18 + 24), type metadata accessor for WidgetTileInfo);
        (*(*(v18 - 8) + 56))(v36, 0, 1, v18);
        return sub_10004DD8C(v33, type metadata accessor for WidgetTileInfo);
      }

      sub_1000160CC(v29, &qword_1000C0C20, &qword_1000A1E30);
    }

    else
    {
    }
  }

  return (*(*(v18 - 8) + 56))(v39, 1, 1, v18);
}

void sub_10003DB4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v9 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v24 = [a2 widgetManager];
  sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
  isa = sub_10009E694().super.isa;
  v14 = sub_10009E5B4();
  v15 = sub_10009E5B4();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v13, v9);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10005B384;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E120;
  aBlock[3] = &unk_1000BBC98;
  v19 = _Block_copy(aBlock);

  v21 = isa;
  v20 = v24;
  [v24 monitorAndFetchStateForCharacteristics:isa widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

void sub_10003DDDC(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v243 = a4;
  v204[1] = a3;
  v8 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v8 - 8);
  v249 = v204 - v9;
  v217 = sub_10009D5A4();
  v10 = *(v217 - 8);
  v11 = __chkstk_darwin(v217);
  v248 = v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v247 = v204 - v13;
  v219 = type metadata accessor for WidgetTileInfo(0);
  v14 = __chkstk_darwin(v219);
  v16 = v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v204 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v204 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v204 - v24;
  v26 = __chkstk_darwin(v23);
  v246 = v204 - v27;
  __chkstk_darwin(v26);
  v220 = v204 - v28;
  v252 = type metadata accessor for AccessoryAndSceneEntity(0);
  v29 = *(v252 - 8);
  v30 = __chkstk_darwin(v252);
  v245 = v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v256 = v204 - v33;
  v34 = __chkstk_darwin(v32);
  v206 = v204 - v35;
  v36 = __chkstk_darwin(v34);
  v218 = v204 - v37;
  __chkstk_darwin(v36);
  v223 = v204 - v38;
  v39 = sub_10009CF14();
  v253 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v244 = v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v255 = v204 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = v204 - v45;
  if (a1)
  {
    v241 = v29;
    v242 = v10;
    v251 = v44;
    v216 = v16;
    v47 = qword_1000C0A90;
    v48 = a1;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = sub_10009D924();
    v50 = sub_100015B68(v49, qword_1000C8278);
    v51 = v48;
    v222 = v50;
    v52 = sub_10009D904();
    v53 = sub_10009E844();

    LODWORD(v250) = v53;
    v54 = os_log_type_enabled(v52, v53);
    v215 = v19;
    v214 = v22;
    v213 = v25;
    v254 = a5;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v257);
      *(v55 + 12) = 2080;
      v56 = [v51 valueByCharacteristicUniqueIdentifier];
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10009E4C4();

      v57 = sub_10009E4D4();
      v59 = v58;

      v60 = sub_10002AD68(v57, v59, &v257);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v52, v250, "%s Current characteristic values: %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    v69 = v51;
    v70 = sub_10009D904();
    v71 = sub_10009E844();

    v72 = os_log_type_enabled(v70, v71);
    v250 = v69;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *v73 = 136315394;
      *(v73 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v257);
      *(v73 + 12) = 2080;
      v74 = [v69 reachabilityByAccessoryUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10009E4C4();

      v75 = sub_10009E4D4();
      v77 = v76;

      v78 = v75;
      v69 = v250;
      v79 = sub_10002AD68(v78, v77, &v257);

      *(v73 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "%s Current accessory reachability: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    v80 = v223;
    v81 = v219;
    v240 = v254 >> 62;
    v82 = v254;
    if (v254 >> 62)
    {
      v83 = sub_10009EBA4();
    }

    else
    {
      v83 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = [v69 valueByCharacteristicUniqueIdentifier];
    v221 = sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v85 = sub_10009E4C4();

    v86 = *(v85 + 16);

    if (v83 != v86)
    {
      v88 = _swiftEmptyArrayStorage;
      if (v83)
      {
        v257 = _swiftEmptyArrayStorage;
        sub_10001BC00(0, v83 & ~(v83 >> 63), 0);
        if (v83 < 0)
        {
          __break(1u);
          return;
        }

        v89 = 0;
        v88 = v257;
        v90 = v82;
        v91 = v82 & 0xC000000000000001;
        do
        {
          if (v91)
          {
            v92 = sub_10009EAE4();
          }

          else
          {
            v92 = *(v90 + 8 * v89 + 32);
          }

          v93 = v92;
          v94 = [v92 uniqueIdentifier];
          sub_10009CF04();

          v257 = v88;
          v96 = v88[2];
          v95 = v88[3];
          if (v96 >= v95 >> 1)
          {
            sub_10001BC00((v95 > 1), v96 + 1, 1);
            v88 = v257;
          }

          ++v89;
          v88[2] = v96 + 1;
          (v253[4])(v88 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + v253[9] * v96, v46, v251);
          v90 = v254;
        }

        while (v83 != v89);
        v82 = v254;
        v69 = v250;
      }

      v97 = sub_100016298(v88);

      v98 = [v69 valueByCharacteristicUniqueIdentifier];
      sub_10009E4C4();

      v99 = sub_100016434();
      if (*(v99 + 16) <= v97[2] >> 3)
      {
        v257 = v97;
        sub_1000108EC(v99);
      }

      else
      {
        sub_100011BB0(v99, v97);
      }

      v101 = v69;

      v102 = sub_10009D904();
      v103 = sub_10009E824();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v257 = v105;
        *v104 = 134218498;
        if (v240)
        {
          v106 = sub_10009EBA4();
        }

        else
        {
          v106 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v104 + 4) = v106;

        *(v104 + 12) = 2048;
        v107 = [v101 valueByCharacteristicUniqueIdentifier];
        v108 = sub_10009E4C4();

        v109 = *(v108 + 16);

        *(v104 + 14) = v109;

        *(v104 + 22) = 2080;
        v110 = sub_10009E764();
        v112 = v111;

        v113 = sub_10002AD68(v110, v112, &v257);

        *(v104 + 24) = v113;
        _os_log_impl(&_mh_execute_header, v102, v103, "Error: Asked for %ld characteristics but got %ld back instead, missing: %s", v104, 0x20u);
        sub_100015F44(v105);

        v80 = v223;
        v81 = v219;
        v69 = v250;
      }

      else
      {

        v80 = v223;
        v81 = v219;
      }
    }

    v114 = v243[2];
    if (v114)
    {
      v212 = (*(v241 + 80) + 32) & ~*(v241 + 80);
      v115 = v243 + v212;
      v254 = (v253 + 2);
      v211 = v241[9];
      v210 = (v242 + 16);
      v209 = (v242 + 8);
      v208 = (v253 + 1);
      v116 = _swiftEmptyArrayStorage;
      *&v87 = 136315906;
      v207 = v87;
      *&v87 = 136315138;
      v205 = v87;
      v117 = v220;
      v118 = v218;
      do
      {
        v242 = v115;
        v243 = v114;
        sub_10004DC34(v115, v80, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(v80 + *(v252 + 24), v117, type metadata accessor for WidgetTileInfo);
        LODWORD(v240) = sub_10003F7F4(v117, v69, v80);
        if ((v240 & 1) == 0)
        {
          sub_10004DC34(v80, v118, type metadata accessor for AccessoryAndSceneEntity);
          v119 = sub_10009D904();
          v120 = sub_10009E844();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v122 = v81;
            v123 = swift_slowAlloc();
            v257 = v123;
            *v121 = v205;
            sub_10004DC34(v118, v206, type metadata accessor for AccessoryAndSceneEntity);
            v124 = sub_10009E5F4();
            v126 = v125;
            sub_10004DD8C(v118, type metadata accessor for AccessoryAndSceneEntity);
            v127 = sub_10002AD68(v124, v126, &v257);

            *(v121 + 4) = v127;
            v117 = v220;
            _os_log_impl(&_mh_execute_header, v119, v120, "Unreachable item: %s", v121, 0xCu);
            sub_100015F44(v123);
            v81 = v122;
          }

          else
          {

            sub_10004DD8C(v118, type metadata accessor for AccessoryAndSceneEntity);
          }
        }

        v241 = v116;
        v128 = *v254;
        v253 = v128;
        v129 = v251;
        (v128)(v255, v117, v251);
        (v128)(v244, v117 + v81[5], v129);
        v130 = (v117 + v81[6]);
        v131 = *v130;
        v132 = v130[1];
        v133 = (v117 + v81[7]);
        v134 = *v133;
        v135 = v133[1];
        v238 = v131;
        v239 = v134;
        v231 = v135;
        v136 = v81[9];
        v137 = (v117 + v81[8]);
        v138 = v137[1];
        v234 = *v137;
        v229 = v138;
        v139 = *(v117 + v136 + 8);
        v237 = *(v117 + v136);
        v230 = v139;
        v140 = v81[10];
        v141 = *v210;
        v232 = v141;
        v142 = v217;
        v141(v247, (v117 + v140), v217);
        v141(v248, (v117 + v81[11]), v142);
        v143 = *(v117 + v81[12]);
        v144 = v117 + v81[15];
        v236 = *v144;
        v235 = *(v144 + 8);

        v145 = v132;

        v146 = [v250 valueByCharacteristicUniqueIdentifier];
        v233 = sub_10009E4C4();

        sub_10001E0A8(v117 + v81[19], v249, &qword_1000C0C28, &qword_1000A3620);
        v147 = v81[18];
        v148 = sub_10009D3F4();
        v149 = v246;
        (*(*(v148 - 8) + 56))(v246 + v147, 1, 1, v148);
        v150 = v81[19];
        v228 = v150;
        v151 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
        (*(*(v151 - 8) + 56))(v149 + v150, 1, 1, v151);
        v152 = v81[21];
        v227 = v81[20];
        v225 = (v149 + v152);
        v153 = v81[22];
        v226 = v81[23];
        v224 = (v149 + v153);
        v154 = v253;
        (v253)(v149, v255, v129);
        v155 = v244;
        v154(v149 + v81[5], v244, v129);
        v156 = (v149 + v81[6]);
        v157 = v239;
        *v156 = v238;
        v156[1] = v145;
        v158 = (v149 + v81[7]);
        v159 = v231;
        *v158 = v157;
        v158[1] = v159;
        v160 = (v149 + v81[8]);
        v161 = v229;
        *v160 = v234;
        v160[1] = v161;
        v162 = (v149 + v81[9]);
        v163 = v230;
        *v162 = v237;
        v162[1] = v163;
        v164 = v247;
        v165 = v232;
        v232(v149 + v81[10], v247, v142);
        v166 = v248;
        v165(v149 + v81[11], v248, v142);
        *(v149 + v81[12]) = v143;
        *(v149 + v81[13]) = v240 & 1;
        v167 = v149 + v81[15];
        v168 = v236;
        *v167 = v236;
        LOBYTE(v128) = v235;
        *(v167 + 8) = v235;
        v169 = v168;
        LOBYTE(v168) = sub_10001792C(v168, v128);
        v170 = *v209;
        v171 = v166;
        v172 = v252;
        (*v209)(v171, v142);
        v170(v164, v142);
        v173 = *v208;
        (*v208)(v155, v129);
        v173(v255, v129);
        *(v149 + v81[14]) = v168 & 1;
        *(v149 + v81[16]) = v233;
        *(v149 + v81[17]) = 0;
        *(v149 + v227) = 2;
        v174 = v225;
        *v225 = 0;
        *(v174 + 8) = 1;
        v175 = v224;
        *v224 = 0;
        v175[1] = 0;
        *(v149 + v226) = 2;
        sub_100014CC8(v249, v149 + v228);
        v176 = v256;
        v80 = v223;
        v177 = v253;
        (v253)(v256, v223, v129);
        v177(v176 + *(v172 + 20), v80 + *(v172 + 20), v129);
        sub_10004DC34(v149, v176 + *(v172 + 24), type metadata accessor for WidgetTileInfo);
        v178 = v213;
        sub_10004DC34(v149, v213, type metadata accessor for WidgetTileInfo);
        v179 = v214;
        sub_10004DC34(v149, v214, type metadata accessor for WidgetTileInfo);
        v180 = v215;
        sub_10004DC34(v149, v215, type metadata accessor for WidgetTileInfo);
        v181 = v216;
        sub_10004DC34(v149, v216, type metadata accessor for WidgetTileInfo);
        v182 = sub_10009D904();
        v183 = sub_10009E844();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          v257 = v253;
          *v184 = v207;
          v186 = sub_10001B128();
          v188 = v187;
          sub_10004DD8C(v178, type metadata accessor for WidgetTileInfo);
          v189 = sub_10002AD68(v186, v188, &v257);

          *(v184 + 4) = v189;
          *(v184 + 12) = 2112;
          v190 = sub_1000187B0();
          *(v184 + 14) = v190;
          *v185 = v190;
          sub_10004DD8C(v179, type metadata accessor for WidgetTileInfo);
          *(v184 + 22) = 2080;
          v191 = sub_10008CA68();
          if (v192)
          {
            v193 = v191;
          }

          else
          {
            v193 = 7104878;
          }

          if (v192)
          {
            v194 = v192;
          }

          else
          {
            v194 = 0xE300000000000000;
          }

          sub_10004DD8C(v180, type metadata accessor for WidgetTileInfo);
          v195 = sub_10002AD68(v193, v194, &v257);

          *(v184 + 24) = v195;
          *(v184 + 32) = 2080;
          v81 = v219;
          v196 = sub_10009E4D4();
          v198 = v197;
          sub_10004DD8C(v181, type metadata accessor for WidgetTileInfo);
          v199 = sub_10002AD68(v196, v198, &v257);

          *(v184 + 34) = v199;
          _os_log_impl(&_mh_execute_header, v182, v183, "Created entity with widgetInfo: %s - service: %@ statusString: %s and characteristic data: %s", v184, 0x2Au);
          sub_1000160CC(v185, &qword_1000C0E28, &qword_1000A1DC0);

          swift_arrayDestroy();

          v80 = v223;
        }

        else
        {

          sub_10004DD8C(v181, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v180, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v179, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v178, type metadata accessor for WidgetTileInfo);
          v81 = v219;
        }

        v116 = v241;
        sub_10004DC34(v256, v245, type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v220;
        v118 = v218;
        v69 = v250;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v116 = sub_100064F9C(0, v116[2] + 1, 1, v116);
        }

        v202 = v116[2];
        v201 = v116[3];
        if (v202 >= v201 >> 1)
        {
          v116 = sub_100064F9C((v201 > 1), v202 + 1, 1, v116);
        }

        sub_10004DD8C(v256, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v80, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v117, type metadata accessor for WidgetTileInfo);
        v116[2] = v202 + 1;
        v203 = v211;
        sub_10004EF84(v245, v116 + v212 + v202 * v211, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v246, type metadata accessor for WidgetTileInfo);
        v115 = v242 + v203;
        v114 = (v243 - 1);
      }

      while (v243 != 1);
    }

    else
    {
      v116 = _swiftEmptyArrayStorage;
    }

    v257 = v116;
    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v61 = sub_10009D924();
    sub_100015B68(v61, qword_1000C8278);
    swift_errorRetain();
    v62 = sub_10009D904();
    v63 = sub_10009E824();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v257 = v66;
      *v64 = 136315394;
      *(v64 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v257);
      *(v64 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v67 = _swift_stdlib_bridgeErrorToNSError();
        v68 = v67;
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      v100 = v243;
      *(v64 + 14) = v67;
      *v65 = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "%s Failed to get current characteristic values with error: %@", v64, 0x16u);
      sub_1000160CC(v65, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v66);
    }

    else
    {

      v100 = v243;
    }

    v257 = v100;

    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }
}

uint64_t sub_10003F7F4(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = type metadata accessor for AccessoryAndSceneEntity(0);
  v7 = __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = sub_10001AAEC();
  v13 = a2;
  sub_10004CD00(v12, v13);
  v15 = v14;

  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v11 = 0;
    a1 = 0;
    v9 = (v15 & 0xC000000000000001);
    a3 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v17 = sub_10009EAE4();
      }

      else
      {
        if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v17 = *(v15 + 8 * v11 + 32);
      }

      v18 = v17;
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (a1)
      {
        a1 = 1;
      }

      else
      {
        a1 = [v17 BOOLValue];
      }

      ++v11;
      if (v19 == i)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v20 = sub_10009D924();
  sub_100015B68(v20, qword_1000C8278);
  sub_10004DC34(a3, v11, type metadata accessor for AccessoryAndSceneEntity);
  v21 = sub_10009D904();
  v22 = sub_10009E844();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, v29);
    *(v23 + 12) = 2080;
    sub_10004DC34(v11, v9, type metadata accessor for AccessoryAndSceneEntity);
    v24 = sub_10009E5F4();
    v26 = v25;
    sub_10004DD8C(v11, type metadata accessor for AccessoryAndSceneEntity);
    v27 = sub_10002AD68(v24, v26, v29);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s Missing accessory reachability from homed for %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004DD8C(v11, type metadata accessor for AccessoryAndSceneEntity);
  }

  return *(a1 + *(type metadata accessor for WidgetTileInfo(0) + 52));
}

void sub_10003FB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v9 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v24 = [a2 widgetManager];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  isa = sub_10009E694().super.isa;
  v14 = sub_10009E5B4();
  v15 = sub_10009E5B4();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v13, v9);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10005B26C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E120;
  aBlock[3] = &unk_1000BBC48;
  v19 = _Block_copy(aBlock);

  v21 = isa;
  v20 = v24;
  [v24 monitorAndFetchStateForActionSets:isa widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

void sub_10003FE24(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v245 = a5;
  v196[1] = a3;
  v8 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v8 - 8);
  v241 = v196 - v9;
  v208 = sub_10009D5A4();
  v10 = *(v208 - 8);
  v11 = __chkstk_darwin(v208);
  v240 = v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v239 = v196 - v13;
  v14 = type metadata accessor for WidgetTileInfo(0);
  v15 = __chkstk_darwin(v14);
  v207 = v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v196 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v196 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v196 - v24;
  v26 = __chkstk_darwin(v23);
  v238 = v196 - v27;
  __chkstk_darwin(v26);
  v29 = v196 - v28;
  v237 = type metadata accessor for AccessoryAndSceneEntity(0);
  v232 = *(v237 - 8);
  v30 = __chkstk_darwin(v237);
  v236 = v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v247 = v196 - v33;
  __chkstk_darwin(v32);
  v211 = v196 - v34;
  v212 = sub_10009CF14();
  v244 = *(v212 - 8);
  v35 = __chkstk_darwin(v212);
  v235 = v196 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v246 = v196 - v38;
  __chkstk_darwin(v37);
  v40 = v196 - v39;
  if (a1)
  {
    v233 = a4;
    v204 = v22;
    v205 = v19;
    v206 = v14;
    v41 = qword_1000C0A90;
    v42 = a1;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10009D924();
    v44 = sub_100015B68(v43, qword_1000C8278);
    v45 = v42;
    v209 = v44;
    v46 = sub_10009D904();
    v47 = sub_10009E844();

    v48 = os_log_type_enabled(v46, v47);
    v203 = v25;
    v210 = v29;
    v231 = v10;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v248 = v243;
      *v49 = 136315394;
      *(v49 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v248);
      *(v49 + 12) = 2080;
      v50 = [v45 isOnByActionSetUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10009E4C4();

      v51 = sub_10009E4D4();
      v53 = v52;

      v54 = sub_10002AD68(v51, v53, &v248);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s Current action set stated: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    v55 = v45;
    v56 = sub_10009D904();
    v57 = sub_10009E844();

    v58 = os_log_type_enabled(v56, v57);
    v243 = v55;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v248);
      *(v59 + 12) = 2080;
      v60 = [v55 didExecutionFailByActionSetUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10009E4C4();

      v61 = sub_10009E4D4();
      v63 = v62;

      v64 = sub_10002AD68(v61, v63, &v248);

      *(v59 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s Failed action sets: %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    v65 = v210;
    v66 = v233;
    v230 = v245 >> 62;
    if (v245 >> 62)
    {
      v67 = sub_10009EBA4();
    }

    else
    {
      v67 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v212;
    v69 = v243;
    v70 = [v243 isOnByActionSetUniqueIdentifier];
    v71 = sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    v72 = sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v242 = v71;
    v73 = sub_10009E4C4();

    v74 = *(v73 + 16);

    v234 = v72;
    if (v67 == v74)
    {
      goto LABEL_33;
    }

    v76 = _swiftEmptyArrayStorage;
    if (!v67)
    {
LABEL_26:
      v92 = sub_100016298(v76);

      v93 = [v69 isOnByActionSetUniqueIdentifier];
      sub_10009E4C4();

      v94 = sub_100016434();
      if (*(v94 + 16) <= v92[2] >> 3)
      {
        v248 = v92;
        sub_1000108EC(v94);
      }

      else
      {
        sub_100011BB0(v94, v92);
      }

      v95 = v245;
      v96 = v243;

      v97 = sub_10009D904();
      v98 = sub_10009E824();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v248 = v245;
        *v99 = 134218498;
        if (v230)
        {
          v100 = sub_10009EBA4();
        }

        else
        {
          v100 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v99 + 4) = v100;

        *(v99 + 12) = 2048;
        v189 = [v96 isOnByActionSetUniqueIdentifier];
        v68 = v212;
        v190 = sub_10009E4C4();

        v191 = *(v190 + 16);

        *(v99 + 14) = v191;

        *(v99 + 22) = 2080;
        v192 = sub_10009E764();
        v194 = v193;

        v195 = sub_10002AD68(v192, v194, &v248);

        *(v99 + 24) = v195;
        _os_log_impl(&_mh_execute_header, v97, v98, "Error: Asked for %ld action sets but got %ld back instead, missing: %s", v99, 0x20u);
        sub_100015F44(v245);

        v65 = v210;
        v69 = v243;
        v66 = v233;
        v101 = v233[2];
        if (!v101)
        {
          goto LABEL_56;
        }

        goto LABEL_34;
      }

      v68 = v212;
      v69 = v243;
LABEL_33:
      v101 = v66[2];
      if (!v101)
      {
LABEL_56:
        v103 = _swiftEmptyArrayStorage;
LABEL_57:
        v248 = v103;
        sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
        sub_10009E724();

        return;
      }

LABEL_34:
      v202 = (*(v232 + 80) + 32) & ~*(v232 + 80);
      v102 = v66 + v202;
      v245 = (v244 + 2);
      v201 = *(v232 + 72);
      v200 = (v231 + 2);
      v199 = (v231 + 1);
      v198 = (v244 + 1);
      v103 = _swiftEmptyArrayStorage;
      *&v75 = 136315906;
      v197 = v75;
      v104 = v211;
      do
      {
        v232 = v102;
        v233 = v101;
        sub_10004DC34(v102, v104, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(v104 + *(v237 + 24), v65, type metadata accessor for WidgetTileInfo);
        v105 = [v69 didExecutionFailByActionSetUniqueIdentifier];
        v106 = sub_10009E4C4();

        v107 = *(v106 + 16);
        v231 = v103;
        if (v107 && (v108 = sub_10001B5D0(v65), (v109 & 1) != 0))
        {
          isa = *(*(v106 + 56) + 8 * v108);
        }

        else
        {

          isa = sub_10009E8C4(0).super.super.isa;
        }

        LODWORD(v230) = sub_10009E704();

        v111 = *v245;
        v244 = v111;
        (v111)(v246, v65, v68);
        v112 = v68;
        v113 = v206;
        (v111)(v235, v65 + v206[5], v112);
        v114 = (v65 + v113[6]);
        v115 = *v114;
        v116 = v114[1];
        v117 = (v65 + v113[7]);
        v118 = *v117;
        v119 = v117[1];
        v228 = v115;
        v229 = v118;
        v220 = v119;
        v120 = v113[9];
        v121 = (v65 + v113[8]);
        v122 = v121[1];
        v226 = *v121;
        v218 = v122;
        v123 = *(v65 + v120 + 8);
        v227 = *(v65 + v120);
        v219 = v123;
        v124 = v113[10];
        v125 = *v200;
        v223 = v125;
        v126 = v208;
        v125(v239, (v65 + v124), v208);
        v125(v240, (v65 + v113[11]), v126);
        v221 = *(v65 + v113[12]);
        v127 = v65 + v113[15];
        v225 = *v127;
        v224 = *(v127 + 8);

        v128 = [v243 isOnByActionSetUniqueIdentifier];
        v129 = sub_10009E4C4();

        v222 = sub_100019B90(v129);

        sub_10001E0A8(v65 + v113[19], v241, &qword_1000C0C28, &qword_1000A3620);
        v130 = v113[18];
        v131 = sub_10009D3F4();
        v132 = v238;
        (*(*(v131 - 8) + 56))(v238 + v130, 1, 1, v131);
        v133 = v113[19];
        v217 = v133;
        v134 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
        (*(*(v134 - 8) + 56))(v132 + v133, 1, 1, v134);
        v135 = v113[21];
        v216 = v113[20];
        v214 = (v132 + v135);
        v136 = v113[22];
        v215 = v113[23];
        v213 = (v132 + v136);
        v137 = v244;
        (v244)(v132, v246, v112);
        v138 = v235;
        v137(v132 + v113[5], v235, v112);
        v139 = (v132 + v113[6]);
        v140 = v229;
        *v139 = v228;
        v139[1] = v116;
        v141 = (v132 + v113[7]);
        v142 = v220;
        *v141 = v140;
        v141[1] = v142;
        v143 = (v132 + v113[8]);
        v144 = v218;
        *v143 = v226;
        v143[1] = v144;
        v145 = (v132 + v113[9]);
        v146 = v219;
        *v145 = v227;
        v145[1] = v146;
        v147 = v239;
        v148 = v223;
        v223(v132 + v113[10], v239, v126);
        v149 = v240;
        v148(v132 + v113[11], v240, v126);
        *(v132 + v113[12]) = v221;
        *(v132 + v113[13]) = 1;
        v150 = v132 + v113[15];
        v151 = v225;
        *v150 = v225;
        LOBYTE(v111) = v224;
        *(v150 + 8) = v224;
        v152 = v151;
        LOBYTE(v151) = sub_10001792C(v151, v111);
        v153 = *v199;
        (*v199)(v149, v126);
        v153(v147, v126);
        v154 = *v198;
        (*v198)(v138, v112);
        v154(v246, v112);
        *(v132 + v113[14]) = v151 & 1;
        *(v132 + v113[16]) = v222;
        *(v132 + v113[17]) = v230 & 1;
        *(v132 + v216) = 2;
        v155 = v214;
        *v214 = 0;
        *(v155 + 8) = 1;
        v156 = v213;
        *v213 = 0;
        v156[1] = 0;
        *(v132 + v215) = 2;
        sub_100014CC8(v241, v132 + v217);
        v157 = v247;
        v104 = v211;
        v158 = v244;
        (v244)(v247, v211, v112);
        v159 = v237;
        v158(v157 + *(v237 + 20), v104 + *(v237 + 20), v112);
        sub_10004DC34(v132, v157 + *(v159 + 24), type metadata accessor for WidgetTileInfo);
        v160 = v203;
        sub_10004DC34(v132, v203, type metadata accessor for WidgetTileInfo);
        v161 = v204;
        sub_10004DC34(v132, v204, type metadata accessor for WidgetTileInfo);
        v162 = v205;
        sub_10004DC34(v132, v205, type metadata accessor for WidgetTileInfo);
        v163 = v207;
        sub_10004DC34(v132, v207, type metadata accessor for WidgetTileInfo);
        v164 = sub_10009D904();
        v165 = sub_10009E844();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          LODWORD(v230) = v165;
          v167 = v166;
          v168 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v248 = v244;
          *v167 = v197;
          v169 = sub_10001B128();
          v170 = v162;
          v172 = v171;
          sub_10004DD8C(v160, type metadata accessor for WidgetTileInfo);
          v173 = sub_10002AD68(v169, v172, &v248);

          *(v167 + 4) = v173;
          *(v167 + 12) = 2112;
          v174 = sub_1000187B0();
          *(v167 + 14) = v174;
          *v168 = v174;
          sub_10004DD8C(v161, type metadata accessor for WidgetTileInfo);
          *(v167 + 22) = 2080;
          v175 = sub_10008CA68();
          if (v176)
          {
            v177 = v175;
          }

          else
          {
            v177 = 7104878;
          }

          if (v176)
          {
            v178 = v176;
          }

          else
          {
            v178 = 0xE300000000000000;
          }

          v179 = v170;
          v104 = v211;
          sub_10004DD8C(v179, type metadata accessor for WidgetTileInfo);
          v180 = sub_10002AD68(v177, v178, &v248);

          *(v167 + 24) = v180;
          *(v167 + 32) = 2080;
          v68 = v212;
          v181 = sub_10009E4D4();
          v183 = v182;
          sub_10004DD8C(v163, type metadata accessor for WidgetTileInfo);
          v184 = sub_10002AD68(v181, v183, &v248);

          *(v167 + 34) = v184;
          _os_log_impl(&_mh_execute_header, v164, v230, "Created entity with widgetInfo: %s - service: %@ statusString: %s and characteristic data: %s", v167, 0x2Au);
          sub_1000160CC(v168, &qword_1000C0E28, &qword_1000A1DC0);

          swift_arrayDestroy();
        }

        else
        {

          sub_10004DD8C(v163, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v162, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v161, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v160, type metadata accessor for WidgetTileInfo);
          v68 = v212;
        }

        sub_10004DC34(v247, v236, type metadata accessor for AccessoryAndSceneEntity);
        v103 = v231;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v210;
        v69 = v243;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = sub_100064F9C(0, v103[2] + 1, 1, v103);
        }

        v187 = v103[2];
        v186 = v103[3];
        if (v187 >= v186 >> 1)
        {
          v103 = sub_100064F9C((v186 > 1), v187 + 1, 1, v103);
        }

        sub_10004DD8C(v247, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v104, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v65, type metadata accessor for WidgetTileInfo);
        v103[2] = v187 + 1;
        v188 = v201;
        sub_10004EF84(v236, v103 + v202 + v187 * v201, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v238, type metadata accessor for WidgetTileInfo);
        v102 = v232 + v188;
        v101 = (v233 - 1);
      }

      while (v233 != 1);
      goto LABEL_57;
    }

    v248 = _swiftEmptyArrayStorage;
    sub_10001BC00(0, v67 & ~(v67 >> 63), 0);
    if ((v67 & 0x8000000000000000) == 0)
    {
      v77 = 0;
      v76 = v248;
      v78 = v245 & 0xC000000000000001;
      do
      {
        if (v78)
        {
          v79 = sub_10009EAE4();
        }

        else
        {
          v79 = *(v245 + 8 * v77 + 32);
        }

        v80 = v79;
        v81 = [v79 uniqueIdentifier];
        sub_10009CF04();

        v248 = v76;
        v83 = v76[2];
        v82 = v76[3];
        if (v83 >= v82 >> 1)
        {
          sub_10001BC00((v82 > 1), v83 + 1, 1);
          v76 = v248;
        }

        ++v77;
        v76[2] = v83 + 1;
        (v244[4])(v76 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + v244[9] * v83, v40, v212);
      }

      while (v67 != v77);
      v65 = v210;
      v69 = v243;
      v66 = v233;
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v84 = sub_10009D924();
    sub_100015B68(v84, qword_1000C8278);
    swift_errorRetain();
    v85 = sub_10009D904();
    v86 = sub_10009E824();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v248 = v89;
      *v87 = 136315394;
      *(v87 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v248);
      *(v87 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v90 = _swift_stdlib_bridgeErrorToNSError();
        v91 = v90;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      *(v87 + 14) = v90;
      *v88 = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "%s Failed to get current action set states with error: %@", v87, 0x16u);
      sub_1000160CC(v88, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v89);
    }

    v248 = a4;

    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }
}

uint64_t sub_100041720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009CEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_10004178C()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_10009E834();
  v10 = sub_10009DEA4();
  sub_10009D8C4();

  sub_10009DC34();
  swift_getAtKeyPath();
  sub_10004D76C(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_100041908@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  sub_10001E0A8(v1 + *(v10 + 24), v9, &qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3D4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_100041B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v93 = a1;
  v104 = a3;
  v91 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  __chkstk_darwin(v91);
  v5 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100003714(&qword_1000C1600, &qword_1000A1490);
  __chkstk_darwin(v6);
  v90 = (&v88 - v7);
  v98 = sub_100003714(&qword_1000C1608, &qword_1000A1498);
  __chkstk_darwin(v98);
  v92 = &v88 - v8;
  v94 = sub_100003714(&qword_1000C1610, &qword_1000A14A0);
  __chkstk_darwin(v94);
  v96 = &v88 - v9;
  v95 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  __chkstk_darwin(v95);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009E3D4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  v101 = sub_100003714(&qword_1000C1618, &qword_1000A14A8);
  __chkstk_darwin(v101);
  v97 = &v88 - v19;
  v99 = sub_100003714(&qword_1000C1620, &qword_1000A14B0);
  __chkstk_darwin(v99);
  v100 = (&v88 - v20);
  v106 = sub_100003714(&qword_1000C1628, &qword_1000A14B8);
  __chkstk_darwin(v106);
  v102 = &v88 - v21;
  v103 = sub_100003714(&qword_1000C1630, &qword_1000A14C0);
  __chkstk_darwin(v103);
  v105 = (&v88 - v22);
  v23 = sub_10009CF54();
  __chkstk_darwin(v23 - 8);
  v24 = sub_10009E5A4();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  v26 = *(a2 + v25[9]);
  if (v26 > 4)
  {
    if (*(a2 + v25[9]) <= 6u)
    {
      if (v26 == 5)
      {
        sub_10009E554();
        sub_10009CF44();
        *&v107 = sub_10009E5E4();
        *(&v107 + 1) = v38;
        v108 = xmmword_1000A1300;
        v109 = xmmword_1000A1310;
        LOBYTE(v110) = 0;
        sub_10004D838();
        sub_10009DD94();
        v113 = v121[16];
        v112 = 1;
        v121[17] = 1;
        goto LABEL_23;
      }

      sub_10009E554();
      sub_10009CF44();
      *&v107 = sub_10009E5E4();
      *(&v107 + 1) = v53;
      v108 = xmmword_1000A1300;
      v109 = xmmword_1000A1310;
      LOBYTE(v110) = 1;
      sub_10004D838();
      sub_10009DD94();
      v113 = v121[16];
      v112 = 0;
      *&v121[16] = v121[16];
    }

    else
    {
      if (v26 == 7)
      {
        sub_10009E554();
        sub_10009CF44();
        v43 = sub_10009E5E4();
        v45 = v44;
        sub_10009E554();
        sub_10009CF44();
        v46 = sub_10009E5E4();
        *&v107 = v43;
        *(&v107 + 1) = v45;
        *&v108 = v46;
        *(&v108 + 1) = v47;
        v109 = xmmword_1000A1320;
        LOBYTE(v110) = 0;
        sub_10004D838();
        sub_10009DD94();
        v33 = v121[16];
        v34 = v119;
        v35 = v120;
        v36 = *v121;
        v113 = v121[16];
      }

      else
      {
        if (v26 != 8)
        {
          sub_10009E554();
          sub_10009CF44();
          *&v107 = sub_10009E5E4();
          *(&v107 + 1) = v48;
          v108 = xmmword_1000A1300;
          v109 = xmmword_1000A1310;
          LOBYTE(v110) = 1;
          goto LABEL_22;
        }

        sub_10009E554();
        sub_10009CF44();
        v28 = sub_10009E5E4();
        v30 = v29;
        sub_10009E554();
        sub_10009CF44();
        v31 = sub_10009E5E4();
        *&v107 = v28;
        *(&v107 + 1) = v30;
        *&v108 = v31;
        *(&v108 + 1) = v32;
        *&v109 = 0xD000000000000012;
        *(&v109 + 1) = 0x80000001000A4900;
        LOBYTE(v110) = 1;
        sub_10004D838();
        sub_10009DD94();
        v33 = v121[16];
        v34 = v119;
        v35 = v120;
        v36 = *v121;
        v113 = v121[16];
      }

      v112 = 1;
      v119 = v34;
      v120 = v35;
      *v121 = v36;
      v121[16] = v33;
      v121[17] = 1;
    }

    sub_100003714(&qword_1000C1640, &qword_1000A14C8);
    sub_10004D88C();
    sub_10009DD94();
    v107 = v114;
    v108 = v115;
    v109 = v116;
    v110 = v117;
    v118 = 1;
    v111 = 1;
    sub_100003714(&qword_1000C16A8, &qword_1000A14E8);
    sub_10004DB4C();
    sub_10009DD94();
    v54 = v120;
    v50 = v105;
    *v105 = v119;
    v50[1] = v54;
    v50[2] = *v121;
    v51 = *&v121[15];
    goto LABEL_28;
  }

  if (*(a2 + v25[9]) > 2u)
  {
    if (v26 != 3)
    {
      sub_10009E554();
      sub_10009CF44();
      *&v107 = sub_10009E5E4();
      *(&v107 + 1) = v52;
      v108 = xmmword_1000A1300;
      v109 = xmmword_1000A1310;
      LOBYTE(v110) = 0;
      sub_10004D838();
      sub_10009DD94();
      v113 = v121[16];
      v112 = 0;
      *&v121[16] = v121[16];
      sub_100003714(&qword_1000C1640, &qword_1000A14C8);
      sub_10004D88C();
      sub_10009DD94();
      v107 = v114;
      v108 = v115;
      v109 = v116;
      v110 = v117;
      v118 = 1;
      v111 = 1;
      goto LABEL_24;
    }

    sub_10009E554();
    sub_10009CF44();
    *&v107 = sub_10009E5E4();
    *(&v107 + 1) = v37;
    v108 = xmmword_1000A1300;
    v109 = xmmword_1000A1310;
    LOBYTE(v110) = 1;
    sub_10004D838();
    sub_10009DD94();
    v113 = v121[16];
    v112 = 1;
    v121[17] = 1;
LABEL_23:
    sub_100003714(&qword_1000C1640, &qword_1000A14C8);
    sub_10004D88C();
    sub_10009DD94();
    v107 = v114;
    v108 = v115;
    v109 = v116;
    v110 = v117;
    v118 = 0;
    v111 = 0;
LABEL_24:
    sub_100003714(&qword_1000C16A8, &qword_1000A14E8);
    sub_10004DB4C();
    sub_10009DD94();
    v49 = v120;
    v50 = v105;
    *v105 = v119;
    v50[1] = v49;
    v50[2] = *v121;
    v51 = *&v121[15];
LABEL_28:
    *(v50 + 47) = v51;
    swift_storeEnumTagMultiPayload();
    sub_100003714(&qword_1000C1690, &qword_1000A14E0);
    sub_10004DAD0(&qword_1000C1698, &qword_1000C1690, &qword_1000A14E0, sub_10004DB4C);
    sub_100059AD4(&qword_1000C16B0, &qword_1000C1628, &qword_1000A14B8, sub_10004DB7C);
    return sub_10009DD94();
  }

  if (v26 - 1 < 2)
  {
    sub_10009E554();
    sub_10009CF44();
    *&v107 = sub_10009E5E4();
    *(&v107 + 1) = v27;
    v108 = xmmword_1000A1300;
    v109 = xmmword_1000A1310;
    LOBYTE(v110) = 0;
LABEL_22:
    sub_10004D838();
    sub_10009DD94();
    v113 = v121[16];
    v112 = 0;
    *&v121[16] = v121[16];
    goto LABEL_23;
  }

  v39 = *(a2 + v25[7]);
  if (!v39)
  {
    goto LABEL_17;
  }

  v40 = *(v39 + 16);
  switch(v40)
  {
    case 2:
      v88 = 2;
      v89 = v39;

      sub_100041908(v18);
      (*(v13 + 104))(v16, enum case for WidgetFamily.systemMedium(_:), v12);
      sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      sub_10009E654();
      sub_10009E654();
      v62 = *(v13 + 8);
      v62(v16, v12);
      v62(v18, v12);
      v61 = v89;
      if (v119 != v107)
      {
LABEL_35:
        v89 = v61;
        sub_100041908(v18);
        (*(v13 + 104))(v16, enum case for WidgetFamily.systemSmall(_:), v12);
        sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
        sub_10009E654();
        sub_10009E654();
        v73 = *(v13 + 8);
        v73(v16, v12);
        v73(v18, v12);
        v74 = v119;
        v75 = v107;
        sub_10009DA94();
        if (v74 == v75)
        {
          v78 = v76;
          v79 = v77;
          KeyPath = swift_getKeyPath();
          v81 = v88 > 2;
          v82 = v92;
          if (v88 >= 3)
          {

            v83 = 2;
          }

          else
          {
            v84 = sub_10009ED34();

            v83 = 1;
            if (v84)
            {
              v83 = 2;
            }
          }

          v72 = v100;
          v71 = v97;
          v85 = v90;
          *v90 = KeyPath;
          *(v85 + 8) = 0;
          v85[2] = v89;
          v85[3] = v83;
          *(v85 + 32) = v81;
          *(v85 + 5) = v78;
          *(v85 + 6) = v79;
          swift_storeEnumTagMultiPayload();
          sub_10004DA34();
          sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily, &unk_1000A1780);
          sub_10009DD94();
        }

        else
        {
          sub_1000435C0(v89, v5, v76, v77);
          sub_10004DC34(v5, v90, type metadata accessor for WidgetViewsForMediumSystemFamily);
          swift_storeEnumTagMultiPayload();
          sub_10004DA34();
          sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily, &unk_1000A1780);
          v82 = v92;
          sub_10009DD94();
          sub_10004DD8C(v5, type metadata accessor for WidgetViewsForMediumSystemFamily);
          v72 = v100;
          v71 = v97;
        }

        sub_10001E0A8(v82, v96, &qword_1000C1608, &qword_1000A1498);
        swift_storeEnumTagMultiPayload();
        sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles, &unk_1000A1820);
        sub_10004D978();
        sub_10009DD94();
        sub_1000160CC(v82, &qword_1000C1608, &qword_1000A1498);
        v41 = v102;
        goto LABEL_44;
      }

      break;
    case 1:
      v61 = *(a2 + v25[7]);

      break;
    case 0:
LABEL_17:
      v41 = v102;
      if (*(a2 + v25[8]))
      {
        sub_10009E554();
        sub_10009CF44();
        *&v107 = sub_10009E5E4();
        *(&v107 + 1) = v42;
        v108 = xmmword_1000A1300;
        v109 = xmmword_1000A1310;
        LOBYTE(v110) = 1;
      }

      else
      {
        sub_10009E554();
        sub_10009CF44();
        *&v107 = sub_10009E5E4();
        *(&v107 + 1) = v56;
        v108 = xmmword_1000A1300;
        v109 = xmmword_1000A1310;
        LOBYTE(v110) = 0;
      }

      sub_10004D838();
      sub_10009DD94();
      v57 = v120;
      v58 = *v121;
      v59 = v121[16];
      v60 = v100;
      *v100 = v119;
      v60[1] = v57;
      v60[2] = v58;
      *(v60 + 48) = v59;
      swift_storeEnumTagMultiPayload();
      sub_100003714(&qword_1000C1640, &qword_1000A14C8);
      sub_10004D88C();
      sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
      sub_10009DD94();
      goto LABEL_45;
    default:
      v88 = *(v39 + 16);
      v61 = v39;

      goto LABEL_35;
  }

  sub_10009DA94();
  v64 = v63;
  v66 = v65;
  v67 = swift_getKeyPath();
  v68 = swift_getKeyPath();
  v69 = v95;
  *&v11[*(v95 + 20)] = v68;
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  swift_storeEnumTagMultiPayload();
  *&v11[v69[6]] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  *&v11[v69[7]] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  *v11 = v67;
  v11[8] = 0;
  v70 = &v11[v69[8]];
  *v70 = v64;
  *(v70 + 1) = v66;
  *&v11[v69[9]] = v61;
  sub_10004DC34(v11, v96, type metadata accessor for WidgetViewForLargeSquareTiles);
  swift_storeEnumTagMultiPayload();
  sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles, &unk_1000A1820);
  sub_10004D978();
  v71 = v97;
  sub_10009DD94();
  sub_10004DD8C(v11, type metadata accessor for WidgetViewForLargeSquareTiles);
  v41 = v102;
  v72 = v100;
LABEL_44:
  v86 = sub_100003714(&qword_1000C1660, &qword_1000A14D0);
  (*(*(v86 - 8) + 56))(v71, 0, 1, v86);
  sub_10001E0A8(v71, v72, &qword_1000C1618, &qword_1000A14A8);
  swift_storeEnumTagMultiPayload();
  sub_100003714(&qword_1000C1640, &qword_1000A14C8);
  sub_10004D88C();
  sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
  sub_10009DD94();
  sub_1000160CC(v71, &qword_1000C1618, &qword_1000A14A8);
LABEL_45:
  v87 = sub_100003714(&qword_1000C1688, &qword_1000A14D8);
  (*(*(v87 - 8) + 56))(v41, 0, 1, v87);
  sub_10001E0A8(v41, v105, &qword_1000C1628, &qword_1000A14B8);
  swift_storeEnumTagMultiPayload();
  sub_100003714(&qword_1000C1690, &qword_1000A14E0);
  sub_10004DAD0(&qword_1000C1698, &qword_1000C1690, &qword_1000A14E0, sub_10004DB4C);
  sub_100059AD4(&qword_1000C16B0, &qword_1000C1628, &qword_1000A14B8, sub_10004DB7C);
  sub_10009DD94();
  return sub_1000160CC(v41, &qword_1000C1628, &qword_1000A14B8);
}

double sub_1000435C0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v9 = a2 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v8[8];
  *(a2 + v8[6]) = a1;
  v11 = *(a1 + 16);
  *(a2 + v10) = v11 > 4;
  if (v11 < 5)
  {
    v13 = sub_10009ED34();

    v12 = 2;
    if (v13)
    {
      v12 = 4;
    }
  }

  else
  {

    v12 = 4;
  }

  *(a2 + v8[7]) = v12;
  v14 = (a2 + v8[9]);
  *v14 = a3;
  v14[1] = a4;
  *(a2 + v8[10]) = (a3 + -40.0) * 0.25;
  result = (a4 + -24.0) * 0.5;
  *(a2 + v8[11]) = result;
  *(a2 + v8[12]) = 0x4020000000000000;
  return result;
}

__n128 sub_10004376C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10004DC34(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeInteractiveWidgetsEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10004EF84(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HomeInteractiveWidgetsEntryView);
  v8 = sub_1000448A4();
  v9 = 0uLL;
  v10 = 0uLL;
  if ((v8 & 1) == 0)
  {
    v9.n128_f64[0] = sub_10004178C();
    *(&v10 + 1) = v11;
    v9.n128_u64[1] = v12;
  }

  v15 = v10;
  v16 = v9;
  v13 = sub_10009DEB4();
  *a2 = sub_10004D778;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  result = v16;
  *(a2 + 40) = v15;
  *(a2 + 24) = result;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1000438C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003714(&qword_1000C1880, &qword_1000A18C8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  *v9 = sub_10009DCF4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100003714(&qword_1000C1888, &qword_1000A18D0);
  sub_100043A28(a1, &v9[*(v10 + 44)]);
  sub_10001E0A8(v9, v7, &qword_1000C1880, &qword_1000A18C8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = sub_100003714(&qword_1000C1890, &qword_1000A18D8);
  sub_10001E0A8(v7, a2 + *(v11 + 48), &qword_1000C1880, &qword_1000A18C8);
  v12 = a2 + *(v11 + 64);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_1000160CC(v9, &qword_1000C1880, &qword_1000A18C8);
  return sub_1000160CC(v7, &qword_1000C1880, &qword_1000A18C8);
}

uint64_t sub_100043A28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v131 = a2;
  v3 = sub_100003714(&qword_1000C1898, &qword_1000A18E0);
  v4 = __chkstk_darwin(v3 - 8);
  v130 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v142 = &v109 - v6;
  v139 = sub_100003714(&qword_1000C18A0, &qword_1000A18E8);
  v7 = __chkstk_darwin(v139);
  v138 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = &v109 - v9;
  v147 = sub_10009DAA4();
  v145 = *(v147 - 8);
  v10 = __chkstk_darwin(v147);
  v146 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v109 - v12;
  v134 = sub_100003714(&qword_1000C18A8, &qword_1000A18F0);
  __chkstk_darwin(v134);
  v133 = &v109 - v13;
  v137 = sub_100003714(&qword_1000C18B0, &qword_1000A18F8);
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v109 - v14;
  v15 = sub_100003714(&qword_1000C18B8, &qword_1000A1900);
  v126 = *(v15 - 8);
  v127 = v15;
  v16 = __chkstk_darwin(v15);
  v129 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v144 = &v109 - v18;
  v19 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  __chkstk_darwin(v19 - 8);
  v21 = &v109 - v20;
  v22 = sub_100003714(&qword_1000C18C8, &qword_1000A1910);
  v23 = __chkstk_darwin(v22 - 8);
  v128 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v109 - v25;

  v27 = sub_10009E224();
  v28 = sub_10009DDC4();
  sub_10009DF54();
  v29 = sub_10009DF24();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  v30 = sub_10009DF64();
  sub_1000160CC(v21, &qword_1000C18C0, &qword_1000A1908);
  KeyPath = swift_getKeyPath();
  *&v168 = v27;
  DWORD2(v168) = v28;
  *&v169 = KeyPath;
  *(&v169 + 1) = v30;
  sub_100003714(&qword_1000C18D0, &qword_1000A1948);
  sub_10004E9C8();
  v141 = v26;
  sub_10009E0E4();

  sub_10009E2F4();
  sub_10009DA74();
  v124 = v159;
  v125 = v157;
  v122 = v162;
  v123 = v161;
  v165 = 1;
  v164 = v158;
  v163 = v160;
  v132 = a1;

  LODWORD(v168) = sub_10009DDC4();
  v32 = sub_10009DFC4();
  v34 = v33;
  LOBYTE(v21) = v35;
  v37 = v36;

  v38 = swift_getKeyPath();
  sub_10009DF94();
  sub_10009DF54();
  v39 = sub_10009DF74();
  v40 = v146;

  v41 = swift_getKeyPath();
  LOBYTE(v148) = v21 & 1;
  *&v153 = v32;
  *(&v153 + 1) = v34;
  LOBYTE(v154) = v21 & 1;
  *(&v154 + 1) = *v167;
  DWORD1(v154) = *&v167[3];
  *(&v154 + 1) = v37;
  *&v155 = v38;
  v42 = v140;
  BYTE8(v155) = 1;
  *(&v155 + 9) = *v166;
  HIDWORD(v155) = *&v166[3];
  *&v156 = v41;
  *(&v156 + 1) = v39;
  v43 = enum case for DynamicTypeSize.xSmall(_:);
  v44 = v145;
  v45 = *(v145 + 104);
  v46 = v147;
  v45(v140, enum case for DynamicTypeSize.xSmall(_:), v147);
  v47 = enum case for DynamicTypeSize.accessibility1(_:);
  v45(v40, enum case for DynamicTypeSize.accessibility1(_:), v46);
  v48 = sub_10004DA88(&qword_1000C1910, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_10009E524();
  if (result)
  {
    v116 = v48;
    v117 = v47;
    v118 = v43;
    v119 = v45;
    v120 = v44 + 104;
    v50 = *(v44 + 32);
    v51 = v136;
    v52 = v147;
    v50(v136, v42, v147);
    v53 = v139;
    v50((v51 + *(v139 + 48)), v146, v52);
    v54 = v138;
    sub_10001E0A8(v51, v138, &qword_1000C18A0, &qword_1000A18E8);
    v121 = *(v53 + 48);
    v55 = v133;
    v50(v133, v54, v52);
    v56 = *(v44 + 8);
    v56(v121 + v54, v52);
    sub_10005B0FC(v51, v54, &qword_1000C18A0, &qword_1000A18E8);
    v57 = v134;
    v58 = v55 + *(v134 + 36);
    v59 = v54 + *(v53 + 48);
    v121 = v50;
    v115 = v44 + 32;
    v50(v58, v59, v52);
    v145 = v44 + 8;
    v114 = v56;
    v56(v54, v52);
    v60 = sub_100003714(&qword_1000C1918, &qword_1000A1998);
    v61 = sub_10004EB8C();
    v62 = sub_10001CDC8(&qword_1000C1948, &qword_1000C18A8, &qword_1000A18F0, &protocol conformance descriptor for ClosedRange<A>);
    v63 = v135;
    sub_10009E0A4();
    sub_1000160CC(v55, &qword_1000C18A8, &qword_1000A18F0);
    v168 = v153;
    v169 = v154;
    v170 = v155;
    v171 = v156;
    sub_1000160CC(&v168, &qword_1000C1918, &qword_1000A1998);
    v64 = v60;
    *&v153 = v60;
    *(&v153 + 1) = v57;
    v112 = v62;
    v113 = v61;
    *&v154 = v61;
    *(&v154 + 1) = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = v144;
    v67 = v137;
    v111 = OpaqueTypeConformance2;
    sub_10009E0E4();
    v68 = v143 + 8;
    v69 = *(v143 + 8);
    v69(v63, v67);
    v70 = v132[3];
    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v132[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v71)
    {
      v97 = v142;
      (*(v126 + 56))(v142, 1, 1, v127);
      v95 = v129;
      goto LABEL_8;
    }

    v110 = v69;
    v132 = v64;
    v143 = v68;

    LODWORD(v153) = sub_10009DDC4();
    v72 = sub_10009DFC4();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v79 = swift_getKeyPath();
    sub_10009DF94();
    sub_10009DF44();
    v80 = sub_10009DF74();

    v81 = swift_getKeyPath();
    v152 = v76 & 1;
    *&v148 = v72;
    *(&v148 + 1) = v74;
    LOBYTE(v149) = v76 & 1;
    *(&v149 + 1) = v78;
    *&v150 = v79;
    BYTE8(v150) = 1;
    *&v151 = v81;
    *(&v151 + 1) = v80;
    v82 = v140;
    v83 = v147;
    v84 = v119;
    v119(v140, v118, v147);
    v85 = v146;
    v84(v146, v117, v83);
    result = sub_10009E524();
    if (result)
    {
      v86 = v136;
      v87 = v147;
      v88 = v121;
      v121(v136, v82, v147);
      v89 = v139;
      v88(v86 + *(v139 + 48), v85, v87);
      v90 = v138;
      sub_10001E0A8(v86, v138, &qword_1000C18A0, &qword_1000A18E8);
      v91 = *(v89 + 48);
      v92 = v133;
      v88(v133, v90, v87);
      v93 = v114;
      v114(v90 + v91, v87);
      sub_10005B0FC(v86, v90, &qword_1000C18A0, &qword_1000A18E8);
      v88(v92 + *(v134 + 36), (v90 + *(v89 + 48)), v87);
      v93(v90, v87);
      v94 = v135;
      sub_10009E0A4();
      sub_1000160CC(v92, &qword_1000C18A8, &qword_1000A18F0);
      v153 = v148;
      v154 = v149;
      v155 = v150;
      v156 = v151;
      sub_1000160CC(&v153, &qword_1000C1918, &qword_1000A1998);
      v95 = v129;
      v96 = v137;
      sub_10009E0E4();
      v110(v94, v96);
      v97 = v142;
      sub_10004ECFC(v95, v142);
      (*(v126 + 56))(v97, 0, 1, v127);
      v66 = v144;
LABEL_8:
      v98 = v128;
      sub_10001E0A8(v141, v128, &qword_1000C18C8, &qword_1000A1910);
      v99 = v165;
      v100 = v164;
      v101 = v163;
      sub_10001E0A8(v66, v95, &qword_1000C18B8, &qword_1000A1900);
      v102 = v130;
      sub_10001E0A8(v97, v130, &qword_1000C1898, &qword_1000A18E0);
      v103 = v131;
      *v131 = 0;
      *(v103 + 8) = 1;
      v104 = sub_100003714(&qword_1000C1950, &qword_1000A19B0);
      sub_10001E0A8(v98, v103 + v104[12], &qword_1000C18C8, &qword_1000A1910);
      v105 = v103 + v104[16];
      *v105 = 0;
      v105[8] = v99;
      v106 = v124;
      *(v105 + 2) = v125;
      v105[24] = v100;
      *(v105 + 4) = v106;
      v105[40] = v101;
      v107 = v122;
      *(v105 + 6) = v123;
      *(v105 + 7) = v107;
      sub_10001E0A8(v95, v103 + v104[20], &qword_1000C18B8, &qword_1000A1900);
      sub_10001E0A8(v102, v103 + v104[24], &qword_1000C1898, &qword_1000A18E0);
      v108 = v103 + v104[28];
      *v108 = 0;
      v108[8] = 1;
      sub_1000160CC(v142, &qword_1000C1898, &qword_1000A18E0);
      sub_1000160CC(v144, &qword_1000C18B8, &qword_1000A1900);
      sub_1000160CC(v141, &qword_1000C18C8, &qword_1000A1910);
      sub_1000160CC(v102, &qword_1000C1898, &qword_1000A18E0);
      sub_1000160CC(v95, &qword_1000C18B8, &qword_1000A1900);
      return sub_1000160CC(v98, &qword_1000C18C8, &qword_1000A1910);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000448A4()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_10009E834();
    v6 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1000449EC@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  sub_10001E0A8(v1 + *(v10 + 20), v9, &qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3D4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100044BF4@<X0>(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v12[0] = *v7;
  v12[1] = v9;
  v12[2] = v7[2];
  *a7 = sub_10009DC74();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v10 = sub_100003714(&qword_1000C1878, &qword_1000A18C0);
  return sub_1000438C0(v12, a7 + *(v10 + 44));
}

uint64_t sub_100044C60@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v46 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = v2;
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100003714(&qword_1000C1958, &qword_1000A19B8);
  __chkstk_darwin(v50);
  v51 = (&v41 - v3);
  v4 = sub_10009E3D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v44 = sub_1000448A4();
  sub_1000449EC(v10);
  v11 = enum case for WidgetFamily.systemSmall(_:);
  v45 = *(v5 + 104);
  v45(v8, enum case for WidgetFamily.systemSmall(_:), v4);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  v43 = v55;
  v42 = *&v53[0];
  sub_1000449EC(v10);
  v45(v8, v11, v4);
  sub_10009E654();
  sub_10009E654();
  v12(v8, v4);
  v12(v10, v4);
  v13 = v55;
  v14 = *&v53[0];
  if (sub_1000448A4())
  {
    v15 = 1;
    if (v13 != v14)
    {
      v15 = 2;
    }

    v16 = 0.0;
    if (v44)
    {
      v16 = 16.0;
    }

    if (v43 != v42)
    {
      v16 = 24.0;
    }

    v17 = v46;
    v18 = (*(v1 + *(v46 + 32)) - v16) / v15;
  }

  else
  {
    v17 = v46;
    v18 = *(v1 + *(v46 + 32));
  }

  v19 = sub_1000448A4();
  v20 = v1 + *(v17 + 32);
  if (v19)
  {
    v21 = *(v20 + 8) + -16.0;
  }

  else
  {
    v21 = *(v20 + 8);
  }

  v22 = sub_10009DC74();
  v23 = v51;
  *v51 = v22;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v45 = *(sub_100003714(&qword_1000C1960, &qword_1000A19C0) + 44);
  v46 = *(v1 + *(v17 + 36));
  *&v55 = sub_10004C814(v46);
  swift_getKeyPath();
  v24 = v49;
  sub_10004DC34(v1, v49, type metadata accessor for WidgetViewForLargeSquareTiles);
  v25 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v18;
  *(v26 + 24) = v21;
  sub_10004EF84(v24, v26 + v25, type metadata accessor for WidgetViewForLargeSquareTiles);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10004EFEC;
  *(v27 + 24) = v26;
  sub_100003714(&qword_1000C1968, &qword_1000A19E8);
  sub_100003714(&qword_1000C1970, &qword_1000A19F0);
  sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8, &protocol conformance descriptor for [A]);
  sub_10001CDC8(&qword_1000C1980, &qword_1000C1970, &qword_1000A19F0, &protocol conformance descriptor for TupleView<A>);
  sub_10009E294();
  sub_10006FB28(v53);
  v28 = v54;
  v29 = v23 + *(sub_100003714(&qword_1000C1988, &qword_1000A19F8) + 36);
  v30 = v53[1];
  *v29 = v53[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v28;
  sub_10009E2F4();
  sub_10009DA74();
  v31 = (v23 + *(sub_100003714(&qword_1000C1990, &qword_1000A1A00) + 36));
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v31[2] = v57;
  v33 = v23 + *(v50 + 36);
  sub_10009DAF4();
  v34 = sub_10009E314();
  v35 = sub_10009DE74();
  *(v33 + *(v35 + 20)) = v34;
  *(v33 + *(v35 + 24)) = 0;
  v36 = sub_10009E314();
  v37 = v52;
  sub_10001E0A8(v23, v52, &qword_1000C1958, &qword_1000A19B8);
  v38 = (v37 + *(sub_100003714(&qword_1000C1998, &qword_1000A1A08) + 36));
  v39 = v46;
  *v38 = v36;
  v38[1] = v39;

  return sub_1000160CC(v23, &qword_1000C1958, &qword_1000A19B8);
}