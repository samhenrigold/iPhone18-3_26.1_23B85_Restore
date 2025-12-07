uint64_t sub_10002C198(char *__src, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    v14 = a4;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v15 = &v14[v9];
    if (v7 < 8)
    {
LABEL_10:
      v16 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *v13;
      v20 = *v14;

      v21 = a5(v19, v20);

      if (v21)
      {
        break;
      }

      v17 = v14;
      v18 = v6 == v14++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v14 >= v15)
      {
        goto LABEL_10;
      }
    }

    v17 = v13;
    v18 = v6 == v13++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v17;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v12);
    a2 = v22;
    a4 = v23;
  }

  v16 = a2;
  v15 = &a4[8 * v12];
  v24 = v10 < 8;
  v14 = a4;
  if (!v24 && a2 > v6)
  {
    v37 = a4;
    v35 = v6;
LABEL_25:
    __dst = v16;
    v25 = (v16 - 8);
    v5 -= 8;
    v26 = v15;
    v27 = v15;
    do
    {
      v28 = v5 + 8;
      v29 = *(v27 - 1);
      v27 -= 8;
      v30 = v25;
      v31 = *v25;

      v32 = a5(v29, v31);

      if (v32)
      {
        v33 = v30;
        if (v28 != __dst)
        {
          *v5 = *v30;
        }

        v14 = v37;
        v15 = v26;
        if (v26 <= v37 || (v16 = v33, v33 <= v35))
        {
          v16 = v33;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v28 != v26)
      {
        *v5 = *v27;
      }

      v5 -= 8;
      v26 = v27;
      v25 = v30;
    }

    while (v27 > v37);
    v15 = v27;
    v14 = v37;
    v16 = __dst;
  }

LABEL_36:
  if (v16 != v14 || v16 >= v14 + ((v15 - v14 + (v15 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v16, v14, 8 * ((v15 - v14) / 8));
  }

  return 1;
}

uint64_t sub_10002C458(uint64_t *a1, char *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_10002B800(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v6 = *(v7 + 16);
  if (v6 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = (v7 + 16 * v6);
      v11 = *v10;
      v12 = &v9[2 * v6];
      v13 = v12[1];
      sub_10002C198((*a3 + 8 * *v10), (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v6 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      v10[1] = v13;
      v15 = v14 - v6;
      if (v14 < v6)
      {
        goto LABEL_12;
      }

      v6 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v6;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C598(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v94 = result;
  v101 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v93 = a4;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v89 = v8;
        v11 = *(*a3 + 8 * v10);
        v12 = 8 * v7;
        v13 = (*a3 + 8 * v7);
        v15 = *v13;
        v14 = v13 + 2;

        v16 = a5(v11, v15);

        v91 = v9;
        v17 = v9 + 2;
        while (v6 != v17)
        {
          v19 = *(v14 - 1);
          v18 = *v14;

          v20 = a5(v18, v19) & 1;

          ++v17;
          ++v14;
          if ((v16 & 1) != v20)
          {
            v6 = v17 - 1;
            break;
          }
        }

        if (v16)
        {
          v9 = v91;
          if (v6 < v91)
          {
            goto LABEL_112;
          }

          if (v91 >= v6)
          {
            v10 = v6;
            a4 = v93;
          }

          else
          {
            v21 = 8 * v6 - 8;
            v22 = v6;
            v23 = v91;
            a4 = v93;
            do
            {
              if (v23 != --v22)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_117;
                }

                v24 = *(v25 + v12);
                *(v25 + v12) = *(v25 + v21);
                *(v25 + v21) = v24;
              }

              ++v23;
              v21 -= 8;
              v12 += 8;
            }

            while (v23 < v22);
            v10 = v6;
          }

          v8 = v89;
        }

        else
        {
          v10 = v6;
          a4 = v93;
          v8 = v89;
          v9 = v91;
        }
      }

      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_111;
        }

        if (v10 - v9 < a4)
        {
          v27 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_113;
          }

          if (v27 >= v26)
          {
            v27 = a3[1];
          }

          if (v27 < v9)
          {
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v90 = v8;
            v92 = v9;
            v28 = *a3;
            v29 = *a3 + 8 * v10 - 8;
            v30 = v9 - v10;
            v95 = v27;
            do
            {
              v97 = v10;
              v31 = *(v28 + 8 * v10);
              v32 = v30;
              v33 = v29;
              do
              {
                v34 = *v33;

                v35 = a5(v31, v34);

                if ((v35 & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_115;
                }

                v36 = *v33;
                v31 = v33[1];
                *v33 = v31;
                v33[1] = v36;
                --v33;
              }

              while (!__CFADD__(v32++, 1));
              ++v10;
              v29 += 8;
              --v30;
            }

            while ((v97 + 1) != v95);
            v10 = v95;
            v9 = v92;
            v8 = v90;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_110;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10002B814(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 2);
      v38 = *(v8 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_10002B814((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v40;
      v41 = v8 + 32;
      v42 = &v8[16 * v39 + 32];
      *v42 = v9;
      v42[1] = v10;
      v96 = *v94;
      if (!*v94)
      {
        goto LABEL_118;
      }

      v98 = v10;
      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v8 + 4);
            v45 = *(v8 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_59:
            if (v47)
            {
              goto LABEL_100;
            }

            v60 = &v8[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_102;
            }

            v66 = &v41[2 * v43];
            v68 = *v66;
            v67 = v66[1];
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_105;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_107;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v40 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v40 < 2)
          {
            goto LABEL_108;
          }

          v70 = &v8[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_74:
          if (v65)
          {
            goto LABEL_104;
          }

          v73 = &v41[2 * v43];
          v75 = *v73;
          v74 = v73[1];
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_106;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_81:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          if (!*a3)
          {
            goto LABEL_116;
          }

          v81 = v8;
          v82 = &v41[2 * v43 - 2];
          v83 = *v82;
          v84 = v43;
          v85 = &v41[2 * v43];
          v86 = v85[1];
          result = sub_10002C198((*a3 + 8 * *v82), (*a3 + 8 * *v85), (*a3 + 8 * v86), v96, a5);
          if (v5)
          {
          }

          if (v86 < v83)
          {
            goto LABEL_95;
          }

          v87 = *(v81 + 2);
          if (v84 > v87)
          {
            goto LABEL_96;
          }

          *v82 = v83;
          v82[1] = v86;
          if (v84 >= v87)
          {
            goto LABEL_97;
          }

          v88 = v84;
          v40 = v87 - 1;
          result = memmove(v85, v85 + 2, 16 * (v87 - 1 - v88));
          v8 = v81;
          *(v81 + 2) = v87 - 1;
          if (v87 <= 2)
          {
            goto LABEL_3;
          }
        }

        v48 = &v41[2 * v40];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_98;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_99;
        }

        v55 = &v8[16 * v40];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_101;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_103;
        }

        if (v59 >= v51)
        {
          v77 = &v41[2 * v43];
          v79 = *v77;
          v78 = v77[1];
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_109;
          }

          if (v46 < v80)
          {
            v43 = v40 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_3:
      v7 = v98;
      v6 = a3[1];
      a4 = v93;
      if (v98 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*v94)
  {
    goto LABEL_119;
  }

  sub_10002C458(&v101, *v94, a3, a5);
}

uint64_t sub_10002CB54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v16 = v9;
    v17 = v8;
    while (1)
    {
      v11 = *v8;

      v12 = a5(v10, v11);

      if ((v12 & 1) == 0)
      {
LABEL_4:
        ++v6;
        v8 = v17 + 1;
        v9 = v16 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v13 = *v8;
      v10 = v8[1];
      *v8 = v10;
      v8[1] = v13;
      --v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10002CC48(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TerrestrialRadioStation(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_10002C598(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_10002CB54(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_10002CD6C(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10002BD10(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_10002CC48(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

void *sub_10002CE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  sub_1000A2CF4(0, v2, 0);
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v31 = v3 + 64;
  v32 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
  v28 = v3 + 72;
  v29 = v2;
  v30 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v35 = *v12;
    v13 = v3;
    v14 = v12[1];
    v15 = *(v11 + 8 * v6);
    v16 = *(a2 + v32);

    v17 = sub_100027120(v16, v15);

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1000A2CF4((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[4 * v19];
    v20[4] = v17;
    v20[5] = v35;
    v20[6] = v14;
    *(v20 + 56) = 0;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v30;
    if (v30 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_10002D0A8(v6, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_10002D0A8(v6, v30, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10002D0A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10002D0B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002D108(uint64_t a1)
{
  v116 = a1;
  v2 = sub_10000368C(&qword_1000EC598, &unk_1000B59E0);
  v82 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = &v79 - v3;
  v104 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v111 = *(v104 - 8);
  __chkstk_darwin(v104);
  v5 = &v79 - v4;
  v103 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v110 = *(v103 - 8);
  __chkstk_darwin(v103);
  v98 = &v79 - v6;
  v7 = sub_10000368C(&unk_1000EC8B0, &qword_1000B6120);
  v100 = *(v7 - 8);
  __chkstk_darwin(v7);
  v99 = &v79 - v8;
  v97 = sub_10000368C(&qword_1000EC5A0, &unk_1000B5A00);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v79 - v9;
  v91 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v79 - v10;
  v94 = sub_10000368C(&qword_1000EC5A8, &unk_1000B5A10);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v79 - v11;
  v12 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v12 - 8);
  v115 = &v79 - v13;
  v101 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v85 = *(v101 - 1);
  __chkstk_darwin(v101);
  v15 = &v79 - v14;
  v88 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v79 - v16;
  v17 = sub_10000368C(&qword_1000EC588, &qword_1000B59D8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage__emptyTitle;
  v119 = 0;
  v120 = 0;
  sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
  Published.init(initialValue:)();
  (*(v18 + 32))(v1 + v21, v20, v17);
  *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v22 = v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_cancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v78 = sub_100003210(_swiftEmptyArrayStorage);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v23 = &_swiftEmptySetSingleton;
  *v22 = &_swiftEmptySetSingleton;
  while (1)
  {
    v112 = v22;
    *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_stationCancelSet) = v23;
    v109 = v1;
    swift_unknownObjectWeakInit();
    if (qword_1000EAD48 != -1)
    {
      swift_once();
    }

    v24 = *(qword_1000F3CF0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
    v25 = String._bridgeToObjectiveC()();
    v22 = [v24 integerForKey:v25];

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v22 <= 0xFF)
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v78 = &_swiftEmptySetSingleton;
LABEL_24:
    *v22 = v78;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v23 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }
  }

  v83 = v5;
  v84 = v7;
  v80 = v2;
  v26 = sub_10007752C(v22);
  if (v26 == 4)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v28 = v109;
  *(v109 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) = v27;
  *(v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = 5;
  v29 = (v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory);
  *v29 = 0;
  v29[1] = 0;
  *(v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations) = _swiftEmptyArrayStorage;
  *(v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors) = _swiftEmptyArrayStorage;
  v79 = (v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState);
  *(v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState) = 256;
  *(v28 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation) = 0;
  v30 = v116;
  swift_unknownObjectWeakAssign();
  v31 = *(v30 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  if (v31)
  {
    swift_beginAccess();

    sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
    Published.projectedValue.getter();
    swift_endAccess();
    v32 = objc_opt_self();
    v108 = v32;
    v33 = [v32 mainRunLoop];
    v119 = v33;
    v107 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v34 = *(v107 - 8);
    v35 = *(v34 + 56);
    v105 = v34 + 56;
    v106 = v35;
    v36 = v115;
    v35(v115, 1, 1, v107);
    v114 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    v116 = v31;
    v102 = &protocol conformance descriptor for Published<A>.Publisher;
    sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, &protocol conformance descriptor for Published<A>.Publisher);
    v113 = sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v37 = v86;
    v38 = v101;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v36, &unk_1000EC7E0, &unk_1000B5100);

    (*(v85 + 8))(v15, v38);
    swift_allocObject();
    swift_weakInit();
    v101 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v39 = v88;
    Publisher<>.sink(receiveValue:)();

    (*(v87 + 8))(v37, v39);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_10000368C(&unk_1000ED150, &unk_1000B6130);
    v40 = v89;
    Published.projectedValue.getter();
    swift_endAccess();
    v41 = [v32 mainRunLoop];
    v119 = v41;
    v42 = v36;
    v43 = v36;
    v44 = v106;
    v45 = v107;
    v106(v43, 1, 1, v107);
    sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0, v102);
    v46 = v92;
    v47 = v91;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v42, &unk_1000EC7E0, &unk_1000B5100);

    (*(v90 + 8))(v40, v47);
    swift_allocObject();
    swift_weakInit();
    sub_100005870(&unk_1000ED160, &qword_1000EC5A8, &unk_1000B5A10, v101);
    v48 = v94;
    Publisher<>.sink(receiveValue:)();

    v93[1](v46, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    v94 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
    v49 = v83;
    Published.projectedValue.getter();
    swift_endAccess();
    v50 = [v108 mainRunLoop];
    v119 = v50;
    v51 = v115;
    v44(v115, 1, 1, v45);
    v102 = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, v102);
    v52 = v98;
    v53 = v104;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v51, &unk_1000EC7E0, &unk_1000B5100);

    v54 = *(v111 + 8);
    v111 += 8;
    v93 = v54;
    (v54)(v49, v53);
    v101 = sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, v101);
    v55 = v99;
    v56 = v103;
    Publisher<>.removeDuplicates()();
    v57 = *(v110 + 8);
    v110 += 8;
    v92 = v57;
    (v57)(v52, v56);
    swift_allocObject();
    swift_weakInit();
    sub_10000368C(&qword_1000EC5B0, &qword_1000B7D80);
    v91 = sub_100005870(&qword_1000EC5B8, &unk_1000EC8B0, &qword_1000B6120, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v58 = v95;
    v59 = v84;
    Publisher.map<A>(_:)();

    v100 = *(v100 + 8);
    (v100)(v55, v59);
    swift_allocObject();
    swift_weakInit();
    sub_100005870(&qword_1000EC5C0, &qword_1000EC5A0, &unk_1000B5A00, &protocol conformance descriptor for Publishers.Map<A, B>);
    v60 = v97;
    Publisher<>.sink(receiveValue:)();

    (*(v96 + 8))(v58, v60);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    v61 = [v108 mainRunLoop];
    v119 = v61;
    v62 = v115;
    v106(v115, 1, 1, v107);
    v63 = v104;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v62, &unk_1000EC7E0, &unk_1000B5100);

    (v93)(v49, v63);
    v64 = v103;
    Publisher<>.removeDuplicates()();
    (v92)(v52, v64);
    swift_allocObject();
    v65 = v109;
    swift_weakInit();
    Publisher<>.sink(receiveValue:)();

    (v100)(v55, v59);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v67 = Strong;
      v68 = [Strong nowPlayingInformation];

      if (v68)
      {
        v69 = [v68 nowPlaying];

        if (v69)
        {
          if ([v69 hasPlaybackState])
          {
            sub_100005A50(0, &qword_1000EC5C8, CAFNowPlaying_ptr);
            sub_1000058D0(&qword_1000EC5D0, &qword_1000EC5C8, CAFNowPlaying_ptr, &protocol conformance descriptor for CAFNowPlaying);
            v70 = CAFObserved<>.observable.getter();
            v71 = dispatch thunk of CAFNowPlayingObservable.$playbackState.getter();

            v117 = v71;
            v72 = [v108 mainRunLoop];
            v118 = v72;
            v73 = v115;
            v106(v115, 1, 1, v107);
            sub_10000368C(&qword_1000EC5D8, &unk_1000B5A30);
            sub_100005870(&qword_1000EC5E0, &qword_1000EC5D8, &unk_1000B5A30, &protocol conformance descriptor for AnyPublisher<A, B>);
            v74 = v81;
            Publisher.receive<A>(on:options:)();
            sub_100007834(v73, &unk_1000EC7E0, &unk_1000B5100);

            swift_allocObject();
            swift_weakInit();

            sub_100005870(&qword_1000EC5E8, &qword_1000EC598, &unk_1000B59E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
            v75 = v80;
            Publisher<>.sink(receiveValue:)();

            v65 = v109;
            (*(v82 + 8))(v74, v75);
            swift_beginAccess();
            AnyCancellable.store(in:)();
            swift_endAccess();

            LOBYTE(v70) = [v69 playbackState];

            v76 = v79;
            *v79 = v70;
            v76[1] = 0;
            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    sub_1000220D4();

    return v65;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *sub_10002E6DC(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy);
  if (v6 == 5)
  {
    goto LABEL_31;
  }

  v7 = IndexPath.section.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v8 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  if (v7 >= *(v8 + 16))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v8 + 32 * v7 + 56) == 1)
  {
    type metadata accessor for RadioCategoryFilterCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v79 = v2;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    v80 = swift_dynamicCastClass();
    if (v80)
    {
      v13 = sub_10001A530(v6, &off_1000DF3E0);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      v78 = v15;
      sub_1000A2C90(0, 5, 0);
      v16 = objc_opt_self();
      v17 = 0;
      do
      {
        v18 = *(&off_1000DF408 + v17 + 32);
        v19 = 1937204558;
        if (v18 == 3)
        {
          v20 = 0xE400000000000000;
        }

        else
        {
          v19 = 0x726568744FLL;
          v20 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v19 = 1802264916;
          v20 = 0xE400000000000000;
        }

        v21 = 0x636973754DLL;
        if (*(&off_1000DF408 + v17 + 32))
        {
          v21 = 0x7374726F7053;
        }

        v22 = 0xE600000000000000;
        if (!*(&off_1000DF408 + v17 + 32))
        {
          v22 = 0xE500000000000000;
        }

        if (*(&off_1000DF408 + v17 + 32) <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        if (*(&off_1000DF408 + v17 + 32) <= 1u)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        v25 = v24;
        String.append(_:)(*&v23);

        v26 = [v16 mainBundle];
        v81._object = 0xE000000000000000;
        v27._countAndFlagsBits = 0x6C69466F69646152;
        v27._object = 0xEB00000000726574;
        v28.value._countAndFlagsBits = 0x6F69646152;
        v28.value._object = 0xE500000000000000;
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v81._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v81);

        v30 = String.init(format:_:)();
        v32 = v31;

        v34 = _swiftEmptyArrayStorage[2];
        v33 = _swiftEmptyArrayStorage[3];
        if (v34 >= v33 >> 1)
        {
          sub_1000A2C90((v33 > 1), v34 + 1, 1);
        }

        ++v17;
        _swiftEmptyArrayStorage[2] = v34 + 1;
        v35 = &_swiftEmptyArrayStorage[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
      }

      while (v17 != 5);

      v3 = v80;
      sub_100051694(_swiftEmptyArrayStorage, v78, sub_10002EEE0, v79);

      return v3;
    }

    goto LABEL_68;
  }

LABEL_31:
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {
    type metadata accessor for RadioGenreCell();
    v46 = swift_getObjCClassFromMetadata();
    v47 = NSStringFromClass(v46);
    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    v48 = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v47 forIndexPath:v48];

    v49 = swift_dynamicCastClass();
    if (!v49)
    {
      goto LABEL_68;
    }

    v3 = v49;
    v50 = IndexPath.section.getter();
    if ((v50 & 0x8000000000000000) == 0)
    {
      v51 = *(v4 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
      if (v50 < *(v51 + 16))
      {
        v52 = v51 + 32 * v50;
        v55 = *(v52 + 32);
        v53 = v52 + 32;
        v54 = v55;
        v56 = *(v53 + 16);
        if (v56)
        {
          v57 = *(v53 + 8);

          v58 = v56;
        }

        else
        {
          v59 = objc_opt_self();

          v60 = [v59 mainBundle];
          v61._countAndFlagsBits = 0xD000000000000012;
          v82._object = 0xE000000000000000;
          v62.value._countAndFlagsBits = 0x6F69646152;
          v61._object = 0x80000001000BB7B0;
          v62.value._object = 0xE500000000000000;
          v63._countAndFlagsBits = 0;
          v63._object = 0xE000000000000000;
          v82._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v82);

          v57 = String.init(format:_:)();
          v58 = v64;
        }

        v65 = &v3[OBJC_IVAR____TtC5Media14RadioGenreCell_title];
        v66 = *&v3[OBJC_IVAR____TtC5Media14RadioGenreCell_title];
        v67 = *&v3[OBJC_IVAR____TtC5Media14RadioGenreCell_title + 8];
        *v65 = v57;
        v65[1] = v58;
        if (v57 == v66 && v58 == v67)
        {
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_bridgeObjectRetain_n();

          if ((v69 & 1) == 0)
          {
            [v3 setNeedsUpdateConfiguration];
          }
        }

        if (!(v54 >> 62))
        {
          goto LABEL_58;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      _CocoaArrayWrapper.endIndex.getter();
LABEL_58:
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;

      v73 = v72;
      v74 = &v3[OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle];
      v75 = *&v3[OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle];
      v76 = *&v3[OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle + 8];
      *v74 = v70;
      v74[1] = v73;
      if (v70 == v75 && v73 == v76)
      {
      }

      else
      {
        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v77 & 1) == 0)
        {
          [v3 setNeedsUpdateConfiguration];
        }
      }

      return v3;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  type metadata accessor for RadioStationCell();
  v36 = swift_getObjCClassFromMetadata();
  v37 = NSStringFromClass(v36);
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v37 forIndexPath:v38];

  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v3 = v39;
    v40 = sub_100024F70();
    if (v40)
    {
      v41 = v40;
      v42 = sub_1000250A4();
      if (*(v4 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState + 1))
      {
        v43 = 0;
      }

      else
      {
        v43 = (*(v4 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState) == 1) << 8;
      }

      v44 = &v3[OBJC_IVAR____TtC5Media16RadioStationCell_config];
      *v44 = v41;
      *(v44 + 4) = v43 | v42 & 1;
      swift_retain_n();

      [v3 setNeedsUpdateConfiguration];
    }

    return v3;
  }

LABEL_68:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002EF20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F020(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10002F190(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10002F2D8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10002F414(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002F570(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 5459817;
  }

  else
  {
    v2 = 7496035;
  }

  if (*a2)
  {
    v3 = 5459817;
  }

  else
  {
    v3 = 7496035;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10002F5E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002F650(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10002F69C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002F700@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF458, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10002F760(uint64_t *a1@<X8>)
{
  v2 = 7496035;
  if (*v1)
  {
    v2 = 5459817;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

Swift::Int sub_10002F788()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002F7FC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002F858(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10002F988@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CE38(*a1);
  *a2 = result;
  return result;
}

void sub_10002F9B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE90000000000006DLL;
  v6 = 0x756964654D616364;
  if (v2 != 5)
  {
    v6 = 0x6C6C6154616364;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA00000000006C61;
  if (v2 != 3)
  {
    v7 = 0xEE00656469576C61;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x6D696E694D616364;
    v5 = v7;
  }

  v8 = 0xEC00000061696465;
  v9 = 0x4D646E417370616DLL;
  if (v2 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = 0x80000001000BAEF0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10002FAB0()
{
  if (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard])
  {
    return 1;
  }

  v2 = 1701736302;
  v3 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
  if (v3 <= 2 && v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle] && v3 == 1)
  {
    goto LABEL_9;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 0;
  }

  if (v3 <= 2)
  {
    if (v3)
    {
      v2 = 0xD000000000000010;
      v5 = 0x80000001000BAEF0;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      v2 = 0x756964654D616364;
      v5 = 0xE90000000000006DLL;
    }

    else
    {
      v5 = 0xE700000000000000;
      v2 = 0x6C6C6154616364;
    }
  }

  else
  {
    v2 = 0x6D696E694D616364;
    v5 = v3 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v2 == 0xD000000000000010 && 0x80000001000BAEF0 == v5)
  {
LABEL_9:

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong currentSession];

    if (v9)
    {
      v10 = [v9 configuration];

      v11 = [v10 screens];
      sub_100005A50(0, &unk_1000EB860, CARScreenInfo_ptr);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
LABEL_43:
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (v13)
        {
LABEL_30:
          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            if ([v15 screenType] == 1)
            {
              break;
            }

            ++v14;
            if (v17 == v13)
            {
              goto LABEL_44;
            }
          }

          v18 = [v16 availableInteractionModels];

          if ((v18 & 2) == 0)
          {
            return 0;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_30;
        }
      }

LABEL_44:
    }
  }

LABEL_45:
  result = [v0 view];
  if (result)
  {
    v19 = result;
    v20 = [result safeAreaLayoutGuide];

    [v20 layoutFrame];
    v22 = v21;

    return v22 >= 282.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100030114()
{
  v1 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
  if (v1 == 4)
  {
    v2 = [v0 view];
    if (v2)
    {
LABEL_7:
      v3 = v2;
      v4 = [v2 safeAreaLayoutGuide];

      [v4 layoutFrame];
      return;
    }

    goto LABEL_10;
  }

  if (v1 == 3)
  {
    if (*&v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel])
    {
      swift_getKeyPath();
      sub_10003DD64(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v2 = [v0 view];
      if (v2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }
}

id sub_100030304()
{
  if (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying])
  {
    return 0;
  }

  if (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource] != 1)
  {
    goto LABEL_6;
  }

  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  if (v2)
  {
    v3 = [v2 song];
    if (v3)
    {

      [v2 durationSnapshot];
      if (v15)
      {
LABEL_6:
        v4 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v4 = 1;
LABEL_9:
  v5 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
  if (v5 <= 3)
  {
    return (v5 - 1 < 2);
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      return (v4 & v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard]);
    }

    if ((v4 & v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard]) == 1)
    {
      result = [v0 view];
      if (result)
      {
        v7 = result;
        v8 = [result safeAreaLayoutGuide];

        [v8 layoutFrame];
        v10 = v9;

        v11 = 114.0;
        return (v10 >= v11);
      }

      __break(1u);
      goto LABEL_25;
    }

    return 0;
  }

  if (!v4 || (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard] & 1) != 0)
  {
    return 0;
  }

  result = [v0 view];
  if (result)
  {
    v12 = result;
    v13 = [result safeAreaLayoutGuide];

    [v13 layoutFrame];
    v10 = v14;

    v11 = 70.0;
    return (v10 >= v11);
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_100030540()
{
  v1 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork;
  v2 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:2];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000305E8()
{
  v1 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = sub_100030648();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100030648()
{
  v0 = [objc_opt_self() effectWithStyle:10];
  v1 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000B4FC0;
  *(v2 + 32) = v0;
  sub_100005A50(0, &unk_1000EC838, UIVisualEffect_ptr);
  v3 = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setBackgroundEffects:isa];

  v5 = v1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v5 layer];

  [v6 setAllowsGroupBlending:0];
  return v5;
}

void sub_100030790(unsigned __int8 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle;
  if ((sub_100007AD0(a1, v1[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle]) & 1) == 0)
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3BA0);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v141 = v9;
      *v8 = 136315138;
      v10 = v2[v3];
      if (v10 <= 2)
      {
        if (v2[v3])
        {
          if (v10 == 1)
          {
            v11 = 0xEC00000061696465;
            v12 = 0x4D646E417370616DLL;
          }

          else
          {
            v11 = 0x80000001000BAEF0;
            v12 = 0xD000000000000010;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          v12 = 1701736302;
        }
      }

      else if (v2[v3] > 4u)
      {
        if (v10 == 5)
        {
          v11 = 0xE90000000000006DLL;
          v12 = 0x756964654D616364;
        }

        else
        {
          v11 = 0xE700000000000000;
          v12 = 0x6C6C6154616364;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0xEA00000000006C61;
        }

        else
        {
          v11 = 0xEE00656469576C61;
        }

        v12 = 0x6D696E694D616364;
      }

      v13 = sub_100043AF0(v12, v11, &v141);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cluster now playing style is now %s", v8, 0xCu);
      sub_100006960(v9);
    }

    sub_100034BF4();
  }

  v14 = objc_opt_self();
  v15 = [v14 sharedManager];
  v16 = [v2 view];
  if (!v16)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  [v18 layoutFrame];
  v20 = v19;

  [v15 setPreferredArtworkSize:{fmax(v20 * dbl_1000B5A60[v2[v3] - 1 < 2], 32.0)}];
  v21 = [v14 sharedManager];
  v22 = [v2 traitCollection];
  [v22 displayScale];
  v24 = v23;

  [v21 setPreferredArtworkScale:{fmax(v24, 2.0)}];
  if (v2[v3] - 1 >= 2)
  {
    v108 = sub_100030540();
    [v108 removeFromSuperview];

    v109 = sub_1000305E8();
    [v109 removeFromSuperview];

    v110 = *&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView];
    if (!v110)
    {
      return;
    }

    v81 = v110;
    v111 = [v2 view];
    if (v111)
    {
      v112 = v111;
      [v111 addSubview:v81];

      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1000B4FB0;
      v114 = [v81 leadingAnchor];
      v115 = [v2 view];
      if (v115)
      {
        v116 = v115;
        v117 = [v115 safeAreaLayoutGuide];

        v118 = [v117 leadingAnchor];
        v119 = [v114 constraintEqualToAnchor:v118];

        *(v113 + 32) = v119;
        v120 = [v81 trailingAnchor];
        v121 = [v2 view];
        if (v121)
        {
          v122 = v121;
          v123 = [v121 safeAreaLayoutGuide];

          v124 = [v123 trailingAnchor];
          v125 = [v120 constraintEqualToAnchor:v124];

          *(v113 + 40) = v125;
          v126 = [v81 topAnchor];
          v127 = [v2 view];
          if (v127)
          {
            v128 = v127;
            v129 = [v127 safeAreaLayoutGuide];

            v130 = [v129 topAnchor];
            v131 = [v126 constraintEqualToAnchor:v130];

            *(v113 + 48) = v131;
            v132 = [v81 bottomAnchor];
            v133 = [v2 view];
            if (v133)
            {
              v134 = v133;
              v135 = objc_opt_self();
              v136 = [v134 safeAreaLayoutGuide];

              v137 = [v136 bottomAnchor];
              v138 = [v132 constraintEqualToAnchor:v137];

              *(v113 + 56) = v138;
              sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v135 activateConstraints:{isa, v139}];
              goto LABEL_47;
            }

            goto LABEL_67;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_52;
  }

  v26 = v25;
  v27 = sub_100030540();
  [v26 addSubview:v27];

  v28 = [v2 view];
  if (!v28)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v29 = v28;
  v30 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork;
  [v28 sendSubviewToBack:*&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork]];

  v31 = [v2 view];
  if (!v31)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = v31;
  v33 = sub_1000305E8();
  [v32 addSubview:v33];

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000B5A70;
  v35 = [*&v2[v30] leadingAnchor];
  v36 = [v2 view];
  if (!v36)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v34 + 32) = v39;
  v40 = [*&v2[v30] trailingAnchor];
  v41 = [v2 view];
  if (!v41)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v34 + 40) = v44;
  v45 = [*&v2[v30] topAnchor];
  v46 = [v2 view];
  if (!v46)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v34 + 48) = v49;
  v50 = [*&v2[v30] bottomAnchor];
  v51 = [v2 view];
  if (!v51)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v52 = v51;
  v53 = [v51 bottomAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v34 + 56) = v54;
  v55 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView;
  v56 = [*&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView] leadingAnchor];
  v57 = [v2 view];
  if (!v57)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = [v56 constraintEqualToAnchor:v59];
  *(v34 + 64) = v60;
  v61 = [*&v2[v55] trailingAnchor];
  v62 = [v2 view];
  if (!v62)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(v34 + 72) = v65;
  v66 = [*&v2[v55] topAnchor];
  v67 = [v2 view];
  if (!v67)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v68 = v67;
  v69 = [v67 topAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(v34 + 80) = v70;
  v71 = [*&v2[v55] bottomAnchor];
  v72 = [v2 view];
  if (!v72)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v73 = v72;
  v74 = objc_opt_self();
  v75 = [v73 bottomAnchor];

  v76 = [v71 constraintEqualToAnchor:v75];
  *(v34 + 88) = v76;
  v77 = sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:v78];

  v79 = *&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView];
  if (!v79)
  {
    return;
  }

  v80 = *&v2[v55];
  v81 = v79;
  v82 = [v80 contentView];
  [v82 addSubview:v81];

  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1000B4FB0;
  v84 = [v81 leadingAnchor];
  v85 = [v2 view];
  if (!v85)
  {
    goto LABEL_68;
  }

  v86 = v85;
  v87 = [v85 safeAreaLayoutGuide];

  v88 = [v87 leadingAnchor];
  v89 = [v84 constraintEqualToAnchor:v88];

  *(v83 + 32) = v89;
  v90 = [v81 trailingAnchor];
  v91 = [v2 view];
  if (!v91)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v92 = v91;
  v93 = [v91 safeAreaLayoutGuide];

  v94 = [v93 trailingAnchor];
  v95 = [v90 constraintEqualToAnchor:v94];

  *(v83 + 40) = v95;
  v96 = [v81 topAnchor];
  v97 = [v2 view];
  if (!v97)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v98 = v97;
  v99 = [v97 safeAreaLayoutGuide];

  v100 = [v99 topAnchor];
  v101 = [v96 constraintEqualToAnchor:v100];

  *(v83 + 48) = v101;
  v102 = [v81 bottomAnchor];
  v103 = [v2 view];
  if (!v103)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v104 = v103;
  v105 = [v103 safeAreaLayoutGuide];

  v106 = [v105 bottomAnchor];
  v107 = [v102 constraintEqualToAnchor:v106];

  *(v83 + 56) = v107;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:{isa, v77}];
LABEL_47:
}

void sub_100031714()
{
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState))
  {
    if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) == 1)
    {
      v1 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingTimer;
      v2 = v0;
      [*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingTimer) invalidate];
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100006928(v3, qword_1000F3BA0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Scheduling spinner timer", v6, 2u);
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13[4] = sub_10003DD1C;
      v13[5] = v8;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100031AE4;
      v13[3] = &unk_1000E05D8;
      v9 = _Block_copy(v13);

      v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:2.0];
      _Block_release(v9);
      v11 = *(v2 + v1);
      *(v2 + v1) = v10;
    }

    else
    {

      sub_100034BF4();
    }
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingTimer);

    [v12 invalidate];
  }
}

void sub_100031970(uint64_t a1, uint64_t a2)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Spinner timer fired", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
LABEL_10:

        return;
      }
    }

    *(v7 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 2;
    sub_100031714();
    sub_100034BF4();
    goto LABEL_10;
  }
}

void sub_100031AE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100031B4C()
{
  if (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying])
  {
    v1 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
    v2 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard];
    if (v1 != 3)
    {
      v8 = 1;
      if ((sub_10002FAB0() & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    result = [v0 view];
    if (result)
    {
      v4 = result;
      v5 = [result safeAreaLayoutGuide];

      [v5 layoutFrame];
      v7 = v6;

      v8 = v7 >= 104.0;
      if ((sub_10002FAB0() & 1) == 0)
      {
LABEL_5:
        v9 = _swiftEmptyArrayStorage;
LABEL_12:
        type metadata accessor for RadioNowPlayingViewModel(0);
        swift_allocObject();
        v15 = v1;
        v16 = v2;
        v17 = v8;
        v18 = v9;
        return sub_100009A7C(v15, v16, v17, v18);
      }

LABEL_11:
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v9 = swift_allocObject();
      *(v9 + 1) = xmmword_1000B4FB0;
      v9[4] = sub_100037078();
      v9[5] = sub_1000376C0();
      v9[6] = sub_1000381C0();
      v9[7] = sub_100038B18();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource] == 1)
  {
    v10 = [objc_opt_self() sharedManager];
    v11 = [v10 snapshot];

    v12 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle;
    v13 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
    if (v11)
    {
      v63 = sub_10002FAB0();
      v14 = *&v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork];
      if (v14)
      {
        v64 = *&v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork];
      }

      else
      {
        v64 = sub_100035694();
      }

      v46 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState];
      v62 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard];
      v47 = v0[v12];
      v48 = v14;
      v49 = 1;
      if (v47 == 3)
      {
        result = [v0 view];
        if (!result)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v50 = result;
        v51 = [result safeAreaLayoutGuide];

        [v51 layoutFrame];
        v53 = v52;

        v49 = v53 >= 104.0;
      }

      v54 = sub_100030304();
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1000B4FB0;
      *(v55 + 32) = sub_100037078();
      *(v55 + 40) = sub_1000376C0();
      *(v55 + 48) = sub_1000381C0();
      *(v55 + 56) = sub_100038B18();
      type metadata accessor for RadioNowPlayingViewModel(0);
      v32 = swift_allocObject();
      *(v32 + 42) = 0;
      *(v32 + 44) = 0;
      *(v32 + 48) = _swiftEmptyArrayStorage;
      *(v32 + 56) = 0;
      *(v32 + 64) = 1;
      ObservationRegistrar.init()();
      *(v32 + 17) = v13;
      *(v32 + 41) = v63 & 1;
      *(v32 + 24) = v11;
      *(v32 + 32) = v64;
      *(v32 + 40) = 0;
      *(v32 + 42) = v46 == 2;
      *(v32 + 16) = v62;
      if (v49 == *(v32 + 43))
      {
        *(v32 + 43) = v49;
        v59 = v11;
        v60 = v64;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10003DD64(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
        v57 = v11;
        v58 = v64;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if ((v54 & 1) == *(v32 + 44))
      {
        *(v32 + 44) = v54 & 1;
      }

      else
      {
        v61 = swift_getKeyPath();
        __chkstk_darwin(v61);
        sub_10003DD64(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_100009368(v55);

      return v32;
    }

    v33 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard];
    if (v13 == 3)
    {
      result = [v0 view];
      if (!result)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = result;
      v35 = [result safeAreaLayoutGuide];

      [v35 layoutFrame];
      v37 = v36;

      v38 = v37 >= 104.0;
      if ((sub_10002FAB0() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v38 = 1;
      if ((sub_10002FAB0() & 1) == 0)
      {
LABEL_22:
        v39 = _swiftEmptyArrayStorage;
LABEL_40:
        type metadata accessor for RadioNowPlayingViewModel(0);
        swift_allocObject();
        v15 = v13;
        v16 = v33;
        v17 = v38;
        v18 = v39;
        return sub_100009A7C(v15, v16, v17, v18);
      }
    }

    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v39 = swift_allocObject();
    *(v39 + 1) = xmmword_1000B4FB0;
    v39[4] = sub_100037078();
    v39[5] = sub_1000376C0();
    v39[6] = sub_1000381C0();
    v39[7] = sub_100038B18();
    goto LABEL_40;
  }

  Strong = swift_weakLoadStrong();
  v20 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle;
  v21 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle];
  if (Strong)
  {
    v22 = Strong;
    v23 = sub_10002FAB0();
    v24 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard];
    v25 = 1;
    if (v0[v20] == 3)
    {
      result = [v0 view];
      if (!result)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v26 = result;
      v27 = [result safeAreaLayoutGuide];

      [v27 layoutFrame];
      v29 = v28;

      v25 = v29 >= 104.0;
    }

    v30 = sub_100030304();
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000B4FB0;
    *(v31 + 32) = sub_100037078();
    *(v31 + 40) = sub_1000376C0();
    *(v31 + 48) = sub_1000381C0();
    *(v31 + 56) = sub_100038B18();
    type metadata accessor for RadioNowPlayingViewModel(0);
    v32 = swift_allocObject();
    *(v32 + 42) = 0;
    *(v32 + 44) = 0;
    *(v32 + 48) = _swiftEmptyArrayStorage;
    *(v32 + 56) = 0;
    *(v32 + 64) = 1;
    ObservationRegistrar.init()();
    *(v32 + 17) = v21;
    *(v32 + 41) = v23 & 1;
    *(v32 + 16) = v24;
    *(v32 + 43) = v25;
    *(v32 + 44) = v30 & 1;
    *(v32 + 24) = v22;
    *(v32 + 32) = 0;
    *(v32 + 40) = 1;

    sub_100009368(v31);

    return v32;
  }

  v40 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard];
  if (v21 != 3)
  {
    v45 = 1;
    goto LABEL_42;
  }

  result = [v0 view];
  if (result)
  {
    v41 = result;
    v42 = [result safeAreaLayoutGuide];

    [v42 layoutFrame];
    v44 = v43;

    v45 = v44 >= 104.0;
LABEL_42:
    type metadata accessor for RadioNowPlayingViewModel(0);
    swift_allocObject();
    v18 = _swiftEmptyArrayStorage;
    v15 = v21;
    v16 = v40;
    v17 = v45;
    return sub_100009A7C(v15, v16, v17, v18);
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1000323F8()
{
  v1 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle;
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle) != 2)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      return;
    }

    if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard))
    {
      v3 = [v0 view];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 safeAreaLayoutGuide];

        [v5 layoutFrame];
        v7 = v6;

        if (v7 >= 156.0)
        {
          goto LABEL_12;
        }

LABEL_10:
        v12 = [v0 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 safeAreaLayoutGuide];

          [v14 layoutFrame];
          v16 = v15;

          if (v16 > 150.0)
          {
LABEL_12:
            v11 = *(v0 + v1);
            v10 = 6;
            goto LABEL_13;
          }

          v17 = [v0 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 safeAreaLayoutGuide];

            [v19 layoutFrame];
            v21 = v20;

            if (v21 >= 106.0)
            {
              v11 = *(v0 + v1);
              v10 = 5;
              goto LABEL_13;
            }

            v22 = [v0 view];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 safeAreaLayoutGuide];

              [v24 layoutFrame];
              v26 = v25;

              if (v26 < 250.0)
              {
LABEL_24:
                v11 = *(v0 + v1);
                v10 = 3;
                goto LABEL_13;
              }

              v27 = [v0 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 safeAreaLayoutGuide];

                [v29 layoutFrame];
                v31 = v30;

                if (v31 >= 60.0)
                {
                  v11 = *(v0 + v1);
                  v10 = 4;
                  goto LABEL_13;
                }

                goto LABEL_24;
              }

LABEL_32:
              __break(1u);
              return;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      __break(1u);
    }

    else
    {
      v8 = [objc_opt_self() sharedApplication];
      v9 = [v8 delegate];

      if (v9)
      {
        type metadata accessor for AppDelegate(0);
        swift_dynamicCastClassUnconditional();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_unknownObjectRelease();
        v10 = v32;
        if (v32 == 1)
        {
          v11 = *(v0 + v1);
LABEL_13:
          *(v0 + v1) = v10;
          sub_100030790(v11);
          return;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_100032888(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136446210;
    if (v2)
    {
      v8 = 7496035;
    }

    else
    {
      v8 = 5459817;
    }

    v9 = sub_100043AF0(v8, 0xE300000000000000, v12);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Audio ownership now with %{public}s", v6, 0xCu);
    sub_100006960(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10003399C(v2);
  }
}

void sub_100032A18(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446210;
    if (v2)
    {
      v8 = 7562617;
    }

    else
    {
      v8 = 28526;
    }

    if (v2)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xE200000000000000;
    }

    v10 = sub_100043AF0(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Call now active: %{public}s", v6, 0xCu);
    sub_100006960(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_weakLoadStrong();
    if (v2)
    {
      if (v13)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v21 == 1)
        {
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "Call started with car as owner.", v16, 2u);
          }

          sub_100034780(0);
          v12[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource] = 0;
          sub_100034A80();

LABEL_26:

          return;
        }
      }

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Call started with iOS as owner.", v20, 2u);
      }

      v12 = v18;
      goto LABEL_26;
    }

    if (v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }

    sub_10003399C(v17);
    goto LABEL_26;
  }
}

void sub_100032D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BA0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received updated car snapshot.", v8, 2u);
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 currentSession];

      if (v11)
      {
        v12 = [v11 configuration];

        v13 = [v12 supportsVehicleData];
        if (v13)
        {
          v14 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource;
          if (v4[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource])
          {
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v15 & 1) == 0)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v16 = Logger.logObject.getter();
              v17 = static os_log_type_t.debug.getter();
              v18 = os_log_type_enabled(v16, v17);
              if (v25 == 1)
              {
                if (v18)
                {
                  v19 = swift_slowAlloc();
                  *v19 = 0;
                  _os_log_impl(&_mh_execute_header, v16, v17, "Snapshot update received with car as audio owner; returning source to car.", v19, 2u);
                }

                sub_100034780(0);
                v4[v14] = 0;
                sub_100034A80();
                goto LABEL_19;
              }

              if (v18)
              {
                v20 = swift_slowAlloc();
                *v20 = 0;
                v21 = "Not updating now playing from new car snapshot; iOS is active source.";
                goto LABEL_17;
              }

              goto LABEL_18;
            }
          }

          else
          {
          }

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Updating cluster from car per new snapshot.", v24, 2u);
          }

          sub_100034BF4();
          goto LABEL_19;
        }
      }
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Current session does not support vehicle data.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v16, v17, v21, v20, 2u);
    }

