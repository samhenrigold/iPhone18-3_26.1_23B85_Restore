unint64_t sub_1AAF2F384()
{
  result = qword_1ED9B12E0[0];
  if (!qword_1ED9B12E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B12E0);
  }

  return result;
}

void sub_1AAF2F3D8(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = *(v5 + 3);
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_1AAD11570(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          v19 = j__malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        *(v6 + 1) = v13;
        v6 += 16;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = *(v5 + 3);
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v15 = __OFSUB__(v27, v2);
    v28 = v27 - v2;
    if (v15)
    {
LABEL_38:
      __break(1u);
      return;
    }

    *(v5 + 2) = v28;
  }
}

void sub_1AAF2F604(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_1AAD11570(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          v17 = j__malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v2);
    v27 = v26 - v2;
    if (v24)
    {
LABEL_35:
      __break(1u);
      return;
    }

    v5[2] = v27;
  }
}

void sub_1AAF2F80C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    sub_1AAD14950(0, &qword_1EB423018, &qword_1EB423020, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E7DE0]);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 17;
    }

    v10 = v9 >> 4;
    v7[2] = v6;
    v7[3] = 2 * v10;
    v11 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = v7 + 4;
    if (v5 >= v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = v5;
    }

    if (v13 >= v6 - 1)
    {
      v13 = v6 - 1;
    }

    if (v13 > 3)
    {
      v17 = v13 + 1;
      v18 = v17 & 3;
      if ((v17 & 3) == 0)
      {
        v18 = 4;
      }

      v14 = v17 - v18;
      v12 += 2 * v14;
      v19 = (a1 + 48);
      v20 = (v7 + 8);
      v21 = a2 + 48;
      v22 = 0uLL;
      v23 = v11;
      v24.i64[0] = -1;
      v24.i64[1] = -1;
      v25 = v14;
      do
      {
        v26 = v20 - 4;
        v56.val[0] = v19[-1].val[1];
        v57 = *v19;
        v56.val[1] = *(v21 - 16);
        vst2q_f64(v26, v56);
        vst2q_f64(v20, v57);
        v23 = vaddq_s64(v23, v24);
        v22 = vaddq_s64(v22, v24);
        ++v19;
        v20 += 8;
        v21 += 32;
        v25 -= 4;
      }

      while (v25);
      v11 = vaddvq_s64(vpaddq_s64(v23, v22));
    }

    else
    {
      v14 = 0;
    }

    v27 = 0;
    v28 = v6 - v14;
    v29 = 8 * v14 + 32;
    v30 = a2 + v29;
    v31 = a1 + v29;
    v32 = v5 - v14;
    v33 = v4 - v14;
    do
    {
      if (v33 == v27)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v32 == v27)
      {
        goto LABEL_51;
      }

      v34 = *(v30 + 8 * v27);
      *v12 = *(v31 + 8 * v27);
      v12[1] = v34;
      v12 += 2;
      ++v27;
    }

    while (v28 != v27);
    v16 = v11 - v27;
    if (v4 <= v5)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v15 = *(MEMORY[0x1E69E7CC0] + 24);

  v12 = v7 + 4;
  v16 = v15 >> 1;
  if (v4 > v5)
  {
LABEL_26:
    v35 = a1 + 32;
    v36 = a2 + 32;
    v55 = a2 + 32;
    while (v6 < v4)
    {
      v37 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_53;
      }

      if (v5 == v6)
      {
        goto LABEL_46;
      }

      if (v6 >= v5)
      {
        goto LABEL_54;
      }

      v38 = *(v35 + 8 * v6);
      v39 = *(v36 + 8 * v6);
      if (!v16)
      {
        v40 = v7[3];
        if (((v40 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_56;
        }

        v41 = v35;
        v42 = v40 & 0xFFFFFFFFFFFFFFFELL;
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        sub_1AAD14950(0, &qword_1EB423018, &qword_1EB423020, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E7DE0]);
        v44 = swift_allocObject();
        v45 = j__malloc_size(v44);
        v46 = v45 - 32;
        if (v45 < 32)
        {
          v46 = v45 - 17;
        }

        v47 = v46 >> 4;
        v44[2] = v43;
        v44[3] = 2 * (v46 >> 4);
        v48 = (v44 + 4);
        v49 = v7[3] >> 1;
        if (v7[2])
        {
          v50 = v7 + 4;
          if (v44 != v7 || v48 >= v50 + 16 * v49)
          {
            memmove(v44 + 4, v50, 16 * v49);
          }

          v7[2] = 0;
        }

        v12 = (v48 + 16 * v49);
        v16 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;

        v7 = v44;
        v35 = v41;
        v36 = v55;
      }

      v51 = __OFSUB__(v16--, 1);
      if (v51)
      {
        goto LABEL_55;
      }

      *v12 = v38;
      v12[1] = v39;
      v12 += 2;
      ++v6;
      if (v37 == v4)
      {
        goto LABEL_46;
      }
    }

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
    goto LABEL_57;
  }

LABEL_46:
  v52 = v7[3];
  if (v52 >= 2)
  {
    v53 = v52 >> 1;
    v51 = __OFSUB__(v53, v16);
    v54 = v53 - v16;
    if (v51)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v7[2] = v54;
  }
}

void sub_1AAF2FB40(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1AADAA0A4(v8);
    }

    v82 = v8 + 16;
    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1AAF300D8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v36 = *(v8 + 3);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      v8 = sub_1AAD68568((v36 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v37;
    v38 = v8 + 32;
    v39 = &v8[16 * v5 + 32];
    *v39 = v9;
    *(v39 + 1) = v7;
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[16 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[16 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = &v38[16 * v5 - 16];
        v78 = *v77;
        v79 = &v38[16 * v5];
        v80 = *(v79 + 1);
        sub_1AAF300D8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v8 + 2);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        memmove(&v38[16 * v5], v79 + 16, 16 * (v81 - 1 - v5));
        *(v8 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[16 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[16 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1AAF300D8(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1AAF3032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v7 = *a5;
  *a6 = a1;
  a6[1] = a2;
  v8 = MEMORY[0x1E69E77B0];
  a6[2] = a3;
  a6[3] = a4;
  v9 = (v7 + *v8);
  v10 = *v9;
  v11 = v9[1];
  *(a6 + *(type metadata accessor for VisualMapper(0, *v9, v11, a4) + 36)) = a5;
  type metadata accessor for VisualMapper.Mapping(0, v10, v11, v12);

  return swift_storeEnumTagMultiPayload();
}

void sub_1AAF303E4(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  sub_1AACED220(v3, &v8);
  type metadata accessor for TypedVectorizedProperties(0, a1, v6, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 2;
    bzero(a2 + 4, 0x2A9uLL);
  }
}

void *sub_1AAF30464@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a5@<X3>)
{
  a3[3] = type metadata accessor for TypedVectorizedProperties(0, a2, x2_0, a5);
  v8 = swift_allocObject();
  *a3 = v8;
  v9 = (v8 + 16);

  return memcpy(v9, a1, 0x2C9uLL);
}

__n128 sub_1AAF304C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11)
{
  v11 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v11;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = *(a1 + 48);
  v12 = *(a2 + 16);
  *(a9 + 56) = *a2;
  *(a9 + 72) = v12;
  *(a9 + 88) = *(a2 + 32);
  *(a9 + 104) = *(a2 + 48);
  v13 = *a3;
  v14 = a3[1];
  *(a9 + 169) = *(a3 + 57);
  v15 = a3[3];
  *(a9 + 144) = a3[2];
  *(a9 + 160) = v15;
  *(a9 + 112) = v13;
  *(a9 + 128) = v14;
  v16 = *a4;
  v17 = a4[1];
  *(a9 + 249) = *(a4 + 57);
  v18 = a4[3];
  *(a9 + 224) = a4[2];
  *(a9 + 240) = v18;
  *(a9 + 192) = v16;
  *(a9 + 208) = v17;
  v19 = *a5;
  v20 = a5[1];
  v21 = a5[2];
  *(a9 + 320) = *(a5 + 48);
  *(a9 + 288) = v20;
  *(a9 + 304) = v21;
  *(a9 + 272) = v19;
  v22 = *a6;
  v23 = a6[1];
  v24 = a6[3];
  *(a9 + 360) = a6[2];
  *(a9 + 376) = v24;
  *(a9 + 328) = v22;
  *(a9 + 344) = v23;
  v25 = a6[4];
  v26 = a6[5];
  v27 = a6[6];
  v28 = a6[7];
  *(a9 + 456) = *(a6 + 128);
  *(a9 + 424) = v27;
  *(a9 + 440) = v28;
  *(a9 + 392) = v25;
  *(a9 + 408) = v26;
  v29 = *(a7 + 16);
  *(a9 + 464) = *a7;
  *(a9 + 480) = v29;
  *(a9 + 496) = *(a7 + 32);
  *(a9 + 512) = *(a7 + 48);
  v30 = *(a8 + 16);
  *(a9 + 520) = *a8;
  *(a9 + 536) = v30;
  *(a9 + 552) = *(a8 + 32);
  *(a9 + 568) = *(a8 + 48);
  v31 = *a10;
  v32 = a10[1];
  v33 = a10[2];
  v34 = a10[3];
  *(a9 + 640) = *(a10 + 64);
  *(a9 + 608) = v33;
  *(a9 + 624) = v34;
  *(a9 + 576) = v31;
  *(a9 + 592) = v32;
  result = *a11;
  v36 = *(a11 + 16);
  v37 = *(a11 + 32);
  v38 = *(a11 + 48);
  *(a9 + 712) = *(a11 + 64);
  *(a9 + 680) = v37;
  *(a9 + 696) = v38;
  *(a9 + 648) = result;
  *(a9 + 664) = v36;
  return result;
}

uint64_t sub_1AAF305E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v6 = a5;
  v61 = a3;
  v64 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v12;
  v52 = v11;
  v62 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  v65 = type metadata accessor for PlottableProjection(0, v14, v11, v13);
  v15 = *(v65 - 8);
  v50 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v46 - v16;
  v19 = type metadata accessor for AnyConcreteScale(0, v6, v17, v18);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v46 - v22;
  v66 = a4;
  v24 = type metadata accessor for VisualMapper.Mapping(0, a4, v6, v23);
  v63 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v46 - v26);
  v28 = *a1;
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  v56 = *(a1 + 8);
  v29 = v56;
  v57 = v28;
  *a6 = v28;
  a6[1] = v29;
  v55 = v30;
  a6[2] = v30;
  a6[3] = v31;
  v59 = v31;
  if ((*(v20 + 48))(a2, 1, v19, v25) == 1)
  {
    sub_1AACD7304(v57, v56, v55);
    v32 = *(v15 + 8);

    v32(a1, v65);
    (v64[4])(v27, v61, v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v54 = v6;
    v34 = *(v20 + 32);
    v34(v58, a2, v19);
    v48 = *(v15 + 32);
    v48(v60, a1, v65);
    v49 = v24;
    v35 = v64 + 4;
    v47 = v64[4];
    v47(v62, v61, v54);
    v36 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v37 = (v21 + *(v15 + 80) + v36) & ~*(v15 + 80);
    v38 = *(v35 + 48);
    v64 = a6;
    v39 = (v50 + v38 + v37) & ~v38;
    v40 = swift_allocObject();
    v41 = v54;
    *(v40 + 2) = v66;
    *(v40 + 3) = v41;
    v42 = v53;
    *(v40 + 4) = v52;
    *(v40 + 5) = v42;
    v34(v40 + v36, v58, v19);
    v6 = v54;
    v48(v40 + v37, v60, v65);
    v43 = v40 + v39;
    a6 = v64;
    v47(v43, v62, v6);
    v24 = v49;
    *v27 = sub_1AAF3A408;
    v27[1] = v40;
    swift_storeEnumTagMultiPayload();
    sub_1AACD7304(v57, v56, v55);
  }

  v44 = type metadata accessor for VisualMapper(0, v66, v6, v33);
  return (*(v63 + 32))(a6 + *(v44 + 36), v27, v24);
}

void sub_1AAF30A7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v7 = type metadata accessor for PlottableProjection(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v14 = *(v8 + 32);
  v14(&v20 - v10, a1, v7, v9);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  v16[2] = v23;
  v16[3] = v17;
  v16[4] = v25;
  (v14)(v16 + v15, v11, v7);
  v18 = v21;
  sub_1AACD7304(v12, v13, v21);

  *a5 = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v18;
  *(a5 + 24) = v19;
  *(a5 + 32) = sub_1AAF3AD20;
  *(a5 + 40) = v16;
  *(a5 + 104) = 2;
}

__n128 sub_1AAF30C04@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  *&v6[7] = *a4;
  *&v6[39] = a4[2];
  *&v6[23] = a4[1];
  *&v6[87] = a4[5];
  *&v6[71] = a4[4];
  *&v6[55] = a4[3];
  *&v6[96] = *(a4 + 89);
  *(a5 + 17) = *v6;
  *(a5 + 49) = *&v6[32];
  result = *&v6[80];
  *(a5 + 113) = *&v6[96];
  *(a5 + 97) = *&v6[80];
  *(a5 + 81) = *&v6[64];
  *(a5 + 65) = *&v6[48];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 33) = *&v6[16];
  return result;
}

uint64_t sub_1AAF30C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = sub_1AAF3A578;
  *(a7 + 40) = result;
  *(a7 + 48) = 2;
  return result;
}

uint64_t sub_1AAF30D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a1;
  v47 = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlottableProjection.Storage(0, v14, v13, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v48 = a5;
  v20 = type metadata accessor for PlottableProjection(0, a4, a3, a5);
  (*(v17 + 16))(v19, a2 + *(v20 + 44), v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *a2;
      v33 = *(a2 + 8);
      v35 = *(a2 + 16);
      v36 = *(a2 + 24);
      sub_1AACD7304(*a2, v33, v35);

      v45 = v12;
      v37 = v46;
      swift_getAtKeyPath();

      (*(*(v20 - 8) + 8))(a2, v20);
      (*(*(a4 - 8) + 8))(v37, a4);
      v27 = v47;
      v28 = v34;
      v29 = v33;
      v30 = v35;
      v31 = v36;
      v32 = v45;
      return sub_1AACD6EC4(v28, v29, v30, v31, v32, a3, v48, v27);
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v17 + 8))(v19, v16);
    }

    else
    {

      sub_1AAF90774();
      v41 = sub_1AAF8CB94();
      v42 = sub_1AAF8CBA4();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v44 = *(TupleTypeMetadata3 + 48);
      (*(*(v42 - 8) + 8))(&v19[*(TupleTypeMetadata3 + 64)], v42);
      (*(*(v41 - 8) + 8))(&v19[v44], v41);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(*(a4 - 8) + 8))(v46, a4);
      (*(v10 + 32))(v12, v19, a3);
      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      v25 = *(a2 + 24);
      sub_1AACD7304(*a2, v23, v24);
      v26 = *(*(v20 - 8) + 8);

      v26(a2, v20);
      v27 = v47;
      v28 = v22;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      v32 = v12;
      return sub_1AACD6EC4(v28, v29, v30, v31, v32, a3, v48, v27);
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v40 = *(v10 + 8);
    v40(&v19[*(TupleTypeMetadata2 + 48)], a3);
    v40(v19, a3);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

double sub_1AAF311A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a7;
  *(v15 + 6) = a2;
  *(v15 + 7) = a3;
  v17 = type metadata accessor for Vectorizer(0, a4, a6, v16);
  v18 = (a8 + *(v17 + 36));
  *v18 = sub_1AAF3ACC0;
  v18[1] = v15;
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = a6;
  *(v19 + 5) = a7;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  v20 = (a8 + *(v17 + 40));
  *v20 = sub_1AAF3ACF0;
  v20[1] = v19;

  return result;
}

uint64_t sub_1AAF312D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 1);
  v4 = *(a2 + 2);
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  v13 = *(a2 + 11);
  v14 = a2[96];
  v15 = *(a2 + 13);
  v16 = a2[112];
  if (*a2 <= 1u)
  {
    v25 = *(a2 + 5);
    v26 = *(a2 + 6);
    v27 = *(a2 + 7);
    v28 = *(a2 + 8);
    v24 = a1;
    v17 = *(a2 + 13);
    v18 = v16;
LABEL_5:
    v19 = sub_1AAF31474(a1, v17, v18);
    sub_1AAF3ACA4(v5, v4, v7, v6, v25, v26, v27, v28, v11, v12, v13, v14);
    v20 = sub_1AAD31A5C(v15, v16);
    (*(*(a3 - 8) + 8))(v24, v20);
    return *&v19;
  }

  if (*a2 == 2)
  {
    v24 = a1;
    v25 = *(a2 + 5);
    v17 = *(a2 + 13);
    v18 = v16;
    v27 = v9;
    v28 = v10;
    v26 = v8;
    goto LABEL_5;
  }

  sub_1AAF3ACA4(v5, v4, v7, v6, *(a2 + 5), v8, v9, v10, v11, v12, v13, a2[96]);
  v23 = sub_1AAD31A5C(v15, v16);
  (*(*(a3 - 8) + 8))(a1, v23);
  return 0;
}

double sub_1AAF31474(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return *&a2;
  }

  swift_getAtKeyPath();
  sub_1AAD31A5C(a2, 1);
  return v5;
}

uint64_t sub_1AAF314E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = a10;
  v16 = type metadata accessor for XYRenderer(0, v27);
  v17 = v16[19];
  type metadata accessor for VectorizedModifiers();
  v18 = swift_allocObject();
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[7] = 0u;
  v18[8] = 0u;
  v18[9] = 0u;
  v18[10] = 0u;
  v18[11] = 0u;
  v18[12] = 0u;
  v18[13] = 0u;
  v18[14] = 0u;
  *(a9 + v17) = v18;
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19 = v16[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a5, a8);
  (*(*(v21 - 8) + 32))(a9 + v19, a2, v21);
  v22 = v16[18];
  v23 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a10);
  return (*(*(v23 - 8) + 32))(a9 + v22, a3, v23);
}

uint64_t sub_1AAF31694@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  swift_getAtKeyPath();
  result = sub_1AAF8DA44();
  *a4 = result;
  return result;
}

uint64_t sub_1AAF31754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a4;
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v44 = a9;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PlottableProjection(0, v16, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v37 - v21);
  v23 = sub_1AAF8FE74();
  v38 = *(v23 - 8);
  v39 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  (*(v20 + 16))(v22, v41, v19, v24);
  (*(v13 + 16))(v15, v42, a5);
  sub_1AAE7A6D8(v22, v15, a5, a7, a8, &v45);
  v27 = v48;
  v28 = v49;
  v29 = v50;
  v30 = v47;
  v52 = v45;
  v53 = v46;
  if (v50 < 0)
  {
    sub_1AAD6E0DC(&v52);
    v51 = v30;
    sub_1AAF3A1F0(&v51, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    *&v27 = (*&v27 + *&v28) * 0.5;
    v29 &= 1u;
    *&v28 = 0.0;
  }

  else
  {
    sub_1AACCAE10(v48, v49, v50);
    sub_1AAD6E0DC(&v52);
    v51 = v30;
    sub_1AAF3A1F0(&v51, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD0E818(v27, v28, v29);
  }

  v33 = type metadata accessor for AnyConcreteScale(0, a6, v31, v32);
  sub_1AAE05368(v27, v28, v29, v33, v26);
  sub_1AACCA728(v27, v28, v29);
  v34 = *(a6 - 8);
  v35 = *(v34 + 48);
  if (v35(v26, 1, a6) != 1)
  {
    return (*(v34 + 32))(v44, v26, a6);
  }

  (*(v34 + 16))(v44, v40, a6);
  result = (v35)(v26, 1, a6);
  if (result != 1)
  {
    return (*(v38 + 8))(v26, v39);
  }

  return result;
}

__n128 sub_1AAF31B48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PlottableProjection(0, v15, v16, v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v25 - v20);
  (*(v22 + 16))(&v25 - v20, a2, v19);
  (*(v12 + 16))(v14, a1, a3);
  sub_1AAE7A6D8(v21, v14, a3, a4, a5, v26);
  v23 = v26[3];
  *(a6 + 32) = v26[2];
  *(a6 + 48) = v23;
  *(a6 + 64) = v27;
  result = v26[1];
  *a6 = v26[0];
  *(a6 + 16) = result;
  return result;
}

