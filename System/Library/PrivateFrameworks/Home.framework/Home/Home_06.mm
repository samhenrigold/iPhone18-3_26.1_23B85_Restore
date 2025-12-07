uint64_t sub_20DA44BBC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_20DA73550(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_20DA455E4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20DA73550(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_20DA734C4(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v133) = sub_20DD64E54();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_20DD64E54() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D9E014C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_20D9E014C((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_20DA455E4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20DA73550(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_20DA734C4(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v109 = sub_20DD64E54();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_20DA455E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_20DD636C4();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
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

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
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

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v35) = sub_20DD64E54();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
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

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v22) = sub_20DD64E54();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_20DA45BD8(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_20DA45BD8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20DD636C4();
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

double sub_20DA45CBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844388, &qword_20DD95590) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8) + 48);
  v6 = *(a1 + v4);
  v7 = sub_20DD636C4();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;

  return result;
}

uint64_t sub_20DA45D84(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_20DD636C4();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v3[21] = *(v5 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA45F5C, v2, 0);
}

uint64_t sub_20DA45F5C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_20DA4688C(v0[8], v3);
  v4 = *(v2 + 48);
  v0[27] = v4;
  v0[28] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1);
  v6 = v0[26];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, v0[10] + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v0[19]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_20D9D76EC(v0[18], &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[18], v0[19]);
  }

  v10 = v0[19];
  v11 = v0[17];
  sub_20DA4688C(v0[9], v11);
  if (v4(v11, 1, v10) == 1)
  {
    v12 = v0[19];
    v13 = v0[17];
    sub_20DD63684();
    if (v4(v13, 1, v12) != 1)
    {
      sub_20D9D76EC(v0[17], &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v0[20] + 32))(v0[25], v0[17], v0[19]);
  }

  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  v21 = v0[13];
  v40 = v21;
  v39 = v0[10];
  v22 = sub_20DD65114();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = *(v18 + 16);
  v23(v17, v14, v20);
  v23(v16, v15, v20);
  sub_20DD650F4();

  v24 = sub_20DD650E4();
  v25 = *(v18 + 80);
  v26 = (v25 + 40) & ~v25;
  v27 = (v19 + v25 + v26) & ~v25;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v24;
  *(v28 + 3) = v29;
  *(v28 + 4) = v39;
  v30 = *(v18 + 32);
  v0[29] = v30;
  v0[30] = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v30(&v28[v26], v17, v20);
  v30(&v28[v27], v16, v20);
  v31 = &v28[(v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v31 = 200;
  v31[8] = 0;
  v32 = sub_20DA89464(0, 0, v40, &unk_20DD955A8, v28);
  v0[31] = v32;
  v33 = swift_task_alloc();
  v0[32] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  *v33 = v0;
  v33[1] = sub_20DA46328;
  v36 = v0[11];
  v35 = v0[12];
  v37 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v35, v32, v36, v34, v37);
}

uint64_t sub_20DA46328()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_20DA46750;
  }

  else
  {
    v4 = sub_20DA46454;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20DA46454()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v28 = *v4;
  (*(v0 + 232))(*(v0 + 176), &v4[*(*(v0 + 88) + 48)], v2);
  v6 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v5 + v6, v3);
  if (v1(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 128);

    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);
    sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
  }

  else
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 152);
    v15 = *(v0 + 120);
    sub_20D9D76EC(*(v0 + 128), &unk_27C843810, &qword_20DD93F00);
    sub_20DA4688C(v5 + v6, v15);
    result = v13(v15, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 120);
    v22 = sub_20DD63644();

    v23 = *(v20 + 8);
    v23(v18, v19);
    v23(v17, v19);
    v23(v21, v19);
    if ((v22 & 1) == 0)
    {
      v23(*(v0 + 176), *(v0 + 152));
      goto LABEL_7;
    }
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 112);
  (*(v0 + 232))(v26, *(v0 + 176), v24);
  (*(v25 + 56))(v26, 0, 1, v24);
  swift_beginAccess();
  sub_20DA469F4(v26, v5 + v6);
  swift_endAccess();
LABEL_7:

  v27 = *(v0 + 8);

  return v27(v28);
}

uint64_t sub_20DA46750()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[19];
  v3 = v0[20];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA4688C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA468FC(uint64_t a1)
{
  v4 = *(sub_20DD636C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA3D98C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20DA469F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA46A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA3F45C(a1, v4, v5, v6, v7);
}

void sub_20DA46B30(uint64_t a1)
{
  sub_20DA11C74(319, &qword_27C8445D0, &qword_27C844560, &qword_20DD95320);
  if (v1 <= 0x3F)
  {
    sub_20DA11C74(319, &qword_27C8445D8, &qword_27C844568, qword_20DD95328);
    if (v2 <= 0x3F)
    {
      sub_20DA474D8();
      if (v3 <= 0x3F)
      {
        sub_20DD636C4();
        if (v4 <= 0x3F)
        {
          sub_20DA47528(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of ActivityLogCoordinator.fetchEvents(startDate:endDate:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x188);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20D9D7010;

  return (v13)(a1, a2, a3, a4 & 1);
}

uint64_t dispatch thunk of ActivityLogCoordinator.fetchEventCount(startDate:endDate:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x190);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20D9D77BC;

  return (v13)(a1, a2, a3, a4 & 1);
}

uint64_t dispatch thunk of ActivityLogCoordinator.eventsExist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x198);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D9D7010;

  return v5();
}

uint64_t dispatch thunk of ActivityLogCoordinator.prefetch(eventsOlderThan:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1A0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DA473A0;

  return v7(a1);
}

uint64_t sub_20DA473A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_20DA474D8()
{
  if (!qword_27C8445E0)
  {
    v0 = sub_20DD64CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8445E0);
    }
  }
}

void sub_20DA47528(uint64_t a1)
{
  if (!qword_27C8445E8)
  {
    sub_20DD636C4();
    v1 = sub_20DD65494();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8445E8);
    }
  }
}

uint64_t sub_20DA47590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA3CB20(v2, v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA4765C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA4357C(a1, v4, v5, v6);
}

uint64_t sub_20DA47710(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20DD636C4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[8];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20D9D77C4;

  return sub_20DA3FD30(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t sub_20DA47868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_20DA478F4(uint64_t a1, uint64_t a2)
{
  v69 = sub_20DD636C4();
  v4 = *(v69 - 8);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v58 - v7;
  v8 = type metadata accessor for HFEvent(0);
  v71 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v58 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v59 = &v58 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v58 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v72 = *(a1 + 16);
  if (!v72)
  {

    return a2;
  }

  v29 = *(a2 + 16);
  if (!v29 || v29 == 1 && (v30 = (*(v71 + 80) + 32) & ~*(v71 + 80), sub_20DA1A828(a1 + v30, &v58 - v27), sub_20DA1A828(a2 + v30, v26), LOBYTE(v30) = MEMORY[0x20F325910](v28, v26), sub_20DA1A960(v26), sub_20DA1A960(v28), (v30 & 1) != 0))
  {

    return a1;
  }

  if (__OFADD__(v72, v29))
  {
    goto LABEL_42;
  }

  v58 = v15;
  v65 = a2;
  v31 = sub_20D9E0628(0, (v72 + v29) & ~((v72 + v29) >> 63), 0, MEMORY[0x277D84F90]);
  v32 = 0;
  v33 = 0;
  v77 = v31;
  v63 = (v4 + 8);
  v62 = a1;
  v64 = v29;
  v70 = v23;
  while (1)
  {
    if (v33 >= v29)
    {
      if (v32 < 0)
      {
        goto LABEL_43;
      }

      v52 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v53 = (2 * v72) | 1;

      v55 = a1 + v52;
      v56 = v32;
      goto LABEL_37;
    }

    if (v32 < 0)
    {
      break;
    }

    v34 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v35 = *(v71 + 72);
    sub_20DA1A828(a1 + v34 + v35 * v32, v23);
    if (v33 < 0)
    {
      goto LABEL_41;
    }

    v73 = v32;
    v74 = v33;
    v60 = v65 + v34;
    sub_20DA1A828(v65 + v34 + v35 * v33, v20);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v75, v76);
    v36 = v67;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v75);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v75, v76);
    v37 = v20;
    v38 = v68;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v75);
    v4 = sub_20DD63694();
    v39 = *v63;
    v40 = v38;
    v20 = v37;
    v41 = v69;
    (*v63)(v40, v69);
    v39(v36, v41);
    type metadata accessor for ComparisonResult(0);
    if (v4 == -1)
    {
      goto LABEL_23;
    }

    v23 = v70;
    if (v4 != 1)
    {
      if (v4)
      {
        goto LABEL_45;
      }

      sub_20DD65A64();
      _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
      v42 = sub_20DD65AA4();
      sub_20DD65A64();
      _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
      v43 = sub_20DD65AA4();
      if (v42 >= v43)
      {
        if (v43 >= v42)
        {
          v23 = v70;
          sub_20DA1A828(v70, v59);
          v49 = v31[2];
          v48 = v31[3];
          v4 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            v31 = sub_20D9E0628((v48 > 1), v49 + 1, 1, v31);
          }

          a1 = v62;
          v29 = v64;
          v31[2] = v4;
          sub_20DA1A8FC(v59, v31 + v34 + v49 * v35);
          v77 = v31;
          if (MEMORY[0x20F325910](v23, v37))
          {
            sub_20DA1A960(v37);
            sub_20DA1A960(v23);
          }

          else
          {
            sub_20DA1A828(v37, v58);
            v51 = v31[2];
            v50 = v31[3];
            v4 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v31 = sub_20D9E0628((v50 > 1), v51 + 1, 1, v31);
            }

            sub_20DA1A960(v37);
            sub_20DA1A960(v23);
            v31[2] = v4;
            sub_20DA1A8FC(v58, v31 + v34 + v51 * v35);
            v77 = v31;
          }

          v32 = v73 + 1;
          v33 = v74 + 1;
          goto LABEL_11;
        }

LABEL_23:
        sub_20DA1A828(v37, v61);
        v47 = v31[2];
        v46 = v31[3];
        v4 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v31 = sub_20D9E0628((v46 > 1), v47 + 1, 1, v31);
        }

        a1 = v62;
        v23 = v70;
        sub_20DA1A960(v37);
        sub_20DA1A960(v23);
        v31[2] = v4;
        sub_20DA1A8FC(v61, v31 + v34 + v47 * v35);
        v77 = v31;
        v32 = v73;
        v33 = v74 + 1;
        v29 = v64;
        goto LABEL_11;
      }
    }

    sub_20DA1A828(v23, v66);
    v45 = v31[2];
    v44 = v31[3];
    v4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v31 = sub_20D9E0628((v44 > 1), v45 + 1, 1, v31);
    }

    a1 = v62;
    v29 = v64;
    sub_20DA1A960(v37);
    sub_20DA1A960(v23);
    v31[2] = v4;
    sub_20DA1A8FC(v66, v31 + v34 + v45 * v35);
    v77 = v31;
    v33 = v74;
    v32 = v73 + 1;
LABEL_11:
    if (v32 >= v72)
    {
      if (v33 >= v29)
      {
        return v77;
      }

      if (v33 < 0)
      {
        goto LABEL_44;
      }

      v53 = (2 * v29) | 1;

      v55 = v60;
      v56 = v33;
LABEL_37:
      sub_20DA13008(v54, v55, v56, v53);
      return v77;
    }
  }

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
  v75[0] = v4;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

uint64_t sub_20DA48074(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v44 = sub_20DD636C4();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844608, &unk_20DD95580);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v45 = a1;
  v46 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v47 = v16;
  v48 = 0;
  v49 = v19 & v17;
  v50 = a2;
  v51 = a3;
  v20 = (v9 + 32);
  v42 = (v9 + 8);
  v43 = v9;

  v41 = a3;

  while (1)
  {
    sub_20DA2A39C(v14);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8);
    if ((*(*(v23 - 8) + 48))(v14, 1, v23) == 1)
    {
      sub_20D9C51CC(v45);
    }

    v24 = *(v23 + 48);
    v25 = *v20;
    (*v20)(v11, v14, v44);
    v26 = *&v14[v24];
    v27 = *v52;
    v29 = sub_20D9CB72C(v11);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_20D9D34F0();
      }
    }

    else
    {
      sub_20D9CF1B0(v32, a4 & 1);
      v34 = sub_20D9CB72C(v11);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {

      v22 = sub_20DA478F4(v21, v26);

      (*v42)(v11, v44);
      *(v36[7] + 8 * v29) = v22;

      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v25((v36[6] + *(v43 + 72) * v29), v11, v44);
      *(v36[7] + 8 * v29) = v26;
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA483E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_81Tm()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 9, v3 | 7);
}

double sub_20DA48530()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20DA48578(uint64_t a1)
{
  v3 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_20DA48634(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844638, &unk_20DD955B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([a1 isKindOfClass_])
  {
    objc_opt_self();
    v6 = [swift_dynamicCastObjCClassUnconditional() sourceItem];
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {
    v11 = v7;
LABEL_17:

    MEMORY[0x28223BE20](v24);
    sub_20DD63DB4();
    v23 = 1;
    return v23 & 1;
  }

  v9 = v8;
  if ([a2 isKindOfClass_])
  {
    objc_opt_self();
    v10 = [swift_dynamicCastObjCClassUnconditional() sourceItem];
  }

  else
  {
    v10 = a2;
  }

  v11 = v10;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (!v12)
  {

    goto LABEL_17;
  }

  v13 = v12;
  v14 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v9, v12);
  if (v14 == 2 && (v14 = sub_20DA4BFE8(v9, v13), v14 == 2))
  {
    v15 = [v9 uuidString];
    v16 = sub_20DD64EB4();
    v18 = v17;

    v19 = [v13 uuidString];
    v20 = sub_20DD64EB4();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_20DD65974();
    }
  }

  else
  {
    v23 = v14;
  }

  return v23 & 1;
}

uint64_t sub_20DA4891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0xA8))();
  if (v9 != 2)
  {
    return v9 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {
    v9 = 0;
    return v9 & 1;
  }

  return sub_20DD65974();
}

uint64_t sub_20DA489E8()
{
  v1 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

char *sub_20DA48A30(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_20DD655B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_16:
    v24 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
    swift_beginAccess();
    *(v2 + v24) = v5;
  }

  v26 = MEMORY[0x277D84F90];
  result = sub_20DA4AF84(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v25 = v1;
    v5 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x20F326680](v7, a1);
        v8 = [swift_unknownObjectRetain() uuidString];
        v9 = sub_20DD64EB4();
        v11 = v10;
        swift_unknownObjectRelease_n();

        v13 = *(v26 + 16);
        v12 = *(v26 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20DA4AF84((v12 > 1), v13 + 1, 1);
        }

        ++v7;
        *(v26 + 16) = v13 + 1;
        v14 = v26 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v4 != v7);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v17 = [v16 uuidString];
        v18 = sub_20DD64EB4();
        v20 = v19;

        v22 = *(v26 + 16);
        v21 = *(v26 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_20DA4AF84((v21 > 1), v22 + 1, 1);
        }

        *(v26 + 16) = v22 + 1;
        v23 = v26 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        ++v15;
        --v4;
      }

      while (v4);
    }

    v2 = v25;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA48C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  v13 = 0;
  if (v11)
  {
    v14 = (v10 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a1 && *v14 == a2;
      if (v15 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 2;
      v12 = v11 == v13;
      if (v11 == v13)
      {
        v13 = 0;
        break;
      }
    }
  }

  v16 = *(v10 + 16);
  if (!v16)
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
  }

  v17 = 0;
  for (i = (v10 + 40); ; i += 2)
  {
    v19 = *(i - 1) == a3 && *i == a4;
    if (v19 || (sub_20DD65974() & 1) != 0)
    {
      break;
    }

    if (v16 == ++v17)
    {
      return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
    }
  }

  if (!v12)
  {
    return v13 < v17;
  }

  else
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
  }
}

