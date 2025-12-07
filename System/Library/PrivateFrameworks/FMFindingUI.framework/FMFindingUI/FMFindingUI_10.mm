void sub_24A5E63F4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_24A5E8018(v8);
    }

    v78 = v8 + 16;
    v79 = *(v8 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[16 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_24A5E7814((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
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
  v8 = MEMORY[0x277D84F90];
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24A5E802C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v32 = *(v8 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      v8 = sub_24A5E802C((v32 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = v8 + 32;
    v35 = &v8[16 * v5 + 32];
    *v35 = v9;
    *(v35 + 1) = v7;
    v87 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v33];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[16 * v33];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[16 * v5];
        v67 = *v65;
        v66 = *(v65 + 1);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
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

        v73 = &v34[16 * v5 - 16];
        v74 = *v73;
        v75 = &v34[16 * v5];
        v76 = *(v75 + 1);
        sub_24A5E7814((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        *(v73 + 1) = v76;
        v77 = *(v8 + 2);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        memmove(&v34[16 * v5], v75 + 16, 16 * (v77 - 1 - v5));
        *(v8 + 2) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[16 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 >= *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
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

void sub_24A5E6970(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_99;
    }

LABEL_143:
    __break(1u);
    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v6)
    {
      v6 = v8 + 1;
    }

    else
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * (v8 + 1));
      v97 = *(*a3 + 8 * v8);
      v98 = v11;
      v12 = sub_24A5E3C3C(&v98, &v97);
      if (v5)
      {
        goto LABEL_107;
      }

      v13 = v8 + 2;
      v14 = 8 * v8;
      v15 = (v10 + 8 * v8 + 16);
      while (v6 != v13)
      {
        v16 = *v15;
        v17 = *v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v17 + 16))
        {
          goto LABEL_135;
        }

        v18 = (v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_138;
        }

        v19 = *(v15 - 1);
        v20 = (v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_137;
        }

        v21 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v21 + 16))
        {
          goto LABEL_136;
        }

        v22 = *(v17 + 8) - v18[1];
        ++v13;
        ++v15;
        if (((v12 ^ (v22 * v22 + (*v17 - *v18) * (*v17 - *v18) >= (v20[1] - *(v21 + 8)) * (v20[1] - *(v21 + 8)) + (*v20 - *v21) * (*v20 - *v21))) & 1) == 0)
        {
          v6 = v13 - 1;
          break;
        }
      }

      if (v12)
      {
        if (v6 < v8)
        {
          goto LABEL_128;
        }

        if (v8 < v6)
        {
          v23 = 8 * v6 - 8;
          v24 = v6;
          v25 = v8;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v26 = *(v27 + v14);
              *(v27 + v14) = *(v27 + v23);
              *(v27 + v23) = v26;
            }

            ++v25;
            v23 -= 8;
            v14 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = a3[1];
    if (v6 >= v28)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_125;
    }

    if (v6 - v8 >= v7)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v8, v7))
    {
      goto LABEL_126;
    }

    v29 = &v7[v8] >= v28 ? a3[1] : &v7[v8];
    if (v29 < v8)
    {
      break;
    }

    if (v6 != v29)
    {
      v76 = *a3;
      v77 = *a3 + 8 * v6 - 8;
      v78 = v8 - v6;
LABEL_86:
      v79 = *(v76 + 8 * v6);
      v80 = v78;
      v81 = v77;
      while (1)
      {
        v82 = (v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_132;
        }

        v83 = (v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_133;
        }

        v84 = *v81;
        v85 = *v81 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v85 + 16))
        {
          break;
        }

        if (*(v84 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_131;
        }

        v87 = v82[1] - v83[1];
        v86 = (v84 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v87 * v87 + (*v82 - *v83) * (*v82 - *v83) < (*(v85 + 8) - v86[1]) * (*(v85 + 8) - v86[1]) + (*v85 - *v86) * (*v85 - *v86))
        {
          if (!v76)
          {
            goto LABEL_134;
          }

          *v81 = v79;
          v81[1] = v84;
          --v81;
          if (!__CFADD__(v80++, 1))
          {
            continue;
          }
        }

        ++v6;
        v77 += 8;
        --v78;
        if (v6 == v29)
        {
          goto LABEL_34;
        }

        goto LABEL_86;
      }

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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

LABEL_33:
    v29 = v6;
LABEL_34:
    if (v29 < v8)
    {
      goto LABEL_124;
    }

    v95 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_24A5E802C((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v8;
    *(v33 + 5) = v95;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_54:
          if (v39)
          {
            goto LABEL_113;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_116;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_120;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_68:
        if (v57)
        {
          goto LABEL_115;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_75:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v74 = *&v9[16 * v73 + 32];
        v7 = *&v9[16 * v35 + 40];
        sub_24A5E7A18(*a3 + 8 * v74, (*a3 + 8 * *&v9[16 * v35 + 32]), (*a3 + 8 * v7), v34);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v7 < v74)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24A5E8018(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v75 = &v9[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v7;
        v99 = v9;
        sub_24A5E7F8C(v35);
        v9 = v99;
        v32 = *(v99 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_111;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_112;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_114;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_117;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_121;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v8 = v95;
    v6 = a3[1];
    v7 = a4;
    if (v95 >= v6)
    {
      goto LABEL_97;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v9 = sub_24A5E8018(v9);
LABEL_99:
  v99 = v9;
  v89 = *(v9 + 2);
  if (v89 >= 2)
  {
    while (*a3)
    {
      v90 = *&v9[16 * v89];
      v91 = *&v9[16 * v89 + 24];
      sub_24A5E7A18(*a3 + 8 * v90, (*a3 + 8 * *&v9[16 * v89 + 16]), (*a3 + 8 * v91), v7);
      if (v5)
      {
        goto LABEL_107;
      }

      if (v91 < v90)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E8018(v9);
      }

      if (v89 - 2 >= *(v9 + 2))
      {
        goto LABEL_123;
      }

      v92 = &v9[16 * v89];
      *v92 = v90;
      *(v92 + 1) = v91;
      v99 = v9;
      sub_24A5E7F8C(v89 - 1);
      v9 = v99;
      v89 = *(v99 + 2);
      if (v89 <= 1)
      {
        goto LABEL_107;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_107:
}

void sub_24A5E700C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 >= v7)
      {
        goto LABEL_24;
      }

      v11 = *a3;
      v12 = *a5;
      v13 = *(*a3 + 8 * v10) + *a5;
      if (*(v13 + 16))
      {
        goto LABEL_183;
      }

      v14 = *(v11 + 8 * v8) + v12;
      if (*(v14 + 16))
      {
        goto LABEL_184;
      }

      v15 = *(v14 + 8);
      v16 = *(v13 + 8);
      v17 = v8 + 2;
      v18 = 8 * v8;
      v19 = (v11 + 8 * v8 + 16);
      do
      {
        if (v7 == v17)
        {
          v10 = v7;
          if (v16 >= v15)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        v20 = *v19 + v12;
        if (*(v20 + 16))
        {
          goto LABEL_178;
        }

        v21 = *(v19 - 1) + v12;
        if (*(v21 + 16))
        {
          goto LABEL_179;
        }

        ++v17;
        ++v19;
      }

      while (v16 < v15 != *(v20 + 8) >= *(v21 + 8));
      v10 = v17 - 1;
      if (v16 >= v15)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v10 < v8)
      {
        goto LABEL_166;
      }

      if (v8 < v10)
      {
        v22 = 8 * v10 - 8;
        v23 = v10;
        v24 = v8;
        do
        {
          if (v24 != --v23)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_180;
            }

            v25 = *(v26 + v18);
            *(v26 + v18) = *(v26 + v22);
            *(v26 + v22) = v25;
          }

          ++v24;
          v22 -= 8;
          v18 += 8;
        }

        while (v24 < v23);
        v7 = a3[1];
      }

LABEL_24:
      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_165;
        }

        if (v10 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_167;
          }

          if (v8 + a4 < v7)
          {
            v7 = v8 + a4;
          }

          if (v7 < v8)
          {
            goto LABEL_168;
          }

          if (v10 != v7)
          {
            v27 = *a3;
            v28 = *a3 + 8 * v10 - 8;
            v29 = v8 - v10;
            do
            {
              v30 = *(v27 + 8 * v10);
              v31 = v29;
              v32 = v28;
              do
              {
                v33 = v30 + *a5;
                if (*(v33 + 16))
                {
                  goto LABEL_174;
                }

                v34 = *v32;
                v35 = *v32 + *a5;
                if (*(v35 + 16))
                {
                  goto LABEL_173;
                }

                if (*(v33 + 8) >= *(v35 + 8))
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_175;
                }

                *v32 = v30;
                v32[1] = v34;
                --v32;
              }

              while (!__CFADD__(v31++, 1));
              ++v10;
              v28 += 8;
              --v29;
            }

            while (v10 != v7);
            v10 = v7;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_162;
      }

      v110 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v9 = sub_24A5E802C((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v39;
      v40 = &v9[16 * v38];
      *(v40 + 4) = v8;
      *(v40 + 5) = v110;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_181;
      }

      if (v38)
      {
        break;
      }

LABEL_3:
      v8 = v110;
      v7 = a3[1];
      if (v110 >= v7)
      {
        goto LABEL_137;
      }
    }

    v117 = *a1;
    while (1)
    {
      v42 = v39 - 1;
      if (v39 >= 4)
      {
        break;
      }

      if (v39 == 3)
      {
        v43 = *(v9 + 4);
        v44 = *(v9 + 5);
        v53 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        v46 = v53;
LABEL_64:
        if (v46)
        {
          goto LABEL_153;
        }

        v59 = &v9[16 * v39];
        v61 = *v59;
        v60 = *(v59 + 1);
        v62 = __OFSUB__(v60, v61);
        v63 = v60 - v61;
        v64 = v62;
        if (v62)
        {
          goto LABEL_156;
        }

        v65 = &v9[16 * v42 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v53 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v53)
        {
          goto LABEL_159;
        }

        if (__OFADD__(v63, v68))
        {
          goto LABEL_160;
        }

        if (v63 + v68 >= v45)
        {
          if (v45 < v68)
          {
            v42 = v39 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v69 = &v9[16 * v39];
      v71 = *v69;
      v70 = *(v69 + 1);
      v53 = __OFSUB__(v70, v71);
      v63 = v70 - v71;
      v64 = v53;
LABEL_78:
      if (v64)
      {
        goto LABEL_155;
      }

      v72 = &v9[16 * v42];
      v74 = *(v72 + 4);
      v73 = *(v72 + 5);
      v53 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v53)
      {
        goto LABEL_158;
      }

      if (v75 < v63)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v42 - 1 >= v39)
      {
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
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
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
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v80 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v115 = v42;
      v116 = v9;
      v112 = v42 - 1;
      v81 = *&v9[16 * v42 + 16];
      v82 = *&v9[16 * v42 + 32];
      v113 = *&v9[16 * v42 + 40];
      v114 = v81;
      v83 = 8 * v81;
      v84 = (v80 + 8 * v81);
      v9 = (8 * v82);
      v85 = (v80 + 8 * v82);
      v86 = (v80 + 8 * v113);
      v5 = 8 * v82 - 8 * v81;
      v87 = 8 * v113 - 8 * v82;
      if (v5 >= v87)
      {
        if (v85 != v41 || v86 <= v41)
        {
          memmove(v41, (v80 + 8 * v82), 8 * v113 - 8 * v82);
          v41 = v117;
        }

        v88 = &v41[v87];
        if (v87 < 1 || v9 <= v83)
        {
          v89 = v41;
LABEL_126:
          v94 = v85;
        }

        else
        {
          do
          {
            v94 = v85 - 8;
            v86 -= 8;
            v95 = v88;
            v89 = v117;
            while (1)
            {
              v97 = *(v95 - 1);
              v95 -= 8;
              v96 = v97;
              v98 = v97 + *a5;
              if (*(v98 + 16))
              {
                goto LABEL_172;
              }

              v99 = *v94 + *a5;
              if (*(v99 + 16))
              {
                goto LABEL_171;
              }

              if (*(v98 + 8) < *(v99 + 8))
              {
                break;
              }

              if (v86 + 8 != v88)
              {
                *v86 = v96;
              }

              v86 -= 8;
              v88 = v95;
              if (v95 <= v117)
              {
                v88 = v95;
                goto LABEL_126;
              }
            }

            if (v86 + 8 != v85)
            {
              *v86 = *v94;
            }

            if (v88 <= v117)
            {
              break;
            }

            v85 -= 8;
          }

          while (v84 < v94);
        }
      }

      else
      {
        if (v84 != v41 || v85 <= v41)
        {
          memmove(v41, (v80 + 8 * v81), 8 * v82 - 8 * v81);
          v41 = v117;
        }

        v88 = &v41[v5];
        if (v5 >= 1 && 8 * v113 > v9)
        {
          v89 = v41;
          while (1)
          {
            v90 = *v85;
            v91 = *v85 + *a5;
            if (*(v91 + 16))
            {
              goto LABEL_169;
            }

            v92 = *v89 + *a5;
            if (*(v92 + 16))
            {
              goto LABEL_170;
            }

            if (*(v91 + 8) >= *(v92 + 8))
            {
              break;
            }

            v93 = v84 == v85;
            v85 += 8;
            if (!v93)
            {
              goto LABEL_101;
            }

LABEL_102:
            v84 += 8;
            if (v89 >= v88 || v85 >= v86)
            {
              goto LABEL_123;
            }
          }

          v90 = *v89;
          v93 = v84 == v89;
          v89 += 8;
          if (v93)
          {
            goto LABEL_102;
          }

LABEL_101:
          *v84 = v90;
          goto LABEL_102;
        }

        v89 = v41;
LABEL_123:
        v94 = v84;
      }

      v100 = v88 - v89 + (v88 - v89 < 0 ? 7uLL : 0);
      if (v94 != v89 || v94 >= &v89[v100 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v94, v89, 8 * (v100 >> 3));
      }

      v5 = v113;
      v101 = v116;
      if (v113 < v114)
      {
        goto LABEL_149;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24A5E8018(v116);
      }

      if (v115 > *(v101 + 2))
      {
        goto LABEL_150;
      }

      v102 = &v101[16 * v112];
      *(v102 + 4) = v114;
      *(v102 + 5) = v113;
      sub_24A5E7F8C(v115);
      v9 = v101;
      v39 = *(v101 + 2);
      v41 = v117;
      if (v39 <= 1)
      {
        goto LABEL_3;
      }
    }

    v47 = &v9[16 * v39 + 32];
    v48 = *(v47 - 64);
    v49 = *(v47 - 56);
    v53 = __OFSUB__(v49, v48);
    v50 = v49 - v48;
    if (v53)
    {
      goto LABEL_151;
    }

    v52 = *(v47 - 48);
    v51 = *(v47 - 40);
    v53 = __OFSUB__(v51, v52);
    v45 = v51 - v52;
    v46 = v53;
    if (v53)
    {
      goto LABEL_152;
    }

    v54 = &v9[16 * v39];
    v56 = *v54;
    v55 = *(v54 + 1);
    v53 = __OFSUB__(v55, v56);
    v57 = v55 - v56;
    if (v53)
    {
      goto LABEL_154;
    }

    v53 = __OFADD__(v45, v57);
    v58 = v45 + v57;
    if (v53)
    {
      goto LABEL_157;
    }

    if (v58 >= v50)
    {
      v76 = &v9[16 * v42 + 32];
      v78 = *v76;
      v77 = *(v76 + 1);
      v53 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v53)
      {
        goto LABEL_161;
      }

      if (v45 < v79)
      {
        v42 = v39 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_137:
  v5 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_176:
      v9 = sub_24A5E8018(v9);
    }

    v103 = *(v9 + 2);
    if (v103 < 2)
    {
LABEL_147:

      return;
    }

    while (*a3)
    {
      v104 = *&v9[16 * v103];
      v105 = *&v9[16 * v103 + 24];
      sub_24A5E7D38(*a3 + 8 * v104, (*a3 + 8 * *&v9[16 * v103 + 16]), (*a3 + 8 * v105), v5, a5);
      if (v109)
      {
        goto LABEL_147;
      }

      if (v105 < v104)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E8018(v9);
      }

      if (v103 - 2 >= *(v9 + 2))
      {
        goto LABEL_164;
      }

      v106 = &v9[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      sub_24A5E7F8C(v103 - 1);
      v103 = *(v9 + 2);
      if (v103 <= 1)
      {
        goto LABEL_147;
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24A5E7814(double *__dst, double *__src, double *a3, double *a4)
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

      if (v6[1] < v4[1])
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
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_24A5E7A18(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v6 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v16 + 16))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v17 = (v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_51;
        }

        v18 = *v4 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v18 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v19 = *v4 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v19 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(v16 + 8) - v17[1];
        if (v20 * v20 + (*v16 - *v17) * (*v16 - *v17) >= (*(v18 + 8) - *(v19 + 8)) * (*(v18 + 8) - *(v19 + 8)) + (*v18 - *v19) * (*v18 - *v19))
        {
          break;
        }

        v21 = v7 == v6;
        v6 += 8;
        if (!v21)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v15 = *v4;
      v21 = v7 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = v15;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_44:
    v32 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
    if (v6 != v4 || v6 >= &v4[v32 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v6, v4, 8 * (v32 >> 3));
    }

    return 1;
  }

LABEL_29:
  v22 = v6 - 8;
  v5 -= 8;
  v23 = v14;
  while (1)
  {
    v25 = *(v23 - 8);
    v23 -= 8;
    v24 = v25;
    v26 = (v25 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    if (*(v25 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
    {
      break;
    }

    v27 = (v24 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (*(v24 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
      goto LABEL_55;
    }

    v28 = *v22;
    v29 = *v22 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
    __dst = *(v29 + 16);
    if (__dst)
    {
      goto LABEL_52;
    }

    __dst = *(v28 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
    if (__dst)
    {
LABEL_53:
      __break(1u);
      break;
    }

    v31 = v26[1] - v27[1];
    v30 = (v28 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (v31 * v31 + (*v26 - *v27) * (*v26 - *v27) < (*(v29 + 8) - v30[1]) * (*(v29 + 8) - v30[1]) + (*v29 - *v30) * (*v29 - *v30))
    {
      if (v5 + 8 != v6)
      {
        *v5 = v28;
      }

      if (v14 <= v4 || (v6 -= 8, v22 <= v7))
      {
        v6 = v22;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 8 != v14)
    {
      *v5 = v24;
    }

    v5 -= 8;
    v14 = v23;
    if (v23 <= v4)
    {
      v14 = v23;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return __dst;
}

uint64_t sub_24A5E7D38(uint64_t __dst, char *__src, char *a3, char *a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_39:
      v27 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
      if (v8 != v6 || v8 >= &v6[v27 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * (v27 >> 3));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = *v8 + *a5;
      if (*(v19 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v20 = *v6 + *a5;
      if (*(v20 + 16))
      {
        goto LABEL_44;
      }

      if (*(v19 + 8) < *(v20 + 8))
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8;
    v8 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = v8 - 8;
  v7 -= 8;
  v22 = v16;
  while (1)
  {
    v24 = *(v22 - 8);
    v22 -= 8;
    v23 = v24;
    v25 = v24 + *a5;
    if (*(v25 + 16))
    {
      break;
    }

    v26 = *v21 + *a5;
    if (*(v26 + 16))
    {
      goto LABEL_46;
    }

    if (*(v25 + 8) < *(v26 + 8))
    {
      if (v7 + 8 != v8)
      {
        *v7 = *v21;
      }

      if (v16 <= v6 || (v8 -= 8, v21 <= v9))
      {
        v8 = v21;
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v7 + 8 != v16)
    {
      *v7 = v23;
    }

    v7 -= 8;
    v16 = v22;
    if (v22 <= v6)
    {
      v16 = v22;
      goto LABEL_39;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __dst;
}

uint64_t sub_24A5E7F8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A5E8018(v3);
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

char *sub_24A5E802C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF51A90, &qword_24A63C0C0);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_24A5E8130()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x24C21BC00](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x24C21BC00](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v11 = *&v1[16 * v4 + 32];
        v12 = *&v1[16 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_24A5E882C(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_21;
        }

        *&v1[16 * v4 + 32] = v12;
        if (v8 >= v10)
        {
          goto LABEL_22;
        }

        *&v1[16 * v8 + 32] = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_24A5E827C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x24C21BC00](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x24C21BC00](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_24A5E8840(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_24A62F3F4();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_24A5E8840(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_24A62F3F4();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
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
  }
}

void *sub_24A5E8420(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_24A62F464();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_24A5E5150(v3, 0);
  sub_24A5E8654((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A5E84B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A62F464();
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
      result = sub_24A62F464();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A5E99F8(&qword_27EF51AB0, &qword_27EF51AA8, &qword_24A63B070);
          for (i = 0; i != v6; ++i)
          {
            sub_24A508FA4(&qword_27EF51AA8, &qword_24A63B070);
            v9 = sub_24A6072A4(v13, i, a3);
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
        sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
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

uint64_t sub_24A5E8654(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A62F464();
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
      result = sub_24A62F464();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A5E99F8(&qword_27EF51AA0, &qword_27EF51A98, &qword_24A63B060);
          for (i = 0; i != v6; ++i)
          {
            sub_24A508FA4(&qword_27EF51A98, &qword_24A63B060);
            v9 = sub_24A607324(v13, i, a3);
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
        type metadata accessor for FMPFSKPatternFragmentNode();
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

id sub_24A5E8854(char *a1, __int128 *a2, void *a3, char *a4, char a5, char *a6, char a7, uint64_t a8, double a9, double a10, double cosval, double a12, double a13, double a14)
{
  LOBYTE(v17) = a7;
  LOBYTE(v19) = a5;
  v179 = type metadata accessor for FMPFSKNode();
  result = [objc_allocWithZone(v179) init];
  v183 = result;
  v219 = MEMORY[0x277D84F90];
  v29 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_85;
  }

  v30 = &a1[-(a2 & 1)];
  v182 = v14;
  v177 = v30;
  v178 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  if (v14[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType] != 1)
  {
    v15 = &xmmword_27EF5C3E8 + 8;
    a1 = &xmmword_27EF5C408 + 8;
    a2 = &xmmword_27EF5C408;
    v16 = &xmmword_27EF5C3F8 + 8;
    if (qword_27EF4EA20 != -1)
    {
      goto LABEL_87;
    }

LABEL_6:
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_88:
    __break(1u);
    return result;
  }

  v15 = &xmmword_27EF5C4B8 + 8;
  a1 = &xmmword_27EF5C4D8 + 8;
  a2 = &xmmword_27EF5C4D8;
  v16 = &xmmword_27EF5C4C8 + 8;
  if (qword_27EF4EA28 == -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_87:
    result = swift_once();
    v30 = v177;
    if ((v177 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

LABEL_7:
    if (!v30)
    {
      return v183;
    }

    v175 = *v16 * 0.5;
    v176 = *v16 * -0.5;
    if (v176 <= v175)
    {
      v173 = *a2;
      v174 = *a1;
      v172 = *v15;
      a2 = 0x7672754364617571;
      v165 = (a12 - a10) / v29;
      v166 = (cosval - a9) / v29;
      type metadata accessor for FMPFSKSpriteNode();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v167 = ObjCClassFromMetadata;
      v15 = 0;
      if (v19)
      {
        v32 = 0;
      }

      else
      {
        v32 = a4;
      }

      v171 = v32;
      if (v17)
      {
        v33 = 0;
      }

      else
      {
        v33 = a6;
      }

      v170 = v33;
      __asm { FMOV            V0.2D, #0.5 }

      v169 = _Q0;
      v39 = 1;
      v29 = v182;
      v168 = a14;
      while (1)
      {
        v191 = a9;
        a1 = v39;
        v40 = sub_24A5E5268(ObjCClassFromMetadata, v176, v175);
        v42 = v41;
        a12 = 3.14159265;
        sub_24A5E5268(v40, 0.0, 3.14159265);
        v44 = v43 * 0.25;
        v45 = sub_24A5E51DC(0x7FFFFFFFFFFFFFFFuLL);
        v46 = 4.0;
        if ((v45 & 1) == 0)
        {
          v46 = -4.0;
        }

        v47 = __sincos_stret(v44 * v46);
        cosval = v47.__cosval;
        v48 = sub_24A5E51DC(0x20000000000001uLL);
        v49 = (vcvtd_n_f64_u64(v48, 0x35uLL) * 100.0 + 0.0) / 100.0;
        a9 = v48 == 0x20000000000000 ? 1.0 : v49;
        sub_24A5E5268(v48, 0.0, 3.14159265);
        sub_24A5E51DC(0x7FFFFFFFFFFFFFFFuLL);
        if (__OFADD__(a8, v15))
        {
          break;
        }

        v206 = &v15[a8];
        v207 = 0x746E656D67617246;
        v208 = 0xE900000000000023;
        v50 = sub_24A62F614();
        MEMORY[0x24C21A5D0](v50);

        v51 = sub_24A5F1D08(0xD000000000000016, 0x800000024A642A20);
        v16 = v29[v178];
        v192 = type metadata accessor for FMPFSKPatternFragmentNode();
        v19 = objc_allocWithZone(v192);
        v52 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
        v53 = objc_allocWithZone(v179);
        v189 = v51;
        *(v19 + v52) = [v53 init];
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0.0;
        v54 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition;
        *v54 = 0;
        *(v54 + 1) = 0;
        v54[16] = 1;
        v55 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition;
        *v55 = 0;
        *(v55 + 1) = 0;
        v55[16] = 1;
        v56 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
        *v56 = 0;
        v56[8] = 1;
        v57 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength;
        *v57 = 0;
        v57[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0.0;
        v58 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition;
        *v58 = 0;
        *(v58 + 1) = 0;
        v58[16] = 1;
        v59 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_relativeHeading;
        *v59 = 0;
        v59[8] = 1;
        v60 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0.0;
        v61 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0.0;
        v62 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0.0;
        v63 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition;
        *v63 = 0;
        *(v63 + 1) = 0;
        v63[16] = 1;
        v64 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        *v64 = 0;
        *(v64 + 1) = 0;
        v64[16] = 1;
        v65 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        *v65 = 0;
        *(v65 + 1) = 0;
        v65[16] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
        v66 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction;
        *v66 = 0u;
        *(v66 + 1) = 0u;
        v66[32] = 1;
        v15 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor;
        *v15 = 0;
        v15[8] = 1;
        a4 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor;
        *a4 = 0;
        a4[8] = 1;
        v67 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
        *v67 = 0;
        v67[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
        v17 = (v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset);
        *v17 = 0;
        v17[1] = 0;
        *(v17 + 16) = 1;
        v68 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
        *v68 = 0;
        *(v68 + 1) = 0;
        v68[16] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
        a6 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
        *a6 = 0;
        a6[8] = 1;
        v69 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
        *v69 = 0;
        v69[8] = 1;
        v70 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset;
        *v70 = 0;
        v70[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0.0;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) = v16;
        v186 = v62;
        v187 = a1;
        v184 = v60;
        v185 = v61;
        if (v16 == 1)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 1;
          LOBYTE(v207) = 1;
          LOBYTE(v206) = 1;
          v205 = 1;
          v204 = 1;
          v203 = 1;
          v202 = 0;
          v201 = 0;
          v200 = 0;
          v199 = 0;
          v198 = 0;
          v197 = 0;
          v79 = 0x4010000000000000;
          v80 = 0;
          v81 = 0x3FF8000000000000;
          v82 = 0x3FF0000000000000;
          v83 = 0;
          v84 = 0x4004000000000000;
          v85 = 0.0;
          v86 = 0.6;
        }

        else
        {
          v78 = 0;
          v84 = 0;
          v82 = 0;
          v81 = 0;
          v79 = 0;
          LOBYTE(v207) = 0;
          LOBYTE(v206) = 0;
          v205 = 0;
          v204 = 0;
          v203 = 0;
          v75 = 1;
          v202 = 1;
          v201 = 1;
          v200 = 1;
          v199 = 1;
          v198 = 1;
          v197 = 1;
          v74 = 0x3FF0000000000000;
          v80 = 1;
          v73 = 0x3FE6666666666666;
          v86 = 1.0;
          v85 = 0.75;
          v71 = 0x3FB999999999999ALL;
          v83 = 1;
          v72 = 30;
          v76 = 1;
          v77 = 1;
        }

        v87 = v197;
        v190 = a10;
        a1 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style;
        *a1 = xmmword_24A63B030;
        *(a1 + 1) = xmmword_24A63B040;
        *(a1 + 2) = v169;
        *(a1 + 6) = 16;
        *(a1 + 7) = v85;
        *(a1 + 4) = xmmword_24A639330;
        *(a1 + 5) = xmmword_24A63B050;
        *(a1 + 12) = v86;
        *(a1 + 13) = 0x3FF0000000000000;
        *(a1 + 14) = v71;
        a1[120] = v78;
        *(a1 + 121) = *v218;
        *(a1 + 31) = *&v218[3];
        *(a1 + 16) = v72;
        a1[136] = v78;
        *(a1 + 35) = *&v217[3];
        *(a1 + 137) = *v217;
        *(a1 + 18) = 0;
        a1[152] = v78;
        *(a1 + 39) = *&v216[3];
        *(a1 + 153) = *v216;
        *(a1 + 20) = v73;
        a1[168] = v78;
        *(a1 + 43) = *&v215[3];
        *(a1 + 169) = *v215;
        *(a1 + 22) = v74;
        a1[184] = v78;
        v88 = *v214;
        *(a1 + 47) = *&v214[3];
        *(a1 + 185) = v88;
        *(a1 + 24) = v82;
        a1[200] = v75;
        v89 = *v213;
        *(a1 + 51) = *&v213[3];
        *(a1 + 201) = v89;
        *(a1 + 26) = v82;
        a1[216] = v76;
        v90 = *v212;
        *(a1 + 55) = *&v212[3];
        *(a1 + 217) = v90;
        *(a1 + 28) = v84;
        a1[232] = v77;
        v91 = *v211;
        *(a1 + 59) = *&v211[3];
        *(a1 + 233) = v91;
        *(a1 + 30) = v82;
        a1[248] = v80;
        v92 = *v210;
        *(a1 + 63) = *&v210[3];
        *(a1 + 249) = v92;
        *(a1 + 32) = v81;
        a1[264] = v83;
        v93 = *v209;
        *(a1 + 67) = *&v209[3];
        *(a1 + 265) = v93;
        *(a1 + 34) = 0x3FE0000000000000;
        *(a1 + 35) = v79;
        v94 = a3;
        a1[288] = v87;
        if (!a3)
        {
          v94 = [objc_opt_self() whiteColor];
        }

        a12 = (1.0 - v42) * a14;
        v95 = 1.0 - a9;
        v96 = a13 - v172 * ((1.0 - a9) * a13);
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor) = v94;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v96;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a14;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = a12;
        if (v16 == 1)
        {
          v29 = qword_27EF4EA28;
          v97 = a3;
          v98 = &xmmword_27EF5C4A8 + 8;
          if (v29 != -1)
          {
            swift_once();
            v98 = &xmmword_27EF5C4A8 + 8;
          }
        }

        else
        {
          v29 = qword_27EF4EA20;
          v99 = a3;
          v98 = &xmmword_27EF5C3D8 + 8;
          if (v29 != -1)
          {
            swift_once();
            v98 = &xmmword_27EF5C3D8 + 8;
          }
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) = *v98;
        *v15 = v171;
        v15[8] = 0;
        *a4 = v170;
        a4[8] = 0;
        *v67 = 0;
        v67[8] = 0;
        *a6 = 0;
        a6[8] = 0;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor) = v173;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v174;
        v100 = *(a1 + 8);
        v101 = *(a1 + 9);
        v102 = v100 * (1.0 - v101);
        if (v102 < 0.0)
        {
          v102 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness) = v95 * v102 + a9 * fmin(v100 * (v101 + 1.0), 1.0);
        v103 = *(a1 + 10);
        v104 = *(a1 + 11);
        v105 = v103 * (1.0 - v104);
        if (v105 < 0.0)
        {
          v105 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = v95 * v105 + a9 * fmin(v103 * (v104 + 1.0), 1.0);
        a10 = fmax(*(a1 + 2) / 200.0 * a14, 1.0);
        v106 = a10 + a10;
        if (COERCE__INT64(fabs(a10 + a10)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        v107 = sub_24A5E51DC(0x20000000000001uLL);
        v108 = v106 * vcvtd_n_f64_u64(v107, 0x35uLL) - a10;
        if (v107 == 0x20000000000000)
        {
          v109 = a10;
        }

        else
        {
          v109 = v108;
        }

        v110 = sub_24A5E51DC(0x20000000000001uLL);
        v111 = v106 * vcvtd_n_f64_u64(v110, 0x35uLL) - a10;
        if (v110 == 0x20000000000000)
        {
          v111 = a10;
        }

        v112 = (v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
        *v112 = v109;
        v112[1] = v111;
        *v17 = v109;
        *(v17 + 1) = v111;
        *(v17 + 16) = 0;
        v113 = v190;
        if ((a1[136] & 1) == 0)
        {
          v114 = sub_24A5B1F94(*&v109, 0, 0x3FE0000000000000, 0);
          v115 = *(v19 + v184);
          *(v19 + v184) = v114;

          v116 = *(v17 + 16);
          if (v116)
          {
            v117 = 0;
          }

          else
          {
            v117 = v17[1];
          }

          v118 = sub_24A5B1F94(v117, v116, 0x3FE0000000000000, 0);
          v119 = *(v19 + v185);
          *(v19 + v185) = v118;

          v120 = sub_24A5B1B3C(*a6, a6[8], 0x3F847AE147AE147BLL, 0, 0, 1);
          v121 = *(v19 + v186);
          *(v19 + v186) = v120;
        }

        v122 = a12 * v47.__cosval;
        a12 = a12 * v47.__sinval;
        v123 = v47.__sinval * v96;
        v124 = v47.__cosval * v96;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring) = sub_24A5B1D38(0, 0, *&a9, 0, 0x3FE0000000000000, 0);
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring) = sub_24A5B1B2C(0, 0, 0, 1);
        v125 = [objc_allocWithZone(v167) init];
        v126 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) = v125;
        v17 = v189;
        [v125 setTexture_];
        v127 = *(v19 + v126);
        [v189 size];
        [v127 setSize_];

        v196.receiver = v19;
        v196.super_class = v192;
        v128 = objc_msgSendSuper2(&v196, sel_init);
        v129 = sub_24A62EBE4();

        [v128 setName_];

        v130 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
        [v128 addChild_];
        v131 = *&v128[v130];
        v132 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
        [v131 addChild_];
        [*&v128[v132] setColorBlendFactor_];
        [*&v128[v132] setPosition_];
        v133 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition];
        *v133 = v124;
        *(v133 + 1) = v123;
        v133[16] = 0;
        v19 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
        *v19 = v122;
        v19[1] = a12;
        *(v19 + 16) = 0;
        v134 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
        v135 = v191;
        *v134 = v191;
        *(v134 + 1) = v190;
        v134[16] = 0;
        v136 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
        *v136 = v122;
        *(v136 + 1) = a12;
        v136[16] = 0;
        v137 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
        *v137 = v124;
        *(v137 + 1) = v123;
        v137[16] = 0;
        *&v138 = COERCE_DOUBLE(sub_24A5A3FD0());
        if (v140)
        {
          v141 = v122;
        }

        else
        {
          v141 = *&v138;
        }

        if (v140)
        {
          v142 = a12;
        }

        else
        {
          v142 = v139;
        }

        a1 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
        *a1 = v141;
        *(a1 + 1) = v142;
        a1[16] = 0;
        v16 = v134[16];
        v143 = 0.0;
        if ((v16 & 1) == 0)
        {
          cosval = *v134;
          a12 = *(v134 + 1);
          v194 = v142;
          v195 = v141;
          *&v144 = COERCE_DOUBLE(sub_24A5A4124(*v134));
          v146 = v145;
          v147 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
          v193 = *&v144;
          v149 = v148;
          v150 = a12;
          v151 = cosval;
          v152 = 1;
          while (1)
          {
            v155 = vcvtd_n_f64_u64(v152, 4uLL);
            v156 = 1.0 - v155;
            if (v128[v147])
            {
              v157 = sub_24A62F634();

              if (v157)
              {
                goto LABEL_63;
              }

              if (!v128[v147] || v128[v147] != 1)
              {
                v158 = sub_24A62F634();

                if ((v158 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_63;
              }
            }

LABEL_63:
            if ((v146 & 1) == 0)
            {
              v153 = v156 * (v155 * v193 + v151 * v156) + v155 * (v155 * v195 + v156 * v193);
              v154 = v156 * (v155 * v149 + v150 * v156) + v155 * (v155 * v194 + v156 * v149);
              goto LABEL_56;
            }

LABEL_55:
            v153 = v155 * v195 + v151 * v156;
            v154 = v155 * v194 + v150 * v156;
LABEL_56:
            v143 = v143 + sqrt((v153 - cosval) * (v153 - cosval) + (v154 - a12) * (v154 - a12));
            ++v152;
            a12 = v154;
            cosval = v153;
            if (v152 == 17)
            {
              v113 = v190;
              v135 = v191;
              v17 = v189;
              break;
            }
          }
        }

        v159 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
        *v159 = v143;
        v159[8] = v16;
        v160 = sub_24A5A5880(*a1, *(a1 + 1), a1[16], *v19, *(v19 + 1), *(v19 + 16));
        v161 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
        *v161 = v160;
        v161[8] = v162 & 1;
        a4 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
        if ((v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          sub_24A5DF354(*a4);
        }

        v29 = v182;
        a14 = v168;
        v15 = v187;
        if ((v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
        {
          sub_24A5DF5EC(*&v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor]);
        }

        if ((v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
        {
          v163 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
          *v163 = *&v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
          v163[16] = 0;
          if ((a4[8] & 1) == 0)
          {
            sub_24A5DF354(*a4);
          }
        }

        if ((v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
        {
          v164 = &v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
          *v164 = *&v128[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
          v164[8] = 0;
        }

        [v128 setZPosition_];

        [v183 addChild_];
        a6 = v128;
        MEMORY[0x24C21A660]();
        if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a4 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24A62ED84();
        }

        sub_24A62EDA4();

        if (v187 == v177)
        {
          return v183;
        }

        a10 = v165 + v113;
        a9 = v166 + v135;
        v39 = (v187 + 1);
        if (__OFADD__(v187, 1))
        {
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_24A5E99F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24A5E9A4C(int64_t a1, void *a2, unint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v246 = type metadata accessor for FMPFSKNode();
  v244 = [objc_allocWithZone(v246) init];
  v19 = MEMORY[0x277D84F90];
  v293 = MEMORY[0x277D84F90];
  v247 = v10;
  v242 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  if (*(v10 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) == 1)
  {
    v20 = &xmmword_27EF5C4C8 + 8;
    v21 = &xmmword_27EF5C4D8 + 8;
    v22 = &xmmword_27EF5C4D8;
    if (qword_27EF4EA28 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = &xmmword_27EF5C3F8 + 8;
    v21 = &xmmword_27EF5C408 + 8;
    v22 = &xmmword_27EF5C408;
    if (qword_27EF4EA20 == -1)
    {
      goto LABEL_5;
    }
  }

  while (1)
  {
    swift_once();
LABEL_5:
    if (a1 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = a1;
    }

    if (__OFSUB__(a1, 1))
    {
      goto LABEL_149;
    }

    v238 = *v22;
    v239 = *v21;
    v24 = *v20;
    v25 = (a1 - 1);
    v227 = [objc_allocWithZone(v246) init];
    v26 = v247 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
    v226 = 0.0;
    if (*(v247 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 64) & 1) != 0 || (*(v26 + 80))
    {
      v237 = 1;
      if (a1 < 0)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v237 = 0;
      v226 = -(*(v26 + 72) - *(v26 + 56)) / v25;
      if (a1 < 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    v228 = v247 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
    if (a1)
    {
      v27 = a9 - a7;
      a9 = 6.28318531 / v23;
      a8 = (a8 - a6) / v25;
      v28 = v27 / v25;
      v29 = sub_24A617A30(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = *(v29 + 2);
      v31 = 16 * v30;
      v32 = a1;
      do
      {
        v33 = *(v29 + 3);
        v34 = v30 + 1;
        if (v30 >= v33 >> 1)
        {
          v29 = sub_24A617A30((v33 > 1), v30 + 1, 1, v29);
        }

        *(v29 + 2) = v34;
        v35 = &v29[v31];
        *(v35 + 4) = a6;
        *(v35 + 5) = a7;
        a6 = a8 + a6;
        a7 = v28 + a7;
        v31 += 16;
        v30 = v34;
        v32 = (v32 - 1);
      }

      while (v32);
      v245 = v29;
      v36 = sub_24A617A30(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v36 + 2);
      v38 = 16 * v37;
      a7 = -2.22044605e-16;
      do
      {
        v41 = __sincos_stret(a7);
        cosval = v41.__cosval;
        sinval = v41.__sinval;
        v42 = *(v36 + 3);
        v22 = (v37 + 1);
        if (v37 >= v42 >> 1)
        {
          a6 = v41.__sinval;
          a8 = v41.__cosval;
          v44 = sub_24A617A30((v42 > 1), v37 + 1, 1, v36);
          cosval = v41.__cosval;
          sinval = v41.__sinval;
          v36 = v44;
        }

        *(v36 + 2) = v22;
        v43 = &v36[v38];
        *(v43 + 4) = cosval * a10;
        *(v43 + 5) = sinval * a10;
        v292 = v36;
        a7 = a7 - a9;
        v38 += 16;
        ++v37;
        --a1;
      }

      while (a1);
    }

    else
    {
      v292 = v19;
      v245 = v19;
    }

    sub_24A5E23D0(&v292, sub_24A5E5DC8);
    v20 = v292;
    v21 = *(v292 + 2);
    if (v21)
    {
      v45 = v292 + 32;
      v46 = MEMORY[0x277D84F90];
      v22 = (v292 + 32);
      v47 = *(v292 + 2);
      do
      {
        if (*(v22 + 1) < 0.0)
        {
          v260 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v270 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A58D9B8(0, *(v46 + 16) + 1, 1);
            v46 = v270;
          }

          v49 = *(v46 + 16);
          v48 = *(v46 + 24);
          v50 = v260;
          if (v49 >= v48 >> 1)
          {
            sub_24A58D9B8((v48 > 1), v49 + 1, 1);
            v50 = v260;
            v46 = v270;
          }

          *(v46 + 16) = v49 + 1;
          *(v46 + 16 * v49 + 32) = v50;
        }

        ++v22;
        --v47;
      }

      while (v47);
      *&v270 = v46;
      sub_24A5E8130();
      a1 = v270;
      v19 = MEMORY[0x277D84F90];
      do
      {
        if (*(v45 + 1) >= 0.0)
        {
          v261 = *v45;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          *&v270 = v19;
          if ((v55 & 1) == 0)
          {
            sub_24A58D9B8(0, *(v19 + 2) + 1, 1);
            v19 = v270;
          }

          v53 = *(v19 + 2);
          v52 = *(v19 + 3);
          v22 = (v53 + 1);
          v54 = v261;
          if (v53 >= v52 >> 1)
          {
            sub_24A58D9B8((v52 > 1), v53 + 1, 1);
            v54 = v261;
            v19 = v270;
          }

          *(v19 + 2) = v22;
          *&v19[16 * v53 + 32] = v54;
        }

        v45 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {
      *&v270 = v19;
      sub_24A5E8130();
      a1 = v270;
    }

    *&v270 = v19;
    sub_24A5E8130();
    v56 = v270;
    *&v270 = a1;
    sub_24A5E5EE4(v56);
    v57 = v270;
    v243 = *(v270 + 16);
    if (!v243)
    {
LABEL_139:

      return v244;
    }

    v235 = v24 * 0.5;
    v236 = v24 * -0.5;
    if (v24 * -0.5 <= v24 * 0.5)
    {
      break;
    }

LABEL_150:
    __break(1u);
  }

  type metadata accessor for FMPFSKSpriteNode();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a4)
  {
    v58 = 0;
  }

  else
  {
    v58 = a3;
  }

  v233 = v58;
  v59 = v245;
  if (!*(v57 + 16))
  {
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
    goto LABEL_150;
  }

  v20 = 0;
  v234 = v57 + 32;
  v225 = v243;
  a4 = 113;
  a1 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
  __asm { FMOV            V0.2D, #0.5 }

  v232 = _Q0;
  v65 = 1;
  v230 = a10;
  v229 = v57;
  while (1)
  {
    a3 = v65;
    if (v20 >= *(v59 + 2))
    {
      goto LABEL_143;
    }

    v66 = &v245[16 * v20 + 32];
    v252 = *v66;
    v253 = v66[1];
    v67 = atan2(*(v234 + 16 * v20 + 8), *(v234 + 16 * v20));
    sub_24A5E5268(v68, v236, v235);
    v70 = v69;
    v71 = __sincos_stret(v67);
    a9 = v71.__sinval;
    a8 = v71.__cosval;
    v72 = sub_24A5E51DC(0x20000000000001uLL);
    v73 = (vcvtd_n_f64_u64(v72, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v72 == 0x20000000000000)
    {
      v74 = 1.0;
    }

    else
    {
      v74 = v73;
    }

    if (__OFADD__(a5, v20))
    {
      goto LABEL_144;
    }

    v241 = v20;
    v251 = a3;
    *&v270 = 0x746E656D67617246;
    *(&v270 + 1) = 0xE900000000000023;
    *&v267 = a5 + v20;
    v75 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v75);

    v76 = *(v247 + v242);
    v255 = type metadata accessor for FMPFSKPatternFragmentNode();
    a3 = objc_allocWithZone(v255);
    v77 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
    *(a3 + v77) = [objc_allocWithZone(v246) init];
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0;
    v78 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition);
    *v78 = 0;
    *(v78 + 1) = 0;
    v78[16] = 1;
    v79 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition);
    *v79 = 0;
    *(v79 + 1) = 0;
    v79[16] = 1;
    v80 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength);
    *v80 = 0;
    v80[8] = 1;
    v81 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength);
    *v81 = 0;
    v81[8] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0;
    v82 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition);
    *v82 = 0;
    *(v82 + 1) = 0;
    v82[16] = 1;
    v83 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_relativeHeading);
    *v83 = 0;
    v83[8] = 1;
    v19 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0;
    v84 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0;
    v85 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0;
    v86 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition);
    *v86 = 0;
    *(v86 + 1) = 0;
    v86[16] = 1;
    v87 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    *v87 = 0;
    *(v87 + 1) = 0;
    v87[16] = 1;
    v88 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    *v88 = 0;
    *(v88 + 1) = 0;
    v88[16] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
    v89 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction);
    *v89 = 0u;
    *(v89 + 1) = 0u;
    v89[32] = 1;
    v21 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor);
    *v21 = 0;
    v21[8] = 1;
    a1 = a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor;
    *a1 = 0;
    *(a1 + 8) = 1;
    v20 = a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
    *v20 = 0;
    *(v20 + 8) = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
    v22 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset);
    *v22 = 0;
    *(v22 + 1) = 0;
    *(v22 + 16) = 1;
    v90 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset);
    *v90 = 0;
    *(v90 + 1) = 0;
    v90[16] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
    v91 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor);
    *v91 = 0;
    v91[8] = 1;
    v92 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor);
    *v92 = 0;
    v92[8] = 1;
    v93 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset);
    *v93 = 0;
    v93[8] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) = v76;
    v248 = v84;
    v249 = v85;
    if (v76 == 1)
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 1;
      LOBYTE(v270) = 1;
      LOBYTE(v267) = 1;
      v266[0] = 1;
      v281 = 1;
      v280 = 1;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v275 = 0;
      v274 = 0;
      v102 = 0x4010000000000000;
      v103 = 0;
      v104 = 0x3FF8000000000000;
      v105 = 0x3FF0000000000000;
      v106 = 0;
      v107 = 0x4004000000000000;
      v108 = 0.0;
      v109 = 0.6;
    }

    else
    {
      v101 = 0;
      v107 = 0;
      v105 = 0;
      v104 = 0;
      v102 = 0;
      LOBYTE(v270) = 0;
      LOBYTE(v267) = 0;
      v266[0] = 0;
      v281 = 0;
      v280 = 0;
      v98 = 1;
      v279 = 1;
      v278 = 1;
      v277 = 1;
      v276 = 1;
      v275 = 1;
      v274 = 1;
      v97 = 0x3FF0000000000000;
      v103 = 1;
      v96 = 0x3FE6666666666666;
      v109 = 1.0;
      v108 = 0.75;
      v94 = 0x3FB999999999999ALL;
      v106 = 1;
      v95 = 30;
      v99 = 1;
      v100 = 1;
    }

    v110 = v274;
    v111 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style);
    *v111 = xmmword_24A63B030;
    *(v111 + 1) = xmmword_24A63B040;
    *(v111 + 2) = v232;
    *(v111 + 6) = 16;
    *(v111 + 7) = v108;
    *(v111 + 4) = xmmword_24A639330;
    *(v111 + 5) = xmmword_24A63B050;
    *(v111 + 12) = v109;
    *(v111 + 13) = 0x3FF0000000000000;
    *(v111 + 14) = v94;
    v111[120] = v101;
    *(v111 + 121) = v291[0];
    *(v111 + 31) = *(v291 + 3);
    *(v111 + 16) = v95;
    v111[136] = v101;
    *(v111 + 35) = *&v290[3];
    *(v111 + 137) = *v290;
    *(v111 + 18) = 0;
    v111[152] = v101;
    *(v111 + 39) = *&v289[3];
    *(v111 + 153) = *v289;
    *(v111 + 20) = v96;
    v111[168] = v101;
    *(v111 + 43) = *&v288[3];
    *(v111 + 169) = *v288;
    *(v111 + 22) = v97;
    v111[184] = v101;
    v112 = *v287;
    *(v111 + 47) = *&v287[3];
    *(v111 + 185) = v112;
    *(v111 + 24) = v105;
    v111[200] = v98;
    v113 = *v286;
    *(v111 + 51) = *&v286[3];
    *(v111 + 201) = v113;
    *(v111 + 26) = v105;
    v111[216] = v99;
    v114 = *v285;
    *(v111 + 55) = *&v285[3];
    *(v111 + 217) = v114;
    *(v111 + 28) = v107;
    v111[232] = v100;
    v115 = *v284;
    *(v111 + 59) = *&v284[3];
    *(v111 + 233) = v115;
    *(v111 + 30) = v105;
    v111[248] = v103;
    v116 = *v283;
    *(v111 + 63) = *&v283[3];
    *(v111 + 249) = v116;
    *(v111 + 32) = v104;
    v111[264] = v106;
    v117 = *v282;
    *(v111 + 67) = *&v282[3];
    *(v111 + 265) = v117;
    *(v111 + 34) = 0x3FE0000000000000;
    *(v111 + 35) = v102;
    v118 = a2;
    v111[288] = v110;
    if (!a2)
    {
      v118 = [objc_opt_self() whiteColor];
    }

    v119 = (1.0 - v70) * a10;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor) = v118;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v119;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a10;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = v119;
    if (v76 == 1)
    {
      v120 = qword_27EF4EA28;
      v121 = a2;
      v122 = &xmmword_27EF5C4A8 + 8;
      if (v120 != -1)
      {
        swift_once();
        v122 = &xmmword_27EF5C4A8 + 8;
      }
    }

    else
    {
      v123 = qword_27EF4EA20;
      v124 = a2;
      v122 = &xmmword_27EF5C3D8 + 8;
      if (v123 != -1)
      {
        swift_once();
        v122 = &xmmword_27EF5C3D8 + 8;
      }
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) = *v122;
    *v21 = 0;
    v21[8] = 0;
    *a1 = v233;
    *(a1 + 8) = 0;
    *v20 = 0;
    *(v20 + 8) = 0;
    *v91 = 0;
    v91[8] = 0;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor) = v238;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v239;
    v125 = *(v111 + 8);
    v126 = *(v111 + 9);
    v127 = v125 * (1.0 - v126);
    if (v127 < 0.0)
    {
      v127 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness) = (1.0 - v74) * v127 + v74 * fmin(v125 * (v126 + 1.0), 1.0);
    v128 = *(v111 + 10);
    v129 = *(v111 + 11);
    v130 = v128 * (1.0 - v129);
    if (v130 < 0.0)
    {
      v130 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = (1.0 - v74) * v130 + v74 * fmin(v128 * (v129 + 1.0), 1.0);
    v131 = fmax(*(v111 + 2) / 200.0 * a10, 1.0);
    a7 = v131 + v131;
    if (COERCE__INT64(fabs(v131 + v131)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_145;
    }

    v132 = sub_24A5E51DC(0x20000000000001uLL);
    v133 = a7 * vcvtd_n_f64_u64(v132, 0x35uLL) - v131;
    if (v132 == 0x20000000000000)
    {
      a6 = v131;
    }

    else
    {
      a6 = v133;
    }

    v134 = sub_24A5E51DC(0x20000000000001uLL);
    v135 = a7 * vcvtd_n_f64_u64(v134, 0x35uLL) - v131;
    if (v134 == 0x20000000000000)
    {
      v135 = v131;
    }

    v136 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
    *v136 = a6;
    v136[1] = v135;
    *v22 = a6;
    *(v22 + 1) = v135;
    *(v22 + 16) = 0;
    if ((v111[136] & 1) == 0)
    {
      v137 = sub_24A5B1F94(*&a6, 0, 0x3FE0000000000000, 0);
      v138 = *&v19[a3];
      *&v19[a3] = v137;

      v139 = *(v22 + 16);
      if (v139)
      {
        v140 = 0;
      }

      else
      {
        v140 = *(v22 + 1);
      }

      v141 = sub_24A5B1F94(v140, v139, 0x3FE0000000000000, 0);
      v142 = *(a3 + v248);
      *(a3 + v248) = v141;

      v143 = sub_24A5B1B3C(*v91, v91[8], 0x3F847AE147AE147BLL, 0, 0, 1);
      v144 = *(a3 + v249);
      *(a3 + v249) = v143;
    }

    a8 = v71.__cosval * v119;
    a9 = v71.__sinval * v119;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring) = sub_24A5B1D38(0, 0, *&v74, 0, 0x3FE0000000000000, 0);
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring) = sub_24A5B1B2C(0, 0, 0, 1);
    v145 = sub_24A5F1D08(0xD000000000000015, 0x800000024A642A40);
    v146 = [objc_allocWithZone(ObjCClassFromMetadata) initWithTexture_];
    v147 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) = v146;
    v148 = v146;
    [v148 size];
    a7 = 0.5;
    v150 = 0.5 - 1.0 / v149 * 0.5;
    [*(a3 + v147) size];
    v152 = 0.5 - 1.0 / v151 * 0.5;
    [*(a3 + v147) size];
    v154 = 1.0 / v153;
    [*(a3 + v147) size];
    [v148 setCenterRect_];

    v273.receiver = a3;
    v273.super_class = v255;
    v156 = objc_msgSendSuper2(&v273, sel_init);
    v157 = sub_24A62EBE4();

    [v156 setName_];

    v158 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
    [v156 addChild_];
    v159 = *&v156[v158];
    v160 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
    [v159 addChild_];
    [*&v156[v160] setColorBlendFactor_];
    [*&v156[v160] setPosition_];
    v161 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition];
    *v161 = a8;
    v161[1] = a9;
    *(v161 + 16) = 0;
    v22 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
    *v22 = a8;
    *(v22 + 1) = a9;
    *(v22 + 16) = 0;
    v162 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
    *v162 = v252;
    v162[1] = v253;
    *(v162 + 16) = 0;
    v163 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
    *v163 = a8;
    v163[1] = a9;
    *(v163 + 16) = 0;
    v164 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
    *v164 = a8;
    v164[1] = a9;
    *(v164 + 16) = 0;
    *&v165 = COERCE_DOUBLE(sub_24A5A3FD0());
    if (v167)
    {
      v168 = a8;
    }

    else
    {
      v168 = *&v165;
    }

    if (v167)
    {
      v169 = a9;
    }

    else
    {
      v169 = v166;
    }

    v21 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
    *v21 = v168;
    *(v21 + 1) = v169;
    v21[16] = 0;
    v170 = *(v162 + 16);
    v171 = 0.0;
    if ((v170 & 1) == 0)
    {
      a8 = *v162;
      a9 = v162[1];
      v258 = v169;
      v262 = v168;
      *&v186 = COERCE_DOUBLE(sub_24A5A4124(*v162));
      v188 = v187;
      v189 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
      v256 = *&v186;
      v191 = v190;
      v192 = a9;
      a6 = a8;
      for (i = 1; i != 17; ++i)
      {
        v196 = vcvtd_n_f64_u64(i, 4uLL);
        a7 = 1.0 - v196;
        if (v156[v189])
        {
          v197 = sub_24A62F634();

          if (v197)
          {
            goto LABEL_118;
          }

          if (!v156[v189] || v156[v189] != 1)
          {
            v198 = sub_24A62F634();

            if ((v198 & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_118;
          }
        }

LABEL_118:
        if ((v188 & 1) == 0)
        {
          v194 = a7 * (v196 * v256 + a6 * a7) + v196 * (v196 * v262 + a7 * v256);
          v195 = a7 * (v196 * v191 + v192 * a7) + v196 * (v196 * v258 + a7 * v191);
          goto LABEL_111;
        }

LABEL_110:
        v194 = v196 * v262 + a6 * a7;
        v195 = v196 * v258 + v192 * a7;
LABEL_111:
        v171 = v171 + sqrt((v194 - a8) * (v194 - a8) + (v195 - a9) * (v195 - a9));
        a9 = v195;
        a8 = v194;
      }
    }

    a1 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
    v172 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
    *v172 = v171;
    *(v172 + 8) = v170;
    v173 = sub_24A5A5880(*v21, *(v21 + 1), v21[16], *v22, *(v22 + 1), *(v22 + 16));
    v174 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
    *v174 = v173;
    v174[8] = v175 & 1;
    v20 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
    if ((v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
    {
      sub_24A5DF354(*v20);
    }

    a10 = v230;
    if ((v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
    {
      sub_24A5DF5EC(*&v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor]);
    }

    if ((v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
    {
      v176 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
      *v176 = *&v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
      v176[16] = 0;
      if ((*(v20 + 8) & 1) == 0)
      {
        sub_24A5DF354(*v20);
      }
    }

    if ((v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
    {
      v177 = &v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
      *v177 = *&v156[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
      v177[8] = 0;
    }

    [v156 setZPosition_];

    [v244 addChild_];
    v19 = v156;
    MEMORY[0x24C21A660]();
    if (*((v293 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24A62ED84();
    }

    result = sub_24A62EDA4();
    a3 = v293;
    if ((v237 & 1) == 0 && (*(v228 + 80) & 1) == 0 && (*(v228 + 16) & 1) == 0 && *(v228 + 96) != 1)
    {
      v179 = *(v228 + 8);
      v180 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        goto LABEL_146;
      }

      v181 = *(v228 + 88);
      v182 = v180 * v181;
      if ((v180 * v181) >> 64 != (v180 * v181) >> 63)
      {
        goto LABEL_147;
      }

      if (!v182)
      {
        goto LABEL_148;
      }

      if (!(v241 % v182))
      {
        break;
      }
    }

LABEL_136:

    v59 = v245;
    if (v251 == v243)
    {
      goto LABEL_139;
    }

    v65 = v251 + 1;
    v20 = v251;
    if (v251 >= *(v229 + 16))
    {
      goto LABEL_142;
    }
  }

  a8 = v241;
  a9 = round((v226 * v241 + *(v228 + 72)) * 10.0) / 10.0;
  v183 = a9 * 10.0;
  if (COERCE_UNSIGNED_INT64(fabs(a9 * 10.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v183 <= -9.22337204e18)
    {
      goto LABEL_153;
    }

    if (v183 >= 9.22337204e18)
    {
      goto LABEL_154;
    }

    v184 = v183;
    v185 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v185 setNumberStyle_];
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v184 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      [v185 setMaximumFractionDigits_];
    }

    else
    {
      [v185 setMinimumFractionDigits_];
      [v185 setMaximumFractionDigits_];
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v199 = [v185 stringFromNumber_];

    if (v199)
    {
      v259 = sub_24A62EC14();

      v200 = *(v247 + v242);
      v201 = *(v228 + 136);
      v270 = *(v228 + 120);
      v271 = v201;
      *v272 = *(v228 + 152);
      *&v272[9] = *(v228 + 161);
      v250 = type metadata accessor for FMPFSKLabelNode();
      v202 = objc_allocWithZone(v250);
      v202[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_experienceType] = v200;
      v203 = *(&v270 + 1);
      if (*(&v270 + 1))
      {
        v204 = v270;
        a9 = *(&v271 + 1);
        v205 = v271;
        v207 = *&v272[8];
        v206 = *v272;
        v208 = *&v272[16];
        v209 = v272[24];
      }

      else
      {
        if (qword_27EF4EA50 != -1)
        {
          swift_once();
        }

        *&v269[9] = *(&xmmword_27EF5C6D8 + 9);
        v268 = xmmword_27EF5C6C8;
        *v269 = xmmword_27EF5C6D8;
        v267 = xmmword_27EF5C6B8;
        v207 = *(&xmmword_27EF5C6D8 + 1);
        *&v208 = *(&xmmword_27EF5C6D8 + 9) >> 56;
        v209 = byte_27EF5C6F0;
        v263 = xmmword_27EF5C6D8;
        a9 = *(&xmmword_27EF5C6C8 + 1);
        v203 = *(&xmmword_27EF5C6B8 + 1);
        v205 = xmmword_27EF5C6C8;
        v204 = xmmword_27EF5C6B8;
        sub_24A5A3F4C(&v267, v266);
        v206 = v263;
      }

      v264 = v206;
      *&v267 = v204;
      *(&v267 + 1) = v203;
      *&v268 = v205;
      *(&v268 + 1) = a9;
      *v269 = v206;
      *&v269[8] = v207;
      *&v269[16] = v208;
      v257 = v209;
      v269[24] = v209 & 1;
      v210 = &v202[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_style];
      v211 = v267;
      v212 = v268;
      v213 = *v269;
      *(v210 + 41) = *&v269[9];
      v210[1] = v212;
      v210[2] = v213;
      *v210 = v211;
      *&v202[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_normalizedIndex] = 1.0 - a8 / v225;
      v214 = objc_allocWithZone(MEMORY[0x277CDCF48]);
      sub_24A5EB504(&v270, v266);
      sub_24A5A3F4C(&v267, v266);
      v215 = sub_24A62EBE4();
      v216 = [v214 initWithFontNamed_];

      [v216 setFontSize_];
      [v216 setFontColor_];
      v217 = v202;
      v21 = v259;
      v218 = sub_24A62EBE4();
      [v216 setText_];

      [v216 setVerticalAlignmentMode_];
      [v216 setHorizontalAlignmentMode_];
      [v216 setNumberOfLines_];
      *&v217[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_labelNode] = v216;
      v265.receiver = v217;
      v265.super_class = v250;
      v219 = v216;
      v22 = objc_msgSendSuper2(&v265, sel_init);
      [v22 addChild_];
      v220 = sub_24A62EBE4();
      [v22 setName_];

      LOBYTE(v220) = sub_24A62ECD4();

      v221 = 0.0;
      if ((v220 & 1) != 0 && [v219 horizontalAlignmentMode] == 2)
      {
        [v219 fontSize];
        v221 = v222 * -0.125;
      }

      v223 = 0.0;
      if (v257)
      {
        v224 = 0.0;
      }

      else
      {
        v224 = v208;
      }

      if ((v257 & 1) == 0)
      {
        v223 = v207;
      }

      [v22 setPosition_];

      sub_24A5EB574(&v267);
      [v227 addChild_];
    }

    goto LABEL_136;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t sub_24A5EB504(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF51AB8, &qword_24A63B078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5EB69C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24A62E614();
  *(a1 + *(sub_24A508FA4(&qword_27EF51D08, &qword_24A63B708) + 36)) = 0;
  v4 = sub_24A62E9C4();
  v6 = v5;
  if (sub_24A62E624())
  {
  }

  else
  {
    v3 = sub_24A62E864();
  }

  result = sub_24A508FA4(&qword_27EF51D10, &qword_24A63B710);
  v8 = (a1 + *(result + 36));
  *v8 = v3;
  v8[1] = v4;
  v8[2] = v6;
  return result;
}

uint64_t sub_24A5EB75C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35[1] = a1;
  v3 = sub_24A508FA4(&qword_27EF51AF0, &qword_24A63B1A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v35 - v4);
  v6 = sub_24A508FA4(&qword_27EF51AF8, &qword_24A63B1B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v35 - v8;
  v10 = sub_24A508FA4(&qword_27EF51B00, &qword_24A63B1B8);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v13 = sub_24A508FA4(&qword_27EF51B08, &qword_24A63B1C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  *v5 = sub_24A62E9C4();
  v5[1] = v17;
  v18 = sub_24A508FA4(&qword_27EF51B10, &qword_24A63B1C8);
  sub_24A5EBCA8(v2, v5 + *(v18 + 44));
  sub_24A62E9C4();
  sub_24A62E434();
  sub_24A55B7E0(v5, v9, &qword_27EF51AF0, &qword_24A63B1A8);
  v19 = &v9[*(v7 + 44)];
  v20 = v45;
  *(v19 + 4) = v44;
  *(v19 + 5) = v20;
  *(v19 + 6) = v46;
  v21 = v41;
  *v19 = v40;
  *(v19 + 1) = v21;
  v22 = v43;
  *(v19 + 2) = v42;
  *(v19 + 3) = v22;
  sub_24A55B7E0(v9, v12, &qword_27EF51AF8, &qword_24A63B1B0);
  v23 = &v12[*(v10 + 36)];
  *v23 = nullsub_1;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  if (*(v2 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v39 = v36;
    v24 = swift_allocObject();
    v25 = *(v2 + 80);
    v24[5] = *(v2 + 64);
    v24[6] = v25;
    v24[7] = *(v2 + 96);
    v26 = *(v2 + 16);
    v24[1] = *v2;
    v24[2] = v26;
    v27 = *(v2 + 48);
    v24[3] = *(v2 + 32);
    v24[4] = v27;
    sub_24A59838C(v2, &v36);
    v28 = sub_24A5F09A4();
    v29 = sub_24A50E3A4();
    sub_24A62E7F4();

    sub_24A50D6A4(v12, &qword_27EF51B00, &qword_24A63B1B8);
    v36 = *(v2 + 64);
    sub_24A508FA4(&qword_27EF51B30, &qword_24A63B218);
    sub_24A62E904();
    v30 = swift_allocObject();
    v31 = *(v2 + 80);
    v30[5] = *(v2 + 64);
    v30[6] = v31;
    v30[7] = *(v2 + 96);
    v32 = *(v2 + 16);
    v30[1] = *v2;
    v30[2] = v32;
    v33 = *(v2 + 48);
    v30[3] = *(v2 + 32);
    v30[4] = v33;
    sub_24A59838C(v2, &v36);
    *&v36 = v10;
    *(&v36 + 1) = &type metadata for VFXManager.State;
    v37 = v28;
    v38 = v29;
    swift_getOpaqueTypeConformance2();
    sub_24A62E7F4();

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EBCA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v54 = a1;
  v64 = a2;
  v3 = sub_24A508FA4(&qword_27EF51B40, &qword_24A63B228);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_24A508FA4(&qword_27EF51B48, &qword_24A63B230);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = sub_24A508FA4(&qword_27EF51B50, &qword_24A63B238);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  v63 = sub_24A62E524();
  v89 = 0;
  sub_24A5EC3D8(v2, &v66);
  v111 = *&v67[48];
  v112 = *&v67[64];
  v113 = *&v67[80];
  v114 = v67[96];
  v107 = v66;
  v108 = *v67;
  v109 = *&v67[16];
  v110 = *&v67[32];
  v115[0] = v66;
  v115[1] = *v67;
  v115[2] = *&v67[16];
  v115[3] = *&v67[32];
  v115[4] = *&v67[48];
  v115[5] = *&v67[64];
  v115[6] = *&v67[80];
  v116 = v67[96];
  sub_24A50D63C(&v107, v65, &qword_27EF51B58, &qword_24A63B240);
  sub_24A50D6A4(v115, &qword_27EF51B58, &qword_24A63B240);
  *&v88[71] = v111;
  *&v88[87] = v112;
  *&v88[103] = v113;
  *&v88[7] = v107;
  *&v88[23] = v108;
  *&v88[39] = v109;
  v88[119] = v114;
  *&v88[55] = v110;
  LOBYTE(v2) = v89;
  sub_24A62E9D4();
  sub_24A62E434();
  *&v90[55] = v96;
  *&v90[71] = v97;
  *&v90[87] = v98;
  *&v90[103] = v99;
  *&v90[7] = v93;
  *&v90[23] = v94;
  *&v90[39] = v95;
  v60 = sub_24A62E694();
  sub_24A62E3B4();
  v58 = v19;
  v59 = v18;
  v56 = v21;
  v57 = v20;
  v91 = 0;
  v55 = sub_24A62E674();
  sub_24A62E3B4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v92 = 0;
  *v5 = sub_24A62E514();
  *(v5 + 1) = 0x4026000000000000;
  v5[16] = 0;
  v30 = sub_24A508FA4(&qword_27EF51B60, &qword_24A63B248);
  sub_24A5EC8F4(v54, &v5[*(v30 + 44)]);
  sub_24A62E9D4();
  sub_24A62E434();
  sub_24A55B7E0(v5, v9, &qword_27EF51B40, &qword_24A63B228);
  v31 = &v9[*(v7 + 44)];
  v32 = v105;
  *(v31 + 4) = v104;
  *(v31 + 5) = v32;
  *(v31 + 6) = v106;
  v33 = v101;
  *v31 = v100;
  *(v31 + 1) = v33;
  v34 = v103;
  *(v31 + 2) = v102;
  *(v31 + 3) = v34;
  LOBYTE(v5) = sub_24A62E6A4();
  sub_24A62E3B4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24A55B7E0(v9, v15, &qword_27EF51B48, &qword_24A63B230);
  v43 = &v15[*(v11 + 44)];
  *v43 = v5;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = v61;
  sub_24A55B7E0(v15, v61, &qword_27EF51B50, &qword_24A63B238);
  v45 = v62;
  sub_24A50D63C(v44, v62, &qword_27EF51B50, &qword_24A63B238);
  *(&v65[10] + 1) = *&v88[64];
  *(&v65[12] + 1) = *&v88[80];
  *(&v65[14] + 1) = *&v88[96];
  *(&v65[2] + 1) = *v88;
  *(&v65[4] + 1) = *&v88[16];
  *(&v65[6] + 1) = *&v88[32];
  *(&v65[8] + 1) = *&v88[48];
  *(&v65[23] + 1) = *&v90[48];
  *(&v65[21] + 1) = *&v90[32];
  *(&v65[19] + 1) = *&v90[16];
  *(&v65[17] + 1) = *v90;
  v65[31] = *&v90[111];
  *(&v65[29] + 1) = *&v90[96];
  *(&v65[27] + 1) = *&v90[80];
  v46 = v63;
  v65[0] = v63;
  v65[1] = 0;
  LOBYTE(v65[2]) = v2;
  *(&v65[16] + 1) = *&v88[112];
  *(&v65[25] + 1) = *&v90[64];
  LOBYTE(v15) = v60;
  LOBYTE(v65[32]) = v60;
  v48 = v58;
  v47 = v59;
  v65[33] = v59;
  v65[34] = v58;
  v50 = v56;
  v49 = v57;
  v65[35] = v57;
  v65[36] = v56;
  LOBYTE(v65[37]) = 0;
  LOBYTE(v7) = v55;
  LOBYTE(v65[38]) = v55;
  v65[39] = v23;
  v65[40] = v25;
  v65[41] = v27;
  v65[42] = v29;
  LOBYTE(v65[43]) = 0;
  v51 = v64;
  memcpy(v64, v65, 0x159uLL);
  v52 = sub_24A508FA4(&qword_27EF51B68, &qword_24A63B250);
  sub_24A50D63C(v45, v51 + *(v52 + 48), &qword_27EF51B50, &qword_24A63B238);
  sub_24A50D63C(v65, &v66, &qword_27EF51B70, &qword_24A63B258);
  sub_24A50D6A4(v44, &qword_27EF51B50, &qword_24A63B238);
  sub_24A50D6A4(v45, &qword_27EF51B50, &qword_24A63B238);
  *&v67[65] = *&v88[64];
  *&v67[81] = *&v88[80];
  *&v67[97] = *&v88[96];
  *&v67[1] = *v88;
  *&v67[17] = *&v88[16];
  *&v67[33] = *&v88[32];
  *&v67[49] = *&v88[48];
  v72 = *&v90[48];
  v71 = *&v90[32];
  v70 = *&v90[16];
  v69 = *v90;
  *&v75[15] = *&v90[111];
  *v75 = *&v90[96];
  v74 = *&v90[80];
  v66 = v46;
  v67[0] = v2;
  v68 = *&v88[112];
  v73 = *&v90[64];
  v76 = v15;
  v77 = v47;
  v78 = v48;
  v79 = v49;
  v80 = v50;
  v81 = 0;
  v82 = v7;
  v83 = v23;
  v84 = v25;
  v85 = v27;
  v86 = v29;
  v87 = 0;
  return sub_24A50D6A4(&v66, &qword_27EF51B70, &qword_24A63B258);
}

void sub_24A5EC3D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v60 = sub_24A5D2200(0x454C5449545F3152, 0xE800000000000000);
  v61 = v6;
  v50 = sub_24A55BEBC();
  v7 = sub_24A62E794();
  v9 = v8;
  v11 = v10;
  sub_24A62E6D4();
  v12 = sub_24A62E6B4();
  v13 = *(v12 - 8);
  v48 = *(v13 + 56);
  v49 = v12;
  v47 = v13 + 56;
  v48(v5, 1, 1);
  sub_24A62E704();
  v52 = v5;
  sub_24A50D6A4(v5, &qword_27EF51CB0, &qword_24A63B450);
  v14 = sub_24A62E784();
  v16 = v15;
  v18 = v17;

  sub_24A5F13C8(v7, v9, v11 & 1);

  v60 = sub_24A62E854();
  v19 = sub_24A62E774();
  v54 = v20;
  v55 = v19;
  v51 = v21;
  v56 = v22;
  sub_24A5F13C8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  if (*(v46 + 16))
  {

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v23 = sub_24A62E794();
    v25 = v24;
    v27 = v26;
    sub_24A62E6F4();
    v28 = v52;
    (v48)(v52, 1, 1, v49);
    sub_24A62E704();
    sub_24A50D6A4(v28, &qword_27EF51CB0, &qword_24A63B450);
    v29 = sub_24A62E784();
    v31 = v30;
    v33 = v32;

    sub_24A5F13C8(v23, v25, v27 & 1);

    v60 = sub_24A62E854();
    v34 = sub_24A62E774();
    v36 = v35;
    LOBYTE(v25) = v37;
    v39 = v38;
    sub_24A5F13C8(v29, v31, v33 & 1);

    v40 = swift_getKeyPath();
    v41 = v51 & 1;
    LOBYTE(v60) = v51 & 1;
    v59 = v51 & 1;
    v58 = v25 & 1;
    v57 = 1;
    v43 = v54;
    v42 = v55;
    *a2 = v55;
    *(a2 + 8) = v43;
    *(a2 + 16) = v41;
    v44 = KeyPath;
    *(a2 + 24) = v56;
    *(a2 + 32) = v44;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0x3FE75C28F5C28F5CLL;
    *(a2 + 56) = v34;
    *(a2 + 64) = v36;
    *(a2 + 72) = v25 & 1;
    *(a2 + 80) = v39;
    *(a2 + 88) = v40;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 1;
    sub_24A5F144C(v42, v43, v41);

    sub_24A5F144C(v34, v36, v25 & 1);

    sub_24A5F13C8(v34, v36, v25 & 1);

    sub_24A5F13C8(v42, v43, v60);
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    sub_24A62E454();
    __break(1u);
  }
}

uint64_t sub_24A5EC8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51B78, &qword_24A63B260);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v32 = sub_24A62E524();
  v50 = 0;
  sub_24A5ECD70(a1, &v41);
  v64 = *&v42[22];
  v65 = *&v42[24];
  v66 = *&v42[26];
  v67 = *&v42[28];
  v60 = *&v42[14];
  v61 = *&v42[16];
  v62 = *&v42[18];
  v63 = *&v42[20];
  v56 = *&v42[6];
  v57 = *&v42[8];
  v58 = *&v42[10];
  v59 = *&v42[12];
  v52 = v41;
  v53 = *v42;
  v54 = *&v42[2];
  v55 = *&v42[4];
  v68[12] = *&v42[22];
  v68[13] = *&v42[24];
  v68[14] = *&v42[26];
  v68[15] = *&v42[28];
  v68[8] = *&v42[14];
  v68[9] = *&v42[16];
  v68[10] = *&v42[18];
  v68[11] = *&v42[20];
  v68[4] = *&v42[6];
  v68[5] = *&v42[8];
  v68[6] = *&v42[10];
  v68[7] = *&v42[12];
  v68[0] = v41;
  v68[1] = *v42;
  v68[2] = *&v42[2];
  v68[3] = *&v42[4];
  sub_24A50D63C(&v52, v40, &qword_27EF51B80, &qword_24A63B268);
  sub_24A50D6A4(v68, &qword_27EF51B80, &qword_24A63B268);
  *&v49[199] = v64;
  *&v49[215] = v65;
  *&v49[231] = v66;
  *&v49[247] = v67;
  *&v49[135] = v60;
  *&v49[151] = v61;
  *&v49[167] = v62;
  *&v49[183] = v63;
  *&v49[71] = v56;
  *&v49[87] = v57;
  *&v49[103] = v58;
  *&v49[119] = v59;
  *&v49[7] = v52;
  *&v49[23] = v53;
  *&v49[39] = v54;
  *&v49[55] = v55;
  v11 = v50;
  sub_24A62E9D4();
  sub_24A62E434();
  v12 = sub_24A62E674();
  sub_24A62E3B4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v51 = 0;
  *v10 = sub_24A62E504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = sub_24A508FA4(&qword_27EF51B88, &qword_24A63B270);
  sub_24A5ED7D4(a1, &v10[*(v21 + 44)]);
  v22 = sub_24A62E674();
  sub_24A62E3B4();
  v23 = &v10[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = v7;
  sub_24A50D63C(v10, v7, &qword_27EF51B78, &qword_24A63B260);
  *a2 = 0;
  *(a2 + 8) = 1;
  v29 = v32;
  v40[0] = v32;
  v40[1] = 0;
  LOBYTE(v40[2]) = v11;
  memcpy(&v40[2] + 1, v49, 0x107uLL);
  *&v40[43] = v37;
  *&v40[45] = v38;
  *&v40[47] = v39;
  *&v40[35] = v33;
  *&v40[37] = v34;
  *&v40[39] = v35;
  *&v40[41] = v36;
  LOBYTE(v40[49]) = v12;
  v40[50] = v14;
  v40[51] = v16;
  v40[52] = v18;
  v40[53] = v20;
  LOBYTE(v40[54]) = 0;
  memcpy((a2 + 16), v40, 0x1B1uLL);
  v30 = sub_24A508FA4(&qword_27EF51B90, &qword_24A63B278);
  sub_24A50D63C(v28, a2 + *(v30 + 64), &qword_27EF51B78, &qword_24A63B260);
  sub_24A50D63C(v40, &v41, &qword_27EF51B98, &qword_24A63B280);
  sub_24A50D6A4(v10, &qword_27EF51B78, &qword_24A63B260);
  sub_24A50D6A4(v28, &qword_27EF51B78, &qword_24A63B260);
  v41 = v29;
  LOBYTE(v42[0]) = v11;
  memcpy(v42 + 1, v49, 0x107uLL);
  *&v42[41] = v37;
  *&v42[43] = v38;
  *&v42[45] = v39;
  *&v42[33] = v33;
  *&v42[35] = v34;
  *&v42[37] = v35;
  *&v42[39] = v36;
  v43 = v12;
  v44 = v14;
  v45 = v16;
  v46 = v18;
  v47 = v20;
  v48 = 0;
  return sub_24A50D6A4(&v41, &qword_27EF51B98, &qword_24A63B280);
}

uint64_t sub_24A5ECD70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v3 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v72 - v4;
  v80 = a1;
  v6 = a1[2];
  if (v6)
  {
    swift_retain_n();
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v72[1] = sub_24A55BEBC();
    v7 = sub_24A62E794();
    v9 = v8;
    v11 = v10;
    v86 = v12;
    sub_24A62E6E4();
    v13 = *MEMORY[0x277CE09A0];
    v14 = sub_24A62E6B4();
    v15 = *(v14 - 8);
    v16 = *(v15 + 104);
    v77 = v13;
    v75 = v15 + 104;
    v73 = v16;
    v16(v5, v13, v14);
    v17 = *(v15 + 56);
    v78 = v14;
    v76 = v15 + 56;
    v74 = v17;
    v17(v5, 0, 1, v14);
    sub_24A62E704();
    v79 = v5;
    sub_24A50D6A4(v5, &qword_27EF51CB0, &qword_24A63B450);
    v18 = sub_24A62E784();
    v20 = v19;
    v72[0] = v6;
    v22 = v21;

    sub_24A5F13C8(v7, v9, v11 & 1);

    v118[0] = sub_24A62E854();
    v81 = sub_24A62E774();
    v82 = v23;
    v86 = v24;
    v26 = v25;
    sub_24A5F13C8(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    sub_24A62E9D4();
    sub_24A62E3D4();
    v84 = v26 & 1;
    v136 = v26 & 1;
    *&v134[7] = v137;
    *&v134[23] = v138;
    *&v134[39] = v139;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    sub_24A62EC84();

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v27 = sub_24A62E794();
    v29 = v28;
    v31 = v30;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v32 = sub_24A62EC84();

    v33 = v79;
    if (v32)
    {
      sub_24A62E6C4();
    }

    else
    {
      sub_24A62E6E4();
    }

    v34 = v78;
    v73(v33, v77, v78);
    v74(v33, 0, 1, v34);
    sub_24A62E704();
    sub_24A50D6A4(v33, &qword_27EF51CB0, &qword_24A63B450);
    v35 = sub_24A62E784();
    v37 = v36;
    v39 = v38;

    sub_24A5F13C8(v27, v29, v31 & 1);

    sub_24A62E854();
    if (v80[6])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      v40 = sub_24A62E864();

      v118[0] = v40;
      v41 = sub_24A62E774();
      v43 = v42;
      v45 = v44;
      v80 = v46;
      sub_24A5F13C8(v35, v37, v39 & 1);

      v47 = swift_getKeyPath();
      sub_24A62E9C4();
      sub_24A62E434();
      *&v131[55] = v143;
      *&v131[71] = v144;
      *&v131[87] = v145;
      *&v131[103] = v146;
      *&v131[7] = v140;
      *&v131[23] = v141;
      *&v131[39] = v142;
      v49 = v81;
      v48 = v82;
      *&v112 = v81;
      *(&v112 + 1) = v86;
      LOBYTE(v113) = v84;
      DWORD1(v113) = *&v135[3];
      *(&v113 + 1) = *v135;
      *(&v113 + 1) = v82;
      *&v114[0] = KeyPath;
      BYTE8(v114[0]) = 0;
      *(v114 + 9) = *v134;
      *(&v114[2] + 9) = *&v134[32];
      *(&v114[1] + 9) = *&v134[16];
      *(&v114[3] + 1) = *&v134[47];
      v96 = v112;
      v97 = v113;
      v100 = v114[2];
      v101 = v114[3];
      v98 = v114[0];
      v99 = v114[1];
      *&v115 = v41;
      v50 = v43;
      *(&v115 + 1) = v43;
      LOBYTE(v116) = v45 & 1;
      DWORD1(v116) = *&v132[3];
      *(&v116 + 1) = *v132;
      v51 = v80;
      *(&v116 + 1) = v80;
      *&v117[0] = v47;
      BYTE8(v117[0]) = 0;
      *(&v117[3] + 9) = *&v131[48];
      v53 = *&v131[32];
      v52 = *&v131[48];
      *(&v117[2] + 9) = *&v131[32];
      *(&v117[1] + 9) = *&v131[16];
      v55 = *v131;
      v54 = *&v131[16];
      *(v117 + 9) = *v131;
      *(&v117[7] + 1) = *(&v146 + 1);
      v56 = *&v131[96];
      *(&v117[6] + 9) = *&v131[96];
      v57 = *&v131[80];
      *(&v117[5] + 9) = *&v131[80];
      v58 = *&v131[64];
      *(&v117[4] + 9) = *&v131[64];
      v102 = v115;
      v103 = v116;
      v106 = v117[2];
      v107 = v117[3];
      v104 = v117[0];
      v105 = v117[1];
      v110 = v117[6];
      v111 = v117[7];
      v108 = v117[4];
      v109 = v117[5];
      v59 = v117[5];
      v60 = v83;
      v83[12] = v117[4];
      v60[13] = v59;
      v61 = v111;
      v60[14] = v110;
      v60[15] = v61;
      v62 = v105;
      v60[8] = v104;
      v60[9] = v62;
      v63 = v107;
      v60[10] = v106;
      v60[11] = v63;
      v64 = v101;
      v60[4] = v100;
      v60[5] = v64;
      v65 = v103;
      v60[6] = v102;
      v60[7] = v65;
      v66 = v97;
      *v60 = v96;
      v60[1] = v66;
      v67 = v99;
      v60[2] = v98;
      v60[3] = v67;
      v128 = v58;
      v129 = v57;
      v130[0] = v56;
      v133 = v45 & 1;
      v118[0] = v41;
      v118[1] = v50;
      v119 = v45 & 1;
      *v120 = *v132;
      *&v120[3] = *&v132[3];
      v121 = v51;
      v122 = v47;
      v123 = 0;
      *(v130 + 15) = *&v131[111];
      v124 = v55;
      v125 = v54;
      v126 = v53;
      v127 = v52;
      sub_24A50D63C(&v112, v87, &qword_27EF51CF8, &qword_24A63B5E8);
      sub_24A50D63C(&v115, v87, &qword_27EF51D00, &qword_24A63B5F0);
      sub_24A50D6A4(v118, &qword_27EF51D00, &qword_24A63B5F0);
      v87[0] = v49;
      v87[1] = v86;
      v88 = v84;
      *v89 = *v135;
      *&v89[3] = *&v135[3];
      v90 = v48;
      v91 = KeyPath;
      v92 = 0;
      v93 = *v134;
      v94 = *&v134[16];
      v95[0] = *&v134[32];
      *(v95 + 15) = *&v134[47];
      return sub_24A50D6A4(v87, &qword_27EF51CF8, &qword_24A63B5E8);
    }

    type metadata accessor for PFAnimationCoordinator(0);
    v69 = &qword_27EF4F440;
    v70 = type metadata accessor for PFAnimationCoordinator;
    v71 = &unk_24A635090;
  }

  else
  {
    type metadata accessor for VFXManager(0);
    v69 = &qword_27EF4F438;
    v70 = type metadata accessor for VFXManager;
    v71 = &protocol conformance descriptor for VFXManager;
  }

  sub_24A5F1770(v69, v70, v71);
  result = sub_24A62E454();
  __break(1u);
  return result;
}

uint64_t sub_24A5ED7D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = sub_24A508FA4(&qword_27EF51BA0, &qword_24A63B288);
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x28223BE20](v3);
  v133 = &v115 - v4;
  v132 = sub_24A508FA4(&qword_27EF51BA8, &qword_24A63B290);
  MEMORY[0x28223BE20](v132);
  v138 = &v115 - v5;
  v137 = sub_24A508FA4(&qword_27EF51BB0, &qword_24A63B298);
  MEMORY[0x28223BE20](v137);
  v141 = &v115 - v6;
  v140 = sub_24A508FA4(&qword_27EF51BB8, &qword_24A63B2A0);
  MEMORY[0x28223BE20](v140);
  v143 = &v115 - v7;
  v8 = sub_24A508FA4(&qword_27EF51BC0, &qword_24A63B2A8);
  MEMORY[0x28223BE20](v8 - 8);
  v145 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = &v115 - v11;
  MEMORY[0x28223BE20](v12);
  v144 = &v115 - v13;
  v14 = sub_24A508FA4(&qword_27EF51BC8, &qword_24A63B2B0);
  v15 = *(v14 - 8);
  v117 = v14;
  v118 = v15;
  MEMORY[0x28223BE20](v14);
  v116 = &v115 - v16;
  v17 = sub_24A508FA4(&qword_27EF51BD0, &qword_24A63B2B8);
  v122 = *(v17 - 8);
  v123 = v17;
  MEMORY[0x28223BE20](v17);
  v115 = &v115 - v18;
  v120 = sub_24A508FA4(&qword_27EF51BD8, &qword_24A63B2C0);
  MEMORY[0x28223BE20](v120);
  v121 = &v115 - v19;
  v119 = sub_24A508FA4(&qword_27EF51BE0, &qword_24A63B2C8);
  MEMORY[0x28223BE20](v119);
  v127 = &v115 - v20;
  v125 = sub_24A508FA4(&qword_27EF51BE8, &qword_24A63B2D0);
  MEMORY[0x28223BE20](v125);
  v131 = &v115 - v21;
  v130 = sub_24A508FA4(&qword_27EF51BF0, &qword_24A63B2D8);
  MEMORY[0x28223BE20](v130);
  v129 = &v115 - v22;
  v23 = sub_24A508FA4(&qword_27EF51BF8, &qword_24A63B2E0);
  MEMORY[0x28223BE20](v23 - 8);
  v139 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v115 - v26;
  MEMORY[0x28223BE20](v27);
  v148 = &v115 - v28;
  v29 = sub_24A508FA4(&qword_27EF51C00, &qword_24A63B2E8);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v115 - v31;
  v33 = sub_24A508FA4(&qword_27EF51C08, &qword_24A63B2F0);
  MEMORY[0x28223BE20](v33 - 8);
  v136 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v115 - v36;
  v38 = swift_allocObject();
  v39 = *(a1 + 5);
  v38[5] = *(a1 + 4);
  v38[6] = v39;
  v38[7] = *(a1 + 6);
  v40 = *(a1 + 1);
  v38[1] = *a1;
  v38[2] = v40;
  v41 = *(a1 + 3);
  v38[3] = *(a1 + 2);
  v38[4] = v41;
  sub_24A59838C(a1, v174);
  sub_24A508FA4(&qword_27EF51C10, &qword_24A63B2F8);
  sub_24A5F0B28();
  sub_24A62E924();
  v43 = *a1;
  *&v174[0] = a1[1];
  v42 = *&v174[0];
  *(&v174[0] + 1) = v43;
  v44 = MEMORY[0x277CDF028];
  sub_24A518A6C(&qword_27EF51C30, &qword_27EF51C00, &qword_24A63B2E8, MEMORY[0x277CDF028]);
  v45 = sub_24A5F0BE0();
  swift_retain_n();
  sub_24A62E7C4();
  (*(v30 + 8))(v32, v29);
  v46 = v115;
  v47 = sub_24A62E9C4();
  v49 = v48;
  v50 = *(sub_24A508FA4(&qword_27EF51C40, &qword_24A63B308) + 36);
  v147 = v37;
  v51 = &v37[v50];
  *v51 = 0x4024000000000000;
  *(v51 + 1) = v47;
  *(v51 + 2) = v49;
  v52 = swift_allocObject();
  v53 = *(a1 + 5);
  v52[5] = *(a1 + 4);
  v52[6] = v53;
  v52[7] = *(a1 + 6);
  v54 = *(a1 + 1);
  v52[1] = *a1;
  v52[2] = v54;
  v55 = *(a1 + 3);
  v52[3] = *(a1 + 2);
  v52[4] = v55;
  v149 = a1;
  sub_24A59838C(a1, v174);
  sub_24A508FA4(&qword_27EF51C48, &qword_24A63B310);
  sub_24A5F0C74();
  v56 = v116;
  sub_24A62E924();
  *&v174[0] = v42;
  *(&v174[0] + 1) = v43;
  sub_24A518A6C(&qword_27EF51C68, &qword_27EF51BC8, &qword_24A63B2B0, v44);
  v57 = v117;
  v124 = v45;
  sub_24A62E7C4();

  (*(v118 + 8))(v56, v57);
  if (a1[2])
  {
    swift_retain_n();
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v126 = v42;
    if (v174[0])
    {
      v58 = sub_24A62E854();
    }

    else
    {
      v58 = sub_24A62E834();
    }

    v59 = v58;
    v60 = sub_24A62E684();
    v61 = v121;
    (*(v122 + 32))(v121, v46, v123);
    v62 = &v61[*(v120 + 36)];
    *v62 = v59;
    v62[8] = v60;
    v63 = sub_24A62E9C4();
    v65 = v64;
    v66 = v61;
    v67 = v127;
    sub_24A55B7E0(v66, v127, &qword_27EF51BD8, &qword_24A63B2C0);
    v68 = (v67 + *(v119 + 36));
    *v68 = 0x4024000000000000;
    v68[1] = v63;
    v68[2] = v65;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v174[0]))
    {
      v69 = 1.0;
    }

    else
    {
      v69 = 0.0;
    }

    v70 = v131;
    sub_24A55B7E0(v67, v131, &qword_27EF51BE0, &qword_24A63B2C8);
    *(v70 + *(v125 + 36)) = v69;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v71 = v174[0];
    KeyPath = swift_getKeyPath();
    v73 = swift_allocObject();
    *(v73 + 16) = (v71 & 1) == 0;
    v74 = v129;
    sub_24A55B7E0(v70, v129, &qword_27EF51BE8, &qword_24A63B2D0);
    v75 = (v74 + *(v130 + 36));
    *v75 = KeyPath;
    v75[1] = sub_24A5F0DA4;
    v75[2] = v73;
    v76 = v128;
    sub_24A55B7E0(v74, v128, &qword_27EF51BF0, &qword_24A63B2D8);
    sub_24A55B7E0(v76, v148, &qword_27EF51BF8, &qword_24A63B2E0);
    v77 = swift_allocObject();
    v78 = *(a1 + 5);
    v77[5] = *(a1 + 4);
    v77[6] = v78;
    v77[7] = *(a1 + 6);
    v79 = *(a1 + 1);
    v77[1] = *a1;
    v77[2] = v79;
    v80 = *(a1 + 3);
    v77[3] = *(a1 + 2);
    v77[4] = v80;
    MEMORY[0x28223BE20](v77);
    *(&v115 - 2) = a1;
    sub_24A59838C(a1, v174);
    sub_24A508FA4(&qword_27EF51C70, &qword_24A63B3E0);
    sub_24A5F0DFC();
    v81 = v133;
    sub_24A62E924();
    *&v174[0] = v126;
    *(&v174[0] + 1) = v43;
    sub_24A518A6C(&qword_27EF51C90, &qword_27EF51BA0, &qword_24A63B288, MEMORY[0x277CDF028]);
    v82 = v138;
    v83 = v135;
    sub_24A62E7C4();

    (*(v134 + 8))(v81, v83);
    v84 = sub_24A62E9C4();
    v85 = (v82 + *(v132 + 36));
    *v85 = 0x4024000000000000;
    v85[1] = v84;
    v85[2] = v86;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v87 = 1;
    if (LOBYTE(v174[0]) == 1)
    {
      v174[0] = *(a1 + 5);
      sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
      sub_24A62E904();
      v87 = *&v162 != 0.0;
    }

    v88 = swift_getKeyPath();
    v89 = swift_allocObject();
    *(v89 + 16) = v87;
    v90 = v141;
    sub_24A55B7E0(v82, v141, &qword_27EF51BA8, &qword_24A63B290);
    v91 = (v90 + *(v137 + 36));
    *v91 = v88;
    v91[1] = sub_24A5F17DC;
    v91[2] = v89;
    v92 = sub_24A62E9C4();
    v94 = v93;
    sub_24A5EFE68(a1, &v151);
    v170 = v159;
    v171 = v160;
    v166 = v155;
    v167 = v156;
    v168 = v157;
    v169 = v158;
    v162 = v151;
    v163 = v152;
    v164 = v153;
    v165 = v154;
    *&v172 = v161;
    *(&v172 + 1) = v92;
    v173 = v94;
    v95 = v90;
    v96 = v143;
    sub_24A55B7E0(v95, v143, &qword_27EF51BB0, &qword_24A63B298);
    v97 = v96 + *(v140 + 36);
    v98 = v171;
    *(v97 + 128) = v170;
    *(v97 + 144) = v98;
    *(v97 + 160) = v172;
    *(v97 + 176) = v173;
    v99 = v167;
    *(v97 + 64) = v166;
    *(v97 + 80) = v99;
    v100 = v169;
    *(v97 + 96) = v168;
    *(v97 + 112) = v100;
    v101 = v163;
    *v97 = v162;
    *(v97 + 16) = v101;
    v102 = v165;
    *(v97 + 32) = v164;
    *(v97 + 48) = v102;
    v174[8] = v159;
    v174[9] = v160;
    v174[4] = v155;
    v174[5] = v156;
    v174[6] = v157;
    v174[7] = v158;
    v174[0] = v151;
    v174[1] = v152;
    v174[2] = v153;
    v174[3] = v154;
    v175 = v161;
    v176 = v92;
    v177 = v94;
    sub_24A50D63C(&v162, &v150, &qword_27EF51C98, &qword_24A63B438);
    sub_24A50D6A4(v174, &qword_27EF51C98, &qword_24A63B438);
    v103 = v142;
    sub_24A55B7E0(v96, v142, &qword_27EF51BB8, &qword_24A63B2A0);
    v104 = v103;
    v105 = v144;
    sub_24A55B7E0(v104, v144, &qword_27EF51BC0, &qword_24A63B2A8);
    v106 = v136;
    sub_24A50D63C(v147, v136, &qword_27EF51C08, &qword_24A63B2F0);
    v107 = v148;
    v108 = v139;
    sub_24A50D63C(v148, v139, &qword_27EF51BF8, &qword_24A63B2E0);
    v109 = v145;
    sub_24A50D63C(v105, v145, &qword_27EF51BC0, &qword_24A63B2A8);
    v110 = v146;
    sub_24A50D63C(v106, v146, &qword_27EF51C08, &qword_24A63B2F0);
    v111 = sub_24A508FA4(&qword_27EF51CA0, &qword_24A63B440);
    v112 = v110 + v111[12];
    *v112 = 0;
    *(v112 + 8) = 1;
    sub_24A50D63C(v108, v110 + v111[16], &qword_27EF51BF8, &qword_24A63B2E0);
    v113 = v110 + v111[20];
    *v113 = 0;
    *(v113 + 8) = 1;
    sub_24A50D63C(v109, v110 + v111[24], &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v105, &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v107, &qword_27EF51BF8, &qword_24A63B2E0);
    sub_24A50D6A4(v147, &qword_27EF51C08, &qword_24A63B2F0);
    sub_24A50D6A4(v109, &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v108, &qword_27EF51BF8, &qword_24A63B2E0);
    return sub_24A50D6A4(v106, &qword_27EF51C08, &qword_24A63B2F0);
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EE9F8, v6, v5);
}

uint64_t sub_24A5EE9F8()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24A5EEB14;

    return sub_24A585990();
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EEB14()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5F17E0, v3, v2);
}

double sub_24A5EEC58@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_24A62E9C4();
  v7 = v6;
  v8 = sub_24A62E884();
  sub_24A62E6C4();
  v9 = sub_24A62E6B4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_24A62E704();
  sub_24A50D6A4(v4, &qword_27EF51CB0, &qword_24A63B450);
  KeyPath = swift_getKeyPath();
  v12 = sub_24A62E854();
  sub_24A62E9C4();
  sub_24A62E3D4();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  v13 = v15[1];
  *(a1 + 48) = v15[0];
  *(a1 + 64) = v13;
  result = *&v16;
  *(a1 + 80) = v16;
  return result;
}

uint64_t sub_24A5EEDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EEE70, v6, v5);
}

uint64_t sub_24A5EEE70()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24A5EEF8C;

    return sub_24A585DFC();
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EEF8C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5EF0D0, v3, v2);
}

uint64_t sub_24A5EF0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_24A5EF130@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A62E9C4();
  v6 = v5;
  sub_24A5EF1F0(a1, &v11);
  LOBYTE(a1) = v13;
  v8 = v12;
  v9 = v11;
  sub_24A62E9C4();
  sub_24A62E3D4();
  *&v10[39] = v13;
  *&v10[23] = v12;
  *&v10[7] = v11;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = a1;
  *(a2 + 49) = *v10;
  *(a2 + 65) = *&v10[16];
  result = *&v10[32];
  *(a2 + 81) = *&v10[32];
  *(a2 + 96) = *&v10[47];
  return result;
}

void *sub_24A5EF1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  if (*(a1 + 16))
  {

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v26)
    {
      v7 = sub_24A62E884();
      sub_24A62E6C4();
      v8 = sub_24A62E6B4();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v9 = sub_24A62E704();
      sub_24A50D6A4(v6, &qword_27EF51CB0, &qword_24A63B450);
      KeyPath = swift_getKeyPath();
      v11 = sub_24A62E824();
      v21 = v7;
      v22 = KeyPath;
      v23 = v9;
      v24 = v11;
      v25 = 0;
    }

    else
    {
      v12 = sub_24A62E884();
      sub_24A62E6C4();
      v13 = sub_24A62E6B4();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = sub_24A62E704();
      sub_24A50D6A4(v6, &qword_27EF51CB0, &qword_24A63B450);
      v15 = swift_getKeyPath();
      v16 = sub_24A62E854();
      v21 = v12;
      v22 = v15;
      v23 = v14;
      v24 = v16;
      v25 = 1;
    }

    sub_24A508FA4(&qword_27EF51CB8, &qword_24A63B4A0);
    sub_24A5F1080();
    result = sub_24A62E604();
    v18 = v27;
    v19 = v28;
    *a2 = v26;
    *(a2 + 16) = v18;
    *(a2 + 32) = v19;
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

double sub_24A5EF510(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = sub_24A62EE24();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_24A62EE04();
  sub_24A59838C(a1, v16);
  v9 = sub_24A62EDF4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[5];
  *(v10 + 96) = a1[4];
  *(v10 + 112) = v12;
  *(v10 + 128) = a1[6];
  v13 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v13;
  v14 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v14;
  sub_24A51556C(0, 0, v7, a3, v10);

  return result;
}

uint64_t sub_24A5EF654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EF6EC, v6, v5);
}

uint64_t sub_24A5EF6EC()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24A5EF808;

    return sub_24A585AF4();
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EF808()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5EF94C, v3, v2);
}

uint64_t sub_24A5EF94C()
{

  sub_24A5EF9B0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A5EF9B0()
{
  v1 = sub_24A62E654();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = v0[5];
  v14 = 0;
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  v13[0] = v0[6];
  v14 = 0;
  v5 = sub_24A62E914();
  MEMORY[0x24C21A340](v5, 1.5, 1.0, 0.0);
  v12 = v0;
  v6 = swift_allocObject();
  v7 = v0[5];
  v6[5] = v0[4];
  v6[6] = v7;
  v6[7] = v0[6];
  v8 = v0[1];
  v6[1] = *v0;
  v6[2] = v8;
  v9 = v0[3];
  v6[3] = v0[2];
  v6[4] = v9;
  sub_24A59838C(v0, v13);
  sub_24A62E634();
  sub_24A62E3E4();

  return (*(v2 + 8))(v4, v1);
}

double sub_24A5EFB84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A62E9C4();
  v6 = v5;
  sub_24A5EFC3C(a1, &v13);
  v7 = v14;
  v8 = v15;
  v12 = v13;
  sub_24A62E9C4();
  sub_24A62E3D4();
  *a2 = v4;
  *(a2 + 8) = v6;
  v9 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  v10 = v14;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  result = *&v15;
  *(a2 + 88) = v15;
  return result;
}

void sub_24A5EFC3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24A62E884();
  sub_24A62E6C4();
  v8 = sub_24A62E6B4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_24A62E704();
  sub_24A50D6A4(v6, &qword_27EF51CB0, &qword_24A63B450);
  KeyPath = swift_getKeyPath();
  v11 = sub_24A62E854();
  if (*(a1 + 16))
  {
    v12 = v11;

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v13 = 0.25;
    if (v14[15])
    {
      v13 = 1.0;
    }

    *a2 = v7;
    *(a2 + 8) = KeyPath;
    *(a2 + 16) = v9;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    sub_24A62E454();
    __break(1u);
  }
}

double sub_24A5EFE68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *(a1 + 80);
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E904();
  if (v23 <= 1.0)
  {
    v3 = v23;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = sub_24A62E854();
  sub_24A62E3C4();
  v5 = sub_24A62E9C4();
  v7 = v6;
  v8 = sub_24A62E684();
  sub_24A62E3B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_24A62EA64();
  v18 = v17;
  v20 = v19;
  sub_24A62E904();
  result = v22;
  *a2 = 0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v4;
  *(a2 + 64) = 256;
  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  *(a2 + 88) = v8;
  *(a2 + 96) = v10;
  *(a2 + 104) = v12;
  *(a2 + 112) = v14;
  *(a2 + 120) = v16;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xBFF921FB54442D18;
  *(a2 + 144) = v18;
  *(a2 + 152) = v20;
  *(a2 + 160) = v22;
  return result;
}

void sub_24A5EFFDC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(a3 + 64);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_24A50D63C(&v7, &v4, &qword_27EF51B38, &qword_24A63B220);
  sub_24A508FA4(&qword_27EF51B30, &qword_24A63B218);
  sub_24A62E904();
  if ((sub_24A60D6B4(v3, v4) & 1) == 0)
  {
    v5 = v6;
    LOBYTE(v4) = v3;
    sub_24A62E914();
  }

  sub_24A50D6A4(&v6, &qword_27EF51B30, &qword_24A63B218);
  sub_24A5F00B0();
}

void sub_24A5F00B0()
{
  v1 = v0;
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  sub_24A59838C(v0, v11);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF34();
  sub_24A5983E8(v1);
  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v11[0] = v6;
  *v5 = 136315138;
  if (*(v1 + 16))
  {
    v7 = v6;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v8 = sub_24A62EC44();
    v10 = sub_24A509BA8(v8, v9, v11);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24A503000, v3, v4, "PFFindingOverlayView: VFX State Updated: %s", v5, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
LABEL_6:

    return;
  }

  type metadata accessor for VFXManager(0);
  sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  sub_24A62E454();
  __break(1u);
}

void sub_24A5F02D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if ((sub_24A60D6B4(v4, v3) & 1) == 0)
    {
      sub_24A5833C4(v3);
    }
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    sub_24A62E454();
    __break(1u);
  }
}

uint64_t sub_24A5F03D0(_OWORD *a1)
{
  v2 = sub_24A62E654();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x24C21A340](1.5, 1.0, 0.0);
  v12 = a1;
  v6 = swift_allocObject();
  v7 = a1[5];
  v6[5] = a1[4];
  v6[6] = v7;
  v6[7] = a1[6];
  v8 = a1[1];
  v6[1] = *a1;
  v6[2] = v8;
  v9 = a1[3];
  v6[3] = a1[2];
  v6[4] = v9;
  sub_24A59838C(a1, v13);
  sub_24A62E634();
  sub_24A62E3E4();

  return (*(v3 + 8))(v5, v2);
}

void sub_24A5F0558(double a1)
{
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  sub_24A62E914();
}

double sub_24A5F05F0(uint64_t a1)
{
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  sub_24A62E914();
  return result;
}

double sub_24A5F06BC@<D0>(uint64_t a1@<X8>)
{
  v12 = sub_24A55BB74(0x394139413941, 0xE600000000000000);
  type metadata accessor for VFXManager(0);
  sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  v11 = sub_24A62E474();
  v3 = v2;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5F1770(&qword_27EF50A08, type metadata accessor for VFXManager.Values, &unk_24A63710C);
  v4 = sub_24A62E474();
  v6 = v5;
  type metadata accessor for PFAnimationCoordinator(0);
  sub_24A5F1770(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
  v7 = sub_24A62E474();
  v9 = v8;
  sub_24A62E8F4();
  sub_24A62E8F4();
  sub_24A62E8F4();
  result = v13;
  *a1 = 0x3FC999999999999ALL;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = LOBYTE(v13);
  *(a1 + 72) = v14;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  return result;
}

uint64_t sub_24A5F08C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24A5F0908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A5F09A4()
{
  result = qword_27EF51B18;
  if (!qword_27EF51B18)
  {
    sub_24A50E1E0(&qword_27EF51B00, &qword_24A63B1B8);
    sub_24A5F0A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51B18);
  }

  return result;
}

unint64_t sub_24A5F0A30()
{
  result = qword_27EF51B20;
  if (!qword_27EF51B20)
  {
    sub_24A50E1E0(&qword_27EF51AF8, &qword_24A63B1B0);
    sub_24A518A6C(&qword_27EF51B28, &qword_27EF51AF0, &qword_24A63B1A8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51B20);
  }

  return result;
}

unint64_t sub_24A5F0B28()
{
  result = qword_27EF51C18;
  if (!qword_27EF51C18)
  {
    sub_24A50E1E0(&qword_27EF51C10, &qword_24A63B2F8);
    sub_24A518A6C(&qword_27EF51C20, &qword_27EF51C28, &qword_24A63B300, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C18);
  }

  return result;
}

unint64_t sub_24A5F0BE0()
{
  result = qword_27EF51C38;
  if (!qword_27EF51C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C38);
  }

  return result;
}

unint64_t sub_24A5F0C74()
{
  result = qword_27EF51C50;
  if (!qword_27EF51C50)
  {
    sub_24A50E1E0(&qword_27EF51C48, &qword_24A63B310);
    sub_24A518A6C(&qword_27EF51C58, &qword_27EF51C60, &qword_24A63B318, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C50);
  }

  return result;
}

uint64_t sub_24A5F0D3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A62E4E4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24A5F0DFC()
{
  result = qword_27EF51C78;
  if (!qword_27EF51C78)
  {
    sub_24A50E1E0(&qword_27EF51C70, &qword_24A63B3E0);
    sub_24A518A6C(&qword_27EF51C80, &qword_27EF51C88, &qword_24A63B3E8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C78);
  }

  return result;
}

uint64_t sub_24A5F0EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A62E4C4();
  *a1 = result;
  return result;
}

uint64_t sub_24A5F0F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A51935C;

  return sub_24A5EF654(a1, v4, v5, v1 + 32);
}

uint64_t sub_24A5F1010()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_24A5F1080()
{
  result = qword_27EF51CC0;
  if (!qword_27EF51CC0)
  {
    sub_24A50E1E0(&qword_27EF51CB8, &qword_24A63B4A0);
    sub_24A5F1138();
    sub_24A518A6C(&qword_27EF51CE8, &qword_27EF51CF0, &qword_24A63B4B8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51CC0);
  }

  return result;
}

unint64_t sub_24A5F1138()
{
  result = qword_27EF51CC8;
  if (!qword_27EF51CC8)
  {
    sub_24A50E1E0(&qword_27EF51CD0, &qword_24A63B4A8);
    sub_24A518A6C(&qword_27EF51CD8, &qword_27EF51CE0, &qword_24A63B4B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51CC8);
  }

  return result;
}

uint64_t sub_24A5F11F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A515E5C;

  return sub_24A5EEDD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_24A5F12A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_24A5F1310(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A51935C;

  return sub_24A5EE960(a1, v4, v5, v1 + 32);
}

double sub_24A5F13C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_24A5F13D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A62E4A4();
  *a1 = result;
  return result;
}

double sub_24A5F144C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_24A5F145C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A5F14A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24A5F14F0()
{
  sub_24A50E1E0(&qword_27EF51B08, &qword_24A63B1C0);
  sub_24A50E1E0(&qword_27EF51B00, &qword_24A63B1B8);
  sub_24A5F09A4();
  sub_24A50E3A4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24A5F15D0()
{
  result = qword_27EF51D18;
  if (!qword_27EF51D18)
  {
    sub_24A50E1E0(&qword_27EF51D10, &qword_24A63B710);
    sub_24A5F1688();
    sub_24A518A6C(&qword_27EF51D40, &qword_27EF51D48, &qword_24A63B720, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D18);
  }

  return result;
}

unint64_t sub_24A5F1688()
{
  result = qword_27EF51D20;
  if (!qword_27EF51D20)
  {
    sub_24A50E1E0(&qword_27EF51D08, &qword_24A63B708);
    sub_24A5F1770(&qword_27EF51D28, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_24A518A6C(&qword_27EF51D30, &qword_27EF51D38, &qword_24A63B718, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D20);
  }

  return result;
}

uint64_t sub_24A5F1770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A5F17F8()
{
  result = qword_27EF51D50;
  if (!qword_27EF51D50)
  {
    sub_24A50E1E0(&qword_27EF51D58, &qword_24A63B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D50);
  }

  return result;
}

double sub_24A5F185C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A5F1B68(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24A5F18C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24A62E384();
  return sub_24A514324;
}

uint64_t sub_24A5F194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5F1CB4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A5F19B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5F1CB4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A5F1A14(uint64_t a1)
{
  v2 = sub_24A5F1CB4();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A5F1A64()
{
  result = qword_27EF51D60;
  if (!qword_27EF51D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D60);
  }

  return result;
}

unint64_t sub_24A5F1ABC()
{
  result = qword_27EF51D68;
  if (!qword_27EF51D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D68);
  }

  return result;
}

unint64_t sub_24A5F1B14()
{
  result = qword_27EF51D70;
  if (!qword_27EF51D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D70);
  }

  return result;
}

double sub_24A5F1B68@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A62E764();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMaxX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  sub_24A62E724();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxY(v17);
  sub_24A62E744();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxY(v19);
  sub_24A62E744();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_24A5F1CB4()
{
  result = qword_27EF51D78;
  if (!qword_27EF51D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D78);
  }

  return result;
}

id sub_24A5F1D08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMPFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24A62EBE4();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (v5)
  {
    v6 = [objc_opt_self() textureWithImage_];

    v3 = v5;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CDCF88]) init];
  }

  return v6;
}

double sub_24A5F1E0C()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C0E8);
  v9 = v0;
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = v2;
    v31 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_24A62EC14();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = sub_24A509BA8(v16, v18, aBlock);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMPFSKPatternNode%s: fragmentsStartedOrbiting()", v12, 0xCu);
    sub_24A508C54(v13);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);

    v2 = v30;
    v1 = v31;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = objc_opt_self();
  v22 = v9;
  if ([v21 isMainThread])
  {
    v23 = &v22[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v24 + 8) + 8))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v27 = sub_24A62F014();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_24A5F43AC;
    *(v28 + 24) = v20;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA338;
    v29 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v7, v4, v29);
    _Block_release(v29);

    (*(v2 + 8))(v4, v1);
    (*(v32 + 8))(v7, v33);
  }

  return result;
}

BOOL sub_24A5F231C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

double sub_24A5F238C()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C0E8);
  v9 = v0;
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = v2;
    v31 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_24A62EC14();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = sub_24A509BA8(v16, v18, aBlock);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMPFSKPatternNode%s: fragmentsStoppedOrbiting()", v12, 0xCu);
    sub_24A508C54(v13);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);

    v2 = v30;
    v1 = v31;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = objc_opt_self();
  v22 = v9;
  if ([v21 isMainThread])
  {
    v23 = &v22[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v24 + 8) + 16))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v27 = sub_24A62F014();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_24A5F43A4;
    *(v28 + 24) = v20;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA2C0;
    v29 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v7, v4, v29);
    _Block_release(v29);

    (*(v2 + 8))(v4, v1);
    (*(v32 + 8))(v7, v33);
  }

  return result;
}

