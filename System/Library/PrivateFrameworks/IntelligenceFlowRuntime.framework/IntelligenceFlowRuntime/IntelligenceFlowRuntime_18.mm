void sub_22BD299D8()
{
  sub_22BB31014();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v35 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v38 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F39C();
  v37 = v15;
  v27 = v5;
  if (v3 != v5)
  {
    v16 = *v1;
    v36 = *(v14 + 16);
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = *v1 + v17 * (v3 - 1);
    v32 = -v17;
    v33 = (v14 + 32);
    v20 = v7 - v3;
    v34 = v16;
    v26 = v17;
    v21 = v16 + v17 * v3;
    while (2)
    {
      v30 = v19;
      v31 = v3;
      v28 = v21;
      v29 = v20;
      do
      {
        v36(v37, v21, v8);
        v36(v38, v19, v8);
        v22 = sub_22BDB4BF4();
        v23 = *v18;
        (*v18)(v38, v8);
        v23(v37, v8);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = *v33;
        (*v33)(v35, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v24(v19, v35, v8);
        v19 += v32;
        v21 += v32;
      }

      while (!__CFADD__(v20++, 1));
      v3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  sub_22BB376A8();
}

void sub_22BD29C1C()
{
  sub_22BB31014();
  v116 = v0;
  v3 = v2;
  v5 = v4;
  v106 = v6;
  sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB30444();
  v113 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  v110 = v9;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F384();
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v124 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F39C();
  v123 = v17;
  v18 = v5[1];
  v115 = v5;
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    v117 = v20;
    v20 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    v1 = v116;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v92 = (v117 + 16);
      for (i = *(v117 + 2); i >= 2; *v92 = i)
      {
        if (!*v115)
        {
          goto LABEL_138;
        }

        v94 = &v117[16 * i];
        v95 = *v94;
        v96 = &v92[2 * i];
        v97 = *(v96 + 1);
        v98 = sub_22BB8AB98(*v115);
        sub_22BD2ADC0(v98, v99, v100, v20, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
        if (v1)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v92)
        {
          goto LABEL_127;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v14 = *v92 - i;
        if (*v92 < i)
        {
          goto LABEL_128;
        }

        i = *v92 - 1;
        sub_22BDB12C0(v96 + 16, v14, v96);
      }

LABEL_99:

      sub_22BB376A8();
      return;
    }

LABEL_135:
    v117 = sub_22BDB12A8(v117, v14, v15, v16);
    goto LABEL_103;
  }

  v105 = v3;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v19;
    if (v19 + 1 < v18)
    {
      v117 = v20;
      v118 = v19 + 1;
      v23 = *v115;
      v24 = *(v113 + 72);
      v20 = *v115 + v24 * v22;
      sub_22BC5E5C4();
      sub_22BC5E5C4();
      v111 = *v124;
      v112 = *v123;
      sub_22BB58728(v124, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v123, &qword_27D8E42E0, &unk_22BDD03F0);
      v25 = v21 + 2;
      v114 = v24;
      v26 = v23 + v24 * (v21 + 2);
      while (1)
      {
        v27 = v25;
        if (++v118 >= v18)
        {
          break;
        }

        sub_22BC5E5C4();
        sub_22BC5E5C4();
        v1 = *v123;
        v28 = *v124;
        sub_22BB58728(v124, &qword_27D8E42E0, &unk_22BDD03F0);
        sub_22BB58728(v123, &qword_27D8E42E0, &unk_22BDD03F0);
        v26 += v24;
        v20 += v24;
        v25 = v27 + 1;
        if (v112 < v111 == v1 >= v28)
        {
          goto LABEL_9;
        }
      }

      v118 = v18;
LABEL_9:
      if (v112 >= v111)
      {
        v20 = v117;
        v22 = v118;
        v21 = v107;
      }

      else
      {
        v22 = v118;
        if (v118 < v107)
        {
          goto LABEL_132;
        }

        if (v107 >= v118)
        {
          v20 = v117;
          v21 = v107;
        }

        else
        {
          if (v18 >= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v18;
          }

          v30 = v24 * (v29 - 1);
          v31 = v24 * v29;
          v1 = v107 * v24;
          v32 = v107;
          v21 = v107;
          do
          {
            if (v32 != --v22)
            {
              v33 = *v115;
              if (!*v115)
              {
                goto LABEL_139;
              }

              sub_22BC8D26C();
              v34 = v1 < v30 || v33 + v1 >= (v33 + v31);
              if (v34)
              {
                sub_22BB384A8();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v1 != v30)
              {
                sub_22BB384A8();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BC8D26C();
              v21 = v107;
            }

            ++v32;
            v30 -= v24;
            v31 -= v24;
            v1 += v24;
          }

          while (v32 < v22);
          v20 = v117;
          v22 = v118;
        }
      }
    }

    v35 = v115[1];
    if (v22 < v35)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v105)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    v120 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD2F758();
      v20 = v90;
    }

    v48 = *(v20 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v20 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v20 = v91;
    }

    *(v20 + 16) = v49;
    v50 = v20 + 32;
    v51 = (v20 + 32 + 16 * v48);
    *v51 = v21;
    v51[1] = v22;
    v122 = *v106;
    if (!*v106)
    {
      goto LABEL_140;
    }

    if (v48)
    {
      v117 = v20;
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v20 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v20 + 32);
          v56 = *(v20 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_68:
          if (v58)
          {
            goto LABEL_117;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_120;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_125;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v49 < 2)
        {
          goto LABEL_119;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_83:
        if (v73)
        {
          goto LABEL_122;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_124;
        }

        if (v80 < v72)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_134;
        }

        if (!*v115)
        {
          goto LABEL_137;
        }

        v84 = (v50 + 16 * (v52 - 1));
        v85 = *v84;
        v86 = v50;
        v87 = v52;
        v20 = v50 + 16 * v52;
        v1 = *(v20 + 8);
        v88 = v116;
        sub_22BD2ADC0(*v115 + *(v113 + 72) * *v84, *v115 + *(v113 + 72) * *v20, *v115 + *(v113 + 72) * v1, v122, v44, v45, v46, v47, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
        v116 = v88;
        if (v88)
        {
          goto LABEL_99;
        }

        if (v1 < v85)
        {
          goto LABEL_112;
        }

        v89 = *(v117 + 2);
        if (v87 > v89)
        {
          goto LABEL_113;
        }

        *v84 = v85;
        v84[1] = v1;
        if (v87 >= v89)
        {
          goto LABEL_114;
        }

        v49 = v89 - 1;
        sub_22BDB12C0((v20 + 16), v89 - 1 - v87, v20);
        v20 = v117;
        *(v117 + 2) = v89 - 1;
        v50 = v86;
        if (v89 <= 2)
        {
          goto LABEL_97;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_115;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_116;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_118;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_121;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_129;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v18 = v115[1];
    v19 = v120;
    if (v120 >= v18)
    {
      goto LABEL_101;
    }
  }

  v36 = v21 + v105;
  if (__OFADD__(v21, v105))
  {
    goto LABEL_133;
  }

  if (v36 >= v35)
  {
    v36 = v115[1];
  }

  if (v36 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v36)
  {
    goto LABEL_47;
  }

  v117 = v20;
  v37 = *(v113 + 72);
  v38 = *v115 + v37 * (v22 - 1);
  v1 = -v37;
  v39 = v21 - v22;
  v121 = *v115;
  v108 = v37;
  v109 = v36;
  v40 = *v115 + v22 * v37;
LABEL_40:
  v119 = v22;
  v111 = v40;
  v112 = v39;
  v114 = v38;
  v41 = v38;
  while (1)
  {
    sub_22BC5E5C4();
    sub_22BC5E5C4();
    v42 = *v123;
    v43 = *v124;
    sub_22BB58728(v124, &qword_27D8E42E0, &unk_22BDD03F0);
    sub_22BB58728(v123, &qword_27D8E42E0, &unk_22BDD03F0);
    if (v42 >= v43)
    {
LABEL_45:
      v22 = v119 + 1;
      v38 = v114 + v108;
      v39 = v112 - 1;
      v40 = v111 + v108;
      if (v119 + 1 == v109)
      {
        v22 = v109;
        v20 = v117;
        v21 = v107;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v121)
    {
      break;
    }

    sub_22BC8D26C();
    sub_22BB345A8();
    swift_arrayInitWithTakeFrontToBack();
    sub_22BC8D26C();
    v41 += v1;
    v40 += v1;
    v34 = __CFADD__(v39++, 1);
    if (v34)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_22BD2A4E4()
{
  sub_22BB31014();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v119 = v7;
  v143 = sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  v122 = v9;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F384();
  v135 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F384();
  v142 = v13;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F39C();
  v141 = v19;
  v127 = v18;
  v128 = v6;
  v20 = v6[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_101:
    v1 = *v119;
    if (!*v119)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v132 = v22;
      v103 = v22 + 16;
      v104 = *(v22 + 2);
      while (v104 >= 2)
      {
        if (!*v128)
        {
          goto LABEL_139;
        }

        v105 = v2;
        v106 = &v132[16 * v104];
        v2 = *v106;
        v22 = &v103[2 * v104];
        v107 = *(v22 + 1);
        v108 = sub_22BB8AB98(*v128);
        sub_22BD2B248(v108, v109, v110, v1, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
        if (v105)
        {
          break;
        }

        if (v107 < v2)
        {
          goto LABEL_127;
        }

        if (v104 - 2 >= *v103)
        {
          goto LABEL_128;
        }

        *v106 = v2;
        v106[1] = v107;
        v15 = *v103 - v104;
        if (*v103 < v104)
        {
          goto LABEL_129;
        }

        v104 = *v103 - 1;
        sub_22BDB12C0(v22 + 16, v15, v22);
        *v103 = v104;
        v2 = 0;
      }

LABEL_111:

      sub_22BB376A8();
      return;
    }

LABEL_136:
    v22 = sub_22BDB12A8(v22, v15, v16, v17);
    goto LABEL_103;
  }

  v116 = v4;
  v21 = 0;
  v140 = (v18 + 8);
  v139 = (v18 + 32);
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v21++;
    if (v21 < v20)
    {
      v118 = v2;
      v129 = v22;
      v133 = v20;
      v24 = *v128;
      v25 = *(v18 + 72);
      v1 = v23;
      v26 = *v128 + v25 * v21;
      v27 = *(v18 + 16);
      v28 = sub_22BB3A86C();
      v126 = v21;
      (v27)(v28);
      v124 = v27;
      (v27)(v142, v24 + v25 * v23, v143);
      LODWORD(v125) = sub_22BDB4BF4();
      v29 = *(v127 + 8);
      v30 = sub_22BB31528();
      v29(v30);
      v31 = sub_22BB721FC();
      v123 = v29;
      v29(v31);
      v32 = v133;
      v117 = v23;
      v33 = v23 + 2;
      v136 = v25;
      v22 = (v24 + v25 * (v23 + 2));
      while (1)
      {
        v34 = v33;
        if (++v21 >= v32)
        {
          break;
        }

        (v124)(v141, v22, v143);
        (v124)(v142, v26, v143);
        v35 = sub_22BDB4BF4() & 1;
        v1 = v140;
        (v29)(v142, v143);
        (v29)(v141, v143);
        v22 += v25;
        v26 += v25;
        v33 = v34 + 1;
        v32 = v133;
        if ((v125 & 1) != v35)
        {
          goto LABEL_9;
        }
      }

      v21 = v32;
LABEL_9:
      v2 = v118;
      if (v125)
      {
        v23 = v117;
        if (v21 < v117)
        {
          goto LABEL_133;
        }

        if (v117 >= v21)
        {
          v18 = v127;
          v22 = v129;
          goto LABEL_32;
        }

        v1 = v21;
        if (v32 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v32;
        }

        v37 = v136 * (v36 - 1);
        v38 = v136 * v36;
        v39 = v117 * v136;
        v126 = v21;
        do
        {
          if (v23 != --v1)
          {
            v40 = *v128;
            if (!*v128)
            {
              goto LABEL_140;
            }

            v41 = *v139;
            (*v139)(v122, v40 + v39, v143);
            v42 = v39 < v37 || v40 + v39 >= (v40 + v38);
            if (v42)
            {
              sub_22BD2F77C();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v37)
            {
              sub_22BD2F77C();
              swift_arrayInitWithTakeBackToFront();
            }

            v41(v40 + v37, v122, v143);
          }

          ++v23;
          v37 -= v136;
          v38 -= v136;
          v39 += v136;
        }

        while (v23 < v1);
        v2 = v118;
        v21 = v126;
        v18 = v127;
      }

      else
      {
        v18 = v127;
      }

      v22 = v129;
      v23 = v117;
    }

LABEL_32:
    v43 = v128[1];
    if (v21 < v43)
    {
      if (__OFSUB__(v21, v23))
      {
        goto LABEL_132;
      }

      if (v21 - v23 < v116)
      {
        break;
      }
    }

LABEL_48:
    if (v21 < v23)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD2F758();
      v22 = v101;
    }

    v60 = *(v22 + 2);
    v61 = v60 + 1;
    if (v60 >= *(v22 + 3) >> 1)
    {
      sub_22BD8F3C8();
      v22 = v102;
    }

    *(v22 + 2) = v61;
    v62 = v22 + 32;
    v63 = &v22[16 * v60 + 32];
    *v63 = v23;
    *(v63 + 1) = v21;
    v138 = *v119;
    if (!*v119)
    {
      goto LABEL_141;
    }

    if (v60)
    {
      v131 = v22;
      while (1)
      {
        v64 = v61 - 1;
        v65 = &v62[16 * v61 - 16];
        v66 = &v22[16 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = *(v22 + 4);
          v68 = *(v22 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_69:
          if (v70)
          {
            goto LABEL_118;
          }

          v82 = *v66;
          v81 = *(v66 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_121;
          }

          v86 = *(v65 + 1);
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_126;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v61 < 2)
        {
          goto LABEL_120;
        }

        v89 = *v66;
        v88 = *(v66 + 1);
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_84:
        if (v85)
        {
          goto LABEL_123;
        }

        v91 = *v65;
        v90 = *(v65 + 1);
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_125;
        }

        if (v92 < v84)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v64 - 1 >= v61)
        {
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
          goto LABEL_135;
        }

        if (!*v128)
        {
          goto LABEL_138;
        }

        v96 = &v62[16 * v64 - 16];
        v97 = *v96;
        v22 = &v62[16 * v64];
        v98 = *(v22 + 1);
        sub_22BD2B248(*v128 + *(v127 + 72) * *v96, *v128 + *(v127 + 72) * *v22, *v128 + *(v127 + 72) * v98, v138, v56, v57, v58, v59, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
        if (v2)
        {
          goto LABEL_111;
        }

        if (v98 < v97)
        {
          goto LABEL_113;
        }

        v1 = 0;
        v2 = v62;
        v99 = *(v131 + 2);
        if (v64 > v99)
        {
          goto LABEL_114;
        }

        *v96 = v97;
        *(v96 + 1) = v98;
        if (v64 >= v99)
        {
          goto LABEL_115;
        }

        v61 = v99 - 1;
        sub_22BDB12C0(v22 + 16, v99 - 1 - v64, v22);
        v22 = v131;
        *(v131 + 2) = v99 - 1;
        v100 = v99 > 2;
        v62 = v2;
        v2 = 0;
        if (!v100)
        {
          goto LABEL_98;
        }
      }

      v71 = &v62[16 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_116;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_117;
      }

      v78 = *(v66 + 1);
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_119;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_122;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = *(v65 + 1);
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_130;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v127;
    v20 = v128[1];
    if (v21 >= v20)
    {
      goto LABEL_101;
    }
  }

  v44 = v23 + v116;
  if (__OFADD__(v23, v116))
  {
    goto LABEL_134;
  }

  if (v44 >= v43)
  {
    v44 = v128[1];
  }

  if (v44 < v23)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v44)
  {
    goto LABEL_48;
  }

  v117 = v23;
  v118 = v2;
  v45 = *(v18 + 72);
  v137 = *(v18 + 16);
  v46 = *v128 + v45 * (v21 - 1);
  v47 = -v45;
  v48 = (v23 - v21);
  v130 = v22;
  v134 = *v128;
  v120 = v45;
  v121 = v44;
  v49 = *v128 + v21 * v45;
LABEL_41:
  v125 = v46;
  v126 = v21;
  v123 = v49;
  v124 = v48;
  v50 = v46;
  while (1)
  {
    v51 = sub_22BB3ADA8();
    v137(v51);
    (v137)(v142, v50, v143);
    v52 = sub_22BDB4BF4();
    v1 = v140;
    v53 = *v140;
    (*v140)(v142, v143);
    v53(v141, v143);
    if ((v52 & 1) == 0)
    {
LABEL_46:
      v21 = v126 + 1;
      v46 = v125 + v120;
      v48 = v124 - 1;
      v49 = v123 + v120;
      if (v126 + 1 == v121)
      {
        v21 = v121;
        v23 = v117;
        v22 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v134)
    {
      break;
    }

    v54 = *v139;
    (*v139)(v135, v49, v143);
    swift_arrayInitWithTakeFrontToBack();
    v55 = sub_22BB721FC();
    (v54)(v55);
    v50 += v47;
    v49 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_22BD2ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v82 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v31 = MEMORY[0x28223BE20](v82);
  v83 = (&v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v84 = (&v74 - v33);
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v36 = v28 - v30;
  v37 = v28 - v30 == 0x8000000000000000 && v35 == -1;
  if (v37)
  {
    goto LABEL_60;
  }

  v38 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_61;
  }

  v76 = v20;
  v40 = v36 / v35;
  a10 = v30;
  v87 = v24;
  v41 = v38 / v35;
  if (v36 / v35 >= v38 / v35)
  {
    v56 = sub_22BB3A86C();
    sub_22BD278F0(v56, v57, v24);
    v58 = v24 + v41 * v35;
    v59 = -v35;
    v60 = v58;
    v78 = -v35;
    v79 = v24;
    v85 = v30;
LABEL_36:
    v75 = v60;
    v80 = v28 + v59;
    while (1)
    {
      if (v58 <= v24)
      {
        a10 = v28;
        v86 = v60;
        goto LABEL_58;
      }

      if (v28 <= v30)
      {
        break;
      }

      v77 = v60;
      v61 = v28;
      v62 = v26 + v59;
      v63 = v58 + v59;
      v64 = v84;
      v65 = v58;
      sub_22BC5E5C4();
      v66 = v83;
      sub_22BC5E5C4();
      v81 = *v64;
      v67 = v66;
      v68 = *v66;
      sub_22BB58728(v67, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v64, &qword_27D8E42E0, &unk_22BDD03F0);
      if (v81 < v68)
      {
        if (v26 < v61 || v62 >= v61)
        {
          v28 = v80;
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
          v60 = v77;
          v59 = v78;
          v24 = v79;
          v26 = v62;
          v30 = v85;
          v58 = v65;
        }

        else
        {
          v59 = v78;
          v60 = v77;
          v37 = v26 == v61;
          v24 = v79;
          v71 = v80;
          v28 = v80;
          v26 = v62;
          v30 = v85;
          v58 = v65;
          if (!v37)
          {
            sub_22BB3B7F8();
            v73 = v72;
            swift_arrayInitWithTakeBackToFront();
            v58 = v65;
            v28 = v71;
            v60 = v73;
          }
        }

        goto LABEL_36;
      }

      v69 = v26 < v65 || v62 >= v65;
      v28 = v61;
      if (v69)
      {
        sub_22BB345A8();
        sub_22BB3B7F8();
        swift_arrayInitWithTakeFrontToBack();
        v26 += v59;
        v58 = v63;
        v60 = v63;
        v59 = v78;
        v24 = v79;
        v30 = v85;
      }

      else
      {
        v60 = v63;
        v37 = v65 == v26;
        v26 += v59;
        v58 = v63;
        v59 = v78;
        v24 = v79;
        v30 = v85;
        if (!v37)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeBackToFront();
          v26 = v62;
          v58 = v63;
          v60 = v63;
        }
      }
    }

    a10 = v28;
    v86 = v75;
  }

  else
  {
    v42 = sub_22BB2F324();
    sub_22BD278F0(v42, v43, v24);
    v80 = v26;
    v81 = v24 + v40 * v35;
    v86 = v81;
    v44 = v30;
    while (v24 < v81 && v28 < v26)
    {
      v85 = v44;
      v46 = v35;
      v47 = v28;
      v48 = v84;
      sub_22BC5E5C4();
      v49 = v24;
      v50 = v83;
      sub_22BC5E5C4();
      v51 = *v48;
      v52 = *v50;
      sub_22BB58728(v50, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v48, &qword_27D8E42E0, &unk_22BDD03F0);
      if (v51 >= v52)
      {
        v35 = v46;
        v24 = v49 + v46;
        v53 = v85;
        if (v85 < v49 || v85 >= v24)
        {
          sub_22BB31F54();
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
          v28 = v47;
        }

        else
        {
          v28 = v47;
          if (v85 != v49)
          {
            sub_22BB31F54();
            sub_22BB3B7F8();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = v49 + v46;
      }

      else
      {
        v35 = v46;
        v28 = v47 + v46;
        v53 = v85;
        v54 = v85 < v47 || v85 >= v28;
        v24 = v49;
        if (v54)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v85 != v47)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v44 = v53 + v35;
      a10 = v44;
      v26 = v80;
    }
  }

LABEL_58:
  sub_22BCD3BE0(&a10, &v87, &v86);
  sub_22BB376A8();
}

void sub_22BD2B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v82 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v81 = sub_22BDB4C34();
  v30 = MEMORY[0x28223BE20](v81);
  v79 = v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v78 = v70 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v36 = v27 - v29 == 0x8000000000000000 && v35 == -1;
  if (v36)
  {
    goto LABEL_60;
  }

  v37 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_61;
  }

  v70[1] = v20;
  v39 = (v27 - v29) / v35;
  a10 = v29;
  v84 = v82;
  v76 = (v32 + 8);
  v77 = (v32 + 16);
  v40 = v37 / v35;
  if (v39 >= v37 / v35)
  {
    v74 = v29;
    v52 = v82;
    sub_22BD27320(v27, v37 / v35, v82, MEMORY[0x277D1C338]);
    v53 = v52 + v40 * v35;
    v54 = -v35;
    v55 = v53;
    v72 = -v35;
LABEL_36:
    v75 = v27 + v54;
    v56 = v25;
    v70[0] = v55;
    v73 = v27;
    while (1)
    {
      if (v53 <= v82)
      {
        a10 = v27;
        v83 = v55;
        goto LABEL_58;
      }

      if (v27 <= v74)
      {
        break;
      }

      v71 = v55;
      v80 = v56 + v54;
      v57 = v53 + v54;
      v58 = v78;
      v59 = *v77;
      v60 = sub_22BB721FC();
      v61 = v53;
      v62 = v81;
      (v59)(v60);
      v59(v79, v75, v62);
      LOBYTE(v59) = sub_22BDB4BF4();
      v63 = *v76;
      v64 = sub_22BB3ADA8();
      v63(v64);
      (v63)(v58, v62);
      if (v59)
      {
        v53 = v61;
        v25 = v80;
        if (v56 < v73 || v80 >= v73)
        {
          v27 = v75;
          swift_arrayInitWithTakeFrontToBack();
          v55 = v71;
          v54 = v72;
        }

        else
        {
          v68 = v71;
          v55 = v71;
          v36 = v56 == v73;
          v69 = v75;
          v27 = v75;
          v54 = v72;
          if (!v36)
          {
            sub_22BB3CE10();
            swift_arrayInitWithTakeBackToFront();
            v27 = v69;
            v55 = v68;
          }
        }

        goto LABEL_36;
      }

      v65 = v80;
      if (v56 < v61 || v80 >= v61)
      {
        sub_22BB31528();
        swift_arrayInitWithTakeFrontToBack();
        v56 = v65;
        v53 = v57;
        v55 = v57;
        v54 = v72;
        v27 = v73;
      }

      else
      {
        v55 = v57;
        v36 = v61 == v56;
        v56 = v80;
        v53 = v57;
        v54 = v72;
        v27 = v73;
        if (!v36)
        {
          sub_22BB31528();
          sub_22BB3CE10();
          swift_arrayInitWithTakeBackToFront();
          v56 = v65;
          v53 = v57;
          v55 = v57;
        }
      }
    }

    a10 = v27;
    v83 = v70[0];
  }

  else
  {
    v41 = v82;
    sub_22BD27320(v29, (v27 - v29) / v35, v82, MEMORY[0x277D1C338]);
    v75 = v41 + v39 * v35;
    v83 = v75;
    v80 = v25;
    while (v82 < v75 && v27 < v25)
    {
      v43 = v78;
      v44 = *v77;
      v45 = v81;
      (*v77)(v78, v27, v81);
      v44(v79, v82, v45);
      sub_22BB721FC();
      LOBYTE(v44) = sub_22BDB4BF4();
      v46 = v27;
      v47 = *v76;
      v48 = sub_22BB32E04();
      v47(v48);
      (v47)(v43, v45);
      if (v44)
      {
        v27 = v46 + v35;
        if (v29 < v46 || v29 >= v27)
        {
          sub_22BB3CE10();
          swift_arrayInitWithTakeFrontToBack();
          v25 = v80;
        }

        else
        {
          v25 = v80;
          if (v29 != v46)
          {
            sub_22BB3CE10();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v27 = v46;
        v50 = v82 + v35;
        if (v29 < v82 || v29 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v80;
        }

        else
        {
          v25 = v80;
          if (v29 != v82)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v84 = v50;
        v82 = v50;
      }

      v29 += v35;
      a10 = v29;
    }
  }

LABEL_58:
  sub_22BCD3CBC(&a10, &v84, &v83);
  sub_22BB376A8();
}

BOOL sub_22BD2B728(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22BDBB814();
  sub_22BDBAC54();
  v8 = sub_22BDBB834();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_22BDBB6D4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_22BD2CAC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_22BD2B874(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22BDBB804();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_22BD2CC2C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_22BD2B944()
{
  sub_22BB30F94();
  sub_22BB51360(v3);
  sub_22BDB43E4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB30D8C();
  v7 = sub_22BBB9968(v5, v6, MEMORY[0x277CC9600]);
  sub_22BB898A4(v7);
  sub_22BB38B98();
  do
  {
    sub_22BB53DA4();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22BB6BB34();
      v14(v13);
      v15 = sub_22BB3A2A8();
      sub_22BD2CD30(v15, v16, v17);
      v18 = sub_22BB54294();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22BB2F578();
    v2(v9);
    sub_22BB30D8C();
    v11 = sub_22BBB9968(&unk_28142DD40, v10, MEMORY[0x277CC9610]);
    sub_22BB337C8(v11);
    v12 = sub_22BB37080();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22BB3E3B4();
  v1(v20);
  v21 = sub_22BB58AEC();
  v2(v21);
LABEL_7:
  sub_22BB314EC();
}

void sub_22BD2BAC0()
{
  sub_22BB30F94();
  sub_22BB51360(v3);
  sub_22BDB7B44();
  sub_22BB30444();
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB3A720();
  v7 = sub_22BBB9968(v5, v6, MEMORY[0x277D1D618]);
  sub_22BB898A4(v7);
  sub_22BB38B98();
  do
  {
    sub_22BB53DA4();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22BB6BB34();
      v14(v13);
      v15 = sub_22BB3A2A8();
      sub_22BD2CFE0(v15, v16, v17);
      v18 = sub_22BB54294();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22BB2F578();
    v2(v9);
    sub_22BB3A720();
    v11 = sub_22BBB9968(&qword_27D8E3078, v10, MEMORY[0x277D1D620]);
    sub_22BB337C8(v11);
    v12 = sub_22BB37080();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22BB3E3B4();
  v1(v20);
  v21 = sub_22BB58AEC();
  v2(v21);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BD2BC3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB304();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_22BBC0B54(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22BDBB814();
    sub_22BDBAC54();
    result = sub_22BDBB834();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22BD2BE98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  result = sub_22BDBB304();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_22BBC0B54(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_22BDBB804();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C0BC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BDB4C34();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22BBE6DE0(&qword_27D8E6098, &unk_22BDCD5D0);
  result = sub_22BDBB304();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_22BBC0B54(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    result = sub_22BDBABA4();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C414(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BDB43E4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22BBE6DE0(&qword_27D8E61C0, &qword_22BDCD750);
  result = sub_22BDBB304();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_22BBC0B54(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_22BDBABA4();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C76C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BDB7B44();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22BBE6DE0(&qword_27D8E60B0, &qword_22BDCD5F8);
  result = sub_22BDBB304();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_22BBC0B54(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608], MEMORY[0x277D1D618]);
    result = sub_22BDBABA4();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_22BD2CAC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22BD2BC3C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22BD2D70C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_22BDBB814();
      sub_22BDBAC54();
      v16 = sub_22BDBB834();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_22BDBB6D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_22BD2D290();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_22BD2CC2C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2BE98(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_22BD2D940(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_22BDBB804();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_22BD2D3D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_22BD2CD30(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C414(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22BD2DB2C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v13 = sub_22BDBABA4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&unk_28142DD40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v15 = sub_22BDBABD4();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22BD2CFE0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22BDB7B44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C76C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22BD2DE44(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608], MEMORY[0x277D1D618]);
      v13 = sub_22BDBABA4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&qword_27D8E3078, MEMORY[0x277D1D608], MEMORY[0x277D1D620]);
        v15 = sub_22BDBABD4();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_22BD2D290()
{
  v1 = v0;
  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  v2 = *v0;
  v3 = sub_22BDBB2F4();
  if (v2[2])
  {
    v4 = sub_22BB68F68();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    sub_22BD2F79C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v17 = v14 | (v8 << 6);
        v18 = (v2[6] + 16 * v17);
        v19 = v18[1];
        v20 = (*(v3 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v11);
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
        goto LABEL_17;
      }

      v16 = v2[v8 + 7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void *sub_22BD2D3D0()
{
  v1 = v0;
  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  v2 = *v0;
  v3 = sub_22BDBB2F4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_22BD2D510()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2(0);
  sub_22BB30444();
  v5 = v4;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_22BB31528();
  sub_22BBE6DE0(v9, v10);
  v11 = *v0;
  v12 = sub_22BDBB2F4();
  if (v11[2])
  {
    v28 = v1;
    v13 = sub_22BB68F68();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= &v11[v15 + 7])
    {
      memmove(v13, v11 + 7, 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = v11[2];
    sub_22BD2F79C();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v29 = v5 + 32;
    v30 = v5 + 16;
    if ((v19 & v18) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_15:
        v26 = *(v5 + 72) * (v23 | (v17 << 6));
        (*(v5 + 16))(v8, v11[6] + v26, v3);
        (*(v5 + 32))(*(v12 + 48) + v26, v8, v3);
      }

      while (v20);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v1 = v28;
        goto LABEL_19;
      }

      v25 = v11[v17 + 7];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v1 = v12;
    sub_22BB314EC();
  }
}

uint64_t sub_22BD2D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB304();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_22BDBB814();

        sub_22BDBAC54();
        result = sub_22BDBB834();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BD2D940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  result = sub_22BDBB304();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_22BDBB804();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BD2DB2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BDB43E4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22BBE6DE0(&qword_27D8E61C0, &qword_22BDCD750);
  v7 = sub_22BDBB304();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        result = sub_22BDBABA4();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22BD2DE44(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BDB7B44();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22BBE6DE0(&qword_27D8E60B0, &qword_22BDCD5F8);
  v7 = sub_22BDBB304();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608], MEMORY[0x277D1D618]);
        result = sub_22BDBABA4();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22BD2E15C(uint64_t a1, char a2, void *a3)
{
  v53 = a3;
  v51 = sub_22BDB4C34();
  v5 = *(v51 - 8);
  v6 = MEMORY[0x28223BE20](v51);
  v43 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = v42 - v9;
  MEMORY[0x28223BE20](v8);
  v52 = v42 - v10;
  v11 = sub_22BBE6DE0(&qword_27D8E6100, &qword_22BDCD658);
  v12 = MEMORY[0x28223BE20](v11);
  v48 = v42 - v14;
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v15 = 0;
  v46 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v44 = v13;
  v45 = v16;
  v49 = (v5 + 32);
  v42[2] = v5 + 8;
  v42[3] = v5 + 16;
  v42[1] = v5 + 40;
  while (v15 < *(a1 + 16))
  {
    v17 = v5;
    v18 = v48;
    sub_22BC5E5C4();
    v19 = *v49;
    v20 = v51;
    (*v49)(v52, v18, v51);
    v19(v50, &v18[v45], v20);
    v21 = *v53;
    sub_22BBDAE68();
    v24 = v23;
    v25 = v21[2];
    v26 = (v22 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_18;
    }

    v27 = v22;
    if (v21[3] >= v25 + v26)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6128, &qword_22BDCD688);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5C910();
      sub_22BBDAE68();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_20;
      }

      v24 = v28;
    }

    v30 = *v53;
    if (v27)
    {
      v5 = v17;
      v31 = *(v17 + 72) * v24;
      v32 = *(v17 + 16);
      v33 = v43;
      v34 = v51;
      v32(v43, v30[7] + v31, v51);
      v35 = *(v5 + 8);
      v35(v50, v34);
      v35(v52, v34);
      (*(v5 + 40))(v30[7] + v31, v33, v34);
    }

    else
    {
      v30[(v24 >> 6) + 8] |= 1 << v24;
      v5 = v17;
      v36 = *(v17 + 72) * v24;
      v37 = v51;
      v19((v30[6] + v36), v52, v51);
      v19((v30[7] + v36), v50, v37);
      v38 = v30[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v30[2] = v40;
    }

    ++v15;
    a2 = 1;
    if (v47 == v15)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BD2E59C(uint64_t a1, char a2, void *a3)
{
  v59 = a3;
  v5 = sub_22BDB89F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v57 = sub_22BDB4C34();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E6108, &unk_22BDCD660);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = v42 - v16;
  v53 = *(a1 + 16);
  if (!v53)
  {
  }

  v17 = 0;
  v52 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v50 = v6;
  v51 = v18;
  v55 = (v6 + 32);
  v56 = (v11 + 32);
  v44 = v6 + 8;
  v45 = v6 + 16;
  v46 = v11;
  v42[1] = v6 + 40;
  v43 = (v11 + 8);
  v48 = v15;
  v49 = a1;
  while (v17 < *(a1 + 16))
  {
    v19 = v54;
    sub_22BC5E5C4();
    v20 = *v56;
    (*v56)(v58, v19, v57);
    v21 = *v55;
    v22 = &v19[v51];
    v23 = v5;
    (*v55)(v10, v22, v5);
    v24 = *v59;
    sub_22BBDAE68();
    v27 = v26;
    v28 = v24[2];
    v29 = (v25 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = v25;
    if (v24[3] >= v28 + v29)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6138, &qword_22BDCD698);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5CC44();
      sub_22BBDAE68();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

      v27 = v31;
    }

    v33 = *v59;
    if (v30)
    {
      v34 = v50;
      v35 = *(v50 + 72) * v27;
      v36 = v47;
      v5 = v23;
      (*(v50 + 16))(v47, v33[7] + v35, v23);
      (*(v34 + 8))(v10, v23);
      (*v43)(v58, v57);
      (*(v34 + 40))(v33[7] + v35, v36, v23);
    }

    else
    {
      v33[(v27 >> 6) + 8] |= 1 << v27;
      v20((v33[6] + *(v46 + 72) * v27), v58, v57);
      v37 = v33[7] + *(v50 + 72) * v27;
      v5 = v23;
      v21(v37, v10, v23);
      v38 = v33[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v33[2] = v40;
    }

    ++v17;
    a2 = 1;
    a1 = v49;
    if (v53 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

unint64_t sub_22BD2EA58()
{
  result = qword_27D8E5F48;
  if (!qword_27D8E5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F48);
  }

  return result;
}

uint64_t sub_22BD2EAAC()
{
  v1 = sub_22BB35760();
  v2(v1);
  sub_22BB2F330();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BD2EB00()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BD2EBBC(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.ActionValue(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD2EC68(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD2ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BD2ED98()
{
  if (!qword_2814288B0)
  {
    sub_22BD2EF18(0, &qword_2814288A8, MEMORY[0x277D1C338]);
    if (!v1)
    {
      atomic_store(v0, &qword_2814288B0);
    }
  }
}

void sub_22BD2EDFC()
{
  if (!qword_28142DD20)
  {
    v0 = sub_22BDB4C34();
    if (!v1)
    {
      atomic_store(v0, &qword_28142DD20);
    }
  }
}

void sub_22BD2EE44(uint64_t a1)
{
  type metadata accessor for FeedbackLearning.FlowExpressionValue(319);
  if (v1 <= 0x3F)
  {
    sub_22BD2EF18(319, &qword_281428818, MEMORY[0x277D1E890]);
    if (v2 <= 0x3F)
    {
      sub_22BD2EF18(319, &qword_281428888, type metadata accessor for FeedbackLearning.FlowActionEvent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD2EF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BD2EF94(uint64_t a1)
{
  sub_22BDB5F24();
  if (v1 <= 0x3F)
  {
    sub_22BDB4C34();
    if (v2 <= 0x3F)
    {
      sub_22BD2EF18(319, &qword_281428890, type metadata accessor for FeedbackLearning.FlowExpression);
      if (v3 <= 0x3F)
      {
        sub_22BD2EF18(319, &qword_281428818, MEMORY[0x277D1E890]);
        if (v4 <= 0x3F)
        {
          sub_22BD2EF18(319, &qword_281428888, type metadata accessor for FeedbackLearning.FlowActionEvent);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *sub_22BD2F0C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BD2F1B0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BD2F260()
{
  result = qword_27D8E5F68;
  if (!qword_27D8E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F68);
  }

  return result;
}

unint64_t sub_22BD2F2B8()
{
  result = qword_27D8E5F70;
  if (!qword_27D8E5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F70);
  }

  return result;
}

unint64_t sub_22BD2F310()
{
  result = qword_27D8E5F78;
  if (!qword_27D8E5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F78);
  }

  return result;
}

unint64_t sub_22BD2F368()
{
  result = qword_27D8E5F80;
  if (!qword_27D8E5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F80);
  }

  return result;
}

unint64_t sub_22BD2F3C0()
{
  result = qword_27D8E5F88;
  if (!qword_27D8E5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F88);
  }

  return result;
}

unint64_t sub_22BD2F418()
{
  result = qword_27D8E5F90;
  if (!qword_27D8E5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F90);
  }

  return result;
}

unint64_t sub_22BD2F470()
{
  result = qword_27D8E5F98;
  if (!qword_27D8E5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F98);
  }

  return result;
}

unint64_t sub_22BD2F4C8()
{
  result = qword_27D8E5FA0;
  if (!qword_27D8E5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FA0);
  }

  return result;
}

unint64_t sub_22BD2F520()
{
  result = qword_27D8E5FA8;
  if (!qword_27D8E5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FA8);
  }

  return result;
}

unint64_t sub_22BD2F578()
{
  result = qword_27D8E5FB0;
  if (!qword_27D8E5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FB0);
  }

  return result;
}

unint64_t sub_22BD2F5D0()
{
  result = qword_27D8E5FB8;
  if (!qword_27D8E5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FB8);
  }

  return result;
}

unint64_t sub_22BD2F628()
{
  result = qword_27D8E5FC0;
  if (!qword_27D8E5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FC0);
  }

  return result;
}

uint64_t sub_22BD2F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22BD2F758()
{

  sub_22BD8F3C8();
}

uint64_t static PSELearningUtil.triggerPSEDataCollection(after:)()
{
  sub_22BB2F0D4();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  v3 = sub_22BDBB454();
  *(v0 + 24) = v3;
  *(v0 + 32) = *(v3 - 8);
  *(v0 + 40) = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22BD2F880()
{
  if (*(v0 + 88))
  {
    sub_22BDB5FF4();
    swift_allocObject();
    *(v0 + 64) = sub_22BB3666C();
    sub_22BB32A48(MEMORY[0x277D3E918]);
    v9 = v1;
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    sub_22BB35BC0(v2);

    return v9();
  }

  else
  {
    v4 = sub_22BDBB8B4();
    v6 = v5;
    sub_22BDBB774();
    sub_22BB32A48(&unk_22BDCD7D8);
    v10 = v7;
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_22BD2F9E0;

    return v10(v4, v6, 0, 0, 1);
  }
}

uint64_t sub_22BD2FB44()
{
  sub_22BDB5FF4();
  swift_allocObject();
  *(v0 + 64) = sub_22BB3666C();
  sub_22BB32A48(MEMORY[0x277D3E918]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_22BB35BC0(v2);

  return v4();
}

uint64_t sub_22BD2FDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22BDBB444();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22BD2FEC0, 0, 0);
}

uint64_t sub_22BD2FEC0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22BDBB454();
  v5 = sub_22BD30330(&qword_27D8E6228, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22BDBB754();
  sub_22BD30330(&qword_27D8E6230, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22BDBB464();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22BD30050;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for PSELearningUtil(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BD30330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BD30378()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_22BDB77D4();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB0F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22BB2C000, v10, v11, "Registering ToolKitMonitor", v12, 2u);
    sub_22BB30458();
  }

  (*(v5 + 8))(v9, v3);
  v13 = sub_22BDBAEF4();
  sub_22BB336D0(v2, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_22BCA20FC(0, 0, v2, &unk_22BDCD830, v14);
}

uint64_t sub_22BD30540()
{
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v1 = sub_22BDB77D4();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6238, &qword_22BDCD838);
  v0[14] = swift_task_alloc();
  v2 = sub_22BBE6DE0(&qword_27D8E6240, &qword_22BDCD840);
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();
  v3 = sub_22BBE6DE0(&qword_27D8E6248, &qword_22BDCD848);
  v0[18] = v3;
  v0[19] = *(v3 - 8);
  v0[20] = swift_task_alloc();
  v4 = sub_22BBE6DE0(&qword_27D8E6250, &qword_22BDCD850);
  v0[21] = v4;
  v0[22] = *(v4 - 8);
  v0[23] = swift_task_alloc();
  v5 = sub_22BBE6DE0(&qword_27D8E6258, &qword_22BDCD858);
  v0[24] = v5;
  v0[25] = *(v5 - 8);
  v0[26] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E6260, &qword_22BDCD860);
  v0[27] = v6;
  v0[28] = *(v6 - 8);
  v0[29] = swift_task_alloc();
  v7 = sub_22BBE6DE0(&qword_27D8E6268, &qword_22BDCD868);
  v0[30] = v7;
  v0[31] = *(v7 - 8);
  v0[32] = swift_task_alloc();
  v8 = sub_22BBE6DE0(&qword_27D8E6270, &qword_22BDCD870);
  v0[33] = v8;
  v0[34] = *(v8 - 8);
  v0[35] = swift_task_alloc();
  v9 = sub_22BBE6DE0(&qword_27D8E6278, &qword_22BDCD878);
  v0[36] = v9;
  v0[37] = *(v9 - 8);
  v0[38] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E6280, &qword_22BDCD880);
  v0[39] = v10;
  v0[40] = *(v10 - 8);
  v0[41] = swift_task_alloc();
  v11 = sub_22BDBB1E4();
  v0[42] = v11;
  v0[43] = *(v11 - 8);
  v0[44] = swift_task_alloc();
  v12 = sub_22BBE6DE0(&qword_27D8E6288, &qword_22BDCD888);
  v0[45] = v12;
  v0[46] = *(v12 - 8);
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = type metadata accessor for ToolboxRebuildTrigger(0);
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v13 = sub_22BBE6DE0(&qword_27D8E6290, &unk_22BDCD890);
  v0[56] = v13;
  v0[57] = *(v13 - 8);
  v0[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD30BDC, 0, 0);
}

uint64_t sub_22BD30BDC()
{
  v1 = v0[55];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = sub_22BDBABE4();
  sub_22BDBAED4();
  *v1 = sub_22BDBABF4();
  v1[1] = v6;
  v7 = sub_22BB76868(v5);
  v9 = v8;

  v1[2] = v7;
  v1[3] = v9;
  sub_22BDB9EE4();
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_22BDBB1B4();
  sub_22BDBB1F4();

  sub_22BD315C8();
  sub_22BDB9F14();
  v13 = *(v3 + 8);
  v12 = (v3 + 8);
  v14 = v13;
  (v13)(v2, v4);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  if (qword_281428770 != -1)
  {
    swift_once();
  }

  v54 = v0[39];
  v47 = v0[38];
  v51 = v0[37];
  v49 = v0[36];
  v48 = v0[34];
  v46 = v0[33];
  v41 = v0[32];
  v44 = v0[35];
  v45 = v0[31];
  v42 = v0[28];
  v43 = v0[30];
  v40 = v0[27];
  v38 = v0[29];
  v39 = v0[25];
  v37 = v0[24];
  v33 = v0[23];
  v35 = v0[26];
  v36 = v0[22];
  v34 = v0[21];
  v50 = v0[17];
  v53 = v0[16];
  v52 = v0[15];
  sub_22BDBB1F4();

  sub_22BB33E00(sub_22BD3169C);
  v17 = sub_22BB371F0();
  v14(v17);
  v18 = [v15 defaultCenter];
  v19 = sub_22BDBABE4();
  sub_22BB311F8(v19);

  sub_22BB33E00(sub_22BB76684);
  v20 = sub_22BB371F0();
  v14(v20);
  v21 = [v15 defaultCenter];
  v22 = sub_22BDBABE4();
  sub_22BB311F8(v22);

  sub_22BB33E00(sub_22BD3169C);
  v23 = sub_22BB371F0();
  v14(v23);
  v24 = [v15 defaultCenter];
  v25 = sub_22BDBABE4();
  sub_22BB311F8(v25);

  sub_22BB33E00(sub_22BD3169C);
  v26 = sub_22BB371F0();
  v14(v26);
  sub_22BDB9EF4();
  sub_22BBB5F9C(&qword_281428928, &qword_27D8E6250, &qword_22BDCD850, MEMORY[0x277CBCE90]);
  sub_22BBB5F9C(&qword_281428930, &qword_27D8E6290, &unk_22BDCD890, MEMORY[0x277CBCE80]);
  sub_22BDB9F24();
  (*(v36 + 8))(v33, v34);
  sub_22BBB5F9C(&qword_281428958, &qword_27D8E6288, &qword_22BDCD888, MEMORY[0x277CBCC08]);
  sub_22BDB9DC4();
  (*(v39 + 8))(v35, v37);
  sub_22BDB9DD4();
  (*(v42 + 8))(v38, v40);
  sub_22BDB9DE4();
  (*(v45 + 8))(v41, v43);
  sub_22BDB9DF4();
  (*(v48 + 8))(v44, v46);
  sub_22BDB9E04();
  (*(v51 + 8))(v47, v49);
  v27 = sub_22BBB5F9C(&qword_281428950, &qword_27D8E6280, &qword_22BDCD880, MEMORY[0x277CBCCA8]);
  MEMORY[0x2318A3F10](v54, v27);
  sub_22BDB9E44();
  (*(v53 + 8))(v50, v52);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v28 = swift_task_alloc();
  v29 = sub_22BB31DA4(v28);
  *v29 = v30;
  v31 = sub_22BB35BE4(v29);

  return MEMORY[0x282200308](v31);
}

uint64_t sub_22BD312EC()
{
  sub_22BB2F0D4();
  *(v0 + 48) = *(v0 + 480);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22BD31374(uint64_t a1)
{
  v2 = *(v1 + 512);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v3 = v2;
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 512);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22BB2C000, v4, v5, "ToolKitMonitor: Indexing failed with %@.", v7, 0xCu);
    sub_22BB58780(v8, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    MEMORY[0x2318A6080](v7, -1, -1);
  }

  v11 = *(v1 + 512);

  v12 = *(v1 + 432);
  (*(v1 + 488))(*(v1 + 88), *(v1 + 72));
  sub_22BBB5528(v12);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v13 = swift_task_alloc();
  v14 = sub_22BB31DA4(v13);
  *v14 = v15;
  v16 = sub_22BB35BE4(v14);

  return MEMORY[0x282200308](v16);
}

uint64_t sub_22BD3152C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_22BB3280C(v1);

  return sub_22BD30540();
}

unint64_t sub_22BD315C8()
{
  result = qword_281428768;
  if (!qword_281428768)
  {
    sub_22BDBB1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428768);
  }

  return result;
}

uint64_t sub_22BD31620(uint64_t a1)
{
  result = sub_22BDBAEF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD316A0(uint64_t a1)
{
  v43 = sub_22BDB7964();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v34[1] = v1;
    v47 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v5, 0);
    v7 = v47;
    v10 = sub_22BDB1D44();
    result = v7;
    v11 = 0;
    v12 = a1 + 56;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v5;
    v37 = v3;
    v38 = a1;
    v41 = a1 + 56;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v46 = v9;
        v44 = v11;
        v45 = v8;
        v14 = v42;
        v15 = v43;
        v16 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v10, v43);
        v17 = sub_22BDB7954();
        v19 = v18;
        (*(v3 + 8))(v14, v15);
        result = v16;
        v47 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22BD28158(v20 > 1, v21 + 1, 1);
          result = v47;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v12 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v10 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v41 + 8 * v13);
        if ((v24 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v45)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v10 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v13 << 6;
          v28 = v13 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v13);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_22BBBFEB0(v10, v45, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_22BBBFEB0(v10, v45, 0);
          result = v33;
        }

LABEL_19:
        v11 = v44 + 1;
        if (v44 + 1 == v26)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BD319D8(uint64_t a1)
{
  v2 = sub_22BD38ADC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BD31A14(uint64_t a1)
{
  v2 = sub_22BD38ADC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AgenticPlanner.__allocating_init(router:services:instrumentationSender:)()
{
  sub_22BB3CB10();
  v0 = swift_allocObject();
  AgenticPlanner.init(router:services:instrumentationSender:)();
  return v0;
}

uint64_t AgenticPlanner.init(router:services:instrumentationSender:)()
{
  sub_22BB3CB10();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_22BDB8394();
  *(v1 + 120) = v4;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0x6C6379436E616C70;
  *(v1 + 192) = 0xEB00000000644965;
  sub_22BB382E8(v3, v1 + 128);
  *(v1 + 168) = v2;
  sub_22BB382E8(v0, v1 + 200);
  return v1;
}

void sub_22BD31B68()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E62C0, &qword_22BDCD9E8);
  v4 = sub_22BB2F0C8(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = sub_22BDB9B14();
  sub_22BB30444();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  sub_22BDB9B54();
  sub_22BB30444();
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = *(v2 + 16);
  if (v20)
  {
    v45 = v6;
    v46 = v13;
    v47 = v0;
    v21 = v2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v20 - 1);
    v22 = v16;
    v23 = v15;
    (*(v16 + 16))(v19, v21, v15);
    v48 = v19;
    sub_22BDB9B24();
    v24 = *(v9 + 88);
    v25 = sub_22BB3AB18();
    v26 = v24(v25);
    v27 = *MEMORY[0x277D1E700];
    v28 = *(v9 + 8);
    v29 = sub_22BB3AB18();
    v28(v29);
    if (v26 == v27)
    {
      v30 = *(v22 + 8);

      v30(v48, v23);
    }

    else
    {
      v31 = v22;
      v32 = v46;
      v33 = v48;
      sub_22BDB9B24();
      v34 = (v24)(v32, v7);
      v35 = *MEMORY[0x277D1E770];
      (v28)(v32, v7);
      if (v34 != v35)
      {
        sub_22BB69FEC((v47 + 128), *(v47 + 152));
        v36 = v45;
        sub_22BB331D4();
        sub_22BDB7984();
        v37 = sub_22BDB8004();
        if (sub_22BB3AA28(v36, 1, v37) == 1)
        {
          (*(v31 + 8))(v33, v23);
          sub_22BB58728(v36, &qword_27D8E62C0, &qword_22BDCD9E8);
          goto LABEL_10;
        }

        sub_22BB58728(v36, &qword_27D8E62C0, &qword_22BDCD9E8);
      }

      sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
      v38 = v33;
      v39 = sub_22BDB9254();
      sub_22BB30444();
      v41 = v40;
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_22BDBCBD0;
      (*(v41 + 104))(v43 + v42, *MEMORY[0x277D1E308], v39);
      v44 = *(v31 + 8);

      v44(v38, v23);
    }
  }

LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BD31F98()
{
  sub_22BB2F0D4();
  v1[3] = v0;
  v1[4] = v2;
  v1[2] = v3;
  v4 = sub_22BDB8334();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v1[7] = sub_22BB30ACC();
  v6 = sub_22BDB8134();
  v1[8] = v6;
  sub_22BB30434(v6);
  v1[9] = v7;
  v1[10] = sub_22BB30ACC();
  v8 = sub_22BDB80E4();
  v1[11] = v8;
  sub_22BB30434(v8);
  v1[12] = v9;
  v1[13] = sub_22BB30ACC();
  v10 = sub_22BDB9774();
  v1[14] = v10;
  sub_22BB30434(v10);
  v1[15] = v11;
  v1[16] = sub_22BB30ACC();
  v12 = sub_22BDB82C4();
  v1[17] = v12;
  sub_22BB30434(v12);
  v1[18] = v13;
  v1[19] = sub_22BB30ACC();
  v14 = sub_22BDB43E4();
  v1[20] = v14;
  sub_22BB30434(v14);
  v1[21] = v15;
  v1[22] = sub_22BB30ACC();
  v16 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22BD321BC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v14 = *(v0 + 112);
  *(v0 + 184) = sub_22BDB8E54();
  v6 = *MEMORY[0x277D1D868];
  *(v0 + 256) = v6;
  *(v0 + 192) = sub_22BDB8014();
  sub_22BB2F330();
  v8 = *(v7 + 104);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v6);
  (*(v2 + 104))(v1, *MEMORY[0x277D1DC88], v3);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v9 = *(v5 + 8);
  *(v0 + 216) = v9;
  *(v0 + 224) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v14);
  v10 = sub_22BB30AE4();
  v11(v10);
  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_22BD32364;
  sub_22BB3487C(*(v0 + 16));

  return sub_22BD32850();
}

uint64_t sub_22BD325E8()
{
  v1 = *(v0 + 240);
  v86 = *(v0 + 224);
  v68 = *(v0 + 184);
  v74 = *(v0 + 216);
  v92 = *(v0 + 176);
  v98 = *(v0 + 168);
  v104 = *(v0 + 160);
  v110 = *(v0 + 152);
  v2 = *(v0 + 128);
  v116 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v56 = *(v0 + 40);
  v62 = *(v0 + 112);
  v80 = *(v0 + 32);
  (*(v0 + 200))(v3, *(v0 + 256), *(v0 + 192));
  (*(v4 + 104))(v3, *MEMORY[0x277D1DB30], v6);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v74(v2, v62);
  (*(v7 + 8))(v5, v56);
  (*(v4 + 8))(v3, v6);
  v8 = v1;
  sub_22BDB4BA4();
  v9 = *MEMORY[0x277D1D9A8];
  v10 = sub_22BDB80D4();
  sub_22BB2F330();
  (*(v11 + 104))(v80, v9, v10);
  sub_22BB8C4F8(&qword_27D8E6298, 255, MEMORY[0x277D1D9B0], MEMORY[0x277D1D9B8]);
  swift_willThrowTypedImpl();

  (*(v98 + 8))(v92, v104);
  v92, v12, v13, v14, v15, v16, v17, v18, v56, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152;
  v111, v19, v20, v21, v22, v23, v24, v25, v57, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153;
  v2, v26, v27, v28, v29, v30, v31, v32, v58, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154;
  v119, v33, v34, v35, v36, v37, v38, v39, v59, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155;
  v3, v40, v41, v42, v43, v44, v45, v46, v60, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156;
  v5, v47, v48, v49, v50, v51, v52, v53, v61, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157;
  sub_22BB2F09C();

  return v54();
}

uint64_t sub_22BD32850()
{
  sub_22BB2F0D4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_22BDB4B94();
  v1[14] = v3;
  sub_22BB30434(v3);
  v1[15] = v4;
  v1[16] = sub_22BB30ACC();
  v5 = sub_22BDB9B14();
  v1[17] = v5;
  sub_22BB30434(v5);
  v1[18] = v6;
  v1[19] = sub_22BB30ACC();
  v7 = sub_22BDB97A4();
  v1[20] = v7;
  sub_22BB30434(v7);
  v1[21] = v8;
  v1[22] = sub_22BB30ACC();
  v9 = sub_22BDB7964();
  v1[23] = v9;
  sub_22BB30434(v9);
  v1[24] = v10;
  v1[25] = sub_22BB3307C();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v11 = sub_22BBE6DE0(&qword_27D8E62C0, &qword_22BDCD9E8);
  v1[29] = v11;
  sub_22BB2F0C8(v11);
  v1[30] = sub_22BB30ACC();
  v12 = sub_22BDB77D4();
  v1[31] = v12;
  sub_22BB30434(v12);
  v1[32] = v13;
  v1[33] = sub_22BB3307C();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v14 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v14);
  v1[39] = sub_22BB30ACC();
  v15 = sub_22BDB9774();
  v1[40] = v15;
  sub_22BB30434(v15);
  v1[41] = v16;
  v1[42] = sub_22BB30ACC();
  v17 = sub_22BDB9B54();
  v1[43] = v17;
  sub_22BB30434(v17);
  v1[44] = v18;
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v19 = sub_22BDB7734();
  v1[47] = v19;
  sub_22BB30434(v19);
  v1[48] = v20;
  v1[49] = sub_22BB3307C();
  v1[50] = swift_task_alloc();
  v21 = sub_22BDB7754();
  v1[51] = v21;
  sub_22BB30434(v21);
  v1[52] = v22;
  v1[53] = sub_22BB3307C();
  v1[54] = swift_task_alloc();
  v23 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_22BD34B24()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_22BDB77D4();
  v1[5] = v3;
  sub_22BB30434(v3);
  v1[6] = v4;
  v1[7] = sub_22BB30ACC();
  v5 = sub_22BDB7734();
  v1[8] = v5;
  sub_22BB30434(v5);
  v1[9] = v6;
  v1[10] = sub_22BB3307C();
  v1[11] = swift_task_alloc();
  v7 = sub_22BDB7754();
  v1[12] = v7;
  sub_22BB30434(v7);
  v1[13] = v8;
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v9 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22BD35260()
{
  sub_22BB30F94();
  v26 = v0;
  v1 = sub_22BDB7764();
  sub_22BB30444();
  v25 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v6 = v5 - v4;
  v27 = sub_22BDB7734();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB7754();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  sub_22BDB60D4();
  v20 = sub_22BDB7744();
  sub_22BDB7774();
  v24 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v25 + 88))(v6, v1) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v6, v1);
      v21 = "";
    }

    v22 = sub_22BB37F30();
    *v22 = 0;
    v23 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v20, v24, v23, v26, v21, v22, 2u);
    sub_22BB3A3D8();
  }

  (*(v8 + 8))(v12, v27);
  (*(v15 + 8))(v19, v13);
  sub_22BB314EC();
}

uint64_t sub_22BD354EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v7 = sub_22BDB96E4();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v5[20] = *(v8 + 64);
  v5[21] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD35600, a3, 0);
}

uint64_t sub_22BD35600()
{
  sub_22BB3B558();
  sub_22BB348A0();
  sub_22BD36B7C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 112);
    v27 = *(v0 + 152);
    v3 = v1 + 32;
    v25 = *(v0 + 160) + 7;
    v4 = sub_22BDBAEF4();
    do
    {
      v30 = v2;
      v5 = *(v0 + 184);
      v6 = *(v0 + 168);
      v7 = *(v0 + 144);
      v28 = *(v0 + 136);
      v29 = *(v0 + 176);
      v8 = *(v0 + 128);
      sub_22BB336D0(v5, 1, 1, v4);
      sub_22BB69088(v3, v0 + 16);
      (*(v27 + 16))(v6, v8, v7);
      v9 = (*(v27 + 80) + 72) & ~*(v27 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      sub_22BB382E8((v0 + 16), v10 + 32);
      (*(v27 + 32))(v10 + v9, v6, v7);
      *(v10 + ((v25 + v9) & 0xFFFFFFFFFFFFFFF8)) = v28;
      sub_22BBB5584(v5, v29);
      v11 = sub_22BB3AA28(v29, 1, v4);
      v12 = *(v0 + 176);
      if (v11 == 1)
      {
        sub_22BB58728(*(v0 + 176), &qword_27D8E2978, &qword_22BDBD020);
      }

      else
      {
        sub_22BDBAEE4();
        (*(*(v4 - 8) + 8))(v12, v4);
      }

      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_22BDBAE44();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      if (v15 | v13)
      {
        v16 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v13;
        *(v0 + 80) = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v0 + 184);
      *(v0 + 88) = 1;
      *(v0 + 96) = v16;
      *(v0 + 104) = v26;
      swift_task_create();

      sub_22BB58728(v17, &qword_27D8E2978, &qword_22BDBD020);
      v3 += 40;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  sub_22BB37DDC();
  *(v0 + 192) = sub_22BB8C4F8(v18, v19, v20, &protocol conformance descriptor for AgenticPlanner);
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  *v21 = v0;
  sub_22BB37330();
  sub_22BB374A0();

  return MEMORY[0x2822004D0](v22);
}

uint64_t sub_22BD35BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22BBF90EC;

  return sub_22BD35CA4(a4, a5);
}

uint64_t sub_22BD35CA4(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_22BDB8334();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_22BDB8134();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = sub_22BDB77D4();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = sub_22BDB80E4();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();
  v7 = sub_22BDB9774();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v8 = sub_22BDB82C4();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v9 = sub_22BDB43E4();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();
  v10 = sub_22BDB7734();
  v2[41] = v10;
  v2[42] = *(v10 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v11 = sub_22BDB7754();
  v2[45] = v11;
  v2[46] = *(v11 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD36068, 0, 0);
}

uint64_t sub_22BD36838(uint64_t a1)
{
  v3 = v1[17];
  sub_22BDB6364();
  sub_22BB69088(v3, (v1 + 12));
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();
  if (sub_22BB31400(v5))
  {
    sub_22BB31AD8();
    v318 = sub_22BB38198();
    *v2 = 136315138;
    sub_22BB31214(v1 + 12);
    v6 = sub_22BDB7914();
    sub_22BB32FA4(v1 + 12);
    v7 = sub_22BB3CB04();
    sub_22BB32EE0(v7, v8, v9);
    sub_22BB3935C();

    *(v2 + 4) = v6;
    sub_22BB34108(&dword_22BB2C000, v10, v11, "%s failed setup");
    sub_22BB32FA4(v318);
    sub_22BB3A3D8();
    sub_22BB2F194();

    v12 = sub_22BB30DB4();
    v13(v12);
  }

  else
  {

    v14 = sub_22BB30DB4();
    v15(v14);
    sub_22BB32FA4(v1 + 12);
  }

  v145 = v1[54];
  v229 = v1[51];
  v241 = v1[52];
  v265 = v1[49];
  v277 = v1[48];
  v289 = v1[47];
  v301 = v1[44];
  v313 = v1[43];
  v181 = v1[40];
  v205 = v1[50];
  v217 = v1[39];
  v253 = v1[38];
  v314 = v1[37];
  v157 = v1[34];
  v193 = v1[32];
  v315 = v1[31];
  v316 = v1[28];
  v317 = v1[27];
  v17 = v1[23];
  v16 = v1[24];
  v18 = v1[22];
  v19 = v1[20];
  v169 = v1[19];
  v121 = v1[21];
  v133 = v1[18];
  sub_22BB69FEC(v1[17], *(v1[17] + 24));
  sub_22BDB78D4();
  (*(v17 + 104))(v16, *MEMORY[0x277D1DB48], v18);
  sub_22BDB4234();
  v20 = v121;
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BB331D4();
  v21 = v181;
  sub_22BDB8E34();
  v22 = v157;
  v229(v157, v193);
  (*(v19 + 8))(v121, v169);
  (*(v17 + 8))(v16, v18);
  swift_willThrow();
  (*(v217 + 8))(v181, v253);
  sub_22BB3B528();
  sub_22BD380C8();

  v277, v23, v24, v25, v26, v27, v28, v29, v109, v121, v133, v145, v157, v169, v181, v193, v205, v217, v229, v241, v253, v265, v277, v289, v301;
  v290, v30, v31, v32, v33, v34, v35, v36, v110, v122, v134, v146, v158, v170, v182, v194, v206, v218, v230, v242, v254, v266, v278, v290, v302;
  v303, v37, v38, v39, v40, v41, v42, v43, v111, v123, v135, v147, v159, v171, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303;
  v313, v44, v45, v46, v47, v48, v49, v50, v112, v124, v136, v148, v160, v172, v184, v196, v208, v220, v232, v244, v256, v268, v280, v292, v304;
  v21, v51, v52, v53, v54, v55, v56, v57, v113, v125, v137, v149, v161, v173, v185, v197, v209, v221, v233, v245, v257, v269, v281, v293, v305;
  v314, v58, v59, v60, v61, v62, v63, v64, v114, v126, v138, v150, v162, v174, v186, v198, v210, v222, v234, v246, v258, v270, v282, v294, v306;
  v22, v65, v66, v67, v68, v69, v70, v71, v115, v127, v139, v151, v163, v175, v187, v199, v211, v223, v235, v247, v259, v271, v283, v295, v307;
  v315, v72, v73, v74, v75, v76, v77, v78, v116, v128, v140, v152, v164, v176, v188, v200, v212, v224, v236, v248, v260, v272, v284, v296, v308;
  v316, v79, v80, v81, v82, v83, v84, v85, v117, v129, v141, v153, v165, v177, v189, v201, v213, v225, v237, v249, v261, v273, v285, v297, v309;
  v317, v86, v87, v88, v89, v90, v91, v92, v118, v130, v142, v154, v166, v178, v190, v202, v214, v226, v238, v250, v262, v274, v286, v298, v310;
  v16, v93, v94, v95, v96, v97, v98, v99, v119, v131, v143, v155, v167, v179, v191, v203, v215, v227, v239, v251, v263, v275, v287, v299, v311;
  v20, v100, v101, v102, v103, v104, v105, v106, v120, v132, v144, v156, v168, v180, v192, v204, v216, v228, v240, v252, v264, v276, v288, v300, v312;
  sub_22BB2F09C();

  return v107();
}

void sub_22BD36B7C()
{
  sub_22BB30F94();
  v1 = v0;
  sub_22BB69FEC((v0 + 128), *(v0 + 152));
  sub_22BB371E4();
  v2 = sub_22BDB7974();
  v3 = sub_22BD316A0(v2);

  v4 = 0;
  v5 = *(v1 + 168);
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v6 == v4)
    {

      sub_22BB314EC();
      return;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_22BB69088(v7, v16);
    sub_22BB31214(v16);
    *&v15[0] = sub_22BDB7914();
    *(&v15[0] + 1) = v9;
    MEMORY[0x28223BE20](*&v15[0]);
    v14[2] = v15;
    v10 = sub_22BD7283C(sub_22BD38788, v14, v3);

    if (v10)
    {
      sub_22BB382E8(v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BD28608(0, *(v8 + 16) + 1, 1);
        v8 = v17;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22BD28608((v12 > 1), v13 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v13 + 1;
      sub_22BB382E8(v15, v8 + 40 * v13 + 32);
    }

    else
    {
      sub_22BB32FA4(v16);
    }

    v7 += 40;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_22BD36D40()
{
  sub_22BB2F0D4();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22BDB8334();
  v1[15] = v4;
  sub_22BB30434(v4);
  v1[16] = v5;
  v1[17] = sub_22BB30ACC();
  v6 = sub_22BDB8134();
  v1[18] = v6;
  sub_22BB30434(v6);
  v1[19] = v7;
  v1[20] = sub_22BB30ACC();
  v8 = sub_22BDB77D4();
  v1[21] = v8;
  sub_22BB30434(v8);
  v1[22] = v9;
  v1[23] = sub_22BB30ACC();
  v10 = sub_22BDB9B54();
  v1[24] = v10;
  sub_22BB30434(v10);
  v1[25] = v11;
  v1[26] = sub_22BB30ACC();
  v12 = sub_22BDB80E4();
  v1[27] = v12;
  sub_22BB30434(v12);
  v1[28] = v13;
  v1[29] = sub_22BB30ACC();
  v14 = sub_22BDB78B4();
  v1[30] = v14;
  sub_22BB30434(v14);
  v1[31] = v15;
  v1[32] = sub_22BB30ACC();
  v16 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v16);
  v1[33] = sub_22BB30ACC();
  v17 = sub_22BDB79E4();
  v1[34] = v17;
  sub_22BB30434(v17);
  v1[35] = v18;
  v1[36] = sub_22BB3307C();
  v1[37] = swift_task_alloc();
  v19 = sub_22BDB9774();
  v1[38] = v19;
  sub_22BB30434(v19);
  v1[39] = v20;
  v1[40] = sub_22BB30ACC();
  v21 = sub_22BDB82C4();
  v1[41] = v21;
  sub_22BB30434(v21);
  v1[42] = v22;
  v1[43] = sub_22BB30ACC();
  v23 = sub_22BDB43E4();
  v1[44] = v23;
  sub_22BB30434(v23);
  v1[45] = v24;
  v1[46] = sub_22BB3307C();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v25 = sub_22BDB7964();
  v1[49] = v25;
  sub_22BB30434(v25);
  v1[50] = v26;
  v1[51] = sub_22BB30ACC();
  v27 = sub_22BDB7734();
  v1[52] = v27;
  sub_22BB30434(v27);
  v1[53] = v28;
  v1[54] = sub_22BB3307C();
  v1[55] = swift_task_alloc();
  v29 = sub_22BDB7754();
  v1[56] = v29;
  sub_22BB30434(v29);
  v1[57] = v30;
  v1[58] = sub_22BB3307C();
  v1[59] = swift_task_alloc();
  v31 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_22BD371E0()
{
  v532 = v0;
  v2 = v0[12];
  v3 = sub_22BB31F54();
  sub_22BB69FEC(v3, v4);
  swift_getDynamicType();
  if (sub_22BDB7904())
  {
    v5 = v0[58];
    v6 = v0[56];
    v7 = v0[57];
    v8 = v0[12];
    sub_22BDB60D4();
    sub_22BDB60D4();
    sub_22BDB7744();
    sub_22BDB7704();
    v507 = *(v7 + 8);
    v507(v5, v6);
    sub_22BB69088(v8, (v0 + 7));
    v9 = sub_22BDB7744();
    v10 = sub_22BDBB1D4();
    v529 = v2;
    if (sub_22BDBB244())
    {
      v11 = v0[50];
      v12 = v0[51];
      v13 = v0[49];
      v14 = v10;
      v15 = sub_22BB31AD8();
      v16 = sub_22BB314C8();
      v531 = v16;
      *v15 = 136315138;
      sub_22BB69FEC(v0 + 7, v0[10]);
      swift_getDynamicType();
      sub_22BDB78C4();
      sub_22BB35C18();
      sub_22BB8C4F8(v17, 255, v18, MEMORY[0x277D1D580]);
      v19 = sub_22BDBB684();
      v21 = v20;
      (*(v11 + 8))(v12, v13);
      sub_22BB32FA4(v0 + 7);
      v22 = sub_22BB32EE0(v19, v21, &v531);

      *(v15 + 4) = v22;
      v23 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v9, v14, v23, "PlannerService.handle(_:)", "Service: %s", v15, 0xCu);
      sub_22BB32FA4(v16);
      sub_22BB2F194();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB32FA4(v0 + 7);
    }

    v43 = v0[55];
    v220 = v0[56];
    v240 = v0[59];
    v44 = v0[52];
    v527 = v0[48];
    v451 = v0[47];
    v488 = v0[44];
    v45 = v0[43];
    v46 = v0[40];
    v260 = v0[42];
    v280 = v0[41];
    v47 = v0[39];
    v396 = v0[45];
    v319 = v0[38];
    v48 = v0[12];
    v49 = sub_22BB3459C();
    v50(v49, v43, v44);
    v51 = sub_22BDB77A4();
    sub_22BB34ED4(v51);
    v52 = sub_22BB69A84();
    v0[60] = sub_22BB3DFFC(v52);
    v53 = sub_22BB3AB18();
    v54(v53);
    v507(v240, v220);
    v0[61] = sub_22BDB8E54();
    sub_22BB69FEC(v48, *(v529 + 24));
    sub_22BDB78D4();
    (*(v260 + 104))(v45, *MEMORY[0x277D1DCA8], v280);
    sub_22BDB96A4();
    sub_22BB3B528();
    sub_22BDB8E44();
    v55 = *(v47 + 8);
    v0[62] = v55;
    v0[63] = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v46, v319);
    (*(v260 + 8))(v45, v280);
    sub_22BDB96A4();
    sub_22BDB4364();
    v56 = sub_22BB32E04();
    (v55)(v56);
    sub_22BDB79D4();
    (*(v396 + 16))(v451, v527, v488);
    v57 = sub_22BB2F0E0();
    v58(v57);
    sub_22BB2F3F0();
    sub_22BDB78A4();
    sub_22BB69FEC(v48, *(v529 + 24));
    v59 = swift_task_alloc();
    v0[64] = v59;
    *v59 = v0;
    v59[1] = sub_22BD378CC;
    v60 = sub_22BB3487C(v0[13]);

    return MEMORY[0x2821767C0](v60);
  }

  else
  {
    v24 = v0[12];
    sub_22BDB6364();
    sub_22BB69088(v24, (v0 + 2));
    v25 = sub_22BDB77C4();
    v26 = sub_22BDBB104();
    if (sub_22BB31400(v26))
    {
      sub_22BB31AD8();
      v27 = sub_22BB38198();
      v531 = v27;
      *v1 = 136315138;
      sub_22BB31214(v0 + 2);
      v28 = sub_22BDB7914();
      sub_22BB32FA4(v0 + 2);
      v29 = sub_22BB3CB04();
      sub_22BB32EE0(v29, v30, v31);
      sub_22BB3935C();

      *(v1 + 4) = v28;
      sub_22BB34108(&dword_22BB2C000, v32, v33, "Service %s is disabled. Skipping handle.");
      sub_22BB32FA4(v27);
      sub_22BB3A3D8();
      sub_22BB2F194();

      v34 = sub_22BB30DB4();
      v35(v34);
    }

    else
    {

      v61 = sub_22BB30DB4();
      v62(v61);
      sub_22BB32FA4(v0 + 2);
    }

    v63 = v0[58];
    v65 = v0[54];
    v64 = v0[55];
    v66 = v0[51];
    v68 = v0[47];
    v67 = v0[48];
    v69 = v0[46];
    v70 = v0[43];
    v71 = v0[40];
    v526 = v0[23];
    v528 = v0[20];
    v530 = v0[17];
    v0[59], v36, v37, v38, v39, v40, v41, v42, v200, v219, v239, v259, v279, v299, v318, v338, v357, v376, v395, v0[37], v0[36], v0[33], v0[32], v0[29], v0[26];
    v63, v72, v73, v74, v75, v76, v77, v78, v201, v221, v241, v261, v281, v300, v320, v339, v358, v377, v397, v415, v433, v452, v470, v489, v508;
    v64, v79, v80, v81, v82, v83, v84, v85, v202, v222, v242, v262, v282, v301, v321, v340, v359, v378, v398, v416, v434, v453, v471, v490, v509;
    v65, v86, v87, v88, v89, v90, v91, v92, v203, v223, v243, v263, v283, v302, v322, v341, v360, v379, v399, v417, v435, v454, v472, v491, v510;
    v66, v93, v94, v95, v96, v97, v98, v99, v204, v224, v244, v264, v284, v303, v323, v342, v361, v380, v400, v418, v436, v455, v473, v492, v511;
    v67, v100, v101, v102, v103, v104, v105, v106, v205, v225, v245, v265, v285, v304, v324, v343, v362, v381, v401, v419, v437, v456, v474, v493, v512;
    v68, v107, v108, v109, v110, v111, v112, v113, v206, v226, v246, v266, v286, v305, v325, v344, v363, v382, v402, v420, v438, v457, v475, v494, v513;
    v69, v114, v115, v116, v117, v118, v119, v120, v207, v227, v247, v267, v287, v306, v326, v345, v364, v383, v403, v421, v439, v458, v476, v495, v514;
    v70, v121, v122, v123, v124, v125, v126, v127, v208, v228, v248, v268, v288, v307, v327, v346, v365, v384, v404, v422, v440, v459, v477, v496, v515;
    v71, v128, v129, v130, v131, v132, v133, v134, v209, v229, v249, v269, v289, v308, v328, v347, v366, v385, v405, v423, v441, v460, v478, v497, v516;
    v424, v135, v136, v137, v138, v139, v140, v141, v210, v230, v250, v270, v290, v309, v329, v348, v367, v386, v406, v424, v442, v461, v479, v498, v517;
    v443, v142, v143, v144, v145, v146, v147, v148, v211, v231, v251, v271, v291, v310, v330, v349, v368, v387, v407, v425, v443, v462, v480, v499, v518;
    v463, v149, v150, v151, v152, v153, v154, v155, v212, v232, v252, v272, v292, v311, v331, v350, v369, v388, v408, v426, v444, v463, v481, v500, v519;
    v482, v156, v157, v158, v159, v160, v161, v162, v213, v233, v253, v273, v293, v312, v332, v351, v370, v389, v409, v427, v445, v464, v482, v501, v520;
    v502, v163, v164, v165, v166, v167, v168, v169, v214, v234, v254, v274, v294, v313, v333, v352, v371, v390, v410, v428, v446, v465, v483, v502, v521;
    v522, v170, v171, v172, v173, v174, v175, v176, v215, v235, v255, v275, v295, v314, v334, v353, v372, v391, v411, v429, v447, v466, v484, v503, v522;
    v526, v177, v178, v179, v180, v181, v182, v183, v216, v236, v256, v276, v296, v315, v335, v354, v373, v392, v412, v430, v448, v467, v485, v504, v523;
    v528, v184, v185, v186, v187, v188, v189, v190, v217, v237, v257, v277, v297, v316, v336, v355, v374, v393, v413, v431, v449, v468, v486, v505, v524;
    v530, v191, v192, v193, v194, v195, v196, v197, v218, v238, v258, v278, v298, v317, v337, v356, v375, v394, v414, v432, v450, v469, v487, v506, v525;
    sub_22BB39738();

    return v198(0);
  }
}

uint64_t sub_22BD37DE8()
{
  v297 = v0[62];
  v316 = v0[63];
  v278 = v0[61];
  v448 = v0[60];
  v467 = v0[59];
  v468 = v0[58];
  v469 = v0[55];
  v470 = v0[54];
  v471 = v0[51];
  v1 = v0[48];
  v473 = v0[47];
  v474 = v0[46];
  v410 = v0[45];
  v429 = v0[44];
  v475 = v0[43];
  v202 = v0[40];
  v259 = v0[38];
  v373 = v0[37];
  v476 = v0[36];
  v335 = v0[35];
  v354 = v0[34];
  v472 = v0[32];
  v477 = v0[33];
  v478 = v0[29];
  v479 = v0[26];
  v480 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v221 = v0[15];
  v6 = v0[12];
  v164 = v0[17];
  v183 = v0[13];
  (*(v0[31] + 8))();
  v240 = v6;
  sub_22BB69FEC(v6, v6[3]);
  sub_22BB3935C();
  sub_22BDB78D4();
  (*(v2 + 104))(v3, *MEMORY[0x277D1DB50], v4);
  sub_22BDB4234();
  v7 = v164;
  sub_22BDB8324();
  v8 = v202;
  sub_22BDB96A4();
  sub_22BDB8E34();
  v297(v202, v259);
  (*(v5 + 8))(v164, v221);
  (*(v2 + 8))(v3, v4);
  swift_willThrow();
  v9 = v373;
  (*(v335 + 8))(v373, v354);
  (*(v410 + 8))(v1, v429);
  sub_22BD380C8();

  v467, v10, v11, v12, v13, v14, v15, v16, v145, v164, v183, v202, v221, v240, v259, v278, v297, v316, v335, v354, v373, v3, v410, v429, v448;
  v468, v17, v18, v19, v20, v21, v22, v23, v146, v165, v184, v203, v222, v241, v260, v279, v298, v317, v336, v355, v374, v392, v411, v430, v449;
  v469, v24, v25, v26, v27, v28, v29, v30, v147, v166, v185, v204, v223, v242, v261, v280, v299, v318, v337, v356, v375, v393, v412, v431, v450;
  v470, v31, v32, v33, v34, v35, v36, v37, v148, v167, v186, v205, v224, v243, v262, v281, v300, v319, v338, v357, v376, v394, v413, v432, v451;
  v471, v38, v39, v40, v41, v42, v43, v44, v149, v168, v187, v206, v225, v244, v263, v282, v301, v320, v339, v358, v377, v395, v414, v433, v452;
  v1, v45, v46, v47, v48, v49, v50, v51, v150, v169, v188, v207, v226, v245, v264, v283, v302, v321, v340, v359, v378, v396, v415, v434, v453;
  v473, v52, v53, v54, v55, v56, v57, v58, v151, v170, v189, v208, v227, v246, v265, v284, v303, v322, v341, v360, v379, v397, v416, v435, v454;
  v474, v59, v60, v61, v62, v63, v64, v65, v152, v171, v190, v209, v228, v247, v266, v285, v304, v323, v342, v361, v380, v398, v417, v436, v455;
  v475, v66, v67, v68, v69, v70, v71, v72, v153, v172, v191, v210, v229, v248, v267, v286, v305, v324, v343, v362, v381, v399, v418, v437, v456;
  v8, v73, v74, v75, v76, v77, v78, v79, v154, v173, v192, v211, v230, v249, v268, v287, v306, v325, v344, v363, v382, v400, v419, v438, v457;
  v9, v80, v81, v82, v83, v84, v85, v86, v155, v174, v193, v212, v231, v250, v269, v288, v307, v326, v345, v364, v383, v401, v420, v439, v458;
  v476, v87, v88, v89, v90, v91, v92, v93, v156, v175, v194, v213, v232, v251, v270, v289, v308, v327, v346, v365, v384, v402, v421, v440, v459;
  v477, v94, v95, v96, v97, v98, v99, v100, v157, v176, v195, v214, v233, v252, v271, v290, v309, v328, v347, v366, v385, v403, v422, v441, v460;
  v472, v101, v102, v103, v104, v105, v106, v107, v158, v177, v196, v215, v234, v253, v272, v291, v310, v329, v348, v367, v386, v404, v423, v442, v461;
  v478, v108, v109, v110, v111, v112, v113, v114, v159, v178, v197, v216, v235, v254, v273, v292, v311, v330, v349, v368, v387, v405, v424, v443, v462;
  v479, v115, v116, v117, v118, v119, v120, v121, v160, v179, v198, v217, v236, v255, v274, v293, v312, v331, v350, v369, v388, v406, v425, v444, v463;
  v480, v122, v123, v124, v125, v126, v127, v128, v161, v180, v199, v218, v237, v256, v275, v294, v313, v332, v351, v370, v389, v407, v426, v445, v464;
  v408, v129, v130, v131, v132, v133, v134, v135, v162, v181, v200, v219, v238, v257, v276, v295, v314, v333, v352, v371, v390, v408, v427, v446, v465;
  v7, v136, v137, v138, v139, v140, v141, v142, v163, v182, v201, v220, v239, v258, v277, v296, v315, v334, v353, v372, v391, v409, v428, v447, v466;
  sub_22BB2F09C();

  return v143();
}

void sub_22BD380C8()
{
  sub_22BB30F94();
  v35 = v0;
  v2 = v1;
  sub_22BDB7764();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v4 = sub_22BDB7734();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDB7754();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = v16 - v15;
  sub_22BDB60D4();
  sub_22BB69088(v2, v37);
  v18 = sub_22BDB7744();
  sub_22BDB7774();
  v33 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v32 = v6;

    sub_22BDB77B4();

    v19 = sub_22BB3182C();
    if (v20(v19) == *MEMORY[0x277D85B00])
    {
      v21 = 0;
      v22 = 0;
      v34 = "[Error] Interval already ended";
    }

    else
    {
      v23 = sub_22BB3182C();
      v24(v23);
      v34 = "Service: %s";
      v22 = 2;
      v21 = 1;
    }

    v25 = v13;
    v26 = sub_22BB31AD8();
    v36 = sub_22BB314C8();
    *v26 = v22;
    *(v26 + 1) = v21;
    *(v26 + 2) = 2080;
    sub_22BB31214(v37);
    sub_22BDB7914();
    sub_22BB32FA4(v37);
    v27 = sub_22BB2F3F0();
    v30 = sub_22BB32EE0(v27, v28, v29);

    *(v26 + 4) = v30;
    v31 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v18, v33, v31, v35, v34, v26, 0xCu);
    sub_22BB32FA4(v36);
    sub_22BB30AF0();
    sub_22BB3A3D8();

    (*(v32 + 8))(v10, v4);
    (*(v25 + 8))(v17, v11);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
    sub_22BB32FA4(v37);
  }

  sub_22BB314EC();
}

uint64_t AgenticPlanner.deinit()
{

  sub_22BB32FA4((v0 + 128));

  sub_22BB32FA4((v0 + 200));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AgenticPlanner.__deallocating_deinit()
{
  AgenticPlanner.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t _s23IntelligenceFlowRuntime14AgenticPlannerC8makePlan12sessionStateSay0abE7Support7SessionO5EventVGAH0kI0V_tYaAF0E5ErrorOYKFTj()
{
  sub_22BB30F5C();
  v5 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22BD38674;
  v3 = sub_22BB3182C();

  return v5(v3);
}

uint64_t sub_22BD387A8()
{
  sub_22BB30F5C();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22BBF90EC;

  return sub_22BD354EC(v5, v3, v6, v7, v8);
}

uint64_t sub_22BD38864()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = sub_22BDB96E4();
  sub_22BB30434(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22BB3C48C;

  return sub_22BD35BFC(v3, v7, v8, v0 + 32, v0 + v6);
}

unint64_t sub_22BD38978()
{
  result = qword_27D8E62D0;
  if (!qword_27D8E62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E62D0);
  }

  return result;
}

uint64_t sub_22BD389EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD38A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22BD38A90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22BD38AA8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_22BD38ADC()
{
  result = qword_27D8E62E0;
  if (!qword_27D8E62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E62E0);
  }

  return result;
}

uint64_t AgenticPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22BB30418();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB9C14();
  sub_22BB30418();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  sub_22BDB7C04();
  (*(v19 + 16))(v23, a2, v17);
  sub_22BDB7BF4();
  sub_22BD38F08(v55);
  sub_22BBE6DE0(&qword_27D8E6060, &qword_22BDCD590);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22BDCDAD0;
  v25 = sub_22BDB7F54();
  v26 = sub_22BDB7F44();
  v27 = MEMORY[0x277D1D710];
  *(v24 + 56) = v25;
  *(v24 + 64) = v27;
  *(v24 + 32) = v26;
  v28 = a4[3];
  v29 = sub_22BB69FEC(a4, v28);
  v30 = sub_22BDB7EE4();
  (*(v12 + 16))(v16, a6, a7);
  sub_22BB30418();
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  (*(v34 + 16))(v33 - v32, v29, v28);

  v35 = sub_22BDB7ED4();
  v36 = MEMORY[0x277D1D700];
  *(v24 + 96) = v30;
  *(v24 + 104) = v36;
  *(v24 + 72) = v35;
  sub_22BDB7E74();
  sub_22BB33E24();

  v37 = sub_22BDB7E64();
  v38 = MEMORY[0x277D1D6F0];
  *(v24 + 136) = v30;
  *(v24 + 144) = v38;
  *(v24 + 112) = v37;
  sub_22BDB7F04();
  sub_22BB33E24();

  v39 = sub_22BDB7EF4();
  v40 = MEMORY[0x277D1D708];
  *(v24 + 176) = v30;
  *(v24 + 184) = v40;
  *(v24 + 152) = v39;
  v41 = sub_22BDB7E14();
  v42 = sub_22BDB7E04();
  v43 = MEMORY[0x277D1D6D8];
  *(v24 + 216) = v41;
  *(v24 + 224) = v43;
  *(v24 + 192) = v42;
  v44 = sub_22BDB7EB4();
  sub_22BDB7EA4();
  v45 = sub_22BDB7E94();
  v46 = MEMORY[0x277D1D6F8];
  *(v24 + 256) = v44;
  *(v24 + 264) = v46;
  *(v24 + 232) = v45;
  sub_22BDB7F84();
  sub_22BB33E24();

  v47 = sub_22BDB7F74();
  v48 = MEMORY[0x277D1D720];
  *(v24 + 296) = v44;
  *(v24 + 304) = v48;
  *(v24 + 272) = v47;
  sub_22BB69088(v55, v54);
  sub_22BB69088(a5, v53);
  type metadata accessor for AgenticPlanner();
  swift_allocObject();
  v49 = AgenticPlanner.init(router:services:instrumentationSender:)();

  sub_22BB32FA4(v55);
  return v49;
}

uint64_t sub_22BD38F08@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_22BDB7964();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BBE6DE0(&qword_27D8E62E8, &qword_22BDCDB30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_22BDB7894();
  sub_22BB30418();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  swift_getKeyPath();
  sub_22BDB4BE4();

  sub_22BDB7884();
  v17 = sub_22BB3AA28(v7, 1, v8);
  v18 = MEMORY[0x277D1D558];
  if (v17 == 1)
  {
    (*(v10 + 104))(v16, *MEMORY[0x277D1D558], v8);
    if (sub_22BB3AA28(v7, 1, v8) != 1)
    {
      sub_22BD393C0(v7);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v7, v8);
  }

  (*(v10 + 16))(v14, v16, v8);
  v19 = (*(v10 + 88))(v14, v8);
  if (v19 == *MEMORY[0x277D1D550])
  {
    v20 = sub_22BDB7CB4();
    sub_22BDB7EB4();
    sub_22BDB7E84();
    sub_22BDB7E84();
LABEL_11:
    sub_22BDB7C84();
    sub_22BDB7C94();
    v21 = sub_22BDB7C64();
    v22 = MEMORY[0x277D1D648];
    v23 = v26;
    v26[3] = v20;
    v23[4] = v22;
    *v23 = v21;
    return (*(v10 + 8))(v16, v8);
  }

  if (v19 == *MEMORY[0x277D1D560])
  {
    v20 = sub_22BDB7CB4();
    sub_22BDB7EB4();
    sub_22BDB7E84();
    sub_22BDB7EE4();
    sub_22BDB7EC4();
    goto LABEL_11;
  }

  if (v19 == *v18)
  {
    v20 = sub_22BDB7CB4();
    sub_22BDB7CA4();
    sub_22BDB7C74();
    goto LABEL_11;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

uint64_t sub_22BD392E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  result = AgenticPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)(a1, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AgenticPlannerConfiguration(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BD393C0(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E62E8, &qword_22BDCDB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD394AC(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v2 = a2(0);
    sub_22BBC0AFC();
    v3 = sub_22BB72084();
    v6 = v2;
  }

  else
  {
    a2(0);
    sub_22BB384BC();
    sub_22BB30B28();
  }

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BD395AC()
{
  sub_22BB2F0D4();
  v1[7] = v0;
  v1[8] = v2;
  v1[6] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  sub_22BB2F0C8(v4);
  v1[9] = sub_22BB30ACC();
  v5 = sub_22BDB4B94();
  v1[10] = v5;
  sub_22BB30434(v5);
  v1[11] = v6;
  v1[12] = sub_22BB30ACC();
  v7 = sub_22BDB8334();
  v1[13] = v7;
  sub_22BB30434(v7);
  v1[14] = v8;
  v1[15] = sub_22BB30ACC();
  v9 = sub_22BDB8134();
  v1[16] = v9;
  sub_22BB30434(v9);
  v1[17] = v10;
  v1[18] = sub_22BB30ACC();
  v11 = sub_22BDB80E4();
  v1[19] = v11;
  sub_22BB30434(v11);
  v1[20] = v12;
  v1[21] = sub_22BB30ACC();
  v13 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v13);
  v1[22] = sub_22BB30ACC();
  v14 = sub_22BDB9774();
  v1[23] = v14;
  sub_22BB30434(v14);
  v1[24] = v15;
  v1[25] = sub_22BB30ACC();
  v16 = sub_22BDB82C4();
  v1[26] = v16;
  sub_22BB30434(v16);
  v1[27] = v17;
  v1[28] = sub_22BB30ACC();
  v18 = sub_22BDB43E4();
  v1[29] = v18;
  sub_22BB30434(v18);
  v1[30] = v19;
  v1[31] = sub_22BB30ACC();
  v20 = sub_22BDB77D4();
  v1[32] = v20;
  sub_22BB30434(v20);
  v1[33] = v21;
  v1[34] = sub_22BB30ACC();
  v22 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22BD398C0(uint64_t a1)
{
  sub_22BDB63D4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "running planner");
    sub_22BB35600();
  }

  v7 = *(v1 + 264);
  v8 = *(v1 + 272);
  v9 = *(v1 + 256);
  v10 = *(v1 + 216);
  v11 = *(v1 + 224);
  v12 = *(v1 + 200);
  v22 = *(v1 + 208);
  v13 = *(v1 + 192);
  v23 = *(v1 + 184);

  (*(v7 + 8))(v8, v9);
  *(v1 + 280) = sub_22BDB8E54();
  v14 = *MEMORY[0x277D1D8C0];
  *(v1 + 352) = v14;
  *(v1 + 288) = sub_22BDB8094();
  sub_22BB2F330();
  v16 = *(v15 + 104);
  *(v1 + 296) = v16;
  *(v1 + 304) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v11, v14);
  (*(v10 + 104))(v11, *MEMORY[0x277D1DC90], v22);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v17 = *(v13 + 8);
  *(v1 + 312) = v17;
  *(v1 + 320) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v23);
  (*(v10 + 8))(v11, v22);
  sub_22BDB96A4();
  v18 = sub_22BDB9744();
  v17(v12, v23);
  sub_22BB3090C();
  sub_22BBD22B0(v18, v19);

  v20 = swift_task_alloc();
  *(v1 + 328) = v20;
  *v20 = v1;
  v20[1] = sub_22BD39B24;
  sub_22BB3487C(*(v1 + 48));

  return sub_22BBD2364();
}

uint64_t sub_22BD3A1D0(uint64_t a1)
{
  v317 = v1;
  sub_22BDB63D4();

  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB114();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 272);
    v4 = *(v1 + 280);
    v6 = sub_22BB31AD8();
    v7 = sub_22BB314C8();
    v316[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_22BB32EE0(v5, v4, v316);
    _os_log_impl(&dword_22BB2C000, v2, v3, "%s failed setup", v6, 0xCu);
    sub_22BB32FA4(v7);
    sub_22BB30AF0();
    sub_22BB3A3D8();

    v8 = sub_22BB30AE4();
    v9(v8);
  }

  else
  {

    v10 = sub_22BB30AE4();
    v11(v10);
  }

  v143 = *(v1 + 328);
  v203 = *(v1 + 304);
  v215 = *(v1 + 312);
  v191 = *(v1 + 296);
  v251 = *(v1 + 288);
  v263 = *(v1 + 280);
  v275 = *(v1 + 264);
  v287 = *(v1 + 256);
  v299 = *(v1 + 232);
  v311 = *(v1 + 224);
  v12 = *(v1 + 192);
  v167 = *(v1 + 200);
  v227 = *(v1 + 184);
  v239 = *(v1 + 272);
  v312 = *(v1 + 176);
  v131 = *(v1 + 152);
  v179 = *(v1 + 136);
  v313 = *(v1 + 128);
  v314 = *(v1 + 104);
  v315 = *(v1 + 96);
  v13 = *(v1 + 64);
  v14 = *(v1 + 72);
  v15 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = *(v1 + 40);
  v155 = *(v1 + 32);
  v107 = *(v1 + 24);
  v119 = v16;
  sub_22BB69FEC(*(v1 + 16), *(*(v1 + 16) + 24));
  sub_22BDB7994();
  (*(v13 + 104))(v14, *MEMORY[0x277D1DB48], v16);
  sub_22BDB4234();
  sub_22BDB8324();
  v18 = v131;
  sub_22BDB96A4();
  v19 = v15;
  v20 = v167;
  sub_22BDB8E34();
  v203(v131, v179);
  (*(v17 + 8))(v19, v155);
  (*(v13 + 8))(v14, v119);
  swift_willThrow();
  (*(v12 + 8))(v167, v227);
  sub_22BB8A288(v251, v239, v263);

  v275, v21, v22, v23, v24, v25, v26, v27, v107, v119, v131, v143, v155, v167, v179, v191, v203, v215, v227, v239, v251, v263, v275, v287, v299;
  v288, v28, v29, v30, v31, v32, v33, v34, v108, v120, v132, v144, v156, v168, v180, v192, v204, v216, v228, v240, v252, v264, v276, v288, v300;
  v301, v35, v36, v37, v38, v39, v40, v41, v109, v121, v133, v145, v157, v169, v181, v193, v205, v217, v229, v241, v253, v265, v277, v289, v301;
  v311, v42, v43, v44, v45, v46, v47, v48, v110, v122, v134, v146, v158, v170, v182, v194, v206, v218, v230, v242, v254, v266, v278, v290, v302;
  v20, v49, v50, v51, v52, v53, v54, v55, v111, v123, v135, v147, v159, v171, v183, v195, v207, v219, v231, v243, v255, v267, v279, v291, v303;
  v312, v56, v57, v58, v59, v60, v61, v62, v112, v124, v136, v148, v160, v172, v184, v196, v208, v220, v232, v244, v256, v268, v280, v292, v304;
  v18, v63, v64, v65, v66, v67, v68, v69, v113, v125, v137, v149, v161, v173, v185, v197, v209, v221, v233, v245, v257, v269, v281, v293, v305;
  v313, v70, v71, v72, v73, v74, v75, v76, v114, v126, v138, v150, v162, v174, v186, v198, v210, v222, v234, v246, v258, v270, v282, v294, v306;
  v314, v77, v78, v79, v80, v81, v82, v83, v115, v127, v139, v151, v163, v175, v187, v199, v211, v223, v235, v247, v259, v271, v283, v295, v307;
  v315, v84, v85, v86, v87, v88, v89, v90, v116, v128, v140, v152, v164, v176, v188, v200, v212, v224, v236, v248, v260, v272, v284, v296, v308;
  v14, v91, v92, v93, v94, v95, v96, v97, v117, v129, v141, v153, v165, v177, v189, v201, v213, v225, v237, v249, v261, v273, v285, v297, v309;
  v19, v98, v99, v100, v101, v102, v103, v104, v118, v130, v142, v154, v166, v178, v190, v202, v214, v226, v238, v250, v262, v274, v286, v298, v310;
  sub_22BB2F09C();

  return v105();
}

uint64_t sub_22BD3B850()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB77D4();
  v1[4] = v3;
  sub_22BB30434(v3);
  v1[5] = v4;
  v1[6] = sub_22BB30ACC();
  v5 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD3B8F4()
{
  sub_22BB30F5C();
  sub_22BDB63D4();
  v1 = sub_22BDB77C4();
  v2 = sub_22BDBB104();
  if (sub_22BB333C0(v2))
  {
    v3 = sub_22BB37F30();
    sub_22BB360F0(v3);
    sub_22BB2F0A8(&dword_22BB2C000, v4, v5, "running query decoration...");
    sub_22BB35600();
  }

  v6 = sub_22BB30AE4();
  v7(v6);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 56) = v8;
  *v8 = v9;
  v8[1] = sub_22BD3B9F4;

  return sub_22BD3DE98();
}

uint64_t sub_22BD3BC4C()
{
  sub_22BB2F0D4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v4);
  v1[8] = sub_22BB3307C();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_22BDB43E4();
  v1[11] = v5;
  sub_22BB30434(v5);
  v1[12] = v6;
  v1[13] = sub_22BB3307C();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_22BDB9774();
  v1[16] = v7;
  sub_22BB30434(v7);
  v1[17] = v8;
  v1[18] = sub_22BB3307C();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v9);
  v1[22] = sub_22BB3307C();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v10 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BD3BE34(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[17];
  v4 = v1[11];
  sub_22BDB96A4();
  sub_22BD40800();
  v5 = *(v3 + 8);
  v1[29] = v5;
  v1[30] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = sub_22BB331D4();
  v5(v6);
  sub_22BB30AE4();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v2, 1, v4) == 1)
  {
    sub_22BB58728(v1[27], &qword_27D8E3218, &qword_22BDBE390);
  }

  else
  {
    v7 = v1[20];
    (*(v1[12] + 32))(v1[15], v1[27], v1[11]);
    sub_22BDB96A4();
    sub_22BDB9744();
    v8 = sub_22BB2F5A0();
    v5(v8);
    sub_22BB3090C();
    sub_22BBD22B0(v7, v9);

    v10 = sub_22BDB9B54();
    if (sub_22BB922B8(v10) == 1)
    {
      v11 = v1[11];
      sub_22BB58728(v1[10], &unk_27D8E69E0, &qword_22BDC1660);
      v12 = sub_22BB3A190();
      sub_22BB336D0(v12, v13, 1, v11);
    }

    else
    {
      sub_22BDB9964();
      sub_22BB30474();
      v14 = sub_22BB3182C();
      v15(v14);
    }

    v16 = v1[26];
    sub_22BB31F54();
    sub_22BDB7F34();
    sub_22BB58728(v16, &qword_27D8E3218, &qword_22BDBE390);
    v17 = sub_22BB30AE4();
    v18(v17);
  }

  v19 = swift_task_alloc();
  v1[31] = v19;
  *v19 = v1;
  v19[1] = sub_22BD3C098;
  sub_22BB3487C(v1[5]);

  return sub_22BD3C728();
}

uint64_t sub_22BD3C728()
{
  sub_22BB2F0D4();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_22BDB7734();
  v1[36] = v4;
  sub_22BB30434(v4);
  v1[37] = v5;
  v1[38] = sub_22BB3307C();
  v1[39] = swift_task_alloc();
  v6 = sub_22BDB7754();
  v1[40] = v6;
  sub_22BB30434(v6);
  v1[41] = v7;
  v1[42] = sub_22BB3307C();
  v1[43] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v1[44] = v8;
  sub_22BB30434(v8);
  v1[45] = v9;
  v1[46] = sub_22BB3307C();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v10 = sub_22BDB7FA4();
  v1[50] = v10;
  sub_22BB30434(v10);
  v1[51] = v11;
  v1[52] = sub_22BB30ACC();
  v12 = sub_22BDB92B4();
  v1[53] = v12;
  sub_22BB30434(v12);
  v1[54] = v13;
  v1[55] = sub_22BB3307C();
  v1[56] = swift_task_alloc();
  v14 = sub_22BDB7D54();
  v1[57] = v14;
  sub_22BB30434(v14);
  v1[58] = v15;
  v1[59] = sub_22BB30ACC();
  v16 = sub_22BDB8FB4();
  v1[60] = v16;
  sub_22BB30434(v16);
  v1[61] = v17;
  v1[62] = sub_22BB3307C();
  v1[63] = swift_task_alloc();
  v18 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  v1[64] = v18;
  sub_22BB2F0C8(v18);
  v1[65] = sub_22BB30ACC();
  v19 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22BD3CA10()
{
  sub_22BBC0AFC();
  sub_22BB2F324();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v0[51];
      v3 = v0[52];
      v5 = v0[50];
      v6 = sub_22BB977D0();
      v7(v6);
      v8 = sub_22BB8ABAC();
      v9(v8);
      sub_22BB690EC(v1 + 440, (v0 + 12));
      sub_22BDB7F94();
      v0[20] = v5;
      v0[21] = sub_22BB8C540(&qword_27D8E6340, 255, MEMORY[0x277D1D730], MEMORY[0x277D1D728]);
      v17 = sub_22BB8B8A0(v0 + 17, v10, v11, v12, v13, v14, v15, v16);
      (*(v4 + 16))(v17, v3, v5);
      swift_task_alloc();
      sub_22BB30B34();
      v0[69] = v18;
      *v18 = v19;
      v18[1] = sub_22BD3D250;
    }

    else
    {
      sub_22BDB63D4();
      v37 = sub_22BDB77C4();
      v38 = sub_22BDBB104();
      if (sub_22BB333C0(v38))
      {
        v39 = sub_22BB37F30();
        sub_22BB360F0(v39);
        sub_22BB2F0A8(&dword_22BB2C000, v40, v41, "StandardPlanner: generating plan");
        sub_22BB35600();
      }

      v42 = v0[45];

      v0[72] = *(v42 + 8);
      v43 = sub_22BB30AE4();
      v69 = v44;
      v44(v43);
      sub_22BDB6114();
      sub_22BDB6114();
      sub_22BDB7744();
      sub_22BDB7704();
      v45 = sub_22BB32E04();
      v68 = v46;
      v46(v45);
      v47 = sub_22BDB7744();
      v48 = sub_22BDBB1D4();
      if (sub_22BDBB244())
      {
        v49 = sub_22BB37F30();
        *v49 = 0;
        v50 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v47, v48, v50, "StandardPlanner.generatePlan", "", v49, 2u);
        sub_22BB30AF0();
      }

      v51 = v0[39];
      v52 = v0[36];

      v53 = sub_22BB3459C();
      v54(v53, v51, v52);
      v55 = sub_22BDB77A4();
      sub_22BB34ED4(v55);
      sub_22BB3A190();
      v0[73] = sub_22BDB7794();
      v56 = sub_22BB35464();
      v57(v56);
      v58 = sub_22BB331D4();
      v68(v58);
      sub_22BDB63D4();
      v59 = sub_22BDB77C4();
      v60 = sub_22BDBB104();
      if (sub_22BB333C0(v60))
      {
        v61 = sub_22BB37F30();
        sub_22BB360F0(v61);
        sub_22BB2F0A8(&dword_22BB2C000, v62, v63, "generating a plan...");
        sub_22BB35600();
      }

      v64 = sub_22BB30AE4();
      v69(v64);
      swift_task_alloc();
      sub_22BB30B34();
      v0[74] = v65;
      *v65 = v66;
      v65[1] = sub_22BD3D5A8;
    }
  }

  else
  {
    v21 = v0[58];
    v20 = v0[59];
    v22 = v0[57];
    v23 = sub_22BB977D0();
    v24(v23);
    v25 = sub_22BB8ABAC();
    v26(v25);
    sub_22BB690EC(v1 + 440, (v0 + 22));
    sub_22BDB7D44();
    v0[30] = v22;
    v0[31] = sub_22BB8C540(&qword_27D8E6350, 255, MEMORY[0x277D1D688], MEMORY[0x277D1D680]);
    v34 = sub_22BB8B8A0(v0 + 27, v27, v28, v29, v30, v31, v32, v33);
    (*(v21 + 16))(v34, v20, v22);
    swift_task_alloc();
    sub_22BB30B34();
    v0[66] = v35;
    *v35 = v36;
    v35[1] = sub_22BD3CEF4;
  }

  return sub_22BD3DE98();
}