double sub_1AAF31D00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = *(a2 + 24);
  v9 = type metadata accessor for VisualMapper.Mapping(0, *(a2 + 16), v8, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  (*(v13 + 16))(&v16 - v11, v4 + *(a2 + 36), v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      swift_getAtKeyPath();
    }

    else
    {
      (*v12)(a1);
    }
  }

  else
  {
    (*(*(v8 - 8) + 32))(a3, v12, v8);
  }

  return result;
}

uint64_t sub_1AAF31E68()
{
  v1 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(v0, v15, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF3A780(v15, v6, type metadata accessor for RulesRenderer);
      v17 = *(v6 + 7);
      sub_1AACE34A8(v6, type metadata accessor for RulesRenderer);
    }

    else
    {
      v18 = swift_projectBox();
      sub_1AAD0F23C(v18, v3, type metadata accessor for SgVectorized);
      v17 = *v3;
      sub_1AACE34A8(v3, type metadata accessor for SgVectorized);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AAF3A780(v15, v9, type metadata accessor for PointsRenderer);
    v17 = *(v9 + 7);
    sub_1AACE34A8(v9, type metadata accessor for PointsRenderer);
  }

  else
  {
    sub_1AAF3A780(v15, v12, type metadata accessor for RectanglesRenderer);
    v17 = *(v12 + 7);
    sub_1AACE34A8(v12, type metadata accessor for RectanglesRenderer);
  }

  return v17;
}

double sub_1AAF3215C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(v3, v20, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF3A780(v20, v11, type metadata accessor for RulesRenderer);
      sub_1AAF53A8C(a1, a2, &unk_1F1FCF620, MEMORY[0x1E69E7CC0]);
      sub_1AACE34A8(v11, type metadata accessor for RulesRenderer);
    }

    else
    {
      v23 = swift_projectBox();
      sub_1AAD0F23C(v23, v8, type metadata accessor for SgVectorized);
      sub_1AAF544F4(a1, a2);
      sub_1AACE34A8(v8, type metadata accessor for SgVectorized);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AAF3A780(v20, v17, type metadata accessor for PointsRenderer);
    sub_1AAF5317C(a1, a2, &unk_1F1FCF5F8, MEMORY[0x1E69E7CC0]);
    sub_1AACE34A8(v17, type metadata accessor for PointsRenderer);
  }

  else
  {
    sub_1AAF3A780(v20, v14, type metadata accessor for RectanglesRenderer);
    sub_1AAF54078(a1, a2);
    sub_1AACE34A8(v14, type metadata accessor for RectanglesRenderer);
  }

  return result;
}

double sub_1AAF324B0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 320) = -4;
  v2 = (a1 + 328);
  *(a1 + 304) = 0u;
  sub_1AAD3CF1C(v8);
  v3 = v8[7];
  *(a1 + 424) = v8[6];
  *(a1 + 440) = v3;
  *(a1 + 456) = v9;
  v4 = v8[3];
  *(a1 + 360) = v8[2];
  *(a1 + 376) = v4;
  v5 = v8[5];
  *(a1 + 392) = v8[4];
  *(a1 + 408) = v5;
  v6 = v8[1];
  *v2 = v8[0];
  *(a1 + 344) = v6;
  result = 0.0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 1;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 1;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 672) = 1;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  return result;
}