BOOL sub_24A5F289C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F290C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 40))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F297C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 48))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F29EC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 56))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2A5C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 64))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2ACC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 72))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2B3C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 80))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

void sub_24A5F2BB4()
{
  v1 = v0;
  sub_24A5F2D1C(v1);
}

void sub_24A5F2BF0()
{
  v1 = v0;
  sub_24A5F30B8(v1);
}

void sub_24A5F2C2C()
{
  v1 = v0;
  sub_24A5F3454(v1);
}

void sub_24A5F2C68()
{
  v1 = v0;
  sub_24A5F37F0(v1);
}

void sub_24A5F2CA4()
{
  v1 = v0;
  sub_24A5F3B8C(v1);
}

void sub_24A5F2CE0()
{
  v1 = v0;
  sub_24A5F3F28(v1);
}

double sub_24A5F2D1C(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 40))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F439C;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA248;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

double sub_24A5F30B8(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 48))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F4394;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA1D0;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

double sub_24A5F3454(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 56))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F438C;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA158;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

double sub_24A5F37F0(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 64))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F434C;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA0E0;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

double sub_24A5F3B8C(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 72))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F4344;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA068;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

double sub_24A5F3F28(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 80))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v17 = sub_24A62F014();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A5F42FC;
    *(v18 + 24) = v10;
    aBlock[4] = sub_24A5F4304;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9FF0;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }

  return result;
}