uint64_t sub_22BD3DE98()
{
  sub_22BB2F0D4();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22BDB8334();
  v1[25] = v4;
  sub_22BB30434(v4);
  v1[26] = v5;
  v1[27] = sub_22BB30ACC();
  v6 = sub_22BDB8134();
  v1[28] = v6;
  sub_22BB30434(v6);
  v1[29] = v7;
  v1[30] = sub_22BB30ACC();
  v8 = sub_22BDB9B54();
  v1[31] = v8;
  sub_22BB30434(v8);
  v1[32] = v9;
  v1[33] = sub_22BB30ACC();
  v10 = sub_22BDB80E4();
  v1[34] = v10;
  sub_22BB30434(v10);
  v1[35] = v11;
  v1[36] = sub_22BB30ACC();
  v12 = sub_22BDB7944();
  v1[37] = v12;
  sub_22BB30434(v12);
  v1[38] = v13;
  v1[39] = sub_22BB30ACC();
  v14 = sub_22BDB7574();
  v1[40] = v14;
  sub_22BB30434(v14);
  v1[41] = v15;
  v1[42] = sub_22BB30ACC();
  v16 = sub_22BDB77D4();
  v1[43] = v16;
  sub_22BB30434(v16);
  v1[44] = v17;
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v18 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v18);
  v1[47] = sub_22BB30ACC();
  v19 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v19);
  v1[48] = sub_22BB3307C();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v20 = sub_22BDB9774();
  v1[52] = v20;
  sub_22BB30434(v20);
  v1[53] = v21;
  v1[54] = sub_22BB3307C();
  v1[55] = swift_task_alloc();
  v22 = sub_22BDB82C4();
  v1[56] = v22;
  sub_22BB30434(v22);
  v1[57] = v23;
  v1[58] = sub_22BB30ACC();
  v24 = sub_22BDB43E4();
  v1[59] = v24;
  sub_22BB30434(v24);
  v1[60] = v25;
  v1[61] = sub_22BB3307C();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v26 = sub_22BDB7734();
  v1[68] = v26;
  sub_22BB30434(v26);
  v1[69] = v27;
  v1[70] = sub_22BB3307C();
  v1[71] = swift_task_alloc();
  v28 = sub_22BDB7754();
  v1[72] = v28;
  sub_22BB30434(v28);
  v1[73] = v29;
  v1[74] = sub_22BB3307C();
  v1[75] = swift_task_alloc();
  v30 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22BD3E378()
{
  v790 = v0;
  v1 = *(v0 + 176);
  v2 = sub_22BB31F54();
  sub_22BB69FEC(v2, v3);
  swift_getDynamicType();
  v762 = v1;
  if ((sub_22BDB79C4() & 1) == 0)
  {
    v16 = *(v0 + 176);
    sub_22BDB63D4();
    sub_22BB690EC(v16, v0 + 16);
    v17 = sub_22BDB77C4();
    v18 = sub_22BDBB104();
    if (sub_22BB3805C(v18))
    {
      v19 = sub_22BB31AD8();
      v20 = sub_22BB314C8();
      v789[0] = v20;
      *v19 = 136315138;
      sub_22BB69FEC((v0 + 16), *(v0 + 40));
      sub_22BB3935C();
      v21 = sub_22BDBB684();
      sub_22BB32FA4((v0 + 16));
      v22 = sub_22BB3CB04();
      sub_22BB32EE0(v22, v23, v24);
      sub_22BB3935C();

      *(v19 + 4) = v21;
      _os_log_impl(&dword_22BB2C000, v17, v18, "Service %s is disabled. Skipping handle.", v19, 0xCu);
      sub_22BB32FA4(v20);
      sub_22BB3A3D8();
      sub_22BB30AF0();

      v25 = sub_22BB2F0E0();
      v26(v25);
    }

    else
    {

      v50 = sub_22BB2F0E0();
      v51(v50);
      sub_22BB32FA4((v0 + 16));
    }

    v52 = *(v0 + 592);
    v53 = *(v0 + 568);
    v54 = *(v0 + 560);
    v55 = *(v0 + 536);
    v56 = *(v0 + 528);
    v57 = *(v0 + 520);
    v59 = *(v0 + 504);
    v58 = *(v0 + 512);
    v60 = *(v0 + 496);
    sub_22BB6BB74(*(v0 + 600), v27, v28, v29, v30, v31, v32, v33, v316, v343, v370, v397, v424, v452, v480, v508, log, v564, v592, v620, v648, v676, v704, v733, v762);
    v52, v61, v62, v63, v64, v65, v66, v67, v317, v344, v371, v398, v426, v454, v482, v510, logb, v566, v594, v622, v650, v678, v706, v734, v763;
    v53, v68, v69, v70, v71, v72, v73, v74, v318, v345, v372, v399, v427, v455, v483, v511, logc, v567, v595, v623, v651, v679, v707, v735, v764;
    v54, v75, v76, v77, v78, v79, v80, v81, v319, v346, v373, v400, v428, v456, v484, v512, logd, v568, v596, v624, v652, v680, v708, v736, v765;
    v55, v82, v83, v84, v85, v86, v87, v88, v320, v347, v374, v401, v429, v457, v485, v513, loge, v569, v597, v625, v653, v681, v709, v737, v766;
    v56, v89, v90, v91, v92, v93, v94, v95, v321, v348, v375, v402, v430, v458, v486, v514, logf, v570, v598, v626, v654, v682, v710, v738, v767;
    v57, v96, v97, v98, v99, v100, v101, v102, v322, v349, v376, v403, v431, v459, v487, v515, logg, v571, v599, v627, v655, v683, v711, v739, v768;
    v58, v103, v104, v105, v106, v107, v108, v109, v323, v350, v377, v404, v432, v460, v488, v516, logh, v572, v600, v628, v656, v684, v712, v740, v769;
    v59, v110, v111, v112, v113, v114, v115, v116, v324, v351, v378, v405, v433, v461, v489, v517, logi, v573, v601, v629, v657, v685, v713, v741, v770;
    v60, v117, v118, v119, v120, v121, v122, v123, v325, v352, v379, v406, v434, v462, v490, v518, logj, v574, v602, v630, v658, v686, v714, v742, v771;
    v326, v124, v125, v126, v127, v128, v129, v130, v326, v353, v380, v407, v435, v463, v491, v519, logk, v575, v603, v631, v659, v687, v715, v743, v772;
    v354, v131, v132, v133, v134, v135, v136, v137, v327, v354, v381, v408, v436, v464, v492, v520, logl, v576, v604, v632, v660, v688, v716, v744, v773;
    v382, v138, v139, v140, v141, v142, v143, v144, v328, v355, v382, v409, v437, v465, v493, v521, logm, v577, v605, v633, v661, v689, v717, v745, v774;
    v410, v145, v146, v147, v148, v149, v150, v151, v329, v356, v383, v410, v438, v466, v494, v522, logn, v578, v606, v634, v662, v690, v718, v746, v775;
    v439, v152, v153, v154, v155, v156, v157, v158, v330, v357, v384, v411, v439, v467, v495, v523, logo, v579, v607, v635, v663, v691, v719, v747, v776;
    v468, v159, v160, v161, v162, v163, v164, v165, v331, v358, v385, v412, v440, v468, v496, v524, logp, v580, v608, v636, v664, v692, v720, v748, v777;
    v497, v166, v167, v168, v169, v170, v171, v172, v332, v359, v386, v413, v441, v469, v497, v525, logq, v581, v609, v637, v665, v693, v721, v749, v778;
    v526, v173, v174, v175, v176, v177, v178, v179, v333, v360, v387, v414, v442, v470, v498, v526, logr, v582, v610, v638, v666, v694, v722, v750, v779;
    logs, v180, v181, v182, v183, v184, v185, v186, v334, v361, v388, v415, v443, v471, v499, v527, logs, v583, v611, v639, v667, v695, v723, v751, v780;
    v584, v187, v188, v189, v190, v191, v192, v193, v335, v362, v389, v416, v444, v472, v500, v528, logt, v584, v612, v640, v668, v696, v724, v752, v781;
    v613, v194, v195, v196, v197, v198, v199, v200, v336, v363, v390, v417, v445, v473, v501, v529, logu, v585, v613, v641, v669, v697, v725, v753, v782;
    v642, v201, v202, v203, v204, v205, v206, v207, v337, v364, v391, v418, v446, v474, v502, v530, logv, v586, v614, v642, v670, v698, v726, v754, v783;
    v671, v208, v209, v210, v211, v212, v213, v214, v338, v365, v392, v419, v447, v475, v503, v531, logw, v587, v615, v643, v671, v699, v727, v755, v784;
    v700, v215, v216, v217, v218, v219, v220, v221, v339, v366, v393, v420, v448, v476, v504, v532, logx, v588, v616, v644, v672, v700, v728, v756, v785;
    v729, v222, v223, v224, v225, v226, v227, v228, v340, v367, v394, v421, v449, v477, v505, v533, logy, v589, v617, v645, v673, v701, v729, v757, v786;
    v758, v229, v230, v231, v232, v233, v234, v235, v341, v368, v395, v422, v450, v478, v506, v534, logz, v590, v618, v646, v674, v702, v730, v758, v787;
    v788, v236, v237, v238, v239, v240, v241, v242, v342, v369, v396, v423, v451, v479, v507, v535, logba, v591, v619, v647, v675, v703, v731, v759, v788;
    sub_22BB39738();
    sub_22BB3E07C();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v0 + 176);
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v5 = sub_22BB2F3F0();
  v705 = v6;
  (v6)(v5);
  sub_22BB690EC(v4, v0 + 56);
  v7 = sub_22BDB7744();
  v8 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v9 = sub_22BB31AD8();
    v10 = sub_22BB314C8();
    v789[0] = v10;
    *v9 = 136315138;
    sub_22BB69FEC((v0 + 56), *(v0 + 80));
    v11 = sub_22BDBB684();
    v13 = v12;
    sub_22BB32FA4((v0 + 56));
    v14 = sub_22BB32EE0(v11, v13, v789);

    *(v9 + 4) = v14;
    v15 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v7, v8, v15, "PlannerService.handle(_:)", "Service: %s", v9, 0xCu);
    sub_22BB32FA4(v10);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {

    sub_22BB32FA4((v0 + 56));
  }

  v425 = *(v0 + 576);
  v453 = *(v0 + 600);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);
  v36 = *(v0 + 464);
  v37 = *(v0 + 456);
  v509 = *(v0 + 448);
  loga = *(v0 + 536);
  v38 = *(v0 + 440);
  v39 = *(v0 + 424);
  v565 = *(v0 + 416);
  v593 = *(v0 + 408);
  v649 = *(v0 + 400);
  v677 = *(v0 + 472);
  v621 = *(v0 + 192);
  v481 = *(v0 + 184);
  v40 = *(v0 + 176);
  v41 = sub_22BB3459C();
  v42(v41, v34, v35);
  v43 = sub_22BDB77A4();
  sub_22BB34ED4(v43);
  sub_22BB3A190();
  *(v0 + 608) = sub_22BDB7794();
  v44 = sub_22BB34FB8();
  v45(v44);
  v705(v453, v425);
  *(v0 + 616) = sub_22BDB8E54();
  sub_22BB69FEC(v40, *(v762 + 24));
  sub_22BB34FB8();
  sub_22BDB7994();
  (*(v37 + 104))(v36, *MEMORY[0x277D1DCA8], v509);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v46 = *(v39 + 8);
  *(v0 + 624) = v46;
  *(v0 + 632) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v38, v565);
  (*(v37 + 8))(v36, v509);
  sub_22BDB96A4();
  sub_22BD40800();
  v46(v38, v565);
  sub_22BC5E5C4();
  v47 = sub_22BB3A190();
  sub_22BB31814(v47, v48, v677);
  if (v49)
  {
    sub_22BB58728(*(v0 + 400), &qword_27D8E3218, &qword_22BDBE390);
    goto LABEL_22;
  }

  v245 = *(*(v0 + 480) + 32);
  v245(*(v0 + 528), *(v0 + 400), *(v0 + 472));
  sub_22BC5E5C4();
  if (!*(v0 + 160))
  {
    sub_22BB58728(v0 + 136, &qword_27D8E62F8, &qword_22BDCDB90);
LABEL_21:
    v260 = sub_22BB2F324();
    v261(v260);
    goto LABEL_22;
  }

  v246 = *(v0 + 432);
  v247 = *(v0 + 376);
  v248 = *(v0 + 248);
  sub_22BB382E8((v0 + 136), v0 + 96);
  sub_22BDB96A4();
  sub_22BDB9744();
  v249 = sub_22BB2F5A0();
  (v46)(v249);
  sub_22BB3090C();
  sub_22BBD22B0(v246, v250);

  v251 = sub_22BB3AA28(v247, 1, v248);
  v252 = *(v0 + 472);
  v253 = *(v0 + 392);
  v254 = *(v0 + 376);
  if (v251 == 1)
  {
    sub_22BB58728(*(v0 + 376), &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BB30B28();
    sub_22BB336D0(v255, v256, v257, v252);
LABEL_20:
    sub_22BB58728(*(v0 + 392), &qword_27D8E3218, &qword_22BDBE390);
    sub_22BB32FA4((v0 + 96));
    goto LABEL_21;
  }

  v258 = *(v0 + 248);
  v259 = *(v0 + 256);
  sub_22BDB9964();
  (*(v259 + 8))(v254, v258);
  sub_22BB36B74(v253);
  if (v49)
  {
    goto LABEL_20;
  }

  v267 = *(v0 + 528);
  v268 = *(v0 + 504);
  v269 = *(v0 + 472);
  v270 = *(v0 + 480);
  v245(*(v0 + 520), *(v0 + 392), v269);
  sub_22BDB63D4();
  v271 = *(v270 + 16);
  v272 = sub_22BB3182C();
  v271(v272);
  (v271)(v268, v267, v269);
  v273 = sub_22BDB77C4();
  v274 = sub_22BDBB0F4();
  v275 = sub_22BB3805C(v274);
  v276 = *(v0 + 504);
  v278 = *(v0 + 472);
  v277 = *(v0 + 480);
  v279 = *(v0 + 368);
  v280 = *(v0 + 344);
  v281 = *(v0 + 352);
  if (v275)
  {
    LODWORD(v621) = v274;
    v282 = swift_slowAlloc();
    v677 = swift_slowAlloc();
    v789[0] = v677;
    *v282 = 136315394;
    sub_22BB8C540(&qword_28142DD38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    loga = v273;
    v649 = v280;
    v283 = sub_22BDBB684();
    v565 = v281;
    v593 = v279;
    v284 = v276;
    v286 = v285;
    v287 = *(v277 + 8);
    v732 = (v277 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v288 = sub_22BB3CB04();
    v287(v288);
    v289 = sub_22BB32EE0(v283, v286, v789);

    *(v282 + 4) = v289;
    *(v282 + 12) = 2080;
    sub_22BDBB684();
    v760 = v287;
    (v287)(v284, v278);
    v290 = sub_22BB2F324();
    v293 = sub_22BB32EE0(v290, v291, v292);

    *(v282 + 14) = v293;
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB3A3D8();

    (*(v565 + 8))(v593, v649);
  }

  else
  {

    v294 = *(v277 + 8);
    v732 = (v277 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v294(v276, v278);
    v295 = sub_22BB3CB04();
    v760 = v294;
    (v294)(v295);
    v296 = sub_22BB2F0E0();
    v297(v296);
  }

  v298 = *(v0 + 528);
  v299 = *(v0 + 520);
  v300 = *(v0 + 472);
  v301 = *(v0 + 336);
  v302 = swift_task_alloc();
  *(v302 + 16) = v298;
  *(v302 + 24) = v299;
  sub_22BDB76D4();
  v302, v303, v304, v305, v306, v307, v308, v309, v316, v343, v370, v397, v425, v453, v481, v509, loga, v565, v593, v621, v649, v677, v732, v760, v762;
  v310 = *(v0 + 120);
  v311 = *(v0 + 128);
  sub_22BB69FEC((v0 + 96), v310);
  (*(v311 + 8))(v301, v310, v311);
  v312 = sub_22BB35464();
  v313(v312);
  v761(v299, v300);
  sub_22BB32FA4((v0 + 96));
  v314 = sub_22BB33728();
  (v761)(v314);
LABEL_22:
  v262 = *(v0 + 176);
  v263 = sub_22BB3459C();
  v264(v263);
  sub_22BB30AE4();
  sub_22BC5E5C4();
  sub_22BB2F3F0();
  sub_22BDB7934();
  sub_22BB69FEC(v262, *(v762 + 24));
  v265 = swift_task_alloc();
  *(v0 + 640) = v265;
  *v265 = v0;
  v265[1] = sub_22BD3EF28;
  sub_22BB3487C(*(v0 + 184));
  sub_22BB3E07C();

  return MEMORY[0x282176820]();
}

void sub_22BD3F044()
{
  v1 = v0[81];
  sub_22BB69FEC(v0[22], *(v0[22] + 24));
  sub_22BB2F5A0();
  sub_22BDB7994();
  v601 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[81];
    v4 = v0[60];
    v5 = v0[32];
    v685 = MEMORY[0x277D84F90];
    sub_22BB5838C(0, v2, 0);
    sub_22BB2F390();
    v7 = v3 + v6;
    v628 = *(v5 + 72);
    v656 = v8;
    do
    {
      v656(v0[33], v7, v0[31]);
      sub_22BDB8F24();
      v9 = sub_22BB32E04();
      v10(v9);
      v12 = *(v685 + 16);
      v11 = *(v685 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22BB5838C(v11 > 1, v12 + 1, 1);
      }

      *(v685 + 16) = v12 + 1;
      sub_22BB2F390();
      (*(v4 + 32))(v685 + v13 + *(v4 + 72) * v12);
      v7 += v628;
      --v2;
    }

    while (v2);
  }

  v520 = v0[78];
  v547 = v0[79];
  v493 = v0[77];
  v14 = v0[67];
  v15 = v0[60];
  v684 = v0[59];
  v16 = v0[55];
  v466 = v0[52];
  v17 = v0[38];
  v629 = v0[39];
  v657 = v0[51];
  v18 = v0[36];
  v574 = v0[37];
  v19 = v0[34];
  v20 = v0[35];
  sub_22BBE6DE0(&qword_27D8E62A0, &qword_22BDCD9A8);
  sub_22BDB8C34();
  (*(v20 + 104))(v18, *MEMORY[0x277D1D9E0], v19);
  sub_22BDB96A4();
  sub_22BDB8E24();
  v520(v16, v466);
  v21 = sub_22BB32E04();
  v22(v21);
  (*(v17 + 8))(v629, v574);
  sub_22BB58728(v657, &qword_27D8E3218, &qword_22BDBE390);
  (*(v15 + 8))(v14, v684);
  if (!*(v601 + 16))
  {
  }

  sub_22BD3F798(v0[76], v0[22]);

  v23 = v0[74];
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[65];
  v30 = v0[63];
  v29 = v0[64];
  v31 = v0[62];
  sub_22BB6BB74(v0[75], v32, v33, v34, v35, v36, v37, v38, v223, v250, v277, v304, v331, v358, v385, v412, v439, v466, v493, v520, v547, v574, v601, v629, v657);
  v23, v39, v40, v41, v42, v43, v44, v45, v224, v251, v278, v305, v332, v359, v386, v413, v440, v467, v494, v521, v548, v575, v602, v630, v658;
  v24, v46, v47, v48, v49, v50, v51, v52, v225, v252, v279, v306, v333, v360, v387, v414, v441, v468, v495, v522, v549, v576, v603, v631, v659;
  v25, v53, v54, v55, v56, v57, v58, v59, v226, v253, v280, v307, v334, v361, v388, v415, v442, v469, v496, v523, v550, v577, v604, v632, v660;
  v26, v60, v61, v62, v63, v64, v65, v66, v227, v254, v281, v308, v335, v362, v389, v416, v443, v470, v497, v524, v551, v578, v605, v633, v661;
  v27, v67, v68, v69, v70, v71, v72, v73, v228, v255, v282, v309, v336, v363, v390, v417, v444, v471, v498, v525, v552, v579, v606, v634, v662;
  v28, v74, v75, v76, v77, v78, v79, v80, v229, v256, v283, v310, v337, v364, v391, v418, v445, v472, v499, v526, v553, v580, v607, v635, v663;
  v29, v81, v82, v83, v84, v85, v86, v87, v230, v257, v284, v311, v338, v365, v392, v419, v446, v473, v500, v527, v554, v581, v608, v636, v664;
  v30, v88, v89, v90, v91, v92, v93, v94, v231, v258, v285, v312, v339, v366, v393, v420, v447, v474, v501, v528, v555, v582, v609, v637, v665;
  v31, v95, v96, v97, v98, v99, v100, v101, v232, v259, v286, v313, v340, v367, v394, v421, v448, v475, v502, v529, v556, v583, v610, v638, v666;
  v233, v102, v103, v104, v105, v106, v107, v108, v233, v260, v287, v314, v341, v368, v395, v422, v449, v476, v503, v530, v557, v584, v611, v639, v667;
  v261, v109, v110, v111, v112, v113, v114, v115, v234, v261, v288, v315, v342, v369, v396, v423, v450, v477, v504, v531, v558, v585, v612, v640, v668;
  v289, v116, v117, v118, v119, v120, v121, v122, v235, v262, v289, v316, v343, v370, v397, v424, v451, v478, v505, v532, v559, v586, v613, v641, v669;
  v317, v123, v124, v125, v126, v127, v128, v129, v236, v263, v290, v317, v344, v371, v398, v425, v452, v479, v506, v533, v560, v587, v614, v642, v670;
  v345, v130, v131, v132, v133, v134, v135, v136, v237, v264, v291, v318, v345, v372, v399, v426, v453, v480, v507, v534, v561, v588, v615, v643, v671;
  v373, v137, v138, v139, v140, v141, v142, v143, v238, v265, v292, v319, v346, v373, v400, v427, v454, v481, v508, v535, v562, v589, v616, v644, v672;
  v401, v144, v145, v146, v147, v148, v149, v150, v239, v266, v293, v320, v347, v374, v401, v428, v455, v482, v509, v536, v563, v590, v617, v645, v673;
  v429, v151, v152, v153, v154, v155, v156, v157, v240, v267, v294, v321, v348, v375, v402, v429, v456, v483, v510, v537, v564, v591, v618, v646, v674;
  v457, v158, v159, v160, v161, v162, v163, v164, v241, v268, v295, v322, v349, v376, v403, v430, v457, v484, v511, v538, v565, v592, v619, v647, v675;
  v485, v165, v166, v167, v168, v169, v170, v171, v242, v269, v296, v323, v350, v377, v404, v431, v458, v485, v512, v539, v566, v593, v620, v648, v676;
  v513, v172, v173, v174, v175, v176, v177, v178, v243, v270, v297, v324, v351, v378, v405, v432, v459, v486, v513, v540, v567, v594, v621, v649, v677;
  v541, v179, v180, v181, v182, v183, v184, v185, v244, v271, v298, v325, v352, v379, v406, v433, v460, v487, v514, v541, v568, v595, v622, v650, v678;
  v569, v186, v187, v188, v189, v190, v191, v192, v245, v272, v299, v326, v353, v380, v407, v434, v461, v488, v515, v542, v569, v596, v623, v651, v679;
  v597, v193, v194, v195, v196, v197, v198, v199, v246, v273, v300, v327, v354, v381, v408, v435, v462, v489, v516, v543, v570, v597, v624, v652, v680;
  v625, v200, v201, v202, v203, v204, v205, v206, v247, v274, v301, v328, v355, v382, v409, v436, v463, v490, v517, v544, v571, v598, v625, v653, v681;
  v654, v207, v208, v209, v210, v211, v212, v213, v248, v275, v302, v329, v356, v383, v410, v437, v464, v491, v518, v545, v572, v599, v626, v654, v682;
  v683, v214, v215, v216, v217, v218, v219, v220, v249, v276, v303, v330, v357, v384, v411, v438, v465, v492, v519, v546, v573, v600, v627, v655, v683;
  sub_22BB39738();
  sub_22BB3E07C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22BD3F444()
{
  v364 = v0[82];
  v472 = v0[78];
  v499 = v0[79];
  v634 = v0[76];
  v661 = v0[75];
  v662 = v0[74];
  v663 = v0[71];
  v418 = v0[67];
  v445 = v0[77];
  v664 = v0[70];
  v665 = v0[66];
  v666 = v0[65];
  v667 = v0[64];
  v668 = v0[63];
  v669 = v0[62];
  v670 = v0[61];
  v553 = v0[60];
  v580 = v0[59];
  v671 = v0[58];
  v310 = v0[55];
  v672 = v0[54];
  v391 = v0[52];
  v526 = v0[51];
  v673 = v0[50];
  v674 = v0[49];
  v676 = v0[48];
  v677 = v0[47];
  v678 = v0[46];
  v679 = v0[45];
  v675 = v0[39];
  v680 = v0[42];
  v681 = v0[36];
  v682 = v0[33];
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v337 = v0[25];
  v6 = v0[22];
  v283 = v0[23];
  (*(v0[38] + 8))();
  sub_22BB69FEC(v6, v6[3]);
  sub_22BB2F5A0();
  sub_22BDB7994();
  (*(v2 + 104))(v1, *MEMORY[0x277D1DB50], v3);
  sub_22BDB4234();
  v7 = v4;
  sub_22BDB8324();
  v8 = v310;
  sub_22BDB96A4();
  v9 = v7;
  v607 = v7;
  v10 = v418;
  sub_22BDB8E34();
  v472(v310, v391);
  (*(v5 + 8))(v9, v337);
  (*(v2 + 8))(v1, v3);
  swift_willThrow();
  v11 = v526;
  sub_22BB58728(v526, &qword_27D8E3218, &qword_22BDBE390);
  (*(v553 + 8))(v418, v580);
  sub_22BD3F798(v634, v6);

  v661, v12, v13, v14, v15, v16, v17, v18, v203, v230, v3, v283, v310, v337, v364, v391, v418, v445, v472, v499, v526, v553, v580, v607, v634;
  v662, v19, v20, v21, v22, v23, v24, v25, v204, v231, v257, v284, v311, v338, v365, v392, v419, v446, v473, v500, v527, v554, v581, v608, v635;
  v663, v26, v27, v28, v29, v30, v31, v32, v205, v232, v258, v285, v312, v339, v366, v393, v420, v447, v474, v501, v528, v555, v582, v609, v636;
  v664, v33, v34, v35, v36, v37, v38, v39, v206, v233, v259, v286, v313, v340, v367, v394, v421, v448, v475, v502, v529, v556, v583, v610, v637;
  v10, v40, v41, v42, v43, v44, v45, v46, v207, v234, v260, v287, v314, v341, v368, v395, v422, v449, v476, v503, v530, v557, v584, v611, v638;
  v665, v47, v48, v49, v50, v51, v52, v53, v208, v235, v261, v288, v315, v342, v369, v396, v423, v450, v477, v504, v531, v558, v585, v612, v639;
  v666, v54, v55, v56, v57, v58, v59, v60, v209, v236, v262, v289, v316, v343, v370, v397, v424, v451, v478, v505, v532, v559, v586, v613, v640;
  v667, v61, v62, v63, v64, v65, v66, v67, v210, v237, v263, v290, v317, v344, v371, v398, v425, v452, v479, v506, v533, v560, v587, v614, v641;
  v668, v68, v69, v70, v71, v72, v73, v74, v211, v238, v264, v291, v318, v345, v372, v399, v426, v453, v480, v507, v534, v561, v588, v615, v642;
  v669, v75, v76, v77, v78, v79, v80, v81, v212, v239, v265, v292, v319, v346, v373, v400, v427, v454, v481, v508, v535, v562, v589, v616, v643;
  v670, v82, v83, v84, v85, v86, v87, v88, v213, v240, v266, v293, v320, v347, v374, v401, v428, v455, v482, v509, v536, v563, v590, v617, v644;
  v671, v89, v90, v91, v92, v93, v94, v95, v214, v241, v267, v294, v321, v348, v375, v402, v429, v456, v483, v510, v537, v564, v591, v618, v645;
  v8, v96, v97, v98, v99, v100, v101, v102, v215, v242, v268, v295, v322, v349, v376, v403, v430, v457, v484, v511, v538, v565, v592, v619, v646;
  v672, v103, v104, v105, v106, v107, v108, v109, v216, v243, v269, v296, v323, v350, v377, v404, v431, v458, v485, v512, v539, v566, v593, v620, v647;
  v11, v110, v111, v112, v113, v114, v115, v116, v217, v244, v270, v297, v324, v351, v378, v405, v432, v459, v486, v513, v540, v567, v594, v621, v648;
  v673, v117, v118, v119, v120, v121, v122, v123, v218, v245, v271, v298, v325, v352, v379, v406, v433, v460, v487, v514, v541, v568, v595, v622, v649;
  v674, v124, v125, v126, v127, v128, v129, v130, v219, v246, v272, v299, v326, v353, v380, v407, v434, v461, v488, v515, v542, v569, v596, v623, v650;
  v676, v131, v132, v133, v134, v135, v136, v137, v220, v247, v273, v300, v327, v354, v381, v408, v435, v462, v489, v516, v543, v570, v597, v624, v651;
  v677, v138, v139, v140, v141, v142, v143, v144, v221, v248, v274, v301, v328, v355, v382, v409, v436, v463, v490, v517, v544, v571, v598, v625, v652;
  v678, v145, v146, v147, v148, v149, v150, v151, v222, v249, v275, v302, v329, v356, v383, v410, v437, v464, v491, v518, v545, v572, v599, v626, v653;
  v679, v152, v153, v154, v155, v156, v157, v158, v223, v250, v276, v303, v330, v357, v384, v411, v438, v465, v492, v519, v546, v573, v600, v627, v654;
  v680, v159, v160, v161, v162, v163, v164, v165, v224, v251, v277, v304, v331, v358, v385, v412, v439, v466, v493, v520, v547, v574, v601, v628, v655;
  v675, v166, v167, v168, v169, v170, v171, v172, v225, v252, v278, v305, v332, v359, v386, v413, v440, v467, v494, v521, v548, v575, v602, v629, v656;
  v681, v173, v174, v175, v176, v177, v178, v179, v226, v253, v279, v306, v333, v360, v387, v414, v441, v468, v495, v522, v549, v576, v603, v630, v657;
  v682, v180, v181, v182, v183, v184, v185, v186, v227, v254, v280, v307, v334, v361, v388, v415, v442, v469, v496, v523, v550, v577, v604, v631, v658;
  v1, v187, v188, v189, v190, v191, v192, v193, v228, v255, v281, v308, v335, v362, v389, v416, v443, v470, v497, v524, v551, v578, v605, v632, v659;
  v633, v194, v195, v196, v197, v198, v199, v200, v229, v256, v282, v309, v336, v363, v390, v417, v444, v471, v498, v525, v552, v579, v606, v633, v660;
  sub_22BB2F09C();

  return v201();
}

uint64_t sub_22BD3F798(uint64_t a1, uint64_t a2)
{
  v31 = sub_22BDB7764();
  v29 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB7734();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB7754();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6114();
  sub_22BB690EC(a2, v33);
  v13 = sub_22BDB7744();
  sub_22BDB7774();
  v30 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v26 = v10;
    v27 = v9;
    v28 = v5;

    sub_22BDB77B4();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v4, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v4, v15);
      v31 = "Service: %s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22BB69FEC(v33, v33[3]);
    v21 = sub_22BDBB684();
    v23 = v22;
    sub_22BB32FA4(v33);
    v24 = sub_22BB32EE0(v21, v23, &v32);

    *(v19 + 4) = v24;
    v25 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v13, v30, v25, "PlannerService.handle(_:)", v31, v19, 0xCu);
    sub_22BB32FA4(v20);
    MEMORY[0x2318A6080](v20, -1, -1);
    MEMORY[0x2318A6080](v19, -1, -1);

    (*(v6 + 8))(v8, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    return sub_22BB32FA4(v33);
  }
}

uint64_t sub_22BD3FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = sub_22BBE6DE0(&qword_27D8E6328, &qword_22BDCDD18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18[-v9];
  v11 = sub_22BBE6DE0(&qword_27D8E6330, &qword_22BDCDD20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18[-v12];
  v14 = sub_22BDB7494();
  v20 = a2;
  sub_22BDB76D4();
  sub_22BB336D0(v13, 0, 1, v14);
  sub_22BDB74A4();
  v15 = sub_22BDB7454();
  v19 = a3;
  sub_22BDB76D4();
  sub_22BB336D0(v10, 0, 1, v15);
  sub_22BDB7464();
  sub_22BDB7604();
  v16 = sub_22BDB7614();
  sub_22BB336D0(v7, 0, 1, v16);
  return sub_22BDB7484();
}

uint64_t sub_22BD3FDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v5 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  sub_22BDB7664();
  v13 = sub_22BDB43E4();
  sub_22BB2F330();
  (*(v14 + 16))(v8, a2, v13);
  sub_22BB336D0(v8, 0, 1, v13);
  sub_22BDB7654();
  v15 = sub_22BDB7674();
  sub_22BB336D0(v12, 0, 1, v15);
  return a3(v12);
}

unint64_t sub_22BD3FF0C()
{
  v0 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBC0AFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x4D72656E6E616C50;
    }

    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x6269726373657250;
  }

  sub_22BBC0BB8(v2, type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction);
  return v4;
}