double sub_1AAF32744()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1AAF3A1F0(v0 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  sub_1AAF3A1F0(v0 + 72, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);
  sub_1AAF3A1F0(v0 + 128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);
  sub_1AAF3A1F0(v0 + 184, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAF3281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF32870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAF328B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AAF328EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF32948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAF329D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AAF32A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF32A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF32AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAF32BC4(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v2 = type metadata accessor for BoundingSectionSpecification(319, AssociatedTypeWitness, a1[3], a1[6]);
    if (v5 <= 0x3F)
    {
      v2 = type metadata accessor for BoundingSectionSpecification(319, AssociatedTypeWitness, a1[4], a1[7]);
      if (v6 <= 0x3F)
      {
        type metadata accessor for VectorizedModifiers();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1AAF32CC4(int *a1, unsigned int a2, void *a3)
{
  v51 = a3[2];
  v4 = *(v51 - 8);
  v5 = *(a3[3] - 8);
  v6 = *(v4 + 84);
  v7 = *(v5 + 80);
  v8 = *(sub_1AAF8CB94() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_1AAF8CBA4() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v11 | v9 | v7;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v5 + 64);
  if (((v16 + v7) & ~v7) + v16 > v16)
  {
    v16 += (v16 + v7) & ~v7;
  }

  v17 = (*(v8 + 64) + v11 + ((v9 + 8) & ~v9)) & ~v11;
  v18 = *(v10 + 64);
  v19 = v17 + v18;
  if (v16 <= v17 + v18)
  {
    v20 = v17 + v18;
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + v15;
  if (v21 + 1 > ((v21 + 1 + v14) & ~v14) + v21 + 1)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = ((v21 + 1 + v14) & ~v14) + v21 + 1;
  }

  v23 = (v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v22 <= v23 + 113)
  {
    v22 = v23 + 113;
  }

  v24 = v23 + 49;
  if (v22 > v24)
  {
    v24 = v22;
  }

  if (v24 <= 0x19)
  {
    v25 = 25;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(a3[4] - 8);
  v27 = *(v26 + 80);
  v28 = v12 | v27;
  v29 = v28 | 7;
  v30 = (v28 + 32) & ~(v28 | 7);
  v31 = *(v26 + 64);
  if (((v31 + v27) & ~v27) + v31 > v31)
  {
    v31 += (v31 + v27) & ~v27;
  }

  if (v31 <= v19)
  {
    v31 = v19;
  }

  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = v31 + v30;
  if (v32 + 1 > ((v32 + 1 + v29) & ~v29) + v32 + 1)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = ((v32 + 1 + v29) & ~v29) + v32 + 1;
  }

  v34 = (v32 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33 <= v34 + 113)
  {
    v33 = v34 + 113;
  }

  v35 = v34 + 49;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v35 <= 0x19)
  {
    v36 = 25;
  }

  else
  {
    v36 = v35;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v37 = 0x7FFFFFFF;
  }

  else
  {
    v37 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v38 = *(v4 + 64) + v14;
  v39 = v25 + 1;
  if (v37 >= a2)
  {
    goto LABEL_60;
  }

  v40 = ((v36 + ((v39 + v29 + (v38 & ~v14)) & ~v29) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = v40 & 0xFFFFFFF8;
  if ((v40 & 0xFFFFFFF8) != 0)
  {
    v42 = 2;
  }

  else
  {
    v42 = a2 - v37 + 1;
  }

  if (v42 >= 0x10000)
  {
    v43 = 4;
  }

  else
  {
    v43 = 2;
  }

  if (v42 < 0x100)
  {
    v43 = 1;
  }

  if (v42 >= 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    v47 = v45 - 1;
    if (v41)
    {
      v47 = 0;
      v48 = *a1;
    }

    else
    {
      v48 = 0;
    }

    return v37 + (v48 | v47) + 1;
  }

  if (v44)
  {
    v45 = *(a1 + v40);
    if (v45)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  if (v6 < 0x7FFFFFFF)
  {
    v50 = *((v36 + 1 + ((((a1 + v38) & ~v14) + v29 + v39) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v50 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    return (v50 + 1);
  }

  else
  {
    v49 = *(v4 + 48);

    return v49(a1, v6, v51);
  }
}

void sub_1AAF330F4(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v50 = *(a4[2] - 8);
  v6 = *(a4[3] - 8);
  v7 = *(v50 + 84);
  v8 = *(v6 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = sub_1AAF8CBA4();
  v12 = v7;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v14 | v10;
  v16 = v14 | v10 | v8;
  v17 = v16 | 7;
  v18 = (v16 + 32) & ~(v16 | 7);
  v19 = *(v6 + 64);
  if (((v19 + v8) & ~v8) + v19 > v19)
  {
    v19 += (v19 + v8) & ~v8;
  }

  v20 = (*(v9 + 64) + v14 + ((v10 + 8) & ~v10)) & ~v14;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  if (v19 <= v20 + v21)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= 0x10)
  {
    v23 = 16;
  }

  v24 = v23 + v18;
  if (v24 + 1 > ((v24 + 1 + v17) & ~v17) + v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = ((v24 + 1 + v17) & ~v17) + v24 + 1;
  }

  v26 = (v24 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25 <= v26 + 113)
  {
    v25 = v26 + 113;
  }

  v27 = v26 + 49;
  if (v25 <= v27)
  {
    v25 = v27;
  }

  v28 = *(a4[4] - 8);
  if (v25 <= 0x19)
  {
    v29 = 25;
  }

  else
  {
    v29 = v25;
  }

  v30 = *(v28 + 80);
  v31 = v15 | v30;
  v32 = v31 | 7;
  v33 = (v31 + 32) & ~(v31 | 7);
  v34 = *(v28 + 64);
  if (((v34 + v30) & ~v30) + v34 > v34)
  {
    v34 += (v34 + v30) & ~v30;
  }

  if (v34 <= v22)
  {
    v34 = v22;
  }

  if (v34 <= 0x10)
  {
    v34 = 16;
  }

  v35 = v34 + v33;
  if (v35 + 1 > ((v35 + 1 + v32) & ~v32) + v35 + 1)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = ((v35 + 1 + v32) & ~v32) + v35 + 1;
  }

  v37 = (v35 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v36 <= v37 + 113)
  {
    v36 = v37 + 113;
  }

  v38 = v37 + 49;
  if (v36 > v38)
  {
    v38 = v36;
  }

  if (v38 <= 0x19)
  {
    v38 = 25;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v7;
  }

  v40 = *(v50 + 64) + v17;
  v41 = ((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v39 >= a3)
  {
    v44 = 0;
  }

  else
  {
    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v42 = a3 - v39 + 1;
    }

    else
    {
      v42 = 2;
    }

    if (v42 >= 0x10000)
    {
      v43 = 4;
    }

    else
    {
      v43 = 2;
    }

    if (v42 < 0x100)
    {
      v43 = 1;
    }

    if (v42 >= 2)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }
  }

  if (a2 > v39)
  {
    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v45 = a2 - v39;
    }

    else
    {
      v45 = 1;
    }

    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v46 = ~v39 + a2;
      bzero(a1, v41);
      *a1 = v46;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        *(a1 + v41) = v45;
      }

      else
      {
        *(a1 + v41) = v45;
      }
    }

    else if (v44)
    {
      *(a1 + v41) = v45;
    }

    return;
  }

  if (v44 > 1)
  {
    if (v44 != 2)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_67;
    }

    *(a1 + v41) = 0;
  }

  else if (v44)
  {
    *(a1 + v41) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    return;
  }

LABEL_67:
  if (v12 < 0x7FFFFFFF)
  {
    v48 = ((v38 + 1 + ((((a1 + v40) & ~v17) + v32 + v29 + 1) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v49 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v49 = a2 - 1;
    }

    *v48 = v49;
  }

  else
  {
    v47 = *(v50 + 56);

    v47(a1);
  }
}

unint64_t sub_1AAF33574(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAF33630(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF33654(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF33684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v7 = type metadata accessor for ConcreteScale(0, MEMORY[0x1E69E63B0], a4, a4);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v11 = type metadata accessor for ConcreteScale(0, MEMORY[0x1E69E6158], a4, v10);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v16 = type metadata accessor for AnyConcreteScale(0, a4, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = *(a3 + 76);
  v47 = v4;
  v48 = *(v4 + v20);

  swift_getAtKeyPath();

  (*(v17 + 16))(v19, v46, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v42;
    v22 = v19;
    v23 = v43;
    v24 = (*(v42 + 32))(v13, v22, v43);
    v46 = &v42;
    MEMORY[0x1EEE9AC00](v24);
    *(&v42 - 5) = *(a3 + 16);
    *(&v42 - 8) = *(a3 + 32);
    *(&v42 - 7) = a4;
    *(&v42 - 3) = *(a3 + 40);
    v25 = v47;
    *(&v42 - 4) = *(a3 + 56);
    *(&v42 - 3) = v25;
    *(&v42 - 2) = v13;
    v26 = MEMORY[0x1E69E6720];
    sub_1AAF3C2A4(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v29 = type metadata accessor for RepeatedValueCollection(0, a4, v27, v28);
    sub_1AACD90D0(sub_1AAF3AB4C, (&v42 - 12), MEMORY[0x1E69E73E0], v29, v30, &v48);
    sub_1AAF3A1F0(v49, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v26);
    (*(v21 + 8))(v13, v23);
  }

  else
  {
    v31 = v44;
    v32 = v19;
    v33 = v45;
    v34 = (*(v44 + 32))(v9, v32, v45);
    v46 = &v42;
    MEMORY[0x1EEE9AC00](v34);
    *(&v42 - 5) = *(a3 + 16);
    *(&v42 - 8) = *(a3 + 32);
    *(&v42 - 7) = a4;
    *(&v42 - 3) = *(a3 + 40);
    v35 = v47;
    *(&v42 - 4) = *(a3 + 56);
    *(&v42 - 3) = v35;
    *(&v42 - 2) = v9;
    v36 = MEMORY[0x1E69E6720];
    sub_1AAF3C2A4(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v39 = type metadata accessor for RepeatedValueCollection(0, a4, v37, v38);
    sub_1AACD90D0(sub_1AAF3AB1C, (&v42 - 12), MEMORY[0x1E69E73E0], v39, v40, &v48);
    sub_1AAF3A1F0(v49, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v36);
    (*(v31 + 8))(v9, v33);
  }

  return v48;
}

double sub_1AAF33B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = a3;
  v10 = *(a1 + 8);
  sub_1AAF3A170(a2, v17, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (!v18)
  {
    sub_1AAF3A1F0(v17, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_7;
  }

  v11 = *(a4 + 40);
  v12 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE9195C(AssociatedTypeWitness, &v19);
  sub_1AAF3A27C(v17);
  if (!*(&v20 + 1))
  {
LABEL_7:
    sub_1AAF3A1F0(&v19, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    *(a5 + 48) = 0;
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (sub_1AAF3AC38(v8, v10))
  {
    sub_1AAE05C6C(&v23, v6, v8, v12, v11);
  }

  result = *&v23;
  v15 = v24;
  v16 = v25;
  *a5 = v23;
  *(a5 + 16) = v15;
  *(a5 + 32) = v16;
  *(a5 + 48) = v26;
  return result;
}

uint64_t sub_1AAF33CB4(uint64_t *a1, void *a2)
{
  AssociatedConformanceWitness = a1;
  v3 = *(*(*(a2[5] + 8) + 8) + 8);
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2[4];
  v67 = a2[7];
  v68 = v6;
  v66 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v6, v67);
  v54 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v7 = a2[3];
  v69 = a2;
  v8 = a2[6];
  v64 = v7;
  v65 = &v50 - v9;
  v63 = v8;
  v62 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v7, v8);
  v55 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - v10;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v50 - v18;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v3;
  v24 = v4;
  v71 = swift_getAssociatedTypeWitness();
  v51 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v50 - v25;
  v26 = *AssociatedConformanceWitness;
  v27 = AssociatedConformanceWitness[1];
  swift_beginAccess();
  v52 = v26;
  sub_1AAF3A138(v26 + 960, v77);
  if (sub_1AAF3AC38(0, v27) || sub_1AAF3AC38(1u, v27))
  {
    v50 = v27;
    (*(v20 + 16))(v23, v73, v24);
    sub_1AAF8F744();
    v28 = v52;
    swift_beginAccess();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AAF8FE94();
    v58 = *(v72 + 48);
    v59 = v72 + 48;
    if (v58(v19, 1, AssociatedTypeWitness) != 1)
    {
      v33 = *(v72 + 32);
      v55 += 2;
      v56 = v33;
      v34 = (v72 + 16);
      v72 += 32;
      v53 = (v72 - 24);
      v54 += 2;
      v57 = v19;
      v33(v16, v19, AssociatedTypeWitness);
      while (1)
      {
        v36 = v69;
        v37 = v73;
        v38 = v61;
        (*v55)(v61, v73 + *(v69 + 17), v62);
        v39 = *v34;
        (*v34)(v13, v16, AssociatedTypeWitness);
        v40 = sub_1AAE7E33C(v38, v13, AssociatedTypeWitness, v64, v63, v81);
        v41 = v37 + *(v36 + 18);
        v42 = v65;
        (*v54)(v65, v41, v66, v40);
        v39(v13, v16, AssociatedTypeWitness);
        sub_1AAE7E33C(v42, v13, AssociatedTypeWitness, v68, v67, v82);
        if (*(v28 + 953) == 2)
        {
          if ((v84[6] = v81[6], v84[7] = v81[7], v84[8] = v81[8], v84[2] = v81[2], v84[3] = v81[3], v84[4] = v81[4], v84[5] = v81[5], v84[0] = v81[0], v84[1] = v81[1], v43 = sub_1AACDB99C(v84), v44 = sub_1AACD2C84(v84), ((1 << v43) & 0x32) == 0) && ((v45 = 0, ((1 << v43) & 5) == 0) || (v45 = 0, v46 = *(v44 + 48), v46 < 0) || v46 == 2) || (v83[6] = v82[6], v83[7] = v82[7], v83[8] = v82[8], v83[2] = v82[2], v83[3] = v82[3], v83[4] = v82[4], v83[5] = v82[5], v83[0] = v82[0], v83[1] = v82[1], v47 = sub_1AACDB99C(v83), v48 = sub_1AACD2C84(v83), v45 = 1, ((1 << v47) & 0x32) == 0) && (((1 << v47) & 5) == 0 || (v49 = *(v48 + 48), v49 < 0) || v49 == 2))
          {
            *(v28 + 953) = v45;
          }
        }

        sub_1AACD2E6C(v81, 0);
        sub_1AACD2E6C(v82, 1);
        sub_1AADC7F60(v82);
        sub_1AADC7F60(v81);
        (*v53)(v16, AssociatedTypeWitness);
        v35 = v57;
        sub_1AAF8FE94();
        if (v58(v35, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v56(v16, v35, AssociatedTypeWitness);
      }
    }

    (*(v51 + 8))(v70, v71);
    v27 = v50;
  }

  v29 = v69;
  v30 = *(v73 + *(v69 + 19));
  v31 = v52;
  v74 = v52;
  v75 = v27;
  sub_1AAF33B08(&v74, v77, 5, v69, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v78, 8, v29, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 72, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v79, 6, v29, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v80, 7, v29, v76);
  sub_1AACF257C(v77);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 184, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  return swift_endAccess();
}

int *sub_1AAF34528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v21 = type metadata accessor for XYRenderer(0, &v26);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  result = type metadata accessor for XYRenderer.ResolvedKeyframe(0, &v26);
  *(a9 + result[17]) = a10;
  *(a9 + result[18]) = a2;
  *(a9 + result[19]) = a3;
  v23 = (a9 + result[20]);
  *v23 = a4;
  v23[1] = a5;
  return result;
}

uint64_t sub_1AAF3462C(void *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9)
{
  v245 = a8;
  v240 = a2;
  v241 = a6;
  *&v266 = a4;
  v249 = a3;
  v251 = a1;
  v247 = a9;
  v11 = a7[5];
  v12 = *(*(*&v11 + 8) + 8);
  v13 = *(a7 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v219 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v210 = &v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v257 = &v203 - v16;
  v277 = swift_getAssociatedTypeWitness();
  v242 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v282 = &v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v250 = &v203 - v19;
  v234 = sub_1AAF8DE34();
  v236 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v230 = &v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v233 = &v203 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v248 = &v203 - v24;
  v239 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v239);
  v244 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a7 + 3);
  v27 = *(a7 + 6);
  v28 = *(a7 + 7);
  v258 = *(a7 + 4);
  v259 = v27;
  *&v29 = v258;
  v265.f64[0] = v11;
  *(&v29 + 1) = v11;
  *&v30 = v13;
  v262 = v26;
  *(&v30 + 1) = v26;
  v301 = v30;
  v302 = v29;
  v303[0] = v27;
  v256 = v28;
  v303[1] = v28;
  v31 = type metadata accessor for XYRenderer.ResolvedKeyframe(255, &v301);
  v32 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v246 = &v203 - v33;
  v285 = v31;
  v276 = *(v31 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v260 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v284 = &v203 - v37;
  v205 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v211 = &v203 - v40;
  v280 = v12;
  v275 = swift_getAssociatedTypeWitness();
  v218 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v274 = &v203 - v41;
  v235 = a7;
  v42 = sub_1AAF8FE74();
  v254 = *(v42 - 8);
  v255 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v264 = &v203 - v43;
  v281 = v13;
  v209 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v263 = &v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v216 = &v203 - v47;
  *&v278.f64[0] = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](*&v278.f64[0]);
  v49 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v273 = (&v203 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v272 = (&v203 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v271 = (&v203 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v203 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AnyVectorizedRenderer(0) - 8;
  MEMORY[0x1EEE9AC00](v59);
  *&v279.f64[0] = &v203 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1E69E7CC0];
  *&v301 = MEMORY[0x1E69E7CC0];
  v64 = *(a5 + 16);
  v261 = a5;
  if (v64)
  {
    v65 = a5 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v66 = *(v61 + 72);
    v270 = v49;
    v269 = (v49 + 8);
    v268 = v66;
    while (1)
    {
      v67 = *&v279.f64[0];
      sub_1AAD0F23C(v65, *&v279.f64[0], type metadata accessor for AnyVectorizedRenderer);
      sub_1AAF3A780(v67, v58, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v69 = v273;
        sub_1AAF3A780(v58, v273, type metadata accessor for RulesRenderer);
        v70 = v69[6];

        v71 = type metadata accessor for RulesRenderer;
        goto LABEL_11;
      }

      v72 = swift_projectBox();
      v73 = v63;
      v74 = v58;
      v75 = v56;
      v76 = v270;
      sub_1AAD0F23C(v72, v270, type metadata accessor for SgVectorized);
      v77 = *(v269 + *(*&v278.f64[0] + 36));

      v78 = v76;
      v56 = v75;
      v58 = v74;
      v63 = v73;
      v66 = v268;
      sub_1AACE34A8(v78, type metadata accessor for SgVectorized);

      if (v77)
      {
LABEL_14:
        MEMORY[0x1AC598430](v60);
        if (*((v301 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v301 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        v60 = sub_1AAF8F8C4();
        v63 = v301;
      }

LABEL_4:
      v65 += v66;
      if (!--v64)
      {
        goto LABEL_16;
      }
    }

    if (EnumCaseMultiPayload)
    {
      v69 = v272;
      sub_1AAF3A780(v58, v272, type metadata accessor for PointsRenderer);
      v70 = v69[6];

      v71 = type metadata accessor for PointsRenderer;
    }

    else
    {
      v69 = v271;
      sub_1AAF3A780(v58, v271, type metadata accessor for RectanglesRenderer);
      v70 = v69[6];

      v71 = type metadata accessor for RectanglesRenderer;
    }

LABEL_11:
    v60 = sub_1AACE34A8(v69, v71);
    if (v70)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

LABEL_16:
  *&v279.f64[0] = v63;
  *&v301 = v261;
  MEMORY[0x1EEE9AC00](v60);
  v79 = v262;
  *(&v203 - 8) = v281;
  *(&v203 - 7) = v79;
  v80 = v245;
  *(&v203 - 6) = v258;
  *(&v203 - 5) = v80;
  v81 = v259;
  *(&v203 - 4) = *&v265.f64[0];
  *(&v203 - 3) = v81;
  v201 = v256;
  v202 = v247;
  sub_1AAD04B78(0, &qword_1ED9B2A80, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E62F8]);
  sub_1AAF3A81C();
  v82 = v235;
  v83 = 0;
  v84 = sub_1AAF8F764();
  v85 = *(v266 + 16);
  v86 = sub_1AAF8F8D4();
  v87 = AssociatedTypeWitness;
  v88 = v264;
  if (v85 != v86)
  {
    goto LABEL_88;
  }

  if (*&v279.f64[0] >> 62)
  {
    goto LABEL_87;
  }

  if (*((*&v279.f64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) != v85)
  {
LABEL_88:
    LODWORD(v202) = 0;
    v201 = 362;
    goto LABEL_93;
  }

LABEL_19:
  *&v278.f64[0] = v83;
  *&v301 = v84;
  v89 = sub_1AAF8F914();
  swift_getWitnessTable();
  v272 = v89;
  sub_1AAF8F4F4();
  v90 = *(v82 - 8);
  if ((*(v90 + 48))(v88, 1, v82) == 1)
  {
    goto LABEL_92;
  }

  v91 = v209;
  v92 = v263;
  v93 = v281;
  (*(v209 + 16))(v263, v88, v281);
  (*(v90 + 8))(v88, v82);
  (*(v91 + 32))(v216, v92, v93);
  sub_1AAF8FB74();
  v273 = *(swift_getAssociatedConformanceWitness() + 8);
  v243 = sub_1AAF8F934();
  v94 = type metadata accessor for ChartContentRenderContext.Environment(0);
  sub_1AAF3A170(v249 + *(v94 + 108), &v291, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  v270 = v94;
  v95 = v84;
  if (*(&v292[0] + 1))
  {
    sub_1AAF303E4(v87, &v301);
    sub_1AAE0FC7C(&v291);
  }

  else
  {
    sub_1AAF3A1F0(&v291, &qword_1ED9B3A10, &type metadata for VectorizedProperties, MEMORY[0x1E69E6720]);
    v301 = 0uLL;
    *&v302 = 0;
    *(&v302 + 1) = 2;
    bzero(v303, 0x2A9uLL);
  }

  v98 = type metadata accessor for TypedVectorizedProperties(255, v87, v96, v97);
  v99 = sub_1AAF8FE74();
  v100 = *(v99 - 8);
  v101 = *(v100 + 16);
  v101(&v291, &v301, v99);
  if (*(&v292[0] + 1) == 2)
  {
    (*(v100 + 8))(&v291, v99);
    v214 = 0;
    v215 = 0;
    v222 = 0;
    v223 = 0;
    v213 = 0;
    v220 = 1;
    v221 = 0;
  }

  else
  {
    v214 = v296;
    v215 = v294;
    v222 = v298;
    v223 = v295;
    v220 = v297;
    v221 = v299;
    v213 = v300;
    v102 = sub_1AAF3A9A0(v294, v295, v296, v297, v298, v299, v300);
    (*(*(v98 - 8) + 8))(&v291, v98, v102);
  }

  v101(&v291, &v301, v99);
  v207 = v100;
  v208 = v99;
  if (*(&v292[0] + 1) == 2)
  {
    (*(v100 + 8))(&v291, v99);
    v254 = 0;
    v255 = 0;
    v263 = 0;
    v264 = 0;
    v253 = 0;
    v252 = 0;
    v261 = 1;
  }

  else
  {
    v254 = *(&v291 + 1);
    v255 = v291;
    v263 = *&v292[1];
    v261 = *(&v292[0] + 1);
    v264 = *&v292[0];
    v253 = *(&v292[1] + 1);
    v252 = v293;
    sub_1AAD3B168(v291, *(&v291 + 1), *&v292[0], *(&v292[0] + 1), *&v292[1], *(&v292[1] + 1), v293);
    (*(*(v98 - 8) + 8))(&v291, v98);
  }

  v271 = v95;
  v304 = v95;
  v88 = v272;
  WitnessTable = swift_getWitnessTable();
  v104 = MEMORY[0x1AC598390](&v291, v88, WitnessTable);
  v304 = v291;
  MEMORY[0x1EEE9AC00](v104);
  v105 = v262;
  *(&v203 - 12) = v281;
  *(&v203 - 11) = v105;
  v106 = v259;
  v107 = v245;
  *(&v203 - 10) = v258;
  *(&v203 - 9) = v107;
  v108 = v265.f64[0];
  *(&v203 - 8) = *&v265.f64[0];
  *(&v203 - 7) = v106;
  v109 = v247;
  *(&v203 - 6) = v256;
  *(&v203 - 5) = v109;
  v110 = v267.f64[0];
  *(&v203 - 4) = *&v279.f64[0];
  *(&v203 - 3) = v110;
  MEMORY[0x1EEE9AC00](*&v108);
  *(&v203 - 10) = v112;
  *(&v203 - 9) = v111;
  *(&v203 - 8) = v113;
  *(&v203 - 7) = v114;
  *(&v203 - 6) = v115;
  *(&v203 - 5) = v116;
  *(&v203 - 4) = v117;
  *(&v203 - 3) = v118;
  v201 = sub_1AAF3A8A4;
  v202 = v119;
  v120 = sub_1AAF90354();
  v290 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v122 = v285;
  v124 = sub_1AACB00E0(sub_1AAF3A8E4, (&v203 - 12), v120, v285, MEMORY[0x1E69E73E0], v121, MEMORY[0x1E69E7410], v123);

  v256 = v124;
  *&v291 = v124;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v125 = v246;
  sub_1AAF8F4F4();
  v126 = v276;
  if ((*(v276 + 48))(v125, 1, v122) == 1)
  {
    goto LABEL_91;
  }

  v127 = *(v126 + 32);
  v272 = (v126 + 32);
  v271 = v127;
  (v127)(v211, v125, v285);
  sub_1AAF8DE44();
  sub_1AAF8DED4();
  v128 = sub_1AAF8DEA4();
  v129 = *(v249 + *(v270 + 13));
  sub_1AAF3A170(v249, &v291, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v84 = v277;
  v206 = v128;
  if (BYTE8(v292[1]) == 255)
  {
    *(&v289[0] + 1) = MEMORY[0x1E697E790];
    *&v289[1] = MEMORY[0x1E697E788];
    BYTE8(v289[1]) = 1;
  }

  else
  {
    v288 = v291;
    v289[0] = v292[0];
    *(v289 + 9) = *(v292 + 9);
  }

  v130 = v239;
  v83 = v256;
  v131 = v244;
  sub_1AACAD248(&v288, v244);
  v132 = v130[8];
  v133 = sub_1AAF8F154();
  v134 = *(v133 - 8);
  v135 = *(v134 + 56);
  v228 = v133;
  v229 = v132;
  v226 = v134 + 56;
  v227 = v135;
  (v135)(v131 + v132, 1, 1);
  *(v131 + 41) = 0;
  *(v131 + 48) = 0u;
  v225 = (v131 + 48);
  *(v131 + 64) = 0u;
  *(v131 + 80) = 0;
  *(v131 + 88) = v129;
  v136 = v131 + v130[9];
  *v136 = 0;
  v224 = v136;
  *(v136 + 8) = 0;
  memset(v305, 0, sizeof(v305));
  v306 = 1;
  v82 = v233;
  sub_1AAF2E4A4(v131, v305, v233);
  sub_1AAF8DE74();
  v137 = v236;
  v231 = *(v236 + 8);
  v232 = v236 + 8;
  v231(v82, v234);
  v138 = v243;
  if (!sub_1AAF8F8D4())
  {
    goto LABEL_79;
  }

  v139 = 0;
  v140 = v285[20];
  v237 = *(v247 + 8);
  v238 = v247 + 8;
  v141 = &v211[v140];
  v142 = *v141;
  v143 = *(v141 + 1);
  v239 = (v242 + 32);
  v240 = (v242 + 16);
  v270 = (v276 + 16);
  v269 = (v218 + 8);
  v268 = (v276 + 8);
  v258 = (v219 + 1);
  v259 = (v219 + 2);
  v217 = v143 + 32;
  v218 = v143;
  v246 = v142;
  v212 = v142 + 32;
  v219 = (v137 + 32);
  v236 = v242 + 8;
  v144 = v129;
  while (1)
  {
    v85 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    v262 = v139;
    if (v85)
    {
      (*(v242 + 16))(v250, v138 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v139, v84);
      v88 = v260;
      v167 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v198 = sub_1AAF90114();
      v88 = v260;
      if (v204 != 8)
      {
        goto LABEL_90;
      }

      *&v291 = v198;
      v85 = v198;
      (*v240)(v250, &v291, v84);
      swift_unknownObjectRelease();
      v167 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
LABEL_78:
        __break(1u);
LABEL_79:

        sub_1AAF8DE54();
        sub_1AAF8DEE4();
        sub_1AAF8DEB4();
        sub_1AAD2C0D4(v215, v223, v214, v220, v222, v221, v213);
        v199 = sub_1AAD3D034(v255, v254, v264, v261, v263, v253, v252);
        (v231)(v248, v234, v199);
        sub_1AACE34A8(v244, type metadata accessor for SgShapeStyle);
        (*(v207 + 8))(&v301, v208);
        (*(v209 + 8))(v216, v281);
        sub_1AAE9C090(&v288);
        return (*(v276 + 8))(v211, v285);
      }
    }

    v249 = v167;
    (*v239)(v282, v250, v84);
    if (v261 == 1)
    {
      v168 = v144;
    }

    else
    {
      v168 = 0.0;
    }

    if (v261 == 1)
    {
      v129 = v144;
    }

    if (sub_1AAF8F8D4())
    {
      break;
    }

    v278 = 0u;
    v279 = 0u;
LABEL_63:

    if (v246)
    {
      v165 = v251;
      v84 = v277;
      if (v262 >= *(v218 + 16))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        if (sub_1AAF8FFB4() != v85)
        {
          goto LABEL_88;
        }

        goto LABEL_19;
      }

      v194 = *(v217 + 8 * v262);
      if (v194 <= 0)
      {
        if (v194 < 0)
        {
          v196 = __OFSUB__(0, v194);
          v195 = -v194;
          v82 = v244;
          if (v196)
          {
            goto LABEL_86;
          }

          if ((v195 & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v195 = 0;
          v82 = v244;
        }

        if (v195 >= *(v246 + 2))
        {
          goto LABEL_85;
        }

        v197 = *&v212[8 * v195];

        sub_1AACE34A8(v82, type metadata accessor for SgShapeStyle);
        sub_1AAE9C090(&v288);
        LOBYTE(v291) = 1;
        *&v288 = v197;
        *(&v289[0] + 1) = MEMORY[0x1E697E0B8];
        *&v289[1] = MEMORY[0x1E697E0A8];
        BYTE8(v289[1]) = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v165 = v251;
      v84 = v277;
      if (v220 != 1)
      {
        v146 = v214;
        v145 = v215;
        *&v291 = v215;
        v147 = v222;
        *(&v291 + 1) = v223;
        *&v292[0] = v214;
        v149 = v220;
        v148 = v221;
        *(&v292[0] + 1) = v220;
        *&v292[1] = v222;
        *(&v292[1] + 1) = v221;
        v150 = v213;
        v293 = v213;
        sub_1AADA61DC(v215, v223, v214, v220);
        sub_1AAD3CF48(v147, v148, v150);
        v151 = sub_1AAF8FC84();
        v152 = v210;
        (*v259)(v210);
        v151(&v286, 0);
        *(&v287[0] + 1) = MEMORY[0x1E697E0B8];
        *&v287[1] = MEMORY[0x1E697E0A8];
        v154 = type metadata accessor for VisualMapper(0, v87, MEMORY[0x1E697E0B8], v153);
        v156 = sub_1AAF31D00(v152, v154, &v286, v155);
        (*v258)(v152, v87, v156);
        v82 = v244;
        sub_1AACE34A8(v244, type metadata accessor for SgShapeStyle);
        sub_1AAE9C090(&v288);
        sub_1AADA6198(v145, v223, v146, v149);
        sub_1AAD2C0B8(v222, v221, v150);
        BYTE8(v287[1]) = 1;
        v288 = v286;
        v289[0] = v287[0];
        *(v289 + 9) = *(v287 + 9);
        goto LABEL_36;
      }
    }

    v164 = v248;
    v82 = v244;
    if (v168 == v129)
    {
      goto LABEL_37;
    }

    sub_1AACE34A8(v244, type metadata accessor for SgShapeStyle);
LABEL_36:
    sub_1AACAD248(&v288, v82);
    v227(v82 + v229, 1, 1, v228);
    *(v82 + 41) = 0;
    v157 = v224;
    v158 = v225;
    *v225 = 0u;
    v158[1] = 0u;
    *(v158 + 4) = 0;
    *(v82 + 88) = v168;
    *v157 = 0;
    *(v157 + 8) = 0;
    v159 = v230;
    sub_1AAF2E4A4(v82, v305, v230);
    v160 = v233;
    v161 = v251;
    sub_1AAF8DE74();
    v162 = v234;
    v163 = v231;
    v231(v159, v234);
    v164 = v248;
    v163(v248, v162);
    v165 = v161;
    (*v219)(v164, v160, v162);
    v129 = v168;
    v144 = v168;
    v84 = v277;
LABEL_37:
    v237(v165, v262, v82, v164, v245, v247, v278, v278.f64[1], v279, v279.f64[1]);
    (*v236)(v282, v84);
    v138 = v243;
    v166 = sub_1AAF8F8D4();
    v139 = v249;
    if (v249 == v166)
    {
      goto LABEL_79;
    }
  }

  v84 = 0;
  v278 = 0u;
  v279 = 0u;
  while (1)
  {
    v85 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    if (v85)
    {
      (*(v276 + 16))(v284, v83 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v84, v285);
      v82 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_80;
      }

      goto LABEL_51;
    }

    v193 = sub_1AAF90114();
    if (v205 != 8)
    {
      break;
    }

    *&v291 = v193;
    v85 = v193;
    (*v270)(v284, &v291, v285);
    swift_unknownObjectRelease();
    v82 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_51:
    (v271)(v88, v284, v285);
    v169 = v274;
    v170 = v88;
    sub_1AAF8FB74();
    swift_getAssociatedConformanceWitness();
    v171 = v275;
    v85 = sub_1AAF8F7E4();
    (*v269)(v169, v171);
    if (v85)
    {
      v173 = *(v170 + v285[18]);
      v174 = *(v173 + 16);
      v87 = AssociatedTypeWitness;
      v88 = v257;
      if (!v174)
      {
        goto LABEL_81;
      }

      v175 = *(v170 + v285[19]);
      v176 = *(v175 + 16);
      if (!v176)
      {
        goto LABEL_82;
      }

      *&v172 = *(v170 + v285[17]);
      v266 = v172;
      v177 = *(v173 + 16 * (v262 % v174) + 32);
      v178 = v175 + 16 * (v262 % v176);
      v179.f64[0] = *(v178 + 32);
      v267 = v177;
      v179.f64[1] = *(v178 + 40);
      v265 = v179;
      v85 = sub_1AAF8FC84();
      (*v259)(v88);
      (v85)(&v291, 0);
      v180 = v261;
      if (v261 == 1)
      {
        (*v258)(v88, v87);
        v181 = *&v266;
      }

      else
      {
        v183 = v254;
        v182 = v255;
        *&v291 = v255;
        *(&v291 + 1) = v254;
        v184 = v263;
        *&v292[0] = v264;
        *(&v292[0] + 1) = v261;
        *&v292[1] = v263;
        v185 = v253;
        *(&v292[1] + 1) = v253;
        v186 = v252;
        v293 = v252;
        sub_1AADA61DC(v255, v254, v264, v261);
        sub_1AAD3CEFC(v184, v185, v186);
        v188 = type metadata accessor for VisualMapper(0, AssociatedTypeWitness, MEMORY[0x1E69E7DE0], v187);
        v190 = sub_1AAF31D00(v88, v188, &v286, v189);
        (*v258)(v88, AssociatedTypeWitness, v190);
        v191 = v183;
        v87 = AssociatedTypeWitness;
        v85 = v256;
        sub_1AADA6198(v182, v191, v264, v180);
        v192 = v186;
        v83 = v85;
        sub_1AAD3D014(v263, v185, v192);
        v181 = *&v266;
        v168 = v168 + *&v266 * *&v286;
      }

      v278 = vaddq_f64(v278, vmulq_n_f64(v267, v181));
      v279 = vaddq_f64(v279, vmulq_n_f64(v265, v181));
      v88 = v260;
      (*v268)(v260, v285);
    }

    else
    {
      (*v268)(v170, v285);
      v87 = AssociatedTypeWitness;
      v88 = v170;
    }

    ++v84;
    if (v82 == sub_1AAF8F8D4())
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  (*(v254 + 8))(v88, v255);
  LODWORD(v202) = 0;
  v201 = 363;
LABEL_93:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF364C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v12 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(a1, v23, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1AAF3A780(v23, v17, type metadata accessor for PointsRenderer);
      sub_1AACAEF68(v17, &v35);
      v25 = type metadata accessor for PointsRenderer;
      v26 = v17;
    }

    else
    {
      sub_1AAF3A780(v23, v20, type metadata accessor for RectanglesRenderer);
      sub_1AACAEF68(v20, &v35);
      v25 = type metadata accessor for RectanglesRenderer;
      v26 = v20;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1AAF3A780(v23, v14, type metadata accessor for RulesRenderer);
    sub_1AACAEF68(v14, &v35);
    v25 = type metadata accessor for RulesRenderer;
    v26 = v14;
LABEL_7:
    sub_1AACE34A8(v26, v25);
    sub_1AACBB198(&v35, v40);
    sub_1AAF3ABD4();
    *&v35 = a2;
    *(&v35 + 1) = a3;
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v27 = type metadata accessor for XYRenderer(0, &v35);
    v28 = swift_dynamicCast();
    return (*(*(v27 - 8) + 56))(a8, v28 ^ 1u, 1, v27);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AAF36834(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v87 = a4;
  v96 = a2;
  *&v101 = a6;
  *(&v101 + 1) = a7;
  v94 = a12;
  v95 = a7;
  v93 = a8;
  *&v102 = a8;
  *(&v102 + 1) = a11;
  v90 = *(&a12 + 1);
  v91 = a11;
  v103 = a12;
  v18 = type metadata accessor for XYRenderer(0, &v101);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &WitnessTable - v19;
  v92 = a6;
  v20 = *(a6 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &WitnessTable - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a9;
  v84 = a5;
  v85 = v26;
  v86 = v25;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1AC598D40](a1, a3, v22);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v27 = *(a3 + 8 * a1 + 32);
  }

  v82 = a13;
  v28 = v92;
  (*(v20 + 16))(v24, v96, v92);
  v29 = v91;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = sub_1AAF8F934();
  v31 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16);
  v30 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32);
  v107[0] = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
  v107[1] = v31;
  v107[2] = v30;
  v33 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64);
  v32 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80);
  v34 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48);
  v108 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96);
  v107[4] = v33;
  v107[5] = v32;
  v107[3] = v34;
  MEMORY[0x1EEE9AC00](v88);
  v35 = v95;
  *(&WitnessTable - 10) = v28;
  *(&WitnessTable - 9) = v35;
  v36 = v94;
  *(&WitnessTable - 8) = v93;
  *(&WitnessTable - 7) = a10;
  *(&WitnessTable - 6) = v29;
  *(&WitnessTable - 5) = v36;
  v77 = v90;
  v78 = v82;
  v79 = v87;
  v37 = MEMORY[0x1E697E0B8];
  sub_1AAF3AA98(v107, &v101, &qword_1ED9B3E20, &qword_1ED9B3E28, MEMORY[0x1E697E0B8]);
  v38 = sub_1AAF52754(sub_1AAF3A9FC);
  v87 = v39;
  sub_1AACE33D8(v107, &qword_1ED9B3E20, &qword_1ED9B3E28, v37);
  v40 = v86;
  (*(v85 + 16))(v89, v96, v86);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v84 + 16) > a1)
  {
    v41 = *(v84 + 8 * a1 + 32);
    v85 = v38;
    v97[0] = v88;
    v43 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    v42 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v101 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v102 = v43;
    v103 = v42;
    v45 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    v44 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v46 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    *(v106 + 9) = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v105 = v45;
    v106[0] = v44;
    v104 = v46;
    v47 = v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v82 = type metadata accessor for ChartContentRenderContext.Environment(0);
    v48 = &v47[*(v82 + 84)];
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = *(v27 + 44);
    v53 = *(v27 + 45);
    v54 = *(v27 + 3);
    v55 = *(v27 + 4);
    sub_1AAF3AA98(&v101, v99, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v56 = AssociatedTypeWitness;
    v57 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v95, v94);
    v58 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    v84 = sub_1AAE7EC08(v97, &v101, v57, v58, WitnessTable, v49, v50, v51, v52, v53, v54, v55);
    v59 = MEMORY[0x1E69E7DE0];
    sub_1AACE33D8(&v101, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v86 = *(v40 + 72);
    v98[0] = v88;
    v60 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v61 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v62 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    *(v100 + 9) = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v100[0] = v62;
    v64 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v63 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v99[0] = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v99[1] = v64;
    v99[3] = v60;
    v99[4] = v61;
    v99[2] = v63;
    v65 = &v47[*(v82 + 88)];
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[2];
    v69 = *(v27 + 46);
    v70 = *(v27 + 47);
    v71 = *(v27 + 5);
    v72 = *(v27 + 6);
    sub_1AAF3AA98(v99, v97, &qword_1ED9B3E30, &qword_1ED9B3E38, v59);
    v73 = v93;
    v74 = v90;
    v75 = type metadata accessor for BoundingSectionSpecification(0, v56, v93, v90);
    v76 = sub_1AAE7EC08(v98, v99, v75, v58, WitnessTable, v66, v67, v68, v69, v70, v71, v72);
    sub_1AACE33D8(v99, &qword_1ED9B3E30, &qword_1ED9B3E38, v59);

    sub_1AAF34528(v89, v84, v76, v85, v87, v92, v95, v73, v83, v41, v91, v94, v74);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1AAF36E74(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v14 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v14;
  v24 = *(a1 + 96);
  v15 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v15;
  v16 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v16;
  KeyPath = swift_getKeyPath();
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a8;
  v18 = type metadata accessor for XYRenderer(0, v22);
  v19 = sub_1AAF33684(v23, KeyPath, v18, MEMORY[0x1E697E0B8]);
  v21 = v20;

  *a7 = v19;
  a7[1] = v21;
}

uint64_t sub_1AAF36F58(uint64_t a1, uint64_t *a2)
{
  sub_1AAF3A170(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF3A0A0(v5, v3 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  return swift_endAccess();
}

char *sub_1AAF36FDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v205 = a4;
  v212 = a3[5];
  v8 = *(*(*(v212 + 8) + 8) + 8);
  v9 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a3[7];
  v195 = a3[4];
  v204 = v11;
  v172 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v195, v11);
  v167 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v159[-v12 - 8];
  v13 = a3[3];
  v174 = a3;
  v202 = a3[6];
  v203 = v13;
  v170 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v13, v202);
  v166 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v159[-v14 - 8];
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v159[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v18);
  v197 = &v159[-v19 - 8];
  v20 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v220 = &v159[-v21 - 8];
  v207 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v159[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v210 = v8;
  v222 = swift_getAssociatedTypeWitness();
  v182 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v221 = &v159[-v24 - 8];
  v173 = a2;
  v25 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  v200 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v199 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v26 = v25 + v199[27];
  if (*(v26 + 24))
  {
    sub_1AAE0FC20(v26, &v249);
    sub_1AAF303E4(AssociatedTypeWitness, v246);
    v27 = sub_1AAE0FC7C(&v249);
  }

  else
  {
    memset(v246, 0, 24);
    v246[3] = 2;
    bzero(&v247, 0x2A9uLL);
  }

  MEMORY[0x1EEE9AC00](v27);
  v28 = v203;
  *(&v158 - 8) = v9;
  *(&v158 - 7) = v28;
  v29 = v195;
  *(&v158 - 6) = v195;
  v30 = v29;
  v31 = v212;
  *(&v158 - 5) = v205;
  *(&v158 - 4) = v31;
  v32 = v204;
  *(&v158 - 3) = v202;
  *(&v158 - 2) = v32;
  *(&v158 - 1) = a5;
  type metadata accessor for TypedVectorizedProperties(255, AssociatedTypeWitness, v33, v34);
  v196 = sub_1AAF8FE74();
  v208 = type metadata accessor for VisualMapper(0, AssociatedTypeWitness, MEMORY[0x1E69E6370], v35);
  v37 = sub_1AAE29A94(sub_1AAF3A580, (&v158 - 10), MEMORY[0x1E69E73E0], v208, v36, &v249);
  v198 = 0;
  v206 = &v158;
  v217 = *(&v249 + 1);
  v218 = v249;
  v201 = a5;
  v38 = *(&v250 + 1);
  v215 = v251;
  v216 = v250;
  v214 = *(&v251 + 1);
  v213 = v252;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v9;
  v211 = v9;
  v40 = v202;
  v41 = v203;
  *(&v158 - 8) = v9;
  *(&v158 - 7) = v41;
  v42 = v205;
  *(&v158 - 6) = v30;
  *(&v158 - 5) = v42;
  v43 = v212;
  *(&v158 - 4) = v212;
  *(&v158 - 3) = v40;
  *(&v158 - 2) = v204;
  *(&v158 - 1) = v44;
  v219 = AssociatedTypeWitness;
  v165 = type metadata accessor for VisualMapper(0, AssociatedTypeWitness, MEMORY[0x1E69E6158], v45);
  v46 = v198;
  v48 = sub_1AAE29A94(sub_1AAF3A5D8, (&v158 - 10), MEMORY[0x1E69E73E0], v165, v47, &v249);
  v206 = &v158;
  v186 = *(&v249 + 1);
  v187 = v249;
  v193 = *(&v250 + 1);
  v194 = v46;
  v184 = v251;
  v185 = v250;
  v183 = *(&v251 + 1);
  v188 = v252;
  MEMORY[0x1EEE9AC00](v48);
  *(&v158 - 8) = v39;
  *(&v158 - 7) = v41;
  v49 = v195;
  *(&v158 - 6) = v195;
  *(&v158 - 5) = v42;
  *(&v158 - 4) = v43;
  v50 = v201;
  v51 = v202;
  v52 = v204;
  *(&v158 - 3) = v202;
  *(&v158 - 2) = v52;
  *(&v158 - 1) = v50;
  v54 = type metadata accessor for VisualMapper(0, AssociatedTypeWitness, MEMORY[0x1E6981148], v53);
  v56 = sub_1AAE29A94(sub_1AAF3A624, (&v158 - 10), MEMORY[0x1E69E73E0], v54, v55, &v249);
  v206 = &v158;
  v238 = v251;
  v239 = v252;
  v240 = v253;
  v236 = v249;
  v237 = v250;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v203;
  *(&v158 - 8) = v211;
  *(&v158 - 7) = v57;
  v58 = v205;
  *(&v158 - 6) = v49;
  *(&v158 - 5) = v58;
  *(&v158 - 4) = v212;
  *(&v158 - 3) = v51;
  v59 = v201;
  *(&v158 - 2) = v52;
  *(&v158 - 1) = v59;
  v198 = v54;
  sub_1AAE29A94(sub_1AAF3A650, (&v158 - 10), MEMORY[0x1E69E73E0], v54, v60, &v249);
  v243 = v251;
  v244 = v252;
  v245 = v253;
  v241 = v249;
  v242 = v250;
  v61 = (v200 + v199[25]);
  v63 = *v61;
  v62 = v61[1];
  v181 = v63;
  v192 = v62;
  v64 = (v200 + v199[23]);
  v65 = *v64;
  v66 = v64[1];
  v68 = v64[2];
  v67 = v64[3];
  v69 = (v200 + v199[24]);
  v70 = *v69;
  v190 = v69[1];
  v191 = v70;
  v71 = v69[2];
  v72 = v69[3];
  (*(v207 + 16))(v209, v189, v211);

  v177 = v66;
  v178 = v65;
  v175 = v67;
  v176 = v68;
  sub_1AADA61DC(v65, v66, v68, v67);
  v179 = v72;
  v180 = v71;
  sub_1AADA61DC(v191, v190, v71, v72);
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = v220;
  v212 = AssociatedConformanceWitness;
  sub_1AAF8FE94();
  v75 = v219;
  v210 = *(v15 + 48);
  v211 = v15 + 48;
  if (v210(v74, 1, v219) == 1)
  {
    v194 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v96 = *(v15 + 32);
    v95 = (v15 + 32);
    v206 = (v95 - 24);
    v207 = v96;
    v163 = v95 - 16;
    v164 = v198 - 8;
    v166 += 2;
    v167 += 2;
    v162 = v201 + 8;
    v194 = MEMORY[0x1E69E7CC0];
    v209 = v95;
    do
    {
      v97 = v197;
      while (1)
      {
        (v207)(v97, v74, v75);
        if (v38 == 1)
        {
          break;
        }

        v100 = v217;
        v99 = v218;
        *&v231 = v218;
        *(&v231 + 1) = v217;
        v102 = v215;
        v101 = v216;
        *&v232 = v216;
        *(&v232 + 1) = v38;
        *&v233 = v215;
        v103 = v38;
        v104 = v214;
        *(&v233 + 1) = v214;
        v105 = v213;
        LOBYTE(v234) = v213;
        sub_1AADA61DC(v218, v217, v216, v103);
        sub_1AAD3CEFC(v102, v104, v105);
        sub_1AAF31D00(v97, v208, &v226, v106);
        sub_1AADA6198(v99, v100, v101, v103);
        v107 = v104;
        v38 = v103;
        v75 = v219;
        v98.n128_f64[0] = sub_1AAD3D014(v102, v107, v105);
        if (v226 != 1)
        {
          break;
        }

        (*v206)(v97, v75, v98.n128_f64[0]);
        v74 = v220;
        sub_1AAF8FE94();
        if (v210(v74, 1, v75) == 1)
        {
          goto LABEL_6;
        }
      }

      v108 = v97;
      if (v193 != 1)
      {
        v110 = v186;
        v109 = v187;
        *&v231 = v187;
        *(&v231 + 1) = v186;
        v112 = v184;
        v111 = v185;
        *&v232 = v185;
        v113 = v193;
        *(&v232 + 1) = v193;
        *&v233 = v184;
        v114 = v183;
        *(&v233 + 1) = v183;
        v115 = v188;
        LOBYTE(v234) = v188;
        sub_1AADA61DC(v187, v186, v185, v193);
        sub_1AAE0FCD0(v112, v114, v115);
        sub_1AAF31D00(v197, v165, &v226, v116);
        v117 = v110;
        v75 = v219;
        v118 = v111;
        v108 = v197;
        sub_1AADA6198(v109, v117, v118, v113);
        sub_1AAE0FD00(v112, v114, v188);
        v119 = *(&v226 + 1);
        v120 = (v200 + v199[25]);
        *v120 = v226;
        v120[1] = v119;
      }

      v121 = *(&v237 + 1);
      v122 = v198;
      if (*(&v237 + 1) != 1)
      {
        v123 = *(&v239 + 1);
        v124 = v239;
        v161 = v238;
        *&v159[16] = v237;
        *v159 = v236;
        LODWORD(v160) = v240;
        v226 = v236;
        v227 = v237;
        v228 = v238;
        v229 = v239;
        v230 = v240;
        v233 = v238;
        v234 = v239;
        v235 = v240;
        v231 = v236;
        v232 = v237;
        (*(*(v198 - 8) + 16))(&v223, &v231, v198);
        sub_1AAF31D00(v108, v122, &v223, v125);
        sub_1AADA6198(*v159, *&v159[8], v159[16], v121);
        sub_1AAE0FE08(v161, *(&v161 + 1), v124, v123, v160);
        v126 = v224;
        v127 = v225;
        v128 = (v200 + v199[23]);
        v129 = *v128;
        v130 = v128[1];
        v131 = v128[2];
        v132 = v128[3];
        *v128 = v223;
        v128[2] = v126;
        v128[3] = v127;
        v98.n128_f64[0] = sub_1AADA6198(v129, v130, v131, v132);
      }

      v133 = *(&v242 + 1);
      if (*(&v242 + 1) != 1)
      {
        v134 = *(&v244 + 1);
        v135 = v244;
        v136 = *(&v243 + 1);
        *(&v161 + 1) = v243;
        v160 = v242;
        *&v159[8] = v241;
        LODWORD(v161) = v245;
        v226 = v241;
        v227 = v242;
        v228 = v243;
        v229 = v244;
        v230 = v245;
        v233 = v243;
        v234 = v244;
        v235 = v245;
        v231 = v241;
        v232 = v242;
        (*(*(v122 - 8) + 16))(&v223, &v231, v122);
        sub_1AAF31D00(v108, v122, &v223, v137);
        sub_1AADA6198(*&v159[8], *&v159[16], v160, v133);
        sub_1AAE0FE08(*(&v161 + 1), v136, v135, v134, v161);
        v138 = v224;
        v139 = v225;
        v140 = (v200 + v199[24]);
        v141 = *v140;
        v142 = v140[1];
        v143 = v140[2];
        v144 = v140[3];
        *v140 = v223;
        v140[2] = v138;
        v140[3] = v139;
        v98.n128_f64[0] = sub_1AADA6198(v141, v142, v143, v144);
      }

      v145 = v174;
      v146 = v189;
      v147 = v169;
      (*v166)(v169, v189 + *(v174 + 17), v170, v98);
      v148 = *v163;
      v149 = v168;
      (*v163)(v168, v108, v75);
      v150 = sub_1AAE7E33C(v147, v149, v75, v203, v202, v248);
      v151 = v146 + *(v145 + 18);
      v152 = v171;
      (*v167)(v171, v151, v172, v150);
      v148(v149, v108, v75);
      v153 = sub_1AAE7E33C(v152, v149, v75, v195, v204, &v249);
      v154 = (*(v201 + 8))(v248, &v249, v173, v153);
      sub_1AADC7F60(&v249);
      sub_1AADC7F60(v248);
      v155 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v155 = sub_1AACE3508(0, *(v155 + 2) + 1, 1, v155);
      }

      v157 = *(v155 + 2);
      v156 = *(v155 + 3);
      if (v157 >= v156 >> 1)
      {
        v155 = sub_1AACE3508((v156 > 1), v157 + 1, 1, v155);
      }

      (*v206)(v197, v75);
      *(v155 + 2) = v157 + 1;
      v194 = v155;
      *&v155[8 * v157 + 32] = v154;
      v74 = v220;
      sub_1AAF8FE94();
    }

    while (v210(v74, 1, v75) != 1);
  }

LABEL_6:
  v76 = sub_1AAF8FE74();
  v77 = *(*(v76 - 8) + 8);
  v77(&v241, v76);
  v77(&v236, v76);
  sub_1AAF3A6BC(v187, v186, v185, v193, v184, v183, v188);
  v78 = sub_1AAD3D034(v218, v217, v216, v38, v215, v214, v213);
  (*(v182 + 8))(v221, v222, v78);
  (*(*(v196 - 8) + 8))(v246);
  v79 = v199;
  v80 = v200;
  v81 = (v200 + v199[25]);
  *v81 = v181;
  v81[1] = v192;
  v82 = (v80 + v79[23]);
  v83 = *v82;
  v84 = v82[1];
  v85 = v82[2];
  v86 = v82[3];
  *v82 = v178;
  v82[1] = v177;
  v82[2] = v176;
  v82[3] = v175;
  v87 = (v80 + v79[24]);
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[2];
  v91 = v87[3];
  v92 = v190;
  *v87 = v191;
  v87[1] = v92;
  v93 = v179;
  v87[2] = v180;
  v87[3] = v93;

  sub_1AADA6198(v83, v84, v85, v86);
  sub_1AADA6198(v88, v89, v90, v91);
  return v194;
}

uint64_t sub_1AAF38028@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 624);
  v14 = *(a1 + 608);
  v15 = v4;
  v16 = *(a1 + 640);
  v5 = v16;
  v6 = *(a1 + 592);
  v13[0] = *(a1 + 576);
  v7 = v13[0];
  v13[1] = v6;
  *(a4 + 32) = v14;
  *(a4 + 48) = v4;
  *(a4 + 64) = v5;
  *a4 = v7;
  *(a4 + 16) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for VisualMapper(255, AssociatedTypeWitness, MEMORY[0x1E6981148], v9);
  v10 = sub_1AAF8FE74();
  return (*(*(v10 - 8) + 16))(v12, v13, v10);
}

uint64_t sub_1AAF380F4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v16 = *(a1 + 712);
  v5 = *(a1 + 696);
  v14 = *(a1 + 680);
  v4 = v14;
  v15 = v5;
  v6 = *(a1 + 664);
  v13[0] = *(a1 + 648);
  v7 = v13[0];
  v13[1] = v6;
  *(a4 + 64) = v16;
  *(a4 + 32) = v4;
  *(a4 + 48) = v5;
  *a4 = v7;
  *(a4 + 16) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for VisualMapper(255, AssociatedTypeWitness, MEMORY[0x1E6981148], v9);
  v10 = sub_1AAF8FE74();
  return (*(*(v10 - 8) + 16))(v12, v13, v10);
}

double sub_1AAF38200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(*a1 + 16);
  v16 = *(v15 + 16);
  v17 = *(v16 + 32);

  v19 = sub_1AACD5520(a3, v17, v18);
  v20 = *(v16 + 32);
  *(v16 + 32) = v19;
  v21 = *(v15 + 24);
  *(v15 + 24) = v19;
  sub_1AAF382E4(a4, a5, a2, v13, v14, a6, a7, a8, a9);
  *(v15 + 24) = v21;

  *(v16 + 32) = v20;

  return result;
}

uint64_t sub_1AAF382E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v16, v13);
  v19[0] = a4;
  v19[1] = a5;
  (*(a9 + 32))(v15, v19, a7, a9);
  return (*(v12 + 8))(v15, a7);
}

double sub_1AAF383F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(v13 + 16);
  v15 = *(v14 + 16);
  v16 = *(v15 + 32);

  v18 = sub_1AACD5520(a3, v16, v17);
  v19 = *(v15 + 32);
  *(v15 + 32) = v18;
  v20 = *(v14 + 24);
  *(v14 + 24) = v18;
  sub_1AAF384D0(a4, a5, a2, v12, v13, a6, a7, a8, a9);
  *(v14 + 24) = v20;
  *(v15 + 32) = v19;

  return result;
}

uint64_t sub_1AAF384D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17(v16, v13);
  v19[0] = a4 & 1;
  v20 = a5;
  (*(a9 + 40))(v15, v19, a7, a9);
  return (*(v12 + 8))(v15, a7);
}

uint64_t sub_1AAF385F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v38 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1AAF8FE74();
  v40 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v38 - v15);
  v39 = sub_1AAF90354();
  MEMORY[0x1EEE9AC00](v39);
  v38[1] = v38 - v17;
  v50 = v8;
  v55 = sub_1AAF90344();
  v43 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v38 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a2;
  v44 = v22;
  v23 = *(v22 + 16);
  v48 = a1;
  v23(v21, a1, a3);
  v24 = v51;
  swift_beginAccess();
  sub_1AAF3A138(v24 + 960, v63);
  sub_1AAF3A170(&v67, v62, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  sub_1AAF3A170(v63, v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v58[1] + 1))
  {
    v59[0] = v58[0];
    v59[1] = v58[1];
    v59[2] = v58[2];
    *&v59[3] = *&v58[3];
    sub_1AAE05C6C(v59, v21, 5u, a3, a4);
    sub_1AAF3A27C(v59);
  }

  else
  {
    sub_1AAF3A1F0(v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v64, v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v58[1] + 1))
  {
    v59[0] = v58[0];
    v59[1] = v58[1];
    v59[2] = v58[2];
    *&v59[3] = *&v58[3];
    sub_1AAE05C6C(v59, v21, 8u, a3, a4);
    sub_1AAF3A27C(v59);
  }

  else
  {
    sub_1AAF3A1F0(v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v65, v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v58[1] + 1))
  {
    v59[0] = v58[0];
    v59[1] = v58[1];
    v59[2] = v58[2];
    *&v59[3] = *&v58[3];
    sub_1AAE05C6C(v59, v21, 6u, a3, a4);
    sub_1AAF3A27C(v59);
  }

  else
  {
    sub_1AAF3A1F0(v58, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v66, v59, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  v46 = v11;
  v49 = a4;
  if (*(&v59[1] + 1))
  {
    v60[0] = v59[0];
    v60[1] = v59[1];
    v60[2] = v59[2];
    v61 = *&v59[3];
    sub_1AAE05C6C(v60, v21, 7u, a3, a4);
    sub_1AAF3A27C(v60);
  }

  else
  {
    sub_1AAF3A1F0(v59, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  v47 = AssociatedTypeWitness;
  swift_beginAccess();
  v45 = v24;
  memcpy(v59, (v24 + 696), 0x102uLL);
  sub_1AACBB21C(v59, v58);
  v54 = a3;
  v42 = v21;
  MEMORY[0x1AC598390](a3, v50);
  sub_1AAF90324();
  v25 = (v40 + 32);
  v50 = TupleTypeMetadata2 - 8;
  v26 = (v41 + 32);
  v27 = (v41 + 8);
  while (1)
  {
    v30 = v52;
    sub_1AAF90334();
    (*v25)(v16, v30, v53);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v31 = *v16;
    v32 = TupleTypeMetadata2;
    v33 = v16 + *(TupleTypeMetadata2 + 48);
    v34 = v46;
    v35 = v47;
    (*v26)(v46, v33, v47);
    sub_1AAF3A170(v62, v58, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
    if (*&v58[3])
    {
      v57[2] = v58[2];
      v57[3] = v58[3];
      v57[4] = v58[4];
      v57[0] = v58[0];
      v57[1] = v58[1];
      sub_1AAE08020(v57, v34, v35);
      sub_1AAF3A24C(v57);
    }

    v28 = type metadata accessor for Vectorizer(0, v54, v49, v36);
    v29 = *(v48 + *(v28 + 36));
    v58[0] = v51;
    v29(v58, v34, v31);
    (*v27)(v34, v35);
    TupleTypeMetadata2 = v32;
  }

  (*(v43 + 8))(v56, v55);
  sub_1AAF3A1F0(v62, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position, MEMORY[0x1E69E6720]);
  sub_1AACF257C(v63);
  (*(v44 + 8))(v42, v54);
  memcpy(v58, (v45 + 696), 0x102uLL);
  memcpy((v45 + 696), v59, 0x102uLL);
  return sub_1AACBB254(v58);
}

uint64_t sub_1AAF38E08@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AAD04B78(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v61[-v11];
  v64 = a4;
  v12 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v61[-v14];
  v15 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v17);
  v62 = *a2;
  v20 = *(a2 + 1);
  v70 = v21;
  v22 = *(v21 + 16);
  v74 = &v61[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = a1;
  v22(v18);
  v23 = v20 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v24 = v23 + *(v15 + 108);
  v25 = *(v24 + 24);
  v72 = a5;
  v73 = a3;
  v66 = v13;
  if (v25)
  {
    sub_1AAE0FC20(v24, v81);
    v26 = *(v12 + 8);
    v27 = swift_getAssociatedTypeWitness();
    sub_1AAF303E4(v27, v80);
    sub_1AAE0FC7C(v81);
    if (v80[3] != 2)
    {
      v68 = v26;
      memcpy(v81, v80, 0x2C9uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v80, 0, 24);
    v80[3] = 2;
    bzero(&v80[4], 0x2A9uLL);
    v26 = *(v12 + 8);
    v27 = swift_getAssociatedTypeWitness();
  }

  sub_1AAF324B0(v81);
  v68 = v26;
  if (v80[3] != 2)
  {
    type metadata accessor for TypedVectorizedProperties(255, v27, v28, v29);
    v30 = sub_1AAF8FE74();
    (*(*(v30 - 8) + 8))(v80, v30);
  }

LABEL_7:
  sub_1AAD0F23C(v23, v75, type metadata accessor for ChartContentRenderContext.Environment);
  swift_beginAccess();
  memcpy(v78, (v20 + 80), 0x102uLL);
  v69 = v15;
  *(v23 + *(v15 + 64)) = 0;
  v77 = 0;
  sub_1AACBB21C(v78, v79);
  v31 = v63;
  v33 = v73;
  v32 = v74;
  v34 = sub_1AAF8FB74();
  v76[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v64;
  *&v61[-80] = v33;
  *&v61[-72] = v35;
  *&v61[-64] = v32;
  *&v61[-56] = v81;
  v36 = v65;
  *&v61[-48] = v20;
  *&v61[-40] = v36;
  v61[-32] = v62;
  *&v61[-24] = v20;
  *&v61[-16] = &v77;
  sub_1AAF3C2A4(0, &qword_1ED9B2758, &type metadata for _ChartContentRenderOutputs, MEMORY[0x1E69E62F8]);
  v37 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  sub_1AAF8F7B4();
  (*(v66 + 8))(v31, v37);
  v38 = v79[0];
  swift_beginAccess();
  sub_1AAF3A000(v75, v23);
  swift_endAccess();
  memcpy(v79, (v20 + 80), 0x102uLL);
  memcpy((v20 + 80), v78, 0x102uLL);
  sub_1AACBB21C(v78, v76);
  sub_1AACBB254(v79);
  v39 = *(v20 + 16);
  v40 = *(v39 + 24);
  v41 = *(v38 + 16);
  if (v41)
  {
    AssociatedTypeWitness = *(v39 + 24);
    v42 = MEMORY[0x1E69E7CC0];
    v76[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v41, 0);
    v43 = v76[0];
    v44 = *(v76[0] + 16);
    v45 = 32;
    do
    {
      v46 = *(v38 + v45);
      v76[0] = v43;
      v47 = *(v43 + 24);

      if (v44 >= v47 >> 1)
      {
        sub_1AAD0F6F0((v47 > 1), v44 + 1, 1);
        v43 = v76[0];
      }

      *(v43 + 16) = v44 + 1;
      *(v43 + 8 * v44 + 32) = v46;
      v45 += 8;
      ++v44;
      --v41;
    }

    while (v41);

    v40 = AssociatedTypeWitness;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
  }

  v48 = type metadata accessor for SgGroup(0);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = type metadata accessor for SgClipRect(0);
  v53 = v71;
  (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  sub_1AACBB254(v78);
  v54 = *&v75[*(v69 + 64)];
  sub_1AACE34A8(v75, type metadata accessor for ChartContentRenderContext.Environment);
  *v51 = v40;
  v51[1] = v43;
  sub_1AAD0F670(v53, v51 + v48[6]);
  *(v51 + v48[7]) = 0x3FF0000000000000;
  *(v51 + v48[8]) = v54;
  *(v51 + v48[9]) = v42;
  *(v51 + v48[10]) = 0;
  v55 = v73;
  *v72 = v49;
  v56 = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for TypedVectorizedProperties(0, v56, v57, v58);
  (*(*(v59 - 8) + 8))(v81, v59);
  return (*(v70 + 8))(v74, v55);
}

uint64_t sub_1AAF395A8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v103 = a1;
  v108 = a8;
  v107 = a7;
  v106 = a6;
  v110 = a5;
  v105 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = (&v101 - v14);
  v104 = a10;
  v16 = sub_1AAF8FC84();
  v109 = v13;
  v17 = *(v13 + 16);
  v111 = v15;
  v112 = AssociatedTypeWitness;
  v17(v15);
  v16(&v138, 0);
  v19 = *(a4 + 24);
  if (v19 != 1)
  {
    v21 = *(a4 + 32);
    v20 = *(a4 + 40);
    *&v102 = v20;
    v22 = *(a4 + 8);
    v23 = *(a4 + 16);
    v25 = *(a4 + 48);
    *&v138 = *a4;
    v24 = v138;
    *(&v138 + 1) = v22;
    *v139 = v23;
    *&v139[8] = v19;
    *&v139[16] = v21;
    *&v139[24] = v20;
    v139[32] = v25;
    sub_1AADA61DC(v138, v22, v23, v19);
    sub_1AAD3CEFC(v21, v20, v25);
    v27 = type metadata accessor for VisualMapper(0, v112, MEMORY[0x1E69E7DE0], v26);
    sub_1AAF31D00(v111, v27, &v130, v28);
    sub_1AADA6198(v24, v22, v23, v19);
    sub_1AAD3D014(v21, v102, v25);
    v29 = v130;
    v30 = v110 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    *(v30 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 52)) = v29;
  }

  v31 = *(a4 + 80);
  if (v31 != 1)
  {
    v33 = *(a4 + 88);
    v32 = *(a4 + 96);
    v35 = *(a4 + 64);
    v34 = *(a4 + 72);
    v36 = *(a4 + 56);
    v37 = *(a4 + 104);
    *&v138 = v36;
    *(&v138 + 1) = v35;
    *v139 = v34;
    *&v139[8] = v31;
    *&v139[16] = v33;
    *&v139[24] = v32;
    *&v102 = v32;
    v139[32] = v37;
    *(&v131 + 1) = MEMORY[0x1E697E0B8];
    *&v132 = MEMORY[0x1E697E0A8];
    sub_1AADA61DC(v36, v35, v34, v31);
    sub_1AAD3CF48(v33, v32, v37);
    v39 = type metadata accessor for VisualMapper(0, v112, MEMORY[0x1E697E0B8], v38);
    sub_1AAF31D00(v111, v39, &v130, v40);
    sub_1AADA6198(v36, v35, v34, v31);
    sub_1AAD2C0B8(v33, v102, v37);
    BYTE8(v132) = 1;
    v41 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    v42 = v110;
    swift_beginAccess();
    sub_1AAF3A0A0(&v130, v42 + v41, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    swift_endAccess();
  }

  v43 = *(a4 + 136);
  v44 = v111;
  if (v43 != 1)
  {
    v138 = *(a4 + 112);
    *v139 = *(a4 + 128);
    *&v139[8] = v43;
    v45 = *(a4 + 160);
    *&v139[16] = *(a4 + 144);
    *&v139[32] = v45;
    *&v139[41] = *(a4 + 169);
    v46 = type metadata accessor for VisualMapper(0, v112, MEMORY[0x1E697DD48], v18);
    sub_1AAF31D00(v44, v46, &v130, v47);
    v101 = v131;
    v102 = v130;
    v48 = v132;
    v49 = v110 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v50 = v101;
    *(v49 + 48) = v102;
    *(v49 + 64) = v50;
    *(v49 + 80) = v48;
  }

  v51 = type metadata accessor for VisualMapper(255, v112, &type metadata for AnyChartSymbolShape, v18);
  v52 = sub_1AAF8FE74();
  v53 = *(v52 - 8);
  (*(v53 + 16))(&v130, a4 + 192, v52);
  if (*(&v131 + 1) == 1)
  {
    (*(v53 + 8))(&v130, v52);
  }

  else
  {
    *&v139[16] = v132;
    *&v139[32] = v133[0];
    *&v139[41] = *(v133 + 9);
    v138 = v130;
    *v139 = v131;
    v56 = sub_1AAF31D00(v44, v51, &v130, v54);
    (*(*(v51 - 8) + 8))(&v138, v51, v56);
    BYTE8(v132) = 0;
    v57 = v110 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    sub_1AAF3A0A0(&v130, v57 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
    swift_endAccess();
  }

  v58 = *(a4 + 320);
  if (v58 <= 0xFB)
  {
    v59 = *(a4 + 280);
    v61 = *(a4 + 288);
    v60 = *(a4 + 296);
    v63 = *(a4 + 304);
    v62 = *(a4 + 312);
    *&v138 = *(a4 + 272);
    *(&v138 + 1) = v59;
    *v139 = v61;
    *&v139[8] = v60;
    *&v139[16] = v63;
    *&v139[24] = v62;
    if ((v58 & 0x80) != 0)
    {
      v139[32] = v58 & 0x7F;
      type metadata accessor for CGSize(255);
      v71 = type metadata accessor for VisualMapper(0, v112, v69, v70);
      sub_1AAF31D00(v44, v71, &v130, v72);
      v66 = *(&v130 + 1);
      v68 = v130;
      v67 = 1;
    }

    else
    {
      v139[32] = v58;
      v64 = type metadata accessor for VisualMapper(0, v112, MEMORY[0x1E69E7DE0], v55);
      sub_1AAF31D00(v44, v64, &v130, v65);
      v66 = 0;
      v67 = 0;
      v68 = v130;
    }

    v73 = v110 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    *(v73 + 136) = v68;
    *(v73 + 144) = v66;
    *(v73 + 152) = v67;
    v44 = v111;
  }

  v74 = *(a4 + 408);
  v75 = *(a4 + 440);
  v135 = *(a4 + 424);
  v136 = v75;
  v76 = *(a4 + 344);
  v77 = *(a4 + 376);
  v132 = *(a4 + 360);
  v133[0] = v77;
  v78 = *(a4 + 376);
  v79 = *(a4 + 408);
  v133[1] = *(a4 + 392);
  v134 = v79;
  v80 = *(a4 + 344);
  v130 = *(a4 + 328);
  v131 = v80;
  v81 = *(a4 + 440);
  *&v139[80] = v135;
  *&v139[96] = v81;
  *&v139[16] = v132;
  *&v139[32] = v78;
  *&v139[48] = v133[1];
  *&v139[64] = v74;
  v137 = *(a4 + 456);
  v139[112] = *(a4 + 456);
  v138 = v130;
  *v139 = v76;
  if (sub_1AAF3A07C(&v138) != 1)
  {
    *&v102 = swift_getKeyPath();
    v119 = *&v139[72];
    v120[0] = *&v139[88];
    *(v120 + 9) = *&v139[97];
    v115 = *&v139[8];
    v116 = *&v139[24];
    v117 = *&v139[40];
    v118 = *&v139[56];
    v123[2] = v132;
    v123[3] = v133[0];
    v123[0] = v130;
    v123[1] = v131;
    v124 = v137;
    v123[6] = v135;
    v123[7] = v136;
    v123[4] = v133[1];
    v123[5] = v134;
    v83 = v112;
    v86 = type metadata accessor for TypedVectorizedProperties.Position(255, v112, v84, v85);
    v87 = sub_1AAF8FE74();
    v88 = *(v87 - 8);
    (*(v88 + 16))(v113, &v130, v87);
    (*(*(v86 - 8) + 16))(v113, v123, v86);
    v90 = type metadata accessor for VisualMapper(0, v83, &type metadata for AnyPlottableValue, v89);
    sub_1AAF31D00(v44, v90, v121, v91);
    v113[4] = v119;
    v114[0] = v120[0];
    *(v114 + 9) = *(v120 + 9);
    v113[0] = v115;
    v113[1] = v116;
    v113[2] = v117;
    v113[3] = v118;
    (*(*(v90 - 8) + 8))(v113, v90);
    v127 = v121[2];
    v128 = v121[3];
    v129 = v122;
    v125 = v121[0];
    v126 = v121[1];
    v92 = *(&v138 + 1);
    LOBYTE(v90) = v139[0];
    swift_beginAccess();
    v117 = v127;
    v118 = v128;
    v115 = v125;
    v116 = v126;
    *&v119 = v129;
    *(&v119 + 1) = v92;
    LOBYTE(v120[0]) = v90;
    swift_setAtWritableKeyPath();
    swift_endAccess();

    (*(v88 + 8))(&v130, v87);
  }

  v93 = type metadata accessor for Vectorizer(0, v104, v105, v82);
  v94 = v106 + *(v93 + 40);
  v95 = *v94;
  v96 = *(v94 + 8);
  LOBYTE(v123[0]) = v107 & 1;
  *(&v123[0] + 1) = v108;
  v95(v113, v123, v44, *a9);
  v97 = *&v113[0];
  if (*&v113[0] != 0xE000000000000000)
  {
    v44 = v103;
    v96 = *v103;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  result = (*(v109 + 8))(v44, v112);
  while (__OFADD__(*a9, 1))
  {
    __break(1u);
LABEL_26:
    v96 = sub_1AAD04BDC(0, *(v96 + 2) + 1, 1, v96);
LABEL_20:
    v100 = *(v96 + 2);
    v99 = *(v96 + 3);
    if (v100 >= v99 >> 1)
    {
      v96 = sub_1AAD04BDC((v99 > 1), v100 + 1, 1, v96);
    }

    result = (*(v109 + 8))(v111, v112);
    *(v96 + 2) = v100 + 1;
    *&v96[8 * v100 + 32] = v97;
    *v44 = v96;
  }

  ++*a9;
  return result;
}

uint64_t sub_1AAF3A000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF3A07C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF3A0A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3C2A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF3A170(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3C2A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF3A1F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAF3C2A4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AAF3A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
  }

  else if (!a6)
  {
  }

  return result;
}

double sub_1AAF3A300(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
    v9 = a7 & 0x7F;
  }

  else
  {
    v9 = a7;
  }

  sub_1AADA6198(a1, a2, a3, a4);

  return sub_1AAD3D014(a5, a6, v9);
}

double sub_1AAF3A35C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10 == 2 || a10 == 1)
  {
  }

  else if (!a10)
  {
    sub_1AAD04750(a1, a2, a3 & 1);

    sub_1AAD0E818(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAF3A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = *(type metadata accessor for AnyConcreteScale(0, v8, a2, a3) - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for PlottableProjection(0, v7, v9, v10) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4 + ((v15 + *(v14 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_1AAF31754(a1, v4 + v12, v4 + v15, v16, v7, v8, v9, v10, a4);
}

void sub_1AAF3A580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 520);
  v3 = *(a1 + 528);
  v4 = *(a1 + 536);
  v5 = *(a1 + 544);
  v6 = *(a1 + 552);
  v7 = *(a1 + 560);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = *(a1 + 568);
  *(a2 + 48) = v8;
  sub_1AAD3B168(v2, v3, v4, v5, v6, v7, v8);
}

double sub_1AAF3A5D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 464);
  v2 = *(a1 + 472);
  v4 = *(a1 + 480);
  v5 = *(a1 + 488);
  v6 = *(a1 + 496);
  v7 = *(a1 + 504);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = *(a1 + 512);
  *(a2 + 48) = v8;
  return sub_1AAF3A70C(v3, v2, v4, v5, v6, v7, v8);
}

double sub_1AAF3A6BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(a1, a2, a3, a4);
    return sub_1AAE0FD00(a5, a6, a7);
  }

  return result;
}

double sub_1AAF3A70C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA61DC(a1, a2, a3, a4);

    return sub_1AAE0FCD0(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAF3A780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AAF3A81C()
{
  result = qword_1EB427228[0];
  if (!qword_1EB427228[0])
  {
    sub_1AAD04B78(255, &qword_1ED9B2A80, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427228);
  }

  return result;
}

uint64_t sub_1AAF3A8E4(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *a1;
  v9 = *(v1 + 16);
  v10 = v3;
  v11 = *(v1 + 48);
  v12 = v4;
  type metadata accessor for XYRenderer(255, &v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

double sub_1AAF3A9A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a4 != 1)
  {
    sub_1AADA61DC(a1, a2, a3, a4);

    return sub_1AAD3CF48(a5, a6, a7);
  }

  return result;
}

void sub_1AAF3AA3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AAF3C2A4(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF3AA98(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAF3AA3C(0, a3, a4, a5, type metadata accessor for AnyConcreteScale);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAF3AB7C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1AAE922E8(*(v4 + 72), *(v4 + 80), *(v4 + 16), a1, *(v4 + 40), *(v4 + 48), a2, a3);
  *a4 = result;
  a4[1] = v7;
  return result;
}

unint64_t sub_1AAF3ABD4()
{
  result = qword_1ED9B3A28[0];
  if (!qword_1ED9B3A28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED9B3A28);
  }

  return result;
}

BOOL sub_1AAF3AC38(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = sub_1AACB6398(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = *(*(a2 + 56) + 72 * v3 + 40);
  v6 = v5 >> 8 > 0xFE;
  v7 = v5 & 0xFF00;
  return v6 || v7 == 768;
}

double sub_1AAF3ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 != 255)
  {
    return sub_1AAD31A5C(a11, a12 & 1);
  }

  return result;
}

double sub_1AAF3AD20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for PlottableProjection(0, v5, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  *&result = sub_1AAF31B48(a1, v9, v5, v6, v7, a2).n128_u64[0];
  return result;
}

void sub_1AAF3ADC8(_OWORD *a1)
{
  v1 = a1[2];
  v8 = a1[1];
  v9 = v1;
  v10 = a1[3];
  v2 = type metadata accessor for XYRenderer(319, &v8);
  if (v3 <= 0x3F)
  {
    v11 = 0;
    *&v8 = v2;
    *(&v8 + 1) = MEMORY[0x1E69E63B0];
    sub_1AAD04B78(319, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
    if (v5 <= 0x3F)
    {
      v12 = 0;
      *&v9 = v4;
      *(&v9 + 1) = v4;
      sub_1AAF3AA3C(319, &qword_1EB4272B0, qword_1EB4272B8, MEMORY[0x1E697E0B8], type metadata accessor for RepeatedValueCollection);
      if (v7 <= 0x3F)
      {
        v13 = 0;
        *&v10 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAF3AEDC(int *a1, unsigned int a2, void *a3)
{
  v51 = a3[2];
  v4 = *(v51 - 8);
  v5 = *(a3[3] - 8);
  v6 = *(v4 + 84);
  v7 = *(v5 + 80);
  v8 = *(sub_1AAF8CB94() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_1AAF8CBA4() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v11 | v9 | v7;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v5 + 64);
  if (((v16 + v7) & ~v7) + v16 > v16)
  {
    v16 += (v16 + v7) & ~v7;
  }

  v17 = (*(v8 + 64) + v11 + ((v9 + 8) & ~v9)) & ~v11;
  v18 = *(v10 + 64);
  v19 = v17 + v18;
  if (v16 <= v17 + v18)
  {
    v20 = v17 + v18;
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + v15;
  if (v21 + 1 > ((v21 + 1 + v14) & ~v14) + v21 + 1)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = ((v21 + 1 + v14) & ~v14) + v21 + 1;
  }

  v23 = (v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v22 <= v23 + 113)
  {
    v22 = v23 + 113;
  }

  v24 = v23 + 49;
  if (v22 > v24)
  {
    v24 = v22;
  }

  if (v24 <= 0x19)
  {
    v25 = 25;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(a3[4] - 8);
  v27 = *(v26 + 80);
  v28 = v12 | v27;
  v29 = v28 | 7;
  v30 = (v28 + 32) & ~(v28 | 7);
  v31 = *(v26 + 64);
  if (((v31 + v27) & ~v27) + v31 > v31)
  {
    v31 += (v31 + v27) & ~v27;
  }

  if (v31 <= v19)
  {
    v31 = v19;
  }

  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = v31 + v30;
  if (v32 + 1 > ((v32 + 1 + v29) & ~v29) + v32 + 1)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = ((v32 + 1 + v29) & ~v29) + v32 + 1;
  }

  v34 = (v32 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33 <= v34 + 113)
  {
    v33 = v34 + 113;
  }

  v35 = v34 + 49;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v35 <= 0x19)
  {
    v36 = 25;
  }

  else
  {
    v36 = v35;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v37 = 0x7FFFFFFF;
  }

  else
  {
    v37 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v38 = *(v4 + 64) + v14;
  v39 = v25 + 1;
  if (v37 >= a2)
  {
    goto LABEL_60;
  }

  v40 = ((((((((((v36 + ((v39 + v29 + (v38 & ~v14)) & ~v29) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v41 = v40 & 0xFFFFFFF8;
  if ((v40 & 0xFFFFFFF8) != 0)
  {
    v42 = 2;
  }

  else
  {
    v42 = a2 - v37 + 1;
  }

  if (v42 >= 0x10000)
  {
    v43 = 4;
  }

  else
  {
    v43 = 2;
  }

  if (v42 < 0x100)
  {
    v43 = 1;
  }

  if (v42 >= 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    v47 = v45 - 1;
    if (v41)
    {
      v47 = 0;
      v48 = *a1;
    }

    else
    {
      v48 = 0;
    }

    return v37 + (v48 | v47) + 1;
  }

  if (v44)
  {
    v45 = *(a1 + v40);
    if (v45)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  if (v6 < 0x7FFFFFFF)
  {
    v50 = *((v36 + 1 + ((((a1 + v38) & ~v14) + v29 + v39) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v50 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    return (v50 + 1);
  }

  else
  {
    v49 = *(v4 + 48);

    return v49(a1, v6, v51);
  }
}

void sub_1AAF3B32C(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v6 = *(a4[3] - 8);
  v7 = *(v51 + 84);
  v8 = *(v6 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = sub_1AAF8CBA4();
  v12 = v7;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v14 | v10;
  v16 = v14 | v10 | v8;
  v17 = v16 | 7;
  v18 = (v16 + 32) & ~(v16 | 7);
  v19 = *(v6 + 64);
  if (((v19 + v8) & ~v8) + v19 > v19)
  {
    v19 += (v19 + v8) & ~v8;
  }

  v20 = (*(v9 + 64) + v14 + ((v10 + 8) & ~v10)) & ~v14;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  if (v19 <= v20 + v21)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= 0x10)
  {
    v23 = 16;
  }

  v24 = v23 + v18;
  if (v24 + 1 > ((v24 + 1 + v17) & ~v17) + v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = ((v24 + 1 + v17) & ~v17) + v24 + 1;
  }

  v26 = (v24 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25 <= v26 + 113)
  {
    v25 = v26 + 113;
  }

  v27 = v26 + 49;
  if (v25 > v27)
  {
    v27 = v25;
  }

  if (v27 <= 0x19)
  {
    v28 = 25;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(a4[4] - 8);
  v30 = *(v29 + 80);
  v31 = v15 | v30;
  v32 = v31 | 7;
  v33 = (v31 + 32) & ~(v31 | 7);
  v34 = *(v29 + 64);
  if (((v34 + v30) & ~v30) + v34 > v34)
  {
    v34 += (v34 + v30) & ~v30;
  }

  if (v34 <= v22)
  {
    v34 = v22;
  }

  if (v34 <= 0x10)
  {
    v34 = 16;
  }

  v35 = v34 + v33;
  if (v35 + 1 > ((v35 + 1 + v32) & ~v32) + v35 + 1)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = ((v35 + 1 + v32) & ~v32) + v35 + 1;
  }

  v37 = (v35 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v36 <= v37 + 113)
  {
    v36 = v37 + 113;
  }

  v38 = v37 + 49;
  if (v36 > v38)
  {
    v38 = v36;
  }

  if (v38 <= 0x19)
  {
    v38 = 25;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v7;
  }

  v40 = *(v51 + 64) + v17;
  v41 = v28 + 1;
  v42 = ((((((((((v38 + ((v28 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v39 >= a3)
  {
    v45 = 0;
  }

  else
  {
    if (((((((((((v38 + ((v28 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v43 = a3 - v39 + 1;
    }

    else
    {
      v43 = 2;
    }

    if (v43 >= 0x10000)
    {
      v44 = 4;
    }

    else
    {
      v44 = 2;
    }

    if (v43 < 0x100)
    {
      v44 = 1;
    }

    if (v43 >= 2)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  if (a2 > v39)
  {
    if (v42)
    {
      v46 = 1;
    }

    else
    {
      v46 = a2 - v39;
    }

    if (v42)
    {
      v47 = ~v39 + a2;
      bzero(a1, v42);
      *a1 = v47;
    }

    if (v45 > 1)
    {
      if (v45 == 2)
      {
        *(a1 + v42) = v46;
      }

      else
      {
        *(a1 + v42) = v46;
      }
    }

    else if (v45)
    {
      *(a1 + v42) = v46;
    }

    return;
  }

  if (v45 > 1)
  {
    if (v45 != 2)
    {
      *(a1 + v42) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_67;
    }

    *(a1 + v42) = 0;
  }

  else if (v45)
  {
    *(a1 + v42) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    return;
  }

LABEL_67:
  if (v12 < 0x7FFFFFFF)
  {
    v49 = ((v38 + 1 + ((((a1 + v40) & ~v17) + v32 + v41) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v50 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v50 = a2 - 1;
    }

    *v49 = v50;
  }

  else
  {
    v48 = *(v51 + 56);

    v48(a1);
  }
}

unint64_t sub_1AAF3B7B4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_1AAF90774();
    if (v3 <= 0x3F)
    {
      v1 = sub_1AACFDCAC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1AAF3B854(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AAF3B96C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AAF3BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BBC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 713))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1AAF3BC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 712) = 0;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 713) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 713) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAF3BD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BD78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 49))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 48) >> 1) & 0x3E | (*(a1 + 48) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAF3BDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_1AAF3BE74(uint64_t a1)
{
  sub_1AAF3C2A4(319, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    type metadata accessor for VisualMapper.Mapping(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAF3BF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v6 = 8 * v5;
  if (v5 > 3)
  {
    goto LABEL_6;
  }

  v9 = (a2 - 2147483646 + ~(-1 << v6)) >> v6;
  if (v9 > 0xFFFE)
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = *(a1 + 3);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    if ((v11 + 1) >= 2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFE)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 0x7FFFFFFF;
}

void sub_1AAF3C094(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = v6 + (((*(v5 + 80) & 0xF8) + 39) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 1;
  if (a3 < 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = (a3 - 2147483646 + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v11 > 0xFFFE)
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0xFF)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0x7FFFFFFE)
  {
    v9 = a2 - 0x7FFFFFFF;
    if (v7 >= 4)
    {
      bzero(a1, v7);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v7)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *(a1 + 3) = a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1AAF3C2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1AAF3C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = *v3;
  (*(v7 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_dynamicCast();
  v9[0] = v9[2];
  v9[1] = v9[3];
  v6(v9);

  return result;
}

uint64_t sub_1AAF3C45C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(&v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v29)
  {
    case 1:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A80;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 2:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A54;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 3:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A18;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 4:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF419DC;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 5:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF419B0;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 6:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41984;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 7:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41958;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 8:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF4191C;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 9:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF4189C;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 10:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41814;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 11:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41870;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 12:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41AD8;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 13:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41B04;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 14:
      result = sub_1AAF902C4();
      __break(1u);
      return result;
    default:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41AAC;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
  }
}

uint64_t sub_1AAF3CB18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(&v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v24 == 14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v18 = *(a3 + 24);
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = v6;
    v23 = a2;
    return sub_1AACB00E0(sub_1AAF40494, &v17, a4, v18, MEMORY[0x1E69E73E0], *(*(a6 + 8) + 8), MEMORY[0x1E69E7410], v15);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF3CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = sub_1AACD78AC(a1, a3, a4);
  if (v8 >= 2u)
  {
    result = sub_1AACCA728(v6, v7, 2);
    __break(1u);
  }

  else
  {
    v10 = v6;
    return v5(&v10);
  }

  return result;
}

uint64_t sub_1AAF3CD40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[11] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 16))(&v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v22 == 13)
  {
    MEMORY[0x1EEE9AC00](v17);
    v21[2] = *(a5 + 24);
    v21[3] = a6;
    v21[4] = a7;
    v21[5] = a8;
    v21[6] = a2;
    v21[7] = a3;
    v21[8] = a4;
    v21[9] = v21[10];
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return sub_1AACB00E0(sub_1AAF4234C, v21, a6, TupleTypeMetadata2, MEMORY[0x1E69E73E0], *(*(a8 + 8) + 8), MEMORY[0x1E69E7410], v19);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF3CF20(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v300 = a6;
  v306 = a5;
  v299 = a1;
  v9 = *a2;
  v305 = a2;
  v10 = v9;
  v11 = *(a3 + 24);
  v272 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v271 = &v254 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v296 = sub_1AAF8FE74();
  v274 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v273 = &v254 - v15;
  v297 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v270 = &v254 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v302 = &v254 - v19;
  v20 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  v268 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v254 - v22;
  v24 = *v23;
  v298 = *(*v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v254 - v26;
  v28 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v267 = &v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v266 = &v254 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v280 = &v254 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v265 = &v254 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v264 = &v254 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v263 = &v254 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v262 = &v254 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v261 = &v254 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v260 = &v254 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v259 = &v254 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v258 = &v254 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v257 = &v254 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v256 = &v254 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v255 = &v254 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v254 = &v254 - v57;
  v308 = a4;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v254 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = a7;
  v278 = *(*(*(a7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v277 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v295 = (&v254 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63);
  v294 = (&v254 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v293 = &v254 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v292 = (&v254 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v291 = (&v254 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v290 = (&v254 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v289 = &v254 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v288 = &v254 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v287 = &v254 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v286 = &v254 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v282 = &v254 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v285 = &v254 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v284 = &v254 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v281 = &v254 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v283 = &v254 - v90;
  v91 = swift_allocObject();
  v311 = v11;
  *(v91 + 16) = sub_1AAF8A48C(v11);
  v276 = v91 + 16;
  v301 = v91;
  *(v91 + 24) = v92;
  v93 = swift_allocObject();
  v310 = v93;
  *(v93 + 16) = 1;
  v269 = (v93 + 16);
  v309 = swift_allocBox();
  v94 = *(v297 + 56);
  v275 = v95;
  v279 = v14;
  v94(v95, 1, 1, v14);
  v96 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v98 = *(AssociatedConformanceWitness + 16);
  v304 = v96;
  v98(&v317, v96, AssociatedConformanceWitness);
  v99 = v317;
  (*(v58 + 16))(v61, v299);
  v299 = (v298 + 48);
  switch(v99)
  {
    case 1:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v147 = swift_getAssociatedConformanceWitness();
      v148 = v257;
      v149 = v147;
      sub_1AAF8FE94();
      v295 = *v299;
      v150 = v295(v148, 1, v24);
      v105 = v279;
      if (v150 == 1)
      {
        v106 = &v317;
        goto LABEL_32;
      }

      v209 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v209 - 24);
      v293 = (v268 + 8);
      v292 = (v297 + 8);
      v133 = v312;
      v291 = v149;
      do
      {
        v210 = v209;
        (v298)(v27, v148, v24);
        v211 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v211, v304, MEMORY[0x1E69E7290], &v320);
        v212 = (*v293)(v211, v20);
        v212.n128_u16[0] = LOWORD(v320);
        v320 = vmovl_s16(v212.n128_u64[0]).i32[0];
        v213 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v213, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v292)(v213, v105);
        sub_1AAF8FE94();
        v133 = v312;
        v214 = v295(v148, 1, v24);
        v209 = v210;
      }

      while (v214 != 1);
      p_AssociatedTypeWitness = &v317;
      goto LABEL_79;
    case 2:
      v127 = v282;
      sub_1AAF8F744();
      v128 = AssociatedTypeWitness;
      v129 = swift_getAssociatedConformanceWitness();
      v130 = v258;
      v295 = v129;
      sub_1AAF8FE94();
      v294 = *v299;
      v131 = v294(v130, 1, v24);
      v105 = v279;
      if (v131 == 1)
      {
        v132 = v127;
        v134 = v311;
        v133 = v312;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
        v100 = v128;
        goto LABEL_80;
      }

      v195 = v298 + 32;
      v298 = *(v298 + 32);
      v293 = (v195 - 24);
      v292 = (v268 + 8);
      v291 = (v297 + 8);
      v133 = v312;
      v196 = v301;
      do
      {
        (v298)(v27, v130, v24);
        v197 = v303;
        swift_getAtKeyPath();
        (*v293)(v27, v24);
        sub_1AACB09D0(v197, v304, MEMORY[0x1E69E72F0], &v320);
        (*v292)(v197, v20);
        v320 = SLODWORD(v320);
        v198 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v198, v309, v310, v196, v133, v105, v311, v20, v308, v306);
        (*v291)(v198, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v294(v130, 1, v24) != 1);
      p_AssociatedTypeWitness = v314;
      goto LABEL_79;
    case 3:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v139 = swift_getAssociatedConformanceWitness();
      v140 = v259;
      v141 = v139;
      sub_1AAF8FE94();
      v295 = *v299;
      v142 = v295(v140, 1, v24);
      v105 = v279;
      if (v142 == 1)
      {
        v106 = &v318;
        goto LABEL_32;
      }

      v199 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v199 - 24);
      v293 = (v268 + 8);
      v292 = v141;
      v291 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v140, v24);
        v200 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v200, v304, MEMORY[0x1E69E7360], &v320);
        (*v293)(v200, v20);
        v320 = *&v320;
        v201 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v201, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v291)(v201, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v140, 1, v24) != 1);
      p_AssociatedTypeWitness = &v318;
      goto LABEL_79;
    case 4:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v115 = swift_getAssociatedConformanceWitness();
      v116 = v260;
      v117 = v115;
      sub_1AAF8FE94();
      v295 = *v299;
      v118 = v295(v116, 1, v24);
      v105 = v279;
      if (v118 == 1)
      {
        v106 = &v319;
        goto LABEL_32;
      }

      v180 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v180 - 24);
      v293 = (v268 + 8);
      v292 = v117;
      v291 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v116, v24);
        v181 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v181, v304, MEMORY[0x1E69E6530], &v320);
        (*v293)(v181, v20);
        v320 = *&v320;
        v182 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v182, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v291)(v182, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v116, 1, v24) != 1);
      p_AssociatedTypeWitness = &v319;
      goto LABEL_79;
    case 5:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v151 = swift_getAssociatedConformanceWitness();
      v152 = v261;
      v153 = v151;
      sub_1AAF8FE94();
      v295 = *v299;
      v154 = v295(v152, 1, v24);
      v105 = v279;
      if (v154 == 1)
      {
        v106 = &v320;
        goto LABEL_32;
      }

      v215 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v215 - 24);
      v293 = (v268 + 8);
      v292 = v153;
      v291 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v152, v24);
        v216 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v216, v304, MEMORY[0x1E69E7508], &v320);
        v217 = (*v293)(v216, v20);
        v217.n128_u8[0] = LOBYTE(v320);
        v320 = v217.n128_u64[0];
        v218 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v218, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v291)(v218, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v152, 1, v24) != 1);
      p_AssociatedTypeWitness = &v320;
      goto LABEL_79;
    case 6:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v158 = swift_getAssociatedConformanceWitness();
      v159 = v262;
      v160 = v158;
      sub_1AAF8FE94();
      v295 = *v299;
      v161 = v295(v159, 1, v24);
      v105 = v279;
      if (v161 == 1)
      {
        v106 = &v321;
        goto LABEL_32;
      }

      v227 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v227 - 24);
      v293 = (v268 + 8);
      v292 = v160;
      v291 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v159, v24);
        v228 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v228, v304, MEMORY[0x1E69E75F8], &v320);
        v229 = (*v293)(v228, v20);
        v229.n128_u16[0] = LOWORD(v320);
        v320 = v229.n128_u64[0];
        v230 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v230, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v291)(v230, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v159, 1, v24) != 1);
      p_AssociatedTypeWitness = &v321;
      goto LABEL_79;
    case 7:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v143 = swift_getAssociatedConformanceWitness();
      v144 = v263;
      v145 = v143;
      sub_1AAF8FE94();
      v295 = *v299;
      v146 = v295(v144, 1, v24);
      v105 = v279;
      if (v146 == 1)
      {
        v106 = &v322;
        goto LABEL_32;
      }

      v202 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v202 - 24);
      v293 = (v268 + 8);
      v292 = v145;
      v291 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v144, v24);
        v203 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v203, v304, MEMORY[0x1E69E7668], &v320);
        v204 = (*v293)(v203, v20);
        v204.n128_u32[0] = LODWORD(v320);
        v320 = v204.n128_u64[0];
        v205 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v205, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v291)(v205, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v144, 1, v24) != 1);
      p_AssociatedTypeWitness = &v322;
      goto LABEL_79;
    case 8:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v166 = swift_getAssociatedConformanceWitness();
      v167 = v264;
      v168 = v166;
      sub_1AAF8FE94();
      v295 = *v299;
      v169 = v295(v167, 1, v24);
      v105 = v279;
      if (v169 == 1)
      {
        v106 = &v323;
        goto LABEL_32;
      }

      v240 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v240 - 24);
      v293 = (v268 + 8);
      v292 = v168;
      v290 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v167, v24);
        v241 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v241, v304, MEMORY[0x1E69E76D8], &v320);
        (*v293)(v241, v20);
        v320 = *&v320;
        v242 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v242, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v290)(v242, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v167, 1, v24) != 1);
      p_AssociatedTypeWitness = &v323;
      goto LABEL_79;
    case 9:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v123 = swift_getAssociatedConformanceWitness();
      v124 = v265;
      v125 = v123;
      sub_1AAF8FE94();
      v295 = *v299;
      v126 = v295(v124, 1, v24);
      v105 = v279;
      if (v126 == 1)
      {
        v106 = &v324;
        goto LABEL_32;
      }

      v192 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v192 - 24);
      v293 = (v268 + 8);
      v291 = v125;
      v290 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v124, v24);
        v193 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v193, v304, MEMORY[0x1E69E6810], &v320);
        (*v293)(v193, v20);
        v320 = *&v320;
        v194 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v194, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v290)(v194, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v124, 1, v24) != 1);
      p_AssociatedTypeWitness = &v324;
      goto LABEL_79;
    case 10:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v162 = swift_getAssociatedConformanceWitness();
      v163 = v267;
      v164 = v162;
      sub_1AAF8FE94();
      v294 = *v299;
      v165 = v294(v163, 1, v24);
      v105 = v279;
      if (v165 == 1)
      {
        v134 = v311;
        v133 = v312;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
      }

      else
      {
        v231 = v298 + 32;
        v298 = *(v298 + 32);
        v293 = (v231 - 24);
        v292 = (v268 + 8);
        v291 = v164;
        v290 = (v297 + 8);
        v133 = v312;
        do
        {
          (v298)(v27, v163, v24);
          v232 = v303;
          swift_getAtKeyPath();
          (*v293)(v27, v24);
          sub_1AACB09D0(v232, v304, MEMORY[0x1E69E7788], &v320);
          (*v292)(v232, v20);
          _H0 = LOWORD(v320);
          __asm { FCVT            D0, H0 }

          v320 = _D0;
          v239 = v302;
          swift_dynamicCast();
          sub_1AAF41B30(v239, v309, v310, v301, v133, v105, v311, v20, v308, v306);
          (*v290)(v239, v105);
          sub_1AAF8FE94();
          v133 = v312;
        }

        while (v294(v163, 1, v24) != 1);
        v134 = v311;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
        v100 = AssociatedTypeWitness;
      }

      v132 = v295;
      goto LABEL_80;
    case 11:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v111 = swift_getAssociatedConformanceWitness();
      v112 = v266;
      v113 = v111;
      sub_1AAF8FE94();
      v295 = *v299;
      v114 = v295(v112, 1, v24);
      v105 = v279;
      if (v114 == 1)
      {
        v106 = &v326;
        goto LABEL_32;
      }

      v177 = v298 + 32;
      v298 = *(v298 + 32);
      v293 = (v177 - 24);
      v292 = (v268 + 8);
      v291 = v113;
      v290 = (v297 + 8);
      v133 = v312;
      do
      {
        (v298)(v27, v112, v24);
        v178 = v303;
        swift_getAtKeyPath();
        (*v293)(v27, v24);
        sub_1AACB09D0(v178, v304, MEMORY[0x1E69E6448], &v320);
        (*v292)(v178, v20);
        v320 = *&v320;
        v179 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v179, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v290)(v179, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v112, 1, v24) != 1);
      p_AssociatedTypeWitness = &v326;
      goto LABEL_79;
    case 12:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v119 = swift_getAssociatedConformanceWitness();
      v120 = v280;
      v121 = v119;
      sub_1AAF8FE94();
      v295 = *v299;
      v122 = v295(v120, 1, v24);
      v105 = v279;
      if (v122 == 1)
      {
        v106 = &v325;
        goto LABEL_32;
      }

      v294 = *(v298 + 32);
      v292 = (v298 + 8);
      v291 = (v268 + 8);
      v290 = (v297 + 8);
      v133 = v312;
      v289 = v121;
      v298 += 32;
      v183 = MEMORY[0x1E69E63B0];
      do
      {
        v184 = v280;
        v294(v27, v280, v24);
        v185 = v303;
        swift_getAtKeyPath();
        (*v292)(v27, v24);
        v186 = v185;
        v187 = v105;
        v188 = v24;
        v189 = v27;
        v190 = v185;
        v191 = v302;
        sub_1AACB09D0(v186, v304, v183, &v320);
        (*v291)(v190, v20);
        v27 = v189;
        v24 = v188;
        v105 = v187;
        swift_dynamicCast();
        sub_1AAF41B30(v191, v309, v310, v301, v133, v187, v311, v20, v308, v306);
        (*v290)(v191, v187);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v184, 1, v24) != 1);
      p_AssociatedTypeWitness = &v325;
      goto LABEL_79;
    case 13:
      v155 = v281;
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v156 = swift_getAssociatedConformanceWitness();
      v157 = v255;
      sub_1AAF8FE94();
      v295 = *v299;
      if (v295(v157, 1, v24) == 1)
      {
        v132 = v155;
        v134 = v311;
        v133 = v312;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
        v105 = v279;
        goto LABEL_80;
      }

      v219 = v157;
      v294 = v156;
      v220 = v298 + 32;
      v298 = *(v298 + 32);
      v293 = (v220 - 24);
      v292 = (v268 + 8);
      v221 = v300;
      v222 = (v297 + 8);
      v133 = v312;
      v105 = v279;
      do
      {
        (v298)(v27, v219, v24);
        v223 = v303;
        swift_getAtKeyPath();
        (*v293)(v27, v24);
        sub_1AACB0534(v223, v304, v20, v221);
        v225 = v224;
        (*v292)(v223, v20);
        v320 = v225;
        v226 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v226, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v222)(v226, v105);
        sub_1AAF8FE94();
        v133 = v312;
      }

      while (v295(v219, 1, v24) != 1);
      p_AssociatedTypeWitness = &AssociatedTypeWitness;
      goto LABEL_79;
    case 14:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v107 = swift_getAssociatedConformanceWitness();
      v108 = v254;
      v109 = v107;
      sub_1AAF8FE94();
      v295 = *v299;
      v110 = v295(v108, 1, v24);
      v105 = v279;
      if (v110 == 1)
      {
        v106 = &v315;
        goto LABEL_32;
      }

      v170 = v298 + 32;
      v298 = *(v298 + 32);
      v294 = (v170 - 24);
      v293 = (v268 + 8);
      v292 = (v297 + 8);
      v133 = v312;
      v291 = v109;
      v171 = MEMORY[0x1E69E6158];
      do
      {
        v172 = v170;
        (v298)(v27, v108, v24);
        v173 = v303;
        swift_getAtKeyPath();
        (*v294)(v27, v24);
        sub_1AACB09D0(v173, v304, v171, &v320);
        (*v293)(v173, v20);
        v174 = v302;
        swift_dynamicCast();
        sub_1AAF41B30(v174, v309, v310, v301, v133, v105, v311, v20, v308, v306);
        (*v292)(v174, v105);
        sub_1AAF8FE94();
        v133 = v312;
        v175 = v295(v108, 1, v24);
        v170 = v172;
      }

      while (v175 != 1);
      p_AssociatedTypeWitness = &v315;
      goto LABEL_79;
    default:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v101 = swift_getAssociatedConformanceWitness();
      v102 = v256;
      v103 = v101;
      sub_1AAF8FE94();
      v295 = *v299;
      v104 = v295(v102, 1, v24);
      v105 = v279;
      if (v104 == 1)
      {
        v106 = &v316;
LABEL_32:
        v132 = *(v106 - 32);
        v134 = v311;
        v133 = v312;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
      }

      else
      {
        v206 = v298 + 32;
        v298 = *(v298 + 32);
        v294 = (v206 - 24);
        v293 = (v268 + 8);
        v292 = v103;
        v291 = (v297 + 8);
        v133 = v312;
        do
        {
          (v298)(v27, v102, v24);
          v207 = v303;
          swift_getAtKeyPath();
          (*v294)(v27, v24);
          sub_1AACB09D0(v207, v304, MEMORY[0x1E69E7230], &v320);
          (*v293)(v207, v20);
          v320 = SLOBYTE(v320);
          v208 = v302;
          swift_dynamicCast();
          sub_1AAF41B30(v208, v309, v310, v301, v133, v105, v311, v20, v308, v306);
          (*v291)(v208, v105);
          sub_1AAF8FE94();
          v133 = v312;
        }

        while (v295(v102, 1, v24) != 1);
        p_AssociatedTypeWitness = &v316;
LABEL_79:
        v132 = *(p_AssociatedTypeWitness - 32);
        v134 = v311;
        v135 = v297;
        v136 = v296;
        v137 = v274;
        v138 = v273;
        v100 = AssociatedTypeWitness;
      }

LABEL_80:
      (*(v277 + 8))(v132, v100);
      v243 = v275;
      swift_beginAccess();
      (*(v137 + 16))(v138, v243, v136);
      if ((*(v135 + 48))(v138, 1, v105) == 1)
      {
        (*(v137 + 8))(v138, v136);
      }

      else
      {
        v245 = v270;
        (*(v135 + 32))(v270, v138, v105);
        v246 = v271;
        (*v133)(v245);
        v247 = v269;
        swift_beginAccess();
        v248 = *v247;
        swift_beginAccess();
        v251 = type metadata accessor for RepeatedValueCollection(0, v134, v249, v250);
        sub_1AAF8A4B4(v246, v248, v251);
        swift_endAccess();
        (*(v272 + 8))(v246, v134);
        (*(v135 + 8))(v245, v105);
      }

      v244 = v301;
      swift_beginAccess();
      v252 = *(v244 + 16);

      return v252;
  }
}

double sub_1AAF40318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E6158], v15);
  (*(v7 + 8))(v9, v6);
  v14[0] = v15[0];
  v14[1] = v15[1];
  v11(v14);

  return result;
}

uint64_t sub_1AAF404C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - v14;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE8A220(v15, a3, a4, AssociatedTypeWitness, v12, a8);
  v18 = v17;
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  swift_getTupleTypeMetadata2();
  v21 = *a5;
  v24 = v18;
  v21(&v24);
  v24 = v20;
  return (v21)(&v24);
}

uint64_t sub_1AAF40678(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v12 = *v11;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB0534(v10, AssociatedTypeWitness, v7, a6);
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v18 = v15;
  return v12(&v18);
}

uint64_t sub_1AAF407DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &v15);
  (*(v7 + 8))(v9, v6);
  v14 = v15;
  return v11(&v14);
}

uint64_t sub_1AAF40950(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E7230], &v15);
  (*(v7 + 8))(v9, v6);
  v14 = v15;
  return v11(&v14);
}

uint64_t sub_1AAF40AC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E7290], &v16);
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_u16[0] = v16;
  v15 = vmovl_s16(v13.n128_u64[0]).i32[0];
  return v11(&v15);
}

uint64_t sub_1AAF40C48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v15);
  (*(v7 + 8))(v9, v6);
  v14 = v15;
  return v11(&v14);
}

uint64_t sub_1AAF40DC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - v11;
  v14 = *v13;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v12, AssociatedTypeWitness, a9, &v18);
  (*(v10 + 8))(v12, v9);
  v18 = *&v18;
  return v14(&v18);
}

uint64_t sub_1AAF40F40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E7508], &v16);
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_u8[0] = v16;
  v15 = v13.n128_u64[0];
  return v11(&v15);
}

uint64_t sub_1AAF410B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v16);
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_u16[0] = v16;
  v15 = v13.n128_u64[0];
  return v11(&v15);
}

uint64_t sub_1AAF41230(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E7668], &v16);
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_u32[0] = v16;
  v15 = v13.n128_u64[0];
  return v11(&v15);
}