LABEL_18:

    v4 = v16;
LABEL_19:
  }
}

void sub_10003314C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource))
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    sub_1000361EC();
LABEL_7:
  }
}

void sub_1000331EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource];

    if (v3)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_100034BF4();
    }
  }
}

void sub_1000332B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10003330C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100034BF4();
  }
}

void sub_100033388(uint64_t a1)
{
  v2 = v1;
  v32.receiver = v1;
  v32.super_class = type metadata accessor for RadioClusterNowPlayingViewController();
  objc_msgSendSuper2(&v32, "viewDidLoad");
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.001];

  [v4 setBackgroundColor:v7];
  v8 = [objc_opt_self() sharedManager];
  [v8 addNowPlayingObserver:v2];
  v9 = [v2 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 safeAreaLayoutGuide];

  [v11 layoutFrame];
  v13 = v12;

  [v8 setPreferredArtworkSize:{fmax(v13 * dbl_1000B5A60[v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle] - 1 < 2], 32.0)}];
  [v8 setPreferredArtworkScale:2.0];
  v14 = sub_100031B4C();
  v15 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel;
  *&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel] = v14;

  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = *&v2[v15];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v30) = 0;
  v31 = v17;
  v19 = objc_allocWithZone(sub_10000368C(&qword_1000EC848, &unk_1000B60D0));
  swift_retain_n();

  v20 = UIHostingController.init(rootView:)();
  [v2 addChildViewController:{v20, KeyPath, v30, v31, v18}];
  v21 = [v20 view];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v5 clearColor];
  [v22 setBackgroundColor:v23];

  v24 = [v20 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [v2 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v20 view];

  if (v27)
  {
    [v26 addSubview:v27];

    [v20 didMoveToParentViewController:v2];
    v28 = [v20 view];

    v29 = *&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView];
    *&v2[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView] = v28;

    sub_1000323F8();

    return;
  }

