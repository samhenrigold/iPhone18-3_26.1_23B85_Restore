void sub_1E3F62978(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v90 = (v8 + 16);
      v91 = *(v8 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v92 = v8;
        v93 = (v8 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v8 = v95[1];
        sub_1E3F63BE0((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v8), v108);
        if (v5)
        {
          break;
        }

        if (v8 < v94)
        {
          goto LABEL_118;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_119;
        }

        *v93 = v94;
        v93[1] = v8;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_120;
        }

        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v8 = v92;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_1E37FFF5C(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v5 = *(*a3 + 8 * v10);
      v11 = (*a3 + 8 * v7);
      v12 = 8 * v7;
      v14 = *v11;
      v13 = v11 + 2;
      v15 = *(*v5 + 520);
      v108 = v6;

      v105 = v15(v16);
      v104 = (*(*v14 + 520))();

      v17 = v108;
      v101 = v9;
      v18 = v9 + 2;
      while (1)
      {
        v19 = v18;
        if (++v10 >= v17)
        {
          break;
        }

        v5 = *(v13 - 1);
        v20 = *(**v13 + 520);

        v22 = v20(v21);
        v23 = (*(*v5 + 520))();

        v17 = v108;
        ++v13;
        v18 = v19 + 1;
        if (v105 < v104 == v22 >= v23)
        {
          goto LABEL_9;
        }
      }

      v10 = v17;
LABEL_9:
      if (v105 >= v104)
      {
        v5 = v98;
      }

      else
      {
        v24 = v101;
        if (v10 < v101)
        {
          goto LABEL_124;
        }

        if (v101 >= v10)
        {
          v5 = v98;
          v9 = v101;
          goto LABEL_24;
        }

        if (v17 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = v17;
        }

        v26 = 8 * v25 - 8;
        v27 = v10;
        v5 = v98;
        do
        {
          if (v24 != --v27)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v29 = *(v28 + v12);
            *(v28 + v12) = *(v28 + v26);
            *(v28 + v26) = v29;
          }

          ++v24;
          v26 -= 8;
          v12 += 8;
        }

        while (v24 < v27);
      }

      v9 = v101;
    }

LABEL_24:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
    }

    v46 = *(v8 + 16);
    v45 = *(v8 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v8 = sub_1E37FFF70((v45 > 1), v46 + 1, 1, v8);
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v108 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_60:
          if (v56)
          {
            goto LABEL_109;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_112;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_117;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v47 < 2)
        {
          goto LABEL_111;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_75:
        if (v71)
        {
          goto LABEL_114;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v78 < v70)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v48;
        v86 = v50;
        v8 = v48 + 16 * v50;
        v87 = *(v8 + 8);
        sub_1E3F63BE0((*a3 + 8 * *v83), (*a3 + 8 * *v8), (*a3 + 8 * v87), v107);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v87 < v84)
        {
          goto LABEL_104;
        }

        v5 = *(v82 + 16);
        if (v86 > v5)
        {
          goto LABEL_105;
        }

        *v83 = v84;
        v83[1] = v87;
        if (v86 >= v5)
        {
          goto LABEL_106;
        }

        v88 = v86;
        v47 = v5 - 1;
        memmove(v8, (v8 + 16), 16 * (v5 - 1 - v88));
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v89 = v5 > 2;
        v5 = 0;
        v48 = v85;
        if (!v89)
        {
          goto LABEL_89;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_107;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_108;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_110;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_113;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_121;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v108;
    if (v108 >= v6)
    {
      goto LABEL_92;
    }
  }

  v31 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v31)
  {
    goto LABEL_40;
  }

  v99 = v5;
  v100 = v8;
  v32 = *a3;
  v33 = *a3 + 8 * v10 - 8;
  v102 = v9;
  v34 = v9 - v10;
  v106 = v31;
LABEL_33:
  v108 = v10;
  v35 = *(v32 + 8 * v10);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = *(*v35 + 520);

    v41 = v39(v40);
    v42 = (*(*v38 + 520))();

    if (v41 >= v42)
    {
LABEL_38:
      v10 = v108 + 1;
      v33 += 8;
      --v34;
      if (v108 + 1 == v106)
      {
        v10 = v106;
        v5 = v99;
        v8 = v100;
        v9 = v102;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v32)
    {
      break;
    }

    v43 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v43;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_1E3F63104(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v127 = *v121;
    if (!*v121)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_111;
    }

    goto LABEL_146;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_1E327F454(*a3 + 40 * v8, &v132);
      sub_1E327F454(v9 + 40 * v7, v129);
      v10 = v133;
      v11 = v134;
      __swift_project_boxed_opaque_existential_1(&v132, v133);
      v12 = (*(v11 + 24))(v10, v11);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      v127 = v14;
      v15 = v130;
      v16 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v17 = (*(v16 + 24))(v15, v16);
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      v124 = v19;
      if (v135)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      }

      v117 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      v122 = 40 * v7;
      v20 = v9 + 40 * v7 + 80;
      v119 = v7;
      v21 = v7 + 2;
      while (1)
      {
        v6 = v21;
        v22 = v8 + 1;
        if (v22 >= v4)
        {
          break;
        }

        sub_1E327F454(v20, &v132);
        sub_1E327F454(v20 - 40, v129);
        v23 = v22;
        v24 = v133;
        v25 = v134;
        __swift_project_boxed_opaque_existential_1(&v132, v133);
        v26 = (*(v25 + 24))(v24, v25);
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = v130;
        v30 = v131;
        __swift_project_boxed_opaque_existential_1(v129, v130);
        v31 = *(v30 + 24);
        v32 = v30;
        v8 = v23;
        v33 = v31(v29, v32);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v20 += 40;
        v21 = v6 + 1;
        if (v127 < v124 == v28 >= v35)
        {
          goto LABEL_22;
        }
      }

      v8 = v4;
LABEL_22:
      if (v127 < v124)
      {
        v7 = v119;
        if (v8 < v119)
        {
          goto LABEL_145;
        }

        if (v119 >= v8)
        {
          v6 = v117;
          goto LABEL_35;
        }

        if (v4 >= v6)
        {
          v36 = v6;
        }

        else
        {
          v36 = v4;
        }

        v37 = 40 * v36 - 40;
        v38 = v8;
        v39 = v119;
        v40 = v122;
        do
        {
          if (v39 != --v38)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_150;
            }

            v42 = v41 + v40;
            v43 = v41 + v37;
            sub_1E3251BE8((v41 + v40), &v132);
            v44 = *(v43 + 32);
            v45 = *(v43 + 16);
            *v42 = *v43;
            *(v42 + 16) = v45;
            *(v42 + 32) = v44;
            result = sub_1E3251BE8(&v132, v43);
          }

          ++v39;
          v37 -= 40;
          v40 += 40;
        }

        while (v39 < v38);
      }

      v6 = v117;
      v7 = v119;
    }

LABEL_35:
    v46 = a3[1];
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_142;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_57:
    if (v8 < v7)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v65 = *(v6 + 16);
    v64 = *(v6 + 24);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_1E37FFF70((v64 > 1), v65 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v66;
    v67 = v6 + 32;
    v68 = (v6 + 32 + 16 * v65);
    *v68 = v7;
    v68[1] = v8;
    v126 = *v121;
    if (!*v121)
    {
      goto LABEL_151;
    }

    v127 = v8;
    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        v70 = (v67 + 16 * (v66 - 1));
        v71 = (v6 + 16 * v66);
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v6 + 32);
          v73 = *(v6 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_77:
          if (v75)
          {
            goto LABEL_128;
          }

          v87 = *v71;
          v86 = v71[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_131;
          }

          v91 = v70[1];
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_136;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v66 < 2)
        {
          goto LABEL_130;
        }

        v94 = *v71;
        v93 = v71[1];
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_92:
        if (v90)
        {
          goto LABEL_133;
        }

        v96 = *v70;
        v95 = v70[1];
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v97 < v89)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v69 - 1 >= v66)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
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
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_148;
        }

        v101 = (v67 + 16 * (v69 - 1));
        v102 = *v101;
        v103 = (v67 + 16 * v69);
        v104 = v103[1];
        v105 = v135;
        sub_1E3F63EE8((*a3 + 40 * *v101), (*a3 + 40 * *v103), *a3 + 40 * v104, v126);
        v135 = v105;
        if (v105)
        {
        }

        if (v104 < v102)
        {
          goto LABEL_123;
        }

        v106 = v6;
        v6 = *(v6 + 16);
        if (v69 > v6)
        {
          goto LABEL_124;
        }

        *v101 = v102;
        v101[1] = v104;
        if (v69 >= v6)
        {
          goto LABEL_125;
        }

        v66 = v6 - 1;
        result = memmove((v67 + 16 * v69), v103 + 2, 16 * (v6 - 1 - v69));
        *(v106 + 16) = v6 - 1;
        v107 = v6 > 2;
        v6 = v106;
        if (!v107)
        {
          goto LABEL_106;
        }
      }

      v76 = v67 + 16 * v66;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_126;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_127;
      }

      v83 = v71[1];
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_129;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_132;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = v70[1];
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_140;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v5 = v127;
    v4 = a3[1];
    if (v127 >= v4)
    {
      goto LABEL_109;
    }
  }

  v47 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_143;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v7)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    result = sub_1E37FFF5C(v6);
    v6 = result;
LABEL_111:
    v108 = (v6 + 16);
    v109 = *(v6 + 16);
    while (v109 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_149;
      }

      v110 = v6;
      v111 = (v6 + 16 * v109);
      v112 = *v111;
      v6 = &v108[2 * v109];
      v113 = *(v6 + 8);
      v114 = v135;
      sub_1E3F63EE8((*a3 + 40 * *v111), (*a3 + 40 * *v6), *a3 + 40 * v113, v127);
      v135 = v114;
      if (v114)
      {
        break;
      }

      if (v113 < v112)
      {
        goto LABEL_137;
      }

      if (v109 - 2 >= *v108)
      {
        goto LABEL_138;
      }

      *v111 = v112;
      v111[1] = v113;
      v115 = *v108 - v109;
      if (*v108 < v109)
      {
        goto LABEL_139;
      }

      v109 = *v108 - 1;
      result = memmove(v6, (v6 + 16), 16 * v115);
      *v108 = v109;
      v6 = v110;
    }
  }

  if (v8 == v47)
  {
    goto LABEL_57;
  }

  v118 = v6;
  v120 = v7;
  v48 = *a3;
  v49 = *a3 + 40 * v8;
  v50 = v7 - v8;
  v123 = v47;