unint64_t sub_22BD40038()
{
  v0 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBC0AFC();
  v6 = 0x536E6F6973736553;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = 0xD000000000000010;
      v8 = type metadata accessor for StandardPlanner.StandardPlannerAction;
      v9 = v5;
      goto LABEL_5;
    case 2u:
      return v6;
    case 3u:
      v6 = 0xD000000000000010;
      break;
    case 4u:
      v6 = 0x6365447972657551;
      break;
    case 5u:
      v6 = 0x6F7365526E616C50;
      break;
    case 6u:
      v6 = 0xD000000000000012;
      break;
    case 7u:
      v6 = 1886352467;
      break;
    default:
      sub_22BBBE2AC();
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_22BDBB334();

      strcpy(v11, "PlanGeneration");
      HIBYTE(v11[1]) = -18;
      v7 = sub_22BD3FF0C();
      MEMORY[0x2318A4C40](v7);

      v6 = v11[0];
      v8 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction;
      v9 = v2;
LABEL_5:
      sub_22BBC0BB8(v9, v8);
      break;
  }

  return v6;
}

void sub_22BD402CC()
{
  sub_22BB30F94();
  v55 = v3;
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = sub_22BDB9B14();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  v20 = sub_22BB2F0C8(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v25);
  sub_22BB92338();
  MEMORY[0x28223BE20](v26);
  v54 = &v53 - v27;
  sub_22BC5E5C4();
  v28 = sub_22BDB9B54();
  v29 = sub_22BB3A190();
  sub_22BB31814(v29, v30, v28);
  if (v31)
  {
    sub_22BB58728(v7, &unk_27D8E69E0, &qword_22BDC1660);
    type metadata accessor for StandardPlanner.StandardPlannerAction(0);
    sub_22BB30B28();
    sub_22BB336D0(v32, v33, v34, v35);
  }

  else
  {
    sub_22BDB9B24();
    sub_22BB30474();
    (*(v36 + 8))(v7, v28);
    (*(v10 + 32))(v18, v0, v8);
    v37 = sub_22BB34FB8();
    v38(v37);
    sub_22BB72FA8(v14, v2);
    (*(v10 + 8))(v18, v8);
  }

  v39 = v54;
  sub_22BC8D26C();
  sub_22BC5E5C4();
  type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  sub_22BB36B74(v1);
  if (v31)
  {
    sub_22BB58728(v1, &qword_27D8E6320, &qword_22BDCDD00);
  }

  else
  {
    sub_22BD40038();
    sub_22BB32434();
    sub_22BBC0BB8(v1, v40);
  }

  sub_22BC5E5C4();
  sub_22BB36B74(v23);
  if (v31)
  {
    sub_22BB58728(v23, &qword_27D8E6320, &qword_22BDCDD00);
  }

  else
  {
    sub_22BB37074();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BDB97A4();
      sub_22BB30444();
      v42 = sub_22BB37074();
      if (v43(v42) == *MEMORY[0x277D1E640])
      {
      }

      v44 = sub_22BB37074();
      v45(v44);
    }

    else
    {
      sub_22BB32434();
      sub_22BBC0BB8(v23, v46);
    }
  }

  v47 = v55;
  v48 = [v55 domain];
  v49 = sub_22BDBABF4();
  v51 = v50;

  v57 = v49;
  v58 = v51;
  MEMORY[0x2318A4C40](46, 0xE100000000000000);
  v56 = [v47 code];
  v52 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v52);

  sub_22BDB7CE4();

  sub_22BB58728(v39, &qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB314EC();
}

