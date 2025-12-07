uint64_t sub_1C6BF3648(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C6BF4318((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C6B657D0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1C6BF4318((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
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

uint64_t sub_1C6BF3C00(void **a1, void **a2, void **a3, void **a4)
{
  v66 = sub_1C6D75F50();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = (&v59 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v64 = (&v59 - v19);
  v20 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v20 = a2 - a1;
  }

  v21 = v20 >> 3;
  v22 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v22 = a3 - a2;
  }

  v23 = v22 >> 3;
  if (v21 < v22 >> 3)
  {
    if (a4 != a1 || &a1[v21] <= a4)
    {
      v24 = v21;
      memmove(a4, a1, 8 * v21);
      v21 = v24;
    }

    v68 = &a4[v21];
    v25 = v64;
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v63 = (v8 + 8);
      v26 = &selRef_adSegmentsOutputName;
      v67 = a3;
      v27 = (v8 + 8);
      while (1)
      {
        v28 = *a2;
        v65 = a4;
        v29 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        result = [v28 v26[11]];
        if (!result)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v31 = result;
        v32 = a1;
        sub_1C6D75F20();

        result = [v29 v26[11]];
        if (!result)
        {
          goto LABEL_47;
        }

        v33 = result;
        v34 = v62;
        sub_1C6D75F20();

        LOBYTE(v33) = sub_1C6D75EE0();
        v35 = v25;
        v36 = *v27;
        v37 = v34;
        v38 = v66;
        (*v27)(v37, v66);
        v36(v35, v38);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v33 & 1) == 0)
        {
          break;
        }

        v39 = a2;
        v40 = v32;
        v41 = v32 == a2++;
        a4 = v65;
        if (!v41)
        {
          goto LABEL_19;
        }

LABEL_20:
        a1 = v40 + 1;
        v25 = v64;
        v26 = &selRef_adSegmentsOutputName;
        if (a4 >= v68 || a2 >= v67)
        {
          goto LABEL_22;
        }
      }

      v39 = v65;
      a4 = v65 + 1;
      v40 = v32;
      if (v32 == v65)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v40 = *v39;
      goto LABEL_20;
    }

LABEL_22:
    a2 = a1;
    goto LABEL_42;
  }

  if (a4 != a2 || &a2[v23] <= a4)
  {
    memmove(a4, a2, 8 * v23);
  }

  v68 = &a4[v23];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_42:
    if (a2 != a4 || a2 >= (a4 + ((v68 - a4 + (v68 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v68 - a4));
    }

    return 1;
  }

  v62 = (v8 + 8);
  v42 = &selRef_adSegmentsOutputName;
  v60 = a1;
LABEL_29:
  v61 = a2;
  v43 = a2 - 1;
  v44 = a3 - 1;
  v45 = v68;
  v64 = a2 - 1;
  while (1)
  {
    v67 = v44;
    v46 = *--v45;
    v47 = *v43;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    result = [v46 v42[11]];
    if (!result)
    {
      goto LABEL_48;
    }

    v48 = result;
    v49 = a4;
    v50 = v65;
    sub_1C6D75F20();

    result = [v47 v42[11]];
    if (!result)
    {
      break;
    }

    v51 = result;
    v52 = v63;
    sub_1C6D75F20();

    LOBYTE(v51) = sub_1C6D75EE0();
    v53 = *v62;
    v54 = v52;
    v55 = v66;
    (*v62)(v54, v66);
    v53(v50, v55);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v51)
    {
      a3 = v67;
      v57 = v60;
      a4 = v49;
      v58 = v64;
      if (v67 + 1 != v61)
      {
        *v67 = *v64;
      }

      v42 = &selRef_adSegmentsOutputName;
      if (v68 <= v49 || (a2 = v58, v58 <= v57))
      {
        a2 = v58;
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v56 = v67;
    a4 = v49;
    if (v67 + 1 != v68)
    {
      *v67 = *v45;
    }

    v44 = v56 - 1;
    v68 = v45;
    v42 = &selRef_adSegmentsOutputName;
    v43 = v64;
    if (v45 <= v49)
    {
      v68 = v45;
      a2 = v61;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C6BF411C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[6] < v6[6])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 8 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v23 = v6 - 8;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 8, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 8;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v15 -= 8;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_1C6BF4318(float *__dst, float *__src, unint64_t a3, float *a4)
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
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
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

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

unint64_t sub_1C6BF4570(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1C6D79E90();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C6BF4614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6B1A418(0, &qword_1EDCDFA58, MEMORY[0x1E69B4F58], MEMORY[0x1E69E62F8]);
          sub_1C6BF56F8();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AA54(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6D78FC0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BF47B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF988, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal, sub_1C6B0F7A8);
          sub_1C6BF556C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4ACB4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BF4958(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EC1D7810, &qword_1EC1D6EA8, 0x1E69B6CC8, sub_1C6B0C69C);
          sub_1C6BF55F0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AD34(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BF4B00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, sub_1C6B0F7A8);
          sub_1C6BF5780();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4ACB4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BF4CA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, sub_1C6B0F7A8);
          sub_1C6BF585C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AC2C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BF4E50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C6D79E90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C6D79E90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C6BF51C0(0, &qword_1EC1D7828, &qword_1EDCDF860, 0x1E69B5450, sub_1C6B0C69C);
          sub_1C6BF5674();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C6C4AD34(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6BF50C0(uint64_t a1)
{
  if (!qword_1EDCDF9F8)
  {
    sub_1C6BF512C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF9F8);
    }
  }
}

void sub_1C6BF512C(uint64_t a1)
{
  if (!qword_1EDCDFA00)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFA00);
    }
  }
}

void sub_1C6BF51C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C6D79820();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6BF530C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

void sub_1C6BF5394(uint64_t a1)
{
  if (!qword_1EC1D77F0)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1D77F0);
    }
  }
}

void sub_1C6BF54E8(uint64_t a1)
{
  if (!qword_1EC1D7800)
  {
    sub_1C6BF51C0(255, &unk_1EDCDF9E8, &qword_1EDCE6680, MEMORY[0x1E69E6448], sub_1C6BF5804);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7800);
    }
  }
}

unint64_t sub_1C6BF556C()
{
  result = qword_1EDCDF980;
  if (!qword_1EDCDF980)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF988, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF980);
  }

  return result;
}

unint64_t sub_1C6BF55F0()
{
  result = qword_1EC1D7818;
  if (!qword_1EC1D7818)
  {
    sub_1C6BF51C0(255, &qword_1EC1D7810, &qword_1EC1D6EA8, 0x1E69B6CC8, sub_1C6B0C69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7818);
  }

  return result;
}

unint64_t sub_1C6BF5674()
{
  result = qword_1EC1D7830;
  if (!qword_1EC1D7830)
  {
    sub_1C6BF51C0(255, &qword_1EC1D7828, &qword_1EDCDF860, 0x1E69B5450, sub_1C6B0C69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7830);
  }

  return result;
}

unint64_t sub_1C6BF56F8()
{
  result = qword_1EDCDFA50;
  if (!qword_1EDCDFA50)
  {
    sub_1C6B1A418(255, &qword_1EDCDFA58, MEMORY[0x1E69B4F58], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFA50);
  }

  return result;
}

unint64_t sub_1C6BF5780()
{
  result = qword_1EC1D7838;
  if (!qword_1EC1D7838)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7838);
  }

  return result;
}

void sub_1C6BF5804(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1C6BF585C()
{
  result = qword_1EDCDF9C8;
  if (!qword_1EDCDF9C8)
  {
    sub_1C6BF51C0(255, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, sub_1C6B0F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF9C8);
  }

  return result;
}

uint64_t sub_1C6BF5918(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001BLL;
  v4 = 0x80000001C6D96E40;
  if (v2 == 1)
  {
    v5 = 0x80000001C6D96E40;
  }

  else
  {
    v3 = 0x7461527961636564;
    v5 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7461676572676761;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007365;
  }

  v8 = 0xD00000000000001BLL;
  if (*a2 != 1)
  {
    v8 = 0x7461527961636564;
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461676572676761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007365;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6BF5A1C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BF5ACC(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6BF5B68(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6BF5C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6BF7B6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6BF5C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007365;
  v4 = 0x80000001C6D96E40;
  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0x7461527961636564;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C6BF5CB0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x7461527961636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

unint64_t sub_1C6BF5D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6BF7B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6BF5D4C(uint64_t a1)
{
  v2 = sub_1C6BF667C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BF5D88(uint64_t a1)
{
  v2 = sub_1C6BF667C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserEventHistoryAggregateStore.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v99 = a2;
  v3 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v103 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BF7264(0, &qword_1EDCDF618, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v105 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v84 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BF667C();
  v16 = v104;
  v17 = a1;
  sub_1C6D7A2D0();
  v18 = v16;
  if (v16)
  {
LABEL_37:
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v104 = v10;
    v101 = v7;
    v102 = v6;
    sub_1C6BF66D0();
    LOBYTE(v110) = 0;
    sub_1C6BF6730();
    sub_1C6D79FF0();
    v91 = v15;
    v92 = v17;
    v19 = v106;
    sub_1C6BF6910(0, &unk_1EDCEA460, sub_1C6B6976C);
    v20 = sub_1C6D79EF0();
    v21 = 0;
    v22 = *(v19 + 64);
    v93 = v19 + 64;
    v94 = 0;
    v97 = v12;
    v98 = v19;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v95 = v20 + 64;
    v96 = v20;
    v27 = v105;
    if (v25)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v25));
        v100 = (v25 - 1) & v25;
LABEL_11:
        v31 = v28 | (v21 << 6);
        v32 = (*(v98 + 48) + 16 * v31);
        v34 = *v32;
        v33 = v32[1];
        v35 = (*(v98 + 56) + 16 * v31);
        v36 = *v35;
        v37 = v35[1];
        v38 = objc_allocWithZone(MEMORY[0x1E69B6EE8]);

        sub_1C6B1CD10(v36, v37);
        v39 = sub_1C6D75E50();
        v40 = [v38 initWithData_];

        if (!v40)
        {
          break;
        }

        sub_1C6B1C9F0(v36, v37);
        v41 = v96;
        *(v95 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v42 = (v41[6] + 16 * v31);
        *v42 = v34;
        v42[1] = v33;
        *(v41[7] + 8 * v31) = v40;
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        v12 = v97;
        v27 = v105;
        if (v44)
        {
          goto LABEL_42;
        }

        v41[2] = v45;
        v18 = v94;
        v25 = v100;
        if (!v100)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v29 = v21;
      while (1)
      {
        v21 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v21 >= v26)
        {
          break;
        }

        v30 = *(v93 + 8 * v21);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v100 = (v30 - 1) & v30;
          goto LABEL_11;
        }
      }

      sub_1C6BF67B0(0, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
      LOBYTE(v106) = 1;
      sub_1C6BF6828();
      v46 = v91;
      sub_1C6D79FF0();
      if (v18)
      {
        (*(v27 + 8))(v46, v12);

        v17 = v92;
        goto LABEL_37;
      }

      v47 = v110;
      sub_1C6BF6910(0, &qword_1EDCDF6C8, sub_1C6BF6974);
      v48 = sub_1C6D79EF0();
      v49 = v47;
      v50 = v48;
      v51 = 0;
      v52 = v49 + 64;
      v53 = 1 << *(v49 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v49 + 64);
      v56 = (v53 + 63) >> 6;
      v89 = v48 + 64;
      v17 = v92;
      v57 = v99;
      v87 = v48;
      v86 = v49;
      v85 = v49 + 64;
      v88 = v56;
      if (v55)
      {
        while (1)
        {
          v58 = __clz(__rbit64(v55));
          v59 = (v55 - 1) & v55;
LABEL_26:
          v93 = v51;
          v94 = v59;
          v62 = v58 | (v51 << 6);
          v63 = *(v49 + 56);
          v64 = (*(v49 + 48) + 16 * v62);
          v65 = v64[1];
          v95 = *v64;
          v98 = v62;
          v66 = *(v63 + 8 * v62);
          v67 = *(v66 + 16);
          if (v67)
          {
            break;
          }

          v69 = MEMORY[0x1E69E7CC0];
LABEL_34:
          v76 = v98;
          *(v89 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
          v77 = (v50[6] + 16 * v76);
          *v77 = v95;
          v77[1] = v75;
          *(v50[7] + 8 * v76) = v69;
          v78 = v50[2];
          v44 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v44)
          {
            goto LABEL_43;
          }

          v50[2] = v79;
          v56 = v88;
          v51 = v93;
          v55 = v94;
          if (!v94)
          {
            goto LABEL_21;
          }
        }

        v109 = MEMORY[0x1E69E7CC0];
        v90 = v65;

        v100 = v67;
        sub_1C6B39624(0, v67, 0);
        v68 = 0;
        v69 = v109;
        v70 = (v66 + 40);
        while (v68 < *(v66 + 16))
        {
          v71 = *(v70 - 1);
          v72 = *v70;
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          sub_1C6B1CD10(v71, v72);
          sub_1C6D78A70();
          sub_1C6BF71A8();
          sub_1C6D78BE0();
          v109 = v69;
          v74 = *(v69 + 16);
          v73 = *(v69 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_1C6B39624((v73 > 1), v74 + 1, 1);
            v69 = v109;
          }

          ++v68;
          *(v69 + 16) = v74 + 1;
          sub_1C6BF7200(v104, v69 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v74);
          v70 += 2;
          if (v100 == v68)
          {

            v17 = v92;
            v57 = v99;
            v50 = v87;
            v49 = v86;
            v52 = v85;
            v75 = v90;
            goto LABEL_34;
          }
        }

        goto LABEL_40;
      }

LABEL_21:
      v60 = v51;
      while (1)
      {
        v51 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v51 >= v56)
        {

          LOBYTE(v106) = 2;
          v80 = v97;
          v81 = v91;
          sub_1C6D79FC0();
          v83 = v82;
          (*(v105 + 8))(v81, v80);
          *v57 = v96;
          v57[1] = v50;
          v57[2] = v83;
          goto LABEL_37;
        }

        v61 = *(v52 + 8 * v51);
        ++v60;
        if (v61)
        {
          v58 = __clz(__rbit64(v61));
          v59 = (v61 - 1) & v61;
          goto LABEL_26;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_1C6BF667C()
{
  result = qword_1EDCE0640;
  if (!qword_1EDCE0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0640);
  }

  return result;
}

void sub_1C6BF66D0()
{
  if (!qword_1EDCDFC40)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFC40);
    }
  }
}

unint64_t sub_1C6BF6730()
{
  result = qword_1EDCDFC38;
  if (!qword_1EDCDFC38)
  {
    sub_1C6BF66D0();
    sub_1C6B1C938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC38);
  }

  return result;
}

void sub_1C6BF67B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1C6BF74D8(255, a3, a4);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1C6BF6828()
{
  result = qword_1EDCDFBF8;
  if (!qword_1EDCDFBF8)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
    sub_1C6BF7820(&qword_1EDCDFAC0, sub_1C6B1C938, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFBF8);
  }

  return result;
}

void sub_1C6BF6910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79F30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6BF6974(uint64_t a1)
{
  if (!qword_1EDCDFA80)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent(255);
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFA80);
    }
  }
}