LABEL_44:
  v125 = v49;
  v127 = v8;
  v51 = v50;
  while (1)
  {
    sub_1E327F454(v49, &v132);
    sub_1E327F454(v49 - 40, v129);
    v53 = v133;
    v52 = v134;
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    v54 = (*(v52 + 24))(v53, v52);
    if (v55)
    {
      v56 = 0;
    }

    else
    {
      v56 = v54;
    }

    v57 = v130;
    v58 = v131;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v59 = (*(v58 + 24))(v57, v58);
    if (v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = v59;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
    if (v56 >= v61)
    {
LABEL_55:
      v8 = (v127 + 1);
      v49 = v125 + 40;
      --v50;
      if (v127 + 1 == v123)
      {
        v8 = v123;
        v6 = v118;
        v7 = v120;
        goto LABEL_57;
      }

      goto LABEL_44;
    }

    if (!v48)
    {
      break;
    }

    sub_1E3251BE8(v49, &v132);
    v62 = *(v49 - 24);
    *v49 = *(v49 - 40);
    *(v49 + 16) = v62;
    *(v49 + 32) = *(v49 - 8);
    sub_1E3251BE8(&v132, v49 - 40);
    v49 -= 40;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_1E3F638D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3F63A04((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3F63A04(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 64;
  v9 = (a3 - __dst) / 64;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[64 * v8] <= a4)
    {
      memmove(a4, __src, v8 << 6);
    }

    v11 = &v4[64 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_1E42079A4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 64;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 64;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 64;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 3);
    *(v7 + 2) = *(v14 + 2);
    *(v7 + 3) = v17;
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[64 * v9] <= a4)
  {
    memmove(a4, __dst, v9 << 6);
  }

  v11 = &v4[64 * v9];
LABEL_29:
  for (v5 -= 64; v11 > v4 && v6 > v7; v5 -= 64)
  {
    v20 = *(v11 - 6) == *(v6 - 6) && *(v11 - 5) == *(v6 - 5);
    if (!v20 && (sub_1E42079A4() & 1) != 0)
    {
      v24 = v6 - 64;
      v13 = v5 + 64 == v6;
      v6 -= 64;
      if (!v13)
      {
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = *(v24 + 3);
        *(v5 + 2) = *(v24 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
        v6 = v24;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 64)
    {
      v21 = *(v11 - 4);
      v22 = *(v11 - 3);
      v23 = *(v11 - 1);
      *(v5 + 2) = *(v11 - 2);
      *(v5 + 3) = v23;
      *v5 = v21;
      *(v5 + 1) = v22;
    }

    v11 -= 64;
  }

LABEL_46:
  v28 = (v11 - v4) / 64;
  if (v6 != v4 || v6 >= &v4[64 * v28])
  {
    memmove(v6, v4, v28 << 6);
  }

  return 1;
}

uint64_t sub_1E3F63BE0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = v7;
      v14 = *v4;
      v15 = *(**v6 + 520);

      v17 = v4;
      v18 = v15(v16);
      v19 = (*(*v14 + 520))();

      if (v18 >= v19)
      {
        break;
      }

      v20 = v6;
      v21 = v13;
      v22 = v13 == v6;
      v6 += 8;
      v4 = v17;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 = v21 + 8;
    }

    v20 = v17;
    v4 = v17 + 8;
    v21 = v13;
    if (v13 == v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v21 = *v20;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
  v37 = v4;
  v36 = v7;
LABEL_25:
  v24 = v6 - 8;
  v5 -= 8;
  while (v11 > v4 && v6 > v7)
  {
    v26 = v24;
    v27 = *v24;
    v28 = *(**(v11 - 1) + 520);

    v30 = v28(v29);
    v31 = (*(*v27 + 520))();

    v32 = v5 + 8;
    if (v30 < v31)
    {
      v22 = v32 == v6;
      v6 = v26;
      v7 = v36;
      v4 = v37;
      if (!v22)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_25;
    }

    if (v11 != v32)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 8;
    v11 -= 8;
    v7 = v36;
    v4 = v37;
    v24 = v26;
  }

LABEL_38:
  v33 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

uint64_t sub_1E3F63EE8(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_50;
      }

      v13 = v5;
      sub_1E327F454(v6, v55);
      sub_1E327F454(v4, v52);
      v14 = v56;
      v15 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = (v17 & 1) != 0 ? 0 : v16;
      v19 = v53;
      v20 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v21 = (*(v20 + 24))(v19, v20);
      v23 = (v22 & 1) != 0 ? 0 : v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      if (v18 >= v23)
      {
        break;
      }

      v24 = v6;
      v25 = v7 == v6;
      v6 += 40;
      if (!v25)
      {
        goto LABEL_23;
      }

LABEL_24:
      v7 += 40;
      v5 = v13;
    }

    v24 = v4;
    v25 = v7 == v4;
    v4 += 40;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_23:
    v26 = *v24;
    v27 = *(v24 + 1);
    *(v7 + 4) = *(v24 + 4);
    *v7 = v26;
    *(v7 + 1) = v27;
    goto LABEL_24;
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v29 = &v4[40 * v9];
  v58 = v7;
  v51 = v4;
LABEL_31:
  v30 = (v6 - 40);
  v5 -= 40;
  v31 = (v29 - 40);
  while (1)
  {
    v11 = (v31 + 40);
    if (v31 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1E327F454(v31, v55);
    v33 = v30;
    sub_1E327F454(v30, v52);
    v35 = v56;
    v34 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v36 = (*(v34 + 24))(v35, v34);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    v39 = v53;
    v40 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v41 = (*(v40 + 24))(v39, v40);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    if (v38 < v43)
    {
      v29 = (v31 + 40);
      v25 = v5 + 40 == v6;
      v6 = v33;
      v4 = v51;
      v7 = v58;
      if (!v25)
      {
        v46 = *v33;
        v47 = *(v33 + 16);
        *(v5 + 32) = *(v33 + 32);
        *v5 = v46;
        *(v5 + 16) = v47;
        v6 = v33;
      }

      goto LABEL_31;
    }

    if (v11 != (v5 + 40))
    {
      v44 = *v31;
      v45 = *(v31 + 16);
      *(v5 + 32) = *(v31 + 32);
      *v5 = v44;
      *(v5 + 16) = v45;
    }

    v5 -= 40;
    v31 -= 40;
    v4 = v51;
    v7 = v58;
    v30 = v33;
  }

LABEL_50:
  v48 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v48])
  {
    memmove(v6, v4, 40 * v48);
  }

  return 1;
}

char *sub_1E3F6421C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E138, &qword_1E42AB370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3F64384(void *a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1E38BBD0C(v3, 13, v9);
    type metadata accessor for LibResponseParser();
    if (v11)
    {
      v43 = v5;
      v12 = sub_1E3923128(a1);
      if (*(v12 + 2))
      {
        type metadata accessor for LibMenuItem(0);
        v13 = *(*v10 + 144);
        v14 = v13();
        v16 = v15;
        v17 = OUTLINED_FUNCTION_18();
        v42 = sub_1E3A8A680(13, v14, v16, 0, 0, v17 & 1);
        *&v47 = v12;

        v3 = 0;
        sub_1E3F605E0(&v47, sub_1E3F64E28, sub_1E3F61DEC);

        v18 = *(v47 + 16);
        if (v18)
        {
          v41 = v7;
          v46 = MEMORY[0x1E69E7CC0];
          v44 = v47;
          sub_1E4207574();
          v19 = 32;
          v3 = v10;
          do
          {
            v20 = *(v44 + v19);
            v21 = *(v44 + v19 + 16);
            v22 = *(v44 + v19 + 48);
            v48[1] = *(v44 + v19 + 32);
            v48[2] = v22;
            v47 = v20;
            v48[0] = v21;
            v23 = sub_1E39241C4(&v47, v45);
            v24 = (v13)(v23);
            sub_1E3A8B094(&v47, v24, v25);
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
            v19 += 64;
            --v18;
          }

          while (v18);

          v26 = v46;
          v7 = v41;
        }

        else
        {

          v26 = MEMORY[0x1E69E7CC0];
        }

        v27 = v42;
        (*(*v42 + 296))(v26);
        v5 = v43;
      }

      else
      {

        v27 = 0;
        v5 = v43;
      }
    }

    else
    {
      sub_1E3921C2C(a1, &v47);
      if (v47)
      {
        v46 = v47;
        v27 = *(v47 + 16);
        sub_1E325F6F0(&v46, &qword_1ECF2E118, &qword_1E42AB340);
        v45[0] = *(v48 + 8);
        sub_1E325F6F0(v45, &qword_1ECF3D960, &unk_1E4298000);
        if (v27)
        {
          type metadata accessor for LibMenuItem(0);
          v28 = (*(*v10 + 144))();
          v29 = v4;
          v31 = v30;
          v32 = OUTLINED_FUNCTION_18();
          v33 = v31;
          v4 = v29;
          v27 = sub_1E3A8A680(v3, v28, v33, 0, 0, v32 & 1);
        }
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  OUTLINED_FUNCTION_11_3(v5 + 16, &v47);
  v34 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v34;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = sub_1E392937C(v34);
  *(v5 + 16) = v34;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (*(v34 + 16) <= v4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v34 + 8 * v4;
  v3 = *(v36 + 32);
  *(v36 + 32) = v27;
  *(v5 + 16) = v34;
  swift_endAccess();

  v37 = swift_beginAccess();
  v38 = *(v7 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return;
  }

  *(v7 + 16) = v40;
  if (!v40)
  {
    v6(v37);
  }
}

double sub_1E3F647E4()
{
  v1 = *(v0 + 40);
  type metadata accessor for LibResponseParser();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  v5 = *(v0 + 24);
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v5;
  *(v3 + 40) = v1;

  sub_1E3921444();

  return result;
}

double sub_1E3F648E8(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for LibResponseParser();
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  sub_1E3922D3C(a1, sub_1E3F64AFC);

  return result;
}

uint64_t sub_1E3F64980(uint64_t a1)
{
  result = sub_1E3F64ED4(&qword_1ECF3D1D0, type metadata accessor for LibFamilySharingSource, &unk_1E42E0304);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibFamilySharingSource(uint64_t a1)
{
  result = qword_1EE29A800;
  if (!qword_1EE29A800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3F64A2C(uint64_t a1)
{
  sub_1E3B4E63C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3F64B08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_1E3F64B24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_17Tm_0(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 48));
  (a1)(*(v1 + 64));
  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

void *sub_1E3F64BB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3F64CA0((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3F64C4C()
{
  v1 = *(v0 + 16);
  sub_1E3F606E0(*(v0 + 32));
  v1();
}

uint64_t sub_1E3F64CA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for LibFamilySharingSeasonMediaEntity(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF3D1E0, &qword_1ECF3D1D8, &unk_1E42E03C0, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1D8, &unk_1E42E03C0);
          v9 = sub_1E38CF91C(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F64E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E3251BE8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E3F64ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_11Tm_0()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void *sub_1E3F65000(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

double sub_1E3F65040(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 1) = a2;
  v7 = OUTLINED_FUNCTION_13_8();
  sub_1E3F65000(v7);
  v8 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent], v13);
  v9 = *v8;
  sub_1E3F65000(*v8);
  sub_1E3C8BDFC(v9, v6);
  v10 = sub_1E3F6511C(v9);
  if (*v8)
  {
    [v2 sendSubviewToBack_];
  }

  sub_1E3F6511C(v6);
  v11 = OUTLINED_FUNCTION_13_8();
  return sub_1E3F6511C(v11);
}

double sub_1E3F6511C(void *a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1E3F6515C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3 + *a3;
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  *(v7 + 8) = a2;
  v9 = OUTLINED_FUNCTION_13_8();
  sub_1E3F65000(v9);
  v10 = (v3 + *a3);
  OUTLINED_FUNCTION_5_0(v10, v16);
  v11 = *v10;
  v12 = OUTLINED_FUNCTION_53();
  sub_1E3F65000(v12);
  sub_1E3C8BDFC(v11, v8);
  v13 = OUTLINED_FUNCTION_53();
  sub_1E3F6511C(v13);
  sub_1E3F6511C(v8);
  v14 = OUTLINED_FUNCTION_13_8();
  return sub_1E3F6511C(v14);
}

id sub_1E3F65218()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
  *v7 = 0;
  v7[1] = 0;
  v19 = v0;
  v20 = ObjectType;
  v8 = OUTLINED_FUNCTION_2_0();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BE0;
  *(v12 + 32) = sub_1E3F65410();
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v14 = sub_1E42062A4();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18[4] = sub_1E3F65454;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E3790FBC;
  v18[3] = &block_descriptor_140;
  v16 = _Block_copy(v18);

  [v13 vui:v14 registerForTraitChanges:v16 withHandler:?];
  _Block_release(v16);

  return v13;
}

unint64_t sub_1E3F65410()
{
  result = qword_1EE23AEE0;
  if (!qword_1EE23AEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AEE0);
  }

  return result;
}

void sub_1E3F65454()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_1E3F654C8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
  *v6 = 0;
  v6[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

char *sub_1E3F6559C(uint64_t a1, char *a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_26_0();
  v8 = v7;
  v9 = (*(v6 + 488))();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = [objc_allocWithZone(v4) initWithFrame_];
  }

  v12 = a2;
  v14 = sub_1E373E010(39, v10, v13);
  if (v14)
  {
    v16 = v14;
    v17 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v18 = OUTLINED_FUNCTION_5_206(v17);
    v26 = OUTLINED_FUNCTION_3_224(v18, v19, v20, v21, v22, v23, v24, v25);

    sub_1E373C624(v117);
    if (v26)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v16;
      if (!(*(v27 + 392))())
      {
        v8 = type metadata accessor for ImageLayout();
        sub_1E3BD61D8();
      }

      v28 = v26;
      OUTLINED_FUNCTION_19_134();
      v29 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v29, v30, v31);
    }
  }

  if (sub_1E373E010(1, v10, v15))
  {
    v33 = OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent;
    OUTLINED_FUNCTION_5_0(&v11[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent], v116);
    v34 = *&v11[v33];
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    v36 = v35;
    OUTLINED_FUNCTION_12_6();
    v38 = (*(v37 + 392))();
    if (!v38)
    {
      type metadata accessor for ViewLayout();
      v38 = sub_1E3C2F968();
    }

    v39 = v38;
    OUTLINED_FUNCTION_26_0();
    v41 = (*(v40 + 744))();
    [v36 setBackgroundColor_];

    v3 = [v36 layer];
    v8 = v39;
    (*(*v39 + 552))(v118);
    v42 = 0.0;
    if ((v119 & 1) == 0)
    {
      v42 = sub_1E3952BE8(v118[0], v118[1], v118[2], v118[3]);
    }

    [v3 setCornerRadius_];

    v43 = v36;
    OUTLINED_FUNCTION_19_134();
    v44 = OUTLINED_FUNCTION_6_196();
    sub_1E3F65040(v44, v45);
  }

  v46 = sub_1E373E010(23, v10, v32);
  if (v46)
  {
    v48 = v46;
    v49 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v50 = OUTLINED_FUNCTION_5_206(v49);
    v58 = OUTLINED_FUNCTION_3_224(v50, v51, v52, v53, v54, v55, v56, v57);

    sub_1E373C624(v117);
    if (v58)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v48;
      if (!(*(v59 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v60 = v58;
      OUTLINED_FUNCTION_19_134();
      v61 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v61, v62, v63);
    }
  }

  v64 = sub_1E373E010(15, v10, v47);
  if (v64)
  {
    v66 = v64;
    v67 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v68 = OUTLINED_FUNCTION_5_206(v67);
    v76 = OUTLINED_FUNCTION_3_224(v68, v69, v70, v71, v72, v73, v74, v75);

    sub_1E373C624(v117);
    if (v76)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v66;
      if (!(*(v77 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v78 = v76;
      OUTLINED_FUNCTION_19_134();
      v79 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v79, v80, v81);
    }
  }

  v82 = sub_1E373E010(17, v10, v65);
  if (v82)
  {
    v84 = v82;
    v85 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v86 = OUTLINED_FUNCTION_5_206(v85);
    v94 = OUTLINED_FUNCTION_3_224(v86, v87, v88, v89, v90, v91, v92, v93);

    sub_1E373C624(v117);
    if (v94)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v84;
      if (!(*(v95 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v96 = v94;
      OUTLINED_FUNCTION_19_134();
      v97 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v97, v98, v99);
    }
  }

  v100 = sub_1E373E010(31, v10, v83);

  if (v100)
  {
    v101 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v102 = OUTLINED_FUNCTION_5_206(v101);
    v110 = OUTLINED_FUNCTION_3_224(v102, v103, v104, v105, v106, v107, v108, v109);

    sub_1E373C624(v117);
    if (v110)
    {
      OUTLINED_FUNCTION_12_6();
      v112 = (*(v111 + 392))();
      if (!v112)
      {
        type metadata accessor for ImageLayout();
        v112 = sub_1E3BD61D8();
      }

      v113 = v112;
      v114 = v110;

      sub_1E3F6515C(v110, v113, &OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
    }
  }

  return v11;
}

double sub_1E3F65B48(char a1, double a2)
{
  v4 = v2;
  v6 = [v2 vuiTraitCollection];
  v7 = [v6 isAXEnabled];

  v8 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent];
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent], v154);
  v9 = MEMORY[0x1E69DDCE0];
  if (*v8 && (v3 = v8[1], type metadata accessor for ImageLayout(), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10;
    OUTLINED_FUNCTION_26_0();
    v13 = *(v12 + 152);

    v15 = v155;
    v13(v155, v14);
    rect = 0.0;
    if (v156)
    {
      v16 = v9[1];
      v17 = v9[2];
      v15 = v9;
    }

    else
    {
      v16 = *&v155[1];
      v17 = *&v155[2];
    }

    v21 = 0.0;
    v18 = *v15 + 0.0;
    OUTLINED_FUNCTION_8();
    v23 = COERCE_DOUBLE((*(v22 + 200))());
    v27.n128_f64[0] = v23;
    if ((v28 & 1) == 0)
    {
      v21 = v23;
    }

    v29.n128_f64[0] = OUTLINED_FUNCTION_25_92(v27, v24, v25, v26) + v21;
    if (v29.n128_f64[0] > a2)
    {
      OUTLINED_FUNCTION_25_92(v29, v30, v31, v32);
      OUTLINED_FUNCTION_8();
      (*(v33 + 208))();
    }

    OUTLINED_FUNCTION_8();
    v19 = (*(v34 + 2288))();
    v174.size.height = v35;
    v174.origin.x = v16;
    v174.origin.y = v18;
    v174.size.width = v19;
    rect_16 = v174.size.height;
    MaxY = CGRectGetMaxY(v174);
    v140 = (*(*v11 + 576))();
  }

  else
  {
    rect = 0.0;
    v140 = 2;
    v16 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    rect_16 = 0.0;
    v17 = 0.0;
    MaxY = 0.0;
  }

  v36 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent], v153);
  v138 = v18;
  v136 = v36;
  rect_8 = v17;
  if (*v36)
  {
    v37 = v36[1];
    OUTLINED_FUNCTION_8();
    v39 = *(v38 + 152);
    v3 = (v38 + 152);

    v41 = v39(v157, v40);
    if (v158)
    {
      v42 = *v9;
    }

    else
    {
      v42 = v157[0];
    }

    if (v158)
    {
      v43 = v9[1];
    }

    else
    {
      v43 = v157[1];
    }

    v44 = COERCE_DOUBLE((*(*v37 + 432))(v41));
    v45 = rect_16;
    if ((v46 & 1) == 0)
    {
      v45 = rect_16;
      if (v44 != 0.0)
      {
        v45 = v19 / v44;
      }
    }

    rect = v43;
    v47 = v43;
    v134 = v45;
    v135 = v42;
    v48 = v42;
    v49 = v19;
    v50 = CGRectGetMaxY(*(&v45 - 3));
    if ((v7 & 1) == 0)
    {
      v175.origin.x = v16;
      v175.origin.y = v18;
      v175.size.width = v19;
      v175.size.height = rect_16;
      v50 = CGRectGetMaxY(v175);
    }

    v148 = v50;
    v51 = v7 ^ 1;

    v133 = v19;
  }

  else
  {
    v148 = MaxY;
    v51 = 0;
    v134 = 0.0;
    v135 = 0.0;
    v133 = 0.0;
  }

  v52 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent];
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent], v152);
  v137 = v19;
  if (*v52)
  {
    v3 = *(v52 + 1);
    type metadata accessor for ImageLayout();
    if (swift_dynamicCastClass())
    {
      v53 = a2;
      OUTLINED_FUNCTION_26_0();
      v55 = *(v54 + 152);

      v57 = v159;
      v55(v159, v56);
      if (v160)
      {
        v59 = v9[1];
        v58 = v9[2];
        v57 = v9;
        v60 = v9[3];
      }

      else
      {
        v59 = *&v159[1];
        v58 = *&v159[2];
        v60 = *&v159[3];
      }

      v61 = *v57;
      OUTLINED_FUNCTION_8();
      v63 = COERCE_DOUBLE((*(v62 + 200))());
      if (v64)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v63;
      }

      v66 = v59;
      v67 = sub_1E3952BE0(v61, v59, v58, v60);
      a2 = v53;
      if (v67 + v65 > v53)
      {
        sub_1E3952BE0(v61, v66, v58, v60);
        OUTLINED_FUNCTION_8();
        (*(v68 + 208))();
      }

      OUTLINED_FUNCTION_8();
      (*(v69 + 2288))();
    }
  }

  v70 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent];
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent], v151);
  v71 = *v70;
  v139 = v16;
  v142 = v8;
  if (*v70)
  {
    v72 = *(v70 + 1);
    v169 = *v70;
    v170 = v72;
    v73 = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38, &qword_1E42B9FF0);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D218, &qword_1E42E03F8);
    if (OUTLINED_FUNCTION_15_147(v74))
    {
      v75 = v165;
      v3 = v166;
      OUTLINED_FUNCTION_12_6();
      v77 = v161;
      (*(v76 + 152))(v161);
      if (v162)
      {
        v78 = v9[1];
        rect_8 = v9[2];
        v77 = v9;
        v79 = v9[3];
      }

      else
      {
        v78 = *&v161[1];
        rect_8 = *&v161[2];
        v79 = *&v161[3];
      }

      v80 = *v77;
      v81 = *v8;
      if (v81)
      {
        v82 = v81;
      }

      sub_1E3C8B6B4(v81, v80);
      v84 = v83;

      sub_1E3952BE0(v80, v78, rect_8, v79);
      VUIRoundValue();
      [v75 sizeThatFits_];
      v176.size.width = v85;
      v176.size.height = v86;
      v176.origin.x = v78;
      v176.origin.y = v148 + v84;
      v148 = CGRectGetMaxY(v176);
    }
  }

  v87 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent];
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent], v150);
  v88 = *v87;
  v141 = v70;
  if (*v87)
  {
    v89 = *(v87 + 1);
    v169 = *v87;
    v170 = v89;
    v90 = v88;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38, &qword_1E42B9FF0);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D218, &qword_1E42E03F8);
    if (OUTLINED_FUNCTION_15_147(v91))
    {
      v3 = v165;
      v92 = *(*v166 + 152);
      v93 = v163;
      v92(v163);
      if (v164)
      {
        v95 = v9[1];
        v94 = v9[2];
        v93 = v9;
        v96 = v9[3];
      }

      else
      {
        v95 = *&v163[1];
        v94 = *&v163[2];
        v96 = *&v163[3];
      }

      v97 = *v93;
      v98 = *v142;
      if (*v142)
      {
        v99 = v98;
      }

      if (*v70)
      {

        v98 = *v70;
        if (*v70)
        {
          v100 = v98;
        }

        v101 = rect_8;
      }

      else
      {
        v101 = v97;
      }

      sub_1E3C8B6B4(v98, v101);
      v103 = v148 + v102;
      sub_1E3952BE0(v97, v95, v94, v96);
      VUIRoundValue();
      [v3 sizeThatFits_];
      v105 = v104;
      v107 = v106;
      if ((TVAppFeature.isEnabled.getter(10, v108, v109) & 1) == 0)
      {
        goto LABEL_66;
      }

      v105 = a2 - v95;
      v92(&v165);
      if (v168)
      {
        if (!v51)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v105 = v105 - v167;
        if ((v51 & 1) == 0)
        {
LABEL_66:
          v178.origin.x = v95;
          v178.origin.y = v103;
          v178.size.width = v105;
          v178.size.height = v107;
          CGRectGetMaxY(v178);

          goto LABEL_67;
        }
      }

      [v3 bottomMarginWithBaselineMargin_];
      v111 = v110;
      v177.origin.x = rect;
      v177.size.height = v134;
      v177.origin.y = v135;
      v177.size.width = v133;
      v103 = CGRectGetMaxY(v177) - v107 - v111;
      goto LABEL_66;
    }
  }

LABEL_67:
  v112 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent];
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent], v149);
  rect_24 = a2;
  if (*v112)
  {
    v3 = *(v112 + 1);
    OUTLINED_FUNCTION_12_6();
    v114 = *(v113 + 152);
    v116 = v115;

    v118 = &v169;
    v114(&v169, v117);
    if (v173)
    {
      v120 = *(MEMORY[0x1E69DDCE0] + 8);
      v119 = *(MEMORY[0x1E69DDCE0] + 16);
      v118 = MEMORY[0x1E69DDCE0];
      v121 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v120 = v170;
      v119 = v171;
      v121 = v172;
    }

    v122 = *v118;
    v123 = *v87;
    if (*v87)
    {
      v124 = v123;
    }

    sub_1E3C8B6B4(v123, v122);

    sub_1E3952BE0(v122, v120, v119, v121);
    VUIRoundValue();
    [v116 sizeThatFits_];
    v179.origin.x = OUTLINED_FUNCTION_21_104();
    CGRectGetMaxY(v179);
  }

  if ((a1 & 1) == 0)
  {
    [v4 effectiveUserInterfaceLayoutDirection];
    if (*v87)
    {
      OUTLINED_FUNCTION_16_137(*v87);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v112)
    {
      OUTLINED_FUNCTION_16_137(*v112);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_21_104();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v142)
    {
      OUTLINED_FUNCTION_16_137(*v142);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v141)
    {
      OUTLINED_FUNCTION_16_137(*v141);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v52)
    {
      OUTLINED_FUNCTION_16_137(*v52);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v136)
    {
      v125 = OUTLINED_FUNCTION_16_137(*v136);
      [v4 bounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v125 setFrame_];
    }

    if (v140 != 2 && (v140 & 1) != 0)
    {
      v126 = *v142;
      if (*v142)
      {
        objc_opt_self();
        v127 = swift_dynamicCastObjCClass();
        if (v127)
        {
          v128 = v127;
          v129 = v126;
          v180.origin.x = v139;
          v180.origin.y = v138;
          v180.size.width = v137;
          v180.size.height = rect_16;
          Height = CGRectGetHeight(v180);
          v181.origin.x = v139;
          v181.origin.y = v138;
          v181.size.width = v137;
          v181.size.height = rect_16;
          Width = CGRectGetWidth(v181);
          if (Width >= Height)
          {
            Width = Height;
          }

          [v128 setCornerRadius_];
        }
      }
    }
  }

  return rect_24;
}

double sub_1E3F667C4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3F65B48(0, v1);
}

uint64_t sub_1E3F66914@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

double sub_1E3F66924@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D220, &qword_1E42E0400);

  sub_1E4173100();
  v18 = *(v2 + 1);
  v19 = *(v2 + 32);
  OUTLINED_FUNCTION_5_207();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v7);
  *a1 = v4;
  a1[1] = v5;
  v8 = (a1 + *(v6 + 56));
  *v8 = sub_1E3F66AD4;
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D228, &qword_1E42E0408);

  sub_1E3F66AD8(&v18, v17);
  sub_1E4172FB8();
  OUTLINED_FUNCTION_5_207();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v11);
  v12 = (a1 + *(v10 + 56));
  *v12 = sub_1E3F67304;
  v12[1] = v13;
  OUTLINED_FUNCTION_5_207();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v14);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D230, &qword_1E42E0418) + 36));
  *v15 = sub_1E3F66B48;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;

  sub_1E3F66AD8(&v18, v17);

  sub_1E3F66AD8(&v18, v17);
  return result;
}

uint64_t sub_1E3F66AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E18, &qword_1E42E0410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1E3F66B48(void *a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    OUTLINED_FUNCTION_0_296();

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
    a1 = MEMORY[0x1E690E3F0](&v12, v4);
    v5 = v12;
  }

  else
  {
    v5 = 2;
  }

  v6 = sub_1E4173898(a1, a2);
  if (v5 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_0_296();
      LOBYTE(v12) = sub_1E4173898(v10, v11) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
      sub_1E4203AA4();
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_0();
    return sub_1E3909004(v8, v9);
  }

  return result;
}