LABEL_15:
  __break(1u);
}

void *sub_100033774@<X0>(void *a1@<X8>)
{
  sub_10003E05C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000337C4(uint64_t *a1)
{
  sub_10003E05C();

  return EnvironmentValues.subscript.setter();
}

void sub_10003386C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RadioClusterNowPlayingViewController();
  objc_msgSendSuper2(&v7, "viewDidLayoutSubviews");
  sub_1000323F8();
  sub_100034BF4();
  if (*(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard) == 1)
  {
    v2 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady;
    if ((*(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady) & 1) == 0)
    {
      v3 = [v1 view];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 window];

        if (v5)
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          if (v6)
          {
            [v6 setContentReady];
          }
        }

        *(v1 + v2) = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10003399C(char a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong currentSession];

    if (v6)
    {
      v7 = [v6 configuration];

      v8 = [v7 supportsVehicleData];
      if (v8)
      {
        if (!swift_weakLoadStrong())
        {
          return;
        }

        if (a1)
        {
          if (qword_1000EACF0 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100006928(v9, qword_1000F3BA0);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v10, v11, "Returning audio source back to car.", v12, 2u);
          }

          sub_100034780(0);
          *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) = 0;
          sub_100034A80();

          return;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v33 == 1)
        {
          if (qword_1000EACF0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100006928(v17, qword_1000F3BA0);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v18, v19))
          {
            goto LABEL_37;
          }

          v20 = swift_slowAlloc();
          *v20 = 0;
          v21 = "Call is active; leaving now playing with car.";
        }

        else
        {
          v22 = [objc_opt_self() sharedApplication];
          v23 = [v22 delegate];

          if (!v23)
          {
            __break(1u);
            return;
          }

          type metadata accessor for AppDelegate(0);
          swift_dynamicCastClassUnconditional();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_unknownObjectRelease();
          if (v32 == 1)
          {
            if (qword_1000EACF0 != -1)
            {
              swift_once();
            }

            v24 = type metadata accessor for Logger();
            sub_100006928(v24, qword_1000F3BA0);
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v18, v19))
            {
              goto LABEL_37;
            }

            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "Siri is active; leaving now playing with car.";
          }

          else
          {
            v25 = [objc_opt_self() sharedInstance];
            v26 = [v25 isCaptureSessionRunning];

            if (!v26)
            {
              if (qword_1000EACF0 != -1)
              {
                swift_once();
              }

              v28 = type metadata accessor for Logger();
              sub_100006928(v28, qword_1000F3BA0);
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                *v31 = 0;
                _os_log_impl(&_mh_execute_header, v29, v30, "Neither call, Siri, nor camera is active; switching audio source to iOS.", v31, 2u);
              }

              sub_100034780(1);
              *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) = 1;
              goto LABEL_38;
            }

            if (qword_1000EACF0 != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            sub_100006928(v27, qword_1000F3BA0);
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v18, v19))
            {
LABEL_37:

              sub_100034780(0);
              *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) = 0;
