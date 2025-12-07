uint64_t sub_25C80514C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C8056FC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_25C80537C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C805278(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ODCurareDataBoundary(0);
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25C8060EC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_25C80560C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C80537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_25C807804();
      v25 = sub_25C82E05C();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C80560C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v13 = v6;
    while (1)
    {

      v9 = sub_25C82DF5C();

      if ((v9 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 = v13 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *v6;
      *v6 = v6[1];
      v6[1] = v10;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C8056FC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v118 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v118 - v16;
  result = MEMORY[0x28223BE20](v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_25C807028(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_25C806738(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_25C807028(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_25C806F9C(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = MEMORY[0x277D84F90];
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_25C807804();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = sub_25C82E05C();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = sub_25C82E05C() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_25C7E6F4C((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_25C806738(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_25C807028(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_25C806F9C(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_25C807804();
    v107 = sub_25C82E05C();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_25C8060EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_25C807028(v8);
      v8 = result;
    }

    v75 = v5;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v5 = v76 - 1;
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_25C806CC8((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v75)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C807028(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_25C806F9C(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v81 = v5;
      v5 = 8 * v9;
      v10 = *a3 + 8 * v9 + 16;

      v11 = v9;
      v12 = sub_25C82DF5C();

      v83 = v11;
      v13 = v11 + 2;
      while (v6 != v13)
      {

        v14 = sub_25C82DF5C() & 1;

        ++v13;
        v10 += 8;
        if ((v12 & 1) != v14)
        {
          v6 = v13 - 1;
          break;
        }
      }

      if (v12)
      {
        v9 = v83;
        if (v6 < v83)
        {
          goto LABEL_118;
        }

        if (v83 < v6)
        {
          v15 = 8 * v6 - 8;
          v16 = v6;
          v17 = v83;
          do
          {
            if (v17 != --v16)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v19 + v5);
              *(v19 + v5) = *(v19 + v15);
              *(v19 + v15) = v18;
            }

            ++v17;
            v15 -= 8;
            v5 += 8;
          }

          while (v17 < v16);
        }

        v7 = v6;
        v5 = v81;
      }

      else
      {
        v7 = v6;
        v5 = v81;
        v9 = v83;
      }
    }

    v20 = a3[1];
    if (v7 < v20)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < a4)
      {
        v21 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v21 >= v20)
        {
          v21 = a3[1];
        }

        if (v21 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v21)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C7E6F4C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v30 = *(v8 + 2);
    v29 = *(v8 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_25C7E6F4C((v29 > 1), v30 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v31;
    v32 = &v8[16 * v30];
    *(v32 + 4) = v9;
    *(v32 + 5) = v7;
    v33 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v8 + 4);
          v36 = *(v8 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_57:
          if (v38)
          {
            goto LABEL_105;
          }

          v51 = &v8[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_108;
          }

          v57 = &v8[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_112;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v61 = &v8[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_71:
        if (v56)
        {
          goto LABEL_107;
        }

        v64 = &v8[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_110;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_78:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v72 + 32];
        v6 = *&v8[16 * v34 + 40];
        sub_25C806CC8((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v34 + 32]), (*a3 + 8 * v6), v33);
        if (v5)
        {
        }

        if (v6 < v73)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C807028(v8);
        }

        if (v72 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v74 = &v8[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v6;
        result = sub_25C806F9C(v34);
        v31 = *(v8 + 2);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v8[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_103;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_104;
      }

      v46 = &v8[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_106;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_109;
      }

      if (v50 >= v42)
      {
        v68 = &v8[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v82 = v5;
  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
  v85 = v21;
LABEL_30:
  v86 = v7;
  v25 = v24;
  v6 = v23;
  while (1)
  {

    v26 = sub_25C82DF5C();

    if ((v26 & 1) == 0)
    {
LABEL_29:
      v7 = v86 + 1;
      v23 += 8;
      --v24;
      if (v86 + 1 != v85)
      {
        goto LABEL_30;
      }

      v7 = v85;
      v5 = v82;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = *v6;
    *v6 = *(v6 + 8);
    *(v6 + 8) = v27;
    v6 -= 8;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_25C806738(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_25C82DFBC();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_25C807804();
          LOBYTE(v37) = sub_25C82E05C();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_25C807804();
        v24 = sub_25C82E05C();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_25C80703C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_25C806CC8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
      v6 = a2;
    }

    v15 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v20 = v7;
      goto LABEL_38;
    }

    while (1)
    {
      v16 = v6;

      v17 = sub_25C82DF5C();

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v16;
      v6 = v16 + 8;
      if (v7 != v16)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 8;
      if (v4 >= v15 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_38;
      }
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 8;
    v6 = v16;
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_15:
    *v7 = *v18;
    goto LABEL_16;
  }

  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
    v6 = a2;
  }

  v15 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
    v20 = v6;
  }

  else
  {
    v29 = v4;
    do
    {
      v28 = v6;
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v15;
      while (1)
      {
        v24 = v5 + 8;
        v23 -= 8;
        v25 = v22;

        v26 = sub_25C82DF5C();

        if (v26)
        {
          break;
        }

        if (v24 != v15)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v15 = v23;
        v22 = v25;
        if (v23 <= v29)
        {
          v15 = v23;
          v20 = v28;
          v4 = v29;
          goto LABEL_38;
        }
      }

      if (v24 != v28)
      {
        *v5 = *v25;
      }

      if (v15 <= v29)
      {
        break;
      }

      v6 = v25;
    }

    while (v25 > v7);
    v20 = v25;
    v4 = v29;
  }

LABEL_38:
  if (v20 != v4 || v20 >= &v4[(v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v20, v4, 8 * ((v15 - v4) / 8));
  }

  return 1;
}

uint64_t sub_25C806F9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25C807028(v3);
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

uint64_t sub_25C80703C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25C82DFBC();
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

uint64_t sub_25C807148(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_25C807248(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_25C82E43C();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_25C8040F4(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25C8072E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25C82E43C();
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
      result = sub_25C82E43C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25C80785C(&qword_27FC162B0, &qword_27FC162A8, &unk_25C830950);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A8, &unk_25C830950);
            v9 = sub_25C807614(v13, i, a3);
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
        sub_25C7E96B8(0, &qword_27FC16218, off_2799B97D0);
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

uint64_t sub_25C807484(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25C82E43C();
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
      result = sub_25C82E43C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25C80785C(&qword_27FC16260, &qword_27FC16258, &qword_25C8308D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16258, &qword_25C8308D0);
            v9 = sub_25C80769C(v13, i, a3);
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
        type metadata accessor for ODCurareDataBoundary(0);
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

void (*sub_25C807614(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F88F6D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25C807694;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25C80769C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F88F6D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_25C80771C;
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C807804()
{
  result = qword_27FC16288;
  if (!qword_27FC16288)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16288);
  }

  return result;
}

uint64_t sub_25C80785C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25C8078B4(int a1, int a2, id a3)
{
  v4 = [a3 data];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25C82DF0C();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v10 = sub_25C82DEEC();
    v11 = [v9 initWithData_];

    sub_25C808E3C(v6, v8);
    v12 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    sub_25C82E35C();
    *(inited + 96) = sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90);
    *(inited + 72) = v11;
    v15 = v11;
    v16 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v13 + 32) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v17 = sub_25C82E1BC();

    v18 = sub_25C82DF4C();
    sub_25C82DE8C();
    v19 = sub_25C82E07C();

    [v12 saveDictionaries:v17 date:v18 eventIdentifier:v19];

    sub_25C827FD8(v12, *(v3 + 24));
  }

  else
  {
    __break(1u);
  }
}

id sub_25C807AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v53 = a3;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v46 - v8;
  v60 = sub_25C82DEAC();
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (!result)
  {
    return result;
  }

  v12 = result;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v13 = sub_25C82E1DC();

  if (v13 >> 62)
  {
LABEL_35:
    v14 = sub_25C82E43C();
    if (v14)
    {
      goto LABEL_4;
    }
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
  }

LABEL_4:
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v49 = v13 + 32;
  v50 = v13 & 0xFFFFFFFFFFFFFF8;
  v55 = (v9 + 16);
  v56 = "leSystemMetadataStore";
  v51 = v13;
  v52 = (v9 + 8);
  v17 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
  v47 = v14;
  v48 = v4;
  v46 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v16)
    {
      v19 = MEMORY[0x25F88F6D0](v15, v13);
    }

    else
    {
      if (v15 >= *(v50 + 16))
      {
        __break(1u);
LABEL_39:
        swift_once();
        goto LABEL_28;
      }

      v19 = *(v49 + 8 * v15);
    }

    v18 = v19;
    v20 = __OFADD__(v15, 1);
    v15 = (v15 + 1);
    if (v20)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = [v19 v17[77]];
    if (v21)
    {
      break;
    }

LABEL_6:

    if (v15 == v14)
    {
    }
  }

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v4 = sub_25C82E1DC();

  v54 = v18;
  v9 = [v18 identifier];
  sub_25C82E0AC();

  sub_25C82DE0C();

  v23 = sub_25C812AA0(v4);

  v57 = *(v23 + 16);
  if (!v57)
  {
LABEL_5:
    (*v52)(v61, v60);

    v14 = v47;
    v4 = v48;
    v18 = v54;
    v13 = v51;
    v16 = v46;
    v17 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
    goto LABEL_6;
  }

  v24 = 0;
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v25 = *(v23 + 8 * v24 + 32);
    if (!*(v25 + 16))
    {
      break;
    }

    v26 = sub_25C8139BC(0xD000000000000017, v56 | 0x8000000000000000);
    if ((v27 & 1) == 0)
    {

      break;
    }

    sub_25C7E9854(*(v25 + 56) + 32 * v26, v63);

    sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v13 = a2;
    v9 = v64;
    v28 = MEMORY[0x25F88F1F0](v64);
    v30 = v29;
    v31 = objc_allocWithZone(ODCurareReportFillerMetadata);
    v32 = sub_25C82DEEC();
    sub_25C808E3C(v28, v30);
    v33 = [v31 initWithData_];

    if (!v33)
    {

      v43 = sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v44 = qword_281559838;
      sub_25C82E00C(v43, &dword_25C7D2000, v44, "Failed to convert NSData version of summary back to the PET proto object.", 73, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      v41 = swift_allocError();
      *v45 = 17;
      swift_willThrow();

      v15 = v53;
      v4 = v54;
      goto LABEL_32;
    }

    v34 = *(v59 + 48);
    v35 = v62;
    (*v55)(v62, v61, v60);
    *(v35 + v34) = v33;
    a2 = v13;
    v4 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_25C7E72A4(0, v4[2] + 1, 1, v4);
      *v13 = v4;
    }

    v38 = v4[2];
    v37 = v4[3];
    if (v38 >= v37 >> 1)
    {
      *v13 = sub_25C7E72A4((v37 > 1), v38 + 1, 1, v4);
    }

    ++v24;

    v39 = *v13;
    v39[2] = v38 + 1;
    sub_25C7E9274(v62, v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v38, &qword_27FC16090, qword_25C8304A0);
    if (v57 == v24)
    {
      goto LABEL_5;
    }
  }

  v13 = sub_25C82E27C();
  v15 = v53;
  v4 = v54;
  if (qword_2815594B8 != -1)
  {
    goto LABEL_39;
  }

LABEL_28:
  v40 = qword_281559838;
  sub_25C82E00C(v13, &dword_25C7D2000, v40, "Metadata was unable to be cast as NSData", 40, 2, MEMORY[0x277D84F90]);

  sub_25C7E7DEC();
  v41 = swift_allocError();
  *v42 = 17;
  swift_willThrow();
LABEL_32:

  result = (*v52)(v61, v60);
  *v15 = v41;
  return result;
}

void sub_25C8081D4(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v70 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v65 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v65 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v65 - v20;
  v22 = *(v11 + 56);
  v23 = a1;
  v22(a1, 1, 1, v10);
  v83[0] = MEMORY[0x277D84F90];
  v24 = objc_autoreleasePoolPush();
  v25 = v82;
  sub_25C807AF8(v81, v83, &v84);
  if (v25)
  {
    objc_autoreleasePoolPop(v24);

    sub_25C7E97F4(v23, &qword_27FC16088, &qword_25C830498);
    return;
  }

  v73 = v16;
  v74 = v11;
  v81 = v21;
  v72 = v19;
  v65[0] = v22;
  v65[1] = v11 + 56;
  v66 = v23;
  v67 = 0;
  objc_autoreleasePoolPop(v24);
  v26 = *(v83[0] + 16);

  v78 = v26;
  if (v26)
  {
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    v71 = "evaluateWithModel:]";
    v30 = v76;
    v32 = v72;
    v31 = v73;
    v33 = v81;
    v34 = v74;
    v77 = v27;
    while (v28 < *(v27 + 16))
    {
      v82 = v29;
      v80 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v79 = *(v34 + 72);
      sub_25C7E92DC(v27 + v80 + v79 * v28, v33, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v33, v32, &qword_27FC16090, qword_25C8304A0);
      v35 = *(v32 + *(v10 + 48));
      v36 = [v35 date];

      if (v36)
      {
        v37 = v10;
        sub_25C82E0AC();

        v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v39 = sub_25C82E07C();
        [v38 setDateFormat_];

        v40 = sub_25C82E07C();
        v41 = [v38 dateFromString_];

        if (v41)
        {
          v42 = v75;
          sub_25C82DF8C();

          v43 = 0;
          v38 = v41;
        }

        else
        {
          v43 = 1;
          v42 = v75;
        }

        v29 = v82;

        v45 = sub_25C82DFBC();
        (*(*(v45 - 8) + 56))(v42, v43, 1, v45);
        v46 = v42;
        v30 = v76;
        sub_25C7E9274(v46, v76, &qword_27FC16048, qword_25C8309D0);
        v10 = v37;
        v31 = v73;
        v34 = v74;
        v32 = v72;
      }

      else
      {
        v44 = sub_25C82DFBC();
        (*(*(v44 - 8) + 56))(v30, 1, 1, v44);
        v29 = v82;
      }

      v47 = sub_25C82DEAC();
      (*(*(v47 - 8) + 8))(v32, v47);
      v48 = sub_25C82DFBC();
      v49 = (*(*(v48 - 8) + 48))(v30, 1, v48);
      v33 = v81;
      if (v49 == 1)
      {
        sub_25C7E97F4(v81, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E97F4(v30, &qword_27FC16048, qword_25C8309D0);
      }

      else
      {
        sub_25C7E97F4(v30, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v33, v31, &qword_27FC16090, qword_25C8304A0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25C814068(0, v29[2] + 1, 1);
          v29 = v83[0];
        }

        v52 = v29[2];
        v51 = v29[3];
        if (v52 >= v51 >> 1)
        {
          sub_25C814068((v51 > 1), v52 + 1, 1);
          v29 = v83[0];
        }

        v29[2] = v52 + 1;
        sub_25C7E9274(v31, v29 + v80 + v52 * v79, &qword_27FC16090, qword_25C8304A0);
        v33 = v81;
      }

      ++v28;
      v27 = v77;
      if (v78 == v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    v29 = sub_25C7E9700(v29);
    goto LABEL_23;
  }

  v29 = MEMORY[0x277D84F90];
  v34 = v74;
LABEL_21:
  swift_bridgeObjectRelease_n();
  if (!v29[2])
  {

    v30 = v66;
    v31 = v70;
    goto LABEL_26;
  }

  v53 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v66;
  v31 = v70;
  if ((v53 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  v54 = v69;
  v55 = v29[2];
  v56 = v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v83[0] = v56;
  v83[1] = v55;
  v57 = v67;
  sub_25C808E90(v83);
  v67 = v57;
  if (!v29[2])
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_28;
  }

  v58 = v56;
  v59 = v68;
  sub_25C7E92DC(v58, v68, &qword_27FC16090, qword_25C8304A0);
  sub_25C7E97F4(v30, &qword_27FC16088, &qword_25C830498);

  v60 = *(v10 + 48);
  v61 = *(v59 + v60);
  v62 = sub_25C82DEAC();
  (*(*(v62 - 8) + 32))(v54, v59, v62);
  *(v54 + v60) = v61;
  (v65[0])(v54, 0, 1, v10);
  sub_25C7E9274(v54, v30, &qword_27FC16088, &qword_25C830498);
LABEL_26:
  sub_25C7E92DC(v30, v31, &qword_27FC16088, &qword_25C830498);
  v63 = (*(v34 + 48))(v31, 1, v10);
  sub_25C7E97F4(v31, &qword_27FC16088, &qword_25C830498);
  if (v63 != 1)
  {
    return;
  }

  v56 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v64 = qword_281559838;
  sub_25C82E00C(v56, &dword_25C7D2000, v64, "Failed to find any metadata in stream.", 38, 2, MEMORY[0x277D84F90]);
}

uint64_t sub_25C808AB4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v4 = MEMORY[0x28223BE20](v3);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v35 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  sub_25C7E92DC(a1, v7, &qword_27FC16090, qword_25C8304A0);
  v13 = *&v7[*(v3 + 48)];
  v14 = [v13 date];

  if (v14)
  {
    sub_25C82E0AC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_25C82B668(v16, v12);

  v17 = sub_25C82DEAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v32[2] = v18 + 8;
  v33 = v19;
  v19(v7, v17);
  v20 = sub_25C82DFBC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  result = v22(v12, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v36;
    sub_25C7E92DC(v34, v36, &qword_27FC16090, qword_25C8304A0);
    v25 = *(v24 + *(v3 + 48));
    v26 = [v25 date];

    if (v26)
    {
      sub_25C82E0AC();
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v35;
    sub_25C82B668(v28, v35);

    v33(v36, v17);
    result = v22(v29, 1, v20);
    if (result != 1)
    {
      v30 = sub_25C82DF5C();
      v31 = *(v21 + 8);
      v31(v29, v20);
      v31(v12, v20);
      return v30 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C808E3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25C808E90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C809808(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_25C808FD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C808FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v71 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v18 = MEMORY[0x28223BE20](v93);
  v83 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v71 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v96 = &v71 - v26;
  result = MEMORY[0x28223BE20](v25);
  v91 = &v71 - v29;
  v73 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v28 + 72);
    v87 = "evaluateWithModel:]";
    v32 = v30 + v31 * (a3 - 1);
    v81 = -v31;
    v82 = v30;
    v33 = a1 - a3;
    v72 = v31;
    v34 = v30 + v31 * a3;
    v88 = v17;
    v78 = v13;
    v84 = v24;
LABEL_5:
    v77 = a3;
    v74 = v34;
    v94 = v32;
    v95 = v34;
    v75 = v33;
    v76 = v32;
    while (1)
    {
      v89 = v33;
      v35 = v91;
      sub_25C7E92DC(v95, v91, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v94, v96, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E92DC(v35, v24, &qword_27FC16090, qword_25C8304A0);
      v36 = *&v24[*(v93 + 48)];
      v37 = [v36 date];

      if (v37)
      {
        sub_25C82E0AC();

        v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v39 = sub_25C82E07C();
        [v38 setDateFormat_];

        v40 = sub_25C82E07C();
        v41 = [v38 dateFromString_];

        if (v41)
        {
          v42 = v80;
          sub_25C82DF8C();

          v43 = 0;
          v38 = v41;
        }

        else
        {
          v43 = 1;
          v42 = v80;
        }

        v45 = sub_25C82DFBC();
        (*(*(v45 - 8) + 56))(v42, v43, 1, v45);
        v17 = v88;
        sub_25C7E9274(v42, v88, &qword_27FC16048, qword_25C8309D0);
      }

      else
      {
        v44 = sub_25C82DFBC();
        (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
      }

      v46 = sub_25C82DEAC();
      v47 = *(v46 - 8);
      v48 = *(v47 + 8);
      v90 = v47 + 8;
      v48(v24, v46);
      v49 = sub_25C82DFBC();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      result = v51(v17, 1, v49);
      if (result == 1)
      {
        break;
      }

      v52 = v92;
      sub_25C7E92DC(v96, v92, &qword_27FC16090, qword_25C8304A0);
      v53 = *(v52 + *(v93 + 48));
      v54 = [v53 date];

      if (v54)
      {
        v86 = v48;
        sub_25C82E0AC();
        v56 = v55;

        v57 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v58 = sub_25C82E07C();
        [v57 setDateFormat_];

        v85 = v56;
        v59 = sub_25C82E07C();
        v60 = [v57 dateFromString_];

        if (v60)
        {
          v61 = v79;
          sub_25C82DF8C();

          v62 = 0;
          v57 = v60;
        }

        else
        {
          v62 = 1;
          v61 = v79;
        }

        v17 = v88;

        (*(v50 + 56))(v61, v62, 1, v49);
        v13 = v78;
        sub_25C7E9274(v61, v78, &qword_27FC16048, qword_25C8309D0);

        v48 = v86;
      }

      else
      {
        (*(v50 + 56))(v13, 1, 1, v49);
        v17 = v88;
      }

      v48(v92, v46);
      result = v51(v13, 1, v49);
      if (result == 1)
      {
        goto LABEL_26;
      }

      v63 = sub_25C82DF5C();
      v64 = *(v50 + 8);
      v64(v13, v49);
      v64(v17, v49);
      sub_25C7E97F4(v96, &qword_27FC16090, qword_25C8304A0);
      result = sub_25C7E97F4(v91, &qword_27FC16090, qword_25C8304A0);
      v24 = v84;
      v65 = v89;
      if (v63)
      {
        if (!v82)
        {
          goto LABEL_27;
        }

        v66 = v95;
        v67 = v83;
        sub_25C7E9274(v95, v83, &qword_27FC16090, qword_25C8304A0);
        v68 = v13;
        v69 = v94;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_25C7E9274(v67, v69, &qword_27FC16090, qword_25C8304A0);
        v94 = v69 + v81;
        v13 = v68;
        v95 = v66 + v81;
        v70 = __CFADD__(v65, 1);
        v33 = v65 + 1;
        if (!v70)
        {
          continue;
        }
      }

      a3 = v77 + 1;
      v32 = v76 + v72;
      v33 = v75 - 1;
      v34 = v74 + v72;
      if (v77 + 1 == v73)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_25C809808(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v209 = a4;
  v208 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v206 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v206 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v206 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v214 = &v206 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v220 = &v206 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v206 - v23;
  MEMORY[0x28223BE20](v22);
  v225 = &v206 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v221 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v212 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v233 = &v206 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v246 = &v206 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v247 = &v206 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v248 = &v206 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v245 = &v206 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v224 = &v206 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v226 = &v206 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v229 = &v206 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v223 = &v206 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  result = MEMORY[0x28223BE20](v46);
  v222 = a3;
  if (a3[1] >= 1)
  {
    v50 = a3[1];
    v206 = &v206 - v48;
    v207 = v49;
    v51 = 0;
    v52 = MEMORY[0x277D84F90];
    v237 = v17;
    v238 = "evaluateWithModel:]";
    v230 = v8;
    v234 = v11;
    v235 = v14;
    v239 = v25;
    while (1)
    {
      v53 = v51 + 1;
      v213 = v52;
      v210 = v51;
      if (v51 + 1 >= v50)
      {
        v65 = v51 + 1;
        v103 = v209;
        v58 = qword_25C8304A0;
        goto LABEL_38;
      }

      v227 = v50;
      v54 = v51;
      v55 = *v222;
      v56 = *(v221 + 72);
      v244 = (*v222 + v56 * v53);
      v57 = v206;
      v58 = qword_25C8304A0;
      sub_25C7E92DC(v244, v206, &qword_27FC16090, qword_25C8304A0);
      v59 = v55 + v56 * v54;
      v60 = v207;
      sub_25C7E92DC(v59, v207, &qword_27FC16090, qword_25C8304A0);
      v61 = v228;
      LODWORD(v231) = sub_25C808AB4(v57, v60);
      v228 = v61;
      if (v61)
      {
        break;
      }

      sub_25C7E97F4(v60, &qword_27FC16090, qword_25C8304A0);
      sub_25C7E97F4(v57, &qword_27FC16090, qword_25C8304A0);
      v62 = v210 + 2;
      result = v55 + v56 * (v210 + 2);
      v63 = v56;
      v236 = v56;
      v64 = v244;
      do
      {
        v65 = v227;
        if (v227 == v62)
        {
          goto LABEL_24;
        }

        v240 = result;
        v241 = v62;
        v66 = v223;
        sub_25C7E92DC(result, v223, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E92DC(v64, v229, &qword_27FC16090, qword_25C8304A0);
        v67 = v66;
        v68 = v226;
        sub_25C7E92DC(v67, v226, &qword_27FC16090, qword_25C8304A0);
        v69 = *(v68 + *(v25 + 48));
        v70 = [v69 date];

        v244 = v64;
        if (v70)
        {
          sub_25C82E0AC();

          v71 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v72 = sub_25C82E07C();
          [v71 setDateFormat_];

          v73 = sub_25C82E07C();
          v74 = [v71 dateFromString_];

          if (v74)
          {
            v75 = v215;
            sub_25C82DF8C();

            v76 = 0;
            v71 = v74;
          }

          else
          {
            v76 = 1;
            v75 = v215;
          }

          v79 = sub_25C82DFBC();
          (*(*(v79 - 8) + 56))(v75, v76, 1, v79);
          v78 = v225;
          sub_25C7E9274(v75, v225, &qword_27FC16048, qword_25C8309D0);

          v25 = v239;
        }

        else
        {
          v77 = sub_25C82DFBC();
          v78 = v225;
          (*(*(v77 - 8) + 56))(v225, 1, 1, v77);
        }

        v80 = sub_25C82DEAC();
        v81 = *(v80 - 8);
        v82 = *(v81 + 8);
        v242 = v81 + 8;
        v243 = v82;
        v82(v226, v80);
        v83 = sub_25C82DFBC();
        v84 = *(v83 - 8);
        v85 = *(v84 + 48);
        result = v85(v78, 1, v83);
        if (result == 1)
        {
          goto LABEL_164;
        }

        v86 = v224;
        sub_25C7E92DC(v229, v224, &qword_27FC16090, qword_25C8304A0);
        v87 = *(v86 + *(v25 + 48));
        v88 = [v87 date];

        if (v88)
        {
          sub_25C82E0AC();
          v90 = v89;

          v91 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v92 = sub_25C82E07C();
          [v91 setDateFormat_];

          v232 = v90;
          v93 = sub_25C82E07C();
          v94 = [v91 dateFromString_];

          if (v94)
          {
            v95 = v214;
            sub_25C82DF8C();

            v96 = 0;
            v91 = v94;
          }

          else
          {
            v96 = 1;
            v95 = v214;
          }

          (*(v84 + 56))(v95, v96, 1, v83);
          v97 = v220;
          sub_25C7E9274(v95, v220, &qword_27FC16048, qword_25C8309D0);

          v17 = v237;
          v25 = v239;
        }

        else
        {
          v97 = v220;
          (*(v84 + 56))(v220, 1, 1, v83);
        }

        v243(v224, v80);
        result = v85(v97, 1, v83);
        if (result == 1)
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v98 = v225;
        v99 = sub_25C82DF5C();
        v100 = v97;
        v101 = v99 & 1;
        v102 = *(v84 + 8);
        v102(v100, v83);
        v102(v98, v83);
        v58 = qword_25C8304A0;
        sub_25C7E97F4(v229, &qword_27FC16090, qword_25C8304A0);
        sub_25C7E97F4(v223, &qword_27FC16090, qword_25C8304A0);
        v62 = v241 + 1;
        v14 = v235;
        v63 = v236;
        result = v240 + v236;
        v64 = &v244[v236];
      }

      while ((v231 & 1) == v101);
      v65 = v241;
LABEL_24:
      v103 = v209;
      v51 = v210;
      if (v231)
      {
        if (v65 >= v210)
        {
          if (v210 < v65)
          {
            v104 = v63 * (v65 - 1);
            v105 = v65 * v63;
            v227 = v65;
            v106 = v210;
            v107 = v210 * v63;
            do
            {
              if (v106 != --v65)
              {
                v108 = *v222;
                if (!*v222)
                {
                  goto LABEL_167;
                }

                sub_25C7E9274(v108 + v107, v212, &qword_27FC16090, qword_25C8304A0);
                if (v107 < v104 || v108 + v107 >= (v108 + v105))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v107 != v104)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_25C7E9274(v212, v108 + v104, &qword_27FC16090, qword_25C8304A0);
                v103 = v209;
                v51 = v210;
                v63 = v236;
              }

              ++v106;
              v104 -= v63;
              v105 -= v63;
              v107 += v63;
            }

            while (v106 < v65);
            v25 = v239;
            v58 = qword_25C8304A0;
            v65 = v227;
          }

          goto LABEL_38;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        result = sub_25C807028(v58);
        goto LABEL_127;
      }

LABEL_38:
      v109 = v222[1];
      if (v65 < v109)
      {
        if (__OFSUB__(v65, v51))
        {
          goto LABEL_156;
        }

        if (v65 - v51 < v103)
        {
          if (__OFADD__(v51, v103))
          {
            goto LABEL_157;
          }

          if (v51 + v103 < v109)
          {
            v109 = v51 + v103;
          }

          if (v109 < v51)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          if (v65 != v109)
          {
            v216 = v109;
            v110 = *v222;
            v111 = *(v221 + 72);
            v112 = *v222 + v111 * (v65 - 1);
            v231 = -v111;
            v232 = v110;
            v113 = v51 - v65;
            v211 = v111;
            v114 = v110 + v65 * v111;
            do
            {
              v227 = v65;
              v217 = v114;
              v218 = v113;
              v115 = v113;
              v219 = v112;
              while (1)
              {
                v241 = v114;
                v242 = v115;
                v116 = v245;
                sub_25C7E92DC(v114, v245, &qword_27FC16090, qword_25C8304A0);
                sub_25C7E92DC(v112, v248, &qword_27FC16090, qword_25C8304A0);
                v117 = v116;
                v118 = v247;
                sub_25C7E92DC(v117, v247, &qword_27FC16090, qword_25C8304A0);
                v119 = *(v118 + *(v25 + 48));
                v120 = [v119 date];

                v240 = v112;
                if (v120)
                {
                  sub_25C82E0AC();

                  v121 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
                  v122 = sub_25C82E07C();
                  [v121 setDateFormat_];

                  v123 = sub_25C82E07C();
                  v124 = [v121 dateFromString_];

                  if (v124)
                  {
                    sub_25C82DF8C();

                    v125 = 0;
                    v121 = v124;
                  }

                  else
                  {
                    v125 = 1;
                  }

                  v127 = sub_25C82DFBC();
                  (*(*(v127 - 8) + 56))(v14, v125, 1, v127);
                  v17 = v237;
                  sub_25C7E9274(v14, v237, &qword_27FC16048, qword_25C8309D0);

                  v25 = v239;
                }

                else
                {
                  v126 = sub_25C82DFBC();
                  (*(*(v126 - 8) + 56))(v17, 1, 1, v126);
                }

                v128 = sub_25C82DEAC();
                v129 = *(v128 - 8);
                v130 = *(v129 + 8);
                v131 = (v129 + 8);
                v130(v247, v128);
                v132 = sub_25C82DFBC();
                v133 = *(v132 - 8);
                v134 = *(v133 + 48);
                result = v134(v17, 1, v132);
                if (result == 1)
                {
                  goto LABEL_162;
                }

                v243 = v131;
                v244 = v130;
                v135 = v246;
                sub_25C7E92DC(v248, v246, &qword_27FC16090, qword_25C8304A0);
                v136 = *(v135 + *(v25 + 48));
                v137 = [v136 date];

                if (v137)
                {
                  sub_25C82E0AC();
                  v139 = v138;

                  v140 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
                  v141 = sub_25C82E07C();
                  [v140 setDateFormat_];

                  v236 = v139;
                  v142 = sub_25C82E07C();
                  v143 = [v140 dateFromString_];

                  if (v143)
                  {
                    v144 = v230;
                    sub_25C82DF8C();

                    v145 = 0;
                    v140 = v143;
                  }

                  else
                  {
                    v145 = 1;
                    v144 = v230;
                  }

                  (*(v133 + 56))(v144, v145, 1, v132);
                  v146 = v234;
                  sub_25C7E9274(v144, v234, &qword_27FC16048, qword_25C8309D0);

                  v17 = v237;
                  v25 = v239;
                }

                else
                {
                  v146 = v234;
                  (*(v133 + 56))(v234, 1, 1, v132);
                }

                (v244)(v246, v128);
                result = v134(v146, 1, v132);
                if (result == 1)
                {
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
                  goto LABEL_165;
                }

                v147 = sub_25C82DF5C();
                v148 = *(v133 + 8);
                v148(v146, v132);
                v148(v17, v132);
                v58 = qword_25C8304A0;
                sub_25C7E97F4(v248, &qword_27FC16090, qword_25C8304A0);
                result = sub_25C7E97F4(v245, &qword_27FC16090, qword_25C8304A0);
                if ((v147 & 1) == 0)
                {
                  break;
                }

                v14 = v235;
                v149 = v242;
                if (!v232)
                {
                  goto LABEL_163;
                }

                v150 = v241;
                v151 = v233;
                sub_25C7E9274(v241, v233, &qword_27FC16090, qword_25C8304A0);
                v152 = v240;
                swift_arrayInitWithTakeFrontToBack();
                sub_25C7E9274(v151, v152, &qword_27FC16090, qword_25C8304A0);
                v112 = v152 + v231;
                v114 = v150 + v231;
                v153 = __CFADD__(v149, 1);
                v115 = v149 + 1;
                if (v153)
                {
                  goto LABEL_48;
                }
              }

              v14 = v235;
LABEL_48:
              v65 = v227 + 1;
              v112 = v219 + v211;
              v113 = v218 - 1;
              v114 = v217 + v211;
            }

            while (v227 + 1 != v216);
            v51 = v210;
            v65 = v216;
          }
        }
      }

      if (v65 < v51)
      {
        goto LABEL_155;
      }

      v216 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v52 = v213;
      }

      else
      {
        result = sub_25C7E6F4C(0, *(v213 + 2) + 1, 1, v213);
        v52 = result;
      }

      v155 = *(v52 + 2);
      v154 = *(v52 + 3);
      v58 = v155 + 1;
      if (v155 >= v154 >> 1)
      {
        result = sub_25C7E6F4C((v154 > 1), v155 + 1, 1, v52);
        v52 = result;
      }

      *(v52 + 2) = v58;
      v156 = &v52[16 * v155];
      v157 = v216;
      *(v156 + 4) = v51;
      *(v156 + 5) = v157;
      v51 = *v208;
      if (!*v208)
      {
        goto LABEL_169;
      }

      if (v155)
      {
        while (1)
        {
          v158 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v159 = *(v52 + 4);
            v160 = *(v52 + 5);
            v169 = __OFSUB__(v160, v159);
            v161 = v160 - v159;
            v162 = v169;
LABEL_90:
            if (v162)
            {
              goto LABEL_144;
            }

            v175 = &v52[16 * v58];
            v177 = *v175;
            v176 = *(v175 + 1);
            v178 = __OFSUB__(v176, v177);
            v179 = v176 - v177;
            v180 = v178;
            if (v178)
            {
              goto LABEL_147;
            }

            v181 = &v52[16 * v158 + 32];
            v183 = *v181;
            v182 = *(v181 + 1);
            v169 = __OFSUB__(v182, v183);
            v184 = v182 - v183;
            if (v169)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v179, v184))
            {
              goto LABEL_151;
            }

            if (v179 + v184 >= v161)
            {
              if (v161 < v184)
              {
                v158 = v58 - 2;
              }

              goto LABEL_111;
            }

            goto LABEL_104;
          }

          v185 = &v52[16 * v58];
          v187 = *v185;
          v186 = *(v185 + 1);
          v169 = __OFSUB__(v186, v187);
          v179 = v186 - v187;
          v180 = v169;
LABEL_104:
          if (v180)
          {
            goto LABEL_146;
          }

          v188 = &v52[16 * v158];
          v190 = *(v188 + 4);
          v189 = *(v188 + 5);
          v169 = __OFSUB__(v189, v190);
          v191 = v189 - v190;
          if (v169)
          {
            goto LABEL_149;
          }

          if (v191 < v179)
          {
            goto LABEL_3;
          }

LABEL_111:
          v196 = v158 - 1;
          if (v158 - 1 >= v58)
          {
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
            goto LABEL_158;
          }

          if (!*v222)
          {
            goto LABEL_166;
          }

          v197 = v52;
          v58 = *&v52[16 * v196 + 32];
          v198 = *&v52[16 * v158 + 40];
          v199 = v228;
          sub_25C80AE1C(*v222 + *(v221 + 72) * v58, *v222 + *(v221 + 72) * *&v52[16 * v158 + 32], (*v222 + *(v221 + 72) * v198), v51);
          v228 = v199;
          if (v199)
          {
          }

          if (v198 < v58)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v197 = sub_25C807028(v197);
          }

          if (v196 >= *(v197 + 2))
          {
            goto LABEL_141;
          }

          v200 = &v197[16 * v196];
          *(v200 + 4) = v58;
          *(v200 + 5) = v198;
          v249 = v197;
          result = sub_25C806F9C(v158);
          v52 = v249;
          v58 = *(v249 + 16);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v163 = &v52[16 * v58 + 32];
        v164 = *(v163 - 64);
        v165 = *(v163 - 56);
        v169 = __OFSUB__(v165, v164);
        v166 = v165 - v164;
        if (v169)
        {
          goto LABEL_142;
        }

        v168 = *(v163 - 48);
        v167 = *(v163 - 40);
        v169 = __OFSUB__(v167, v168);
        v161 = v167 - v168;
        v162 = v169;
        if (v169)
        {
          goto LABEL_143;
        }

        v170 = &v52[16 * v58];
        v172 = *v170;
        v171 = *(v170 + 1);
        v169 = __OFSUB__(v171, v172);
        v173 = v171 - v172;
        if (v169)
        {
          goto LABEL_145;
        }

        v169 = __OFADD__(v161, v173);
        v174 = v161 + v173;
        if (v169)
        {
          goto LABEL_148;
        }

        if (v174 >= v166)
        {
          v192 = &v52[16 * v158 + 32];
          v194 = *v192;
          v193 = *(v192 + 1);
          v169 = __OFSUB__(v193, v194);
          v195 = v193 - v194;
          if (v169)
          {
            goto LABEL_152;
          }

          if (v161 < v195)
          {
            v158 = v58 - 2;
          }

          goto LABEL_111;
        }

        goto LABEL_90;
      }

LABEL_3:
      v50 = v222[1];
      v51 = v216;
      if (v216 >= v50)
      {
        goto LABEL_124;
      }
    }

    sub_25C7E97F4(v60, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E97F4(v57, &qword_27FC16090, qword_25C8304A0);
  }

  v52 = MEMORY[0x277D84F90];
LABEL_124:
  v51 = *v208;
  if (*v208)
  {
    v58 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    result = v58;
LABEL_127:
    v249 = result;
    v58 = *(result + 16);
    if (v58 < 2)
    {
    }

    while (*v222)
    {
      v201 = *(result + 16 * v58);
      v202 = result;
      v203 = *(result + 16 * (v58 - 1) + 40);
      v204 = v228;
      sub_25C80AE1C(*v222 + *(v221 + 72) * v201, *v222 + *(v221 + 72) * *(result + 16 * (v58 - 1) + 32), (*v222 + *(v221 + 72) * v203), v51);
      v228 = v204;
      if (v204)
      {
      }

      if (v203 < v201)
      {
        goto LABEL_153;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = sub_25C807028(v202);
      }

      if (v58 - 2 >= *(v202 + 2))
      {
        goto LABEL_154;
      }

      v205 = &v202[16 * v58];
      *v205 = v201;
      *(v205 + 1) = v203;
      v249 = v202;
      sub_25C806F9C(v58 - 1);
      result = v249;
      v58 = *(v249 + 16);
      if (v58 <= 1)
      {
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C80AE1C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v130 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v133 = &v130 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v130 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v130 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v140 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v136 = &v130 - v24;
  MEMORY[0x28223BE20](v23);
  v143 = &v130 - v25;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v26 = MEMORY[0x28223BE20](v153);
  v142 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v130 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v146 = (&v130 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v141 = &v130 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v148 = &v130 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v149 = &v130 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v152 = &v130 - v40;
  result = MEMORY[0x28223BE20](v39);
  v147 = &v130 - v42;
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (a2 - a1 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_89;
  }

  v45 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_90;
  }

  v46 = (a2 - a1) / v44;
  v156 = a1;
  v155 = a4;
  if (v46 >= v45 / v44)
  {
    v49 = v45 / v44 * v44;
    if (a4 < a2 || a2 + v49 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v49 < 1)
    {
      v89 = a4 + v49;
    }

    else
    {
      v86 = -v44;
      v138 = "evaluateWithModel:]";
      v87 = a4 + v49;
      v144 = a1;
      v132 = v11;
      v139 = v14;
      v88 = v145;
      v89 = a4 + v49;
      v90 = a3;
      v150 = a4;
      v134 = v30;
      v152 = v86;
      do
      {
        v131 = v89;
        v91 = a2;
        a2 += v86;
        v151 = a2;
        v136 = v91;
        while (1)
        {
          if (v91 <= a1)
          {
            v156 = v91;
            v154 = v131;
            goto LABEL_87;
          }

          v143 = v90;
          v147 = v87;
          v140 = v87 + v86;
          v92 = v141;
          sub_25C7E92DC(v87 + v86, v141, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E92DC(a2, v146, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E92DC(v92, v30, &qword_27FC16090, qword_25C8304A0);
          v93 = *&v30[*(v153 + 48)];
          v94 = [v93 date];

          v135 = v89;
          if (v94)
          {
            sub_25C82E0AC();

            v95 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
            v96 = sub_25C82E07C();
            [v95 setDateFormat_];

            v97 = sub_25C82E07C();
            v98 = [v95 dateFromString_];

            if (v98)
            {
              v99 = v133;
              sub_25C82DF8C();

              v100 = 0;
              v95 = v98;
            }

            else
            {
              v100 = 1;
              v99 = v133;
            }

            v88 = v145;

            v102 = sub_25C82DFBC();
            (*(*(v102 - 8) + 56))(v99, v100, 1, v102);
            sub_25C7E9274(v99, v88, &qword_27FC16048, qword_25C8309D0);

            v14 = v139;
          }

          else
          {
            v101 = sub_25C82DFBC();
            (*(*(v101 - 8) + 56))(v88, 1, 1, v101);
          }

          v103 = sub_25C82DEAC();
          v104 = *(v103 - 8);
          v105 = *(v104 + 8);
          v148 = v104 + 8;
          v149 = v105;
          (v105)(v30, v103);
          v106 = sub_25C82DFBC();
          v107 = *(v106 - 8);
          v108 = *(v107 + 48);
          result = v108(v88, 1, v106);
          if (result == 1)
          {
            goto LABEL_93;
          }

          v109 = v142;
          sub_25C7E92DC(v146, v142, &qword_27FC16090, qword_25C8304A0);
          v110 = *&v109[*(v153 + 48)];
          v111 = [v110 date];

          if (v111)
          {
            sub_25C82E0AC();
            v113 = v112;

            v114 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
            v115 = sub_25C82E07C();
            [v114 setDateFormat_];

            v137 = v113;
            v116 = sub_25C82E07C();
            v117 = [v114 dateFromString_];

            if (v117)
            {
              v118 = v132;
              sub_25C82DF8C();

              v119 = 0;
              v114 = v117;
            }

            else
            {
              v119 = 1;
              v118 = v132;
            }

            (*(v107 + 56))(v118, v119, 1, v106);
            v14 = v139;
            sub_25C7E9274(v118, v139, &qword_27FC16048, qword_25C8309D0);
          }

          else
          {
            (*(v107 + 56))(v14, 1, 1, v106);
          }

          (v149)(v142, v103);
          result = v108(v14, 1, v106);
          if (result == 1)
          {
            goto LABEL_94;
          }

          v120 = v14;
          v121 = v143;
          v122 = &v143[v152];
          v123 = v145;
          v124 = sub_25C82DF5C();
          v125 = *(v107 + 8);
          v126 = v120;
          v125(v120, v106);
          v125(v123, v106);
          sub_25C7E97F4(v146, &qword_27FC16090, qword_25C8304A0);
          sub_25C7E97F4(v141, &qword_27FC16090, qword_25C8304A0);
          a1 = v144;
          v127 = v150;
          a2 = v151;
          if (v124)
          {
            break;
          }

          v128 = v140;
          v89 = v140;
          v30 = v134;
          v90 = v122;
          if (v121 < v147 || v122 >= v147)
          {
            swift_arrayInitWithTakeFrontToBack();
            v90 = v122;
            v14 = v126;
          }

          else
          {
            v129 = v121 == v147;
            v14 = v126;
            if (!v129)
            {
              swift_arrayInitWithTakeBackToFront();
              v90 = v122;
            }
          }

          v87 = v89;
          v86 = v152;
          v91 = v136;
          v88 = v145;
          if (v128 <= v127)
          {
            a2 = v136;
            goto LABEL_86;
          }
        }

        v30 = v134;
        v90 = v122;
        if (v121 < v136 || v122 >= v136)
        {
          swift_arrayInitWithTakeFrontToBack();
          v90 = v122;
          v89 = v135;
          v14 = v126;
        }

        else
        {
          v129 = v121 == v136;
          v89 = v135;
          v14 = v126;
          if (!v129)
          {
            swift_arrayInitWithTakeBackToFront();
            v90 = v122;
          }
        }

        v87 = v147;
        v86 = v152;
        v88 = v145;
      }

      while (v147 > v127);
    }

LABEL_86:
    v156 = a2;
    v154 = v89;
    goto LABEL_87;
  }

  v47 = v46 * v44;
  if (a4 < a1 || a1 + v47 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v48 = v143;
  }

  else
  {
    v48 = v143;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v139 = a4 + v47;
  v154 = a4 + v47;
  if (v47 < 1 || a2 >= a3)
  {
LABEL_87:
    sub_25C807134(&v156, &v155, &v154);
    return 1;
  }

  v142 = "evaluateWithModel:]";
  v137 = v44;
  v138 = a3;
  while (1)
  {
    v51 = v147;
    sub_25C7E92DC(a2, v147, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E92DC(a4, v152, &qword_27FC16090, qword_25C8304A0);
    v52 = v51;
    v53 = v149;
    sub_25C7E92DC(v52, v149, &qword_27FC16090, qword_25C8304A0);
    v54 = *&v53[*(v153 + 48)];
    v55 = [v54 date];

    v150 = a4;
    v151 = a2;
    if (v55)
    {
      sub_25C82E0AC();

      v56 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v57 = sub_25C82E07C();
      [v56 setDateFormat_];

      v58 = sub_25C82E07C();
      v59 = [v56 dateFromString_];

      if (v59)
      {
        v60 = v136;
        sub_25C82DF8C();

        v61 = 0;
        v56 = v59;
      }

      else
      {
        v61 = 1;
        v60 = v136;
      }

      v63 = sub_25C82DFBC();
      (*(*(v63 - 8) + 56))(v60, v61, 1, v63);
      v48 = v143;
      sub_25C7E9274(v60, v143, &qword_27FC16048, qword_25C8309D0);
    }

    else
    {
      v62 = sub_25C82DFBC();
      (*(*(v62 - 8) + 56))(v48, 1, 1, v62);
    }

    v64 = sub_25C82DEAC();
    v65 = *(v64 - 8);
    v66 = *(v65 + 8);
    v145 = (v65 + 8);
    v146 = v66;
    (v66)(v149, v64);
    v67 = sub_25C82DFBC();
    v68 = *(v67 - 8);
    v69 = *(v68 + 48);
    result = v69(v48, 1, v67);
    if (result == 1)
    {
      break;
    }

    v70 = v148;
    sub_25C7E92DC(v152, v148, &qword_27FC16090, qword_25C8304A0);
    v71 = *(v70 + *(v153 + 48));
    v72 = [v71 date];

    if (v72)
    {
      v144 = a1;
      sub_25C82E0AC();
      v74 = v73;

      v75 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v76 = sub_25C82E07C();
      [v75 setDateFormat_];

      v141 = v74;
      v77 = sub_25C82E07C();
      v78 = [v75 dateFromString_];

      if (v78)
      {
        v79 = v135;
        sub_25C82DF8C();

        v80 = 0;
        v75 = v78;
      }

      else
      {
        v80 = 1;
        v79 = v135;
      }

      v48 = v143;

      (*(v68 + 56))(v79, v80, 1, v67);
      v81 = v140;
      sub_25C7E9274(v79, v140, &qword_27FC16048, qword_25C8309D0);

      a1 = v144;
    }

    else
    {
      v81 = v140;
      (*(v68 + 56))(v140, 1, 1, v67);
      v48 = v143;
    }

    (v146)(v148, v64);
    result = v69(v81, 1, v67);
    if (result == 1)
    {
      goto LABEL_92;
    }

    v82 = sub_25C82DF5C();
    v83 = *(v68 + 8);
    v83(v81, v67);
    v83(v48, v67);
    sub_25C7E97F4(v152, &qword_27FC16090, qword_25C8304A0);
    sub_25C7E97F4(v147, &qword_27FC16090, qword_25C8304A0);
    v85 = v137;
    v84 = v138;
    if (v82)
    {
      a4 = v150;
      a2 = v151 + v137;
      if (a1 < v151 || a1 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v151)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    else
    {
      a2 = v151;
      a4 = v150 + v137;
      if (a1 < v150 || a1 >= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v150)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v155 = a4;
    }

    a1 += v85;
    v156 = a1;
    if (a4 >= v139 || a2 >= v84)
    {
      goto LABEL_87;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

void sub_25C80BEA0(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25C7E98B0();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_25C80C658(v4);
  *a1 = v2;
}

uint64_t sub_25C80BF18(unint64_t a1, void *a2, id a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v45 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    v12 = sub_25C82E43C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v11;
  if (!v12)
  {
    v24 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v13 = 0;
  v43 = a1 & 0xFFFFFFFFFFFFFF8;
  v44 = a1 & 0xC000000000000001;
  v42 = v9;
  do
  {
    if (v44)
    {
      v14 = MEMORY[0x25F88F6D0](v13, a1);
    }

    else
    {
      if (v13 >= *(v43 + 16))
      {
        goto LABEL_44;
      }

      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    v9 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = [v14 modelName];
    if (!v16)
    {

      goto LABEL_6;
    }

    v17 = a1;
    v18 = a3;
    v19 = v16;
    v20 = sub_25C82E0AC();
    v22 = v21;

    a3 = v18;
    v23 = v20 == a2 && v22 == v18;
    if (v23)
    {
    }

    else
    {
      v11 = sub_25C82E4EC();

      if ((v11 & 1) == 0)
      {

        a1 = v17;
        goto LABEL_6;
      }
    }

    sub_25C82E3DC();
    v11 = *(v45 + 16);
    sub_25C82E3FC();
    sub_25C82E40C();
    sub_25C82E3EC();
    a1 = v17;
LABEL_6:
    ++v13;
    v23 = v9 == v12;
    v9 = v42;
  }

  while (!v23);
  v24 = v45;
  v45 = MEMORY[0x277D84F90];
  if (v24 < 0)
  {
LABEL_48:
    v11 = sub_25C82E43C();
    v25 = v41;
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_26:
    v26 = 0;
    v43 = v11;
    v44 = v24 & 0xC000000000000001;
    v42 = "evaluateWithModel:]";
    while (2)
    {
      if (v44)
      {
        v28 = MEMORY[0x25F88F6D0](v26, v24);
      }

      else
      {
        if (v26 >= *(v24 + 16))
        {
          goto LABEL_46;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      a2 = v28;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_45;
      }

      v30 = [v28 evaluationDate];
      if (v30)
      {
        v31 = v30;
        sub_25C82E0AC();

        v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v33 = sub_25C82E07C();
        [v32 setDateFormat_];

        v34 = sub_25C82E07C();
        a3 = [v32 dateFromString_];

        if (a3)
        {
          sub_25C82DF8C();

          v35 = 0;
          v32 = a3;
        }

        else
        {
          v35 = 1;
        }

        v36 = sub_25C82DFBC();
        v37 = *(v36 - 8);
        (*(v37 + 56))(v9, v35, 1, v36);
        v25 = v41;
        sub_25C80E758(v9, v41);
        v38 = *(v37 + 48);
        a1 = v37 + 48;
        if (v38(v25, 1, v36) == 1)
        {

          v11 = v43;
LABEL_28:
          sub_25C80E6F0(v25);
        }

        else
        {
          sub_25C80E6F0(v25);
          a1 = &v45;
          sub_25C82E3DC();
          sub_25C82E3FC();
          sub_25C82E40C();
          sub_25C82E3EC();
          v11 = v43;
        }

        ++v26;
        if (v29 == v11)
        {
          v39 = v45;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    v27 = sub_25C82DFBC();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    goto LABEL_28;
  }

LABEL_24:
  if ((v24 & 0x4000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v11 = *(v24 + 16);
  v25 = v41;
  if (v11)
  {
    goto LABEL_26;
  }

LABEL_49:
  v39 = MEMORY[0x277D84F90];
LABEL_50:

  v45 = v39;
  sub_25C80BEA0(&v45);
  return v45;
}

uint64_t sub_25C80C424(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *a1;
  v11 = *a2;
  v12 = [v10 evaluationDate];
  if (v12)
  {
    v13 = v12;
    sub_25C82E0AC();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_25C82B668(v15, v9);

  v16 = sub_25C82DFBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  result = v18(v9, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = [v11 evaluationDate];
    if (v20)
    {
      v21 = v20;
      sub_25C82E0AC();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    sub_25C82B668(v23, v7);

    result = v18(v7, 1, v16);
    if (result != 1)
    {
      v24 = sub_25C82DF6C();
      v25 = *(v17 + 8);
      v25(v7, v16);
      v25(v9, v16);
      return v24 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_25C80C658(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_25C82E4CC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C80E7C8();
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25C80CC9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_25C80C75C(0, v2, 1, a1);
  }
}

void sub_25C80C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v72 = &v57 - v18;
  v58 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v71 = "evaluateWithModel:]";
    v63 = v14;
    v64 = v19;
    v20 = (v19 + 8 * a3 - 8);
    v21 = a1 - a3;
    v62 = v17;
LABEL_5:
    v60 = v20;
    v61 = a3;
    v22 = *(v64 + 8 * a3);
    v59 = v21;
    v23 = v21;
    while (1)
    {
      v24 = *v20;
      v25 = v22;
      v73 = v24;
      v26 = [v25 evaluationDate];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v68 = v25;
      v69 = v23;
      sub_25C82E0AC();

      v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v29 = sub_25C82E07C();
      [v28 setDateFormat_];

      v30 = sub_25C82E07C();
      v31 = [v28 dateFromString_];

      if (v31)
      {
        sub_25C82DF8C();

        v32 = 0;
        v28 = v31;
      }

      else
      {
        v32 = 1;
      }

      v33 = sub_25C82DFBC();
      v34 = *(v33 - 8);
      v35 = v34;
      v36 = *(v34 + 56);
      v70 = v34 + 56;
      v36(v17, v32, 1, v33);
      v37 = v72;
      sub_25C80E758(v17, v72);

      v38 = *(v35 + 48);
      if (v38(v37, 1, v33) == 1)
      {
        goto LABEL_24;
      }

      v39 = [v73 evaluationDate];
      if (!v39)
      {
        v36(v63, 1, 1, v33);
LABEL_22:
        __break(1u);
        break;
      }

      v40 = v39;
      v65 = v20;
      v67 = v36;
      sub_25C82E0AC();
      v42 = v41;

      v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v44 = sub_25C82E07C();
      [v43 setDateFormat_];

      v66 = v42;
      v45 = sub_25C82E07C();
      v46 = [v43 dateFromString_];

      if (v46)
      {
        sub_25C82DF8C();

        v47 = 0;
        v43 = v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = v65;

      v67(v11, v47, 1, v33);
      v49 = v63;
      sub_25C80E758(v11, v63);

      if (v38(v49, 1, v33) == 1)
      {
        goto LABEL_22;
      }

      v50 = v72;
      v51 = sub_25C82DF6C();
      v52 = *(v35 + 8);
      v52(v49, v33);
      v52(v50, v33);

      v17 = v62;
      v53 = v69;
      if (v51)
      {
        if (!v64)
        {
          goto LABEL_25;
        }

        v54 = *v48;
        v22 = v48[1];
        *v48 = v22;
        v48[1] = v54;
        v20 = v48 - 1;
        v55 = __CFADD__(v53, 1);
        v23 = v53 + 1;
        if (!v55)
        {
          continue;
        }
      }

      a3 = v61 + 1;
      v20 = v60 + 1;
      v21 = v59 - 1;
      if (v61 + 1 == v58)
      {
        return;
      }

      goto LABEL_5;
    }

    v56 = sub_25C82DFBC();
    (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void sub_25C80CC9C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v159 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v173 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v174 = &v157 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v181 = &v157 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v165 = &v157 - v19;
  MEMORY[0x28223BE20](v18);
  v169 = a3;
  v170 = &v157 - v23;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v159;
    if (*v159)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_114;
    }

    goto LABEL_159;
  }

  v164 = v22;
  v163 = v21;
  v172 = v20;
  v158 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v182 = "evaluateWithModel:]";
  while (1)
  {
    v168 = v26;
    v160 = v25;
    if (v25 + 1 >= v24)
    {
      v24 = v25 + 1;
      goto LABEL_30;
    }

    v27 = v25;
    v28 = *v169;
    v29 = *(*v169 + 8 * (v25 + 1));
    v184 = *(*v169 + 8 * v25);
    v30 = v184;
    v185 = v29;
    v31 = v29;
    a3 = v30;
    LODWORD(v167) = sub_25C80C424(&v185, &v184);
    if (v5)
    {

      return;
    }

    v32 = (v25 + 2);
    v175 = 8 * v27;
    v33 = (v28 + 8 * v27 + 16);
    v166 = 0;
    v171 = v24;
    do
    {
      if (v24 == v32)
      {
        goto LABEL_20;
      }

      v34 = *(v33 - 1);
      v35 = *v33;
      v183 = v34;
      v36 = [v35 evaluationDate];
      if (!v36)
      {
        goto LABEL_153;
      }

      v37 = v36;
      sub_25C82E0AC();

      v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v39 = sub_25C82E07C();
      [v38 setDateFormat_];

      v40 = sub_25C82E07C();
      v41 = [v38 dateFromString_];

      v42 = v165;
      v177 = v33;
      v178 = v32;
      if (v41)
      {
        sub_25C82DF8C();

        v43 = 0;
        v38 = v41;
      }

      else
      {
        v43 = 1;
      }

      v44 = sub_25C82DFBC();
      v45 = *(v44 - 1);
      v46 = v45[7];
      v179 = v45 + 7;
      v180 = v46;
      v46(v42, v43, 1, v44);
      v47 = v170;
      sub_25C80E758(v42, v170);

      v48 = v45[6];
      if (v48(v47, 1, v44) == 1)
      {
        goto LABEL_154;
      }

      v49 = [v183 evaluationDate];
      if (!v49)
      {
        goto LABEL_151;
      }

      v50 = v49;
      sub_25C82E0AC();
      v52 = v51;

      v53 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v54 = sub_25C82E07C();
      [v53 setDateFormat_];

      v176 = v52;
      v55 = sub_25C82E07C();
      v56 = [v53 dateFromString_];

      if (v56)
      {
        v57 = v163;
        sub_25C82DF8C();

        v58 = 0;
        v53 = v56;
      }

      else
      {
        v58 = 1;
        v57 = v163;
      }

      v180(v57, v58, 1, v44);
      v59 = v57;
      v60 = v164;
      sub_25C80E758(v59, v164);

      if (v48(v60, 1, v44) == 1)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        v156 = sub_25C82DFBC();
        (*(*(v156 - 8) + 56))(v170, 1, 1, v156);
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
        return;
      }

      v61 = v170;
      a3 = sub_25C82DF6C() & 1;
      v62 = v45[1];
      v62(v60, v44);
      v62(v61, v44);

      v32 = v178 + 1;
      v33 = v177 + 1;
      v5 = v166;
      v26 = v168;
      v24 = v171;
    }

    while ((v167 & 1) == a3);
    v24 = v178;
LABEL_20:
    if (v167)
    {
      break;
    }

LABEL_30:
    v68 = v169[1];
    if (v24 >= v68)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v24, v160))
    {
      goto LABEL_141;
    }

    if (v24 - v160 >= v158)
    {
LABEL_40:
      v25 = v24;
    }

    else
    {
      if (__OFADD__(v160, v158))
      {
        goto LABEL_142;
      }

      if (v160 + v158 >= v68)
      {
        v69 = v169[1];
      }

      else
      {
        v69 = v160 + v158;
      }

      if (v69 < v160)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v70 = v160;
      if (v24 == v69)
      {
        v25 = v24;
        goto LABEL_42;
      }

      v166 = v5;
      v175 = *v169;
      v116 = v175 + 8 * v24 - 8;
      v117 = v160 - v24;
      v118 = v172;
      v161 = v69;
      do
      {
        v171 = v24;
        v119 = *(v175 + 8 * v24);
        v162 = v117;
        v120 = v117;
        v167 = v116;
        v121 = v116;
        do
        {
          v122 = *v121;
          v44 = v119;
          v183 = v122;
          v123 = [v44 evaluationDate];
          if (!v123)
          {
            goto LABEL_148;
          }

          v124 = v123;
          v178 = v44;
          sub_25C82E0AC();

          v125 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v126 = sub_25C82E07C();
          [v125 setDateFormat_];

          v127 = sub_25C82E07C();
          v128 = [v125 dateFromString_];

          if (v128)
          {
            v129 = v174;
            sub_25C82DF8C();

            v130 = 0;
            v125 = v128;
          }

          else
          {
            v130 = 1;
            v129 = v174;
          }

          v44 = sub_25C82DFBC();
          v131 = *(v44 - 1);
          v132 = v131[7];
          v179 = v131 + 7;
          v180 = v132;
          v132(v129, v130, 1, v44);
          v133 = v181;
          sub_25C80E758(v129, v181);

          v134 = v131[6];
          if (v134(v133, 1, v44) == 1)
          {
            goto LABEL_149;
          }

          v135 = [v183 evaluationDate];
          if (!v135)
          {
            v180(v118, 1, 1, v44);
LABEL_147:
            __break(1u);
LABEL_148:
            v155 = sub_25C82DFBC();
            (*(*(v155 - 8) + 56))(v181, 1, 1, v155);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            v180(v164, 1, 1, v44);
            goto LABEL_152;
          }

          v136 = v135;
          v176 = v120;
          sub_25C82E0AC();
          v138 = v137;

          v139 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v140 = sub_25C82E07C();
          [v139 setDateFormat_];

          v177 = v138;
          v141 = sub_25C82E07C();
          v142 = [v139 dateFromString_];

          if (v142)
          {
            v143 = v173;
            sub_25C82DF8C();

            v144 = 0;
            v139 = v142;
          }

          else
          {
            v144 = 1;
            v143 = v173;
          }

          v180(v143, v144, 1, v44);
          v145 = v143;
          v118 = v172;
          sub_25C80E758(v145, v172);

          if (v134(v118, 1, v44) == 1)
          {
            goto LABEL_147;
          }

          v146 = v181;
          a3 = sub_25C82DF6C();
          v147 = v131[1];
          v147(v118, v44);
          v147(v146, v44);

          if ((a3 & 1) == 0)
          {
            break;
          }

          v148 = v176;
          if (!v175)
          {
            goto LABEL_150;
          }

          v149 = *v121;
          v119 = *(v121 + 8);
          *v121 = v119;
          *(v121 + 8) = v149;
          v121 -= 8;
          v150 = __CFADD__(v148, 1);
          v120 = v148 + 1;
        }

        while (!v150);
        v24 = v171 + 1;
        v116 = v167 + 8;
        v117 = v162 - 1;
        v25 = v161;
      }

      while (v171 + 1 != v161);
      v5 = v166;
      v26 = v168;
    }

    v70 = v160;
LABEL_42:
    if (v25 < v70)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_25C7E6F4C(0, *(v26 + 2) + 1, 1, v26);
    }

    a3 = *(v26 + 2);
    v71 = *(v26 + 3);
    v72 = a3 + 1;
    if (a3 >= v71 >> 1)
    {
      v26 = sub_25C7E6F4C((v71 > 1), a3 + 1, 1, v26);
    }

    *(v26 + 2) = v72;
    v73 = &v26[16 * a3];
    *(v73 + 4) = v160;
    *(v73 + 5) = v25;
    v74 = *v159;
    if (!*v159)
    {
      goto LABEL_158;
    }

    if (a3)
    {
      while (1)
      {
        v75 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v76 = *(v26 + 4);
          v77 = *(v26 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_62:
          if (v79)
          {
            goto LABEL_129;
          }

          v92 = &v26[16 * v72];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_132;
          }

          v98 = &v26[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_136;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v72 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v102 = &v26[16 * v72];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_76:
        if (v97)
        {
          goto LABEL_131;
        }

        v105 = &v26[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_134;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_83:
        a3 = v75 - 1;
        if (v75 - 1 >= v72)
        {
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
          goto LABEL_143;
        }

        if (!*v169)
        {
          goto LABEL_155;
        }

        v113 = *&v26[16 * a3 + 32];
        v114 = *&v26[16 * v75 + 40];
        sub_25C80DBC4((*v169 + 8 * v113), (*v169 + 8 * *&v26[16 * v75 + 32]), (*v169 + 8 * v114), v74);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v114 < v113)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_25C807028(v26);
        }

        if (a3 >= *(v26 + 2))
        {
          goto LABEL_126;
        }

        v115 = &v26[16 * a3];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v186 = v26;
        sub_25C806F9C(v75);
        v26 = v186;
        v72 = *(v186 + 2);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v26[16 * v72 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_127;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_128;
      }

      v87 = &v26[16 * v72];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_130;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_133;
      }

      if (v91 >= v83)
      {
        v109 = &v26[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_137;
        }

        if (v78 < v112)
        {
          v75 = v72 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v24 = v169[1];
    if (v25 >= v24)
    {
      goto LABEL_112;
    }
  }

  v63 = v160;
  if (v24 >= v160)
  {
    if (v160 < v24)
    {
      v64 = 8 * v24 - 8;
      v65 = v24;
      while (1)
      {
        if (v63 != --v65)
        {
          v67 = *v169;
          if (!*v169)
          {
            goto LABEL_156;
          }

          v66 = *(v67 + v175);
          *(v67 + v175) = *(v67 + v64);
          *(v67 + v64) = v66;
        }

        ++v63;
        v64 -= 8;
        v175 += 8;
        if (v63 >= v65)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_144:
  __break(1u);
LABEL_145:
  v26 = sub_25C807028(v26);
LABEL_114:
  v186 = v26;
  v151 = *(v26 + 2);
  if (v151 >= 2)
  {
    while (*v169)
    {
      v152 = *&v26[16 * v151];
      v153 = *&v26[16 * v151 + 24];
      sub_25C80DBC4((*v169 + 8 * v152), (*v169 + 8 * *&v26[16 * v151 + 16]), (*v169 + 8 * v153), a3);
      if (v5)
      {
        goto LABEL_122;
      }

      if (v153 < v152)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_25C807028(v26);
      }

      if (v151 - 2 >= *(v26 + 2))
      {
        goto LABEL_139;
      }

      v154 = &v26[16 * v151];
      *v154 = v152;
      *(v154 + 1) = v153;
      v186 = v26;
      sub_25C806F9C(v151 - 1);
      v26 = v186;
      v151 = *(v186 + 2);
      if (v151 <= 1)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_157;
  }

LABEL_122:
}

uint64_t sub_25C80DBC4(id *a1, id *a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v104 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v109 = &v104 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v107 = &v104 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v108 = (&v104 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v110 = (&v104 - v24);
  MEMORY[0x28223BE20](v23);
  v25 = a2;
  v116 = &v104 - v26;
  v27 = a2 - a1;
  v28 = v27 / 8;
  v29 = a3 - v25;
  v30 = a3 - v25 + 7;
  if (a3 - v25 >= 0)
  {
    v30 = a3 - v25;
  }

  v31 = v30 >> 3;
  if (v28 >= v30 >> 3)
  {
    if (a4 != v25 || &v25[v31] <= a4)
    {
      v65 = v25;
      memmove(a4, v25, 8 * v31);
      v25 = v65;
    }

    v121 = &a4[v31];
    if (v29 < 8 || v25 <= a1)
    {
      v64 = v25;
    }

    else
    {
      v116 = "evaluateWithModel:]";
      v120 = a4;
      v114 = a1;
      v105 = v11;
      v106 = v14;
      do
      {
        v115 = v25;
        v66 = v25 - 1;
        v67 = a3 - 8;
        v68 = v121;
        v108 = v66;
        while (1)
        {
          v70 = *(v68 - 8);
          v69 = (v68 - 8);
          v71 = *v66;
          v72 = v70;
          v118 = v71;
          v73 = [v72 evaluationDate];
          if (!v73)
          {
            goto LABEL_66;
          }

          v74 = v73;
          v112 = v72;
          sub_25C82E0AC();

          v75 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v76 = sub_25C82E07C();
          [v75 setDateFormat_];

          v77 = sub_25C82E07C();
          v78 = [v75 dateFromString_];

          v119 = v67;
          v110 = v69;
          if (v78)
          {
            v79 = v109;
            sub_25C82DF8C();

            v80 = 0;
            v75 = v78;
          }

          else
          {
            v80 = 1;
            v79 = v109;
          }

          v29 = sub_25C82DFBC();
          v81 = *(v29 - 8);
          v82 = v81[7];
          v82(v79, v80, 1, v29);
          v83 = v117;
          sub_25C80E758(v79, v117);

          v84 = v81[6];
          result = v84(v83, 1, v29);
          if (result == 1)
          {
            goto LABEL_67;
          }

          v113 = v82;
          v86 = [v118 evaluationDate];
          if (!v86)
          {
            goto LABEL_64;
          }

          v87 = v86;
          sub_25C82E0AC();
          v89 = v88;

          v90 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v91 = sub_25C82E07C();
          [v90 setDateFormat_];

          v111 = v89;
          v92 = sub_25C82E07C();
          v93 = [v90 dateFromString_];

          if (v93)
          {
            v94 = v105;
            sub_25C82DF8C();

            v95 = 0;
            v90 = v93;
          }

          else
          {
            v95 = 1;
            v94 = v105;
          }

          v113(v94, v95, 1, v29);
          v96 = v106;
          sub_25C80E758(v94, v106);

          if (v84(v96, 1, v29) == 1)
          {
LABEL_65:
            __break(1u);
LABEL_66:
            v103 = sub_25C82DFBC();
            result = (*(*(v103 - 8) + 56))(v117, 1, 1, v103);
LABEL_67:
            __break(1u);
            return result;
          }

          v97 = v117;
          v98 = sub_25C82DF6C();
          v99 = v81[1];
          v99(v96, v29);
          v99(v97, v29);

          a4 = v120;
          if (v98)
          {
            break;
          }

          v100 = v119;
          v66 = v108;
          v68 = v110;
          if (v119 + 8 != v121)
          {
            *v119 = *v110;
          }

          v67 = v100 - 8;
          v121 = v68;
          if (v68 <= a4)
          {
            v121 = v68;
            v64 = v115;
            goto LABEL_56;
          }
        }

        a3 = v119;
        v101 = v114;
        v64 = v108;
        if (v119 + 8 != v115)
        {
          *v119 = *v108;
        }

        if (v121 <= a4)
        {
          break;
        }

        v25 = v64;
      }

      while (v64 > v101);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v29 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v29;
    }

    v121 = &a4[v28];
    if (v27 >= 8 && v25 < a3)
    {
      v117 = "evaluateWithModel:]";
      v119 = a3;
      while (1)
      {
        v115 = v25;
        v32 = *a4;
        v33 = *v25;
        v118 = v32;
        v34 = [v33 evaluationDate];
        if (!v34)
        {
LABEL_62:
          v102 = sub_25C82DFBC();
          (*(*(v102 - 8) + 56))(v116, 1, 1, v102);
LABEL_63:
          __break(1u);
LABEL_64:
          v113(v106, 1, 1, v29);
          goto LABEL_65;
        }

        v35 = v34;
        sub_25C82E0AC();

        v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v37 = sub_25C82E07C();
        [v36 setDateFormat_];

        v38 = sub_25C82E07C();
        v39 = [v36 dateFromString_];

        v120 = a4;
        v113 = v33;
        v114 = a1;
        if (v39)
        {
          v40 = v110;
          sub_25C82DF8C();

          v41 = 0;
          v36 = v39;
        }

        else
        {
          v41 = 1;
          v40 = v110;
        }

        v29 = sub_25C82DFBC();
        v42 = *(v29 - 8);
        v43 = v42[7];
        v43(v40, v41, 1, v29);
        v44 = v40;
        v45 = v116;
        sub_25C80E758(v44, v116);

        v46 = v42[6];
        if (v46(v45, 1, v29) == 1)
        {
          goto LABEL_63;
        }

        v47 = [v118 evaluationDate];
        if (!v47)
        {
          v43(v108, 1, 1, v29);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v48 = v47;
        v112 = v43;
        sub_25C82E0AC();
        v50 = v49;

        v51 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v52 = sub_25C82E07C();
        [v51 setDateFormat_];

        v111 = v50;
        v53 = sub_25C82E07C();
        v54 = [v51 dateFromString_];

        if (v54)
        {
          v55 = v107;
          sub_25C82DF8C();

          v56 = 0;
          v51 = v54;
        }

        else
        {
          v56 = 1;
          v55 = v107;
        }

        v112(v55, v56, 1, v29);
        v57 = v108;
        sub_25C80E758(v55, v108);

        if (v46(v57, 1, v29) == 1)
        {
          goto LABEL_61;
        }

        v58 = v116;
        v59 = sub_25C82DF6C();
        v60 = v42[1];
        v60(v57, v29);
        v60(v58, v29);

        a4 = v120;
        if ((v59 & 1) == 0)
        {
          break;
        }

        v61 = v114;
        v62 = v115;
        v25 = v115 + 1;
        v63 = v119;
        if (v114 != v115)
        {
          goto LABEL_24;
        }

LABEL_25:
        a1 = v61 + 1;
        if (a4 >= v121 || v25 >= v63)
        {
          goto LABEL_27;
        }
      }

      v62 = v120;
      v61 = v114;
      a4 = v120 + 1;
      v25 = v115;
      v63 = v119;
      if (v114 == v120)
      {
        goto LABEL_25;
      }

LABEL_24:
      *v61 = *v62;
      goto LABEL_25;
    }

LABEL_27:
    v64 = a1;
  }

LABEL_56:
  if (v64 != a4 || v64 >= (a4 + ((v121 - a4 + (v121 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v64, a4, 8 * (v121 - a4));
  }

  return 1;
}

uint64_t sub_25C80E6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C80E758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25C80E7C8()
{
  result = qword_27FC16218;
  if (!qword_27FC16218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC16218);
  }

  return result;
}

id sub_25C80E88C(void *a1, void *a2)
{
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    v8 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v6 = qword_281559838;
    sub_25C82E00C(v8, &dword_25C7D2000, v6, "model does not have stream set.", 31, 2, MEMORY[0x277D84F90]);
    v7 = 29;
    goto LABEL_10;
  }

  if (([a2 respondsToSelector_] & 1) == 0 || (result = objc_msgSend(a2, sel_evaluateWithModel_, a1)) == 0)
  {
    v5 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v6 = qword_281559838;
    sub_25C82E00C(v5, &dword_25C7D2000, v6, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);
    v7 = 30;
LABEL_10:

    sub_25C7E7DEC();
    swift_allocError();
    *v9 = v7;
    return swift_willThrow();
  }

  return result;
}

id sub_25C80EA2C(uint64_t a1, void *a2)
{
  v42 = sub_25C82DFBC();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (result)
  {
    v7 = result;
    sub_25C80EE70();
    v8 = sub_25C82E1DC();

    if (v8 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
    {
      v10 = 0;
      v36 = v8;
      v37 = v8 & 0xC000000000000001;
      v33 = v8 + 32;
      v34 = v8 & 0xFFFFFFFFFFFFFF8;
      v39 = v40 + 16;
      v41 = (v40 + 8);
      v35 = i;
      while (1)
      {
        if (v37)
        {
          v11 = MEMORY[0x25F88F6D0](v10, v8);
        }

        else
        {
          if (v10 >= *(v34 + 16))
          {
            goto LABEL_33;
          }

          v11 = *(v33 + 8 * v10);
        }

        v45 = v11;
        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          break;
        }

        v13 = [v45 metadata];
        if (v13)
        {
          v14 = v13;
          v38 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
          v8 = sub_25C82E1DC();

          v15 = sub_25C812AA0(v8);

          v44 = *(v15 + 16);
          if (v44)
          {
            v16 = 0;
            v43 = v15 + 32;
            do
            {
              if (v16 >= *(v15 + 16))
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v17 = *(v43 + 8 * v16);

              v18 = [v45 startDate];
              sub_25C82DF8C();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v46 = *a2;
              v20 = v46;
              *a2 = 0x8000000000000000;
              v22 = sub_25C813BA8(v5);
              v23 = v20[2];
              v24 = (v21 & 1) == 0;
              v25 = v23 + v24;
              if (__OFADD__(v23, v24))
              {
                goto LABEL_30;
              }

              v8 = v21;
              if (v20[3] >= v25)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v28 = v46;
                  if (v21)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                  sub_25C804EA8();
                  v28 = v46;
                  if (v8)
                  {
                    goto LABEL_15;
                  }
                }
              }

              else
              {
                sub_25C7FC488(v25, isUniquelyReferenced_nonNull_native);
                v26 = sub_25C813BA8(v5);
                if ((v8 & 1) != (v27 & 1))
                {
                  result = sub_25C82E51C();
                  __break(1u);
                  return result;
                }

                v22 = v26;
                v28 = v46;
                if (v8)
                {
LABEL_15:
                  *(v28[7] + 8 * v22) = v17;

                  (*v41)(v5, v42);
                  goto LABEL_16;
                }
              }

              v28[(v22 >> 6) + 8] |= 1 << v22;
              v29 = v40;
              v8 = v42;
              (*(v40 + 16))(v28[6] + *(v40 + 72) * v22, v5, v42);
              *(v28[7] + 8 * v22) = v17;
              (*(v29 + 8))(v5, v8);
              v30 = v28[2];
              v12 = __OFADD__(v30, 1);
              v31 = v30 + 1;
              if (v12)
              {
                goto LABEL_31;
              }

              v28[2] = v31;
LABEL_16:
              ++v16;
              *a2 = v28;
            }

            while (v44 != v16);
          }

          i = v35;
          v8 = v36;
          v10 = v38;
        }

        if (v10 == i)
        {
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }
  }

  return result;
}

unint64_t sub_25C80EE70()
{
  result = qword_2815594A0;
  if (!qword_2815594A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815594A0);
  }

  return result;
}

uint64_t sub_25C80EEBC(unint64_t a1, unint64_t a2, void *a3, char a4)
{
  v7 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v8 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = a3;
    *v11 = a3;
    v12 = a3;
    _os_log_impl(&dword_25C7D2000, v9, v7, "Start compareModelEvaluationTimeseries with selection policy: %@", v10, 0xCu);
    sub_25C81189C(v11);
    MEMORY[0x25F890110](v11, -1, -1);
    MEMORY[0x25F890110](v10, -1, -1);
  }

  v13 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
  v14 = [a3 minimumNumberOfSamples];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 integerValue];

    v17 = [a3 minimumNumberOfEvaluations];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 integerValue];

      v20 = sub_25C82E25C();
      v21 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v20))
      {
        v22 = v21;
        v23 = swift_slowAlloc();
        *v23 = 134218240;
        *(v23 + 4) = v16;
        *(v23 + 12) = 2048;
        *(v23 + 14) = v19;
        _os_log_impl(&dword_25C7D2000, v22, v20, "Evaluating based on both minimum number of samples: %ld and minimum number of evaluations: %ld", v23, 0x16u);
        MEMORY[0x25F890110](v23, -1, -1);
      }

      if (a1 >> 62)
      {
        v24 = sub_25C82E43C();
      }

      else
      {
        v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v24 < v19)
      {
        goto LABEL_16;
      }

      if (a2 >> 62)
      {
        if (sub_25C82E43C() >= v19)
        {
          goto LABEL_14;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19)
      {
LABEL_14:
        sub_25C810650(a1);
        if (v25 < v16)
        {
          goto LABEL_16;
        }

        sub_25C810650(a2);
        if (v26 < v16)
        {
          goto LABEL_16;
        }

LABEL_70:
        v96 = sub_25C82E25C();
        v97 = qword_281559838;
        sub_25C82E00C(v96, &dword_25C7D2000, v97, "Start comparison", 16, 2, MEMORY[0x277D84F90]);

        sub_25C810784(a1, a2);
        v100 = v98;
        v101 = v99;
        if (v98 && v99)
        {
          v102 = v98;
          v103 = v101;
          v13 = [a3 modelSelectionParameters];
          sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
          v104 = sub_25C82E1DC();

          LOBYTE(v13) = sub_25C80FAD4(v102, v103, v104, a4 & 1);

          return v13 & 1;
        }

        v105 = sub_25C82E25C();
        v106 = qword_281559838;
        sub_25C82E00C(v105, &dword_25C7D2000, v106, "Failed to get either the aggregated timeseries or aggregated other timeseries", 77, 2, MEMORY[0x277D84F90]);

        goto LABEL_61;
      }

LABEL_16:
      v27 = sub_25C82E25C();
      v28 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v27))
      {
        v29 = v28;
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        *(v30 + 4) = v16;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v19;
        _os_log_impl(&dword_25C7D2000, v29, v27, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of samples: %ld and minimum number of evaluations: %ld", v30, 0x16u);
        MEMORY[0x25F890110](v30, -1, -1);
      }

      v31 = sub_25C82E25C();
      v32 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v31))
      {

        v33 = v32;
        v34 = swift_slowAlloc();
        *v34 = 134218240;
        if (a1 >> 62)
        {
          v35 = sub_25C82E43C();
        }

        else
        {
          v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v34 + 4) = v35;
        *(v34 + 12) = 2048;
        sub_25C810650(a1);
        *(v34 + 14) = v77;

        _os_log_impl(&dword_25C7D2000, v33, v31, "modelTimeseries number of evaluations: %ld, number of samples: %ld", v34, 0x16u);
        MEMORY[0x25F890110](v34, -1, -1);
      }

      v78 = sub_25C82E25C();
      v79 = qword_281559838;
      if (!os_log_type_enabled(qword_281559838, v78))
      {
        goto LABEL_60;
      }

      v56 = v79;
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      if (a2 >> 62)
      {
        v80 = sub_25C82E43C();
      }

      else
      {
        v80 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 4) = v80;
      *(v57 + 12) = 2048;
      sub_25C810650(a2);
      *(v57 + 14) = v81;

      v59 = "otherModelTimeseries number of evaluations: %ld, number of samples: %ld";
      v82 = v78;
      v83 = v56;
      v84 = v57;
      v85 = 22;
LABEL_59:
      _os_log_impl(&dword_25C7D2000, v83, v82, v59, v84, v85);
      MEMORY[0x25F890110](v57, -1, -1);

LABEL_60:
      v91 = sub_25C82E25C();
      v92 = qword_281559838;
      sub_25C82E00C(v91, &dword_25C7D2000, v92, "Not comparing the two. Defaulting to false.", 43, 2, MEMORY[0x277D84F90]);

LABEL_61:
      LOBYTE(v13) = 0;
      return v13 & 1;
    }
  }

  v36 = [a3 minimumNumberOfSamples];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 integerValue];

    v39 = sub_25C82E25C();
    v40 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v39))
    {
      v41 = v40;
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v38;
      _os_log_impl(&dword_25C7D2000, v41, v39, "Evaluating based on minimum number of samples: %ld", v42, 0xCu);
      MEMORY[0x25F890110](v42, -1, -1);
    }

    sub_25C810650(a1);
    if (v43 >= v38)
    {
      sub_25C810650(a2);
      if (v44 >= v38)
      {
        goto LABEL_70;
      }
    }

    v45 = sub_25C82E25C();
    v46 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v45))
    {
      v47 = v46;
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v38;
      _os_log_impl(&dword_25C7D2000, v47, v45, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of samples: %ld", v48, 0xCu);
      MEMORY[0x25F890110](v48, -1, -1);
    }

    v49 = sub_25C82E25C();
    v50 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v49))
    {

      v51 = v50;
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      sub_25C810650(a1);
      *(v52 + 4) = v53;

      _os_log_impl(&dword_25C7D2000, v51, v49, "modelTimeseries number of samples: %ld", v52, 0xCu);
      MEMORY[0x25F890110](v52, -1, -1);
    }

    v54 = sub_25C82E25C();
    v55 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v54))
    {
      goto LABEL_60;
    }

    v56 = v55;
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    sub_25C810650(a2);
    *(v57 + 4) = v58;

    v59 = "otherModelTimeseries number of samples: %ld";
LABEL_58:
    v82 = v54;
    v83 = v56;
    v84 = v57;
    v85 = 12;
    goto LABEL_59;
  }

  v60 = [a3 minimumNumberOfEvaluations];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 integerValue];

    v63 = sub_25C82E25C();
    v64 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v63))
    {
      v65 = v64;
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v62;
      _os_log_impl(&dword_25C7D2000, v65, v63, "Evaluating based on minimum number of evaluations: %ld", v66, 0xCu);
      MEMORY[0x25F890110](v66, -1, -1);
    }

    if (a1 >> 62)
    {
      v67 = sub_25C82E43C();
    }

    else
    {
      v67 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v67 < v62)
    {
      goto LABEL_40;
    }

    if (a2 >> 62)
    {
      if (sub_25C82E43C() < v62)
      {
        goto LABEL_40;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v62)
    {
LABEL_40:
      v68 = sub_25C82E25C();
      v69 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v68))
      {
        v70 = v69;
        v71 = swift_slowAlloc();
        *v71 = 134217984;
        *(v71 + 4) = v62;
        _os_log_impl(&dword_25C7D2000, v70, v68, "modelTimeseries or otherModelTimeseries did not have enough evaluations or samples to satisfy requirements. Minimum number of evaluations: %ld", v71, 0xCu);
        MEMORY[0x25F890110](v71, -1, -1);
      }

      v72 = sub_25C82E25C();
      v73 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v72))
      {

        v74 = v73;
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        if (a1 >> 62)
        {
          v76 = sub_25C82E43C();
        }

        else
        {
          v76 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v75 + 4) = v76;

        _os_log_impl(&dword_25C7D2000, v74, v72, "modelTimeseries number of evaluations: %ld", v75, 0xCu);
        MEMORY[0x25F890110](v75, -1, -1);
      }

      v54 = sub_25C82E25C();
      v89 = qword_281559838;
      if (!os_log_type_enabled(qword_281559838, v54))
      {
        goto LABEL_60;
      }

      v56 = v89;
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      if (a2 >> 62)
      {
        v90 = sub_25C82E43C();
      }

      else
      {
        v90 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 4) = v90;

      v59 = "otherModelTimeseries number of evaluations: %ld";
      goto LABEL_58;
    }

    v94 = sub_25C82E25C();
    v95 = qword_281559838;
    sub_25C82E00C(v94, &dword_25C7D2000, v95, "Has enough evaluations!", 23, 2, MEMORY[0x277D84F90]);

    goto LABEL_70;
  }

  v86 = sub_25C82E27C();
  v87 = qword_281559838;
  sub_25C82E00C(v86, &dword_25C7D2000, v87, "Unexpected state: selectionPolicy has neither minimumNumberOfSamples nor minimumNumberOfEvaluations!", 100, 2, MEMORY[0x277D84F90]);

  sub_25C7E7DEC();
  swift_allocError();
  *v88 = 20;
  swift_willThrow();
  return v13 & 1;
}

uint64_t sub_25C80FAD4(void *a1, void *a2, unint64_t a3, char a4)
{
  v5 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v6 = qword_281559838;
    sub_25C82E00C(v5, &dword_25C7D2000, v6, "Start compareModelEvaluation", 28, 2, MEMORY[0x277D84F90]);

    if (a3 >> 62)
    {
      if (!sub_25C82E43C())
      {
LABEL_10:
        v9 = sub_25C82E25C();
        v10 = qword_281559838;
        sub_25C82E00C(v9, &dword_25C7D2000, v10, "End compareModelEvaluation", 26, 2, MEMORY[0x277D84F90]);

        return 1;
      }
    }

    else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v5 = 0;
    if ((a3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(a3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  MEMORY[0x25F88F6D0](0, a3);
LABEL_7:
  result = [a1 modelEvaluationResults];
  if (result)
  {
    sub_25C7E96B8(0, &qword_27FC162B8, off_2799B97C8);
    result = sub_25C82E1CC();
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_25C810650(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_25C82E43C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F88F6D0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 dataUsedToEvaluateModel];
    if (!v8)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 size];

    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = [v10 numberOfUserSessions];

    v12 = __OFADD__(v5, v11);
    v5 += v11;
    ++v4;
    if (v12)
    {
      goto LABEL_18;
    }
  }
}

void sub_25C810784(unint64_t a1, unint64_t a2)
{
  v68 = MEMORY[0x277D84FA0];
  v69 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F88F6D0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 evaluationDate];
      if (!v8)
      {
        goto LABEL_82;
      }

      v9 = v8;
      v10 = sub_25C82E0AC();
      v12 = v11;

      sub_25C811904(&v65, v10, v12);

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_25C82E43C())
  {
    v13 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25F88F6D0](v13, a2);
      }

      else
      {
        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 evaluationDate];
      if (!v17)
      {
        goto LABEL_83;
      }

      v18 = v17;
      v19 = sub_25C82E0AC();
      v21 = v20;

      sub_25C811904(&v65, v19, v21);

      ++v13;
      if (v16 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v62 = a2;
  v22 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v24 = v68;
  v23 = v69;

  v25 = sub_25C811CB4(v24, v23);
  v26 = v25 + 7;
  if (i)
  {
    v27 = 0;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x25F88F6D0](v27, a1);
      }

      else
      {
        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v28 = *(a1 + 32 + 8 * v27);
      }

      v29 = v28;
      v30 = __OFADD__(v27++, 1);
      if (v30)
      {
        break;
      }

      v31 = [v28 evaluationDate];
      if (!v31)
      {
        goto LABEL_84;
      }

      v32 = v31;
      v33 = sub_25C82E0AC();
      v35 = v34;

      if (v25[2] && (sub_25C82E57C(), sub_25C82E10C(), v36 = sub_25C82E59C(), v37 = -1 << *(v25 + 32), v38 = v36 & ~v37, ((*(v26 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (1)
        {
          v40 = (v25[6] + 16 * v38);
          v41 = *v40 == v33 && v40[1] == v35;
          if (v41 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          if (((*(v26 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v42 = v29;
        MEMORY[0x25F88F4D0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v60 = v67;
      }

      else
      {
LABEL_31:
      }

      if (v27 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
  }

  else
  {
    v60 = v22;
LABEL_53:
    if (!j)
    {
      v61 = MEMORY[0x277D84F90];
LABEL_77:

      v58 = sub_25C810DC8(v60);

      v59 = v58;
      sub_25C810DC8(v61);

      return;
    }

    v43 = 0;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x25F88F6D0](v43);
      }

      else
      {
        if (v43 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v44 = *(v62 + 32 + 8 * v43);
      }

      v45 = v44;
      v30 = __OFADD__(v43++, 1);
      if (v30)
      {
        break;
      }

      v46 = [v44 evaluationDate];
      if (!v46)
      {
        goto LABEL_85;
      }

      v47 = v46;
      v48 = sub_25C82E0AC();
      v50 = v49;

      if (v25[2] && (sub_25C82E57C(), sub_25C82E10C(), v51 = sub_25C82E59C(), v52 = -1 << *(v25 + 32), v53 = v51 & ~v52, ((*(v26 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v54 = ~v52;
        while (1)
        {
          v55 = (v25[6] + 16 * v53);
          v56 = *v55 == v48 && v55[1] == v50;
          if (v56 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v26 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        v57 = v45;
        MEMORY[0x25F88F4D0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v61 = v66;
      }

      else
      {
LABEL_55:
      }

      if (v43 == j)
      {
        goto LABEL_77;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

void *sub_25C810DC8(unint64_t a1)
{
  v2 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v3 = qword_281559838;
    sub_25C82E00C(v2, &dword_25C7D2000, v3, "Start aggregateTimeseries", 25, 2, MEMORY[0x277D84F90]);

    v58 = a1;
    if (a1 >> 62)
    {
      a1 = sub_25C82E43C();
      if (!a1)
      {
LABEL_13:
        v5 = MEMORY[0x277D84F98];
        v6 = MEMORY[0x277D84F98] + 64;
        v7 = 1 << *(MEMORY[0x277D84F98] + 32);
        v8 = -1;
        if (v7 < 64)
        {
          v8 = ~(-1 << v7);
        }

        v9 = v8 & *(MEMORY[0x277D84F98] + 64);
        v10 = (v7 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v11 = 0;
        v59 = v10;
        while (v9)
        {
LABEL_22:
          v13 = __clz(__rbit64(v9)) | (v11 << 6);
          v14 = (*(v5 + 48) + 16 * v13);
          v16 = *v14;
          v15 = v14[1];
          v17 = *(*(v5 + 56) + 8 * v13);

          v18 = v17;
          v19 = sub_25C82E25C();
          v20 = qword_281559838;
          v60 = v18;
          if (os_log_type_enabled(qword_281559838, v19))
          {
            v21 = v20;
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v61 = v23;
            *v22 = 136315138;
            v24 = sub_25C7E77E4(v16, v15, &v61);

            *(v22 + 4) = v24;
            _os_log_impl(&dword_25C7D2000, v21, v19, "aggregated evals: name: %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v23);
            v25 = v23;
            v18 = v60;
            MEMORY[0x25F890110](v25, -1, -1);
            v26 = v22;
            v10 = v59;
            MEMORY[0x25F890110](v26, -1, -1);
          }

          else
          {
          }

          v27 = sub_25C82E25C();
          v28 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v27))
          {
            v29 = v18;
            v30 = v28;
            v31 = swift_slowAlloc();
            *v31 = 67109376;
            *(v31 + 4) = [v29 numberOfPositiveSamples];
            *(v31 + 8) = 1024;
            *(v31 + 10) = [v29 numberOfSamples];

            v18 = v60;
            _os_log_impl(&dword_25C7D2000, v30, v27, "> aggregated evals: positive: %u, total: %u", v31, 0xEu);
            MEMORY[0x25F890110](v31, -1, -1);
          }

          v9 &= v9 - 1;
        }

        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {

            v32 = sub_25C82E25C();
            v33 = qword_281559838;
            sub_25C82E00C(v32, &dword_25C7D2000, v33, "Creating PET object", 19, 2, MEMORY[0x277D84F90]);

            v34 = [objc_allocWithZone(ODCurareReportFillerModelEvaluationSummary) init];
            if (!v34)
            {
              goto LABEL_48;
            }

            v35 = v34;
            v36 = 0;
            v37 = 1 << *(v5 + 32);
            v38 = *(v5 + 64);
            v39 = -1;
            if (v37 < 64)
            {
              v39 = ~(-1 << v37);
            }

            v40 = v39 & v38;
            v41 = (v37 + 63) >> 6;
            if ((v39 & v38) != 0)
            {
              while (1)
              {
                v42 = v36;
LABEL_35:
                v43 = __clz(__rbit64(v40)) | (v42 << 6);
                v44 = (*(v5 + 48) + 16 * v43);
                v46 = *v44;
                v45 = v44[1];
                v47 = *(*(v5 + 56) + 8 * v43);

                v48 = v47;
                if (![v48 numberOfSamples])
                {
                  break;
                }

                v40 &= v40 - 1;

                [v48 setMetricValue_];
                [v35 addModelEvaluationResults_];

                v36 = v42;
                if (!v40)
                {
                  goto LABEL_32;
                }
              }

              v52 = sub_25C82E27C();
              v53 = qword_281559838;
              if (os_log_type_enabled(qword_281559838, v52))
              {
                v54 = v53;
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v61 = v56;
                *v55 = 136315138;
                v57 = sub_25C7E77E4(v46, v45, &v61);

                *(v55 + 4) = v57;
                _os_log_impl(&dword_25C7D2000, v54, v52, "Found zero samples for metric %s, returning nil.", v55, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v56);
                MEMORY[0x25F890110](v56, -1, -1);
                MEMORY[0x25F890110](v55, -1, -1);
              }

              else
              {
              }

              return 0;
            }

LABEL_32:
            while (1)
            {
              v42 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v42 >= v41)
              {

                v49 = sub_25C82E25C();
                v50 = qword_281559838;
                sub_25C82E00C(v49, &dword_25C7D2000, v50, "End aggregateTimeseries", 23, 2, MEMORY[0x277D84F90]);

                return v35;
              }

              v40 = *(v6 + 8 * v42);
              ++v36;
              if (v40)
              {
                goto LABEL_35;
              }
            }

LABEL_45:
            __break(1u);
            __break(1u);
            __break(1u);

            __break(1u);
            __break(1u);
            __break(1u);
            goto LABEL_46;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_13;
      }
    }

    if ((v58 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v58 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v4 = MEMORY[0x25F88F6D0](0, v58);
LABEL_7:
  if ([v4 modelEvaluationResults])
  {
    v61 = 0;
    sub_25C7E96B8(0, &qword_27FC162B8, off_2799B97C8);
    sub_25C82E1CC();
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

uint64_t sub_25C81189C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16100, &qword_25C8305B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C811904(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25C82E57C();
  sub_25C82E10C();
  v8 = sub_25C82E59C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25C82E4EC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25C812508(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25C811A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E37C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_25C811CB4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25C811F08((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_25C811E78(v11, v6, a2, a1);

    MEMORY[0x25F890110](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_25C811E78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_25C811F08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25C811F08(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_25C82E57C();

      sub_25C82E10C();
      v26 = sub_25C82E59C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_25C82E4EC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25C8122E4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
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
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_25C82E57C();

      sub_25C82E10C();
      v39 = sub_25C82E59C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_25C82E4EC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C8122E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E38C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25C82E57C();

    sub_25C82E10C();
    result = sub_25C82E59C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25C812508(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25C811A54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25C812688();
      goto LABEL_16;
    }

    sub_25C8127E4(v8 + 1);
  }

  v10 = *v4;
  sub_25C82E57C();
  sub_25C82E10C();
  result = sub_25C82E59C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25C82E4EC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25C82E50C();
  __break(1u);
  return result;
}

void *sub_25C812688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  v2 = *v0;
  v3 = sub_25C82E36C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25C8127E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C0, qword_25C830A90);
  result = sub_25C82E37C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25C82E57C();

      sub_25C82E10C();
      result = sub_25C82E59C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25C812AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25C8140A8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C8140A8((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_25C812BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  MEMORY[0x25F88F460](0xD00000000000001FLL, 0x800000025C833E40);
  v8 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v9 = sub_25C82E07C();

  v10 = [v8 init_];

  v4[2] = v10;
  v16 = a2;

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C833E60);

  v11 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v12 = sub_25C82E07C();

  v13 = [v11 init_];

  v4[3] = v13;
  v4[4] = a1;
  return v4;
}

void sub_25C812D1C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v35 = MEMORY[0x277D84F90];
  if (!(a2 >> 62))
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    v18 = MEMORY[0x277D84F90];
LABEL_18:
    if (a3)
    {
      v19 = v34[2];
    }

    else
    {
      v19 = v34[3];
      v20 = sub_25C82E25C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v21 = qword_281559838;
      sub_25C82E00C(v20, &dword_25C7D2000, v21, "Using non-selectable storage for saveResults", 44, 2, MEMORY[0x277D84F90]);
    }

    v22 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v23 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v22))
    {

      v24 = v23;
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      if (v18 >> 62)
      {
        v26 = sub_25C82E43C();
      }

      else
      {
        v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v26;

      _os_log_impl(&dword_25C7D2000, v24, v22, "Storing %ld number of evaluation summaries", v25, 0xCu);
      MEMORY[0x25F890110](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    sub_25C82E35C();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C8, &qword_25C830BB8);
    *(inited + 72) = v18;
    v29 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C8146F4(inited + 32);
    *(v27 + 32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v30 = sub_25C82E1BC();

    v31 = sub_25C82DF4C();
    [v19 saveDictionaries:v30 date:v31 eventIdentifier:0];

    sub_25C827FD8(v19, v34[4]);
    return;
  }

LABEL_16:
  v6 = sub_25C82E43C();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v32 = v4;
  v4 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F88F6D0](v4, a2);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v4 + 32);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    v9 = v7;
    v10 = [v7 data];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = sub_25C82DF0C();
    v14 = v13;

    v15 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_25C8146A0(v12, v14);
    v16 = sub_25C82DEEC();
    [v15 initWithData_];

    v17 = sub_25C808E3C(v12, v14);
    MEMORY[0x25F88F4D0](v17);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25C82E1EC();
    }

    sub_25C82E20C();
    sub_25C808E3C(v12, v14);

    ++v4;
    if (v8 == v6)
    {
      v18 = v35;
      goto LABEL_18;
    }
  }

  __break(1u);
}

unint64_t sub_25C8131CC(char a1)
{
  v3 = *(v1 + 16);
  v18 = v3;
  v4 = MEMORY[0x277D84F90];
  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v18 = *(v1 + 24);
    v5 = v18;
    v6 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v7 = qword_281559838;
    sub_25C82E00C(v6, &dword_25C7D2000, v7, "Using non-selectable storage for getResults", 43, 2, MEMORY[0x277D84F90]);
  }

  v17 = v4;
  v8 = objc_autoreleasePoolPush();
  sub_25C81340C(&v18, &v17, v16);
  if (v2)
  {
    objc_autoreleasePoolPop(v8);
    v9 = v17;
  }

  else
  {
    objc_autoreleasePoolPop(v8);
    v10 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v11 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      swift_beginAccess();
      if (v17 >> 62)
      {
        v14 = sub_25C82E43C();
      }

      else
      {
        v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;
      _os_log_impl(&dword_25C7D2000, v12, v10, "Retrieved %ld number of results", v13, 0xCu);
      MEMORY[0x25F890110](v13, -1, -1);
    }

    swift_beginAccess();
    v9 = v17;
  }

  return v9;
}

void sub_25C81340C(id *a1, void *a2, uint64_t *a3)
{
  v4 = [*a1 queryDataWithPredicate_];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v6 = sub_25C82E1DC();

  if (v6 >> 62)
  {
LABEL_47:
    v7 = sub_25C82E43C();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_37:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_37;
  }

LABEL_4:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v35 = v6 + 32;
  v36 = v6 & 0xFFFFFFFFFFFFFF8;
  v43 = v6;
  v37 = v6 & 0xC000000000000001;
  v38 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x25F88F6D0](v8, v6);
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v8 >= *(v36 + 16))
      {
        __break(1u);
LABEL_50:
        swift_once();
        goto LABEL_40;
      }

      v10 = *(v35 + 8 * v8);
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v12 = v10;
    v13 = [v10 metadata];
    if (v13)
    {
      break;
    }

LABEL_36:
    v9 = v37;
    if (v8 == v38)
    {
      goto LABEL_37;
    }
  }

  v14 = v13;
  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v15 = sub_25C82E1DC();

  v16 = sub_25C812AA0(v15);
  v5 = v16;
  v42 = *(v16 + 16);
  if (!v42)
  {
LABEL_35:

    goto LABEL_36;
  }

  v17 = 0;
  v45 = v16 + 32;
  v39 = v8;
  v44 = v16;
  while (1)
  {
    if (v17 >= v5[2])
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v18 = *(v45 + 8 * v17);
    if (!*(v18 + 16))
    {
      goto LABEL_44;
    }

    v19 = sub_25C8139BC(0xD000000000000026, 0x800000025C833DE0);
    if ((v20 & 1) == 0)
    {
      goto LABEL_45;
    }

    v46 = v17;
    sub_25C7E9854(*(v18 + 56) + 32 * v19, v48);

    sub_25C801F34(v48, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162C8, &qword_25C830BB8);
    swift_dynamicCast();
    v21 = v50;
    if (v50 >> 62)
    {
      break;
    }

    v6 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_20;
    }

LABEL_14:
    v17 = v46 + 1;

    v6 = v43;
    v8 = v39;
    v5 = v44;
    if (v46 + 1 == v42)
    {
      goto LABEL_35;
    }
  }

  v6 = sub_25C82E43C();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_20:
  v22 = 0;
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F88F6D0](v22, v21);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v23 = *(v21 + 8 * v22 + 32);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v47 = v23;
    v25 = MEMORY[0x25F88F1F0]();
    v27 = v26;
    v28 = objc_allocWithZone(ODCurareReportFillerModelEvaluationSummary);
    v29 = sub_25C82DEEC();
    sub_25C808E3C(v25, v27);
    v30 = [v28 initWithData_];

    if (!v30)
    {
      break;
    }

    v31 = v30;
    MEMORY[0x25F88F4D0]();
    v5 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25C82E1EC();
    }

    sub_25C82E20C();

    ++v22;
    if (v24 == v6)
    {
      goto LABEL_14;
    }
  }

  v5 = sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_50;
  }

LABEL_40:
  v32 = qword_281559838;
  sub_25C82E00C(v5, &dword_25C7D2000, v32, "Failed to convert NSData version of summary back to the PET proto object.", 73, 2, MEMORY[0x277D84F90]);

  sub_25C7E7DEC();
  v33 = swift_allocError();
  *v34 = 11;
  swift_willThrow();

  *a3 = v33;
}

uint64_t sub_25C81390C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25C813978(uint64_t a1)
{
  v2 = sub_25C82E33C();

  return sub_25C813C7C(a1, v2);
}

unint64_t sub_25C8139BC(uint64_t a1, uint64_t a2)
{
  sub_25C82E57C();
  sub_25C82E10C();
  v4 = sub_25C82E59C();

  return sub_25C813D44(a1, a2, v4);
}

unint64_t sub_25C813AD4(uint64_t a1)
{
  sub_25C82DEAC();
  v2 = MEMORY[0x277CC9260];
  sub_25C814658(&qword_27FC161C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_25C82E04C();
  return sub_25C813EC8(a1, v3, MEMORY[0x277CC9260], &qword_281559830, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_25C813BA8(uint64_t a1)
{
  sub_25C82DFBC();
  v2 = MEMORY[0x277CC9578];
  sub_25C814658(&qword_27FC16198, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_25C82E04C();
  return sub_25C813EC8(a1, v3, MEMORY[0x277CC9578], &qword_27FC162D0, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_25C813C7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C8077A8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88F670](v9, a1);
      sub_25C814604(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25C813D44(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25C82E4EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C813DFC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_25C7E96B8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_25C82E2BC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_25C813EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_25C814658(v23, v24, v25);
      v19 = sub_25C82E06C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_25C814068(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C8142E8(a1, a2, a3, *v3, &qword_27FC160D8, &qword_25C830590, &qword_27FC16090, qword_25C8304A0);
  *v3 = result;
  return result;
}

void *sub_25C8140A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C8144D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C8140C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
  v10 = *(sub_25C82DFBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25C82DFBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25C8142E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
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
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
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

void *sub_25C8144D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C0, &qword_25C830578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25C814658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C8146A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25C8146F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A8, &unk_25C8307A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25C81475C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v149 = a5;
  v146 = a2;
  v147 = a3;
  v145 = a1;
  v158[1] = *MEMORY[0x277D85DE8];
  v8 = sub_25C82E0EC();
  MEMORY[0x28223BE20](v8 - 8);
  v144 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v152 = *(v10 - 8);
  v153 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v151 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v148 = v122 - v14;
  MEMORY[0x28223BE20](v13);
  v150 = v122 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v154 = *(v16 - 8);
  v155 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v122 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v122 - v23;
  v25 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v26 = qword_281559838;
  v27 = MEMORY[0x277D84F90];
  sub_25C82E00C(v25, &dword_25C7D2000, v26, "Start generateCAReportAndLog", 28, 2, MEMORY[0x277D84F90]);

  v28 = [objc_allocWithZone(ODCurareReportFillerReport) init];
  v29 = [objc_opt_self() sharedInstance];
  if (!v29)
  {
    v35 = sub_25C82E28C();
    v36 = qword_281559838;
    sub_25C82E00C(v35, &dword_25C7D2000, v36, "Unable to get petLogger object", 30, 2, MEMORY[0x277D84F90]);

    return;
  }

  v30 = v29;
  if (a6)
  {
    v31 = sub_25C82E28C();
    v32 = qword_281559838;
    sub_25C82E00C(v31, &dword_25C7D2000, v32, "Reporting failure because framework failed too many times", 57, 2, MEMORY[0x277D84F90]);

    if (v28)
    {
      [v28 setFrameworkFailure_];
      [v30 logMessage_];
      goto LABEL_7;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v37 = *__swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v158[0] = v27;
  v38 = objc_autoreleasePoolPush();
  v39 = v156;
  sub_25C807AF8(v37, v158, &v157);
  if (v39)
  {
    objc_autoreleasePoolPop(v38);

    return;
  }

  v143 = v30;
  objc_autoreleasePoolPop(v38);
  v40 = v158[0];
  v41 = v149;
  __swift_project_boxed_opaque_existential_1(v149, v149[3]);
  v42 = sub_25C8131CC(1);
  v133 = v40;
  v43 = v42;
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v132 = sub_25C8131CC(0);
  __swift_project_boxed_opaque_existential_1(v147, v147[3]);
  v44 = sub_25C81EF2C();
  v142 = v22;
  v140 = v19;
  v130 = v44;
  v131 = v43;
  v149 = v28;
  v156 = 0;
  v45 = v133;
  v141 = v133[2];
  if (v141)
  {
    v46 = 0;
    v139 = v24;
    do
    {
      v47 = v155;
      if (v46 >= v45[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      v48 = v46;
      sub_25C7E92DC(v45 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v46, v24, &qword_27FC16090, qword_25C8304A0);
      v49 = *(v47 + 48);
      v147 = *&v24[v49];
      v50 = sub_25C82DEAC();
      v51 = *(v50 - 8);
      v52 = v142;
      (*(v51 + 32))(v142, v24, v50);
      *(v52 + v49) = v147;
      v53 = v149;
      if (!v149)
      {
        goto LABEL_64;
      }

      v54 = v140;
      sub_25C7E92DC(v52, v140, &qword_27FC16090, qword_25C8304A0);
      v55 = *(v54 + *(v47 + 48));
      v56 = v53;
      [v56 addMetadataList_];

      v57 = v52;
      v46 = v48 + 1;
      sub_25C7E97F4(v57, &qword_27FC16090, qword_25C8304A0);
      (*(v51 + 8))(v54, v50);
      v45 = v133;
      v24 = v139;
    }

    while (v141 != (v48 + 1));
  }

  if (v131 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25C82E43C())
  {
    v28 = v149;
    v30 = v143;
    if (i)
    {
      v59 = 0;
      v60 = v131 & 0xC000000000000001;
      v61 = v131 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v60)
        {
          v62 = MEMORY[0x25F88F6D0](v59, v131);
        }

        else
        {
          if (v59 >= *(v61 + 16))
          {
            goto LABEL_41;
          }

          v62 = *(v131 + 8 * v59 + 32);
        }

        v63 = v62;
        v64 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_65;
        }

        [v28 addModelEvaluationSummaries_];

        ++v59;
        if (v64 == i)
        {
          goto LABEL_28;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_28:
    if (!(v132 >> 62))
    {
      v65 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        break;
      }

      goto LABEL_30;
    }

    v65 = sub_25C82E43C();
    if (!v65)
    {
      break;
    }

LABEL_30:
    v66 = 0;
    v67 = v132 & 0xC000000000000001;
    v68 = v132 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v67)
      {
        v69 = MEMORY[0x25F88F6D0](v66, v132);
      }

      else
      {
        if (v66 >= *(v68 + 16))
        {
          goto LABEL_43;
        }

        v69 = *(v132 + 8 * v66 + 32);
      }

      v70 = v69;
      v71 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_66;
      }

      [v28 addModelEvaluationSummaries_];

      ++v66;
      if (v71 == v65)
      {
        goto LABEL_46;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_46:
  v72 = v130;
  v73 = v148;
  v129 = *(v130 + 16);
  if (v129)
  {
    v74 = 0;
    v128 = v153[12];
    v127 = v153[16];
    v126 = (v150 + v153[24]);
    v125 = (v150 + v153[28]);
    v75 = *(v152 + 80);
    v124 = v153[20];
    v123 = v130 + ((v75 + 32) & ~v75);
    v122[1] = v151 + 8;
    v76 = &qword_25C830490;
    do
    {
      if (v74 >= *(v72 + 16))
      {
        __break(1u);
      }

      v77 = *(v152 + 72);
      v134 = v74;
      v78 = v150;
      sub_25C7E92DC(v123 + v77 * v74, v150, &qword_27FC16080, v76);
      v154 = *(v78 + v127);
      v147 = *(v78 + v124);
      v79 = *v126;
      v141 = v126[1];
      v142 = v79;
      v80 = *v125;
      v139 = v125[1];
      v140 = v80;
      v81 = v153;
      v136 = v153[12];
      v138 = v153[16];
      v137 = (v73 + v153[24]);
      v82 = (v73 + v153[28]);
      v135 = v153[20];
      v83 = sub_25C82DFBC();
      v84 = *(v83 - 8);
      v85 = *(v84 + 32);
      v155 = v83;
      v85(v73, v78);
      v86 = sub_25C82DEAC();
      v87 = v76;
      v88 = *(v86 - 8);
      (*(v88 + 32))(v73 + v136, v78 + v128, v86);
      *(v73 + v138) = v154;
      *(v73 + v135) = v147;
      v89 = v141;
      v90 = v137;
      *v137 = v142;
      v90[1] = v89;
      v91 = v139;
      *v82 = v140;
      v82[1] = v91;
      v92 = v151;
      v93 = v87;
      sub_25C7E92DC(v73, v151, &qword_27FC16080, v87);
      v154 = v81[12];
      v94 = *(v92 + v81[16]);

      if (v94)
      {
        (*(v88 + 8))(v92 + v154, v86);
        (*(v84 + 8))(v92, v155);
        v28 = v149;
        if (!v149)
        {
          goto LABEL_67;
        }

        [v149 addModelInformationList_];

        v73 = v148;
        v76 = v87;
        sub_25C7E97F4(v148, &qword_27FC16080, v87);
        v30 = v143;
        v72 = v130;
      }

      else
      {
        sub_25C7E97F4(v73, &qword_27FC16080, v87);
        (*(v88 + 8))(v92 + v154, v86);
        (*(v84 + 8))(v92, v155);
        v28 = v149;
        v30 = v143;
        v72 = v130;
        v76 = v93;
      }

      v74 = v134 + 1;
    }

    while (v129 != v134 + 1);
  }

  v95 = sub_25C82E25C();
  v96 = qword_281559838;
  sub_25C82E00C(v95, &dword_25C7D2000, v96, "Sending pet report message", 26, 2, MEMORY[0x277D84F90]);

  if (!v28)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  v97 = [v28 dictionaryRepresentation];
  if (v97)
  {
    v98 = v97;
    v99 = sub_25C82E02C();
  }

  else
  {
    v99 = 0;
  }

  v100 = objc_opt_self();
  v158[0] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16310, &qword_25C830C10);
  v101 = sub_25C82E2EC();

  v158[0] = 0;
  v102 = [v100 dataWithJSONObject:v101 options:2 error:v158];
  swift_unknownObjectRelease();
  v103 = v158[0];
  if (!v102)
  {
    v121 = v103;

    sub_25C82DDAC();

    swift_willThrow();
    return;
  }

  v104 = sub_25C82DF0C();
  v106 = v105;

  sub_25C82E0DC();
  sub_25C82E0BC();
  if (!v107)
  {
    goto LABEL_69;
  }

  v108 = sub_25C82E07C();
  v109 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158[0] = v109;
  sub_25C7FCB68(v108, 0x7542746567726174, 0xEE004449656C646ELL, isUniquelyReferenced_nonNull_native);
  v111 = v158[0];
  v112 = sub_25C82E07C();

  v113 = swift_isUniquelyReferenced_nonNull_native();
  v158[0] = v111;
  sub_25C7FCB68(v112, 0x74726F706572, 0xE600000000000000, v113);
  v114 = v158[0];
  v115 = sub_25C82E25C();
  v116 = qword_281559838;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_25C830640;
  *(v117 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16318, &qword_25C830C18);
  *(v117 + 64) = sub_25C81874C();
  *(v117 + 32) = v114;
  v118 = v116;

  sub_25C82E00C(v115, &dword_25C7D2000, v118, "About to log CA event: %@", 25, 2, v117);

  v119 = sub_25C82E07C();
  sub_25C8187B0();
  v120 = sub_25C82E01C();

  AnalyticsSendEvent();
  sub_25C808E3C(v104, v106);

LABEL_7:
  v33 = sub_25C82E25C();
  v34 = qword_281559838;
  sub_25C82E00C(v33, &dword_25C7D2000, v34, "End generatePETReportAndLog", 27, 2, MEMORY[0x277D84F90]);
}