uint64_t sub_1AAF413A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - v11;
  v14 = *v13;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v12, AssociatedTypeWitness, a9, &v18);
  (*(v10 + 8))(v12, v9);
  v18 = *&v18;
  return v14(&v18);
}

uint64_t sub_1AAF41524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E6448], &v15);
  (*(v7 + 8))(v9, v6);
  v14 = v15;
  return v11(&v14);
}

uint64_t sub_1AAF4169C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v11 = *v10;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(v9, AssociatedTypeWitness, MEMORY[0x1E69E7788], &v21);
  (*(v7 + 8))(v9, v6);
  _H0 = v21;
  __asm { FCVT            D0, H0 }

  v20 = _D0;
  return v11(&v20);
}

uint64_t sub_1AAF41B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = a5;
  v64 = a4;
  v81 = a3;
  v66 = a7;
  v65 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v60 - v18;
  v19 = sub_1AAF8FE74();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v60 - v21;
  v23 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v76 = &v60 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v80 = &v60 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v60 - v31;
  v33 = swift_projectBox();
  v34 = v14[2];
  v75 = a1;
  v72 = v14 + 2;
  v70 = v34;
  v34(v32, a1, a6);
  v35 = v14[7];
  v73 = v14 + 7;
  v71 = v35;
  v35(v32, 0, 1, a6);
  swift_beginAccess();
  v68 = TupleTypeMetadata2;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v23 + 16);
  (v37)(v22, v32, v19);
  v77 = v33;
  (v37)(&v22[v36], v33, v19);
  v78 = v14;
  v38 = v14[6];
  v39 = v38(v22, 1, a6);
  v79 = v23;
  v69 = v38;
  if (v39 == 1)
  {
    v80 = v37;
    v40 = *(v23 + 8);
    v40(v32, v19);
    if (v38(&v22[v36], 1, a6) == 1)
    {
      v40(v22, v19);
      goto LABEL_13;
    }

    v42 = v77;
    v41 = v40;
    v37 = v80;
    goto LABEL_7;
  }

  (v37)(v80, v22, v19);
  if (v38(&v22[v36], 1, a6) == 1)
  {
    v41 = *(v79 + 8);
    v41(v32, v19);
    (v78[1])(v80, a6);
    v42 = v77;
LABEL_7:
    (*(v67 + 8))(v22, v68);
    v43 = v76;
LABEL_8:
    swift_beginAccess();
    (v37)(v43, v42, v19);
    if (v69(v43, 1, a6) == 1)
    {
      v44 = v79;
      v41(v43, v19);
    }

    else
    {
      v45 = v78;
      v46 = v62;
      (v78[4])(v62, v43, a6);
      v47 = v63;
      (*v61)(v46);
      v48 = v81;
      swift_beginAccess();
      v49 = *(v48 + 16);
      swift_beginAccess();
      v50 = v66;
      v53 = type metadata accessor for RepeatedValueCollection(0, v66, v51, v52);
      sub_1AAF8A4B4(v47, v49, v53);
      swift_endAccess();
      (*(v65 + 8))(v47, v50);
      (v45[1])(v46, a6);
      v44 = v79;
    }

    v54 = v74;
    v70(v74, v75, a6);
    v55 = 1;
    v71(v54, 0, 1, a6);
    swift_beginAccess();
    (*(v44 + 40))(v42, v54, v19);
    result = swift_beginAccess();
    goto LABEL_14;
  }

  v68 = a10;
  v57 = v60;
  (v78[4])(v60, &v22[v36], a6);
  LODWORD(v68) = sub_1AAF8F5F4();
  v67 = v78[1];
  (v67)(v57, a6);
  v41 = *(v79 + 8);
  v41(v32, v19);
  (v67)(v80, a6);
  v41(v22, v19);
  v43 = v76;
  v42 = v77;
  if ((v68 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v58 = v81;
  result = swift_beginAccess();
  v59 = *(v58 + 16);
  v55 = v59 + 1;
  if (!__OFADD__(v59, 1))
  {
LABEL_14:
    *(v81 + 16) = v55;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF42390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF423D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1AAF4242C(uint64_t a1, char a2, double a3, double a4, double a5)
{
  result = (a3 - a5) / a4;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((*&result & 0x8000000000000000) != 0)
      {
        v7 = 1.0 - exp(-result);
      }

      else
      {
        v7 = exp(result) + -1.0;
      }

      return v7 / *&a1;
    }

    else if (*&a1 != 0.0)
    {

      return exp(result);
    }
  }

  else
  {

    return pow(result, 1.0 / *&a1);
  }

  return result;
}

long double sub_1AAF424D8(uint64_t a1, char a2, long double a3, double a4, double a5)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v7 = a3;
      v8 = *&a1 * a3;
      if ((*&v7 & 0x8000000000000000) != 0)
      {
        a3 = -log(1.0 - v8);
      }

      else
      {
        a3 = log(v8 + 1.0);
      }
    }

    else if (*&a1 != 0.0)
    {
      a3 = log(a3);
    }
  }

  else
  {
    a3 = pow(a3, *&a1);
  }

  return a3 * a4 + a5;
}