uint64_t sub_20DA48DA0(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v27 = a1;
  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  v13 = 0;
  if (v11)
  {
    v14 = (v6 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == v8 && *v14 == v10;
      if (v15 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 2;
      v12 = v11 == v13;
      if (v11 == v13)
      {
        v13 = 0;
        break;
      }
    }
  }

  v16 = *(v2 + v5);

  v17 = a2;
  v18 = [a2 uuidString];
  v19 = sub_20DD64EB4();
  v21 = v20;

  v22 = *(v16 + 16);
  if (!v22)
  {
LABEL_18:

    return (*((*MEMORY[0x277D85000] & *v2) + 0xB8))(v27, v17);
  }

  v23 = 0;
  v24 = (v16 + 40);
  while (1)
  {
    v25 = *(v24 - 1) == v19 && *v24 == v21;
    if (v25 || (sub_20DD65974() & 1) != 0)
    {
      break;
    }

    ++v23;
    v24 += 2;
    if (v22 == v23)
    {
      goto LABEL_18;
    }
  }

  if (v12)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0xB8))(v27, v17);
  }

  return v13 < v23;
}

void sub_20DA48F98(uint64_t a1)
{
  if ([v1 applicationDataContainer])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() sharedDispatcher];
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      v20 = sub_20DA4C4D4;
      v21 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_20DA2E46C;
      v19 = &block_descriptor_22;
      v7 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_20DA4C2CC(a1, &aBlock);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844660, &qword_20DD95620);
        if (swift_dynamicCast())
        {
          v8 = v15;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        sub_20D9D76EC(&aBlock, &unk_27C843A80, &qword_20DD94100);
        v8 = 0;
      }

      [v5 dispatchHomeObserverMessage:v7 sender:v8];
      swift_unknownObjectRelease();
      _Block_release(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([v1 applicationDataContainer])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() sharedDispatcher];
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v20 = sub_20DA4C4CC;
      v21 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_20DA2E46C;
      v19 = &block_descriptor_16;
      v13 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_20DA4C2CC(a1, &aBlock);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844660, &qword_20DD95620);
        if (swift_dynamicCast())
        {
          v14 = v15;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        sub_20D9D76EC(&aBlock, &unk_27C843A80, &qword_20DD94100);
        v14 = 0;
      }

      [v11 dispatchHomeObserverMessage:v13 sender:v14];
      swift_unknownObjectRelease();
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20DA49324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8446A8, &qword_20DD95688);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20DD644A4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_20DA4AFA4(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v4;
    v23 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_20D9FF4D0(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843970, &qword_20DD95690);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v23)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v24;
      (*v14)(v24, v4, v5);
      v15(v9, v16, v5);
      v26 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_20DA4AFA4((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 40;
      --v11;
      v9 = v17;
      v4 = v22;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_20D9D76EC(v4, &unk_27C8446A8, &qword_20DD95688);
    return 0;
  }

  return v12;
}

uint64_t sub_20DA495F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  sub_20DA4AFE8(0, v2, 0);
  v3 = v15;
  if (v2)
  {
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (!v6)
      {
        break;
      }

      swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      v11 = v5;
      if (v9 >= v10 >> 1)
      {
        v13 = v11;
        sub_20DA4AFE8((v10 > 1), v9 + 1, 1);
        v11 = v13;
      }

      *(v15 + 16) = v9 + 1;
      v12 = v15 + 16 * v9;
      *(v12 + 32) = v11;
      *(v12 + 40) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_20DA49700(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20DD65774();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20D9D7174(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844688, &qword_20DD95670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20DD65754();
    sub_20DD65784();
    sub_20DD65794();
    sub_20DD65764();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_20DA49810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id ReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_20DD64E74();

  v7 = [v5 initWithApplicationDataContainer:a1 category:v6];
  swift_unknownObjectRelease();

  return v7;
}

id ReorderableItemList.init(applicationDataContainer:category:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = 0xD000000000000019;
  v17 = 0x800000020DD99250;
  MEMORY[0x20F325E90](a2, a3);
  v6 = &v3[OBJC_IVAR___HFReorderableItemList_applicationDataKey];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x800000020DD99250;
  v7 = [a1 applicationData];

  v8 = sub_20DD64E74();

  v9 = [v7 objectForKeyedSubscript_];

  if (v9 && (v16 = v9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v14;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  *&v4[OBJC_IVAR___HFReorderableItemList_sortedIdentifiers] = v10;
  v11 = sub_20DD64E74();

  v15.receiver = v4;
  v15.super_class = type metadata accessor for ReorderableItemList();
  v12 = objc_msgSendSuper2(&v15, sel_initWithApplicationDataContainer_category_, a1, v11);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_20DA49AFC(void *a1, void *a2, void *a3)
{
  sub_20DD65704();
  MEMORY[0x20F325E90](0xD00000000000005BLL, 0x800000020DD99350);
  v6 = [a1 description];
  v7 = sub_20DD64EB4();
  v9 = v8;

  MEMORY[0x20F325E90](v7, v9);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  v10 = [a2 description];
  v11 = sub_20DD64EB4();
  v13 = v12;

  MEMORY[0x20F325E90](v11, v13);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  v14 = [a3 description];
  v15 = sub_20DD64EB4();
  v17 = v16;

  MEMORY[0x20F325E90](v15, v17);

  return 0;
}

id sub_20DA49EBC(uint64_t a1)
{
  v3 = [v1 applicationDataContainer];
  if (v3 && (v4 = [v3 applicationData], swift_unknownObjectRelease(), v5 = sub_20DD64E74(), v6 = objc_msgSend(v4, sel_objectForKeyedSubscript_, v5), v4, v5, v6) && (*&aBlock = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0), (swift_dynamicCast() & 1) != 0))
  {
    v7 = *&v47[0];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844648, &qword_20DD955D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v9;
  v10 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v11 = *(*&v1[v10] + 16);
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v11;
  sub_20D9D4C24(inited);
  swift_setDeallocating();
  sub_20D9D76EC(inited + 32, &unk_27C844030, &qword_20DD93C68);
  LOBYTE(inited) = sub_20DA4A7A8(v7, *&v1[v10]);

  if (inited)
  {
    if (*(*&v1[v10] + 16))
    {
      v12 = sub_20DD64EB4();
      v14 = v13;
      v15 = sub_20DD64EB4();
      v50 = MEMORY[0x277D837D0];
      *&aBlock = v15;
      *(&aBlock + 1) = v16;
      sub_20D9D77C8(&aBlock, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D01B0(v47, v12, v14, isUniquelyReferenced_nonNull_native);

      v18 = objc_opt_self();
      v19 = sub_20DD64DB4();

      [v18 sendEvent:39 withData:v19];
    }

    else
    {
    }

    v46 = [objc_opt_self() futureWithNoResult];

    return v46;
  }

  else
  {
    v20 = [v1 applicationDataContainer];
    if (v20)
    {
      v21 = [v20 applicationData];
      swift_unknownObjectRelease();

      sub_20DA0B794(v22);

      v23 = objc_allocWithZone(MEMORY[0x277CBEA60]);
      v24 = sub_20DD64FB4();

      v25 = [v23 initWithArray_];

      v26 = sub_20DD64E74();
      [v21 setObject:v25 forKeyedSubscript:v26];
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = sub_20DA4C2AC;
    v52 = v27;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v49 = sub_20DA4A9B0;
    v50 = &block_descriptor_6;
    v28 = _Block_copy(&aBlock);
    v29 = objc_opt_self();

    v30 = [v29 futureWithErrorOnlyHandlerAdapterBlock_];
    _Block_release(v28);

    sub_20DA4C2CC(a1, v47);
    v31 = swift_allocObject();
    v32 = v47[1];
    *(v31 + 24) = v47[0];
    *(v31 + 16) = v1;
    *(v31 + 40) = v32;
    v51 = sub_20DA4C33C;
    v52 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v49 = sub_20DA055A4;
    v50 = &block_descriptor_6;
    v33 = _Block_copy(&aBlock);
    v34 = v1;

    v35 = [v30 flatMap_];
    _Block_release(v33);

    v36 = sub_20DD64EB4();
    v38 = v37;
    v39 = sub_20DD64EB4();
    v41 = v40;
    v50 = MEMORY[0x277D837D0];
    *&aBlock = v36;
    *(&aBlock + 1) = v38;
    sub_20D9D77C8(&aBlock, v47);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D01B0(v47, v39, v41, v42);

    v43 = objc_opt_self();
    v44 = sub_20DD64DB4();

    [v43 sendEvent:39 withData:v44];

    return v30;
  }
}

uint64_t sub_20DA4A558(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F326680](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x20F326680](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_20DD65454();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_20DD65454();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_20DD655B4();
  }

  result = sub_20DD655B4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_20DA4A7A8(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_20DD65974() & 1) == 0)
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

void sub_20DA4A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 applicationDataContainer];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 applicationDataContainer];

      if (v9)
      {
        v10 = [v9 applicationData];
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
      }

      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20DA899CC;
      aBlock[3] = &block_descriptor_28;
      v11 = _Block_copy(aBlock);

      [v8 hf:v10 updateApplicationData:1 handleError:v11 completionHandler:?];
      swift_unknownObjectRelease();

      _Block_release(v11);
      v6 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_20DA4A9B0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_20DA4C544, v4);
}

void sub_20DA4AA44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_20DD63494();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_20DA4AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20DA48F98(a3);
  v4 = [objc_opt_self() futureWithResult_];

  return v4;
}

uint64_t sub_20DA4AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v10 + 40);
    do
    {
      if (*(v13 - 1) == a1 && *v13 == a2)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      v16 += 2;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      return 0;
    }
  }

  else
  {
LABEL_17:
    if (!v12)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_20DA4ACA8(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v6 + 40);
    do
    {
      if (*(v13 - 1) == v8 && *v13 == v10)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v2 + v5);

  v16 = [a2 uuidString];
  v17 = sub_20DD64EB4();
  v19 = v18;

  v20 = *(v15 + 16);
  if (v20)
  {
    v21 = (v15 + 40);
    while (1)
    {
      v22 = *(v21 - 1) == v17 && *v21 == v19;
      if (v22 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      v21 += 2;
      if (!--v20)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      return 0;
    }
  }

  else
  {
LABEL_17:

    if (!v12)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_20DA4AE4C(void *a1, void *a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    swift_unknownObjectRetain();
    v5 = [a2 home];
    if (v5)
    {
      v6 = v5;
      [a1 home:v5 didUpdateApplicationDataForRoom:a2];

      return swift_unknownObjectRelease();
    }

    else
    {
      result = swift_unknownObjectRelease();
      __break(1u);
    }
  }

  return result;
}

id ReorderableItemList.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReorderableItemList();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_20DA4AF84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4B150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4AFA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &unk_27C8446B8, &unk_20DD95698, MEMORY[0x277D16970]);
  *v3 = result;
  return result;
}

void *sub_20DA4AFE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4B398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4B4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4B600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20DA4B048(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4B818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B068(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &qword_27C844658, &qword_20DD95608, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_20DA4B0AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BA2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B0CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B0EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BCC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B10C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &qword_27C844668, &qword_20DD95628, MEMORY[0x277D16408]);
  *v3 = result;
  return result;
}

char *sub_20DA4B150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B25C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
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
    sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B4CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438C8, &qword_20DD93F78);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B600(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844698, &qword_20DD95678);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680) - 8);
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

char *sub_20DA4B818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844680, &unk_20DD95660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20DA4B928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F8, &unk_20DD95610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_20DA4BA2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844670, &unk_20DD95630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845270, &unk_20DD96CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4BB7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844648, &qword_20DD955D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844030, &qword_20DD93C68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4BCC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8452C0, &qword_20DD96DA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4BE0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_20DA4BFE8(void *a1, void *a2)
{
  v3 = [a1 latestResults];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_20DD64DC4();

  v6 = sub_20DD64EB4();
  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v8 = sub_20D9CB170(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  sub_20D9D7174(*(v5 + 56) + 32 * v8, v29);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v27;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v28;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  v14 = [a2 latestResults];
  if (v14)
  {
    v15 = v14;
    v16 = sub_20DD64DC4();

    v17 = sub_20DD64EB4();
    if (*(v16 + 16))
    {
      v19 = sub_20D9CB170(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_20D9D7174(*(v16 + 56) + 32 * v19, v29);

        v22 = swift_dynamicCast();
        if (v22)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }

        if (!v13)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v23 = 0;
  v24 = 0;
  if (!v13)
  {
LABEL_23:
    if (!v24)
    {
      return 2;
    }

    return 0;
  }

LABEL_28:
  if (v24)
  {
    if (v12 == v23 && v13 == v24 || (sub_20DD65974() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v26 = sub_20DD65974();

      return v26 & 1;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA4C2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_20DA4C4D4(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 homeDidUpdateApplicationData_];
  }

  return result;
}

void ItemSelectionController.itemsToUpdate(with:)()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE8F4(v1);
  }
}

uint64_t SingleItemSelectionController.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_20DA4C63C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v4 = a1;
  sub_20D9EE8F4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = v6;
  if (Strong)
  {
    sub_20D9E23C4(&v8, Strong);

    return v9;
  }

  return v6;
}

void sub_20DA4C720(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong isEqual_], v3, v4))
  {
    swift_unknownObjectWeakAssign();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20DD940A0;
    *(inited + 32) = a1;
    v6 = a1;
    sub_20D9EE8F4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EE8F4(MEMORY[0x277D84F90]);
    }
  }
}

id sub_20DA4C83C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong isEqual_];

  return v4;
}

uint64_t SingleItemSelectionController.__deallocating_deinit()
{
  MEMORY[0x20F327E10](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MultipleItemSelectionController.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() weakObjectsHashTable];
  return v0;
}

uint64_t sub_20DA4C9EC(void *a1, SEL *a2)
{
  [*(v2 + 16) *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_20D9EE8F4(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v7;
}

uint64_t MultipleItemSelectionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20DA4CB5C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  [*(v4 + 16) *a4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v7 = a1;
  sub_20D9EE8F4(inited);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

void sub_20DA4CC0C()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE8F4(v1);
  }
}

uint64_t AccessoryRepresentableSelectionController.select(item:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20DA4CD7C(a1, a2, a3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(a3 + 24))();

    swift_unknownObjectRelease();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v9;
}

id sub_20DA4CD7C(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446C8, &qword_20DD95860);
  if (swift_dynamicCast())
  {
    sub_20D9C51D4(v12, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = sub_20DA4CD7C(v8, a2, a3);

    __swift_destroy_boxed_opaque_existential_0(v15);
    return v9;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_20DA4D694(v12);

    return v11;
  }
}

uint64_t AccessoryRepresentableSelectionController.deselect(item:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20DA4CD7C(a1, a2, a3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(a3 + 32))();

    swift_unknownObjectRelease();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v9;
}

Swift::Bool __swiftcall AccessoryRepresentableSelectionController.isItemSelected(_:)(HFItem *a1)
{
  v3 = v2;
  v4 = sub_20DA4CD7C(a1, v1, v2);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(v3 + 16))();

    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

void AccessoryRepresentableSelectionController.selectionBehavior(for:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_20DA4CD7C(a1, a2, a3);
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = [v8 accessoryRepresentableObject];
    (*(a3 + 40))();

    swift_unknownObjectRelease();
  }

  else
  {

    *a4 = 1;
  }
}

uint64_t _s4Home21ItemSelectionBehaviorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
      sub_20DA4D6FC(v3);
      sub_20DA4D6FC(v2);
      v4 = sub_20DD65454();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_20DA4D6FC(*a2);
    sub_20DA4D6FC(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_20DA4D70C(v2);
  sub_20DA4D70C(v3);
  return v4 & 1;
}

id _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0()
{
  v0 = [objc_opt_self() futureWithNoResult];
  v1 = [v0 asGeneric];

  return v1;
}

uint64_t get_enum_tag_for_layout_string_4Home21ItemSelectionBehaviorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DA4D360(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DA4D3B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_20DA4D410(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_20DA4D694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446D0, &qword_20DD95868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20DA4D6FC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_20DA4D70C(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_20DA4D74C()
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  qword_27C84C658 = result;
  return result;
}

unint64_t sub_20DA4D7E0()
{
  result = qword_280E01EC0;
  if (!qword_280E01EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01EC0);
  }

  return result;
}

uint64_t sub_20DA4D82C()
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  qword_280E03EA8 = result;
  return result;
}

uint64_t sub_20DA4D8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  *a4 = result;
  return result;
}