LABEL_38:
              sub_100034A80();

              return;
            }

            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "Camera iris is open; leaving now playing with car.";
          }
        }

        _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

        goto LABEL_37;
      }
    }
  }

  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006928(v13, qword_1000F3BA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Current session does not support vehicle data; returning source to iOS.", v16, 2u);
  }

  sub_100034780(1);
  *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) = 1;

  sub_100034A80();
}

void sub_1000340E8()
{
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying) == 1)
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006928(v1, qword_1000F3BA0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Setting not playing state.", v4, 2u);
    }

    sub_100035A7C(0);
  }

  else
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BA0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Unsetting not playing state.", v7, 2u);
    }
  }
}

uint64_t sub_1000342C4(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10003DE00;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E06C8;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003DD64(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

id sub_1000345C0(uint64_t a1, void *a2)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session connected, evaluating audio ownership", v7, 2u);
  }

  v8 = [a2 configuration];
  v9 = [v8 supportsVehicleData];

  v10 = !v9 || ([a2 carOwnsMainAudio] & 1) == 0;
  sub_100034780(v10);
  *(a1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) = v10;
  return sub_100034A80();
}

void sub_100034780(char a1)
{
  if ((a1 & 1) == 0)
  {

    goto LABEL_7;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
LABEL_7:
    *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying) = 0;
    sub_1000340E8();
    *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 0;
    sub_100031714();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v10 = v25;
    }

    else
    {
      v10 = 0;
    }

    v11 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
    v12 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
    *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = v10;
    v13 = v10;

    v14 = sub_100030540();
    v15 = *(v1 + v11);
    [v14 setImage:v15];

    sub_100034BF4();
    return;
  }

  v3 = objc_opt_self();
  v4 = [v3 sharedManager];
  v5 = [v4 snapshot];

  if (v5 && (v5, v6 = [v3 sharedManager], v7 = objc_msgSend(v6, "snapshot"), v6, v8 = objc_msgSend(v7, "song"), v7, v8))
  {

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying) = v9;
  sub_1000340E8();
  *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 0;
  sub_100031714();
  v16 = [v3 sharedManager];
  v17 = [v16 artwork];

  v18 = [v17 artworkImage];
  v19 = v18;
  if (!v18)
  {
    v19 = sub_100035694();
  }

  v20 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
  v21 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
  *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = v19;
  v24 = v19;

  v22 = sub_100030540();
  v23 = *(v1 + v20);
  [v22 setImage:v23];

  sub_100034BF4();
}

id sub_100034A80()
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006928(v1, qword_1000F3BA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    if (*(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource))
    {
      v7 = 5459817;
    }

    else
    {
      v7 = 7496035;
    }

    v8 = sub_100043AF0(v7, 0xE300000000000000, &v10);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cluster now playing source updated to %{public}s", v5, 0xCu);
    sub_100006960(v6);
  }

  return sub_100034BF4();
}

id sub_100034BF4()
{
  result = sub_100031B4C();
  v2 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel;
  if (!*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel))
  {
    goto LABEL_11;
  }

  v3 = result;

  v5 = sub_10000C430(v4, v3);

  if (v5)
  {
    goto LABEL_5;
  }

  if (!*(v0 + v2))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_100009C8C(v3);

LABEL_5:
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard) == 1 && (sub_10002FAB0() & 1) != 0)
  {
    sub_100034CBC();
  }
}

void sub_100034CBC()
{
  v1 = v0;
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v2 - 8);
  v63 = &v48 - v3;
  v62 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v48 - v5;
  v60 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v48 - v7;
  if (v1[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard] != 1)
  {
    return;
  }

  v8 = [v1 view];
  if (!v8)
  {
    goto LABEL_70;
  }

  v9 = v8;
  v51 = [v8 window];

  if (!v51)
  {
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v54 = v6;
    v55 = v4;
    v50 = v10;
    v11 = *&v1[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel];
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      swift_getKeyPath();
      v66 = v11;
      sub_10003DD64(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = v11[6];

      v66 = _swiftEmptyArrayStorage;
      if (v13 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v58 = v1;
        v15 = 0;
        v1 = (v13 & 0xC000000000000001);
        while (1)
        {
          if (v1)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            goto LABEL_14;
          }

          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v16 = *(v13 + 8 * v15 + 32);

          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_19;
          }

LABEL_14:
          if (*(v16 + 49) != 1 || (*(v16 + 48) & 1) != 0)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v15;
          if (v17 == i)
          {
            v19 = v66;
            v1 = v58;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        ;
      }

      v19 = _swiftEmptyArrayStorage;
LABEL_27:

      v66 = _swiftEmptyArrayStorage;
      if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
      {
LABEL_55:
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *(v19 + 16);
      }

      v21 = 0;
      v12 = _swiftEmptyArrayStorage;
      while (v20 != v21)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v21 >= *(v19 + 16))
          {
            goto LABEL_54;
          }

          v22 = *(v19 + 8 * v21 + 32);

          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        v24 = *(v22 + 40);
        v25 = v24;

        ++v21;
        if (v24)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v12 = v66;
          v21 = v23;
        }
      }
    }

    v26 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_lastFocusableViews;
    v27 = *&v1[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_lastFocusableViews];

    v28 = sub_10000B964(v12, v27);

    if (v28)
    {

      return;
    }

    v29 = &v1[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_widgetCancelSet];
    swift_beginAccess();
    v57 = v29;
    *v29 = &_swiftEmptySetSingleton;

    v58 = v1;
    v49 = v26;
    v48 = v12 >> 62;
    if (v12 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v30 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_47:
        v56 = objc_opt_self();
        if (v30 >= 1)
        {
          v31 = 0;
          v52 = (v55 + 8);
          v53 = v12 & 0xC000000000000001;
          v32 = (v54 + 8);
          v54 = v30;
          v55 = v12;
          v33 = v61;
          do
          {
            if (v53)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v34 = *(v12 + 8 * v31 + 32);
            }

            v35 = v34;
            ++v31;
            swift_beginAccess();
            sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
            Published.projectedValue.getter();
            swift_endAccess();
            v36 = [v56 mainRunLoop];
            v65 = v36;
            v37 = type metadata accessor for NSRunLoop.SchedulerOptions();
            v38 = v63;
            (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
            sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
            sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
            sub_10001ADF4();
            v39 = v59;
            v40 = v62;
            Publisher.receive<A>(on:options:)();
            sub_100007834(v38, &unk_1000EC7E0, &unk_1000B5100);

            (*v52)(v33, v40);
            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v42 = swift_allocObject();
            *(v42 + 16) = v41;
            *(v42 + 24) = v35;
            sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
            v43 = v35;
            v44 = v60;
            Publisher<>.sink(receiveValue:)();

            (*v32)(v39, v44);
            swift_beginAccess();
            AnyCancellable.store(in:)();
            swift_endAccess();

            v12 = v55;
          }

          while (v54 != v31);
          goto LABEL_57;
        }

        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }
    }

