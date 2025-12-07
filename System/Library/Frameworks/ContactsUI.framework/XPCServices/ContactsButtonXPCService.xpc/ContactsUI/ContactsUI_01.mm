unint64_t sub_100017EE0(uint64_t a1, uint64_t a2)
{
  sub_10001D6FC();
  sub_10001D35C();
  v4 = sub_10001D70C();

  return sub_10001800C(a1, a2, v4);
}

unint64_t sub_100017F58(uint64_t a1)
{
  sub_10001D6FC();
  type metadata accessor for CFString(0);
  sub_100010FD4(&qword_10002E518, type metadata accessor for CFString, &unk_10001E4C8);
  sub_10001CDDC();
  v2 = sub_10001D70C();

  return sub_1000180C4(a1, v2);
}

unint64_t sub_10001800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001D6BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000180C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100010FD4(&qword_10002E518, type metadata accessor for CFString, &unk_10001E4C8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001CDCC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1000181D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000181F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000181F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&unk_10002E468, &unk_10001ED18);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000182FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100018DD4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_100018368(v4);
  *a1 = v2;
}

void sub_100018368(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10001D69C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v12 = v3;
      if (v2 <= 1)
      {
        v13 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v13 = sub_10001D41C();
        *v13->slotID = v2 / 2;
      }

      v22[0] = &v13->auditToken[12];
      v22[1] = (v2 / 2);
      v14 = v13;
      sub_100018530(v22, v23, a1, v12, v4, v5, v6, v7, v8, v9, v10, v11);
      *v14->slotID = 0;
      v14, v15, v16, v17, v18, v24, v19, v20, v21;
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
    sub_100018460(0, v2, 1, a1);
  }
}

uint64_t sub_100018460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_10001D6BC(), (result & 1) == 0))
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

void sub_100018530(char **a1, const char *a2, uint64_t *a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, __n128 a9, double a10, double a11, double a12)
{
  v103 = a3;
  v13 = v12;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_106:
    v17 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v16 = sub_100018DC0(v16, a9.n128_f64[0], a10, a11, a12, a2, a3, a4, a5, a6, a7, a8);
    }

    slotID = v16->slotID;
    v93 = *v16->slotID;
    if (v93 >= 2)
    {
      while (*v103)
      {
        v94 = (v16 + 16 * v93);
        v95 = *v94;
        v96 = &slotID[2 * v93];
        v97 = v96[1];
        sub_100018B0C((*v103 + 16 * *v94), (*v103 + 16 * *v96), (*v103 + 16 * v97), v17);
        if (v13)
        {
          goto LABEL_115;
        }

        if (v97 < v95)
        {
          goto LABEL_130;
        }

        if (v93 - 2 >= *slotID)
        {
          goto LABEL_131;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *slotID - v93;
        if (*slotID < v93)
        {
          goto LABEL_132;
        }

        v93 = *slotID - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *slotID = v93;
        if (v93 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:
    v16, a2, a3, a4, a5, *a9.n128_u64, a6, a7, a8;
    return;
  }

  v101 = a4;
  v15 = 0;
  v16 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v18 = (*v103 + 16 * v15);
      a2 = v18[1];
      v19 = *v103 + 16 * v17;
      a3 = *v19;
      a4 = *(v19 + 8);
      if (*v18 == *v19 && a2 == a4)
      {
        v21 = 0;
      }

      else
      {
        v21 = sub_10001D6BC();
      }

      v15 = v17 + 2;
      if (v17 + 2 < v14)
      {
        v22 = v19 + 24;
        v23 = v19 + 24;
        do
        {
          a4 = *v22;
          v24 = *(v23 + 16);
          v23 += 16;
          a2 = v24;
          a3 = *(v22 - 8);
          if (*(v22 + 8) == a3 && a2 == a4)
          {
            if (v21)
            {
              goto LABEL_24;
            }
          }

          else if ((v21 ^ sub_10001D6BC()))
          {
            goto LABEL_23;
          }

          ++v15;
          v22 = v23;
        }

        while (v14 != v15);
        v15 = v14;
      }

LABEL_23:
      if (v21)
      {
LABEL_24:
        if (v15 < v17)
        {
          goto LABEL_135;
        }

        if (v17 < v15)
        {
          v26 = 0;
          v27 = 16 * v15;
          v28 = 16 * v17;
          v29 = v17;
          do
          {
            if (v29 != v15 + v26 - 1)
            {
              v34 = *v103;
              if (!*v103)
              {
                goto LABEL_141;
              }

              v30 = (v34 + v28);
              v31 = v34 + v27;
              v32 = v30->n128_u64[0];
              v33 = v30->n128_i64[1];
              a9 = *(v31 - 16);
              *v30 = a9;
              *(v31 - 16) = v32;
              *(v31 - 8) = v33;
            }

            ++v29;
            --v26;
            v27 -= 16;
            v28 += 16;
          }

          while (v29 < v15 + v26);
        }
      }
    }

    v35 = v103[1];
    if (v15 < v35)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_134;
      }

      if (v15 - v17 < v101)
      {
        break;
      }
    }