uint64_t objectdestroyTm_54()
{

  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_5_207();

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3F66CC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1E3F66D18()
{
  result = qword_1ECF3D238;
  if (!qword_1ECF3D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D230, &qword_1E42E0418);
    sub_1E3F66DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D238);
  }

  return result;
}

unint64_t sub_1E3F66DA4()
{
  result = qword_1ECF3D240;
  if (!qword_1ECF3D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D228, &qword_1E42E0408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D240);
  }

  return result;
}

char *sub_1E3F66E18(__objc2_class **a1, uint64_t a2)
{
  type metadata accessor for DownloadStateIndicatorView();
  result = sub_1E3D08E94(a1, a2, 0);
  if (!result)
  {
    return _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  }

  return result;
}

double sub_1E3F66E68(unint64_t a1, char a2, uint64_t a3, char a4, void *a5, __n128 a6, __n128 a7)
{
  a6.n128_u64[0] = a1;
  a7.n128_u64[0] = 0;
  if (a2)
  {
    a6.n128_f64[0] = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    a7.n128_f64[0] = *&a3;
  }

  return (*((*MEMORY[0x1E69E7D40] & *a5) + 0x130))(a6, a7);
}

uint64_t sub_1E3F66FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3F672B0(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3F67034()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F672B0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3F6710C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F6725C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3F67160()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F6725C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3F671B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3F6725C(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3F671E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF694A0[0];
  if (!qword_1ECF694A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF694A0);
  }

  return result;
}

unint64_t sub_1E3F67234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3F6725C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3F6725C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF69530[0];
  if (!qword_1ECF69530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69530);
  }

  return result;
}

unint64_t sub_1E3F672B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF695C0[0];
  if (!qword_1ECF695C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF695C0);
  }

  return result;
}

void sub_1E3F673E8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3F67444(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___VUIJSSportsJavascriptInterface_context;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t variable initialization expression of SportsJavascriptInterface.tierManagerClientType@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D39F0];
  sub_1E4204EE4();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1E3F6759C()
{
  v0 = objc_opt_self();
  v1 = sub_1E398B468(v0);
  if (!v2)
  {
    goto LABEL_5;
  }

  v17[0] = 45;
  v17[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v1);
  v15[2] = v17;
  v5 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v15, v3, v4, &v16);
  if (!*(v5 + 2))
  {

LABEL_5:
    v6 = sub_1E4207154();
    v7 = v10;
    v9 = v11;
    v8 = v12;
    goto LABEL_6;
  }

  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  v9 = *(v5 + 6);
  v8 = *(v5 + 7);

LABEL_6:
  v13 = MEMORY[0x1E6910920](v6, v7, v9, v8);

  return v13;
}

id SportsJavascriptInterface.init(context:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___VUIJSSportsJavascriptInterface_tierManagerClientType;
  v4 = *MEMORY[0x1E69D39F0];
  sub_1E4204EE4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 104))(&v1[v3], v4);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SportsJavascriptInterface(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

JSValue __swiftcall SportsJavascriptInterface.checkActivityExists(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_1_261();
  sub_1E4205004();
  v1 = sub_1E4204FF4();
  v2 = sub_1E4204F94();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

JSValue __swiftcall SportsJavascriptInterface.getTierType(leagueId:)(Swift::String leagueId)
{
  v2 = sub_1E4205C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4204D44();
  sub_1E4204D34();
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  sub_1E4204D04();

  sub_1E3A246B8();
  v7 = sub_1E4205C04();
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = v7;
  v12[1] = v8;
  v9 = (*((*v6 & *v1) + 0x60))(v7, v8);
  result.super.isa = sub_1E3A243F8(v12, v9);
  if (result.super.isa)
  {
    isa = result.super.isa;
    (*(v3 + 8))(v5, v2);
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

JSValue __swiftcall SportsJavascriptInterface.isPlayByPlayEnabled(leagueId:)(Swift::String leagueId)
{
  OUTLINED_FUNCTION_1_261();
  sub_1E4204D44();
  sub_1E4204D34();
  OUTLINED_FUNCTION_12_5();
  (*(v1 + 120))();
  v2 = sub_1E4204D14();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_1E3F67C04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

JSValue __swiftcall SportsJavascriptInterface.isSportsFeatureEnabled(leagueId:featureName:)(Swift::String leagueId, Swift::String featureName)
{
  sub_1E4204D44();
  sub_1E4204D34();
  v2 = sub_1E4204D24();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id SportsJavascriptInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportsJavascriptInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsJavascriptInterface(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SportsJavascriptInterface(uint64_t a1)
{
  result = qword_1EE295E80;
  if (!qword_1EE295E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F67F80(uint64_t a1)
{
  result = sub_1E4204EE4();
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

uint64_t sub_1E3F6801C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E3F68068(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3F680B8(a1, a2);
  return v4;
}

uint64_t sub_1E3F680B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *sub_1E3F68124()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 224))();
  if (result)
  {
    v2 = result;
    v3 = [result isHidden];

    return (v3 ^ 1);
  }

  return result;
}

id sub_1E3F68180()
{
  result = *(v0 + 48);
  if (result)
  {
    return [result vuiView];
  }

  return result;
}

void sub_1E3F681B0(void *a1, unint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_1E41FFCE4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  (*(v11 + 240))();
  *(v4 + 4) = a2;
  *(v4 + 5) = a3;

  (*(*v4 + 112))(v12);
  if (a2)
  {
    sub_1E3F6847C(a2);
  }

  sub_1E41FFCD4();
  v13 = objc_allocWithZone(sub_1E41FFD04());
  v14 = sub_1E41FFCF4();
  v15 = *(v4 + 6);
  *(v4 + 6) = v14;
  v16 = v14;

  v17 = [a1 vuiView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  *(v5 + 7) = v20;
  *(v5 + 8) = v22;
  *(v5 + 9) = v24;
  *(v5 + 10) = v26;
  v27 = v16;
  v28 = [v27 vuiView];
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  [v28 setVuiAlpha_];

  v30 = [v27 vuiView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  [v30 setFrame_];

  [a1 vui:v27 addChildViewController:?];
  [v27 vui:a1 didMoveToParentViewController:?];
  v32 = [a1 vuiView];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  v34 = [v27 vuiView];

  if (!v34)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v33 addSubview_];

  if (*(v5 + 4))
  {
    v35 = v5[5];

    sub_1E3F68600(v36, 6, v35);
  }
}

uint64_t sub_1E3F6847C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1E4207384();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x1E6911E60](0, a1) + 56);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(a1 + 32) + 56);

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3F68520()
{
  v1 = *(v0 + 6);
  if (!v1)
  {
    goto LABEL_6;
  }

  [v1 vui:0 willMoveToParentViewController:?];
  v2 = *(v0 + 6);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 vuiView];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 removeFromSuperview];

  v5 = *(v0 + 6);
  if (v5)
  {
    [v5 vui_removeFromParentViewController];
    v6 = *(v0 + 6);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v0[6] = 0.0;

  if (*(v0 + 4))
  {
    v7 = v0[5];

    sub_1E3F68600(v8, 7, v7);
  }
}

void sub_1E3F68600(unint64_t a1, uint64_t a2, double a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1E4207384();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v7, a1);
      }

      else
      {
      }

      ++v7;
      OUTLINED_FUNCTION_8();
      (*(v8 + 208))(a2, *&a3, 0);
    }

    while (v6 != v7);
  }
}

void sub_1E3F686F8(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 224))();
  if (v10)
  {
    v11 = v10;
    [v10 setFrame_];
  }
}

uint64_t sub_1E3F687B0()
{

  return v0;
}

uint64_t sub_1E3F687E0()
{
  sub_1E3F687B0();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void sub_1E3F68814(uint64_t a1)
{
  v2 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    if (*(a1 + 8 * v2++ + 32))
    {

      MEMORY[0x1E6910BF0](v5);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }
  }

  __break(1u);
}

id sub_1E3F68930()
{
  v0 = sub_1E3F68C0C();
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize:7 weight:32.0];
  v4 = [v3 configurationByApplyingConfiguration_];

  return v4;
}

uint64_t sub_1E3F689DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1E3F68A34()
{
  OUTLINED_FUNCTION_156();
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;

  sub_1E3F690AC();
}

uint64_t (*sub_1E3F68A94(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F692DC;
}

uint64_t sub_1E3F68AE8()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3F68B2C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3F690AC();
}

uint64_t (*sub_1E3F68B80(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F68BD4;
}

void sub_1E3F68BD8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3F690AC();
  }
}

id sub_1E3F68C0C()
{
  v1 = [v0 isFocused];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = [v2 blackColor];

    return v3;
  }

  else
  {
    v5 = [v2 whiteColor];
    v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
    v7 = 0.5;
    if (v6)
    {
      v7 = 1.0;
    }

    v8 = [v5 colorWithAlphaComponent_];

    return v8;
  }
}

id sub_1E3F68CF8()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_13_8();
  return sub_1E3F68D34();
}

id sub_1E3F68D34()
{
  OUTLINED_FUNCTION_156();
  v0[OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution] = 0;
  v1 = &v0[OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName];
  *v1 = v2;
  v1[1] = v3;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MultiPlayerDistributionButton();

  v4 = objc_msgSendSuper2(&v21, sel_initWithType_interfaceStyle_, 0, 2);
  [v4 setWidth_];
  [v4 setHeight_];
  [v4 setCornerRadius_];
  v5 = sub_1E39DFFC8();
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 whiteColor];
    v8 = [v7 colorWithAlphaComponent_];
  }

  else
  {
    v8 = [v6 clearColor];
  }

  [v4 setButtonBackgroundColor_];

  v9 = [objc_opt_self() whiteColor];
  [v4 setHighlightColor_];

  [v4 setPadding_];
  OUTLINED_FUNCTION_13_8();
  v10 = sub_1E3F691C4();

  v11 = [objc_allocWithZone(MEMORY[0x1E69DF740]) initWithFrame_];
  if (v10)
  {
    v12 = v10;
    v13 = sub_1E3F68930();
    v14 = [v12 imageWithConfiguration_];
  }

  else
  {
    v14 = 0;
  }

  [v11 setImage_];

  [v11 setContentMode_];
  [v4 setImageView:v11 forHighlightedState:0];
  [v4 configureWithLayoutProperties];
  v15 = v4;
  if ([v15 vuiIsRTL])
  {
    CGAffineTransformMakeScale(&v20, -1.0, 1.0);
    v16 = *&v20.a;
    v17 = *&v20.c;
    v18 = *&v20.tx;
  }

  else
  {
    v16 = *MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    v18 = *(MEMORY[0x1E695EFD0] + 32);
  }

  *&v20.a = v16;
  *&v20.c = v17;
  *&v20.tx = v18;
  [v15 setTransform_];

  return v15;
}

uint64_t sub_1E3F69040(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution) = 0;
  type metadata accessor for MultiPlayerDistributionButton();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3F690AC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v1 = sub_1E3F691C4();

  if (v1)
  {
    v2 = sub_1E3F68930();
    v4 = [v1 imageWithConfiguration_];
  }

  else
  {
    v4 = 0;
  }

  v3 = [v0 imageView];
  [v3 setImage_];
}

id sub_1E3F691C4()
{
  OUTLINED_FUNCTION_156();
  sub_1E37E96A4();

  OUTLINED_FUNCTION_13_8();
  result = sub_1E3834BC8();
  if (!result)
  {
    OUTLINED_FUNCTION_13_8();
    return sub_1E3C7758C();
  }

  return result;
}

id sub_1E3F69294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerDistributionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F69348()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3F693A0()
{
  OUTLINED_FUNCTION_156();
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;
}

void sub_1E3F694B4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v142 = a3;
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v124 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v124 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v124 - v20;
  sub_1E4205CB4();
  v21 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v22 + 112))();
  sub_1E3F69F68();
  sub_1E38DCD14(a1, a2);
  v23 = sub_1E39FEB38(a1, a2);
  [v23 setDelegate_];
  if ([v23 parse])
  {
    v140 = v7;
    v24 = (*v21 & *v3) + 104;
    v25 = *((*v21 & *v3) + 0x68);
    v26 = v25();
    v27 = sub_1E37D26AC(0x7954656369766564, 0xEA00000000006570, v26);
    v29 = v28;

    if (v29)
    {
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v136 = v27;
        v32 = (v25)(v30);
        v33 = sub_1E37D26AC(0x796C646E65697266, 0xEC000000656D614ELL, v32);
        v35 = v34;

        if (v35)
        {
          v37 = (v35 >> 56) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v37 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {
            v135 = v33;
            v141 = v35;
            v38 = (v25)(v36);
            v39 = sub_1E37D26AC(0x74636166756E616DLL, 0xEC00000072657275, v38);
            v41 = v40;

            if (v41)
            {
              v43 = HIBYTE(v41) & 0xF;
              if ((v41 & 0x2000000000000000) == 0)
              {
                v43 = v39 & 0xFFFFFFFFFFFFLL;
              }

              if (v43)
              {
                v134 = v39;
                (v25)(v42);
                v44 = OUTLINED_FUNCTION_9_165();
                v139 = sub_1E37D26AC(v44 | 0x6D614E6C00000000, 0xE900000000000065, v3);
                v45 = v41;
                v47 = v46;

                v48 = v47;
                v49 = v45;
                if (v48)
                {
                  v50 = HIBYTE(v48) & 0xF;
                  v51 = v139;
                  if ((v48 & 0x2000000000000000) == 0)
                  {
                    v50 = v139 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v50)
                  {
                    v132 = v6;
                    v133 = v48;
                    v52 = v25();
                    v138 = sub_1E37D26AC(5129301, 0xE300000000000000, v52);
                    v54 = v53;

                    if (v54)
                    {
                      v56 = HIBYTE(v54) & 0xF;
                      if ((v54 & 0x2000000000000000) == 0)
                      {
                        v56 = v138 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v56)
                      {
                        v140 = v54;
                        v57 = v25;
                        v58 = (v25)(v55);
                        v137 = sub_1E37D26AC(0x74636166756E616DLL, 0xEF4C525572657275, v58);
                        v132 = v59;

                        v61 = (v25)(v60);
                        v62 = sub_1E37D26AC(0xD000000000000010, 0x80000001E428A600, v61);
                        v131 = v63;

                        (v57)(v64);
                        v65 = OUTLINED_FUNCTION_9_165();
                        v66 = sub_1E37D26AC(v65 | 0x6D754E6C00000000, 0xEB00000000726562, v3);
                        v129 = v67;
                        v130 = v66;

                        (v57)(v68);
                        v69 = OUTLINED_FUNCTION_9_165();
                        v70 = sub_1E37D26AC(v69 | 0x4C52556C00000000, 0xE800000000000000, v3);
                        v127 = v71;
                        v128 = v70;

                        v73 = (v57)(v72);
                        v74 = sub_1E37D26AC(0x754E6C6169726573, 0xEC0000007265626DLL, v73);
                        v125 = v75;
                        v126 = v74;

                        v77 = (v57)(v76);
                        v78 = sub_1E37D26AC(4411477, 0xE300000000000000, v77);
                        v80 = v79;

                        v143[0] = v136;
                        v143[1] = v29;
                        v143[2] = v135;
                        v143[3] = v141;
                        v143[4] = v134;
                        v143[5] = v49;
                        v143[6] = v137;
                        v143[7] = v132;
                        v143[8] = v62;
                        v143[9] = v131;
                        v143[10] = v51;
                        v143[11] = v133;
                        v143[12] = v130;
                        v143[13] = v129;
                        v143[14] = v128;
                        v143[15] = v127;
                        v143[16] = v126;
                        v143[17] = v125;
                        v143[18] = v138;
                        v143[19] = v140;
                        v143[20] = v78;
                        v143[21] = v80;
                        nullsub_1();
                        memcpy(v144, v143, 0xB0uLL);
LABEL_35:
                        memcpy(v142, v144, 0xB0uLL);
                        return;
                      }
                    }

                    sub_1E324FBDC();
                    OUTLINED_FUNCTION_13_161();
                    v116 = v137;
                    v117 = v132;
                    v118(v137);
                    v119 = sub_1E41FFC94();
                    v120 = sub_1E42067F4();
                    if (OUTLINED_FUNCTION_161(v120))
                    {
                      *OUTLINED_FUNCTION_125_0() = 0;
                      OUTLINED_FUNCTION_62(&dword_1E323F000, v121, v122, "UPNPDeviceDescriptionParser:: missing UDN element");
                      OUTLINED_FUNCTION_7_9();
                      v123 = v23;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_150();
                    }

                    (*(v24 + 8))(v116, v117);
LABEL_34:
                    sub_1E3790540(v144);
                    goto LABEL_35;
                  }
                }

                v108 = sub_1E324FBDC();
                v109 = v140;
                v110 = v138;
                (*(v140 + 16))(v138, v108, v6);
                v111 = sub_1E41FFC94();
                v112 = sub_1E42067F4();
                if (OUTLINED_FUNCTION_161(v112))
                {
                  *OUTLINED_FUNCTION_125_0() = 0;
                  OUTLINED_FUNCTION_62(&dword_1E323F000, v113, v114, "UPNPDeviceDescriptionParser:: missing modelName element");
                  OUTLINED_FUNCTION_7_9();
                  v115 = v23;
                }

                else
                {
                  OUTLINED_FUNCTION_10_150();
                }

                (*(v109 + 8))(v110, v6);
                goto LABEL_34;
              }
            }

            v101 = sub_1E324FBDC();
            v103 = v139;
            v102 = v140;
            (*(v140 + 16))(v139, v101, v6);
            v104 = sub_1E41FFC94();
            v105 = sub_1E42067F4();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = OUTLINED_FUNCTION_125_0();
              *v106 = 0;
              _os_log_impl(&dword_1E323F000, v104, v105, "UPNPDeviceDescriptionParser:: missing manufacturer element", v106, 2u);
              OUTLINED_FUNCTION_21_0();
              v107 = v23;
            }

            else
            {
              OUTLINED_FUNCTION_10_150();
            }

            (*(v102 + 8))(v103, v6);
            goto LABEL_34;
          }
        }

        v94 = sub_1E324FBDC();
        v95 = v141;
        (*(v140 + 16))(v141, v94, v6);
        v96 = sub_1E41FFC94();
        v97 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v97))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_62(&dword_1E323F000, v98, v99, "UPNPDeviceDescriptionParser:: missing friendlyName element");
          OUTLINED_FUNCTION_7_9();
          v100 = v23;
        }

        else
        {
          OUTLINED_FUNCTION_10_150();
        }

        (*(v140 + 8))(v95, v6);
        goto LABEL_34;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_13_161();
    v89(v12);
    v90 = sub_1E41FFC94();
    v91 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_161(v91))
    {
      v92 = OUTLINED_FUNCTION_125_0();
      *v92 = 0;
      _os_log_impl(&dword_1E323F000, v90, v27, "UPNPDeviceDescriptionParser:: missing deviceType element", v92, 2u);
      OUTLINED_FUNCTION_21_0();
      v93 = v23;
    }

    else
    {
      OUTLINED_FUNCTION_10_150();
    }

    (*(v24 + 8))(v12, v6);
    goto LABEL_34;
  }

  v81 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v81, v6);
  v82 = v23;
  v83 = sub_1E41FFC94();
  v84 = sub_1E42067F4();
  if (!os_log_type_enabled(v83, v84))
  {

    v83 = v82;
    goto LABEL_27;
  }

  v85 = swift_slowAlloc();
  v86 = swift_slowAlloc();
  *v85 = 138412290;
  v87 = [v82 parserError];

  if (v87)
  {
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 4) = v88;
    *v86 = v88;
    _os_log_impl(&dword_1E323F000, v83, v84, "UPNPDeviceDescriptionParser:: %@", v85, 0xCu);
    sub_1E3A66B00(v86);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_7_9();