BOOL sub_1AAF42560(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2 == 0.0)
  {
    if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 1)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1AAF425CC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = *(v3 + 24) + *&result / *(v3 + 16);
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

void sub_1AAF425F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) != 2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = *(a1 + 32);
  if (v4 <= 0.0)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 40);
  if (v5 <= 0.0)
  {
    goto LABEL_11;
  }

  if (v4 == v5)
  {
    v6 = swift_allocObject();
    v7 = 0;
    v8 = 0;
    *(v6 + 16) = v4;
    v9 = xmmword_1AAFAB900;
    v10 = sub_1AAF427F8;
    v11 = sub_1AAF42558;
  }

  else
  {
    v12 = log(*(a1 + 32));
    v14 = 1.0 / (log(v5) - v12);
    v7 = swift_allocObject();
    *(v7 + 16) = v12;
    *(v7 + 24) = v14;
    v6 = swift_allocObject();
    *&v13 = v14;
    *(v6 + 16) = v14;
    *(v6 + 24) = v12;
    *(&v13 + 1) = -(v12 * v14);
    v9 = v13;
    v10 = sub_1AAF427A4;
    v11 = sub_1AAF42774;
    v8 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v8;
  *(a2 + 48) = 2;
  *(a2 + 56) = v9;
}

long double sub_1AAF42774(long double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v3 * (log(*a1) - v2);
}