void *UserEventHistoryAggregateStore.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BF7264(0, &qword_1EDCDF5F0, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v56 - v11;
  v13 = *v1;
  v67 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BF667C();
  sub_1C6D7A300();
  sub_1C6BF72C8(v13);
  v75 = v14;
  v74 = 0;
  sub_1C6BF67B0(0, &qword_1EDCDFC30, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E5E28]);
  sub_1C6BF752C();
  sub_1C6D7A090();
  v15 = v2;
  if (v2)
  {

    return (*(v68 + 8))(v12, v9);
  }

  else
  {
    v71 = v7;
    v58 = v9;

    sub_1C6BF67B0(0, &qword_1EDCDF6D0, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E6EC8]);
    v17 = v67;
    result = sub_1C6D79EF0();
    v18 = result;
    v19 = 0;
    v20 = v17 + 64;
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;
    v59 = result;
    v60 = result + 8;
    v25 = v72;
    v26 = v17;
    v27 = v68;
    v63 = v12;
    v56 = v20;
    v61 = v24;
    if (v23)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v23));
        v29 = (v23 - 1) & v23;
LABEL_12:
        v32 = v28 | (v19 << 6);
        v64 = v29;
        v33 = *(v26 + 56);
        v34 = (*(v26 + 48) + 16 * v32);
        v35 = v34[1];
        v65 = *v34;
        v66 = v32;
        v36 = *(v33 + 8 * v32);
        v37 = *(v36 + 16);
        if (v37)
        {
          break;
        }

        v39 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v50 = v66;
        *(v60 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        v51 = (v18[6] + 16 * v50);
        *v51 = v65;
        v51[1] = result;
        *(v18[7] + 8 * v50) = v39;
        v52 = v18[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        v24 = v61;
        if (v53)
        {
          goto LABEL_30;
        }

        v18[2] = v54;
        v27 = v68;
        v12 = v63;
        v23 = v64;
        if (!v64)
        {
          goto LABEL_7;
        }
      }

      v57 = v19;
      v75 = MEMORY[0x1E69E7CC0];
      v62 = v35;

      result = sub_1C6B393F4(0, v37, 0);
      v38 = 0;
      v39 = v75;
      v40 = *(v25 + 80);
      v69 = v36;
      v70 = v36 + ((v40 + 32) & ~v40);
      v41 = v71;
      while (v38 < *(v36 + 16))
      {
        v42 = v37;
        sub_1C6BF7678(v70 + *(v25 + 72) * v38, v41);
        sub_1C6BF71A8();
        v43 = sub_1C6D78BF0();
        if (v15)
        {

          sub_1C6BF76DC(v41);
          (*(v68 + 8))(v63, v58);
        }

        v45 = v43;
        v46 = v44;
        v73 = 0;
        result = sub_1C6BF76DC(v41);
        v75 = v39;
        v48 = v39[2];
        v47 = v39[3];
        if (v48 >= v47 >> 1)
        {
          result = sub_1C6B393F4((v47 > 1), v48 + 1, 1);
          v39 = v75;
        }

        ++v38;
        v39[2] = v48 + 1;
        v49 = &v39[2 * v48];
        v49[4] = v45;
        v49[5] = v46;
        v37 = v42;
        v25 = v72;
        v15 = v73;
        v41 = v71;
        v36 = v69;
        if (v42 == v38)
        {

          v26 = v67;
          v18 = v59;
          v20 = v56;
          v19 = v57;
          result = v62;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      v30 = v19;
      while (1)
      {
        v19 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v19 >= v24)
        {
          v75 = v18;
          v74 = 1;
          sub_1C6BF67B0(0, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
          sub_1C6BF7738();
          v55 = v58;
          sub_1C6D7A090();

          if (!v15)
          {
            LOBYTE(v75) = 2;
            sub_1C6D7A060();
          }

          return (*(v27 + 8))(v12, v55);
        }

        v31 = *(v20 + 8 * v19);
        ++v30;
        if (v31)
        {
          v28 = __clz(__rbit64(v31));
          v29 = (v31 - 1) & v31;
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t UserEventHistoryAggregateStore.description.getter()
{
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000028, 0x80000001C6D9EF40);
  v0 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v0);

  MEMORY[0x1CCA55B00](0x6167657267676120, 0xEB00000000736574);
  return 0;
}

id UserEventHistoryAggregateStore.readonlyAggregateStore.getter()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E69B5258]);
  sub_1C6B6976C();
  v3 = sub_1C6D79480();
  v4 = [v2 initWithAggregates:v3 scoringType:3 decayRate:v1];

  v5 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  return v5;
}

unint64_t sub_1C6BF71A8()
{
  result = qword_1EDCE55C8;
  if (!qword_1EDCE55C8)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE55C8);
  }

  return result;
}

uint64_t sub_1C6BF7200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6BF7264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6BF667C();
    v7 = a3(a1, &type metadata for UserEventHistoryAggregateStore.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C6BF72C8(uint64_t a1)
{
  sub_1C6BF67B0(0, &unk_1EDCDF730, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E6EC8]);
  v2 = sub_1C6D79EF0();
  v3 = v2;
  v4 = 0;
  v36 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v34 = v2;
  v35 = v2 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v36 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v36 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 data];
      if (v21)
      {
        v38 = v18;
        v37 = v17;
        v22 = v10;
        v23 = v21;
        v24 = sub_1C6D75E60();
        v26 = v25;

        v27 = v26;
        v28 = v24;
        v3 = v34;
        v10 = v22;
        v17 = v37;
        v18 = v38;
      }

      else
      {

        v28 = 0;
        v27 = 0xF000000000000000;
      }

      *(v35 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v29 = (v3[6] + 16 * v15);
      *v29 = v18;
      v29[1] = v17;
      v30 = (v3[7] + 16 * v15);
      *v30 = v28;
      v30[1] = v27;
      v31 = v3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v3[2] = v33;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C6BF74D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6969080]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C6BF752C()
{
  result = qword_1EDCDFC28;
  if (!qword_1EDCDFC28)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC30, &qword_1EDCE63A0, MEMORY[0x1E69E6720], MEMORY[0x1E69E5E28]);
    sub_1C6BF75E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC28);
  }

  return result;
}

unint64_t sub_1C6BF75E4()
{
  result = qword_1EDCE6390;
  if (!qword_1EDCE6390)
  {
    sub_1C6BF74D8(255, &qword_1EDCE63A0, MEMORY[0x1E69E6720]);
    sub_1C6B1CCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6390);
  }

  return result;
}

uint64_t sub_1C6BF7678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BF76DC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6BF7738()
{
  result = qword_1EDCDFC00;
  if (!qword_1EDCDFC00)
  {
    sub_1C6BF67B0(255, &qword_1EDCDFC08, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8], MEMORY[0x1E69E5E28]);
    sub_1C6BF7820(&unk_1EDCDFAC8, sub_1C6B1CCBC, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC00);
  }

  return result;
}

uint64_t sub_1C6BF7820(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C6BF74D8(255, &qword_1EDCDFAD8, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6BF78BC(uint64_t *a1, int a2)
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

uint64_t getEnumTagSinglePayload for UserEventHistoryAggregateStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserEventHistoryAggregateStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6BF7A68()
{
  result = qword_1EC1D7840;
  if (!qword_1EC1D7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7840);
  }

  return result;
}

unint64_t sub_1C6BF7AC0()
{
  result = qword_1EDCE0630;
  if (!qword_1EDCE0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0630);
  }

  return result;
}

unint64_t sub_1C6BF7B18()
{
  result = qword_1EDCE0638;
  if (!qword_1EDCE0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0638);
  }

  return result;
}