void sub_22BD40800()
{
  sub_22BB30F94();
  v98 = v1;
  v94 = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v97 = &v90 - v6;
  v115 = sub_22BDB43E4();
  sub_22BB30444();
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v9);
  v93 = &v90 - v10;
  v11 = &unk_27D8E69E0;
  v12 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v13 = sub_22BB30434(v12);
  v109 = v14;
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v108 = (v15 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v105 = &v90 - v19;
  MEMORY[0x28223BE20](v18);
  v107 = &v90 - v20;
  v21 = sub_22BDB9B54();
  sub_22BB30444();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v25);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v26);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  v106 = sub_22BBE6DE0(&qword_27D8E6300, &qword_22BDCDCE8);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  v114 = &v90 - v32;
  v120 = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E6308, &unk_22BDCDCF0);
  sub_22BD421B4();
  sub_22BDBB0C4();

  v33 = 0;
  v34 = v122;
  v35 = v123;
  v36 = *(v122 + 16);
  v110 = (v23 + 32);
  v111 = v36;
  v113 = v23;
  v117 = v23 + 8;
  v118 = v23 + 16;
  v37 = MEMORY[0x277D84F90];
  v112 = v2;
  v99 = v30;
  v104 = v122;
  v103 = v123;
  v100 = v0;
