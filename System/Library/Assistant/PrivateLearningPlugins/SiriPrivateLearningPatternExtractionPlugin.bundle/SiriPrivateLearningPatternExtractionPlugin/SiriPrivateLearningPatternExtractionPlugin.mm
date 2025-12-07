uint64_t variable initialization expression of ExtractPatternsRectifi.closedPatternUtil()
{
  type metadata accessor for ClosedPatternUtil();

  return swift_allocObject();
}

uint64_t sub_16CC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4 < *(v2 + 24))
  {
    return result;
  }

  v6 = result;
  swift_beginAccess();
  v7 = *(v3 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40 * v8;
    v10 = *(v9 - 8);
    v11 = *v9;
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v33[0] = v10;
  v33[1] = v11;
  v33[2] = v12;
  v33[3] = v13;
  v34 = v14;
  v15 = sub_29EC(v33, v6);
  sub_38A8(v10, v11, v12);
  if (v15)
  {
    swift_beginAccess();
    v10 = *(v3 + 56);
    if (v10[2])
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v16 = v10[2];
        if (v16)
        {
LABEL_9:
          v10[2] = v16 - 1;
          *(v3 + 56) = v10;
          swift_endAccess();

          goto LABEL_10;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_28E74(v10);
    v10 = result;
    v16 = *(result + 16);
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_10:
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  v19 = *(v6 + 2);
  v20 = v6 + 32;
  while (v19 != v17)
  {
    if (v17 >= v19)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v6 = sub_1EF60(0, *(v6 + 2) + 1, 1, v6);
      *(v3 + 56) = v6;
      goto LABEL_24;
    }

    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_29;
    }

    v10 = *&v20[8 * v17++];
    if (v10)
    {

      sub_2A904();
      if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v32 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2A924();
      }

      v6 = &v32;
      sub_2A944();
      v18 = v32;
      v17 = v21;
    }
  }

  v10 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_20018(0, v4, 0);
    v10 = v32;
    v22 = (a2 + 32);
    v23 = *(v32 + 16);
    v24 = v4;
    do
    {
      v26 = *v22;
      v22 += 2;
      v25 = v26;
      v32 = v10;
      v27 = v10[3];
      if (v23 >= v27 >> 1)
      {
        sub_20018((v27 > 1), v23 + 1, 1);
        v10 = v32;
      }

      v10[2] = v23 + 1;
      v10[v23++ + 4] = v25;
      --v24;
    }

    while (v24);
  }

  swift_beginAccess();
  v6 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v30 = *(v6 + 2);
  v29 = *(v6 + 3);
  if (v30 >= v29 >> 1)
  {
    v6 = sub_1EF60((v29 > 1), v30 + 1, 1, v6);
  }

  *(v6 + 2) = v30 + 1;
  v31 = &v6[40 * v30];
  *(v31 + 4) = v4;
  *(v31 + 5) = v18;
  *(v31 + 6) = v10;
  *(v31 + 7) = 0;
  v31[64] = 1;
  *(v3 + 56) = v6;
  return swift_endAccess();
}

uint64_t sub_1A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (v5 < 3 || (v6 = a2, result = sub_16CC(a1, a2), a2 = v6, v5 != 15))
  {
    v22 = *(v2 + 16);
    result = sub_3474(v22, a2);
    v9 = result;
    inited = v8;
    if (v8 >> 62)
    {
      goto LABEL_26;
    }

    v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      do
      {
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        v13 = inited & 0xC000000000000001;
        v25 = inited;
        v26 = v5;
        v23 = inited & 0xC000000000000001;
        v24 = v11;
        while (!v13)
        {
          v14 = *(inited + 8 * v12 + 32);

          if (*(v9 + 16))
          {
            goto LABEL_13;
          }

LABEL_7:

LABEL_8:
          if (v11 == ++v12)
          {
          }
        }

        v14 = sub_2AB64();
        if (!*(v9 + 16))
        {
          goto LABEL_7;
        }

LABEL_13:
        v15 = sub_79D0(v14);
        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = *(*(v9 + 56) + 8 * v15);
        sub_385C(&qword_39890, "d,");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2B5D0;
        *(inited + 32) = v14;

        if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(a1 + 24) >> 1, v19 = a1, v18 <= v5))
        {
          v19 = sub_2AB74();
          v18 = *(v19 + 24) >> 1;
        }

        if (v18 > *(v19 + 16))
        {
          sub_385C(&qword_39898, &unk_2BCC0);
          swift_arrayInitWithCopy();

          ++*(v19 + 16);
          if (*(v17 + 16) < *(v3 + 24) || (v20 = , sub_12934(v20), v21 = sub_E914(v22, &off_350A8, v17), , (v21 & 1) != 0))
          {
          }

          else
          {
            sub_1A14(v19, v17);
          }

          inited = v25;
          v5 = v26;
          v13 = v23;
          v11 = v24;
          goto LABEL_8;
        }

        __break(1u);
LABEL_26:
        result = sub_2AC34();
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