uint64_t sub_24A5F42C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5F432C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A5F4354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A5F4428(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_24A5F4494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24A5F571C();
    v5 = *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A5F7370;
    *(v7 + 24) = v6;
    aBlock[4] = sub_24A5193D4;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A592ED8;
    aBlock[3] = &unk_285DAA518;
    v8 = _Block_copy(aBlock);
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      sub_24A58E1A8();
      sub_24A5F53E8();
    }
  }
}

void sub_24A5F46C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A5F7370;
  *(v6 + 24) = v5;
  aBlock[4] = sub_24A5193D4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A592ED8;
  aBlock[3] = &unk_285DAA428;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9.receiver = v8;
    v9.super_class = type metadata accessor for FMPFView();
    objc_msgSendSuper2(&v9, sel_dealloc);
  }
}

void sub_24A5F4BB0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633820;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 &selRef_description];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] bottomAnchor];
  v8 = [v0 &selRef_setTexture_atIndex_ + 5];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 &selRef_initWithFrame_ + 1];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v16 = sub_24A62ED54();

  [v2 activateConstraints_];

  v17 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24A633820;
  v19 = [v17 topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v17 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v18 + 40) = v24;
  v25 = [v17 leadingAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v18 + 48) = v27;
  v28 = [v17 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v31 = sub_24A62ED54();

  [v2 activateConstraints_];
}