uint64_t HFEvent.stateDescription.getter()
{
  v1 = sub_20DD649D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D17970] && ((v5 = sub_20DA50684(), v6) || (v5 = sub_20DA51270(), v7)))
  {
    v8 = v5;
  }

  else
  {
    v9 = sub_20DD64E74();
    v10 = HFLocalizedString(v9);

    v8 = sub_20DD64EB4();
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t HFEvent.displayName.getter()
{
  v1 = v0;
  v2 = sub_20DD64784();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD649D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(v6 + 16);
  v26 = v1;
  v12(&v24 - v10, v1, v5);
  v13 = *(v6 + 88);
  v27 = v11;
  v14 = v13(v11, v5);
  if (v14 != *MEMORY[0x277D17970])
  {
    v20 = sub_20DD64E74();
    v21 = HFLocalizedString(v20);
LABEL_8:
    v22 = v21;

    v19 = sub_20DD64EB4();
    goto LABEL_9;
  }

  v15 = v14;
  v12(v9, v26, v5);
  if (v13(v9, v5) != v15)
  {
    (*(v6 + 8))(v9, v5);
    v20 = sub_20DD64E74();
    v21 = HFLocalizedString(v20);
    goto LABEL_8;
  }

  (*(v6 + 96))(v9, v5);
  v16 = v25;
  (*(v25 + 32))(v4, v9, v2);
  sub_20DD64774();
  (*(v16 + 8))(v4, v2);
  sub_20D9C51D4(&v28, v29);
  v17 = sub_20DA4DE04();
  if (!v18)
  {
    v17 = sub_20DA504BC(v29);
  }

  v19 = v17;
  __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_9:
  (*(v6 + 8))(v27, v5);
  return v19;
}

uint64_t sub_20DA4DE04()
{
  v229 = sub_20DD648C4();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v225 = &v198 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_20DD648E4();
  v226 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v224 = &v198 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20DD648F4();
  v240 = *(v2 - 8);
  v241 = v2;
  MEMORY[0x28223BE20](v2);
  v239 = &v198 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_20DD64914();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_20DD64934();
  v247 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v246 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_20DD64854();
  v205 = *(v204 - 8);
  v6 = MEMORY[0x28223BE20](v204);
  v202 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v203 = &v198 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v200 = &v198 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v201 = &v198 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v198 = &v198 - v15;
  MEMORY[0x28223BE20](v14);
  v199 = &v198 - v16;
  v218 = sub_20DD64814();
  v219 = *(v218 - 8);
  v17 = MEMORY[0x28223BE20](v218);
  v215 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v216 = &v198 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v210 = &v198 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v211 = &v198 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v206 = &v198 - v26;
  MEMORY[0x28223BE20](v25);
  v207 = &v198 - v27;
  v243 = sub_20DD64834();
  v233 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v232 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_20DD64844();
  v254 = *(v249 - 8);
  v29 = MEMORY[0x28223BE20](v249);
  v223 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v222 = &v198 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v235 = &v198 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v245 = &v198 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v214 = &v198 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v213 = &v198 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v221 = &v198 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v231 = &v198 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v209 = &v198 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v208 = &v198 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v212 = &v198 - v50;
  MEMORY[0x28223BE20](v49);
  v217 = &v198 - v51;
  v52 = sub_20DD64864();
  v53 = *(v52 - 8);
  v252 = v52;
  v253 = v53;
  v54 = MEMORY[0x28223BE20](v52);
  v248 = &v198 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v244 = &v198 - v57;
  MEMORY[0x28223BE20](v56);
  v230 = &v198 - v58;
  v251 = sub_20DD64804();
  v255 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v60 = &v198 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_20DD64894();
  v250 = *(v256 - 1);
  v61 = MEMORY[0x28223BE20](v256);
  v63 = &v198 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61);
  v234 = &v198 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v220 = &v198 - v67;
  MEMORY[0x28223BE20](v66);
  v69 = &v198 - v68;
  v70 = sub_20DD648B4();
  v71 = *(v70 - 8);
  v257 = v70;
  v258 = v71;
  MEMORY[0x28223BE20](v70);
  v259 = &v198 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20DD649D4();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v76 = &v198 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20DD64784();
  v78 = *(v77 - 8);
  v79 = MEMORY[0x28223BE20](v77);
  v81 = &v198 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v83 = &v198 - v82;
  (*(v74 + 16))(v76, v260, v73);
  if ((*(v74 + 88))(v76, v73) != *MEMORY[0x277D17970])
  {
    (*(v74 + 8))(v76, v73);
    return 0;
  }

  (*(v74 + 96))(v76, v73);
  (*(v78 + 32))(v83, v76, v77);
  (*(v78 + 16))(v81, v83, v77);
  v84 = (*(v78 + 88))(v81, v77);
  v85 = v77;
  if (v84 == *MEMORY[0x277D17770])
  {
    v260 = v83;
    (*(v78 + 96))(v81, v77);
    v86 = v259;
    (*(v258 + 32))(v259, v81, v257);
    sub_20DD648A4();
    sub_20DD64874();
    v87 = *(v250 + 8);
    v88 = v69;
    v89 = v256;
    v87(v88, v256);
    v90 = v251;
    v91 = (*(v255 + 11))(v60, v251);
    if (v91 == *MEMORY[0x277D17830])
    {
      sub_20DD648A4();
      v92 = v248;
      sub_20DD64884();
      v87(v63, v89);
      v94 = v252;
      v93 = v253;
      v95 = (*(v253 + 88))(v92, v252);
      if (v95 == *MEMORY[0x277D17898])
      {
        (*(v93 + 96))(v92, v94);
        v96 = v254;
        v97 = v245;
        v98 = v92;
        v99 = v249;
        (*(v254 + 32))(v245, v98, v249);
        v100 = v235;
        (*(v96 + 16))(v235, v97, v99);
        v101 = (*(v96 + 88))(v100, v99);
        if (v101 == *MEMORY[0x277D17868])
        {
          (*(v96 + 96))(v100, v99);
          v102 = v258;
          v103 = v233;
          v104 = *(v233 + 32);
          v105 = v232;
          v256 = v77;
          v106 = v243;
          v104(v232, v100, v243);
          v255 = "yHistory_EveryoneWentAway";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_20DD93A70;
          v108 = sub_20DD64824();
          v110 = v109;
          *(v107 + 56) = MEMORY[0x277D837D0];
          *(v107 + 64) = sub_20DA52BE8();
          *(v107 + 32) = v108;
          *(v107 + 40) = v110;
          v111 = sub_20DD64F14();

          (*(v103 + 8))(v105, v106);
          (*(v96 + 8))(v245, v99);
          (*(v102 + 8))(v259, v257);
LABEL_7:
          (*(v78 + 8))(v260, v256);
          return v111;
        }

        goto LABEL_31;
      }

      v152 = v254;
      if (v95 == *MEMORY[0x277D17848])
      {
        v153 = v248;
        (*(v93 + 96))(v248, v94);
        v154 = v222;
        v155 = v249;
        (*(v152 + 32))(v222, v153, v249);
        v156 = v223;
        (*(v152 + 16))(v223, v154, v155);
        v157 = (*(v152 + 88))(v156, v155);
        if (v157 == *MEMORY[0x277D17868])
        {
          v158 = sub_20DD64F04();
          v159 = *(v152 + 8);
          v159(v154, v155);
          (*(v258 + 8))(v259, v257);
          (*(v78 + 8))(v260, v77);
          v159(v156, v155);
          return v158;
        }

        if (v157 == *MEMORY[0x277D17860])
        {
          v158 = sub_20DD64F04();
          (*(v152 + 8))(v154, v249);
          goto LABEL_70;
        }

        v188 = *(v152 + 8);
        v189 = v249;
        v188(v154, v249);
        (*(v258 + 8))(v259, v257);
        (*(v78 + 8))(v260, v77);
        v188(v156, v189);
        return 0;
      }

      if (v95 == *MEMORY[0x277D17890])
      {
        v165 = v248;
        (*(v93 + 96))(v248, v94);
        v166 = v219;
        v167 = v216;
        v168 = v218;
        (*(v219 + 32))(v216, v165, v218);
        v169 = v215;
        (*(v166 + 16))(v215, v167, v168);
        v170 = (*(v166 + 88))(v169, v168);
        if (v170 == *MEMORY[0x277D17858] || v170 == *MEMORY[0x277D17850])
        {
LABEL_60:
          v158 = sub_20DD64F04();
          (*(v166 + 8))(v167, v168);
          (*(v258 + 8))(v86, v257);
LABEL_71:
          (*(v78 + 8))(v260, v77);
          return v158;
        }

        goto LABEL_87;
      }

      v178 = v248;
      if (v95 == *MEMORY[0x277D178A0] || v95 == *MEMORY[0x277D17888])
      {
        v158 = sub_20DD64F04();
        (*(v258 + 8))(v86, v257);
LABEL_85:
        (*(v78 + 8))(v260, v77);
        (*(v93 + 8))(v178, v94);
        return v158;
      }

      if (v95 == *MEMORY[0x277D17870])
      {
        (*(v93 + 96))(v248, v94);
        v166 = v205;
        v167 = v203;
        v192 = v178;
        v168 = v204;
        (*(v205 + 32))(v203, v192, v204);
        v169 = v202;
        (*(v166 + 16))(v202, v167, v168);
        v193 = (*(v166 + 88))(v169, v168);
        if (v193 == *MEMORY[0x277D17878] || v193 == *MEMORY[0x277D17880])
        {
          goto LABEL_60;
        }

LABEL_87:
        v195 = *(v166 + 8);
        v195(v167, v168);
        (*(v258 + 8))(v86, v257);
LABEL_96:
        (*(v78 + 8))(v260, v77);
        v195(v169, v168);
        return 0;
      }

      (*(v258 + 8))(v86, v257);
LABEL_93:
      (*(v78 + 8))(v260, v77);
      (*(v93 + 8))(v178, v94);
      return 0;
    }

    v94 = v252;
    if (v91 != *MEMORY[0x277D17838] && v91 != *MEMORY[0x277D17840])
    {
      v93 = v253;
      v115 = v254;
      if (v91 != *MEMORY[0x277D17828])
      {
        (*(v258 + 8))(v259, v257);
        (*(v78 + 8))(v260, v77);
        (*(v255 + 1))(v60, v90);
        return 0;
      }

      v116 = v220;
      sub_20DD648A4();
      v117 = v230;
      sub_20DD64884();
      v87(v116, v256);
      v118 = (*(v93 + 88))(v117, v94);
      if (v118 == *MEMORY[0x277D17898])
      {
        (*(v93 + 96))(v117, v94);
        v96 = v115;
        v97 = v217;
        v119 = v117;
        v99 = v249;
        (*(v115 + 32))(v217, v119, v249);
        v100 = v212;
        (*(v115 + 16))(v212, v97, v99);
        v101 = (*(v115 + 88))(v100, v99);
        if (v101 == *MEMORY[0x277D17868])
        {
          (*(v115 + 96))(v100, v99);
          v120 = v233;
          v121 = v232;
          v122 = v243;
          (*(v233 + 32))(v232, v100, v243);
          v256 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_20DD93A70;
          v124 = sub_20DD64824();
          v126 = v125;
          *(v123 + 56) = MEMORY[0x277D837D0];
          *(v123 + 64) = sub_20DA52BE8();
          *(v123 + 32) = v124;
          *(v123 + 40) = v126;
          v111 = sub_20DD64F14();

          (*(v120 + 8))(v121, v122);
          (*(v96 + 8))(v217, v99);
          (*(v258 + 8))(v259, v257);
          goto LABEL_7;
        }

        goto LABEL_31;
      }

      v179 = v249;
      if (v118 == *MEMORY[0x277D17848])
      {
        v180 = v230;
        (*(v93 + 96))(v230, v94);
        v181 = v208;
        (*(v115 + 32))(v208, v180, v179);
        v182 = v209;
        (*(v115 + 16))(v209, v181, v179);
        v183 = (*(v115 + 88))(v182, v179);
        if (v183 == *MEMORY[0x277D17868])
        {
          v158 = sub_20DD64F04();
          v184 = *(v115 + 8);
          v184(v181, v179);
          (*(v258 + 8))(v259, v257);
          (*(v78 + 8))(v260, v77);
          v184(v182, v179);
          return v158;
        }

        if (v183 == *MEMORY[0x277D17860])
        {
          v158 = sub_20DD64F04();
          (*(v115 + 8))(v181, v179);
          goto LABEL_70;
        }

        v194 = *(v115 + 8);
        v194(v181, v179);
        (*(v258 + 8))(v259, v257);
        (*(v78 + 8))(v260, v77);
        v194(v182, v179);
        return 0;
      }

      if (v118 == *MEMORY[0x277D17890])
      {
        v190 = v230;
        (*(v93 + 96))(v230, v94);
        v174 = v219;
        v175 = v207;
        v168 = v218;
        (*(v219 + 32))(v207, v190, v218);
        v176 = *(v174 + 16);
        v177 = &v238;
        goto LABEL_67;
      }

      v178 = v230;
      if (v118 == *MEMORY[0x277D178A0] || v118 == *MEMORY[0x277D17888])
      {
        goto LABEL_84;
      }

      if (v118 == *MEMORY[0x277D17870])
      {
        (*(v93 + 96))(v230, v94);
        v174 = v205;
        v175 = v199;
        v196 = v178;
        v168 = v204;
        (*(v205 + 32))(v199, v196, v204);
        v186 = *(v174 + 16);
        v187 = &v230;
        goto LABEL_90;
      }

      goto LABEL_92;
    }

    v141 = v234;
    sub_20DD648A4();
    v142 = v244;
    sub_20DD64884();
    v87(v141, v256);
    v93 = v253;
    v143 = (*(v253 + 88))(v142, v94);
    v96 = v254;
    if (v143 == *MEMORY[0x277D17898])
    {
      (*(v93 + 96))(v142, v94);
      v97 = v231;
      v144 = v142;
      v99 = v249;
      (*(v96 + 32))(v231, v144, v249);
      v100 = v221;
      (*(v96 + 16))(v221, v97, v99);
      v101 = (*(v96 + 88))(v100, v99);
      if (v101 == *MEMORY[0x277D17868])
      {
        (*(v96 + 96))(v100, v99);
        v145 = v233;
        v146 = v232;
        (*(v233 + 32))(v232, v100, v243);
        v147 = v258;
        v256 = "yHistory_EveryoneWentAway";
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_20DD93A70;
        v149 = sub_20DD64824();
        v151 = v150;
        *(v148 + 56) = MEMORY[0x277D837D0];
        *(v148 + 64) = sub_20DA52BE8();
        *(v148 + 32) = v149;
        *(v148 + 40) = v151;
        v111 = sub_20DD64F14();

        (*(v145 + 8))(v146, v243);
        (*(v96 + 8))(v231, v99);
        (*(v147 + 8))(v259, v257);
        (*(v78 + 8))(v260, v85);
        return v111;
      }

LABEL_31:
      if (v101 == *MEMORY[0x277D17860])
      {
LABEL_32:
        v158 = sub_20DD64F04();
        (*(v96 + 8))(v97, v99);
LABEL_70:
        (*(v258 + 8))(v259, v257);
        goto LABEL_71;
      }

      v171 = *(v96 + 8);
      v171(v97, v99);
      (*(v258 + 8))(v259, v257);
      (*(v78 + 8))(v260, v77);
      v172 = v100;
      goto LABEL_41;
    }

    v99 = v249;
    if (v143 != *MEMORY[0x277D17848])
    {
      if (v143 == *MEMORY[0x277D17890])
      {
        v173 = v244;
        (*(v93 + 96))(v244, v94);
        v174 = v219;
        v175 = v211;
        v168 = v218;
        (*(v219 + 32))(v211, v173, v218);
        v176 = *(v174 + 16);
        v177 = &v242;
LABEL_67:
        v169 = *(v177 - 32);
        v176(v169, v175, v168);
        v191 = (*(v174 + 88))(v169, v168);
        if (v191 == *MEMORY[0x277D17858] || v191 == *MEMORY[0x277D17850])
        {
LABEL_69:
          v158 = sub_20DD64F04();
          (*(v174 + 8))(v175, v168);
          goto LABEL_70;
        }

LABEL_95:
        v195 = *(v174 + 8);
        v195(v175, v168);
        (*(v258 + 8))(v259, v257);
        goto LABEL_96;
      }

      v178 = v244;
      if (v143 == *MEMORY[0x277D178A0] || v143 == *MEMORY[0x277D17888])
      {
LABEL_84:
        v158 = sub_20DD64F04();
        (*(v258 + 8))(v259, v257);
        goto LABEL_85;
      }

      if (v143 == *MEMORY[0x277D17870])
      {
        (*(v93 + 96))(v244, v94);
        v174 = v205;
        v175 = v201;
        v185 = v178;
        v168 = v204;
        (*(v205 + 32))(v201, v185, v204);
        v186 = *(v174 + 16);
        v187 = &v232;
LABEL_90:
        v169 = *(v187 - 32);
        v186(v169, v175, v168);
        v197 = (*(v174 + 88))(v169, v168);
        if (v197 == *MEMORY[0x277D17878] || v197 == *MEMORY[0x277D17880])
        {
          goto LABEL_69;
        }

        goto LABEL_95;
      }

LABEL_92:
      (*(v258 + 8))(v259, v257);
      goto LABEL_93;
    }

    v161 = v244;
    (*(v93 + 96))(v244, v94);
    v97 = v213;
    (*(v96 + 32))(v213, v161, v99);
    v162 = v214;
    (*(v96 + 16))(v214, v97, v99);
    v163 = (*(v96 + 88))(v162, v99);
    if (v163 != *MEMORY[0x277D17868])
    {
      if (v163 == *MEMORY[0x277D17860])
      {
        goto LABEL_32;
      }

      v171 = *(v96 + 8);
      v171(v97, v99);
      (*(v258 + 8))(v259, v257);
      (*(v78 + 8))(v260, v77);
      v172 = v162;
LABEL_41:
      v171(v172, v99);
      return 0;
    }

    v158 = sub_20DD64F04();
    v164 = *(v96 + 8);
    v164(v97, v99);
    (*(v258 + 8))(v259, v257);
    (*(v78 + 8))(v260, v77);
    v164(v162, v99);
  }

  else
  {
    if (v84 == *MEMORY[0x277D17778])
    {
      v113 = sub_20DD64F04();
      v114 = *(v78 + 8);
      v114(v83, v77);
      v114(v81, v77);
      return v113;
    }

    if (v84 != *MEMORY[0x277D17780])
    {
      v160 = *(v78 + 8);
      v160(v83, v77);
      v160(v81, v77);
      return 0;
    }

    (*(v78 + 96))(v81, v77);
    v128 = v246;
    v127 = v247;
    v129 = v242;
    (*(v247 + 32))(v246, v81, v242);
    v130 = v236;
    sub_20DD64924();
    v131 = v239;
    sub_20DD64904();
    (*(v237 + 8))(v130, v238);
    v133 = v240;
    v132 = v241;
    if ((*(v240 + 88))(v131, v241) != *MEMORY[0x277D178B8])
    {
      (*(v127 + 8))(v128, v129);
      (*(v78 + 8))(v83, v85);
      (*(v133 + 8))(v131, v132);
      return 0;
    }

    (*(v133 + 96))(v131, v132);
    v134 = v226;
    v135 = v224;
    v136 = v227;
    (*(v226 + 32))(v224, v131, v227);
    v137 = v225;
    sub_20DD648D4();
    v138 = v228;
    v139 = v229;
    v140 = (*(v228 + 88))(v137, v229);
    if (v140 != *MEMORY[0x277D178A8] && v140 != *MEMORY[0x277D178B0])
    {
      (*(v134 + 8))(v135, v136);
      (*(v247 + 8))(v246, v129);
      (*(v78 + 8))(v83, v85);
      (*(v138 + 8))(v137, v139);
      return 0;
    }

    v158 = sub_20DD64F04();
    (*(v134 + 8))(v135, v136);
    (*(v247 + 8))(v246, v129);
    (*(v78 + 8))(v83, v85);
  }

  return v158;
}