LABEL_27:

    (*(v7 + 8))(v9, v6);
    goto LABEL_34;
  }

  __break(1u);
}

unint64_t sub_1E3F69F68()
{
  result = qword_1ECF3D278;
  if (!qword_1ECF3D278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF3D278);
  }

  return result;
}

uint64_t sub_1E3F69FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v32[0] = (*(v5 + 152))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E3924274();
  v6 = sub_1E4205DF4();
  v8 = v7;

  OUTLINED_FUNCTION_1_262();
  v10 = *(v9 + 136);

  v10(a2, a3);
  if (v6 == 0x7665642F746F6F72 && v8 == 0xEB00000000656369)
  {
  }

  else
  {
    v12 = sub_1E42079A4();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1_262();
  v14 = (*(v13 + 128))();
  v16 = v15;
  OUTLINED_FUNCTION_1_262();
  v18 = (*(v17 + 120))(v32);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v20;
  sub_1E38C5C90(0, 0xE000000000000000, v14, v16, isUniquelyReferenced_nonNull_native);
  *v20 = v31;

  v18(v32, 0);
LABEL_9:
  OUTLINED_FUNCTION_1_262();
  v23 = *(v22 + 168);

  v24 = v23(v32);
  v26 = v25;
  sub_1E3F6A904();
  v27 = *(*v26 + 16);
  sub_1E3F6A950(v27);
  v28 = *v26;
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 16 * v27;
  *(v29 + 32) = a2;
  *(v29 + 40) = a3;
  return v24(v32, 0);
}

uint64_t sub_1E3F6A310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 128);
  v7 = v6();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 104))();
  sub_1E37D26AC(v7, v9, v11);
  v13 = v12;

  if (!v13)
  {
    return result;
  }

  v16 = (v6)(v15);
  v18 = v17;
  OUTLINED_FUNCTION_21();
  v32 = (*(v19 + 120))(v36);
  v21 = v20;
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *v21;
  v35 = *v21;
  *v21 = 0x8000000000000000;
  v23 = sub_1E327D33C(v16, v18);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
  if (sub_1E4207644())
  {
    v27 = sub_1E327D33C(v16, v18);
    if ((v26 & 1) != (v28 & 1))
    {
LABEL_14:
      result = sub_1E4207A74();
      __break(1u);
      return result;
    }

    v25 = v27;
  }

  if ((v26 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = (*(v35 + 56) + 16 * v25);
  v33 = *v29;
  v34 = v29[1];
  MEMORY[0x1E69109E0](a2, a3);
  if (v34)
  {

    v30 = v35;
    v31 = (*(v35 + 56) + 16 * v25);
    *v31 = v33;
    v31[1] = v34;
  }

  else
  {

    v30 = v35;
    sub_1E3782C70(*(v35 + 48) + 16 * v25);
    sub_1E4207664();
  }

  *v21 = v30;
  return v32(v36, 0);
}

uint64_t sub_1E3F6A610()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 136))(0, 0xE000000000000000);
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 168))(v4);
  sub_1E3F6A6CC();

  return v2(v4, 0);
}

char *sub_1E3F6A6CC()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = sub_1E3F6AAFC();
  if (!v2)
  {
    return sub_1E3F6AA70(*(*v0 + 16) - 1);
  }

  return result;
}