void sub_24A5F500C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType;
  if (v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType] == 1)
  {
    if (qword_27EF4EA28 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_27EF5C4C8;
  }

  else
  {
    if (qword_27EF4EA20 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_27EF5C3F8;
  }

  v7 = *v6;
  [v0 bounds];
  v9 = v8;
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for FMPFRingView());
  v13 = sub_24A59D454(0, 0, v9, v11, v7);
  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 144];
  v15 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 112];
  v43 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 128];
  v44 = v14;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 144];
  v45 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 160];
  v17 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 80];
  v18 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 48];
  v39 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 64];
  v40 = v17;
  v19 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 80];
  v20 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 112];
  v41 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 96];
  v42 = v20;
  v21 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 16];
  v36[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v36[1] = v21;
  v22 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 48];
  v24 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v23 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 16];
  v37 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 32];
  v38 = v22;
  v55 = v43;
  v56 = v16;
  v57 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 160];
  v51 = v39;
  v52 = v19;
  v53 = v41;
  v54 = v15;
  v47 = v24;
  v48 = v23;
  v35 = v0[v5];
  v34 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_findingType];
  v46 = v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 176];
  v58 = v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 176];
  v49 = v37;
  v50 = v18;
  if (sub_24A5F6234(&v47) == 1)
  {
    __break(1u);
  }

  else
  {
    v59[8] = v55;
    v59[9] = v56;
    v59[10] = v57;
    v60 = v58;
    v59[4] = v51;
    v59[5] = v52;
    v59[6] = v53;
    v59[7] = v54;
    v59[0] = v47;
    v59[1] = v48;
    v59[2] = v49;
    v59[3] = v50;
    v25 = objc_allocWithZone(type metadata accessor for FMPFSKScene());
    v26 = v13;
    sub_24A5F6258(v36, v33);
    v27 = v0;
    v28 = sub_24A5D3188(&v35, &v34, v59, v13, v0, &off_285DA6DA0, v2, v4);
    v29 = v26;
    [v29 setFrame_];
    sub_24A59E410(0, 0, 1);
    v30 = *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView];
    *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView] = v13;

    [v29 setUserInteractionEnabled_];
    [v27 addSubview_];
    sub_24A5D6218(*&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView], 1);
    v31 = *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene] = v28;
    v32 = v28;

    sub_24A5F5ABC(*&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState]);
  }
}