uint64_t sub_1AAF427A4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = exp(*(v3 + 24) + *&result / *(v3 + 16));
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

double sub_1AAF427F8@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

void sub_1AAF42808(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 > 0.0 && *(a1 + 16) == 2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v6 == v7)
    {
      v8 = swift_allocObject();
      v9 = 0;
      v8[2] = v6;
      v10 = xmmword_1AAFAB900;
      v11 = 0.0;
      v12 = sub_1AAF42D44;
      v13 = sub_1AAF42558;
      v14 = 2;
    }

    else
    {
      v11 = a3;
      v15 = v6 * a3;
      if ((*&v6 & 0x8000000000000000) != 0)
      {
        v16 = -log(1.0 - v15);
      }

      else
      {
        v16 = log(v15 + 1.0);
      }

      v17 = v7 * v11;
      if ((*&v7 & 0x8000000000000000) != 0)
      {
        v18 = -log(1.0 - v17);
      }

      else
      {
        v18 = log(v17 + 1.0);
      }

      v20 = 1.0 / (v18 - v16);
      v9 = swift_allocObject();
      v9[2] = v11;
      v9[3] = v16;
      v9[4] = v20;
      v8 = swift_allocObject();
      *&v19 = v20;
      v8[2] = v20;
      v8[3] = v16;
      *(&v19 + 1) = -(v16 * v20);
      v10 = v19;
      v8[4] = v11;
      v12 = sub_1AAF42C54;
      v13 = sub_1AAF42BF8;
      v14 = 1;
    }

    *a2 = v13;
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    *(a2 + 24) = v8;
    *(a2 + 32) = a1;
    *(a2 + 40) = v11;
    *(a2 + 48) = v14;
    *(a2 + 56) = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAF429CC(uint64_t a1@<X0>, uint64_t a2@<X8>, long double a3@<D0>)
{
  if (*(a1 + 16) != 2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    v11 = a3;
    v15 = pow(*(a1 + 32), a3);
    v16 = pow(v6, v11);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v17 = 1.0 / (v16 - v15);
      v9 = v17;
      if ((*&v17 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v11;
        *(v8 + 24) = v15;
        *(v8 + 32) = v17;
        v7 = swift_allocObject();
        v14 = 0;
        *(v7 + 16) = v17;
        *(v7 + 24) = v15;
        *(v7 + 32) = v11;
        v10 = -(v15 * v17);
        v12 = sub_1AAF42B98;
        v13 = sub_1AAF42B64;
        goto LABEL_7;
      }
    }

LABEL_11:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v8 = 0;
  v9 = 0.0;
  *(v7 + 16) = v5;
  v10 = 0.5;
  v11 = 0.0;
  v12 = sub_1AAF42D44;
  v13 = sub_1AAF42558;
  v14 = 2;
LABEL_7:
  *a2 = v13;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v7;
  *(a2 + 32) = a1;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
}

long double sub_1AAF42B64(long double *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v3 * (pow(*a1, *(v1 + 16)) - v2);
}

uint64_t sub_1AAF42B98@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = pow(v3[3] + *&result / v3[2], 1.0 / v3[4]);
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

double sub_1AAF42BF8(double *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2] * *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = -log(1.0 - v4);
  }

  else
  {
    v5 = log(v4 + 1.0);
  }

  return v3 * (v5 - v2);
}