LABEL_2:
  v116 = v37;
  while (1)
  {
    if (v111 == v33)
    {

      goto LABEL_29;
    }

    if (v33 >= *(v34 + 16))
    {
      goto LABEL_42;
    }

    v38 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v102 = *(v113 + 72);
    v2 = *(v113 + 16);
    v2(v30, v34 + v38 + v102 * v33, v21);
    v39 = *(v35 + 16);
    if (v33 == v39)
    {
      break;
    }

    if (v33 >= v39)
    {
      goto LABEL_43;
    }

    v101 = v38;
    sub_22BB2F390();
    v40 = *v110;
    (*v110)(v114, v30, v21);
    sub_22BC5E5C4();
    v41 = v108;
    sub_22BC5E5C4();
    v42 = sub_22BB3A190();
    sub_22BB31814(v42, v43, v21);
    if (v44)
    {
      v45 = sub_22BB3CB04();
      sub_22BB58728(v45, v46, &qword_22BDC1660);
    }

    else
    {
      v47 = v100;
      v40(v100, v41, v21);
      v48 = sub_22BDB99C4();
      v50 = v49;
      v51 = sub_22BDB99C4();
      v53 = v52;
      if (v50)
      {
        sub_22BB8ACB4();
        v55 = v47;
      }

      else
      {
        v120 = v48;
        v121 = 0;
        if (v52)
        {
          sub_22BB8ACB4();
          v56(v100, v21);
          v11 = &unk_27D8E69E0;
          v30 = v99;
          goto LABEL_17;
        }

        v119 = v51;
        sub_22BB96A28();
        v53 = sub_22BDBABD4();
        sub_22BB8ACB4();
        v55 = v100;
      }

      v54(v55, v21);
      v11 = &unk_27D8E69E0;
      v30 = v99;
      if (v53)
      {
        v57 = 1;
        v2 = v112;
        v58 = v105;
        v59 = v114;
        goto LABEL_18;
      }
    }

LABEL_17:
    v58 = v105;
    v59 = v114;
    v2(v105, v114, v21);
    v57 = 0;
    v2 = v112;
LABEL_18:
    sub_22BB336D0(v58, v57, 1, v21);
    v60 = v107;
    sub_22BC8D26C();
    sub_22BB58728(v59, &qword_27D8E6300, &qword_22BDCDCE8);
    v61 = sub_22BB3A190();
    sub_22BB31814(v61, v62, v21);
    if (!v44)
    {
      v65 = v91;
      v40(v91, v60, v21);
      v40(v92, v65, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        v67 = v116;
      }

      else
      {
        sub_22BB3267C();
        sub_22BD8F6E4();
        v67 = v71;
      }

      v68 = v101;
      v69 = *(v67 + 16);
      if (v69 >= *(v67 + 24) >> 1)
      {
        sub_22BD8F6E4();
        v67 = v72;
      }

      ++v33;
      *(v67 + 16) = v69 + 1;
      v70 = v67;
      v40(v67 + v68 + v69 * v102, v92, v21);
      v37 = v70;
      v34 = v104;
      v35 = v103;
      goto LABEL_2;
    }

    v63 = sub_22BB3CB04();
    sub_22BB58728(v63, v64, &qword_22BDC1660);
    ++v33;
    v34 = v104;
    v35 = v103;
  }

  sub_22BB8ACB4();
  v73(v30, v21);
  v2 = v112;