uint64_t sub_20DA504BC(void *a1)
{
  v2 = HFEvent.accessory.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hf_serviceNameComponents];

    v5 = [v4 serviceName];
    sub_20DD64EB4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_20DD647C4();
  }

  v6 = HFEvent.room.getter();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 name];

    sub_20DD64EB4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_20DD647F4();
  }

  v9 = objc_allocWithZone(HFServiceNameComponents);
  v10 = sub_20DD64E74();

  v11 = sub_20DD64E74();

  v12 = [v9 initWithRawServiceName:v10 rawRoomName:v11];

  v13 = [v12 composedString];
  v14 = sub_20DD64EB4();

  return v14;
}

uint64_t sub_20DA50684()
{
  v1 = v0;
  v2 = sub_20DD64804();
  v77 = *(v2 - 1);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64894();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD648B4();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD649D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DD64784();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  (*(v11 + 16))(v13, v1, v10);
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D17970])
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  (*(v11 + 96))(v13, v10);
  (*(v15 + 32))(v20, v13, v14);
  (*(v15 + 16))(v18, v20, v14);
  v21 = (*(v15 + 88))(v18, v14);
  v22 = v15;
  if (v21 == *MEMORY[0x277D17770])
  {
    v74 = v20;
    (*(v15 + 96))(v18, v14);
    (*(v80 + 32))(v79, v18, v81);
    v23 = [objc_opt_self() sharedInstance];
    v24 = [v23 temperatureFormatter];

    sub_20DD648A4();
    sub_20DD64874();
    (*(v75 + 8))(v7, v76);
    v26 = v77;
    v25 = v78;
    v27 = (*(v77 + 88))(v4, v78);
    if (v27 == *MEMORY[0x277D17830])
    {
      v76 = v14;
      (*(v26 + 96))(v4, v25);
      v28 = sub_20DD651B4();
      v29 = [v24 stringForObjectValue_];

      if (v29)
      {
        v77 = sub_20DD64EB4();
        v75 = v30;
      }

      else
      {
        v77 = 0;
        v75 = 0xE000000000000000;
      }

      v47 = sub_20DD651B4();
      v78 = v24;
      v48 = [v24 stringForObjectValue_];

      v49 = v22;
      if (v48)
      {
        v50 = sub_20DD64EB4();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_20DD95210;
      v54 = v74;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v82, v83);
      v55 = sub_20DD647C4();
      v57 = v56;
      v58 = MEMORY[0x277D837D0];
      *(v53 + 56) = MEMORY[0x277D837D0];
      v59 = sub_20DA52BE8();
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      *(v53 + 96) = v58;
      *(v53 + 104) = v59;
      v60 = v77;
      *(v53 + 64) = v59;
      *(v53 + 72) = v60;
      *(v53 + 80) = v75;
      *(v53 + 136) = v58;
      *(v53 + 144) = v59;
      *(v53 + 112) = v50;
      *(v53 + 120) = v52;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v43 = sub_20DD64F14();

      (*(v80 + 8))(v79, v81);
      (*(v49 + 8))(v54, v76);
      return v43;
    }

    if (v27 == *MEMORY[0x277D17838])
    {
      v76 = v14;
      (*(v26 + 96))(v4, v25);
      v32 = sub_20DD651B4();
      v33 = [v24 stringForObjectValue_];

      v73 = v22;
      v34 = v24;
      if (!v33)
      {
        v35 = 0;
        v37 = 0xE000000000000000;
        goto LABEL_29;
      }

LABEL_12:
      v35 = sub_20DD64EB4();
      v37 = v36;

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_20DD94280;
      v67 = v74;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v82, v83);
      v68 = sub_20DD647C4();
      v70 = v69;
      v71 = MEMORY[0x277D837D0];
      *(v66 + 56) = MEMORY[0x277D837D0];
      v72 = sub_20DA52BE8();
      *(v66 + 32) = v68;
      *(v66 + 40) = v70;
      *(v66 + 96) = v71;
      *(v66 + 104) = v72;
      *(v66 + 64) = v72;
      *(v66 + 72) = v35;
      *(v66 + 80) = v37;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v43 = sub_20DD64F14();

      (*(v80 + 8))(v79, v81);
      (*(v73 + 8))(v67, v76);
      return v43;
    }

    if (v27 == *MEMORY[0x277D17840])
    {
      v76 = v14;
      (*(v26 + 96))(v4, v25);
      v45 = sub_20DD651B4();
      v33 = [v24 stringForObjectValue_];

      v73 = v22;
      v34 = v24;
      if (!v33)
      {
        v35 = 0;
        v37 = 0xE000000000000000;
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    if (v27 == *MEMORY[0x277D17828])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_20DD93A70;
      v62 = v74;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v82, v83);
      v63 = sub_20DD647C4();
      v65 = v64;
      *(v61 + 56) = MEMORY[0x277D837D0];
      *(v61 + 64) = sub_20DA52BE8();
      *(v61 + 32) = v63;
      *(v61 + 40) = v65;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v43 = sub_20DD64F14();

      (*(v80 + 8))(v79, v81);
      (*(v22 + 8))(v62, v14);
      return v43;
    }

    (*(v80 + 8))(v79, v81);
    (*(v22 + 8))(v74, v14);
    (*(v26 + 8))(v4, v25);
    return 0;
  }

  if (v21 != *MEMORY[0x277D17778] && v21 != *MEMORY[0x277D17780])
  {
    v46 = *(v15 + 8);
    v46(v20, v14);
    v46(v18, v14);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20DD93A70;
  v39 = v20;
  sub_20DD64774();
  __swift_project_boxed_opaque_existential_0(v82, v83);
  v40 = sub_20DD647C4();
  v42 = v41;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = sub_20DA52BE8();
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  __swift_destroy_boxed_opaque_existential_0(v82);
  v43 = sub_20DD64F14();

  v44 = *(v15 + 8);
  v44(v39, v14);
  v44(v18, v14);
  return v43;
}