unint64_t sub_1C6BF7B6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6BF7BF8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      v9 = a3(0);
      v10 = sub_1C6D797F0();
      *(v10 + 16) = a2;
      v11 = *(v9 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      sub_1C6BFEF44(v7, v10 + v12, a4);
      v13 = a2 - 1;
      if (a2 != 1)
      {
        v14 = *(v11 + 72);
        v15 = v10 + v14 + v12;
        do
        {
          sub_1C6BFEF44(v7, v15, a4);
          v15 += v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6BFEFAC(v7, a5);
    return v10;
  }

  return result;
}

uint64_t sub_1C6BF7CFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v216 = a3;
  sub_1C6BFDEA8(0, &qword_1EDCEA310, MEMORY[0x1E6996170]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v203 = &v191 - v10;
  sub_1C6BFDEA8(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v202 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v201 = &v191 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v200 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v199 = (&v191 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v198 = (&v191 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v197 = &v191 - v28;
  v29 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v209 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v208 = &v191 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v207 = &v191 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v206 = &v191 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v211 = &v191 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v210 = &v191 - v46;
  v218 = type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures(0);
  v213 = *(v218 - 1);
  MEMORY[0x1EEE9AC00](v218, v47);
  v219 = (&v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = sub_1C6D78810();
  v217 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v49);
  v212 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v191 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v191 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v191 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v191 - v65;
  v67 = *a1;
  if (*(*a1 + 16))
  {
    v68 = sub_1C6B64FC0(a2);
    if (v69)
    {
      v70 = v217;
      v71 = *(v67 + 56) + *(v217 + 72) * v68;
      v72 = v214;
      (*(v217 + 16))(v66, v71, v214);
      return (*(v70 + 32))(a4, v66, v72);
    }
  }

  v204 = v54;
  v215 = v4;
  v195 = a1;
  v196 = a4;
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDCE96D0;
  v75 = sub_1C6D79AC0();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("Creating a recipe user event history features request", 53, 2, &dword_1C6B09000, v74, v75, MEMORY[0x1E69E7CC0]);
  v222 = 0;
  v223 = 0;
  v77 = sub_1C6D79AC0();
  v78 = sub_1C6D78D30("Processing recipe user event history sessions", 45, 2, &dword_1C6B09000, v74, v77, v76);
  v221 = v76;
  v79 = *a2;
  v80 = v216;
  v81 = v216[2];
  v83 = MEMORY[0x1EEE9AC00](v78, v82);
  *(&v191 - 6) = &v223;
  *(&v191 - 5) = &v221;
  *(&v191 - 4) = v79;
  *(&v191 - 3) = &v222;
  *(&v191 - 2) = a2;
  *(&v191 - 1) = v80;
  (*(*v81 + 160))(0, 0, 0, sub_1C6BFDF1C, v83);
  sub_1C6B1D314(0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1C6D7EB10;
  v86 = v222;
  v85 = v223;
  v87 = MEMORY[0x1E69E6530];
  v88 = MEMORY[0x1E69E65A8];
  *(v84 + 56) = MEMORY[0x1E69E6530];
  *(v84 + 64) = v88;
  *(v84 + 32) = v86;
  *(v84 + 96) = v87;
  *(v84 + 104) = v88;
  *(v84 + 72) = v85;
  sub_1C6D79AC0();
  sub_1C6D78D30("Processed %ld recipe events and %ld recipe sessions", v191, v192);

  v89 = v221;
  v90 = *(v221 + 16);
  v80[5] = v90;
  v91 = v79 - v90;
  if (v79 <= v90)
  {
    v94 = a2;
    v95 = v215;
  }

  else
  {
    v92 = v80[3];
    sub_1C6D787D0();
    v93 = v215;
    sub_1C6C6D288(v92, v58, a2[6], v62);
    if (v93)
    {
      (*(v217 + 8))(v58, v214);
    }

    v94 = a2;
    v96 = v217;
    v216 = *(v217 + 8);
    v97 = v58;
    v98 = v214;
    (v216)(v97, v214);
    v100 = v218;
    v99 = v219;
    (*(v96 + 16))(v219 + v218[5], v62, v98);
    *v99 = 0;
    v99[1] = 0xE000000000000000;
    v101 = (v99 + v100[6]);
    *v101 = 0;
    v101[1] = 0xE000000000000000;
    v102 = (v99 + v100[7]);
    *v102 = 0;
    v102[1] = 0xE000000000000000;
    v103 = (v99 + v100[8]);
    *v103 = 0;
    v103[1] = 0xE000000000000000;
    *(v99 + v100[9]) = 0;
    v95 = 0;
    *(v99 + v100[10]) = 0;
    v104 = sub_1C6BF7BF8(v99, v91, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
    sub_1C6B38B70(v104);
    (v216)(v62, v98);
    v89 = v221;
    v90 = *(v221 + 16);
  }

  v105 = MEMORY[0x1E69E7CC0];
  v192 = v94;
  v106 = v212;
  v205 = v89;
  if (v90)
  {
    v215 = v95;
    v220[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39674(0, v90, 0);
    v105 = v220[0];
    v107 = v214;
    v108 = v89 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
    v216 = *(v213 + 72);
    v109 = (v217 + 16);
    do
    {
      v110 = v219;
      sub_1C6BFEF44(v108, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
      (*v109)(v106, v110 + v218[5], v107);
      sub_1C6BFEFAC(v110, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
      v220[0] = v105;
      v112 = *(v105 + 16);
      v111 = *(v105 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_1C6B39674((v111 > 1), v112 + 1, 1);
        v105 = v220[0];
      }

      *(v105 + 16) = v112 + 1;
      (*(v217 + 32))(v105 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v112, v106, v107);
      v108 += v216;
      --v90;
    }

    while (v90);
    v95 = v215;
    v113 = v204;
    v89 = v205;
  }

  else
  {
    v113 = v204;
  }

  sub_1C6B96AD0(v105, 2, 2, v113);
  if (v95)
  {
  }

  else
  {
    v114 = v113;

    sub_1C6D783C0();
    v115 = *(v89 + 16);
    v215 = 0;
    v193 = v115;
    if (v115)
    {
      v220[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v115, 0);
      v116 = v220[0];
      v117 = v89 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v118 = *(v213 + 72);
      do
      {
        v119 = v219;
        sub_1C6BFEF44(v117, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v121 = *v119;
        v120 = v119[1];

        sub_1C6BFEFAC(v119, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v116;
        v123 = *(v116 + 16);
        v122 = *(v116 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_1C6B39280((v122 > 1), v123 + 1, 1);
          v116 = v220[0];
        }

        *(v116 + 16) = v123 + 1;
        v124 = v116 + 16 * v123;
        *(v124 + 32) = v121;
        *(v124 + 40) = v120;
        v117 += v118;
        --v115;
      }

      while (v115);
      v89 = v205;
      v115 = v193;
    }

    v125 = v197;
    sub_1C6D78740();
    v126 = sub_1C6D78760();
    v216 = *(v126 - 8);
    v212 = v216[7];
    v194 = v216 + 7;
    (v212)(v125, 0, 1, v126);
    sub_1C6D78830();
    sub_1C6D783C0();
    v127 = MEMORY[0x1E69E7CC0];
    v210 = v126;
    if (v115)
    {
      v220[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B392F0(0, v115, 0);
      v127 = v220[0];
      v128 = v89 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v129 = *(v213 + 72);
      v130 = v115;
      do
      {
        v131 = v219;
        sub_1C6BFEF44(v128, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v132 = *(v131 + v218[9]);
        sub_1C6BFEFAC(v131, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v127;
        v134 = *(v127 + 16);
        v133 = *(v127 + 24);
        if (v134 >= v133 >> 1)
        {
          sub_1C6B392F0((v133 > 1), v134 + 1, 1);
          v127 = v220[0];
        }

        *(v127 + 16) = v134 + 1;
        *(v127 + 4 * v134 + 32) = v132;
        v128 += v129;
        --v130;
      }

      while (v130);
      v135 = v114;
      v115 = v193;
      v126 = v210;
    }

    else
    {
      v135 = v114;
    }

    v136 = v198;
    *v198 = v127;
    v137 = v216[13];
    (v137)(v136, *MEMORY[0x1E6996140], v126);
    (v212)(v136, 0, 1, v126);
    sub_1C6D78830();
    sub_1C6D783C0();
    if (v115)
    {
      v216 = v137;
      v220[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3922C(0, v115, 0);
      v138 = v220[0];
      v139 = v205 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v140 = v115;
      v141 = *(v213 + 72);
      v142 = v139;
      v143 = v135;
      do
      {
        v144 = v219;
        sub_1C6BFEF44(v142, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v145 = *(v144 + v218[10]);
        sub_1C6BFEFAC(v144, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v138;
        v147 = *(v138 + 16);
        v146 = *(v138 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_1C6B3922C((v146 > 1), v147 + 1, 1);
          v138 = v220[0];
        }

        *(v138 + 16) = v147 + 1;
        *(v138 + 4 * v147 + 32) = v145;
        v142 += v141;
        --v140;
      }

      while (v140);
      v148 = v199;
      *v199 = v138;
      v149 = v210;
      (v216)(v148, *MEMORY[0x1E6996138], v210);
      (v212)(v148, 0, 1, v149);
      sub_1C6D78830();
      sub_1C6D783C0();
      v220[0] = MEMORY[0x1E69E7CC0];
      v150 = v193;
      sub_1C6B39280(0, v193, 0);
      v151 = v220[0];
      do
      {
        v152 = v219;
        sub_1C6BFEF44(v139, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v153 = (v152 + v218[6]);
        v155 = *v153;
        v154 = v153[1];

        sub_1C6BFEFAC(v152, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v151;
        v157 = *(v151 + 16);
        v156 = *(v151 + 24);
        if (v157 >= v156 >> 1)
        {
          sub_1C6B39280((v156 > 1), v157 + 1, 1);
          v151 = v220[0];
        }

        *(v151 + 16) = v157 + 1;
        v158 = v151 + 16 * v157;
        *(v158 + 32) = v155;
        *(v158 + 40) = v154;
        v139 += v141;
        --v150;
      }

      while (v150);
      v115 = v193;
      v126 = v210;
      v135 = v143;
      v159 = v212;
    }

    else
    {
      v160 = v199;
      *v199 = MEMORY[0x1E69E7CC0];
      (v137)(v160, *MEMORY[0x1E6996138], v126);
      v159 = v212;
      (v212)(v160, 0, 1, v126);
      sub_1C6D78830();
      sub_1C6D783C0();
    }

    v161 = v200;
    sub_1C6D78740();
    v159(v161, 0, 1, v126);
    sub_1C6D78830();
    sub_1C6D783C0();
    v162 = v126;
    v163 = v205;
    if (v115)
    {
      v220[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v115, 0);
      v164 = v220[0];
      v165 = v163 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v216 = *(v213 + 72);
      v166 = v165;
      v167 = v115;
      do
      {
        v168 = v219;
        sub_1C6BFEF44(v166, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v169 = (v168 + v218[7]);
        v170 = *v169;
        v171 = v169[1];

        sub_1C6BFEFAC(v168, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v164;
        v173 = *(v164 + 16);
        v172 = *(v164 + 24);
        if (v173 >= v172 >> 1)
        {
          sub_1C6B39280((v172 > 1), v173 + 1, 1);
          v164 = v220[0];
        }

        *(v164 + 16) = v173 + 1;
        v174 = v164 + 16 * v173;
        *(v174 + 32) = v170;
        *(v174 + 40) = v171;
        v166 += v216;
        --v167;
      }

      while (v167);
      v175 = v201;
      sub_1C6D78740();
      (v212)(v175, 0, 1, v210);
      sub_1C6D78830();
      sub_1C6D783C0();
      v220[0] = MEMORY[0x1E69E7CC0];
      v176 = v193;
      sub_1C6B39280(0, v193, 0);
      v177 = v220[0];
      do
      {
        v178 = v219;
        sub_1C6BFEF44(v165, v219, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v179 = (v178 + v218[8]);
        v180 = *v179;
        v181 = v179[1];

        sub_1C6BFEFAC(v178, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
        v220[0] = v177;
        v183 = *(v177 + 16);
        v182 = *(v177 + 24);
        if (v183 >= v182 >> 1)
        {
          sub_1C6B39280((v182 > 1), v183 + 1, 1);
          v177 = v220[0];
        }

        *(v177 + 16) = v183 + 1;
        v184 = v177 + 16 * v183;
        *(v184 + 32) = v180;
        *(v184 + 40) = v181;
        v165 += v216;
        --v176;
      }

      while (v176);
      v185 = v192;
      v162 = v210;
      v135 = v204;
      v159 = v212;
    }

    else
    {
      v186 = v201;
      sub_1C6D78740();
      v159(v186, 0, 1, v162);
      sub_1C6D78830();
      sub_1C6D783C0();
      v185 = v192;
    }

    v187 = v202;
    sub_1C6D78740();
    v159(v187, 0, 1, v162);
    sub_1C6D78830();
    v188 = v217;
    v189 = v203;
    v190 = v214;
    (*(v217 + 16))(v203, v135, v214);
    (*(v188 + 56))(v189, 0, 1, v190);
    sub_1C6BC62A0(v185, v220);
    sub_1C6BC1DF0(v189, v185);
    (*(v188 + 32))(v196, v135, v190);
  }
}

uint64_t sub_1C6BF91AC(__int128 *a1, BOOL *a2, uint64_t *a3, size_t *a4, uint64_t a5, void *a6, __int128 *a7, uint64_t a8)
{
  v204 = a8;
  v206 = a7;
  v223 = a6;
  v189 = a5;
  v224 = a4;
  v191 = sub_1C6D789A0();
  v218 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v11);
  v171 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v180 = &v168 - v19;
  sub_1C6BFDEA8(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v186 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v185 = &v168 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v184 = &v168 - v28;
  v205 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v211 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v29);
  v187 = (&v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v168 - v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v168 - v37);
  v179 = type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures(0);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v39);
  v199 = (&v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = sub_1C6D78810();
  v41 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v42);
  v200 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v210 = &v168 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v209 = &v168 - v49;
  v50 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v208 = &v168 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  MEMORY[0x1EEE9AC00](v183, v53);
  v207 = &v168 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = _s10ValidationOMa(0);
  MEMORY[0x1EEE9AC00](v216, v55);
  v215 = (&v168 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BFDEA8(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v60 = &v168 - v59;
  v222 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v219 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v61);
  v217 = &v168 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v63 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v64);
  v68 = (&v168 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_62;
  }

  v181 = v38;
  v182 = v34;
  v172 = v16;
  v169 = a2;
  *a3 = v69;
  if (qword_1EDCDF7A0 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v70 = *algn_1EDCF0308;
    v71 = MEMORY[0x1EEE9AC00](v65, v66);
    *(&v168 - 2) = a1;
    v220 = v70;
    v221 = v72;
    result = (v72)(sub_1C6BFDF4C, v71);
    v74 = *(a1 + 2);
    v75 = *(v74 + 16);
    a1 = v206;
    v76 = v189;
    v77 = v217;
    if (!v75)
    {
      break;
    }

    v213 = 0;
    v219 += 6;
    v202 = (v41 + 8);
    v175 = (v41 + 16);
    v174 = (v211 + 48);
    v176 = (v218 + 48);
    v168 = (v218 + 32);
    v170 = (v218 + 8);
    v173 = (v41 + 32);
    v190 = xmmword_1C6D7F510;
    v218 = v74;
    v214 = v63;
    v203 = v60;
    while (v75 <= *(v74 + 16))
    {
      --v75;
      sub_1C6BFEF44(v74 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v75, v68, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
      if (*(*v224 + 16) >= v76)
      {
        result = sub_1C6BFEFAC(v68, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        goto LABEL_57;
      }

      if (__OFADD__(*v223, 1))
      {
        goto LABEL_59;
      }

      ++*v223;
      sub_1C6BFE158(v68, v60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if ((*v219)(v60, 1, v222) == 1)
      {
        v78 = sub_1C6BFE1C4(v60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        v80 = MEMORY[0x1EEE9AC00](v78, v79);
        *(&v168 - 2) = v68;
        v221(sub_1C6BFDF54, v80);
        v77 = v217;
      }

      else
      {
        sub_1C6BFDFEC(v60, v77, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        v81 = *(a1 + 24);
        v227[0] = *(a1 + 8);
        v227[1] = v81;
        v228 = *(a1 + 5);
        v82 = v215;
        v83 = v77;
        sub_1C6BFAA74(v227, v215);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v86 = v82[1];
        if (EnumCaseMultiPayload == 1)
        {
          v87 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v85);
          *(&v168 - 2) = v88;
          *(&v168 - 1) = v86;
          v41 = v86;
          v221(sub_1C6B9F5E4, v87);

          sub_1C6BFEFAC(v83, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          v77 = v83;
          v63 = v214;
        }

        else
        {
          v89 = v76;
          v211 = *v82;
          sub_1C6BFDF5C(0);
          v91 = v90[16];
          v92 = *(v82 + v90[20]);
          v93 = v207;
          sub_1C6BFDFEC(v82 + v90[12], v207, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
          v94 = v82 + v91;
          v41 = v208;
          sub_1C6BFDFEC(v94, v208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v95 = v209;
          static Features.fromProtoFeatureMap(_:)(*v41, v209);
          v96 = *(a1 + 6);
          v97 = v210;
          v98 = v213;
          v99 = sub_1C6C6D288(*(v204 + 24), v95, v96, v210);
          if (v98)
          {
            (*v202)(v95, v212);

            v103 = MEMORY[0x1EEE9AC00](v101, v102);
            *(&v168 - 2) = v98;
            v221(sub_1C6BFE054, v103);

            sub_1C6BFEFAC(v93, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
            v77 = v217;
            sub_1C6BFEFAC(v217, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
            sub_1C6BFEFAC(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
            v213 = 0;
            a1 = v206;
            v63 = v214;
            v76 = v89;
            v60 = v203;
          }

          else
          {
            v201 = v92;
            v213 = 0;
            v104 = MEMORY[0x1EEE9AC00](v99, v100);
            *(&v168 - 2) = v211;
            *(&v168 - 1) = v86;
            v198 = v86;
            v221(sub_1C6B9F65C, v104);
            (*v175)(v200, v97, v212);
            v105 = *(v183 + 24);
            v106 = v184;
            sub_1C6BFE158(v93 + v105, v184, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v107 = *v174;
            v108 = v205;
            if ((*v174)(v106, 1, v205) == 1)
            {
              v109 = v181;
              *v181 = v190;
              *(v109 + 2) = 0;
              *(v109 + 24) = 1;
              *(v109 + 4) = 0;
              *(v109 + 40) = 1;
              *(v109 + 6) = 0;
              *(v109 + 56) = 1;
              sub_1C6D78A30();
              v110 = (v109 + *(v108 + 36));
              *v110 = 0;
              v110[1] = 0;
              v111 = v107(v106, 1, v108);
              v60 = v203;
              if (v111 != 1)
              {
                sub_1C6BFE1C4(v106, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              v109 = v181;
              sub_1C6BFDFEC(v106, v181, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              v60 = v203;
            }

            v112 = *(v109 + 2);
            v113 = *(v109 + 24);
            sub_1C6BFEFAC(v109, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v225 = v112;
            v226 = v113;
            v114 = Com_Apple_News_Personalization_GroupType.string.getter();
            if (v115)
            {
              v116 = v114;
            }

            else
            {
              v116 = 0;
            }

            v197 = v116;
            v117 = 0xE000000000000000;
            if (v115)
            {
              v117 = v115;
            }

            v196 = v117;
            v118 = v185;
            sub_1C6BFE158(v93 + v105, v185, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v119 = v205;
            if (v107(v118, 1, v205) == 1)
            {
              v120 = v182;
              *v182 = v190;
              *(v120 + 2) = 0;
              *(v120 + 24) = 1;
              *(v120 + 4) = 0;
              *(v120 + 40) = 1;
              *(v120 + 6) = 0;
              *(v120 + 56) = 1;
              sub_1C6D78A30();
              v121 = (v120 + *(v119 + 36));
              *v121 = 0;
              v121[1] = 0;
              if (v107(v118, 1, v119) != 1)
              {
                sub_1C6BFE1C4(v118, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              v120 = v182;
              sub_1C6BFDFEC(v118, v182, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            }

            v122 = *(v120 + 4);
            v123 = *(v120 + 40);
            sub_1C6BFEFAC(v120, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v225 = v122;
            v226 = v123;
            v124 = Com_Apple_News_Personalization_FeedType.string.getter();
            if (v125)
            {
              v126 = v124;
            }

            else
            {
              v126 = 0;
            }

            v195 = v126;
            v127 = 0xE000000000000000;
            if (v125)
            {
              v127 = v125;
            }

            v194 = v127;
            v128 = v186;
            sub_1C6BFE158(v93 + v105, v186, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v129 = v205;
            if (v107(v128, 1, v205) == 1)
            {
              a1 = v187;
              *v187 = v190;
              *(a1 + 2) = 0;
              *(a1 + 24) = 1;
              *(a1 + 4) = 0;
              *(a1 + 40) = 1;
              *(a1 + 6) = 0;
              *(a1 + 56) = 1;
              sub_1C6D78A30();
              v130 = (a1 + *(v129 + 36));
              *v130 = 0;
              v130[1] = 0;
              v131 = v107(v128, 1, v129);
              v63 = v214;
              v132 = v176;
              v41 = v201;
              if (v131 != 1)
              {
                sub_1C6BFE1C4(v128, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              }
            }

            else
            {
              a1 = v187;
              sub_1C6BFDFEC(v128, v187, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
              v63 = v214;
              v132 = v176;
              v41 = v201;
            }

            v133 = *(a1 + 6);
            v134 = *(a1 + 56);
            sub_1C6BFEFAC(a1, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
            v225 = v133;
            v226 = v134;
            v135 = sub_1C6C26E00();
            if (v136)
            {
              v137 = v135;
            }

            else
            {
              v137 = 0;
            }

            if (v136)
            {
              v138 = v136;
            }

            else
            {
              v138 = 0xE000000000000000;
            }

            if (v41 < 0xFFFFFFFF80000000)
            {
              goto LABEL_60;
            }

            if (v41 > 0x7FFFFFFF)
            {
              goto LABEL_61;
            }

            v192 = v138;
            v193 = v137;
            v139 = *(v177 + 24);
            v140 = MEMORY[0x1E69AA900];
            v141 = v180;
            sub_1C6BFE158(v68 + v139, v180, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v188 = *v132;
            v142 = v188(v141, 1, v191);
            sub_1C6BFE1C4(v141, &qword_1EDCE66F0, v140);
            v143 = 0.0;
            if (v142 != 1)
            {
              v144 = v172;
              sub_1C6BFE158(v68 + v139, v172, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              v145 = v191;
              v146 = v188;
              if (v188(v144, 1, v191) == 1)
              {
                v147 = v171;
                sub_1C6D78990();
                if (v146(v144, 1, v145) != 1)
                {
                  sub_1C6BFE1C4(v172, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
                }
              }

              else
              {
                v147 = v171;
                (*v168)(v171, v144, v145);
              }

              sub_1C6D78970();
              v149 = v148;
              (*v170)(v147, v145);
              v143 = v149;
            }

            v150 = v199;
            v151 = v198;
            *v199 = v211;
            *(v150 + 1) = v151;
            v152 = v179;
            (*v173)(&v150[*(v179 + 20)], v200, v212);
            v153 = &v150[v152[6]];
            v154 = v196;
            *v153 = v197;
            v153[1] = v154;
            v155 = &v150[v152[7]];
            v156 = v194;
            *v155 = v195;
            v155[1] = v156;
            v157 = &v150[v152[8]];
            v158 = v192;
            *v157 = v193;
            v157[1] = v158;
            *&v150[v152[9]] = v201;
            *&v150[v152[10]] = v143;
            v159 = v224;
            v160 = *v224;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v159 = v160;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v160 = sub_1C6B66664(0, v160[2] + 1, 1, v160);
              *v224 = v160;
            }

            v76 = v189;
            v163 = v160[2];
            v162 = v160[3];
            if (v163 >= v162 >> 1)
            {
              v167 = sub_1C6B66664((v162 > 1), v163 + 1, 1, v160);
              *v224 = v167;
            }

            v164 = *v202;
            v41 = v212;
            (*v202)();
            (v164)(v209, v41);
            sub_1C6BFEFAC(v207, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
            v165 = v217;
            sub_1C6BFEFAC(v217, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
            v166 = *v224;
            *(v166 + 16) = v163 + 1;
            v77 = v165;
            sub_1C6BFDFEC(v199, v166 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v163, type metadata accessor for RecipeUserEventHistoryFeaturesFactory.TabiEventRecipeFeatures);
            sub_1C6BFEFAC(v208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
            a1 = v206;
          }
        }
      }

      result = sub_1C6BFEFAC(v68, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
      v74 = v218;
      if (!v75)
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
    v65 = swift_once();
  }

LABEL_57:
  *v169 = *(*v224 + 16) >= v76;
  return result;
}

uint64_t sub_1C6BFA71C(void *a1)
{
  v2 = MEMORY[0x1E69AA900];
  sub_1C6BFDEA8(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v16 - v5;
  v7 = sub_1C6D789A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001ALL, 0x80000001C6D9F290);
  MEMORY[0x1CCA55B00](*a1, a1[1]);
  MEMORY[0x1CCA55B00](2108704, 0xE300000000000000);
  v12 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6BFE158(a1 + *(v12 + 36), v6, &qword_1EDCE66F0, v2);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_1C6D78990();
    if (v13(v6, 1, v7) != 1)
    {
      sub_1C6BFE1C4(v6, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_1C6D79E60();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1CCA55B00](0x206874697720, 0xE600000000000000);
  v16[1] = *(a1[2] + 16);
  v14 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v14);

  MEMORY[0x1CCA55B00](0x73746E65766520, 0xE700000000000000);
  return v17;
}

uint64_t sub_1C6BFA9E4(uint64_t a1)
{
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000049, 0x80000001C6D9F240);
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6D79E60();
  return 0;
}

uint64_t sub_1C6BFAA74@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v184 = a1;
  v191 = a2;
  v179 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  MEMORY[0x1EEE9AC00](v179, v3);
  v183 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v168 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v171 = &v163 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v180 = &v163 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v166 = &v163 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v170 = &v163 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v177 = &v163 - v22;
  v181 = sub_1C6D78A00();
  v185 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v23);
  v165 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v169 = &v163 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v176 = &v163 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v164 = &v163 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v167 = &v163 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v174 = &v163 - v39;
  v172 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  MEMORY[0x1EEE9AC00](v172, v40);
  v182 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v187, v42);
  v178 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v173 = &v163 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v175 = &v163 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v186 = &v163 - v52;
  v53 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v189 = (&v163 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6BFDEA8(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v163 - v58;
  v60 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v62);
  v64 = &v163 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v190 = &v163 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BFDEA8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  MEMORY[0x1EEE9AC00](v68 - 8, v69);
  v71 = &v163 - v70;
  v72 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v74);
  v76 = &v163 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v2;
  Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.recipe.getter(v71);
  if ((*(v73 + 48))(v71, 1, v72) == 1)
  {
    sub_1C6BFE1C4(v71, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    v77 = v191;
    *v191 = 0xD000000000000019;
    v77[1] = 0x80000001C6D9F130;
    _s10ValidationOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v78 = v191;
  sub_1C6BFDFEC(v71, v76, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BFE158(&v76[*(v72 + 24)], v59, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v79 = *(v61 + 48);
  v80 = v76;
  if (v79(v59, 1, v60) == 1)
  {
    *v64 = xmmword_1C6D7F510;
    *(v64 + 2) = 0;
    v64[24] = 1;
    *(v64 + 4) = 0;
    v64[40] = 1;
    *(v64 + 6) = 0;
    v64[56] = 1;
    sub_1C6D78A30();
    v81 = &v64[*(v60 + 36)];
    *v81 = 0;
    *(v81 + 1) = 0;
    if (v79(v59, 1, v60) != 1)
    {
      sub_1C6BFE1C4(v59, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
    }
  }

  else
  {
    sub_1C6BFDFEC(v59, v64, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  }

  v82 = *v64;
  v83 = *(v64 + 1);
  sub_1C6B1CD10(*v64, v83);
  sub_1C6BFEFAC(v64, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v195 = v82;
  v196 = v83;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  sub_1C6D78A70();
  sub_1C6BFE05C();
  v84 = v190;
  sub_1C6D78C00();
  v85 = v186;
  sub_1C6BFEF44(v188, v186, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v95 = v182;
    sub_1C6BFDFEC(v85, v182, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v96 = v184[3];
    v97 = v185;
    if (v96 > 0.0)
    {
      v98 = v184[2];
      sub_1C6BFE0B4(0.0, 1.0);
      if (v99 < v96)
      {
        v186 = *(v172 + 24);
        v100 = v177;
        sub_1C6BFE158(v95 + v186, v177, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v101 = *(v97 + 48);
        v102 = v181;
        if (v101(v100, 1, v181) == 1)
        {
          v103 = v174;
          sub_1C6D789F0();
          if (v101(v100, 1, v102) != 1)
          {
            sub_1C6BFE1C4(v100, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v103 = v174;
          (*(v97 + 32))(v174, v100, v102);
        }

        sub_1C6D789C0();
        v120 = v119;
        v121 = v103;
        v122 = *(v97 + 8);
        v122(v121, v102);
        v189 = v122;
        if (v98 <= v120)
        {
          sub_1C6BFEF44(v188, v175, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          v125 = swift_getEnumCaseMultiPayload();
          v126 = v80;
          if (v125)
          {
            if (v125 == 1)
            {
              v127 = 0x6153657069636572;
              v128 = 0xEB00000000646576;
            }

            else
            {
              v127 = 0x6956657069636572;
              v128 = 0xEC00000064657765;
            }
          }

          else
          {
            v127 = 0x65646F4D6B6F6F63;
            v128 = 0xEE00646577656956;
          }

          sub_1C6BFDF5C(0);
          v144 = v143;
          v145 = *(v143 + 48);
          v146 = *(v143 + 64);
          sub_1C6BFEFAC(v175, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
          *v78 = v127;
          v78[1] = v128;
          v147 = v126;
          sub_1C6BFEF44(v126, v78 + v145, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
          v148 = v190;
          sub_1C6BFEF44(v190, v78 + v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v149 = v170;
          sub_1C6BFE158(v182 + v186, v170, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          v150 = v181;
          if (v101(v149, 1, v181) == 1)
          {
            v151 = v167;
            sub_1C6D789F0();
            if (v101(v149, 1, v150) != 1)
            {
              sub_1C6BFE1C4(v149, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v151 = v167;
            (*(v185 + 32))(v167, v149, v150);
          }

          v152 = *(v144 + 80);
          v153 = sub_1C6D789E0();
          v189(v151, v150);
          v154 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
          v155 = &v197;
          goto LABEL_68;
        }

        *&v192 = 0;
        *(&v192 + 1) = 0xE000000000000000;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0xD000000000000025, 0x80000001C6D9F210);
        v123 = v166;
        sub_1C6BFE158(v95 + v186, v166, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        if (v101(v123, 1, v102) == 1)
        {
          v124 = v164;
          sub_1C6D789F0();
          if (v101(v123, 1, v102) != 1)
          {
            sub_1C6BFE1C4(v123, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v124 = v164;
          (*(v97 + 32))(v164, v123, v102);
        }

        sub_1C6D789C0();
        v189(v124, v102);
        sub_1C6D79910();
        MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
        sub_1C6D79910();
        v114 = *(&v192 + 1);
        v113 = v192;
        v116 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
        v117 = v182;
LABEL_28:
        sub_1C6BFEFAC(v117, v116);
        sub_1C6BFEFAC(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v118 = v80;
LABEL_29:
        sub_1C6BFEFAC(v118, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        *v78 = v113;
        v78[1] = v114;
        _s10ValidationOMa(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    *&v192 = 0;
    *(&v192 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000028, 0x80000001C6D9F1E0);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v114 = *(&v192 + 1);
    v113 = v192;
    v115 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
LABEL_27:
    v116 = v115;
    v117 = v95;
    goto LABEL_28;
  }

  v87 = v185;
  if (EnumCaseMultiPayload != 1)
  {
    v95 = v183;
    sub_1C6BFDFEC(v85, v183, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    v104 = v184[1];
    if (v104 > 0.0)
    {
      v105 = *v184;
      sub_1C6BFE0B4(0.0, 1.0);
      if (v106 < v104)
      {
        v186 = *(v179 + 24);
        v107 = v180;
        sub_1C6BFE158(v95 + v186, v180, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v108 = *(v87 + 48);
        v109 = v181;
        if (v108(v107, 1, v181) == 1)
        {
          v110 = v176;
          sub_1C6D789F0();
          if (v108(v107, 1, v109) != 1)
          {
            sub_1C6BFE1C4(v107, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v110 = v176;
          (*(v87 + 32))(v176, v107, v109);
        }

        sub_1C6D789C0();
        v130 = v129;
        v131 = v110;
        v132 = *(v87 + 8);
        v132(v131, v109);
        v189 = v132;
        if (v105 > v130)
        {
          v188 = v80;
          *&v192 = 0;
          *(&v192 + 1) = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000022, 0x80000001C6D9F180);
          v133 = v168;
          sub_1C6BFE158(v95 + v186, v168, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          if (v108(v133, 1, v109) == 1)
          {
            v134 = v165;
            sub_1C6D789F0();
            if (v108(v133, 1, v109) != 1)
            {
              sub_1C6BFE1C4(v133, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v134 = v165;
            (*(v87 + 32))(v165, v133, v109);
          }

          sub_1C6D789C0();
          v189(v134, v109);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
          sub_1C6D79910();
          v114 = *(&v192 + 1);
          v113 = v192;
          sub_1C6BFEFAC(v183, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
          sub_1C6BFEFAC(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
          v118 = v188;
          goto LABEL_29;
        }

        sub_1C6BFEF44(v188, v178, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        v135 = swift_getEnumCaseMultiPayload();
        v136 = v80;
        if (v135)
        {
          if (v135 == 1)
          {
            v137 = 0x6153657069636572;
            v138 = 0xEB00000000646576;
          }

          else
          {
            v137 = 0x6956657069636572;
            v138 = 0xEC00000064657765;
          }
        }

        else
        {
          v137 = 0x65646F4D6B6F6F63;
          v138 = 0xEE00646577656956;
        }

        sub_1C6BFDF5C(0);
        v157 = v156;
        v158 = *(v156 + 48);
        v159 = *(v156 + 64);
        sub_1C6BFEFAC(v178, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
        *v78 = v137;
        v78[1] = v138;
        v147 = v136;
        sub_1C6BFEF44(v136, v78 + v158, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        v148 = v190;
        sub_1C6BFEF44(v190, v78 + v159, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v160 = v171;
        sub_1C6BFE158(v183 + v186, v171, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v161 = v181;
        if (v108(v160, 1, v181) == 1)
        {
          v162 = v169;
          sub_1C6D789F0();
          if (v108(v160, 1, v161) != 1)
          {
            sub_1C6BFE1C4(v160, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v162 = v169;
          (*(v185 + 32))(v169, v160, v161);
        }

        v152 = *(v157 + 80);
        v153 = sub_1C6D789E0();
        v189(v162, v161);
        v154 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        v155 = &v198;
LABEL_68:
        sub_1C6BFEFAC(*(v155 - 32), v154);
        sub_1C6BFEFAC(v148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6BFEFAC(v147, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
        *(v78 + v152) = v153;
        _s10ValidationOMa(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    *&v192 = 0;
    *(&v192 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000025, 0x80000001C6D9F150);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v114 = *(&v192 + 1);
    v113 = v192;
    v115 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
    goto LABEL_27;
  }

  v88 = v184[4];
  if (v88 <= 0.0 || (sub_1C6BFE0B4(0.0, 1.0), v89 >= v88))
  {
    *&v192 = 0;
    *(&v192 + 1) = 0xE000000000000000;
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9F1B0);
    sub_1C6D79910();
    MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
    v111 = v192;
    sub_1C6BFEFAC(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6BFEFAC(v76, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    *v78 = v111;
    _s10ValidationOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_1C6BFEFAC(v85, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    v90 = v173;
    sub_1C6BFEF44(v188, v173, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v91 = swift_getEnumCaseMultiPayload();
    v92 = v76;
    if (v91)
    {
      if (v91 == 1)
      {
        v93 = 0x6153657069636572;
        v94 = 0xEB00000000646576;
      }

      else
      {
        v93 = 0x6956657069636572;
        v94 = 0xEC00000064657765;
      }
    }

    else
    {
      v93 = 0x65646F4D6B6F6F63;
      v94 = 0xEE00646577656956;
    }

    sub_1C6BFDF5C(0);
    v140 = v139[12];
    v141 = v139[16];
    v142 = v139[20];
    sub_1C6BFEFAC(v90, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    *v78 = v93;
    v78[1] = v94;
    sub_1C6BFDFEC(v92, v78 + v140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BFDFEC(v84, v78 + v141, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    *(v78 + v142) = 0;
    _s10ValidationOMa(0);
    swift_storeEnumTagMultiPayload();
    return sub_1C6BFEFAC(v186, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }
}

uint64_t sub_1C6BFC300(uint64_t a1)
{
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000017, 0x80000001C6D9BD50);
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  return 0;
}

uint64_t sub_1C6BFC3A4()
{

  return swift_deallocClassInstance();
}

void sub_1C6BFC3EC()
{
  if (!qword_1EC1D7848)
  {
    v0 = sub_1C6D783B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7848);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C6BFC460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C6BFC4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6BFC504(uint64_t a1)
{
  v2 = sub_1C6BFF7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFC540(uint64_t a1)
{
  v2 = sub_1C6BFF7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFC620(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), double a6, double a7)
{
  sub_1C6BFF8B4(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v17 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A300();
  v19 = 0;
  sub_1C6D7A060();
  if (!v7)
  {
    v18 = 1;
    sub_1C6D7A060();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1C6BFC7A0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA56770](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1CCA56770](*&v3);
}

uint64_t sub_1C6BFC7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

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

uint64_t sub_1C6BFC8D0(uint64_t a1)
{
  v2 = sub_1C6BFF80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFC90C(uint64_t a1)
{
  v2 = sub_1C6BFF80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C6BFC998(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, double *a6@<X8>)
{
  v8 = sub_1C6BFE348(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 1) = v9;
  }
}

uint64_t sub_1C6BFCA28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6BFC7A0(v1, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCA7C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C6D7A260();
  sub_1C6BFC7A0(v2, v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6D7A130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6BFCB78(uint64_t a1)
{
  v2 = sub_1C6BFF860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFCBB4(uint64_t a1)
{
  v2 = sub_1C6BFF860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFCBF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D7948, sub_1C6BFF860, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.RecipeSavedConditions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF860();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v15;
  sub_1C6D79FC0();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v12;
  return result;
}

uint64_t sub_1C6BFCDA8(void *a1)
{
  sub_1C6BFF8B4(0, &qword_1EC1D7968, sub_1C6BFF860, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.RecipeSavedConditions.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF860();
  sub_1C6D7A300();
  sub_1C6D7A060();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C6BFCF14()
{
  v1 = *v0;
  sub_1C6D7A260();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA56770](*&v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFCF70()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1CCA56770](*&v1);
}

uint64_t sub_1C6BFCFAC(uint64_t a1)
{
  v2 = *v1;
  sub_1C6D7A260();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD018(void *a1)
{
  v3 = v1;
  sub_1C6BFF8B4(0, &qword_1EC1D78D8, sub_1C6BFF31C, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.EventConditions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF31C();
  sub_1C6D7A300();
  v12 = *v3;
  v13 = 0;
  sub_1C6BFF46C();
  sub_1C6D7A090();
  if (!v2)
  {
    v12 = v3[1];
    v13 = 1;
    sub_1C6BFF4C0();
    sub_1C6D7A090();
    *&v12 = *(v3 + 4);
    v13 = 2;
    sub_1C6BFF514();
    sub_1C6D7A090();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6BFD220()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  v4 = v0[2];
  v5 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1CCA56770](*&v6);
  v7 = v0[4];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x1CCA56770](*&v7);
}

uint64_t sub_1C6BFD2AC()
{
  v1 = 0x65646F4D6B6F6F63;
  if (*v0 != 1)
  {
    v1 = 0x6153657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6956657069636572;
  }
}

uint64_t sub_1C6BFD324@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6BFE800(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6BFD34C(uint64_t a1)
{
  v2 = sub_1C6BFF31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFD388(uint64_t a1)
{
  v2 = sub_1C6BFF31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C6BFD3C4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C6BFE538(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C6BFD424()
{
  sub_1C6D7A260();
  sub_1C6BFD220();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD468(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6BFD220();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD4E4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF736E6F69746964;
  v3 = 0x6E6F43746E657665;
  v4 = *a1;
  v5 = 0x6D614E7475706E69;
  v6 = 0xEA00000000007365;
  if (v4 == 1)
  {
    v5 = 0x6E6F43746E657665;
    v6 = 0xEF736E6F69746964;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001C6D96E10;
  }

  if (*a2 != 1)
  {
    v3 = 0x6D614E7475706E69;
    v2 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001C6D96E10;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6BFD5F0()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFD6A8(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6BFD74C(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6BFD800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6BFE928(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6BFD830(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF736E6F69746964;
  v4 = 0x6E6F43746E657665;
  if (v2 != 1)
  {
    v4 = 0x6D614E7475706E69;
    v3 = 0xEA00000000007365;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001C6D96E10;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1C6BFD8A4()
{
  v1 = 0x6E6F43746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6D614E7475706E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1C6BFD914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6BFE928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6BFD93C(uint64_t a1)
{
  v2 = sub_1C6BFEDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6BFD978(uint64_t a1)
{
  v2 = sub_1C6BFEDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6BFD9B4(void *a1)
{
  v3 = v1;
  sub_1C6BFF8B4(0, &qword_1EC1D7870, sub_1C6BFEDE8, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFEDE8();
  sub_1C6D7A300();
  LOBYTE(v13[0]) = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v13[0] = *(v3 + 8);
    v13[1] = v11;
    v14 = *(v3 + 40);
    v15 = 1;
    sub_1C6BFEE90();
    sub_1C6D7A090();
    *&v13[0] = *(v3 + 48);
    v15 = 2;
    sub_1C6B855D0();
    sub_1C6BFEEE4(&qword_1EDCE6630, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C6D7A090();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6BFDBDC(uint64_t a1)
{
  MEMORY[0x1CCA56740](*v1);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1CCA56770](*&v2);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1CCA56770](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1CCA56770](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA56770](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x1CCA56770](*&v10);
  v11 = *(v1 + 48);
  v12 = *(v11 + 16);
  result = MEMORY[0x1CCA56740](v12);
  if (v12)
  {
    v14 = v11 + 40;
    do
    {

      sub_1C6D79610();

      v14 += 16;
      --v12;
    }

    while (v12);
  }

  return result;
}

double sub_1C6BFDCD8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C6BFE974(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C6BFDD40()
{
  sub_1C6D7A260();
  sub_1C6BFDBDC(v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFDD84(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6BFDBDC(v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BFDDC0(uint64_t a1, uint64_t a2)
{
  v2 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), xmmword_1C6D80110)) & 0xF;
  if (*a1 == *a2 && v2 == 0 && *(a1 + 40) == *(a2 + 40))
  {
    return sub_1C6B55CF8(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C6BFDE40()
{
  result = qword_1EDCE0170;
  if (!qword_1EDCE0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0170);
  }

  return result;
}

void sub_1C6BFDEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6BFDF5C(uint64_t a1)
{
  if (!qword_1EC1D7850)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(255);
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1D7850);
    }
  }
}

uint64_t sub_1C6BFDFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6BFE05C()
{
  result = qword_1EDCE5B20;
  if (!qword_1EDCE5B20)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5B20);
  }

  return result;
}

void sub_1C6BFE0B4(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1CCA57120](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1C6BFE0B4(a1, a2);
  }
}

uint64_t sub_1C6BFE158(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BFDEA8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BFE1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BFDEA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1C6BFE220(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C6D797F0();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_1C6BFE2BC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1C6BFED9C();
    v4 = sub_1C6D797F0();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

double sub_1C6BFE348(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  sub_1C6BFF8B4(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v5)
  {
    v14 = v21;
    v23 = 0;
    v15 = sub_1C6D79F70();
    v17 = v16;
    v18 = *&v15;
    v22 = 1;
    sub_1C6D79F70();
    if (v17)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v18;
    }

    (*(v14 + 8))(v13, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1C6BFE538@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v21 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D78B0, sub_1C6BFF31C, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.EventConditions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFF31C();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v21;
  v22 = 0;
  sub_1C6BFF370();
  sub_1C6D79F90();
  if (v25)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v23;
  }

  if (v25)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v24;
  }

  v22 = 1;
  sub_1C6BFF3C4();
  sub_1C6D79F90();
  v14 = v10;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v22 = 2;
  sub_1C6BFF418();
  sub_1C6D79F90();
  v19 = 0.0;
  if (v17)
  {
    v16 = 0.0;
    v15 = 0.0;
  }

  (*(v14 + 8))(v9, v5);
  if (!LOBYTE(v24))
  {
    v19 = v23;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  v11[3] = v16;
  v11[4] = v19;
  return result;
}

uint64_t sub_1C6BFE800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956657069636572 && a2 == 0xEC00000064657765;
  if (v4 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6B6F6F63 && a2 == 0xEE00646577656956 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6153657069636572 && a2 == 0xEB00000000646576)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6D7A130();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1C6BFE928(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6BFE974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1C6BFF8B4(0, &qword_1EC1D7858, sub_1C6BFEDE8, &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22.i8[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6BFEDE8();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v24;
  v26.i8[0] = 0;
  v12 = v5;
  v13 = sub_1C6D79F80();
  if (v14)
  {
    v15 = 128;
  }

  else
  {
    v15 = v13;
  }

  v25 = 1;
  sub_1C6BFEE3C();
  sub_1C6D79F90();
  v22 = v27;
  v23 = v26;
  if (v29)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v28;
  }

  if (v29)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  sub_1C6B855D0();
  v25 = 2;
  sub_1C6BFEEE4(&qword_1EDCE6628, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C6D79F90();
  v19 = vdupq_n_s64(v17);
  v22 = vbslq_s8(v19, xmmword_1C6D83E50, v22);
  v23 = vbslq_s8(v19, xmmword_1C6D83E50, v23);
  (*(v10 + 8))(v9, v12);
  v20 = v26.i64[0];
  if (v26.i64[0])
  {
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v15;
  v21 = v23;
  *(v11 + 24) = v22;
  *(v11 + 8) = v21;
  *(v11 + 40) = v16;
  *(v11 + 48) = v20;
  return result;
}

void sub_1C6BFEC6C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 recipeViewed];
  [v4 probability];
  v6 = v5;

  v7 = [a1 recipeViewed];
  [v7 probability];
  v9 = v8;

  v10 = [a1 cookModeViewed];
  [v10 probability];
  v12 = v11;

  v13 = [a1 cookModeViewed];
  [v13 probability];
  v15 = v14;

  v16 = [a1 recipeSaved];
  [v16 probability];
  v18 = v17;

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v18;
}

unint64_t sub_1C6BFED9C()
{
  result = qword_1EC1D6EA8;
  if (!qword_1EC1D6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1D6EA8);
  }

  return result;
}

unint64_t sub_1C6BFEDE8()
{
  result = qword_1EC1D7860;
  if (!qword_1EC1D7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7860);
  }

  return result;
}

unint64_t sub_1C6BFEE3C()
{
  result = qword_1EC1D7868;
  if (!qword_1EC1D7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7868);
  }

  return result;
}

unint64_t sub_1C6BFEE90()
{
  result = qword_1EC1D7878;
  if (!qword_1EC1D7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7878);
  }

  return result;
}

uint64_t sub_1C6BFEEE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B855D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6BFEF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BFEFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6BFF01C(uint64_t a1)
{
  sub_1C6BFDF5C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1C6BFF0AC(uint64_t a1)
{
  result = sub_1C6D78810();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6BFF158(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6BFF178(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1C6BFF1C0()
{
  result = qword_1EC1D7890;
  if (!qword_1EC1D7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7890);
  }

  return result;
}

unint64_t sub_1C6BFF218()
{
  result = qword_1EC1D7898;
  if (!qword_1EC1D7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7898);
  }

  return result;
}

unint64_t sub_1C6BFF270()
{
  result = qword_1EC1D78A0;
  if (!qword_1EC1D78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78A0);
  }

  return result;
}

unint64_t sub_1C6BFF2C8()
{
  result = qword_1EC1D78A8;
  if (!qword_1EC1D78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78A8);
  }

  return result;
}

unint64_t sub_1C6BFF31C()
{
  result = qword_1EC1D78B8;
  if (!qword_1EC1D78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78B8);
  }

  return result;
}

unint64_t sub_1C6BFF370()
{
  result = qword_1EC1D78C0;
  if (!qword_1EC1D78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78C0);
  }

  return result;
}

unint64_t sub_1C6BFF3C4()
{
  result = qword_1EC1D78C8;
  if (!qword_1EC1D78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78C8);
  }

  return result;
}

unint64_t sub_1C6BFF418()
{
  result = qword_1EC1D78D0;
  if (!qword_1EC1D78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78D0);
  }

  return result;
}

unint64_t sub_1C6BFF46C()
{
  result = qword_1EC1D78E0;
  if (!qword_1EC1D78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78E0);
  }

  return result;
}

unint64_t sub_1C6BFF4C0()
{
  result = qword_1EC1D78E8;
  if (!qword_1EC1D78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78E8);
  }

  return result;
}

unint64_t sub_1C6BFF514()
{
  result = qword_1EC1D78F0;
  if (!qword_1EC1D78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78F0);
  }

  return result;
}

unint64_t sub_1C6BFF5AC()
{
  result = qword_1EC1D78F8;
  if (!qword_1EC1D78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D78F8);
  }

  return result;
}

unint64_t sub_1C6BFF604()
{
  result = qword_1EC1D7900;
  if (!qword_1EC1D7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7900);
  }

  return result;
}

unint64_t sub_1C6BFF65C()
{
  result = qword_1EC1D7908;
  if (!qword_1EC1D7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7908);
  }

  return result;
}

unint64_t sub_1C6BFF6B4()
{
  result = qword_1EC1D7910;
  if (!qword_1EC1D7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7910);
  }

  return result;
}

unint64_t sub_1C6BFF70C()
{
  result = qword_1EC1D7918;
  if (!qword_1EC1D7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7918);
  }

  return result;
}

unint64_t sub_1C6BFF764()
{
  result = qword_1EC1D7920;
  if (!qword_1EC1D7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7920);
  }

  return result;
}

unint64_t sub_1C6BFF7B8()
{
  result = qword_1EC1D7930;
  if (!qword_1EC1D7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7930);
  }

  return result;
}

unint64_t sub_1C6BFF80C()
{
  result = qword_1EC1D7940;
  if (!qword_1EC1D7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7940);
  }

  return result;
}

unint64_t sub_1C6BFF860()
{
  result = qword_1EC1D7950;
  if (!qword_1EC1D7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7950);
  }

  return result;
}

void sub_1C6BFF8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1C6BFF950()
{
  result = qword_1EC1D7970;
  if (!qword_1EC1D7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7970);
  }

  return result;
}

unint64_t sub_1C6BFF9A8()
{
  result = qword_1EC1D7978;
  if (!qword_1EC1D7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7978);
  }

  return result;
}

unint64_t sub_1C6BFFA00()
{
  result = qword_1EC1D7980;
  if (!qword_1EC1D7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7980);
  }

  return result;
}

unint64_t sub_1C6BFFA58()
{
  result = qword_1EC1D7988;
  if (!qword_1EC1D7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7988);
  }

  return result;
}

unint64_t sub_1C6BFFAB0()
{
  result = qword_1EC1D7990;
  if (!qword_1EC1D7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7990);
  }

  return result;
}

unint64_t sub_1C6BFFB08()
{
  result = qword_1EC1D7998;
  if (!qword_1EC1D7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7998);
  }

  return result;
}

unint64_t sub_1C6BFFB60()
{
  result = qword_1EC1D79A0;
  if (!qword_1EC1D79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79A0);
  }

  return result;
}

unint64_t sub_1C6BFFBB8()
{
  result = qword_1EC1D79A8;
  if (!qword_1EC1D79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79A8);
  }

  return result;
}

unint64_t sub_1C6BFFC10()
{
  result = qword_1EC1D79B0;
  if (!qword_1EC1D79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D79B0);
  }

  return result;
}

uint64_t FCFeedPersonalizationConfigurationSet.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791C0();
  if ((a1 - 1) > 0x26)
  {
    v5 = MEMORY[0x1E69B5CD8];
  }

  else
  {
    v5 = qword_1E8297150[a1 - 1];
  }

  (*(*(v4 - 8) + 104))(a2, *v5, v4);
  v6 = *MEMORY[0x1E69B5A28];
  v7 = sub_1C6D79170();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t FCFeedPersonalizationConfigurationSet.headlineContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791C0();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0x26)
  {
    v6 = MEMORY[0x1E69B5CD8];
  }

  else
  {
    v6 = qword_1E8297150[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t FCFeedPersonalizationConfigurationSet.issueContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D791A0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5B98];
  if (a1 != 3)
  {
    v6 = MEMORY[0x1E69B5BA0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t FCFeedPersonalizationConfigurationSet.recipeContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5CA0];
  v3 = sub_1C6D791B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6BFFF3C()
{

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(v1 + *(v7 + 28), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C02F44(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(uint64_t a1)
{
  result = qword_1EDCE38A8;
  if (!qword_1EDCE38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6D78A30();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6C002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(a1 + *(v8 + 28), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C02F44(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t sub_1C6C00468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 28);
  sub_1C6C02F44(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 28);
  sub_1C6C02F44(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 28);
  *(v5 + 12) = v16;
  sub_1C6C02EC4(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C02F44(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C008A8;
}

void sub_1C6C008A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6C02F44(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C02E68(v5);
  }

  else
  {
    sub_1C6C02F44(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hasMetadata.getter()
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(v0 + *(v5 + 28), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C02F44(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 28);
  sub_1C6C02F44(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(v1 + *(v8 + 32), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C02F44(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C00D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(a1 + *(v9 + 32), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C02F44(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C00EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 32);
  sub_1C6C02F44(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 32);
  sub_1C6C02F44(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 32);
  *(v5 + 12) = v16;
  sub_1C6C02EC4(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C02F44(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C01320;
}

void sub_1C6C01320(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C02F44(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C02F44(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(v0 + *(v6 + 32), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C02F44(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 32);
  sub_1C6C02F44(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.scrollData.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C01800()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D79B8);
  __swift_project_value_buffer(v0, qword_1EC1D79B8);
  sub_1C6C03250(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "duration";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "scroll_data";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D79B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6C01D20(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
          sub_1C6C03388(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
          sub_1C6D78BA0();
        }
      }

      else if (result == 1)
      {
        sub_1C6D78B50();
      }

      else if (result == 2)
      {
        sub_1C6C01C6C(a1, v5, a2, a3);
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6C01C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C03388(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C01D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6D78A00();
  sub_1C6C03388(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C01F08(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6C0212C(v3, a1, a2, a3);
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
        sub_1C6C03388(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
        sub_1C6D78CE0();
      }

      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C01F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(a1 + *(v14 + 28), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C02F44(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C03388(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6C0212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C02EC4(a1 + *(v15 + 32), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C02F44(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C03388(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6C03388(&qword_1EC1D79D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C02400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  sub_1C6D78A30();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6C02528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C03388(&unk_1EC1D79E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C025A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D79B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0264C(uint64_t a1)
{
  v2 = sub_1C6C03388(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C026B8(uint64_t a1, uint64_t a2)
{
  sub_1C6C03388(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleReadV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v61 = sub_1C6D78A00();
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v5);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v59 = &v52 - v11;
  sub_1C6C032B4(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v52 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v52 - v23;
  sub_1C6C032B4(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v52 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v53 = v13;
  v57 = v4;
  v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  v31 = *(v30 + 28);
  v32 = *(v26 + 48);
  v54 = v30;
  v55 = a1;
  sub_1C6C02EC4(a1 + v31, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v56 = a2;
  sub_1C6C02EC4(a2 + v31, &v29[v32], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v33 = *(v17 + 48);
  if (v33(v29, 1, v16) == 1)
  {
    if (v33(&v29[v32], 1, v16) == 1)
    {
      sub_1C6C02F44(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_1EC1D68C8;
    v35 = qword_1EDCE2DF8;
    v36 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C0332C(v29, v34, v35, v36);
    goto LABEL_16;
  }

  sub_1C6C02EC4(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if (v33(&v29[v32], 1, v16) == 1)
  {
    sub_1C6C02E68(v24);
    goto LABEL_7;
  }

  sub_1C6B3E2B0(&v29[v32], v20);
  v37 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v24, v20);
  sub_1C6C02E68(v20);
  sub_1C6C02E68(v24);
  sub_1C6C02F44(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((v37 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v38 = *(v54 + 32);
  v39 = *(v53 + 48);
  v40 = MEMORY[0x1E69AAB70];
  v41 = v55;
  v29 = v60;
  sub_1C6C02EC4(v55 + v38, v60, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C02EC4(v56 + v38, &v29[v39], &qword_1EDCDFD00, v40);
  v42 = *(v57 + 48);
  v43 = v61;
  if (v42(v29, 1, v61) != 1)
  {
    v44 = v59;
    sub_1C6C02EC4(v29, v59, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v42(&v29[v39], 1, v43) != 1)
    {
      v47 = v57;
      v48 = &v29[v39];
      v49 = v58;
      (*(v57 + 32))(v58, v48, v43);
      sub_1C6C03388(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
      v50 = sub_1C6D79560();
      v51 = *(v47 + 8);
      v51(v49, v43);
      v51(v44, v43);
      sub_1C6C02F44(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      if ((v50 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v57 + 8))(v44, v43);
    goto LABEL_14;
  }

  if (v42(&v29[v39], 1, v43) != 1)
  {
LABEL_14:
    v34 = &qword_1EC1D6F60;
    v35 = &qword_1EDCDFD00;
    v36 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  sub_1C6C02F44(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
  if (sub_1C6B5A9B0(*(v41 + 1), *(v56 + 1)))
  {
    sub_1C6D78A40();
    sub_1C6C03388(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v45 = sub_1C6D79560();
    return v45 & 1;
  }

LABEL_16:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C6C02E68(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C02EC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C03250(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C02F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C03250(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C030FC(uint64_t a1)
{
  sub_1C6C03250(319, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6C03250(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6C03250(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6C03250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6C032B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C03250(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C0332C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C032B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C03388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Collection<>.mean.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6D799F0();
  if ((result & 1) == 0)
  {
    sub_1C6D796B0();
    return sub_1C6D799E0();
  }

  return result;
}

void *sub_1C6C03494@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void Collection<>.standardDeviation.getter(uint64_t a1, uint64_t a2)
{
  if (sub_1C6D799E0() >= 2)
  {
    v4 = Collection<>.mean.getter(a1, a2);
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1C6D796B0();
    v6 = sub_1C6D799E0();
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      sqrt(v7 / (v6 - 1));
    }
  }
}

double sub_1C6C0359C@<D0>(double *a1@<X0>, unint64_t *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + (*a2 - *(v3 + 16)) * (*a2 - *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1C6C035E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*v2 + 16);
  v6 = type metadata accessor for ExtensionUserContext(0);
  v7 = swift_allocObject();
  sub_1C6C03890(v5, a1);
  a2[3] = v6;
  a2[4] = sub_1C6C04FF0();
  *a2 = v7;
  v8 = a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C6C03698@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) userEmbeddingData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C6D75E60();
    v7 = v6;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6C05048();
    sub_1C6D75AF0();
    sub_1C6B1C9F0(v5, v7);

    v11 = v13;
    v12 = v14;
  }

  else
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCEA6A8;
    v9 = sub_1C6D79AC0();
    result = sub_1C6D78D30("not returning user embedding because we have no data for it", 59, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
    v11 = 0;
    v12 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  return result;
}

uint64_t sub_1C6C03890(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v5 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState;
  v6 = sub_1C6D76330();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___bundled) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___read) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen) = 0;
  v7 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location;
  sub_1C6C04D28(0);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___newlySubscribed) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C6C03998()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = [*(v0 + 16) rankedAllSubscribedTagIDs];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C6D79780();
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1C6B1E610(v4);

    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03A44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = [*(v0 + 16) autoFavoriteTagIDs];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C6D79780();
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1C6B1E610(v4);

    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03AF0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    *(v0 + 48) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1C6C03B30()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = [*(v0 + 16) groupableTagIDs];
    if (v2)
    {
      v3 = v2;
      v1 = sub_1C6D79960();
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03BD0@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C04C94(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState;
  swift_beginAccess();
  sub_1C6C053DC(v1 + v11, v10, sub_1C6C04C94);
  v12 = sub_1C6D76330();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_1C6C0525C(v10, sub_1C6C04C94);
  sub_1C6C03DD0(v1, a1);
  (*(v13 + 16))(v6, a1, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_1C6C05444(v6, v1 + v11, sub_1C6C04C94);
  return swift_endAccess();
}

uint64_t sub_1C6C03DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + 16) bundleSubscription];
  if (!v3)
  {
    v9 = *MEMORY[0x1E69E32A0];
    v10 = sub_1C6D76330();
    v7 = *(*(v10 - 8) + 104);
    v6 = v10;
    v11 = a2;
    v12 = v9;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 unprotectedSubscriptionState];

  v6 = sub_1C6D76330();
  v7 = *(*(v6 - 8) + 104);
  if (v5 > 1)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    v8 = MEMORY[0x1E69E32B0];
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v8 = MEMORY[0x1E69E32A8];
  }

  else
  {
LABEL_7:
    v8 = MEMORY[0x1E69E32A0];
  }

LABEL_9:
  v12 = *v8;
  v11 = a2;
LABEL_10:

  return v7(v11, v12, v6);
}

uint64_t sub_1C6C03EF0(uint64_t a1)
{
  v1 = [*(a1 + 16) bundleSubscription];
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 bundleChannelIDs];
    v5 = [v4 set];

    v6 = sub_1C6D79960();
    v7 = sub_1C6C03FB4(v6);

    if (v7)
    {
      return v7;
    }
  }

  return v2;
}

uint64_t sub_1C6C03FB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6C05384();
    v2 = sub_1C6D79D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1C6B68D84(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1C6C05104(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1C6C0414C(uint64_t a1)
{
  v1 = [*(a1 + 16) recentlySeenHistoryItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  sub_1C6C05320();
  v3 = sub_1C6D79780();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v19 = MEMORY[0x1E69E7CC0];
      result = sub_1C6B39280(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v19;
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1CCA56240](v6, v3);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v9 = *(v3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
        }

        result = [v9 articleID];
        if (!result)
        {
          goto LABEL_23;
        }

        v10 = result;
        v11 = sub_1C6D795A0();
        v13 = v12;
        swift_unknownObjectRelease();

        v15 = *(v19 + 16);
        v14 = *(v19 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C6B39280((v14 > 1), v15 + 1, 1);
        }

        *(v19 + 16) = v15 + 1;
        v16 = v19 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        ++v6;
        if (v8 == v4)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v4 = sub_1C6D79E90();
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v17 = sub_1C6B1E610(v7);

    return v17;
  }

  return result;
}

uint64_t sub_1C6C04348()
{
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened))
  {
    v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1C6C04390()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen;
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen);
  }

  else
  {
    v3 = [*(v0 + 16) recentlyReadHistoryItems];
    if (v3)
    {
      v4 = v3;
      sub_1C6C05320();
      sub_1C6D79490();

      v2 = sub_1C6B69168();
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C6C04454@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C04CB4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location;
  swift_beginAccess();
  sub_1C6C053DC(v1 + v11, v10, sub_1C6C04CB4);
  sub_1C6C04D28(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) != 1)
  {
    return sub_1C6C052BC(v10, a1);
  }

  sub_1C6C0525C(v10, sub_1C6C04CB4);
  v15 = sub_1C6D770E0();
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  sub_1C6C053DC(a1, v6, sub_1C6C04D28);
  (*(v14 + 56))(v6, 0, 1, v13);
  swift_beginAccess();
  sub_1C6C05444(v6, v1 + v11, sub_1C6C04CB4);
  return swift_endAccess();
}

uint64_t sub_1C6C04678(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void sub_1C6C046E0(uint64_t a1)
{
  sub_1C6C0509C(0);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    v38 = v6;
    v8 = [v7 rankedAllSubscribedTagIDs];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C6D79780();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = [v7 rankedAllSubscriptionDates];
    if (v11)
    {
      v12 = v11;
      sub_1C6D75F50();
      v13 = sub_1C6D79780();

      v14 = *(v10 + 16);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v14 = *(v10 + 16);
      if (v14)
      {
LABEL_8:
        v15 = 0;
        v16 = v10 + 40;
        v34 = v14 - 1;
        v35 = v10 + 40;
        v36 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = (v16 + 16 * v15);
          v18 = v15;
          while (1)
          {
            if (v18 >= *(v10 + 16))
            {
              __break(1u);
LABEL_26:
              __break(1u);
              return;
            }

            v19 = *(v13 + 16);
            if (v18 == v19)
            {
              goto LABEL_24;
            }

            if (v18 >= v19)
            {
              goto LABEL_26;
            }

            v20 = *(v17 - 1);
            v21 = *v17;
            v22 = sub_1C6D75F50();
            v23 = *(v22 - 8);
            v24 = *(v23 + 16);
            v25 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
            v26 = *(v37 + 48);
            *v5 = v20;
            *(v5 + 1) = v21;
            v24(&v5[v26], v25, v22);

            v27 = sub_1C6D75ED0();
            v28 = [v38 containsDate_];

            if (v28)
            {
              break;
            }

            ++v18;
            sub_1C6C0525C(v5, sub_1C6C0509C);
            v17 += 2;
            if (v14 == v18)
            {
              goto LABEL_24;
            }
          }

          sub_1C6C0525C(v5, sub_1C6C0509C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1C6B6592C(0, *(v36 + 2) + 1, 1, v36);
          }

          v30 = *(v36 + 2);
          v29 = *(v36 + 3);
          if (v30 >= v29 >> 1)
          {
            v36 = sub_1C6B6592C((v29 > 1), v30 + 1, 1, v36);
          }

          v15 = v18 + 1;
          v16 = v35;
          v31 = v36;
          *(v36 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v20;
          *(v32 + 5) = v21;
        }

        while (v34 != v18);
        goto LABEL_24;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_24:

    sub_1C6B1E610(v36);
  }
}

uint64_t sub_1C6C04A1C()
{
  swift_unknownObjectRelease();

  sub_1C6C0525C(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState, sub_1C6C04C94);

  sub_1C6C0525C(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location, sub_1C6C04CB4);

  return v0;
}

uint64_t sub_1C6C04AFC()
{
  sub_1C6C04A1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExtensionUserContext(uint64_t a1)
{
  result = qword_1EDCE72A0;
  if (!qword_1EDCE72A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C04BA8(uint64_t a1)
{
  sub_1C6C04C94(319);
  if (v1 <= 0x3F)
  {
    sub_1C6C04CB4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C6C04CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C04D90()
{
  v1 = [*(*v0 + 16) mutedTagIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1C6D79960();

  return v3;
}

uint64_t sub_1C6C04EA8()
{
  v1 = [*(*v0 + 16) purchasedTagIDs];
  v2 = sub_1C6D79960();

  return v2;
}

unint64_t sub_1C6C04FF0()
{
  result = qword_1EDCE72B0;
  if (!qword_1EDCE72B0)
  {
    type metadata accessor for ExtensionUserContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE72B0);
  }

  return result;
}

unint64_t sub_1C6C05048()
{
  result = qword_1EC1D7A58;
  if (!qword_1EC1D7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7A58);
  }

  return result;
}

void sub_1C6C0509C(uint64_t a1)
{
  if (!qword_1EDCE6690)
  {
    sub_1C6D75F50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6690);
    }
  }
}

uint64_t sub_1C6C05104(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C6D7A260();
  sub_1C6D79610();
  result = sub_1C6D7A2B0();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_1C6D7A130();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C0525C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C052BC(uint64_t a1, uint64_t a2)
{
  sub_1C6C04D28(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C05320()
{
  result = qword_1EDCE6568;
  if (!qword_1EDCE6568)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6568);
  }

  return result;
}

void sub_1C6C05384()
{
  if (!qword_1EDCEA490)
  {
    v0 = sub_1C6D79D40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA490);
    }
  }
}

uint64_t sub_1C6C053DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C05444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(uint64_t a1)
{
  result = qword_1EDCE4528;
  if (!qword_1EDCE4528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0568C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6C05824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackListened.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackListened.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackListened.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6C05EFC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7A60);
  __swift_project_value_buffer(v0, qword_1EC1D7A60);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackListened._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7A60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6C0619C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C0619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C06BEC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6C062A8(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C062A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6C06BEC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  sub_1C6C06BEC(&qword_1EC1D7A78, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C06588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C06BEC(&qword_1EC1D7A98, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C06604@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7A60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C066AC(uint64_t a1)
{
  v2 = sub_1C6C06BEC(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C06718(uint64_t a1, uint64_t a2)
{
  sub_1C6C06BEC(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6C06BEC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C06BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t URL.validDirectory.getter()
{
  v1 = sub_1C6D75CA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C06DC4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D7E630;
  v7 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v8 = v7;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6B229D4(inited + 32);
  sub_1C6D75CE0();

  if (!v0)
  {
    v10 = sub_1C6D75C50();
    (*(v2 + 8))(v5, v1);
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1C6D75D70();
    }
  }

  return v9 & 1;
}

void sub_1C6C06DC4(uint64_t a1)
{
  if (!qword_1EDCE7CE0)
  {
    type metadata accessor for URLResourceKey(255);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7CE0);
    }
  }
}

uint64_t URL.directoryExits.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_1C6D75DB0();
  v1 = sub_1C6D79570();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return (v2 & v4);
}

char *URL.directoryAllocatedSize.getter()
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = sub_1C6D75CA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = URL.validDirectory.getter();
  if (!v0)
  {
    if (v11)
    {
      v39 = v2;
      v31[3] = v11;
      v41 = 0;
      v12 = [objc_opt_self() defaultManager];
      v13 = sub_1C6D75D30();
      v42 = 0;
      v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:&v42];

      v2 = v42;
      if (v14)
      {
        v15 = sub_1C6D79780();
        v16 = v2;

        v40 = *(v15 + 16);
        if (v40)
        {
          v33 = v1;
          v17 = v7;
          v18 = 0;
          v2 = 0;
          v19 = *MEMORY[0x1E695DC58];
          v36 = v15 + ((v17[80] + 32) & ~v17[80]);
          v37 = v19;
          v35 = v17 + 16;
          v32 = (v39 + 8);
          v38 = (v17 + 8);
          v39 = v17;
          v34 = xmmword_1C6D7E630;
          while (1)
          {
            if (v18 >= *(v15 + 16))
            {
              __break(1u);
LABEL_21:
              __break(1u);
            }

            (*(v39 + 2))(v10, v36 + *(v39 + 9) * v18, v6);
            sub_1C6C06DC4(0);
            inited = swift_initStackObject();
            *(inited + 16) = v34;
            v21 = v37;
            *(inited + 32) = v37;
            v22 = v21;
            sub_1C6B20798(inited);
            swift_setDeallocating();
            sub_1C6B229D4(inited + 32);
            v23 = v41;
            sub_1C6D75CE0();
            v41 = v23;
            if (v23)
            {
              break;
            }

            v24 = sub_1C6D75C70();
            v26 = v25;
            (*v32)(v5, v33);
            (*v38)(v10, v6);
            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = v24;
            }

            v28 = __OFADD__(v27, v2);
            v2 += v27;
            if (v28)
            {
              goto LABEL_21;
            }

            if (v40 == ++v18)
            {
              goto LABEL_17;
            }
          }

          (*v38)(v10, v6);
        }

        else
        {
          v2 = 0;
LABEL_17:
        }
      }

      else
      {
        v29 = v42;
        sub_1C6D75CC0();

        swift_willThrow();
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id sub_1C6C072E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v0 setAllowedUnits_];
  result = [v0 setCountStyle_];
  qword_1EC1D7AA0 = v0;
  return result;
}

uint64_t URL.directorySize.getter()
{
  URL.directoryAllocatedSize.getter();
  if (!v1)
  {
    if (v2)
    {
      return 0;
    }

    else
    {
      if (qword_1EC1D59D8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EC1D7AA0;
      v4 = sub_1C6D799A0();
      v5 = [v3 stringForObjectValue_];

      if (v5)
      {
        v0 = sub_1C6D795A0();
      }

      else
      {
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C6C0742C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C07A2C(0, &qword_1EDCE7D70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1C6D7A250();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C6C07550(uint64_t a1)
{
  v2 = sub_1C6D783E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1C6C07864(0);
    v11 = sub_1C6D79D30();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1C6C07A7C(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
      v18 = sub_1C6D79500();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1C6C07A7C(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
          v25 = sub_1C6D79560();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1C6C07864(uint64_t a1)
{
  if (!qword_1EC1D7AA8)
  {
    sub_1C6D783E0();
    sub_1C6C07A7C(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
    v1 = sub_1C6D79D40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7AA8);
    }
  }
}

unint64_t sub_1C6C078F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C07A2C(0, &qword_1EC1D7AB0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1CCA56710](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1C6C07A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1C6D79D40();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C6C07A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(uint64_t a1)
{
  result = qword_1EDCE4EF0;
  if (!qword_1EDCE4EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C07D30()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7AC0);
  __swift_project_value_buffer(v0, qword_1EC1D7AC0);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagMuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7AC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagMuted.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  sub_1C6D78A40();
  sub_1C6C085D4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  sub_1C6C085D4(&qword_1EC1D7AD8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C081C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C085D4(&qword_1EC1D7AF8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C08240@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7AC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C082E8(uint64_t a1)
{
  v2 = sub_1C6C085D4(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C08354(uint64_t a1, uint64_t a2)
{
  sub_1C6C085D4(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C084F0(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6C085D4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C085D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C0861C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= a1)
  {

    return v2;
  }

  sub_1C6C0B764();
  v6 = sub_1C6B75C84();
  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = v5;
  v9 = v4;
  v10 = v3;
  sub_1C6D7A190();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 != (v8 >> 1) - v9)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v5 = v8;
    v4 = v9;
    v3 = v10;
LABEL_3:
    sub_1C6B6E3BC(v6, v3, v4, v5);
    v2 = v7;
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C6C08754(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v5 = a1;
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_3;
    }

LABEL_33:

    return v4;
  }

  if (sub_1C6D79E90() <= a1)
  {
    goto LABEL_33;
  }

LABEL_3:

  v22 = sub_1C6BF4544(v6);
  v7 = &v22;
  sub_1C6C0B8F0();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v22;
    v3 = v22 < 0 || (v22 & 0x4000000000000000) != 0;
    if (!v3)
    {
      v8 = *(v22 + 16);
      if (v8 >= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = *(v22 + 16);
      }

      if (v5)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v8 >= v10)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }
  }

  v7 = sub_1C6D79E90();
  result = sub_1C6D79E90();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v7 >= v5)
    {
      v21 = v5;
    }

    else
    {
      v21 = v7;
    }

    if (v7 < 0)
    {
      v21 = v5;
    }

    if (v5)
    {
      v10 = v21;
    }

    else
    {
      v10 = 0;
    }

    if (sub_1C6D79E90() >= v10)
    {
LABEL_15:
      if ((v2 & 0xC000000000000001) != 0 && v10)
      {
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);

        v11 = 0;
        do
        {
          v12 = v11 + 1;
          sub_1C6D79D60();
          v11 = v12;
        }

        while (v10 != v12);
      }

      else
      {
      }

      if (v3)
      {
        v13 = sub_1C6D79EE0();
        v5 = v14;
        v7 = v15;
        v10 = v16;

        v2 = v13;
        if (v10)
        {
LABEL_26:
          sub_1C6D7A190();
          swift_unknownObjectRetain_n();
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = MEMORY[0x1E69E7CC0];
          }

          v19 = *(v18 + 16);

          if (!__OFSUB__(v10 >> 1, v7))
          {
            if (v19 == (v10 >> 1) - v7)
            {
              v4 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (!v4)
              {
                swift_unknownObjectRelease();
                return MEMORY[0x1E69E7CC0];
              }

              return v4;
            }

            goto LABEL_48;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v7 = 0;
        v5 = v2 + 32;
        v10 = (2 * v10) | 1;
        if (v10)
        {
          goto LABEL_26;
        }
      }

      sub_1C6B6E4AC(v2, v5, v7, v10);
      v4 = v17;
      swift_unknownObjectRelease();
      return v4;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t NotificationScoringServiceType.score(items:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D75F80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v11 = (*(a3 + 8))(a1, v10, a2, a3);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_1C6C08B00(__n128 *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v46 = *a1;
  v6 = sub_1C6C08FC4(a2, a3, a4);
  v8 = v4;
  if (v4)
  {
    if (qword_1EC1D5A98 != -1)
    {
LABEL_35:
      swift_once();
    }

    v9 = qword_1EC1D85A0;
    v10 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7E630;
    v48[3] = v8;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C6B2064C();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_1C6D78D30("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_1C6B09000, v9, v10, v11);

    sub_1C6C0B6E4(0);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  v42 = v6;
  if (v5 >> 62)
  {
    v6 = sub_1C6D79E90();
    v13 = v6;
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v46;
  if (!v13)
  {
LABEL_27:
    MEMORY[0x1EEE9AC00](v6, v7);
    v39 = sub_1C6C0BE14(v42, sub_1C6C0B758);

    if (*(v39 + 16))
    {
      sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
      v40 = sub_1C6D79F20();
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC8];
    }

    v48[0] = v40;

    sub_1C6C0BA94(v41, 1, v48);

    sub_1C6C0B6E4(0);
    swift_allocObject();
    return sub_1C6D78300();
  }

  v8 = 0;
  v44 = v5 & 0xFFFFFFFFFFFFFF8;
  v45 = v5 & 0xC000000000000001;
  v15 = MEMORY[0x1E69E7CC8];
  v43 = v5;
  while (1)
  {
    if (v45)
    {
      v18 = MEMORY[0x1CCA56240](v8, v5, v14);
    }

    else
    {
      if (v8 >= *(v44 + 16))
      {
        goto LABEL_32;
      }

      v18 = *(v5 + 8 * v8 + 32);
    }

    v19 = v18;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v47 = v8 + 1;
    v20 = [v18 identifier];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = sub_1C6D795A0();
    v24 = v23;

    v25 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v15;
    v28 = sub_1C6B5DEA8(v22, v24);
    v29 = v15[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_33;
    }

    v32 = v27;
    if (v15[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1C6B741AC();
        if (v32)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1C6B70E28(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1C6B5DEA8(v22, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_38;
      }

      v28 = v33;
      if (v32)
      {
LABEL_8:

        v15 = v48[0];
        v16 = *(v48[0] + 56);
        v17 = *(v16 + 8 * v28);
        *(v16 + 8 * v28) = v25;

        goto LABEL_9;
      }
    }

    v15 = v48[0];
    *(v48[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v35 = (v15[6] + 16 * v28);
    *v35 = v22;
    v35[1] = v24;
    *(v15[7] + 8 * v28) = v25;

    v36 = v15[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_34;
    }

    v15[2] = v38;
LABEL_9:
    ++v8;
    v14 = v46;
    v5 = v43;
    if (v47 == v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_38:
  sub_1C6D7A1C0();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}