id sub_1E3F6A7B8()
{
  v1 = OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_scratchpad;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_1E4205CB4();
  v3 = &v0[OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_xmlPath] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UPNPDeviceDescriptionParser();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1E3F6A870(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UPNPDeviceDescriptionParser();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1E3F6A904()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3740F88(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3F6A950(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3740F88((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E3F6A9B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F6A9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E3F6AA70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3780C00(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = &v3[16 * a1];
    v9 = *(v8 + 4);
    memmove(v8 + 32, v8 + 48, 16 * v7);
    *(v3 + 2) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_1E3F6AAFC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3780C00(v1);
    v1 = result;
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = v3 - 1;
    result = *&v1[16 * v4 + 32];
    *(v1 + 2) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3F6AB58()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3F6ABA4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F6AC34(char a1, char a2)
{
  v3 = 0xD000000000000015;
  v4 = "currentElementName";
  v5 = "currentElementName";
  switch(a1)
  {
    case 1:
      v5 = "useImpressionableItem";
      v3 = 0xD000000000000019;
      break;
    case 2:
      v5 = "useUniqueIdForImpressions";
      v3 = 0xD000000000000012;
      break;
    case 3:
      v5 = "ignoreClickMetrics";
      v3 = 0xD000000000000025;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000015;
  switch(a2)
  {
    case 1:
      v4 = "useImpressionableItem";
      v6 = 0xD000000000000019;
      break;
    case 2:
      v4 = "useUniqueIdForImpressions";
      v6 = 0xD000000000000012;
      break;
    case 3:
      v4 = "ignoreClickMetrics";
      v6 = 0xD000000000000025;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3F6AD70(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3F6ADC0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3F6ADC0(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3F6AE7C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3F6ADC0(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3F6AEC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F6AB58();
  *a1 = result;
  return result;
}

unint64_t sub_1E3F6AEF0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3F6ABA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F6AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v81 - v17;
  v18 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81 - v27;
  if (!a2)
  {
    return 0;
  }

  v82 = v24;
  v83 = v15;
  v84 = v18;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  if (v29)
  {
    *&v89 = *(a1 + 16);
    *(&v89 + 1) = v29;
    v87 = 0x7079746F746F7270;
    v88 = 0xE900000000000065;
    sub_1E41FE6C4();
    v31 = OUTLINED_FUNCTION_11_165();
    v35 = __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_1E32822E0(v35, v36, v37);
    sub_1E4207234();
    v39 = v38;
    sub_1E325F748(v28, &qword_1ECF2FBA0, &unk_1E42B49D0);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v85 = sub_1E3F6B764(a2);
  if (v40)
  {
    v41 = v40;
    sub_1E384EE08(*(a1 + 98));
    v84 = v42;
    v44 = v43;
    v45 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v45, v4);

    v46 = sub_1E41FFC94();
    v47 = sub_1E42067E4();

    LODWORD(v86) = v47;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v89 = v83;
      *v48 = 136315650;
      v49 = sub_1E3270FC8(v84, v44, &v89);

      *(v48 + 4) = v49;
      *(v48 + 12) = 2080;
      if (v29)
      {
        v50 = v30;
      }

      else
      {
        v50 = 0;
      }

      if (v29)
      {
        v51 = v29;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      v52 = sub_1E3270FC8(v50, v51, &v89);

      *(v48 + 14) = v52;
      *(v48 + 22) = 2080;

      v53 = v85;
      v54 = sub_1E3270FC8(v85, v41, &v89);

      *(v48 + 24) = v54;
      _os_log_impl(&dword_1E323F000, v46, v86, "Metrics:: Ignoring metrics for %s | %s. Reason: %s", v48, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v6 + 8))(v10, v4);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
      v53 = v85;
    }

    if (v53 == sub_1E3BA4BBC(0) && v41 == v59)
    {
    }

    else
    {
      v61 = sub_1E42079A4();

      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }

    v62 = type metadata accessor for Metrics(0);
    sub_1E3BA54D0();
    OUTLINED_FUNCTION_30();
    (*(v63 + 256))(1);
    return v62;
  }

  v55 = sub_1E3BA363C(0);
  sub_1E3277E60(v55, v56, a2, &v89);

  if (!v90)
  {
    sub_1E325F748(&v89, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_5_208() & 1) == 0)
  {
LABEL_27:
    v62 = 0;
    goto LABEL_28;
  }

  v57 = v87;
  sub_1E3F6B764(v87);
  if (v58)
  {

    goto LABEL_27;
  }

  v62 = type metadata accessor for Metrics(0);
  sub_1E3BA54D0();
  OUTLINED_FUNCTION_30();
  (*(v68 + 184))(v57);
LABEL_28:
  v64 = sub_1E3BA363C(1);
  sub_1E3277E60(v64, v65, a2, &v89);

  if (v90)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_5_208())
    {
      v66 = v87;
      sub_1E3F6B764(v87);
      if (v67)
      {
      }

      else
      {
        if (!v62)
        {
          type metadata accessor for Metrics(0);
          v62 = sub_1E3BA54D0();
        }

        (*(*v62 + 208))(v66);
      }
    }
  }

  else
  {
    sub_1E325F748(&v89, &unk_1ECF296E0, &unk_1E4298030);
  }

  v69 = sub_1E3BA363C(2);
  sub_1E3277E60(v69, v70, a2, &v89);

  if (!v90)
  {
    v73 = &unk_1ECF296E0;
    v74 = &unk_1E4298030;
    v75 = &v89;
LABEL_42:
    sub_1E325F748(v75, v73, v74);
    return v62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_5_208() & 1) == 0)
  {
    return v62;
  }

  sub_1E3F6B764(v87);
  v72 = v71;

  if (v72)
  {

    return v62;
  }

  v77 = v86;
  sub_1E3F6B7FC(a1, a2, v86);
  v78 = v84;
  if (__swift_getEnumTagSinglePayload(v77, 1, v84) == 1)
  {
    v73 = &qword_1ECF2B7B0;
    v74 = &qword_1E429EC30;
    v75 = v77;
    goto LABEL_42;
  }

  v79 = v82;
  (*(v20 + 32))(v82, v77, v78);
  if (!v62)
  {
    type metadata accessor for Metrics(0);
    v62 = sub_1E3BA54D0();
  }

  v80 = v83;
  (*(v20 + 16))(v83, v79, v78);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v78);
  (*(*v62 + 232))(v80);
  (*(v20 + 8))(v79, v78);
  return v62;
}

uint64_t sub_1E3F6B764(uint64_t a1)
{
  v2 = sub_1E3BA363C(5);
  sub_1E3277E60(v2, v3, a1, &v6);

  if (v7)
  {
    if (OUTLINED_FUNCTION_21_4())
    {
      return v5;
    }
  }

  else
  {
    sub_1E325F748(&v6, &unk_1ECF296E0, &unk_1E4298030);
  }

  return 0;
}

uint64_t sub_1E3F6B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v93 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v92 = v9 - v8;
  v10 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v97 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v102 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v89 - v16;
  v17 = sub_1E42044C4();
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1E42044A4();
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v100 = sub_1E4204624();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v99 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v96 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v89 - v36;
  sub_1E4204724();
  v38 = OUTLINED_FUNCTION_11_165();
  v103 = v39;
  __swift_storeEnumTagSinglePayload(v38, v40, v41, v39);
  if (!a2)
  {
    v105 = 0u;
    v106 = 0u;
    return sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
  }

  v95 = v10;
  v42 = sub_1E3BA363C(2);
  sub_1E3277E60(v42, v43, a2, &v105);

  if (!*(&v106 + 1))
  {
    return sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_6_197();
  result = OUTLINED_FUNCTION_21_4();
  if ((result & 1) == 0)
  {
    return result;
  }

  v45 = v104;
  v46 = sub_1E4205F14();
  sub_1E3277E60(v46, v47, v45, &v105);

  v90 = a3;
  if (*(&v106 + 1))
  {
    OUTLINED_FUNCTION_6_197();
    if (OUTLINED_FUNCTION_21_4())
    {
      v91 = v104;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
  }

  v91 = 0;
LABEL_11:

  if (!a1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    if (!(*(*a1 + 576))(v48))
    {
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v103);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_30();
    (*(v49 + 224))();

    if (__swift_getEnumTagSinglePayload(v37, 1, v103) != 1)
    {
      break;
    }

LABEL_16:
    v50 = sub_1E325F748(v37, &qword_1ECF2B7B0, &qword_1E429EC30);
    v51 = (*(*a1 + 624))(v50);

    a1 = v51;
    if (!v51)
    {
      goto LABEL_17;
    }
  }

  sub_1E325F748(v37, &qword_1ECF2B7B0, &qword_1E429EC30);
LABEL_17:

  sub_1E4204614();
  v52 = v45;
  sub_1E3277E60(0xD000000000000015, 0x80000001E428A6A0, v45, &v105);
  if (*(&v106 + 1))
  {
    OUTLINED_FUNCTION_6_197();
    if (OUTLINED_FUNCTION_21_4())
    {
      v53 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001E428A6A0;
      *(inited + 48) = v53;
      v55 = sub_1E4205CB4();
      *(&v106 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
      *&v105 = v55;
      sub_1E4204494();
      sub_1E42044B4();
      v56 = v99;
      sub_1E42045F4();
      v57 = v100;
      v58 = v101;
      (*(v22 + 8))(v101, v100);
      v59 = v56;
      v52 = v45;
      (*(v22 + 32))(v58, v59, v57);
      OUTLINED_FUNCTION_1_28();
      v61 = sub_1E3C69B60(0xD000000000000015, 0x80000001E428A6A0, v60);
      if (v62)
      {
        v63 = v61;
        swift_isUniquelyReferenced_nonNull_native();
        v104 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207644();
        v52 = v104;

        sub_1E329504C((*(v52 + 56) + 32 * v63), &v105);
        sub_1E4207664();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_22:
    sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
  }

  v64 = sub_1E4205F14();
  sub_1E3277E60(v64, v65, v52, &v105);

  if (!*(&v106 + 1))
  {
    sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
LABEL_27:
    v66 = sub_1E4205F14();
    sub_1E3277E60(v66, v67, v52, &v105);

    if (*(&v106 + 1))
    {
      OUTLINED_FUNCTION_6_197();
      if (OUTLINED_FUNCTION_21_4())
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
    }

    v68 = 0;
    if (a1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_6_197();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v68 = v104;
  if (!a1)
  {
    goto LABEL_37;
  }

LABEL_33:
  if ((*(*a1 + 576))())
  {
    OUTLINED_FUNCTION_30();
    (*(v69 + 224))();

    if (!__swift_getEnumTagSinglePayload(v34, 1, v103))
    {
      v82 = v68;
      v83 = v52;
      v84 = v98;
      sub_1E42046D4();
      sub_1E4204694();
      v85 = v84;
      v52 = v83;
      v68 = v82;
      (*(v97 + 8))(v85, v95);
    }

    sub_1E325F748(v34, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

LABEL_37:

  sub_1E4204664();
  sub_1E3277E60(0xD000000000000019, 0x80000001E428A6C0, v52, &v105);
  if (!*(&v106 + 1))
  {

    sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
LABEL_44:
    v75 = v95;
    v76 = v97;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_197();
  if (!OUTLINED_FUNCTION_21_4() || (v104 & 1) == 0)
  {

    goto LABEL_44;
  }

  v89 = v68;
  OUTLINED_FUNCTION_1_28();
  v71 = sub_1E3C69B60(0xD000000000000019, 0x80000001E428A6C0, v70);
  if (v72)
  {
    v73 = v71;
    swift_isUniquelyReferenced_nonNull_native();
    v104 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    sub_1E4207644();
    v74 = v104;

    sub_1E329504C((*(v74 + 56) + 32 * v73), &v105);
    sub_1E4207664();
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
  }

  sub_1E325F748(&v105, &unk_1ECF296E0, &unk_1E4298030);
  v86 = v92;
  sub_1E41FE614();
  sub_1E41FE5E4();
  (*(v93 + 8))(v86, v94);
  v87 = v98;
  sub_1E4204654();
  v76 = v97;
  v88 = v102;
  v75 = v95;
  (*(v97 + 8))(v102, v95);
  (*(v76 + 32))(v88, v87, v75);
LABEL_45:
  (*(v76 + 16))(v98, v102, v75);
  v77 = v100;
  v78 = v101;
  (*(v22 + 16))(v99, v101, v100);

  v79 = MEMORY[0x1E69E7CC0];
  sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
  sub_1E37E5C70(v79);
  v80 = v96;
  sub_1E42046C4();

  (*(v76 + 8))(v102, v95);
  (*(v22 + 8))(v78, v77);
  v81 = v90;
  sub_1E325F748(v90, &qword_1ECF2B7B0, &qword_1E429EC30);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v103);
  sub_1E3B2B0C4(v80, v81);
}

uint64_t sub_1E3F6C4B4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  if (!a2)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v30(v10);
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v62 = v34;
      *v33 = 136315138;
      v35 = sub_1E4123DE4(v3);
      v37 = sub_1E3270FC8(v35, v36, &v62);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v31, v32, "Metrics:: No metrics data for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    return 0;
  }

  v17 = sub_1E3F6B764(a2);
  if (!v18)
  {
    v38 = sub_1E3BA363C(3);
    sub_1E3277E60(v38, v39, a2, &v62);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_5_208())
      {
        v40 = v61;
        type metadata accessor for Metrics(0);
        v41 = v40;
        v42 = 1;
        return sub_1E3BA5560(v41, v42);
      }
    }

    else
    {
      sub_1E325F748(&v62, &unk_1ECF296E0, &unk_1E4298030);
    }

    v48 = sub_1E3BA363C(4);
    sub_1E3277E60(v48, v49, a2, &v62);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_5_208())
      {
        v50 = v61;
        type metadata accessor for Metrics(0);
        v41 = v50;
        v42 = 0;
        return sub_1E3BA5560(v41, v42);
      }
    }

    else
    {
      sub_1E325F748(&v62, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v51(v16);
    v52 = sub_1E41FFC94();
    v53 = sub_1E42067F4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v62 = v55;
      *v54 = 136315138;
      v56 = sub_1E4123DE4(v3);
      v58 = sub_1E3270FC8(v56, v57, &v62);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1E323F000, v52, v53, "Metrics:: Page or Dialog Metrics missing for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v16, v4);
    return 0;
  }

  v19 = v17;
  v20 = v18;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v21(v13);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v4;
    *&v62 = v25;
    *v24 = 136315394;
    v26 = sub_1E4123DE4(v3);
    v28 = sub_1E3270FC8(v26, v27, &v62);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;

    v29 = sub_1E3270FC8(v19, v20, &v62);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1E323F000, v22, v23, "Metrics:: Ignoring page metrics for %s. Reason: %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v13, v60);
  }

  else
  {

    (*(v6 + 8))(v13, v4);
  }

  if (v19 == sub_1E3BA4BBC(0) && v20 == v43)
  {
  }

  else
  {
    v45 = sub_1E42079A4();

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  v46 = type metadata accessor for Metrics(0);
  sub_1E3BA54D0();
  OUTLINED_FUNCTION_30();
  (*(v47 + 256))(1);
  return v46;
}

unint64_t sub_1E3F6CA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D2E8;
  if (!qword_1ECF3D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D2E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomMetrics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id MetricsRenderEventListViewController.init(events:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsRenderEventListViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E3F6CCB8()
{
  *(v0 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems) = 0;
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall MetricsRenderEventListViewController.viewDidLoad()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MetricsRenderEventListViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = sub_1E4205ED4();
  [v0 setTitle_];

  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = [v0 tableView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MetricsEventCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E3A209B8();

    v6 = sub_1E4205ED4();

    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

    v7 = [v0 tableView];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() systemGroupedBackgroundColor];
      [v8 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MetricsRenderEventListViewController.__allocating_init(style:)()
{
  v1 = objc_allocWithZone(OUTLINED_FUNCTION_12_1());

  return [v1 initWithStyle_];
}

id MetricsRenderEventListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MetricsRenderEventListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRenderEventListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int __swiftcall MetricsRenderEventListViewController.numberOfSections(in:)(Swift::Int in)
{
  v2 = *(v1 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
  if (v2)
  {
    if (v2 >> 62)
    {
      return sub_1E4207384();
    }

    else
    {
      return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }

  return in;
}

Swift::Void __swiftcall MetricsRenderEventListViewController.tableView(_:willDisplayHeaderView:forSection:)(UITableView *_, UIView *willDisplayHeaderView, Swift::Int forSection)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
    if (v6)
    {
      v7 = v5;
      sub_1E34AF4E4(forSection, (v6 & 0xC000000000000001) == 0, *(v3 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems));
      if ((v6 & 0xC000000000000001) != 0)
      {
        v17 = willDisplayHeaderView;

        v10 = MEMORY[0x1E6911E60](forSection, v6);
      }

      else
      {
        v8 = *(v6 + 8 * forSection + 32);
        v9 = willDisplayHeaderView;
        v10 = v8;
      }

      v11 = [v7 textLabel];
      if (v11)
      {
        v12 = v11;
        v13 = v10[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch];
        v14 = objc_opt_self();
        v15 = &selRef_systemBlueColor;
        if (!v13)
        {
          v15 = &selRef_systemGrayColor;
        }

        v16 = [v14 *v15];
        [v12 setTextColor_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::String_optional __swiftcall MetricsRenderEventListViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v3 = *(v2 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
  if (v3)
  {
    v4 = titleForHeaderInSection;
    sub_1E34AF4E4(titleForHeaderInSection, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1E6911E60](v4, v3);
      OUTLINED_FUNCTION_12_1();
    }

    else
    {
      v4 = *(v3 + 8 * v4 + 32);
    }

    type metadata accessor for MetricsCellPresentationUtilities();
    v5 = sub_1E3A9FF68();
    v6 = sub_1E3B622D4(v5, 0, 0);
    v8 = v7;
    v11 = sub_1E3A9FC54();
    v12 = v9;
    MEMORY[0x1E69109E0](0x20A280E220, 0xA500000000000000);
    MEMORY[0x1E69109E0](v6, v8);

    _ = v11;
    titleForHeaderInSection = v12;
  }

  else
  {
    __break(1u);
  }

  result.value._object = titleForHeaderInSection;
  result.value._countAndFlagsBits = _;
  return result;
}

void *MetricsRenderEventListViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  sub_1E3A209B8();

  v4 = sub_1E4205ED4();

  v5 = sub_1E41FE7E4();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for MetricsEventCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    result = sub_1E41FE854();
    v10 = *(v1 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
    if (v10)
    {
      v11 = result;
      sub_1E34AF4E4(result, (v10 & 0xC000000000000001) == 0, *(v2 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems));
      if ((v10 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x1E6911E60](v11, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v11 + 32);
      }

      (*((*MEMORY[0x1E69E7D40] & *v8) + 0xC0))(v12);

      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = objc_allocWithZone(MEMORY[0x1E69DD028]);

    return [v13 init];
  }

  return result;
}

void MetricsRenderEventListViewController.tableView(_:didSelectRowAt:)(__n128 a1)
{
  v2 = v1;
  v3 = sub_1E41FE854();
  v4 = *&v1[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems];
  if (v4)
  {
    v5 = v3;
    sub_1E34AF4E4(v3, (v4 & 0xC000000000000001) == 0, *&v2[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems]);
    if ((v4 & 0xC000000000000001) != 0)
    {

      v6 = MEMORY[0x1E6911E60](v5, v4);
    }

    else
    {
      v6 = *(v4 + 8 * v5 + 32);
    }

    type metadata accessor for MetricsEventDetailListViewController();
    v10 = v6;
    v7 = sub_1E406EBA4(v10);
    v8 = [v2 navigationController];
    if (v8)
    {
      v9 = v8;
      [v8 pushViewController:v7 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F6D9B4()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[14] = sub_1E383BCC0();
  type metadata accessor for PlaybackStatusLayout();
  v0[15] = sub_1E3A70EBC(1);
  type metadata accessor for DownloadStateIndicatorLayout();
  v0[16] = sub_1E3C6D918();
  type metadata accessor for ButtonLayout();
  v0[17] = sub_1E3BBB724();
  v0[18] = 0;
  v1 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_15_9();
  v3 = *(v2 + 1760);

  v4 = v3();
  sub_1E3C37CBC(v4, 10);

  OUTLINED_FUNCTION_9_2();
  v6 = (*(v5 + 1736))();
  sub_1E3C37CBC(v6, 39);

  OUTLINED_FUNCTION_9_2();
  v8 = (*(v7 + 1784))();
  sub_1E3C37CBC(v8, 96);

  OUTLINED_FUNCTION_9_2();
  v10 = (*(v9 + 1832))();
  sub_1E3C37CBC(v10, 67);

  OUTLINED_FUNCTION_9_2();
  v12 = (*(v11 + 1808))();
  sub_1E3C37CBC(v12, 233);

  v13 = *sub_1E3E5FB0C();
  v14 = *(*v1 + 752);
  v15 = v13;
  v14(v13);
  v16 = *sub_1E3E5FB88();
  v17 = *(*v1 + 872);
  v18 = v16;
  v17(v16);
  v19 = sub_1E3E61064();
  v20 = *(v19 + 1);
  *v452 = *v19;
  v453 = v20;
  LOBYTE(v454) = 0;
  (*(*v1 + 560))(v452);
  __dst[0] = xmmword_1E4298700;
  __dst[1] = xmmword_1E4298720;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V1.2D, #4.0 }

  *v493 = xmmword_1E42E08D0;
  *v494 = _Q1;
  LOBYTE(v495) = 0;
  __asm { FMOV            V1.2D, #7.0 }

  *v490 = xmmword_1E42E08E0;
  v491 = _Q1;
  LOBYTE(v492) = 0;
  type metadata accessor for UIEdgeInsets();
  v28 = v27;
  sub_1E3C3DE00();
  *v484 = *v487;
  v485 = v488;
  LOBYTE(v486) = v489;
  sub_1E3C3DE00();
  *v478 = *v481;
  v479 = v482;
  LOBYTE(v480) = v483;
  v29 = sub_1E3C3DE00();
  *v472 = *v475;
  v473 = v476;
  LOBYTE(v474) = v477;
  v37 = OUTLINED_FUNCTION_20_114(v29, v30, v31, v32, v33, v34, v35, v36, v411, v431, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  sub_1E3C2FCB8(v37, v493, v490, v484, v478, v472, v28, v38);
  OUTLINED_FUNCTION_11_166(v39, v40, v41, v42, v43, v44, v45, v46, v412, v432, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v48 = *(v47 + 1600);
  v57 = OUTLINED_FUNCTION_7_201(v49, v50, v51, v52, v53, v54, v55, v56, v413, v433, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v48(v57, 1);
  v58 = *(v19 + 1);
  __dst[0] = *v19;
  __dst[1] = v58;
  LOBYTE(__dst[2]) = 0;
  sub_1E39537A8();
  OUTLINED_FUNCTION_12_150(v59, v60, v61, v62);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  v63 = OUTLINED_FUNCTION_5_209();
  *v469 = *v472;
  v470 = v473;
  LOBYTE(v471) = v474;
  v71 = OUTLINED_FUNCTION_20_114(v63, v64, v65, v66, v67, v68, v69, v70, v414, v434, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  sub_1E3C2FCB8(v71, v493, v487, v481, v475, v469, v28, v72);
  OUTLINED_FUNCTION_11_166(v73, v74, v75, v76, v77, v78, v79, v80, v415, v435, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, *&__dst[0]);
  v81 = OUTLINED_FUNCTION_18();
  v89 = OUTLINED_FUNCTION_7_201(v81, v82, v83, v84, v85, v86, v87, v88, v416, v436, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v437 = v28;
  v48(v89, 17);
  OUTLINED_FUNCTION_9_2();
  v91 = *(v90 + 1736);
  v92 = v91();
  v93 = *sub_1E418A500();
  (*(*v92 + 440))(v93, 0);

  (v91)(v94);
  OUTLINED_FUNCTION_2_1();
  (*(v95 + 1352))(0);

  (v91)(v96);
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1328))(1);

  v99 = (v91)(v98);
  v100 = *sub_1E3BD2884();
  (*(*v99 + 1280))(v100, 0);

  (v91)(v101);
  OUTLINED_FUNCTION_2_1();
  (*(v102 + 512))(2);

  v104 = (v91)(v103);
  sub_1E3E5F90C();
  OUTLINED_FUNCTION_81_12();
  v105 = *(*v104 + 1976);
  v106 = v19;
  v105(v19);

  (v91)(v107);
  OUTLINED_FUNCTION_2_1();
  (*(v108 + 1808))(1);

  v110 = (v91)(v109);
  v111 = [objc_opt_self() blackColor];
  (*(*v110 + 752))(v111);

  v113 = (v91)(v112);
  sub_1E3952C88();
  *&__src[0] = v114;
  *(&__src[0] + 1) = v115;
  *&__src[1] = v116;
  *(&__src[1] + 1) = v117;
  LOBYTE(__src[2]) = 0;
  (*(*v113 + 1856))(__src);

  v119 = (v91)(v118);
  sub_1E3E60CFC();
  OUTLINED_FUNCTION_81_12();
  v120 = *(*v119 + 1832);
  v121 = v19;
  v120(v19);

  v123 = (v91)(v122);
  v124 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v124 setShadowOffset_];
  [v124 setShadowBlurRadius_];
  v125 = sub_1E3755B54();
  v126 = sub_1E4206F24();
  [v124 setShadowColor_];

  (*(*v123 + 608))(v124);

  OUTLINED_FUNCTION_9_2();
  v128 = v127 + 1760;
  v129 = *(v127 + 1760);
  v129();
  OUTLINED_FUNCTION_2_1();
  (*(v130 + 2056))(1, 0);

  (v129)(v131);
  OUTLINED_FUNCTION_2_1();
  v132 = OUTLINED_FUNCTION_10_7();
  v133(v132);

  (v129)(v134);
  OUTLINED_FUNCTION_2_1();
  v135 = OUTLINED_FUNCTION_10_7();
  v136(v135);

  (v129)(v137);
  LOBYTE(__dst[0]) = 22;
  LOBYTE(v493[0]) = 19;
  LOBYTE(v490[0]) = 17;
  LOBYTE(v487[0]) = 19;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_110();
  v138 = sub_1E3C3DE00();
  LOBYTE(v475[0]) = v478[0];
  v146 = OUTLINED_FUNCTION_20_114(v138, v139, v140, v141, v142, v143, v144, v145, v128, v437, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  sub_1E3C2FCB8(v146, v481, v493, v475, v490, v487, &qword_1F5D549D8, v147);
  OUTLINED_FUNCTION_13_162();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v156 = OUTLINED_FUNCTION_7_201(v148, v149, v150, v151, v152, v153, v154, v155, v417, v438, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v157(v156, 48);

  (v129)(v158);
  *&__dst[0] = 0;
  v493[0] = *sub_1E3E5FD88();
  v159 = v493[0];
  sub_1E3C2FC98();
  v487[0] = v490[0];
  sub_1E3C3DE00();
  v481[0] = v484[0];
  sub_1E3C3DE00();
  v475[0] = v478[0];
  v160 = sub_1E3C3DE00();
  v469[0] = v472[0];
  v168 = OUTLINED_FUNCTION_20_114(v160, v161, v162, v163, v164, v165, v166, v167, v418, v439, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  sub_1E3C2FCB8(v168, v487, v481, v493, v475, v469, v125, v169);
  v170 = __src[0];
  v171 = __src[1];
  v172 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v181 = OUTLINED_FUNCTION_7_201(v173, v174, v175, v176, v177, v178, v179, v180, v419, v440, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v182(v181, 29);

  v129();
  v183 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v183);

  (v129)(v184);
  LOBYTE(__dst[0]) = 4;
  sub_1E3C2FC98();
  LOBYTE(v490[0]) = v493[0];
  sub_1E3C3DE00();
  LOBYTE(v484[0]) = v487[0];
  sub_1E3C3DE00();
  LOBYTE(v478[0]) = v481[0];
  sub_1E3C3DE00();
  LOBYTE(v472[0]) = v475[0];
  v185 = sub_1E3C3DE00();
  LOBYTE(v465) = v469[0];
  v193 = OUTLINED_FUNCTION_20_114(v185, v186, v187, v188, v189, v190, v191, v192, v420, v441, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  sub_1E3C2FCB8(v193, v490, v484, v478, v472, &v465, &qword_1F5D54AF8, v194);
  OUTLINED_FUNCTION_13_162();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v203 = OUTLINED_FUNCTION_7_201(v195, v196, v197, v198, v199, v200, v201, v202, v421, v442, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v204(v203, 54);

  (v129)(v205);
  OUTLINED_FUNCTION_2_1();
  (*(v206 + 2008))(1);

  v208 = (*(*v1 + 176))(v493, v207);
  if (v495)
  {
    v209 = 0.0;
  }

  else
  {
    v209 = *&v493[1];
  }

  v210 = *(*v1 + 1784);
  v211 = v210(v208);
  (*(*v211 + 176))(__dst);

  v213 = *(__dst + 1);
  if (__dst[2])
  {
    v213 = 0.0;
  }

  v214 = v209 - v213;
  v210(v212);
  sub_1E3A70DC8(0);

  v216 = v210(v215);
  *&__src[0] = 0x4020000000000000;
  *(__src + 1) = v214;
  *&__src[1] = v214;
  *(&__src[1] + 1) = v214;
  LOBYTE(__src[2]) = 0;
  (*(*v216 + 160))(__src);

  v218 = v210(v217);
  v219 = [objc_opt_self() whiteColor];
  v220 = [v219 colorWithAlphaComponent_];

  (*(*v218 + 752))(v220);

  v222 = v210(v221);
  OUTLINED_FUNCTION_5_0(v222 + 112, &v465);

  v223 = OUTLINED_FUNCTION_10_7();
  v224(v223);

  v226 = v210(v225);
  OUTLINED_FUNCTION_5_0(v226 + 112, &v462);

  v227 = OUTLINED_FUNCTION_10_7();
  v228(v227);

  v230 = v210(v229);
  OUTLINED_FUNCTION_5_0(v230 + 112, &v459);

  LOBYTE(v487[0]) = 22;
  LOBYTE(v484[0]) = 19;
  LOBYTE(v481[0]) = 17;
  LOBYTE(v478[0]) = 19;
  sub_1E3C2FC98();
  LOBYTE(v472[0]) = v475[0];
  sub_1E3C3DE00();
  LOBYTE(v456) = v469[0];
  sub_1E3C2FCB8(v487, v472, v484, &v456, v481, v478, &qword_1F5D549D8, v490);
  OUTLINED_FUNCTION_14_161();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v231 + 1600))(v487, 48, v232 & 1, &qword_1F5D549D8);

  v234 = v210(v233);
  OUTLINED_FUNCTION_5_0(v234 + 112, &v456);

  LOBYTE(v487[0]) = 4;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_110();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_22_92();
  sub_1E3C3DE00();
  LOBYTE(v469[0]) = v472[0];
  sub_1E3C3DE00();
  BYTE6(v455) = HIBYTE(v455);
  sub_1E3C3DE00();
  BYTE4(v455) = BYTE5(v455);
  sub_1E3C2FCB8(v487, v481, v475, v469, &v455 + 6, &v455 + 4, &qword_1F5D54AF8, v490);
  OUTLINED_FUNCTION_14_161();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v235 + 1600))(v487, 54, v236 & 1, &qword_1F5D54AF8);

  OUTLINED_FUNCTION_9_2();
  v238 = *(v237 + 1832);
  v239 = v238();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_81_12();
  v240 = *(*v239 + 680);
  v241 = v234;
  v240(v234);

  v243 = (v238)(v242);
  sub_1E3E60364();
  OUTLINED_FUNCTION_81_12();
  v244 = *(*v243 + 872);
  v245 = v234;
  v244(v234);

  (v238)(v246);
  v247 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v247);

  v249 = (v238)(v248);
  if (_MergedGlobals_255 != -1)
  {
    swift_once();
  }

  v250 = qword_1EE28C860;
  v251 = *(*v249 + 752);
  v252 = qword_1EE28C860;
  v251(v250);

  (v238)(v253);
  __asm { FMOV            V0.2D, #3.5 }

  __dst[0] = _Q0;
  __dst[1] = _Q0;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V0.2D, #5.0 }

  *v493 = _Q0;
  *v494 = _Q0;
  LOBYTE(v495) = 0;
  v256 = v443;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v469 = *v472;
  v470 = v473;
  LOBYTE(v471) = v474;
  v257 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v257, v258, v259, v260, v261, v262, v443, v263);
  OUTLINED_FUNCTION_11_166(v264, v265, v266, v267, v268, v269, v270, v271, v422, v443, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v280 = OUTLINED_FUNCTION_7_201(v272, v273, v274, v275, v276, v277, v278, v279, v423, v444, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v281(v280, 1);

  (v238)(v282);
  __dst[0] = 0x4018000000000000uLL;
  *&__dst[1] = 0;
  *(&__dst[1] + 1) = 0x4018000000000000;
  LOBYTE(__dst[2]) = 0;
  v493[0] = 0x4020000000000000;
  v493[1] = 0;
  v494[0] = 0;
  v494[1] = 0x4020000000000000;
  LOBYTE(v495) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v469 = *v472;
  v470 = v473;
  LOBYTE(v471) = v474;
  v283 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v283, v284, v285, v286, v287, v288, v256, v289);
  OUTLINED_FUNCTION_11_166(v290, v291, v292, v293, v294, v295, v296, v297, v424, v445, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v306 = OUTLINED_FUNCTION_7_201(v298, v299, v300, v301, v302, v303, v304, v305, v425, v446, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v307(v306, 0);

  (v238)(v308);
  OUTLINED_FUNCTION_15_9();
  (*(v309 + 2096))();

  *&__dst[0] = 2;
  BYTE8(__dst[0]) = 0;
  v493[0] = 3;
  LOBYTE(v493[1]) = 0;
  type metadata accessor for SymbolScale(0);
  v311 = v310;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_19_135();
  OUTLINED_FUNCTION_18_125();
  OUTLINED_FUNCTION_17_134();
  v469[0] = v472[0];
  LOBYTE(v469[1]) = v472[1];
  v312 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v312, v313, v314, v315, v316, v317, v311, v318);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v327 = OUTLINED_FUNCTION_7_201(v319, v320, v321, v322, v323, v324, v325, v326, v426, v447, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v328(v327, 91);

  (v238)(v329);
  OUTLINED_FUNCTION_15_9();
  (*(v330 + 2096))();

  LOBYTE(__dst[0]) = 22;
  LOBYTE(v493[0]) = 14;
  sub_1E3C3DE00();
  LOBYTE(v487[0]) = v490[0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_110();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_22_92();
  sub_1E3C3DE00();
  LOBYTE(v469[0]) = v472[0];
  v331 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v331, v332, v333, v334, v335, v336, &qword_1F5D549D8, v337);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v346 = OUTLINED_FUNCTION_7_201(v338, v339, v340, v341, v342, v343, v344, v345, v427, v448, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v347(v346, 96);

  (v238)(v348);
  OUTLINED_FUNCTION_15_9();
  (*(v349 + 2096))();

  v350.n128_u64[0] = 6.0;
  *&__dst[0] = j__OUTLINED_FUNCTION_7_78(v350);
  *(&__dst[0] + 1) = v351;
  *&__dst[1] = v352;
  *(&__dst[1] + 1) = v353;
  LOBYTE(__dst[2]) = 0;
  v354.n128_u64[0] = 9.0;
  v355 = j__OUTLINED_FUNCTION_7_78(v354);
  OUTLINED_FUNCTION_12_150(v355, v356, v357, v358);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v469 = *v472;
  v470 = v473;
  LOBYTE(v471) = v474;
  v359 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v359, v360, v361, v362, v363, v364, v256, v365);
  OUTLINED_FUNCTION_11_166(v366, v367, v368, v369, v370, v371, v372, v373, v428, v449, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v382 = OUTLINED_FUNCTION_7_201(v374, v375, v376, v377, v378, v379, v380, v381, v429, v450, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v383(v382, 17);

  OUTLINED_FUNCTION_9_2();
  v385 = *(v384 + 1808);
  v386 = v385();
  v387 = *sub_1E3E5FD88();
  (*(*v386 + 1712))(v387);

  (v385)(v388);
  OUTLINED_FUNCTION_2_1();
  v390 = (*(v389 + 1728))();

  (*(*v390 + 2072))(22);

  (v385)(v391);
  OUTLINED_FUNCTION_15_9();
  (*(v392 + 1728))();

  *&__dst[0] = 1;
  BYTE8(__dst[0]) = 0;
  v493[0] = 2;
  LOBYTE(v493[1]) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_19_135();
  OUTLINED_FUNCTION_18_125();
  OUTLINED_FUNCTION_17_134();
  v469[0] = v472[0];
  LOBYTE(v469[1]) = v472[1];
  v393 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v393, v394, v395, v396, v397, v398, v311, v399);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v408 = OUTLINED_FUNCTION_7_201(v400, v401, v402, v403, v404, v405, v406, v407, v430, v451, v452[0], v452[1], v453, *(&v453 + 1), v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v409(v408, 91);

  return v1;
}

uint64_t sub_1E3F6F4DC(uint64_t a1)
{
  nullsub_1();
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      OUTLINED_FUNCTION_14_0((v1 + 18), v3);
      v1[18] = v4;
      swift_retain_n();

      v6 = *(*v1 + 1856);
      v7 = v6(v5);
      if (v7)
      {
        __asm { FMOV            V0.2D, #3.5 }

        __dst[0] = _Q0;
        __dst[1] = _Q0;
        LOBYTE(__dst[2]) = 0;
        __asm { FMOV            V0.2D, #5.0 }

        v49 = _Q0;
        v50 = _Q0;
        v51 = 0;
        type metadata accessor for UIEdgeInsets();
        v15 = v14;
        sub_1E3C3DE00();
        v43 = v46;
        v44 = v47;
        v45 = v48;
        sub_1E3C3DE00();
        v37 = v40;
        v38 = v41;
        v39 = v42;
        sub_1E3C3DE00();
        v31 = v34;
        v32 = v35;
        v33 = v36;
        sub_1E3C3DE00();
        v26[0] = v28;
        v26[1] = v29;
        v27 = v30;
        sub_1E3C2FCB8(&v43, __dst, &v49, &v37, &v31, v26, v15, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v16 + 1600))(__dst, 1, v17 & 1, v15);
      }

      if (v6(v7))
      {
        __asm { FMOV            V0.2D, #6.0 }

        __dst[0] = _Q0;
        memset(&__dst[1], 0, 17);
        __asm { FMOV            V0.2D, #8.0 }

        v49 = _Q0;
        v50 = 0uLL;
        v51 = 0;
        v46 = _Q0;
        v47 = 0uLL;
        v48 = 0;
        type metadata accessor for UIEdgeInsets();
        v21 = v20;
        sub_1E3C3DE00();
        v40 = v43;
        v41 = v44;
        v42 = v45;
        sub_1E3C3DE00();
        v34 = v37;
        v35 = v38;
        v36 = v39;
        sub_1E3C3DE00();
        v28 = v31;
        v29 = v32;
        v30 = v33;
        sub_1E3C2FCB8(&v40, __dst, &v49, &v34, &v28, &v46, v21, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v22 + 1600))(__dst, 0, v23 & 1, v21);
      }

      v24 = *sub_1E3810A0C();

      sub_1E3C37EC8(v4, v24);
    }
  }

  return result;
}

void sub_1E3F6F83C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42B2A10;
  *(v4 + 32) = [a1 colorWithAlphaComponent_];
  *(v4 + 40) = [a1 colorWithAlphaComponent_];
  *(v4 + 48) = [a1 colorWithAlphaComponent_];
  *(v4 + 56) = [a1 colorWithAlphaComponent_];
  *(v4 + 64) = [a1 colorWithAlphaComponent_];
  *(v4 + 72) = [a1 colorWithAlphaComponent_];
  v5 = (*(*v2 + 840))();
  if (v5)
  {
    (*(*v5 + 1800))(v4);
  }

  else
  {
    type metadata accessor for ViewGradientLayout(0);
    sub_1E40C2E40();
    OUTLINED_FUNCTION_9_2();
    v7 = *(v6 + 848);

    v7();
  }
}

void sub_1E3F6FA5C()
{
  sub_1E3755B54();
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = sub_1E3E5F2F8(v1, v2);

  v4 = [v3 colorWithAlphaComponent_];
  qword_1EE28C860 = v4;
}

uint64_t sub_1E3F6FB3C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v8 - 8;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v7 - 1;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v5 + 5;
      goto LABEL_6;
    case 6:
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_0_298();
          result = v13 - 3;
          break;
        case 2:
        case 3:
          OUTLINED_FUNCTION_0_298();
          result = v12 + 14;
          break;
        case 4:
          OUTLINED_FUNCTION_0_298();
          result = v11 - 8;
          break;
        case 5:
          OUTLINED_FUNCTION_0_298();
          result = v14 - 9;
          break;
        default:
          OUTLINED_FUNCTION_0_298();
          result = v10 + 13;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
LABEL_6:
      v15 = v6;
      MEMORY[0x1E69109E0](a1, a2);
      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      return v15;
  }
}

void sub_1E3F6FD54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 navigationItem];
  v8 = [v7 largeTitleDisplayMode];

  v9 = [a1 navigationItem];
  sub_1E3B62028();
  v11 = v10;

  v12 = v6 == 0;
  if (v6)
  {
    [v6 _titleOpacity];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for VUIViewController();
  if (swift_dynamicCastClass())
  {
    v15 = a1;
    v14 = sub_1E40D8DE0();
    v12 = v16;
  }

  v17 = [v6 tintColor];

  *a2 = (v8 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = v14;
  *(a2 + 40) = v12;
  *(a2 + 48) = v17;
}

void sub_1E3F6FED8(void *a1, char a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = [a1 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    if (v16)
    {
      v17 = [a1 transitionCoordinator];
      if (v17)
      {
        v18 = v17;
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_1_263(v19);
        OUTLINED_FUNCTION_0_155();
        v33 = 1107296256;
        v34 = sub_1E37C7850;
        v35 = &block_descriptor_6_5;
        v20 = _Block_copy(&v32);
        v21 = a9;
        v22 = a1;
        v23 = v16;

        [v18 animateAlongsideTransition:v20 completion:0];

        _Block_release(v20);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = objc_opt_self();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_1_263(v25);
        OUTLINED_FUNCTION_0_155();
        v33 = 1107296256;
        v34 = sub_1E378AEA4;
        v35 = &block_descriptor_141;
        v26 = _Block_copy(&v32);
        v27 = a9;
        v28 = a1;
        v29 = v16;

        [v24 animateWithDuration:v26 animations:a4];

        _Block_release(v26);
      }
    }
  }

  v30 = [a1 navigationItem];
  [v30 _setSupportsTwoLineLargeTitles_];

  v31 = [a1 navigationItem];
  [v31 setLargeTitleDisplayMode_];
}

void sub_1E3F7015C()
{
  if ((OUTLINED_FUNCTION_2_224() & 1) == 0 && v2)
  {
    [v1 setTintColor_];
  }

  if (((sub_1E39DFFC8() | v4) & 1) == 0)
  {
    v7 = [v0 navigationItem];
    sub_1E3B62038(v6);
  }

  if ((sub_1E39DFFC8() | v3))
  {
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    type metadata accessor for VUIViewController();
    if (swift_dynamicCastClass())
    {
      v0;
      sub_1E40D8E58(v5);
      OUTLINED_FUNCTION_14_13();
    }

    else
    {
      OUTLINED_FUNCTION_14_13();

      [v10 v11];
    }
  }
}

uint64_t objectdestroyTm_55()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F70334(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3F703A0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

void sub_1E3F7045C(void *a1, void *a2)
{
  v5 = *&v2[*a2];
  *&v2[*a2] = a1;
  v3 = *&v2[*a2];
  v4 = a1;
  [v2 vui:v3 addSubview:v5 oldView:?];
  [v2 vui_setNeedsLayout];
}

id sub_1E3F704EC()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_210();
  *(v0 + v1) = sub_1E383BCC0();
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  *(v0 + v2) = sub_1E383BCC0();
  v3 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugTextLayout;
  *(v0 + v3) = sub_1E383BCC0();
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_messageLayout;
  type metadata accessor for ViewLayout();
  *(v0 + v4) = sub_1E3C2F968();
  v5 = sub_1E3C2F968();
  OUTLINED_FUNCTION_9_166(v5);
  v18 = v0;
  v19 = type metadata accessor for SearchNoContentView();
  v6 = OUTLINED_FUNCTION_2_0();
  v9 = objc_msgSendSuper2(v7, v8, v6);
  sub_1E3F707AC();
  if ([objc_opt_self() isTV])
  {
    v10 = [objc_opt_self() clearColor];
  }

  else
  {
    v10 = *sub_1E3E6011C();
  }

  v11 = v10;
  [v9 setVuiBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4299720;
  *(v12 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  *(v12 + 40) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v13 = sub_1E42062A4();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E3F70F58;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E3790FBC;
  v17[3] = &block_descriptor_142;
  v15 = _Block_copy(v17);

  [v9 vui:v13 registerForTraitChanges:v15 withHandler:?];
  _Block_release(v15);

  return v9;
}

double sub_1E3F707AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleTextLayout;
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 1792);

  v4(10);

  v5 = *(v0 + v2);

  v6 = *sub_1E3E5FD88();
  v7 = *(*v5 + 680);
  v8 = v6;
  v7(v6);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 1984);

  v10(1);

  LOBYTE(v172[0]) = 2;
  LOBYTE(v171[0]) = 27;
  LOBYTE(v170[0]) = 27;

  sub_1E3C3DE00();
  LOBYTE(v165[0]) = v168[0];
  v11 = sub_1E3C3DE00();
  LOBYTE(v153[0]) = v162[0];
  v19 = OUTLINED_FUNCTION_3_226(v11, v12, v13, v14, v15, v16, v17, v18, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, 3);
  sub_1E3C2FCB8(v19, v20, v21, v22, v165, v153, &qword_1F5D549D8, v23);
  *__dst = *v173;
  *&__dst[4] = v174;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v24 + 1600))(__dst, 48, v25 & 1, &qword_1F5D549D8);

  v26 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  OUTLINED_FUNCTION_36();
  v28 = *(v27 + 1696);

  v28(15);

  v29 = *(v1 + v26);

  v30 = *sub_1E3E5FDEC();
  v31 = *(*v29 + 680);
  v32 = v30;
  v31(v30);

  OUTLINED_FUNCTION_36();
  v34 = *(v33 + 1984);

  v34(1);

  OUTLINED_FUNCTION_36();
  v36 = *(v35 + 2056);

  v36(0, 0);

  OUTLINED_FUNCTION_36();
  v38 = *(v37 + 2176);

  v38(0, 0);

  OUTLINED_FUNCTION_28_80();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v39, v40, v41, v42);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3952C88();
  v168[0] = v43;
  v168[1] = v44;
  v168[2] = v45;
  v168[3] = v46;
  LOBYTE(v169) = 0;
  type metadata accessor for UIEdgeInsets();
  v48 = v47;
  v49 = sub_1E3C3DE00();
  *v162 = *v165;
  v163 = v166;
  LOBYTE(v164) = v167;
  v57 = OUTLINED_FUNCTION_3_226(v49, v50, v51, v52, v53, v54, v55, v56, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, __dst[0]);
  sub_1E3C2FCB8(v57, v58, v59, v60, v168, v162, v48, v61);
  OUTLINED_FUNCTION_19_136(v62, v63, v64, v65, v66, v67, v68, v69, v153[0], v153[1], v154, *(&v154 + 1));
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v78 = OUTLINED_FUNCTION_14_47(v70, v71, v72, v73, v74, v75, v76, v77, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, __dst[0]);
  v79(v78);

  v80 = objc_opt_self();

  v81 = [v80 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v82 + 680))();

  OUTLINED_FUNCTION_36();
  v84 = *(v83 + 1696);

  v84(19);

  OUTLINED_FUNCTION_36();
  v86 = *(v85 + 1984);

  v86(1);

  OUTLINED_FUNCTION_36();
  v88 = *(v87 + 2056);

  v88(6, 0);

  OUTLINED_FUNCTION_36();
  v90 = *(v89 + 1720);

  v90(4);

  OUTLINED_FUNCTION_28_80();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v91, v92, v93, v94);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3C3DE00();
  v95 = OUTLINED_FUNCTION_5_17();
  LOBYTE(v155) = v164;
  v103 = OUTLINED_FUNCTION_3_226(v95, v96, v97, v98, v99, v100, v101, v102, v162[0], v162[1], v163, *(&v163 + 1), v155, v156, __dst[0]);
  sub_1E3C2FCB8(v103, v104, v105, v106, v165, v153, v48, v107);
  OUTLINED_FUNCTION_19_136(v108, v109, v110, v111, v112, v113, v114, v115, v153[0], v153[1], v154, *(&v154 + 1));
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v124 = OUTLINED_FUNCTION_14_47(v116, v117, v118, v119, v120, v121, v122, v123, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, __dst[0]);
  v125(v124);

  sub_1E3952C88();
  *__dst = v126;
  v158 = v127;
  v159 = v128;
  v160 = v129;
  LOBYTE(v161) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v130, v131, v132, v133);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_17();
  *v153 = *v162;
  v154 = v163;
  LOBYTE(v155) = v164;
  sub_1E3C2FCB8(__dst, v172, v165, v171, v170, v153, v48, v173);
  OUTLINED_FUNCTION_19_136(v134, v135, v136, v137, v138, v139, v140, v141, v153[0], v153[1], v154, *(&v154 + 1));
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v150 = OUTLINED_FUNCTION_14_47(v142, v143, v144, v145, v146, v147, v148, v149, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, __dst[0]);
  v151(v150);

  return result;
}

void sub_1E3F70F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3F70FAC(0);
  }
}

void sub_1E3F70FAC(char a1)
{
  OUTLINED_FUNCTION_21();
  if ((*(v3 + 216))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    swift_unknownObjectRelease();
    v68.origin.x = v7;
    v68.origin.y = v9;
    v68.size.width = v11;
    v68.size.height = v13;
    if (CGRectGetHeight(v68) > 0.0)
    {
      v14 = [objc_opt_self() current];
      v65 = [v14 preferredContentSizeCategory];

      v15 = sub_1E4205F14();
      OUTLINED_FUNCTION_11_167(v15, v16, v17, v18, v19, v20, v21, v22, v61, v65);
      OUTLINED_FUNCTION_25_93();
      v25 = v25 && v14 == v24;
      if (!v25)
      {
        OUTLINED_FUNCTION_3_10(v23);
        OUTLINED_FUNCTION_73_1();

        if (v1)
        {
          goto LABEL_28;
        }

        v26 = sub_1E4205F14();
        OUTLINED_FUNCTION_11_167(v26, v27, v28, v29, v30, v31, v32, v33, v62, v66);
        OUTLINED_FUNCTION_25_93();
        if (!v25 || v14 != v35)
        {
          OUTLINED_FUNCTION_3_10(v34);
          OUTLINED_FUNCTION_73_1();

          if (v1)
          {
            goto LABEL_28;
          }

          v37 = sub_1E4205F14();
          OUTLINED_FUNCTION_11_167(v37, v38, v39, v40, v41, v42, v43, v44, v63, v66);
          OUTLINED_FUNCTION_25_93();
          if (!v25 || v14 != v46)
          {
            OUTLINED_FUNCTION_3_10(v45);
            OUTLINED_FUNCTION_73_1();

            if (v1)
            {
              goto LABEL_28;
            }

            v48 = sub_1E4205F14();
            OUTLINED_FUNCTION_11_167(v48, v49, v50, v51, v52, v53, v54, v55, v64, v66);
            OUTLINED_FUNCTION_25_93();
            if (!v25 || v14 != v57)
            {
              OUTLINED_FUNCTION_3_10(v56);
              OUTLINED_FUNCTION_73_1();

              if ((v1 & 1) == 0)
              {
                v59 = 0;
                v60 = 0;
LABEL_29:
                sub_1E3F72898(v59, v60);

                return;
              }

LABEL_28:
              v60 = a1 & 1;
              v59 = 1;
              goto LABEL_29;
            }
          }
        }
      }

      goto LABEL_28;
    }
  }

  sub_1E3F72898(0, 0);
}

void sub_1E3F71230()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_210();
  *(v0 + v1) = sub_1E383BCC0();
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  *(v0 + v2) = sub_1E383BCC0();
  v3 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugTextLayout;
  *(v0 + v3) = sub_1E383BCC0();
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_messageLayout;
  type metadata accessor for ViewLayout();
  *(v0 + v4) = sub_1E3C2F968();
  v5 = sub_1E3C2F968();
  OUTLINED_FUNCTION_9_166(v5);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3F71328(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v9 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugLabel];
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v157 = a2;
  sub_1E3F70450(0);
  v10 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_1E3F7042C(0);
  type metadata accessor for LayoutGrid();
  [v5 bounds];
  Width = CGRectGetWidth(v161);
  sub_1E3A2579C(Width);
  v12 = [v5 vuiTraitCollection];
  sub_1E3C2AE10();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  OUTLINED_FUNCTION_0_299();
  v20 = *(v19 + 1640);

  v20(v14, v16, v18);

  OUTLINED_FUNCTION_0_299();
  v22 = *(v21 + 1640);

  v22(v14, v16, v18);

  if (!a3)
  {
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v49 = [objc_allocWithZone(VUILocalizationManager) init];
    OUTLINED_FUNCTION_18_126("NO_CONTENT_VIEW_TITLE");

    OUTLINED_FUNCTION_0_299();
    v51 = *(v50 + 2408);

    v51(v52);

    OUTLINED_FUNCTION_12_151();
    v53 = v49;
    v54 = OUTLINED_FUNCTION_24_99();
    v58 = sub_1E3810954(v54, v55, v56, v57);
    sub_1E3F70438(v58);
    v59 = sub_1E3EA3A68();
    v60 = *v59;
    v61 = v59[1];

    sub_1E3277E60(v60, v61, a1, &v159);

    if (v160)
    {
      v69 = OUTLINED_FUNCTION_29_89(v62, v63, v64, MEMORY[0x1E69E6158], v65, v66, v67, v68);
      if (v69)
      {
        v159 = v158;
        OUTLINED_FUNCTION_13_163(v69, v70, v71);
        v72 = MEMORY[0x1E69E6158];
        if (sub_1E4207204())
        {
          v73 = [objc_allocWithZone(VUILocalizationManager) init];
          OUTLINED_FUNCTION_15_148();
          sub_1E3741090(v74 + 9, v75 | 0x8000000000000000, v73);
          v77 = v76;

          if (!v77)
          {
            goto LABEL_46;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_1E4297BE0;
          *(v78 + 56) = v72;
          *(v78 + 64) = sub_1E3283528(v78, v79, v80);
          *(v78 + 32) = v158;
          sub_1E4205F44();
        }

        else
        {

          v123 = [objc_opt_self() standardUserDefaults];
          v124 = sub_1E4205ED4();
          v77 = [v123 stringForKey_];

          if (v77)
          {
            sub_1E4205F14();
          }
        }

        OUTLINED_FUNCTION_21_6();
        v126 = *(v125 + 2408);

        v126(v127);

        OUTLINED_FUNCTION_12_151();
        v128 = v77;
        v129 = OUTLINED_FUNCTION_24_99();
        v133 = sub_1E3810954(v129, v130, v131, v132);
        sub_1E3F70444(v133);
        if ((v157 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_34:
        v134 = sub_1E3EA3A80();
        v135 = a1;
        v136 = *v134;
        v137 = v134[1];

        sub_1E3277E60(v136, v137, v135, &v159);

        if (v160)
        {
          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (OUTLINED_FUNCTION_29_89(v138, v139, v140, v138, v141, v142, v143, v144))
          {
            OUTLINED_FUNCTION_15_148();
            v147 = sub_1E39BD118(v145 + 7, v146 | 0x8000000000000000, v158);

            if (v147)
            {
              type metadata accessor for ViewModel();

              v148 = sub_1E39BED80(89, v147, a4);
              if (v148)
              {
                v149 = v148;
                type metadata accessor for QueryDescriptionBar();
                v150 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
                sub_1E3F7042C(v150);
                v151 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
                if (v151)
                {
                  v152 = *((*MEMORY[0x1E69E7D40] & *v151) + 0x100);
                  v153 = v151;

                  v152(v154);
                }

                v155 = sub_1E3D76A14(v149, 0);
                if (v155)
                {
                  type metadata accessor for QueryDescriptionBannerLayout();
                  v155 = swift_dynamicCastClass();
                  if (!v155)
                  {

                    v155 = 0;
                  }
                }

                *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout] = v155;

                sub_1E3F707AC();
              }
            }
          }
        }

        else
        {
          sub_1E329505C(&v159);
        }

        goto LABEL_30;
      }
    }

    else
    {
      sub_1E329505C(&v159);
    }

    if ((v157 & 1) == 0)
    {
LABEL_30:
      sub_1E3F70FAC(1);
      return;
    }

    goto LABEL_34;
  }

  if (a3 != 1)
  {
    v81 = objc_allocWithZone(VUILocalizationManager);
    v82 = v157;

    v83 = [v81 init];
    v84 = sub_1E3741090(0xD00000000000001BLL, 0x80000001E428AAF0, v83);
    v86 = v85;

    if (v86)
    {
      sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      OUTLINED_FUNCTION_0_299();
      v88 = *(v87 + 2408);

      v90 = v88(v89);

      v82 = v157;
      v91 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel];
      v92 = v91;
      v93 = sub_1E3810954(v84, v86, v90, v91);
      sub_1E3F70438(v93);
    }

    v94 = [objc_allocWithZone(VUILocalizationManager) init];
    v95 = sub_1E3741090(0xD00000000000001ELL, 0x80000001E428AB10, v94);
    v97 = v96;

    if (v97)
    {
      sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      OUTLINED_FUNCTION_0_299();
      v99 = *(v98 + 2408);

      v101 = v99(v100);

      OUTLINED_FUNCTION_12_151();
      v102 = v94;
      v103 = sub_1E3810954(v95, v97, v101, v94);
      sub_1E3F70444(v103);
    }

    v104 = sub_1E4205ED4();
    v105 = MGGetBoolAnswer();

    if (v82)
    {
      if (v105)
      {
        sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
        OUTLINED_FUNCTION_0_299();
        v107 = *(v106 + 2408);

        v109 = v107(v108);

        OUTLINED_FUNCTION_12_151();
        v110 = v105;
        v111 = sub_1E3810954(a1, v82, v109, v105);
        sub_1E3F70450(v111);
      }

      else
      {
        sub_1E3F72A38(a1, v82, 2);
      }
    }

    goto LABEL_30;
  }

  sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v23 = objc_allocWithZone(VUILocalizationManager);

  v24 = [v23 init];
  v25 = OUTLINED_FUNCTION_18_126("NO_CONTENT_VIEW_TITLE");
  v27 = v26;

  OUTLINED_FUNCTION_0_299();
  v29 = *(v28 + 2408);

  v31 = v29(v30);

  OUTLINED_FUNCTION_12_151();
  v32 = v24;
  v33 = sub_1E3810954(v25, v27, v31, v24);
  sub_1E3F70438(v33);
  *&v159 = a1;
  *(&v159 + 1) = v157;
  OUTLINED_FUNCTION_13_163(v34, v35, v36);
  v37 = MEMORY[0x1E69E6158];
  if (!sub_1E4207204())
  {
    sub_1E3F72A38(a1, v157, 1);
    v112 = [objc_opt_self() standardUserDefaults];
    v113 = sub_1E4205ED4();
    v114 = [v112 stringForKey_];

    if (v114)
    {
      v46 = sub_1E4205F14();
      v48 = v115;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    goto LABEL_29;
  }

  v38 = [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_15_148();
  sub_1E3741090(v39 + 2, v40 | 0x8000000000000000, v38);
  v42 = v41;

  if (v42)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1E4297BE0;
    *(v43 + 56) = v37;
    *(v43 + 64) = sub_1E3283528(v43, v44, v45);
    *(v43 + 32) = a1;
    *(v43 + 40) = v157;
    v46 = sub_1E4205F44();
    v48 = v47;

LABEL_29:
    OUTLINED_FUNCTION_21_6();
    v117 = *(v116 + 2408);

    v119 = v117(v118);

    v120 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel];
    v121 = v120;
    v122 = sub_1E3810954(v46, v48, v119, v120);
    sub_1E3F70444(v122);
    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_1E3F71F60(char a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for SearchNoContentView();
  v8 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v9, v10, v8);
  if (a1)
  {
    goto LABEL_53;
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = a2;
  v14 = a3;
  if (v12 == 1)
  {
    v15 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout;
    v14 = 0.0;
    v16 = a2;
    v17 = 0.0;
    if (*&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout])
    {
      OUTLINED_FUNCTION_8();
      v19 = *(v18 + 1880);

      v16 = v19(v20, a2);

      if (*&v4[v15] && (OUTLINED_FUNCTION_8(), v22 = *(v21 + 1856), v23 = , v22(v132, v23), v24 = *v132, v25 = *&v132[1], v26 = *&v132[2], v27 = *&v132[3], , (v133 & 1) == 0))
      {
        v17 = sub_1E3952BE0(v24, v25, v26, v27);
      }

      else
      {
        v17 = 0.0;
      }
    }

    v13 = v16 - v17;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v29 = v28;
  v130 = v30;
  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v33 isTV];
  v35 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar;
  v36 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
  v126 = v29;
  if (v36)
  {
    v37 = [v36 sizeThatFits_];
    v119 = v45.n128_u64[0];
    v53 = v46.n128_f64[0];
    if (*&v4[v35])
    {
      if (*&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout])
      {
        OUTLINED_FUNCTION_8();
        v55 = *(v54 + 152);

        v55(v134, v56);

        if ((v135 & 1) == 0)
        {
          v45.n128_u64[0] = v134[0];
          goto LABEL_17;
        }
      }

LABEL_19:
      v45.n128_u64[0] = 0;
      v128 = 0;
      if (v34)
      {
        goto LABEL_18;
      }

LABEL_20:
      v68 = a2 - OUTLINED_FUNCTION_27_88(v45, v46, v47, v48, v37, v38, v39, v40, v41, v42, v43, v44, v49, v50, v51, v52, v118, v119, v121, v123, v125, v126, v128, v130);
      if (v68 <= 400.0)
      {
        v67 = v68;
      }

      else
      {
        v67 = 400.0;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v53 = 0.0;
    v119 = 0;
  }

  OUTLINED_FUNCTION_24_1();
  v37 = (*(v57 + 216))();
  if (!v37)
  {
    goto LABEL_19;
  }

  v58 = v38;
  ObjectType = swift_getObjectType();
  v60 = (*(v58 + 8))(ObjectType, v58);
  v62 = v61;
  v123 = v32;
  v125 = *&a2;
  v64 = v63;
  v66 = v65;
  swift_unknownObjectRelease();
  v140.origin.x = v60;
  v140.origin.y = v62;
  v140.size.width = v64;
  v140.size.height = v66;
  v45.n128_f64[0] = CGRectGetHeight(v140);
LABEL_17:
  v128 = v45.n128_u64[0];
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_18:
  v67 = a2 - OUTLINED_FUNCTION_27_88(v45, v46, v47, v48, v37, v38, v39, v40, v41, v42, v43, v44, v49, v50, v51, v52, v118, v119, v121, v123, v125, v126, v128, v130);
LABEL_23:
  v69 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel;
  v70 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel];
  v71 = 0.0;
  v72 = 0.0;
  if (v70)
  {
    v73 = v70;

    sub_1E3C8B764(v74, v67, 0.0);
    v72 = v75;
  }

  v76 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel;
  v77 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel];
  if (v77)
  {
    v78 = v77;

    sub_1E3C8B764(v79, v67, 0.0);
    v71 = v80;
  }

  v131 = a3;
  OUTLINED_FUNCTION_21_6();
  v82 = *(v81 + 152);

  v82(v136, v83);

  v84 = *&v4[v76];
  v85 = 0.0;
  v86 = 0.0;
  if (v84)
  {
    if (v137)
    {
      v87 = 0.0;
    }

    else
    {
      v87 = v136[0];
    }

    v88 = *&v4[v69];
    v89 = v84;
    v90 = v88;
    sub_1E3C8B6B4(v88, v87);
    v86 = v91;
  }

  v122 = v53;
  v124 = v72;
  v92 = v53 + v72 + v71 + v86;
  v93 = [v4 vuiIsRTL];
  [v4 safeAreaInsets];
  if (v93)
  {
    v96 = v95;
  }

  else
  {
    v96 = v94;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v97 + 216))())
  {
    v99 = v98;
    v100 = swift_getObjectType();
    v85 = (*(v99 + 16))(v100, v99);
    swift_unknownObjectRelease();
  }

  v101 = v96 + a2;
  v102 = v129 + v92;
  if (![v33 isPad] || (v103 = v131 - v85, v131 - v85 >= (v102 + v131) * 0.5))
  {
    v103 = v131;
  }

  v104 = 0.5;
  if ((v103 - v102) * 0.5 > v127)
  {
    v105 = (v103 - v102) * 0.5;
  }

  else
  {
    v105 = v127;
  }

  v106 = *&v4[v35];
  if (v106)
  {
    v107 = v106;
    [v4 safeAreaInsets];
    [v107 setFrame_];

    v104 = 0.5;
    v105 = v122 + v129 + v105;
  }

  v109 = (v101 - v67) * v104;
  v110 = *&v4[v69];
  if (v110)
  {
    [v110 setFrame_];
  }

  v111 = v124 + v86 + v105;
  v112 = *&v4[v76];
  if (v112)
  {
    [v112 setFrame_];
    v111 = v71 + v111;
  }

  v113 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugLabel];
  if (v113)
  {
    OUTLINED_FUNCTION_21_6();
    v115 = *(v114 + 152);

    v116 = v113;
    v115(v138);

    v117 = v138[0];
    if (v139)
    {
      v117 = 0.0;
    }

    [v116 setFrame_];
  }

LABEL_53:
  OUTLINED_FUNCTION_6_12();
}

uint64_t sub_1E3F726A0()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate);
}

id sub_1E3F72780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchNoContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3F72898(char a1, char a2)
{
  [v2 frame];
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    (*(v18 + 88))(v19, v20);
    v15 = sel_setContentOffset_;
    v14 = 0.0;
    v16 = v2;

    goto LABEL_11;
  }

  v6 = v5 + 10.0;
  [v2 frame];
  Width = CGRectGetWidth(v22);
  OUTLINED_FUNCTION_21();
  if ((*(v8 + 80))() != Width || v9 != v6)
  {
    OUTLINED_FUNCTION_21();
    v11 = OUTLINED_FUNCTION_6_12();
    v12(v11);
    if (a2)
    {
      [v2 bounds];
      v14 = 0.0;
      if ((v6 - v13) * 0.5 >= 0.0)
      {
        v14 = (v6 - v13) * 0.5;
      }

      v15 = sel_setContentOffset_animated_;
      v16 = v2;
      v17 = 1;

LABEL_11:
      [v16 v15];
    }
  }
}

uint64_t sub_1E3F72A38(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  result = a2;
  if (a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1E3F72A68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F72AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E3F72AFC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F72BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v17 = *(v16 + 152);

  v18 = OUTLINED_FUNCTION_5_211();
  v19(v18);
  v20 = sub_1E4206B94();
  v21 = VUISignpostLogObject(v20);
  OUTLINED_FUNCTION_19_137(v21, &dword_1E323F000, v22, "NetworkLauncher.performPrewarmImageConnection");

  v23 = OUTLINED_FUNCTION_53_3();
  v24(v23);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3F72CFC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3F72DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v17 = *(v16 + 184);

  v18 = OUTLINED_FUNCTION_5_211();
  v19(v18);
  v20 = sub_1E4206B94();
  v21 = VUISignpostLogObject(v20);
  OUTLINED_FUNCTION_19_137(v21, &dword_1E323F000, v22, "NetworkLauncher.performPrewarmImageConnection");

  v23 = OUTLINED_FUNCTION_53_3();
  v24(v23);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3F72EE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F72FE4()
{
  OUTLINED_FUNCTION_4_226();
  v0 = sub_1E4206B94();
  v1 = VUISignpostLogObject(v0);
  OUTLINED_FUNCTION_9_167(v1, &dword_1E323F000, v2, "NetworkLauncher.prewarmUTSConnection");

  v3 = OUTLINED_FUNCTION_16_139();
  v4(v3);

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3F730E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F731E4()
{
  (*(v0 + 192))(*(v0 + 56), *(v0 + 32));
  OUTLINED_FUNCTION_4_226();
  v1 = sub_1E4206B94();
  v2 = VUISignpostLogObject(v1);
  OUTLINED_FUNCTION_9_167(v2, &dword_1E323F000, v3, "NetworkLauncher.prewarmUTSConnection");

  v4 = OUTLINED_FUNCTION_16_139();
  v5(v4);

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3F73300(uint64_t a1, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_39();
  v8 = *v4;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 128) = v3;

  if (v3)
  {
    v11 = sub_1E3F73648;
  }

  else
  {
    sub_1E38DCE1C(a1, a2);

    v11 = sub_1E3F7342C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

void sub_1E3F73648()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_1E324FBDC();
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v10 = v1;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v13)
  {
    v40 = v0[16];
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v18 = 136315394;
    sub_1E326D148();
    sub_1E4207944();
    v19 = OUTLINED_FUNCTION_7_202();
    v20(v19);
    v21 = OUTLINED_FUNCTION_58_1();
    v24 = sub_1E3270FC8(v21, v22, v23);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = v40;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    *v41 = v26;
    _os_log_impl(&dword_1E323F000, v11, v12, "NetworkLauncher: prewarmConnection error: url=%s error: %@", v18, 0x16u);
    sub_1E325F748(v41, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v27 = (*(v16 + 8))(v15, v17);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_7_202();
    v29(v28);
    v30 = OUTLINED_FUNCTION_58_1();
    v27 = v32(v30, v31);
  }

  v33 = OUTLINED_FUNCTION_35_72(v27);
  v34 = VUISignpostLogObject(v33);
  OUTLINED_FUNCTION_21_105(v34, &dword_1E323F000, v35, "NetworkLauncher.preConnect");

  v36 = OUTLINED_FUNCTION_7_202();
  v37(v36);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X1, X16 }
}

id sub_1E3F7394C(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_rating] = a2;
  *&v2[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_layout] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for RatingBadgeView();

  v3 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v5 setOpaque_];

  return v5;
}

double sub_1E3F73ADC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 176);

  v1(v10, v2);

  if (v11)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&v10[1] + *&v10[3] + 0.0;
  }

  sub_1E3F73EF0();
  v4 = sub_1E3F74038() * 5.0;
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1728);

  v8 = v6(v7);

  return v3 + v4 + v8 * 4.0;
}

char *sub_1E3F73C4C()
{
  v1 = *(**&v0[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_layout] + 1704);

  LOBYTE(v0) = v1(v2);

  if (!v0)
  {
    return v0;
  }

  v3 = objc_opt_self();
  v4 = sub_1E4205ED4();
  v5 = sub_1E3F73F68();
  v0 = [v3 vuiSystemImageNamed:v4 withConfiguration:v5 accessibilityDescription:0];

  return v0;
}

id sub_1E3F73D70()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_300();
  v3 = *(v2 + 1704);

  LODWORD(v3) = v3(v4);

  if (!v3)
  {
    return 0;
  }

  v5 = objc_opt_self();
  v6 = sub_1E4205ED4();
  v7 = sub_1E3F73F68();
  v8 = [v5 vuiSystemImageNamed:v6 withConfiguration:v7 accessibilityDescription:0];

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = [v8 CGImage];
  if (v10)
  {
    v11 = v10;
    if (v9 == 1)
    {
      [v8 scale];
      v13 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v11 scale:5 orientation:v12];

      return v13;
    }

    else
    {
    }
  }

  return v8;
}

double sub_1E3F73EF0()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 1704);

  LOBYTE(v1) = v1(v2);

  return dbl_1E42E0D28[v1];
}

unint64_t sub_1E3F73F68()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 1704);

  LOBYTE(v1) = v1(v2);

  result = v1;
  v4 = 14.0;
  switch(v1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      v4 = 26.0;
      goto LABEL_4;
    case 3:
    case 4:
      v4 = 32.0;
LABEL_4:
      result = [objc_opt_self() configurationWithPointSize_];
      break;
    default:
      return result;
  }

  return result;
}

double sub_1E3F74038()
{
  v0 = sub_1E3F73C4C();
  if (v0)
  {
    v1 = v0;
    [v0 size];
    v3 = v2 * sub_1E3F73EF0();
    [v1 size];
    v5 = v4;

    return v3 / v5;
  }

  else
  {

    return sub_1E3F73EF0();
  }
}

uint64_t sub_1E3F740C4()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 672);

  v3 = v1(v2);

  if (v3)
  {
    return v3;
  }

  sub_1E3755B54();
  return sub_1E4206F24();
}