LABEL_55:
    if (v15 < v17)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1000177AC(0, *v16->slotID + 1, 1, v16, a5, a6, a7, a8, a9.n128_f64[0], a10, a11, a12);
    }

    v47 = *v16->slotID;
    v46 = *&v16->auditToken[4];
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v16 = sub_1000177AC((v46 > 1), v47 + 1, 1, v16, a5, a6, a7, a8, a9.n128_f64[0], a10, a11, a12);
    }

    *v16->slotID = v48;
    v49 = v16 + 16 * v47;
    *(v49 + 4) = v17;
    *(v49 + 5) = v15;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *&v16->auditToken[12];
          v53 = *&v16->auditToken[20];
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_75:
          if (v55)
          {
            goto LABEL_121;
          }

          v68 = &v16->super.isa + 2 * v48;
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_124;
          }

          v74 = &v16->auditToken[16 * v51 + 12];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_128;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v78 = &v16->super.isa + 2 * v48;
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_89:
        if (v73)
        {
          goto LABEL_123;
        }

        v81 = v16 + 16 * v51;
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_126;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_96:
        v17 = v51 - 1;
        if (v51 - 1 >= v48)
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

        if (!*v103)
        {
          goto LABEL_140;
        }

        v89 = *&v16->auditToken[16 * v17 + 12];
        v90 = *&v16->auditToken[16 * v51 + 20];
        sub_100018B0C((*v103 + 16 * v89), (*v103 + 16 * *&v16->auditToken[16 * v51 + 12]), (*v103 + 16 * v90), v50);
        if (v13)
        {
          goto LABEL_115;
        }

        if (v90 < v89)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100018DC0(v16, a9.n128_f64[0], a10, a11, a12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v17 >= *v16->slotID)
        {
          goto LABEL_118;
        }

        v91 = v16 + 16 * v17;
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        sub_100018D34(v51);
        v48 = *v16->slotID;
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16->auditToken[16 * v48 + 12];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_119;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_120;
      }

      v63 = &v16->super.isa + 2 * v48;
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_122;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_125;
      }

      if (v67 >= v59)
      {
        v85 = &v16->auditToken[16 * v51 + 12];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v14 = v103[1];
    if (v15 >= v14)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v17, v101))
  {
    goto LABEL_136;
  }

  v100 = v13;
  if (v17 + v101 >= v35)
  {
    v13 = v103[1];
  }

  else
  {
    v13 = (v17 + v101);
  }

  if (v13 < v17)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v15 == v13)
  {
LABEL_54:
    v13 = v100;
    goto LABEL_55;
  }

  v36 = *v103;
  v37 = *v103 + 16 * v15;
  v99 = v17;
  v38 = (v17 - v15);
LABEL_43:
  v39 = v36 + 16 * v15;
  v40 = *v39;
  a2 = *(v39 + 8);
  v41 = v38;
  v42 = v37;
  while (1)
  {
    a3 = *(v42 - 16);
    a4 = *(v42 - 8);
    v43 = (v42 - 16);
    v44 = v40 == a3 && a2 == a4;
    if (v44 || (sub_10001D6BC() & 1) == 0)
    {
LABEL_42:
      ++v15;
      v37 += 16;
      --v38;
      if (v15 != v13)
      {
        goto LABEL_43;
      }

      v15 = v13;
      v17 = v99;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v40 = *v42;
    a2 = *(v42 + 8);
    a9 = *v43;
    *v42 = *v43;
    *(v42 - 8) = a2;
    *(v42 - 16) = v40;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
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
}

uint64_t sub_100018B0C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_10001D6BC() & 1) != 0)
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
      if (!v21 && (sub_10001D6BC() & 1) != 0)
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

unint64_t sub_100018D34(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100018DC0(v3, v12, v13, v14, v15, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v16 = *(v3 + 16);
  if (v16 <= a1)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 - 1;
    v18 = v3 + 16 * a1;
    v19 = *(v18 + 32);
    memmove((v18 + 32), (v18 + 48), 16 * (v16 - 1 - a1));
    *(v3 + 16) = v17;
    *v1 = v3;
    return v19;
  }

  return result;
}

unint64_t sub_100018DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&qword_10002E508, &qword_10001EDA8);
    v3 = sub_10001D67C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010E60(v4, &v11, &qword_10002E510, &qword_10001EBB0);
      v5 = v11;
      result = sub_100017F58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000199A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100018F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&unk_10002E490, &unk_10001ED40);
    v3 = sub_10001D67C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100017EE0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100019024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EFC(&qword_10002E488, &qword_10001ED38);
    v3 = sub_10001D67C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010E60(v4, &v13, &qword_10002E4A8, &qword_10001ED80);
      v5 = v13;
      v6 = v14;
      result = sub_100017EE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000199A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

double sub_100019154(void *a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v48 = sub_10001D25C();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001D27C();
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = *&a3[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag];
  if (v14 && (v15 = *&a3[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle]) != 0)
  {
    v43 = v12;
    v44 = v10;
    v45 = v8;
    _Block_copy(a4);
    v16 = a2;
    v42 = v14;
    v41 = v15;
    v17 = a1;
    v18 = sub_10001CDFC();
    v19 = sub_10001D50C();
    v46 = v16;

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *(v20 + 12) = 2112;
      v22 = v46;
      *(v20 + 14) = v46;
      *v21 = a1;
      v21[1] = a2;
      v23 = v17;
      v24 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "#ContactsButton provider proposed width: %@ height: %@", v20, 0x16u);
      sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
      swift_arrayDestroy();
    }

    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    sub_1000072F8(0, &qword_10002E4E0, OS_dispatch_queue_ptr);
    v40 = sub_10001D53C();
    v26 = swift_allocObject();
    v28 = v41;
    v27 = v42;
    v26[2] = v42;
    v26[3] = v28;
    v26[4] = a1;
    v26[5] = a3;
    v26[6] = a2;
    v26[7] = sub_10001C900;
    v26[8] = v13;
    v26[9] = v25;
    aBlock[4] = sub_10001C980;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000117B8;
    aBlock[3] = &unk_1000298F8;
    v29 = _Block_copy(aBlock);
    v42 = v27;
    v30 = v28;
    v31 = v17;
    v32 = v46;
    v33 = a3;

    v34 = v25;

    v35 = v43;
    sub_10001D26C();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100010FD4(&unk_10002E030, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002EFC(&unk_10002E4F0, &qword_10001ED90);
    sub_10001C994();
    v37 = v47;
    v36 = v48;
    sub_10001D59C();
    v38 = v40;
    sub_10001D54C();
    _Block_release(v29);

    (*(v45 + 8))(v37, v36);
    (*(v49 + 8))(v35, v44);
    sub_10001D52C();
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4, 0, 0);
  }

  return result;
}