void sub_24A5F5354()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView);
    v5 = v3;
    sub_24A5D6218(v4, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView);
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = *(v1 + v2);
  *(v1 + v2) = 0;
}

void sub_24A5F53E8()
{
  v1 = v0;
  v19 = [objc_allocWithZone(type metadata accessor for FMPFARTrackingConfiguration()) init];
  [v19 setLightEstimationEnabled_];
  [v19 setDisableFrontCamera_];
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v3 = [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] pointOfView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode];
    v5 = v3;
    [v3 addChildNode_];
  }

  [*&v1[v2] setDelegate_];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 isInternalBuild];

  if (v8)
  {
    v9 = sub_24A62EBE4();
    v10 = [v6 BOOLForKey_];

    v11 = v19;
    if (!v10)
    {
      goto LABEL_8;
    }

    v12 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v19 fileURL:0];

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A633830;
    *(v13 + 56) = type metadata accessor for FMPFView();
    *(v13 + 64) = sub_24A5F726C(&qword_27EF50938, v14, type metadata accessor for FMPFView, MEMORY[0x277D85388]);
    *(v13 + 32) = v1;
    sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
    v6 = v12;
    v15 = v1;
    v16 = sub_24A62F1A4();
    v17 = sub_24A62EF64();
    sub_24A62E2D4("🧭 FMPFView%@: Starting ARKit recording", 41, 0, &dword_24A503000, v16, v17, v13);

    [v6 startRecording];
    v11 = v6;
  }

  else
  {
    v11 = v19;
  }