void sub_1E3F74158()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 176);

  v3(v72, v4);
  v5 = *v72;
  v6 = *&v72[1];
  v7 = *&v72[2];

  if (v73)
  {
    v8 = *MEMORY[0x1E69DDCE0];
  }

  else
  {
    v8 = v5;
  }

  if (v73)
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 1728);

  v12 = v10(v11);

  v13 = [v0 effectiveUserInterfaceLayoutDirection];
  v14 = *&v0[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_rating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60, "v;\r");
  v15 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v15);
  v15[2] = 5;
  v15[3] = 2 * ((v16 - 32) / 8);
  v17 = v74;
  v18 = (v15 + 4);
  v19 = 5;
  v20 = 1;
  v21 = 5;
  if (v13 == 1)
  {
    v17 = sub_1E3F74A74(v74, v18, 5, 1, 5);
    if (v17 == 5)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (sub_1E3F749D8(v17, v18, v19, v20, v21) != 5)
  {
    goto LABEL_51;
  }

LABEL_10:
  v22 = round(v14 * 10.0) * 0.5;
  v23 = sub_1E3F73C4C();
  v71 = v15;
  if (!v23)
  {
LABEL_24:
    v45 = UIGraphicsGetCurrentContext();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1E3F740C4();
      v48 = [v47 CGColor];

      v49 = sub_1E3F740C4();
      v50 = [v49 colorWithAlphaComponent_];

      v51 = [v50 CGColor];
      if (v13 == 1)
      {
        v52 = v48;
      }

      else
      {
        v52 = v51;
      }

      if (v13 == 1)
      {
        v53 = v51;
      }

      else
      {
        v53 = v48;
      }

      v54 = v53;
      v55 = v52;
      CGContextTranslateCTM(v46, v6, v7);
      sub_1E3F74038();
      sub_1E3F73EF0();
      sub_1E3F74038();
      v75.origin.x = OUTLINED_FUNCTION_1_264();
      CGRectGetMidX(v75);
      v76.origin.x = OUTLINED_FUNCTION_1_264();
      CGRectGetMidY(v76);
      Mutable = CGPathCreateMutable();
      v74[0] = 0x3FF0000000000000;
      v74[1] = 0;
      v74[2] = 0;
      v74[3] = 0x3FF0000000000000;
      v74[4] = 0;
      v74[5] = 0;
      OUTLINED_FUNCTION_3_227();
      sub_1E42068B4();
      v57 = CGPathCreateMutable();
      OUTLINED_FUNCTION_3_227();
      sub_1E42068B4();
      v58 = v15[2];
      if (v58)
      {
        v59 = 4;
        do
        {
          v60 = v15[v59];
          v61 = v60;
          if (v22 >= v60)
          {
            CGContextAddPath(v46, Mutable);
            v65 = v48;
          }

          else
          {
            v40 = __OFSUB__(v60, 1);
            v62 = v60 - 1;
            if (v40)
            {
              goto LABEL_50;
            }

            v63 = v62;
            CGContextAddPath(v46, Mutable);
            v64 = v22 >= v61 || v22 <= v63;
            v65 = v51;
            if (!v64)
            {
              CGContextSetFillColorWithColor(v46, v54);
              CGContextDrawPath(v46, kCGPathFill);
              v65 = v55;
            }
          }

          CGContextAddPath(v46, v57);
          CGContextSetFillColorWithColor(v46, v65);
          CGContextDrawPath(v46, kCGPathFill);
          v77.origin.x = OUTLINED_FUNCTION_1_264();
          Width = CGRectGetWidth(v77);
          CGContextTranslateCTM(v46, v12 + Width, 0.0);
          ++v59;
          --v58;
          v15 = v71;
        }

        while (v58);
      }
    }

    OUTLINED_FUNCTION_4_227();

    return;
  }

  v70 = v23;
  v24 = sub_1E3F73D70();
  if (!v24)
  {

    goto LABEL_24;
  }

  v25 = v24;
  v26 = sub_1E3F740C4();
  v27 = [v70 imageWithTintColor_];

  v28 = [v27 imageWithRenderingMode_];
  v29 = [objc_opt_self() grayColor];
  v30 = [v70 imageWithTintColor_];

  v31 = [v30 imageWithRenderingMode_];
  v32 = sub_1E3F740C4();
  v33 = [v25 imageWithTintColor_];

  v34 = v15[2];
  if (!v34)
  {
LABEL_46:

    OUTLINED_FUNCTION_4_227();

    return;
  }

  v35 = v34 - 1;
  for (i = 4; ; ++i)
  {
    v37 = v71[i];
    v38 = v37;
    v39 = v28;
    if (v22 >= v37)
    {
      goto LABEL_20;
    }

    v40 = __OFSUB__(v37, 1);
    v41 = v37 - 1;
    if (v40)
    {
      break;
    }

    v39 = v31;
    if (v22 > v41)
    {
      if (v22 >= v38)
      {
        v39 = v31;
      }

      else
      {
        v39 = v33;
      }
    }

LABEL_20:
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v43 = sub_1E3F74038();
    [v42 setFrame_];
    [v1 addSubview_];
    v44 = sub_1E3F74038();

    if (!v35)
    {
      goto LABEL_46;
    }

    v6 = v6 + v12 + v44;
    --v35;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

id sub_1E3F74818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F74890(double a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1E3F748D0(void *a1, uint64_t a2, double a3)
{
  v4 = a2;
  swift_allocObject();
  return sub_1E3F7492C(a1, v4, a3);
}

uint64_t sub_1E3F7492C(void *a1, char a2, double a3)
{
  *(v3 + 98) = a2;
  *(v3 + 104) = a3;
  v5 = sub_1E3C2F9A0();

  return v5;
}

uint64_t sub_1E3F74998()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0x4020000000000000;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3F749A8()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E3F749D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F74A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    v5 = 1;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v5;
    return a3;
  }

  v5 = a3 == 0;
  if (!a3)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  v5 = 1;
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      v5 = 0;
      v7 = a4;
      a3 = v6;
      goto LABEL_16;
    }

    if (v5)
    {
      break;
    }

    if (v7 == a4)
    {
      goto LABEL_18;
    }

    if (v7 <= a4)
    {
      goto LABEL_19;
    }

    --v7;