LABEL_29:
  v74 = 0;
  v33 = 0;
  v75 = *(v116 + 16);
  v111 = (v96 + 32);
  v114 = MEMORY[0x277D84F90];
  sub_22BB6C700();
  v77 = v113;
  while (1)
  {
    if (v75 == v74)
    {

      sub_22BBD22B0(v114, MEMORY[0x277CC95F0]);

      sub_22BB314EC();
      return;
    }

    if (v74 >= *(v76 + 16))
    {
      break;
    }

    sub_22BB2F390();
    (*(v77 + 16))(v2, v78 + v79 + *(v77 + 72) * v74, v21);
    sub_22BD411B8(v34, v11);
    sub_22BB8ACB4();
    v80(v2, v21);
    sub_22BB31814(v11, 1, v115);
    if (v44)
    {
      sub_22BB58728(v11, &qword_27D8E3218, &qword_22BDBE390);
      ++v74;
      v76 = v116;
    }

    else
    {
      v81 = *v111;
      v82 = v93;
      v83 = v115;
      (*v111)(v93, v11, v115);
      v110 = v81;
      v81(v95, v82, v83);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      if ((v84 & 1) == 0)
      {
        sub_22BB3267C();
        sub_22BD91308();
        v114 = v87;
      }

      v34 = *(v114 + 16);
      v11 = (v34 + 1);
      v2 = v112;
      if (v34 >= *(v114 + 24) >> 1)
      {
        sub_22BD91308();
        v114 = v88;
      }

      ++v74;
      v86 = v114;
      v85 = v115;
      *(v114 + 16) = v11;
      (v110)(v86 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v34, v95, v85);
      sub_22BB6C700();
      v76 = v116;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);

  sub_22BB8ACB4();
  v89(v2, v21);

  __break(1u);
}