char *sub_100019660(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_10001CDAC();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10001D2CC();
  __chkstk_darwin(v11 - 8);
  sub_10001D2BC();
  sub_10001CD6C();
  v12 = sub_10001D32C();
  v14 = v13;
  sub_10001D2BC();
  sub_10001CD6C();
  v15 = sub_10001D32C();
  v17 = v16;
  sub_10001D2BC();
  sub_10001CD6C();
  v18 = sub_10001D32C();
  v20 = sub_10000ED30(a1, v18, v19, a2, a3, a4, a5);
  v21 = &v20[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
  v22 = *&v20[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
  *v21 = v12;
  v21[1] = v14;
  v23 = v20;
  v22, v24, v25, v26, v27, v43, v28, v29, v30;
  v31 = &v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
  v32 = *&v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
  *v31 = v15;
  v31[1] = v17;
  v32, v33, v34, v35, v36, v44, v37, v38, v39;
  v40 = *&v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
  v41 = *&v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
  *&v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
  sub_10000F908(v40, v41);
  v23[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 0;

  return v23;
}

uint64_t sub_1000198E8()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100004798(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019990(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010F80(result, a2);
  }

  return result;
}

_OWORD *sub_1000199A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1000199B4(void *a1, uint64_t a2, uint64_t a3, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a16)
{
  v269 = a6;
  v270 = a5;
  v262 = a2;
  v267 = a1;
  v22 = a16;
  v23 = sub_10001CC9C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000072F8(0, &qword_10002E4B0, NSKeyedUnarchiver_ptr);
  sub_100002EFC(&qword_10002E4B8, &qword_10001ED88);
  v27 = swift_allocObject();
  *(v27 + 1) = xmmword_10001E580;
  v271 = sub_10001CC7C();
  *(v27 + 4) = v271;
  *(v27 + 5) = sub_1000072F8(0, &qword_10002E4C0, UIColor_ptr);
  *(v27 + 6) = sub_1000072F8(0, &qword_10002E4C8, UIFont_ptr);
  *(v27 + 7) = sub_1000072F8(0, &qword_10002E4D0, NSString_ptr);
  *(v27 + 8) = sub_1000072F8(0, &qword_10002E4D8, NSSet_ptr);
  sub_10001D51C();
  v265 = v26;
  v27, v28, v29, v30, v31, v278, v32, v33, v34;
  if (!v276)
  {
    goto LABEL_48;
  }

  v273 = a3;
  sub_1000199A4(&v275, v277);
  swift_dynamicCast();
  v35 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  v36 = v274[0];

  v261 = v35;
  v37 = sub_10001CDFC();
  v38 = sub_10001D50C();
  a4, v39, v40, v41, v42, v279, v43, v44, v45;

  v46 = os_log_type_enabled(v37, v38);
  v266 = a16;
  v268 = v36;
  v264 = v23;
  v263 = v24;
  if (v46)
  {
    v27 = swift_slowAlloc();
    *&v277[0] = swift_slowAlloc();
    *v27 = 136315394;
    v47 = [v36 debugDescription];
    v48 = sub_10001D30C();
    v50 = v49;

    v51 = sub_100017934(v48, v50, v277);
    v50, v52, v53, v54, v55, v280, v56, v57, v58;
    *(v27 + 4) = v51;
    *(v27 + 6) = 2080;
    *(v27 + 14) = sub_100017934(v273, a4, v277);
    _os_log_impl(&_mh_execute_header, v37, v38, "#ContactsButton received traits %s with query %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  v272 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
  if (*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8))
  {
LABEL_14:
    v123 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString);
    v124 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString + 8);
    if (v124 && (*v123 == v273 && v124 == a4 || (sub_10001D6BC() & 1) != 0) && (v125 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails)) != 0 && (v126 = , v127 = sub_1000172F8(v126, v270), v125, v128, v129, v130, v131, v285, v132, v133, v134, (v127 & 1) != 0) && (v135 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones)) != 0 && (v136 = , v137 = sub_1000172F8(v136, v269), v135, v138, v139, v140, v141, v286, v142, v143, v144, (v137 & 1) != 0) && (v145 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits)) != 0 && (v146 = v268, v147 = v145, v148 = sub_10001D57C(), v146, v147, (v148 & 1) != 0) && (*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame + 32) & 1) == 0 && (v296.origin.x = a9, v296.origin.y = a10, v296.size.width = a11, v296.size.height = a12, CGRectEqualToRect(*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame), v296)))
    {
      v22 = sub_10001CDFC();
      v149 = sub_10001D4CC();
      if (os_log_type_enabled(&v22->super, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, &v22->super, v149, "#ContactsButton nothing changed, returning same tag", v150, 2u);
      }

      v27 = v268;
      v151 = (&OBJC_PROTOCOL___UISDrawing + 56);
      p_inst_props = (&OBJC_PROTOCOL___UISDrawing + 56);
    }

    else
    {
      v153 = v123[1];
      v154 = v273;
      *v123 = v273;
      v123[1] = a4;
      v153, v124, v59, v60, v61, *&v65, v62, v63, v64;
      v155 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails);
      v156 = a4;
      v157 = v270;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails) = v270;

      v155, v158, v159, v160, v161, v287, v162, v163, v164;
      v165 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones);
      v166 = v269;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones) = v269;

      v165, v167, v168, v169, v170, v288, v171, v172, v173;
      v174 = v166;
      v22 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits);
      v175 = v268;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits) = v268;
      v176 = v175;
      v177 = v175;

      v178 = a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame;
      *v178 = a9;
      *(v178 + 8) = a10;
      *(v178 + 16) = a11;
      *(v178 + 24) = a12;
      *(v178 + 32) = 0;
      v27 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag;
      v179 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag) = 0;

      v180 = v272[1];
      if (!v180)
      {
LABEL_49:
        _Block_release(v266);
        __break(1u);
        goto LABEL_50;
      }

      v181 = *v272;

      v182 = sub_100006D28(v154, v156, v181, v180, v157, v174);
      v180, v183, v184, v185, v186, v289, v187, v188, v189;
      p_inst_props = &OBJC_PROTOCOL___UISDrawing.inst_props;
      v190 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches) = v182;

      v190, v191, v192, v193, v194, v290, v195, v196, v197;
      sub_100015CC4(v182, v177, v154, v156, a9, a10, a11, a12);
      v199 = v198;
      v182, v200, v201, v202, v203, v291, v204, v205, v206;
      v207 = *&v27[a15];
      *&v27[a15] = v199;
      v208 = v199;

      v209 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag);
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag) = v199;

      v22 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle);
      v210 = v267;
      *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle) = v267;
      v211 = v210;
      v151 = &OBJC_PROTOCOL___UISDrawing.inst_props;
      v27 = v176;
    }

    if (!*(&v151[183][1] + a15))
    {
      sub_100002EFC(&qword_10002E478, &qword_10001ED28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10001E6C0;
      *(inited + 32) = sub_10001CBEC();
      *(inited + 40) = v219;
      *(inited + 48) = 0xD00000000000002FLL;
      *(inited + 56) = 0x8000000100021CD0;
      v220 = sub_100018F10(inited);
      swift_setDeallocating();
      sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
      sub_10001CBDC();
      v222 = v221;
      v223 = v263;
      v224 = v265;
      v225 = v264;
      (*(v263 + 104))(v265, enum case for ContactButtonServiceErrorType.missingPurposeString(_:), v264);
      v226 = sub_10001CC8C();
      (*(v223 + 8))(v224, v225);
      v227 = sub_10001259C(v220);
      v220, v228, v229, v230, v231, v292, v232, v233, v234;
      v235 = objc_allocWithZone(NSError);
      v236 = sub_10001D2DC();
      v222, v237, v238, v239, v240, v293, v241, v242, v243;
      isa = sub_10001D28C().super.isa;
      v227, v245, v246, v247, v248, v294, v249, v250, v251;
      v252 = [v235 initWithDomain:v236 code:v226 userInfo:isa];

      (*(v266 + 2))(v266, 0, v252);
      v213 = v27;
      v27 = v252;
LABEL_45:

      return;
    }

    if (!*(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag) || (v212 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine)) == 0)
    {
      sub_10001CDBC();
      v213 = 0;
LABEL_39:
      v216 = *(p_inst_props[187] + a15);
      if (v216)
      {
        if (v216 >> 62)
        {
          v217 = sub_10001D64C();
        }

        else
        {
          v217 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v217 = 0;
      }

      v253 = sub_10001D36C();
      sub_100008A54(v217, v253);
      (*(v266 + 2))(v266, v213, 0);
      goto LABEL_45;
    }

    if ((v262 & 0x8000000000000000) == 0)
    {
      v213 = [v212 remoteContentForLayerContextWithId:? style:? tag:?];
      v214 = sub_10001CDBC();
      if (v213 && [v213 respondsToSelector:v214])
      {
        v215 = [v213 slotID];
        *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID) = v215;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_48:
    _Block_release(v22);
    __break(1u);
    goto LABEL_49;
  }

  v22 = sub_10001D34C();
  sandbox_extension_consume();

  v69 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (v69)
  {
    v70 = [v69 clientBundleIdentifier];
    if (v70)
    {
      v71 = v70;
      v27 = sub_10001D30C();
      v73 = v72;
    }

    else
    {
      v27 = 0;
      v73 = 0;
    }

    v74 = v272;
    v22 = v272[1];
    *v272 = v27;
    v74[1] = v73;

    v22, v75, v76, v77, v78, v281, v79, v80, v81;
    if (!v73)
    {
      goto LABEL_51;
    }

    v82 = sub_100003670(v27, v73, 0xD00000000000001ALL, 0x8000000100021E60);
    v84 = v83;
    v73, v83, v85, v86, v87, v282, v88, v89, v90;
    if (v84)
    {
      v102 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString);
      v103 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8);
      *v102 = v82;
      v102[1] = v84;
      v103, v91, v92, v93, v94, *&v98, v95, v96, v97;
    }

    [objc_opt_self() setDefaultBackgroundGPUPriority:2];
    v27 = v272[1];
    if (!v27)
    {
      goto LABEL_52;
    }

    v104 = *v272;

    v105 = sub_100016CD4(v104, v27);
    v107 = v106;
    v27, v106, v108, v109, v110, v283, v111, v112, v113;
    v114 = (a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName);
    v115 = *(a15 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName + 8);
    *v114 = v105;
    v114[1] = v107;
    v115, v116, v117, v118, v119, v284, v120, v121, v122;
    sandbox_extension_release();
    goto LABEL_14;
  }