LABEL_12:
    v5 = 0;
    *(a2 + 8 * v6++) = v7;
    if (v8 == a3)
    {
      goto LABEL_16;
    }
  }

  v7 = a5;
  if (a5 >= a4)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1E3F74B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D300;
  if (!qword_1ECF3D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RatingBadgeViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

double sub_1E3F74CB0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_301(a1);
  *(v1 + 296) = a1;

  return result;
}

void sub_1E3F74CE8()
{
  v1 = sub_1E39611B8();
  v2 = (*(*v0 + 672))(v1);
  v9[3] = &type metadata for ViewModelKeys;
  v9[4] = &off_1F5D7BCA8;
  LOBYTE(v9[0]) = 26;
  sub_1E3F9F164(v9, v2, MEMORY[0x1E69E7CA0] + 8);

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_1(v9);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    sub_1E329505C(v10);
  }

  v3 = sub_1E4205CB4();
LABEL_7:
  v4 = type metadata accessor for ViewModel();
  v5 = sub_1E3DD5014(13, v3, v0, v4);

  if (!v5)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!sub_1E32AE9B0(v5))
  {

    goto LABEL_14;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, v5);
    goto LABEL_12;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);

LABEL_12:

LABEL_15:
    OUTLINED_FUNCTION_0_301(v6);
    v0[37] = v7;

    return;
  }

  __break(1u);
}