LABEL_8:
  if (!v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType])
  {
    v18 = [*&v1[v2] session];
    [v18 runWithConfiguration:v11 options:0];

    v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 1;
  }

  sub_24A5F5B78(0);
  sub_24A5F5ABC(*&v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState]);
}

void sub_24A5F571C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v2 = [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] session];
  v3 = [v2 configuration];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] == 1)
    {
      v5 = v4;
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24A633830;
      *(v6 + 56) = type metadata accessor for FMPFView();
      *(v6 + 64) = sub_24A5F726C(&qword_27EF50938, v7, type metadata accessor for FMPFView, MEMORY[0x277D85388]);
      *(v6 + 32) = v0;
      sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
      v8 = v0;
      v9 = sub_24A62F1A4();
      v10 = sub_24A62EF64();
      sub_24A62E2D4("🧭 FMPFView%@: Finishing ARKit recording", 42, 0, &dword_24A503000, v9, v10, v6);

      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      v15[4] = sub_24A5F72B4;
      v15[5] = v11;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_24A5F4428;
      v15[3] = &unk_285DAA478;
      v12 = _Block_copy(v15);
      v13 = v8;

      [v5 finishRecordingWithHandler_];

      _Block_release(v12);
    }

    else
    {
    }
  }

  v14 = [*&v0[v1] session];
  [v14 pause];

  v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 0;
}

void sub_24A5F59A4(uint64_t a1, void *a2)
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633830;
  *(v3 + 56) = type metadata accessor for FMPFView();
  *(v3 + 64) = sub_24A5F726C(&qword_27EF50938, v4, type metadata accessor for FMPFView, MEMORY[0x277D85388]);
  *(v3 + 32) = a2;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v5 = a2;
  v7 = sub_24A62F1A4();
  v6 = sub_24A62EF64();
  sub_24A62E2D4("🧭 FMPFView%@: Finished ARKit debug recording", 47, 0, &dword_24A503000, v7, v6, v3);
}

id sub_24A5F5ABC(uint64_t a1)
{
  if (a1 == 3)
  {
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  if (qword_27EF4E988 != -1)
  {
    swift_once();
  }

  if (byte_27EF5C0A0)
  {
LABEL_6:
    v2 = 30;
  }

  else
  {
LABEL_7:
    v2 = 60;
  }

  [*(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView) setPreferredFramesPerSecond_];
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView);

  return [v3 setPreferredFramesPerSecond_];
}