uint64_t sub_20DA51270()
{
  v123 = sub_20DD64744();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v111 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20DD64764();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v111 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20DD64794();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v130 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_20DD647B4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20DD64944();
  v147 = *(v4 - 8);
  v148 = v4;
  MEMORY[0x28223BE20](v4);
  v144 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD64964();
  v145 = *(v6 - 8);
  v146 = v6;
  MEMORY[0x28223BE20](v6);
  v143 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_20DD64634();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_20DD64654();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_20DD646A4();
  v141 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v140 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD646C4();
  v12 = *(v11 - 8);
  v138 = v11;
  v139 = v12;
  MEMORY[0x28223BE20](v11);
  v142 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DD64714();
  v150 = *(v14 - 8);
  v151 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20DD64734();
  v149 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_20DD64974();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20DD64994();
  v135 = *(v21 - 8);
  v136 = v21;
  MEMORY[0x28223BE20](v21);
  v134 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20DD649D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20DD64784();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v111 - v32;
  (*(v24 + 16))(v26, v152, v23);
  if ((*(v24 + 88))(v26, v23) != *MEMORY[0x277D17970])
  {
    (*(v24 + 8))(v26, v23);
    return 0;
  }

  (*(v24 + 96))(v26, v23);
  (*(v28 + 32))(v33, v26, v27);
  (*(v28 + 16))(v31, v33, v27);
  v34 = (*(v28 + 88))(v31, v27);
  v35 = v27;
  v36 = v33;
  if (v34 != *MEMORY[0x277D17758])
  {
    if (v34 == *MEMORY[0x277D17788])
    {
      (*(v28 + 96))(v31, v27);
      v42 = v145;
      v41 = v146;
      v43 = v143;
      (*(v145 + 32))(v143, v31, v146);
      v44 = v144;
      sub_20DD64954();
      v46 = v147;
      v45 = v148;
      v47 = (*(v147 + 88))(v44, v148);
      if (v47 == *MEMORY[0x277D178E0])
      {
LABEL_10:
        (*(v42 + 8))(v43, v41);
LABEL_35:
        (*(v28 + 8))(v36, v35);
        return 0;
      }

      v59 = v47 == *MEMORY[0x277D178C0];
      v53 = v152;
      v112 = v36;
      if (v59)
      {
        goto LABEL_19;
      }

      if (v47 == *MEMORY[0x277D178C8])
      {
LABEL_30:
        v48 = v35;
        v51 = 0x736E6553726F6F44;
        v50 = 0x6465736F6C43;
        (*(v42 + 8))(v43, v41);
        v52 = 0xE600000000000000;
        goto LABEL_31;
      }

      if (v47 == *MEMORY[0x277D178D8])
      {
LABEL_19:
        v48 = v35;
        v51 = 0x736E6553726F6F44;
        v50 = 1852141647;
        (*(v42 + 8))(v43, v41);
        v52 = 0xE400000000000000;
LABEL_31:
        v49 = 0xEF6574617453726FLL;
        goto LABEL_81;
      }

      if (v47 == *MEMORY[0x277D178D0])
      {
        goto LABEL_30;
      }

LABEL_50:
      (*(v42 + 8))(v43, v41);
      (*(v46 + 8))(v44, v45);
      goto LABEL_35;
    }

    if (v34 == *MEMORY[0x277D17750])
    {
      (*(v28 + 96))(v31, v27);
      v17 = v138;
      v54 = v139;
      v55 = v142;
      (*(v139 + 32))(v142, v31, v138);
      v56 = v140;
      sub_20DD646B4();
      v57 = v137;
      v58 = (*(v141 + 88))(v56, v137);
      if (v58 == *MEMORY[0x277D176E8])
      {
        v39 = *(v54 + 8);
        v40 = v55;
        goto LABEL_5;
      }

      v49 = 0x800000020DD99790;
      v51 = 0xD000000000000014;
      v59 = v58 == *MEMORY[0x277D176C0];
      v112 = v36;
      if (v59)
      {
        v70 = v55;
        v48 = v35;
        v50 = 1852141647;
        (*(v54 + 8))(v70, v17);
        goto LABEL_13;
      }

      v53 = v152;
      if (v58 == *MEMORY[0x277D176C8])
      {
        v76 = v55;
        v48 = v35;
        v50 = 0x6465736F6C43;
        (*(v54 + 8))(v76, v17);
        goto LABEL_22;
      }

      if (v58 == *MEMORY[0x277D176D8])
      {
        v79 = v55;
        v48 = v35;
        (*(v54 + 8))(v79, v17);
        v52 = 0xE700000000000000;
        v80 = 1852141647;
LABEL_71:
        v50 = v80 | 0x676E6900000000;
        goto LABEL_81;
      }

      v48 = v35;
      if (v58 == *MEMORY[0x277D176D0])
      {
        (*(v54 + 8))(v142, v17);
        v52 = 0xE700000000000000;
        v80 = 1936682051;
        goto LABEL_71;
      }

      if (v58 == *MEMORY[0x277D176E0])
      {
        (*(v54 + 8))(v142, v17);
        v52 = 0xE700000000000000;
        v50 = 0x646570706F7453;
        goto LABEL_81;
      }

      v109 = *MEMORY[0x277D176B8];
      v110 = v58;
      (*(v54 + 8))(v142, v17);
      if (v110 == v109)
      {
        v52 = 0xEA00000000006465;
        v50 = 0x746375727473624FLL;
        goto LABEL_81;
      }

      (*(v141 + 8))(v140, v57);
LABEL_33:
      v35 = v48;
LABEL_34:
      v36 = v112;
      goto LABEL_35;
    }

    if (v34 == *MEMORY[0x277D17790])
    {
      (*(v28 + 96))(v31, v27);
      v64 = v135;
      v63 = v136;
      v65 = v134;
      (*(v135 + 32))(v134, v31, v136);
      v66 = v131;
      sub_20DD64984();
      v67 = v132;
      v68 = v133;
      v69 = (*(v132 + 88))(v66, v133);
      if (v69 == *MEMORY[0x277D17928])
      {
        (*(v64 + 8))(v65, v63);
        goto LABEL_35;
      }

      v59 = v69 == *MEMORY[0x277D17930];
      v112 = v36;
      if (v59)
      {
        v48 = v35;
        v52 = 0xE800000000000000;
        v50 = 0x64656B636F6C6E55;
        v53 = v152;
      }

      else
      {
        v53 = v152;
        if (v69 == *MEMORY[0x277D17918])
        {
          v48 = v35;
          v52 = 0xE600000000000000;
          v78 = 1801678668;
        }

        else
        {
          if (v69 == *MEMORY[0x277D17938])
          {
            v48 = v35;
            v52 = 0xE900000000000067;
            v50 = 0x6E696B636F6C6E55;
            goto LABEL_80;
          }

          if (v69 == *MEMORY[0x277D17920])
          {
            v48 = v35;
            v52 = 0xE700000000000000;
            v50 = 0x676E696B636F4CLL;
            goto LABEL_80;
          }

          if (v69 != *MEMORY[0x277D17910])
          {
            (*(v64 + 8))(v65, v63);
            (*(v67 + 8))(v66, v68);
            goto LABEL_35;
          }

          v48 = v35;
          v52 = 0xE600000000000000;
          v78 = 1835884874;
        }

        v50 = v78 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      }

LABEL_80:
      (*(v64 + 8))(v65, v63);
      v49 = 0xEE00657461745374;
      v51 = 0x6E6576456B636F4CLL;
      goto LABEL_81;
    }

    if (v34 == *MEMORY[0x277D17768])
    {
      (*(v28 + 96))(v31, v27);
      v42 = v128;
      v43 = v126;
      v41 = v129;
      (*(v128 + 32))(v126, v31, v129);
      v72 = v130;
      sub_20DD647A4();
      v73 = v125;
      v74 = v127;
      v75 = (*(v125 + 88))(v72, v127);
      if (v75 == *MEMORY[0x277D177C0])
      {
        goto LABEL_10;
      }

      if (v75 == *MEMORY[0x277D177D0])
      {
        v112 = v36;
        v48 = v35;
        v52 = 0xE800000000000000;
        v50 = 0x64656D7261736944;
      }

      else
      {
        if (v75 == *MEMORY[0x277D177B8] || v75 == *MEMORY[0x277D177E0])
        {
          goto LABEL_10;
        }

        v112 = v36;
        v48 = v35;
        if (v75 != *MEMORY[0x277D177C8])
        {
          v52 = 0xE900000000000064;
          v50 = 0x656D724179617453;
          v53 = v152;
          if (v75 == *MEMORY[0x277D177D8])
          {
            v50 = 0x656D724179617741;
          }

          else if (v75 == *MEMORY[0x277D177B0])
          {
            v52 = 0xEA00000000006465;
            v50 = 0x6D7241746867694ELL;
          }

          else if (v75 != *MEMORY[0x277D177E8])
          {
            (*(v42 + 8))(v43, v41);
            (*(v73 + 8))(v130, v74);
            goto LABEL_33;
          }

LABEL_42:
          v49 = 0x800000020DD99750;
          (*(v42 + 8))(v43, v41);
          v51 = 0xD000000000000013;
          goto LABEL_81;
        }

        v50 = 0x676E696D72616C41;
        v52 = 0xE800000000000000;
      }

      v53 = v152;
      goto LABEL_42;
    }

    if (v34 == *MEMORY[0x277D17760])
    {
      (*(v28 + 96))(v31, v27);
      v42 = v122;
      v43 = v120;
      v41 = v124;
      (*(v122 + 32))(v120, v31, v124);
      v44 = v119;
      sub_20DD64754();
      v46 = v121;
      v45 = v123;
      v77 = (*(v121 + 88))(v44, v123);
      if (v77 == *MEMORY[0x277D17740])
      {
        goto LABEL_10;
      }

      if (v77 == *MEMORY[0x277D17738])
      {
        v112 = v36;
        v48 = v35;
        v52 = 0xE600000000000000;
        v50 = 0x6C616D726F4ELL;
        v53 = v152;
      }

      else
      {
        v53 = v152;
        if (v77 != *MEMORY[0x277D17748])
        {
          goto LABEL_50;
        }

        v112 = v36;
        v48 = v35;
        v50 = 0x676E696D72616C41;
        v52 = 0xE800000000000000;
      }

      v49 = 0x800000020DD99730;
      (*(v42 + 8))(v43, v41);
      v51 = 0xD000000000000012;
      goto LABEL_81;
    }

    v112 = v33;
    if (v34 != *MEMORY[0x277D17798])
    {
      v88 = *(v28 + 8);
      v88(v112, v27);
      v88(v31, v27);
      return 0;
    }

    (*(v28 + 96))(v31, v27);
    v81 = v115;
    v82 = v113;
    v83 = v116;
    (*(v115 + 32))(v113, v31, v116);
    v84 = v114;
    sub_20DD64644();
    v85 = v117;
    v86 = v118;
    v87 = (*(v117 + 88))(v84, v118);
    if (v87 == *MEMORY[0x277D175F8])
    {
      (*(v81 + 8))(v82, v83);
      goto LABEL_34;
    }

    v49 = 0x800000020DD99770;
    v53 = v152;
    if (v87 == *MEMORY[0x277D175D8])
    {
LABEL_77:
      v48 = v35;
      v50 = 1852141647;
      (*(v81 + 8))(v82, v83);
      v51 = 0xD000000000000011;
      v52 = 0xE400000000000000;
      goto LABEL_81;
    }

    if (v87 != *MEMORY[0x277D175E0])
    {
      if (v87 == *MEMORY[0x277D175F0])
      {
        goto LABEL_77;
      }

      if (v87 != *MEMORY[0x277D175E8])
      {
        (*(v81 + 8))(v82, v83);
        (*(v85 + 8))(v84, v86);
        goto LABEL_34;
      }
    }

    v48 = v35;
    v50 = 0x6465736F6C43;
    (*(v81 + 8))(v82, v83);
    v51 = 0xD000000000000011;
    goto LABEL_22;
  }

  (*(v28 + 96))(v31, v27);
  v37 = v149;
  (*(v149 + 32))(v19, v31, v17);
  sub_20DD64724();
  v38 = (*(v150 + 88))(v16, v151);
  if (v38 == *MEMORY[0x277D17730])
  {
    v39 = *(v37 + 8);
    v40 = v19;
LABEL_5:
    v39(v40, v17);
    goto LABEL_35;
  }

  v112 = v33;
  v48 = v27;
  v49 = 0x800000020DD997B0;
  if (v38 != *MEMORY[0x277D17720])
  {
    v60 = *MEMORY[0x277D17728];
    v61 = *(v37 + 8);
    v62 = v38;
    v61(v19, v17);
    v53 = v152;
    if (v62 == v60)
    {
      v50 = 0x6465736F6C43;
      v51 = 0xD000000000000011;
LABEL_22:
      v52 = 0xE600000000000000;
      goto LABEL_81;
    }

    (*(v150 + 8))(v16, v151);
    goto LABEL_33;
  }

  v50 = 1852141647;
  (*(v37 + 8))(v19, v17);
  v51 = 0xD000000000000011;
LABEL_13:
  v52 = 0xE400000000000000;
  v53 = v152;
LABEL_81:
  v153 = v51;
  v154 = v49;
  MEMORY[0x20F325E90](v50, v52);

  v90 = v153;
  v89 = v154;
  v91 = HFEvent.home.getter();
  if (v91 && (v92 = v91, v93 = [v91 hf_allUsersIncludingCurrentUser], v92, sub_20DA52C3C(), v94 = sub_20DD64FD4(), v93, MEMORY[0x28223BE20](v95), *(&v111 - 2) = v53, v96 = sub_20DA36A4C(sub_20DA3315C, (&v111 - 4), v94), , v96))
  {
    v97 = [v96 name];
  }

  else
  {
    v98 = HFEvent.guestUser.getter();
    if (!v98 || (v99 = v98, v97 = [v98 simpleLabel], v99, !v97))
    {
      v107 = sub_20DD64E74();

      v108 = HFLocalizedString(v107);

      v106 = sub_20DD64EB4();
      goto LABEL_88;
    }
  }

  v100 = sub_20DD64EB4();
  v102 = v101;

  v153 = v90;
  v154 = v89;
  MEMORY[0x20F325E90](0x4025726573557942, 0xE800000000000000);
  v103 = sub_20DD64E74();

  v104 = HFLocalizedString(v103);

  sub_20DD64EB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_20DD93A70;
  *(v105 + 56) = MEMORY[0x277D837D0];
  *(v105 + 64) = sub_20DA52BE8();
  *(v105 + 32) = v100;
  *(v105 + 40) = v102;
  v106 = sub_20DD64E84();

LABEL_88:
  (*(v28 + 8))(v112, v48);
  return v106;
}

unint64_t sub_20DA52BE8()
{
  result = qword_27C8446D8;
  if (!qword_27C8446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8446D8);
  }

  return result;
}

unint64_t sub_20DA52C3C()
{
  result = qword_27C844400;
  if (!qword_27C844400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844400);
  }

  return result;
}

unint64_t sub_20DA52C88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20DD655B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20D9EF64C();
  sub_20DA16DC0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20DA52D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_20DA52D74(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
    sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
    sub_20DD65284();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C844290, 0x277CD1650), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_20D9C51CC(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 room];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x20F325F00]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20DA53050@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20DD65514();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_20DA53124(uint64_t a1)
{
  v2 = sub_20DD65514();
  if (v2 == 1 << *(a1 + 32))
  {
    return 6;
  }

  v4 = *(a1 + 36);

  return sub_20DA73784(v2, v4, 0, a1);
}

uint64_t sub_20DA5319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_20DD636C4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, v6);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_20DD636C4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_20DA532F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20DD65554();
    v7 = v6;
    v8 = sub_20DD65614();
    v10 = v9;
    v11 = MEMORY[0x20F3264E0](v5, v7, v8, v9);
    sub_20D9EF46C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_20D9EF46C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_20DD65514();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_20D9EF46C(v5, v7, v4 != 0);
  return v13;
}

uint64_t HFAccessoryLikeObject.components.getter()
{
  if ([v0 homeKitObject])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
      result = swift_allocObject();
      *(result + 16) = xmmword_20DD93A70;
      v4 = &protocol witness table for HMServiceGroup;
LABEL_6:
      *(result + 32) = v2;
      *(result + 40) = v4;
      return result;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v2 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
      result = swift_allocObject();
      *(result + 16) = xmmword_20DD93A70;
      v4 = &protocol witness table for HMMediaSystem;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x277D84F90];
}

uint64_t HFAccessoryLikeObject.elements.getter()
{
  v1 = v0;
  if ([v0 homeKitObject])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v2 = HMMediaProfile.elements.getter();
LABEL_4:
      v3 = v2;
      swift_unknownObjectRelease_n();
      return v3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return MEMORY[0x277D84F90];
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v2 = HMMediaSystem.leafElements.getter();
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
  }

  v13 = MEMORY[0x277D84F90];
  v5 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20D9EC18C(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
  v6 = sub_20DD651E4();

  v7 = sub_20DA55084(v6, sub_20D9EF64C, sub_20D9EB1EC);

  v8 = sub_20DA0B284(v7);

  sub_20DA12E14(v8);
  v9 = [v1 profiles];
  sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760);
  sub_20D9EC18C(&unk_27C8438E0, &unk_27C8442A0, 0x277CD1760);
  v10 = sub_20DD651E4();

  v11 = sub_20DA55084(v10, sub_20D9EF64C, sub_20D9EB208);

  v12 = sub_20DA0B3C0(v11);

  sub_20DA12E14(v12);
  return v13;
}

void *AccessoryComponent.capabilities.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 24))();
  v4 = result;
  v5 = result[2];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = result + 5;
    while (v7 < v4[2])
    {
      ++v7;
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      v12[1] = v9;
      result = (*(*(v10 + 8) + 8))(v12, ObjectType);
      v6 |= v12[0];
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_7:

    *a2 = v6;
  }

  return result;
}

uint64_t AccessoryComponent.room.getter(uint64_t a1)
{
  v1 = HFAccessoryRepresentable.associatedAccessories.getter(a1);
  sub_20DA52D74(v1);
  v3 = v2;

  v4 = sub_20D9F91FC(v3);

  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16) == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (sub_20DD655B4() != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_20DA532F0(v4, sub_20DA737D4);
LABEL_6:

  return v5;
}

BOOL sub_20DA53A08(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20DA53A38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20DA53A64@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t HMMediaProfile.elements.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20DD93A70;
  *(v1 + 32) = v0;
  *(v1 + 40) = &protocol witness table for HMAccessoryProfile;
  v2 = v1;
  v10 = v1;
  v3 = [v0 accessory];
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v5 = [v3 services];

  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v6 = sub_20DD64FD4();

  v7 = sub_20DA52C88(v6);
  v8 = sub_20DA0B284(v7);

  sub_20DA12E14(v8);
  return v10;
}

uint64_t HMMediaSystem.leafElements.getter()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v2 = [v0 hf_containedServices];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20D9EC18C(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
  v3 = sub_20DD651E4();

  v4 = sub_20DA55084(v3, sub_20D9EF64C, sub_20D9EB1EC);

  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446E0, &qword_20DD95890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8446E8, &unk_20DD95898);
  swift_dynamicCast();
  sub_20DA12E14(v14);
  v5 = v16;
  if (!*(v16 + 16))
  {
    sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
    v6 = v1;
    v7 = sub_20DD65474();
    v8 = sub_20DD65384();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_20D9E0B38(0x6D656C456661656CLL, 0xEC00000073746E65, &v15);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v12 = v6;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s: No leaf elements found for media system %@", v9, 0x16u);
      sub_20DA55258(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v9, -1, -1);
    }
  }

  return v5;
}