LABEL_57:
    *&v58[v49] = v12;

    if (v48)
    {

      sub_10000368C(&qword_1000EC818, &qword_1000B5DE0);
      _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_10000368C(&qword_1000EC818, &qword_1000B5DE0);
      if (!swift_dynamicCastMetatype())
      {
        v46 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          v47 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
          do
          {
            v64 = &OBJC_PROTOCOL___CRSUIDashboardFocusableItemProviding;
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            v47 += 8;
            --v46;
          }

          while (v46);
        }
      }
    }

    sub_10000368C(&qword_1000EC818, &qword_1000B5DE0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 setFocusableViews:isa];

    return;
  }

LABEL_20:
  v18 = v51;
}

id sub_100035694()
{
  if ((v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource] & 1) == 0)
  {

    goto LABEL_8;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
LABEL_8:
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v20)
      {
        [v20 mediaSourceType];
      }
    }

    goto LABEL_11;
  }

  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 snapshot];

  if (v3)
  {
    v4 = [v3 bundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      [v3 durationSnapshot];
      if (v21 == 1)
      {
        goto LABEL_18;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v12 == v8)
      {
        goto LABEL_22;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_18:

        goto LABEL_11;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v15 == v8)
      {
        goto LABEL_22;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_18;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v17 == v8)
      {
LABEL_22:

        goto LABEL_11;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v19 == v8)
      {
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
    }
  }

LABEL_11:
  v9 = [v0 traitCollection];
  v10 = CPUIImageForPlaceholderTypeWithTraitCollection();

  return v10;
}

void sub_100035A7C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_placeholderTimer;
  v5 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_placeholderTimer);
  if (a1)
  {
    if (v5 && [v5 isValid])
    {
      [*(v1 + v4) invalidate];
      v6 = *(v1 + v4);
      *(v1 + v4) = 0;
    }

    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3BA0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting placeholder artwork timer.", v10, 2u);
    }

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22[4] = sub_10003DD44;
    v22[5] = v12;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100031AE4;
    v22[3] = &unk_1000E0600;
    v13 = _Block_copy(v22);

    v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:2.0];
    _Block_release(v13);
    v15 = *(v2 + v4);
    *(v2 + v4) = v14;
  }

  else
  {
    if (v5)
    {
      v16 = v5;
      if ([v16 isValid])
      {
        if (qword_1000EACF0 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006928(v17, qword_1000F3BA0);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating placeholder artwork timer.", v20, 2u);
        }
      }
    }

    [*(v2 + v4) invalidate];
    v21 = *(v2 + v4);
    *(v2 + v4) = 0;
  }
}

void *sub_100035D9C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = sub_10003DD4C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100064D70;
    aBlock[3] = &unk_1000E0650;
    v13 = _Block_copy(aBlock);
    v17 = v6;
    v14 = v13;
    v16 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003DD64(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
    sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v17);
  }

  return result;
}

id sub_1000360C0(uint64_t a1)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Placeholder artwork timer fired.", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
  v7 = *(a1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
  *(a1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = 0;

  v8 = sub_100030540();
  v9 = *(a1 + v6);
  [v8 setImage:v9];

  return sub_100034BF4();
}

void sub_1000361EC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource))
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3BA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updating cluster artwork from iOS.", v5, 2u);
    }

    v6 = [objc_opt_self() sharedManager];
    v7 = [v6 artwork];

    if (v7 && (v8 = [v7 artworkImage], v7, v8))
    {
      v9 = v8;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_100043AF0(0x7241657461647075, 0xEF29286B726F7774, &v35);
        *(v12 + 12) = 2082;
        v13 = sub_10007DDA8();
        v15 = sub_100043AF0(v13, v14, &v35);

        *(v12 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v10, v11, "%s Applying iOS artwork for current song %{public}s", v12, 0x16u);
        swift_arrayDestroy();
      }

      v16 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
      v17 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
      *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = v8;
      v34 = v9;

      v18 = sub_100030540();
      v19 = *(v1 + v16);
      [v18 setImage:v19];

      sub_100034BF4();
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100043AF0(0x7241657461647075, 0xEF29286B726F7774, &v35);
        _os_log_impl(&_mh_execute_header, v21, v22, "%s No available artwork for iOS.", v23, 0xCu);
        sub_100006960(v24);
      }

      v25 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
      v26 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
      *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = 0;

      v27 = sub_100030540();
      v28 = *(v1 + v25);
      [v27 setImage:v28];

      sub_100034BF4();
    }
  }

  else
  {
    sub_100035A7C(0);
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v20 = v35;
    }

    else
    {
      v20 = 0;
    }

    v29 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
    v30 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
    *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = v20;
    v31 = v20;

    v32 = sub_100030540();
    v33 = *(v1 + v29);
    [v32 setImage:v33];

    sub_100034BF4();
    sub_100034BF4();
  }
}

double sub_10003672C()
{
  v0 = type metadata accessor for WidgetFocusableView(0);
  v1 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 1;
  sub_100074794(v2);
  v3 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = v3[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  v3[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 2;
  sub_100074794(v4);
  v5 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v5[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  v5[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 2;
  sub_100074794(v6);
  v7 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v7[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  v7[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 2;
  sub_100074794(v8);
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v9 = swift_allocObject();
  *&result = 4;
  *(v9 + 16) = xmmword_1000B4FB0;
  *(v9 + 32) = v1;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v7;
  return result;
}

id sub_1000368BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RadioClusterNowPlayingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for NowPlayingSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetFocusableView.FocusStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetFocusableView.FocusStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NowPlayingStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100036F74()
{
  result = qword_1000EC7A0;
  if (!qword_1000EC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC7A0);
  }

  return result;
}

unint64_t sub_100036FCC()
{
  result = qword_1000EC7A8;
  if (!qword_1000EC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC7A8);
  }

  return result;
}

unint64_t sub_100037024()
{
  result = qword_1000EC7B0;
  if (!qword_1000EC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC7B0);
  }

  return result;
}

uint64_t sub_100037078()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = *&v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews];
  if (v15 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v8;
  v42 = v7;
  v39 = v3;
  v40 = v10;
  if (result)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {

      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 + 32);
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    v19 = &v17[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
    v20 = *&v17[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
    v21 = *&v17[OBJC_IVAR____TtC5Media19WidgetFocusableView_action + 8];
    *v19 = sub_10003E1E0;
    v19[1] = v18;
    v22 = v17;
    v23 = v0;
    sub_10003DEF8(v20, v21);
  }

  else
  {
    v17 = 0;
  }

  v24 = v0[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying] ^ 1;
  v25 = swift_allocObject();
  *(v25 + 16) = v0;
  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  LOBYTE(v43) = 0;
  v28 = v0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v26 + v27, v14, v11);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v29 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v29 = &_swiftEmptySetSingleton;
  }

  *(v26 + OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig_cancels) = v29;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0xE000000000000000;
  *(v26 + 32) = 0;
  *(v26 + 40) = v17;
  *(v26 + 48) = 0;
  *(v26 + 49) = v24 & 1;
  *(v26 + 56) = sub_10003DFE4;
  *(v26 + 64) = v25;
  *(v26 + 72) = 0;
  if (v17)
  {
    swift_beginAccess();

    v36 = v17;
    Published.projectedValue.getter();
    swift_endAccess();
    v30 = [objc_opt_self() mainRunLoop];
    v43 = v30;
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v32 = v39;
    (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v33 = v40;
    v34 = v38;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v32, &unk_1000EC7E0, &unk_1000B5100);
    (*(v37 + 8))(v6, v34);

    swift_allocObject();
    swift_weakInit();
    sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v35 = v42;
    Publisher<>.sink(receiveValue:)();

    (*(v41 + 8))(v33, v35);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v26;
}

uint64_t sub_1000376C0()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v3 = v61 - v2;
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v67 = v61 - v6;
  v7 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v61 - v9;
  v70 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v11 = *(v70 - 8);
  __chkstk_darwin(v70);
  v13 = v61 - v12;
  LODWORD(v12) = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard);
  v68 = v5;
  if (v12 != 1)
  {
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews;
  v15 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = *(v0 + v14);
  if ((v16 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v21 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_17;
    }

    v5 = *(v16 + 40);
  }

LABEL_9:
  v62 = v4;
  v63 = v3;
  v17 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource);
  v65 = v8;
  v66 = v7;
  v64 = v10;
  if (v17 == 1)
  {
    v18 = objc_opt_self();
    v19 = [v18 sharedManager];
    v20 = [v19 snapshot];

    if (v20)
    {
      v69 = [v20 shouldEnableBackButton];
    }

    else
    {
      v69 = 0;
    }

    v23 = 0xED00006C6C69662ELL;
    v22 = 0x647261776B636162;
    v24 = [v18 sharedManager];
    v25 = [v24 snapshot];

    if (!v25)
    {
      goto LABEL_32;
    }

    v26 = [v25 jumpBackInterval];

    if (!v26)
    {
      goto LABEL_32;
    }

    v27 = [v26 integerValue];
    if (v27 == -1)
    {

      v23 = 0x80000001000BBB00;
      v22 = 0xD000000000000029;
      v37 = 6;
      goto LABEL_33;
    }

    if (v27 != 0x8000000000000000)
    {
      v28 = -v27;
      v29 = [objc_opt_self() knownJumpIntervals];
      sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = objc_allocWithZone(NSNumber);
      v61[0] = v28;
      v32 = [v31 initWithInteger:v28];
      v61[1] = v61;
      v72 = v32;
      __chkstk_darwin(v32);
      v61[-2] = &v72;
      LOBYTE(v29) = sub_10003E32C(sub_10003E1AC, &v61[-4], v30);

      if (v29)
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v71 = v61[0];
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;

        v72 = v33;
        v73 = v35;
        v36._countAndFlagsBits = 0xD000000000000024;
        v36._object = 0x80000001000BBAD0;
        String.append(_:)(v36);

        v22 = v72;
        v23 = v73;
        v37 = 6;
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_45;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v72)
  {
    goto LABEL_21;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v72 >> 62)
  {
    goto LABEL_46;
  }

  v21 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  if (v21 < 2 || !swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v72))
  {
LABEL_21:
    v69 = 0;
    goto LABEL_22;
  }

  v69 = 1;
LABEL_22:
  v22 = 0xD000000000000010;
  v23 = 0x80000001000BBAB0;
LABEL_32:
  v37 = 4;
LABEL_33:
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v40 = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = v37;
  if (v5)
  {
    v41 = (v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action);
    v42 = *(v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action);
    v43 = *(v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action + 8);
    *v41 = sub_10003DFA4;
    v41[1] = v39;
    v44 = v5;

    sub_10003DEF8(v42, v43);
  }

  sub_100030114();
  v46 = v45 ^ 1;
  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  LOBYTE(v72) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v47 + v48, v13, v70);
  if (_swiftEmptyArrayStorage >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v69;
    if (v60)
    {
      v49 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v49 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v49 = &_swiftEmptySetSingleton;
    v50 = v69;
  }

  *(v47 + OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig_cancels) = v49;
  *(v47 + 16) = v22;
  *(v47 + 24) = v23;
  *(v47 + 32) = 0x4030000000000000;
  *(v47 + 40) = v5;
  *(v47 + 48) = v46 & 1;
  *(v47 + 49) = v50;
  *(v47 + 56) = sub_10003DFA4;
  *(v47 + 64) = v40;
  *(v47 + 72) = 0;
  if (v5)
  {
    swift_beginAccess();
    v51 = v5;

    v52 = v67;
    Published.projectedValue.getter();
    swift_endAccess();
    v53 = [objc_opt_self() mainRunLoop];
    v72 = v53;
    v54 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v55 = v63;
    (*(*(v54 - 8) + 56))(v63, 1, 1, v54);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v56 = v64;
    v57 = v62;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v55, &unk_1000EC7E0, &unk_1000B5100);
    v68[1](v52, v57);

    swift_allocObject();
    swift_weakInit();
    sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v58 = v66;
    Publisher<>.sink(receiveValue:)();

    (*(v65 + 8))(v56, v58);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v47;
}

uint64_t sub_1000381C0()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v46 - v6;
  v7 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v55 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v46 - v12;
  LODWORD(v12) = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard);
  v53 = v5;
  if (v12 != 1)
  {
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews;
  v15 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews);
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = *(v0 + v14);
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v18 = *(v17 + 48);
  }

LABEL_9:
  v47 = v4;
  v48 = v3;
  v49 = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  v20 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource);
  v50 = v8;
  v51 = v7;
  if (v20 == 1)
  {
    v56 = 0xE90000000000006CLL;
    v21 = [objc_opt_self() sharedManager];
    v22 = [v21 snapshot];

    if (v22)
    {
      if ([v22 state] == 2 || (objc_msgSend(v22, "durationSnapshot"), v58 == 1))
      {
        v23 = [v22 showsStopButton];

        if (!v23)
        {
          *(v19 + 16) = 2;
          v56 = 0xEA00000000006C6CLL;
          v26 = 0x69662E6573756170;
LABEL_28:
          v54 = v26;
          goto LABEL_29;
        }

        *(v19 + 16) = 0;
        v24 = 1886352499;
LABEL_27:
        v26 = v24 | 0x6C69662E00000000;
        goto LABEL_28;
      }
    }

    v24 = 2036427888;
    goto LABEL_27;
  }

  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v57) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v57 & 1) != 0))
  {
    v54 = 0x6C69662E72617473;
    v56 = 0xE90000000000006CLL;
  }

  else
  {
    v56 = 0xE400000000000000;
    v54 = 1918989427;
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v57)
    {

LABEL_29:
      v25 = 1;
      goto LABEL_30;
    }
  }

  v25 = 0;