void sub_24A5F5B78(char a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27EF4EAD8 != -1)
  {
    swift_once();
  }

  v4 = qword_27EF5C840;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 standardUserDefaults];
  [v7 fmpfBlackBackdropSigma];
  v9 = v8;

  v10 = [v5 standardUserDefaults];
  [v10 fmpfBlackBackdropAlpha];
  v12 = v11;

  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) == 1 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity);
    v14 = [v5 standardUserDefaults];
    [v14 fmpfGreenBackdropHue];
    v16 = v15;
    [v14 fmpfGreenBackdropSaturation];
    v18 = v17;
    [v14 fmpfGreenBackdropValue];
    v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v16 saturation:v18 brightness:v19 alpha:1.0];

    v4 = sub_24A62330C(v20, v13);
  }

  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity) == 1)
  {
    v21 = [v5 standardUserDefaults];
    [v21 fmpfGreenBackdropSigma];
    v9 = v22;

    v23 = [v5 standardUserDefaults];
    [v23 fmpfGreenBackdropAlpha];
    v12 = v24;
  }

  if (v4)
  {
    v39 = 0.5;
    v40[0] = 0.5;
    v37 = 0x3FE0000000000000;
    v38 = 0.5;
    [v4 getRed:v40 green:&v39 blue:&v38 alpha:&v37];
    v25 = v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings;
    v26 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings);
    if (a1)
    {
      v27 = v26 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v27 = v40[0];
      *(v27 + 8) = 0;
      sub_24A5B18FC();
      v28 = *(v25 + 8) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v28 = v39;
      *(v28 + 8) = 0;
      sub_24A5B18FC();
      v29 = *(v25 + 16) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v29 = v38;
      *(v29 + 8) = 0;
      sub_24A5B18FC();
      v30 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v30 = v9;
      *(v30 + 8) = 0;
      sub_24A5B18FC();
      v31 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v31 = v12;
      *(v31 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      sub_24A55C6B4(v40[0]);
      *(v26 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v32 = *(v25 + 8);
      sub_24A55C6B4(v39);
      *(v32 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v33 = *(v25 + 16);
      sub_24A55C6B4(v38);
      *(v33 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v34 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring);
      sub_24A55C6B4(v9);
      *(v34 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v35 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring);
      sub_24A55C6B4(v12);
      v36 = v35;

      v36[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
      v4 = v36;
    }
  }
}

void sub_24A5F5F4C(void *a1)
{
  if ([a1 object])
  {
    sub_24A62F234();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_24A50D7EC(0, &qword_27EF51E88, 0x277CCAC38);
    if (swift_dynamicCast())
    {
      v2 = [v3 thermalState];
      *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState) = v2;
      sub_24A5F5ABC(v2);
    }
  }

  else
  {
    sub_24A50D6A4(v6, &unk_27EF50780, &qword_24A638470);
  }
}

void sub_24A5F60A0()
{
  [v0 bounds];
  if (v2 == 0.0 && v1 == 0.0)
  {
    sub_24A62F384();

    v3 = [v0 description];
    v4 = sub_24A62EC14();
    v6 = v5;

    MEMORY[0x24C21A5D0](v4, v6);

    MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A642DD0);
    sub_24A62F444();
    __break(1u);
  }

  else
  {
    sub_24A5F500C();

    sub_24A5F53E8();
  }
}

uint64_t sub_24A5F6234(uint64_t a1)
{
  v1 = *(a1 + 128);
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

uint64_t sub_24A5F6258(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF51E98, qword_24A63B898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5F62C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5F6318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_24A5F6330(unsigned __int8 *a1, unsigned __int16 *a2, __int128 *a3, void *a4)
{
  v5 = v4;
  v78 = a4;
  v9 = a3[9];
  v115 = a3[8];
  v116 = v9;
  v117 = a3[10];
  v118 = *(a3 + 176);
  v10 = a3[5];
  v111 = a3[4];
  v112 = v10;
  v11 = a3[7];
  v113 = a3[6];
  v114 = v11;
  v12 = a3[1];
  v107 = *a3;
  v108 = v12;
  v13 = a3[3];
  v109 = a3[2];
  v110 = v13;
  v76 = sub_24A62F004();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v17);
  v75 = *a1;
  v77 = *a2;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_style] = 0x3FE8000000000000;
  v18 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView] = 0;
  v19 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for FMPFARSCNView()) initWithFrame_];
  v20 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring;
  *&v4[v21] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v22 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring;
  *&v4[v22] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene] = 0;
  v23 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
  *v23 = 0;
  v23[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 2;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
  v24 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_videoHelpers;
  type metadata accessor for FMPFVideoHelpers();
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = 0;
  *&v4[v24] = v25;
  v26 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice;
  *&v4[v26] = MTLCreateSystemDefaultDevice();
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState] = 0;
  v27 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  *&v95 = MEMORY[0x277D84F90];
  sub_24A5F726C(&unk_27EF4F9E0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  sub_24A62EAB4();
  (*(v74 + 104))(v73, *MEMORY[0x277D85260], v76);
  *&v4[v28] = sub_24A62F044();
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRATextures] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRANextTextureIndex] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_locationManager] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation] = 0;
  v29 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode;
  *&v5[v29] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v30 = v75;
  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType] = v30;
  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_findingType] = v77;
  v31 = a3[9];
  v93[8] = a3[8];
  v93[9] = v31;
  v93[10] = a3[10];
  v94 = *(a3 + 176);
  v32 = a3[5];
  v93[4] = a3[4];
  v93[5] = v32;
  v33 = a3[7];
  v93[6] = a3[6];
  v93[7] = v33;
  v34 = a3[1];
  v93[0] = *a3;
  v93[1] = v34;
  v35 = a3[3];
  v93[2] = a3[2];
  v93[3] = v35;
  if (sub_24A5F6234(v93) == 1)
  {
    if (v30 == 1)
    {
      if (qword_27EF4EA18 != -1)
      {
        swift_once();
      }

      v36 = &xmmword_27EF5C300;
    }

    else
    {
      if (qword_27EF4EA10 != -1)
      {
        swift_once();
      }

      v36 = &xmmword_27EF5C240;
    }

    v39 = v36[9];
    v89 = v36[8];
    v90 = v39;
    v91 = v36[10];
    v92 = *(v36 + 176);
    v40 = v36[5];
    v85 = v36[4];
    v86 = v40;
    v41 = v36[7];
    v87 = v36[6];
    v88 = v41;
    v42 = v36[1];
    v81 = *v36;
    v82 = v42;
    v43 = v36[3];
    v83 = v36[2];
    v84 = v43;
    sub_24A5D7C00(&v81, &v95);
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v106 = v92;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v102 = v88;
    v95 = v81;
    v96 = v82;
    v37 = v83;
    v38 = v84;
  }

  else
  {
    v103 = v115;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    v99 = v111;
    v100 = v112;
    v101 = v113;
    v102 = v114;
    v95 = v107;
    v96 = v108;
    v37 = v109;
    v38 = v110;
  }

  v97 = v37;
  v98 = v38;
  v89 = v103;
  v90 = v104;
  v91 = v105;
  v92 = v106;
  v85 = v99;
  v86 = v100;
  v87 = v101;
  v88 = v102;
  v81 = v95;
  v82 = v96;
  v83 = v37;
  v84 = v38;
  nullsub_1();
  v44 = &v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v45 = v90;
  *(v44 + 8) = v89;
  *(v44 + 9) = v45;
  *(v44 + 10) = v91;
  v44[176] = v92;
  v46 = v86;
  *(v44 + 4) = v85;
  *(v44 + 5) = v46;
  v47 = v88;
  *(v44 + 6) = v87;
  *(v44 + 7) = v47;
  v48 = v82;
  *v44 = v81;
  *(v44 + 1) = v48;
  v49 = v84;
  *(v44 + 2) = v83;
  *(v44 + 3) = v49;
  sub_24A5F6258(a3, v80);
  v50 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v51 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v52 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v53 = &v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings];
  *v53 = v50;
  v53[1] = v51;
  v53[2] = v52;
  v54 = [objc_opt_self() processInfo];
  v55 = [v54 thermalState];

  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState] = v55;
  v56 = type metadata accessor for FMPFView();
  v79.receiver = v5;
  v79.super_class = v56;
  v57 = objc_msgSendSuper2(&v79, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v58 = v57;
  v59 = v78;
  if (v78)
  {
    [*&v57[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] setSession_];
  }

  v60 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v61 = [*&v58[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] session];
  v62 = [v61 delegate];

  if (v62)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = [*&v58[v60] session];
    [v63 setDelegate_];
  }

  [*&v58[v60] setAlpha_];
  [v58 addSubview_];
  v64 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  v65 = *&v58[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView];
  v66 = [objc_opt_self() clearColor];
  [v65 setBackgroundColor_];

  [*&v58[v64] setAllowsTransparency_];
  [v58 addSubview_];
  sub_24A5F4BB0();
  v67 = [objc_opt_self() defaultCenter];
  [v67 addObserver:v58 selector:sel_thermalStateDidChangeWithNotification_ name:*MEMORY[0x277CCA600] object:0];

  sub_24A58E1A8();
  v68 = [objc_opt_self() standardUserDefaults];
  v80[0] = v68;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = sub_24A62E094();

  sub_24A50D6A4(a3, &qword_27EF51E98, qword_24A63B898);
  v70 = *&v58[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation];
  *&v58[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation] = v69;

  return v58;
}

void sub_24A5F6DB0()
{
  v1 = v0;
  v2 = sub_24A62F004();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v6);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_style) = 0x3FE8000000000000;
  v7 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView) = 0;
  v8 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for FMPFARSCNView()) initWithFrame_];
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring;
  *(v0 + v10) = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v11 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring;
  *(v0 + v11) = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene) = 0;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor) = 2;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity) = 0;
  v13 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_videoHelpers;
  type metadata accessor for FMPFVideoHelpers();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = 0;
  *(v0 + v13) = v14;
  v15 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice;
  *(v0 + v15) = MTLCreateSystemDefaultDevice();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState) = 0;
  v16 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v18 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  sub_24A5F726C(&unk_27EF4F9E0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  sub_24A62EAB4();
  (*(v21 + 104))(v4, *MEMORY[0x277D85260], v22);
  *(v0 + v17) = sub_24A62F044();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRATextures) = v18;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRANextTextureIndex) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_locationManager) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation) = 0;
  v19 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode;
  *(v1 + v19) = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5F726C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24A5F72C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfEcoMode];
  *a2 = result;
  return result;
}

uint64_t sub_24A5F7310()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A5F7380()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = sub_24A62EBE4();
  v3 = [v0 systemFontOfSize:v2 weight:60.0 design:v1];

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = sub_24A62EBE4();
  v5 = [v0 systemFontOfSize:v4 weight:56.0 design:v1];

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_24A62EBE4();
  v7 = [v0 systemFontOfSize:v6 weight:60.0 design:v1];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = sub_24A62EBE4();
  v9 = [v0 systemFontOfSize:v8 weight:56.0 design:v1];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *MEMORY[0x277D743F8];
  v11 = sub_24A62EBE4();
  v12 = [v0 systemFontOfSize:v11 weight:20.0 design:v10];

  if (v12)
  {
    v13 = objc_opt_self();
    v14 = [v13 whiteColor];
    v15 = [v13 whiteColor];
    v16 = [v15 colorWithAlphaComponent_];

    *&xmmword_27EF5C7A8 = v3;
    *(&xmmword_27EF5C7A8 + 1) = v5;
    qword_27EF5C7B8 = v7;
    unk_27EF5C7C0 = v9;
    *&xmmword_27EF5C7C8 = v12;
    *(&xmmword_27EF5C7C8 + 1) = 0x4010000000000000;
    qword_27EF5C7D8 = v14;
    qword_27EF5C7E0 = v16;
    xmmword_27EF5C7E8 = xmmword_24A63B8E0;
    unk_27EF5C7F8 = xmmword_24A63B8F0;
    xmmword_27EF5C808 = xmmword_24A63B900;
    return;
  }

LABEL_11:
  __break(1u);
}

char *sub_24A5F75FC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style];
  if (qword_27EF4EAD0 != -1)
  {
    swift_once();
  }

  v51 = a2 & 1;
  v55[4] = xmmword_27EF5C7E8;
  v55[5] = unk_27EF5C7F8;
  v55[6] = xmmword_27EF5C808;
  v55[0] = xmmword_27EF5C7A8;
  v55[1] = *&qword_27EF5C7B8;
  v55[2] = xmmword_27EF5C7C8;
  v55[3] = *&qword_27EF5C7D8;
  memmove(v6, &xmmword_27EF5C7A8, 0x70uLL);
  v50 = a2;
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v8 = objc_allocWithZone(MEMORY[0x277D756B8]);
  sub_24A5FBE0C(v55, v54);
  *&v3[v7] = [v8 init];
  v9 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont] = 0;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint] = 0;
  v10 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide];
  *v11 = 0;
  v11[4] = 1;
  v12 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring;
  *&v3[v12] = sub_24A5B1F70(0, 1, 0, 1);
  v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold] = 2;
  v13 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance];
  *v15 = 0;
  v15[8] = 1;
  v16 = [objc_opt_self() mainScreen];
  [v16 bounds];
  v18 = v17;

  v19 = 16;
  if (v18 < 414.0)
  {
    v19 = 24;
  }

  v20 = 64;
  if (v18 < 414.0)
  {
    v20 = 72;
  }

  v21 = *&v6[8 * (v18 < 414.0)];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDistanceLabelFont] = v21;
  v22 = *&v6[v19];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont] = v22;
  v23 = *&v6[v20];
  v24 = v21;
  v25 = v22;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleLabelHeight] = v23;
  v53.receiver = v3;
  v53.super_class = type metadata accessor for FMR1DistanceView();
  v26 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v28 = *&v26[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
  v29 = objc_opt_self();
  v30 = v26;
  v31 = [v29 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:v30 attribute:4 multiplier:1.0 constant:0.0];
  v32 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint] = v31;

  v33 = [v29 constraintWithItem:*&v26[v27] attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  v34 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint] = v33;

  [*&v26[v27] setFont_];
  v35 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont];
  v36 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont] = v35;
  v37 = v35;

  [*&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setFont_];
  sub_24A5F7D00();
  sub_24A5F7F8C();
  v38 = objc_opt_self();
  v39 = v30;
  v40 = [v38 clearColor];
  [v39 setBackgroundColor_];

  v41 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance];
  *v41 = *&a1;
  *(v41 + 8) = v51;
  v42 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide];
  *v42 = a3;
  v42[4] = BYTE4(a3) & 1;
  v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold] = 2;
  if (v50)
  {
    v43 = *&v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring];
    sub_24A55C6B4(1.79769313e308);
    *(v43 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  }

  else
  {
    v44 = *&v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring];
    v45 = v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v46 = *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v45 + 280) + v46 == 1.79769313e308)
    {
      sub_24A55C6B4(*&a1);
      *(v44 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v47 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance];
      *v47 = *&a1;
      *(v47 + 8) = 0;
    }

    else
    {
      v48 = *&a1 - v46;
      *(v45 + 280) = v48;
      *(v45 + 240) = v48;
      *(v45 + 248) = 0;
    }
  }

  return v39;
}

uint64_t sub_24A5F7BA8()
{
  sub_24A62F384();

  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id sub_24A5F7D00()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setFont_];
  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [*&v0[v1] setAdjustsFontSizeToFitWidth_];
  [*&v0[v1] setNumberOfLines_];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  v6 = *&v0[v1];
  v7 = [v3 clearColor];
  [v6 setBackgroundColor_];

  [*&v0[v1] setAlpha_];
  [v0 addSubview_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setFont_];
  [*&v0[v8] setAdjustsFontForContentSizeCategory_];
  [*&v0[v8] setAdjustsFontSizeToFitWidth_];
  [*&v0[v8] setNumberOfLines_];
  v9 = *&v0[v8];
  v10 = [v3 whiteColor];
  [v9 setTextColor_];

  [*&v0[v8] setTextAlignment_];
  v11 = *&v0[v8];
  v12 = [v3 clearColor];
  [v11 setBackgroundColor_];

  [*&v0[v8] setAlpha_];
  v13 = *&v0[v8];

  return [v0 addSubview_];
}

void sub_24A5F7F8C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A63AC30;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];

  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 88];
  v10 = [v6 constraintEqualToAnchor:v8 constant:v9];

  *(v2 + 40) = v10;
  v11 = [*&v0[v1] trailingAnchor];
  v12 = [v0 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-v9];
  *(v2 + 48) = v14;
  v15 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = objc_opt_self();
  *(v2 + 64) = v16;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v18 = v15;
  v19 = v16;
  v20 = sub_24A62ED54();

  [v17 activateConstraints_];

  v21 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A633820;
  v23 = [*&v0[v21] leadingAnchor];
  v24 = [v0 safeAreaLayoutGuide];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:v9];
  *(v22 + 32) = v26;
  v27 = [*&v0[v21] trailingAnchor];
  v28 = [v0 safeAreaLayoutGuide];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-v9];
  *(v22 + 40) = v30;
  v31 = [*&v0[v21] bottomAnchor];
  v32 = [v0 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v22 + 48) = v33;
  v34 = [*&v0[v21] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v22 + 56) = v35;
  v36 = sub_24A62ED54();

  [v17 activateConstraints_];
}

id sub_24A5F8440(double a1)
{
  v3 = sub_24A508FA4(&qword_27EF51F28, &unk_24A63B9B8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v60 - v4;
  v68 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v60 - v5;
  sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
  inited = swift_initStackObject();
  v70 = xmmword_24A633830;
  *(inited + 16) = xmmword_24A633830;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v8 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
  v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 48);
  v10 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
  *(inited + 64) = v10;
  *(inited + 40) = v9;
  v11 = v7;
  v12 = v9;
  v66 = sub_24A59C378(inited);
  swift_setDeallocating();
  sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
  v13 = swift_initStackObject();
  *(v13 + 16) = v70;
  *(v13 + 32) = v11;
  v14 = *(v8 + 56);
  *(v13 + 64) = v10;
  *(v13 + 40) = v14;
  v15 = v14;
  sub_24A59C378(v13);
  swift_setDeallocating();
  sub_24A50D6A4(v13 + 32, &qword_27EF4F420, qword_24A633B40);
  v16 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v16 setUnitOptions_];
  [v16 setUnitStyle_];
  v17 = objc_opt_self();
  v18 = [v17 meters];
  if (a1 >= 10.0)
  {
    if (qword_27EF4EAC0 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EF5C798;
  }

  else
  {
    if (qword_27EF4EAC8 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EF5C7A0;
  }

  v20 = v69;
  v21 = qword_27EF4EA30;
  v22 = *v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = [qword_27EF5C558 measurementSystem];
  v24 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) & 1) == 0)
  {
    if (qword_27EF4EAB0 == -1 || (*&v70 = v22, v58 = v23, swift_once(), v23 = v58, v22 = v70, (*(v1 + v24) & 1) == 0))
    {
      if (qword_27EF4EAB0 != -1)
      {
        v59 = v23;
        swift_once();
        v23 = v59;
      }
    }
  }

  v25 = v20;
  if (v23 == 3)
  {
    if (a1 * 3.28084 >= 2.0)
    {
      if (qword_27EF4EAC0 != -1)
      {
        swift_once();
      }

      v26 = &qword_27EF5C798;
    }

    else
    {
      if (qword_27EF4EAC8 != -1)
      {
        swift_once();
      }

      v26 = &qword_27EF5C7A0;
    }

    v27 = *v26;

    v28 = [v17 feet];
    v22 = v27;
    v18 = v28;
  }

  *&v70 = v22;
  [v16 setNumberFormatter_];
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  v29 = v18;
  sub_24A62DFC4();
  v30 = v16;
  v31 = sub_24A62F0C4();
  v33 = v32;
  v34 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v35 = v25;
  v36 = sub_24A62EBE4();
  _s3__C3KeyVMa_0(0);
  v38 = v37;
  sub_24A5FBAA4();
  v64 = v38;
  v39 = sub_24A62EB74();

  v40 = [v34 initWithString:v36 attributes:v39];

  v41 = v70;
  v42 = sub_24A62E274();
  v43 = [v41 stringFromNumber_];

  if (v43)
  {
    v61 = v29;
    v62 = v40;
    v63 = v30;
    v44 = sub_24A62EC14();
    v46 = v45;

    v73 = v31;
    v74 = v33;
    v71 = v44;
    v72 = v46;
    v47 = sub_24A62E264();
    v48 = v65;
    (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
    sub_24A55BEBC();
    v49 = sub_24A62F214();
    v51 = v50;
    v53 = v52;
    sub_24A50D6A4(v48, &qword_27EF51F28, &unk_24A63B9B8);

    if (v53)
    {
      (*(v67 + 8))(v69, v68);

      return v62;
    }

    else
    {
      v54 = sub_24A62EB74();

      v73 = v49;
      v74 = v51;
      v71 = v31;
      v72 = v33;
      sub_24A508FA4(&qword_27EF51F30, qword_24A63B9C8);
      sub_24A5FBBCC();
      v55 = sub_24A62F194();
      v40 = v62;
      [v62 setAttributes:v54 range:{v55, v56}];

      (*(v67 + 8))(v69, v68);
    }
  }

  else
  {
    (*(v67 + 8))(v35, v68);
  }

  return v40;
}