void HFAccessoryLikeObject.capabilities.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = HFAccessoryLikeObject.elements.getter();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v4 + 40);
    while (v8 < *(v5 + 16))
    {
      ++v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v37 = v10;
      (*(*(v11 + 8) + 8))(&v36, ObjectType);
      v7 |= v36;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_7:

    v13 = HFAccessoryLikeObject.components.getter();
    v14 = v13;
    v15 = *(v13 + 16);
    if (!v15)
    {
LABEL_11:
      v35 = a1;

      v21 = [v2 accessories];
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
      v22 = sub_20DD651E4();

      if ((v22 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_20DD65564();
        sub_20DD65284();
        v22 = v37;
        v23 = v38;
        v24 = v39;
        v25 = v40;
        v26 = v41;
      }

      else
      {
        v27 = -1 << *(v22 + 32);
        v23 = v22 + 56;
        v24 = ~v27;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v26 = v29 & *(v22 + 56);

        v25 = 0;
      }

      v30 = (v24 + 64) >> 6;
      while (1)
      {
        if (v22 < 0)
        {
          if (!sub_20DD655F4() || (swift_dynamicCast(), (v33 = v36) == 0))
          {
LABEL_30:
            sub_20D9C51CC(v22);

LABEL_33:
            *v35 = v7;
            return;
          }
        }

        else
        {
          v31 = v25;
          for (i = v26; !i; ++v31)
          {
            v25 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_36;
            }

            if (v25 >= v30)
            {
              goto LABEL_30;
            }

            i = *(v23 + 8 * v25);
          }

          v26 = (i - 1) & i;
          v33 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v33)
          {
            goto LABEL_30;
          }
        }

        if ([v33 hf_isRemoteControl])
        {
          sub_20D9C51CC(v22);

          goto LABEL_32;
        }

        v34 = [v33 hf_isVisibleAsBridge];

        if (v34)
        {
          sub_20D9C51CC(v22);

LABEL_32:
          v7 |= 4uLL;
          goto LABEL_33;
        }
      }
    }

    v16 = 0;
    v17 = (v13 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = swift_getObjectType();
      v37 = v18;
      (*(*(v19 + 8) + 8))(&v36, v20);
      v7 |= v36;
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void HMService.capabilities.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0;
  v5 = &selRef_getReturnValue_;
  if ([v1 hf_isVisible])
  {
    v60 = v1;
    v61 = a1;
    v6 = [v1 characteristics];
    v59 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    v7 = sub_20DD64FD4();

    v62 = v7;
    if (v7 >> 62)
    {
      goto LABEL_67;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
    {
      v4 = 0;
      if (!i)
      {
        break;
      }

      v64 = v62 & 0xFFFFFFFFFFFFFF8;
      v65 = v62 & 0xC000000000000001;
      v63 = v62 + 32;
      while (1)
      {
        if (v65)
        {
          v9 = MEMORY[0x20F326680](v4, v62);
        }

        else
        {
          if (v4 >= *(v64 + 16))
          {
            goto LABEL_64;
          }

          v9 = *(v63 + 8 * v4);
        }

        v10 = v9;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v12 = [objc_opt_self() hf_sensingCharacteristicTypes];
        v13 = sub_20DD651E4();

        v14 = [v10 characteristicType];
        v15 = sub_20DD64EB4();
        v17 = v16;

        if (*(v13 + 16) && (sub_20DD65A64(), sub_20DD64F24(), v18 = sub_20DD65AA4(), v19 = -1 << *(v13 + 32), v20 = v18 & ~v19, ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v13 + 48) + 16 * v20);
            v23 = *v22 == v15 && v22[1] == v17;
            if (v23 || (sub_20DD65974() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v24 = [v10 properties];
          v25 = sub_20DD64FD4();

          v66 = sub_20DD64D54();
          v67 = v26;
          MEMORY[0x28223BE20](v66);
          v58 = &v66;
          v27 = sub_20D9DFE38(sub_20DA552C0, v57, v25);

          if (v27)
          {
            v4 = 2;
            goto LABEL_26;
          }
        }

        else
        {
LABEL_6:
        }

        if (v4 == i)
        {
          v4 = 0;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      ;
    }

LABEL_26:

    v2 = v60;
    v28 = [v60 hf_isSensorService];
    a1 = v61;
    if (v28)
    {
      goto LABEL_47;
    }

    v29 = [v2 characteristics];
    v30 = sub_20DD64FD4();

    v63 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      v65 = sub_20DD655B4();
    }

    else
    {
      v65 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = 0;
    v64 = v30 & 0xC000000000000001;
    while (v65 != v31)
    {
      if (v64)
      {
        v32 = MEMORY[0x20F326680](v31, v30);
      }

      else
      {
        if (v31 >= *(v63 + 16))
        {
          goto LABEL_66;
        }

        v32 = *(v30 + 8 * v31 + 32);
      }

      v33 = v32;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_65;
      }

      v34 = v4;
      v35 = [v32 properties];
      v36 = sub_20DD64FD4();

      v66 = sub_20DD64EB4();
      v67 = v37;
      MEMORY[0x28223BE20](v66);
      v58 = &v66;
      v38 = sub_20D9DFE38(sub_20DA55548, v57, v36);
      v4 = v34;

      ++v31;
      if (v38)
      {

        v4 = v34 | 0x21;
        goto LABEL_39;
      }
    }

LABEL_39:
    v2 = v60;
    v39 = [v60 characteristics];
    v40 = sub_20DD64FD4();

    a1 = v61;
    v5 = &selRef_getReturnValue_;
    if (v40 >> 62)
    {
      v41 = sub_20DD655B4();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!(v41 | v4))
    {
      v42 = sub_20DD65364();
      if (qword_280E01EC8 != -1)
      {
        swift_once();
      }

      v43 = qword_280E03EA0;
      if (os_log_type_enabled(qword_280E03EA0, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v66 = v46;
        *v44 = 136315394;
        *(v44 + 4) = sub_20D9E0B38(0x696C696261706163, 0xEC00000073656974, &v66);
        *(v44 + 12) = 2112;
        *(v44 + 14) = v2;
        *v45 = v2;
        v47 = v2;
        _os_log_impl(&dword_20D9BF000, v43, v42, "%s: No characteristics found for service %@", v44, 0x16u);
        sub_20DA55258(v45);
        MEMORY[0x20F327D10](v45, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x20F327D10](v46, -1, -1);
        MEMORY[0x20F327D10](v44, -1, -1);
      }

      v4 = 4;
LABEL_47:
      v5 = &selRef_getReturnValue_;
    }
  }

  v48 = [v2 hf_isNetworkRouter];
  v49 = v4 | 0xC;
  if ((v4 & 0x20) != 0)
  {
    v49 = v4 & 0x13 | 0xC;
  }

  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = v4;
  }

  v51 = [v2 hf_isProgrammableSwitch];
  v52 = v50 | 4;
  if ((v50 & 0x20) != 0)
  {
    v52 = v50 & 0x1B | 4;
  }

  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = v50;
  }

  if (([v2 v5[481]] & 1) != 0 || (v54 = objc_msgSend(objc_opt_self(), sel_hiddenFromScenesAndAutomationsAccessoryTypeGroup), v55 = objc_msgSend(v2, sel_hf_accessoryType), v56 = objc_msgSend(v54, sel_containsType_, v55), v54, v55, v56))
  {
    if ((v53 & 0x20) != 0)
    {
      v53 &= 0x1Fu;
    }
  }

  *a1 = v53;
}

void *HMAccessoryProfile.capabilities.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = HMMediaProfile.elements.getter();
    v5 = result;
    v6 = 0;
    v7 = result[2];
    v8 = result + 4;
    v9 = 45;
LABEL_3:
    v10 = &v8[2 * v6];
    while (1)
    {
      if (v7 == v6)
      {

        goto LABEL_10;
      }

      if (v6 >= v5[2])
      {
        break;
      }

      ++v6;
      v11 = v10 + 2;
      v12 = *v10;
      v10 += 2;
      if (v12 != v2)
      {
        v13 = *(v11 - 1);
        ObjectType = swift_getObjectType();
        v15[1] = v12;
        result = (*(*(v13 + 8) + 8))(v15, ObjectType);
        v9 |= v15[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
LABEL_10:
    *a1 = v9;
  }

  return result;
}

void *HMServiceGroup.elements.getter()
{
  v1 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v2 = sub_20DD64FD4();

  v3 = sub_20DA0B284(v2);

  return v3;
}

void *sub_20DA54BDC()
{
  v1 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v2 = sub_20DD64FD4();

  v3 = sub_20DA0B284(v2);

  return v3;
}

uint64_t HMMediaSystem.elements.getter()
{
  v1 = [v0 mediaProfiles];
  v2 = [v1 allObjects];

  v3 = sub_20DD64FD4();
  v4 = sub_20DA0B67C(v3);

  if (!*(v4 + 16))
  {
    sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
    v5 = v0;
    v6 = sub_20DD65474();
    v7 = sub_20DD65384();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_20D9E0B38(0x73746E656D656C65, 0xE800000000000000, &v13);
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      v11 = v5;
      _os_log_impl(&dword_20D9BF000, v6, v7, "%s: No elements found for media system %@", v8, 0x16u);
      sub_20DA55258(v9);
      MEMORY[0x20F327D10](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      MEMORY[0x20F327D10](v8, -1, -1);
    }
  }

  return v4;
}

id HMAccessory.capabilities.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 hf_isMatterOnlyAccessory];
  if (result)
  {
    v4 = 45;
  }

  else
  {
    result = [v1 hf_isMediaAccessory];
    v4 = 13;
    if (!result)
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return result;
}

void sub_20DA54EE8()
{
  v1 = [v0 uniqueIdentifier];
  sub_20DD63714();
}

id sub_20DA54F48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = [v3 hf_isMatterOnlyAccessory];
  if (result)
  {
    v5 = 45;
  }

  else
  {
    result = [v3 hf_isMediaAccessory];
    v5 = 13;
    if (!result)
    {
      v5 = 0;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_20DA54FA8(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_20DD655B4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_20D9EF64C();

    v1 = sub_20D9EAF0C(&v5, (v3 + 32), v2, v1);
    sub_20D9C51CC(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_20DA55084(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_20DD655B4();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_20D9C51CC(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_20DA55144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_20D9EF64C();
  v3 = sub_20D9EF640();

  sub_20D9C51CC(v5);
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_20DA55200(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20DD65974() & 1;
  }
}

uint64_t sub_20DA55258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA552DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20DD65974() & 1;
  }
}

unint64_t sub_20DA55338()
{
  result = qword_27C8446F8;
  if (!qword_27C8446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8446F8);
  }

  return result;
}

unint64_t sub_20DA55390()
{
  result = qword_27C844700;
  if (!qword_27C844700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844700);
  }

  return result;
}

unint64_t sub_20DA553E8()
{
  result = qword_27C844708;
  if (!qword_27C844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844708);
  }

  return result;
}

unint64_t sub_20DA55440()
{
  result = qword_27C844710;
  if (!qword_27C844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryElementCapabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessoryElementCapabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_20DA55564(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result == 2)
  {

    return sub_20DA55790(a1, a2);
  }

  return result;
}

id AccessoryCategoryReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_20DD64E74();

  v7 = [v5 initWithApplicationDataContainer:a1 category:v6];
  swift_unknownObjectRelease();

  return v7;
}

id AccessoryCategoryReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20DD64E74();

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  v6 = objc_msgSendSuper2(&v8, sel_initWithApplicationDataContainer_category_, a1, v5);

  swift_unknownObjectRelease();
  return v6;
}

id AccessoryCategoryReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA55790(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() categorySortOrder];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844718, &qword_20DD95C48);
  v3 = sub_20DD64FD4();

  v4 = *(v3 + 16);
  if (v4)
  {
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v6 = 0;
    while (1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = ObjCClassFromMetadata != ObjCClassFromObject;
      if (ObjCClassFromMetadata == ObjCClassFromObject)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v6 = 0;
        break;
      }
    }

    result = swift_getObjCClassFromObject();
    v10 = result;
    v11 = 0;
    while (v4 != v11)
    {
      result = swift_getObjCClassFromMetadata();
      v12 = result != v10;
      if (result == v10)
      {
        goto LABEL_12;
      }

      if (v4 == ++v11)
      {
        v11 = 0;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
    v6 = 0;
    v12 = 1;
    v8 = 1;
LABEL_12:

    return sub_20DA06504(v6, v8, v11, v12);
  }

  return result;
}

double HFCharacteristicValueManager.staticHomeDataModelCachedValue(for:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = sub_20DD643E4();
  v4 = *(v38 - 8);
  v5 = MEMORY[0x28223BE20](v38);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_20DD64444();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63C84();
  v17 = sub_20DD63C64();
  sub_20DA55DA4(a1, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_27C844720;
    v19 = &qword_20DD95C50;
    v20 = v12;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_20DD64424();
    if (v21 == 2)
    {
      v45 = 0u;
      v46 = 0u;
      v22 = sub_20DD64414();
      if (v23)
      {
        v43 = 0u;
        v44 = 0u;
        v24 = sub_20DD64384();
        if (v25)
        {
          v41 = 0u;
          v42 = 0u;
          v26 = sub_20DD64394();
          if (v27)
          {
            *(&v40 + 1) = MEMORY[0x277D837D0];
            *&v39 = v26;
            *(&v39 + 1) = v27;
            sub_20D9D77C8(&v39, &v47);
          }

          else
          {
            v39 = 0u;
            v40 = 0u;
            v28 = sub_20DD64434();
            if (v29 >> 60 == 15)
            {
              v28 = 0;
              v29 = 0;
              v30 = 0;
              *&v48 = 0;
            }

            else
            {
              v30 = MEMORY[0x277CC9318];
            }

            *&v47 = v28;
            *(&v47 + 1) = v29;
            *(&v48 + 1) = v30;
            if (*(&v40 + 1))
            {
              sub_20D9D76EC(&v39, &unk_27C843A80, &qword_20DD94100);
            }
          }

          if (*(&v42 + 1))
          {
            sub_20D9D76EC(&v41, &unk_27C843A80, &qword_20DD94100);
          }
        }

        else
        {
          *(&v42 + 1) = MEMORY[0x277D839F8];
          *&v41 = v24;
          sub_20D9D77C8(&v41, &v47);
        }

        if (*(&v44 + 1))
        {
          sub_20D9D76EC(&v43, &unk_27C843A80, &qword_20DD94100);
        }
      }

      else
      {
        *(&v44 + 1) = MEMORY[0x277D83B88];
        *&v43 = v22;
        sub_20D9D77C8(&v43, &v47);
      }

      if (*(&v46 + 1))
      {
        sub_20D9D76EC(&v45, &unk_27C843A80, &qword_20DD94100);
      }
    }

    else
    {
      *(&v46 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v45) = v21 & 1;
      sub_20D9D77C8(&v45, &v47);
    }

    sub_20DD643F4();
    v31 = *MEMORY[0x277D165C0];
    v32 = sub_20DD643D4();
    (*(*(v32 - 8) + 104))(v7, v31, v32);
    v33 = v38;
    (*(v4 + 104))(v7, *MEMORY[0x277D165B0], v38);
    LOBYTE(v31) = MEMORY[0x20F325300](v9, v7);
    v34 = *(v4 + 8);
    v34(v7, v33);
    v34(v9, v33);
    (*(v14 + 8))(v16, v13);
    if (v31)
    {
      result = *&v47;
      v36 = v48;
      *a2 = v47;
      a2[1] = v36;
      return result;
    }

    v18 = &unk_27C843A80;
    v19 = &qword_20DD94100;
    v20 = &v47;
  }

  sub_20D9D76EC(v20, v18, v19);
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_20DA55DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_20DD63EC4();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844778, &qword_20DD95CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v82 - v8;
  v9 = sub_20DD641F4();
  v91 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD63E94();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v82 - v15;
  v16 = sub_20DD63744();
  v17 = *(v16 - 8);
  v95 = v16;
  v96 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v89 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  v28 = a1;
  v29 = [a1 service];
  if (!v29)
  {
    goto LABEL_9;
  }

  v30 = v29;
  v31 = [v29 home];

  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = [v31 uniqueIdentifier];

  sub_20DD63714();
  v33 = *(v96 + 32);
  v34 = v25;
  v35 = v95;
  v33(v27, v34, v95);
  v40 = sub_20DD63C04();
  if (!*(v40 + 16) || (v41 = sub_20D9CB38C(v27, v36, v37, v38, v39), (v42 & 1) == 0))
  {

    (*(v96 + 8))(v27, v35);
    goto LABEL_9;
  }

  v83 = v9;
  v43 = v92;
  v44 = v93;
  (*(v92 + 16))(v14, *(v40 + 56) + *(v92 + 72) * v41, v93);

  v45 = v94;
  v46 = v14;
  v47 = v44;
  (*(v43 + 32))(v94, v46, v44);
  v48 = v28;
  v49 = [v28 service];
  if (!v49)
  {
    (*(v43 + 8))(v45, v47);
    (*(v96 + 8))(v27, v95);
    goto LABEL_9;
  }

  v50 = v49;
  v51 = [v49 uniqueIdentifier];

  sub_20DD63714();
  v52 = v89;
  v53 = v95;
  v33(v89, v20, v95);
  v54 = [v48 characteristicType];
  sub_20DD64EB4();

  v55 = v90;
  sub_20DD641E4();
  v56 = v91;
  v57 = v83;
  if ((*(v91 + 48))(v55, 1, v83) == 1)
  {
    v58 = *(v96 + 8);
    v58(v52, v53);
    (*(v92 + 8))(v94, v93);
    v58(v27, v53);
    sub_20D9D76EC(v55, &qword_27C844778, &qword_20DD95CD8);
LABEL_9:
    v59 = sub_20DD64444();
    return (*(*(v59 - 8) + 56))(v97, 1, 1, v59);
  }

  v61 = v87;
  (*(v56 + 32))(v87, v55, v57);
  v66 = sub_20DD63E74();
  v67 = v92;
  if (!*(v66 + 16) || (v68 = sub_20D9CB38C(v52, v62, v63, v64, v65), (v69 & 1) == 0))
  {

    (*(v56 + 8))(v61, v57);
    v79 = v95;
    v80 = *(v96 + 8);
    v80(v52, v95);
    (*(v67 + 8))(v94, v93);
    v80(v27, v79);
    v77 = sub_20DD64444();
    v74 = v88;
    (*(*(v77 - 8) + 56))(v88, 1, 1, v77);
LABEL_16:
    sub_20D9D76EC(v74, &qword_27C844720, &qword_20DD95C50);
    sub_20DD64444();
    return (*(*(v77 - 8) + 56))(v97, 1, 1, v77);
  }

  v70 = v61;
  v71 = v84;
  v72 = v85;
  (*(v85 + 16))(v84, *(v66 + 56) + *(v85 + 72) * v68, v86);

  v73 = v67;
  v74 = v88;
  sub_20DD63EA4();
  (*(v56 + 8))(v70, v57);
  v75 = v95;
  v76 = *(v96 + 8);
  v76(v52, v95);
  (*(v73 + 8))(v94, v93);
  v76(v27, v75);
  (*(v72 + 8))(v71, v86);
  v77 = sub_20DD64444();
  v78 = *(v77 - 8);
  if ((*(v78 + 48))(v74, 1, v77) == 1)
  {
    goto LABEL_16;
  }

  v81 = v97;
  (*(v78 + 32))(v97, v74, v77);
  return (*(v78 + 56))(v81, 0, 1, v77);
}