LABEL_30:
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v29 = v28;
  *(v28 + 16) = v27;
  *(v28 + 24) = v19;
  if (v18)
  {
    v30 = &v18[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
    v31 = *&v18[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
    v32 = *&v18[OBJC_IVAR____TtC5Media19WidgetFocusableView_action + 8];
    *v30 = sub_10003DF4C;
    v30[1] = v28;

    v33 = v18;

    sub_10003DEF8(v31, v32);
  }

  else
  {
  }

  v34 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState);
  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  LOBYTE(v57) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v35 + v36, v13, v55);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v37 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v37 = &_swiftEmptySetSingleton;
  }

  *(v35 + OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig_cancels) = v37;
  v38 = v56;
  *(v35 + 16) = v54;
  *(v35 + 24) = v38;
  *(v35 + 32) = 0x4034000000000000;
  *(v35 + 40) = v18;
  *(v35 + 48) = 0;
  *(v35 + 49) = v25;
  *(v35 + 56) = sub_10003DF4C;
  *(v35 + 64) = v29;
  *(v35 + 72) = v34 == 2;
  if (v18)
  {
    swift_beginAccess();
    v56 = v18;

    v39 = v52;
    Published.projectedValue.getter();
    swift_endAccess();
    v40 = [objc_opt_self() mainRunLoop];
    v57 = v40;
    v41 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v42 = v48;
    (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v43 = v49;
    v44 = v47;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v42, &unk_1000EC7E0, &unk_1000B5100);
    (*(v53 + 8))(v39, v44);

    swift_allocObject();
    swift_weakInit();
    sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v45 = v51;
    Publisher<>.sink(receiveValue:)();

    (*(v50 + 8))(v43, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v35;
}

uint64_t sub_100038B18()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v3 = v59 - v2;
  v4 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v63 = v59 - v6;
  v7 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v59 - v9;
  v67 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v11 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = v59 - v12;
  LODWORD(v12) = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard);
  v65 = v4;
  v66 = v3;
  v64 = v5;
  if (v12 != 1)
  {
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews;
  v15 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = *(v0 + v14);
  if ((v16 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      __break(1u);
      goto LABEL_43;
    }

    v5 = *(v16 + 56);
  }

LABEL_9:
  v17 = *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource);
  v61 = v8;
  v62 = v7;
  v60 = v10;
  if (v17 != 1)
  {
    v4 = 0xEF64726177726F66;
    v68 = 0x2E6E6F7276656863;
    Strong = swift_weakLoadStrong();
    v21 = Strong;
    if (!Strong)
    {
      goto LABEL_27;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v70)
    {
      goto LABEL_21;
    }

    v23 = swift_weakLoadStrong();
    v21 = v23;
    if (!v23)
    {
LABEL_27:
      v31 = 3;
      goto LABEL_28;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v70 >> 62))
    {
      v24 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_43:
    v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:

    if (v24 < 2)
    {
      goto LABEL_21;
    }

    v25 = swift_weakLoadStrong();
    v21 = v25;
    if (v25)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v70)
      {

        v21 = 1;
        goto LABEL_27;
      }

LABEL_21:
      v21 = 0;
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v18 = objc_opt_self();
  v19 = [v18 sharedManager];
  v20 = [v19 snapshot];

  if (v20)
  {
    v21 = [v20 shouldEnableNextButton];
  }

  else
  {
    v21 = 0;
  }

  v4 = 0xEC0000006C6C6966;
  v68 = 0x2E64726177726F66;
  v26 = [v18 sharedManager];
  v27 = [v26 snapshot];

  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = [v27 jumpForwardInterval];

  if (!v28)
  {
    goto LABEL_27;
  }

  v29 = [v28 integerValue];
  if (v29 == 1)
  {

    v4 = 0x80000001000BBA60;
    v30 = 0xD000000000000021;
LABEL_37:
    v68 = v30;
    v31 = 5;
    goto LABEL_28;
  }

  v51 = v29;
  v52 = [objc_opt_self() knownJumpIntervals];
  sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = [objc_allocWithZone(NSNumber) initWithInteger:v51];
  v59[1] = v59;
  v70 = v54;
  __chkstk_darwin(v54);
  v59[-2] = &v70;
  LOBYTE(v52) = sub_10003E32C(sub_10003DF18, &v59[-4], v53);

  if (v52)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v69 = v51;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;

    v70 = v55;
    v71 = v57;
    v58._object = 0x80000001000BBA40;
    v58._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v58);

    v30 = v70;
    v4 = v71;
    goto LABEL_37;
  }

  v31 = 3;
  v4 = 0xEC0000006C6C6966;
LABEL_28:
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v34 = v33;
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  if (v5)
  {
    v35 = (v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action);
    v36 = *(v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action);
    v37 = *(v5 + OBJC_IVAR____TtC5Media19WidgetFocusableView_action + 8);
    *v35 = sub_10003DEB0;
    v35[1] = v33;
    v38 = v5;

    sub_10003DEF8(v36, v37);
  }

  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  v39 = swift_allocObject();
  v40 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  LOBYTE(v70) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v39 + v40, v13, v67);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v41 = &_swiftEmptySetSingleton;
  }

  *(v39 + OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig_cancels) = v41;
  *(v39 + 16) = v68;
  *(v39 + 24) = v4;
  *(v39 + 32) = 0x4030000000000000;
  *(v39 + 40) = v5;
  *(v39 + 48) = 0;
  *(v39 + 49) = v21;
  *(v39 + 56) = sub_10003DEB0;
  *(v39 + 64) = v34;
  *(v39 + 72) = 0;
  if (v5)
  {
    swift_beginAccess();
    v42 = v5;

    v43 = v63;
    Published.projectedValue.getter();
    swift_endAccess();
    v44 = [objc_opt_self() mainRunLoop];
    v70 = v44;
    v45 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v46 = v66;
    (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v47 = v60;
    v48 = v65;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v46, &unk_1000EC7E0, &unk_1000B5100);
    v64[1](v43, v48);

    swift_allocObject();
    swift_weakInit();
    sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v49 = v62;
    Publisher<>.sink(receiveValue:)();

    (*(v61 + 8))(v47, v49);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v39;
}

void sub_1000395F8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    sub_1000ACC00();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100039674(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CAFMediaSource.SeekDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying))
    {
      goto LABEL_3;
    }

    if ((*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) & 1) == 0)
    {
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006928(v20, qword_1000F3BA0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Previous station button tapped!", v23, 2u);
      }

      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v24 = aBlock[0];
        if (aBlock[0])
        {
          (*(v4 + 104))(v6, enum case for CAFMediaSource.SeekDirection.previous(_:), v3);
          CAFMediaSource.seek(direction:completion:)();

          (*(v4 + 8))(v6, v3);
          return;
        }
      }

      goto LABEL_3;
    }

    v9 = objc_opt_self();
    v10 = [v9 sharedManager];
    v11 = [v10 snapshot];

    if (!v11)
    {
LABEL_3:

      return;
    }

    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006928(v12, qword_1000F3BA0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "back tapped!", v15, 2u);
    }

    v16 = [v11 commandWithType:a2];
    if (v16)
    {
      v17 = v16;
      v18 = [v9 sharedManager];
      aBlock[4] = sub_100039B44;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009959C;
      aBlock[3] = &unk_1000E0830;
      v19 = _Block_copy(aBlock);
      [v18 performCommandRequest:v17 completion:v19];

      _Block_release(v19);
    }

    else
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No command available for back button tap!", v27, 2u);
      }
    }
  }
}

void sub_100039B58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) == 1)
    {
      v5 = objc_opt_self();
      v6 = [v5 sharedManager];
      v7 = [v6 snapshot];

      if (v7)
      {
        if (qword_1000EACF0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100006928(v8, qword_1000F3BA0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Play tapped!", v11, 2u);
        }

        swift_beginAccess();
        v12 = [v7 commandWithType:*(a2 + 16)];
        if (v12)
        {
          v13 = v12;
          v14 = [v5 sharedManager];
          v15 = swift_allocObject();
          *(v15 + 16) = a2;
          *(v15 + 24) = v4;
          v29[4] = sub_10003DF9C;
          v29[5] = v15;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 1107296256;
          v29[2] = sub_10009959C;
          v29[3] = &unk_1000E07E0;
          v16 = _Block_copy(v29);

          v17 = v4;

          [v14 performCommandRequest:v13 completion:v16];

          _Block_release(v16);
          v4 = v14;
        }

        else
        {
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "No command available for play button tap!", v28, 2u);
          }

          v4 = v7;
        }
      }

      else
      {
        if (qword_1000EACF0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100006928(v22, qword_1000F3BA0);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "No play command due to no snapshot!", v25, 2u);
        }

        v4 = v23;
      }
    }

    else
    {
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006928(v18, qword_1000F3BA0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Favorite button tapped!", v21, 2u);
      }

      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v29[0])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          TerrestrialRadioStation.setFavorite(_:)((v29[0] & 1) == 0);
        }
      }
    }
  }
}

void sub_10003A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006928(v3, qword_1000F3BA0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Play/pause/stop command failed with %@!", v5, 0xCu);
      sub_100007834(v6, &unk_1000EE230, &qword_1000BA550);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3BA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Play/pause/stop command sent successfully!", v13, 2u);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      *(a3 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 1;
      sub_100031714();
    }
  }
}

void sub_10003A350(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CAFMediaSource.SeekDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying))
    {
LABEL_3:

      return;
    }

    if ((*(Strong + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) & 1) == 0)
    {
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006928(v20, qword_1000F3BA0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Next station button tapped!", v23, 2u);
      }

      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v24 = aBlock[0];
        if (aBlock[0])
        {
          (*(v4 + 104))(v6, enum case for CAFMediaSource.SeekDirection.next(_:), v3);
          CAFMediaSource.seek(direction:completion:)();

          (*(v4 + 8))(v6, v3);
          return;
        }
      }

      goto LABEL_3;
    }

    v9 = objc_opt_self();
    v10 = [v9 sharedManager];
    v11 = [v10 snapshot];

    if (v11)
    {
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100006928(v12, qword_1000F3BA0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "next tapped!", v15, 2u);
      }

      v16 = [v11 commandWithType:a2];
      if (v16)
      {
        v17 = v16;
        v18 = [v9 sharedManager];
        aBlock[4] = sub_10003A8D0;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009959C;
        aBlock[3] = &unk_1000E0740;
        v19 = _Block_copy(aBlock);
        [v18 performCommandRequest:v17 completion:v19];

        _Block_release(v19);
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "No next command available!", v31, 2u);
        }
      }
    }

    else
    {
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006928(v25, qword_1000F3BA0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "No available next command!", v28, 2u);
      }
    }
  }
}

void sub_10003A8E4(uint64_t a1, const char *a2, const char *a3, ...)
{
  if (!a1)
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3BA0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, a3, v12, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BA0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_100007834(v7, &unk_1000EE230, &qword_1000BA550);

LABEL_10:

    return;
  }
}

void sub_10003AB40(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      sub_10003ABAC(a3);
    }
  }
}

