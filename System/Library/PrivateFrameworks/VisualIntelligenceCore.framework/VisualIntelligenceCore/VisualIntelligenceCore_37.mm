void sub_1D8ACCF9C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1D885CC68(v7);
    }

    v80 = v7 + 16;
    v81 = *(v7 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[16 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D8ACDCE4((*a3 + 88 * *v82), (*a3 + 88 * *v84), (*a3 + 88 * v85), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 88 * v6 + 80);
      v10 = 88 * v8;
      v11 = *a3 + 88 * v8;
      v12 = *(v11 + 80);
      v13 = v8 + 2;
      v14 = (v11 + 256);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 11;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
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
        v18 = 88 * v6 - 88;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v100 = *(v22 + v10 + 80);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            memmove((v22 + v10), (v22 + v18), 0x58uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *(v21 + 80) = v100;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 88;
          v10 += 88;
        }

        while (v20 < v19);
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D87C7C5C(0, *(v7 + 2) + 1, 1, v7);
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v7 = sub_1D87C7C5C((v32 > 1), v33 + 1, 1, v7);
    }

    *(v7 + 2) = v34;
    v35 = v7 + 32;
    v36 = &v7[16 * v33 + 32];
    *v36 = v8;
    *(v36 + 1) = v6;
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 4);
          v39 = *(v7 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[16 * v37];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
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

        v75 = &v35[16 * v37 - 16];
        v76 = *v75;
        v77 = &v35[16 * v37];
        v78 = *(v77 + 1);
        sub_1D8ACDCE4((*a3 + 88 * *v75), (*a3 + 88 * *v77), (*a3 + 88 * v78), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v7 + 2);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        memmove(&v35[16 * v37], v77 + 16, 16 * (v79 - 1 - v37));
        *(v7 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[16 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[16 * v37];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 88 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 80) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 88;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 88;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v101 = *(v27 + 80);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 40);
    *(v27 + 32) = *(v27 - 56);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 24);
    *(v27 + 80) = *(v27 - 8);
    v30 = *(v27 - 72);
    *v27 = *(v27 - 88);
    *(v27 + 16) = v30;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    *(v28 + 64) = v99;
    *(v28 + 80) = v101;
    v27 -= 88;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
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
}

uint64_t sub_1D8ACD5CC(float *__dst, float *__src, unint64_t a3, float *a4)
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
    if (a4 != __dst || &__dst[6 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[6 * v9];
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

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[6 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 4) < *(v12 - 4))
      {
        v19 = v6 - 6;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 6, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 6;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 6;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[6 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1D8ACD808(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t *, unint64_t *, unint64_t *))
{
  v61 = a7;
  v58 = a6;
  v13 = a5(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v59 = &v49 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_60;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v19;
  v64 = a1;
  v63 = a4;
  v51 = a8;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v23;
    if (v23 >= 1)
    {
      v34 = -v19;
      v35 = a4 + v23;
      v54 = a1;
      v55 = a4;
      v53 = v34;
      do
      {
        v50 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v56 = v36;
        v57 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v64 = v36;
            v62 = v50;
            goto LABEL_58;
          }

          v39 = a3;
          v52 = v33;
          a3 += v34;
          v40 = v35 + v34;
          v42 = v58;
          v41 = v59;
          sub_1D8ACE44C(v40, v59, v58);
          v43 = v60;
          sub_1D8ACE44C(v37, v60, v42);
          v44 = *(v13 + 36);
          v45 = *(v43 + v44);
          v46 = *(v41 + v44);
          v47 = v43;
          v48 = v61;
          sub_1D8ACF23C(v47, v61);
          sub_1D8ACF23C(v41, v48);
          if (v45 < v46)
          {
            break;
          }

          v33 = v40;
          if (v39 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v54;
          }

          else
          {
            a1 = v54;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v40;
          v36 = v56;
          v38 = v40 > v55;
          v37 = v57;
          v34 = v53;
          if (!v38)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        if (v39 < v56 || a3 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v53;
          a1 = v54;
          v33 = v52;
        }

        else
        {
          a2 = v57;
          v34 = v53;
          a1 = v54;
          v33 = v52;
          if (v39 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v55);
    }

LABEL_57:
    v64 = a2;
    v62 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v22;
    v62 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        v25 = v58;
        v26 = v59;
        sub_1D8ACE44C(a2, v59, v58);
        v27 = v60;
        sub_1D8ACE44C(a4, v60, v25);
        v28 = *(v13 + 36);
        v29 = *(v27 + v28);
        v30 = *(v26 + v28);
        v31 = v27;
        v32 = v61;
        sub_1D8ACF23C(v31, v61);
        sub_1D8ACF23C(v26, v32);
        if (v29 >= v30)
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = a4 + v19;
          a4 += v19;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        a1 += v19;
        v64 = a1;
      }

      while (a4 < v57 && a2 < a3);
    }
  }

LABEL_58:
  v51(&v64, &v63, &v62);
  return 1;
}

uint64_t sub_1D8ACDCE4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[11 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[11 * v9];
    if (v8 < 88)
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

      if (v6[10] < v4[10])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 11;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 11;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 11;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[11 * v11] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v12 = &v4[11 * v11];
  if (v10 >= 88 && v6 > v7)
  {
LABEL_20:
    v5 -= 11;
    do
    {
      v15 = v5 + 11;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 11;
        if (v15 != v6)
        {
          memmove(v5, v6 - 11, 0x58uLL);
        }

        if (v12 <= v4 || (v6 -= 11, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 11);
      if (v15 != v12)
      {
        memmove(v5, v12 - 11, 0x58uLL);
      }

      v5 -= 11;
      v12 -= 11;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[11 * v18])
  {
    memmove(v6, v4, 88 * v18);
  }

  return 1;
}

uint64_t _s22VisualIntelligenceCore18CVTrackedDetectionC10PredictionV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (a1->f64[0] != a2->f64[0] || a1->f64[1] != a2->f64[1])
  {
    return 0;
  }

  v16 = v5;
  v17 = v4;
  v18 = v2;
  v19 = v3;
  v8 = a1[5].f64[0];
  v9 = a2[5].f64[0];
  v10 = a1[2];
  v15[0] = a1[1];
  v15[1] = v10;
  v11 = a1[4];
  v15[2] = a1[3];
  v15[3] = v11;
  v12 = a2[2];
  v14[0] = a2[1];
  v14[1] = v12;
  v13 = a2[4];
  v14[2] = a2[3];
  v14[3] = v13;
  return _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v15, v14) & (v8 == v9);
}

uint64_t sub_1D8ACDFE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (v6)
    {
      if ((v5 & 0xE0) == 0x20)
      {
        sub_1D8997618(*a1, v3);
        sub_1D8997618(v4, v5);
        if (*&v2 == *&v4)
        {
          v7 = ((v5 ^ v3) & 0x1F) == 0;
          return v7 & 1;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v5 >= 0x20)
    {
      goto LABEL_19;
    }

    sub_1D8997618(*a1, v3);
    sub_1D8997618(v4, v5);
    if (*&v2 != *&v4)
    {
      goto LABEL_20;
    }

    v7 = v3 == v5;
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        if ((v5 & 0xE0) == 0x60)
        {
LABEL_13:
          sub_1D8997618(*a1, v3);
          sub_1D8997618(v4, v5);
          if (*&v2 == *&v4)
          {
            v7 = 1;
            return v7 & 1;
          }

LABEL_20:
          v7 = 0;
          return v7 & 1;
        }
      }

      else if ((v5 & 0xE0) == 0x80)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_1D881F4C0(v4, v5);
      sub_1D8997618(v2, v3);
      sub_1D8997618(v4, v5);
      goto LABEL_20;
    }

    if ((v5 & 0xE0) != 0x40)
    {

      goto LABEL_19;
    }

    v9 = *a2;
    v10 = v2;
    sub_1D881F4C0(v4, v5);
    sub_1D881F4C0(v2, v3);
    sub_1D881F4C0(v4, v5);
    sub_1D881F4C0(v2, v3);
    v7 = static CVDetection.== infix(_:_:)(&v10, &v9);
    sub_1D8997618(v2, v3);
    sub_1D8997618(v4, v5);
    sub_1D8997618(v4, v5);
    sub_1D8997618(v2, v3);
  }

  return v7 & 1;
}

BOOL _s22VisualIntelligenceCore15CVTrackSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200() & 1) != 0 && (v4 = type metadata accessor for CVTrackSnapshot(0), v5 = v4[5], v6 = *(a1 + v5), v10 = *(a2 + v5), v11 = v6, , , LOBYTE(v6) = static CVDetection.== infix(_:_:)(&v11, &v10), , , (v6) && (v7 = v4[6], v8 = *(a1 + v7), v10 = *(a2 + v7), v11 = v8, , , LOBYTE(v8) = static CVDetection.== infix(_:_:)(&v11, &v10), , , (v8) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8ACE308()
{
  result = qword_1ECA69078;
  if (!qword_1ECA69078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69078);
  }

  return result;
}

unint64_t sub_1D8ACE35C()
{
  result = qword_1ECA69080;
  if (!qword_1ECA69080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69080);
  }

  return result;
}

uint64_t sub_1D8ACE3B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8ACE3F8()
{
  result = qword_1ECA69090;
  if (!qword_1ECA69090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69090);
  }

  return result;
}