LABEL_50:
  _Block_release(v266);
  __break(1u);
LABEL_51:
  _Block_release(v266);
  __break(1u);
LABEL_52:
  _Block_release(v266);
  __break(1u);
  _Block_release(v22);
  v27, v254, v255, v256, v257, v295, v258, v259, v260;
  swift_unexpectedError();
  __break(1u);
}

void sub_10001A5BC()
{
  v1 = sub_10001CDAC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10001D2CC();
  __chkstk_darwin(v2 - 8);
  v313 = sub_10001D2DC();
  v312 = sub_10001D2DC();
  sub_10001D2BC();
  sub_10001CD6C();
  sub_10001D32C();
  v4 = v3;
  sub_100002EFC(&qword_10002E088, &qword_10001E910);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001E6C0;
  v6 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8];
  if (!v6)
  {
    __break(1u);
    goto LABEL_41;
  }

  v7 = v5;
  v310 = &v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];
  v8 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];

  v9 = sub_100016CD4(v8, v6);
  v11 = v10;
  v6, v10, v12, v13, v14, v322, v15, v16, v17;
  v7[7] = &type metadata for String;
  v7[8] = sub_10000FB3C();
  v7[4] = v9;
  v7[5] = v11;
  v18 = sub_10001D31C();
  v20 = v19;
  v4, v19, v21, v22, v23, v323, v24, v25, v26;
  sub_10001D2BC();
  sub_10001CD6C();
  v314 = sub_10001D32C();
  v316 = v27;
  sub_10001D2BC();
  sub_10001CD6C();
  v29 = sub_10001D32C();
  v315 = v0;
  v30 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8];
  if (!v30)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = v28;
  v318 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString];
  v319 = v30;
  v311 = v30;
  swift_bridgeObjectRetain_n();
  v320._countAndFlagsBits = 2570;
  v320._object = 0xE200000000000000;
  sub_10001D38C(v320);
  sub_10001D2BC();
  sub_10001CD6C();
  v321._countAndFlagsBits = sub_10001D32C();
  object = v321._object;
  sub_10001D38C(v321);
  object, v33, v34, v35, v36, v324, v37, v38, v39;
  v41 = v318;
  v40 = v319;
  sub_100002EFC(&qword_10002E4A0, &qword_10001ED78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001EC20;
  if (!kCFUserNotificationAlertHeaderKey)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(inited + 32) = sub_10001D30C();
  *(inited + 40) = v43;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(inited + 80) = sub_10001D30C();
  *(inited + 88) = v44;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v41;
  *(inited + 104) = v40;
  v45 = v315;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  *(inited + 128) = sub_10001D30C();
  *(inited + 136) = v46;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v314;
  *(inited + 152) = v316;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_45;
  }

  *(inited + 176) = sub_10001D30C();
  *(inited + 184) = v47;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v29;
  *(inited + 200) = v31;

  v48 = sub_100019024(inited);
  swift_setDeallocating();
  sub_100002EFC(&qword_10002E4A8, &qword_10001ED80);
  swift_arrayDestroy();
  v49.super.isa = sub_10001D28C().super.isa;
  v48, v50, v51, v52, v53, v325, v54, v55, v56;
  v317 = 0;
  v57 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &v317, v49.super.isa);
  if (!v57)
  {
    v20, v58, v59, v60, v61, *&v65, v62, v63, v64;
    v40, v131, v132, v133, v134, v332, v135, v136, v137;
    v316, v138, v139, v140, v141, v333, v142, v143, v144;
    v31, v145, v146, v147, v148, v334, v149, v150, v151;
    v311, v152, v153, v154, v155, v335, v156, v157, v158;
    v159 = sub_10001CDFC();
    v160 = sub_10001D4FC();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 67109120;
      swift_beginAccess();
      *(v161 + 4) = v317;
      _os_log_impl(&_mh_execute_header, v159, v160, "#ContactsButton failed to create a CFUN, %d", v161, 8u);
    }

    v162 = v313;
    goto LABEL_37;
  }

  v69 = v57;
  isa = v49.super.isa;
  v318 = 0;
  CFUserNotificationReceiveResponse(v57, 0.0, &v318);
  v70 = v318 & 3;
  v71 = sub_10001CDFC();
  v72 = sub_10001D50C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v71, v72, "#ContactsButton response was %lu", v73, 0xCu);
    v45 = v315;
  }

  if (v70 == 1)
  {
    v163 = *&v45[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    if (v163)
    {
      v164 = *(v310 + 1);
      if (!v164)
      {
LABEL_48:
        __break(1u);
        return;
      }

      v165 = v163;

      v20, v166, v167, v168, v169, v336, v170, v171, v172;
      v40, v173, v174, v175, v176, v337, v177, v178, v179;
      v316, v180, v181, v182, v183, v338, v184, v185, v186;
      v31, v187, v188, v189, v190, v339, v191, v192, v193;
      v311, v194, v195, v196, v197, v340, v198, v199, v200;
      v201 = sub_10001D2DC();
      v164, v202, v203, v204, v205, v341, v206, v207, v208;
      [v165 setAuthorizationStatus:1 forBundleIdentifier:v201 noKillApp:1];

      v45 = v315;
    }

    else
    {
      v20, v74, v75, v76, v77, *&v81, v78, v79, v80;
      v40, v275, v276, v277, v278, v350, v279, v280, v281;
      v316, v282, v283, v284, v285, v351, v286, v287, v288;
      v31, v289, v290, v291, v292, v352, v293, v294, v295;
      v311, v296, v297, v298, v299, v353, v300, v301, v302;
    }

    v237 = sub_10001CDFC();
    v238 = sub_10001D50C();
    if (os_log_type_enabled(v237, v238))
    {
      v246 = swift_slowAlloc();
      *v246 = 134217984;
      *(v246 + 4) = 1;
      v241 = "#ContactsButton user declined limited access, updated access to be %ld";
      goto LABEL_32;
    }
  }

  else
  {
    if (v70)
    {
      v20, v74, v75, v76, v77, *&v81, v78, v79, v80;
      v40, v209, v210, v211, v212, v342, v213, v214, v215;
      v316, v216, v217, v218, v219, v343, v220, v221, v222;
      v31, v223, v224, v225, v226, v344, v227, v228, v229;
      v311, v230, v231, v232, v233, v345, v234, v235, v236;
      v237 = sub_10001CDFC();
      v238 = sub_10001D50C();
      v239 = os_log_type_enabled(v237, v238);
      if (v70 == 3)
      {
        if (!v239)
        {
          goto LABEL_34;
        }

        v240 = swift_slowAlloc();
        *v240 = 0;
        v241 = "#ContactsButton user dismissed the onboarding prompt";
        v242 = v238;
        v243 = v237;
        v244 = v240;
        v245 = 2;
        goto LABEL_33;
      }

      if (!v239)
      {
        goto LABEL_34;
      }

      v246 = swift_slowAlloc();
      *v246 = 134217984;
      *(v246 + 4) = v70;
      v241 = "#ContactsButton unhandled onboarding response: %lu";
LABEL_32:
      v242 = v238;
      v243 = v237;
      v244 = v246;
      v245 = 12;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v243, v242, v241, v244, v245);

      goto LABEL_34;
    }

    v85 = *&v45[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    if (v85)
    {
      v86 = *(v310 + 1);
      if (!v86)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v87 = v85;

      v20, v88, v89, v90, v91, v326, v92, v93, v94;
      v40, v95, v96, v97, v98, v327, v99, v100, v101;
      v316, v102, v103, v104, v105, v328, v106, v107, v108;
      v31, v109, v110, v111, v112, v329, v113, v114, v115;
      v311, v116, v117, v118, v119, v330, v120, v121, v122;
      v123 = sub_10001D2DC();
      v86, v124, v125, v126, v127, v331, v128, v129, v130;
      [v87 setAuthorizationStatus:2 forBundleIdentifier:v123 noKillApp:1];

      v45 = v315;
    }

    else
    {
      v20, v74, v75, v76, v77, *&v81, v78, v79, v80;
      v40, v247, v248, v249, v250, v346, v251, v252, v253;
      v316, v254, v255, v256, v257, v347, v258, v259, v260;
      v31, v261, v262, v263, v264, v348, v265, v266, v267;
      v311, v268, v269, v270, v271, v349, v272, v273, v274;
    }

    v237 = sub_10001CDFC();
    v238 = sub_10001D50C();
    if (os_log_type_enabled(v237, v238))
    {
      v246 = swift_slowAlloc();
      *v246 = 134217984;
      *(v246 + 4) = 2;
      v241 = "#ContactsButton user allowed limited access, updated access to be %ld";
      goto LABEL_32;
    }
  }

LABEL_34:

  v303 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext;
  [*&v45[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] resetCachedStatus];
  v304 = v45;
  v305 = sub_10001CDFC();
  v306 = sub_10001D50C();
  if (os_log_type_enabled(v305, v306))
  {
    v307 = swift_slowAlloc();
    *v307 = 134217984;
    v308 = *&v45[v303];
    if (v308)
    {
      *(v307 + 4) = [v308 authorizationStatus];

      _os_log_impl(&_mh_execute_header, v305, v306, "#ContactsButton new context auth state is refreshed to  %ld", v307, 0xCu);

      v162 = isa;
LABEL_37:

      return;
    }

    __break(1u);
    goto LABEL_47;
  }
}