uint64_t sub_22BD411B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - v5;
  v6 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - v7;
  v36 = sub_22BDB43E4();
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB9B14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB9254();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  (*(v14 + 104))(&v31 - v18, *MEMORY[0x277D1E308], v13);
  sub_22BDB9B24();
  sub_22BDB9AC4();
  (*(v10 + 8))(v12, v9);
  v20 = sub_22BC56078(v19, v17);
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (v20)
  {
    sub_22BDB8F24();

    v22 = v38;
    sub_22BDB4394();
    return sub_22BB336D0(v22, 0, 1, v36);
  }

  sub_22BDB9B24();
  v24 = v33;
  sub_22BB72FA8(v12, v33);
  v25 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  v26 = sub_22BB3AA28(v24, 1, v25);
  v27 = v36;
  if (v26 == 1)
  {
    goto LABEL_9;
  }

  v28 = v32;
  sub_22BC5E5C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_22BBC0BB8(v28, type metadata accessor for StandardPlanner.StandardPlannerAction);
      goto LABEL_7;
    }

    sub_22BBC0BB8(v28, type metadata accessor for StandardPlanner.StandardPlannerAction);
LABEL_9:
    sub_22BB336D0(v34, 1, 1, v27);
    sub_22BB58728(v24, &qword_27D8E6320, &qword_22BDCDD00);
    return sub_22BC8D26C();
  }