id sub_10003ABAC(id result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_lastFocusableViews);
  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {

      v5 = 0;
      v6 = 0;
LABEL_4:
      for (i = v6; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v8 = *(v3 + 8 * i + 32);
        }

        v9 = v8;
        v6 = (i + 1);
        if (__OFADD__(i, 1))
        {
          break;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v2)
        {
          v10 = v9 == v2;
        }

        else
        {
          v10 = 0;
        }

        v11 = !v10;
        if (v34 == 1 && v11)
        {
          if (qword_1000EACF0 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          sub_100006928(v12, qword_1000F3BA0);
          v13 = v9;
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = v14;
            v18 = swift_slowAlloc();
            *v16 = 138412290;
            *(v16 + 4) = v13;
            *v18 = v13;
            v19 = v13;
            _os_log_impl(&_mh_execute_header, v17, v15, "Unfocusing %@", v16, 0xCu);
            sub_100007834(v18, &unk_1000EE230, &qword_1000BA550);
            v14 = v17;
          }

          v20 = v13;
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 138412290;
            *(v23 + 4) = v20;
            *v24 = v20;
            v25 = v20;
            _os_log_impl(&_mh_execute_header, v21, v22, "Unfocusing %@", v23, 0xCu);
            sub_100007834(v24, &unk_1000EE230, &qword_1000BA550);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v26 = v20;
          static Published.subscript.setter();
          if (!v26[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle])
          {
            goto LABEL_30;
          }

          if (v26[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] == 1)
          {
            v27 = *&v26[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing];
            if (v27)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              v28 = v27;
              static Published.subscript.getter();

              v5 = 1;
              [v28 setHidden:(v32 & 1) == 0];

              if (v6 != v4)
              {
                goto LABEL_4;
              }

              goto LABEL_39;
            }

LABEL_30:
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v29 = objc_opt_self();
            v30 = &selRef_radio_carSystemFocusColor;
            if (!v33)
            {
              v30 = &selRef_clearColor;
            }

            v31 = [v29 *v30];
            [v26 setBackgroundColor:v31];
          }

          v5 = 1;
          if (v6 != v4)
          {
            goto LABEL_4;
          }

LABEL_39:

          return sub_100034BF4();
        }

        if (v6 == v4)
        {

          if ((v5 & 1) == 0)
          {
            return result;
          }

          return sub_100034BF4();
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_10003B0AC(uint64_t a1, void *a2, char a3, int a4, int a5)
{
  v143 = a5;
  LODWORD(v160) = a4;
  v161 = a2;
  v112 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  __chkstk_darwin(v112);
  v110 = &v104 - v8;
  v109 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  __chkstk_darwin(v109);
  v108 = &v104 - v9;
  v107 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  __chkstk_darwin(v107);
  v106 = &v104 - v10;
  v114 = sub_10000368C(&qword_1000EC870, &qword_1000B60E0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v104 - v11;
  v117 = sub_10000368C(&qword_1000EC878, &qword_1000B60E8);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v104 - v12;
  v137 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v104 - v13;
  v140 = sub_10000368C(&qword_1000EC888, &qword_1000B60F8);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v104 - v14;
  v131 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v104 - v15;
  v134 = sub_10000368C(&unk_1000ED0B0, &unk_1000BA840);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v104 - v16;
  v125 = sub_10000368C(&unk_1000EC8A0, &qword_1000B6110);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v104 - v17;
  v128 = sub_10000368C(&unk_1000EEF80, &qword_1000B6118);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v104 - v18;
  v122 = sub_10000368C(&unk_1000EC8B0, &qword_1000B6120);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v104 - v19;
  v20 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v20 - 8);
  v22 = &v104 - v21;
  v149 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v154 = *(v149 - 8);
  __chkstk_darwin(v149);
  v153 = &v104 - v23;
  v24 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v25 = *(v24 - 8);
  v150 = v24;
  v151 = v25;
  v26 = __chkstk_darwin(v24);
  v105 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v118 = &v104 - v29;
  __chkstk_darwin(v28);
  v31 = &v104 - v30;
  swift_weakInit();
  v32 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_widgetCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v103 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v103 = &_swiftEmptySetSingleton;
    }

    *&v5[v32] = v103;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v33 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v33 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v33 = &_swiftEmptySetSingleton;
    *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_widgetCancelSet] = &_swiftEmptySetSingleton;
  }

  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet] = v33;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_placeholderTimer] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork] = 0;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork] = 0;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView] = 0;
  v34 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle;
  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle] = 0;
  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState] = 0;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingTimer] = 0;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel] = 0;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView] = 0;
  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;
  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying] = 0;
  v35 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews;
  sub_10003672C();
  *&v5[v35] = v36;
  *&v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_lastFocusableViews] = _swiftEmptyArrayStorage;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isDashboard] = v143 & 1;
  if (v160)
  {
    v37 = 1;
  }

  else
  {
    v37 = 5;
  }

  if (a3)
  {
    v37 = 2;
  }

  v5[v34] = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v162 == 1 && (v38 = [v161 currentSession]) != 0 && (v39 = v38, v40 = objc_msgSend(v38, "configuration"), v39, LOBYTE(v39) = objc_msgSend(v40, "supportsVehicleData"), v40, (v39 & 1) != 0))
  {
    v41 = v22;
    v42 = 0;
  }

  else
  {
    v41 = v22;
    v42 = 1;
  }

  v5[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource] = v42;
  v43 = type metadata accessor for RadioClusterNowPlayingViewController();
  v163.receiver = v5;
  v163.super_class = v43;
  v44 = objc_msgSendSuper2(&v163, "initWithNibName:bundle:", 0, 0);
  [v161 addSessionObserver:v44];
  swift_beginAccess();
  v45 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v46 = v153;
  Published.projectedValue.getter();
  swift_endAccess();
  v161 = objc_opt_self();
  v47 = [v161 mainRunLoop];
  v162 = v47;
  v152 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v48 = *(v152 - 8);
  v157 = *(v48 + 56);
  v160 = v48 + 56;
  v157(v41, 1, 1, v152);
  v156 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  v144 = &protocol conformance descriptor for Published<A>.Publisher;
  v148 = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
  v159 = sub_10001ADF4();
  v49 = v31;
  v50 = v149;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

  v155 = a1;
  v51 = v154 + 8;
  v147 = *(v154 + 8);
  v147(v46, v50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v146 = sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v52 = v150;
  Publisher<>.sink(receiveValue:)();

  v53 = v151 + 8;
  v145 = *(v151 + 8);
  v145(v49, v52);
  v142 = v44;
  v158 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  v54 = v153;
  v141 = v45;
  Published.projectedValue.getter();
  swift_endAccess();
  v55 = [v161 mainRunLoop];
  v162 = v55;
  v56 = v152;
  v157(v41, 1, 1, v152);
  Publisher.receive<A>(on:options:)();
  sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

  v154 = v51;
  v147(v54, v50);
  v57 = v155;
  v58 = v120;
  Publisher<>.removeDuplicates()();
  v151 = v53;
  v145(v49, v52);
  v59 = v142;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&qword_1000EC5B8, &unk_1000EC8B0, &qword_1000B6120, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v60 = v122;
  Publisher<>.sink(receiveValue:)();

  (*(v121 + 8))(v58, v60);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  v61 = v123;
  Published.projectedValue.getter();
  swift_endAccess();
  v62 = [v161 mainRunLoop];
  v162 = v62;
  v63 = v157;
  v157(v41, 1, 1, v56);
  sub_100005870(&unk_1000EEFA0, &unk_1000EC8A0, &qword_1000B6110, v144);
  v64 = v126;
  v65 = v125;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

  (*(v124 + 8))(v61, v65);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v57;
  v68 = v119;
  sub_100005870(&unk_1000EC8D0, &unk_1000EEF80, &qword_1000B6118, v119);

  v69 = v128;
  Publisher<>.sink(receiveValue:)();

  (*(v127 + 8))(v64, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v70 = v129;
  Published.projectedValue.getter();
  swift_endAccess();
  v71 = [v161 mainRunLoop];
  v162 = v71;
  v72 = v152;
  v63(v41, 1, 1);
  sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100, v144);
  v73 = v132;
  v74 = v131;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

  (*(v130 + 8))(v70, v74);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&unk_1000EEFE0, &unk_1000ED0B0, &unk_1000BA840, v68);
  v75 = v134;
  Publisher<>.sink(receiveValue:)();

  (*(v133 + 8))(v73, v75);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  v76 = v135;
  Published.projectedValue.getter();
  swift_endAccess();
  v77 = [v161 mainRunLoop];
  v162 = v77;
  v157(v41, 1, 1, v72);
  sub_100005870(&qword_1000ED100, &qword_1000EC880, &qword_1000B60F0, &protocol conformance descriptor for Published<A>.Publisher);
  v78 = v138;
  v79 = v137;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

  (*(v136 + 8))(v76, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&unk_1000EC900, &qword_1000EC888, &qword_1000B60F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v80 = v140;
  Publisher<>.sink(receiveValue:)();

  (*(v139 + 8))(v78, v80);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v144 = objc_opt_self();
  v81 = [v144 sharedApplication];
  v82 = [v81 delegate];

  if (v82)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v83 = v153;
    Published.projectedValue.getter();
    swift_endAccess();
    swift_unknownObjectRelease();
    v84 = [v161 mainRunLoop];
    v162 = v84;
    v157(v41, 1, 1, v72);
    v85 = v118;
    v86 = v149;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

    v147(v83, v86);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = v150;
    Publisher<>.sink(receiveValue:)();

    v145(v85, v87);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if ((v143 & 1) == 0)
    {
LABEL_19:
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
      Published.projectedValue.getter();
      swift_endAccess();
      swift_beginAccess();
      sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
      Published.projectedValue.getter();
      swift_endAccess();
      swift_beginAccess();
      sub_10000368C(&unk_1000ED150, &unk_1000B6130);
      Published.projectedValue.getter();
      swift_endAccess();
      sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0, &protocol conformance descriptor for Published<A>.Publisher);
      v98 = v111;
      Publishers.CombineLatest3.init(_:_:_:)();
      v99 = [v161 mainRunLoop];
      v162 = v99;
      v157(v41, 1, 1, v152);
      sub_100005870(&qword_1000EC918, &qword_1000EC870, &qword_1000B60E0, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
      v100 = v115;
      v101 = v114;
      Publisher.receive<A>(on:options:)();
      sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

      (*(v113 + 8))(v98, v101);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100005870(&unk_1000EC920, &qword_1000EC878, &qword_1000B60E8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v102 = v117;
      Publisher<>.sink(receiveValue:)();

      (*(v116 + 8))(v100, v102);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return;
    }

    v88 = v157;
    v89 = v152;
    v90 = v161;
    v91 = [v144 sharedApplication];
    v92 = [v91 delegate];

    if (v92)
    {
      swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v93 = v153;
      Published.projectedValue.getter();
      swift_endAccess();
      swift_unknownObjectRelease();
      v94 = [v90 mainRunLoop];
      v162 = v94;
      v88(v41, 1, 1, v89);
      v95 = v105;
      v96 = v149;
      Publisher.receive<A>(on:options:)();
      sub_100007834(v41, &unk_1000EC7E0, &unk_1000B5100);

      v147(v93, v96);
      swift_allocObject();
      v59 = v142;
      swift_unknownObjectWeakInit();
      v97 = v150;
      Publisher<>.sink(receiveValue:)();

      v145(v95, v97);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10003CE38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF4A8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_10003CE84()
{
  swift_weakInit();
  v1 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_widgetCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v3 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v3 = &_swiftEmptySetSingleton;
    }

    *(v0 + v1) = v3;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
    *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_widgetCancelSet) = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet) = v2;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_placeholderTimer) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___backgroundArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingStyle) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_currentViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingView) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady) = 0;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying) = 0;
  v4 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_focusableButtonViews;
  sub_10003672C();
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_lastFocusableViews) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003D038(void *a1)
{
  v2 = v1;
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "iOS now playing update received: %{public}@", v8, 0xCu);
    sub_100007834(v9, &unk_1000EE230, &qword_1000BA550);
  }

  v11 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource;
  if (*(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) == 1)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v16 & 1) == 0))
      {
        sub_10003399C(0);
        return;
      }
    }
  }

  if (*(v2 + v11) & 1) != 0 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), v14 = 0, (v13))
  {
    v15 = [v5 song];
    if (v15)
    {

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_isNotPlaying) = v14;
  sub_1000340E8();
  *(v2 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_loadingState) = 0;
  sub_100031714();
  sub_100034BF4();
}

void sub_10003D2D4()
{
  if (*(v0 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) == 1)
  {

LABEL_4:

    sub_100035A7C(1);
    return;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    goto LABEL_4;
  }

  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BA0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "iOS artwork started loading, but car is now playing source.", v4, 2u);
  }
}

void sub_10003D430(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_nowPlayingSource) == 1)
  {

LABEL_4:
    v4 = objc_opt_self();
    v5 = [v4 sharedManager];
    v6 = [v5 snapshot];

    if (v6 && (v61 = [v6 artworkCatalog], v6, (v7 = v61) != 0))
    {
      if (!a1)
      {
        goto LABEL_27;
      }

      v8 = [a1 artworkCatalog];
      if (v8)
      {
        v9 = v8;
        if (([v61 isArtworkVisuallyIdenticalToCatalog:v8]& 1) != 0)
        {
          v10 = [a1 artworkImage];
          if (v10)
          {
            v11 = v10;
            v12 = v1;
            sub_100035A7C(0);
            if (qword_1000EACF0 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            sub_100006928(v13, qword_1000F3BA0);
            v14 = v11;
            v15 = Logger.logObject.getter();
            v16 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v63 = v18;
              *v17 = 136446210;
              v19 = sub_10007DDA8();
              v21 = sub_100043AF0(v19, v20, &v63);

              *(v17 + 4) = v21;
              _os_log_impl(&_mh_execute_header, v15, v16, "iOS artwork received: %{public}s", v17, 0xCu);
              sub_100006960(v18);
            }

            v22 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
            v23 = *(v1 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
            *(v12 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = v11;
            v60 = v14;

            v24 = sub_100030540();
            v25 = *(v12 + v22);
            [v24 setImage:v25];

            sub_100034BF4();
            goto LABEL_45;
          }

          if (qword_1000EACF0 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_100006928(v56, qword_1000F3BA0);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&_mh_execute_header, v57, v58, "Artwork response is for the current item, but is empty.", v59, 2u);
          }

          goto LABEL_55;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      goto LABEL_28;
    }

    v26 = [a1 artworkImage];
    if (!v26)
    {
      goto LABEL_28;
    }

    v62 = v26;
    v27 = [a1 artworkCatalog];
    if (v27)
    {
      v28 = v27;
      if (qword_1000EACF0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100006928(v29, qword_1000F3BA0);
      v30 = v28;
      v61 = v62;
      v60 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v60, v31))
      {

LABEL_45:
        v55 = v60;
        goto LABEL_57;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63 = v34;
      *v32 = 138412546;
      *(v32 + 4) = v30;
      *v33 = v28;
      *(v32 + 12) = 2082;
      v9 = v30;
      v35 = sub_10007DDA8();
      v37 = sub_100043AF0(v35, v36, &v63);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v60, v31, "Received an artwork response for a different item: %@, %{public}s.", v32, 0x16u);
      sub_100007834(v33, &unk_1000EE230, &qword_1000BA550);

      sub_100006960(v34);

      goto LABEL_55;
    }

    v7 = v62;
LABEL_27:

LABEL_28:
    v42 = [a1 artworkCatalog];
    if (!v42)
    {
      if (!a1)
      {
        goto LABEL_30;
      }

      v44 = [a1 snapshot];
      if (!v44)
      {
        goto LABEL_30;
      }

      v9 = v44;
      v45 = [v4 sharedManager];
      v61 = [v45 snapshot];

      if (v61)
      {
        if ([v9 isEqual:?])
        {
          v46 = v1;
          if (qword_1000EACF0 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100006928(v47, qword_1000F3BA0);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Received an empty image for the current snapshot. Setting placeholder.", v50, 2u);
          }

          sub_100035A7C(0);
          v51 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork;
          v52 = *(v46 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork);
          *(v46 + OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_artwork) = 0;

          v53 = sub_100030540();
          v54 = *(v46 + v51);
          [v53 setImage:v54];

          sub_100034BF4();
LABEL_55:

          goto LABEL_56;
        }

        v42 = v61;
      }

      else
      {
        v42 = v9;
      }
    }

LABEL_30:
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006928(v43, qword_1000F3BA0);
    v61 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v39))
    {
      goto LABEL_56;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Received an empty artwork response for a different item.";
    goto LABEL_34;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    goto LABEL_4;
  }

  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006928(v38, qword_1000F3BA0);
  v61 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v61, v39))
  {
    goto LABEL_56;
  }

  v40 = swift_slowAlloc();
  *v40 = 0;
  v41 = "iOS artwork update received, but car is now playing source.";
LABEL_34:
  _os_log_impl(&_mh_execute_header, v61, v39, v41, v40, 2u);

LABEL_56:
  v55 = v61;
LABEL_57:
}

uint64_t sub_10003DCE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003DD64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003DDC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DE78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DEB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DEF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003DF5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DFAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10003E008@<X0>(void *a1@<X8>)
{
  sub_10003E05C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10003E05C()
{
  result = qword_1000EC850;
  if (!qword_1000EC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC850);
  }

  return result;
}