void sub_10001B078(void *a1, void *a2, char *a3)
{
  v6 = sub_10001CC9C();
  isa = v6[-1].isa;
  __chkstk_darwin(v6);
  v9 = &v309 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString + 8))
  {
    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(inited + 32) = sub_10001CBEC();
    *(inited + 40) = v22;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000100021CD0;
    v23 = sub_100018F10(inited);
    swift_setDeallocating();
    sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    v25 = v24;
    isa[13](v9, enum case for ContactButtonServiceErrorType.missingPurposeString(_:), v6);
    v26 = sub_10001CC8C();
    (isa[1])(v9, v6);
    v27 = sub_10001259C(v23);
    v23, v28, v29, v30, v31, v317, v32, v33, v34;
    v35 = objc_allocWithZone(NSError);
    v36 = sub_10001D2DC();
    v25, v37, v38, v39, v40, v318, v41, v42, v43;
    v44 = sub_10001D28C().super.isa;
    v27, v45, v46, v47, v48, v319, v49, v50, v51;
    v52 = [v35 initWithDomain:v36 code:v26 userInfo:v44];

    (*(a3 + 2))(a3, 0, 0, v52);
LABEL_11:

    return;
  }

  p_inst_props = &OBJC_PROTOCOL___UISDrawing.inst_props;
  if (!a1)
  {
    v53 = sub_10001CDFC();
    v54 = sub_10001D4EC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "#ContactsButton touch up event had no authentication message?", v55, 2u);
    }

    v16 = 0;
    goto LABEL_15;
  }

  v11 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  v12 = a1;
  v313 = v11;
  v13 = sub_10001CDFC();
  v14 = sub_10001D4CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "#ContactsButton gonna validate touch", v15, 2u);
  }

  v314 = sub_100012E68(v12);
  v16 = v314;
  if (v314)
  {
LABEL_15:
    v314 = v16;
    v56 = sub_10001CDFC();
    v57 = sub_10001D4EC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "#ContactsButton we were unable to validate the tap", v58, 2u);
    }

    if (v314)
    {
      v59 = sub_100007978(v314);
      v61 = v60;
      v62 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
      v63 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8);

      sub_100008030(v62, v63, v59 & 0x101010101010101, v61 & 0x1010101010101);
      v63, v64, v65, v66, v67, v320, v68, v69, v70;
    }

    (*(a3 + 2))(a3, 0, 0);
    goto LABEL_20;
  }

  v312 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext;
  v17 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (!v17)
  {
LABEL_124:
    _Block_release(a3);
    __break(1u);
LABEL_125:
    _Block_release(v311);
    __break(1u);
LABEL_126:
    _Block_release(p_inst_props);
    __break(1u);
    goto LABEL_127;
  }

  v18 = [v17 authorizationStatus];
  v314 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches;
  v19 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches);
  if (v19)
  {
    if (v19 >> 62)
    {
      v20 = sub_10001D64C();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = 0;
  }

  sub_1000086FC(v20, v18);
  p_inst_props = (_AXFeatureSupportsNonSightedUsage() & 1) != 0 || _AXSCommandAndControlEnabled() || _AXSFullKeyboardAccessEnabled() != 0;
  v72 = sub_10001CDFC();
  v73 = sub_10001D4CC();
  v74 = os_log_type_enabled(v72, v73);
  v311 = a3;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v315 = v76;
    *v75 = 136315138;
    if (p_inst_props)
    {
      v77 = 28261;
    }

    else
    {
      v77 = 7563620;
    }

    v310 = v9;
    v78 = v6;
    v79 = isa;
    v80 = p_inst_props;
    if (p_inst_props)
    {
      v81 = 0xE200000000000000;
    }

    else
    {
      v81 = 0xE300000000000000;
    }

    v82 = sub_100017934(v77, v81, &v315);
    v83 = v81;
    p_inst_props = v80;
    isa = v79;
    v6 = v78;
    v9 = v310;
    v83, v84, v85, v86, v87, v321, v88, v89, v90;
    *(v75 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v72, v73, "#ContactsButton voice interaction currently %sabled", v75, 0xCu);
    sub_100002F44(v76);
  }

  a3 = v312;
  v91 = *&v312[a2];
  if (!v91)
  {
    goto LABEL_125;
  }

  v92 = &ServiceDelegate;
  if (([v91 isAccessUnknown] & 1) == 0)
  {
    v93 = *&a3[a2];
    if (!v93)
    {
LABEL_127:
      _Block_release(v311);
      __break(1u);
      goto LABEL_128;
    }

    if (![v93 isAccessDenied])
    {
      v115 = *&v314[a2];
      if (v115)
      {
        a3 = (v115 >> 62);
        if (v115 >> 62)
        {
          v152 = sub_10001D64C();
          if (v152 >= 1)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v152 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v152 >= 1)
          {
LABEL_60:
            swift_bridgeObjectRetain_n();
            v153 = sub_10001CDFC();
            v154 = sub_10001D4CC();
            if (os_log_type_enabled(v153, v154))
            {
              LODWORD(v314) = p_inst_props;
              p_inst_props = swift_slowAlloc();
              v165 = 134217984;
              *p_inst_props = 134217984;
              if (a3)
              {
                v166 = sub_10001D64C();
              }

              else
              {
                v166 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(p_inst_props + 4) = v166;
              v115, v155, v156, v157, v158, *&v165, v159, v160, v161;
              _os_log_impl(&_mh_execute_header, v153, v154, "#ContactsButton number of matches %ld", p_inst_props, 0xCu);

              LOBYTE(p_inst_props) = v314;
            }

            else
            {

              v115, v184, v185, v186, v187, v327, v188, v189, v190;
            }

            if ((v152 != 1) | p_inst_props & 1)
            {
              v6 = a2;
              v202 = sub_10001CDFC();
              v203 = sub_10001D4CC();
              if (os_log_type_enabled(v202, v203))
              {
                v204 = swift_slowAlloc();
                *v204 = 134217984;
                isa = v311;
                v205 = v312;
                v206 = *&v312[a2];
                if (!v206)
                {
LABEL_129:
                  _Block_release(isa);

                  __break(1u);
                  return;
                }

                *(v204 + 4) = [v206 authorizationStatus];

                _os_log_impl(&_mh_execute_header, v202, v203, "#ContactsButton will bring up library management UI? authorization right is %ld", v204, 0xCu);
              }

              else
              {

                v202 = v6;
                isa = v311;
                v205 = v312;
              }

              v208 = *&v205[a2];
              if (v208)
              {
                v209 = v208;
                v115, v210, v211, v212, v213, v328, v214, v215, v216;
                v217 = [v209 isLimitedAccessGranted];

                v167 = isa[2];
                v218 = isa;
                v219 = v217;
                goto LABEL_115;
              }

LABEL_128:
              _Block_release(isa);
              __break(1u);
              goto LABEL_129;
            }

            v73 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID + 8);
            if (!v73)
            {
              v115, v191, v192, v193, v194, *&v198, v195, v196, v197;
              v220 = sub_10001CDFC();
              v221 = sub_10001D4FC();
              if (os_log_type_enabled(v220, v221))
              {
                v222 = swift_slowAlloc();
                *v222 = 0;
                _os_log_impl(&_mh_execute_header, v220, v221, "#ContactsButton: bundleID is nil, can't add single match to limited access", v222, 2u);
              }

              sub_10001CC7C();
              sub_10001CBDC();
              v224 = v223;
              isa[13](v9, enum case for ContactButtonServiceErrorType._invalidBundleID(_:), v6);
              v225 = sub_10001CC8C();
              (isa[1])(v9, v6);
              v226 = objc_allocWithZone(NSError);
              v227 = sub_10001D2DC();
              v224, v228, v229, v230, v231, v329, v232, v233, v234;
              v52 = [v226 initWithDomain:v227 code:v225 userInfo:0];

              (*(v311 + 2))(v311, 0, 0, v52);
              goto LABEL_11;
            }

            v92 = *(a2 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID);
            if (a3)
            {
              v207 = sub_10001D64C();
            }

            else
            {
              v207 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            p_inst_props = v311;
            if (!v207)
            {
              v115, v191, v192, v193, v194, *&v198, v195, v196, v197;
              v272 = sub_10001CDFC();
              v273 = sub_10001D4FC();
              if (os_log_type_enabled(v272, v273))
              {
                v274 = swift_slowAlloc();
                *v274 = 0;
                _os_log_impl(&_mh_execute_header, v272, v273, "#ContactsButton: nil contact for single match case?", v274, 2u);
              }

              sub_10001CC7C();
              sub_10001CBDC();
              v276 = v275;
              isa[13](v9, enum case for ContactButtonServiceErrorType._invalidContact(_:), v6);
              v277 = sub_10001CC8C();
              (isa[1])(v9, v6);
              v278 = objc_allocWithZone(NSError);
              v279 = sub_10001D2DC();
              v276, v280, v281, v282, v283, v331, v284, v285, v286;
              v52 = [v278 initWithDomain:v279 code:v277 userInfo:0];

              goto LABEL_51;
            }

            isa = (v115 & 0xC000000000000001);
            if ((v115 & 0xC000000000000001) != 0)
            {
LABEL_121:

              v236 = sub_10001D5DC();
              goto LABEL_93;
            }

            if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v235 = *(v115 + 32);

              v236 = v235;
LABEL_93:
              v237 = v236;

              v238 = sub_10001CDFC();
              v239 = sub_10001D4CC();
              v115, v240, v241, v242, v243, v330, v244, v245, v246;
              if (os_log_type_enabled(v238, v239))
              {
                v258 = swift_slowAlloc();
                v259 = swift_slowAlloc();
                *v258 = 138412290;
                if (isa)
                {
                  v260 = sub_10001D5DC();
                }

                else
                {
                  v260 = *(v115 + 32);
                }

                v287 = v260;
                v115, v261, v262, v263, v264, *&v268, v265, v266, v267;
                *(v258 + 4) = v287;
                *v259 = v287;
                _os_log_impl(&_mh_execute_header, v238, v239, "#ContactsButton will authorize the contact %@", v258, 0xCu);
                sub_100010EC8(v259, &qword_10002DA60, &qword_10001ECF0);

                p_inst_props = v311;
              }

              else
              {
                v115, v247, v248, v249, v250, *&v254, v251, v252, v253;
              }

              sub_100005DE0(v237, v92, v73);
              v73, v288, v289, v290, v291, v332, v292, v293, v294;
              sub_100002EFC(&unk_10002E468, &unk_10001ED18);
              v150 = swift_allocObject();
              *(v150 + 16) = xmmword_10001E6C0;
              v295 = [v237 identifier];
              v296 = sub_10001D30C();
              v298 = v297;

              *(v150 + 32) = v296;
              *(v150 + 40) = v298;
              v314 = sub_10001D3EC().super.isa;
              (*(p_inst_props + 16))(p_inst_props, v314, 0, 0);

              goto LABEL_71;
            }

            __break(1u);
            goto LABEL_123;
          }
        }
      }

      v299 = sub_10001CDFC();
      v300 = sub_10001D4CC();
      if (os_log_type_enabled(v299, v300))
      {
        v301 = swift_slowAlloc();
        *v301 = 0;
        _os_log_impl(&_mh_execute_header, v299, v300, "#ContactsButton no matches, nothing to do on tap", v301, 2u);
      }

      v218 = v311;
      v167 = *(v311 + 2);
      goto LABEL_114;
    }
  }

  v94 = sub_10001CDFC();
  v95 = sub_10001D4CC();
  if (os_log_type_enabled(v94, v95))
  {
    v73 = swift_slowAlloc();
    LOWORD(v73->super.isa) = 0;
    _os_log_impl(&_mh_execute_header, v94, v95, "#ContactsButton presenting onboarding prompt instead of authorizing single contact", v73, 2u);
  }

  v96 = *&v314[a2];
  p_inst_props = v311;
  if (!v96)
  {
    goto LABEL_123;
  }

  if (!(v96 >> 62))
  {
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (!sub_10001D64C())
  {
LABEL_44:
    v97 = sub_100005A00();
    v98 = *&v314[a2];
    *&v314[a2] = v97;
    v98, v99, v100, v101, v102, v322, v103, v104, v105;
  }

LABEL_45:
  v106 = *&v314[a2];
  if (!v106)
  {
LABEL_123:
    _Block_release(p_inst_props);
    __break(1u);
    goto LABEL_124;
  }

  sub_10001A5BC();
  v106, v107, v108, v109, v110, v323, v111, v112, v113;
  v114 = sub_10001CDFC();
  v115 = sub_10001D4CC();
  if (os_log_type_enabled(v114, v115))
  {
    v73 = swift_slowAlloc();
    LOWORD(v73->super.isa) = 0;
    _os_log_impl(&_mh_execute_header, v114, v115, "#ContactsButton onboarding prompt has completed", v73, 2u);
  }

  v116 = *&a3[a2];
  if (!v116)
  {
    goto LABEL_126;
  }

  if ([v116 isAccessDenied])
  {
    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v117 = swift_initStackObject();
    *(v117 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v117 + 32) = sub_10001CBEC();
    *(v117 + 40) = v118;
    *(v117 + 48) = 0xD00000000000001ELL;
    *(v117 + 56) = 0x8000000100021D00;
    v119 = sub_100018F10(v117);
    swift_setDeallocating();
    sub_100010EC8(v117 + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    v121 = v120;
    isa[13](v9, enum case for ContactButtonServiceErrorType.accessDenied(_:), v6);
    v122 = sub_10001CC8C();
    (isa[1])(v9, v6);
    v123 = sub_10001259C(v119);
    v119, v124, v125, v126, v127, v324, v128, v129, v130;
    v131 = objc_allocWithZone(NSError);
    v132 = sub_10001D2DC();
    v121, v133, v134, v135, v136, v325, v137, v138, v139;
    v140 = sub_10001D28C().super.isa;
    v123, v141, v142, v143, v144, v326, v145, v146, v147;
    v52 = [v131 initWithDomain:v132 code:v122 userInfo:v140];

LABEL_51:
    (*(p_inst_props + 16))(p_inst_props, 0, 0, v52);
    goto LABEL_11;
  }

  v148 = *&v314[a2];
  if (!v148)
  {
    v167 = *(p_inst_props + 16);
LABEL_108:
    v218 = p_inst_props;
LABEL_114:
    v219 = 0;
    goto LABEL_115;
  }

  isa = (v148 >> 62);
  if (v148 >> 62)
  {
    v149 = sub_10001D64C();
    if (v149 == 1)
    {
LABEL_55:
      sub_100002EFC(&unk_10002E468, &unk_10001ED18);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_10001E6C0;
      if (isa)
      {
        v151 = sub_10001D64C();
      }

      else
      {
        v151 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v151)
      {
        if ((v148 & 0xC000000000000001) == 0)
        {
          if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v168 = *(v148 + 32);
LABEL_70:
            v169 = [v168 identifier];

            v170 = sub_10001D30C();
            v172 = v171;

            *(v150 + 32) = v170;
            *(v150 + 40) = v172;
            v314 = sub_10001D3EC().super.isa;
            v180 = (*(p_inst_props + 16))(p_inst_props, v314, 0, 0);
LABEL_71:
            v150, v173, v174, v175, v176, *&v180, v177, v178, v179;
LABEL_20:
            v71 = v314;

            return;
          }

          __break(1u);
          goto LABEL_121;
        }
      }

      else
      {
        __break(1u);
      }

      v168 = sub_10001D5DC();
      v148, v302, v303, v304, v305, v333, v306, v307, v308;
      goto LABEL_70;
    }
  }

  else
  {
    v149 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v149 == 1)
    {
      goto LABEL_55;
    }
  }

  v167 = *(p_inst_props + 16);
  if (v149 < 2)
  {
    goto LABEL_108;
  }

  v218 = p_inst_props;
  v219 = 1;