uint64_t sub_1E3F74F98(uint64_t a1)
{
  v1 = sub_1E3961F54(a1);

  return MEMORY[0x1EEE6BDC0](v1, 304, 7);
}

uint64_t sub_1E3F75004()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3F750C4()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3F75118();
  v2 = sub_1E3F75004();
  sub_1E3C37CBC(v2, 59);

  return v1;
}

double sub_1E3F75118()
{
  v25[0] = sub_1E3952C10(40.0, 32.0);
  v25[1] = v0;
  v25[2] = v1;
  v25[3] = v2;
  LOBYTE(v25[4]) = 0;
  v44 = sub_1E3952C10(64.0, 64.0);
  v45 = v3;
  v46 = v4;
  v47 = v5;
  v48 = 0;
  v39 = sub_1E3952C10(30.0, 10.0);
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v43 = 0;
  type metadata accessor for UIEdgeInsets();
  v10 = v9;
  sub_1E3C2FC98();
  v35[0] = v37[0];
  v35[1] = v37[1];
  v36 = v38;
  sub_1E3C3DE00();
  v30[0] = v32;
  v30[1] = v33;
  v31 = v34;
  sub_1E3C3DE00();
  v26[0] = v28[0];
  v26[1] = v28[1];
  v27 = v29;
  sub_1E3C2FCB8(v25, v35, v30, &v44, &v39, v26, v10, __src);
  memcpy(v25, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 1600);
  v12(v25, 1, v13 & 1, v10);
  v25[0] = 0x4030000000000000;
  LOBYTE(v25[1]) = 0;
  v44 = 32.0;
  LOBYTE(v45) = 0;
  v39 = 48.0;
  LOBYTE(v40) = 0;
  *&v37[0] = 0x4030000000000000;
  BYTE8(v37[0]) = 0;
  v14 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_228();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_2_225();
  sub_1E3C2FCB8(v15, v16, &v44, &v39, v37, v28, v14, v17);
  memcpy(v25, __src, 0x59uLL);
  v18 = OUTLINED_FUNCTION_18();
  v12(v25, 10, v18 & 1, v14);
  v25[0] = 0x4059000000000000;
  LOBYTE(v25[1]) = 0;
  v44 = 128.0;
  LOBYTE(v45) = 0;
  v39 = 60.0;
  LOBYTE(v40) = 0;
  *&v37[0] = 0x4050000000000000;
  BYTE8(v37[0]) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_228();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_2_225();
  sub_1E3C2FCB8(v19, v20, v28, &v44, &v39, v37, v14, v21);
  memcpy(v25, __src, 0x59uLL);
  v22 = OUTLINED_FUNCTION_18();
  v12(v25, 8, v22 & 1, v14);
  OUTLINED_FUNCTION_36();
  (*(v23 + 800))(1);
  return sub_1E3F753F8();
}

double sub_1E3F753F8()
{
  sub_1E3F75004();
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 752))();

  v4 = *(**(v0 + 104) + 208);

  v4(0, 1);

  OUTLINED_FUNCTION_0_302();
  v6 = *(v5 + 256);

  v6(0, 1);

  OUTLINED_FUNCTION_0_302();
  v8 = *(v7 + 2048);

  v8(v9);

  OUTLINED_FUNCTION_3_11();
  (*(v10 + 2056))(1, 0);

  OUTLINED_FUNCTION_0_302();
  v12 = *(v11 + 2048);

  v12(v13);

  OUTLINED_FUNCTION_3_11();
  (*(v14 + 464))(1);

  OUTLINED_FUNCTION_3_11();
  v16 = *(v15 + 2048);

  v16(v17);

  __dst[0] = sub_1E3952C40();
  __dst[1] = v18;
  __dst[2] = v19;
  __dst[3] = v20;
  LOBYTE(__dst[4]) = 0;
  v61[0] = sub_1E3952C40();
  v61[1] = v21;
  v61[2] = v22;
  v61[3] = v23;
  v62 = 0;
  type metadata accessor for UIEdgeInsets();
  v25 = v24;
  sub_1E3C2FC98();
  v57[0] = v59[0];
  v57[1] = v59[1];
  v58 = v60;
  sub_1E3C3DE00();
  v53[0] = v55[0];
  v53[1] = v55[1];
  v54 = v56;
  sub_1E3C3DE00();
  v49[0] = v51[0];
  v49[1] = v51[1];
  v50 = v52;
  sub_1E3C3DE00();
  v45[0] = v47[0];
  v45[1] = v47[1];
  v46 = v48;
  sub_1E3C2FCB8(__dst, v57, v53, v49, v61, v45, v25, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v26 + 1600))(__dst, 1, v27 & 1, v25);

  OUTLINED_FUNCTION_3_11();
  v29 = *(v28 + 2048);

  v29(v30);

  LOBYTE(__dst[0]) = 7;
  sub_1E3C2FC98();
  LOBYTE(v59[0]) = v61[0];
  sub_1E3C3DE00();
  LOBYTE(v55[0]) = v57[0];
  sub_1E3C3DE00();
  LOBYTE(v51[0]) = v53[0];
  sub_1E3C3DE00();
  LOBYTE(v47[0]) = v49[0];
  sub_1E3C3DE00();
  v43 = v45[0];
  sub_1E3C2FCB8(__dst, v59, v55, v51, v47, &v43, &qword_1F5D549D8, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v31 + 1600))(__dst, 48, v32 & 1, &qword_1F5D549D8);

  OUTLINED_FUNCTION_0_302();
  v34 = *(v33 + 2048);

  v34(v35);

  v36 = [v1 whiteColor];
  OUTLINED_FUNCTION_3_11();
  (*(v37 + 680))();

  OUTLINED_FUNCTION_0_302();
  v39 = *(v38 + 2048);

  v41 = v39(v40);

  (*(*v41 + 872))([v1 lightGrayColor]);

  return result;
}

uint64_t sub_1E3F75A84()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28C878);
  __swift_project_value_buffer(v0, qword_1EE28C878);
  return sub_1E41FFCA4();
}

id VUITimeMetadataFactory.makeViewController(playbackInfo:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C68, &qword_1E42B9900);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32C70, &unk_1E42B9908);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  sub_1E41FEE84();
  OUTLINED_FUNCTION_0_10();
  v40 = v10;
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E41FEE64();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_MergedGlobals_256 != -1)
  {
    swift_once();
  }

  v18 = sub_1E41FFCB4();
  __swift_project_value_buffer(v18, qword_1EE28C878);
  v19 = a1;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1E323F000, v20, v21, "Make timed metadata view controller from playbackInfo: %@", v22, 0xCu);
    sub_1E3A66B00(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for VUITimerBasedMetadataVendor(0);
  swift_allocObject();
  v25 = sub_1E3F7612C();
  v26 = [v19 programId];
  sub_1E4205F14();

  sub_1E3AF4040(v19);
  [v19 featureStartTime];
  sub_1E3AF40A4(v19);
  sub_1E41FEE54();
  [v19 currentTime];
  v27 = [v19 timeStamp];
  sub_1E41FE584();

  v28 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v28);
  [v19 playbackRate];
  v29 = [v19 audioLanguage];
  sub_1E4205F14();

  sub_1E41FEE74();
  v31 = v38;
  v30 = v39;
  (*(v14 + 16))(v39, v17, v38);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);

  sub_1E41FF194();
  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v40 + 16))(v42, v12, v41);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  sub_1E41FEE94();

  type metadata accessor for TimedMetadataViewController(0);
  v35 = sub_1E3AEEED4(1, v25);
  (*(v33 + 8))(v12, v32);
  (*(v14 + 8))(v17, v31);
  return v35;
}

uint64_t type metadata accessor for VUITimerBasedMetadataVendor(uint64_t a1)
{
  result = qword_1EE294180;
  if (!qword_1EE294180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F7612C()
{
  sub_1E41FFCA4();
  v0 = sub_1E41FF1B4();
  sub_1E3F76678();
  swift_retain_n();
  sub_1E41FEEA4();

  return v0;
}

uint64_t sub_1E3F761BC()
{
  v1 = qword_1EE294190;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3F76218()
{
  v0 = sub_1E328740C();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();

  v3 = sub_1E41FF1D4();
  v4 = qword_1EE294190;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v5 + 8))(v3 + v4);
  return v3;
}

uint64_t sub_1E3F762CC()
{
  v0 = sub_1E3F76218();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3F76320(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = MEMORY[0x1E69E6158];
      v9 = a1;
      v10 = a2;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v17[2] = 0;
    }

    v17[0] = v9;
    v17[1] = v10;
    v17[3] = v8;

    v11 = sub_1E3294FA4(v17);
    v13 = sub_1E3270FC8(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1E323F000, v4, v5, "Saved Songs playlist was fetched. Playlist ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  if (a2)
  {
    v14 = sub_1E328740C();
    v15 = *((*MEMORY[0x1E69E7D40] & **v14) + 0xF0);
    v16 = *v14;
    v15(a1, a2);
  }
}

uint64_t sub_1E3F764F8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3F76580;

  return sub_1E3DBD324();
}

uint64_t sub_1E3F76580()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

unint64_t sub_1E3F76678()
{
  result = qword_1ECF3D308;
  if (!qword_1ECF3D308)
  {
    type metadata accessor for VUITimerBasedMetadataVendor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D308);
  }

  return result;
}

uint64_t sub_1E3F766D0(uint64_t a1)
{
  result = sub_1E41FFCB4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3F76770()
{
  OUTLINED_FUNCTION_31_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0, &unk_1E42AE170);
  OUTLINED_FUNCTION_0_10();
  v46 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v50 = v45 - v4;
  OUTLINED_FUNCTION_222();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_45();
  v7 = (*(v6 + 440))();
  if (!sub_1E374E8E4(v7, 1))
  {
LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_16_89();
  v9 = (*(v8 + 256))();
  v52 = MEMORY[0x1E69E7CC0];
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_7_20();
  v12 = (*(v11 + 736))();
  v13 = sub_1E32AE9B0(v12);
  if (!v13)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_18:
    if (v27 >> 62)
    {
LABEL_42:
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      OUTLINED_FUNCTION_19_3();
      v28 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v28 = v27;
    }

    sub_1E3F81310(v28, 0, v9);

    v29 = j__OUTLINED_FUNCTION_51_1();
    sub_1E4084434(0, v29 & 1);
    sub_1E3F76DEC();
    OUTLINED_FUNCTION_39();
    v55 = (*((*&v5->Flags & v30) + 0x290))();
    v56 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
    sub_1E328FCF4(&qword_1EE279310, &qword_1ECF2F1F0, &qword_1E42AE160);
    sub_1E4206194();
    v32 = sub_1E3280A90(255, &qword_1EE23B250, 0x1E69DD258);
    v5 = &protocol descriptor for TemplateReparentable;
    v48 = v32;
    while (1)
    {
      v52 = MEMORY[0x1E69E6158];
      v53 = v32;
      v54 = MEMORY[0x1E69E6168];
      swift_getOpaqueTypeConformance2();
      sub_1E4207174();
      v9 = v56;
      if (!v56)
      {
        break;
      }

      v33 = v57;
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v51 = v33;
        v35 = [v34 viewControllers];
        OUTLINED_FUNCTION_106();
        swift_checkMetadataState();
        OUTLINED_FUNCTION_20_2();
        v36 = sub_1E42062B4();

        if (v36 >> 62)
        {
          v37 = sub_1E4207384();
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        for (i = 0; ; ++i)
        {
          if (v37 == i)
          {

            v32 = v48;
            v33 = v51;
            goto LABEL_36;
          }

          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x1E6911E60](i, v36);
          }

          else
          {
            if (i >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v39 = *(v36 + 8 * i + 32);
          }

          v40 = v39;
          if (__OFADD__(i, 1))
          {
            break;
          }

          ObjectType = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v40, ObjectType, &protocol descriptor for TemplateReparentable))
          {
            v43 = v42;
            v44 = swift_getObjectType();
            (*(v43 + 64))(1, v44, v43);
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_36:
    }

    (*(v46 + 8))(v50, v49);
    goto LABEL_39;
  }

  v14 = v13;
  if (v13 >= 1)
  {
    v45[0] = v9;
    v45[1] = v1;
    v45[2] = v0;
    v15 = 0;
    OUTLINED_FUNCTION_7_20();
    v16 += 82;
    v51 = *v16;
    v48 = v16;
    v47 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E6911E60](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v20 = *&v17[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v19 = *&v17[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v51(v21);
      OUTLINED_FUNCTION_134_2();
      v55 = v20;
      v56 = v19;
      v22 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      sub_1E3CA4D00(&v55, v10, v5, MEMORY[0x1E69E6158], v22, MEMORY[0x1E69E6168]);

      v23 = v58;
      if (v58)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_20_2();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v5 = v24;
          v25 = v23;
          MEMORY[0x1E6910BF0]();
          v26 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
          {
            OUTLINED_FUNCTION_35(v26);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v47 = v52;
          goto LABEL_15;
        }
      }

LABEL_15:
      if (v14 == ++v15)
      {

        v5 = MEMORY[0x1E69E7D40];
        v9 = v45[0];
        v27 = v47;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}