uint64_t sub_1AAF42C54@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v6 = v3[4];
    v7 = v3[3] + *&result / v3[2];
    if ((*&v7 & 0x8000000000000000) != 0)
    {
      v8 = 1.0 - exp(-v7);
    }

    else
    {
      v8 = exp(v7) + -1.0;
    }

    *&result = v8 / v6;
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1AAF42CDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    result += 32;
    v5 = *(result + 24);
    v6 = *(result + 32);
    v8 = *(result + 8);
    v7 = *(result + 16);
    *a2 = v4 + (*(result + 40 * v3 - 40) - v4) * a3;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AAF42D48()
{
  v1 = *(*v0 + 256);
  v2 = sub_1AAF8FE74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 264));
  v4 = *v3;
  v5 = v3[1];

  return sub_1AACB4A98(v4, v5);
}

double sub_1AAF42DF4()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAF42E34()
{
  sub_1AAF90694();
  v0 = sub_1AAF8F5E4();
  MEMORY[0x1AC5992C0](v0);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF42EB0(uint64_t a1)
{
  sub_1AAF90694();
  v1 = sub_1AAF8F5E4();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

unint64_t sub_1AAF42EF8()
{
  result = qword_1EB4273C0;
  if (!qword_1EB4273C0)
  {
    type metadata accessor for AnySignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4273C0);
  }

  return result;
}

void sub_1AAF42FBC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = a9;
  v11 = (a6 - a3) / (a3 * 0.528665);
  v12 = 1.0;
  if (v11 < 1.0)
  {
    sub_1AAD9B024(&unk_1F1FCEE70);
    v12 = 1.0;
    v10 = a9;
  }

  v13 = (v10 - a3) / (a3 * 0.528665);
  if (v13 < v12)
  {
    sub_1AAD9B024(&unk_1F1FCEE70);
  }

  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8F4();
  sub_1AAF8E8F4();
}