id HFCharacteristicValueManager.createHomeStateStreamObserver()()
{
  sub_20DD63B44();
  result = MEMORY[0x20F324A10]();
  if (result)
  {
    v1 = result;
    v2 = type metadata accessor for HFCharacteristicValueManager.HomeStateStreamObserver();
    v3 = objc_allocWithZone(v2);
    v4 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
    *&v3[v4] = sub_20D9D6124(MEMORY[0x277D84F90]);
    *&v3[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask] = 0;
    *&v3[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_stream] = v1;
    v5.receiver = v3;
    v5.super_class = v2;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

void sub_20DA569DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - v3;
  v69 = sub_20DD63744();
  v5 = *(v69 - 8);
  v6 = MEMORY[0x28223BE20](v69);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v56 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9C7830();
    sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
    sub_20DD65284();
    a1 = v73;
    v11 = v74;
    v12 = v75;
    v13 = v76;
    v14 = v77;
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

  v18 = (v12 + 64) >> 6;
  v63 = v4;
  v64 = (v5 + 32);
  v61 = v12;
  v62 = (v5 + 8);
  v65 = a1;
  while (1)
  {
    if (a1 < 0)
    {
      v24 = sub_20DD655F4();
      if (!v24)
      {
        goto LABEL_32;
      }

      v71 = v24;
      sub_20D9C7830();
      swift_dynamicCast();
      v23 = v72;
      v21 = v13;
      v22 = v14;
      if (!v72)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v22 = (v20 - 1) & v20;
    v23 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_32;
    }

LABEL_18:
    v25 = [v23 service];
    if (v25)
    {
      v70 = v22;
      v26 = v25;
      v27 = [v25 home];

      if (v27)
      {
        v28 = [v27 uniqueIdentifier];

        v29 = v66;
        sub_20DD63714();

        v30 = v68;
        (*v64)(v68, v29, v69);
        v31 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
        v32 = v67;
        swift_beginAccess();
        v33 = *(v32 + v31);
        if (!*(v33 + 16))
        {

LABEL_28:
          a1 = v65;
          (*v62)(v68, v69);
          v51 = sub_20DD64444();
          v49 = v63;
          (*(*(v51 - 8) + 56))(v63, 1, 1, v51);
          v52 = v70;
          goto LABEL_31;
        }

        v38 = sub_20D9CB38C(v30, v34, v35, v36, v37);
        if ((v39 & 1) == 0)
        {

          goto LABEL_28;
        }

        v40 = *(*(v33 + 56) + 8 * v38);

        v41 = [v23 uniqueIdentifier];
        v42 = v60;
        sub_20DD63714();

        a1 = v65;
        if (*(v40 + 16) && (v47 = sub_20D9CB38C(v42, v43, v44, v45, v46), (v48 & 1) != 0))
        {
          v59 = *(v40 + 56);
          v57 = v47;
          v56 = sub_20DD64444();
          v58 = *(v56 - 8);
          v49 = v63;
          (*(v58 + 16))(v63, v59 + *(v58 + 72) * v57, v56);

          v59 = *v62;
          v59(v60, v69);
          v59(v68, v69);
          v50 = v56;

          (*(v58 + 56))(v49, 0, 1, v50);
        }

        else
        {

          v53 = *v62;
          v54 = v69;
          (*v62)(v42, v69);
          v53(v68, v54);
          v50 = sub_20DD64444();
          v49 = v63;
          (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
        }

        sub_20DD64444();
        v55 = (*(*(v50 - 8) + 48))(v49, 1, v50);
        v52 = v70;
        if (v55 != 1)
        {
          sub_20D9D76EC(v49, &qword_27C844720, &qword_20DD95C50);
LABEL_32:
          sub_20D9C51CC(a1);
          return;
        }

LABEL_31:
        sub_20D9D76EC(v49, &qword_27C844720, &qword_20DD95C50);
        v13 = v21;
        v14 = v52;
      }

      else
      {

        v13 = v21;
        v14 = v70;
      }
    }

    else
    {

      v13 = v21;
      v14 = v22;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_32;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20DA57188(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_20DD64444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20DD63744();
  v10 = *(v59 - 8);
  v11 = MEMORY[0x28223BE20](v59);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v61 = &v58 - v17;
  v18 = [a1 service];
  if (!v18 || (v19 = v18, v20 = [v18 home], v19, !v20))
  {
    v44 = v60;
    *(v60 + 3) = MEMORY[0x277D839B0];
    *v44 = 0;
    return;
  }

  v21 = [v20 uniqueIdentifier];

  sub_20DD63714();
  v22 = v10;
  (*(v10 + 32))(v61, v16, v59);
  v23 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = v8;
  v26 = v7;
  if (!*(v24 + 16))
  {
    goto LABEL_10;
  }

  v31 = sub_20D9CB38C(v61, v27, v28, v29, v30);
  if ((v32 & 1) == 0)
  {

LABEL_10:
    (*(v25 + 56))(v6, 1, 1, v7);
LABEL_11:
    sub_20D9D76EC(v6, &qword_27C844720, &qword_20DD95C50);
    v46 = v60;
    v45 = v61;
    *(v60 + 3) = MEMORY[0x277D839B0];
    *v46 = 0;
    (*(v22 + 8))(v45, v59);
    return;
  }

  v33 = *(*(v24 + 56) + 8 * v31);

  v34 = [a1 uniqueIdentifier];
  sub_20DD63714();

  if (*(v33 + 16))
  {
    v39 = sub_20D9CB38C(v13, v35, v36, v37, v38);
    v40 = v58;
    if (v41)
    {
      (*(v25 + 16))(v6, *(v33 + 56) + *(v25 + 72) * v39, v26);
      v42 = *(v22 + 8);
      v42(v13, v59);

      v43 = 0;
    }

    else
    {

      v42 = *(v22 + 8);
      v42(v13, v59);
      v43 = 1;
    }
  }

  else
  {

    v42 = *(v22 + 8);
    v42(v13, v59);
    v43 = 1;
    v40 = v58;
  }

  (*(v25 + 56))(v6, v43, 1, v26);
  if ((*(v25 + 48))(v6, 1, v26) == 1)
  {
    goto LABEL_11;
  }

  (*(v25 + 32))(v40, v6, v26);
  v47 = sub_20DD64424();
  if (v47 == 2)
  {
    v68 = 0u;
    v69 = 0u;
    v48 = sub_20DD64414();
    if (v49)
    {
      v66 = 0u;
      v67 = 0u;
      v50 = sub_20DD64384();
      if (v51)
      {
        v64 = 0u;
        v65 = 0u;
        v52 = sub_20DD64394();
        if (v53)
        {
          *(&v63 + 1) = MEMORY[0x277D837D0];
          *&v62 = v52;
          *(&v62 + 1) = v53;
          (*(v25 + 8))(v40, v26);
          v42(v61, v59);
          sub_20D9D77C8(&v62, v60);
        }

        else
        {
          v62 = 0u;
          v63 = 0u;
          v54 = sub_20DD64434();
          if (v55 >> 60 == 15)
          {
            (*(v25 + 8))(v40, v26);
            v42(v61, v59);
            v56 = v60;
            *v60 = 0u;
            v56[1] = 0u;
          }

          else
          {
            v57 = v60;
            *(v60 + 3) = MEMORY[0x277CC9318];
            *v57 = v54;
            v57[1] = v55;
            (*(v25 + 8))(v40, v26);
            v42(v61, v59);
          }

          if (*(&v63 + 1))
          {
            sub_20D9D76EC(&v62, &unk_27C843A80, &qword_20DD94100);
          }
        }

        if (*(&v65 + 1))
        {
          sub_20D9D76EC(&v64, &unk_27C843A80, &qword_20DD94100);
        }
      }

      else
      {
        *(&v65 + 1) = MEMORY[0x277D839F8];
        *&v64 = v50;
        (*(v25 + 8))(v40, v26);
        v42(v61, v59);
        sub_20D9D77C8(&v64, v60);
      }

      if (*(&v67 + 1))
      {
        sub_20D9D76EC(&v66, &unk_27C843A80, &qword_20DD94100);
      }
    }

    else
    {
      *(&v67 + 1) = MEMORY[0x277D83B88];
      *&v66 = v48;
      (*(v25 + 8))(v40, v26);
      v42(v61, v59);
      sub_20D9D77C8(&v66, v60);
    }

    if (*(&v69 + 1))
    {
      sub_20D9D76EC(&v68, &unk_27C843A80, &qword_20DD94100);
    }
  }

  else
  {
    *(&v69 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v68) = v47 & 1;
    (*(v25 + 8))(v40, v26);
    v42(v61, v59);
    sub_20D9D77C8(&v68, v60);
  }
}

uint64_t sub_20DA57A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (!*&v0[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask])
  {
    v6 = sub_20DD65114();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_20DD650F4();
    v7 = v0;
    v8 = v0;
    v9 = sub_20DD650E4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    *&v8[v5] = sub_20DA1C514(0, 0, v4, &unk_20DD95C60, v10);
  }

  return result;
}

uint64_t sub_20DA57BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_20DD63B64();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_20DD63744();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844750, &qword_20DD95CB0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844758, &qword_20DD95CB8);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844760, &qword_20DD95CC0);
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_20DD650F4();
  v4[20] = sub_20DD650E4();
  v10 = sub_20DD65094();
  v4[21] = v10;
  v4[22] = v9;

  return MEMORY[0x2822009F8](sub_20DA57E50, v10, v9);
}

uint64_t sub_20DA57E50()
{
  v1 = v0[15];
  v2 = v0[3];
  sub_20DD63BB4();
  v3 = sub_20DD65114();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v0[23] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_20DA57F90;
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];

  return MEMORY[0x28216E948](v7, 0, 0, v8, sub_20DA5A664, v4, v9);
}

uint64_t sub_20DA57F90()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_20D9D76EC(v2, &qword_27C8443F0, &qword_20DD93820);
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20DA58100, v4, v3);
}

uint64_t sub_20DA58100()
{
  sub_20DD63884();
  v1 = sub_20DD650E4();
  v0[25] = v1;
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_20DA581CC;
  v3 = v0[12];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2821FF728](v0 + 2, v1, v4, v3);
}

uint64_t sub_20DA581CC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);

    return MEMORY[0x2822009F8](sub_20DA582E0, v4, v5);
  }

  return result;
}

uint64_t sub_20DA582E0()
{
  v1 = *(v0 + 16);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = *(v1 + 32);
    *(v0 + 248) = v2;
    v3 = -1;
    v4 = -1 << v2;
    if (-(-1 << v2) < 64)
    {
      v3 = ~(-1 << -(-1 << v2));
    }

    v5 = v3 & *(v1 + 64);
    if (v5)
    {
      v6 = 0;
LABEL_12:
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      v37 = *(v0 + 32);
      v38 = (v5 - 1) & v5;
      v23 = __clz(__rbit64(v5)) | (v6 << 6);
      (*(v19 + 16))(v18, *(v1 + 48) + *(v19 + 72) * v23, v20);
      (*(v22 + 16))(v21, *(v1 + 56) + *(v22 + 72) * v23, v37);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
      v25 = *(v24 + 48);
      (*(v19 + 32))(v17, v18, v20);
      (*(v22 + 32))(v17 + v25, v21, v37);
      (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
      v26 = v38;
      v16 = v6;
    }

    else
    {
      v15 = 0;
      v16 = ((63 - v4) >> 6) - 1;
      while (v16 != v15)
      {
        v6 = v15 + 1;
        v5 = *(v1 + 72 + 8 * v15++);
        if (v5)
        {
          goto LABEL_12;
        }
      }

      v35 = *(v0 + 80);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      v26 = 0;
    }

    *(v0 + 224) = v26;
    *(v0 + 232) = v16;
    v27 = *(v0 + 88);
    sub_20DA031AC(*(v0 + 80), v27, &qword_27C844750, &qword_20DD95CB0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {

      v29 = sub_20DD650E4();
      *(v0 + 200) = v29;
      v30 = swift_task_alloc();
      *(v0 + 208) = v30;
      *v30 = v0;
      v30[1] = sub_20DA581CC;
      v31 = *(v0 + 96);
      v32 = MEMORY[0x277D85700];

      return MEMORY[0x2821FF728](v0 + 16, v29, v32, v31);
    }

    else
    {
      (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 88) + *(v28 + 48), *(v0 + 32));
      v33 = swift_task_alloc();
      *(v0 + 240) = v33;
      *v33 = v0;
      v33[1] = sub_20DA5878C;
      v34 = *(v0 + 48);

      return sub_20DA58F0C(v34);
    }
  }

  else
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_20DA5878C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20DA588AC, v3, v2);
}

uint64_t sub_20DA588AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v4 = (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  if (!v8)
  {
    v11 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v11 <= (v9 + 1))
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v32 = *(v0 + 80);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
        (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
        v24 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 216);
      v8 = *(v10 + 8 * v14 + 64);
      ++v9;
      if (v8)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2821FF728](v4, v5, v6, v7);
  }

  v10 = *(v0 + 216);
LABEL_11:
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v34 = *(v0 + 32);
  v35 = (v8 - 1) & v8;
  v21 = __clz(__rbit64(v8)) | (v9 << 6);
  (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v21, v17);
  (*(v20 + 16))(v19, *(v10 + 56) + *(v20 + 72) * v21, v34);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
  v23 = *(v22 + 48);
  (*(v18 + 32))(v16, v15, v17);
  (*(v20 + 32))(v16 + v23, v19, v34);
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  v24 = v35;
  v13 = v9;
LABEL_12:
  *(v0 + 224) = v24;
  *(v0 + 232) = v13;
  v25 = *(v0 + 88);
  sub_20DA031AC(*(v0 + 80), v25, &qword_27C844750, &qword_20DD95CB0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {

    v27 = sub_20DD650E4();
    *(v0 + 200) = v27;
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = sub_20DA581CC;
    v7 = *(v0 + 96);
    v6 = MEMORY[0x277D85700];
    v4 = v0 + 16;
    v5 = v27;

    return MEMORY[0x2821FF728](v4, v5, v6, v7);
  }

  (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 88) + *(v26 + 48), *(v0 + 32));
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_20DA5878C;
  v30 = *(v0 + 48);

  return sub_20DA58F0C(v30);
}

uint64_t sub_20DA58CAC(void *a1)
{
  sub_20DD63BB4();
  v2 = a1;
  v3 = sub_20DD63BA4();
  v4 = sub_20DA5A66C(&unk_27C842970, MEMORY[0x277D153C8], MEMORY[0x277D153E0]);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844770, &qword_20DD95CD0);
  v7 = MEMORY[0x277D84A98];
  v8 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FF730](sub_20DA5A6B4, v5, v6, v7, v8);
}

uint64_t sub_20DA58DF4()
{
  v1 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (*(v0 + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask))
  {

    sub_20DD65174();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_20DA58F0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD643E4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_20DD64444();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_20DD64524();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_20DD63EC4();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_20DD63744();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844740, &qword_20DD95CA0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v8 = sub_20DD63E94();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5920C, 0, 0);
}

uint64_t sub_20DA5920C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[5];
  sub_20DD639A4();
  v9 = sub_20DD63E74();
  (*(v2 + 8))(v1, v3);
  v11 = 0;
  v12 = v9 + 64;
  v86 = v9;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v9 + 64);
  v16 = (63 - v14) >> 6;
  v90 = (v5 + 32);
  v87 = (v6 + 8);
  v99 = *MEMORY[0x277D165C0];
  v98 = *MEMORY[0x277D165B0];
  v97 = (v8 + 104);
  v96 = (v8 + 8);
  v95 = (v7 + 8);
  v92 = (v7 + 32);
  v93 = v4;
  v94 = (v4 + 8);
  v102 = v7;
  v91 = (v7 + 40);
  v17 = MEMORY[0x277D84F98];
  v82 = v5;
  v83 = (v5 + 8);
  v84 = v16;
  v85 = v9 + 64;
  while (1)
  {
    v0[28] = v17;
    v104 = v17;
    if (v15)
    {
      v89 = v11;
      v22 = v11;
      goto LABEL_15;
    }

    v23 = v16 <= v11 + 1 ? v11 + 1 : v16;
    v24 = v23 - 1;
    v25 = &qword_27C844748;
    v26 = &qword_20DD95CA8;
    do
    {
      v22 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x2822009F8](v25, v26, v10);
      }

      if (v22 >= v16)
      {
        v76 = v0[23];
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
        (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
        v88 = 0;
        v89 = v24;
        goto LABEL_16;
      }

      v15 = *(v12 + 8 * v22);
      ++v11;
    }

    while (!v15);
    v89 = v22;