LABEL_7:
  sub_22BB58728(v24, &qword_27D8E6320, &qword_22BDCDD00);
  sub_22BDB8F24();

  v30 = v34;
  sub_22BDB4394();
  sub_22BB336D0(v30, 0, 1, v27);
  return sub_22BC8D26C();
}

void StandardPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)()
{
  sub_22BB30F94();
  v43 = v0;
  v2 = v1;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v1 - 8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v51 = sub_22BDB7CD4();
  sub_22BB30444();
  v54 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v52 = v16 - v15;
  v17 = sub_22BDB9C14();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  sub_22BDB7C04();
  (*(v19 + 16))(v23, v7, v17);
  sub_22BDB7BF4();
  v45 = sub_22BDB7874();
  sub_22BB690EC(v5, v64);

  v48 = sub_22BDB7864();
  v46 = sub_22BDB7D14();
  sub_22BDB7BE4();
  v49 = sub_22BDB7D04();
  v24 = v5[3];
  v25 = sub_22BB69FEC(v5, v24);
  v26 = (*(v8 + 16))(v12, v43, v2);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  (*(v29 + 16))(v28 - v27, v25, v24);

  sub_22BDB7CC4();
  v30 = sub_22BDB6654();
  sub_22BB34ED4(v30);
  v31 = sub_22BDB6644();
  v44 = sub_22BDB7D34();
  sub_22BDB5644();
  sub_22BB690EC(v5, v64);
  v63[3] = v30;
  v63[4] = MEMORY[0x277D1D518];
  v63[0] = v31;

  sub_22BB2F3F0();
  v47 = sub_22BDB7D24();
  v32 = sub_22BDB7DF4();
  sub_22BB690EC(v5, v64);

  sub_22BDB7DE4();
  v53 = sub_22BDB7DD4();
  sub_22BB690EC(v50, v64);
  sub_22BB690EC(v5, v63);
  type metadata accessor for StandardPlanner();
  v33 = swift_allocObject();
  v62[3] = v45;
  v62[4] = sub_22BB8C540(&qword_281428AD0, 255, MEMORY[0x277D1D548], MEMORY[0x277D1D540]);
  v62[0] = v48;
  v61[3] = v46;
  v61[4] = sub_22BB8C540(&qword_281428AB8, 255, MEMORY[0x277D1D668], MEMORY[0x277D1D660]);
  v61[0] = v49;
  v60[3] = v51;
  v60[4] = sub_22BB8C540(&qword_281428AC0, 255, MEMORY[0x277D1D658], MEMORY[0x277D1D650]);
  v41 = sub_22BB8B8A0(v60, v34, v35, v36, v37, v38, v39, v40);
  (*(v54 + 16))(v41, v52, v51);
  v59[3] = v44;
  v59[4] = sub_22BB8C540(&qword_281428AB0, 255, MEMORY[0x277D1D678], MEMORY[0x277D1D670]);
  v59[0] = v47;
  v58[3] = v32;
  v58[4] = sub_22BB8C540(&qword_281428AA8, 255, MEMORY[0x277D1D6D0], MEMORY[0x277D1D6C8]);
  v58[0] = v53;
  v57[3] = v30;
  v57[4] = MEMORY[0x277D1D518];
  v57[0] = v31;

  swift_defaultActor_initialize();
  *(v33 + 112) = 0;
  *(v33 + 480) = 0x6C6379436E616C70;
  *(v33 + 488) = 0xEB00000000644965;
  sub_22BB690EC(v64, v33 + 120);
  sub_22BB690EC(v63, v33 + 200);
  sub_22BB690EC(v62, v33 + 240);
  sub_22BB690EC(v61, v33 + 280);
  sub_22BB690EC(v60, v33 + 320);
  sub_22BB690EC(v59, v33 + 360);
  sub_22BB690EC(v58, v33 + 400);
  sub_22BB690EC(v57, v33 + 440);
  sub_22BB6A360(v55);

  sub_22BB32FA4(v63);
  sub_22BB32FA4(v64);
  (*(v54 + 8))(v52, v51);
  sub_22BB32FA4(v57);
  sub_22BB32FA4(v58);
  sub_22BB32FA4(v59);
  sub_22BB32FA4(v60);
  sub_22BB32FA4(v61);
  sub_22BB32FA4(v62);
  v42 = v55[1];
  *(v33 + 160) = v55[0];
  *(v33 + 176) = v42;
  *(v33 + 192) = v56;
  sub_22BB314EC();
}

uint64_t sub_22BD41DBC()
{
  v0 = type metadata accessor for StandardPlannerError(0);
  v1 = sub_22BB2F0C8(v0);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v4 = v3 - v2;
  sub_22BB2F324();
  sub_22BBC0AFC();
  v5 = sub_22BDB4B94();
  v6 = sub_22BB3AA28(v4, 6, v5);
  result = 0;
  switch(v6)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    default:
      sub_22BBC0BB8(v4, type metadata accessor for StandardPlannerError);
      result = 7;
      break;
  }

  return result;
}

uint64_t sub_22BD41EB8(uint64_t a1)
{
  v2 = sub_22BB8C540(&qword_27D8E6380, 255, type metadata accessor for StandardPlannerError, &unk_22BDCDDD8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BD41F28(uint64_t a1)
{
  v2 = sub_22BB8C540(&qword_27D8E6380, 255, type metadata accessor for StandardPlannerError, &unk_22BDCDDD8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s23IntelligenceFlowRuntime15StandardPlannerC8makePlan12sessionStateSay0abE7Support7SessionO5EventVGAH0kI0V_tYaAF0E5ErrorOYKFTj()
{
  sub_22BB30F5C();
  v5 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22BD38674;
  v3 = sub_22BB3182C();

  return v5(v3);
}

_BYTE *storeEnumTagSinglePayload for StandardPlannerConfiguration(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BD421B4()
{
  result = qword_27D8E6310;
  if (!qword_27D8E6310)
  {
    sub_22BBEB2E0(&qword_27D8E6308, &unk_22BDCDCF0);
    sub_22BD42238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6310);
  }

  return result;
}

unint64_t sub_22BD42238()
{
  result = qword_27D8E6318;
  if (!qword_27D8E6318)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6318);
  }

  return result;
}

unint64_t sub_22BD42338()
{
  result = qword_27D8E6348;
  if (!qword_27D8E6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6348);
  }

  return result;
}

uint64_t sub_22BD423B4(uint64_t a1)
{
  v1 = sub_22BDB4B94();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22BD42464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BD42530()
{
}

void sub_22BD42554()
{
}

uint64_t sub_22BD42574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_22BDB7854();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a1 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v3, a1);
  if (swift_dynamicCast())
  {
    (*(v10 + 32))(v13, v16, v9);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D1D538])
    {
      (*(v10 + 96))(v13, v9);
      v20 = sub_22BDB4B94();
      (*(*(v20 - 8) + 32))(v8, v13, v20);
      sub_22BB336D0(v8, 0, 1, v20);
    }

    else
    {
      v22 = sub_22BDB4B94();
      sub_22BB336D0(v8, 1, 1, v22);
      (*(v10 + 8))(v13, v9);
    }

    sub_22BD42884(v8, a2);
  }

  else
  {
    v21 = sub_22BDB4B94();
    sub_22BB336D0(a2, 1, 1, v21);
  }

  return (*(v17 + 8))(v19, a1);
}

uint64_t sub_22BD42884(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static RecommendedAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for ConfirmResolution(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ExecuteResolution(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendedAction(0);
  sub_22BB2F330();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  v21 = sub_22BBE6DE0(&qword_27D8E6388, &qword_22BDCDE90);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v57 - v23;
  v25 = (&v57 + *(v22 + 56) - v23);
  sub_22BD42FDC(a1, &v57 - v23);
  sub_22BD42FDC(a2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BD42FDC(v24, v18);
      v41 = *(v18 + 1);
      if (sub_22BB3102C() != 1)
      {

        goto LABEL_22;
      }

      v42 = v25[1];
      sub_22BCEFA08();
      if (v43)
      {
        sub_22BCEFBF4(v41, v42);
        v45 = v44;

        if (v45)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      goto LABEL_38;
    case 2u:
      sub_22BD42FDC(v24, v15);
      if (sub_22BB3102C() != 2)
      {
        v26 = type metadata accessor for ConfirmResolution;
        v27 = v15;
        goto LABEL_20;
      }

      v28 = v25;
      v29 = v60;
      sub_22BD43120(v28, v60, type metadata accessor for ConfirmResolution);
      if (sub_22BDBA574())
      {
        v30 = *(type metadata accessor for CandidateEntity(0) + 20);
        v31 = *&v15[v30];
        v32 = *&v15[v30 + 8];
        v33 = (v29 + v30);
        v34 = v31 == *v33 && v32 == v33[1];
        if (v34 || (sub_22BDBB6D4() & 1) != 0)
        {
          sub_22BCEFBF4(*&v15[*(v59 + 20)], *(v29 + *(v59 + 20)));
          if (v35)
          {
            sub_22BB33E58();
            sub_22BD430A8(v29, v36);
            v37 = v15;
            goto LABEL_33;
          }
        }
      }

      sub_22BB33E58();
      sub_22BD430A8(v29, v46);
      v47 = v15;
      goto LABEL_36;
    case 3u:
      sub_22BD42FDC(v24, v12);
      v38 = *v12;
      if (sub_22BB3102C() == 3)
      {
        sub_22BCEFBF4(v38, *v25);
        v40 = v39;

        sub_22BB35C68();
        return v40 & 1;
      }

LABEL_22:

      goto LABEL_23;
    default:
      sub_22BD42FDC(v24, v20);
      if (sub_22BB3102C())
      {
        v26 = type metadata accessor for ExecuteResolution;
        v27 = v20;
LABEL_20:
        sub_22BD430A8(v27, v26);
LABEL_23:
        sub_22BD43040(v24);
        goto LABEL_39;
      }

      sub_22BD43120(v25, v8, type metadata accessor for ExecuteResolution);
      if ((sub_22BDBA574() & 1) == 0 || ((v48 = *(type metadata accessor for CandidateEntity(0) + 20), v49 = *&v20[v48], v50 = *&v20[v48 + 8], v51 = &v8[v48], v49 == *v51) ? (v52 = v50 == *(v51 + 1)) : (v52 = 0), !v52 && (sub_22BDBB6D4() & 1) == 0 || (sub_22BCEFBF4(*&v20[*(v58 + 20)], *&v8[*(v58 + 20)]), (v53 & 1) == 0)))
      {
        sub_22BB32CD0();
        sub_22BD430A8(v8, v55);
        v47 = v20;
LABEL_36:
        sub_22BD430A8(v47, v18);
LABEL_38:
        sub_22BB35C68();
LABEL_39:
        v40 = 0;
        return v40 & 1;
      }

      sub_22BB32CD0();
      sub_22BD430A8(v8, v54);
      v37 = v20;
LABEL_33:
      sub_22BD430A8(v37, v18);
LABEL_34:
      sub_22BB35C68();
      v40 = 1;
      return v40 & 1;
  }
}

void static DisambiguateResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_22BCEFA08();
  if (v4)
  {

    sub_22BCEFBF4(v2, v3);
  }
}

void sub_22BD42E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (sub_22BDBA574())
  {
    v6 = type metadata accessor for CandidateEntity(0);
    sub_22BB3244C(v6);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_22BDBB6D4() & 1) != 0)
    {
      v10 = *(a3(0) + 20);
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);

      sub_22BCEFBF4(v11, v12);
    }
  }
}

uint64_t static CandidateEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22BDBA574() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for CandidateEntity(0);
  sub_22BB3244C(v2);
  v5 = v5 && v3 == v4;
  if (v5)
  {
    return 1;
  }

  return sub_22BDBB6D4();
}

uint64_t sub_22BD42FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD43040(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6388, &qword_22BDCDE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD430A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BD43120(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BD43194(uint64_t a1)
{
  result = type metadata accessor for ExecuteResolution(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConfirmResolution(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD43240(uint64_t a1)
{
  result = sub_22BDBA594();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD432DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22BD4331C(uint64_t result, int a2, int a3)
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

uint64_t sub_22BD4337C()
{
  v3 = sub_22BB30CF8();
  type metadata accessor for CandidateEntity(v3);
  sub_22BB314BC();
  if (*(v5 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20)));
  }

  return sub_22BB3AA28(v0, v1, v4);
}

void sub_22BD43420()
{
  v4 = sub_22BB31C98();
  type metadata accessor for CandidateEntity(v4);
  sub_22BB314BC();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_22BB34284();

    sub_22BB336D0(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

void sub_22BD434A8(uint64_t a1)
{
  type metadata accessor for CandidateEntity(319);
  if (v1 <= 0x3F)
  {
    sub_22BC7DCBC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BD4352C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22BD4356C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BD435BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_22BDB8E14();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v5 = sub_22BDBA514();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD4372C, 0, 0);
}

uint64_t sub_22BD4372C()
{
  if (!*(*(v0 + 264) + 16))
  {
    goto LABEL_14;
  }

  v1 = sub_22BD8446C(1819242356, 0xE400000000000000);
  if ((v2 & 1) == 0)
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 264);
  sub_22BB69088(*(v3 + 56) + 40 * v1, v0 + 56);
  sub_22BB382E8((v0 + 56), v0 + 16);
  sub_22BD80E80(0x6574656D61726170, 0xE900000000000072, v3, v0 + 136);
  if (*(v0 + 160))
  {
    sub_22BB382E8((v0 + 136), v0 + 96);
    sub_22BB69088(v0 + 96, v0 + 176);
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    v4 = sub_22BDBA594();
    v5 = swift_dynamicCast();
    v6 = *(v0 + 344);
    if (v5)
    {
      sub_22BB30924(*(v0 + 344), 0);
      v7 = *(v4 - 8);
      v8 = v7;
      v9 = *(v7 + 88);
      v10 = v7 + 88;
      v11 = v9(v6, v4);
      v12 = *(v0 + 344);
      if (v11 != *MEMORY[0x277D72A58])
      {
        sub_22BB35C90();
        (*(v8 + 8))(v12, v4);
        goto LABEL_14;
      }

      v13 = v11;
      v124 = v10;
      v129 = v9;
      v14 = *(v0 + 328);
      v15 = *(v0 + 304);
      v16 = *(v0 + 312);
      v114 = *(v8 + 96);
      v119 = v8 + 96;
      v114(v12, v4);
      v17 = swift_projectBox();
      v109 = *(v16 + 16);
      v109(v14, v17, v15);
      v104 = *(v16 + 88);
      v18 = v104(v14, v15);
      if (v18 != *MEMORY[0x277D729B8])
      {
        v85 = *(v0 + 328);
        v86 = *(v0 + 304);
        v87 = *(v0 + 312);
        sub_22BB35C90();
        (*(v87 + 8))(v85, v86);
LABEL_21:

        goto LABEL_14;
      }

      v19 = v18;
      v20 = *(v0 + 312);
      v94 = *(v20 + 8);
      v99 = v20 + 8;
      v94(*(v0 + 328), *(v0 + 304));

      sub_22BB69088(v0 + 16, v0 + 216);
      v21 = swift_dynamicCast();
      v22 = *(v0 + 336);
      if (v21)
      {
        sub_22BB30924(*(v0 + 336), 0);
        v23 = v9(v22, v4);
        v24 = *(v0 + 336);
        if (v23 != v13)
        {
          sub_22BB35C90();
          (*(v8 + 8))(v24, v4);
          goto LABEL_14;
        }

        v25 = *(v0 + 320);
        v26 = *(v0 + 304);
        v114(*(v0 + 336), v4);
        v27 = swift_projectBox();
        v109(v25, v27, v26);
        v28 = v104(v25, v26);
        v29 = *(v0 + 320);
        if (v28 == v19)
        {
          v31 = *(v0 + 288);
          v30 = *(v0 + 296);
          v33 = *(v0 + 272);
          v32 = *(v0 + 280);
          v34 = *(v0 + 256);
          (*(*(v0 + 312) + 96))(*(v0 + 320), *(v0 + 304));

          MEMORY[0x2318A2DC0](v35);
          sub_22BDB8DE4();
          (*(v31 + 8))(v30, v32);
          *v34 = v33;
          v36 = type metadata accessor for RecommendedAction(0);
          swift_storeEnumTagMultiPayload();

          sub_22BB35C90();
          v37 = v34;
          v38 = 0;
          v39 = v36;
          goto LABEL_15;
        }

        v88 = *(v0 + 304);
        sub_22BB35C90();
        v94(v29, v88);
        goto LABEL_21;
      }

      sub_22BB35C90();
      sub_22BB30924(v22, 1);
      v40 = &qword_27D8E2668;
      v41 = &unk_22BDBCCD0;
      v42 = v22;
    }

    else
    {
      sub_22BB35C90();
      sub_22BB30924(v6, 1);
      v40 = &qword_27D8E2668;
      v41 = &unk_22BDBCCD0;
      v42 = v6;
    }
  }

  else
  {
    sub_22BB32FA4((v0 + 16));
    v40 = &unk_27D8E2940;
    v41 = &unk_22BDBCFC0;
    v42 = v0 + 136;
  }

  sub_22BB58780(v42, v40, v41);
LABEL_14:
  v43 = *(v0 + 256);
  v39 = type metadata accessor for RecommendedAction(0);
  v37 = v43;
  v38 = 1;
LABEL_15:
  sub_22BB336D0(v37, v38, 1, v39);
  v44 = *(v0 + 336);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 296);
  *(v0 + 344), v48, v49, v50, v51, v52, v53, v54, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169;
  v44, v55, v56, v57, v58, v59, v60, v61, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170;
  v45, v62, v63, v64, v65, v66, v67, v68, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171;
  v46, v69, v70, v71, v72, v73, v74, v75, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172;
  v47, v76, v77, v78, v79, v80, v81, v82, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173;
  v83 = *(v0 + 8);

  return v83();
}

uint64_t type metadata accessor for Resolver(uint64_t a1)
{
  result = qword_27D8E63D0;
  if (!qword_27D8E63D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD43CDC(uint64_t a1)
{
  result = sub_22BDB9C14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD43D48()
{
  sub_22BB2F0D4();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  v9 = sub_22BDB9C14();
  v1[20] = v9;
  v1[21] = *(v9 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD43E10, 0, 0);
}

uint64_t sub_22BD43FB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BBF90EC;

  return sub_22BD43D48();
}

uint64_t sub_22BD44098(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22BD286A0(0, v4, 0);
    v5 = v17;
    sub_22BDB9B54();
    sub_22BD61DE0();
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v9 + 72);
    sub_22BD62BB4();
    sub_22BB3B194(v10, v11);
    while (1)
    {
      sub_22BDB9484();
      if (v1)
      {
        break;
      }

      sub_22BC54A00();
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22BD286A0((v12 > 1), v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v2;
      *(v14 + 40) = v3;
      v8 += v16;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_22BD44210(uint64_t a1)
{
  sub_22BDB9B54();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v18 = MEMORY[0x277D84F90];
    sub_22BB6FF1C(0, v4, 0);
    v5 = v18;
    v6 = a1 + 40;
    while (1)
    {
      v7 = sub_22BB31DF8();
      sub_22BB352C4(v7, v8);
      v9 = sub_22BB31DF8();
      sub_22BB352C4(v9, v10);
      sub_22BD62BB4();
      sub_22BB3B194(&qword_27D8E65B8, v11);
      sub_22BB31DF8();
      sub_22BDB9474();
      v12 = sub_22BB31DF8();
      if (v1)
      {
        break;
      }

      sub_22BB3531C(v12, v13);
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22BB6FF1C(v14 > 1, v15 + 1, 1);
      }

      v6 += 16;
      *(v18 + 16) = v15 + 1;
      sub_22BB969F4();
      sub_22BB69260();
      v16();
      if (!--v4)
      {
        return v5;
      }
    }

    sub_22BB3531C(v12, v13);
  }

  return v5;
}

uint64_t sub_22BD443E4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a1;
  v44 = MEMORY[0x277D84F90];
  sub_22BD28680(0, v2, 0);
  v43 = v44;
  result = sub_22BDB1D48();
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v34 = v5;
  v35 = v2;
  v33 = v3 + 72;
  v36 = v3 + 64;
  v37 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_28;
    }

    v41 = v5;
    v39 = v6;
    swift_bridgeObjectRetain_n();
    v11 = sub_22BDB8454();
    v13 = v12;
    v14 = sub_22BDB95A4();
    v15 = *a2;
    v40 = v8;
    v42 = v14;
    if (*(*a2 + 16) && (sub_22BB72B1C(v11, v13), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = v43;
    v21 = *(v43 + 16);
    v20 = *(v43 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_22BD28680((v20 > 1), v21 + 1, 1);
      v19 = v43;
    }

    *(v19 + 16) = v21 + 1;
    v22 = (v19 + 32 * v21);
    v22[4] = v11;
    v22[5] = v13;
    v22[6] = v42;
    v22[7] = v18;
    v3 = v37;
    v23 = 1 << *(v37 + 32);
    if (v7 >= v23)
    {
      goto LABEL_29;
    }

    v9 = v36;
    v24 = *(v36 + 8 * v10);
    if ((v24 & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    v43 = v19;
    if (*(v37 + 36) != v41)
    {
      goto LABEL_31;
    }

    v25 = v24 & (-2 << (v7 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v26 = v35;
      v27 = v40;
    }

    else
    {
      v28 = v10 << 6;
      v29 = v10 + 1;
      v30 = (v33 + 8 * v10);
      v26 = v35;
      v27 = v40;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_22BBBFEB0(v7, v41, v39 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_23;
        }
      }

      result = sub_22BBBFEB0(v7, v41, v39 & 1);
    }

LABEL_23:
    v6 = 0;
    v8 = v27 + 1;
    v7 = v23;
    v5 = v34;
    if (v8 == v26)
    {
      return v43;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}