uint64_t sub_1D8ACE44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ACE4FC(uint64_t a1)
{
  result = sub_1D8ACE3B0(&qword_1ECA690A0, type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8ACE554(uint64_t a1)
{
  result = sub_1D8ACE3B0(&qword_1ECA690A8, type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8ACE5B0()
{
  result = qword_1ECA690B0;
  if (!qword_1ECA690B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690B0);
  }

  return result;
}

uint64_t sub_1D8ACE66C(uint64_t a1)
{
  result = sub_1D8ACE3B0(&qword_1ECA690B8, type metadata accessor for CVTrackedDetection, &protocol conformance descriptor for CVTrackedDetection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8ACE6C4(uint64_t a1)
{
  result = sub_1D8ACE3B0(&qword_1ECA690C0, type metadata accessor for CVTrackedDetection, &protocol conformance descriptor for CVTrackedDetection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8ACE7BC(uint64_t a1)
{
  result = sub_1D8B13240();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8ACE86C(uint64_t a1)
{
  result = sub_1D8B13240();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8ACE934(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8ACE954(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_1D8ACE9B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 9))
  {
    return (*a1 + 28);
  }

  v3 = (*(a1 + 8) & 0x18 | (*(a1 + 8) >> 5)) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8ACEA00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 8) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

unint64_t sub_1D8ACEA9C()
{
  result = qword_1ECA690C8;
  if (!qword_1ECA690C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690C8);
  }

  return result;
}

unint64_t sub_1D8ACEAF4()
{
  result = qword_1ECA690D0;
  if (!qword_1ECA690D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690D0);
  }

  return result;
}

unint64_t sub_1D8ACEB4C()
{
  result = qword_1ECA690D8;
  if (!qword_1ECA690D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690D8);
  }

  return result;
}

uint64_t sub_1D8ACEBA0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!(v3 >> 5))
  {
    v9 = v5 >> 5;
    if (v5 >> 5 <= 1)
    {
      if (v9)
      {
        v12 = v5 & 0x1F;
        sub_1D8997618(*a1, v3);
        sub_1D8997618(v4, v5);
        if (v3 == 3)
        {
          if (v12 != 6)
          {
            goto LABEL_9;
          }
        }

        else if (v3 != 1 || v12 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D8997618(*a1, v3);
        sub_1D8997618(v4, v5);
        if (v3 == 4)
        {
          if (v5 != 6)
          {
            goto LABEL_9;
          }
        }

        else if (v3 == 3)
        {
          if (v5 != 4)
          {
            goto LABEL_9;
          }
        }

        else if (v3 != 1 || v5 != 3)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if (v9 == 2)
      {

        v10 = v2;
        v11 = v3;
      }

      else
      {
        v10 = *a1;
        v11 = v3;
        if (v9 == 3)
        {
          sub_1D8997618(v10, v3);
          sub_1D8997618(v4, v5);
          if ((v3 | 2) != 3)
          {
            goto LABEL_9;
          }

          goto LABEL_24;
        }
      }

      sub_1D8997618(v10, v11);
      sub_1D8997618(v4, v5);
      if ((v3 & 0xFE) != 4)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    v7 = 1;
    return v7 & 1;
  }

  if (v3 >> 5 != 2 || (v5 & 0xE0) != 0x40 || (v27 = *a1, CVDetection.detectionType.getter(&v32), v6 = v32, v33 = v4, CVDetection.detectionType.getter(&v31), v6 != v31))
  {
    sub_1D881F4C0(v2, v3);
    sub_1D881F4C0(v4, v5);
    sub_1D8997618(v2, v3);
    sub_1D8997618(v4, v5);
LABEL_9:
    v27 = v2;
    v28 = v3;
    v33 = v4;
    v34 = v5;
    v7 = sub_1D8ACDFE0(&v27, &v33);
    return v7 & 1;
  }

  v27 = v2;
  CVDetection.detectionType.getter(&v33);
  if (v33 == 2)
  {
    sub_1D881F4C0(v2, v3);
    sub_1D881F4C0(v4, v5);
LABEL_7:
    sub_1D8997618(v2, v3);
    sub_1D8997618(v4, v5);
    v7 = 1;
    return v7 & 1;
  }

  v27 = v2;
  sub_1D881F4C0(v2, v3);
  sub_1D881F4C0(v4, v5);
  sub_1D881F4C0(v2, v3);
  sub_1D881F4C0(v4, v5);
  v13 = sub_1D8A5BE40();
  if (!v13)
  {
    goto LABEL_38;
  }

  v14 = *(v13 + 16);

  if (!v14)
  {
    goto LABEL_38;
  }

  v33 = v4;
  CVDetection.detection.getter(&v27);
  v15 = v29;
  v16 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  v17 = (*(v16 + 56))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v33 = v2;
  CVDetection.detection.getter(&v27);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  v20 = (*(v19 + 56))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  if (v20 <= v17)
  {
    sub_1D8997618(v4, v5);
    sub_1D8997618(v2, v3);
    goto LABEL_7;
  }

  v27 = v4;
  v21 = sub_1D8A5BE40();
  if (!v21)
  {
LABEL_38:
    sub_1D8997618(v4, v5);
    sub_1D8997618(v2, v3);
    sub_1D8997618(v2, v3);
    sub_1D8997618(v4, v5);
    v7 = 0;
    return v7 & 1;
  }

  v22 = v21;
  v33 = v2;
  v23 = sub_1D8A5BE40();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  if (*(v24 + 16) >= *(v22 + 16))
  {
    v26 = 0;
  }

  else
  {
    sub_1D8AC5768(v22, v24);
    v26 = v25;
  }

  sub_1D8997618(v4, v5);
  sub_1D8997618(v2, v3);

  sub_1D8997618(v2, v3);
  sub_1D8997618(v4, v5);
  v7 = v26;
  return v7 & 1;
}

uint64_t sub_1D8ACEFD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654474736574616CLL && a2 == 0xEF6E6F6974636574 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734574736574616CLL && a2 == 0xEE006574616D6974 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6379436566696CLL && a2 == 0xEE00657461745365 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69546E696769726FLL && a2 == 0xEF706D617473656DLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746174536B726F77 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8ACF23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8ACF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v6;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return sub_1D8AEEEC0(v9, v3, v4, v5, a2);
}

float sub_1D8ACF2E8@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = a1[2] / *(**(v2 + 16) + 16);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1D8ACF310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ACF380(uint64_t a1)
{
  v3 = type metadata accessor for CVTrackSnapshot(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1D8B16610();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D87F4628(0, v6 & ~(v6 >> 63), 0);
    v53 = v60;
    if (v50)
    {
      result = sub_1D8B165C0();
    }

    else
    {
      result = sub_1D8B16580();
      v8 = *(a1 + 36);
    }

    v57 = result;
    v58 = v8;
    v59 = v50 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v52 = v1;
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v44 = a1 + 56;
      v45 = v10;
      v43 = a1 + 64;
      v46 = v6;
      v47 = a1;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v57;
        v14 = v59;
        v51 = v58;
        sub_1D89C7EE8(v57, v58, v59, a1);
        v16 = v15;
        v17 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
        v18 = sub_1D8B13240();
        (*(*(v18 - 8) + 16))(v5, v16 + v17, v18);
        CVTrackedDetection.latestDetection.getter(v54);
        v19 = v54[0];
        CVTrackedDetection.latestEstimate.getter(&v56);
        v20 = v56;
        v21 = *(*(v16 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
        v22 = *(v16 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
        v23 = sub_1D8ABF4E8();
        v24 = v52;
        v25 = sub_1D8AC0E90(*(v16 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
        v52 = v24;
        sub_1D891FD78(v25, &v55);

        v26 = v55;
        v27 = v49;
        *&v5[v49[5]] = v19;
        *&v5[v27[6]] = v20;
        v5[v27[7]] = v21;
        *&v5[v27[8]] = v22;
        *&v5[v27[9]] = v23;
        v5[v27[10]] = v26;
        v28 = v53;
        v60 = v53;
        v30 = *(v53 + 16);
        v29 = *(v53 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D87F4628((v29 > 1), v30 + 1, 1);
          v28 = v60;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v53 = v28;
        result = sub_1D8AF7F08(v5, v28 + v31 + *(v48 + 72) * v30, type metadata accessor for CVTrackSnapshot);
        if (v50)
        {
          a1 = v47;
          if (!v14)
          {
            goto LABEL_42;
          }

          if (sub_1D8B165E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69230, &qword_1D8B3EE08);
          v11 = sub_1D8B16060();
          sub_1D8B16660();
          result = v11(v54, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_1D87977B4(v57, v58, v59);
            return v53;
          }
        }

        else
        {
          a1 = v47;
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v32 = 1 << *(v47 + 32);
          if (v13 >= v32)
          {
            goto LABEL_38;
          }

          v33 = v13 >> 6;
          v34 = *(v44 + 8 * (v13 >> 6));
          if (((v34 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v47 + 36) != v51)
          {
            goto LABEL_40;
          }

          v35 = v34 & (-2 << (v13 & 0x3F));
          if (v35)
          {
            v32 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v36 = v33 << 6;
            v37 = v33 + 1;
            v38 = (v43 + 8 * v33);
            while (v37 < (v32 + 63) >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                result = sub_1D87977B4(v13, v51, 0);
                v32 = __clz(__rbit64(v39)) + v36;
                goto LABEL_33;
              }
            }

            result = sub_1D87977B4(v13, v51, 0);
          }

LABEL_33:
          v41 = *(a1 + 36);
          v57 = v32;
          v58 = v41;
          v59 = 0;
          v6 = v46;
          if (v9 == v46)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8ACF864(uint64_t a1)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProcessorState(0);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v35 - v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v35[0] = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D87F4534(0, v13, 0);
  v14 = v46;
  v44 = a1 + 56;
  result = sub_1D8B16580();
  v16 = result;
  v17 = 0;
  v35[1] = v11 + 8;
  v37 = a1 + 64;
  v38 = v13;
  v39 = v11;
  v40 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v44 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_26;
    }

    v43 = *(a1 + 36);
    v20 = *(a1 + 48) + *(v41 + 72) * v16;
    v21 = v45;
    sub_1D8AF7FF0(v20, v45, type metadata accessor for ProcessorState);
    sub_1D8AF7FF0(v21, v11, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v23 = v36;
        sub_1D8AF7F08(v11, v36, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v23, v7, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v23, type metadata accessor for DetectionResult);
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
    }

    sub_1D8AF7F08(v11, v7, type metadata accessor for DetectionRequest);
LABEL_13:
    v24 = *v7;
    v25 = v7;
    sub_1D8AF7F70(v7, type metadata accessor for DetectionRequest);
    result = sub_1D8AF7F70(v45, type metadata accessor for ProcessorState);
    v46 = v14;
    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1D87F4534((v26 > 1), v27 + 1, 1);
      v14 = v46;
    }

    *(v14 + 16) = v27 + 1;
    *(v14 + v27 + 32) = v24;
    a1 = v40;
    v18 = 1 << *(v40 + 32);
    if (v16 >= v18)
    {
      goto LABEL_27;
    }

    v28 = *(v44 + 8 * v19);
    if ((v28 & (1 << v16)) == 0)
    {
      goto LABEL_28;
    }

    if (v43 != *(v40 + 36))
    {
      goto LABEL_29;
    }

    v29 = v28 & (-2 << (v16 & 0x3F));
    if (v29)
    {
      v18 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v7 = v25;
      v11 = v39;
    }

    else
    {
      v30 = v19 << 6;
      v31 = v19 + 1;
      v32 = (v37 + 8 * v19);
      v7 = v25;
      v11 = v39;
      while (v31 < (v18 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1D87977B4(v16, v43, 0);
          v18 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v16, v43, 0);
    }

LABEL_4:
    ++v17;
    v16 = v18;
    if (v17 == v38)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1D8ACFD00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v28 = v31;
    v3 = a1 + 64;
    v4 = sub_1D8B16580();
    v5 = 0;
    v6 = *(a1 + 36);
    v25 = v2;
    v26 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_37;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_38;
      }

      v27 = v5 + 1;
      v9 = *(*(a1 + 48) + v4);
      v29 = sub_1D8B16B50();
      v30 = v10;
      MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
      v11 = 0xE900000000000067;
      v12 = 0x6E69646E756F7267;
      switch(v9)
      {
        case 1:
          v12 = 0x6465646E756F7267;
          v13 = 0x6573726150;
          goto LABEL_23;
        case 2:
          v11 = 0xE400000000000000;
          v12 = 1635018093;
          break;
        case 3:
          v11 = 0xE600000000000000;
          v12 = 0x7463656A626FLL;
          break;
        case 4:
          v11 = 0xE500000000000000;
          v12 = 0x6573726170;
          break;
        case 5:
          v11 = 0xE400000000000000;
          v12 = 1954047348;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v12 = 0x65646F437271;
          break;
        case 7:
          v11 = 0xE700000000000000;
          v12 = 0x70696C43707061;
          break;
        case 8:
          v12 = 0x6E696D6165727473;
          v13 = 0x7478655467;
LABEL_23:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v12 = 0x6C61636974726576;
          v11 = 0xEF746E65746E6F43;
          break;
        case 10:
          v11 = 0xEA00000000006C61;
          v12 = 0x646F6D69746C756DLL;
          break;
        case 11:
          v12 = 0x69746568746E7973;
          v11 = 0xE900000000000063;
          break;
        case 12:
          v12 = 0xD000000000000017;
          v11 = 0x80000001D8B439C0;
          break;
        case 13:
          v12 = 0xD00000000000001CLL;
          v11 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      MEMORY[0x1DA71EFA0](v12, v11);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D87F3F54((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_39;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v8);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_40;
      }

      v28 = v14;
      v6 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_41;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (a1 + 72 + 8 * v8);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1D87977B4(v4, v26, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v4, v26, 0);
      }

LABEL_4:
      v4 = v7;
      v5 = v27;
      if (v27 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1D8AD0124(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for CVBundle(0);
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    sub_1D8AF7FF0(*(a3 + 48) + *(v16 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v7, type metadata accessor for CVBundle);
    v14 = v17(v7);
    sub_1D8AF7F70(v7, type metadata accessor for CVBundle);
    if (!v3)
    {
      v10 &= v10 - 1;
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a3 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D8AD02F4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;

      v10 = a1(&v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D8AD039C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D8AD0444(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1D8AD04F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    sub_1D8AF7FF0(*(a3 + 56) + *(v16 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v7, type metadata accessor for BundleClassifier.ClassificationInfo);
    v14 = v17(v7);
    sub_1D8AF7F70(v7, type metadata accessor for BundleClassifier.ClassificationInfo);
    if (!v3)
    {
      v10 &= v10 - 1;
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a3 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D8AD06C0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
        v8 = MEMORY[0x1DA71FC20](v5, a3);
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
      v12 = sub_1D8B16610();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t CameraSourceFrameMetadata.timeDescription.getter()
{
  v1 = *(v0 + 40);
  sub_1D8B16020();
  if (v1)
  {
    v2 = 0x296C6C6974532820;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1DA71EFA0](v2, v3);

  return 0;
}

uint64_t sub_1D8AD0880(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;

    v9 = a1(&v13);

    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

void *sub_1D8AD0930(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v52 = a2;
  v53 = a3;
  v49 = sub_1D8B13240();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = v45 - v15;
  v59 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642A8, &qword_1D8B23BF8);
  sub_1D8B15760();
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v45[1] = v6 + 16;
  v46 = v6;
  v48 = (v6 + 8);
  v56 = a1;

  v21 = 0;
  v47 = a1 + 56;
  v45[0] = v9;
  if (v19)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v22 >= v20)
    {

      return v59;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
  }

  while (!v19);
  while (1)
  {
    v23 = *(v9 + 72);
    v24 = v50;
    sub_1D8AF7FF0(*(v56 + 48) + v23 * (__clz(__rbit64(v19)) | (v22 << 6)), v50, type metadata accessor for CVBundle);
    v25 = v57;
    v52(v24);
    v26 = v51;
    v54(v24);
    sub_1D8AF7F70(v24, type metadata accessor for CVBundle);
    sub_1D8AF7F08(v26, v12, type metadata accessor for CVBundle);
    v27 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v27;
    v30 = sub_1D87EF764(v25);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896754C();
      }
    }

    else
    {
      sub_1D896D99C(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1D87EF764(v57);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_24;
      }

      v30 = v35;
    }

    v19 &= v19 - 1;
    v37 = v58;
    if (v34)
    {
      sub_1D8AFD36C(v12, v58[7] + v30 * v23, type metadata accessor for CVBundle);
      (*v48)(v57, v49);
      v59 = v37;
      v21 = v22;
      v16 = v47;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v58[(v30 >> 6) + 8] |= 1 << v30;
      v38 = v46;
      v39 = v57;
      v40 = v49;
      (*(v46 + 16))(v37[6] + *(v46 + 72) * v30, v57, v49);
      sub_1D8AF7F08(v12, v37[7] + v30 * v23, type metadata accessor for CVBundle);
      (*(v38 + 8))(v39, v40);
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_23;
      }

      v37[2] = v43;
      v59 = v37;
      v21 = v22;
      v9 = v45[0];
      v16 = v47;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v22 = v21;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void *sub_1D8AD0DD4(unint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *), uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v40 = sub_1D8B13240();
  v35 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v45 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1E69E7CC8];
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_31:
    sub_1D8B16610();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69190, &unk_1D8B3ECD8);
  sub_1D8B15760();
  if (v7)
  {
    v8 = sub_1D8B16610();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v10 = a1 & 0xC000000000000001;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v34[1] = v35 + 16;
      v38 = a1;
      v39 = (v35 + 8);
      v37 = v8;
      while (1)
      {
        if (v10)
        {
          v7 = MEMORY[0x1DA71FC20](v9, a1);
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 8 * v9 + 32);

          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v47 = v7;
        v13 = v45;
        v41(&v47);
        v43(&v46, &v47);
        v14 = v46;
        v15 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v15;
        a1 = sub_1D87EF764(v13);
        v18 = v15[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_29;
        }

        v21 = v17;
        if (v15[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v24 = v46;
            if (v17)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D896C3A0();
            v24 = v46;
            if (v21)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1D8976E5C(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_1D87EF764(v45);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_1D8B16C30();
            __break(1u);
            return result;
          }

          a1 = v22;
          v24 = v46;
          if (v21)
          {
LABEL_5:
            *(v24[7] + 8 * a1) = v14;

            (*v39)(v45, v40);

            goto LABEL_6;
          }
        }

        v36 = v7;
        v7 = v12;
        v25 = v11;
        v26 = v10;
        v24[(a1 >> 6) + 8] |= 1 << a1;
        v27 = v35;
        v28 = v45;
        v29 = v40;
        (*(v35 + 16))(v24[6] + *(v35 + 72) * a1, v45, v40);
        *(v24[7] + 8 * a1) = v14;
        (*(v27 + 8))(v28, v29);

        v30 = v24[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_30;
        }

        v24[2] = v32;
        v10 = v26;
        v11 = v25;
        v12 = v7;
LABEL_6:
        v48 = v24;
        ++v9;
        a1 = v38;
        if (v12 == v37)
        {
          return v24;
        }
      }
    }
  }

  return v48;
}

uint64_t TrackManager.__allocating_init(configuration:supporting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D8AF6530(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_1D8AD11C8(uint64_t a1, int64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D8B16610();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1D88B87A4(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1D8B16610() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1D8B16610();
  v2 = sub_1D8AF01A8(v5, v6);
LABEL_10:

  return sub_1D88BB248(a1, v2);
}

uint64_t static TrackManager.Configuration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8A50334(&unk_1F5426A48);
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t static TrackManager.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D894C93C(*a1, *a2) & (v2 == v3);
}

void *sub_1D8AD1338(uint64_t a1)
{
  v37 = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D8B165D0();
    type metadata accessor for CVTrackedDetection(0);
    sub_1D8AF7D70(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection, &protocol conformance descriptor for CVTrackedDetection);
    sub_1D8B16070();
    a1 = v32;
    v1 = v33;
    v2 = v34;
    v3 = v35;
    v4 = v36;
  }

  else
  {
    v3 = 0;
    v5 = -1 << *(a1 + 32);
    v1 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);
  }

  v8 = (v2 + 64) >> 6;
  v9 = MEMORY[0x1E69E7CC8];
  v29 = a1;
  while (a1 < 0)
  {
    if (!sub_1D8B16640() || (type metadata accessor for CVTrackedDetection(0), swift_dynamicCast(), v15 = v30, v13 = v3, v14 = v4, !v30))
    {
LABEL_27:
      sub_1D87977A0(v29);
      return v9;
    }

LABEL_21:
    CVTrackedDetection.latestDetection.getter(&v30);
    CVDetection.detectionType.getter(&v31);

    v16 = sub_1D881F7DC();
    v18 = v9[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_29;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_1D8976BC0(v21, 1);
      v9 = v37;
      v16 = sub_1D881F7DC();
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_31;
      }
    }

    if (v22)
    {
      v10 = (v9[7] + 8 * v16);
      MEMORY[0x1DA71F1A0]();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
    }

    else
    {
      v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D8B23DF0;
      *(v25 + 32) = v15;
      v9[(v24 >> 6) + 8] |= 1 << v24;
      *(v9[6] + v24) = v31;
      *(v9[7] + 8 * v24) = v25;
      v26 = v9[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_30;
      }

      v9[2] = v27;
    }

    v3 = v13;
    v4 = v14;
    a1 = v29;
  }

  v11 = v3;
  v12 = v4;
  v13 = v3;
  if (v4)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      goto LABEL_27;
    }

    v12 = *(v1 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void *TrackManager.State.description.getter()
{
  v1 = *(v0 + 40);
  sub_1D8B16720();

  v2 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0x6570797420796220, 0xEA0000000000203ALL);

  v4 = sub_1D8AF53E0(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
  result = sub_1D8B168F0();
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4[8];
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v12 = v11 | (v6 << 6);
LABEL_10:
      v15 = *(v4[6] + v12);
      v16 = *(*(v4[7] + 8 * v12) + 16);
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
      *(result[6] + v12) = v15;
      *(result[7] + 8 * v12) = v16;
      v17 = result[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      result[2] = v19;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = v4[v6 + 8];
      ++v13;
      if (v14)
      {
        v9 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    sub_1D87C4938();
    v20 = sub_1D8B15740();
    v22 = v21;

    MEMORY[0x1DA71EFA0](v20, v22);

    MEMORY[0x1DA71EFA0](0x3D7440202CLL, 0xE500000000000000);
    v23 = 0xE000000000000000;
    sub_1D8B16020();
    if (v1)
    {
      v24 = 0x296C6C6974532820;
    }

    else
    {
      v24 = 0;
    }

    if (v1)
    {
      v23 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v24, v23);

    MEMORY[0x1DA71EFA0](0, 0xE000000000000000);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return result;
}

uint64_t sub_1D8AD1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D87A0E38(a3, v25 - v10, &unk_1ECA675E0, &qword_1D8B23B60);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D87A14E4(v11, &unk_1ECA675E0, &qword_1D8B23B60);
  }

  else
  {
    sub_1D8B15E90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8B15E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8B15A10() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D8AD1C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1D87EF764(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_1D8B13240();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_1D8AF27E8(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

void sub_1D8AD1E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v3 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D8AD2480(v4);
    v8 = *(v7 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      v6 = sub_1D87C8C30(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v11 + 16))
      {
LABEL_14:
        v14 = (v6[3] >> 1) - v6[2];
        sub_1D8B13240();
        if (v14 < v8)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v8);
          v17 = v15 + v8;
          if (v16)
          {
            goto LABEL_22;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_20;
    }

LABEL_4:
    v4 += v5;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1D8AD1FFC(uint64_t a1, uint64_t (*a2)(void *, __n128))
{
  v41 = a2;
  v44 = sub_1D8B13240();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DetectionRequest.Originator(0);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v37 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return;
  }

  v38 = *(v8 + 80);
  v11 = a1 + ((v38 + 32) & ~v38);
  v12 = *(v8 + 72);
  v40 = v3 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v39 = xmmword_1D8B1AB90;
  v37 = (v38 + 32) & ~v38;
  v46 = v12;
  while (1)
  {
    v15 = v47;
    sub_1D8AF7FF0(v11, v47, type metadata accessor for DetectionRequest.Originator);
    sub_1D8AF7FF0(v15, v7, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v43 = *(v3 + 32);
      v25 = v42;
      v26 = v44;
      v43(v42, v7, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63200, &qword_1D8B1E7C0);
      v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v39;
      v43((v28 + v27), v25, v26);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v17 = *v7;
      v18 = *(*v7 + 16);
      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
        v19 = v37;
        v20 = v46;
        v21 = swift_allocObject();
        v22 = _swift_stdlib_malloc_size(v21);
        if (!v20)
        {
          goto LABEL_37;
        }

        if (v22 - v19 == 0x8000000000000000 && v20 == -1)
        {
          goto LABEL_39;
        }

        v21[2] = v18;
        v21[3] = 2 * ((v22 - v19) / v20);
        v24 = sub_1D8817A24(&v48, v21 + v19, v18, v17);
        sub_1D87977A0(v48);
        if (v24 != v18)
        {
          goto LABEL_38;
        }
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v28 = v41(v21);
    }

    else
    {
      sub_1D8AF7F70(v7, type metadata accessor for DetectionRequest.Originator);
      v28 = MEMORY[0x1E69E7CC0];
    }

    sub_1D8AF7F70(v47, type metadata accessor for DetectionRequest.Originator);
    v29 = *(v28 + 16);
    v30 = v13[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v31 <= v13[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      v13 = sub_1D87C8C30(isUniquelyReferenced_nonNull_native, v33, 1, v13);
      if (*(v28 + 16))
      {
LABEL_28:
        if ((v13[3] >> 1) - v13[2] < v29)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        v14 = v46;
        if (v29)
        {
          v34 = v13[2];
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_36;
          }

          v13[2] = v36;
        }

        goto LABEL_4;
      }
    }

    v14 = v46;
    if (v29)
    {
      goto LABEL_34;
    }

LABEL_4:
    v11 += v14;
    if (!--v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1D8AD2480(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  v36 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v32 - v10);
  sub_1D8AF7FF0(a1, &v32 - v10, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D8AF7F70(v11, type metadata accessor for DetectionRequest.Originator);
    return;
  }

  v13 = *v11;
  v14 = v13[2];
  if (v14)
  {
    v5 = sub_1D87F3A40(v13[2], 0);
    v11 = sub_1D8817A24(&v35, v5 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v14, v13);
    sub_1D87977A0(v35);
    if (v11 != v14)
    {
      __break(1u);
LABEL_6:
      v15 = v33;
      v17 = v32 + 32;
      v16 = *(v32 + 32);
      v16(v5, v11, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63200, &qword_1D8B1E7C0);
      v18 = (*(v17 + 48) + 32) & ~*(v17 + 48);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D8B1AB90;
      v16((v19 + v18), v5, v15);
      return;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v34 = v5[2];
  if (!v34)
  {
LABEL_28:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (v20 < v5[2])
  {
    sub_1D8AF7FF0(v5 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20, v9, type metadata accessor for DetectionRequest.Originator);
    sub_1D8AD2480(v9);
    if (v1)
    {
      goto LABEL_34;
    }

    v23 = v22;
    sub_1D8AF7F70(v9, type metadata accessor for DetectionRequest.Originator);
    v24 = *(v23 + 16);
    v25 = v21[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v26 <= v21[3] >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v21 = sub_1D87C8C30(isUniquelyReferenced_nonNull_native, v28, 1, v21);
      if (*(v23 + 16))
      {
LABEL_24:
        if ((v21[3] >> 1) - v21[2] < v24)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v29 = v21[2];
          v30 = __OFADD__(v29, v24);
          v31 = v29 + v24;
          if (v30)
          {
            goto LABEL_33;
          }

          v21[2] = v31;
        }

        goto LABEL_12;
      }
    }

    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    if (v34 == ++v20)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  sub_1D8AF7F70(v9, type metadata accessor for DetectionRequest.Originator);

  __break(1u);
}

uint64_t sub_1D8AD28E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
  v1 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = *(type metadata accessor for DetectionRequest(0) + 20);
  sub_1D8AF7FF0(v0 + v4, v3 + v2, type metadata accessor for DetectionRequest.Originator);
  sub_1D8AD1E10(v3);
  v6 = v5;
  swift_setDeallocating();
  sub_1D8AF7F70(v3 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v7 = *(v6 + 16);

  if (!v7)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v0 + v4, v8 + v2, type metadata accessor for DetectionRequest.Originator);
  sub_1D8AD1E10(v8);
  v10 = v9;
  swift_setDeallocating();
  sub_1D8AF7F70(v8 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v11 = sub_1D87C4B18(v10);

  return v11;
}

uint64_t sub_1D8AD2AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
  v1 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = *(type metadata accessor for GroundedParseDetectorResult(0) + 56);
  sub_1D8AF7FF0(v0 + v4, v3 + v2, type metadata accessor for DetectionRequest.Originator);
  sub_1D8AD1FE4(v3);
  v6 = v5;
  swift_setDeallocating();
  sub_1D8AF7F70(v3 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v7 = *(v6 + 16);

  if (!v7)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v0 + v4, v8 + v2, type metadata accessor for DetectionRequest.Originator);
  sub_1D8AD1FE4(v8);
  v10 = v9;
  swift_setDeallocating();
  sub_1D8AF7F70(v8 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v11 = sub_1D87C4B18(v10);

  return v11;
}

uint64_t sub_1D8AD2D30(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
  v5 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  v8 = *(a1(0) + 44);
  sub_1D8AF7FF0(v2 + v8, v7 + v6, type metadata accessor for DetectionRequest.Originator);
  v9 = a2(v7);
  swift_setDeallocating();
  sub_1D8AF7F70(v7 + v6, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v10 = *(v9 + 16);

  if (!v10)
  {
    return 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v2 + v8, v11 + v6, type metadata accessor for DetectionRequest.Originator);
  v12 = a2(v11);
  swift_setDeallocating();
  sub_1D8AF7F70(v11 + v6, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v13 = sub_1D87C4B18(v12);

  return v13;
}

uint64_t CameraSourceFrame.timeDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v6, a1);
  v2 = v7;
  sub_1D8B16020();
  if (v2)
  {
    v3 = 0x296C6C6974532820;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1DA71EFA0](v3, v4);

  return 0;
}

void sub_1D8AD2FCC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1D8B16610();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA71FC20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

__n128 TrackManager.State.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D8AD3114@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8AD31B4()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_1D8AD31F0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001D8B49010 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B49030 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D8B16BA0();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D8AD32D4(uint64_t a1)
{
  v2 = sub_1D8AF6DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AD3310(uint64_t a1)
{
  v2 = sub_1D8AF6DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackManager.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA690F0, &qword_1D8B3E5B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AF6DB8();

  sub_1D8B16DD0();
  v11 = v8;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100, &qword_1D8B3E5C0);
  sub_1D8AF6E0C(&qword_1ECA69108, sub_1D8A51970, MEMORY[0x1E69E64F0]);
  sub_1D8B16AE0();

  if (!v2)
  {
    v10[6] = 1;
    sub_1D8B16AC0();
  }

  return (*(v5 + 8))(v7, v4);
}

void TrackManager.Configuration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69110, &qword_1D8B3E5C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  sub_1D8A50334(&unk_1F5428E20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AF6DB8();
  sub_1D8B16DB0();
  if (!v2)
  {
    v8 = v5;
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100, &qword_1D8B3E5C0);
    v16 = 0;
    sub_1D8AF6E0C(&qword_1ECA69118, sub_1D8A51A7C, MEMORY[0x1E69E6510]);
    sub_1D8B16A10();

    v10 = v17;
    v15 = 1;
    sub_1D8B169F0();
    v12 = v11;
    (*(v8 + 8))(v7, v4);
    *v9 = v10;
    *(v9 + 8) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8AD3770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8A50334(&unk_1F5426A48);
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t sub_1D8AD37D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D894C93C(*a1, *a2) & (v2 == v3);
}

void sub_1D8AD381C(unint64_t a1@<X8>)
{
  v82 = sub_1D8B13240();
  v3 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - v9;
  v71 = type metadata accessor for CVTrackSnapshot(0);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v80 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v1 + 7);
  v12 = v1[17];
  v97 = v1[16];
  v13 = *(v1 + 18);
  v14 = *(v1 + 152);
  v15 = *(v1 + 169);
  v93 = *(v1 + 153);
  *v94 = v15;
  *&v94[15] = v1[23];
  v95 = v14;
  if (v12 == 2)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v86 = *(v1 + 7);
    v87 = v1[16];
    v65 = v12;
    v88 = v12;
    v89 = v13;
    v90 = v14;
    v91 = *(v1 + 153);
    *v92 = *(v1 + 169);
    *&v92[15] = v1[23];
    v64 = sub_1D8AE93C8(&v86);
    swift_beginAccess();
    v16 = v1[24];
    if (v16 >> 62)
    {
LABEL_61:
      v17 = sub_1D8B16610();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v1;
    v66 = a1;

    v67 = v16;
    if (v17)
    {
      a1 = 0;
      v79 = v16 & 0xC000000000000001;
      v78 = v16 & 0xFFFFFFFFFFFFFF8;
      v77 = (v16 + 32);
      v70 = (v3 + 16);
      v69 = (v3 + 32);
      v75 = (v72 + 56);
      v74 = (v72 + 48);
      v18 = MEMORY[0x1E69E7CC0];
      v16 = &qword_1ECA63E20;
      v3 = v71;
      v76 = v17;
      while (1)
      {
        if (v79)
        {
          v19 = MEMORY[0x1DA71FC20](a1, v67);
          v20 = __OFADD__(a1++, 1);
          if (v20)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (a1 >= *(v78 + 16))
          {
            goto LABEL_59;
          }

          v19 = v77[a1];

          v20 = __OFADD__(a1++, 1);
          if (v20)
          {
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }
        }

        CVTrackedDetection.estimate(atTime:)(&v83, v13);
        v21 = v83;
        if ((~v83 & 0xF000000000000007) != 0)
        {
          break;
        }

        v22 = 1;
LABEL_31:
        (*v75)(v8, v22, 1, v3);
        v1 = &qword_1D8B22E50;
        sub_1D881F6FC(v8, v10, &qword_1ECA63E20, &qword_1D8B22E50);
        v41 = (*v74)(v10, 1, v3);
        v42 = v76;
        if (v41 == 1)
        {
          sub_1D87A14E4(v10, &qword_1ECA63E20, &qword_1D8B22E50);
        }

        else
        {
          sub_1D8AF7F08(v10, v80, type metadata accessor for CVTrackSnapshot);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D87C7834(0, v18[2] + 1, 1, v18);
          }

          v44 = v18[2];
          v43 = v18[3];
          v1 = (v44 + 1);
          if (v44 >= v43 >> 1)
          {
            v18 = sub_1D87C7834((v43 > 1), v44 + 1, 1, v18);
          }

          v18[2] = v1;
          sub_1D8AF7F08(v80, v18 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v44, type metadata accessor for CVTrackSnapshot);
          v16 = &qword_1ECA63E20;
        }

        if (a1 == v42)
        {
          goto LABEL_41;
        }
      }

      v73 = v18;
      (*v70)(v81, v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, v82);
      v23 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer;
      v1 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
      swift_beginAccess();
      v24 = v1[2];
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v1[4];
        if (!v26)
        {
          goto LABEL_60;
        }

        v27 = v24 + 40;
        v28 = v25 - 1;
        while (1)
        {
          if (v25 == v26)
          {
            v29 = v1[3];
            v20 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (v20)
            {
              goto LABEL_56;
            }

            v31 = v30 % v25;
            v20 = __OFADD__(v31, v28);
            v32 = v31 + v28;
            if (v20)
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          else
          {
            v32 = v28;
          }

          if (v26 == -1 && v32 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          v33 = v32 % v26;
          if (v33 >= v25)
          {
            goto LABEL_55;
          }

          if ((*(v27 + 16 * v33) & 0xE0) == 0x40)
          {
            break;
          }

          if (--v28 == -1)
          {
            goto LABEL_65;
          }
        }

        sub_1D8AC1168(v28, &v83);
        v34 = v83;
        if ((v84 & 0xE0) == 0x40)
        {
          v35 = *(*(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
          v36 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
          v37 = sub_1D8ABF4E8();
          v38 = *(v19 + v23);
          sub_1D8A699B4(v21);
          v39 = sub_1D8AC0E90(v38);
          sub_1D891FD78(v39, &v83);

          sub_1D88649A0(v21);

          LOBYTE(v38) = v83;
          (*v69)(v8, v81, v82);
          v22 = 0;
          v40 = v71;
          *&v8[*(v71 + 20)] = v34;
          *&v8[v40[6]] = v21;
          v8[v40[7]] = v35;
          v3 = v40;
          *&v8[v40[8]] = v36;
          *&v8[v40[9]] = v37;
          v8[v40[10]] = v38;
          v18 = v73;
          v16 = &qword_1ECA63E20;
          goto LABEL_31;
        }

        sub_1D8997618(v83, v84);
      }

LABEL_65:
      sub_1D8B168C0();
      __break(1u);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
LABEL_41:

      v45 = v18[2];
      v46 = v68[24];
      if (v46 >> 62)
      {
        v47 = sub_1D8B16610();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v64;
      if (v45 != v47)
      {

        v49 = v68;

        v50 = sub_1D8B151C0();
        v51 = sub_1D8B16230();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v85 = v53;
          *v52 = 134218498;
          *(v52 + 4) = v18[2];

          *(v52 + 12) = 2048;
          v54 = v49[24];
          if (v54 >> 62)
          {
            v55 = sub_1D8B16610();
          }

          else
          {
            v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v52 + 14) = v55;

          *(v52 + 22) = 2080;
          v56 = v95;
          v57 = 0xE000000000000000;
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_1D8B16020();
          if (v56)
          {
            v58 = 0x296C6C6974532820;
          }

          else
          {
            v58 = 0;
          }

          if (v56)
          {
            v57 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v58, v57);

          v59 = sub_1D89AC714(v83, v84, &v85);

          *(v52 + 24) = v59;
          _os_log_impl(&dword_1D8783000, v50, v51, "Presenting %ld tracks out of %ld total @ t=%s", v52, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1DA721330](v53, -1, -1);
          MEMORY[0x1DA721330](v52, -1, -1);
        }

        else
        {
        }
      }

      v60 = v95;
      v61 = v66;
      *v66 = v96;
      v62 = v65;
      *(v61 + 2) = v97;
      *(v61 + 3) = v62;
      *(v61 + 4) = v13;
      *(v61 + 40) = v60;
      v63 = *v94;
      *(v61 + 41) = v93;
      *(v61 + 57) = v63;
      *(v61 + 9) = *&v94[15];
      *(v61 + 10) = v18;
      *(v61 + 11) = v48;
    }
  }
}

void sub_1D8AD4260(uint64_t a1)
{
  v3 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  sub_1D8AF7FF0(v1, v14, type metadata accessor for TrackManager.FrameProcessingTaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8AF7F70(v14, type metadata accessor for TrackManager.FrameProcessingTaskState);
    sub_1D8AF7FF0(v1, v12, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v19 = sub_1D8B151E0();
    __swift_project_value_buffer(v19, qword_1EE0E4350);
    sub_1D8AF7FF0(v12, v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16210();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      sub_1D8AF7FF0(v9, v6, type metadata accessor for TrackManager.FrameProcessingTaskState);
      v24 = sub_1D8B159E0();
      v26 = v25;
      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
      v27 = sub_1D89AC714(v24, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1D8783000, v20, v21, "Failed to start frameProcessingUpdateTask: state was %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1DA721330](v23, -1, -1);
      MEMORY[0x1DA721330](v22, -1, -1);
    }

    else
    {

      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    }

    sub_1D8AF7F70(v12, type metadata accessor for TrackManager.FrameProcessingTaskState);
  }

  else
  {
    sub_1D8AF7F70(v1, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90);
    v29 = *(v16 + 32);
    v29(v18, &v14[*(v28 + 48)], v15);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
    (*(*(v30 - 8) + 8))(v14, v30);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930, &unk_1D8B25DB0) + 48);
    *v1 = a1;
    v29(&v1[v31], v18, v15);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D8AD46E0()
{
  v0 = sub_1D8B151E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B15160();
  __swift_allocate_value_buffer(v4, qword_1EE0E8E88);
  __swift_project_value_buffer(v4, qword_1EE0E8E88);
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE0E4350);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D8B15140();
}

uint64_t sub_1D8AD481C(uint64_t a1)
{
  if (!a1)
  {
    return 0x646574726F6261;
  }

  if (a1 == 1)
  {
    return 0x74616E696D726574;
  }

  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x6574656C706D6F63, 0xEB00000000282064);
  v2 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0xD000000000000013, 0x80000001D8B49050);
  v3 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](0x2C736B6361727420, 0xE900000000000020);
  v4 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v4);

  MEMORY[0x1DA71EFA0](0x6974636574656420, 0xEC00000029736E6FLL);
  return 0;
}

uint64_t sub_1D8AD49E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v187 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v178 = &v162 - v5;
  v185 = type metadata accessor for CVTrackSnapshot(0);
  v177 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185 - 8);
  v184 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0, &qword_1D8B2D2E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v175 = &v162 - v8;
  v182 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  MEMORY[0x1EEE9AC00](v182);
  v10 = (&v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  MEMORY[0x1EEE9AC00](v188);
  v174 = (&v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProcessorState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v164 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v180 = (&v162 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v162 - v19;
  v20 = type metadata accessor for DetectionRequest(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v181 = &v162 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v183 = &v162 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v179 = (&v162 - v27);
  v28 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v166 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v168 = &v162 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v167 = &v162 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v162 - v36);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v162 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v162 - v41;
  v43 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  sub_1D8AF7FF0(a1, &v162 - v41, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7FF0(a1, v40, type metadata accessor for TrackManager.MatchingComputationResult);
  v186 = a1;
  sub_1D8AF7FF0(a1, v37, type metadata accessor for TrackManager.MatchingComputationResult);
  v171 = v43;
  v44 = sub_1D8B151C0();
  v45 = sub_1D8B16200();
  v46 = os_log_type_enabled(v44, v45);
  v172 = v28;
  v173 = v14;
  if (v46)
  {
    LODWORD(v162) = v45;
    v163 = v44;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v202 = v48;
    *v47 = 136315650;
    v49 = sub_1D8AD481C(*&v42[*(v28 + 20)]);
    v51 = v50;
    sub_1D8AF7F70(v42, type metadata accessor for TrackManager.MatchingComputationResult);
    v52 = sub_1D89AC714(v49, v51, &v202);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
    v54 = v169;
    sub_1D8AF7FF0(&v40[*(v53 + 20)], v169, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v56 = v188;
      v57 = v179;
      if (EnumCaseMultiPayload == 1)
      {
        v58 = v54;
        v59 = v170;
        sub_1D8AF7F08(v58, v170, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v59, v57, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v59, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        sub_1D8AF7F08(v54, v57, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v57 = v179;
      sub_1D8AF7F08(v54, v179, type metadata accessor for DetectionRequest);
      v56 = v188;
    }

    v60 = *v57;
    sub_1D8AF7F70(v57, type metadata accessor for DetectionRequest);
    LOBYTE(v197) = v60;
    v61 = CVDetection.DetectionType.description.getter();
    v63 = v62;
    sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationResult);
    v64 = sub_1D89AC714(v61, v63, &v202);

    *(v47 + 14) = v64;
    *(v47 + 22) = 2080;
    v65 = v37[3];
    v66 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v65);
    v67 = CameraSourceFrame.timeDescription.getter(v65, v66);
    v69 = v68;
    sub_1D8AF7F70(v37, type metadata accessor for TrackManager.MatchingComputationResult);
    v70 = sub_1D89AC714(v67, v69, &v202);

    *(v47 + 24) = v70;
    v71 = v163;
    _os_log_impl(&dword_1D8783000, v163, v162, "updateTracksWithMatchingComputationResults: Processing %s for %s @ %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v48, -1, -1);
    MEMORY[0x1DA721330](v47, -1, -1);
  }

  else
  {

    sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationResult);
    sub_1D8AF7F70(v42, type metadata accessor for TrackManager.MatchingComputationResult);
    sub_1D8AF7F70(v37, type metadata accessor for TrackManager.MatchingComputationResult);
    v56 = v188;
  }

  v163 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v72 = v182;
  v73 = *(v182 + 20);
  v74 = v186;
  sub_1D8AF7FF0(v186 + SHIDWORD(v163[2].isa), v10 + v73, type metadata accessor for ProcessorState);
  v75 = v74[3];
  v76 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v76 + 40))(v196, v75, v76);
  v77 = v196[4];
  v10[3] = v196[3];
  v10[4] = v77;
  v78 = v196[2];
  v10[1] = v196[1];
  v10[2] = v78;
  *v10 = v196[0];
  *(v10 + *(v72 + 24)) = 0;
  v79 = v10[4];
  v200 = v10[3];
  v201 = v79;
  v80 = v10[2];
  v198 = v10[1];
  v199 = v80;
  v197 = *v10;
  v81 = v180;
  sub_1D8AF7F08(v10 + v73, v180, type metadata accessor for ProcessorState);
  v82 = swift_getEnumCaseMultiPayload();
  v83 = v176;
  if (v82)
  {
    v84 = v187;
    v85 = v181;
    if (v82 == 1)
    {
      v86 = v81;
      v87 = v170;
      sub_1D8AF7F08(v86, v170, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v87, v85, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v87, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      sub_1D8AF7F08(v81, v85, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v85 = v181;
    sub_1D8AF7F08(v81, v181, type metadata accessor for DetectionRequest);
    v84 = v187;
  }

  v88 = v183;
  sub_1D8AF7F08(v85, v183, type metadata accessor for DetectionRequest);
  v89 = v200;
  v90 = v174;
  v174[2] = v199;
  v90[3] = v89;
  v90[4] = v201;
  v91 = v198;
  *v90 = v197;
  v90[1] = v91;
  sub_1D8AF7F08(v88, v90 + *(v56 + 5), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D8AF073C(v90, v175);
  swift_endAccess();
  v92 = v186;
  sub_1D8AD6554(v186);
  v93 = *(v92 + *(v172 + 20));
  if (v93 == 1)
  {
    v94 = v167;
    sub_1D8AF7FF0(v186, v167, type metadata accessor for TrackManager.MatchingComputationResult);
    v95 = sub_1D8B151C0();
    v96 = sub_1D8B16230();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      v98 = v94[3];
      v99 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v98);
      v100 = CameraSourceFrame.timestamp.getter(v98, v99);
      sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationResult);
      *(v97 + 4) = v100;
      _os_log_impl(&dword_1D8783000, v95, v96, "Matching computation terminated! @  %f", v97, 0xCu);
      MEMORY[0x1DA721330](v97, -1, -1);
    }

    else
    {

      sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationResult);
    }
  }

  else if (v93)
  {
    sub_1D8AD82D0(v186);
  }

  else
  {
    sub_1D8AD609C(v186);
  }

  v101 = v186[3];
  v102 = v186[4];
  v103 = __swift_project_boxed_opaque_existential_1(v186, v101);
  if (sub_1D8AD5EF4(v103, v101, v102))
  {
    v104 = v83 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v105 = *(v104 + 8);
      ObjectType = swift_getObjectType();
      v107 = v186[3];
      v108 = v186[4];
      v109 = __swift_project_boxed_opaque_existential_1(v186, v107);
      (*(v105 + 8))(v109, v107, v108, ObjectType, v105);
      swift_unknownObjectRelease();
    }
  }

  v194 = *(v83 + 112);
  v110 = *(v83 + 136);
  v195 = *(v83 + 128);
  v111 = *(v83 + 144);
  v112 = *(v83 + 169);
  v192 = *(v83 + 153);
  v193[0] = v112;
  *(v193 + 15) = *(v83 + 184);
  v113 = *(v83 + 152);
  if (v110 != 2)
  {
    v114 = v186[3];
    v115 = v186[4];
    v169 = v110;
    LODWORD(v167) = v113;
    __swift_project_boxed_opaque_existential_1(v186, v114);
    v116 = v178;
    (*(v115 + 40))(&v202, v114, v115);
    if (v111 == v205 && (v167 & 1) != 0)
    {
      v202 = v194;
      v203 = v195;
      v204 = v169;
      v205 = v111;
      v206 = v167;
      v207 = v192;
      *v208 = v193[0];
      *&v208[15] = *(v193 + 15);
      v162 = sub_1D8AE93C8(&v202);
      swift_beginAccess();
      v117 = *(v83 + 192);
      if (v117 >> 62)
      {
        goto LABEL_62;
      }

      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

      if (v118)
      {
        v119 = 0;
        v182 = v117 & 0xFFFFFFFFFFFFFF8;
        v183 = v117 & 0xC000000000000001;
        v179 = (v177 + 48);
        v180 = (v177 + 56);
        v188 = MEMORY[0x1E69E7CC0];
        v181 = v117;
        while (1)
        {
          if (v183)
          {
            v120 = MEMORY[0x1DA71FC20](v119, v117);
            v121 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v119 >= *(v182 + 16))
            {
              goto LABEL_61;
            }

            v120 = *(v117 + 8 * v119 + 32);

            v121 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              v118 = sub_1D8B16610();
              goto LABEL_29;
            }
          }

          v122 = v118;
          CVTrackedDetection.estimate(atTime:)(&v202, v111);
          v123 = v202;
          if ((~v202 & 0xF000000000000007) != 0)
          {
            v126 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
            v127 = sub_1D8B13240();
            (*(*(v127 - 8) + 16))(v84, v120 + v126, v127);
            CVTrackedDetection.latestDetection.getter(&v202);
            v128 = v202;
            v129 = *(*(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
            v130 = *(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
            v131 = sub_1D8ABF4E8();
            v132 = *(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);

            v133 = sub_1D8AC0E90(v132);
            sub_1D891FD78(v133, &v189);

            sub_1D88649A0(v123);
            v124 = 0;
            v134 = v189;
            v125 = v185;
            *&v187[*(v185 + 20)] = v128;
            v84 = v187;
            *&v187[v125[6]] = v123;
            *(v84 + v125[7]) = v129;
            v116 = v178;
            *(v84 + v125[8]) = v130;
            *(v84 + v125[9]) = v131;
            *(v84 + v125[10]) = v134;
          }

          else
          {

            v124 = 1;
            v125 = v185;
          }

          v118 = v122;
          (*v180)(v84, v124, 1, v125);
          sub_1D881F6FC(v84, v116, &qword_1ECA63E20, &qword_1D8B22E50);
          if ((*v179)(v116, 1, v125) == 1)
          {
            sub_1D87A14E4(v116, &qword_1ECA63E20, &qword_1D8B22E50);
          }

          else
          {
            sub_1D8AF7F08(v116, v184, type metadata accessor for CVTrackSnapshot);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = sub_1D87C7834(0, v188[2] + 1, 1, v188);
            }

            v136 = v188[2];
            v135 = v188[3];
            if (v136 >= v135 >> 1)
            {
              v188 = sub_1D87C7834((v135 > 1), v136 + 1, 1, v188);
            }

            v137 = v188;
            v188[2] = v136 + 1;
            sub_1D8AF7F08(v184, v137 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v136, type metadata accessor for CVTrackSnapshot);
          }

          v117 = v181;
          ++v119;
          if (v121 == v122)
          {
            goto LABEL_49;
          }
        }
      }

      v188 = MEMORY[0x1E69E7CC0];
LABEL_49:

      v202 = v194;
      v207 = v192;
      v138 = v168;
      v203 = v195;
      v204 = v169;
      v205 = v111;
      v206 = v167;
      *v208 = v193[0];
      *&v208[15] = *(v193 + 15);
      v209 = v188;
      v210 = v162;
      v139 = v186;
      sub_1D8AF7FF0(v186, v168, type metadata accessor for TrackManager.MatchingComputationResult);
      v140 = v166;
      sub_1D8AF7FF0(v139, v166, type metadata accessor for TrackManager.MatchingComputationResult);
      v141 = sub_1D8B151C0();
      v142 = sub_1D8B16200();
      if (!os_log_type_enabled(v141, v142))
      {

        sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
        sub_1D8AF7F70(v138, type metadata accessor for TrackManager.MatchingComputationResult);
LABEL_58:
        sub_1D8AF6250(&v202);
        sub_1D8943A60(&v202);
        goto LABEL_59;
      }

      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v191[0] = v144;
      *v143 = 136315650;
      v145 = v164;
      sub_1D8AF7FF0(v138 + SHIDWORD(v163[2].isa), v164, type metadata accessor for ProcessorState);
      v146 = swift_getEnumCaseMultiPayload();
      if (v146)
      {
        v147 = v165;
        if (v146 == 1)
        {
          v148 = v145;
          v149 = v170;
          sub_1D8AF7F08(v148, v170, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v149, v147, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v149, type metadata accessor for DetectionResult);
LABEL_57:
          v151 = *v147;
          sub_1D8AF7F70(v147, type metadata accessor for DetectionRequest);
          LOBYTE(v189) = v151;
          v152 = CVDetection.DetectionType.description.getter();
          v154 = v153;
          sub_1D8AF7F70(v168, type metadata accessor for TrackManager.MatchingComputationResult);
          v155 = sub_1D89AC714(v152, v154, v191);

          *(v143 + 4) = v155;
          *(v143 + 12) = 2080;
          v156 = sub_1D8AD481C(*(v140 + *(v172 + 20)));
          v158 = v157;
          sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
          v159 = sub_1D89AC714(v156, v158, v191);

          *(v143 + 14) = v159;
          *(v143 + 22) = 2080;
          v189 = 0;
          v190 = 0xE000000000000000;
          sub_1D8B16020();
          MEMORY[0x1DA71EFA0](0x296C6C6974532820, 0xE800000000000000);
          v160 = sub_1D89AC714(v189, v190, v191);

          *(v143 + 24) = v160;
          _os_log_impl(&dword_1D8783000, v141, v142, "Pushed update due to %s computation result %s @ %s", v143, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v144, -1, -1);
          MEMORY[0x1DA721330](v143, -1, -1);

          goto LABEL_58;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        v150 = v145;
      }

      else
      {
        v150 = v145;
        v147 = v165;
      }

      sub_1D8AF7F08(v150, v147, type metadata accessor for DetectionRequest);
      goto LABEL_57;
    }
  }

LABEL_59:
  sub_1D87A14E4(v175, &qword_1ECA65EF0, &qword_1D8B2D2E0);
  return sub_1D8AF7F70(v174, type metadata accessor for TrackManager.TrackedProcessorState.Key);
}

BOOL sub_1D8AD5EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69238, &qword_1D8B3EE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  (*(a3 + 40))(v17, a2, a3);
  if (v18)
  {
    return 0;
  }

  v12 = swift_beginAccess();
  v13 = *(v4 + 200);
  MEMORY[0x1EEE9AC00](v12);
  *&v16[-32] = a2;
  *&v16[-24] = a3;
  *&v16[-16] = a1;

  sub_1D87EE720(sub_1D8AFD114, v13, v10);

  v14 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v11 = (*(*(v14 - 8) + 48))(v10, 1, v14) == 1;
  sub_1D87A14E4(v10, &qword_1ECA69238, &qword_1D8B3EE10);
  return v11;
}

void sub_1D8AD609C(void *a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for TrackManager.MatchingComputationResult(0) + 20));
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B13240();
  *(&v27 - 8) = v8;
  v9 = type metadata accessor for CVTrackedDetection(0);
  *(&v27 - 7) = v9;
  *(&v27 - 6) = v9;
  *(&v27 - 5) = v8;
  *(&v27 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0, &unk_1D8B28240);
  v10 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *(&v27 - 3) = v10;
  v25 = v10;
  v26 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0, &unk_1D8B28240, MEMORY[0x1E69E6340]);
  KeyPath = swift_getKeyPath();

  v13 = sub_1D8AD0DD4(v12, sub_1D8AFD468, 0, sub_1D8AFD484, KeyPath);

  v14 = *(a1 + *(type metadata accessor for TrackManager.MatchingComputationRequest(0) + 24));
  v28 = MEMORY[0x1E69E7CC0];
  v15 = *(v14 + 16);
  if (!v15)
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_12;
    }

LABEL_20:
    v20 = sub_1D8B16610();
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_21:

    return;
  }

  v16 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v17 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D8AF7FF0(v16, v5, type metadata accessor for CVTrackSnapshot);
    if (v13[2] && (sub_1D87EF764(v5), (v18 & 1) != 0))
    {

      v19 = sub_1D8AF7F70(v5, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1DA71F1A0](v19);
      if (*((*&v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
      v6 = *&v28;
    }

    else
    {
      sub_1D8AF7F70(v5, type metadata accessor for CVTrackSnapshot);
    }

    v16 += v17;
    --v15;
  }

  while (v15);

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

LABEL_12:
  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA71FC20](v21, v6);
      }

      else
      {
      }

      ++v21;
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      v28 = CameraSourceFrame.timestamp.getter(v22, v23);
      v29 = 38;
      sub_1D8AC9B48(&v28);
    }

    while (v20 != v21);
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1D8B16720();

  v30 = 0xD000000000000017;
  v31 = 0x80000001D8B49240;
  v24 = sub_1D8AD481C(v6);
  MEMORY[0x1DA71EFA0](v24);

  LODWORD(v26) = 0;
  v25 = 189;
  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D8AD6554(void *a1)
{
  v80 = type metadata accessor for MetaDetectionResult(0);
  v3 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v78 = &v76 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v76 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v76 - v12;
  v13 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ProcessorState(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v76 - v20;
  v22 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for TrackManager.MatchingComputationRequest(0) + 20);
  sub_1D8AF7FF0(a1 + v25, v21, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8AF7F08(v21, v15, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v15, v24, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v15, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8AF7F08(v21, v24, type metadata accessor for DetectionRequest);
LABEL_6:
  sub_1D8AF7F70(v24, type metadata accessor for DetectionRequest);
  result = sub_1D89AD844();
  if ((result & 1) == 0)
  {
    return result;
  }

  v28 = a1[3];
  v29 = a1[4];
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  v31 = sub_1D8AF7FF0(a1 + v25, v19, type metadata accessor for ProcessorState);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v30, v28);
  v35 = v81;
  sub_1D8A6E940(v19, v33, v28, v29, v81);
  v36 = swift_beginAccess();
  v37 = *(v1 + 192);
  MEMORY[0x1EEE9AC00](v36);
  *(&v76 - 2) = v35;

  v38 = sub_1D87EE5FC(sub_1D8AFD44C, (&v76 - 4), v37);

  if (!v38)
  {
    if (*(v1 + 136) == 2)
    {
      v40 = v78;
      sub_1D8AF7FF0(v35, v78, type metadata accessor for MetaDetectionResult);
      v41 = v79;
      sub_1D8AF7FF0(v35, v79, type metadata accessor for MetaDetectionResult);
      v42 = sub_1D8B151C0();
      v43 = sub_1D8B16230();
      if (!os_log_type_enabled(v42, v43))
      {

        sub_1D8AF7F70(v41, type metadata accessor for MetaDetectionResult);
        v64 = v40;
        goto LABEL_19;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82 = v45;
      *v44 = 136315394;
      v84 = *v40;
      v46 = CVDetection.DetectionType.description.getter();
      v48 = v47;
      sub_1D8AF7F70(v40, type metadata accessor for MetaDetectionResult);
      v49 = sub_1D89AC714(v46, v48, &v82);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2048;
      v50 = *(v41 + v80[8]);
      sub_1D8AF7F70(v41, type metadata accessor for MetaDetectionResult);
      *(v44 + 14) = v50;
      _os_log_impl(&dword_1D8783000, v42, v43, "No meta track for %s at t=%f.", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v51 = v45;
    }

    else
    {
      v65 = *(v1 + 144);
      v66 = a1[3];
      v67 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v66);
      v68 = CameraSourceFrame.timestamp.getter(v66, v67);
      v69 = v77;
      sub_1D8AF7FF0(v35, v77, type metadata accessor for MetaDetectionResult);
      v42 = sub_1D8B151C0();
      v70 = sub_1D8B16210();
      if (!os_log_type_enabled(v42, v70))
      {

        v64 = v69;
        goto LABEL_19;
      }

      v44 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v82 = v71;
      *v44 = 136315394;
      v84 = *v69;
      v72 = CVDetection.DetectionType.description.getter();
      v74 = v73;
      sub_1D8AF7F70(v69, type metadata accessor for MetaDetectionResult);
      v75 = sub_1D89AC714(v72, v74, &v82);

      *(v44 + 4) = v75;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v65 - v68;
      _os_log_impl(&dword_1D8783000, v42, v70, "No meta track for %s at age=%f.", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v51 = v71;
    }

    MEMORY[0x1DA721330](v51, -1, -1);
    MEMORY[0x1DA721330](v44, -1, -1);

    return sub_1D8AF7F70(v35, type metadata accessor for MetaDetectionResult);
  }

  if (*(a1 + *(type metadata accessor for TrackManager.MatchingComputationResult(0) + 20)) > 1uLL)
  {
    sub_1D8AF7FF0(v35, v11, type metadata accessor for DetectionRequest);
    v52 = v80;
    v53 = v80[5];
    v54 = *(v35 + v80[6]);
    v55 = *(v35 + v80[7]);
    v56 = (v35 + v53);
    v57 = *(v35 + v80[8]);
    v58 = &v11[v53];
    v59 = v56[1];
    *v58 = *v56;
    *(v58 + 1) = v59;
    v60 = v56[3];
    *(v58 + 2) = v56[2];
    *(v58 + 3) = v60;
    *&v11[v52[6]] = v54;
    *&v11[v52[7]] = v55;
    *&v11[v52[8]] = v57;
    v11[v52[9]] = 2;
    v61 = &v11[v52[10]];
    *v61 = 0;
    *(v61 + 1) = 0;
    v62 = swift_allocBox();
    sub_1D8AF7FF0(v11, v63, type metadata accessor for MetaDetectionResult);
    v82 = (v62 | 0x2000000000000000);
    v83 = 64;

    sub_1D8AC9B48(&v82);

    sub_1D8997618(v82, v83);
    v64 = v11;
LABEL_19:
    sub_1D8AF7F70(v64, type metadata accessor for MetaDetectionResult);
    return sub_1D8AF7F70(v35, type metadata accessor for MetaDetectionResult);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D8B23DF0;
  *(v39 + 32) = v38;

  sub_1D8AED1F4(v39);

  return sub_1D8AF7F70(v35, type metadata accessor for MetaDetectionResult);
}

uint64_t sub_1D8AD6E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v119 = a6;
  v136 = a5;
  v118 = a4;
  v132 = a3;
  v117 = a2;
  v133 = a1;
  v8 = type metadata accessor for MetaDetectionResult(0);
  v129 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v123 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v115 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v128 = v115 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v115 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v134 = v115 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  isa = (v115 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v115 - v27;
  swift_beginAccess();
  v29 = *(v7 + 192);
  v137 = MEMORY[0x1E69E7CC0];
  if (v29 >> 62)
  {
LABEL_60:
    v30 = sub_1D8B16610();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124 = v7;
  v120 = v13;
  v125 = v18;
  v130 = v26;
  v131 = isa;
  v127 = v28;
  if (v30)
  {
    v7 = 0;
    v28 = (v29 & 0xC000000000000001);
    v18 = (v29 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v28)
      {
        MEMORY[0x1DA71FC20](v7, v29);
        v26 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v135 = v137;
          v7 = v124;
          v26 = v130;
          isa = v131;
          v28 = v127;
          v31 = MEMORY[0x1E69E7CC0];
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v26 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      CVTrackedDetection.latestDetection.getter(&v141);
      isa = v141;
      v140 = v141;
      v13 = &v140;
      CVDetection.detectionType.getter(&v139);

      if (v139 == 2)
      {
        v13 = &v137;
        sub_1D8B167E0();
        isa = v137[2].isa;
        sub_1D8B16820();
        sub_1D8B16830();
        sub_1D8B167F0();
      }

      else
      {
      }

      ++v7;
      if (v26 == v30)
      {
        goto LABEL_15;
      }
    }
  }

  v135 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v141 = v31;
  v137 = *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100, &qword_1D8B3E5C0);
  v33 = sub_1D881CF20(&qword_1EE0E3850, &qword_1ECA69100, &qword_1D8B3E5C0, MEMORY[0x1E69E6518]);
  v34 = sub_1D8AD7DEC(&v137, v117, v132, v32, v118, v136, v33, v119);
  v36 = *(v34 + 16);
  if (v36)
  {
    LODWORD(v133) = 0;
    v37 = 0;
    v126 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
    v38 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v115[1] = v34;
    v39 = v34 + v38;
    v136 = *(v129 + 72);
    v129 = MEMORY[0x1E69E7CC0];
    *&v35 = 136315394;
    v122 = v35;
    while (1)
    {
      sub_1D8AF7FF0(v39, v28, type metadata accessor for MetaDetectionResult);
      if (v28[v8[9]] > 1u)
      {
        if (v28[v8[9]] != 2)
        {
          v67 = v134;
          v68 = sub_1D8AF7FF0(v28, v134, type metadata accessor for DetectionRequest);
          v69 = v8[5];
          v70 = *&v28[v8[6]];
          v71 = *&v28[v8[7]];
          v72 = *&v28[v8[8]];
          v73 = &v28[v69];
          v74 = (v67 + v69);
          v75 = *(v73 + 1);
          *v74 = *v73;
          v74[1] = v75;
          v76 = *(v73 + 3);
          v74[2] = *(v73 + 2);
          v74[3] = v76;
          *(v67 + v8[6]) = v70;
          *(v67 + v8[7]) = v71;
          *(v67 + v8[8]) = v72;
          *(v67 + v8[9]) = 0;
          v77 = (v67 + v8[10]);
          *v77 = 0;
          v77[1] = 0;
          MEMORY[0x1EEE9AC00](v68);
          v115[-2] = v67;
          v78 = sub_1D87EE5FC(sub_1D8AFD44C, &v115[-4], v135);
          if (v78)
          {
            v79 = v78;
            v132 = v37;
            v80 = v125;
            sub_1D8AF7FF0(v28, v125, type metadata accessor for MetaDetectionResult);
            v81 = v128;
            sub_1D8AF7FF0(v28, v128, type metadata accessor for MetaDetectionResult);
            v82 = sub_1D8B151C0();
            v83 = sub_1D8B16210();
            if (os_log_type_enabled(v82, v83))
            {
              v121 = v83;
              v133 = v79;
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v137 = v85;
              *v84 = v122;
              LOBYTE(v140) = *v80;
              v86 = CVDetection.DetectionType.description.getter();
              v88 = v87;
              sub_1D8AF7F70(v80, type metadata accessor for MetaDetectionResult);
              v89 = sub_1D89AC714(v86, v88, &v137);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2080;
              v90 = (v81 + v8[10]);
              if (v90[1])
              {
                v91 = *v90;
                v92 = v90[1];
              }

              else
              {
                v91 = 0x6F727020656E6F6ELL;
                v92 = 0xED00006465646976;
              }

              v37 = v132;

              sub_1D8AF7F70(v128, type metadata accessor for MetaDetectionResult);
              v106 = sub_1D89AC714(v91, v92, &v137);

              *(v84 + 14) = v106;
              _os_log_impl(&dword_1D8783000, v82, v121, "Updating metadetection(%s) track with processing abort (reason: %s)", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v85, -1, -1);
              MEMORY[0x1DA721330](v84, -1, -1);
            }

            else
            {

              sub_1D8AF7F70(v81, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v80, type metadata accessor for MetaDetectionResult);
              v37 = v132;
            }

            v107 = swift_allocBox();
            v28 = v127;
            sub_1D8AF7FF0(v127, v108, type metadata accessor for MetaDetectionResult);
            v137 = (v107 | 0x2000000000000000);
            v138 = 64;

            sub_1D8AC9B48(&v137);

            sub_1D8997618(v137, v138);
            sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
            sub_1D8AF7F70(v134, type metadata accessor for MetaDetectionResult);
            LODWORD(v133) = 1;
          }

          else
          {
            v94 = v120;
            sub_1D8AF7FF0(v28, v120, type metadata accessor for MetaDetectionResult);
            v95 = v123;
            sub_1D8AF7FF0(v28, v123, type metadata accessor for MetaDetectionResult);
            v96 = sub_1D8B151C0();
            v97 = sub_1D8B16210();
            if (os_log_type_enabled(v96, v97))
            {
              v121 = v97;
              v132 = v37;
              v98 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v137 = v116;
              *v98 = v122;
              LOBYTE(v140) = *v94;
              v99 = CVDetection.DetectionType.description.getter();
              v101 = v100;
              sub_1D8AF7F70(v94, type metadata accessor for MetaDetectionResult);
              v102 = sub_1D89AC714(v99, v101, &v137);

              *(v98 + 4) = v102;
              *(v98 + 12) = 2080;
              v103 = (v95 + v8[10]);
              if (v103[1])
              {
                v104 = *v103;
                v105 = v103[1];
              }

              else
              {
                v104 = 0x6F727020656E6F6ELL;
                v105 = 0xED00006465646976;
              }

              sub_1D8AF7F70(v123, type metadata accessor for MetaDetectionResult);
              v109 = sub_1D89AC714(v104, v105, &v137);

              *(v98 + 14) = v109;
              _os_log_impl(&dword_1D8783000, v96, v121, "Failed to update existing metadetection(%s) track with processing abort (reason: %s)", v98, 0x16u);
              v110 = v116;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v110, -1, -1);
              MEMORY[0x1DA721330](v98, -1, -1);

              v28 = v127;
              sub_1D8AF7F70(v127, type metadata accessor for MetaDetectionResult);
              v37 = v132;
            }

            else
            {

              sub_1D8AF7F70(v95, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v94, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
            }

            sub_1D8AF7F70(v134, type metadata accessor for MetaDetectionResult);
          }

          v26 = v130;
          isa = v131;
          goto LABEL_22;
        }

        v55 = sub_1D8AF7FF0(v28, isa, type metadata accessor for DetectionRequest);
        v56 = v8[5];
        v57 = *&v28[v8[6]];
        v58 = *&v28[v8[7]];
        v59 = *&v28[v8[8]];
        v60 = &v28[v56];
        v61 = (isa + v56);
        v62 = *(v60 + 1);
        *v61 = *v60;
        v61[1] = v62;
        v63 = *(v60 + 3);
        v61[2] = *(v60 + 2);
        v61[3] = v63;
        *(isa + v8[6]) = v57;
        *(isa + v8[7]) = v58;
        *(isa + v8[8]) = v59;
        *(isa + v8[9]) = 1;
        v64 = (isa + v8[10]);
        *v64 = 0;
        v64[1] = 0;
        MEMORY[0x1EEE9AC00](v55);
        v115[-2] = isa;
        if (!sub_1D87EE5FC(sub_1D8AFD44C, &v115[-4], v135))
        {
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v93 = isa;
          goto LABEL_37;
        }

        v65 = swift_allocBox();
        sub_1D8AF7FF0(v28, v66, type metadata accessor for MetaDetectionResult);
        v137 = (v65 | 0x2000000000000000);
        v138 = 64;

        sub_1D8AC9B48(&v137);

        sub_1D8997618(v137, v138);
        sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
        v52 = isa;
      }

      else
      {
        if (!v28[v8[9]])
        {
          v53 = swift_allocBox();
          sub_1D8AF7FF0(v28, v54, type metadata accessor for MetaDetectionResult);
          v137 = (v53 | 0x2000000000000000);
          type metadata accessor for CVTrackedDetection(0);
          swift_allocObject();
          sub_1D8AC8338(&v137);
          MEMORY[0x1DA71F1A0]();
          if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v132 = v37;
            sub_1D8B15D20();
            v37 = v132;
          }

          sub_1D8B15D70();
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v129 = v141;
          goto LABEL_22;
        }

        v40 = sub_1D8AF7FF0(v28, v26, type metadata accessor for DetectionRequest);
        v41 = v8[5];
        v42 = *&v28[v8[6]];
        v43 = *&v28[v8[7]];
        v44 = *&v28[v8[8]];
        v45 = &v28[v41];
        v46 = &v26[v41];
        v47 = *(v45 + 1);
        *v46 = *v45;
        *(v46 + 1) = v47;
        v48 = *(v45 + 3);
        *(v46 + 2) = *(v45 + 2);
        *(v46 + 3) = v48;
        *&v26[v8[6]] = v42;
        *&v26[v8[7]] = v43;
        *&v26[v8[8]] = v44;
        v26[v8[9]] = 0;
        v49 = &v26[v8[10]];
        *v49 = 0;
        *(v49 + 1) = 0;
        MEMORY[0x1EEE9AC00](v40);
        v115[-2] = v26;
        if (!sub_1D87EE5FC(sub_1D8AFD048, &v115[-4], v135))
        {
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v93 = v26;
LABEL_37:
          sub_1D8AF7F70(v93, type metadata accessor for MetaDetectionResult);
          goto LABEL_22;
        }

        v50 = swift_allocBox();
        sub_1D8AF7FF0(v28, v51, type metadata accessor for MetaDetectionResult);
        v137 = (v50 | 0x2000000000000000);
        v138 = 64;

        sub_1D8AC9B48(&v137);

        sub_1D8997618(v137, v138);
        sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
        v52 = v26;
      }

      sub_1D8AF7F70(v52, type metadata accessor for MetaDetectionResult);
      LODWORD(v133) = 1;
LABEL_22:
      v39 += v136;
      if (!--v36)
      {

        v111 = v129;
        v112 = v133;
        if (!(v129 >> 62))
        {
          goto LABEL_51;
        }

LABEL_56:
        if (!sub_1D8B16610())
        {
          goto LABEL_57;
        }

LABEL_52:
        sub_1D8AD7FF8(v111, v135);

        sub_1D8AECDD4(v111, v117, v118, v119);
        if (!(v111 >> 62))
        {
          goto LABEL_53;
        }

LABEL_58:
        v113 = sub_1D8B16610();
        goto LABEL_54;
      }
    }
  }

  v112 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

LABEL_57:

  if (v111 >> 62)
  {
    goto LABEL_58;
  }

LABEL_53:
  v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:

  return (v113 != 0) | v112 & 1u;
}

uint64_t sub_1D8AD7DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v18 + 16))(&v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a1;
  v19 = sub_1D8B15BF0();
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a2;
  sub_1D89170E0(sub_1D8AFD094, v23, v19);
  v21 = v20;

  return v21;
}

uint64_t sub_1D8AD7F54(uint64_t a1, uint64_t a2)
{
  CVTrackedDetection.latestDetection.getter(&v7);
  type metadata accessor for MetaDetectionResult(0);
  v3 = swift_allocBox();
  sub_1D8AF7FF0(a2, v4, type metadata accessor for MetaDetectionResult);
  v6 = v3 | 0x2000000000000000;
  LOBYTE(v3) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v7, &v6);

  return v3 & 1;
}

void sub_1D8AD7FF8(unint64_t a1, unint64_t a2)
{
  v31 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    v3 = sub_1D8B16610();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v5 = COERCE_DOUBLE(&v30);
    sub_1D87F4140(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v7 = 0;
    v4 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA71FC20](v7, a1);
      }

      else
      {
      }

      CVTrackedDetection.latestEstimate.getter(&v29);
      v28 = v29;
      CVDetection.detection.getter(v25);
      v8 = v26;
      v9 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v10 = (*(v9 + 88))(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v25);
      v30 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D87F4140((v11 > 1), v12 + 1, 1);
        v4 = v30;
      }

      ++v7;
      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
    }

    while (v3 != v7);
  }

  v5 = COERCE_DOUBLE(sub_1D8918E7C(v4));
  v14 = v13;

  v6 = a2;
  if (v14)
  {
    goto LABEL_26;
  }

  if (!(a2 >> 62))
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_26:
    sub_1D8AED8E4(v31);

    return;
  }

LABEL_25:
  v22 = v6;
  v23 = sub_1D8B16610();
  v6 = v22;
  v15 = v23;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_15:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v6 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v18 = MEMORY[0x1DA71FC20](v16);
      }

      else
      {
        v18 = *(v6 + 8 * v16 + 32);
      }

      v19 = v5 - *(v18 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
      CVTrackedDetection.latestEstimate.getter(v25);
      v30 = v25[0];
      CVDetection.maxSecondsDecay.getter();
      v21 = v20;

      if (v21 < v19)
      {
        sub_1D87FE258(v25, v18);
      }

      ++v16;
      v6 = a2;
    }

    while (v15 != v16);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_1D8AD82D0(uint64_t a1)
{
  v272 = *v1;
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v293 = &v263 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for ProcessorState(0);
  v5 = MEMORY[0x1EEE9AC00](v291);
  v274 = &v263 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v285 = &v263 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v292 = &v263 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v297 = &v263 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v299 = &v263 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v270 = &v263 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v269 = &v263 - v17;
  v18 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v273 = &v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v271 = &v263 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v286 = &v263 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v284 = &v263 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v290 = &v263 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v289 = &v263 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v295 = &v263 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v294 = &v263 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v268 = &v263 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v267 = &v263 - v37;
  v38 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v288 = &v263 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v280 = (&v263 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v279 = &v263 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v278 = (&v263 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v287 = &v263 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v277 = (&v263 - v50);
  MEMORY[0x1EEE9AC00](v49);
  v276 = (&v263 - v51);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63220, &qword_1D8B1E7E0);
  v305 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v302 = &v263 - v52;
  v53 = type metadata accessor for CVTrackSnapshot(0);
  v54 = *(v53 - 8);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  *&v283 = &v263 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v263 - v57;
  v59 = sub_1D8B13240();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v263 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v63 = *(v298 + 24);
  v301 = a1;
  v64 = *(a1 + v63);
  v65 = *(v64 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  v275 = v54;
  if (v65)
  {
    v282 = v38;
    v309 = MEMORY[0x1E69E7CC0];
    sub_1D87F3EE0(0, v65, 0);
    v66 = v309;
    v67 = v64 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v304 = *(v54 + 72);
    v303 = v60 + 32;
    v68 = v59;
    do
    {
      sub_1D8AF7FF0(v67, v58, type metadata accessor for CVTrackSnapshot);
      (*(v60 + 16))(v62, v58, v68);
      sub_1D8AF7F70(v58, type metadata accessor for CVTrackSnapshot);
      v309 = v66;
      isa = v66[2].isa;
      v69 = v66[3].isa;
      if (isa >= v69 >> 1)
      {
        sub_1D87F3EE0((v69 > 1), isa + 1, 1);
        v66 = v309;
      }

      v66[2].isa = (isa + 1);
      (*(v60 + 32))(v66 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * isa, v62, v68);
      v67 += v304;
      --v65;
    }

    while (v65);
    v71 = v282;
  }

  else
  {
    v68 = v59;
    v71 = v38;
  }

  v72 = sub_1D87C4B18(v66);

  v73 = v296;
  v74 = swift_beginAccess();
  v75 = *(v73 + 192);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v301;

  v77 = sub_1D87C7118(sub_1D8AFCFF0, &v263 - 4, v75);
  MEMORY[0x1EEE9AC00](v77);
  *(&v263 - 8) = v68;
  v78 = type metadata accessor for CVTrackedDetection(0);
  *(&v263 - 7) = v78;
  *(&v263 - 6) = v78;
  *(&v263 - 5) = v68;
  *(&v263 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0, &unk_1D8B28240);
  v79 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *(&v263 - 3) = v79;
  v261 = v79;
  v262 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0, &unk_1D8B28240, MEMORY[0x1E69E6340]);
  KeyPath = swift_getKeyPath();
  v281 = v77;
  v81 = sub_1D8AD0DD4(v77, sub_1D8AFD468, 0, sub_1D8AFD484, KeyPath);

  v82 = (v76 + *(v71 + 20));
  v84 = *v82;
  v83 = v82[1];
  v85 = v82[2];
  if (*v82 >= 2)
  {
    v282 = v72;
    v86 = *(v84 + 16);

    v304 = v85;

    v87 = MEMORY[0x1E69E7CC0];
    v303 = v83;
    v88 = v302;
    if (v86)
    {
      v266 = v86 - 1;
      v89 = &qword_1ECA63220;
      v90 = &qword_1D8B1E7E0;
      v91 = 0;
      while (v91 < *(v84 + 16))
      {
        sub_1D87A0E38(v84 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + v305[9] * v91, v88, &qword_1ECA63220, &qword_1D8B1E7E0);
        if (v81[2] && (v92 = *(v88 + *(v300 + 48)), v93 = sub_1D87EF764(v88), v88 = v302, (v94 & 1) != 0))
        {
          v264 = v78;
          v95 = *(v81[7] + 8 * v93);

          v265 = v95;

          sub_1D87A14E4(v88, &qword_1ECA63220, &qword_1D8B1E7E0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_1D87CA3EC(0, v87[2] + 1, 1, v87);
          }

          v96 = v87;
          v97 = v87[2];
          v98 = v96;
          v99 = v96[3];
          v78 = v264;
          if (v97 >= v99 >> 1)
          {
            v98 = sub_1D87CA3EC((v99 > 1), v97 + 1, 1, v98);
          }

          v98[2] = v97 + 1;
          v100 = &v98[2 * v97];
          v87 = v98;
          v100[4] = v265;
          v100[5] = v92;
          v88 = v302;
          if (v266 == v91)
          {
            goto LABEL_21;
          }

          ++v91;
        }

        else
        {
          ++v91;
          sub_1D87A14E4(v88, &qword_1ECA63220, &qword_1D8B1E7E0);
          if (v86 == v91)
          {
            goto LABEL_21;
          }
        }
      }

      __break(1u);
      goto LABEL_131;
    }

LABEL_21:

    v101 = *(v84 + 16) == v87[2];
    v305 = v87;
    if (v101)
    {
    }

    else
    {
      v102 = v301;
      v103 = v276;
      sub_1D8AF7FF0(v301, v276, type metadata accessor for TrackManager.MatchingComputationResult);
      v104 = v277;
      sub_1D8AF7FF0(v102, v277, type metadata accessor for TrackManager.MatchingComputationResult);
      swift_bridgeObjectRetain_n();

      v105 = sub_1D8B151C0();
      v106 = sub_1D8B16210();
      if (os_log_type_enabled(v105, v106))
      {
        LODWORD(v302) = v106;
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v309 = v109;
        *v108 = 136315906;
        v110 = v269;
        sub_1D8AF7FF0(v103 + *(v298 + 20), v269, type metadata accessor for ProcessorState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v112 = v267;
          if (EnumCaseMultiPayload == 1)
          {
            v113 = v110;
            v114 = v293;
            sub_1D8AF7F08(v113, v293, type metadata accessor for DetectionResult);
            sub_1D8AF7FF0(v114, v112, type metadata accessor for DetectionRequest);
            sub_1D8AF7F70(v114, type metadata accessor for DetectionResult);
LABEL_33:
            v117 = *v112;
            sub_1D8AF7F70(v112, type metadata accessor for DetectionRequest);
            LOBYTE(v315) = v117;
            v118 = CVDetection.DetectionType.description.getter();
            v120 = v119;
            sub_1D8AF7F70(v276, type metadata accessor for TrackManager.MatchingComputationResult);
            v121 = sub_1D89AC714(v118, v120, &v309);

            *(v108 + 4) = v121;
            *(v108 + 12) = 2048;
            v122 = *(v84 + 16);

            *(v108 + 14) = v122;

            *(v108 + 22) = 2048;
            v123 = v305[2];

            *(v108 + 24) = v123;

            *(v108 + 32) = 2080;
            v124 = v277;
            v125 = v277[3];
            v126 = v277[4];
            __swift_project_boxed_opaque_existential_1(v277, v125);
            v127 = CameraSourceFrame.timeDescription.getter(v125, v126);
            v129 = v128;
            sub_1D8AF7F70(v124, type metadata accessor for TrackManager.MatchingComputationResult);
            v130 = sub_1D89AC714(v127, v129, &v309);

            *(v108 + 34) = v130;
            _os_log_impl(&dword_1D8783000, v105, v302, "Matched pair count for %s: expected %ld but got %ld back. Did matching take too long? @ t=%s", v108, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v109, -1, -1);
            MEMORY[0x1DA721330](v108, -1, -1);

            v115 = MEMORY[0x1E69E7CC0];
LABEL_34:
            v131 = v283;
            v309 = v115;
            v89 = v304;
            v132 = *(v304 + 16);
            v84 = v287;
            if (v132)
            {
              v133 = v304 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
              v134 = *(v275 + 72);
              v91 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1D8AF7FF0(v133, v131, type metadata accessor for CVTrackSnapshot);
                if (v81[2] && (sub_1D87EF764(v131), (v135 & 1) != 0))
                {

                  v136 = sub_1D8AF7F70(v131, type metadata accessor for CVTrackSnapshot);
                  MEMORY[0x1DA71F1A0](v136);
                  if (*((v309 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v309 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D8B15D20();
                    v84 = v287;
                  }

                  sub_1D8B15D70();
                  v91 = v309;
                }

                else
                {
                  sub_1D8AF7F70(v131, type metadata accessor for CVTrackSnapshot);
                }

                v133 += v134;
                --v132;
              }

              while (v132);

              v89 = v304;
            }

            else
            {

              v91 = MEMORY[0x1E69E7CC0];
            }

            v90 = (v91 >> 62);
            if (!(v91 >> 62))
            {
              v137 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_47;
            }

LABEL_131:
            v137 = sub_1D8B16610();
LABEL_47:
            if (v137 == v89[2])
            {

              goto LABEL_60;
            }

            v138 = v301;
            sub_1D8AF7FF0(v301, v84, type metadata accessor for TrackManager.MatchingComputationResult);
            v139 = v138;
            v140 = v278;
            sub_1D8AF7FF0(v139, v278, type metadata accessor for TrackManager.MatchingComputationResult);
            swift_bridgeObjectRetain_n();

            v141 = sub_1D8B151C0();
            v142 = sub_1D8B16210();
            if (!os_log_type_enabled(v141, v142))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              sub_1D8AF7F70(v84, type metadata accessor for TrackManager.MatchingComputationResult);
              sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
              goto LABEL_60;
            }

            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v309 = v144;
            *v143 = 136315906;
            v145 = v270;
            sub_1D8AF7FF0(v84 + *(v298 + 20), v270, type metadata accessor for ProcessorState);
            v146 = swift_getEnumCaseMultiPayload();
            if (v146)
            {
              if (v146 == 1)
              {
                v147 = v145;
                v148 = v293;
                sub_1D8AF7F08(v147, v293, type metadata accessor for DetectionResult);
                v149 = v268;
                sub_1D8AF7FF0(v148, v268, type metadata accessor for DetectionRequest);
                sub_1D8AF7F70(v148, type metadata accessor for DetectionResult);
LABEL_56:
                v150 = *v149;
                sub_1D8AF7F70(v149, type metadata accessor for DetectionRequest);
                LOBYTE(v315) = v150;
                v151 = CVDetection.DetectionType.description.getter();
                v153 = v152;
                sub_1D8AF7F70(v287, type metadata accessor for TrackManager.MatchingComputationResult);
                v154 = sub_1D89AC714(v151, v153, &v309);

                *(v143 + 4) = v154;
                *(v143 + 12) = 2048;
                v155 = *(v304 + 16);

                *(v143 + 14) = v155;

                *(v143 + 22) = 2048;
                if (v90)
                {
                  v156 = sub_1D8B16610();
                }

                else
                {
                  v156 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v143 + 24) = v156;

                *(v143 + 32) = 2080;
                v157 = v278;
                v158 = v278[3];
                v159 = v278[4];
                __swift_project_boxed_opaque_existential_1(v278, v158);
                v160 = CameraSourceFrame.timeDescription.getter(v158, v159);
                v162 = v161;
                sub_1D8AF7F70(v157, type metadata accessor for TrackManager.MatchingComputationResult);
                v163 = sub_1D89AC714(v160, v162, &v309);

                *(v143 + 34) = v163;
                _os_log_impl(&dword_1D8783000, v141, v142, "Unmatched count for %s: expected %ld but got %ld back. Did matching take too long? @ t=%s", v143, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x1DA721330](v144, -1, -1);
                MEMORY[0x1DA721330](v143, -1, -1);

LABEL_60:
                v164 = v305;
                sub_1D87C1470(v301, &v315);
                v304 = v164[2];
                if (v304)
                {
                  v165 = (v164 + 5);
                  v166 = v304;
                  do
                  {
                    v309 = *v165;
                    LOBYTE(v310) = 64;
                    swift_retain_n();

                    sub_1D8AC9B48(&v309);

                    sub_1D8997618(v309, v310);
                    v165 += 2;
                    --v166;
                  }

                  while (v166);
                }

                v314 = MEMORY[0x1E69E7CD0];
                if (v90)
                {
                  v168 = sub_1D8B16610();
                }

                else
                {
                  v168 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v84 = v291;
                if (v168)
                {
                  if (v168 >= 1)
                  {
                    v169 = 0;
                    v300 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
                    v305 = (v299 + 8);
                    v302 = (v297 + 8);
                    v287 = v292 + 8;
                    v282 = v285 + 8;
                    *&v167 = 136315650;
                    v283 = v167;
                    while (1)
                    {
                      if ((v91 & 0xC000000000000001) != 0)
                      {
                        v170 = MEMORY[0x1DA71FC20](v169, v91);
                      }

                      else
                      {
                        v170 = *(v91 + 8 * v169 + 32);
                      }

                      v171 = v316;
                      v172 = v317;
                      __swift_project_boxed_opaque_existential_1(&v315, v316);
                      v309 = CameraSourceFrame.timestamp.getter(v171, v172);
                      LOBYTE(v310) = 0x80;
                      sub_1D8AC9B48(&v309);
                      if (*(*(v170 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
                      {
                        goto LABEL_70;
                      }

                      v173 = v316;
                      v174 = v317;
                      __swift_project_boxed_opaque_existential_1(&v315, v316);
                      (*(v174 + 40))(&v309, v173, v174);
                      if (v313 != 1)
                      {
                        goto LABEL_71;
                      }

                      v175 = *(v298 + 20);
                      sub_1D8AF7FF0(v301 + v175, v299, type metadata accessor for ProcessorState);
                      v176 = swift_getEnumCaseMultiPayload();
                      if (v176)
                      {
                        if (v176 == 1)
                        {
                          v177 = v293;
                          sub_1D8AF7F08(v299, v293, type metadata accessor for DetectionResult);
                          v178 = v295;
                          sub_1D8AF7FF0(v177, v295, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v177, type metadata accessor for DetectionResult);
                          goto LABEL_82;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
                      }

                      v178 = v295;
                      sub_1D8AF7F08(v299, v295, type metadata accessor for DetectionRequest);
LABEL_82:
                      v179 = v178;
                      v180 = v294;
                      sub_1D8AF7F08(v179, v294, type metadata accessor for DetectionRequest);
                      v181 = *v180;
                      sub_1D8AF7F70(v180, type metadata accessor for DetectionRequest);
                      if (v181 == 1)
                      {
                        goto LABEL_71;
                      }

                      sub_1D8AF7FF0(v301 + v175, v297, type metadata accessor for ProcessorState);
                      v182 = swift_getEnumCaseMultiPayload();
                      if (v182)
                      {
                        if (v182 == 1)
                        {
                          v183 = v293;
                          sub_1D8AF7F08(v297, v293, type metadata accessor for DetectionResult);
                          v184 = v290;
                          sub_1D8AF7FF0(v183, v290, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v183, type metadata accessor for DetectionResult);
                          goto LABEL_88;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
                      }

                      v184 = v290;
                      sub_1D8AF7F08(v297, v290, type metadata accessor for DetectionRequest);
LABEL_88:
                      v185 = v184;
                      v186 = v289;
                      sub_1D8AF7F08(v185, v289, type metadata accessor for DetectionRequest);
                      v187 = *v186;
                      sub_1D8AF7F70(v186, type metadata accessor for DetectionRequest);
                      if (v187 == 12)
                      {
                        goto LABEL_71;
                      }

                      sub_1D8AF7FF0(v301 + v175, v292, type metadata accessor for ProcessorState);
                      v188 = swift_getEnumCaseMultiPayload();
                      if (v188)
                      {
                        if (v188 == 1)
                        {
                          v189 = v293;
                          sub_1D8AF7F08(v292, v293, type metadata accessor for DetectionResult);
                          v190 = v286;
                          sub_1D8AF7FF0(v189, v286, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v189, type metadata accessor for DetectionResult);
                          goto LABEL_94;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
                      }

                      v190 = v286;
                      sub_1D8AF7F08(v292, v286, type metadata accessor for DetectionRequest);
LABEL_94:
                      v191 = v190;
                      v192 = v284;
                      sub_1D8AF7F08(v191, v284, type metadata accessor for DetectionRequest);
                      v193 = *v192;
                      sub_1D8AF7F70(v192, type metadata accessor for DetectionRequest);
                      if (v193 == 13)
                      {
                        goto LABEL_71;
                      }

                      v194 = v301;
                      v195 = v279;
                      sub_1D8AF7FF0(v301, v279, type metadata accessor for TrackManager.MatchingComputationResult);
                      v196 = v280;
                      sub_1D8AF7FF0(v194, v280, type metadata accessor for TrackManager.MatchingComputationResult);

                      v197 = sub_1D8B151C0();
                      v198 = sub_1D8B16230();

                      if (os_log_type_enabled(v197, v198))
                      {
                        LODWORD(v278) = v198;
                        v281 = v197;
                        v199 = swift_slowAlloc();
                        v277 = swift_slowAlloc();
                        v308 = v277;
                        *v199 = v283;
                        sub_1D8AF7FF0(v195 + *(v298 + 20), v285, type metadata accessor for ProcessorState);
                        v200 = swift_getEnumCaseMultiPayload();
                        if (v200)
                        {
                          v201 = v271;
                          if (v200 == 1)
                          {
                            v202 = v293;
                            sub_1D8AF7F08(v285, v293, type metadata accessor for DetectionResult);
                            sub_1D8AF7FF0(v202, v201, type metadata accessor for DetectionRequest);
                            sub_1D8AF7F70(v202, type metadata accessor for DetectionResult);
LABEL_103:
                            v204 = *v201;
                            sub_1D8AF7F70(v201, type metadata accessor for DetectionRequest);
                            LOBYTE(v309) = v204;
                            v205 = CVDetection.DetectionType.description.getter();
                            v207 = v206;
                            v276 = type metadata accessor for TrackManager.MatchingComputationResult;
                            sub_1D8AF7F70(v279, type metadata accessor for TrackManager.MatchingComputationResult);
                            v208 = sub_1D89AC714(v205, v207, &v308);

                            *(v199 + 4) = v208;
                            *(v199 + 12) = 2080;
                            CVTrackedDetection.latestDetection.getter(&v307);
                            v275 = v199;
                            v306 = v307;
                            CVDetection.detection.getter(&v309);
                            v210 = v311;
                            v209 = v312;
                            __swift_project_boxed_opaque_existential_1(&v309, v311);
                            v211 = (*(v209 + 72))(v210, v209);
                            v213 = v212;

                            __swift_destroy_boxed_opaque_existential_1(&v309);
                            v214 = sub_1D89AC714(v211, v213, &v308);

                            v215 = v275;
                            *(v275 + 14) = v214;
                            *(v215 + 22) = 2048;
                            v216 = v280;
                            v217 = v280[3];
                            v218 = v280[4];
                            __swift_project_boxed_opaque_existential_1(v280, v217);
                            v219 = CameraSourceFrame.timestamp.getter(v217, v218) - *(v170 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
                            sub_1D8AF7F70(v216, v276);
                            *(v215 + 24) = v219;
                            v220 = v281;
                            _os_log_impl(&dword_1D8783000, v281, v278, "Killing track %s (%s) (age=%f) due to still arrival", v215, 0x20u);
                            v221 = v277;
                            swift_arrayDestroy();
                            MEMORY[0x1DA721330](v221, -1, -1);
                            MEMORY[0x1DA721330](v215, -1, -1);

                            goto LABEL_70;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

                          v203 = v285;
                        }

                        else
                        {
                          v203 = v285;
                          v201 = v271;
                        }

                        sub_1D8AF7F08(v203, v201, type metadata accessor for DetectionRequest);
                        goto LABEL_103;
                      }

                      sub_1D8AF7F70(v195, type metadata accessor for TrackManager.MatchingComputationResult);
                      sub_1D8AF7F70(v196, type metadata accessor for TrackManager.MatchingComputationResult);
LABEL_70:
                      sub_1D87FE258(&v309, v170);
LABEL_71:

                      if (v168 == ++v169)
                      {
                        goto LABEL_104;
                      }
                    }
                  }

                  __break(1u);
                  goto LABEL_133;
                }

LABEL_104:

                v222 = v314;
                if ((v314 & 0xC000000000000001) != 0)
                {
                  v223 = sub_1D8B16610();
                }

                else
                {
                  v223 = *(v314 + 16);
                }

                v224 = v288;
                v225 = v303;
                if (v223)
                {
                  sub_1D8AF7FF0(v301, v288, type metadata accessor for TrackManager.MatchingComputationResult);
                  sub_1D87C1470(&v315, &v309);

                  v226 = sub_1D8B151C0();
                  v227 = sub_1D8B16200();
                  if (os_log_type_enabled(v226, v227))
                  {
                    v228 = swift_slowAlloc();
                    v229 = swift_slowAlloc();
                    v308 = v229;
                    *v228 = 134218754;
                    if ((v222 & 0xC000000000000001) != 0)
                    {
                      v230 = sub_1D8B16610();
                    }

                    else
                    {
                      v230 = *(v222 + 16);
                    }

                    *(v228 + 4) = v230;

                    *(v228 + 12) = 2080;
                    sub_1D8ADB098(&v307);
                    sub_1D87C4938();
                    v231 = sub_1D8B15740();
                    v233 = v232;

                    v234 = sub_1D89AC714(v231, v233, &v308);

                    *(v228 + 14) = v234;
                    *(v228 + 22) = 2080;
                    v235 = v274;
                    sub_1D8AF7FF0(v288 + *(v298 + 20), v274, type metadata accessor for ProcessorState);
                    v236 = swift_getEnumCaseMultiPayload();
                    if (v236)
                    {
                      v237 = v273;
                      v225 = v303;
                      if (v236 == 1)
                      {
                        v238 = v235;
                        v239 = v293;
                        sub_1D8AF7F08(v238, v293, type metadata accessor for DetectionResult);
                        sub_1D8AF7FF0(v239, v237, type metadata accessor for DetectionRequest);
                        sub_1D8AF7F70(v239, type metadata accessor for DetectionResult);
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

                        sub_1D8AF7F08(v235, v237, type metadata accessor for DetectionRequest);
                      }
                    }

                    else
                    {
                      v237 = v273;
                      sub_1D8AF7F08(v235, v273, type metadata accessor for DetectionRequest);
                      v225 = v303;
                    }

                    v240 = *v237;
                    sub_1D8AF7F70(v237, type metadata accessor for DetectionRequest);
                    LOBYTE(v307) = v240;
                    v241 = CVDetection.DetectionType.description.getter();
                    v243 = v242;
                    sub_1D8AF7F70(v288, type metadata accessor for TrackManager.MatchingComputationResult);
                    v244 = sub_1D89AC714(v241, v243, &v308);

                    *(v228 + 24) = v244;
                    *(v228 + 32) = 2080;
                    v245 = v311;
                    v246 = v312;
                    __swift_project_boxed_opaque_existential_1(&v309, v311);
                    v247 = CameraSourceFrame.timeDescription.getter(v245, v246);
                    v249 = v248;
                    __swift_destroy_boxed_opaque_existential_1(&v309);
                    v250 = sub_1D89AC714(v247, v249, &v308);

                    *(v228 + 34) = v250;
                    _os_log_impl(&dword_1D8783000, v226, v227, "updateTracksWithMatchingComputationResultsCompleted: Removing %ld expired tracks by type: %s for %s @ %s", v228, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x1DA721330](v229, -1, -1);
                    MEMORY[0x1DA721330](v228, -1, -1);
                  }

                  else
                  {

                    sub_1D8AF7F70(v224, type metadata accessor for TrackManager.MatchingComputationResult);
                    __swift_destroy_boxed_opaque_existential_1(&v309);
                  }
                }

                sub_1D8AED8E4(v222);
                v251 = *(v225 + 16);

                if (v251)
                {
                  v309 = MEMORY[0x1E69E7CC0];
                  v252 = (v225 + 32);
                  do
                  {
                    v253 = *v252++;
                    v308 = v253;
                    swift_allocObject();
                    swift_retain_n();
                    sub_1D8AC8338(&v308);

                    MEMORY[0x1DA71F1A0](v254);
                    if (*((v309 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v309 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1D8B15D20();
                    }

                    sub_1D8B15D70();

                    --v251;
                  }

                  while (v251);
                  v255 = v309;
                }

                else
                {
                  if (!v304)
                  {
                    goto LABEL_128;
                  }

                  v255 = MEMORY[0x1E69E7CC0];
                }

                v256 = v316;
                v257 = v317;
                v258 = __swift_project_boxed_opaque_existential_1(&v315, v316);
                sub_1D8AECDD4(v255, v258, v256, v257);
LABEL_128:

                return __swift_destroy_boxed_opaque_existential_1(&v315);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
            }

            v149 = v268;
            sub_1D8AF7F08(v145, v268, type metadata accessor for DetectionRequest);
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

          v116 = v110;
        }

        else
        {
          v116 = v110;
          v112 = v267;
        }

        sub_1D8AF7F08(v116, v112, type metadata accessor for DetectionRequest);
        goto LABEL_33;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_1D8AF7F70(v103, type metadata accessor for TrackManager.MatchingComputationResult);
      sub_1D8AF7F70(v104, type metadata accessor for TrackManager.MatchingComputationResult);
    }

    v115 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

LABEL_133:
  v309 = 0;
  v310 = 0xE000000000000000;
  sub_1D8B16720();

  v309 = 0xD000000000000017;
  v310 = 0x80000001D8B49240;
  v260 = sub_1D8AD481C(v84);
  MEMORY[0x1DA71EFA0](v260);

  LODWORD(v262) = 0;
  v261 = 312;
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

BOOL sub_1D8ADA920(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_1D89A5880(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, a2) & 1) == 0)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v23);
  v22 = v23;
  CVDetection.detectionType.getter(&v21);

  v15 = v21;
  v16 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  sub_1D8AF7FF0(a3 + *(v16 + 20), v11, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_7:
    sub_1D8AF7F08(v11, v14, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

  sub_1D8AF7F08(v11, v8, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v8, v14, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v8, type metadata accessor for DetectionResult);
LABEL_8:
  v19 = *v14;
  sub_1D8AF7F70(v14, type metadata accessor for DetectionRequest);
  return v15 == v19;
}

BOOL sub_1D8ADABAC()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProcessorState(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for DetectionRequest(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v33 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v33 - v24;
  sub_1D8AF7FF0(v1, v13, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8AF7F08(v13, v4, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v4, v23, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8AF7F08(v13, v23, type metadata accessor for DetectionRequest);
LABEL_6:
  sub_1D8AF7F08(v23, v25, type metadata accessor for DetectionRequest);
  v27 = *v25;
  sub_1D8AF7F70(v25, type metadata accessor for DetectionRequest);
  if (v27 == 1)
  {
    return 0;
  }

  sub_1D8AF7FF0(v1, v11, type metadata accessor for ProcessorState);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1D8AF7F08(v11, v4, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v4, v20, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8AF7F08(v11, v20, type metadata accessor for DetectionRequest);
LABEL_12:
  v29 = *v20;
  sub_1D8AF7F70(v20, type metadata accessor for DetectionRequest);
  if (v29 == 12)
  {
    return 0;
  }

  sub_1D8AF7FF0(v1, v8, type metadata accessor for ProcessorState);
  v31 = swift_getEnumCaseMultiPayload();
  if (!v31)
  {
    goto LABEL_18;
  }

  if (v31 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_18:
    sub_1D8AF7F08(v8, v17, type metadata accessor for DetectionRequest);
    goto LABEL_19;
  }

  sub_1D8AF7F08(v8, v4, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v4, v17, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
LABEL_19:
  v32 = *v17;
  sub_1D8AF7F70(v17, type metadata accessor for DetectionRequest);
  return v32 != 13;
}

void sub_1D8ADB098(void *a2@<X8>)
{

  v4 = sub_1D8AD1338(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
  v5 = sub_1D8B168F0();
  v6 = v4;
  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v11 = v4[8];
  v10 = v4 + 8;
  v12 = v9 & v11;
  v13 = (v8 + 63) >> 6;
  if ((v9 & v11) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v7 << 6);
      v18 = *(v6[6] + v17);
      v19 = *(v6[7] + 8 * v17);
      if (v19 >> 62)
      {
        v24 = v6;
        v20 = sub_1D8B16610();
        v6 = v24;
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v5[6] + v17) = v18;
      *(v5[7] + 8 * v17) = v20;
      v21 = v5[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v5[2] = v23;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {

        *a2 = v5;
        return;
      }

      v16 = v10[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t TrackManager.init(configuration:supporting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D8AF6530(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1D8ADB25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8ADB27C, 0, 0);
}

uint64_t sub_1D8ADB27C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8ADB340, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D8ADB340()
{
  sub_1D8AE3964();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADB3B0, 0, 0);
}

uint64_t sub_1D8ADB3D8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v42 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
  v44 = *(v46 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v37 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C0, &qword_1D8B3ED48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v37 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8, &qword_1D8B3ED50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691D0, &qword_1D8B3ED58);
  swift_allocObject();
  v40 = sub_1D8B14C90();
  *v9 = 1;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8640], v6);
  type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v41 = v15;
  sub_1D8B15EB0();
  (*(v7 + 8))(v9, v6);
  v16 = sub_1D8B15EA0();
  v17 = *(v16 - 8);
  v38 = *(v17 + 56);
  v42 = v17 + 56;
  v38(v5, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v11;
  v20 = *(v11 + 16);
  v21 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v20(v21, v15, v10);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v19 + 32))(v24 + v22, v21, v10);
  *(v24 + v23) = v18;
  v25 = v40;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v26 = v37;
  sub_1D8891CA0(0, 0, v37, &unk_1D8B3ED68, v24);

  v27 = *(v48 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration + 8);
  v38(v26, 1, 1, v16);
  v29 = v43;
  v28 = v44;
  v30 = v46;
  (*(v44 + 16))(v43, v47, v46);
  v31 = v28;
  v32 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v33 = (v45 + v32 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v25;
  (*(v31 + 32))(&v34[v32], v29, v30);
  *&v34[v33] = v27;

  v35 = sub_1D8AD1984(0, 0, v26, &unk_1D8B3ED78, v34);

  sub_1D87A14E4(v26, &unk_1ECA675E0, &qword_1D8B23B60);
  (*(v19 + 8))(v41, v39);
  return v35;
}

uint64_t sub_1D8ADB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  type metadata accessor for DetectionResult(0);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for ProcessorState(0);
  v6[11] = swift_task_alloc();
  type metadata accessor for DetectionRequest(0);
  v6[12] = swift_task_alloc();
  v7 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170, &qword_1D8B3EC68);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69228, &qword_1D8B3EE00);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBB5C, 0, 0);
}

uint64_t sub_1D8ADBB5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8, &qword_1D8B3ED50);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1D8ADBC40;
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D8ADBC40()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBD3C, 0, 0);
}

uint64_t sub_1D8ADBD3C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v3 + 48);
  *(v0 + 216) = v4;
  *(v0 + 224) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_8:

    v7 = *(v0 + 8);

    return v7();
  }

  sub_1D8AF7F08(v1, *(v0 + 144), type metadata accessor for TrackManager.MatchingComputationRequest);
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_7;
  }

  v6 = Strong;
  if (sub_1D8B15F90())
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_7:
    sub_1D8AF7F70(*(v0 + 144), type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_8;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  *(v0 + 272) = *(v11 + 20);
  v13 = v10[3];
  *(v0 + 240) = v13;
  *(v0 + 248) = v10[4];
  *(v0 + 256) = __swift_project_boxed_opaque_existential_1(v10, v13);
  sub_1D8AF7FF0(v10, v9, type metadata accessor for TrackManager.MatchingComputationRequest);
  (*(v12 + 56))(v9, 0, 1, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBFD0, v6, 0);
}

uint64_t sub_1D8ADBFD0()
{
  v1 = *(v0 + 160);
  sub_1D8AEB2F8(*(v0 + 144) + *(v0 + 272), *(v0 + 256), v1, *(v0 + 240), *(v0 + 248), *(v0 + 168));
  sub_1D87A14E4(v1, &qword_1ECA69170, &qword_1D8B3EC68);

  return MEMORY[0x1EEE6DFA0](sub_1D8ADC068, 0, 0);
}

uint64_t sub_1D8ADC068()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[13];
  sub_1D87A0E38(v0[21], v2, &qword_1ECA69170, &qword_1D8B3EC68);
  v4 = v1(v2, 1, v3);
  v5 = v0[19];
  if (v4 == 1)
  {
    sub_1D87A14E4(v5, &qword_1ECA69170, &qword_1D8B3EC68);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1EE0E4350);
    sub_1D8AF7FF0(v6, v7, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D8AF7FF0(v6, v8, type metadata accessor for TrackManager.MatchingComputationRequest);
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B16210();
    if (!os_log_type_enabled(v10, v11))
    {
      v23 = v0[21];
      v25 = v0[15];
      v24 = v0[16];

      sub_1D8AF7F70(v24, type metadata accessor for TrackManager.MatchingComputationRequest);
      sub_1D87A14E4(v23, &qword_1ECA69170, &qword_1D8B3EC68);
      sub_1D8AF7F70(v25, type metadata accessor for TrackManager.MatchingComputationRequest);
LABEL_30:
      sub_1D8AF7F70(v0[18], type metadata accessor for TrackManager.MatchingComputationRequest);
      v40 = swift_task_alloc();
      v0[26] = v40;
      *v40 = v0;
      v40[1] = sub_1D8ADBC40;
      v41 = v0[22];
      v42 = v0[23];

      return MEMORY[0x1EEE6D9C8](v41, 0, 0, v42);
    }

    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[11];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v0[5] = v16;
    *v15 = 136315394;
    sub_1D8AF7FF0(v12 + *(v13 + 20), v14, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[11];
    v19 = v0[12];
    v44 = v16;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[9];
        sub_1D8AF7F08(v18, v20, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v20, v19, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v20, type metadata accessor for DetectionResult);
LABEL_15:
        v27 = v0[12];
        v28 = *v27;
        sub_1D8AF7F70(v27, type metadata accessor for DetectionRequest);
        v29 = 0xE900000000000067;
        v30 = 0x6E69646E756F7267;
        switch(v28)
        {
          case 1:
            v29 = 0xED00006573726150;
            v30 = 0x6465646E756F7267;
            break;
          case 2:
            v29 = 0xE400000000000000;
            v30 = 1635018093;
            break;
          case 3:
            v29 = 0xE600000000000000;
            v30 = 0x7463656A626FLL;
            break;
          case 4:
            v29 = 0xE500000000000000;
            v30 = 0x6573726170;
            break;
          case 5:
            v29 = 0xE400000000000000;
            v30 = 1954047348;
            break;
          case 6:
            v29 = 0xE600000000000000;
            v30 = 0x65646F437271;
            break;
          case 7:
            v29 = 0xE700000000000000;
            v30 = 0x70696C43707061;
            break;
          case 8:
            v29 = 0xED00007478655467;
            v30 = 0x6E696D6165727473;
            break;
          case 9:
            v29 = 0xEF746E65746E6F43;
            v30 = 0x6C61636974726576;
            break;
          case 10:
            v29 = 0xEA00000000006C61;
            v30 = 0x646F6D69746C756DLL;
            break;
          case 11:
            v30 = 0x69746568746E7973;
            v29 = 0xE900000000000063;
            break;
          case 12:
            v30 = 0xD000000000000017;
            v29 = 0x80000001D8B439C0;
            break;
          case 13:
            v29 = 0x80000001D8B439A0;
            v30 = 0xD00000000000001CLL;
            break;
          default:
            break;
        }

        v31 = v0[21];
        v32 = v0[15];
        sub_1D8AF7F70(v0[16], type metadata accessor for TrackManager.MatchingComputationRequest);
        v33 = sub_1D89AC714(v30, v29, v0 + 5);

        *(v15 + 4) = v33;
        *(v15 + 12) = 2080;
        v34 = v32[3];
        v35 = v32[4];
        __swift_project_boxed_opaque_existential_1(v32, v34);
        v36 = CameraSourceFrame.timeDescription.getter(v34, v35);
        v38 = v37;
        sub_1D8AF7F70(v32, type metadata accessor for TrackManager.MatchingComputationRequest);
        v39 = sub_1D89AC714(v36, v38, v0 + 5);

        *(v15 + 14) = v39;
        _os_log_impl(&dword_1D8783000, v10, v11, "Failed to create updated request for %s @ %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v44, -1, -1);
        MEMORY[0x1DA721330](v15, -1, -1);

        sub_1D87A14E4(v31, &qword_1ECA69170, &qword_1D8B3EC68);
        goto LABEL_30;
      }

      v26 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v18 = v26;
    }

    sub_1D8AF7F08(v18, v19, type metadata accessor for DetectionRequest);
    goto LABEL_15;
  }

  sub_1D8AF7F08(v5, v0[17], type metadata accessor for TrackManager.MatchingComputationRequest);
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_1D8ADC76C;
  v22 = v0[17];

  return MEMORY[0x1EEDEE868](v22);
}

uint64_t sub_1D8ADC76C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADC868, 0, 0);
}

uint64_t sub_1D8ADC868()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_1D8AF7F70(v2, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D87A14E4(v1, &qword_1ECA69170, &qword_1D8B3EC68);
  sub_1D8AF7F70(v0[18], type metadata accessor for TrackManager.MatchingComputationRequest);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1D8ADBC40;
  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x1EEE6D9C8](v4, 0, 0, v5);
}

uint64_t sub_1D8ADC968(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 288) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691D8, &qword_1D8B3ED98);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for TrackManager.MatchingComputationResult(0);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for DetectionResult(0);
  *(v6 + 128) = swift_task_alloc();
  type metadata accessor for DetectionRequest(0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for ProcessorState(0);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  v8 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170, &qword_1D8B3EC68);
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADCBFC, 0, 0);
}

uint64_t sub_1D8ADCBFC()
{
  v1 = sub_1D8B14C60();
  *(v0 + 248) = v1;
  *(v0 + 256) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 276) = 0;
  *(v0 + 272) = 0;
  *(v0 + 264) = 3;
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E0, &qword_1D8B3EDA0);
  *v3 = v0;
  v3[1] = sub_1D8ADCCD4;
  v5 = *(v0 + 240);

  return MEMORY[0x1EEDEE870](v5, v4);
}

uint64_t sub_1D8ADCCD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADCDD0, 0, 0);
}

uint64_t sub_1D8ADCDD0()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 192) + 48))(v1, 1, *(v0 + 184)) == 1)
  {
    v2 = *(v0 + 264);

    sub_1D8AFCECC(v2);
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  sub_1D8AF7F08(v1, *(v0 + 232), type metadata accessor for TrackManager.MatchingComputationRequest);
  if (sub_1D8B15F90())
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 232);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    sub_1D8AF7FF0(v4, v6, type metadata accessor for TrackManager.MatchingComputationRequest);
    v11 = (v6 + *(v7 + 20));
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 1;
    sub_1D8AF7FF0(v6, v5, type metadata accessor for TrackManager.MatchingComputationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
    sub_1D8B15EE0();
    sub_1D8AFCECC(v3);
    (*(v9 + 8))(v8, v10);
    sub_1D8AF7F70(v6, type metadata accessor for TrackManager.MatchingComputationResult);

    sub_1D8AF7F70(v4, type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_5;
  }

  v14 = *(v0 + 264);
  sub_1D8AF7FF0(*(v0 + 232) + *(*(v0 + 184) + 20), *(v0 + 176), type metadata accessor for ProcessorState);
  if (v14 == 3)
  {
    v15 = sub_1D8AFA7FC(*(v0 + 176));
    v17 = v16;
  }

  else
  {
    v17 = *(v0 + 272) | (*(v0 + 276) << 32);
    v15 = *(v0 + 264);
  }

  sub_1D8AFCEF0(v15);
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 216);
  v21 = sub_1D8B151E0();
  __swift_project_value_buffer(v21, qword_1EE0E4350);
  sub_1D8AF7FF0(v19, v18, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v19, v20, type metadata accessor for TrackManager.MatchingComputationRequest);
  v22 = sub_1D8B151C0();
  v23 = sub_1D8B16200();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 224);
  if (!v24)
  {
    v34 = *(v0 + 216);

    sub_1D8AF7F70(v25, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D8AF7F70(v34, type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_36;
  }

  v26 = v17;
  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = swift_slowAlloc();
  v107 = swift_slowAlloc();
  *(v0 + 40) = v107;
  *v29 = 136315394;
  sub_1D8AF7FF0(v25 + *(v27 + 20), v28, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *(v0 + 168);
  v32 = *(v0 + 144);
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = *(v0 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

    v31 = v35;
LABEL_20:
    sub_1D8AF7F08(v31, v32, type metadata accessor for DetectionRequest);
    goto LABEL_21;
  }

  v33 = *(v0 + 128);
  sub_1D8AF7F08(v31, v33, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v33, v32, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v33, type metadata accessor for DetectionResult);
LABEL_21:
  v17 = v26;
  v36 = *(v0 + 144);
  v37 = *v36;
  sub_1D8AF7F70(v36, type metadata accessor for DetectionRequest);
  v38 = 0xE900000000000067;
  v39 = 0x6E69646E756F7267;
  switch(v37)
  {
    case 1:
      v38 = 0xED00006573726150;
      v39 = 0x6465646E756F7267;
      break;
    case 2:
      v38 = 0xE400000000000000;
      v39 = 1635018093;
      break;
    case 3:
      v38 = 0xE600000000000000;
      v39 = 0x7463656A626FLL;
      break;
    case 4:
      v38 = 0xE500000000000000;
      v39 = 0x6573726170;
      break;
    case 5:
      v38 = 0xE400000000000000;
      v39 = 1954047348;
      break;
    case 6:
      v38 = 0xE600000000000000;
      v39 = 0x65646F437271;
      break;
    case 7:
      v38 = 0xE700000000000000;
      v39 = 0x70696C43707061;
      break;
    case 8:
      v38 = 0xED00007478655467;
      v39 = 0x6E696D6165727473;
      break;
    case 9:
      v38 = 0xEF746E65746E6F43;
      v39 = 0x6C61636974726576;
      break;
    case 10:
      v38 = 0xEA00000000006C61;
      v39 = 0x646F6D69746C756DLL;
      break;
    case 11:
      v39 = 0x69746568746E7973;
      v38 = 0xE900000000000063;
      break;
    case 12:
      v39 = 0xD000000000000017;
      v38 = 0x80000001D8B439C0;
      break;
    case 13:
      v38 = 0x80000001D8B439A0;
      v39 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v40 = *(v0 + 216);
  sub_1D8AF7F70(*(v0 + 224), type metadata accessor for TrackManager.MatchingComputationRequest);
  v41 = sub_1D89AC714(v39, v38, (v0 + 40));

  *(v29 + 4) = v41;
  *(v29 + 12) = 2080;
  v42 = v40[3];
  v43 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v42);
  v44 = CameraSourceFrame.timeDescription.getter(v42, v43);
  v46 = v45;
  sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationRequest);
  v47 = sub_1D89AC714(v44, v46, (v0 + 40));

  *(v29 + 14) = v47;
  _os_log_impl(&dword_1D8783000, v22, v23, "Starting matching request for %s @ %s...", v29, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA721330](v107, -1, -1);
  MEMORY[0x1DA721330](v29, -1, -1);

LABEL_36:
  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v103 = *(v0 + 200);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v52 = *(v0 + 88);
  v106 = v17;
  v108 = v15;
  v53 = sub_1D8AFAC84(*(v48 + *(*(v0 + 184) + 24)), *(v0 + 176), v15, v17 & 0xFFFFFFFFFFLL, *(v0 + 288));
  v55 = v54;
  v57 = v56;
  sub_1D8AF7FF0(v48, v50, type metadata accessor for TrackManager.MatchingComputationRequest);
  v58 = (v50 + *(v52 + 20));
  *v58 = v53;
  v58[1] = v57;
  v58[2] = v55;
  sub_1D8AF7FF0(v48, v49, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v50, v51, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7FF0(v48, v103, type metadata accessor for TrackManager.MatchingComputationRequest);
  v59 = sub_1D8B151C0();
  v60 = sub_1D8B16200();
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 208);
  if (v61)
  {
    v63 = *(v0 + 184);
    v64 = *(v0 + 160);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *(v0 + 32) = v66;
    *v65 = 136315650;
    sub_1D8AF7FF0(v62 + *(v63 + 20), v64, type metadata accessor for ProcessorState);
    v67 = swift_getEnumCaseMultiPayload();
    v68 = *(v0 + 160);
    v69 = *(v0 + 136);
    v105 = v60;
    v104 = v66;
    if (v67)
    {
      if (v67 == 1)
      {
        v70 = *(v0 + 128);
        sub_1D8AF7F08(v68, v70, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v70, v69, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v70, type metadata accessor for DetectionResult);
LABEL_44:
        v75 = *(v0 + 200);
        v74 = *(v0 + 208);
        v76 = *(v0 + 136);
        v77 = *(v0 + 112);
        v78 = *(v0 + 88);
        v79 = *v76;
        sub_1D8AF7F70(v76, type metadata accessor for DetectionRequest);
        *(v0 + 292) = v79;
        v80 = CVDetection.DetectionType.description.getter();
        v82 = v81;
        sub_1D8AF7F70(v74, type metadata accessor for TrackManager.MatchingComputationRequest);
        v83 = sub_1D89AC714(v80, v82, (v0 + 32));

        *(v65 + 4) = v83;
        *(v65 + 12) = 2080;
        v84 = sub_1D8AD481C(*(v77 + *(v78 + 20)));
        v86 = v85;
        sub_1D8AF7F70(v77, type metadata accessor for TrackManager.MatchingComputationResult);
        v87 = sub_1D89AC714(v84, v86, (v0 + 32));

        *(v65 + 14) = v87;
        *(v65 + 22) = 2080;
        v89 = v75[3];
        v88 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v89);
        v90 = CameraSourceFrame.timeDescription.getter(v89, v88);
        v92 = v91;
        sub_1D8AF7F70(v75, type metadata accessor for TrackManager.MatchingComputationRequest);
        v93 = sub_1D89AC714(v90, v92, (v0 + 32));

        *(v65 + 24) = v93;
        _os_log_impl(&dword_1D8783000, v59, v105, "Finished matching request for %s %s @ %s", v65, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v104, -1, -1);
        MEMORY[0x1DA721330](v65, -1, -1);

        goto LABEL_45;
      }

      v73 = *(v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v68 = v73;
    }

    sub_1D8AF7F08(v68, v69, type metadata accessor for DetectionRequest);
    goto LABEL_44;
  }

  v71 = *(v0 + 200);
  v72 = *(v0 + 112);

  sub_1D8AF7F70(v72, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7F70(v62, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7F70(v71, type metadata accessor for TrackManager.MatchingComputationRequest);
LABEL_45:
  v94 = *(v0 + 232);
  v95 = *(v0 + 176);
  v96 = *(v0 + 120);
  v98 = *(v0 + 72);
  v97 = *(v0 + 80);
  v99 = *(v0 + 64);
  sub_1D8AF7FF0(v96, *(v0 + 104), type metadata accessor for TrackManager.MatchingComputationResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
  sub_1D8B15EE0();
  sub_1D8AFCECC(v108);
  (*(v98 + 8))(v97, v99);
  sub_1D8AF7F70(v96, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7F70(v95, type metadata accessor for ProcessorState);
  sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationRequest);
  *(v0 + 276) = BYTE4(v106);
  *(v0 + 272) = v106;
  *(v0 + 264) = v108;
  v100 = swift_task_alloc();
  *(v0 + 280) = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E0, &qword_1D8B3EDA0);
  *v100 = v0;
  v100[1] = sub_1D8ADCCD4;
  v102 = *(v0 + 240);

  return MEMORY[0x1EEDEE870](v102, v101);
}

uint64_t sub_1D8ADDB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v354 = a5;
  v347 = a3;
  v358 = a2;
  v316 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  MEMORY[0x1EEE9AC00](v316);
  v317 = (&v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0, &qword_1D8B2D2E0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v341 = &v295 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v304 = &v295 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v302 = &v295 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v318 = &v295 - v16;
  v355 = a4;
  v340 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v315 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v329 = &v295 - v19;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691B8, &qword_1D8B3ED38);
  v343 = *(v353 - 8);
  v20 = MEMORY[0x1EEE9AC00](v353);
  v339 = &v295 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v348 = &v295 - v22;
  v344 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v337 = *(v344 - 8);
  v23 = MEMORY[0x1EEE9AC00](v344);
  v314 = (&v295 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v313 = &v295 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v327 = (&v295 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v338 = &v295 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v351 = &v295 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170, &qword_1D8B3EC68);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v336 = &v295 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v335 = &v295 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v350 = &v295 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF8, &qword_1D8B3ED40);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v325 = (&v295 - v39);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
  v326 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v345 = &v295 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v333 = *(v41 - 8);
  v334 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v312 = &v295 - v42;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128, &qword_1D8B3E5E0);
  v349 = *(v360 - 8);
  v43 = MEMORY[0x1EEE9AC00](v360);
  v324 = &v295 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v359 = &v295 - v45;
  v46 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v330 = &v295 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DetectionRequest(0);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v300 = &v295 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v299 = &v295 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v309 = &v295 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v310 = &v295 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v311 = &v295 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v332 = &v295 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v295 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v331 = &v295 - v64;
  v65 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v319 = *(v65 - 8);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v298 = &v295 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v296 = &v295 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v307 = &v295 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v73 = (&v295 - v72);
  v342 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v303 = *(v342 - 8);
  v74 = MEMORY[0x1EEE9AC00](v342);
  v323 = &v295 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v322 = &v295 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v320 = (&v295 - v79);
  MEMORY[0x1EEE9AC00](v78);
  v352 = (&v295 - v80);
  v81 = type metadata accessor for ProcessorState(0);
  v82 = MEMORY[0x1EEE9AC00](v81);
  v301 = &v295 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v308 = &v295 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v297 = &v295 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v306 = &v295 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v305 = &v295 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v328 = &v295 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v96 = &v295 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v295 - v98;
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v295 - v100;
  v102 = a1;
  sub_1D8AF7FF0(a1, &v295 - v100, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8AF7F70(v101, type metadata accessor for ProcessorState);
    goto LABEL_93;
  }

  sub_1D8AF7F70(v101, type metadata accessor for ProcessorState);
  v103 = *(v65 + 20);
  v357 = v102;
  sub_1D8AF7FF0(v102, v73 + v103, type metadata accessor for ProcessorState);
  (*(v354 + 40))(v369, v355);
  v104 = v369[4];
  v73[3] = v369[3];
  v73[4] = v104;
  v105 = v369[2];
  v73[1] = v369[1];
  v73[2] = v105;
  *v73 = v369[0];
  v321 = v65;
  *(v73 + *(v65 + 24)) = 0;
  v106 = v73[4];
  v373 = v73[3];
  v374 = v106;
  v107 = v73[2];
  v371 = v73[1];
  v372 = v107;
  v370 = *v73;
  sub_1D8AF7F08(v73 + v103, v99, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v110 = v331;
    v109 = v332;
    if (EnumCaseMultiPayload == 1)
    {
      v111 = v330;
      sub_1D8AF7F08(v99, v330, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v111, v63, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v111, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      sub_1D8AF7F08(v99, v63, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    sub_1D8AF7F08(v99, v63, type metadata accessor for DetectionRequest);
    v110 = v331;
    v109 = v332;
  }

  sub_1D8AF7F08(v63, v110, type metadata accessor for DetectionRequest);
  v112 = v373;
  v113 = v352;
  v352[2] = v372;
  v113[3] = v112;
  v113[4] = v374;
  v114 = v371;
  *v113 = v370;
  v113[1] = v114;
  sub_1D8AF7F08(v110, v113 + *(v342 + 20), type metadata accessor for DetectionRequest);
  sub_1D8AF7FF0(v357, v96, type metadata accessor for ProcessorState);
  v115 = swift_getEnumCaseMultiPayload();
  if (v115)
  {
    v116 = v360;
    v117 = v356;
    if (v115 == 1)
    {
      v118 = v330;
      sub_1D8AF7F08(v96, v330, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v118, v109, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v118, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      sub_1D8AF7F08(v96, v109, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    sub_1D8AF7F08(v96, v109, type metadata accessor for DetectionRequest);
    v116 = v360;
    v117 = v356;
  }

  v332 = v81;
  v119 = *v109;
  sub_1D8AF7F70(v109, type metadata accessor for DetectionRequest);
  v120 = *v347;
  if (*(*v347 + 16) && (v121 = sub_1D881F7DC(), (v122 & 1) != 0))
  {
    v123 = *(v120 + 56) + *(v333 + 72) * v121;
    v124 = v312;
    sub_1D87A0E38(v123, v312, &qword_1ECA65B98, &qword_1D8B2BF20);

    (*(v349 + 32))(v359, v124 + *(v334 + 48), v116);
    v125 = v343;
  }

  else
  {
    v126 = v326;
    v127 = v345;
    (*(v326 + 16))(v345, v117 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation, v346);
    v128 = v324;
    v129 = sub_1D8ADB3D8(v324, v127);
    v130 = v349;
    LODWORD(v331) = v119;
    v131 = *(v349 + 16);
    v131(v359, v128, v116);
    v132 = v334;
    v133 = *(v334 + 48);
    v134 = v325;
    *v325 = v129;
    v131((v134 + v133), v128, v116);
    (*(v333 + 56))(v134, 0, 1, v132);
    sub_1D895F624(v134, v331);
    (*(v130 + 8))(v128, v116);
    (*(v126 + 8))(v345, v346);
    v125 = v343;
  }

  v135 = v337;
  v136 = v335;
  v137 = v344;
  (*(v337 + 56))(v335, 1, 1, v344);
  v138 = v350;
  v139 = v355;
  sub_1D8AEB2F8(v357, v358, v136, v355, v354, v350);
  sub_1D87A14E4(v136, &qword_1ECA69170, &qword_1D8B3EC68);
  v140 = v138;
  v141 = v336;
  sub_1D87A0E38(v140, v336, &qword_1ECA69170, &qword_1D8B3EC68);
  if ((*(v135 + 48))(v141, 1, v137) == 1)
  {
    sub_1D87A14E4(v141, &qword_1ECA69170, &qword_1D8B3EC68);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v291 = sub_1D8B151E0();
    __swift_project_value_buffer(v291, qword_1EE0E4350);
    v292 = sub_1D8B151C0();
    v293 = sub_1D8B16210();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&dword_1D8783000, v292, v293, "Failed to create request?", v294, 2u);
      MEMORY[0x1DA721330](v294, -1, -1);
    }

    goto LABEL_93;
  }

  v142 = v351;
  sub_1D8AF7F08(v141, v351, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v142, v338, type metadata accessor for TrackManager.MatchingComputationRequest);
  v143 = v348;
  sub_1D8B15EE0();
  v144 = v125;
  v145 = v339;
  v146 = v353;
  (*(v125 + 16))(v339, v143, v353);
  v147 = (*(v125 + 88))(v145, v146);
  v148 = v341;
  if (v147 == *MEMORY[0x1E69E8630])
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v149 = sub_1D8B151E0();
    __swift_project_value_buffer(v149, qword_1EE0E4350);
    v150 = v328;
    sub_1D8AF7FF0(v357, v328, type metadata accessor for ProcessorState);
    v151 = v340;
    v152 = v329;
    (*(v340 + 16))(v329, v358, v139);
    v153 = sub_1D8B151C0();
    v154 = sub_1D8B16200();
    if (!os_log_type_enabled(v153, v154))
    {

      (*(v151 + 8))(v152, v139);
      sub_1D8AF7F70(v150, type metadata accessor for ProcessorState);
      (*(v144 + 8))(v143, v353);
LABEL_40:
      sub_1D8AF7F70(v351, type metadata accessor for TrackManager.MatchingComputationRequest);
      sub_1D87A14E4(v350, &qword_1ECA69170, &qword_1D8B3EC68);
      (*(v349 + 8))(v359, v360);
      v205 = type metadata accessor for TrackManager.TrackedProcessorState.Key;
      v206 = v352;
      return sub_1D8AF7F70(v206, v205);
    }

    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v364 = v156;
    *v155 = 136315394;
    v157 = v305;
    sub_1D8AF7FF0(v150, v305, type metadata accessor for ProcessorState);
    v158 = swift_getEnumCaseMultiPayload();
    v159 = v144;
    if (v158)
    {
      if (v158 == 1)
      {
        v160 = v157;
        v161 = v330;
        sub_1D8AF7F08(v160, v330, type metadata accessor for DetectionResult);
        v162 = v311;
        sub_1D8AF7FF0(v161, v311, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v161, type metadata accessor for DetectionResult);
LABEL_39:
        v194 = *v162;
        sub_1D8AF7F70(v162, type metadata accessor for DetectionRequest);
        LOBYTE(v363[0]) = v194;
        v195 = CVDetection.DetectionType.description.getter();
        v197 = v196;
        sub_1D8AF7F70(v328, type metadata accessor for ProcessorState);
        v198 = sub_1D89AC714(v195, v197, &v364);

        *(v155 + 4) = v198;
        *(v155 + 12) = 2080;
        v199 = v355;
        v200 = v329;
        v201 = CameraSourceFrame.timeDescription.getter(v355, v354);
        v203 = v202;
        (*(v340 + 8))(v200, v199);
        v204 = sub_1D89AC714(v201, v203, &v364);

        *(v155 + 14) = v204;
        _os_log_impl(&dword_1D8783000, v153, v154, "Enqueued request for %s @ %s", v155, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v156, -1, -1);
        MEMORY[0x1DA721330](v155, -1, -1);

        (*(v159 + 8))(v348, v353);
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
    }

    v162 = v311;
    sub_1D8AF7F08(v157, v311, type metadata accessor for DetectionRequest);
    goto LABEL_39;
  }

  if (v147 == *MEMORY[0x1E69E8628])
  {
    (*(v125 + 96))(v145, v353);
    v163 = v327;
    sub_1D8AF7F08(v145, v327, type metadata accessor for TrackManager.MatchingComputationRequest);
    v139 = v321;
    v164 = *(v321 + 20);
    v165 = v307;
    sub_1D8AF7FF0(v163 + *(v344 + 20), &v307[v164], type metadata accessor for ProcessorState);
    v166 = v163[3];
    v167 = v163[4];
    __swift_project_boxed_opaque_existential_1(v163, v166);
    (*(v167 + 40))(v363, v166, v167);
    v168 = v363[4];
    v165[3] = v363[3];
    v165[4] = v168;
    v169 = v363[2];
    v165[1] = v363[1];
    v165[2] = v169;
    *v165 = v363[0];
    *(v165 + *(v139 + 24)) = 0;
    v170 = v165[4];
    v367 = v165[3];
    v368 = v170;
    v171 = v165[2];
    v365 = v165[1];
    v366 = v171;
    v364 = *v165;
    v172 = v306;
    sub_1D8AF7F08(v165 + v164, v306, type metadata accessor for ProcessorState);
    v173 = swift_getEnumCaseMultiPayload();
    v174 = v356;
    if (v173)
    {
      v175 = v309;
      v176 = v310;
      if (v173 == 1)
      {
        v177 = v172;
        v178 = v330;
        sub_1D8AF7F08(v177, v330, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v178, v175, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v178, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        sub_1D8AF7F08(v172, v175, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v175 = v309;
      sub_1D8AF7F08(v172, v309, type metadata accessor for DetectionRequest);
      v176 = v310;
    }

    sub_1D8AF7F08(v175, v176, type metadata accessor for DetectionRequest);
    v207 = v367;
    v208 = v320;
    v320[2] = v366;
    v208[3] = v207;
    v208[4] = v368;
    v209 = v365;
    *v208 = v364;
    v208[1] = v209;
    sub_1D8AF7F08(v176, v208 + *(v342 + 20), type metadata accessor for DetectionRequest);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v211 = v208;
    v212 = v322;
    sub_1D8AF7FF0(v211, v322, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v361 = *(v174 + 200);
    v213 = v361;
    *(v174 + 200) = 0x8000000000000000;
    v179 = sub_1D87F02B0(v212);
    v215 = *(v213 + 16);
    v216 = (v214 & 1) == 0;
    v217 = v215 + v216;
    if (!__OFADD__(v215, v216))
    {
      v218 = v214;
      if (*(v213 + 24) >= v217)
      {
        goto LABEL_47;
      }

      sub_1D897724C(v217, isUniquelyReferenced_nonNull_native);
      v219 = sub_1D87F02B0(v322);
      if ((v218 & 1) == (v220 & 1))
      {
        v179 = v219;
        for (isUniquelyReferenced_nonNull_native = v319; (v218 & 1) == 0; isUniquelyReferenced_nonNull_native = v319)
        {
          while (1)
          {
            v221 = *(isUniquelyReferenced_nonNull_native + 56);
            LOBYTE(isUniquelyReferenced_nonNull_native) = isUniquelyReferenced_nonNull_native + 56;
            v221(v318, 1, 1, v139);
            __break(1u);
LABEL_47:
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              break;
            }

            isUniquelyReferenced_nonNull_native = v319;
            if (v218)
            {
              goto LABEL_49;
            }
          }

          sub_1D896C62C();
        }

LABEL_49:
        v222 = v361;
        v223 = *(isUniquelyReferenced_nonNull_native + 72) * v179;
        v224 = v318;
        sub_1D8AF7F08(*(v361 + 56) + v223, v318, type metadata accessor for TrackManager.TrackedProcessorState);
        (*(isUniquelyReferenced_nonNull_native + 56))(v224, 0, 1, v139);
        *(v224 + *(v139 + 24)) = 6;
        v225 = v224;
        v226 = v302;
        sub_1D87A0E38(v225, v302, &qword_1ECA65EF0, &qword_1D8B2D2E0);
        if ((*(isUniquelyReferenced_nonNull_native + 48))(v226, 1, v139) == 1)
        {
          sub_1D87A14E4(v226, &qword_1ECA65EF0, &qword_1D8B2D2E0);
          sub_1D8AF7F70(*(v222 + 48) + *(v303 + 72) * v179, type metadata accessor for TrackManager.TrackedProcessorState.Key);
          sub_1D8AF3434(v179, v222);
        }

        else
        {
          v227 = v296;
          sub_1D8AF7F08(v226, v296, type metadata accessor for TrackManager.TrackedProcessorState);
          sub_1D8AF7F08(v227, *(v222 + 56) + v223, type metadata accessor for TrackManager.TrackedProcessorState);
        }

        v143 = v348;
        sub_1D8AF7F70(v322, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        sub_1D87A14E4(v318, &qword_1ECA65EF0, &qword_1D8B2D2E0);
        *(v174 + 200) = v222;
        swift_endAccess();
        if (qword_1EE0E4348 == -1)
        {
LABEL_53:
          v228 = sub_1D8B151E0();
          __swift_project_value_buffer(v228, qword_1EE0E4350);
          v229 = v327;
          v230 = v313;
          sub_1D8AF7FF0(v327, v313, type metadata accessor for TrackManager.MatchingComputationRequest);
          v231 = v229;
          v232 = v314;
          sub_1D8AF7FF0(v231, v314, type metadata accessor for TrackManager.MatchingComputationRequest);
          v233 = sub_1D8B151C0();
          v234 = sub_1D8B16210();
          if (!os_log_type_enabled(v233, v234))
          {

            sub_1D8AF7F70(v230, type metadata accessor for TrackManager.MatchingComputationRequest);
            sub_1D8AF7F70(v232, type metadata accessor for TrackManager.MatchingComputationRequest);
            v242 = v360;
LABEL_76:
            v287 = v327;
            v288 = v317;
            sub_1D8AF7FF0(v327, v317, type metadata accessor for TrackManager.MatchingComputationRequest);
            v289 = (v288 + *(v316 + 20));
            *v289 = 0;
            v289[1] = 0;
            v289[2] = 0;
            sub_1D8AD49E8(v288);
            sub_1D8AF7F70(v288, type metadata accessor for TrackManager.MatchingComputationResult);
            sub_1D8AF7F70(v320, type metadata accessor for TrackManager.TrackedProcessorState.Key);
            (*(v144 + 8))(v143, v353);
            v270 = type metadata accessor for TrackManager.MatchingComputationRequest;
            sub_1D8AF7F70(v351, type metadata accessor for TrackManager.MatchingComputationRequest);
            sub_1D87A14E4(v350, &qword_1ECA69170, &qword_1D8B3EC68);
            (*(v349 + 8))(v359, v242);
            sub_1D8AF7F70(v352, type metadata accessor for TrackManager.TrackedProcessorState.Key);
            v206 = v287;
LABEL_77:
            v205 = v270;
            return sub_1D8AF7F70(v206, v205);
          }

          v235 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v362[0] = v236;
          *v235 = 136315394;
          v237 = v297;
          sub_1D8AF7FF0(v230 + *(v344 + 20), v297, type metadata accessor for ProcessorState);
          v238 = swift_getEnumCaseMultiPayload();
          if (v238)
          {
            v239 = v299;
            if (v238 == 1)
            {
              v240 = v237;
              v241 = v330;
              sub_1D8AF7F08(v240, v330, type metadata accessor for DetectionResult);
              sub_1D8AF7FF0(v241, v239, type metadata accessor for DetectionRequest);
              sub_1D8AF7F70(v241, type metadata accessor for DetectionResult);
LABEL_75:
              v275 = *v239;
              sub_1D8AF7F70(v239, type metadata accessor for DetectionRequest);
              LOBYTE(v361) = v275;
              v276 = CVDetection.DetectionType.description.getter();
              v278 = v277;
              sub_1D8AF7F70(v313, type metadata accessor for TrackManager.MatchingComputationRequest);
              v279 = sub_1D89AC714(v276, v278, v362);

              *(v235 + 4) = v279;
              *(v235 + 12) = 2080;
              v280 = v314;
              v281 = v314[3];
              v282 = v314[4];
              __swift_project_boxed_opaque_existential_1(v314, v281);
              v283 = CameraSourceFrame.timeDescription.getter(v281, v282);
              v285 = v284;
              sub_1D8AF7F70(v280, type metadata accessor for TrackManager.MatchingComputationRequest);
              v286 = sub_1D89AC714(v283, v285, v362);

              *(v235 + 14) = v286;
              _os_log_impl(&dword_1D8783000, v233, v234, "Dropping request for %s @ %s", v235, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v236, -1, -1);
              MEMORY[0x1DA721330](v235, -1, -1);

              v144 = v343;
              v242 = v360;
              goto LABEL_76;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

            v274 = v237;
          }

          else
          {
            v274 = v237;
            v239 = v299;
          }

          sub_1D8AF7F08(v274, v239, type metadata accessor for DetectionRequest);
          goto LABEL_75;
        }

LABEL_82:
        swift_once();
        goto LABEL_53;
      }

      goto LABEL_95;
    }

    __break(1u);
    goto LABEL_80;
  }

  v179 = v358;
  v174 = v356;
  if (v147 != *MEMORY[0x1E69E8620])
  {
    while (1)
    {
      *&v364 = 0;
      *(&v364 + 1) = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000019, 0x80000001D8B49130);
      sub_1D8B168A0();
LABEL_93:
      sub_1D8B168C0();
      __break(1u);
    }
  }

  v144 = v315;
  if (qword_1EE0E4348 != -1)
  {
LABEL_80:
    swift_once();
  }

  v180 = sub_1D8B151E0();
  __swift_project_value_buffer(v180, qword_1EE0E4350);
  v181 = v308;
  sub_1D8AF7FF0(v357, v308, type metadata accessor for ProcessorState);
  v182 = v340;
  (*(v340 + 16))(v144, v179, v139);
  v183 = sub_1D8B151C0();
  v184 = v139;
  v185 = sub_1D8B16230();
  if (os_log_type_enabled(v183, v185))
  {
    v186 = v185;
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v364 = v188;
    *v187 = 136315394;
    v189 = v301;
    sub_1D8AF7FF0(v181, v301, type metadata accessor for ProcessorState);
    v190 = swift_getEnumCaseMultiPayload();
    if (v190)
    {
      if (v190 == 1)
      {
        v191 = v189;
        v192 = v330;
        sub_1D8AF7F08(v191, v330, type metadata accessor for DetectionResult);
        v193 = v300;
        sub_1D8AF7FF0(v192, v300, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v192, type metadata accessor for DetectionResult);
LABEL_60:
        v243 = *v193;
        sub_1D8AF7F70(v193, type metadata accessor for DetectionRequest);
        LOBYTE(v363[0]) = v243;
        v244 = CVDetection.DetectionType.description.getter();
        v246 = v245;
        sub_1D8AF7F70(v181, type metadata accessor for ProcessorState);
        v247 = sub_1D89AC714(v244, v246, &v364);

        *(v187 + 4) = v247;
        *(v187 + 12) = 2080;
        v143 = v355;
        v248 = v315;
        v249 = CameraSourceFrame.timeDescription.getter(v355, v354);
        v144 = v250;
        (*(v340 + 8))(v248, v143);
        v251 = sub_1D89AC714(v249, v144, &v364);

        *(v187 + 14) = v251;
        _os_log_impl(&dword_1D8783000, v183, v186, "Terminated request for %s @ %s", v187, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v188, -1, -1);
        MEMORY[0x1DA721330](v187, -1, -1);

        v174 = v356;
        v148 = v341;
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
    }

    v193 = v300;
    sub_1D8AF7F08(v189, v300, type metadata accessor for DetectionRequest);
    goto LABEL_60;
  }

  (*(v182 + 8))(v144, v184);
  sub_1D8AF7F70(v181, type metadata accessor for ProcessorState);
LABEL_61:
  swift_beginAccess();
  i = swift_isUniquelyReferenced_nonNull_native();
  v253 = v323;
  sub_1D8AF7FF0(v352, v323, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  *&v363[0] = *(v174 + 200);
  v254 = *&v363[0];
  *(v174 + 200) = 0x8000000000000000;
  v256 = sub_1D87F02B0(v253);
  v257 = *(v254 + 16);
  v258 = (v255 & 1) == 0;
  v259 = v257 + v258;
  if (__OFADD__(v257, v258))
  {
    __break(1u);
    goto LABEL_82;
  }

  v260 = v255;
  if (*(v254 + 24) >= v259)
  {
    goto LABEL_66;
  }

  sub_1D897724C(v259, i);
  v261 = sub_1D87F02B0(v323);
  if ((v260 & 1) == (v262 & 1))
  {
    v256 = v261;
    for (i = v304; (v260 & 1) == 0; i = v304)
    {
      while (1)
      {
        (*(v319 + 56))(i, 1, 1, v321);
        __break(1u);
LABEL_66:
        if ((i & 1) == 0)
        {
          break;
        }

        i = v304;
        if (v260)
        {
          goto LABEL_68;
        }
      }

      sub_1D896C62C();
    }

LABEL_68:
    v263 = *&v363[0];
    v264 = v319;
    v265 = *(v319 + 72) * v256;
    sub_1D8AF7F08(*(*&v363[0] + 56) + v265, i, type metadata accessor for TrackManager.TrackedProcessorState);
    v266 = v321;
    (*(v264 + 56))(i, 0, 1, v321);
    *(i + *(v266 + 24)) = 7;
    sub_1D87A0E38(i, v148, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    if ((*(v264 + 48))(v148, 1, v266) == 1)
    {
      sub_1D87A14E4(v148, &qword_1ECA65EF0, &qword_1D8B2D2E0);
      sub_1D8AF7F70(*(v263 + 48) + *(v303 + 72) * v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v256, v263);
    }

    else
    {
      v267 = v298;
      sub_1D8AF7F08(v148, v298, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v267, *(v263 + 56) + v265, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    v268 = v348;
    v269 = v343;
    v270 = type metadata accessor for TrackManager.TrackedProcessorState.Key;
    sub_1D8AF7F70(v323, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(i, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    *(v174 + 200) = v263;
    swift_endAccess();
    v271 = v351;
    v272 = v317;
    sub_1D8AF7FF0(v351, v317, type metadata accessor for TrackManager.MatchingComputationRequest);
    v273 = (v272 + *(v316 + 20));
    v273[1] = 0;
    v273[2] = 0;
    *v273 = 1;
    sub_1D8AD49E8(v272);
    sub_1D8AF7F70(v272, type metadata accessor for TrackManager.MatchingComputationResult);
    (*(v269 + 8))(v268, v353);
    sub_1D8AF7F70(v271, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D87A14E4(v350, &qword_1ECA69170, &qword_1D8B3EC68);
    (*(v349 + 8))(v359, v360);
    v206 = v352;
    goto LABEL_77;
  }

LABEL_95:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AE030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v279 = a2;
  v280 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0, &qword_1D8B2D2E0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v234 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v246 = &v234 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v254 = &v234 - v15;
  v16 = type metadata accessor for DetectionRequest(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v265 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v268 = &v234 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v251 = &v234 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v253 = &v234 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v250 = &v234 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v252 = &v234 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v274 = &v234 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v272 = &v234 - v31;
  v277 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v244 = *(v277 - 8);
  v32 = MEMORY[0x1EEE9AC00](v277);
  v267 = &v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v256 = &v234 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v255 = (&v234 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v249 = &v234 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v273 = &v234 - v40;
  v281 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v276 = *(v281 - 8);
  v41 = MEMORY[0x1EEE9AC00](v281);
  v243 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v257 = &v234 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v263 = &v234 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = (&v234 - v47);
  v259 = type metadata accessor for AFMResult(0);
  v49 = MEMORY[0x1EEE9AC00](v259);
  v258 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = a3;
  v261 = *(a3 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v260 = &v234 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v284 = &v234 - v53;
  v54 = type metadata accessor for ProcessorState(0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v266 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v248 = &v234 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v247 = &v234 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v271 = &v234 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v270 = &v234 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v234 - v65;
  v67 = type metadata accessor for DetectionResult(0);
  v68 = MEMORY[0x1EEE9AC00](v67);
  v262 = &v234 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v264 = &v234 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v74 = &v234 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v234 - v75;
  v275 = a1;
  sub_1D8AF7FF0(a1, v66, type metadata accessor for ProcessorState);
  v283 = v54;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v245 = v12;
  v269 = v9;
  if (EnumCaseMultiPayload != 1)
  {
    v82 = type metadata accessor for ProcessorState;
    v83 = v66;
    goto LABEL_5;
  }

  v78 = sub_1D8AF7F08(v66, v76, type metadata accessor for DetectionResult);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v279;
  v80 = v280;
  *(&v234 - 4) = v282;
  *(&v234 - 3) = v80;
  *(&v234 - 2) = v79;
  if (sub_1D8AD0880(sub_1D8AFCB20, (&v234 - 6), v81))
  {
    v82 = type metadata accessor for DetectionResult;
    v83 = v76;
LABEL_5:
    sub_1D8AF7F70(v83, v82);
    v84 = v278;
    v85 = v275;
    goto LABEL_6;
  }

  v239 = 0;
  v241 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v242 = v48;
  sub_1D8AF7FF0(v76, v74, type metadata accessor for DetectionResult);
  v130 = v261;
  v131 = *(v261 + 16);
  v132 = v279;
  v133 = v282;
  v131(v284, v279, v282);
  sub_1D8AF7FF0(v76, v264, type metadata accessor for DetectionResult);
  v240 = v76;
  v134 = v260;
  v131(v260, v132, v133);
  v135 = sub_1D8B151C0();
  v136 = sub_1D8B16220();
  if (os_log_type_enabled(v135, v136))
  {
    v237 = v136;
    v241 = v135;
    v137 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *&v291[0] = v236;
    *v137 = 136315650;
    LOBYTE(v292) = *v74;
    v138 = CVDetection.DetectionType.description.getter();
    v140 = v139;
    sub_1D8AF7F70(v74, type metadata accessor for DetectionResult);
    v141 = sub_1D89AC714(v138, v140, v291);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2048;
    v142 = v282;
    v143 = v284;
    v144 = CameraSourceFrame.timestamp.getter(v282, v280);
    v145 = *(v130 + 8);
    v261 = v130 + 8;
    v235 = v145;
    v146 = (v145)(v143, v142);
    *(v137 + 14) = v144;
    v238 = v137;
    *(v137 + 22) = 2080;
    v147 = *(v264 + *(v67 + 20));
    v148 = *(v147 + 16);
    v149 = MEMORY[0x1E69E7CC0];
    v48 = v242;
    if (v148)
    {
      *&v286 = MEMORY[0x1E69E7CC0];
      sub_1D87F4140(0, v148, 0);
      v150 = (v147 + 32);
      v149 = v286;
      do
      {
        v151 = *v150 >> 60;
        v284 = (v150 + 1);
        switch(v151)
        {
          case 1:
            v166 = type metadata accessor for GroundedParseDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v166;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_43;
          case 2:
            v161 = type metadata accessor for MetaDetectionResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v161;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for MetaDetectionResult;
            goto LABEL_43;
          case 3:
          case 8:
            v152 = type metadata accessor for ObjectDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v152;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_43;
          case 4:
            v167 = type metadata accessor for ParseDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v167;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for ParseDetectorResult;
            goto LABEL_43;
          case 5:
            v168 = type metadata accessor for TextDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v168;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for TextDetectorResult;
            goto LABEL_43;
          case 6:
          case 7:
            v156 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v156;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_43;
          case 9:
          case 10:
            v157 = swift_projectBox();
            v158 = v258;
            sub_1D8AF7FF0(v157, v258, type metadata accessor for AFMResult);
            *(&v293 + 1) = v259;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v159 = __swift_allocate_boxed_opaque_existential_1(&v292);
            sub_1D8AF7F08(v158, v159, type metadata accessor for AFMResult);
            break;
          case 11:
            v160 = type metadata accessor for SyntheticDetectionResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v160;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_43;
          case 12:
            v162 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v162;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_43;
          case 13:
            v169 = type metadata accessor for GroundedParseClassificationsResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v169;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_43:
            sub_1D8AF7FF0(v153, boxed_opaque_existential_1, v155);
            break;
          default:
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v164 = swift_projectBox();
            *(&v293 + 1) = v163;
            *&v294 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
            v165 = __swift_allocate_boxed_opaque_existential_1(&v292);
            sub_1D87A0E38(v164, v165, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v171 = *(&v293 + 1);
        v170 = v294;
        __swift_project_boxed_opaque_existential_1(&v292, *(&v293 + 1));
        v172 = *(v170 + 88);

        v173 = v172(v171, v170);
        __swift_destroy_boxed_opaque_existential_1(&v292);

        *&v286 = v149;
        v175 = *(v149 + 16);
        v174 = *(v149 + 24);
        if (v175 >= v174 >> 1)
        {
          v146 = sub_1D87F4140((v174 > 1), v175 + 1, 1);
          v149 = v286;
        }

        *(v149 + 16) = v175 + 1;
        *(v149 + 8 * v175 + 32) = v173;
        --v148;
        v150 = v284;
      }

      while (v148);
    }

    MEMORY[0x1EEE9AC00](v146);
    v109 = v282;
    v187 = v280;
    *(&v234 - 4) = v282;
    *(&v234 - 3) = v187;
    *(&v234 - 2) = v188;
    v189 = sub_1D87C72D4(sub_1D8AFCB44, (&v234 - 6), v149);
    v190 = sub_1D87C57C0(v189);

    v191 = *(v190 + 16);
    if (v191)
    {
      v192 = sub_1D87F38D4(*(v190 + 16), 0);
      v193 = sub_1D8818A80(&v292, v192 + 4, v191, v190);
      sub_1D87977A0(v292);
      v84 = v278;
      v85 = v275;
      v91 = v261;
      if (v193 != v191)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {

      v192 = MEMORY[0x1E69E7CC0];
      v84 = v278;
      v85 = v275;
    }

    sub_1D8AF7F70(v264, type metadata accessor for DetectionResult);
    v235(v260, v109);
    v203 = MEMORY[0x1DA71F1E0](v192, MEMORY[0x1E69E63B0]);
    v205 = v204;

    v206 = sub_1D89AC714(v203, v205, v291);

    v207 = v238;
    *(v238 + 24) = v206;
    v208 = v241;
    _os_log_impl(&dword_1D8783000, v241, v237, "ProcessorState results.timestamps for %s do not match frame; expecting %f but got %s", v207, 0x20u);
    v209 = v236;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v209, -1, -1);
    MEMORY[0x1DA721330](v207, -1, -1);

    sub_1D8AF7F70(v240, type metadata accessor for DetectionResult);
  }

  else
  {
    sub_1D8AF7F70(v264, type metadata accessor for DetectionResult);
    v184 = *(v130 + 8);
    v185 = v134;
    v186 = v282;
    v184(v185, v282);

    v184(v284, v186);
    sub_1D8AF7F70(v74, type metadata accessor for DetectionResult);
    sub_1D8AF7F70(v240, type metadata accessor for DetectionResult);
    v84 = v278;
    v85 = v275;
    v48 = v242;
  }

LABEL_6:
  v86 = v270;
  sub_1D8AF7FF0(v85, v270, type metadata accessor for ProcessorState);
  v87 = swift_getEnumCaseMultiPayload();
  v88 = type metadata accessor for ProcessorState;
  if (v87)
  {
    if (v87 == 1)
    {
      v89 = 3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v89 = 2;
      v88 = type metadata accessor for DetectionRequest;
    }
  }

  else
  {
    v89 = 1;
    v88 = type metadata accessor for ProcessorState;
  }

  sub_1D8AF7F70(v86, v88);
  v90 = v281;
  v91 = *(v281 + 20);
  sub_1D8AF7FF0(v85, v48 + v91, type metadata accessor for ProcessorState);
  (*(v280 + 40))(v291, v282);
  v92 = v291[3];
  v48[2] = v291[2];
  v48[3] = v92;
  v48[4] = v291[4];
  v93 = v291[1];
  *v48 = v291[0];
  v48[1] = v93;
  *(v48 + *(v90 + 24)) = v89;
  v94 = v48[3];
  v294 = v48[2];
  v295 = v94;
  v296 = v48[4];
  v95 = v48[1];
  v292 = *v48;
  v293 = v95;
  v96 = v271;
  sub_1D8AF7FF0(v48 + v91, v271, type metadata accessor for ProcessorState);
  v97 = swift_getEnumCaseMultiPayload();
  if (v97)
  {
    v99 = v272;
    v98 = v273;
    if (v97 == 1)
    {
      v100 = v96;
      v101 = v262;
      sub_1D8AF7F08(v100, v262, type metadata accessor for DetectionResult);
      v102 = v274;
      sub_1D8AF7FF0(v101, v274, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v101, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v102 = v274;
      sub_1D8AF7F08(v96, v274, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v102 = v274;
    sub_1D8AF7F08(v96, v274, type metadata accessor for DetectionRequest);
    v99 = v272;
    v98 = v273;
  }

  sub_1D8AF7F08(v102, v99, type metadata accessor for DetectionRequest);
  v103 = v295;
  v98[2] = v294;
  v98[3] = v103;
  v98[4] = v296;
  v104 = v293;
  *v98 = v292;
  v98[1] = v104;
  v105 = v277;
  sub_1D8AF7F08(v99, v98 + *(v277 + 20), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  v106 = *(v84 + 200);
  if (!*(v106 + 16))
  {
LABEL_25:
    sub_1D8AF7F70(v98, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v123 = v48[3];
    v288 = v48[2];
    v289 = v123;
    v290 = v48[4];
    v124 = v48[1];
    v286 = *v48;
    v287 = v124;
    v125 = v266;
    sub_1D8AF7FF0(v48 + v91, v266, type metadata accessor for ProcessorState);
    v126 = swift_getEnumCaseMultiPayload();
    if (v126)
    {
      v127 = v265;
      if (v126 == 1)
      {
        v128 = v125;
        v129 = v262;
        sub_1D8AF7F08(v128, v262, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v129, v127, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v129, type metadata accessor for DetectionResult);
LABEL_51:
        v177 = v127;
        v178 = v268;
        sub_1D8AF7F08(v177, v268, type metadata accessor for DetectionRequest);
        v179 = v289;
        v180 = v267;
        *(v267 + 2) = v288;
        v180[3] = v179;
        v180[4] = v290;
        v181 = v287;
        *v180 = v286;
        v180[1] = v181;
        sub_1D8AF7F08(v178, v180 + *(v105 + 20), type metadata accessor for DetectionRequest);
        v182 = v269;
        sub_1D8AF7FF0(v48, v269, type metadata accessor for TrackManager.TrackedProcessorState);
        (*(v276 + 56))(v182, 0, 1, v281);
        swift_beginAccess();
        sub_1D895F878(v182, v180);
        swift_endAccess();
        v183 = v48;
        return sub_1D8AF7F70(v183, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v176 = v125;
    }

    else
    {
      v176 = v125;
      v127 = v265;
    }

    sub_1D8AF7F08(v176, v127, type metadata accessor for DetectionRequest);
    goto LABEL_51;
  }

  v107 = sub_1D87F02B0(v98);
  if ((v108 & 1) == 0)
  {

    goto LABEL_25;
  }

  v109 = *(v276 + 72);
  v110 = v257;
  sub_1D8AF7FF0(*(v106 + 56) + v109 * v107, v257, type metadata accessor for TrackManager.TrackedProcessorState);
  sub_1D8AF7F70(v98, type metadata accessor for TrackManager.TrackedProcessorState.Key);

  v111 = v263;
  sub_1D8AF7F08(v110, v263, type metadata accessor for TrackManager.TrackedProcessorState);
  if (*(v111 + *(v281 + 24)) != 1)
  {
    goto LABEL_78;
  }

  if (v89 != 3)
  {
    if (v89 == 2)
    {
      v112 = v48[3];
      v288 = v48[2];
      v289 = v112;
      v290 = v48[4];
      v113 = v48[1];
      v286 = *v48;
      v287 = v113;
      v114 = v247;
      sub_1D8AF7FF0(v48 + v91, v247, type metadata accessor for ProcessorState);
      v115 = swift_getEnumCaseMultiPayload();
      v116 = v277;
      if (v115)
      {
        v117 = v254;
        v118 = v252;
        v120 = v249;
        v119 = v250;
        if (v115 == 1)
        {
          v121 = v114;
          v122 = v262;
          sub_1D8AF7F08(v121, v262, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v122, v119, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v122, type metadata accessor for DetectionResult);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

          sub_1D8AF7F08(v114, v119, type metadata accessor for DetectionRequest);
        }
      }

      else
      {
        v119 = v250;
        sub_1D8AF7F08(v114, v250, type metadata accessor for DetectionRequest);
        v117 = v254;
        v118 = v252;
        v120 = v249;
      }

      sub_1D8AF7F08(v119, v118, type metadata accessor for DetectionRequest);
      v210 = v289;
      v120[2] = v288;
      v120[3] = v210;
      v120[4] = v290;
      v211 = v287;
      *v120 = v286;
      v120[1] = v211;
      sub_1D8AF7F08(v118, v120 + *(v116 + 20), type metadata accessor for DetectionRequest);
      swift_beginAccess();
      sub_1D8AF073C(v120, v117);
      sub_1D8AF7F70(v120, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D87A14E4(v117, &qword_1ECA65EF0, &qword_1D8B2D2E0);
LABEL_77:
      swift_endAccess();
    }

LABEL_78:
    sub_1D8AF7F70(v263, type metadata accessor for TrackManager.TrackedProcessorState);
    v183 = v48;
    return sub_1D8AF7F70(v183, type metadata accessor for TrackManager.TrackedProcessorState);
  }

LABEL_56:
  v194 = v48[3];
  v288 = v48[2];
  v289 = v194;
  v290 = v48[4];
  v195 = v48[1];
  v286 = *v48;
  v287 = v195;
  v196 = v248;
  sub_1D8AF7FF0(v48 + v91, v248, type metadata accessor for ProcessorState);
  v197 = swift_getEnumCaseMultiPayload();
  if (v197)
  {
    v198 = v253;
    v199 = v251;
    v200 = v277;
    if (v197 == 1)
    {
      v201 = v196;
      v202 = v262;
      sub_1D8AF7F08(v201, v262, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v202, v199, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v202, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      sub_1D8AF7F08(v196, v199, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v199 = v251;
    sub_1D8AF7F08(v196, v251, type metadata accessor for DetectionRequest);
    v198 = v253;
    v200 = v277;
  }

  sub_1D8AF7F08(v199, v198, type metadata accessor for DetectionRequest);
  v212 = v289;
  v213 = v255;
  v255[2] = v288;
  v213[3] = v212;
  v213[4] = v290;
  v214 = v287;
  *v213 = v286;
  v213[1] = v214;
  sub_1D8AF7F08(v198, v213 + *(v200 + 20), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v216 = v213;
  v217 = v256;
  sub_1D8AF7FF0(v216, v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  v285 = *(v84 + 200);
  v218 = v285;
  *(v84 + 200) = 0x8000000000000000;
  v220 = sub_1D87F02B0(v217);
  v221 = *(v218 + 16);
  v222 = (v219 & 1) == 0;
  v223 = v221 + v222;
  if (__OFADD__(v221, v222))
  {
    __break(1u);
    goto LABEL_81;
  }

  LOBYTE(v198) = v219;
  if (*(v218 + 24) >= v223)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v226 = v246;
      if (v219)
      {
        goto LABEL_73;
      }

LABEL_82:
      (*(v276 + 56))(v226, 1, 1, v281);
      __break(1u);
      goto LABEL_83;
    }

LABEL_81:
    sub_1D896C62C();
    v226 = v246;
    if (v198)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

  sub_1D897724C(v223, isUniquelyReferenced_nonNull_native);
  v224 = sub_1D87F02B0(v256);
  if ((v198 & 1) == (v225 & 1))
  {
    v220 = v224;
    v226 = v246;
    if ((v198 & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_73:
    v227 = v285;
    v228 = v220 * v109;
    sub_1D8AF7F08(*(v285 + 56) + v220 * v109, v226, type metadata accessor for TrackManager.TrackedProcessorState);
    v229 = v276;
    v230 = v281;
    (*(v276 + 56))(v226, 0, 1, v281);
    *(v226 + *(v230 + 24)) = 3;
    v231 = v245;
    sub_1D87A0E38(v226, v245, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    if ((*(v229 + 48))(v231, 1, v230) == 1)
    {
      sub_1D87A14E4(v231, &qword_1ECA65EF0, &qword_1D8B2D2E0);
      sub_1D8AF7F70(*(v227 + 48) + *(v244 + 72) * v220, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v220, v227);
    }

    else
    {
      v232 = v243;
      sub_1D8AF7F08(v231, v243, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v232, *(v227 + 56) + v228, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    sub_1D8AF7F70(v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D8AF7F70(v255, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(v226, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    *(v84 + 200) = v227;
    goto LABEL_77;
  }

LABEL_83:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}