uint64_t sub_10003E0C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E1F0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_10003E32C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t TerrestrialRadioStation.favorite.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003E4F8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10003E57C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t TerrestrialRadioStation.favorite.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*TerrestrialRadioStation.favorite.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10003E708;
}

void sub_10003E708(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t TerrestrialRadioStation.$favorite.setter(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TerrestrialRadioStation.$favorite.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10003EA34;
}

void sub_10003EA34(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t property wrapper backing initializer of TerrestrialRadioStation.matchedStation(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1000077CC(a1, &v9 - v6, &qword_1000EC938, &qword_1000B61F8);
  sub_1000077CC(v7, v5, &qword_1000EC938, &qword_1000B61F8);
  Published.init(initialValue:)();
  sub_10003ECA4(a1);
  return sub_10003ECA4(v7);
}

uint64_t sub_10003ECA4(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003ED0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003ED88(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_1000077CC(a1, &v10 - v7, &qword_1000EC938, &qword_1000B61F8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000077CC(v8, v6, &qword_1000EC938, &qword_1000B61F8);

  static Published.subscript.setter();
  return sub_10003ECA4(v8);
}

uint64_t TerrestrialRadioStation.matchedStation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003EF30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000ECD40, &qword_1000B66F8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10003F118(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10003F338(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

uint64_t sub_10003F3C0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10003F434(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  sub_10000368C(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10003F4CC(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_10000368C(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TerrestrialRadioStation.frequency.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TerrestrialRadioStation.sourceType.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003F5F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_10003F664(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t TerrestrialRadioStation.multicast.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  return *v1 | (v1[1] << 8);
}

void sub_10003F714(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id TerrestrialRadioStation.mediaItem.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

unint64_t sub_10003F7D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x636E657571657266;
    v6 = 0x614E656372756F73;
    if (a1 != 2)
    {
      v6 = 0x4E6E6F6974617473;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6769736C6C6163;
    v2 = 0x73616369746C756DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7954656372756F73;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10003F91C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002F020(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003F96C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10002F020(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10003F9B0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100045544(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003F9E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003F7D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10003FA28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100045544(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003FA68(uint64_t a1)
{
  v2 = sub_100044AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FAA4(uint64_t a1)
{
  v2 = sub_100044AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TerrestrialRadioStation.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TerrestrialRadioStation.init(identifier:)(a1, a2);
  return v4;
}

uint64_t TerrestrialRadioStation.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v3 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v38 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v36 - v7;
  v37 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v9 = __chkstk_darwin(v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  LOBYTE(v43) = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(v2 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v20 = type metadata accessor for Station();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_1000077CC(v13, v11, &qword_1000EC938, &qword_1000B61F8);
  Published.init(initialValue:)();
  sub_10003ECA4(v13);
  (*(v6 + 32))(v2 + v19, v8, v38);
  v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v43 = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  v22 = v40;
  v23 = *(v39 + 32);
  v23(v2 + v21, v5, v40);
  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage;
  v43 = 0;
  Published.init(initialValue:)();
  v23(v2 + v24, v5, v22);
  v25 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  *v25 = 0;
  v25[1] = 0;
  *(v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast) = 256;
  v26 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency) = 0;
  v27 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType) = 0;
  v30 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  v31 = v42;
  *v30 = v41;
  v30[1] = v31;
  sub_10004424C(_swiftEmptyArrayStorage);
  v32 = objc_allocWithZone(CAFMediaItem);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = [v32 initWithDictionary:isa];

  *(v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem) = v34;
  return v2;
}

uint64_t TerrestrialRadioStation.__allocating_init(station:source:multicast:logo:)(void *a1, void *a2, __int16 a3, void *a4)
{
  v8 = swift_allocObject();
  TerrestrialRadioStation.init(station:source:multicast:logo:)(a1, a2, a3 & 0x1FF, a4);
  return v8;
}

uint64_t TerrestrialRadioStation.init(station:source:multicast:logo:)(void *a1, void *a2, unsigned int a3, void *a4)
{
  v82 = a4;
  v83 = a2;
  v81 = a3;
  v77 = a1;
  v5 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v7 = &v75 - v6;
  v78 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v10 = &v75 - v9;
  v76 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v11 = __chkstk_darwin(v76);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  LOBYTE(v84) = 0;
  Published.init(initialValue:)();
  v21 = v4 + v20;
  v22 = v77;
  (*(v17 + 32))(v21, v19, v16);
  v23 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v24 = type metadata accessor for Station();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  sub_1000077CC(v15, v13, &qword_1000EC938, &qword_1000B61F8);
  Published.init(initialValue:)();
  sub_10003ECA4(v15);
  (*(v8 + 32))(v4 + v23, v10, v78);
  v25 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v84 = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  v26 = v80;
  v27 = *(v79 + 32);
  v27(v4 + v25, v7, v80);
  v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage;
  v84 = 0;
  Published.init(initialValue:)();
  v27(v4 + v28, v7, v26);
  v29 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  *(v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast) = 256;
  v31 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  *v31 = 0;
  v31[1] = 0;
  v32 = [v22 frequency];
  *(v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency) = v32;
  v33 = [v22 mediaItemName];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  *v38 = v35;
  v38[1] = v37;
  v39 = v83;
  v40 = [v83 identifier];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
  *v44 = v41;
  v44[1] = v43;
  v45 = [v22 identifier];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  *v50 = v47;
  v50[1] = v49;
  v51 = [v39 userVisibleLabel];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  v56 = (v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
  *v56 = v53;
  v56[1] = v55;
  v57 = [v39 mediaSourceSemanticType];
  *(v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType) = v57;
  v58 = [v22 mediaItemShortName];
  if (v58)
  {
    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  swift_beginAccess();
  *v29 = v60;
  v29[1] = v62;

  *(v4 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem) = v22;
  v63 = v22;
  v64 = [v63 mediaItemImageIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v81;
  v70 = (v81 >> 8) & 1;
  swift_beginAccess();
  *v31 = v66;
  v31[1] = v68;

  if (v69)
  {
    v71 = v70;
  }

  else
  {
    v71 = 1;
  }

  if (v71)
  {
    v69 = 0;
  }

  v72 = v82;
  swift_beginAccess();
  *v30 = v69;
  v30[1] = v71;
  if (v72)
  {
    v73 = v72;
    v85.value.super.isa = v72;
    TerrestrialRadioStation.setImage(_:)(v85);
  }

  return v4;
}

uint64_t TerrestrialRadioStation.formattedFrequency.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 8 || v2 == 2)
  {
    sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000B4760;
    v5 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency);
    swift_beginAccess();
    LODWORD(v6) = *v5;
    *(v4 + 56) = &type metadata for Double;
    *(v4 + 64) = &protocol witness table for Double;
    *(v4 + 32) = v6 / 1000.0;
  }

  else
  {
    v7 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
    swift_beginAccess();
    v8 = *(v0 + v7);
    sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_1000B5700;
    if (v8 > 0x63)
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      sub_10000368C(&qword_1000EC560, &unk_1000B5920);
      sub_100044388();
      v11 = String.init<A>(_:)();
      v13 = v12;
    }

    v10[7] = &type metadata for String;
    v14 = sub_10002BE6C();
    v10[4] = v11;
    v10[5] = v13;
    v15 = *(v0 + v7);
    v10[12] = &type metadata for UInt;
    v10[13] = &protocol witness table for UInt;
    v10[8] = v14;
    v10[9] = v15;
  }

  return String.init(format:_:)();
}

BOOL TerrestrialRadioStation.needsExtraFrequencyPadding.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 1;
    }

    if (v2 != 8)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

LABEL_7:
    v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
    swift_beginAccess();
    v5 = *(v0 + v4) >> 5 >= 0xC35u;
    return !v5;
  }

  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  v5 = *(v0 + v6) >= 0x3E8u;
  return !v5;
}

uint64_t TerrestrialRadioStation.displayFrequency.getter()
{
  v7 = TerrestrialRadioStation.formattedFrequency.getter();
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  String.append(_:)(v5);

  return v7;
}

BOOL TerrestrialRadioStation.hasMediaCategory.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v2 = [*(v0 + v1) mediaItemCategoryUserVisibleLabel];
  if (!v2)
  {
    return [*(v0 + v1) mediaItemCategory] != 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 || [*(v0 + v1) mediaItemCategory] != 0;
}

uint64_t TerrestrialRadioStation.groupingCategory.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v2 = [*(v0 + v1) mediaItemCategoryUserVisibleLabel];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  return sub_1000820E4([*(v0 + v1) mediaItemCategory]);
}

uint64_t TerrestrialRadioStation.primaryDisplayName.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_beginAccess();
  v3 = v2;
  v4 = CAFMediaItem.primaryDisplayName(in:)();

  return v4;
}

uint64_t TerrestrialRadioStation.debugDisplayName.getter()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for Station();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if ((v10 - 1) < 2 || v10 == 8 && (v11 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency, swift_beginAccess(), *(v1 + v11)))
  {
    v35._countAndFlagsBits = TerrestrialRadioStation.formattedFrequency.getter();
    v35._object = v12;
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    String.append(_:)(v35);
  }

  v18 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18;
    if (*v18)
    {
      v34._countAndFlagsBits = 4474912;
      v34._object = 0xE300000000000000;
      LOBYTE(v33._countAndFlagsBits) = v19;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      String.append(_:)(v34);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10003ECA4(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v21 = Station.name.getter();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v34._countAndFlagsBits = 32;
      v34._object = 0xE100000000000000;
      v25._countAndFlagsBits = Station.name.getter();
      String.append(_:)(v25);

      String.append(_:)(v34);

      (*(v6 + 8))(v8, v5);
      return v36;
    }

    (*(v6 + 8))(v8, v5);
  }

  v26 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v33._countAndFlagsBits = 32;
    v33._object = 0xE100000000000000;

    v30._countAndFlagsBits = v28;
    v30._object = v27;
    String.append(_:)(v30);

    String.append(_:)(v33);
  }

  return v36;
}

uint64_t TerrestrialRadioStation.favoritesDisplayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    v2 = TerrestrialRadioStation.formattedFrequency.getter();
    v6 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
    swift_beginAccess();
    v7 = v6[1];
    if (v7)
    {
      v8 = *v6;
      v9 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v9 = *v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {

        v10._countAndFlagsBits = v8;
        v10._object = v7;
        String.append(_:)(v10);

        v11._countAndFlagsBits = 32;
        v11._object = 0xE100000000000000;
        String.append(_:)(v11);
      }
    }
  }

  return v2;
}

uint64_t sub_1000411B0(uint64_t (*a1)(void))
{
  v3 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1();

  return v5;
}

unint64_t TerrestrialRadioStation.filteringCategory.getter()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (*(v0 + v1) != 3)
  {
    return 4;
  }

  v2 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v3 = [*(v0 + v2) mediaItemGroup];
  if (!v3)
  {
    return 4;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 4;
  }

  String.lowercased()();

  sub_100020F58();
  v9 = StringProtocol.capitalized.getter();
  v11 = v10;

  v13._countAndFlagsBits = v9;
  v13._object = v11;
  result = _s5Media22RadioFilteringStrategyO8rawValueACSgSS_tcfC_0(v13);
  if (result == 5)
  {
    return 4;
  }

  return result;
}

uint64_t TerrestrialRadioStation.mergeWithMediaItem(_:)(void *a1)
{
  v3 = [a1 frequency];
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v5 = [a1 mediaItemName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  swift_beginAccess();
  *v10 = v7;
  v10[1] = v9;

  v11 = [a1 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  *v16 = v13;
  v16[1] = v15;

  v17 = [a1 mediaItemShortName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  swift_beginAccess();
  *v22 = v19;
  v22[1] = v21;

  v23 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v24 = *(v1 + v23);
  *(v1 + v23) = a1;
  v25 = a1;

  v26 = [v25 mediaItemImageIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  swift_beginAccess();
  *v31 = v28;
  v31[1] = v30;
}

Swift::Void __swiftcall TerrestrialRadioStation.setImage(_:)(UIImage_optional a1)
{
  isa = a1.value.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = isa;

  static Published.subscript.setter();
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!isa || ([(objc_class *)isa contentScaleFactor], v7 = v6, isa, v7 < 2.0))
    {
      v7 = 2.0;
    }

    v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v9 = 56.0;
    if (*(v1 + v8) != 3)
    {
      v9 = 36.0;
    }

    if (isa)
    {
      v10 = v7 * v9;
      v11 = v7 * 36.0;
      v12 = v3;
      [(objc_class *)v12 size];
      if (v11 < v13 || ([(objc_class *)v12 size], v10 < v14))
      {
        v15 = [(objc_class *)v12 imageByPreparingThumbnailOfSize:v10, v11];
        swift_getKeyPath();
        swift_getKeyPath();

        v16 = v15;
        static Published.subscript.setter();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TerrestrialRadioStation.setFavorite(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22[0] == v4)
  {
    return;
  }

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  v5 = qword_1000F3CF0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*v22)
  {
    v7 = *v22;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v24 = v7;
  if (!a1)
  {

    v8 = sub_100044590(&v24, v2);

    if (v24 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9 >= v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v8)
      {
LABEL_13:
        sub_1000449F4(v8, v9);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  *v22 = v2;
  __chkstk_darwin(v6);
  v21[2] = v22;
  if ((sub_10003E1F0(sub_100044ACC, v21, v7) & 1) == 0)
  {
    if (!(v7 >> 62))
    {
LABEL_10:

      sub_100045810(0, 0, v2, sub_1000A91EC, sub_100044444);

      goto LABEL_14;
    }

LABEL_23:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

LABEL_14:
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3B70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 67109634;
    *(v13 + 4) = a1;
    *(v13 + 8) = 2080;
    v15 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_100043AF0(v17, v16, &v23);

    *(v13 + 10) = v18;
    *(v13 + 18) = 1024;
    v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
    swift_beginAccess();
    *(v13 + 20) = *(v2 + v19);

    _os_log_impl(&_mh_execute_header, v11, v12, "Setting favorite %{BOOL}d for station %s %u", v13, 0x18u);
    sub_100006960(v14);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = a1;

  static Published.subscript.setter();
  v20 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v20;
  v5;
  static Published.subscript.setter();
  sub_100091510();
}