LABEL_15:
    v27 = v0[22];
    v28 = v0[23];
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[15];
    v88 = (v15 - 1) & v15;
    v32 = __clz(__rbit64(v15)) | (v22 << 6);
    (*(v93 + 16))(v27, *(v86 + 48) + *(v93 + 72) * v32, v29);
    (*(v82 + 16))(v30, *(v86 + 56) + *(v82 + 72) * v32, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
    v34 = *(v33 + 48);
    (*(v93 + 32))(v28, v27, v29);
    (*(v82 + 32))(v28 + v34, v30, v31);
    (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
LABEL_16:
    v35 = v0[24];
    sub_20DA031AC(v0[23], v35, &qword_27C844740, &qword_20DD95CA0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      sub_20DD63B54();
      sub_20DD650F4();
      v0[29] = sub_20DD650E4();
      v79 = sub_20DD65094();
      v81 = v80;
      v25 = sub_20DA59A80;
      v26 = v79;
      v10 = v81;

      return MEMORY[0x2822009F8](v25, v26, v10);
    }

    v37 = v0[14];
    v38 = v0[12];
    (*v90)(v0[17], v0[24] + *(v36 + 48), v0[15]);
    sub_20DD63EB4();
    v39 = sub_20DD64514();
    (*v87)(v37, v38);
    v25 = v39;
    v103 = *(v39 + 16);
    if (v103)
    {
      break;
    }

LABEL_4:
    v18 = v0[24];
    v19 = v0[19];
    v20 = v0[17];
    v21 = v0[15];

    (*v83)(v20, v21);
    (*v94)(v18, v19);
    v16 = v84;
    v12 = v85;
    v15 = v88;
    v11 = v89;
    v17 = v104;
  }

  v40 = 0;
  v100 = v39;
  v101 = v39 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  while (1)
  {
    if (v40 >= *(v25 + 2))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v41 = v0[7];
    v42 = v0[6];
    v43 = v0[4];
    v105 = *(v102 + 72);
    v44 = *(v102 + 16);
    v44(v0[11], v101 + v105 * v40, v0[8]);
    sub_20DD643F4();
    v45 = sub_20DD643D4();
    (*(*(v45 - 8) + 104))(v42, v99, v45);
    (*v97)(v42, v98, v43);
    v46 = MEMORY[0x20F325300](v41, v42);
    v47 = *v96;
    (*v96)(v42, v43);
    v47(v41, v43);
    if ((v46 & 1) == 0)
    {
      (*v95)(v0[11], v0[8]);
      goto LABEL_20;
    }

    v48 = v0[21];
    v49 = v0[10];
    v50 = v0[11];
    v51 = v0[8];
    sub_20DD64404();
    v44(v49, v50, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = sub_20D9CB38C(v48, v53, v54, v55, v56);
    v58 = v104[2];
    v59 = (v26 & 1) == 0;
    v25 = (v58 + v59);
    if (__OFADD__(v58, v59))
    {
      goto LABEL_41;
    }

    v60 = v26;
    if (v104[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D9D37BC();
    }

LABEL_29:
    v68 = v0[21];
    v69 = v0[19];
    v70 = v0[10];
    v71 = v0[11];
    v72 = v0[8];
    if (v60)
    {
      (*v91)(v104[7] + v57 * v105, v0[10], v0[8]);
      (*v94)(v68, v69);
      (*v95)(v71, v72);
    }

    else
    {
      v104[(v57 >> 6) + 8] |= 1 << v57;
      (*(v93 + 16))(v104[6] + *(v93 + 72) * v57, v68, v69);
      (*v92)(v104[7] + v57 * v105, v70, v72);
      (*(v93 + 8))(v68, v69);
      v25 = (*v95)(v71, v72);
      v73 = v104[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_43;
      }

      v104[2] = v75;
    }

LABEL_20:
    ++v40;
    v25 = v100;
    if (v103 == v40)
    {
      goto LABEL_4;
    }
  }

  v61 = v0[21];
  sub_20D9CF5A0(v25, isUniquelyReferenced_nonNull_native);
  v66 = sub_20D9CB38C(v61, v62, v63, v64, v65);
  if ((v60 & 1) == (v67 & 1))
  {
    v57 = v66;
    goto LABEL_29;
  }

  return sub_20DD659E4();
}

uint64_t sub_20DA59A80()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);

  sub_20DA59C20(v1, v2);

  return MEMORY[0x2822009F8](sub_20DA59B0C, 0, 0);
}

uint64_t sub_20DA59B0C()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DA59C20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v34 = sub_20DD63744();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v10);
  v35 = v12;
  *(v4 + v10) = 0x8000000000000000;
  v21 = sub_20D9CB38C(a2, v13, v14, v15, v16);
  v22 = v12[2];
  v23 = (v17 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v17;
  if (v12[3] >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v10) = v12;
      if (v17)
      {
LABEL_9:
        *(v12[7] + 8 * v21) = a1;

        swift_endAccess();
      }

LABEL_8:
      v31 = sub_20D9D630C(MEMORY[0x277D84F90]);
      (*(v7 + 16))(v9, a2, v34);
      sub_20D9D1E1C(v21, v9, v31, v12);
      goto LABEL_9;
    }

LABEL_11:
    sub_20D9D3518();
    v12 = v35;
    *(v4 + v10) = v35;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_20D9CF58C(v24, isUniquelyReferenced_nonNull_native, v18, v19, v20);
  v12 = v35;
  v29 = sub_20D9CB38C(a2, v25, v26, v27, v28);
  if ((v3 & 1) == (v30 & 1))
  {
    v21 = v29;
    *(v4 + v10) = v12;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_20DD659E4();
  __break(1u);
  return result;
}

id HFCharacteristicValueManager.HomeStateStreamObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HFCharacteristicValueManager.HomeStateStreamObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HFCharacteristicValueManager.HomeStateStreamObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _sSo28HFCharacteristicValueManagerC4HomeE06staticD27DataModelHasInProgressWrite3forSbShySo16HMCharacteristicCG_tF_0(uint64_t a1)
{
  v51 = sub_20DD643E4();
  v2 = *(v51 - 8);
  v3 = MEMORY[0x28223BE20](v51);
  v50 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = sub_20DD64444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9C7830();
    sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
    sub_20DD65284();
    a1 = v57;
    v12 = v58;
    v13 = v59;
    v14 = v60;
    v15 = v61;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(a1 + 56);

    v13 = v17;
    v14 = 0;
  }

  v39[1] = v13;
  v20 = (v13 + 64) >> 6;
  v53 = (v10 + 48);
  v45 = (v10 + 32);
  v44 = *MEMORY[0x277D165C0];
  v43 = *MEMORY[0x277D165B0];
  v41 = (v2 + 8);
  v42 = (v2 + 104);
  v40 = (v10 + 8);
  v48 = v9;
  v46 = v20;
  while (1)
  {
    v21 = v14;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v25 = sub_20DD655F4();
    if (!v25 || (v55 = v25, sub_20D9C7830(), swift_dynamicCast(), v24 = v56, v54 = v15, !v56))
    {
LABEL_20:
      sub_20D9C51CC(a1);
      return;
    }

LABEL_18:
    sub_20DD63C84();
    v26 = sub_20DD63C64();
    sub_20DA55DA4(v24, v8);

    if ((*v53)(v8, 1, v9) == 1)
    {

      sub_20D9D76EC(v8, &qword_27C844720, &qword_20DD95C50);
      v15 = v54;
    }

    else
    {
      v39[2] = v15;
      v39[3] = v21;
      v27 = v47;
      (*v45)(v47, v8, v9);
      v28 = v49;
      sub_20DD643F4();
      v29 = sub_20DD643D4();
      v30 = v12;
      v31 = v50;
      (*(*(v29 - 8) + 104))(v50, v44, v29);
      v32 = v8;
      v33 = a1;
      v34 = v51;
      (*v42)(v31, v43, v51);
      v52 = MEMORY[0x20F325300](v28, v31);

      v35 = *v41;
      v36 = v31;
      v12 = v30;
      v20 = v46;
      (*v41)(v36, v34);
      v37 = v28;
      v9 = v48;
      v38 = v34;
      a1 = v33;
      v8 = v32;
      v35(v37, v38);
      (*v40)(v27, v9);
      v15 = v54;
      if (v52)
      {
        goto LABEL_20;
      }
    }
  }

  v22 = v14;
  v23 = v15;
  if (v15)
  {
LABEL_14:
    v54 = (v23 - 1) & v23;
    v24 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v20)
    {
      goto LABEL_20;
    }

    v23 = *(v12 + 8 * v14);
    ++v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20DA5A4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA57BB0(a1, v4, v5, v6);
}

uint64_t sub_20DA5A66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DA5A6B4@<X0>(uint64_t *a1@<X8>)
{
  sub_20DD63B04();
  v2 = sub_20DD63994();

  *a1 = v2;
  return result;
}

id CameraEventDiagnosticsAttachmentRequestListener.__allocating_init(homeManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v6, v5, sub_20DA5CDA8, qword_27C844780, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

id CameraEventDiagnosticsAttachmentRequestListener.init(homeManager:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v6, v5, sub_20DA5CDA8, qword_27C844780, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

id CameraEventDiagnosticsAttachmentRequestListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CameraEventDiagnosticsAttachmentRequestListener.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v2, v0, qword_27C844780, 0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20DA5AB64()
{
  result = sub_20DD64E74();
  qword_27C844780 = result;
  return result;
}

uint64_t sub_20DA5AB9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20DA5AC2C;

  return sub_20DA5AF04();
}

uint64_t sub_20DA5AC2C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA5AD60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20DA5AD60()
{
  if (qword_27C8424A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844788);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20D9BF000, v4, v5, "Error serializing cloud events: %@", v8, 0xCu);
    sub_20D9D76EC(v9, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20DA5AF04()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90);
  v1[8] = swift_task_alloc();
  v2 = sub_20DD63484();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v1[13] = swift_task_alloc();
  v3 = sub_20DD63744();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v1[17] = swift_task_alloc();
  v4 = sub_20DD63514();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5B18C, 0, 0);
}

uint64_t sub_20DA5B18C()
{
  v98 = v0;
  v97[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  type metadata accessor for CameraEventDebugLogger(0);
  static CameraEventDebugLogger.debugLogDirectory.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(*(v0 + 136), &qword_27C8442B8, &qword_20DD94B60);
    if (qword_27C8424A8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v4 = sub_20DD64C44();
    __swift_project_value_buffer(v4, qword_27C844788);
    v5 = sub_20DD64C24();
    v6 = sub_20DD65364();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20D9BF000, v5, v6, "Could not get debug log directory", v7, 2u);
      MEMORY[0x20F327D10](v7, -1, -1);
    }

    goto LABEL_6;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 192), *(v0 + 136), *(v0 + 144));
  v10 = [objc_opt_self() defaultManager];
  *(v0 + 200) = v10;
  sub_20DD63504();
  v11 = sub_20DD64E74();

  v12 = [v10 fileExistsAtPath_];

  if (!v12)
  {
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v60 = *(v0 + 192);
    v62 = *(v0 + 152);
    v61 = *(v0 + 160);
    v63 = *(v0 + 144);
    v64 = sub_20DD64C44();
    __swift_project_value_buffer(v64, qword_27C844788);
    (*(v62 + 16))(v61, v60, v63);
    v65 = sub_20DD64C24();
    v66 = sub_20DD65344();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 192);
    v70 = *(v0 + 152);
    v69 = *(v0 + 160);
    v71 = *(v0 + 144);
    if (v67)
    {
      v72 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97[0] = v96;
      *v72 = 136315138;
      sub_20DA62600(&unk_27C844840, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v73 = sub_20DD65934();
      v94 = v68;
      v75 = v74;
      v76 = *(v70 + 8);
      v76(v69, v71);
      v77 = sub_20D9E0B38(v73, v75, v97);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_20D9BF000, v65, v66, "Debug log directory does not exist: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x20F327D10](v96, -1, -1);
      MEMORY[0x20F327D10](v72, -1, -1);

      v76(v94, v71);
    }

    else
    {

      v79 = *(v70 + 8);
      v79(v69, v71);
      v79(v68, v71);
    }

LABEL_6:

    v8 = *(v0 + 8);
LABEL_7:

    return v8();
  }

  v13 = sub_20DD634D4();
  type metadata accessor for URLResourceKey(0);
  v14 = sub_20DD64FB4();
  *(v0 + 48) = 0;
  v15 = [v10 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v14 options:0 error:v0 + 48];

  v16 = *(v0 + 48);
  if (!v15)
  {
    v80 = *(v0 + 192);
    v82 = *(v0 + 144);
    v81 = *(v0 + 152);
    v83 = v16;
    sub_20DD634A4();

    swift_willThrow();
    (*(v81 + 8))(v80, v82);

    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v17 = sub_20DD64FD4();
  *(v0 + 208) = v17;
  v18 = v16;

  v19 = sub_20D9D652C(MEMORY[0x277D84F90]);
  v20 = v19;
  v21 = *(v17 + 16);
  *(v0 + 216) = v21;
  if (!v21)
  {
LABEL_34:
    *(v0 + 280) = v20;

    if (*(v20 + 16))
    {
      v78 = swift_task_alloc();
      *(v0 + 288) = v78;
      *v78 = v0;
      v78[1] = sub_20DA5C848;

      return sub_20DA5D408(v20);
    }

    v84 = *(v0 + 200);
    (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

    goto LABEL_6;
  }

  v22 = 0;
  *(v0 + 304) = *(*(v0 + 152) + 80);
  v95 = v19;
  while (1)
  {
    *(v0 + 232) = v22;
    *(v0 + 240) = v20;
    *(v0 + 224) = v20;
    v24 = *(v0 + 208);
    if (v22 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v25 = *(v0 + 184);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v27 + 16);
    v27 += 16;
    v28 = v29;
    v30 = v24 + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v27 + 56) * v22;
    *(v0 + 248) = v29;
    *(v0 + 256) = v27 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v25, v30, v26);
    if (sub_20DD634B4() == 1852797802 && v31 == 0xE400000000000000)
    {
      break;
    }

    v32 = sub_20DD65974();

    if (v32)
    {
      goto LABEL_22;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
LABEL_16:
    v22 = *(v0 + 232) + 1;
    if (v22 == *(v0 + 216))
    {
      goto LABEL_34;
    }
  }

LABEL_22:
  *(v0 + 16) = sub_20DD634C4();
  *(v0 + 24) = v33;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  sub_20D9C8A28();
  v34 = sub_20DD654B4();

  if (*(v34 + 16) != 3)
  {
LABEL_25:
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 184);
    v39 = *(v0 + 168);
    v40 = *(v0 + 144);
    v41 = sub_20DD64C44();
    __swift_project_value_buffer(v41, qword_27C844788);
    v28(v39, v38, v40);

    v42 = sub_20DD64C24();
    v43 = sub_20DD65364();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 184);
    v46 = *(v0 + 168);
    v47 = *(v0 + 144);
    v48 = *(v0 + 152);
    if (v44)
    {
      v49 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v97[0] = v92;
      *v49 = 136315394;
      v50 = sub_20DD63504();
      v51 = v47;
      v93 = v47;
      v53 = v52;
      v54 = *(v48 + 8);
      v54(v46, v51);
      v55 = sub_20D9E0B38(v50, v53, v97);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = MEMORY[0x20F325F40](v34, MEMORY[0x277D837D0]);
      v58 = v57;

      v59 = sub_20D9E0B38(v56, v58, v97);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_20D9BF000, v42, v43, "Could not extract UUID from file at path: %s; components: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v92, -1, -1);
      MEMORY[0x20F327D10](v49, -1, -1);

      v54(v45, v93);
    }

    else
    {

      v23 = *(v48 + 8);
      v23(v46, v47);
      v23(v45, v47);
    }

    v20 = v95;
    goto LABEL_16;
  }

  v35 = *(v0 + 112);
  v36 = *(v0 + 120);
  v37 = *(v0 + 104);

  sub_20DD636D4();

  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_20D9D76EC(*(v0 + 104), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_25;
  }

  v86 = *(v0 + 120);
  v85 = *(v0 + 128);
  v88 = *(v0 + 104);
  v87 = *(v0 + 112);

  (*(v86 + 32))(v85, v88, v87);
  v89 = swift_task_alloc();
  *(v0 + 264) = v89;
  *v89 = v0;
  v89[1] = sub_20DA5BD38;
  v90 = *(v0 + 184);
  v91 = *(v0 + 64);

  return sub_20DA5CE00(v91, v90);
}