char *sub_1D24(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 5;
  }

  else
  {
    v3 = a1;
  }

  swift_beginAccess();
  v4 = *(v2 + 56);
  if (v3 >= *(v4 + 2))
  {

    return v4;
  }

  v9 = *(v2 + 56);
  swift_bridgeObjectRetain_n();
  sub_2090(&v9);

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v9;
    v5 = *(v9 + 2);
    if (v5 >= v3)
    {
      if (v5 != v3)
      {
        sub_2124C(v9, (v9 + 32), 0, (2 * v3) | 1);
        v7 = v6;

        return v7;
      }

      return v4;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

char *sub_1E14()
{
  swift_beginAccess();
  *(v0 + 56) = _swiftEmptyArrayStorage;

  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = sub_20038(0, v2, 0);
    v4 = 0;
    v5 = *(v1 + 16);
    while (v5 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_10;
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        result = sub_20038((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v4;
      v8[5] = -1;
      if (v2 == ++v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_1A14(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }

  return result;
}

void *ExtractPatternsRectifi.deinit()
{

  return v0;
}

uint64_t ExtractPatternsRectifi.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

__n128 sub_1FE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1FF4(uint64_t a1, int a2)
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

uint64_t sub_203C(uint64_t result, int a2, int a3)
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

Swift::Int sub_2090(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17650(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_2AD34(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 8;
          v14 = *(v12 + 1);
          if (*(v12 - 4) >= v14)
          {
            break;
          }

          v15 = *(v12 + 2);
          v16 = v12[40];
          v17 = *(v12 + 24);
          v18 = *(v12 - 1);
          *v13 = *(v12 - 2);
          *(v12 + 24) = v18;
          v19 = *v12;
          *(v12 - 4) = v14;
          *(v12 - 3) = v15;
          *(v12 - 1) = v17;
          *v12 = v16;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2A934();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_21F0(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_169D0(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_27C0((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = (*a3 + 40 * v9);
      v14 = *v11;
      v13 = v11 + 5;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[5];
        v13 += 5;
        ++v15;
        if (v12 < v10 == v16 >= v17)
        {
          v7 = v15 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 8;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = (v30 + v18);
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *v23;
            v29 = *(v23 - 1);
            *(v22 - 2) = *(v23 - 2);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v23 - 4) = v24;
            *(v23 - 3) = v25;
            *(v23 - 1) = v27;
            *v23 = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1F0B4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1F0B4((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_27C0((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (*v35 >= v37)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 72);
    v40 = *(v35 + 56);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v40;
    *(v35 + 32) = v39;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_27C0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (*v19 < v22)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_29EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
LABEL_70:
    v20 = a2;
    v21 = sub_2AC34();
    v4 = *(v20 + 16);
    if (v4 < v21)
    {
      return 0;
    }

    v22 = sub_2AC34();
    a2 = v20;
    v3 = v22;
    if (v22)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v4 = *(a2 + 16);
  if (v4 < v3)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

LABEL_5:
  v5 = 0;
  v6 = a2 + 32;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_70;
    }

    v8 = *(v2 + 8 * v5 + 32);

    if (v4 == v5)
    {
      goto LABEL_66;
    }

LABEL_11:
    v9 = *(v6 + 8 * v5);
    if (!v9)
    {
      goto LABEL_67;
    }

    v10 = *(v8 + 24) == *(v9 + 24) && *(v8 + 32) == *(v9 + 32);
    if (!v10 && (sub_2AD54() & 1) == 0 || *(v8 + 40) != *(v9 + 40))
    {
      goto LABEL_67;
    }

    ++v5;
    v11 = *(v9 + 41);
    v12 = 0xE300000000000000;
    v13 = 5395265;
    switch(*(v8 + 41))
    {
      case 1:
        v13 = 5786702;
        break;
      case 2:
        v13 = 4801877;
        break;
      case 3:
        v12 = 0xE800000000000000;
        v13 = 0x505041454E4F4850;
        break;
      case 4:
        v13 = 0x414547415353454DLL;
        v12 = 0xEA00000000005050;
        break;
      case 5:
        v13 = 0x5245444E494D4552;
        v14 = 1096041811;
        goto LABEL_29;
      case 6:
        v13 = 0xD000000000000017;
        v12 = 0x800000000002C990;
        break;
      case 7:
        v13 = 0x4552434D52414C41;
        goto LABEL_27;
      case 8:
        v12 = 0xEE00505041454C47;
        v13 = 0x474F544D52414C41;
        break;
      case 9:
        v13 = 0x4450554D52414C41;
LABEL_27:
        v14 = 1095062593;
LABEL_29:
        v12 = v14 | 0xEE00505000000000;
        break;
      case 0xA:
        v13 = 0x4145524345544F4ELL;
        goto LABEL_33;
      case 0xB:
        v13 = 0x454C454445544F4ELL;
LABEL_33:
        v12 = 0xED00005050414554;
        break;
      case 0xC:
        v13 = 0x5041594D444E4946;
        v12 = 0xE900000000000050;
        break;
      case 0xD:
        v12 = 0xE700000000000000;
        v13 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 5395265;
    switch(v11)
    {
      case 1:
        if (v13 == 5786702)
        {
          goto LABEL_60;
        }

        goto LABEL_6;
      case 2:
        if (v13 != 4801877)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 3:
        v15 = 0xE800000000000000;
        if (v13 != 0x505041454E4F4850)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 4:
        v15 = 0xEA00000000005050;
        if (v13 != 0x414547415353454DLL)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 5:
        v17 = 0x5245444E494D4552;
        v18 = 1096041811;
        goto LABEL_52;
      case 6:
        v15 = 0x800000000002C990;
        if (v13 != 0xD000000000000017)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 7:
        v17 = 0x4552434D52414C41;
        goto LABEL_50;
      case 8:
        v15 = 0xEE00505041454C47;
        if (v13 != 0x474F544D52414C41)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 9:
        v17 = 0x4450554D52414C41;
LABEL_50:
        v18 = 1095062593;
LABEL_52:
        v15 = v18 | 0xEE00505000000000;
        if (v13 != v17)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 10:
        v16 = 0x4145524345544F4ELL;
        v15 = 0xED00005050414554;
        goto LABEL_59;
      case 11:
        v15 = 0xED00005050414554;
        if (v13 != 0x454C454445544F4ELL)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 12:
        v15 = 0xE900000000000050;
        if (v13 != 0x5041594D444E4946)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      case 13:
        v15 = 0xE700000000000000;
        if (v13 != 0x4E574F4E4B4E55)
        {
          goto LABEL_6;
        }

        goto LABEL_60;
      default:
LABEL_59:
        if (v13 != v16)
        {
          goto LABEL_6;
        }

LABEL_60:
        if (v12 == v15)
        {

          if (v3 == v5)
          {
            return 1;
          }
        }

        else
        {
LABEL_6:
          v7 = sub_2AD54();

          if ((v7 & 1) == 0)
          {
            return 0;
          }

          if (v3 == v5)
          {
            return 1;
          }
        }

        break;
    }
  }

  v8 = sub_2AB64();
  if (v4 != v5)
  {
    goto LABEL_11;
  }

LABEL_66:
  __break(1u);
LABEL_67:

  return 0;
}

void *sub_2F6C(uint64_t a1, uint64_t a2)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v40 = a1 + 32;
  v38 = a2 + 32;
  v39 = a2;
  while (1)
  {
    v3 = *(v40 + 8 * v2);
    v42 = v2;
    if (v2 >= *(a2 + 16))
    {
      v5 = -1;
      if (v3 < 0)
      {
        v48 = v2;
      }

      else
      {
        v48 = v2;
        if ((v3 & 0x4000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = (v38 + 16 * v2);
      v5 = v4[1];
      v48 = *v4;
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_10:
        v47 = v3 & 0xFFFFFFFFFFFFFF8;
        v6 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_11;
      }
    }

    v47 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_2AC34();
LABEL_11:
    v7 = v5 + 1;
    v8 = __OFADD__(v5, 1);
    v45 = v8;

    v43 = v3;
    if (v6)
    {
      break;
    }

LABEL_3:
    v2 = v42 + 1;

    a2 = v39;
    if (v42 + 1 == v41)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  v9 = 0;
  v46 = v3 & 0xC000000000000001;
  v44 = v3 + 32;
  while (v46)
  {
    v10 = sub_2AB64();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_71;
    }

LABEL_20:
    if (v45)
    {
      goto LABEL_74;
    }

    v12 = v9 + v7;
    if (__OFADD__(v9, v7))
    {
      goto LABEL_73;
    }

    if (!_swiftEmptyDictionarySingleton[2] || (v13 = sub_79D0(v10), (v14 & 1) == 0))
    {
      v9 = v11;
      goto LABEL_42;
    }

    v15 = *(_swiftEmptyDictionarySingleton[7] + 8 * v13);
    v16 = *(v15 + 2);
    if (v16 && *&v15[16 * v16 + 16] == v48)
    {

      if (v11 == v6)
      {
        goto LABEL_3;
      }

      v17 = v9 + 5;
      while (1)
      {
        v18 = v17 - 4;
        if (v46)
        {
          v10 = sub_2AB64();
          v9 = v17 - 3;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v18 >= *(v47 + 16))
          {
            goto LABEL_72;
          }

          v10 = *(v43 + 8 * v17);

          v9 = v17 - 3;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_71;
          }
        }

        v12 = v18 + v7;
        if (__OFADD__(v18, v7))
        {
          goto LABEL_73;
        }

        if (!_swiftEmptyDictionarySingleton[2])
        {
          break;
        }

        v19 = sub_79D0(v10);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v15 = *(_swiftEmptyDictionarySingleton[7] + 8 * v19);
        v21 = *(v15 + 2);
        if (!v21 || *&v15[16 * v21 + 16] != v48)
        {
          v11 = v9;
          goto LABEL_45;
        }

        ++v17;
        if (v9 == v6)
        {
          goto LABEL_3;
        }
      }

LABEL_42:
      v15 = _swiftEmptyArrayStorage;
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_45:

    v9 = v11;
    if (!*(v15 + 2))
    {
LABEL_46:

      sub_2A904();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2A924();
      }

      sub_2A944();
    }

LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1F07C(0, *(v15 + 2) + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1F07C((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v24 = &v15[16 * v23];
    *(v24 + 4) = v48;
    *(v24 + 5) = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_79D0(v10);
    v28 = _swiftEmptyDictionarySingleton[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_75;
    }

    v31 = v26;
    if (_swiftEmptyDictionarySingleton[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_88D4();
        if ((v31 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

LABEL_16:

      *(_swiftEmptyDictionarySingleton[7] + 8 * v27) = v15;

      if (v9 == v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_7AF4(v30, isUniquelyReferenced_nonNull_native);
      type metadata accessor for PatternItem();
      v32 = sub_79D0(v10);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_77;
      }

      v27 = v32;
      if (v31)
      {
        goto LABEL_16;
      }

LABEL_60:
      _swiftEmptyDictionarySingleton[(v27 >> 6) + 8] |= 1 << v27;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v27) = v10;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v27) = v15;
      v34 = _swiftEmptyDictionarySingleton[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_76;
      }

      _swiftEmptyDictionarySingleton[2] = v36;

      if (v9 == v6)
      {
        goto LABEL_3;
      }
    }
  }

  if (v9 >= *(v47 + 16))
  {
    goto LABEL_72;
  }

  v10 = *(v44 + 8 * v9);

  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_20;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_2AD84();
  __break(1u);
  return result;
}

void *sub_3474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_57:
    v31 = sub_2F6C(v4, a2);

    return v31;
  }

  v3 = 0;
  v33 = a1 + 32;
  v34 = *(a1 + 16);
  v35 = a2 + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v35 + 16 * v3);
    v6 = *v5;
    if (*v5 >= v34)
    {
      break;
    }

    v7 = v5[1];
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_59;
    }

    v9 = *(v33 + 8 * v6);
    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2AC34();
      if (result < v8)
      {
        goto LABEL_69;
      }

      v11 = result;
      if (sub_2AC34() < v8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v11 < v8)
      {
        goto LABEL_60;
      }
    }

    if (v8 < 0)
    {
      goto LABEL_62;
    }

    if (v10)
    {
      v12 = sub_2AC34();
    }

    else
    {
      v12 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    if (v12 < v11)
    {
      goto LABEL_63;
    }

    if (v11 < 0)
    {
      goto LABEL_64;
    }

    if ((v9 & 0xC000000000000001) == 0 || v8 == v11)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v8 >= v11)
      {
        goto LABEL_66;
      }

      type metadata accessor for PatternItem();
      swift_bridgeObjectRetain_n();
      v14 = v8;
      do
      {
        v15 = v14 + 1;
        sub_2AB54(v14);
        v14 = v15;
      }

      while (v11 != v15);
    }

    if (v10)
    {
      sub_2AC44();
      v8 = v22;
      v24 = v23;

      v17 = v24 >> 1;
      if ((v24 & 1) == 0)
      {
LABEL_31:
        v20 = v17 - v8;
        v25 = __OFSUB__(v17, v8);
        swift_unknownObjectRetain();
        if (v25)
        {
          goto LABEL_65;
        }

        if (!v20)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v16 = (2 * v11) | 1;
      v17 = v16 >> 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_2AD64();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = v18[2];

    v20 = v17 - v8;
    if (__OFSUB__(v17, v8))
    {
      goto LABEL_67;
    }

    if (v19 != v20)
    {
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_47:
        swift_unknownObjectRelease();
LABEL_48:
        v21 = _swiftEmptyArrayStorage;
LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }

LABEL_36:
      if (v20 < 1)
      {
        v21 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_385C(&qword_398A0, &qword_2B6B0);
        v21 = swift_allocObject();
        v26 = j__malloc_size(v21);
        v27 = v26 - 32;
        if (v26 < 32)
        {
          v27 = v26 - 25;
        }

        v21[2] = v20;
        v21[3] = (2 * (v27 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v8 == v17)
      {
        goto LABEL_68;
      }

      type metadata accessor for PatternItem();
      swift_arrayInitWithCopy();
      goto LABEL_49;
    }

    v21 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v21)
    {
      goto LABEL_48;
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1F090(0, v4[2] + 1, 1, v4);
    }

    v30 = v4[2];
    v29 = v4[3];
    if (v30 >= v29 >> 1)
    {
      v4 = sub_1F090((v29 > 1), v30 + 1, 1, v4);
    }

    ++v3;
    v4[2] = v30 + 1;
    v4[v30 + 4] = v21;
    if (v3 == v2)
    {
      goto LABEL_57;
    }
  }

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
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = swift_unknownObjectRelease();
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_385C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_38A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_396C()
{
  v2 = sub_2A664();
  v3 = v0;

  v4._countAndFlagsBits = 0x2F49464954434552;
  v4._object = 0xE800000000000000;
  sub_2A8C4(v4);

  qword_3AB08 = v2;
  unk_3AB10 = v3;
  return result;
}

uint64_t sub_39D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_398A8) = 20;
  *(v2 + qword_398B0) = 10;
  v5 = qword_398B8;
  sub_29FD4();
  swift_allocObject();
  *(v2 + v5) = sub_29FC4();
  v6 = qword_398C0;
  sub_29FA4();
  swift_allocObject();
  *(v2 + v6) = sub_29F94();

  return CoreDataStore.init(path:modelFileName:)(a1, a2, 0xD000000000000013, 0x800000000002CC30);
}

void sub_3AB0(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_2A854();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_2A214();
  type metadata accessor for RECTIFISelfPatternStore();
  v11 = sub_2AA34();
  if (v3)
  {
  }

  else
  {
    v12 = v11;

    sub_AAE8(v12, a1, a2);
    v23 = v9;

    if (a3)
    {
      if (v12 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2AC34())
      {
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_2AB64();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_15;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = sub_2A214();
          [v18 deleteObject:{v16, v23}];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }
    }

LABEL_17:

    v19 = sub_2A214();
    v24 = 0;
    v20 = [v19 save:&v24];

    if (v20)
    {
      v21 = v24;
    }

    else
    {
      v22 = v24;
      sub_29FE4();

      swift_willThrow();
    }
  }
}

void sub_3D28(uint64_t a1, char **a2, char a3)
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_2A854();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_2A214();
  type metadata accessor for RECTIFIInfrequentPatternStore();
  v11 = sub_2AA34();
  if (v3)
  {
  }

  else
  {
    v12 = v11;

    sub_B0A4(v12, a1, a2);
    v23 = v9;

    if (a3)
    {
      if (v12 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2AC34())
      {
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_2AB64();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_15;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = sub_2A214();
          [v18 deleteObject:{v16, v23}];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }
    }

LABEL_17:

    v19 = sub_2A214();
    v24 = 0;
    v20 = [v19 save:&v24];

    if (v20)
    {
      v21 = v24;
    }

    else
    {
      v22 = v24;
      sub_29FE4();

      swift_willThrow();
    }
  }
}

uint64_t sub_3FA0(uint64_t a1)
{
  v2 = type metadata accessor for PatternStoreValue(0);
  v70 = *(v2 - 1);
  v3 = __chkstk_darwin(v2);
  v71 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v63 - v6;
  v8 = __chkstk_darwin(v5);
  v67 = &v63 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v63 - v11;
  v13 = __chkstk_darwin(v10);
  v66 = &v63 - v14;
  __chkstk_darwin(v13);
  v68 = &v63 - v15;
  v16 = sub_22744(_swiftEmptyArrayStorage);
  v17 = *(a1 + 16);
  if (v17)
  {
    v64 = v7;
    v65 = v12;
    v18 = (a1 + 32);
    v69 = v2;
    while (1)
    {
      v19 = *v18;
      v20 = v16[2];

      if (v20)
      {
        v21 = sub_7A88(v19);
        if (v22)
        {
          break;
        }
      }

      sub_2A084();
      v41 = v2[6];
      v42 = sub_2A0E4();
      (*(*(v42 - 8) + 56))(&v7[v41], 1, 1, v42);
      *&v7[v2[5]] = 1;
      v7[v2[7]] = 2;
      sub_B720(v7, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v16;
      v45 = sub_7A88(v19);
      v46 = v16[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v49 = v44;
      if (v16[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_8A38();
          if ((v49 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_7F84(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_7A88(v19);
        if ((v49 & 1) != (v51 & 1))
        {
LABEL_40:
          sub_385C(&qword_399C8, &qword_2B778);
          result = sub_2AD84();
          __break(1u);
          return result;
        }

        v45 = v50;
        if ((v49 & 1) == 0)
        {
LABEL_19:
          v16 = v72;
          v72[(v45 >> 6) + 8] |= 1 << v45;
          *(v16[6] + 8 * v45) = v19;
          sub_B720(v71, v16[7] + *(v70 + 72) * v45);
          v52 = v16[2];
          v37 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v37)
          {
            goto LABEL_35;
          }

LABEL_29:
          v16[2] = v53;
          goto LABEL_4;
        }
      }

      v16 = v72;
      sub_B784(v71, v72[7] + *(v70 + 72) * v45);
LABEL_4:
      v2 = v69;
      ++v18;
      if (!--v17)
      {
        goto LABEL_30;
      }
    }

    v23 = *(v70 + 72);
    v24 = v66;
    sub_B7E8(v16[7] + v23 * v21, v66);
    v25 = v24;
    v26 = v68;
    sub_B720(v25, v68);
    v27 = v65;
    sub_2A084();
    v28 = *(v26 + v2[5]);
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_36;
    }

    v30 = v2[6];
    v31 = sub_2A0E4();
    (*(*(v31 - 8) + 56))(v27 + v30, 1, 1, v31);
    *(v27 + v2[5]) = v29;
    *(v27 + v2[7]) = 2;
    sub_B720(v27, v67);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v16;
    v33 = sub_7A88(v19);
    v35 = v16[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_37;
    }

    v39 = v34;
    if (v16[3] >= v38)
    {
      v7 = v64;
      if ((v32 & 1) == 0)
      {
        v55 = v33;
        sub_8A38();
        v33 = v55;
        if ((v39 & 1) == 0)
        {
LABEL_28:
          v16 = v72;
          v72[(v33 >> 6) + 8] |= 1 << v33;
          *(v16[6] + 8 * v33) = v19;
          sub_B720(v67, v16[7] + v33 * v23);
          sub_B904(v68);
          v56 = v16[2];
          v37 = __OFADD__(v56, 1);
          v53 = v56 + 1;
          if (v37)
          {
            goto LABEL_38;
          }

          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_7F84(v38, v32);
      v33 = sub_7A88(v19);
      v7 = v64;
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_40;
      }
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v54 = v33;

    v16 = v72;
    sub_B784(v67, v72[7] + v54 * v23);
    sub_B904(v68);
    goto LABEL_4;
  }

LABEL_30:
  if (qword_39720 != -1)
  {
LABEL_39:
    swift_once();
  }

  v57 = sub_2A804();
  sub_B884(v57, qword_3AB28);
  v58 = sub_2A7E4();
  v59 = sub_2A9E4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = v16[2];
    _os_log_impl(&dword_0, v58, v59, "Writing %ld Incomplete patterns", v60, 0xCu);
  }

  sub_5BCC(v61);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_45B4(void *a1, uint64_t a2)
{
  v4 = v2;
  v87 = a2;
  v88 = a1;
  v91 = type metadata accessor for PatternStoreValue(0);
  v89 = *(v91 - 8);
  v5 = __chkstk_darwin(v91);
  v90 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v92 = v82 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v82 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v82 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v82 - v16;
  __chkstk_darwin(v15);
  v19 = v82 - v18;
  v20 = sub_385C(&qword_39918, &unk_2B740);
  __chkstk_darwin(v20 - 8);
  v22 = v82 - v21;
  v98 = sub_22744(_swiftEmptyArrayStorage);
  v23 = sub_2A214();
  v95 = v4;
  v96 = &v98;
  v97 = 1;
  sub_2AA24();

  v24 = v98;
  if (v3)
  {
  }

  v93 = v22;
  v85 = v11;
  v86 = v19;
  v83 = v17;
  v84 = v14;
  v82[0] = 0;
  v82[1] = v4;
  v26 = v88[2];
  if (v26)
  {
    v94 = 0;
    v27 = *(v87 + 16);
    v28 = v88 + 4;
    v30 = v90;
    v29 = v91;
    v31 = v92;
    v32 = v93;
    do
    {
      v33 = *v28;
      if (v94 == v27)
      {
        v34 = sub_2A0E4();
        (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
        v94 = v27;
      }

      else
      {
        if (v94 >= v27)
        {
          goto LABEL_42;
        }

        v88 = v24;
        v24 = v30;
        v35 = v33;
        v36 = v28;
        v37 = v26;
        v38 = v27;
        v39 = v32;
        v40 = sub_2A0E4();
        v41 = *(v40 - 8);
        v42 = v94;
        (*(v41 + 16))(v39, v87 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v94, v40);
        v94 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_43;
        }

        (*(v41 + 56))(v39, 0, 1, v40);
        v32 = v39;
        v27 = v38;
        v26 = v37;
        v28 = v36;
        v33 = v35;
        v30 = v24;
        v24 = v88;
        v29 = v91;
        v31 = v92;
      }

      v43 = v24[2];

      if (v43)
      {
        v44 = sub_7A88(v33);
        v32 = v93;
        if (v45)
        {
          v46 = *(v89 + 72);
          v47 = v83;
          sub_B7E8(v24[7] + v46 * v44, v83);
          v48 = v47;
          v49 = v86;
          sub_B720(v48, v86);
          v50 = v84;
          sub_2A084();
          v51 = *(v49 + v29[5]);
          v52 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_45;
          }

          sub_BAC4(v93, v50 + v29[6], &qword_39918, &unk_2B740);
          *(v50 + v29[5]) = v52;
          *(v50 + v29[7]) = 0;
          sub_B720(v50, v85);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v24;
          v54 = sub_7A88(v33);
          v56 = v24[2];
          v57 = (v55 & 1) == 0;
          v58 = __OFADD__(v56, v57);
          v59 = v56 + v57;
          if (v58)
          {
            goto LABEL_46;
          }

          v60 = v55;
          if (v24[3] >= v59)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_31;
            }

            v74 = v54;
            sub_8A38();
            v54 = v74;
            v30 = v90;
            if ((v60 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_32:
            v73 = v54;

            v24 = v98;
            sub_B784(v85, *(v98 + 56) + v73 * v46);
            sub_B904(v86);
            v32 = v93;
            sub_BB4C(v93, &qword_39918, &unk_2B740);
          }

          else
          {
            sub_7F84(v59, isUniquelyReferenced_nonNull_native);
            v54 = sub_7A88(v33);
            if ((v60 & 1) != (v61 & 1))
            {
              goto LABEL_49;
            }

LABEL_31:
            v30 = v90;
            if (v60)
            {
              goto LABEL_32;
            }

LABEL_34:
            v24 = v98;
            *(v98 + 8 * (v54 >> 6) + 64) |= 1 << v54;
            *(v24[6] + 8 * v54) = v33;
            sub_B720(v85, v24[7] + v54 * v46);
            sub_B904(v86);
            v32 = v93;
            sub_BB4C(v93, &qword_39918, &unk_2B740);
            v75 = v24[2];
            v58 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v58)
            {
              goto LABEL_47;
            }

            v24[2] = v76;
          }

          v29 = v91;
          v31 = v92;
          goto LABEL_7;
        }
      }

      sub_2A084();
      sub_BAC4(v32, v31 + v29[6], &qword_39918, &unk_2B740);
      *(v31 + v29[5]) = 1;
      *(v31 + v29[7]) = 0;
      sub_B720(v31, v30);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v24;
      v64 = sub_7A88(v33);
      v65 = v24[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
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
        goto LABEL_48;
      }

      v68 = v63;
      if (v24[3] >= v67)
      {
        v32 = v93;
        if ((v62 & 1) == 0)
        {
          sub_8A38();
          v32 = v93;
        }

        v31 = v92;
        if ((v68 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_7F84(v67, v62);
        v69 = sub_7A88(v33);
        if ((v68 & 1) != (v70 & 1))
        {
LABEL_49:
          sub_385C(&qword_399C8, &qword_2B778);
          result = sub_2AD84();
          __break(1u);
          return result;
        }

        v64 = v69;
        v31 = v92;
        v32 = v93;
        if ((v68 & 1) == 0)
        {
LABEL_28:
          v24 = v98;
          *(v98 + 8 * (v64 >> 6) + 64) |= 1 << v64;
          *(v24[6] + 8 * v64) = v33;
          v30 = v90;
          sub_B720(v90, v24[7] + *(v89 + 72) * v64);
          sub_BB4C(v32, &qword_39918, &unk_2B740);
          v71 = v24[2];
          v58 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v58)
          {
            goto LABEL_44;
          }

          v24[2] = v72;
          goto LABEL_6;
        }
      }

      v24 = v98;
      v30 = v90;
      sub_B784(v90, *(v98 + 56) + *(v89 + 72) * v64);
      sub_BB4C(v32, &qword_39918, &unk_2B740);
LABEL_6:
      v29 = v91;
LABEL_7:
      ++v28;
      --v26;
    }

    while (v26);
  }

  if (qword_39720 != -1)
  {
LABEL_48:
    swift_once();
  }

  v77 = sub_2A804();
  sub_B884(v77, qword_3AB28);
  v78 = sub_2A7E4();
  v79 = sub_2A9E4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v24[2];
    _os_log_impl(&dword_0, v78, v79, "Writing %ld self patterns", v80, 0xCu);
  }

  sub_4E28(v81);
  return swift_bridgeObjectRelease_n();
}

void sub_4E28(uint64_t a1)
{
  v2 = v1;
  v66 = sub_385C(&qword_399E8, &qword_2C870);
  v4 = __chkstk_darwin(v66);
  v65 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v64 = &v55 - v6;
  v63 = sub_385C(&qword_399F0, &qword_2B790);
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v55 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v56 = v1;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_20058(0, v9, 0);
    v10 = aBlock[0];
    v11 = a1 + 64;
    v12 = sub_2AA84();
    v13 = 0;
    v14 = *(a1 + 36);
    v58 = a1 + 72;
    v59 = v9;
    v60 = v14;
    v61 = a1 + 64;
    v62 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_31;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_32;
      }

      v68 = v13;
      v69 = 1 << v12;
      v71 = v12 >> 6;
      v16 = v8;
      v17 = v66;
      v18 = *(v66 + 48);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = *(v19 + 8 * v12);
      v22 = type metadata accessor for PatternStoreValue(0);
      v23 = v64;
      sub_B7E8(v20 + *(*(v22 - 8) + 72) * v12, &v64[v18]);
      v24 = v10;
      v25 = v65;
      *v65 = v21;
      v26 = *(v17 + 48);
      v8 = v16;
      sub_B720(&v23[v18], v25 + v26);
      sub_B7E8(v25 + v26, &v16[*(v63 + 48)]);
      *v16 = v21;
      swift_bridgeObjectRetain_n();
      v27 = v25;
      v10 = v24;
      sub_BB4C(v27, &qword_399E8, &qword_2C870);
      aBlock[0] = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_20058((v28 > 1), v29 + 1, 1);
        v10 = aBlock[0];
      }

      v10[2] = v29 + 1;
      sub_BBAC(v16, v10 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v29, &qword_399F0, &qword_2B790);
      a1 = v62;
      v15 = 1 << *(v62 + 32);
      if (v12 >= v15)
      {
        goto LABEL_33;
      }

      v11 = v61;
      v30 = *(v61 + 8 * v71);
      if ((v30 & v69) == 0)
      {
        goto LABEL_34;
      }

      LODWORD(v14) = v60;
      if (v60 != *(v62 + 36))
      {
        goto LABEL_35;
      }

      v31 = v30 & (-2 << (v12 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v71 << 6;
        v33 = v71 + 1;
        v34 = (v58 + 8 * v71);
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_B8F8(v12, v60, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_B8F8(v12, v60, 0);
      }

LABEL_4:
      v13 = v68 + 1;
      v12 = v15;
      if (v68 + 1 == v59)
      {
        v2 = v56;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

LABEL_21:
  aBlock[0] = v10;

  sub_8C4C(aBlock);
  if (v2)
  {

    __break(1u);
    return;
  }

  v37 = aBlock[0];
  v38 = v57;
  if (*(aBlock[0] + 16) > 0x14uLL)
  {
    sub_21334(aBlock[0], aBlock[0] + ((*(v67 + 80) + 32) & ~*(v67 + 80)), 0, 0x29uLL);
    v40 = v39;

    v37 = v40;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = 0;
  v42 = objc_opt_self();
  v43 = sub_2A854();
  v44 = sub_2A214();
  v45 = [v42 entityForName:v43 inManagedObjectContext:v44];

  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v41;
    *(v46 + 24) = v38;
    v47 = objc_allocWithZone(NSBatchInsertRequest);
    aBlock[4] = sub_BABC;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6E40;
    aBlock[3] = &unk_354A0;
    v48 = _Block_copy(aBlock);

    v49 = [v47 initWithEntity:v45 managedObjectHandler:v48];
    _Block_release(v48);

    v50 = sub_2A214();
    __chkstk_darwin(v50);
    *(&v55 - 2) = v38;
    *(&v55 - 1) = v49;
    sub_2AA24();

    return;
  }

  if (qword_39720 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v51 = sub_2A804();
  sub_B884(v51, qword_3AB28);
  v52 = sub_2A7E4();
  v53 = sub_2A9F4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Could not write to RECTIFI on-device SELF Pattern storage", v54, 2u);
  }
}

BOOL sub_5544(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_385C(&qword_39918, &unk_2B740);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_385C(&qword_399F8, &qword_2B798);
  __chkstk_darwin(v9 - 8);
  v11 = (&v48 - v10);
  v12 = type metadata accessor for PatternStoreValue(0);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(v16 + 16);
  v48 = a3;
  if (v15 == v17)
  {
    v18 = sub_385C(&qword_399F0, &qword_2B790);
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  else
  {
    if (v15 >= v17)
    {
      __break(1u);
      swift_once();
      v31 = sub_2A804();
      sub_B884(v31, qword_3AB28);
      swift_errorRetain();
      v32 = sub_2A7E4();
      v33 = sub_2A9F4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        swift_getErrorValue();
        v36 = sub_2AD94();
        v38 = sub_1FA70(v36, v37, &v49);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_0, v32, v33, "Could not write a record to RECTIFI on-device Self Pattern storage %s", v34, 0xCu);
        sub_BA2C(v35);
      }

      else
      {
      }

      return a2 == 1;
    }

    v19 = v14;
    v20 = v12;
    v21 = sub_385C(&qword_399F0, &qword_2B790);
    v22 = a1;
    v23 = v8;
    v24 = *(v21 - 8);
    sub_BAC4(v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v15, v11, &qword_399F0, &qword_2B790);
    *(a2 + 24) = v15 + 1;
    v25 = v21;
    v12 = v20;
    v14 = v19;
    (*(v24 + 56))(v11, 0, 1, v25);
    v8 = v23;
    a1 = v22;
  }

  v26 = sub_385C(&qword_399F0, &qword_2B790);
  LODWORD(a2) = (*(*(v26 - 8) + 48))(v11, 1, v26);
  if (a2 == 1)
  {
    sub_BB4C(v11, &qword_399F8, &qword_2B798);
  }

  else
  {
    v27 = *v11;
    sub_B720(v11 + *(v26 + 48), v14);
    type metadata accessor for RECTIFISelfPatternStore();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      v49 = v27;
      v30 = a1;
      sub_385C(&qword_399C8, &qword_2B778);
      sub_B960(&qword_39A00, &qword_39A08, &unk_2BFE8, &protocol conformance descriptor for <A> [A]);
      v39 = sub_29FB4();
      v41 = v40;

      isa = sub_29FF4().super.isa;
      sub_B684(v39, v41);
      [v29 setPattern:{isa, v48}];

      [v29 setFrequency:*&v14[v12[5]]];
      v43 = sub_2A044().super.isa;
      [v29 setTimestamp:v43];

      sub_BAC4(&v14[v12[6]], v8, &qword_39918, &unk_2B740);
      v44 = sub_2A0E4();
      v45 = *(v44 - 8);
      v46 = 0;
      if ((*(v45 + 48))(v8, 1, v44) != 1)
      {
        v46 = sub_2A0B4().super.isa;
        (*(v45 + 8))(v8, v44);
      }

      [v29 setPlusId:v46];

      [v29 setAppLevelAggregation:v14[v12[7]] & 1];
    }

    else
    {
    }

    sub_B904(v14);
  }

  return a2 == 1;
}

void sub_5BCC(uint64_t a1)
{
  v2 = v1;
  v66 = sub_385C(&qword_399E8, &qword_2C870);
  v4 = __chkstk_darwin(v66);
  v65 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v64 = &v55 - v6;
  v63 = sub_385C(&qword_399F0, &qword_2B790);
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v55 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v56 = v1;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_20058(0, v9, 0);
    v10 = aBlock[0];
    v11 = a1 + 64;
    v12 = sub_2AA84();
    v13 = 0;
    v14 = *(a1 + 36);
    v58 = a1 + 72;
    v59 = v9;
    v60 = v14;
    v61 = a1 + 64;
    v62 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_31;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_32;
      }

      v68 = v13;
      v69 = 1 << v12;
      v71 = v12 >> 6;
      v16 = v8;
      v17 = v66;
      v18 = *(v66 + 48);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = *(v19 + 8 * v12);
      v22 = type metadata accessor for PatternStoreValue(0);
      v23 = v64;
      sub_B7E8(v20 + *(*(v22 - 8) + 72) * v12, &v64[v18]);
      v24 = v10;
      v25 = v65;
      *v65 = v21;
      v26 = *(v17 + 48);
      v8 = v16;
      sub_B720(&v23[v18], v25 + v26);
      sub_B7E8(v25 + v26, &v16[*(v63 + 48)]);
      *v16 = v21;
      swift_bridgeObjectRetain_n();
      v27 = v25;
      v10 = v24;
      sub_BB4C(v27, &qword_399E8, &qword_2C870);
      aBlock[0] = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_20058((v28 > 1), v29 + 1, 1);
        v10 = aBlock[0];
      }

      v10[2] = v29 + 1;
      sub_BBAC(v16, v10 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v29, &qword_399F0, &qword_2B790);
      a1 = v62;
      v15 = 1 << *(v62 + 32);
      if (v12 >= v15)
      {
        goto LABEL_33;
      }

      v11 = v61;
      v30 = *(v61 + 8 * v71);
      if ((v30 & v69) == 0)
      {
        goto LABEL_34;
      }

      LODWORD(v14) = v60;
      if (v60 != *(v62 + 36))
      {
        goto LABEL_35;
      }

      v31 = v30 & (-2 << (v12 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v71 << 6;
        v33 = v71 + 1;
        v34 = (v58 + 8 * v71);
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_B8F8(v12, v60, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_B8F8(v12, v60, 0);
      }

LABEL_4:
      v13 = v68 + 1;
      v12 = v15;
      if (v68 + 1 == v59)
      {
        v2 = v56;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

LABEL_21:
  aBlock[0] = v10;

  sub_8C4C(aBlock);
  if (v2)
  {

    __break(1u);
    return;
  }

  v37 = aBlock[0];
  v38 = v57;
  if (*(aBlock[0] + 16) > 0xAuLL)
  {
    sub_21334(aBlock[0], aBlock[0] + ((*(v67 + 80) + 32) & ~*(v67 + 80)), 0, 0x15uLL);
    v40 = v39;

    v37 = v40;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = 0;
  v42 = objc_opt_self();
  v43 = sub_2A854();
  v44 = sub_2A214();
  v45 = [v42 entityForName:v43 inManagedObjectContext:v44];

  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v41;
    *(v46 + 24) = v38;
    v47 = objc_allocWithZone(NSBatchInsertRequest);
    aBlock[4] = sub_B8BC;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6E40;
    aBlock[3] = &unk_35450;
    v48 = _Block_copy(aBlock);

    v49 = [v47 initWithEntity:v45 managedObjectHandler:v48];
    _Block_release(v48);

    v50 = sub_2A214();
    __chkstk_darwin(v50);
    *(&v55 - 2) = v38;
    *(&v55 - 1) = v49;
    sub_2AA24();

    return;
  }

  if (qword_39720 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v51 = sub_2A804();
  sub_B884(v51, qword_3AB28);
  v52 = sub_2A7E4();
  v53 = sub_2A9F4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Could not write to RECTIFI on-device Infrequent Pattern storage", v54, 2u);
  }
}

BOOL sub_62E8(void *a1, uint64_t a2)
{
  v4 = sub_385C(&qword_399F8, &qword_2B798);
  __chkstk_darwin(v4 - 8);
  v6 = (&v39 - v5);
  v7 = type metadata accessor for PatternStoreValue(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(v11 + 16);
  if (v10 == v12)
  {
    v13 = sub_385C(&qword_399F0, &qword_2B790);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  else
  {
    if (v10 >= v12)
    {
      __break(1u);
      swift_once();
      v25 = sub_2A804();
      sub_B884(v25, qword_3AB28);
      swift_errorRetain();
      v26 = sub_2A7E4();
      v27 = sub_2A9F4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40 = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = sub_2AD94();
        v32 = sub_1FA70(v30, v31, &v40);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_0, v26, v27, "Could not write a record to RECTIFI on-device Infrequent Pattern storage %s", v28, 0xCu);
        sub_BA2C(v29);
      }

      else
      {
      }

      goto LABEL_13;
    }

    v14 = a1;
    v15 = sub_385C(&qword_399F0, &qword_2B790);
    v16 = v7;
    v17 = v9;
    v18 = *(v15 - 8);
    sub_BAC4(v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v10, v6, &qword_399F0, &qword_2B790);
    *(a2 + 24) = v10 + 1;
    v19 = v15;
    a1 = v14;
    (*(v18 + 56))(v6, 0, 1, v19);
    v9 = v17;
    v7 = v16;
  }

  v20 = sub_385C(&qword_399F0, &qword_2B790);
  LODWORD(a2) = (*(*(v20 - 8) + 48))(v6, 1, v20);
  if (a2 != 1)
  {
    v21 = *v6;
    sub_B720(v6 + *(v20 + 48), v9);
    type metadata accessor for RECTIFIInfrequentPatternStore();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v40 = v21;
      v24 = a1;
      sub_385C(&qword_399C8, &qword_2B778);
      sub_B960(&qword_39A00, &qword_39A08, &unk_2BFE8, &protocol conformance descriptor for <A> [A]);
      v33 = sub_29FB4();
      v35 = v34;

      isa = sub_29FF4().super.isa;
      sub_B684(v33, v35);
      [v23 setPattern:isa];

      [v23 setFrequency:*&v9[*(v7 + 20)]];
      v37 = sub_2A044().super.isa;
      [v23 setTimestamp:v37];
    }

    else
    {
    }

LABEL_13:
    sub_B904(v9);
    return a2 == 1;
  }

  sub_BB4C(v6, &qword_399F8, &qword_2B798);
  return a2 == 1;
}

id sub_683C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2A214();
  v11 = 0;
  v4 = [v3 executeRequest:a2 error:&v11];

  v5 = v11;
  if (v4)
  {
    v6 = v11;

    v7 = sub_2A214();
    v11 = 0;
    v8 = [v7 save:&v11];

    v5 = v11;
    if (v8)
    {
      return v11;
    }
  }

  v10 = v5;
  sub_29FE4();

  return swift_willThrow();
}

uint64_t sub_6970()
{
}

uint64_t sub_69B0()
{
  v0 = sub_2A224();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_6A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A0A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_385C(&qword_39918, &unk_2B740);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_6B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2A0A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_385C(&qword_39918, &unk_2B740);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_6CBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6CF4(uint64_t a1)
{
  sub_2A0A4();
  if (v1 <= 0x3F)
  {
    sub_6D98(319);
    if (v2 <= 0x3F)
    {
      sub_6DF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6D98(uint64_t a1)
{
  if (!qword_39988)
  {
    sub_2A0E4();
    v1 = sub_2AA54();
    if (!v2)
    {
      atomic_store(v1, &qword_39988);
    }
  }
}

void sub_6DF0()
{
  if (!qword_39990)
  {
    v0 = sub_2AA54();
    if (!v1)
    {
      atomic_store(v0, &qword_39990);
    }
  }
}

uint64_t sub_6E40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_6E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2AD54() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_6F28(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2AC34())
  {
    if (a2 >> 62)
    {
      if (i != sub_2AC34())
      {
        return 0;
      }
    }

    else if (i != *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 == v9)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_148;
    }

    if (((a2 | a1) & 0xC000000000000001) == 0)
    {
      break;
    }

    v39 = a2 & 0xC000000000000001;
    v10 = 4;
    while (2)
    {
      v12 = v10 - 4;
      v13 = v10 - 3;
      if (!__OFADD__(v10 - 4, 1))
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_2AB64();
          if (v39)
          {
            goto LABEL_23;
          }

LABEL_26:
          if (v12 < *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            v14 = *(a2 + 8 * v10);

            goto LABEL_28;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          JUMPOUT(0x78F0);
        }

        if (v12 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          v4 = *(a1 + 8 * v10);

          if (!v39)
          {
            goto LABEL_26;
          }

LABEL_23:
          v14 = sub_2AB64();
LABEL_28:
          v15 = *(v4 + 24) == *(v14 + 24) && *(v4 + 32) == *(v14 + 32);
          if (v15 || (sub_2AD54()) && *(v4 + 40) == *(v14 + 40))
          {
            v16 = 0xE300000000000000;
            v17 = 5395265;
            switch(*(v4 + 41))
            {
              case 1:
                v17 = 5786702;
                break;
              case 2:
                v17 = 4801877;
                break;
              case 3:
                v16 = 0xE800000000000000;
                v17 = 0x505041454E4F4850;
                break;
              case 4:
                v17 = 0x414547415353454DLL;
                v16 = 0xEA00000000005050;
                break;
              case 5:
                v17 = 0x5245444E494D4552;
                v18 = 1096041811;
                goto LABEL_45;
              case 6:
                v17 = 0xD000000000000017;
                v16 = 0x800000000002C990;
                break;
              case 7:
                v17 = 0x4552434D52414C41;
                goto LABEL_43;
              case 8:
                v16 = 0xEE00505041454C47;
                v17 = 0x474F544D52414C41;
                break;
              case 9:
                v17 = 0x4450554D52414C41;
LABEL_43:
                v18 = 1095062593;
LABEL_45:
                v16 = v18 | 0xEE00505000000000;
                break;
              case 0xA:
                v17 = 0x4145524345544F4ELL;
                goto LABEL_49;
              case 0xB:
                v17 = 0x454C454445544F4ELL;
LABEL_49:
                v16 = 0xED00005050414554;
                break;
              case 0xC:
                v17 = 0x5041594D444E4946;
                v16 = 0xE900000000000050;
                break;
              case 0xD:
                v16 = 0xE700000000000000;
                v17 = 0x4E574F4E4B4E55;
                break;
              default:
                break;
            }

            v19 = 0xE300000000000000;
            v20 = 5395265;
            switch(*(v14 + 41))
            {
              case 1:
                if (v17 != 5786702)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 2:
                if (v17 != 4801877)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 3:
                v19 = 0xE800000000000000;
                if (v17 != 0x505041454E4F4850)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 4:
                v19 = 0xEA00000000005050;
                if (v17 != 0x414547415353454DLL)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 5:
                v21 = 0x5245444E494D4552;
                v22 = 1096041811;
                goto LABEL_68;
              case 6:
                v19 = 0x800000000002C990;
                if (v17 != 0xD000000000000017)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 7:
                v21 = 0x4552434D52414C41;
                goto LABEL_66;
              case 8:
                v19 = 0xEE00505041454C47;
                if (v17 != 0x474F544D52414C41)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 9:
                v21 = 0x4450554D52414C41;
LABEL_66:
                v22 = 1095062593;
LABEL_68:
                v19 = v22 | 0xEE00505000000000;
                if (v17 != v21)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xA:
                v20 = 0x4145524345544F4ELL;
                v19 = 0xED00005050414554;
                goto LABEL_75;
              case 0xB:
                v19 = 0xED00005050414554;
                if (v17 != 0x454C454445544F4ELL)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xC:
                v19 = 0xE900000000000050;
                if (v17 != 0x5041594D444E4946)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              case 0xD:
                v19 = 0xE700000000000000;
                if (v17 != 0x4E574F4E4B4E55)
                {
                  goto LABEL_18;
                }

                goto LABEL_76;
              default:
LABEL_75:
                if (v17 != v20)
                {
                  goto LABEL_18;
                }

LABEL_76:
                if (v16 == v19)
                {
                }

                else
                {
LABEL_18:
                  v11 = sub_2AD54();

                  if ((v11 & 1) == 0)
                  {
                    return 0;
                  }
                }

                ++v10;
                if (v13 != i)
                {
                  continue;
                }

                return 1;
            }
          }

          return 0;
        }

LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      break;
    }

    __break(1u);
LABEL_141:
    ;
  }

  v24 = a1 + 32;
  v25 = a2 + 32;
  v26 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v27 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    if (!v26)
    {
      __break(1u);
      goto LABEL_145;
    }

    if (!v27)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v29 = *v24;
    v30 = *v25;
    v31 = *(*v24 + 24) == *(*v25 + 24) && *(*v24 + 32) == *(*v25 + 32);
    if (v31 || (sub_2AD54()) && *(v29 + 40) == *(v30 + 40))
    {
      v32 = *(v29 + 41);
      v33 = *(v30 + 41);
      v34 = 0xE300000000000000;
      v35 = 5395265;
      switch(v32)
      {
        case 1:
          v35 = 5786702;
          break;
        case 2:
          v35 = 4801877;
          break;
        case 3:
          v34 = 0xE800000000000000;
          v35 = 0x505041454E4F4850;
          break;
        case 4:
          v35 = 0x414547415353454DLL;
          v34 = 0xEA00000000005050;
          break;
        case 5:
          v35 = 0x5245444E494D4552;
          v34 = 0xEE00505041544553;
          break;
        case 6:
          v35 = 0xD000000000000017;
          v34 = 0x800000000002C990;
          break;
        case 7:
          v35 = 0x4552434D52414C41;
          goto LABEL_101;
        case 8:
          v34 = 0xEE00505041454C47;
          v35 = 0x474F544D52414C41;
          break;
        case 9:
          v35 = 0x4450554D52414C41;
LABEL_101:
          v34 = 0xEE00505041455441;
          break;
        case 10:
          v35 = 0x4145524345544F4ELL;
          goto LABEL_106;
        case 11:
          v35 = 0x454C454445544F4ELL;
LABEL_106:
          v34 = 0xED00005050414554;
          break;
        case 12:
          v35 = 0x5041594D444E4946;
          v34 = 0xE900000000000050;
          break;
        case 13:
          v34 = 0xE700000000000000;
          v35 = 0x4E574F4E4B4E55;
          break;
        default:
          break;
      }

      v36 = 0xE300000000000000;
      v37 = 5395265;
      switch(v33)
      {
        case 1:
          if (v35 != 5786702)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 2:
          if (v35 != 4801877)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 3:
          v36 = 0xE800000000000000;
          if (v35 != 0x505041454E4F4850)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 4:
          v36 = 0xEA00000000005050;
          if (v35 != 0x414547415353454DLL)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 5:
          v36 = 0xEE00505041544553;
          if (v35 != 0x5245444E494D4552)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 6:
          v36 = 0x800000000002C990;
          if (v35 != 0xD000000000000017)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 7:
          v38 = 0x4552434D52414C41;
          goto LABEL_122;
        case 8:
          v36 = 0xEE00505041454C47;
          if (v35 != 0x474F544D52414C41)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 9:
          v38 = 0x4450554D52414C41;
LABEL_122:
          v36 = 0xEE00505041455441;
          if (v35 != v38)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 10:
          v37 = 0x4145524345544F4ELL;
          goto LABEL_131;
        case 11:
          v37 = 0x454C454445544F4ELL;
LABEL_131:
          v36 = 0xED00005050414554;
          goto LABEL_132;
        case 12:
          v36 = 0xE900000000000050;
          if (v35 != 0x5041594D444E4946)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        case 13:
          v36 = 0xE700000000000000;
          if (v35 != 0x4E574F4E4B4E55)
          {
            goto LABEL_82;
          }

          goto LABEL_133;
        default:
LABEL_132:
          if (v35 != v37)
          {
            goto LABEL_82;
          }

LABEL_133:
          if (v34 == v36)
          {
          }

          else
          {
LABEL_82:
            v28 = sub_2AD54();

            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          --v27;
          --v26;
          v24 += 8;
          v25 += 8;
          result = 1;
          if (--i)
          {
            continue;
          }

          return result;
      }
    }

    return 0;
  }
}

unint64_t sub_79D0(uint64_t a1)
{
  sub_2ADA4();

  sub_2A8B4();

  sub_2ADB4(*(a1 + 40));
  sub_1A884(*(a1 + 41));
  sub_2A8B4();

  v2 = sub_2ADC4();

  return sub_8344(a1, v2);
}

unint64_t sub_7A88(unint64_t a1)
{
  sub_2ADA4();
  sub_A620(v4, a1);
  v2 = sub_2ADC4();

  return sub_881C(a1, v2);
}

uint64_t sub_7AF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_385C(&qword_39A10, &qword_2B7A0);
  v33 = v4;
  v6 = sub_2AC64();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + 8 * v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v33 & 1) == 0)
    {
    }

    sub_2ADA4();

    sub_2A8B4();

    sub_2ADB4(*(v24 + 40));
    sub_2A8B4();

    v15 = sub_2ADC4();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + 8 * v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
    v5 = v32;
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x7F4CLL);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v33)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_7F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PatternStoreValue(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_385C(&qword_399E0, &unk_2B780);
  v36 = v4;
  result = sub_2AC64();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_B720(v24, v37);
      }

      else
      {
        sub_B7E8(v24, v37);
      }

      sub_2ADA4();
      sub_A620(v38, v22);
      result = sub_2ADC4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_B720(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_82B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PatternStoreValue(0);
  result = sub_B720(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_8344(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);
      v9 = *(v8 + 24) == *(a1 + 24) && *(v8 + 32) == *(a1 + 32);
      if (v9 || (sub_2AD54()) && *(v8 + 40) == *(a1 + 40))
      {
        v10 = *(v8 + 41);
        v11 = 0xE300000000000000;
        v12 = 5395265;
        switch(v10)
        {
          case 1:
            v12 = 5786702;
            break;
          case 2:
            v12 = 4801877;
            break;
          case 3:
            v11 = 0xE800000000000000;
            v12 = 0x505041454E4F4850;
            break;
          case 4:
            v11 = 0xEA00000000005050;
            v12 = 0x414547415353454DLL;
            break;
          case 5:
            v12 = 0x5245444E494D4552;
            v11 = 0xEE00505041544553;
            break;
          case 6:
            v12 = 0xD000000000000017;
            v11 = 0x800000000002C990;
            break;
          case 7:
            v12 = 0x4552434D52414C41;
            v11 = 0xEE00505041455441;
            break;
          case 8:
            v11 = 0xEE00505041454C47;
            v12 = 0x474F544D52414C41;
            break;
          case 9:
            v12 = 0x4450554D52414C41;
            v11 = 0xEE00505041455441;
            break;
          case 10:
            v12 = 0x4145524345544F4ELL;
            goto LABEL_24;
          case 11:
            v12 = 0x454C454445544F4ELL;
LABEL_24:
            v11 = 0xED00005050414554;
            break;
          case 12:
            v11 = 0xE900000000000050;
            v12 = 0x5041594D444E4946;
            break;
          case 13:
            v11 = 0xE700000000000000;
            v12 = 0x4E574F4E4B4E55;
            break;
          default:
            break;
        }

        v13 = 0xE300000000000000;
        v14 = 5395265;
        switch(*(a1 + 41))
        {
          case 1:
            if (v12 == 5786702)
            {
              goto LABEL_51;
            }

            goto LABEL_3;
          case 2:
            if (v12 != 4801877)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 3:
            v13 = 0xE800000000000000;
            if (v12 != 0x505041454E4F4850)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 4:
            v13 = 0xEA00000000005050;
            if (v12 != 0x414547415353454DLL)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 5:
            v13 = 0xEE00505041544553;
            if (v12 != 0x5245444E494D4552)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 6:
            v13 = 0x800000000002C990;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 7:
            v15 = 0x4552434D52414C41;
            goto LABEL_41;
          case 8:
            v13 = 0xEE00505041454C47;
            if (v12 != 0x474F544D52414C41)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 9:
            v15 = 0x4450554D52414C41;
LABEL_41:
            v13 = 0xEE00505041455441;
            if (v12 != v15)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xA:
            v14 = 0x4145524345544F4ELL;
            v13 = 0xED00005050414554;
            goto LABEL_50;
          case 0xB:
            v13 = 0xED00005050414554;
            if (v12 != 0x454C454445544F4ELL)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xC:
            v13 = 0xE900000000000050;
            if (v12 != 0x5041594D444E4946)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          case 0xD:
            v13 = 0xE700000000000000;
            if (v12 != 0x4E574F4E4B4E55)
            {
              goto LABEL_3;
            }

            goto LABEL_51;
          default:
LABEL_50:
            if (v12 != v14)
            {
              goto LABEL_3;
            }

LABEL_51:
            if (v11 == v13)
            {

              return v4;
            }

LABEL_3:
            v7 = sub_2AD54();

            if (v7)
            {
              return v4;
            }

            break;
        }
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_881C(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_6F28(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_88D4()
{
  v1 = v0;
  sub_385C(&qword_39A10, &qword_2B7A0);
  v2 = *v0;
  v3 = sub_2AC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_8A38()
{
  v1 = v0;
  v2 = type metadata accessor for PatternStoreValue(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_385C(&qword_399E0, &unk_2B780);
  v5 = *v0;
  v6 = sub_2AC54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_B7E8(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_B720(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

Swift::Int sub_8C4C(uint64_t *a1)
{
  v2 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_17664(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_8D00(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_8D00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2AD34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_385C(&qword_399F0, &qword_2B790);
        v6 = sub_2A934();
        v6[2] = v5;
      }

      v7 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_9170(v8, v9, a1, v4);
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
    return sub_8E44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_385C(&qword_399F0, &qword_2B790);
  v9 = __chkstk_darwin(v8);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v47 = &v35 - v14;
  v15 = __chkstk_darwin(v13);
  v46 = &v35 - v16;
  result = __chkstk_darwin(v15);
  v45 = &v35 - v19;
  v37 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v42 = -v21;
    v43 = v20;
    v23 = a1 - a3;
    v36 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v40 = v22;
    v41 = a3;
    v38 = v24;
    v39 = v23;
    v49 = v23;
    while (1)
    {
      v25 = v45;
      sub_BAC4(v24, v45, &qword_399F0, &qword_2B790);
      v26 = v46;
      sub_BAC4(v22, v46, &qword_399F0, &qword_2B790);
      v27 = v47;
      sub_BAC4(v25, v47, &qword_399F0, &qword_2B790);

      v28 = v27 + *(v8 + 48);
      v29 = type metadata accessor for PatternStoreValue(0);
      v50 = *(v28 + *(v29 + 20));
      sub_B904(v28);
      v30 = v48;
      sub_BAC4(v26, v48, &qword_399F0, &qword_2B790);

      v31 = v30 + *(v8 + 48);
      v32 = *(v31 + *(v29 + 20));
      sub_B904(v31);
      sub_BB4C(v26, &qword_399F0, &qword_2B790);
      result = sub_BB4C(v25, &qword_399F0, &qword_2B790);
      if (v32 >= v50)
      {
LABEL_4:
        a3 = v41 + 1;
        v22 = v40 + v36;
        v23 = v39 - 1;
        v24 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_BBAC(v24, v44, &qword_399F0, &qword_2B790);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_BBAC(v33, v22, &qword_399F0, &qword_2B790);
      v22 += v42;
      v24 += v42;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9170(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v152 = sub_385C(&qword_399F0, &qword_2B790);
  v142 = *(v152 - 8);
  v8 = __chkstk_darwin(v152);
  v138 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v147 = &v130 - v11;
  v12 = __chkstk_darwin(v10);
  v150 = &v130 - v13;
  v14 = __chkstk_darwin(v12);
  v149 = &v130 - v15;
  v16 = __chkstk_darwin(v14);
  v148 = &v130 - v17;
  result = __chkstk_darwin(v16);
  v151 = &v130 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_98:
    v23 = *v134;
    if (!*v134)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_169D0(v22);
      v22 = result;
    }

    v153 = v22;
    v125 = *(v22 + 2);
    if (v125 >= 2)
    {
      while (*a3)
      {
        v126 = v22;
        v22 = (v125 - 1);
        v127 = *&v126[16 * v125];
        v128 = *&v126[16 * v125 + 24];
        sub_9CA8(*a3 + *(v142 + 72) * v127, *a3 + *(v142 + 72) * *&v126[16 * v125 + 16], *a3 + *(v142 + 72) * v128, v23);
        if (v5)
        {
        }

        if (v128 < v127)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_169D0(v126);
        }

        if (v125 - 2 >= *(v126 + 2))
        {
          goto LABEL_124;
        }

        v129 = &v126[16 * v125];
        *v129 = v127;
        *(v129 + 1) = v128;
        v153 = v126;
        result = sub_16944(v22);
        v22 = v153;
        v125 = *(v153 + 2);
        if (v125 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v131 = a4;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v23 = &qword_399F0;
  v136 = a3;
  while (1)
  {
    if (v21 + 1 >= v20)
    {
      v47 = v21 + 1;
    }

    else
    {
      v144 = v20;
      v132 = v22;
      v133 = v5;
      v146 = *a3;
      v24 = v146;
      v25 = *(v142 + 72);
      v26 = v146 + v25 * (v21 + 1);
      v27 = v151;
      sub_BAC4(v26, v151, &qword_399F0, &qword_2B790);
      v28 = v24 + v25 * v21;
      v22 = v148;
      sub_BAC4(v28, v148, &qword_399F0, &qword_2B790);
      v29 = v149;
      sub_BAC4(v27, v149, &qword_399F0, &qword_2B790);

      v30 = v152;
      v31 = *(v152 + 48);
      v135 = v21;
      v32 = v29 + v31;
      v23 = &qword_399F0;
      v5 = type metadata accessor for PatternStoreValue(0);
      v141 = *(v32 + *(v5 + 20));
      sub_B904(v32);
      v33 = v150;
      sub_BAC4(v22, v150, &qword_399F0, &qword_2B790);

      v34 = v33 + *(v30 + 48);
      v35 = *(v34 + *(v5 + 20));
      v139 = v5;
      v140 = v35;
      sub_B904(v34);
      sub_BB4C(v22, &qword_399F0, &qword_2B790);
      result = sub_BB4C(v151, &qword_399F0, &qword_2B790);
      v36 = v135 + 2;
      v143 = v25;
      v37 = v146 + v25 * (v135 + 2);
      while (v144 != v36)
      {
        LODWORD(v146) = v140 < v141;
        v38 = v151;
        sub_BAC4(v37, v151, &qword_399F0, &qword_2B790);
        v39 = v148;
        sub_BAC4(v26, v148, &qword_399F0, &qword_2B790);
        v40 = v149;
        sub_BAC4(v38, v149, &qword_399F0, &qword_2B790);

        v41 = v152;
        v42 = v40 + *(v152 + 48);
        v23 = &qword_399F0;
        v5 = v26;
        v43 = v139;
        v145 = *(v42 + *(v139 + 20));
        sub_B904(v42);
        v44 = v150;
        sub_BAC4(v39, v150, &qword_399F0, &qword_2B790);

        v45 = v44 + *(v41 + 48);
        v46 = *(v45 + *(v43 + 20));
        sub_B904(v45);
        v22 = &qword_2B790;
        sub_BB4C(v39, &qword_399F0, &qword_2B790);
        result = sub_BB4C(v38, &qword_399F0, &qword_2B790);
        ++v36;
        v37 += v143;
        v26 = v5 + v143;
        if (((v146 ^ (v46 >= v145)) & 1) == 0)
        {
          v47 = v36 - 1;
          goto LABEL_11;
        }
      }

      v47 = v144;
LABEL_11:
      v21 = v135;
      if (v140 >= v141)
      {
        v22 = v132;
        v5 = v133;
        a3 = v136;
      }

      else
      {
        a3 = v136;
        if (v47 < v135)
        {
          goto LABEL_127;
        }

        if (v135 >= v47)
        {
          v22 = v132;
          v5 = v133;
        }

        else
        {
          v48 = v47;
          v49 = v143 * (v47 - 1);
          v50 = v47 * v143;
          v144 = v47;
          v51 = v135;
          v52 = v135 * v143;
          do
          {
            if (v51 != --v48)
            {
              v53 = *v136;
              if (!*v136)
              {
                goto LABEL_133;
              }

              sub_BBAC(v53 + v52, v138, &qword_399F0, &qword_2B790);
              if (v52 < v49 || v53 + v52 >= (v53 + v50))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_BBAC(v138, v53 + v49, &qword_399F0, &qword_2B790);
            }

            ++v51;
            v49 -= v143;
            v50 -= v143;
            v52 += v143;
          }

          while (v51 < v48);
          v22 = v132;
          v5 = v133;
          v21 = v135;
          a3 = v136;
          v47 = v144;
        }
      }
    }

    v54 = a3[1];
    if (v47 < v54)
    {
      if (__OFSUB__(v47, v21))
      {
        goto LABEL_126;
      }

      if (v47 - v21 < v131)
      {
        if (__OFADD__(v21, v131))
        {
          goto LABEL_128;
        }

        if (v21 + v131 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v21 + v131;
        }

        if (v55 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v47 != v55)
        {
          break;
        }
      }
    }

    v56 = v47;
    if (v47 < v21)
    {
      goto LABEL_125;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    v139 = v56;
    if ((result & 1) == 0)
    {
      result = sub_1F0B4(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v58 = *(v22 + 2);
    v57 = *(v22 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_1F0B4((v57 > 1), v58 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v59;
    v60 = &v22[16 * v58];
    v61 = v139;
    *(v60 + 4) = v21;
    *(v60 + 5) = v61;
    if (!*v134)
    {
      goto LABEL_135;
    }

    if (v58)
    {
      v62 = *v134;
      while (1)
      {
        v63 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v64 = *(v22 + 4);
          v65 = *(v22 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_114;
          }

          v80 = &v22[16 * v59];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_117;
          }

          v86 = &v22[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_121;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v59 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = &v22[16 * v59];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_116;
        }

        v93 = &v22[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_119;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v101 = v63 - 1;
        if (v63 - 1 >= v59)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v102 = *&v22[16 * v101 + 32];
        v103 = *&v22[16 * v63 + 40];
        sub_9CA8(*a3 + *(v142 + 72) * v102, *a3 + *(v142 + 72) * *&v22[16 * v63 + 32], *a3 + *(v142 + 72) * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_169D0(v22);
        }

        if (v101 >= *(v22 + 2))
        {
          goto LABEL_111;
        }

        v104 = &v22[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v153 = v22;
        result = sub_16944(v63);
        v22 = v153;
        v59 = *(v153 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v22[16 * v59 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_112;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_113;
      }

      v75 = &v22[16 * v59];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_115;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_118;
      }

      if (v79 >= v71)
      {
        v97 = &v22[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_122;
        }

        if (v66 < v100)
        {
          v63 = v59 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v139;
    if (v139 >= v20)
    {
      goto LABEL_98;
    }
  }

  v132 = v22;
  v133 = v5;
  v105 = *a3;
  v106 = *(v142 + 72);
  v107 = *a3 + v106 * (v47 - 1);
  v145 = -v106;
  v146 = v105;
  v135 = v21;
  v108 = v21 - v47;
  v137 = v106;
  v109 = v105 + v47 * v106;
  v110 = v152;
  v139 = v55;
LABEL_89:
  v143 = v107;
  v144 = v47;
  v140 = v109;
  v141 = v108;
  v111 = v109;
  v112 = v107;
  while (1)
  {
    v113 = v151;
    sub_BAC4(v111, v151, &qword_399F0, &qword_2B790);
    v114 = v148;
    sub_BAC4(v112, v148, &qword_399F0, &qword_2B790);
    v115 = v149;
    sub_BAC4(v113, v149, &qword_399F0, &qword_2B790);

    v116 = v115 + *(v110 + 48);
    v117 = type metadata accessor for PatternStoreValue(0);
    v118 = *(v116 + *(v117 + 20));
    v119 = v116;
    v110 = v152;
    sub_B904(v119);
    v120 = v150;
    sub_BAC4(v114, v150, &qword_399F0, &qword_2B790);

    v121 = v120 + *(v110 + 48);
    v23 = &qword_399F0;
    v122 = *(v121 + *(v117 + 20));
    sub_B904(v121);
    sub_BB4C(v114, &qword_399F0, &qword_2B790);
    result = sub_BB4C(v113, &qword_399F0, &qword_2B790);
    if (v122 >= v118)
    {
LABEL_88:
      v47 = v144 + 1;
      v107 = v143 + v137;
      v108 = v141 - 1;
      v109 = v140 + v137;
      v56 = v139;
      if (v144 + 1 != v139)
      {
        goto LABEL_89;
      }

      v22 = v132;
      v5 = v133;
      v21 = v135;
      a3 = v136;
      if (v139 < v135)
      {
        goto LABEL_125;
      }

      goto LABEL_37;
    }

    if (!v146)
    {
      break;
    }

    v123 = v147;
    sub_BBAC(v111, v147, &qword_399F0, &qword_2B790);
    swift_arrayInitWithTakeFrontToBack();
    sub_BBAC(v123, v112, &qword_399F0, &qword_2B790);
    v112 += v145;
    v111 += v145;
    if (__CFADD__(v108++, 1))
    {
      goto LABEL_88;
    }
  }

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
  return result;
}

uint64_t sub_9CA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_385C(&qword_399F0, &qword_2B790);
  v8 = __chkstk_darwin(v66);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v60 = &v52 - v11;
  v12 = __chkstk_darwin(v10);
  v59 = &v52 - v13;
  result = __chkstk_darwin(v12);
  v63 = &v52 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_58;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_59;
  }

  v19 = (a2 - a1) / v17;
  v69 = a1;
  v68 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4;
    v37 = a4 + v21;
    if (v21 >= 1)
    {
      v38 = -v17;
      v39 = v37;
      v64 = a1;
      v55 = -v17;
      v40 = v59;
      do
      {
        v53 = v37;
        v41 = a2 + v38;
        v65 = a2 + v38;
        v57 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v69 = a2;
            v67 = v53;
            goto LABEL_56;
          }

          v54 = v37;
          v62 = a3 + v38;
          v42 = v39 + v38;
          v43 = v63;
          v58 = a3;
          sub_BAC4(v39 + v38, v63, &qword_399F0, &qword_2B790);
          v44 = v66;
          sub_BAC4(v41, v40, &qword_399F0, &qword_2B790);
          v45 = v60;
          sub_BAC4(v43, v60, &qword_399F0, &qword_2B790);

          v46 = v45 + *(v44 + 48);
          v47 = type metadata accessor for PatternStoreValue(0);
          v48 = *(v46 + *(v47 + 20));
          sub_B904(v46);
          v49 = v61;
          sub_BAC4(v40, v61, &qword_399F0, &qword_2B790);

          v50 = v49 + *(v44 + 48);
          v51 = *(v50 + *(v47 + 20));
          sub_B904(v50);
          sub_BB4C(v40, &qword_399F0, &qword_2B790);
          sub_BB4C(v63, &qword_399F0, &qword_2B790);
          if (v51 < v48)
          {
            break;
          }

          v37 = v39 + v38;
          a3 = v62;
          if (v58 < v39 || v62 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v64;
            v41 = v65;
            v38 = v55;
          }

          else
          {
            a1 = v64;
            v41 = v65;
            v38 = v55;
            if (v58 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v42;
          a2 = v57;
          if (v42 <= v56)
          {
            goto LABEL_54;
          }
        }

        a3 = v62;
        if (v58 < v57 || v62 >= v57)
        {
          a2 = v65;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v64;
          v37 = v54;
          v38 = v55;
        }

        else
        {
          a1 = v64;
          a2 = v65;
          v37 = v54;
          v38 = v55;
          if (v58 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v56);
    }

LABEL_54:
    v69 = a2;
    v67 = v37;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v20;
    v67 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v62 = a3;
      v57 = v17;
      do
      {
        v64 = a1;
        v65 = a2;
        v23 = a2;
        v24 = v63;
        sub_BAC4(v23, v63, &qword_399F0, &qword_2B790);
        v25 = v59;
        sub_BAC4(a4, v59, &qword_399F0, &qword_2B790);
        v26 = v60;
        sub_BAC4(v24, v60, &qword_399F0, &qword_2B790);

        v27 = v66;
        v28 = v26 + *(v66 + 48);
        v29 = a4;
        v30 = type metadata accessor for PatternStoreValue(0);
        v31 = *(v28 + *(v30 + 20));
        sub_B904(v28);
        v32 = v61;
        sub_BAC4(v25, v61, &qword_399F0, &qword_2B790);

        v33 = v32 + *(v27 + 48);
        v34 = *(v33 + *(v30 + 20));
        sub_B904(v33);
        sub_BB4C(v25, &qword_399F0, &qword_2B790);
        sub_BB4C(v24, &qword_399F0, &qword_2B790);
        if (v34 >= v31)
        {
          v36 = v64;
          a2 = v65;
          v35 = v57;
          a4 = v29 + v57;
          if (v64 < v29 || v64 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v68 = a4;
        }

        else
        {
          v35 = v57;
          v36 = v64;
          a2 = v65 + v57;
          a4 = v29;
          if (v64 < v65 || v64 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v36 + v35;
        v69 = a1;
      }

      while (a4 < v58 && a2 < v62);
    }
  }

LABEL_56:
  sub_A2EC(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_A2EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_385C(&qword_399F0, &qword_2B790);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_A3DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PatternStoreValue(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_A4C0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_7A88(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_8A38();
      goto LABEL_7;
    }

    sub_7F84(v13, a3 & 1);
    v20 = sub_7A88(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_385C(&qword_399C8, &qword_2B778);
    result = sub_2AD84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for PatternStoreValue(0) - 8) + 72) * v10;

    return sub_B784(a1, v18);
  }

LABEL_13:
  sub_82B0(v10, a2, a1, v16);
}

void sub_A620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2AC34();
    sub_2ADB4(v8);
    v3 = sub_2AC34();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_2ADB4(*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)));
    v3 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    JUMPOUT(0xAA78);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      v5 = sub_2AB64();

      sub_2A8B4();

      sub_2ADB4(*(v5 + 40));
      ++v4;
      sub_2A8B4();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6;

      sub_2A8B4();

      sub_2ADB4(*(v7 + 40));
      sub_2A8B4();

      ++v6;
      --v3;
    }

    while (v3);
  }
}

void sub_AAE8(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v56 = a3;
  v58 = a2;
  v4 = sub_385C(&qword_39918, &unk_2B740);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v55 = type metadata accessor for PatternStoreValue(0);
  v7 = __chkstk_darwin(v55);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v46 - v9;
  v10 = sub_2A0A4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v65 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v57 = &v46 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - v17;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; v16 = v45)
  {
    v50 = v6;
    v20 = v18;
    v18 = 0;
    v52 = qword_398C0;
    v67 = a1 & 0xFFFFFFFFFFFFFF8;
    v68 = a1 & 0xC000000000000001;
    v63 = v16;
    v64 = (v11 + 4);
    v46 = (v11 + 2);
    v51 = (v11 + 1);
    v21 = v20;
    v48 = v20;
    v49 = a1;
    v47 = i;
    while (1)
    {
      if (v68)
      {
        v16 = sub_2AB64();
      }

      else
      {
        if (v18 >= *(v67 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a1 + 8 * v18 + 32);
      }

      v22 = v16;
      v6 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v23 = [v16 pattern];
      if (v23)
      {
        v11 = v23;
        v24 = sub_2A004();
        v26 = v25;

        v27 = [v22 timestamp];
        if (v27)
        {
          v28 = v57;
          v29 = v27;
          sub_2A074();

          v30 = v24;
          v31 = v63;
          v60 = *v64;
          v60(v21, v28, v63);
          sub_385C(&qword_399C8, &qword_2B778);
          sub_B960(&qword_399D0, &qword_399D8, &unk_2C010, &protocol conformance descriptor for <A> [A]);
          v61 = v30;
          v62 = v26;
          v32 = v66;
          sub_29F84();
          if (v32)
          {
            (*v51)(v21, v31);
            sub_B684(v61, v62);

            return;
          }

          v66 = 0;
          v59 = v69;
          (*v46)(v65, v21, v31);
          v33 = [v22 frequency];
          v34 = [v22 plusId];
          if (v34)
          {
            v35 = v50;
            v36 = v34;
            sub_2A0C4();

            v37 = 0;
          }

          else
          {
            v37 = 1;
            v35 = v50;
          }

          v38 = sub_2A0E4();
          (*(*(v38 - 8) + 56))(v35, v37, 1, v38);
          v39 = [v22 appLevelAggregation];
          v40 = v53;
          v60(v53, v65, v63);
          v41 = v55;
          *(v40 + *(v55 + 20)) = v33;
          sub_BBAC(v35, v40 + *(v41 + 24), &qword_39918, &unk_2B740);
          *(v40 + *(v41 + 28)) = v39;
          v42 = v54;
          sub_B720(v40, v54);
          v43 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = *v43;
          v11 = &v69;
          sub_A4C0(v42, v59, isUniquelyReferenced_nonNull_native);

          *v43 = v69;
          sub_B684(v61, v62);
          v21 = v48;
          (*v51)();
          a1 = v49;
          i = v47;
        }

        else
        {
          sub_B684(v24, v26);
        }
      }

      ++v18;
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v45 = v16;
    i = sub_2AC34();
  }
}

void sub_B0A4(unint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, char **a3)
{
  v64 = a2;
  v62 = type metadata accessor for PatternStoreValue(0);
  v60 = *(v62 - 8);
  v5 = __chkstk_darwin(v62);
  v69 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v50 - v7;
  v8 = sub_2A0A4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_30:
    v49 = v12;
    v15 = sub_2AC34();
    v12 = v49;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
    if (v15)
    {
LABEL_3:
      v16 = v12;
      v68 = a3;
      v17 = 0;
      v59 = qword_398C0;
      a3 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
      v71 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v57 = v14;
      v58 = (v9 + 32);
      v55 = (v9 + 16);
      v56 = (v9 + 8);
      v53 = v15;
      v54 = isUniquelyReferenced_nonNull_native;
      v52 = v12;
      v51 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
      do
      {
        if (a3)
        {
          v12 = sub_2AB64();
        }

        else
        {
          if (v17 >= *(v71 + 16))
          {
            goto LABEL_27;
          }

          v12 = *(isUniquelyReferenced_nonNull_native + 8 * v17 + 32);
        }

        v9 = v12;
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v19 = [v12 pattern];
        if (v19)
        {
          v14 = v15;
          v20 = isUniquelyReferenced_nonNull_native;
          v72 = v9;
          v21 = v19;
          v22 = sub_2A004();
          v24 = v23;

          v9 = v72;
          v25 = [v72 timestamp];
          if (v25)
          {
            v65 = v17 + 1;
            v26 = v63;
            v27 = v25;
            sub_2A074();

            v28 = v57;
            (*v58)(v57, v26, v16);
            sub_385C(&qword_399C8, &qword_2B778);
            sub_B960(&qword_399D0, &qword_399D8, &unk_2C010, &protocol conformance descriptor for <A> [A]);
            v66 = v22;
            v67 = v24;
            v29 = v70;
            sub_29F84();
            if (v29)
            {
              (*v56)(v28, v16);
              sub_B684(v66, v67);

              return;
            }

            v70 = 0;
            v14 = v73;
            v30 = v16;
            v31 = v61;
            v32 = v28;
            (*v55)(v61, v28, v30);
            v33 = [v72 frequency];
            v34 = v62;
            v35 = *(v62 + 24);
            v36 = sub_2A0E4();
            (*(*(v36 - 8) + 56))(v31 + v35, 1, 1, v36);
            *(v31 + *(v34 + 20)) = v33;
            *(v31 + *(v34 + 28)) = 2;
            sub_B720(v31, v69);
            v37 = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v73 = *v37;
            a3 = v73;
            v9 = sub_7A88(v14);
            v39 = a3[2];
            v40 = (v38 & 1) == 0;
            v12 = &v39[v40];
            if (__OFADD__(v39, v40))
            {
              goto LABEL_28;
            }

            v41 = v38;
            if (a3[3] >= v12)
            {
              v18 = v65;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_8A38();
              }

              v15 = v53;
              isUniquelyReferenced_nonNull_native = v54;
              a3 = v73;
              if ((v41 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              sub_7F84(v12, isUniquelyReferenced_nonNull_native);
              v42 = sub_7A88(v14);
              if ((v41 & 1) != (v43 & 1))
              {
                sub_2AD84();
                __break(1u);
                return;
              }

              v9 = v42;
              v15 = v53;
              isUniquelyReferenced_nonNull_native = v54;
              v18 = v65;
              a3 = v73;
              if ((v41 & 1) == 0)
              {
LABEL_17:
                a3[(v9 >> 6) + 8] = (a3[(v9 >> 6) + 8] | (1 << v9));
                *&a3[6][8 * v9] = v14;
                v12 = sub_B720(v69, &a3[7][*(v60 + 72) * v9]);
                v44 = a3[2];
                v45 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (v45)
                {
                  goto LABEL_29;
                }

                a3[2] = v46;
                goto LABEL_23;
              }
            }

            sub_B784(v69, &a3[7][*(v60 + 72) * v9]);

LABEL_23:
            v47 = v67;
            *v68 = a3;
            sub_B684(v66, v47);
            v48 = v32;
            v16 = v52;
            (*v56)(v48);
            a3 = v51;
            v9 = v72;
            goto LABEL_5;
          }

          sub_B684(v22, v24);
          isUniquelyReferenced_nonNull_native = v20;
          v15 = v14;
        }

LABEL_5:

        ++v17;
      }

      while (v18 != v15);
    }
  }
}

uint64_t sub_B684(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_B6D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PatternStoreValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B84C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B884(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_B8C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B8F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_B904(uint64_t a1)
{
  v2 = type metadata accessor for PatternStoreValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B960(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B6D8(&qword_399C8, &qword_2B778);
    sub_B9E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B9E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PatternItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BA2C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_BA7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BAC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_385C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BB4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_385C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_BBAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_385C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id static RECTIFISelfPatternStore.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_2A854();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_BCB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RECTIFISelfPatternStore();
  result = sub_2AB44();
  *a2 = result;
  return result;
}

BOOL sub_BCF4(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = &_swiftEmptySetSingleton;
  v42 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v7 = *a2;
  v35 = *(*a2 + 2);
  if (!v35)
  {
    goto LABEL_80;
  }

  v36 = v7 + 32;

  v33 = a2;
  swift_beginAccess();
  v8 = 0;
  v9 = a3 + 32;
  v39 = a3;
  v34 = v7;
  while (2)
  {
    if (v8 >= *(v7 + 2))
    {
      goto LABEL_87;
    }

    v11 = &v36[16 * v8];
    v13 = *v11;
    v12 = v11[1];
    v41 = &_swiftEmptySetSingleton;
    v14 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      JUMPOUT(0xC364);
    }

    v15 = 0;
    v37 = v8 + 1;
    v38 = v8;
    while (1)
    {
      v17 = v14;
      if (v14 <= 0)
      {
        if ((v14 != 0) | v15 & 1)
        {
          goto LABEL_77;
        }

        v14 = 0;
        v15 = 1;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      else
      {
        --v14;
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }
      }

      if (v13 >= *(a3 + 16))
      {
        goto LABEL_85;
      }

      v18 = *(v9 + 8 * v13);
      if ((v18 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v17 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_86;
      }

      v19 = *(v18 + 8 * v17 + 32);

      if (a1)
      {
        goto LABEL_19;
      }

LABEL_9:
      sub_26738(&v40, v19);
    }

    v19 = sub_2AB64();

    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_19:
    v20 = *(v19 + 24) == *(a1 + 24) && *(v19 + 32) == *(a1 + 32);
    if (!v20 && (sub_2AD54() & 1) == 0 || *(v19 + 40) != *(a1 + 40))
    {
      goto LABEL_9;
    }

    v21 = 0xE300000000000000;
    v22 = 5395265;
    switch(*(v19 + 41))
    {
      case 1:
        v22 = 5786702;
        break;
      case 2:
        v22 = 4801877;
        break;
      case 3:
        v21 = 0xE800000000000000;
        v22 = 0x505041454E4F4850;
        break;
      case 4:
        v22 = 0x414547415353454DLL;
        v21 = 0xEA00000000005050;
        break;
      case 5:
        v22 = 0x5245444E494D4552;
        v23 = 1096041811;
        goto LABEL_36;
      case 6:
        v22 = 0xD000000000000017;
        v21 = 0x800000000002C990;
        break;
      case 7:
        v22 = 0x4552434D52414C41;
        goto LABEL_34;
      case 8:
        v21 = 0xEE00505041454C47;
        v22 = 0x474F544D52414C41;
        break;
      case 9:
        v22 = 0x4450554D52414C41;
LABEL_34:
        v23 = 1095062593;
LABEL_36:
        v21 = v23 | 0xEE00505000000000;
        break;
      case 0xA:
        v22 = 0x4145524345544F4ELL;
        goto LABEL_40;
      case 0xB:
        v22 = 0x454C454445544F4ELL;
LABEL_40:
        v21 = 0xED00005050414554;
        break;
      case 0xC:
        v22 = 0x5041594D444E4946;
        v21 = 0xE900000000000050;
        break;
      case 0xD:
        v21 = 0xE700000000000000;
        v22 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v24 = 0xE300000000000000;
    v25 = 5395265;
    switch(*(a1 + 41))
    {
      case 1:
        if (v22 != 5786702)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 2:
        if (v22 != 4801877)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 3:
        v24 = 0xE800000000000000;
        if (v22 != 0x505041454E4F4850)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 4:
        v24 = 0xEA00000000005050;
        if (v22 != 0x414547415353454DLL)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 5:
        v26 = 0x5245444E494D4552;
        v27 = 1096041811;
        goto LABEL_59;
      case 6:
        v24 = 0x800000000002C990;
        if (v22 != 0xD000000000000017)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 7:
        v26 = 0x4552434D52414C41;
        goto LABEL_57;
      case 8:
        v24 = 0xEE00505041454C47;
        if (v22 != 0x474F544D52414C41)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 9:
        v26 = 0x4450554D52414C41;
LABEL_57:
        v27 = 1095062593;
LABEL_59:
        v24 = v27 | 0xEE00505000000000;
        if (v22 != v26)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xA:
        v25 = 0x4145524345544F4ELL;
        v24 = 0xED00005050414554;
        goto LABEL_66;
      case 0xB:
        v24 = 0xED00005050414554;
        if (v22 != 0x454C454445544F4ELL)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xC:
        v24 = 0xE900000000000050;
        if (v22 != 0x5041594D444E4946)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      case 0xD:
        v24 = 0xE700000000000000;
        if (v22 != 0x4E574F4E4B4E55)
        {
          goto LABEL_8;
        }

        goto LABEL_67;
      default:
LABEL_66:
        if (v22 != v25)
        {
          goto LABEL_8;
        }

LABEL_67:
        if (v21 != v24)
        {
LABEL_8:
          v16 = sub_2AD54();

          a3 = v39;
          if (v16)
          {
            goto LABEL_73;
          }

          goto LABEL_9;
        }

        a3 = v39;
LABEL_73:
        v28 = *v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_28E88(v28);
          *v33 = v28;
        }

        if (v38 >= *(v28 + 2))
        {
          goto LABEL_89;
        }

        v30 = &v28[16 * v38];
        *(v30 + 4) = v13;
        *(v30 + 5) = v17;

LABEL_77:
        if (v38)
        {
          v10 = sub_C5A8(v41, v42);

          v42 = v10;
        }

        else
        {
          sub_10E1C(v41);
        }

        v7 = v34;
        v8 = v37;
        if (v37 != v35)
        {
          continue;
        }

        v6 = v42;
LABEL_80:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v31 = sub_2AAB4();
        }

        else
        {
          v31 = *(v6 + 16);
        }

        return v31 != 0;
    }
  }
}

void *sub_C408(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_CDEC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_E9EC(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

void *sub_C5A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!v3)
    {
      sub_2AAA4();
      if (!sub_2AAD4())
      {
LABEL_75:

        return &_swiftEmptySetSingleton;
      }

      type metadata accessor for PatternItem();
      v7 = a1 + 56;
LABEL_15:
      swift_dynamicCast();
      if (!*(a1 + 16) || (sub_2ADA4(), , sub_2A8B4(), , sub_2ADB4(*(v23 + 40)), sub_2A8B4(), , v8 = sub_2ADC4(), v9 = -1 << *(a1 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = ~v9;
      while (1)
      {
        v13 = *(*(a1 + 48) + 8 * v10);
        v14 = *(v13 + 24) == *(v23 + 24) && *(v13 + 32) == *(v23 + 32);
        if (v14 || (sub_2AD54()) && *(v13 + 40) == *(v23 + 40))
        {
          v15 = 0xE300000000000000;
          v16 = 5395265;
          switch(*(v13 + 41))
          {
            case 1:
              v16 = 5786702;
              break;
            case 2:
              v16 = 4801877;
              break;
            case 3:
              v15 = 0xE800000000000000;
              v16 = 0x505041454E4F4850;
              break;
            case 4:
              v16 = 0x414547415353454DLL;
              v15 = 0xEA00000000005050;
              break;
            case 5:
              v16 = 0x5245444E494D4552;
              v17 = 1096041811;
              goto LABEL_37;
            case 6:
              v16 = 0xD000000000000017;
              v15 = 0x800000000002C990;
              break;
            case 7:
              v16 = 0x4552434D52414C41;
              goto LABEL_35;
            case 8:
              v15 = 0xEE00505041454C47;
              v16 = 0x474F544D52414C41;
              break;
            case 9:
              v16 = 0x4450554D52414C41;
LABEL_35:
              v17 = 1095062593;
LABEL_37:
              v15 = v17 | 0xEE00505000000000;
              break;
            case 0xA:
              v16 = 0x4145524345544F4ELL;
              goto LABEL_41;
            case 0xB:
              v16 = 0x454C454445544F4ELL;
LABEL_41:
              v15 = 0xED00005050414554;
              break;
            case 0xC:
              v16 = 0x5041594D444E4946;
              v15 = 0xE900000000000050;
              break;
            case 0xD:
              v15 = 0xE700000000000000;
              v16 = 0x4E574F4E4B4E55;
              break;
            default:
              break;
          }

          v18 = 0xE300000000000000;
          v19 = 5395265;
          switch(*(v23 + 41))
          {
            case 1:
              if (v16 == 5786702)
              {
                goto LABEL_68;
              }

              goto LABEL_18;
            case 2:
              if (v16 != 4801877)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 3:
              v18 = 0xE800000000000000;
              if (v16 != 0x505041454E4F4850)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 4:
              v18 = 0xEA00000000005050;
              if (v16 != 0x414547415353454DLL)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 5:
              v20 = 0x5245444E494D4552;
              v21 = 1096041811;
              goto LABEL_60;
            case 6:
              v18 = 0x800000000002C990;
              if (v16 != 0xD000000000000017)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 7:
              v20 = 0x4552434D52414C41;
              goto LABEL_58;
            case 8:
              v18 = 0xEE00505041454C47;
              if (v16 != 0x474F544D52414C41)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 9:
              v20 = 0x4450554D52414C41;
LABEL_58:
              v21 = 1095062593;
LABEL_60:
              v18 = v21 | 0xEE00505000000000;
              if (v16 != v20)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xA:
              v19 = 0x4145524345544F4ELL;
              v18 = 0xED00005050414554;
              goto LABEL_67;
            case 0xB:
              v18 = 0xED00005050414554;
              if (v16 != 0x454C454445544F4ELL)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xC:
              v18 = 0xE900000000000050;
              if (v16 != 0x5041594D444E4946)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            case 0xD:
              v18 = 0xE700000000000000;
              if (v16 != 0x4E574F4E4B4E55)
              {
                goto LABEL_18;
              }

              goto LABEL_68;
            default:
LABEL_67:
              if (v16 != v19)
              {
                goto LABEL_18;
              }

LABEL_68:
              if (v15 == v18)
              {

LABEL_72:
                v22 = *(&_swiftEmptySetSingleton + 2);
                if (*(&_swiftEmptySetSingleton + 3) <= v22)
                {
                  sub_27298(v22 + 1);
                }

                sub_27954(v23, &_swiftEmptySetSingleton);
LABEL_14:
                if (!sub_2AAD4())
                {
                  goto LABEL_75;
                }

                goto LABEL_15;
              }

LABEL_18:
              v12 = sub_2AD54();

              if (v12)
              {
                goto LABEL_72;
              }

              break;
          }
        }

        v10 = (v10 + 1) & v11;
        if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    if (a2 < 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_2AAB4();
    a2 = sub_27184(v4, v5);
    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:

    return sub_C408(a1, a2);
  }

  return sub_D780(a1, a2);
}

void *sub_CDEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2AAA4();
    type metadata accessor for PatternItem();
    sub_EA20();
    sub_2A9C4();
    v5 = v50;
    v6 = v51;
    v7 = v52;
    v8 = v53;
    v9 = v54;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v42 = 0;
  v13 = (v7 + 64) >> 6;
  v44 = v13;
  v47 = a4;
  v48 = a4 + 56;
  v45 = v6;
  v46 = v5;
LABEL_8:
  v14 = v8;
  v15 = v9;
  while (v5 < 0)
  {
    if (!sub_2AAD4())
    {
      goto LABEL_81;
    }

    type metadata accessor for PatternItem();
    swift_dynamicCast();
    v19 = v49;
    v8 = v14;
    v18 = v15;
    if (!v49)
    {
      goto LABEL_81;
    }

LABEL_19:
    v20 = v47;
    sub_2ADA4();

    sub_2A8B4();

    sub_2ADB4(*(v19 + 40));
    sub_2A8B4();

    v21 = sub_2ADC4();
    v22 = -1 << *(v47 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & *(v48 + 8 * (v23 >> 6))) != 0)
    {
      v26 = ~v22;
      while (1)
      {
        v28 = *(*(v20 + 48) + 8 * v23);
        v29 = *(v28 + 24) == *(v19 + 24) && *(v28 + 32) == *(v19 + 32);
        if (v29 || (sub_2AD54()) && *(v28 + 40) == *(v19 + 40))
        {
          break;
        }

LABEL_22:
        v23 = (v23 + 1) & v26;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if ((*(v48 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
        {
          goto LABEL_9;
        }
      }

      v30 = *(v28 + 41);
      v31 = 0xE300000000000000;
      v32 = 5395265;
      switch(v30)
      {
        case 1:
          v32 = 5786702;
          break;
        case 2:
          v32 = 4801877;
          break;
        case 3:
          v31 = 0xE800000000000000;
          v32 = 0x505041454E4F4850;
          break;
        case 4:
          v32 = 0x414547415353454DLL;
          v31 = 0xEA00000000005050;
          break;
        case 5:
          v32 = 0x5245444E494D4552;
          v33 = 1096041811;
          goto LABEL_40;
        case 6:
          v32 = 0xD000000000000017;
          v31 = 0x800000000002C990;
          break;
        case 7:
          v32 = 0x4552434D52414C41;
          goto LABEL_38;
        case 8:
          v31 = 0xEE00505041454C47;
          v32 = 0x474F544D52414C41;
          break;
        case 9:
          v32 = 0x4450554D52414C41;
LABEL_38:
          v33 = 1095062593;
LABEL_40:
          v31 = v33 | 0xEE00505000000000;
          break;
        case 10:
          v32 = 0x4145524345544F4ELL;
          goto LABEL_44;
        case 11:
          v32 = 0x454C454445544F4ELL;
LABEL_44:
          v31 = 0xED00005050414554;
          break;
        case 12:
          v32 = 0x5041594D444E4946;
          v31 = 0xE900000000000050;
          break;
        case 13:
          v31 = 0xE700000000000000;
          v32 = 0x4E574F4E4B4E55;
          break;
        default:
          break;
      }

      v34 = 0xE300000000000000;
      v35 = 5395265;
      switch(*(v19 + 41))
      {
        case 1:
          if (v32 != 5786702)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 2:
          if (v32 != 4801877)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 3:
          v34 = 0xE800000000000000;
          if (v32 != 0x505041454E4F4850)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 4:
          v34 = 0xEA00000000005050;
          if (v32 != 0x414547415353454DLL)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 5:
          v36 = 0x5245444E494D4552;
          v37 = 1096041811;
          goto LABEL_63;
        case 6:
          v34 = 0x800000000002C990;
          if (v32 != 0xD000000000000017)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 7:
          v36 = 0x4552434D52414C41;
          goto LABEL_61;
        case 8:
          v34 = 0xEE00505041454C47;
          if (v32 != 0x474F544D52414C41)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 9:
          v36 = 0x4450554D52414C41;
LABEL_61:
          v37 = 1095062593;
LABEL_63:
          v34 = v37 | 0xEE00505000000000;
          if (v32 != v36)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xA:
          v35 = 0x4145524345544F4ELL;
          v34 = 0xED00005050414554;
          goto LABEL_70;
        case 0xB:
          v34 = 0xED00005050414554;
          if (v32 != 0x454C454445544F4ELL)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xC:
          v34 = 0xE900000000000050;
          if (v32 != 0x5041594D444E4946)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        case 0xD:
          v34 = 0xE700000000000000;
          if (v32 != 0x4E574F4E4B4E55)
          {
            goto LABEL_21;
          }

          goto LABEL_71;
        default:
LABEL_70:
          if (v32 != v35)
          {
            goto LABEL_21;
          }

LABEL_71:
          if (v31 == v34)
          {

            goto LABEL_76;
          }

LABEL_21:
          v27 = sub_2AD54();

          v20 = v47;
          if ((v27 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_76:
          v38 = a1[v24];
          a1[v24] = v38 | v25;
          v14 = v8;
          v5 = v46;
          v9 = v18;
          v15 = v18;
          v29 = (v38 & v25) == 0;
          v13 = v44;
          v6 = v45;
          if (!v29)
          {
            continue;
          }

          if (!__OFADD__(v42++, 1))
          {
            goto LABEL_8;
          }

          __break(1u);
          break;
      }

      goto LABEL_81;
    }

LABEL_9:

    v14 = v8;
    v5 = v46;
    v15 = v18;
    v13 = v44;
    v6 = v45;
  }

  v16 = v14;
  v17 = v15;
  v8 = v14;
  if (v15)
  {
LABEL_15:
    v18 = (v17 - 1) & v17;
    v19 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v19)
    {
      goto LABEL_81;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      JUMPOUT(0xD648);
    }

    if (v8 >= v13)
    {
      break;
    }

    v17 = *(v6 + 8 * v8);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_81:
  sub_EA78(v5);

  return sub_16B78(a1, a2, v42, v47);
}

void *sub_D6F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_D944(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_D780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_D944((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_D6F0(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_D944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_74:
    v67 = 0;
    v33 = 0;
    v34 = v5 + 56;
    v35 = 1 << *(v5 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v5 + 56);
    v38 = (v35 + 63) >> 6;
    v39 = v4 + 56;
    v63 = v38;
    while (1)
    {
LABEL_79:
      if (v37)
      {
        v40 = __clz(__rbit64(v37));
        v71 = (v37 - 1) & v37;
      }

      else
      {
        v41 = v33;
        do
        {
          v33 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_148;
          }

          if (v33 >= v38)
          {
            goto LABEL_146;
          }

          v42 = *(v34 + 8 * v33);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v71 = (v42 - 1) & v42;
      }

      v66 = v40 | (v33 << 6);
      v43 = *(*(v5 + 48) + 8 * v66);
      sub_2ADA4();

      sub_2A8B4();

      sub_2ADB4(*(v43 + 40));
      sub_2A8B4();

      v44 = sub_2ADC4();
      v45 = a4;
      v46 = -1 << *(a4 + 32);
      v47 = v44 & ~v46;
      if ((*(v39 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }

LABEL_78:

      v38 = v63;
      v37 = v71;
    }

    v48 = ~v46;
    while (1)
    {
      v50 = *(*(v45 + 48) + 8 * v47);
      v51 = *(v50 + 24) == *(v43 + 24) && *(v50 + 32) == *(v43 + 32);
      if (v51 || (sub_2AD54()) && *(v50 + 40) == *(v43 + 40))
      {
        break;
      }

LABEL_89:
      v47 = (v47 + 1) & v48;
      if (((*(v39 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v52 = 0xE300000000000000;
    v53 = 5395265;
    switch(*(v50 + 41))
    {
      case 1:
        v53 = 5786702;
        break;
      case 2:
        v53 = 4801877;
        break;
      case 3:
        v52 = 0xE800000000000000;
        v53 = 0x505041454E4F4850;
        break;
      case 4:
        v53 = 0x414547415353454DLL;
        v52 = 0xEA00000000005050;
        break;
      case 5:
        v53 = 0x5245444E494D4552;
        v54 = 1096041811;
        goto LABEL_107;
      case 6:
        v53 = 0xD000000000000017;
        v52 = 0x800000000002C990;
        break;
      case 7:
        v53 = 0x4552434D52414C41;
        goto LABEL_105;
      case 8:
        v52 = 0xEE00505041454C47;
        v53 = 0x474F544D52414C41;
        break;
      case 9:
        v53 = 0x4450554D52414C41;
LABEL_105:
        v54 = 1095062593;
LABEL_107:
        v52 = v54 | 0xEE00505000000000;
        break;
      case 0xA:
        v53 = 0x4145524345544F4ELL;
        goto LABEL_111;
      case 0xB:
        v53 = 0x454C454445544F4ELL;
LABEL_111:
        v52 = 0xED00005050414554;
        break;
      case 0xC:
        v53 = 0x5041594D444E4946;
        v52 = 0xE900000000000050;
        break;
      case 0xD:
        v52 = 0xE700000000000000;
        v53 = 0x4E574F4E4B4E55;
        break;
      default:
        break;
    }

    v55 = 0xE300000000000000;
    v56 = 5395265;
    switch(*(v43 + 41))
    {
      case 1:
        if (v53 != 5786702)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 2:
        if (v53 != 4801877)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 3:
        v55 = 0xE800000000000000;
        if (v53 != 0x505041454E4F4850)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 4:
        v55 = 0xEA00000000005050;
        if (v53 != 0x414547415353454DLL)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 5:
        v57 = 0x5245444E494D4552;
        v58 = 1096041811;
        goto LABEL_130;
      case 6:
        v55 = 0x800000000002C990;
        if (v53 != 0xD000000000000017)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 7:
        v57 = 0x4552434D52414C41;
        goto LABEL_128;
      case 8:
        v55 = 0xEE00505041454C47;
        if (v53 != 0x474F544D52414C41)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 9:
        v57 = 0x4450554D52414C41;
LABEL_128:
        v58 = 1095062593;
LABEL_130:
        v55 = v58 | 0xEE00505000000000;
        if (v53 != v57)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xA:
        v56 = 0x4145524345544F4ELL;
        v55 = 0xED00005050414554;
        goto LABEL_137;
      case 0xB:
        v55 = 0xED00005050414554;
        if (v53 != 0x454C454445544F4ELL)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xC:
        v55 = 0xE900000000000050;
        if (v53 != 0x5041594D444E4946)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      case 0xD:
        v55 = 0xE700000000000000;
        if (v53 != 0x4E574F4E4B4E55)
        {
          goto LABEL_88;
        }

        goto LABEL_138;
      default:
LABEL_137:
        if (v53 != v56)
        {
          goto LABEL_88;
        }

LABEL_138:
        if (v52 == v55)
        {

          v5 = a3;
          goto LABEL_143;
        }

LABEL_88:
        v49 = sub_2AD54();

        v5 = a3;
        v45 = a4;
        if ((v49 & 1) == 0)
        {
          goto LABEL_89;
        }

LABEL_143:
        *(a1 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        v32 = __OFADD__(v67++, 1);
        v38 = v63;
        v37 = v71;
        if (!v32)
        {
          goto LABEL_79;
        }

        __break(1u);
        break;
    }
  }

  else
  {
    v67 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v70 = a3 + 56;
    v61 = v11;
    v62 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v65 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      sub_2ADA4();

      sub_2A8B4();

      sub_2ADB4(*(v15 + 40));
      sub_2A8B4();

      v16 = sub_2ADC4();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      v4 = a4;
      if (((1 << v18) & *(v70 + 8 * (v18 >> 6))) != 0)
      {
        v21 = ~v17;
        while (1)
        {
          v23 = *(*(v5 + 48) + 8 * v18);
          v24 = *(v23 + 24) == *(v15 + 24) && *(v23 + 32) == *(v15 + 32);
          if (v24 || (sub_2AD54()) && *(v23 + 40) == *(v15 + 40))
          {
            break;
          }

LABEL_17:
          v18 = (v18 + 1) & v21;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if ((*(v70 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
          {
            goto LABEL_6;
          }
        }

        v25 = 0xE300000000000000;
        v26 = 5395265;
        switch(*(v23 + 41))
        {
          case 1:
            v26 = 5786702;
            break;
          case 2:
            v26 = 4801877;
            break;
          case 3:
            v25 = 0xE800000000000000;
            v26 = 0x505041454E4F4850;
            break;
          case 4:
            v26 = 0x414547415353454DLL;
            v25 = 0xEA00000000005050;
            break;
          case 5:
            v26 = 0x5245444E494D4552;
            v27 = 1096041811;
            goto LABEL_35;
          case 6:
            v26 = 0xD000000000000017;
            v25 = 0x800000000002C990;
            break;
          case 7:
            v26 = 0x4552434D52414C41;
            goto LABEL_33;
          case 8:
            v25 = 0xEE00505041454C47;
            v26 = 0x474F544D52414C41;
            break;
          case 9:
            v26 = 0x4450554D52414C41;
LABEL_33:
            v27 = 1095062593;
LABEL_35:
            v25 = v27 | 0xEE00505000000000;
            break;
          case 0xA:
            v26 = 0x4145524345544F4ELL;
            goto LABEL_39;
          case 0xB:
            v26 = 0x454C454445544F4ELL;
LABEL_39:
            v25 = 0xED00005050414554;
            break;
          case 0xC:
            v26 = 0x5041594D444E4946;
            v25 = 0xE900000000000050;
            break;
          case 0xD:
            v25 = 0xE700000000000000;
            v26 = 0x4E574F4E4B4E55;
            break;
          default:
            break;
        }

        v28 = 0xE300000000000000;
        v29 = 5395265;
        switch(*(v15 + 41))
        {
          case 1:
            if (v26 != 5786702)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 2:
            if (v26 != 4801877)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 3:
            v28 = 0xE800000000000000;
            if (v26 != 0x505041454E4F4850)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 4:
            v28 = 0xEA00000000005050;
            if (v26 != 0x414547415353454DLL)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 5:
            v30 = 0x5245444E494D4552;
            v31 = 1096041811;
            goto LABEL_58;
          case 6:
            v28 = 0x800000000002C990;
            if (v26 != 0xD000000000000017)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 7:
            v30 = 0x4552434D52414C41;
            goto LABEL_56;
          case 8:
            v28 = 0xEE00505041454C47;
            if (v26 != 0x474F544D52414C41)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 9:
            v30 = 0x4450554D52414C41;
LABEL_56:
            v31 = 1095062593;
LABEL_58:
            v28 = v31 | 0xEE00505000000000;
            if (v26 != v30)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xA:
            v29 = 0x4145524345544F4ELL;
            v28 = 0xED00005050414554;
            goto LABEL_65;
          case 0xB:
            v28 = 0xED00005050414554;
            if (v26 != 0x454C454445544F4ELL)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xC:
            v28 = 0xE900000000000050;
            if (v26 != 0x5041594D444E4946)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          case 0xD:
            v28 = 0xE700000000000000;
            if (v26 != 0x4E574F4E4B4E55)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          default:
LABEL_65:
            if (v26 != v29)
            {
              goto LABEL_16;
            }

LABEL_66:
            if (v25 == v28)
            {

              v5 = a3;
              v4 = a4;
              goto LABEL_71;
            }

LABEL_16:
            v22 = sub_2AD54();

            v5 = a3;
            v4 = a4;
            if ((v22 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_71:
            v7 = v62;
            a1[v19] |= v20;
            v10 = v65;
            v32 = __OFADD__(v67++, 1);
            v11 = v61;
            if (!v32)
            {
              continue;
            }

            __break(1u);
            break;
        }

        goto LABEL_74;
      }

LABEL_6:

      v11 = v61;
      v7 = v62;
      v10 = v65;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_148:
        __break(1u);
        JUMPOUT(0xE7C4);
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v65 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }
  }

LABEL_146:

  return sub_16B78(a1, a2, v67, v5);
}

uint64_t sub_E914(uint64_t a1, uint64_t a2, char *a3)
{
  v11 = a3;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  while (1)
  {
    v8 = v7;
    if (!v7)
    {
LABEL_9:

      return v8 != 0;
    }

    if (v5 < v7)
    {
      break;
    }

    --v7;
    if (v8 - 1 >= v4)
    {
      goto LABEL_11;
    }

    v10 = sub_BCF4(v9, &v11, a1);

    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void *sub_E9EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_CDEC(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_EA20()
{
  result = qword_39AC0;
  if (!qword_39AC0)
  {
    type metadata accessor for PatternItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AC0);
  }

  return result;
}

id RECTIFIInfrequentPatternStore.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id RECTIFISelfPatternStore.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RECTIFISelfPatternStore();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id RECTIFISelfPatternStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RECTIFISelfPatternStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EBEC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_bridgeObjectRetain_n();
    sub_26DE4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_ED0C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  sub_2A064();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = v4;
    type metadata accessor for SequenceItem();
    v6 = swift_allocObject();
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = v3;
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0xE000000000000000;
    *(v6 + 40) = 0;
    *a2 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_EE10(uint64_t *a2@<X8>)
{

  sub_2A064();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = v3;
    sub_385C(&qword_39EB0, &qword_2BA30);
    sub_F8AC();
    v5 = sub_2A834();
    v7 = v6;

    type metadata accessor for SequenceItem();
    v8 = swift_allocObject();
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = _swiftEmptyArrayStorage;
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;
    *(v8 + 32) = v7;
    *(v8 + 40) = 512;
    *a2 = v8;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_EF98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_2ADA4();

      sub_2A8B4();
      v15 = sub_2ADC4();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_2AD54() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void sub_F198(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_385C(&qword_398A0, &qword_2B6B0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_2B890;

    sub_2A064();
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        v3 = v2;
        sub_385C(&qword_39EB0, &qword_2BA30);
        sub_F8AC();
        v4 = sub_2A834();
        v6 = v5;

        type metadata accessor for SequenceItem();
        v7 = swift_allocObject();
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 64) = _swiftEmptyArrayStorage;
        *(v7 + 16) = v3;
        *(v7 + 24) = v4;
        *(v7 + 32) = v6;
        *(v7 + 40) = 256;
        *(v1 + 32) = v7;
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_F300(uint64_t a1, uint64_t a2, char a3)
{
  v30 = &_swiftEmptySetSingleton;
  v29 = _swiftEmptyArrayStorage;
  v26 = *(a1 + 16);
  if (!v26)
  {
LABEL_31:

    return;
  }

  v3 = 0;
  v25 = a1 + 32;
  while (1)
  {
    v4 = (v25 + 24 * v3);
    v5 = *v4;
    if (!*(*v4 + 16))
    {
      goto LABEL_4;
    }

    v6 = v4[1];
    v7 = *(v4 + 16);
    v8 = *(v4 + 17);
    v10 = *(v5 + 32);
    v9 = *(v5 + 40);
    v11 = v30;
    if (v30[2])
    {
      sub_2ADA4();

      sub_2A8B4();
      v12 = sub_2ADC4();
      v13 = -1 << *(v11 + 32);
      v14 = v12 & ~v13;
      if ((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (v11[6] + 16 * v14);
          v17 = *v16 == v10 && v16[1] == v9;
          if (v17 || (sub_2AD54() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_17:
    sub_26DE4(&v27, v10, v9);

    if (v7)
    {
      sub_2A064();
      v6 = v18;
    }

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v6 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    if (v6 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2AB34(21);

    v27 = 0xD000000000000013;
    v28 = 0x800000000002D020;
    if (v8)
    {
      v19._countAndFlagsBits = 1702195828;
    }

    else
    {
      v19._countAndFlagsBits = 0x65736C6166;
    }

    if (v8)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v19._object = v20;
    sub_2A8C4(v19);

    v21 = v27;
    v22 = v28;
    type metadata accessor for SequenceItem();
    v23 = swift_allocObject();
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = v5;
    *(v23 + 16) = v6;
    *(v23 + 24) = v21;
    *(v23 + 32) = v22;
    *(v23 + 40) = 1;
    *(v23 + 41) = a3;
    sub_2A904();
    if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2A924();
    }

    sub_2A944();
LABEL_4:
    if (++v3 == v26)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_F644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_23:

    return;
  }

  v2 = (a1 + 50);
  while (1)
  {
    v3 = *(v2 - 18);
    v4 = *(v2 - 10);
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    swift_bridgeObjectRetain_n();
    v8 = sub_29090(v3);

    if (sub_EF98(&_swiftEmptySetSingleton, v8))
    {

      goto LABEL_4;
    }

    sub_EBEC(v8);

    if (v5)
    {
      sub_2A064();
      v4 = v9;
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v4 <= -9.22337204e18)
    {
      goto LABEL_25;
    }

    if (v4 >= 9.22337204e18)
    {
      goto LABEL_26;
    }

    sub_2AB34(21);

    if (v6)
    {
      v10._countAndFlagsBits = 1702195828;
    }

    else
    {
      v10._countAndFlagsBits = 0x65736C6166;
    }

    if (v6)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v10._object = v11;
    sub_2A8C4(v10);

    if (v7 == 14)
    {
      v12 = 13;
    }

    else
    {
      v12 = v7;
    }

    type metadata accessor for SequenceItem();
    v13 = swift_allocObject();
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = v3;
    *(v13 + 16) = v4;
    *(v13 + 24) = 0xD000000000000013;
    *(v13 + 32) = 0x800000000002D020;
    *(v13 + 40) = 1;
    *(v13 + 41) = v12;
    sub_2A904();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2A924();
    }

    sub_2A944();
LABEL_4:
    v2 += 24;
    if (!--v1)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_F8AC()
{
  result = qword_39EB8;
  if (!qword_39EB8)
  {
    sub_B6D8(&qword_39EB0, &qword_2BA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39EB8);
  }

  return result;
}

__n128 sub_F910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_F924(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_F96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_F9E8(uint64_t a1)
{
  v48 = sub_2A104();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2A144();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = *(v4 + 16);
  v8 = v4 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v11 = *(v8 + 56);
  v45 = (v2 + 8);
  v46 = v9;
  v43 = v11;
  v44 = (v8 - 8);
  v12 = _swiftEmptyArrayStorage;
  v9(v6, v10, v49);
  while (1)
  {
    v14 = v47;
    sub_2A134();
    v15 = sub_2A0F4();
    v17 = v16;
    (*v45)(v14, v48);
    if (v15 == 0x797469746E45 && v17 == 0xE600000000000000)
    {
    }

    else
    {
      v18 = sub_2AD54();

      if ((v18 & 1) == 0)
      {
        result = (*v44)(v6, v49);
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_24;
      }
    }

    v19 = v8;
    v20 = sub_2A124();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = sub_1F1C4(0, 1, 1, _swiftEmptyArrayStorage);
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1F1C4((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v23;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v28 = sub_2A114();
    if (v29)
    {
      result = (*v44)(v6, v49);
    }

    else
    {
      v50 = v28;
      v30 = sub_2AD44();
      v32 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1F1C4(0, *(v24 + 2) + 1, 1, v24);
      }

      v34 = *(v24 + 2);
      v33 = *(v24 + 3);
      if (v34 >= v33 >> 1)
      {
        v24 = sub_1F1C4((v33 > 1), v34 + 1, 1, v24);
      }

      result = (*v44)(v6, v49);
      *(v24 + 2) = v34 + 1;
      v35 = &v24[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
    }

    v8 = v19;
LABEL_24:
    v36 = *(v24 + 2);
    v37 = *(v12 + 2);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v38 <= *(v12 + 3) >> 1)
    {
      if (*(v24 + 2))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v39 = v37 + v36;
      }

      else
      {
        v39 = v37;
      }

      result = sub_1F1C4(result, v39, 1, v12);
      v12 = result;
      if (*(v24 + 2))
      {
LABEL_33:
        if ((*(v12 + 3) >> 1) - *(v12 + 2) < v36)
        {
          goto LABEL_41;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v40 = *(v12 + 2);
          v41 = __OFADD__(v40, v36);
          v42 = v40 + v36;
          if (v41)
          {
            goto LABEL_42;
          }

          *(v12 + 2) = v42;
        }

        goto LABEL_4;
      }
    }

    if (v36)
    {
      goto LABEL_40;
    }

LABEL_4:
    v10 += v43;
    if (!--v7)
    {
      return v12;
    }

    v46(v6, v10, v49);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_FE6C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_2ABD4();
    v9 = (a3 + 50);
    while (1)
    {
      v10 = *(v9 - 10);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v14[0] = *(v9 - 18);
      v14[1] = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;

      a1(&v18, v14);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 24;

      sub_2ABB4();
      sub_2ABE4();
      sub_2ABF4();
      sub_2ABC4();
      if (!--v6)
      {
        return v19;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_FF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_20078(0, v1, 0);
  v3 = v2 + 56;
  result = sub_2AA84();
  v5 = result;
  v6 = 0;
  v24 = v2 + 64;
  v25 = v1;
  v26 = v2 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v6;
    v28 = *(v2 + 36);
    v9 = (*(v2 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    sub_385C(&qword_3A170, &qword_2BC50);
    v12 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2B5D0;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11;
    v14 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v14 >= v15 >> 1)
    {
      result = sub_20078((v15 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v16 = &_swiftEmptyArrayStorage[3 * v14];
    v16[4] = v13;
    v16[5] = 0;
    *(v16 + 48) = 1;
    *(v16 + 49) = 3328;
    v7 = 1 << *(v12 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v2 = v12;
    v3 = v26;
    v17 = *(v26 + 8 * v8);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (v24 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_B8F8(v5, v28, 0);
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_B8F8(v5, v28, 0);
    }

LABEL_4:
    v6 = v27 + 1;
    v5 = v7;
    if (v27 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

char *sub_10208(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  result = sub_200F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = _swiftEmptyArrayStorage;
    v23 = v2;
    while (1)
    {
      if (__OFADD__(v5, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v2 = sub_2AC34();
        goto LABEL_3;
      }

      v26 = v5 + 1;
      v27 = v3;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_2AB64();
      }

      else
      {
        if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }
      }

      v7 = *(v6 + 64);
      v8 = *(v7 + 16);
      if (!v8)
      {
        break;
      }

      v9 = *a2;
      v29 = *(*a2 + 16);
      if (!v29)
      {
        *a2 = v7;

        goto LABEL_26;
      }

      v10 = 0;
      v28 = v9;
      v11 = -1.0;
      while (2)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v30 = v10 + 1;

        v12 = 0;
        v13 = (v7 + 40);
        do
        {
          if (v12 >= *(v7 + 16))
          {
            __break(1u);
            return v3;
          }

          ++v12;
          v14 = *(v13 - 1);
          v15 = *v13;

          v31._countAndFlagsBits = v14;
          v31._object = v15;
          sub_2A8A4(v31);
          v17 = v16;
          v19 = v18;

          v20 = v17;
          if (v19)
          {
            v20 = -1.0;
          }

          if (v11 <= v20)
          {
            v11 = v20;
          }

          v13 += 2;
        }

        while (v8 != v12);

        v10 = v30;
        v9 = v28;
        if (v30 != v29)
        {
          continue;
        }

        break;
      }

      *a2 = v7;

LABEL_27:
      v3 = v27;
      v22 = v27[2];
      v21 = v27[3];
      if (v22 >= v21 >> 1)
      {
        sub_200F8((v21 > 1), v22 + 1, 1);
        v3 = v27;
      }

      v3[2] = v22 + 1;
      *&v3[v22 + 4] = v11;
      v5 = v26;
      if (v26 == v23)
      {
        return v3;
      }
    }

LABEL_26:
    v11 = -1.0;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_104D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_19248(v4, &v7);
      sub_19248(&v7, v9);
      sub_385C(&qword_3A178, &qword_2BC58);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_BA2C(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_192AC(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_BAC4(v9, &v7, &qword_3A180, &unk_2BC60);
  if (v8)
  {
    sub_385C(&qword_3A178, &qword_2BC58);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_2A2E4();

      sub_BB4C(v9, &qword_3A180, &unk_2BC60);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_BB4C(v9, &qword_3A180, &unk_2BC60);
    v6 = &v7;
  }

  sub_BB4C(v6, &qword_3A180, &unk_2BC60);
  return 0;
}