void sub_1AAF43334(__n128 a1, __n128 a2)
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  sub_1AAF8E444();
}

void sub_1AAF4344C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, __n128 a9@<Q5>, __n128 a10@<Q6>, float64x2_t a11@<Q7>, float64_t a12, double a13, double a14)
{
  v124 = a11;
  v118 = a10;
  v117 = a9;
  v22 = sub_1AAF8E244();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a6;
  v119 = vabdd_f64(a7, a6);
  v27 = 0.0;
  if (a4 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = a4;
  }

  if (v28 < a5)
  {
    v29 = a5;
  }

  else
  {
    v29 = v28;
  }

  if (v119 + 2.22044605e-16 >= 6.28318531)
  {
    if (v28 >= 2.22044605e-16)
    {
      sub_1AAF8E934();
      v143 = 0x3FF0000000000000uLL;
      *&v144 = 0;
      *(&v144 + 1) = 0x3FF0000000000000;
      v145 = 0;
      v146 = 0;
      sub_1AAF8E8C4();
      sub_1AAF8E8C4();
      v53 = v139;
      v52 = v140;
      v54 = v141;
    }

    else
    {
      sub_1AAF8E924();
      v53 = v143;
      v52 = v144;
      v54 = v145;
    }

    goto LABEL_107;
  }

  v114 = a7;
  v115 = a13;
  v125 = a14;
  if (a8 > 0.0)
  {
    v30 = fmax(v29 * 0.1 * 0.5, 1.0);
    if (v30 >= a8)
    {
      v27 = a8;
    }

    else
    {
      v27 = v30;
    }
  }

  v24.f64[0] = a12;
  v123 = v24;
  v31 = v119;
  if (v119 <= 3.14159265)
  {
    v32 = v119;
  }

  else
  {
    v32 = 3.14159265;
  }

  v120 = v32;
  v122 = v29 * 0.1;
  v33 = sin(v32 * 0.5);
  v34 = v27 / v33 - v28;
  v35 = v28 + v34;
  *&v112 = v34;
  v36 = v34 < 0.0;
  v116 = v28;
  if (v34 >= 0.0)
  {
    v37 = v28 + v34;
  }

  else
  {
    v37 = v28;
  }

  if (v36)
  {
    v35 = v28 + 0.0;
  }

  v107 = v37;
  v38 = v29;
  v106 = v35;
  if (v37 < v29)
  {
    v29 = v35;
  }

  v39 = asin(v27 / v29);
  v40 = v27;
  v41 = v31 * 0.5;
  if (v31 * 0.5 < v39)
  {
    v39 = v31 * 0.5;
  }

  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  v111 = v39;
  v109 = (v38 + v29) * 0.5;
  v42 = asin(v40 / v109);
  if (v41 < v42)
  {
    v42 = v31 * 0.5;
  }

  if (v42 < 0.0)
  {
    v42 = 0.0;
  }

  v108 = v42;
  v44 = v38 * v120;
  v45 = (v38 - v29) * 0.5;
  if (v45 >= v122)
  {
    v45 = v122;
  }

  v120 = v40;
  v46 = v38 * v33 - v44 / ((v38 + v38) * v33) * v40;
  if (v46 >= v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v110 = 3.14159265;
  v122 = v38;
  v113 = v31 * 0.5;
  if (v31 >= 3.14159265)
  {
    if (v38 * 0.5 >= v47)
    {
      *&v43 = v47;
    }

    else
    {
      *&v43 = v38 * 0.5;
    }
  }

  else
  {
    v48 = fmax(*&v112, 0.0);
    *&v49 = sin(v31 * 0.5);
    *&v49 = *&v49 * (v38 - v48) / (*&v49 + 1.0);
    if (*&v49 >= v47)
    {
      *&v49 = v47;
    }

    v112 = v49;
    v50 = sin(v41 - v111);
    v43 = v112;
    v51 = v29 * v50 / (v50 + 1.0);
    if (v51 < v47)
    {
      v47 = v51;
    }
  }

  v55 = v121;
  v56 = v114;
  v57.f64[0] = v116;
  *&v58.f64[0] = v118.n128_u64[0];
  v58.f64[1] = v124.f64[0];
  if (v116 >= v47)
  {
    v57.f64[0] = v47;
  }

  v59.i64[0] = v117.n128_u64[0];
  v59.i64[1] = *&v123.f64[0];
  v60 = vbicq_s8(v58, vclezq_f64(v58));
  v61 = vbicq_s8(v59, vclezq_f64(v59));
  v112 = v43;
  *&v57.f64[1] = v43;
  v62 = vbslq_s8(vcgtq_f64(v60, v57), v57, v60);
  v63 = vbslq_s8(vcgtq_f64(v61, v57), v57, v61);
  v123 = v63;
  v124 = v62;
  if (*v63.i64 > *v62.i64)
  {
    v62.i64[0] = v63.i64[0];
  }

  v64 = asin(v120 / (v29 + *v62.i64));
  v65 = v123.f64[1];
  v66 = v115;
  if (v64 > 0.0)
  {
    v67 = v113;
    if (v113 >= v64)
    {
      v68 = v64;
    }

    else
    {
      v68 = v113;
    }

    v69 = v124.f64[1];
    if (v123.f64[1] <= v124.f64[1])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v69 = v124.f64[1];
  v68 = 0.0;
  v67 = v113;
  if (v123.f64[1] > v124.f64[1])
  {
LABEL_58:
    v69 = v123.f64[1];
  }

LABEL_59:
  v70 = asin(v120 / (v122 - v69));
  if (v70 <= 0.0)
  {
    v71 = 0.0;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v123), vceqzq_f64(v124))))))
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v67 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v67;
    }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v123), vceqzq_f64(v124))))))
    {
LABEL_64:
      v107 = v68;
      sub_1AAF8E934();
      (*(v23 + 16))(v26, a1, v22);
      v72 = (*(v23 + 88))(v26, v22);
      if (v72 != *MEMORY[0x1E697F480] && v72 != *MEMORY[0x1E697F468])
      {
        (*(v23 + 8))(v26, v22);
      }

      v73 = v110;
      v120 = 0.0174532925;
      __sincos_stret((v108 + v55) * 180.0 / v110 * 0.0174532925);
      sub_1AAF8E8A4();
      v74 = -1.0;
      if (v55 < v56)
      {
        v74 = 1.0;
      }

      v109 = v74;
      if (v122 >= 2.22044605e-12)
      {
        v78 = (v71 + v55) * 180.0 / v73;
        v105 = v29;
        if (v65 >= 2.22044605e-12)
        {
          v79 = v122;
          v80 = fmax(fmin(sqrt(v79 * (v79 - (v65 + v65))) / (v122 - v65), 1.0), 0.00001);
          v81 = acos(v80);
          v82 = v120;
          v106 = v78 + v109 * (v81 / v120);
          v83 = v71;
          v84 = v79 / v80;
          cosval = __sincos_stret(v78 * v120).__cosval;
          sub_1AAF8E8D4();
          v86 = v84 * cosval;
          v71 = v83;
          v66 = v115;
          v108 = v86 + v115;
          v78 = v106;
          __sincos_stret(v106 * v82);
          v56 = v114;
          v143 = 0x3FF0000000000000uLL;
          *&v144 = 0;
          *(&v144 + 1) = 0x3FF0000000000000;
          v145 = 0;
          v146 = 0;
          sub_1AAF8E8B4();
          v73 = v110;
        }

        else
        {
          __sincos_stret(v78 * v120);
          sub_1AAF8E8D4();
        }

        v87 = (v56 - v71) * 180.0 / v73;
        if (v124.f64[1] >= 2.22044605e-12)
        {
          v88 = v122;
          v115 = sqrt(v88 * (v88 - (v124.f64[1] + v124.f64[1])));
          v89 = acos(fmax(fmin(v115 / (v122 - v124.f64[1]), 1.0), 0.00001));
          v90 = v66;
          v91 = v120;
          v92 = v88;
          v93 = v88;
          v56 = v114;
          sub_1AAF443D8(v87 - v109 * (v89 / v120), v92, v78, v93, v90, v125);
          v94 = v87 * v91;
          v66 = v90;
          __sincos_stret(v94);
          v73 = v110;
          v139 = 0x3FF0000000000000uLL;
          *&v140 = 0;
          *(&v140 + 1) = 0x3FF0000000000000;
          v141 = 0;
          v142 = 0;
          sub_1AAF8E8B4();
        }

        else
        {
          sub_1AAF443D8((v56 - v71) * 180.0 / v73, v122, v78, v122, v66, v125);
        }

        v55 = v121;
        v29 = v105;
      }

      else
      {
        sub_1AAF8E8D4();
        sub_1AAF8E8D4();
      }

      if (v123.f64[0] > 0.0 || v124.f64[0] > 0.0)
      {
        if (v29 >= 2.22044605e-12)
        {
          v95 = (v56 - v107) * 180.0 / v73;
          if (v124.f64[0] >= 2.22044605e-12)
          {
            v96 = acos(fmax(fmin(sqrt(v29 * (v29 + v124.f64[0] + v124.f64[0])) / (v29 + v124.f64[0]), 1.0), 0.00001));
            v97 = v66;
            v98 = v120;
            v122 = v95 - v109 * (v96 / v120);
            __sincos_stret(v95 * v120);
            sub_1AAF8E8D4();
            v73 = v110;
            v99 = v122;
            v100 = v122 * v98;
            v66 = v97;
            __sincos_stret(v100);
            v135 = 0x3FF0000000000000uLL;
            *&v136 = 0;
            *(&v136 + 1) = 0x3FF0000000000000;
            v137 = 0;
            v138 = 0;
            sub_1AAF8E8B4();
            v95 = v99;
            v55 = v121;
          }

          else
          {
            __sincos_stret(v95 * v120);
            sub_1AAF8E8D4();
          }

          v101 = (v107 + v55) * 180.0 / v73;
          if (v123.f64[0] >= 2.22044605e-12)
          {
            v102 = acos(fmax(fmin(sqrt(v29 * (v29 + v123.f64[0] + v123.f64[0])) / (v29 + v123.f64[0]), 1.0), 0.00001));
            v103 = v120;
            sub_1AAF443D8(v101 + v109 * (v102 / v120), v29, v95, v29, v66, v125);
            __sincos_stret(v101 * v103);
            v129 = 0x3FF0000000000000;
            v130 = 0;
            v131 = 0;
            v132 = 0x3FF0000000000000;
            v134 = 0;
            v133 = 0;
            sub_1AAF8E8B4();
          }

          else
          {
            sub_1AAF443D8((v107 + v55) * 180.0 / v73, v29, v95, v29, v66, v125);
          }

          goto LABEL_106;
        }

        sub_1AAF8E8D4();
      }

      else
      {
        if (v119 < v73 && v116 == 0.0 && (a2 & 1) != 0)
        {
          tan(v113);
          __sincos_stret((v55 + v56) * 0.5);
          v135 = 0x3FF0000000000000uLL;
          *&v136 = 0;
          *(&v136 + 1) = 0x3FF0000000000000;
          v137 = 0;
          v138 = 0;
          sub_1AAF8E8C4();
LABEL_106:
          sub_1AAF8E884();
          v52 = v127;
          v53 = v126;
          v54 = v128;
          goto LABEL_107;
        }

        if (v29 > 2.22044605e-16)
        {
          v135 = 0x3FF0000000000000uLL;
          *&v136 = 0;
          *(&v136 + 1) = 0x3FF0000000000000;
          v137 = 0;
          v138 = 0;
          sub_1AAF8E8C4();
          goto LABEL_106;
        }
      }

      sub_1AAF8E8D4();
      goto LABEL_106;
    }
  }

  if (v122 > v116)
  {
    v75 = v122;
  }

  else
  {
    v75 = v116;
  }

  if (v107 >= v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v106;
  }

  v77 = v120;
  asin(v120 / v75);
  sub_1AAF8E934();
  if (v76 <= 2.22044605e-16)
  {
    sub_1AAF8E8A4();
  }

  else
  {
    asin(v77 / v76);
    v143 = 0x3FF0000000000000uLL;
    *&v144 = 0;
    *(&v144 + 1) = 0x3FF0000000000000;
    v145 = 0;
    v146 = 0;
    sub_1AAF8E8C4();
  }

  v139 = 0x3FF0000000000000uLL;
  *&v140 = 0;
  *(&v140 + 1) = 0x3FF0000000000000;
  v141 = 0;
  v142 = 0;
  sub_1AAF8E8C4();
  sub_1AAF8E884();
  v52 = v136;
  v53 = v135;
  v54 = v137;
LABEL_107:
  *a3 = v53;
  *(a3 + 16) = v52;
  *(a3 + 32) = v54;
}

void sub_1AAF443D8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = vabdd_f64(a1, a3);
  if (v7 < 6.39488462e-13)
  {
    __sincos_stret(a1 * 0.0174532925);

    sub_1AAF8E8D4();
    return;
  }

  if (fabs(a2 - a4) < 2.22044605e-12)
  {
    sub_1AAF8E8C4();
    return;
  }

  v8 = ceil(v7 / 45.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  if (v8 < 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v10 = a1 - a3;
  __sincos_stret(((a1 - a3) * 0.0 + a3) * 0.0174532925);
  v15 = v9;
  v16 = v10;
  v11 = v10 * (1.0 / v9);
  v12 = a3;
  __sincos_stret((v11 + a3) * 0.0174532925);
  sub_1AAF8E8F4();
  v13 = v9 - 1;
  if (v13)
  {
    v14 = 2;
    do
    {
      __sincos_stret((v16 * (v14 / v15) + v12) * 0.0174532925);
      sub_1AAF8E8F4();
      ++v14;
      v12 = a3;
      --v13;
    }

    while (v13);
  }
}

uint64_t (*sub_1AAF4475C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AAF4C29C(v4, a2);
  return sub_1AAD184AC;
}

uint64_t (*sub_1AAF447D4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AAF4C340(v4, a2);
  return sub_1AAD184B4;
}

void *sub_1AAF4484C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v13 = *(type metadata accessor for ChartContentList.Item(0) - 8);
        v14 = *(v13 + 72);
        result = sub_1AAD1C5AC(a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v10, type metadata accessor for ChartContentList.Item);
        if (v12 == v11)
        {
          goto LABEL_11;
        }

        v10 += v14;
        if (v9 == ++v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}