void sub_24A5F8DE4(uint64_t a1, char a2, char a3)
{
  if ((a1 & 0x100000000) != 0)
  {
    return;
  }

  v4 = a1;
  if (a1 > 127)
  {
    if (a1 > 1023)
    {
      if (a1 > 4095)
      {
        if (a1 == 4096)
        {
          v80 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A643100);
          v84 = v24;

          MEMORY[0x24C21A5D0](10, 0xE100000000000000);

          v7 = v80;
          v6 = v84;
          v21 = "BT_DIRECTION_NEARBY_HINT_1";
          v13 = 0xD00000000000001ALL;
        }

        else
        {
          if (a1 != 0x2000)
          {
            return;
          }

          v7 = sub_24A5D2200(0xD000000000000028, 0x800000024A643180);
          v6 = v20;
          v21 = "DISTANCE_CONNECTED_HINT1";
          v13 = 0xD000000000000028;
        }

        goto LABEL_46;
      }

      if (a1 != 1024)
      {
        if (a1 != 2048)
        {
          return;
        }

        v77 = sub_24A5D2200(0xD000000000000019, 0x800000024A6430C0);
        v81 = v5;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v7 = v77;
        v6 = v81;
        v8 = "BT_DIRECTION_CLOSE_HINT_2";
LABEL_43:
        v21 = (v8 - 32);
        v13 = 0xD000000000000019;
        goto LABEL_46;
      }

      v79 = sub_24A5D2200(0xD000000000000018, 0x800000024A643060);
      v83 = v22;

      MEMORY[0x24C21A5D0](10, 0xE100000000000000);

      v7 = v79;
      v6 = v83;
      v23 = "BT_DIRECTION_NEAR_HINT_2";
      goto LABEL_41;
    }

    switch(a1)
    {
      case 0x80:
        v7 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643350);
        v6 = v25;
        v26 = "R1_DIRECTION_ABOVE_YOU_HINT2";
        break;
      case 0x100:
        v7 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643310);
        v6 = v27;
        v26 = "R1_DIRECTION_BELOW_YOU_HINT2";
        break;
      case 0x200:
        v78 = sub_24A5D2200(0xD000000000000017, 0x800000024A643140);
        v82 = v11;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v7 = v78;
        v6 = v82;
        v10 = "BT_DIRECTION_FAR_HINT_2";
        goto LABEL_17;
      default:
        return;
    }

    v21 = (v26 - 32);
    v13 = 0xD00000000000001CLL;
LABEL_46:
    v12 = v21 | 0x8000000000000000;
    goto LABEL_47;
  }

  if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 != 32)
      {
        if (a1 != 64)
        {
          return;
        }

        if (*(v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold))
        {
          v7 = sub_24A5D22F4(0xD00000000000002CLL, 0x800000024A643270);
          v6 = v15;
          if (a2)
          {
            v16 = 0xD000000000000030;
          }

          else
          {
            v16 = 0xD00000000000002CLL;
          }

          if (a2)
          {
            v17 = "SON_ABOVE_OR_BELOW_YOU_HINT2";
          }

          else
          {
            v17 = "SON_ABOVE_OR_BELOW_YOU_HINT1";
          }

          v18 = sub_24A5D22F4(v16, v17 | 0x8000000000000000);
        }

        else
        {
          v7 = sub_24A5D2200(0xD000000000000025, 0x800000024A6431E0);
          v6 = v68;
          if (a2)
          {
            v69 = 0xD000000000000029;
          }

          else
          {
            v69 = 0xD000000000000025;
          }

          if (a2)
          {
            v70 = "VE_OR_BELOW_YOU_HINT2";
          }

          else
          {
            v70 = "VE_OR_BELOW_YOU_HINT1";
          }

          v18 = sub_24A5D2200(v69, v70 | 0x8000000000000000);
        }

        v75 = v18;
        v76 = v19;

        goto LABEL_48;
      }

      v7 = sub_24A5D2200(0xD000000000000019, 0x800000024A643390);
      v6 = v33;
      v8 = "R1_DIRECTION_BEHIND_HINT2";
      goto LABEL_43;
    }

    v7 = sub_24A5D2200(0xD000000000000018, 0x800000024A6433D0);
    v6 = v31;
    v23 = "R1_DIRECTION_RIGHT_HINT2";
    goto LABEL_41;
  }

  if (a1 == 2)
  {
    v7 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643490);
    v6 = v29;
    if (a3)
    {
      v30 = "R1_DIRECTION_IN_FRONT_HINT3";
    }

    else
    {
      v30 = "R1_DIRECTION_IN_FRONT_HINT2";
    }

    v21 = (v30 - 32);
    v13 = 0xD00000000000001BLL;
    goto LABEL_46;
  }

  if (a1 == 4)
  {
    v7 = sub_24A5D2200(0xD000000000000018, 0x800000024A643450);
    v6 = v32;
    v23 = "R1_DIRECTION_AHEAD_HINT2";
LABEL_41:
    v12 = (v23 - 32) | 0x8000000000000000;
    v13 = 0xD000000000000018;
    goto LABEL_47;
  }

  if (a1 != 8)
  {
    return;
  }

  v7 = sub_24A5D2200(0xD000000000000017, 0x800000024A643410);
  v6 = v9;
  v10 = "R1_DIRECTION_LEFT_HINT2";
LABEL_17:
  v12 = (v10 - 32) | 0x8000000000000000;
  v13 = 0xD000000000000017;
LABEL_47:
  v75 = sub_24A5D2200(v13, v12);
  v76 = v34;
LABEL_48:
  v35 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v35 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    goto LABEL_54;
  }

  v36 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v36 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
LABEL_54:
    v74 = v4;
    sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    v38 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v39 = v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
    v40 = *(v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 48);
    v41 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
    *(inited + 64) = v41;
    *(inited + 40) = v40;
    v42 = v38;
    v43 = v40;
    sub_24A59C378(inited);
    swift_setDeallocating();
    sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_24A633830;
    *(v44 + 32) = v42;
    v73 = v39;
    v45 = *(v39 + 56);
    *(v44 + 64) = v41;
    *(v44 + 40) = v45;
    v46 = v45;
    sub_24A59C378(v44);
    swift_setDeallocating();
    sub_24A50D6A4(v44 + 32, &qword_27EF4F420, qword_24A633B40);
    v47 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    sub_24A5D2200(0xD000000000000013, 0x800000024A6430A0);
    v48 = sub_24A55BEBC();
    v49 = MEMORY[0x24C21AB40](124, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v48);

    v50 = *(v49 + 16);
    if (!v50)
    {
LABEL_79:

      return;
    }

    v51 = 0;
    v72 = *MEMORY[0x277D74118];
    v52 = (v49 + 56);
    while (1)
    {
      if (v51 >= *(v49 + 16))
      {
        __break(1u);
        return;
      }

      v57 = *(v52 - 1);
      v58 = *v52;
      v59 = *(v52 - 3) >> 16;
      v60 = *(v52 - 2) >> 16;
      if (v57 == 2371877)
      {
        v62 = v58 == 0xE300000000000000 && v59 == 0 && v60 == 3;
        if (!v62 && (sub_24A62F604() & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        LOBYTE(v71) = 0;
        if ((sub_24A62F604() & 1) == 0)
        {
          if (v57 != 2372133 || v58 != 0xE300000000000000 || v59 || v60 != 3)
          {
LABEL_75:
            LOBYTE(v71) = 0;
            if ((sub_24A62F604() & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v63 = objc_allocWithZone(MEMORY[0x277CCAB48]);

          v64 = sub_24A62EBE4();
          _s3__C3KeyVMa_0(0);
          sub_24A5FBAA4();
          v65 = sub_24A62EB74();
          if (v74 == 64)
          {
            v66 = [v63 initWithString:v64 attributes:v65];

            v67 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
            [v67 setLineSpacing_];
            v56 = v67;
            [v66 addAttribute:v72 value:v56 range:{0, objc_msgSend(v66, sel_length)}];

            [v47 appendAttributedString_];
          }

          else
          {
            v56 = [v63 initWithString:v64 attributes:{v65, v71}];

            [v47 appendAttributedString_];
          }

          goto LABEL_57;
        }
      }

      v53 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v54 = sub_24A62EBE4();
      _s3__C3KeyVMa_0(0);
      sub_24A5FBAA4();
      v55 = sub_24A62EB74();
      v56 = [v53 initWithString:v54 attributes:v55];

      [v47 appendAttributedString_];
LABEL_57:

LABEL_58:
      ++v51;
      v52 += 4;
      if (v50 == v51)
      {
        goto LABEL_79;
      }
    }
  }
}

void sub_24A5F9824(uint64_t a1, char a2, char a3, void (*a4)(uint64_t), uint64_t a5)
{
  v11 = [*&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] attributedText];
  if (v11)
  {
    v34 = a5;
    v12 = v11;
    v13 = [v11 string];

    if (!v13)
    {
      sub_24A62EC14();
      v13 = sub_24A62EBE4();
    }

    sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v16 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont];
    *(inited + 64) = sub_24A50D7EC(0, &qword_27EF51F20, 0x277D74300);
    *(inited + 40) = v16;
    v17 = v15;
    v18 = v16;
    sub_24A59C378(inited);
    swift_setDeallocating();
    sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
    _s3__C3KeyVMa_0(0);
    sub_24A5FBAA4();
    v19 = sub_24A62EB74();

    [v13 sizeWithAttributes_];
    v21 = v20;

    a5 = v34;
  }

  else
  {
    [*&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDistanceLabelFont] lineHeight];
    v21 = v22;
  }

  v23 = *&a1;
  if (a2)
  {
    v23 = v21;
  }

  v24 = 0.0;
  if (v23 == 0.0)
  {
    if (a3)
    {
LABEL_10:
      v25 = objc_opt_self();
      v27 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v26 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v28 = swift_allocObject();
      *(v28 + 16) = v5;
      *(v28 + 24) = v24;
      v39 = sub_24A5FBB34;
      v40 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24A5A8458;
      v38 = &unk_285DAAC30;
      v29 = _Block_copy(&aBlock);
      v30 = v5;

      v31 = swift_allocObject();
      *(v31 + 16) = a4;
      *(v31 + 24) = a5;
      v39 = sub_24A5FBB94;
      v40 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24A5A1470;
      v38 = &unk_285DAAC80;
      v32 = _Block_copy(&aBlock);
      sub_24A5173CC(a4, a5);

      [v25 animateWithDuration:0 delay:v29 usingSpringWithDamping:v32 initialSpringVelocity:v26 options:0.0 animations:v27 completion:0.0];
      _Block_release(v32);
      _Block_release(v29);
      return;
    }
  }

  else
  {
    v24 = -v23 - *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 80];
    if (a3)
    {
      goto LABEL_10;
    }
  }

  v33 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (v33)
  {
    [v33 setConstant_];
    if (a4)
    {
      a4(1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24A5F9BF4(uint64_t a1, char a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_24A62E1A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v26 = v10;
    v27 = sub_24A5F8440(*&a1);
    v29 = v28;
    v30 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    v31 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
    v32 = v27;
    v33 = [v31 attributedText];
    v119 = v32;

    if (v33)
    {

      v34 = *&v4[v30];
      if (v29)
      {
        v33 = 0;
        v35 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v34 = *&v4[v30];
      v35 = 1;
      if (v29 & 0x100) != 0 || (v29)
      {
LABEL_16:
        v41 = v34;
        [v41 setAttributedText_];

        v42 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
        if ((a3 & 0x100000000) != 0 || a3 != 64)
        {
          v45 = 0;
          *v42 = 0;
          v42[8] = 1;
        }

        else if (v42[8] == 1)
        {
          sub_24A62E194();
          sub_24A62E134();
          v44 = v43;
          (*(v9 + 8))(v12, v26);
          v45 = 0;
          *v42 = v44;
          v42[8] = 0;
        }

        else
        {
          v46 = *v42;
          sub_24A62E194();
          sub_24A62E134();
          v48 = v47;
          (*(v9 + 8))(v12, v26);
          v45 = v46 + 5.0 <= v48;
        }

        v49 = HIDWORD(a3) & 1;
        v50 = a3;
        sub_24A5F8DE4(a3 | (v49 << 32), v45, v35);
        if (!v51)
        {
          v60 = *&v4[v30];
          [v60 alpha];
          if (v61 == 1.0)
          {
          }

          else
          {
            sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
            v23 = *&v4[v30];
            v88 = sub_24A62F164();

            if (v88)
            {
              v89 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
              if (!v89)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              [v89 setConstant_];
            }

            v90 = objc_opt_self();
            v92 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
            v91 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
            v93 = swift_allocObject();
            *(v93 + 16) = v60;
            *(v93 + 24) = 1;
            v124 = sub_24A5FBEB4;
            v125 = v93;
            aBlock = MEMORY[0x277D85DD0];
            v121 = 1107296256;
            v122 = sub_24A5A8458;
            v123 = &unk_285DAA7A8;
            v94 = _Block_copy(&aBlock);
            v95 = v60;

            v96 = swift_allocObject();
            *(v96 + 16) = 0;
            *(v96 + 24) = 0;
            v124 = sub_24A5FBF20;
            v125 = v96;
            aBlock = MEMORY[0x277D85DD0];
            v121 = 1107296256;
            v122 = sub_24A5A1470;
            v123 = &unk_285DAA7F8;
            v97 = _Block_copy(&aBlock);

            [v90 animateWithDuration:0 delay:v94 usingSpringWithDamping:v97 initialSpringVelocity:v91 options:0.0 animations:v92 completion:0.0];

            _Block_release(v97);
            _Block_release(v94);
          }

          v98 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
          v99 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
          v100 = swift_allocObject();
          *(v100 + 16) = v4;
          v23 = v4;
          v101 = v99;
          [v101 alpha];
          if (v102 == 0.0)
          {
            [*&v4[v98] setFont_];
            [*&v4[v98] setAttributedText_];
            sub_24A5F9824(0, 0, 1, 0, 0);

            return;
          }

          sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
          v103 = *&v4[v30];
          v104 = sub_24A62F164();

          if (v104)
          {
            v105 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
            if (!v105)
            {
LABEL_62:

              __break(1u);
              return;
            }

            [v105 setConstant_];
          }

          v106 = objc_opt_self();
          v108 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
          v107 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
          v109 = swift_allocObject();
          *(v109 + 16) = v101;
          *(v109 + 24) = 0;
          v124 = sub_24A5FBEB4;
          v125 = v109;
          aBlock = MEMORY[0x277D85DD0];
          v121 = 1107296256;
          v122 = sub_24A5A8458;
          v123 = &unk_285DAA870;
          v69 = _Block_copy(&aBlock);
          v110 = v101;

          v111 = swift_allocObject();
          *(v111 + 16) = sub_24A5FB998;
          *(v111 + 24) = v100;
          v124 = sub_24A5FBF20;
          v125 = v111;
          aBlock = MEMORY[0x277D85DD0];
          v121 = 1107296256;
          v122 = sub_24A5A1470;
          v123 = &unk_285DAA8C0;
          v72 = _Block_copy(&aBlock);

          [v106 animateWithDuration:0 delay:v69 usingSpringWithDamping:v72 initialSpringVelocity:v107 options:0.0 animations:v108 completion:0.0];

          goto LABEL_53;
        }

        v52 = v51;
        v53 = [*&v4[v30] attributedText];
        v54 = v53;
        if (v53)
        {
        }

        v55 = *&v4[v30];
        v23 = swift_allocObject();
        *(v23 + 2) = v4;
        *(v23 + 6) = a3;
        v23[28] = v49;
        *(v23 + 4) = v52;
        v56 = v4;
        v57 = v52;
        v22 = v56;
        v24 = v57;
        v58 = v55;
        [v58 alpha];
        if (v54)
        {
          if (v59 == 1.0)
          {
LABEL_27:
            sub_24A5FB894(v22, v50 | (v49 << 32), v24, &unk_285DAA9C0, sub_24A5FBA94);

            return;
          }
        }

        else if (v59 == 0.0)
        {
          goto LABEL_27;
        }

        sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
        v73 = *&v4[v30];
        v74 = sub_24A62F164();

        if (v74)
        {
          v75 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
          if (!v75)
          {
LABEL_59:

            __break(1u);
            goto LABEL_60;
          }

          if (v54)
          {
            v76 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleLabelHeight];
          }

          else
          {
            v76 = 0.0;
          }

          [v75 setConstant_];
        }

        v112 = objc_opt_self();
        v114 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
        v113 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
        v115 = swift_allocObject();
        *(v115 + 16) = v58;
        *(v115 + 24) = v54 != 0;
        v124 = sub_24A5FBEB4;
        v125 = v115;
        aBlock = MEMORY[0x277D85DD0];
        v121 = 1107296256;
        v122 = sub_24A5A8458;
        v123 = &unk_285DAA938;
        v69 = _Block_copy(&aBlock);
        v116 = v58;

        v117 = swift_allocObject();
        *(v117 + 16) = sub_24A5FB9F4;
        *(v117 + 24) = v23;
        v124 = sub_24A5FBF20;
        v125 = v117;
        aBlock = MEMORY[0x277D85DD0];
        v121 = 1107296256;
        v122 = sub_24A5A1470;
        v123 = &unk_285DAA988;
        v118 = _Block_copy(&aBlock);

        [v112 animateWithDuration:0 delay:v69 usingSpringWithDamping:v118 initialSpringVelocity:v113 options:0.0 animations:v114 completion:0.0];

        v87 = v118;
        goto LABEL_57;
      }
    }

    v33 = v119;
    v35 = 0;
    goto LABEL_16;
  }

  v13 = HIDWORD(a3) & 1;
  v14 = a3;
  sub_24A5F8DE4(a3 | (v13 << 32), 0, 0);
  if (!v15)
  {
    v36 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
    *v36 = 0;
    v36[8] = 1;
    v37 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    v38 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
    v39 = swift_allocObject();
    *(v39 + 16) = v4;
    v22 = v4;
    v23 = v38;
    [v23 alpha];
    if (v40 == 0.0)
    {
      sub_24A5FB0A0(1, v22);
      goto LABEL_10;
    }

    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v77 = *&v4[v37];
    v78 = sub_24A62F164();

    if (v78)
    {
      v79 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
      if (!v79)
      {
LABEL_60:

        __break(1u);
        goto LABEL_61;
      }

      [v79 setConstant_];
    }

    v80 = objc_opt_self();
    v82 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
    v81 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
    v83 = swift_allocObject();
    *(v83 + 16) = v23;
    *(v83 + 24) = 0;
    v124 = sub_24A5DA114;
    v125 = v83;
    aBlock = MEMORY[0x277D85DD0];
    v121 = 1107296256;
    v122 = sub_24A5A8458;
    v123 = &unk_285DAA640;
    v69 = _Block_copy(&aBlock);
    v84 = v23;

    v85 = swift_allocObject();
    *(v85 + 16) = sub_24A5FB854;
    *(v85 + 24) = v39;
    v124 = sub_24A5FBF20;
    v125 = v85;
    aBlock = MEMORY[0x277D85DD0];
    v121 = 1107296256;
    v122 = sub_24A5A1470;
    v123 = &unk_285DAA690;
    v86 = _Block_copy(&aBlock);

    [v80 animateWithDuration:0 delay:v69 usingSpringWithDamping:v86 initialSpringVelocity:v81 options:0.0 animations:v82 completion:0.0];

    v87 = v86;
LABEL_57:
    _Block_release(v87);
    _Block_release(v69);
    return;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v18 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a3;
  *(v19 + 28) = v13;
  *(v19 + 32) = v16;
  v20 = v4;
  v21 = v16;
  v22 = v20;
  v23 = v21;
  v24 = v18;
  [v24 alpha];
  if (v25 != 0.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v62 = *&v4[v17];
    v63 = sub_24A62F164();

    if ((v63 & 1) == 0)
    {
LABEL_33:
      v65 = objc_opt_self();
      v67 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v66 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v68 = swift_allocObject();
      *(v68 + 16) = v24;
      *(v68 + 24) = 0;
      v124 = sub_24A5FBEB4;
      v125 = v68;
      aBlock = MEMORY[0x277D85DD0];
      v121 = 1107296256;
      v122 = sub_24A5A8458;
      v123 = &unk_285DAA708;
      v69 = _Block_copy(&aBlock);
      v70 = v24;

      v71 = swift_allocObject();
      *(v71 + 16) = sub_24A5FB874;
      *(v71 + 24) = v19;
      v124 = sub_24A5FBF20;
      v125 = v71;
      aBlock = MEMORY[0x277D85DD0];
      v121 = 1107296256;
      v122 = sub_24A5A1470;
      v123 = &unk_285DAA758;
      v72 = _Block_copy(&aBlock);

      [v65 animateWithDuration:0 delay:v69 usingSpringWithDamping:v72 initialSpringVelocity:v66 options:0.0 animations:v67 completion:0.0];

LABEL_53:

      v87 = v72;
      goto LABEL_57;
    }

    v64 = *&v22[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
    if (v64)
    {
      [v64 setConstant_];
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_59;
  }

  sub_24A5FB894(v22, v14 | (v13 << 32), v23, &unk_285DAAA88, sub_24A5FBA9C);

LABEL_10:
}