LABEL_115:

  (v167)(v218, 0, v219, 0);
}

void *sub_10001C33C(void *a1, void *a2)
{
  v5 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  type metadata accessor for ContactsButtonSlotTag();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = sub_10001D47C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_10001D45C();

  v12 = a2;
  v13 = a1;
  v14 = v2;
  v15 = sub_10001D44C();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v10;
  v16[5] = v9;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = v8;
  sub_1000114B8(0, 0, v7, &unk_10001ED58, v16);

  sub_10001D52C();

  v17 = sub_10001CDFC();
  v18 = sub_10001D4CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "#ContactsButton finished rendering an image", v19, 2u);
  }

  swift_beginAccess();
  v20 = *(v10 + 16);
  v21 = v20;

  return v20;
}

uint64_t sub_10001C5AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C5E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001C644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001CBD4;

  return sub_100012A74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001C720()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CBD4;

  return sub_1000174B0(a1, v4);
}

uint64_t sub_10001C810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F814;

  return sub_1000174B0(a1, v4);
}

uint64_t sub_10001C8C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C918()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10001C994()
{
  result = qword_10002E040;
  if (!qword_10002E040)
  {
    sub_10000F6A0(&unk_10002E4F0, &qword_10001ED90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E040);
  }

  return result;
}

uint64_t sub_10001C9F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001CA68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F814;

  return sub_100011DA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_10001CB68(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}