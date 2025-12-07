void sub_21C891D48(_BYTE *a1, _BYTE *a2, unint64_t a3, _BYTE *a4)
{
  v171 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v7 - 8);
  v156 = &v152[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v152[-v10];
  MEMORY[0x28223BE20](v12);
  v155 = &v152[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v152[-v15];
  MEMORY[0x28223BE20](v17);
  v162 = &v152[-v18];
  MEMORY[0x28223BE20](v19);
  v163 = &v152[-v20];
  MEMORY[0x28223BE20](v21);
  v161 = &v152[-v22];
  MEMORY[0x28223BE20](v23);
  v159 = &v152[-v24];
  v174 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v174);
  v26 = &v152[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v154 = &v152[-v28];
  MEMORY[0x28223BE20](v29);
  v158 = &v152[-v30];
  MEMORY[0x28223BE20](v31);
  v157 = &v152[-v32];
  v180 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v180);
  v166 = &v152[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v165 = &v152[-v35];
  MEMORY[0x28223BE20](v36);
  v169 = &v152[-v37];
  MEMORY[0x28223BE20](v38);
  v168 = &v152[-v39];
  v40 = sub_21CB80DD4();
  v179 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v164 = &v152[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v160 = &v152[-v43];
  MEMORY[0x28223BE20](v44);
  v170 = &v152[-v45];
  MEMORY[0x28223BE20](v46);
  v167 = &v152[-v47];
  MEMORY[0x28223BE20](v48);
  v177 = &v152[-v49];
  v181 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v181);
  v175 = &v152[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51);
  v172 = &v152[-v52];
  MEMORY[0x28223BE20](v53);
  v55 = &v152[-v54];
  MEMORY[0x28223BE20](v56);
  v176 = &v152[-v57];
  v173 = *(v58 + 72);
  if (!v173)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return;
  }

  v59 = a2;
  if (a2 - a1 == 0x8000000000000000 && v173 == -1)
  {
    goto LABEL_99;
  }

  v60 = v171 - a2;
  if (v171 - a2 == 0x8000000000000000 && v173 == -1)
  {
    goto LABEL_100;
  }

  v61 = (a2 - a1) / v173;
  v184 = a1;
  v183 = a4;
  if (v61 >= v60 / v173)
  {
    v64 = v60 / v173 * v173;
    if (a4 < a2 || &a2[v64] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v59 = a2;
      v65 = v171;
    }

    else
    {
      v65 = v171;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        v59 = a2;
      }
    }

    if (v64 < 1)
    {
      v108 = &a4[v64];
      goto LABEL_95;
    }

    v161 = v26;
    v162 = v11;
    v105 = -v173;
    v173 = v179 + 32;
    v169 = (v179 + 56);
    v168 = (v179 + 48);
    v167 = (v179 + 8);
    v106 = &a4[v64];
    v107 = v160;
    v108 = &a4[v64];
    v178 = a4;
    v153 = v16;
    v177 = v105;
    while (1)
    {
      v159 = v108;
      v109 = v59 + v105;
      v179 = v59 + v105;
      v171 = v59;
      while (1)
      {
        if (v59 <= a1)
        {
          v184 = v59;
          v182 = v159;
          goto LABEL_97;
        }

        v110 = v65;
        v163 = v108;
        v111 = &v106[v105];
        v112 = v172;
        sub_21C7106A8(&v106[v105], v172, type metadata accessor for PMAccount);
        sub_21C7106A8(v109, v175, type metadata accessor for PMAccount);
        v113 = v165;
        sub_21C7106A8(&v112[*(v181 + 24)], v165, type metadata accessor for PMAccount.Storage);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v176 = v111;
        if (EnumCaseMultiPayload == 1)
        {
          v115 = v154;
          sub_21C8399BC(v113, v154, type metadata accessor for PMAccount.MockData);
          v116 = v153;
          sub_21C6EDBAC(&v115[*(v174 + 32)], v153, &unk_27CDED250, &qword_21CBA64C0);
          v117 = v168;
          v118 = *v168;
          if ((*v168)(v116, 1, v40) != 1)
          {
            sub_21C7126DC(v115, type metadata accessor for PMAccount.MockData);
            (*v173)(v107, v116, v40);
            goto LABEL_72;
          }

          sub_21CB80DA4();
          sub_21C7126DC(v115, type metadata accessor for PMAccount.MockData);
          if (v118(v116, 1, v40) == 1)
          {
            goto LABEL_72;
          }

          v119 = v116;
          goto LABEL_71;
        }

        v120 = *v113;
        v121 = [v120 lastModifiedDate];
        if (v121)
        {
          v122 = v170;
          v123 = v121;
          sub_21CB80D94();

          v124 = *v173;
          v125 = v155;
          (*v173)(v155, v122, v40);
          (*v169)(v125, 0, 1, v40);
          v124(v107, v125, v40);
          v117 = v168;
          goto LABEL_72;
        }

        v126 = v155;
        (*v169)(v155, 1, 1, v40);
        sub_21CB80D14();

        v117 = v168;
        if ((*v168)(v126, 1, v40) != 1)
        {
          v119 = v155;
LABEL_71:
          sub_21C6EA794(v119, &unk_27CDED250, &qword_21CBA64C0);
        }

LABEL_72:
        v127 = v166;
        sub_21C7106A8(v175 + *(v181 + 24), v166, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v128 = v161;
          sub_21C8399BC(v127, v161, type metadata accessor for PMAccount.MockData);
          v129 = v162;
          sub_21C6EDBAC(&v128[*(v174 + 32)], v162, &unk_27CDED250, &qword_21CBA64C0);
          v130 = *v117;
          if ((*v117)(v129, 1, v40) != 1)
          {
            sub_21C7126DC(v128, type metadata accessor for PMAccount.MockData);
            v133 = v164;
            (*v173)(v164, v129, v40);
            goto LABEL_82;
          }

          v131 = v164;
          sub_21CB80DA4();
          sub_21C7126DC(v128, type metadata accessor for PMAccount.MockData);
          v132 = v130(v129, 1, v40);
          v133 = v131;
          v107 = v160;
          if (v132 == 1)
          {
            goto LABEL_82;
          }

          v134 = &v186;
          goto LABEL_81;
        }

        v135 = *v127;
        v136 = [v135 lastModifiedDate];
        if (v136)
        {
          v137 = v170;
          v138 = v136;
          sub_21CB80D94();

          v139 = *v173;
          v140 = v156;
          (*v173)(v156, v137, v40);
          (*v169)(v140, 0, 1, v40);
          v141 = v164;
          v139(v164, v140, v40);
          v133 = v141;
          v107 = v160;
          goto LABEL_82;
        }

        v142 = v156;
        (*v169)(v156, 1, 1, v40);
        v143 = v164;
        sub_21CB80D14();

        v133 = v143;
        v144 = (*v117)(v142, 1, v40);
        v107 = v160;
        if (v144 != 1)
        {
          v134 = &v185;
LABEL_81:
          sub_21C6EA794(*(v134 - 32), &unk_27CDED250, &qword_21CBA64C0);
        }

LABEL_82:
        v65 = &v177[v110];
        v145 = sub_21CB80D34();
        v146 = v133;
        v147 = v145;
        v148 = *v167;
        (*v167)(v146, v40);
        v148(v107, v40);
        sub_21C7126DC(v175, type metadata accessor for PMAccount);
        sub_21C7126DC(v172, type metadata accessor for PMAccount);
        if (v147)
        {
          break;
        }

        v149 = v176;
        v108 = v176;
        if (v110 < v106 || v65 >= v106)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v110 != v106)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v106 = v108;
        v109 = v179;
        v105 = v177;
        v59 = v171;
        if (v149 <= v178)
        {
          goto LABEL_95;
        }
      }

      if (v110 < v171 || v65 >= v171)
      {
        v151 = v179;
        swift_arrayInitWithTakeFrontToBack();
        v59 = v151;
        v150 = v178;
        v108 = v163;
      }

      else
      {
        v150 = v178;
        v59 = v179;
        v108 = v163;
        if (v110 != v171)
        {
          swift_arrayInitWithTakeBackToFront();
          v59 = v179;
        }
      }

      v105 = v177;
      if (v106 <= v150)
      {
LABEL_95:
        v184 = v59;
        v182 = v108;
        goto LABEL_97;
      }
    }
  }

  v62 = v61 * v173;
  if (a4 < a1 || &a1[v62] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v59 = a2;
    v63 = v163;
  }

  else
  {
    v63 = v163;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
      v59 = a2;
    }
  }

  v172 = &a4[v62];
  v182 = &a4[v62];
  if (v62 >= 1 && v59 < v171)
  {
    v175 = (v179 + 32);
    v66 = (v179 + 48);
    v164 = (v179 + 8);
    v165 = (v179 + 56);
    v166 = v55;
    while (1)
    {
      v178 = a4;
      v179 = v59;
      v67 = v176;
      sub_21C7106A8(v59, v176, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v55, type metadata accessor for PMAccount);
      v68 = v168;
      sub_21C7106A8(&v67[*(v181 + 24)], v168, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v73 = *v68;
      v74 = [*v68 lastModifiedDate];
      if (v74)
      {
        v75 = v74;
        v76 = v170;
        sub_21CB80D94();

        v77 = *v175;
        v78 = v161;
        v63 = v163;
        (*v175)(v161, v76, v40);
        (*v165)(v78, 0, 1, v40);
        v77(v177, v78, v40);
        goto LABEL_29;
      }

      v79 = v161;
      (*v165)(v161, 1, 1, v40);
      sub_21CB80D14();

      if ((*v66)(v79, 1, v40) != 1)
      {
        v72 = v161;
LABEL_28:
        sub_21C6EA794(v72, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_29:
      v80 = v169;
      sub_21C7106A8(v55 + *(v181 + 24), v169, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = v158;
        sub_21C8399BC(v80, v158, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(&v81[*(v174 + 32)], v63, &unk_27CDED250, &qword_21CBA64C0);
        v82 = *v66;
        if ((*v66)(v63, 1, v40) == 1)
        {
          v83 = v167;
          sub_21CB80DA4();
          sub_21C7126DC(v81, type metadata accessor for PMAccount.MockData);
          v84 = v82(v63, 1, v40);
          v85 = v83;
          v86 = v173;
          if (v84 != 1)
          {
            v87 = v63;
LABEL_38:
            sub_21C6EA794(v87, &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          sub_21C7126DC(v81, type metadata accessor for PMAccount.MockData);
          v85 = v167;
          (*v175)(v167, v63, v40);
          v86 = v173;
        }
      }

      else
      {
        v88 = *v80;
        v89 = [*v80 lastModifiedDate];
        if (v89)
        {
          v90 = v170;
          v91 = v89;
          sub_21CB80D94();

          v92 = *v175;
          v93 = v162;
          v63 = v163;
          (*v175)(v162, v90, v40);
          (*v165)(v93, 0, 1, v40);
          v94 = v167;
          v92(v167, v93, v40);
          v85 = v94;
          v86 = v173;
        }

        else
        {
          v95 = v162;
          (*v165)(v162, 1, 1, v40);
          v96 = v167;
          sub_21CB80D14();

          v97 = v95;
          v85 = v96;
          v98 = (*v66)(v97, 1, v40);
          v86 = v173;
          if (v98 != 1)
          {
            v87 = v162;
            goto LABEL_38;
          }
        }
      }

      v99 = v177;
      v100 = sub_21CB80D34();
      v101 = v85;
      v102 = v100;
      v103 = *v164;
      (*v164)(v101, v40);
      v103(v99, v40);
      v55 = v166;
      sub_21C7126DC(v166, type metadata accessor for PMAccount);
      sub_21C7126DC(v176, type metadata accessor for PMAccount);
      if (v102)
      {
        a4 = v178;
        v104 = v179 + v86;
        if (a1 < v179 || a1 >= v104)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v179)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v59 = v104;
      }

      else
      {
        a4 = &v178[v86];
        if (a1 < v178 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v178)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v183 = a4;
        v59 = v179;
      }

      a1 += v86;
      v184 = a1;
      if (a4 >= v172 || v59 >= v171)
      {
        goto LABEL_97;
      }
    }

    v69 = v157;
    sub_21C8399BC(v68, v157, type metadata accessor for PMAccount.MockData);
    v70 = v159;
    sub_21C6EDBAC(&v69[*(v174 + 32)], v159, &unk_27CDED250, &qword_21CBA64C0);
    v71 = *v66;
    if ((*v66)(v70, 1, v40) != 1)
    {
      sub_21C7126DC(v69, type metadata accessor for PMAccount.MockData);
      (*v175)(v177, v70, v40);
      goto LABEL_29;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v69, type metadata accessor for PMAccount.MockData);
    if (v71(v70, 1, v40) == 1)
    {
      goto LABEL_29;
    }

    v72 = v70;
    goto LABEL_28;
  }

LABEL_97:
  sub_21C864564(&v184, &v183, &v182);
}

void sub_21C893180(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v135 = a3;
  v147 = a2;
  v137 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v137);
  v136 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v144);
  v8 = (v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v131 = (v122 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (v122 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (v122 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v17 - 8);
  v134 = (v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v126 = (v122 - v20);
  MEMORY[0x28223BE20](v21);
  v125 = v122 - v22;
  MEMORY[0x28223BE20](v23);
  v130 = (v122 - v24);
  MEMORY[0x28223BE20](v25);
  v127 = v122 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v122 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v122 - v31;
  MEMORY[0x28223BE20](v33);
  v133 = (v122 - v34);
  v35 = sub_21CB80DD4();
  v140 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v123 = v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v129 = (v122 - v38);
  MEMORY[0x28223BE20](v39);
  v41 = v122 - v40;
  MEMORY[0x28223BE20](v42);
  v132 = v122 - v43;
  v146 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v146);
  v141 = (v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v138 = v122 - v46;
  MEMORY[0x28223BE20](v47);
  v145 = v122 - v48;
  MEMORY[0x28223BE20](v49);
  v143 = (v122 - v50);
  v139 = *(v51 + 72);
  if (!v139)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    return;
  }

  v52 = v147 - a1;
  if (v147 - a1 == 0x8000000000000000 && v139 == -1)
  {
    goto LABEL_95;
  }

  v53 = v135 - v147;
  if (v135 - v147 == 0x8000000000000000 && v139 == -1)
  {
    goto LABEL_96;
  }

  v150 = a1;
  v149 = a4;
  v142 = v35;
  if (v52 / v139 < v53 / v139)
  {
    v54 = v52 / v139 * v139;
    v129 = v13;
    if (a4 < a1 || a1 + v54 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v138 = a4 + v54;
    v148 = a4 + v54;
    if (v54 < 1 || v147 >= v135)
    {
      goto LABEL_93;
    }

    v141 = (v140 + 48);
    v130 = (v140 + 32);
    v131 = (v140 + 56);
    v128 = (v140 + 8);
    v134 = v16;
    while (1)
    {
      v59 = v143;
      sub_21C7106A8(v147, v143, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v145, type metadata accessor for PMAccount);
      sub_21C7106A8(v59 + *(v146 + 24), v16, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = v136;
        sub_21C8399BC(v16, v136, type metadata accessor for PMAccount.MockData);
        v61 = v133;
        sub_21C6EDBAC(v60 + *(v137 + 32), v133, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v60, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v62 = *v16;
        v63 = [*v16 creationDate];
        if (v63)
        {
          v64 = v63;
          sub_21CB80D94();

          v65 = 0;
          v62 = v64;
        }

        else
        {
          v65 = 1;
        }

        v35 = v142;
        (*v131)(v32, v65, 1, v142);
        v61 = v133;
        sub_21C6F1098(v32, v133);
        v16 = v134;
      }

      v66 = *v141;
      v67 = (*v141)(v61, 1, v35);
      v68 = v61;
      if (v67 == 1)
      {
        goto LABEL_36;
      }

      v140 = a4;
      v69 = *v130;
      (*v130)(v132, v61, v35);
      v70 = v129;
      sub_21C7106A8(v145 + *(v146 + 24), v129, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = v70;
        v72 = v136;
        sub_21C8399BC(v71, v136, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v72 + *(v137 + 32), v29, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v72, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v73 = *v70;
        v74 = [*v70 creationDate];
        if (v74)
        {
          v126 = v69;
          v75 = v32;
          v76 = v29;
          v77 = v41;
          v78 = v127;
          v79 = v74;
          sub_21CB80D94();

          v80 = 0;
          v73 = v79;
          v81 = v78;
          v41 = v77;
          v29 = v76;
          v32 = v75;
          v69 = v126;
        }

        else
        {
          v80 = 1;
          v81 = v127;
        }

        v35 = v142;
        (*v131)(v81, v80, 1, v142);
        sub_21C6F1098(v81, v29);
        v16 = v134;
      }

      if (v66(v29, 1, v35) == 1)
      {
        break;
      }

      v69(v41, v29, v35);
      v84 = v132;
      v85 = sub_21CB80D34();
      v86 = *v128;
      (*v128)(v41, v35);
      v86(v84, v35);
      sub_21C7126DC(v145, type metadata accessor for PMAccount);
      v16 = v134;
      sub_21C7126DC(v143, type metadata accessor for PMAccount);
      a4 = v140;
      if ((v85 & 1) == 0)
      {
        v82 = v139;
        v87 = v140 + v139;
        if (a1 < v140 || a1 >= v87)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v140)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v149 = v87;
        a4 += v82;
        goto LABEL_43;
      }

LABEL_37:
      v82 = v139;
      v83 = v147 + v139;
      if (a1 < v147 || a1 >= v83)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v147)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v147 = v83;
LABEL_43:
      a1 += v82;
      v150 = a1;
      if (a4 >= v138 || v147 >= v135)
      {
        goto LABEL_93;
      }
    }

    (*v128)(v132, v35);
    v68 = v29;
    a4 = v140;
LABEL_36:
    sub_21C6EA794(v68, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C7126DC(v145, type metadata accessor for PMAccount);
    sub_21C7126DC(v143, type metadata accessor for PMAccount);
    goto LABEL_37;
  }

  v133 = v8;
  v55 = v53 / v139 * v139;
  v56 = v139;
  if (a4 < v147 || v147 + v55 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v57 = v134;
  }

  else
  {
    v57 = v134;
    if (a4 != v147)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v88 = a4 + v55;
  if (v55 < 1)
  {
    goto LABEL_92;
  }

  v89 = -v56;
  v132 = (v140 + 56);
  v143 = (v140 + 48);
  v128 = (v140 + 32);
  v124 = (v140 + 8);
  v90 = a4 + v55;
  v140 = a4;
  v91 = v135;
  v145 = v89;
  while (2)
  {
    while (2)
    {
      v122[0] = v88;
      v92 = v147;
      v147 += v89;
      v139 = v92;
      while (1)
      {
        if (v92 <= a1)
        {
          v150 = v92;
          v148 = v122[0];
          goto LABEL_93;
        }

        v94 = v91;
        v135 = v88;
        v95 = v90 + v89;
        v96 = v138;
        sub_21C7106A8(v95, v138, type metadata accessor for PMAccount);
        sub_21C7106A8(v147, v141, type metadata accessor for PMAccount);
        v97 = v131;
        sub_21C7106A8(v96 + *(v146 + 24), v131, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v98 = v97;
          v99 = v136;
          sub_21C8399BC(v98, v136, type metadata accessor for PMAccount.MockData);
          v100 = v130;
          sub_21C6EDBAC(v99 + *(v137 + 32), v130, &unk_27CDED250, &qword_21CBA64C0);
          sub_21C7126DC(v99, type metadata accessor for PMAccount.MockData);
          v101 = v133;
        }

        else
        {
          v102 = *v97;
          v103 = [*v97 creationDate];
          if (v103)
          {
            v104 = v103;
            v105 = v125;
            sub_21CB80D94();

            v106 = 0;
            v102 = v104;
            v101 = v133;
          }

          else
          {
            v106 = 1;
            v101 = v133;
            v105 = v125;
          }

          v107 = v106;
          v35 = v142;
          (*v132)(v105, v107, 1, v142);
          v100 = v130;
          sub_21C6F1098(v105, v130);
          v57 = v134;
        }

        v108 = *v143;
        if ((*v143)(v100, 1, v35) == 1)
        {
          goto LABEL_76;
        }

        v127 = *v128;
        (v127)(v129, v100, v35);
        sub_21C7106A8(v141 + *(v146 + 24), v101, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v109 = v101;
          v110 = v136;
          sub_21C8399BC(v109, v136, type metadata accessor for PMAccount.MockData);
          v100 = v126;
          sub_21C6EDBAC(v110 + *(v137 + 32), v126, &unk_27CDED250, &qword_21CBA64C0);
          sub_21C7126DC(v110, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v111 = *v101;
          v112 = [v111 creationDate];
          if (v112)
          {
            v113 = v112;
            sub_21CB80D94();

            v114 = 0;
            v111 = v113;
            v57 = v134;
          }

          else
          {
            v114 = 1;
          }

          v115 = v114;
          v35 = v142;
          (*v132)(v57, v115, 1, v142);
          v100 = v126;
          sub_21C6F1098(v57, v126);
        }

        if (v108(v100, 1, v35) == 1)
        {
          (*v124)(v129, v35);
LABEL_76:
          sub_21C6EA794(v100, &unk_27CDED250, &qword_21CBA64C0);
          v116 = 1;
          goto LABEL_78;
        }

        v117 = v123;
        (v127)(v123, v100, v35);
        v118 = v129;
        v119 = v35;
        v116 = sub_21CB80D34();
        v127 = v95;
        v120 = *v124;
        (*v124)(v117, v119);
        v120(v118, v119);
        v95 = v127;
LABEL_78:
        v121 = v140;
        v91 = v94 + v145;
        sub_21C7126DC(v141, type metadata accessor for PMAccount);
        sub_21C7126DC(v138, type metadata accessor for PMAccount);
        if (v116)
        {
          break;
        }

        v88 = v95;
        if (v94 < v90 || v91 >= v90)
        {
          swift_arrayInitWithTakeFrontToBack();
          v35 = v142;
          v57 = v134;
        }

        else
        {
          v35 = v142;
          v57 = v134;
          if (v94 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v90 = v95;
        v93 = v95 > v121;
        v89 = v145;
        v92 = v139;
        if (!v93)
        {
          v147 = v139;
          goto LABEL_92;
        }
      }

      if (v94 >= v139 && v91 < v139)
      {
        v35 = v142;
        v57 = v134;
        v88 = v135;
        v89 = v145;
        if (v94 != v139)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v90 <= v121)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v35 = v142;
    v57 = v134;
    v88 = v135;
    v89 = v145;
    if (v90 > v121)
    {
      continue;
    }

    break;
  }

LABEL_92:
  v150 = v147;
  v148 = v88;
LABEL_93:
  sub_21C864564(&v150, &v149, &v148);
}

void sub_21C894220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v75);
  v66 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v65 - v10);
  MEMORY[0x28223BE20](v12);
  v71 = (&v65 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  v17 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v72 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_74;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_75;
  }

  v70 = a3;
  v30 = (a2 - a1) / v28;
  v78 = a1;
  v77 = a4;
  v73 = v17;
  v74 = v28;
  if (v30 < v29 / v28)
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = v71;
    }

    else
    {
      v32 = v71;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v72 = a4 + v31;
    v76 = a4 + v31;
    if (v31 < 1 || a2 >= v70)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C7106A8(a2, v26, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v22, type metadata accessor for PMAccount);
      sub_21C7106A8(&v26[*(v17 + 24)], v16, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v16;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v37 = *v16;
      sub_21C7106A8(&v22[*(v17 + 24)], v32, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v36 = v32;
LABEL_23:
        sub_21C7126DC(v36, type metadata accessor for PMAccount.Storage);
        sub_21C7126DC(v22, type metadata accessor for PMAccount);
        sub_21C7126DC(v26, type metadata accessor for PMAccount);
LABEL_24:
        v38 = v74;
        v39 = a2 + v74;
        if (a1 < a2 || a1 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v38 = v74;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v39;
        goto LABEL_31;
      }

      v40 = a4;
      v41 = *v32;
      v42 = [v37 compare:v41 byType:1];

      a4 = v40;
      v17 = v73;

      sub_21C7126DC(v22, type metadata accessor for PMAccount);
      sub_21C7126DC(v26, type metadata accessor for PMAccount);
      v43 = v42 + 1 == 0;
      v32 = v71;
      if (v43)
      {
        goto LABEL_24;
      }

      v38 = v74;
      v44 = a4 + v74;
      if (a1 < a4 || a1 >= v44)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v38 = v74;
      }

      v77 = v44;
      a4 = v44;
LABEL_31:
      a1 += v38;
      v78 = a1;
      if (a4 >= v72 || a2 >= v70)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v33 = v29 / v28 * v28;
  v71 = v24;
  if (a4 < a2 || a2 + v33 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v28 = v74;
LABEL_44:
  v45 = a4 + v33;
  if (v33 < 1)
  {
    goto LABEL_71;
  }

  v46 = -v28;
  v47 = a4 + v33;
  v48 = v70;
  v67 = a4;
  v68 = v11;
  v74 = -v28;
  while (2)
  {
    while (2)
    {
      v65 = v45;
      v49 = a2;
      a2 += v46;
      v69 = v49;
      while (1)
      {
        if (v49 <= a1)
        {
          v78 = v49;
          v76 = v65;
          goto LABEL_72;
        }

        v51 = v48;
        v70 = v45;
        v52 = v47 + v46;
        v53 = v72;
        sub_21C7106A8(v52, v72, type metadata accessor for PMAccount);
        v54 = v71;
        sub_21C7106A8(a2, v71, type metadata accessor for PMAccount);
        v55 = v73;
        sub_21C7106A8(v53 + *(v73 + 24), v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v11;
LABEL_55:
          sub_21C7126DC(v56, type metadata accessor for PMAccount.Storage);
          v60 = 1;
          goto LABEL_57;
        }

        v57 = *v11;
        v58 = v54 + *(v55 + 24);
        v59 = v66;
        sub_21C7106A8(v58, v66, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v56 = v59;
          goto LABEL_55;
        }

        v61 = *v59;
        v62 = [v57 compare:v61 byType:1];

        v60 = v62 == -1;
LABEL_57:
        v45 = v70;
        v48 = v51 + v74;
        sub_21C7126DC(v71, type metadata accessor for PMAccount);
        sub_21C7126DC(v72, type metadata accessor for PMAccount);
        if (v60)
        {
          break;
        }

        v45 = v52;
        v63 = v67;
        if (v51 < v47 || v48 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v68;
        }

        else
        {
          v11 = v68;
          if (v51 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v52;
        v50 = v52 > v63;
        v46 = v74;
        v49 = v69;
        if (!v50)
        {
          a2 = v69;
          goto LABEL_71;
        }
      }

      v64 = v67;
      if (v51 >= v69 && v48 < v69)
      {
        v46 = v74;
        v11 = v68;
        if (v51 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v47 <= v64)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v11 = v68;
    v46 = v74;
    if (v47 > v64)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v78 = a2;
  v76 = v45;
LABEL_72:
  sub_21C864564(&v78, &v77, &v76);
}

void sub_21C894A14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v75);
  v66 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v65 - v10);
  MEMORY[0x28223BE20](v12);
  v71 = (&v65 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  v17 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v72 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_74;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_75;
  }

  v70 = a3;
  v30 = (a2 - a1) / v28;
  v78 = a1;
  v77 = a4;
  v73 = v17;
  v74 = v28;
  if (v30 < v29 / v28)
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = v71;
    }

    else
    {
      v32 = v71;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v72 = a4 + v31;
    v76 = a4 + v31;
    if (v31 < 1 || a2 >= v70)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C7106A8(a2, v26, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v22, type metadata accessor for PMAccount);
      sub_21C7106A8(&v26[*(v17 + 24)], v16, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v16;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v37 = *v16;
      sub_21C7106A8(&v22[*(v17 + 24)], v32, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v36 = v32;
LABEL_23:
        sub_21C7126DC(v36, type metadata accessor for PMAccount.Storage);
        sub_21C7126DC(v22, type metadata accessor for PMAccount);
        sub_21C7126DC(v26, type metadata accessor for PMAccount);
LABEL_24:
        v38 = v74;
        v39 = a2 + v74;
        if (a1 < a2 || a1 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v38 = v74;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v39;
        goto LABEL_31;
      }

      v40 = a4;
      v41 = *v32;
      v42 = [v37 compare_];

      a4 = v40;
      v17 = v73;

      sub_21C7126DC(v22, type metadata accessor for PMAccount);
      sub_21C7126DC(v26, type metadata accessor for PMAccount);
      v43 = v42 + 1 == 0;
      v32 = v71;
      if (v43)
      {
        goto LABEL_24;
      }

      v38 = v74;
      v44 = a4 + v74;
      if (a1 < a4 || a1 >= v44)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v38 = v74;
      }

      v77 = v44;
      a4 = v44;
LABEL_31:
      a1 += v38;
      v78 = a1;
      if (a4 >= v72 || a2 >= v70)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v33 = v29 / v28 * v28;
  v71 = v24;
  if (a4 < a2 || a2 + v33 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v28 = v74;
LABEL_44:
  v45 = a4 + v33;
  if (v33 < 1)
  {
    goto LABEL_71;
  }

  v46 = -v28;
  v47 = a4 + v33;
  v48 = v70;
  v67 = a4;
  v68 = v11;
  v74 = -v28;
  while (2)
  {
    while (2)
    {
      v65 = v45;
      v49 = a2;
      a2 += v46;
      v69 = v49;
      while (1)
      {
        if (v49 <= a1)
        {
          v78 = v49;
          v76 = v65;
          goto LABEL_72;
        }

        v51 = v48;
        v70 = v45;
        v52 = v47 + v46;
        v53 = v72;
        sub_21C7106A8(v52, v72, type metadata accessor for PMAccount);
        v54 = v71;
        sub_21C7106A8(a2, v71, type metadata accessor for PMAccount);
        v55 = v73;
        sub_21C7106A8(v53 + *(v73 + 24), v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v11;
LABEL_55:
          sub_21C7126DC(v56, type metadata accessor for PMAccount.Storage);
          v60 = 1;
          goto LABEL_57;
        }

        v57 = *v11;
        v58 = v54 + *(v55 + 24);
        v59 = v66;
        sub_21C7106A8(v58, v66, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v56 = v59;
          goto LABEL_55;
        }

        v61 = *v59;
        v62 = [v57 compare_];

        v60 = v62 == -1;
LABEL_57:
        v45 = v70;
        v48 = v51 + v74;
        sub_21C7126DC(v71, type metadata accessor for PMAccount);
        sub_21C7126DC(v72, type metadata accessor for PMAccount);
        if (v60)
        {
          break;
        }

        v45 = v52;
        v63 = v67;
        if (v51 < v47 || v48 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v68;
        }

        else
        {
          v11 = v68;
          if (v51 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v52;
        v50 = v52 > v63;
        v46 = v74;
        v49 = v69;
        if (!v50)
        {
          a2 = v69;
          goto LABEL_71;
        }
      }

      v64 = v67;
      if (v51 >= v69 && v48 < v69)
      {
        v46 = v74;
        v11 = v68;
        if (v51 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v47 <= v64)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v11 = v68;
    v46 = v74;
    if (v47 > v64)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v78 = a2;
  v76 = v45;
LABEL_72:
  sub_21C864564(&v78, &v77, &v76);
}

void sub_21C8951E8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v281 = a3;
  v275 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v275);
  v258 = v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v237 - v9;
  MEMORY[0x28223BE20](v11);
  v243 = v237 - v12;
  MEMORY[0x28223BE20](v13);
  v242 = v237 - v14;
  MEMORY[0x28223BE20](v15);
  v269 = v237 - v16;
  v17 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v17);
  v248 = (v237 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v259 = (v237 - v20);
  MEMORY[0x28223BE20](v21);
  v247 = (v237 - v22);
  MEMORY[0x28223BE20](v23);
  v257 = (v237 - v24);
  MEMORY[0x28223BE20](v25);
  v255 = (v237 - v26);
  MEMORY[0x28223BE20](v27);
  v262 = v237 - v28;
  MEMORY[0x28223BE20](v29);
  v253 = (v237 - v30);
  MEMORY[0x28223BE20](v31);
  v260 = (v237 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v33 - 8);
  v240 = v237 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v238 = v237 - v36;
  MEMORY[0x28223BE20](v37);
  v256 = v237 - v38;
  MEMORY[0x28223BE20](v39);
  v263 = (v237 - v40);
  MEMORY[0x28223BE20](v41);
  v239 = v237 - v42;
  MEMORY[0x28223BE20](v43);
  v241 = v237 - v44;
  MEMORY[0x28223BE20](v45);
  v246 = v237 - v46;
  MEMORY[0x28223BE20](v47);
  v261 = v237 - v48;
  MEMORY[0x28223BE20](v49);
  v245 = v237 - v50;
  MEMORY[0x28223BE20](v51);
  v250 = v237 - v52;
  MEMORY[0x28223BE20](v53);
  v252 = v237 - v54;
  MEMORY[0x28223BE20](v55);
  v266 = v237 - v56;
  MEMORY[0x28223BE20](v57);
  v244 = v237 - v58;
  MEMORY[0x28223BE20](v59);
  v249 = v237 - v60;
  MEMORY[0x28223BE20](v61);
  v251 = v237 - v62;
  MEMORY[0x28223BE20](v63);
  v267 = (v237 - v64);
  v65 = sub_21CB80DD4();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v265 = v237 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v264 = v237 - v69;
  MEMORY[0x28223BE20](v70);
  v272 = v237 - v71;
  MEMORY[0x28223BE20](v72);
  v254 = v237 - v73;
  MEMORY[0x28223BE20](v74);
  v271 = v237 - v75;
  v76 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v76);
  v274 = (v237 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78);
  v268 = (v237 - v79);
  MEMORY[0x28223BE20](v80);
  v282 = (v237 - v81);
  MEMORY[0x28223BE20](v82);
  v277 = v237 - v83;
  v85 = *(v84 + 72);
  if (!v85)
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    return;
  }

  v86 = a1;
  if (a2 - a1 == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_142;
  }

  v87 = &v281[-a2];
  if (&v281[-a2] == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_143;
  }

  v88 = (a2 - a1) / v85;
  v285 = a1;
  v284 = a4;
  v276 = v17;
  v273 = v76;
  v270 = v85;
  v279 = a1;
  if (v88 >= v87 / v85)
  {
    v90 = v87 / v85 * v85;
    if (a4 < a2 || a2 + v90 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_77:
        v280 = a2;
        v164 = a4 + v90;
        if (v90 < 1)
        {
          goto LABEL_139;
        }

        v165 = -v85;
        v282 = (v66 + 48);
        v266 = (v66 + 56);
        v267 = (v66 + 32);
        v260 = (v66 + 8);
        v166 = (a4 + v90);
        v167 = &qword_21CBA64C0;
        v278 = a4;
        v237[0] = v10;
        v272 = v165;
        while (1)
        {
          v253 = v164;
          v168 = v280;
          v280 += v165;
          v262 = v168;
          while (1)
          {
            if (v168 <= v86)
            {
              v285 = v168;
              v283 = v253;
              goto LABEL_140;
            }

            v270 = v281;
            v255 = v164;
            v271 = v166;
            v277 = &v166[v165];
            v171 = v268;
            sub_21C7106A8(&v166[v165], v268, type metadata accessor for PMAccount);
            sub_21C7106A8(v280, v274, type metadata accessor for PMAccount);
            v172 = *(v76 + 24);
            v173 = v171 + v172;
            v174 = v257;
            sub_21C7106A8(v173, v257, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v175 = v269;
              sub_21C8399BC(v174, v269, type metadata accessor for PMAccount.MockData);
              v176 = v261;
              sub_21C6EDBAC(v175 + *(v275 + 32), v261, &unk_27CDED250, v167);
              sub_21C7126DC(v175, type metadata accessor for PMAccount.MockData);
            }

            else
            {
              v177 = *v174;
              v178 = [*v174 creationDate];
              v179 = v246;
              if (v178)
              {
                v180 = v178;
                sub_21CB80D94();

                v181 = 0;
                v177 = v180;
                v167 = &qword_21CBA64C0;
                v76 = v273;
              }

              else
              {
                v181 = 1;
              }

              (*v266)(v179, v181, 1, v65);
              v182 = v179;
              v183 = v261;
              sub_21C6F1098(v182, v261);
              v176 = v183;
            }

            v184 = *v282;
            v185 = (*v282)(v176, 1, v65);
            v186 = v259;
            v187 = v263;
            if (v185 != 1)
            {
              (*v267)(v264, v176, v65);
              v194 = v256;
              goto LABEL_104;
            }

            v281 = v184;
            v188 = v247;
            sub_21C7106A8(v268 + v172, v247, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v189 = v188;
              v190 = v237[0];
              sub_21C8399BC(v189, v237[0], type metadata accessor for PMAccount.MockData);
              v191 = v241;
              sub_21C6EDBAC(v190 + *(v275 + 32), v241, &unk_27CDED250, v167);
              v184 = v281;
              if ((v281)(v191, 1, v65) == 1)
              {
                sub_21CB80DA4();
                sub_21C7126DC(v190, type metadata accessor for PMAccount.MockData);
                v192 = (v184)(v191, 1, v65);
                v187 = v263;
                if (v192 != 1)
                {
                  v193 = &v273;
LABEL_100:
                  sub_21C6EA794(*(v193 - 32), &unk_27CDED250, v167);
                }
              }

              else
              {
                sub_21C7126DC(v190, type metadata accessor for PMAccount.MockData);
                (*v267)(v264, v191, v65);
                v187 = v263;
              }
            }

            else
            {
              v195 = *v188;
              v196 = [*v188 lastModifiedDate];
              if (v196)
              {
                v197 = v254;
                v198 = v196;
                sub_21CB80D94();

                v199 = *v267;
                v200 = v239;
                v201 = v197;
                v167 = &qword_21CBA64C0;
                v76 = v273;
                (*v267)(v239, v201, v65);
                (*v266)(v200, 0, 1, v65);
                v199(v264, v200, v65);
                v187 = v263;
                v186 = v259;
                v184 = v281;
                v202 = (v281)(v261, 1, v65);
                goto LABEL_102;
              }

              v203 = v239;
              (*v266)(v239, 1, 1, v65);
              sub_21CB80D14();

              v184 = v281;
              v204 = (v281)(v203, 1, v65);
              v186 = v259;
              if (v204 != 1)
              {
                v193 = &v271;
                goto LABEL_100;
              }
            }

            v202 = (v184)(v261, 1, v65);
LABEL_102:
            v194 = v256;
            if (v202 != 1)
            {
              sub_21C6EA794(v261, &unk_27CDED250, v167);
            }

LABEL_104:
            v205 = *(v76 + 24);
            sub_21C7106A8(v274 + v205, v186, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v206 = v186;
              v207 = v269;
              sub_21C8399BC(v206, v269, type metadata accessor for PMAccount.MockData);
              sub_21C6EDBAC(v207 + *(v275 + 32), v187, &unk_27CDED250, v167);
              sub_21C7126DC(v207, type metadata accessor for PMAccount.MockData);
            }

            else
            {
              v208 = *v186;
              v209 = [v208 creationDate];
              if (v209)
              {
                v210 = v209;
                sub_21CB80D94();

                v211 = 0;
                v208 = v210;
                v76 = v273;
              }

              else
              {
                v211 = 1;
              }

              (*v266)(v194, v211, 1, v65);
              v187 = v263;
              sub_21C6F1098(v194, v263);
              v167 = &qword_21CBA64C0;
            }

            v212 = (v184)(v187, 1, v65);
            v213 = v258;
            if (v212 != 1)
            {
              (*v267)(v265, v187, v65);
              goto LABEL_125;
            }

            v214 = v274 + v205;
            v215 = v248;
            sub_21C7106A8(v214, v248, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_21C8399BC(v215, v213, type metadata accessor for PMAccount.MockData);
              v216 = v238;
              sub_21C6EDBAC(v213 + *(v275 + 32), v238, &unk_27CDED250, v167);
              if ((v184)(v216, 1, v65) == 1)
              {
                sub_21CB80DA4();
                sub_21C7126DC(v213, type metadata accessor for PMAccount.MockData);
                if ((v184)(v216, 1, v65) != 1)
                {
                  v217 = v216;
LABEL_121:
                  sub_21C6EA794(v217, &unk_27CDED250, v167);
                }
              }

              else
              {
                sub_21C7126DC(v213, type metadata accessor for PMAccount.MockData);
                (*v267)(v265, v216, v65);
              }
            }

            else
            {
              v218 = *v215;
              v219 = [*v215 lastModifiedDate];
              if (v219)
              {
                v220 = v254;
                v221 = v219;
                sub_21CB80D94();

                v222 = *v267;
                v223 = v240;
                v224 = v220;
                v167 = &qword_21CBA64C0;
                v76 = v273;
                (*v267)(v240, v224, v65);
                (*v266)(v223, 0, 1, v65);
                v222(v265, v223, v65);
                v225 = (v184)(v187, 1, v65);
                goto LABEL_123;
              }

              v226 = v240;
              (*v266)(v240, 1, 1, v65);
              sub_21CB80D14();

              if ((v184)(v226, 1, v65) != 1)
              {
                v217 = v240;
                goto LABEL_121;
              }
            }

            v225 = (v184)(v187, 1, v65);
LABEL_123:
            if (v225 != 1)
            {
              sub_21C6EA794(v187, &unk_27CDED250, v167);
            }

LABEL_125:
            v227 = v167;
            v228 = v270;
            v281 = &v272[v270];
            v229 = v264;
            v230 = v265;
            v231 = sub_21CB80D34();
            v232 = *v260;
            (*v260)(v230, v65);
            v232(v229, v65);
            sub_21C7126DC(v274, type metadata accessor for PMAccount);
            sub_21C7126DC(v268, type metadata accessor for PMAccount);
            if (v231)
            {
              break;
            }

            v233 = v277;
            v164 = v277;
            if (v228 < v271 || v281 >= v271)
            {
              v169 = v277;
              swift_arrayInitWithTakeFrontToBack();
              v164 = v169;
              v170 = v278;
              v167 = v227;
            }

            else
            {
              v234 = v228 == v271;
              v170 = v278;
              v167 = v227;
              if (!v234)
              {
                v235 = v277;
                swift_arrayInitWithTakeBackToFront();
                v164 = v235;
                v233 = v277;
              }
            }

            v166 = v164;
            v165 = v272;
            v86 = v279;
            v168 = v262;
            if (v233 <= v170)
            {
              v280 = v262;
              goto LABEL_139;
            }
          }

          if (v228 < v262 || v281 >= v262)
          {
            swift_arrayInitWithTakeFrontToBack();
            v236 = v278;
            v167 = v227;
          }

          else
          {
            v234 = v228 == v262;
            v236 = v278;
            v167 = v227;
            if (!v234)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v166 = v271;
          v165 = v272;
          v164 = v255;
          v86 = v279;
          if (v271 <= v236)
          {
LABEL_139:
            v285 = v280;
            v283 = v164;
            goto LABEL_140;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v86 = v279;
    v85 = v270;
    goto LABEL_77;
  }

  v89 = v88 * v85;
  if (a4 < a1 || a1 + v89 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v264 = (a4 + v89);
  v283 = (a4 + v89);
  if (v89 >= 1 && a2 < v281)
  {
    v265 = (v66 + 56);
    v91 = v66;
    v92 = (v66 + 48);
    v268 = (v91 + 32);
    v263 = (v91 + 8);
    v274 = v92;
    while (1)
    {
      v93 = v277;
      sub_21C7106A8(a2, v277, type metadata accessor for PMAccount);
      v278 = a4;
      sub_21C7106A8(a4, v282, type metadata accessor for PMAccount);
      v94 = *(v76 + 24);
      v95 = v93 + v94;
      v96 = v260;
      sub_21C7106A8(v95, v260, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v280 = a2;
      if (EnumCaseMultiPayload == 1)
      {
        v98 = v269;
        sub_21C8399BC(v96, v269, type metadata accessor for PMAccount.MockData);
        v99 = v267;
        sub_21C6EDBAC(v98 + *(v275 + 32), v267, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v98, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v100 = *v96;
        v101 = [*v96 creationDate];
        if (v101)
        {
          v102 = v101;
          v103 = v251;
          sub_21CB80D94();

          v104 = 0;
          v100 = v102;
        }

        else
        {
          v104 = 1;
          v103 = v251;
        }

        (*v265)(v103, v104, 1, v65);
        v105 = v103;
        v99 = v267;
        sub_21C6F1098(v105, v267);
        v17 = v276;
        v76 = v273;
      }

      v106 = *v92;
      v107 = (*v92)(v99, 1, v65);
      v108 = v262;
      if (v107 != 1)
      {
        (*v268)(v271, v99, v65);
        goto LABEL_39;
      }

      v109 = v253;
      sub_21C7106A8(v277 + v94, v253, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v114 = *v109;
      v115 = [*v109 lastModifiedDate];
      if (v115)
      {
        v116 = v254;
        v117 = v115;
        sub_21CB80D94();

        v118 = *v268;
        v119 = v244;
        (*v268)(v244, v116, v65);
        (*v265)(v119, 0, 1, v65);
        v118(v271, v119, v65);
        v108 = v262;
        v17 = v276;
        v76 = v273;
        goto LABEL_37;
      }

      v120 = v244;
      (*v265)(v244, 1, 1, v65);
      sub_21CB80D14();

      v121 = v106(v120, 1, v65);
      v17 = v276;
      v76 = v273;
      if (v121 != 1)
      {
        v113 = &v276;
LABEL_36:
        sub_21C6EA794(*(v113 - 32), &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_37:
      v122 = v267;
      if (v106(v267, 1, v65) != 1)
      {
        sub_21C6EA794(v122, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_39:
      v123 = *(v76 + 24);
      sub_21C7106A8(v282 + v123, v108, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v124 = v108;
        v125 = v269;
        sub_21C8399BC(v124, v269, type metadata accessor for PMAccount.MockData);
        v126 = v266;
        sub_21C6EDBAC(v125 + *(v275 + 32), v266, &unk_27CDED250, &qword_21CBA64C0);
        v127 = v125;
        v128 = v126;
        sub_21C7126DC(v127, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v129 = *v108;
        v130 = [*v108 creationDate];
        if (v130)
        {
          v131 = v252;
          v132 = v130;
          sub_21CB80D94();

          v133 = 0;
          v129 = v132;
        }

        else
        {
          v133 = 1;
          v131 = v252;
        }

        (*v265)(v131, v133, 1, v65);
        v128 = v266;
        sub_21C6F1098(v131, v266);
        v17 = v276;
        v76 = v273;
      }

      if (v106(v128, 1, v65) == 1)
      {
        v134 = v255;
        sub_21C7106A8(v282 + v123, v255, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v135 = v134;
          v136 = v243;
          sub_21C8399BC(v135, v243, type metadata accessor for PMAccount.MockData);
          v137 = v250;
          sub_21C6EDBAC(v136 + *(v275 + 32), v250, &unk_27CDED250, &qword_21CBA64C0);
          if (v106(v137, 1, v65) == 1)
          {
            sub_21CB80DA4();
            sub_21C7126DC(v136, type metadata accessor for PMAccount.MockData);
            v138 = v106(v137, 1, v65);
            a4 = v278;
            v128 = v266;
            if (v138 != 1)
            {
              v139 = &v282;
              goto LABEL_56;
            }
          }

          else
          {
            sub_21C7126DC(v136, type metadata accessor for PMAccount.MockData);
            (*v268)(v272, v137, v65);
            a4 = v278;
            v128 = v266;
          }
        }

        else
        {
          v142 = *v134;
          v143 = [*v134 lastModifiedDate];
          if (v143)
          {
            v144 = v254;
            v145 = v143;
            sub_21CB80D94();

            v146 = *v268;
            v147 = v245;
            (*v268)(v245, v144, v65);
            (*v265)(v147, 0, 1, v65);
            v146(v272, v147, v65);
            v128 = v266;
            a4 = v278;
            v17 = v276;
            v76 = v273;
          }

          else
          {
            v148 = v245;
            (*v265)(v245, 1, 1, v65);
            sub_21CB80D14();

            v149 = v106(v148, 1, v65);
            a4 = v278;
            v17 = v276;
            v76 = v273;
            if (v149 != 1)
            {
              v139 = &v277;
LABEL_56:
              sub_21C6EA794(*(v139 - 32), &unk_27CDED250, &qword_21CBA64C0);
            }
          }
        }

        v140 = v17;
        v141 = v65;
        if (v106(v128, 1, v65) != 1)
        {
          sub_21C6EA794(v128, &unk_27CDED250, &qword_21CBA64C0);
        }

        goto LABEL_59;
      }

      v140 = v17;
      (*v268)(v272, v128, v65);
      a4 = v278;
      v141 = v65;
LABEL_59:
      v151 = v271;
      v150 = v272;
      v152 = sub_21CB80D34();
      v153 = *v263;
      (*v263)(v150, v141);
      v154 = v151;
      v155 = v141;
      v153(v154, v141);
      sub_21C7126DC(v282, type metadata accessor for PMAccount);
      sub_21C7126DC(v277, type metadata accessor for PMAccount);
      if (v152)
      {
        v156 = v270;
        v157 = v280 + v270;
        v158 = v279;
        if (v279 < v280 || v279 >= v157)
        {
          v162 = v279;
          swift_arrayInitWithTakeFrontToBack();
          v158 = v162;
          v156 = v270;
          a2 = v157;
          v17 = v140;
          v92 = v274;
          v65 = v155;
        }

        else
        {
          v17 = v140;
          v92 = v274;
          v65 = v155;
          if (v279 == v280)
          {
            a2 = v280 + v270;
          }

          else
          {
            v159 = v279;
            swift_arrayInitWithTakeBackToFront();
            v158 = v159;
            v156 = v270;
            a2 = v157;
          }
        }
      }

      else
      {
        v156 = v270;
        v160 = a4 + v270;
        a2 = v280;
        v158 = v279;
        if (v279 < a4 || v279 >= v160)
        {
          v163 = v279;
          swift_arrayInitWithTakeFrontToBack();
          v158 = v163;
          v156 = v270;
          v17 = v140;
          v92 = v274;
          v65 = v155;
        }

        else
        {
          v17 = v140;
          v92 = v274;
          v65 = v155;
          if (v279 != a4)
          {
            v161 = v279;
            swift_arrayInitWithTakeBackToFront();
            v158 = v161;
            v156 = v270;
          }
        }

        v284 = v160;
        a4 = v160;
      }

      v279 = v158 + v156;
      v285 = v158 + v156;
      if (a4 >= v264 || a2 >= v281)
      {
        goto LABEL_140;
      }
    }

    v110 = v109;
    v111 = v242;
    sub_21C8399BC(v110, v242, type metadata accessor for PMAccount.MockData);
    v112 = v249;
    sub_21C6EDBAC(v111 + *(v275 + 32), v249, &unk_27CDED250, &qword_21CBA64C0);
    if (v106(v112, 1, v65) != 1)
    {
      sub_21C7126DC(v111, type metadata accessor for PMAccount.MockData);
      (*v268)(v271, v112, v65);
      goto LABEL_37;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v111, type metadata accessor for PMAccount.MockData);
    if (v106(v112, 1, v65) == 1)
    {
      goto LABEL_37;
    }

    v113 = &v281;
    goto LABEL_36;
  }

LABEL_140:
  sub_21C864564(&v285, &v284, &v283);
}

uint64_t sub_21C897058(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_21C89724C(__int128 *a1, uint64_t a2)
{
  sub_21CB864D4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CF15F90](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_21CB86484();

        sub_21CB854C4();
        v11 = sub_21CB864D4();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C8973A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_21C8974A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_21CB85C44();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_21C89774C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21C8978A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) = *(v0 + 24);
  return sub_21C713C74(v2);
}

void sub_21C897900()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_21C886CB8(v1);
}

uint64_t sub_21C897944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8979B0(uint64_t *a1)
{
  v3 = *(sub_21CB85C44() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21C886364(a1, v4, v5);
}

uint64_t sub_21C897A2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C8854EC(a1, v4, v5, v6);
}

uint64_t sub_21C897AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21C6EDBAC(a1, &v21 - v12, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v13[v15], &unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21C713E38(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v18 = sub_21CB85574();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEAC40, &qword_21CBA1A40);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C897E4C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_21C897E98()
{
  result = qword_27CDF76E0;
  if (!qword_27CDF76E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF76E0);
  }

  return result;
}

uint64_t sub_21C897F5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder) = *(v0 + 24);
  return sub_21C710898(v2);
}

uint64_t sub_21C897FA0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask) = *(v0 + 24);
}

uint64_t sub_21C897FE4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21C898090()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts) = *(v0 + 24);
}

uint64_t sub_21C898198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8982C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PMAppCommands(0);
  sub_21C6EDBAC(v1 + *(v10 + 40), v9, &qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82484();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21C8984C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PMAppCommands(0);
  sub_21C6EDBAC(v1 + *(v10 + 44), v9, &qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82A34();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21C8986D0(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

void sub_21C898714(uint64_t a1)
{
  type metadata accessor for PMAppCommands(0);
  swift_getKeyPath(byte_21CBABA28);

  sub_21CB81DC4();
  sub_21CACC6CC(1, 1);
}

uint64_t sub_21C8987A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF150, &qword_21CBABB60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF160, &qword_21CBABB68);
  sub_21C6EADEC(&qword_27CDEF158, &qword_27CDEF160, &qword_21CBABB68, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  type metadata accessor for PMAppCommands(0);
  sub_21CB81DB4();

  v9 = v17;
  if (v17)
  {
  }

  v10 = v9 != 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(a3, v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF138, &qword_21CBABB58);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_21C735744;
  v14[2] = v12;
  return result;
}

uint64_t sub_21C8989CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v162 = a2;
  v179 = sub_21CB81024();
  v184 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v163 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v155 = &v148 - v5;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6 - 8);
  v148 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v165);
  v151 = (&v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v150 = (&v148 - v10);
  v11 = sub_21CB82444();
  v12 = *(v11 - 8);
  v186 = v11;
  v187 = v12;
  MEMORY[0x28223BE20](v11);
  v160 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v154 = &v148 - v15;
  MEMORY[0x28223BE20](v16);
  v153 = &v148 - v17;
  MEMORY[0x28223BE20](v18);
  v170 = &v148 - v19;
  v149 = type metadata accessor for PMAccount(0);
  v20 = *(v149 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v149);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v188);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v166 = &v148 - v25;
  MEMORY[0x28223BE20](v26);
  v152 = &v148 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v148 - v29;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v161 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v159 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v158 = &v148 - v33;
  MEMORY[0x28223BE20](v34);
  v157 = &v148 - v35;
  MEMORY[0x28223BE20](v36);
  v168 = &v148 - v37;
  MEMORY[0x28223BE20](v38);
  v167 = &v148 - v39;
  MEMORY[0x28223BE20](v40);
  v182 = &v148 - v41;
  MEMORY[0x28223BE20](v42);
  v181 = &v148 - v43;
  MEMORY[0x28223BE20](v44);
  v180 = &v148 - v45;
  v46 = sub_21C7CDA0C(0);
  v48 = v47;
  sub_21C73A7B0(a1, v22, type metadata accessor for PMAccount);
  v49 = *(v20 + 80);
  v50 = (v49 + 16) & ~v49;
  v51 = v50 + v21;
  v173 = v49;
  v52 = swift_allocObject();
  v174 = v50;
  v178 = v22;
  sub_21C73A8E8(v22, v52 + v50, type metadata accessor for PMAccount);
  v176 = v51;
  v177 = 0x800000021CB91C30;
  *(v52 + v51) = 0;
  v192 = v46;
  v193 = v48;
  v189 = &v192;
  v190 = 0xD000000000000014;
  v191 = 0x800000021CB91C30;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v54 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v175 = v53;
  v172 = v54;
  sub_21CB84DA4();

  v185 = a1;
  sub_21C7CCF60(0);
  v56 = v55;
  if (v55)
  {
  }

  v57 = v56 == 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  v60 = &v30[*(v188 + 36)];
  *v60 = KeyPath;
  v60[1] = sub_21C87E800;
  v60[2] = v59;
  v61 = v170;
  sub_21CB82424();
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  v164 = xmmword_21CBA15B0;
  *(inited + 16) = xmmword_21CBA15B0;
  v63 = sub_21CB82554();
  *(inited + 32) = v63;
  v64 = sub_21CB82574();
  *(inited + 40) = v64;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v63)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  v65 = sub_21CB82594();
  v66 = v155;
  if (v65 != v64)
  {
    sub_21CB82594();
  }

  v171 = sub_21C735EA0();
  sub_21CB84324();
  v67 = *(v187 + 8);
  v187 += 8;
  v170 = v67;
  (v67)(v61, v186);
  sub_21C6EA794(v30, &qword_27CDEEBA0, &qword_21CBABC80);
  v68 = v150;
  v69 = *(v149 + 24);
  sub_21C73A7B0(v185 + v69, v150, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8A0514(v68, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v70 = *v68;
    [v70 credentialTypes];
  }

  sub_21CB81014();
  v71 = v163;
  sub_21CB81014();
  v72 = sub_21CB80FF4();
  v74 = v73;
  v75 = v184 + 8;
  v76 = *(v184 + 8);
  v77 = v71;
  v78 = v179;
  v76(v77, v179);
  v184 = v75;
  v163 = v76;
  v76(v66, v78);
  v79 = v185;
  v80 = v178;
  sub_21C73A7B0(v185, v178, type metadata accessor for PMAccount);
  v81 = v176;
  v82 = swift_allocObject();
  v83 = sub_21C73A8E8(v80, v82 + v174, type metadata accessor for PMAccount);
  *(v82 + v81) = 1;
  v192 = v72;
  v193 = v74;
  MEMORY[0x28223BE20](v83);
  *(&v148 - 4) = &v192;
  *(&v148 - 3) = 0xD000000000000014;
  *(&v148 - 2) = v177;
  v84 = v152;
  sub_21CB84DA4();

  v85 = v151;
  sub_21C73A7B0(v79 + v69, v151, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v148;
    sub_21C73A8E8(v85, v148, type metadata accessor for PMAccount.MockData);
    v87 = *(v86 + 24);

    sub_21C8A0514(v86, type metadata accessor for PMAccount.MockData);
    v88 = v153;
    if (v87)
    {

LABEL_15:
      v91 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v89 = *v85;
    v90 = [v89 password];
    v88 = v153;
    if (v90)
    {

      goto LABEL_15;
    }
  }

  v91 = 1;
LABEL_18:
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  v94 = (v84 + *(v188 + 36));
  *v94 = v92;
  v94[1] = sub_21C87E800;
  v94[2] = v93;
  sub_21CB82424();
  v95 = swift_initStackObject();
  *(v95 + 16) = v164;
  v96 = sub_21CB82564();
  *(v95 + 32) = v96;
  v97 = sub_21CB82574();
  *(v95 + 40) = v97;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v96)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v97)
  {
    sub_21CB82594();
  }

  v98 = v188;
  sub_21CB84324();
  (v170)(v88, v186);
  sub_21C6EA794(v84, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v99 = sub_21CB81004();
  v101 = v100;
  (v163)(v66, v179);
  v102 = v178;
  sub_21C73A7B0(v185, v178, type metadata accessor for PMAccount);
  v103 = v176;
  v104 = swift_allocObject();
  v105 = sub_21C73A8E8(v102, v104 + v174, type metadata accessor for PMAccount);
  *(v104 + v103) = 2;
  v192 = v99;
  v193 = v101;
  MEMORY[0x28223BE20](v105);
  *(&v148 - 4) = &v192;
  *(&v148 - 3) = 0xD000000000000014;
  *(&v148 - 2) = v177;
  v106 = v166;
  sub_21CB84DA4();

  sub_21C7CD7BC(2u);
  v108 = v107;
  v110 = swift_allocObject();
  *(v110 + 16) = (v108 & 1) == 0;
  v111 = &v106[*(v98 + 36)];
  *v111 = v109;
  v111[1] = sub_21C87E800;
  v111[2] = v110;
  v112 = v154;
  sub_21CB82424();
  v113 = swift_initStackObject();
  *(v113 + 16) = v164;
  v114 = sub_21CB82584();
  *(v113 + 32) = v114;
  v115 = sub_21CB82574();
  *(v113 + 40) = v115;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v114)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v115)
  {
    sub_21CB82594();
  }

  v116 = v166;
  sub_21CB84324();
  (v170)(v112, v186);
  sub_21C6EA794(v116, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v117 = sub_21CB81004();
  v119 = v118;
  (v163)(v66, v179);
  v120 = v178;
  sub_21C73A7B0(v185, v178, type metadata accessor for PMAccount);
  v121 = v176;
  v122 = swift_allocObject();
  v123 = sub_21C73A8E8(v120, v122 + v174, type metadata accessor for PMAccount);
  *(v122 + v121) = 3;
  v192 = v117;
  v193 = v119;
  MEMORY[0x28223BE20](v123);
  *(&v148 - 4) = &v192;
  *(&v148 - 3) = 0xD000000000000014;
  *(&v148 - 2) = v177;
  sub_21CB84DA4();

  PMAccount.userVisibleDomain.getter();
  v125 = v124;
  if (v124)
  {
  }

  v126 = v125 == 0;
  v128 = swift_allocObject();
  *(v128 + 16) = v126;
  v129 = &v183[*(v188 + 36)];
  *v129 = v127;
  v129[1] = sub_21C87E800;
  v129[2] = v128;
  v130 = v160;
  sub_21CB82424();
  v131 = swift_initStackObject();
  *(v131 + 16) = xmmword_21CBA15A0;
  v132 = sub_21CB82564();
  *(v131 + 32) = v132;
  v133 = sub_21CB82554();
  *(v131 + 40) = v133;
  v134 = sub_21CB82574();
  *(v131 + 48) = v134;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v132)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v133)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v134)
  {
    sub_21CB82594();
  }

  v135 = v167;
  v136 = v183;
  sub_21CB84324();
  (v170)(v130, v186);
  sub_21C6EA794(v136, &qword_27CDEEBA0, &qword_21CBABC80);
  v137 = v161;
  v138 = *(v161 + 16);
  v139 = v168;
  v140 = v156;
  v138(v168, v180, v156);
  v141 = v157;
  v138(v157, v181, v140);
  v142 = v158;
  v138(v158, v182, v140);
  v143 = v159;
  v138(v159, v135, v140);
  v144 = v162;
  v138(v162, v139, v140);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1D8, &qword_21CBABC90);
  v138(&v144[v145[12]], v141, v140);
  v138(&v144[v145[16]], v142, v140);
  v138(&v144[v145[20]], v143, v140);
  v146 = *(v137 + 8);
  v146(v167, v140);
  v146(v182, v140);
  v146(v181, v140);
  v146(v180, v140);
  v146(v143, v140);
  v146(v142, v140);
  v146(v141, v140);
  return (v146)(v168, v140);
}

uint64_t sub_21C899D78@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF120, &qword_21CBABB00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF130, &qword_21CBABB08);
  sub_21C6EADEC(&qword_27CDEF128, &qword_27CDEF130, &qword_21CBABB08, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  type metadata accessor for PMAppCommands(0);
  sub_21CB81DB4();

  v9 = v17;
  if (v17)
  {
  }

  v10 = v9 != 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(a3, v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF108, &qword_21CBABAF8);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_21C87E800;
  v14[2] = v12;
  return result;
}

uint64_t sub_21C899FA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v99 = a1;
  v98 = a2;
  v97 = sub_21CB82444();
  v102 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = v76 - v4;
  v5 = type metadata accessor for PMWiFiNetwork(0);
  v89 = *(v5 - 8);
  v6 = *(v89 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v76 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v101);
  v91 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v76 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = v76 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = v76 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = v76 - v25;
  sub_21CB81014();
  sub_21CB81014();
  v26 = sub_21CB80FF4();
  v28 = v27;
  v29 = *(v9 + 8);
  v29(v11, v8);
  v88 = v8;
  v86 = v9 + 8;
  v84 = v29;
  v29(v14, v8);
  sub_21C73A7B0(v99, v7, type metadata accessor for PMWiFiNetwork);
  v30 = (v89[80] + 16) & ~v89[80];
  v31 = v30 + v6;
  v81 = v89[80];
  v32 = swift_allocObject();
  v82 = v30;
  v89 = v7;
  sub_21C73A8E8(v7, v32 + v30, type metadata accessor for PMWiFiNetwork);
  v85 = v31;
  *(v32 + v31) = 0;
  v106 = v26;
  v107 = v28;
  v103 = &v106;
  v104 = 0xD000000000000014;
  v105 = 0x800000021CB91C30;
  v87 = 0x800000021CB91C30;
  v33 = v18;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v35 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v83 = v34;
  v80 = v35;
  sub_21CB84DA4();

  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = v79;
  v39 = (v33 + *(v101 + 36));
  *v39 = KeyPath;
  v39[1] = sub_21C87E800;
  v39[2] = v37;
  sub_21CB82424();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  v77 = xmmword_21CBA15B0;
  *(inited + 16) = xmmword_21CBA15B0;
  v41 = sub_21CB82554();
  *(inited + 32) = v41;
  v42 = sub_21CB82574();
  *(inited + 40) = v42;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v41)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v42)
  {
    sub_21CB82594();
  }

  v43 = sub_21C735EA0();
  v44 = v101;
  v76[1] = v43;
  sub_21CB84324();
  v45 = *(v102 + 8);
  v46 = v97;
  v102 += 8;
  v79 = v45;
  (v45)(v38, v97);
  sub_21C6EA794(v33, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  sub_21CB81014();
  v47 = sub_21CB80FF4();
  v49 = v48;
  v50 = v88;
  v51 = v84;
  v84(v11, v88);
  v51(v14, v50);
  v52 = v99;
  v53 = v89;
  sub_21C73A7B0(v99, v89, type metadata accessor for PMWiFiNetwork);
  v54 = v85;
  v55 = swift_allocObject();
  v56 = sub_21C73A8E8(v53, v55 + v82, type metadata accessor for PMWiFiNetwork);
  *(v55 + v54) = 1;
  v106 = v47;
  v107 = v49;
  MEMORY[0x28223BE20](v56);
  v76[-4] = &v106;
  v76[-3] = 0xD000000000000014;
  v76[-2] = v87;
  v57 = v91;
  sub_21CB84DA4();

  LOBYTE(v49) = *(v52 + 40) == 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v49;
  v60 = (v57 + *(v44 + 36));
  *v60 = v58;
  v60[1] = sub_21C87E800;
  v60[2] = v59;
  v61 = v96;
  sub_21CB82424();
  v62 = swift_initStackObject();
  *(v62 + 16) = v77;
  v63 = sub_21CB82564();
  *(v62 + 32) = v63;
  v64 = sub_21CB82574();
  *(v62 + 40) = v64;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v63)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v64)
  {
    sub_21CB82594();
  }

  v65 = v90;
  sub_21CB84324();
  (v79)(v61, v46);
  sub_21C6EA794(v57, &qword_27CDEEBA0, &qword_21CBABC80);
  v66 = v94;
  v67 = *(v94 + 16);
  v68 = v92;
  v69 = v100;
  v70 = v95;
  v67(v92, v100, v95);
  v71 = v93;
  v67(v93, v65, v70);
  v72 = v98;
  v67(v98, v68, v70);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1E0, &qword_21CBABC98);
  v67(&v72[*(v73 + 48)], v71, v70);
  v74 = *(v66 + 8);
  v74(v65, v70);
  v74(v69, v70);
  v74(v71, v70);
  return (v74)(v68, v70);
}

uint64_t sub_21C89AAEC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v142 = a3;
  v3 = type metadata accessor for PMAppSourceListModel.Source(0);
  v131 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v118 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v128);
  v123 = &v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v140 = (&v117 - v9);
  MEMORY[0x28223BE20](v10);
  v133 = (&v117 - v11);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF340, &qword_21CBABFD0);
  MEMORY[0x28223BE20](v137);
  v139 = &v117 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF338, &unk_21CBABFC0);
  MEMORY[0x28223BE20](v138);
  v132 = &v117 - v13;
  v143 = sub_21CB82444();
  v146 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v121 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v129 = &v117 - v16;
  MEMORY[0x28223BE20](v17);
  v122 = &v117 - v18;
  v145 = sub_21CB81024();
  v19 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v117 - v23;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v134 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v120 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v125 = &v117 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v117 - v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v127 = &v117 - v34;
  MEMORY[0x28223BE20](v35);
  v126 = &v117 - v36;
  MEMORY[0x28223BE20](v37);
  v130 = &v117 - v38;
  *&v40 = MEMORY[0x28223BE20](v39).n128_u64[0];
  v141 = &v117 - v41;
  swift_getKeyPath(byte_21CBABFD8, v40);
  swift_getKeyPath(byte_21CBAC000);
  sub_21CB81DB4();

  if (v147 == 1)
  {
    sub_21CB81014();
    sub_21CB81014();
    v42 = sub_21CB80FF4();
    v44 = v43;
    v45 = *(v19 + 1);
    v131 = v45;
    v46 = v145;
    v45(v21, v145);
    v47 = v45(v24, v46);
    v140 = &v117;
    v147 = v42;
    v148 = v44;
    MEMORY[0x28223BE20](v47);
    *(&v117 - 4) = &v147;
    *(&v117 - 3) = 0x72616D6B63656863;
    *(&v117 - 2) = 0xE90000000000006BLL;

    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB84DA4();

    v48 = v122;
    sub_21CB82424();
    sub_21CB82574();
    v49 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v50 = v141;
    v51 = v144;
    v140 = v49;
    sub_21CB84324();
    v52 = *(v146 + 8);
    v146 += 8;
    v133 = v52;
    (v52)(v48, v143);
    v134 = *(v134 + 8);
    (v134)(v30, v51);
    sub_21CB81014();
    sub_21CB81014();
    v53 = sub_21CB80FF4();
    v55 = v54;
    v56 = v21;
    v57 = v145;
    v58 = v131;
    v131(v56, v145);
    v59 = v58(v24, v57);
    v147 = v53;
    v148 = v55;
    MEMORY[0x28223BE20](v59);
    *(&v117 - 4) = &v147;
    *(&v117 - 3) = 0x6B72616D78;
    *(&v117 - 2) = 0xE500000000000000;

    v60 = v125;
    sub_21CB84DA4();

    v61 = v129;
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA15B0;
    v63 = sub_21CB82554();
    *(inited + 32) = v63;
    v64 = sub_21CB82574();
    *(inited + 40) = v64;
    sub_21CB82594();
    sub_21CB82594();
    if (sub_21CB82594() != v63)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    v65 = v50;
    if (sub_21CB82594() != v64)
    {
      sub_21CB82594();
    }

    v66 = v143;
    v67 = v144;
    v68 = v130;
    sub_21CB84324();
    (v133)(v61, v66);
    (v134)(v60, v67);
    v69 = v135;
    v70 = *(v135 + 16);
    v71 = v126;
    v72 = v136;
    v70(v126, v65, v136);
    v73 = v127;
    v74 = v68;
    v70(v127, v68, v72);
    v75 = v132;
    v70(v132, v71, v72);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF348, &qword_21CBAC048);
    v70((v75 + *(v76 + 48)), v73, v72);
    v77 = *(v69 + 8);
    v77(v73, v72);
    v77(v71, v72);
    sub_21C6EDBAC(v75, v139, &qword_27CDEF338, &unk_21CBABFC0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0, MEMORY[0x277CE14C0]);
    v147 = v67;
    v148 = v140;
    swift_getOpaqueTypeConformance2();
    v78 = v142;
    sub_21CB83494();
    sub_21C6EA794(v75, &qword_27CDEF338, &unk_21CBABFC0);
    v77(v74, v72);
    v77(v141, v72);
    v79 = 0;
    goto LABEL_25;
  }

  v130 = v21;
  v132 = v24;
  v141 = v19;
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  v117 = v32;
  if (v148 == 1)
  {
    v84 = v131;
    v85 = v133;
    v86 = v140;
    v87 = v123;
    if (v147)
    {
      v80 = *(v147 + 64);
      v81 = v147;

      j__swift_release(v81);
      swift_getKeyPath(byte_21CBAC020);
      v147 = v80;
      sub_21C6F0700(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
      sub_21CB810D4();
      v86 = v140;

      v82 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
      swift_beginAccess();
      sub_21C6EDBAC(v80 + v82, v85, &qword_27CDEAC20, &qword_21CBAD710);

      v83 = *(v84 + 7);
      goto LABEL_12;
    }
  }

  else
  {
    j__swift_release(v147);
    v84 = v131;
    v85 = v133;
    v86 = v140;
    v87 = v123;
  }

  v83 = *(v84 + 7);
  v83(v85, 1, 1, v3);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v83(v86, 0, 1, v3);
  v88 = *(v128 + 48);
  sub_21C6EDBAC(v85, v87, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v86, v87 + v88, &qword_27CDEAC20, &qword_21CBAD710);
  v89 = *(v84 + 6);
  if (v89(v87, 1, v3) == 1)
  {
    sub_21C6EA794(v86, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v85, &qword_27CDEAC20, &qword_21CBAD710);
    if (v89(v87 + v88, 1, v3) == 1)
    {
      sub_21C6EA794(v87, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_24:
      v79 = 1;
      v78 = v142;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v90 = v119;
  sub_21C6EDBAC(v87, v119, &qword_27CDEAC20, &qword_21CBAD710);
  if (v89(v87 + v88, 1, v3) == 1)
  {
    sub_21C6EA794(v140, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v133, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C8A0514(v90, type metadata accessor for PMAppSourceListModel.Source);
LABEL_17:
    sub_21C6EA794(v87, &unk_27CDED310, &unk_21CBA0150);
    v91 = v145;
    v92 = v141;
    goto LABEL_18;
  }

  v113 = v118;
  sub_21C73A8E8(v87 + v88, v118, type metadata accessor for PMAppSourceListModel.Source);
  v114 = sub_21C918FE4(v90, v113);
  sub_21C8A0514(v113, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C6EA794(v140, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v133, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C8A0514(v90, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C6EA794(v87, &qword_27CDEAC20, &qword_21CBAD710);
  v91 = v145;
  v92 = v141;
  if (v114)
  {
    goto LABEL_24;
  }

LABEL_18:
  v93 = v132;
  sub_21CB81014();
  v94 = v130;
  sub_21CB81014();
  v95 = sub_21CB80FF4();
  v97 = v96;
  v98 = *(v92 + 1);
  v98(v94, v91);
  v99 = (v98)(v93, v91);
  v149 = v95;
  v150 = v97;
  MEMORY[0x28223BE20](v99);
  *(&v117 - 4) = &v149;
  *(&v117 - 3) = 0x6C69636E6570;
  *(&v117 - 2) = 0xE600000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v100 = v120;
  sub_21CB84DA4();

  v101 = v121;
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_21CBA15B0;
  v103 = sub_21CB82554();
  *(v102 + 32) = v103;
  v104 = sub_21CB82574();
  *(v102 + 40) = v104;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v103)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  v105 = sub_21CB82594();
  v106 = v144;
  if (v105 != v104)
  {
    sub_21CB82594();
  }

  v107 = v143;
  v108 = v134;
  v109 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  v110 = v117;
  sub_21CB84324();
  (*(v146 + 8))(v101, v107);
  (*(v108 + 8))(v100, v106);
  v111 = v135;
  v112 = v136;
  (*(v135 + 16))(v139, v110, v136);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0, MEMORY[0x277CE14C0]);
  v149 = v106;
  v150 = v109;
  swift_getOpaqueTypeConformance2();
  v78 = v142;
  sub_21CB83494();
  (*(v111 + 8))(v110, v112);
  v79 = 0;
LABEL_25:
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF328, &qword_21CBABFB8);
  return (*(*(v115 - 8) + 56))(v78, v79, 1, v115);
}

uint64_t sub_21C89C03C(uint64_t a1)
{
  swift_getKeyPath(byte_21CBABFD8);
  swift_getKeyPath(byte_21CBAC000);
  sub_21CB81DB4();

  if (v2 == 1)
  {
    return sub_21CA4A664();
  }

  return result;
}

uint64_t sub_21C89C0C0@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a1;
  v58 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF350, &qword_21CBAC050);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - v6;
  v7 = sub_21CB82444();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for PMAppCommands(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF300, &qword_21CBABFA8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF358, &qword_21CBAC058);
  v55 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  sub_21C73A7B0(a2, v15, type metadata accessor for PMAppCommands);
  v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v49)
  {
    v28 = swift_allocObject();
    v29 = sub_21C73A8E8(v15, v28 + v26, type metadata accessor for PMAppCommands);
    *(v28 + v27) = a3;
    MEMORY[0x28223BE20](v29);
    *(&v48 - 2) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    sub_21CB84DA4();
    v30 = v48;
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA15B0;
    v32 = sub_21CB82554();
    *(inited + 32) = v32;
    v33 = sub_21CB82574();
    *(inited + 40) = v33;
    sub_21CB82594();
    sub_21CB82594();
    if (sub_21CB82594() != v32)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    if (sub_21CB82594() != v33)
    {
      sub_21CB82594();
    }

    v34 = sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8, MEMORY[0x277CDF028]);
    v35 = v52;
    sub_21CB84324();
    (*(v53 + 8))(v30, v54);
    (*(v51 + 8))(v17, v35);
    v36 = v55;
    v37 = v50;
    (*(v55 + 16))(v57, v22, v50);
    swift_storeEnumTagMultiPayload();
    v59 = v35;
    v60 = v34;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    v25 = v22;
  }

  else
  {
    v38 = swift_allocObject();
    v39 = sub_21C73A8E8(v15, v38 + v26, type metadata accessor for PMAppCommands);
    *(v38 + v27) = a3;
    MEMORY[0x28223BE20](v39);
    *(&v48 - 2) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    sub_21CB84DA4();
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_21CBA15B0;
    v41 = sub_21CB82554();
    *(v40 + 32) = v41;
    v42 = sub_21CB82574();
    *(v40 + 40) = v42;
    sub_21CB82594();
    sub_21CB82594();
    v43 = v11;
    if (sub_21CB82594() != v41)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    v44 = sub_21CB82594();
    v37 = v50;
    if (v44 != v42)
    {
      sub_21CB82594();
    }

    v36 = v55;
    v45 = sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8, MEMORY[0x277CDF028]);
    v46 = v52;
    sub_21CB84324();
    (*(v53 + 8))(v43, v54);
    (*(v51 + 8))(v20, v46);
    (*(v36 + 16))(v57, v25, v37);
    swift_storeEnumTagMultiPayload();
    v59 = v46;
    v60 = v45;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
  }

  return (*(v36 + 8))(v25, v37);
}

uint64_t sub_21C89C940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppCommands(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C73A7B0(a1, v7, type metadata accessor for PMAppCommands);
  sub_21CB858B4();

  v12 = sub_21CB858A4();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_21C73A8E8(v7, v15 + v13, type metadata accessor for PMAppCommands);
  *(v15 + v14) = a2;
  sub_21C98B608(0, 0, v10, &unk_21CBAC080, v15);
}

uint64_t sub_21C89CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  sub_21CB858B4();
  v5[7] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21C89CBE0, v7, v6);
}

uint64_t sub_21C89CBE0()
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  sub_21CB821D4();
  v1 = *(v0 + 16);
  *(v0 + 80) = v1;
  if (*(v0 + 24) == 1)
  {
    if (v1)
    {
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_21C89CD18;
      v3 = *(v0 + 48);

      return sub_21C900FEC(v3);
    }
  }

  else
  {

    j__swift_release(v1);
  }

  **(v0 + 32) = 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21C89CD18()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  j__swift_release(v2);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21C89CE60, v4, v3);
}

uint64_t sub_21C89CE60()
{

  **(v0 + 32) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C89CEC8@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = (v6 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v5);
  v18[2] = v14;
  v18[3] = v16;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v10 + 16))(v4, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB83494();
  return (*(v10 + 8))(v12, v9);
}

void *sub_21C89D224(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  result = sub_21CB821D4();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    sub_21C901704(a2);
    v4 = v5;
  }

  else
  {
    v4 = v5;
  }

  return j__swift_release(v4);
}

uint64_t sub_21C89D2B8@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = (v6 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v5);
  v18[2] = v14;
  v18[3] = v16;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v10 + 16))(v4, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB83494();
  return (*(v10 + 8))(v12, v9);
}

void *sub_21C89D5FC(uint64_t a1, void (*a2)(void *))
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  result = sub_21CB821D4();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    a2(result);
    v4 = v5;
  }

  else
  {
    v4 = v5;
  }

  return j__swift_release(v4);
}

uint64_t sub_21C89D690(void *a1)
{
  v1 = sub_21CB82A34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8984C8(v4);
  sub_21CB82A24();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21C89D760()
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v1;
  if (v2 == 1)
  {
    if (!v1)
    {
      return result;
    }

    sub_21C9175A4(0);
    result = v1;
  }

  return j__swift_release(result);
}

uint64_t sub_21C89D7EC()
{
  type metadata accessor for PMAppCommands(0);
  swift_getKeyPath(byte_21CBABEF8);
  sub_21CB81DB4();

  v0 = *(v4 + 16);

  if (v0)
  {
    swift_getKeyPath(byte_21CBABA28);
    sub_21CB81DB4();

    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_21C89D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF260, &qword_21CBABDD8);
  v3 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v6;
  v7 = type metadata accessor for PMAppCommands(0);
  v8 = v7 - 8;
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = v9;
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v15 = *(v14 - 8);
  v57 = v14;
  v58 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF268, &unk_21CBABDE0);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v53 - v22;
  v24 = a1;
  v25 = *(a1 + *(v8 + 68) + 8);
  swift_getKeyPath(byte_21CBABD90, v21);
  swift_getKeyPath(byte_21CBABDB8);
  v56 = v25;
  sub_21CB81DB4();

  v26 = *(v67[0] + 16);

  if (v26)
  {
    sub_21CB81014();
    v27 = sub_21CB81004();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v30 = v66;
    sub_21C73A7B0(v24, v66, type metadata accessor for PMAppCommands);
    v31 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v32 = swift_allocObject();
    v33 = sub_21C73A8E8(v30, v32 + v31, type metadata accessor for PMAppCommands);
    v54 = v3;
    v67[0] = v27;
    v67[1] = v29;
    MEMORY[0x28223BE20](v33);
    *(&v53 - 4) = v67;
    *(&v53 - 3) = 2036429428;
    v52 = 0xE400000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB84DA4();

    v3 = v54;
    LOBYTE(v29) = sub_21C73BDF0();
    v35 = swift_allocObject();
    *(v35 + 16) = v29 & 1;
    v36 = v57;
    v37 = &v17[*(v57 + 36)];
    *v37 = KeyPath;
    v37[1] = sub_21C87E800;
    v37[2] = v35;
    sub_21C716934(v17, v23, &qword_27CDEEBA0, &qword_21CBABC80);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v36 = v57;
  }

  (*(v58 + 56))(v23, v38, 1, v36);
  v55 = v23;
  sub_21CB81DB4();

  v39 = v66;
  sub_21C73A7B0(v24, v66, type metadata accessor for PMAppCommands);
  v40 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v41 = swift_allocObject();
  sub_21C73A8E8(v39, v41 + v40, type metadata accessor for PMAppCommands);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380, MEMORY[0x277D83980]);
  sub_21C735EA0();
  v52 = sub_21C6F0700(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  v42 = v61;
  sub_21CB84FF4();
  v43 = v60;
  sub_21C6EDBAC(v23, v60, &qword_27CDEF268, &unk_21CBABDE0);
  v44 = v3;
  v45 = *(v3 + 16);
  v46 = v62;
  v47 = v59;
  v45(v62, v42, v59);
  v48 = v63;
  sub_21C6EDBAC(v43, v63, &qword_27CDEF268, &unk_21CBABDE0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF270, &unk_21CBABDF0);
  v45((v48 + *(v49 + 48)), v46, v47);
  v50 = *(v44 + 8);
  v50(v42, v47);
  sub_21C6EA794(v55, &qword_27CDEF268, &unk_21CBABDE0);
  v50(v46, v47);
  return sub_21C6EA794(v43, &qword_27CDEF268, &unk_21CBABDE0);
}

uint64_t sub_21C89E0F4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v8;
  if (v9 == 1)
  {
    if (!v8)
    {
      return result;
    }

    v6 = v8;
    v7 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_21C742C88(v4);
    result = v6;
  }

  return j__swift_release(result);
}

uint64_t sub_21C89E234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for PMSharingGroup(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAppCommands(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (a1 + *(v6 + 28));
  v14 = *v13;
  v15 = v13[1];
  sub_21C73A7B0(a2, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  sub_21C73A7B0(a1, v9, type metadata accessor for PMSharingGroup);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21C73A8E8(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PMAppCommands);
  sub_21C73A8E8(v9, v18 + v17, type metadata accessor for PMSharingGroup);
  v29[0] = v14;
  v29[1] = v15;
  v26 = v29;
  v27 = 0x322E6E6F73726570;
  v28 = 0xE800000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v19 = v25;
  sub_21CB84DA4();

  LOBYTE(a2) = sub_21C73BDF0();
  v21 = swift_allocObject();
  *(v21 + 16) = a2 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v23 = (v19 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C87E800;
  v23[2] = v21;
  return result;
}

uint64_t sub_21C89E558(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v10;
  if (v11 == 1)
  {
    if (!v10)
    {
      return result;
    }

    v7 = v10;
    v8 = sub_21CB85C44();
    (*(*(v8 - 8) + 16))(v5, a2, v8);
    v9 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_21C742C88(v5);
    result = v7;
  }

  return j__swift_release(result);
}

uint64_t sub_21C89E6CC()
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v2;
  if (v3 == 1)
  {
    if (!v2)
    {
      return result;
    }

    if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet))
    {
      *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 1;
    }

    else
    {
      MEMORY[0x28223BE20](KeyPath);
      sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();
    }
  }

  return j__swift_release(v2);
}

uint64_t sub_21C89E850()
{
  v0 = sub_21CB82484();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21CB80BE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80BD4();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21C6EA794(v6, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_21C8982C0(v3);
  sub_21CB82454();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

void *sub_21C89EA90()
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  result = sub_21CB821D4();
  if (v4 != 1)
  {
    return j__swift_release(v3);
  }

  if (v3)
  {
    swift_getKeyPath(byte_21CBABCC8);
    sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    v2 = *(v3 + 16);
    v1 = *(v3 + 24);
    sub_21C7335A8(v2, v1);
    result = j__swift_release(v3);
    if (v2)
    {
      v2(result);
      return sub_21C71B710(v2, v1);
    }
  }

  return result;
}

uint64_t sub_21C89EBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBABAD0);
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  return sub_21C73A7B0(v3 + v4, a2, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C89ECB8(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C73A7B0(a1, v4, type metadata accessor for PMWiFiNetwork);
  return sub_21C9682A4(v4);
}

uint64_t sub_21C89ED58(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBABB10);
  swift_getKeyPath(byte_21CBABB38);
  sub_21CB81DB4();
}

uint64_t sub_21C89EDD4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C73A7B0(a1, &v10 - v7, type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBABB10);
  swift_getKeyPath(byte_21CBABB38);
  sub_21C73A7B0(v8, v5, type metadata accessor for PMAccount);

  sub_21CB81DC4();
  return sub_21C8A0514(v8, type metadata accessor for PMAccount);
}

uint64_t sub_21C89EF00@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_21CBABA28);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

unint64_t sub_21C89EF80()
{
  result = qword_27CDEF050;
  if (!qword_27CDEF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF048, &qword_21CBABA10);
    sub_21C739F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF050);
  }

  return result;
}

unint64_t sub_21C89F004()
{
  result = qword_27CDEF088;
  if (!qword_27CDEF088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF090, &qword_21CBABA88);
    sub_21C6EADEC(&qword_27CDEF098, &qword_27CDEF0A0, &unk_21CBABA90, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF088);
  }

  return result;
}

unint64_t sub_21C89F0C0()
{
  result = qword_27CDEF0B0;
  if (!qword_27CDEF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF0A8, &qword_21CBABAA0);
    sub_21C89F170(&qword_27CDEF0B8, &qword_27CDEF0C0, &qword_21CBABAA8, sub_21C89F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF0B0);
  }

  return result;
}

uint64_t sub_21C89F170(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C89F220()
{
  result = qword_27CDEF0C8;
  if (!qword_27CDEF0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF0D0, &qword_21CBABAB0);
    sub_21C6EADEC(&qword_27CDEF0D8, &qword_27CDEF0E0, &qword_21CBABAB8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF0C8);
  }

  return result;
}

unint64_t sub_21C89F2E4()
{
  result = qword_27CDEF118;
  if (!qword_27CDEF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF120, &qword_21CBABB00);
    sub_21C6EADEC(&qword_27CDEF128, &qword_27CDEF130, &qword_21CBABB08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF118);
  }

  return result;
}

unint64_t sub_21C89F3A8()
{
  result = qword_27CDEF148;
  if (!qword_27CDEF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF150, &qword_21CBABB60);
    sub_21C6EADEC(&qword_27CDEF158, &qword_27CDEF160, &qword_21CBABB68, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF148);
  }

  return result;
}

uint64_t sub_21C89F48C(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_21C7CCF60(*a2);
  if (v3)
  {
    if (qword_27CDEA480 != -1)
    {
      v5 = result;
      v6 = v3;
      v7 = v4;
      swift_once();
      v4 = v7;
      result = v5;
      v3 = v6;
    }

    sub_21CADAA84(result, v3, v4 & 1);
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v40 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;

  v6 = v0 + v4 + v2[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v5 + v2[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v4 = (v3 + 16) & ~v3;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    v1 = v39;
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v5 + v2[7];
  if (*(v37 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v40 + v4 + 1, v3 | 7);
}

void *sub_21C89FBDC(void *result, char *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result[5];
    if (!v3)
    {
      return result;
    }

    v4 = result[4];
  }

  else
  {
    v4 = result[2];
    v3 = result[3];
  }

  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  sub_21CADAA84(v4, v3, v2);
}

uint64_t objectdestroy_83Tm()
{
  v1 = type metadata accessor for PMWiFiNetwork(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[7];
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v1[8];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v3 + 1, v2 | 7);
}

uint64_t sub_21C89FE60(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = v4 + *(v3 + 64);

  return a2(v4, v5);
}

uint64_t sub_21C89FF2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppCommands(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8A0014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppCommands(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C89E234(a1, v6, a2);
}

uint64_t sub_21C8A0094()
{
  v1 = *(type metadata accessor for PMAppCommands(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C89E558(v0 + v2, v5);
}

unint64_t sub_21C8A0260()
{
  result = qword_27CDEF2F8;
  if (!qword_27CDEF2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF2F0, &qword_21CBABFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF300, &qword_21CBABFA8);
    sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF2F8);
  }

  return result;
}

unint64_t sub_21C8A035C()
{
  result = qword_27CDEF318;
  if (!qword_27CDEF318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF310, &qword_21CBABFB0);
    sub_21C8A03E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF318);
  }

  return result;
}

unint64_t sub_21C8A03E0()
{
  result = qword_27CDEF320;
  if (!qword_27CDEF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF328, &qword_21CBABFB8);
    sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0, MEMORY[0x277CE14C0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF320);
  }

  return result;
}

uint64_t sub_21C8A0514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C8A059C()
{
  result = qword_27CDEF368;
  if (!qword_27CDEF368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF368);
  }

  return result;
}

uint64_t objectdestroy_305Tm()
{
  v1 = type metadata accessor for PMAppCommands(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB82484();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB82A34();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C8A0978(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppCommands(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_21C8A0A20(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppCommands(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C89CB44(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C8A0BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8A0C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21C8A0CE8(uint64_t a1, uint64_t a2)
{
  sub_21CB81BE4();
  if (v2 <= 0x3F)
  {
    type metadata accessor for PMCredentialPickerViewController(319);
    if (v3 <= 0x3F)
    {
      sub_21C722330(319, &qword_27CDEF3A0, &qword_27CDEA500, &qword_21CB9E610);
      if (v4 <= 0x3F)
      {
        sub_21C722330(319, &qword_27CDEF3A8, &qword_27CDEF3B0, &qword_21CBAC180);
        if (v5 <= 0x3F)
        {
          sub_21C722330(319, &qword_27CDEF3B8, &qword_27CDEF3C0, &unk_21CBAC188);
          if (v6 <= 0x3F)
          {
            sub_21C722330(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60);
            if (v7 <= 0x3F)
            {
              sub_21C722330(319, &qword_27CDEF3C8, &qword_27CDEF3D0, &qword_21CBAC198);
              if (v8 <= 0x3F)
              {
                sub_21C7210DC();
                if (v9 <= 0x3F)
                {
                  sub_21C722330(319, &qword_27CDEF3D8, qword_27CDEF3E0, &qword_21CBAC1A0);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21C8A0EB4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C8A0F18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 253 - (2u >> (8 * v3));
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
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
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
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

  return v4 + (v5 | v10) + 1;
}

void sub_21C8A104C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = 253 - (2u >> (8 * v5));
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

BOOL sub_21C8A122C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_21C8AF988(a4, a5, a6);
  }

  while ((sub_21CB85574() & 1) == 0);
  return v10 != v11;
}

BOOL sub_21C8A137C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_21C8A13AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_21C8A1458(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_21C8A1508(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_21CB80E34();
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C8A1720(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CF15BD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_21CB85FA4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_21C8A1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB81B54();
  if (sub_21CB81AD4() == a1 && v6 == a2)
  {

    return 1;
  }

  v8 = sub_21CB86344();

  if (v8)
  {
    return 1;
  }

  v12[0] = a1;
  v12[1] = a2;
  MEMORY[0x28223BE20](v9);
  v11[2] = v12;
  sub_21C8A13AC(sub_21C8ADF40, v11, a3);

  return a1;
}

uint64_t sub_21C8A1958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v40 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37[1] = v6;
  v38 = v37 - v7;
  v9 = type metadata accessor for PMPasskeyAccountRegistrationContentView.PickerSelection(0, v8, v6, v6);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = v37 - v19;
  v22 = *(v21 + 48);
  v41 = v10;
  v23 = *(v10 + 16);
  v23(v37 - v19, v42, v9, v18);
  (v23)(&v20[v22], v43, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v15;
    v26 = v12;
    v28 = v38;
    v27 = v39;
    if (EnumCaseMultiPayload)
    {
      v30 = v26;
      (v23)(v26, v20, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v40;
        (*(v40 + 32))(v27, &v20[v22], a3);
        v31 = sub_21CB85574();
        v33 = *(v32 + 8);
        v33(v27, a3);
        v33(v30, a3);
        goto LABEL_18;
      }
    }

    else
    {
      v29 = v25;
      (v23)(v25, v20, v9);
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = v40;
        (*(v40 + 32))(v28, &v20[v22], a3);
        v31 = sub_21CB85574();
        v35 = *(v34 + 8);
        v35(v28, a3);
        v35(v29, a3);
        goto LABEL_18;
      }

      v30 = v29;
    }

    (*(v40 + 8))(v30, a3);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      v31 = 1;
LABEL_18:
      v17 = v41;
      goto LABEL_19;
    }
  }

LABEL_16:
  v31 = 0;
  v9 = TupleTypeMetadata2;
LABEL_19:
  (*(v17 + 8))(v20, v9);
  return v31 & 1;
}

uint64_t sub_21C8A1D98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v6, v10, v3);
      v15 = 1;
    }

    else
    {
      (*(v4 + 32))(v6, v10, v3);
      v15 = 0;
    }

    MEMORY[0x21CF15F90](v15);
    sub_21CB85494();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    return MEMORY[0x21CF15F90](v14);
  }
}

uint64_t sub_21C8A1F88(uint64_t a1)
{
  sub_21CB86484();
  sub_21C8A1D98(v3, a1);
  return sub_21CB864D4();
}

uint64_t sub_21C8A1FD8(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21C8A1D98(v4, a2);
  return sub_21CB864D4();
}

unint64_t sub_21C8A2048()
{
  result = qword_27CDEF468;
  if (!qword_27CDEF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF468);
  }

  return result;
}

uint64_t sub_21C8A209C()
{
  v0 = sub_21CB81BD4();
  v1 = sub_21CB81AB4();

  if (v1 >> 62)
  {
    v2 = sub_21CB85FA4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v5 != 255)
  {
    sub_21C8ADEEC(v4, v5);
    return 0;
  }

  return 1;
}

uint64_t sub_21C8A2180@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v98 = a1;
  v99 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = v82 - v5;
  v6 = sub_21CB80A84();
  v96 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v87 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  MEMORY[0x28223BE20](v105);
  v101 = (v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v12);
  v86 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v82 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v82 - v18;
  v20 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v21 = a3 + v20[6];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v84 = v22;
  v83 = v24;
  v82[1] = v23 + 56;
  (v24)(v19, 1, 1);
  sub_21C6EDBAC(v19, v16, &qword_27CDEA500, &qword_21CB9E610);
  v85 = v21;
  sub_21CB84D44();
  v25 = v96;
  sub_21C6EA794(v19, &qword_27CDEA500, &qword_21CB9E610);
  v26 = a3 + v20[7];
  v106 = 0;
  v107 = 0;
  v108 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  sub_21CB84D44();
  v27 = v110;
  v28 = v111;
  v29 = v112;
  v90 = v109;
  *v26 = v109;
  *(v26 + 1) = v27;
  v89 = v27;
  v88 = v28;
  v26[16] = v28;
  v91 = v29;
  *(v26 + 3) = v29;
  v30 = (a3 + v20[8]);
  v106 = 0;
  LOBYTE(v107) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  sub_21CB84D44();
  v31 = v110;
  v32 = v111;
  v93 = v109;
  *v30 = v109;
  v92 = v31;
  *(v30 + 8) = v31;
  v94 = v32;
  v95 = v30;
  v30[2] = v32;
  v106 = 0;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v104 = v110;
  v102 = v111;
  v33 = a3 + v20[10];
  v34 = sub_21CB81B84();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  sub_21C6EDBAC(v11, v101, &qword_27CDEF3D0, &qword_21CBAC198);
  v103 = v33;
  sub_21CB84D44();
  v105 = v11;
  sub_21C6EA794(v11, &qword_27CDEF3D0, &qword_21CBAC198);
  v35 = a3 + v20[11];
  LOBYTE(v106) = 0;
  sub_21CB84D44();
  v36 = v110;
  *v35 = v109;
  *(v35 + 1) = v36;
  v37 = a3 + v20[12];
  LOBYTE(v106) = 0;
  sub_21CB84D44();
  v38 = v110;
  *v37 = v109;
  *(v37 + 1) = v38;
  v101 = v20;
  v39 = a3 + v20[13];
  LOBYTE(v106) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEF3E0, &qword_21CBAC1A0);
  sub_21CB84D44();
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  v41 = v98;
  v42 = v99;
  *a3 = v98;
  a3[1] = v42;
  v100 = a3;
  v43 = v41;
  v44 = sub_21CB81BD4();
  v45 = v97;
  sub_21CB81B24();

  if ((*(v25 + 48))(v45, 1, v6) == 1)
  {
    sub_21C6EA794(v45, &qword_27CDEF470, &qword_21CBC94D0);
  }

  else
  {
    v46 = *(v25 + 32);
    v47 = v87;
    v46(v87, v45, v6);
    v48 = sub_21CB81BD4();
    v49 = sub_21CB81A94();

    sub_21CB81B54();
    sub_21CB81AD4();

    sub_21C8A122C(v47, v49, MEMORY[0x277CC8E50], &qword_27CDEF478, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);

    v50 = v86;
    v46(v86, v47, v6);
    v51 = v84;
    swift_storeEnumTagMultiPayload();
    v83(v50, 0, 1, v51);
    v52 = v26;
    v53 = v85;
    sub_21C6EA794(v85, &qword_27CDEF380, &qword_21CBAC140);
    *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140) + 28)) = 0;
    v54 = v53;
    v26 = v52;
    sub_21C716934(v50, v54, &qword_27CDEA500, &qword_21CB9E610);
  }

  v55 = sub_21CB81BD4();
  v56 = sub_21CB81A74();
  v58 = v57;

  if (v58)
  {
    v59 = sub_21CB81BD4();
    v60 = sub_21CB81AC4();

    v61 = sub_21C8A1848(v56, v58, v60);
    v63 = v62;
    v65 = v64;

    sub_21C8ADF14(v90, v89, v88);

    *v26 = v61;
    *(v26 + 1) = v63;
    v26[16] = v65;
    *(v26 + 3) = 0;
  }

  v66 = sub_21CB81BD4();
  v67 = sub_21CB81A54();

  if (v67)
  {
    v68 = sub_21CB81BD4();
    v69 = sub_21CB81AB4();

    sub_21CB81B54();
    sub_21CB81AD4();

    v109 = v67;
    MEMORY[0x28223BE20](v70);
    v82[-2] = &v109;
    LOBYTE(v68) = sub_21C8A1720(sub_21C8ADED0, &v82[-4], v69);

    sub_21C8ADEEC(v93, v92);

    v71 = v95;
    *v95 = v67;
    *(v71 + 8) = (v68 & 1) == 0;
    v71[2] = 0;
  }

  v72 = sub_21CB81BD4();
  v73 = v105;
  sub_21CB81AE4();

  v74 = v103;
  sub_21C6EA794(v103, &qword_27CDEF388, &qword_21CBAC148);
  *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148) + 28)) = 0;
  sub_21C716934(v73, v74, &qword_27CDEF3D0, &qword_21CBAC198);
  v75 = sub_21CB81BD4();

  v76 = sub_21CB81B04();
  v78 = v77;

  if (v78)
  {
    v79 = v76;
  }

  else
  {
    v79 = 0;
  }

  v81 = (v100 + v101[9]);
  *v81 = v79;
  v81[1] = v78;
  v81[2] = 0;
  return result;
}

uint64_t sub_21C8A2AE0@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5A0, &qword_21CB9E6A0) - 8;
  MEMORY[0x28223BE20](v107);
  v110 = &v95 - v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4F0, &qword_21CBAC458);
  MEMORY[0x28223BE20](v106);
  v104 = &v95 - v3;
  *&v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4F8, &qword_21CBAC460);
  MEMORY[0x28223BE20](v103);
  v101 = &v95 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF500, &qword_21CBAC468);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v95 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF508, &qword_21CBAC470);
  MEMORY[0x28223BE20](v109);
  v98 = &v95 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF510, &qword_21CBAC478);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v8 = &v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF518, &qword_21CBAC480);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v95 - v11;
  v111 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF520, &qword_21CBAC488);
  sub_21C6EADEC(&qword_27CDEF528, &qword_27CDEF520, &qword_21CBAC488, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  v13 = sub_21CB829D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85294();
  v17 = sub_21C6EADEC(&qword_27CDEF530, &qword_27CDEF518, &qword_21CBAC480, MEMORY[0x277CDE580]);
  v18 = sub_21C8AF988(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_21CB849C4();
  (*(v14 + 8))(v16, v13);
  (*(v10 + 8))(v12, v9);
  *&v114 = v9;
  *(&v114 + 1) = v13;
  v115 = v17;
  v116 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v98;
  v20 = v96;
  sub_21CB845F4();
  (*(v97 + 8))(v8, v20);
  LOBYTE(v20) = sub_21CB83CD4();
  sub_21CB81F24();
  v21 = v109;
  v22 = &v19[*(v109 + 9)];
  v23 = v19;
  *v22 = v20;
  *(v22 + 1) = v24;
  *(v22 + 2) = v25;
  *(v22 + 3) = v26;
  *(v22 + 4) = v27;
  v22[40] = 0;
  v28 = sub_21CB83CF4();
  v29 = sub_21CB83764();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21CB83754();
  v33 = sub_21C8AE3F4();
  v34 = v99;
  v35 = v21;
  v36 = v23;
  MEMORY[0x21CF13D70](v28, 0, 0, &v95 - v32, v35, v33);
  v37 = *(v30 + 8);
  v37(&v95 - v32, v29);
  sub_21C6EA794(v36, &qword_27CDEF508, &qword_21CBAC470);
  v38 = sub_21CB83D04();
  MEMORY[0x28223BE20](v38);
  sub_21CB83754();
  *&v114 = v109;
  *(&v114 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v101;
  v41 = v38;
  v42 = v100;
  MEMORY[0x21CF13D70](v41, 0, 0, &v95 - v32, v100, OpaqueTypeConformance2);
  v37(&v95 - v32, v29);
  (*(v102 + 8))(v34, v42);
  *(v40 + *(v103 + 36)) = 256;
  sub_21C8AE57C();
  sub_21C8AE67C();
  v43 = v104;
  sub_21CB844C4();
  sub_21C6EA794(v40, &qword_27CDEF4F8, &qword_21CBAC460);
  v44 = sub_21CB830D4();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB830B4();
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF550, &qword_21CBAC490) + 36);
  (*(v45 + 16))(&v43[v48], v47, v44);
  v49 = *(v45 + 56);
  v49(&v43[v48], 0, 1, v44);
  v51 = &v43[*(v106 + 36)];
  v52 = v43;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v45 + 32))(v51 + v53, v47, v44);
  v49(v51 + v53, 0, 1, v44);
  *v51 = KeyPath;
  sub_21C8AE6D0();
  sub_21CB84604();
  sub_21C6EA794(v52, &qword_27CDEF4F0, &qword_21CBAC458);
  v54 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v55 = v105;
  v56 = v105 + *(v54 + 52);
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v114) = v57;
  *(&v114 + 1) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
  sub_21CB84D54();
  LODWORD(v109) = v112;
  v59 = v55 + *(v54 + 48);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v112) = v60;
  v113 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v62 = sub_21CB84D74();
  v63 = *(&v114 + 1);
  v106 = v114;
  LODWORD(v104) = v115;
  v64 = *(v54 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21C8AEA48(v55, &v95 - v66, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v67 = *(v64 + 80);
  v68 = swift_allocObject();
  sub_21C8AE898(&v95 - v66, v68 + ((v67 + 16) & ~v67));
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_21CB84D44();
  v103 = v114;
  v69 = v115;
  v112 = 0;
  v113 = 0xE000000000000000;
  v70 = sub_21CB84D44();
  v71 = v114;
  v72 = v115;
  v73 = v110 + *(v107 + 44);
  *v73 = v109;
  *(v73 + 1) = v118[0];
  *(v73 + 4) = *(v118 + 3);
  *(v73 + 8) = v106;
  *(v73 + 16) = v63;
  *(v73 + 24) = v104;
  *(v73 + 25) = *v117;
  *(v73 + 28) = *&v117[3];
  *(v73 + 32) = sub_21C8AE8FC;
  *(v73 + 40) = v68;
  *(v73 + 48) = v103;
  *(v73 + 64) = v69;
  *(v73 + 72) = v71;
  *(v73 + 88) = v72;
  MEMORY[0x28223BE20](v70);
  sub_21C8AEA48(v55, &v95 - v66, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  sub_21CB858B4();
  v74 = sub_21CB858A4();
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D85700];
  *(v75 + 16) = v74;
  *(v75 + 24) = v76;
  sub_21C8AE898(&v95 - v66, v75 + ((v67 + 32) & ~v67));
  v77 = sub_21CB858E4();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = &v95 - v80;
  sub_21CB858C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v82 = sub_21CB827C4();
    v109 = &v95;
    v106 = *(v82 - 8);
    v107 = v82;
    MEMORY[0x28223BE20](v82);
    v84 = &v95 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_21CB86094();

    *&v114 = 0xD00000000000004CLL;
    *(&v114 + 1) = 0x800000021CB92110;
    v112 = 112;
    v85 = sub_21CB862F4();
    MEMORY[0x21CF151F0](v85);

    v87 = MEMORY[0x28223BE20](v86);
    (*(v78 + 16))(&v95 - v80, &v95 - v80, v77, v87);
    sub_21CB827B4();
    (*(v78 + 8))(&v95 - v80, v77);
    v88 = v108;
    sub_21C763D98(v110, v108);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5A8, &qword_21CB9E6A8);
    return (*(v106 + 32))(v88 + *(v89 + 36), v84, v107);
  }

  else
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5B0, &qword_21CB9E6B0);
    v92 = v108;
    v93 = (v108 + *(v91 + 36));
    v94 = sub_21CB824F4();
    (*(v78 + 32))(&v93[*(v94 + 20)], v81, v77);
    *v93 = &unk_21CBAC4E0;
    *(v93 + 1) = v75;
    return sub_21C763D98(v110, v92);
  }
}

uint64_t sub_21C8A3958@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF580, &qword_21CBAC4F8);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF588, &qword_21CBAC500);
  v30 = *(v6 - 8);
  v7 = v30;
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF590, &qword_21CBAC508);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_21C8A3CAC(&v28 - v17);
  sub_21C8A4524(v12);
  v29 = v5;
  sub_21C8A4964(v5);
  sub_21C6EDBAC(v18, v15, &qword_27CDEF590, &qword_21CBAC508);
  v19 = *(v7 + 16);
  v20 = v9;
  v21 = v31;
  v19(v9, v12, v31);
  v22 = v5;
  v23 = v32;
  sub_21C6EDBAC(v22, v32, &qword_27CDEF580, &qword_21CBAC4F8);
  v24 = v33;
  sub_21C6EDBAC(v15, v33, &qword_27CDEF590, &qword_21CBAC508);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF598, &qword_21CBAC510);
  v19((v24 + *(v25 + 48)), v20, v21);
  sub_21C6EDBAC(v23, v24 + *(v25 + 64), &qword_27CDEF580, &qword_21CBAC4F8);
  sub_21C6EA794(v29, &qword_27CDEF580, &qword_21CBAC4F8);
  v26 = *(v30 + 8);
  v26(v12, v21);
  sub_21C6EA794(v18, &qword_27CDEF590, &qword_21CBAC508);
  sub_21C6EA794(v23, &qword_27CDEF580, &qword_21CBAC4F8);
  v26(v20, v21);
  return sub_21C6EA794(v15, &qword_27CDEF590, &qword_21CBAC508);
}

uint64_t sub_21C8A3CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = v4;
  v63 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v64);
  v65 = v50 - v5;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF818, &qword_21CBAC720);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF820, &qword_21CBAC728);
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  v58 = v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF828, &qword_21CBAC730);
  v67 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v57 = v50 - v21;
  v22 = sub_21CB81BC4();
  v23 = sub_21CB81B64();

  if (v23)
  {
    v55 = v20;
    v24 = *(v3 + 24);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    v54 = v24;
    sub_21CB84D74();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB80FF4();

    v25 = *(v7 + 8);
    v25(v9, v6);
    v25(v12, v6);
    v26 = sub_21C8A59B0();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
    }

    else
    {
      sub_21CB81014();
      v28 = sub_21CB81004();
      v29 = v33;
      v25(v12, v6);
    }

    v34 = sub_21CB84BB4();
    sub_21C8A59B0();
    if (v35)
    {

      v36 = sub_21CB84B14();
    }

    else
    {
      v36 = sub_21CB84A64();
    }

    v68 = v36;
    v37 = sub_21CB82384();
    v52 = v50;
    MEMORY[0x28223BE20](v37);
    v68 = v28;
    v69 = v29;
    v70 = v34;
    v71 = v38;
    v39 = sub_21C6EDBAC(v17, v56, &qword_27CDEF818, &qword_21CBAC720);
    v50[1] = v50;
    MEMORY[0x28223BE20](v39);

    v50[0] = v17;
    v51 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF830, &qword_21CBAC738);
    sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530, &unk_21CBCF678);
    sub_21C8AF6E4();
    sub_21C8AF794();
    v40 = v58;
    sub_21CB84E34();

    sub_21C6EA794(v50[0], &qword_27CDEF818, &qword_21CBAC720);

    v41 = v51;
    v42 = v65;
    sub_21CB84D54();
    v43 = v63;
    sub_21C8AEA48(v41, v63, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v44 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v45 = swift_allocObject();
    sub_21C8AE898(v43, v45 + v44);
    sub_21C6EADEC(&qword_27CDEF860, &qword_27CDEF820, &qword_21CBAC728, MEMORY[0x277CDF038]);
    sub_21C8AF8D0();
    v46 = v57;
    v47 = v60;
    sub_21CB84924();

    sub_21C6EA794(v42, &qword_27CDEA500, &qword_21CB9E610);
    (*(v59 + 8))(v40, v47);
    v48 = v66;
    v49 = v55;
    (*(v67 + 32))(v66, v46, v55);
    return (*(v67 + 56))(v48, 0, 1, v49);
  }

  else
  {
    v30 = v66;
    v31 = *(v67 + 56);

    return v31(v30, 1, 1, v20);
  }
}

uint64_t sub_21C8A4524@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = v5;
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF610, &qword_21CBAC588);
  MEMORY[0x28223BE20](v40);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF618, &qword_21CBAC590);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x28223BE20](v9);
  v41 = &v31 - v11;
  sub_21C8A6F70(v8);
  v12 = v1 + *(v3 + 36);
  v31 = v1;
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v44 = *v12;
  LOBYTE(v45) = v13;
  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  v15 = v42;
  v16 = v43;
  v44 = v42;
  LOBYTE(v45) = v43;
  v36 = type metadata accessor for PMPasskeyAccountRegistrationContentView;
  v34 = v6;
  sub_21C8AEA48(v1, v6, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21C8AE898(v6, v18 + v17);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  v19 = sub_21C8AF168();
  v32 = sub_21C8AF358();
  sub_21CB84924();

  sub_21C8ADF14(v15, *(&v15 + 1), v16);
  sub_21C6EA794(v8, &qword_27CDEF610, &qword_21CBAC588);
  v20 = v31;
  v21 = v31 + *(v3 + 40);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  *&v44 = v22;
  BYTE8(v44) = v23;
  v45 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  v25 = v42;
  LOBYTE(v3) = BYTE8(v42);
  v26 = v34;
  sub_21C8AEA48(v20, v34, v36);
  v27 = swift_allocObject();
  sub_21C8AE898(v26, v27 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  *&v44 = v40;
  *(&v44 + 1) = v33;
  v45 = v19;
  v46 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21C8AF488();
  v28 = v37;
  v29 = v41;
  sub_21CB84924();

  sub_21C8ADEEC(v25, v3);
  return (*(v38 + 8))(v29, v28);
}

uint64_t sub_21C8A4964@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = v5;
  v51 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5A0, &qword_21CBAC518);
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5A8, &unk_21CBAC520);
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  MEMORY[0x28223BE20](v11);
  v48 = v40 - v13;
  v14 = sub_21CB81BD4();
  v15 = sub_21CB81AF4();

  v16 = sub_21C967C20(v15, &unk_282E48DC8);

  sub_21C6EA794(&unk_282E48DE8, &unk_27CDED260, &qword_21CBA1C60);
  if (v16)
  {
    v17 = v54;
    v18 = *(v55 + 56);

    return v18(a1, 1, 1, v17);
  }

  else
  {
    v20 = (v2 + *(v4 + 36));
    v21 = *v20;
    v44 = v20[1];
    v45 = v21;
    v43 = v20[2];
    v56 = v21;
    v57 = v44;
    v58 = v43;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
    sub_21CB84D74();
    v22 = v2;
    v23 = v60;
    v24 = v61;
    v25 = v62;
    v26 = v63;
    sub_21CB81014();
    sub_21CB81004();

    (*(v7 + 8))(v9, v6);
    v41 = v22;
    v27 = sub_21C8AB9EC();
    v29 = v28;
    v40[3] = v28;
    v30 = sub_21CB84BB4();
    v40[5] = v40;
    MEMORY[0x28223BE20](v30);
    v60 = sub_21CB84B14();
    v46 = a1;
    v31 = sub_21CB82384();
    v40[4] = v40;
    v60 = v27;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    v40[2] = v23;
    v56 = v23;
    v57 = v24;
    v58 = v25;
    v59 = v26;
    v40[1] = v26;
    MEMORY[0x28223BE20](v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B8, &qword_21CBAC538);
    sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530, &unk_21CBCF678);
    sub_21C8AEF68(&qword_27CDEF5C8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    sub_21C8AEB10();
    v32 = v52;
    sub_21CB84E34();

    v60 = v45;
    v61 = v44;
    v62 = v43;
    sub_21CB84D54();
    v60 = v56;
    v61 = v57;
    v33 = v51;
    sub_21C8AEA48(v41, v51, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v34 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v35 = swift_allocObject();
    sub_21C8AE898(v33, v35 + v34);
    sub_21C6EADEC(&qword_27CDEF5E0, &qword_27CDEF5A0, &qword_21CBAC518, MEMORY[0x277CDF038]);
    sub_21C8AEF68(&qword_27CDEED70, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
    v37 = v47;
    v36 = v48;
    sub_21CB84934();

    (*(v53 + 8))(v32, v37);
    v38 = v54;
    v39 = v46;
    (*(v55 + 32))(v46, v36, v54);
    return (*(v55 + 56))(v39, 0, 1, v38);
  }
}

uint64_t sub_21C8A5124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = sub_21CB80A84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserInputAlert.Result(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C8AEA48(a1, v16, type metadata accessor for UserInputAlert.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      v19 = v16[1];
      v20 = sub_21CB81BD4();
      v21 = sub_21CB81AC4();

      v22 = sub_21C8A1848(v18, v19, v21);
      v24 = v23;
      v26 = v25;

      v27 = (a2 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28));
      v28 = *(v27 + 16);
      v29 = *(v27 + 3);
      v45 = *v27;
      LOBYTE(v46) = v28;
      v47 = v29;
      v42 = v22;
      v43 = v24;
      v44 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
      return sub_21CB84D64();
    }

    else
    {
      v34 = *v16;
      v35 = sub_21CB81BD4();
      v36 = sub_21CB81AB4();

      sub_21CB81B54();
      sub_21CB81AD4();

      *&v45 = v34;
      MEMORY[0x28223BE20](v37);
      *(&v41 - 2) = &v45;
      LOBYTE(v35) = (sub_21C8A1720(sub_21C8AFB68, (&v41 - 4), v36) & 1) == 0;
      sub_21C79B0A8(v34, v35);

      v38 = a2 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32);
      v40 = *(v38 + 16);
      LOBYTE(v36) = *(v38 + 8);
      *&v45 = *v38;
      v39 = v45;
      BYTE8(v45) = v36;
      v46 = v40;
      v42 = v34;
      LOBYTE(v43) = v35;
      sub_21C79B094(v45, v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
      sub_21CB84D64();

      sub_21C8ADEEC(v39, v36);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    v31 = sub_21CB81BD4();
    v32 = sub_21CB81A94();

    sub_21CB81B54();
    sub_21CB81AD4();

    sub_21C8A122C(v13, v32, MEMORY[0x277CC8E50], &qword_27CDEF478, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);

    (*(v11 + 16))(v9, v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
    (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
    type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
    sub_21C6EDBAC(v9, v6, &qword_27CDEA500, &qword_21CB9E610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    sub_21CB84D64();
    sub_21C6EA794(v9, &qword_27CDEA500, &qword_21CB9E610);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_21C8A5660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  sub_21CB858B4();
  v3[5] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21C8A56F8, v5, v4);
}

uint64_t sub_21C8A56F8(uint64_t a1)
{
  *(v1 + 64) = sub_21CB81BD4();
  v4 = (*MEMORY[0x277CF03D8] + MEMORY[0x277CF03D8]);
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_21C8A57AC;

  return v4();
}

uint64_t sub_21C8A57AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 81) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_21C8A58F4, v5, v4);
}

uint64_t sub_21C8A58F4()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 32);

  v3 = (v2 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 44));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21C8A59B0()
{
  v0 = sub_21CB80A84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  sub_21CB84D54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v11 = 0;
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
  {
    sub_21C6EDBAC(v9, v6, &qword_27CDEA500, &qword_21CB9E610);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_21C6EA794(v6, &qword_27CDEA518, &unk_21CBAC380);
      v11 = 0;
    }

    else
    {
      (*(v1 + 32))(v3, v6, v0);
      v11 = sub_21CB80A74();
      (*(v1 + 8))(v3, v0);
    }
  }

  sub_21C6EA794(v9, &qword_27CDEA500, &qword_21CB9E610);
  return v11;
}

uint64_t sub_21C8A5C18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF858, &qword_21CBAC740);
  sub_21C6EADEC(&qword_27CDEF850, &qword_27CDEF858, &qword_21CBAC740, MEMORY[0x277CE14C0]);
  return sub_21CB85054();
}

uint64_t sub_21C8A5CBC@<X0>(void (*a1)(_BYTE *, _BYTE *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v84 = &v76[-v5];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF878, &qword_21CBAC748);
  v89 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v86 = &v76[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF880, &qword_21CBAC750);
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v76[-v12];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF888, &qword_21CBAC758);
  v13 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v15 = &v76[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v76[-v19];
  v21 = sub_21CB80A84();
  v80 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v76[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF890, &qword_21CBAC760);
  MEMORY[0x28223BE20](v24 - 8);
  v92 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v95 = &v76[-v27];
  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  v91 = a1;
  sub_21CB84D54();
  v28 = (*(v4 + 48))(v20, 1, v3);
  v82 = v3;
  if (v28 == 1)
  {
    v29 = &qword_27CDEA500;
    v30 = &qword_21CB9E610;
LABEL_6:
    sub_21C6EA794(v20, v29, v30);
    v42 = 1;
    v41 = v83;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = &qword_27CDEA518;
    v30 = &unk_21CBAC380;
    goto LABEL_6;
  }

  v31 = v80;
  (*(v80 + 32))(v23, v20, v21);
  v97 = sub_21CB80A74();
  v98 = v32;
  sub_21C71F3FC();
  v33 = sub_21CB84054();
  v78 = v34;
  v77 = v35;
  v79 = v36;
  v37 = v81;
  sub_21CB84D54();
  (*(v31 + 8))(v23, v21);
  v38 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4F8, &unk_21CBAC790) + 36)];
  sub_21C716934(v37, v38, &qword_27CDEA500, &qword_21CB9E610);
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA508, &qword_21CB9E618) + 36)) = 1;
  v39 = v78;
  *v15 = v33;
  *(v15 + 1) = v39;
  v15[16] = v77 & 1;
  *(v15 + 3) = v79;
  v40 = v83;
  (*(v13 + 32))(v95, v15, v83);
  v41 = v40;
  v42 = 0;
LABEL_7:
  v43 = v95;
  (*(v13 + 56))(v95, v42, 1, v41);
  v44 = sub_21CB81BD4();
  v45 = sub_21CB81A94();

  v101 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF898, &qword_21CBAC780);
  sub_21C6EADEC(&qword_27CDEF8A0, &qword_27CDEF898, &qword_21CBAC780, MEMORY[0x277D83980]);
  sub_21C8AF988(&qword_27CDEF8A8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  v46 = sub_21C6EADEC(&qword_27CDEF840, &qword_27CDEA518, &unk_21CBAC380, &unk_21CBAC1F8);
  v97 = MEMORY[0x277CE0BD8];
  v98 = v82;
  v99 = MEMORY[0x277CE0BC8];
  v100 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v93;
  sub_21CB84FD4();
  v97 = sub_21C8A67E4();
  v98 = v48;
  sub_21C71F3FC();
  v49 = sub_21CB84054();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v84;
  swift_storeEnumTagMultiPayload();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA510, &unk_21CB9E620);
  v58 = v86;
  v59 = &v86[*(v57 + 36)];
  sub_21C716934(v56, v59, &qword_27CDEA518, &unk_21CBAC380);
  *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA520, &unk_21CB9E630) + 36)) = 1;
  *v58 = v49;
  *(v58 + 1) = v51;
  v58[16] = v53 & 1;
  *(v58 + 3) = v55;
  v60 = v92;
  sub_21C6EDBAC(v43, v92, &qword_27CDEF890, &qword_21CBAC760);
  v61 = v87;
  v91 = *(v87 + 16);
  v62 = v85;
  v63 = v47;
  v64 = v88;
  v91(v85, v63, v88);
  v65 = v89;
  v66 = *(v89 + 16);
  v66(v94, v58, v96);
  v67 = v60;
  v68 = v90;
  sub_21C6EDBAC(v67, v90, &qword_27CDEF890, &qword_21CBAC760);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF8B0, &qword_21CBAC788);
  v91((v68 + *(v69 + 48)), v62, v64);
  v70 = v68 + *(v69 + 64);
  v71 = v94;
  v72 = v96;
  v66(v70, v94, v96);
  v73 = *(v65 + 8);
  v73(v58, v72);
  v74 = *(v61 + 8);
  v74(v93, v64);
  sub_21C6EA794(v95, &qword_27CDEF890, &qword_21CBAC760);
  v73(v71, v72);
  v74(v62, v64);
  return sub_21C6EA794(v92, &qword_27CDEF890, &qword_21CBAC760);
}

uint64_t sub_21C8A6660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v18[0] = sub_21CB80A74();
  v18[1] = v7;
  sub_21C71F3FC();
  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_21CB80A84();
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  swift_storeEnumTagMultiPayload();
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA510, &unk_21CB9E620) + 36);
  sub_21C716934(v6, v16, &qword_27CDEA518, &unk_21CBAC380);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA520, &unk_21CB9E630);
  *(v16 + *(result + 36)) = 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_21C8A67E4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  sub_21CB84D54();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_21C6EA794(v6, &qword_27CDEA500, &qword_21CB9E610);
  if (v8 == 1)
  {
    v9 = sub_21CB81BD4();
    sub_21CB81A94();
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v10;
}

void sub_21C8A6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v42 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  v22 = a3;
  sub_21CB84D54();
  v23 = *(v5 + 48);
  if (v23(v21, 1, v4) == 1)
  {
    sub_21C6EA794(v21, &qword_27CDEA500, &qword_21CB9E610);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21C6EA794(v21, &qword_27CDEA518, &unk_21CBAC380);
    if (EnumCaseMultiPayload == 2)
    {
      sub_21C6EDBAC(v43, v18, &qword_27CDEA500, &qword_21CB9E610);
      sub_21CB84D64();
      v25 = v42;
      v26 = v22 + *(v42 + 52);
      v27 = *v26;
      v28 = *(v26 + 8);
      v49 = v27;
      v50 = v28;
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
      sub_21CB84D64();
      v29 = v22 + *(v25 + 48);
      v30 = *v29;
      v31 = *(v29 + 8);
      v49 = v30;
      v50 = v31;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      return;
    }
  }

  v32 = sub_21CB81BD4();
  sub_21CB84D54();
  if (v23(v15, 1, v4))
  {
    sub_21C6EA794(v15, &qword_27CDEA500, &qword_21CB9E610);
    v33 = sub_21CB80A84();
    (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  }

  else
  {
    v34 = v44;
    sub_21C6EDBAC(v15, v44, &qword_27CDEA518, &unk_21CBAC380);
    sub_21C6EA794(v15, &qword_27CDEA500, &qword_21CB9E610);
    v35 = v45;
    sub_21C716934(v34, v45, &qword_27CDEA518, &unk_21CBAC380);
    v36 = swift_getEnumCaseMultiPayload();
    v37 = sub_21CB80A84();
    v38 = *(v37 - 8);
    v39 = v38;
    if (v36 > 1)
    {
      v40 = v46;
      (*(v38 + 56))(v46, 1, 1, v37);
      sub_21C6EA794(v35, &qword_27CDEA518, &unk_21CBAC380);
    }

    else
    {
      v40 = v46;
      (*(v38 + 32))(v46, v35, v37);
      (*(v39 + 56))(v40, 0, 1, v37);
    }

    sub_21C716934(v40, v47, &qword_27CDEF470, &qword_21CBC94D0);
  }

  sub_21CB81B34();
}

uint64_t sub_21C8A6F70@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF660, &qword_21CBAC5B0);
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v32 = v30 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF698, &qword_21CBAC5C8);
  MEMORY[0x28223BE20](v2);
  v4 = v30 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6A0, &qword_21CBAC5D0);
  MEMORY[0x28223BE20](v34);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF640, &qword_21CBAC5A0);
  MEMORY[0x28223BE20](v7);
  v36 = v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF650, &qword_21CBAC5A8);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
  sub_21CB84D54();
  v17 = sub_21CB81B84();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v30[0] = v7;
    v30[1] = v2;
    sub_21C6EDBAC(v16, v13, &qword_27CDEF3D0, &qword_21CBAC198);
    v19 = (*(v18 + 88))(v13, v17);
    if (v19 == *MEMORY[0x277CF03E0])
    {
      v20 = v32;
      sub_21C8A7AEC(v32);
      v21 = v33;
      v22 = v37;
      (*(v33 + 16))(v6, v20, v37);
      swift_storeEnumTagMultiPayload();
      v23 = MEMORY[0x277CDF038];
      sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8, MEMORY[0x277CDF038]);
      sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0, v23);
      v24 = v36;
      sub_21CB83494();
      sub_21C6EDBAC(v24, v4, &qword_27CDEF640, &qword_21CBAC5A0);
      swift_storeEnumTagMultiPayload();
      sub_21C8AF278();
      sub_21CB83494();
      sub_21C6EA794(v24, &qword_27CDEF640, &qword_21CBAC5A0);
      (*(v21 + 8))(v20, v22);
      return sub_21C6EA794(v16, &qword_27CDEF3D0, &qword_21CBAC198);
    }

    if (v19 == *MEMORY[0x277CF03E8])
    {
      sub_21C8A7614(v10);
      v25 = v31;
      v26 = v35;
      (*(v31 + 16))(v6, v10, v35);
      swift_storeEnumTagMultiPayload();
      v27 = MEMORY[0x277CDF038];
      sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8, MEMORY[0x277CDF038]);
      sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0, v27);
      v28 = v36;
      sub_21CB83494();
      sub_21C6EDBAC(v28, v4, &qword_27CDEF640, &qword_21CBAC5A0);
      swift_storeEnumTagMultiPayload();
      sub_21C8AF278();
      sub_21CB83494();
      sub_21C6EA794(v28, &qword_27CDEF640, &qword_21CBAC5A0);
      (*(v25 + 8))(v10, v26);
      return sub_21C6EA794(v16, &qword_27CDEF3D0, &qword_21CBAC198);
    }

    (*(v18 + 8))(v13, v17);
  }

  swift_storeEnumTagMultiPayload();
  sub_21C8AF278();
  sub_21CB83494();
  return sub_21C6EA794(v16, &qword_27CDEF3D0, &qword_21CBAC198);
}

uint64_t sub_21C8A7614@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = (v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28));
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v46 = *v9;
  LOBYTE(v47) = v10;
  v48 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D74();
  v37 = v42;
  v38 = v41;
  v12 = v43;
  v40 = v44;
  v13 = v45;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();

  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = sub_21C8A8BDC();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
  }

  else
  {
    sub_21CB81014();
    v17 = sub_21CB81004();
    v18 = v19;
    v14(v8, v2);
  }

  v20 = sub_21CB84BB4();
  sub_21C8A8BDC();
  if (v21)
  {

    v22 = sub_21CB84B14();
  }

  else
  {
    v22 = sub_21CB84A64();
  }

  v41 = v22;
  v23 = sub_21CB82384();
  v36 = v29;
  MEMORY[0x28223BE20](v23);
  v33 = v28;
  v34 = v18;
  v35 = v29;
  *&v46 = v17;
  *(&v46 + 1) = v18;
  v47 = v20;
  v48 = v24;
  v32 = v24;
  v41 = v38;
  v42 = v37;
  v25 = v40;
  v43 = v12;
  v44 = v40;
  v45 = v13;
  MEMORY[0x28223BE20](v24);

  sub_21C79B068(v12, v25, v13);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  v31 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6A8, &qword_21CBAC5D8);
  sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530, &unk_21CBCF678);
  v26 = sub_21C8AF540();
  v28[1] = sub_21C6EADEC(&qword_27CDEF6C0, &qword_27CDEF6A8, &qword_21CBAC5D8, MEMORY[0x277CE14C0]);
  v28[2] = MEMORY[0x277CE1410];
  v28[0] = v26;
  sub_21CB84E34();

  sub_21C8ADF14(v31, v40, v30);
}

uint64_t sub_21C8A7AEC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = (v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32));
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v9[2];
  v41 = v10;
  LOBYTE(v42) = v11;
  v43 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D74();
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v48;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();

  v17 = *(v3 + 8);
  v17(v5, v2);
  v17(v8, v2);
  v18 = sub_21C8AA738();
  if (!v19)
  {
    v18 = sub_21C8AA814();
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_21CB84BB4();
  v23 = sub_21CB84A34();
  sub_21C8AA738();
  if (v24)
  {
  }

  else if ((sub_21C8A209C() & 1) == 0)
  {
    v25 = sub_21CB84A64();
    goto LABEL_7;
  }

  v25 = sub_21CB84B14();
LABEL_7:
  v45 = v25;
  v26 = sub_21CB82384();
  v39 = &v31;
  MEMORY[0x28223BE20](v26);
  v36 = v27;
  v37 = v30;
  v38 = &v31;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v27;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  MEMORY[0x28223BE20](v27);
  v35 = v30;

  sub_21C79B094(v15, v16);
  v34 = v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF770, &qword_21CBAC690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF778, &qword_21CBAC698);
  v33 = v21;
  sub_21C6EADEC(&qword_27CDEF780, &qword_27CDEF770, &qword_21CBAC690, &unk_21CBCF678);
  v28 = sub_21C8AF608();
  v30[1] = sub_21C6EADEC(&qword_27CDEF798, &qword_27CDEF778, &qword_21CBAC698, MEMORY[0x277CE14C0]);
  v30[2] = MEMORY[0x277CE1410];
  v30[0] = v28;
  sub_21CB84E34();

  sub_21C8ADEEC(v34, v32);
}

uint64_t sub_21C8A7FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - v6;
  v54 = sub_21CB81604();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v48 - v11;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v50 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v15 = (a3 + *(v50 + 28));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v57 = *v15;
  v58 = v17;
  LOBYTE(v59) = v18;
  v60 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v56 < 2u)
  {
    sub_21C8ADF14(v55, *(&v55 + 1), v56);
    v20 = sub_21CB81BD4();
    v57 = v16;
    v58 = v17;
    LOBYTE(v59) = v18;
    v60 = v19;
    sub_21CB84D54();
    if (v56 == 255)
    {
      v21 = v53;
    }

    else
    {
      v21 = v53;
      if (v56 >= 2u)
      {
        sub_21C8ADF14(v55, *(&v55 + 1), v56);
      }
    }

    sub_21CB81A84();

    goto LABEL_24;
  }

  if (v56 != 255)
  {
    if (v55 == 0)
    {
      v57 = v16;
      v58 = v17;
      LOBYTE(v59) = v18;
      v60 = v19;
      *&v55 = v13;
      *(&v55 + 1) = v12;
      v56 = v14;
      sub_21C79B068(v13, v12, v14);
      sub_21CB84D64();
      v24 = v50;
      v25 = (a3 + *(v50 + 52));
      v26 = *v25;
      v27 = *(v25 + 1);
      LOBYTE(v57) = v26;
      v58 = v27;
      LOBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
      sub_21CB84D64();
      v28 = (a3 + *(v24 + 48));
      v29 = *v28;
      v30 = *(v28 + 1);
      LOBYTE(v57) = v29;
      v58 = v30;
      LOBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
LABEL_22:
      sub_21CB84D64();
      goto LABEL_23;
    }

    if (!(v55 ^ 1 | *(&v55 + 1)))
    {
      v23 = sub_21CB81BD4();
      sub_21CB81B54();
      sub_21CB81AD4();
      sub_21CB81A84();

      goto LABEL_23;
    }

    v31 = sub_21CB81BD4();
    v32 = sub_21CB81AB4();

    if (v32 >> 62)
    {
      result = sub_21CB85FA4();
      v34 = v50;
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v50;
      if (result)
      {
LABEL_15:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x21CF15BD0](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = *(v32 + 32);
        }

        v36 = v35;

        v37 = (a3 + *(v34 + 32));
        v38 = *v37;
        v39 = *(v37 + 8);
        v40 = v37[2];
        v57 = v38;
        LOBYTE(v58) = v39;
        v59 = v40;
        *&v55 = v36;
        BYTE8(v55) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
        sub_21CB84D64();
        goto LABEL_21;
      }
    }

LABEL_21:
    v41 = *MEMORY[0x277CF03E0];
    v42 = sub_21CB81B84();
    v43 = *(v42 - 8);
    v44 = v48;
    (*(v43 + 104))(v48, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    sub_21C6EDBAC(v44, v49, &qword_27CDEF3D0, &qword_21CBAC198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
    sub_21CB84D64();
    sub_21C6EA794(v44, &qword_27CDEF3D0, &qword_21CBAC198);
    v57 = v16;
    v58 = v17;
    LOBYTE(v59) = v18;
    v60 = v19;
    v55 = 0uLL;
    v56 = -1;
    goto LABEL_22;
  }

  v22 = sub_21CB81BD4();
  sub_21CB81A84();

LABEL_23:
  v21 = v53;
LABEL_24:
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  v45 = v52;
  v46 = v54;
  if ((*(v52 + 48))(v21, 1, v54) == 1)
  {
    return sub_21C6EA794(v21, &qword_27CDF85D0, &qword_21CBC9430);
  }

  v47 = v51;
  (*(v45 + 32))(v51, v21, v46);
  sub_21CB05380();
  return (*(v45 + 8))(v47, v46);
}

uint64_t sub_21C8A85EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - v6;
  v7 = sub_21CB81604();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v17 = a3 + v16[8];
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  *&v53 = *v17;
  BYTE8(v53) = v19;
  v54 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  v21 = v50;
  if (v51 >= 2u)
  {
    if (v51 == 255)
    {
      v26 = sub_21CB81BD4();
      sub_21CB81A64();
    }

    else
    {
      if (v50)
      {
        if (v50 != 1)
        {
          v27 = sub_21CB81BD4();
          v28 = sub_21CB81AC4();

          if (v28[2])
          {
            v30 = v28[4];
            v29 = v28[5];

            v31 = (a3 + v16[7]);
            v32 = *(v31 + 16);
            v33 = *(v31 + 3);
            v53 = *v31;
            LOBYTE(v54) = v32;
            v55 = v33;
            v50 = v30;
            v51 = v29;
            v52 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
            sub_21CB84D64();
          }

          else
          {
          }

          v40 = *MEMORY[0x277CF03E8];
          v41 = sub_21CB81B84();
          v42 = *(v41 - 8);
          (*(v42 + 104))(v13, v40, v41);
          (*(v42 + 56))(v13, 0, 1, v41);
          sub_21C6EDBAC(v13, v45, &qword_27CDEF3D0, &qword_21CBAC198);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
          sub_21CB84D64();
          sub_21C6EA794(v13, &qword_27CDEF3D0, &qword_21CBAC198);
          *&v53 = v18;
          BYTE8(v53) = v19;
          v54 = v20;
          v50 = 0;
          LOBYTE(v51) = -1;
          sub_21C79B094(v18, v19);

          sub_21CB84D64();
          sub_21C8ADEEC(2, 2u);
          sub_21C8ADEEC(v18, v19);

          goto LABEL_17;
        }
      }

      else
      {
        *&v53 = v18;
        BYTE8(v53) = v19;
        v54 = v20;
        v50 = v14;
        LOBYTE(v51) = v15;
        sub_21C79B094(v14, v15);
        sub_21CB84D64();
        v34 = (a3 + v16[13]);
        v35 = *v34;
        v36 = *(v34 + 1);
        LOBYTE(v53) = v35;
        *(&v53 + 1) = v36;
        LOBYTE(v50) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
        sub_21CB84D64();
        v37 = (a3 + v16[12]);
        v38 = *v37;
        v39 = *(v37 + 1);
        LOBYTE(v53) = v38;
        *(&v53 + 1) = v39;
        LOBYTE(v50) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
        sub_21CB84D64();
        v21 = 0;
      }

      sub_21C8ADEEC(v21, 2u);
    }

LABEL_17:
    v24 = v48;
    v23 = v49;
    v25 = v47;
    goto LABEL_18;
  }

  sub_21C8ADEEC(v50, v51);
  v22 = sub_21CB81BD4();
  *&v53 = v18;
  BYTE8(v53) = v19;
  v54 = v20;
  sub_21CB84D54();
  if (v51 == 255)
  {
    v24 = v48;
    v23 = v49;
    v25 = v47;
  }

  else
  {
    v23 = v49;
    v25 = v47;
    v24 = v48;
    if (v51 >= 2u)
    {
      sub_21C8ADEEC(v50, v51);
    }
  }

  sub_21CB81A64();

LABEL_18:
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_21C6EA794(v23, &qword_27CDF85D0, &qword_21CBC9430);
  }

  v44 = v46;
  (*(v25 + 32))(v46, v23, v24);
  sub_21CB05380();
  return (*(v25 + 8))(v44, v24);
}

uint64_t sub_21C8A8BDC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28));
  v6 = *(v5 + 16);
  v7 = *(v5 + 3);
  v25 = *v5;
  v26 = v6;
  v27 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  result = v22;
  if (v24 <= 1u)
  {
    if (v24 < 2u)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v24 == 255)
  {
    return 0;
  }

  if (v24 != 2 || v22 != 1 || v23)
  {
LABEL_14:
    sub_21C8ADF14(v22, v23, v24);
    return 0;
  }

  sub_21CB81B54();
  *&v25 = sub_21CB81AD4();
  *(&v25 + 1) = v9;

  MEMORY[0x21CF151F0](10, 0xE100000000000000);

  v10 = v25;
  sub_21CB81014();
  sub_21CB81004();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  v12 = sub_21CB81BD4();
  v13 = sub_21CB81AA4();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v18 = sub_21CB85594();
  v20 = v19;

  v25 = v10;

  MEMORY[0x21CF151F0](v18, v20);
  sub_21C8ADF14(1, 0, 2u);

  return v25;
}

uint64_t sub_21C8A8EA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6C8, &qword_21CBAC5E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = &v62 - v5;
  v6 = sub_21CB81B84();
  v68 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6D0, &qword_21CBAC5E8);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6D8, &qword_21CBAC5F0);
  v12 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6E0, &qword_21CBAC5F8);
  MEMORY[0x28223BE20](v14 - 8);
  v73 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6E8, &qword_21CBAC600);
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x28223BE20](v19);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6F0, &qword_21CBAC608);
  sub_21C6EADEC(&qword_27CDEF6F8, &qword_27CDEF6F0, &qword_21CBAC608, MEMORY[0x277CE14C0]);
  v77 = v23;
  sub_21CB85054();
  v24 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 44);
  v66 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v79) = v26;
  v80 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v75 = v18;
  if (v83 == 1)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF710, &qword_21CBAC628);
    v28 = v3;
    v29 = v6;
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA528, &qword_21CBAC630);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
    v32 = sub_21C6EADEC(&qword_27CDEF718, &qword_27CDEA528, &qword_21CBAC630, MEMORY[0x277CDEFF0]);
    v33 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8, &unk_21CBAC1F8);
    v79 = v30;
    v80 = v31;
    v6 = v29;
    v3 = v28;
    v18 = v75;
    v81 = v32;
    v82 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v63;
    sub_21CB85054();
    v35 = v34;
    v36 = v65;
    (*(v12 + 32))(v18, v35, v65);
    v37 = 0;
    v38 = v36;
  }

  else
  {
    v37 = 1;
    v38 = v65;
  }

  v39 = 1;
  (*(v12 + 56))(v18, v37, 1, v38);
  v40 = sub_21CB81BC4();
  v41 = sub_21CB81B74();

  v43 = v67;
  v42 = v68;
  (*(v68 + 104))(v67, *MEMORY[0x277CF03E0], v6);
  LOBYTE(v40) = sub_21C8A122C(v43, v41, MEMORY[0x277CF03F0], &qword_27CDEF740, MEMORY[0x277CF03F0], MEMORY[0x277CF03F8]);

  (*(v42 + 8))(v43, v6);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF708, &unk_21CBAC618);
    v44 = v3;
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
    v47 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v48 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8, &unk_21CBAC1F8);
    v79 = v45;
    v80 = v46;
    v3 = v44;
    v81 = v47;
    v82 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v64;
    sub_21CB85054();
    (*(v4 + 32))(v76, v49, v44);
    v39 = 0;
  }

  v50 = v76;
  (*(v4 + 56))(v76, v39, 1, v3);
  v52 = v69;
  v51 = v70;
  v53 = *(v70 + 16);
  v54 = v71;
  v53(v69, v77, v71);
  v55 = v75;
  v56 = v73;
  sub_21C6EDBAC(v75, v73, &qword_27CDEF6E0, &qword_21CBAC5F8);
  v57 = v72;
  sub_21C6EDBAC(v50, v72, &qword_27CDEF6D0, &qword_21CBAC5E8);
  v58 = v74;
  v53(v74, v52, v54);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF700, &qword_21CBAC610);
  sub_21C6EDBAC(v56, &v58[*(v59 + 48)], &qword_27CDEF6E0, &qword_21CBAC5F8);
  sub_21C6EDBAC(v57, &v58[*(v59 + 64)], &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v50, &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v55, &qword_27CDEF6E0, &qword_21CBAC5F8);
  v60 = *(v51 + 8);
  v60(v77, v54);
  sub_21C6EA794(v57, &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v56, &qword_27CDEF6E0, &qword_21CBAC5F8);
  return (v60)(v52, v54);
}

uint64_t sub_21C8A97DC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF748, &qword_21CBAC648);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v66 = &v59[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF750, &qword_21CBAC650);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v72 = &v59[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF758, &qword_21CBAC658);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF760, &qword_21CBAC660);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v59[-v17];
  v19 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28);
  v65 = a1;
  v20 = &a1[v19];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = v20[16];
  v24 = *(v20 + 3);
  *&v78 = *v20;
  *(&v78 + 1) = v22;
  LOBYTE(v79) = v23;
  v80 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v77 == 255)
  {
    goto LABEL_5;
  }

  if (v77 != 1)
  {
    sub_21C8ADF14(v76, *(&v76 + 1), v77);
LABEL_5:
    (*(v11 + 56))(v18, 1, 1, v10);
    goto LABEL_6;
  }

  v78 = v76;
  sub_21C71F3FC();
  v25 = sub_21CB84054();
  v62 = v26;
  v63 = v25;
  v60 = v27;
  v61 = v28;
  *&v78 = v21;
  *(&v78 + 1) = v22;
  LOBYTE(v79) = v23;
  v80 = v24;
  sub_21CB84D54();
  v29 = v77;
  v30 = v76;
  v31 = v60 & 1;
  LOBYTE(v78) = v60 & 1;
  v32 = v62;
  *v13 = v63;
  *(v13 + 1) = v32;
  v13[16] = v31;
  *(v13 + 3) = v61;
  *(v13 + 2) = v30;
  v13[48] = v29;
  v13[49] = 1;
  (*(v11 + 32))(v18, v13, v10);
  (*(v11 + 56))(v18, 0, 1, v10);
LABEL_6:
  v64 = v18;
  v33 = sub_21CB81BD4();
  v34 = sub_21CB81AC4();

  *&v76 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C6EADEC(&qword_27CDEBEE8, &qword_27CDEBED0, &unk_21CBA1A60, MEMORY[0x277D83980]);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
  v36 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8, &unk_21CBAC1F8);
  *&v78 = MEMORY[0x277CE0BD8];
  *(&v78 + 1) = v35;
  v79 = MEMORY[0x277CE0BC8];
  v80 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v72;
  sub_21CB84FD4();
  *&v78 = sub_21C8A9F38();
  *(&v78 + 1) = v38;
  sub_21C71F3FC();
  v39 = sub_21CB84054();
  LOBYTE(v78) = v40 & 1;
  v41 = v66;
  *v66 = v39;
  v41[1] = v42;
  *(v41 + 16) = v40 & 1;
  v41[4] = 0;
  v41[5] = 0;
  v41[3] = v43;
  *(v41 + 24) = 258;
  v44 = v71;
  sub_21C6EDBAC(v18, v71, &qword_27CDEF760, &qword_21CBAC660);
  v46 = v67;
  v45 = v68;
  v65 = *(v67 + 16);
  v47 = v73;
  (v65)(v73, v37, v68);
  v48 = v70;
  v49 = *(v70 + 16);
  v49(v74, v41, v75);
  v50 = v44;
  v51 = v69;
  sub_21C6EDBAC(v50, v69, &qword_27CDEF760, &qword_21CBAC660);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF768, &qword_21CBAC688);
  (v65)(v51 + *(v52 + 48), v47, v45);
  v53 = v51 + *(v52 + 64);
  v54 = v74;
  v55 = v75;
  v49(v53, v74, v75);
  v56 = *(v48 + 8);
  v56(v41, v55);
  v57 = *(v46 + 8);
  v57(v72, v45);
  sub_21C6EA794(v64, &qword_27CDEF760, &qword_21CBAC660);
  v56(v54, v55);
  v57(v73, v45);
  return sub_21C6EA794(v71, &qword_27CDEF760, &qword_21CBAC660);
}

uint64_t sub_21C8A9EB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21C71F3FC();

  *a2 = sub_21CB84054();
  *(a2 + 8) = v6;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 256;
}

uint64_t sub_21C8A9F38()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28));
  v6 = *(v5 + 16);
  v7 = *(v5 + 3);
  v13 = *v5;
  v14 = v6;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v12 == 255)
  {
    v8 = sub_21CB81BD4();
    sub_21CB81AC4();
  }

  else
  {
    sub_21C8ADF14(v11[1], v11[2], v12);
  }

  sub_21CB81014();
  v9 = sub_21CB81004();
  (*(v2 + 8))(v4, v1);
  return v9;
}

double sub_21C8AA0E4@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA528, &qword_21CBAC630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF720, &qword_21CBAC638);
  sub_21C6EADEC(&qword_27CDEF728, &qword_27CDEF720, &qword_21CBAC638, MEMORY[0x277CDD6A8]);
  sub_21CB84C84();
  (*(v3 + 32))(a1, v5, v2);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA530, &unk_21CB9E640) + 36);
  *&result = 1;
  *v6 = xmmword_21CBA3540;
  *(v6 + 16) = 258;
  return result;
}

uint64_t sub_21C8AA284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0, MEMORY[0x277CE14C0]);

  return sub_21CB81FC4();
}

uint64_t sub_21C8AA328@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81B54();
  v26 = sub_21CB81AD4();
  v27 = v6;
  sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v24 = v10;
  v12 = v11;
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v26 = v13;
  v27 = v15;
  v16 = sub_21CB84054();
  v18 = v17;
  v19 = v24 & 1;
  v25 = v24 & 1;
  LOBYTE(v26) = v24 & 1;
  LOBYTE(v15) = v20 & 1;
  v28 = v20 & 1;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v19;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v21;
  sub_21C79B058(v7, v9, v19);

  sub_21C79B058(v16, v18, v15);

  sub_21C74A72C(v16, v18, v15);

  sub_21C74A72C(v7, v9, v25);
}

double sub_21C8AA52C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v15[0] = v10;
  v15[1] = v12;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v7 + 32))(a1, v9, v6);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA538, &qword_21CBAC640) + 36);
  *&result = 2;
  *v13 = xmmword_21CBAC090;
  *(v13 + 16) = 258;
  return result;
}

uint64_t sub_21C8AA738()
{
  type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v5 != 255)
  {
    if (v5 == 1)
    {
      v0 = sub_21CB81A24();
      v1 = v4;
      v2 = 1;
      goto LABEL_6;
    }

    if (!v5)
    {
      v0 = sub_21CB81A24();
      v1 = v4;
      v2 = 0;
LABEL_6:
      sub_21C8ADEEC(v1, v2);
      return v0;
    }

    sub_21C8ADEEC(v4, v5);
  }

  return 0;
}

uint64_t sub_21C8AA814()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C8A209C())
  {
    v4 = sub_21CB81BD4();
    v5 = sub_21CB81AB4();

    if (v5 >> 62)
    {
      sub_21CB85FA4();
    }
  }

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_21C8AA994@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7A0, &qword_21CBAC6A0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - v4;
  v5 = sub_21CB81B84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7A8, &qword_21CBAC6A8);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7B0, &qword_21CBAC6B0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7B8, &qword_21CBAC6B8);
  sub_21C6EADEC(&qword_27CDEF7C0, &qword_27CDEF7B8, &qword_21CBAC6B8, MEMORY[0x277CE14C0]);
  v19 = v18;
  sub_21CB85054();
  v20 = sub_21CB81BC4();
  v21 = sub_21CB81B74();

  (*(v6 + 104))(v8, *MEMORY[0x277CF03E8], v5);
  LOBYTE(v20) = sub_21C8A122C(v8, v21, MEMORY[0x277CF03F0], &qword_27CDEF740, MEMORY[0x277CF03F0], MEMORY[0x277CF03F8]);

  (*(v6 + 8))(v8, v5);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7D0, &unk_21CBAC6C8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF690, &qword_21CBAC5C0);
    v24 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v25 = sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0, &unk_21CBAC1F8);
    v52 = v22;
    v53 = v23;
    v54 = v24;
    v55 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v43;
    sub_21CB85054();
    v27 = v47;
    v28 = v26;
    v29 = v48;
    (*(v47 + 32))(v13, v28, v48);
    v30 = 0;
    v31 = v29;
    v32 = v27;
  }

  else
  {
    v30 = 1;
    v32 = v47;
    v31 = v48;
  }

  v33 = v13;
  (*(v32 + 56))(v13, v30, 1, v31);
  v34 = v44;
  v35 = v45;
  v36 = *(v44 + 16);
  v37 = v46;
  v36(v46, v19, v45);
  v38 = v49;
  sub_21C6EDBAC(v33, v49, &qword_27CDEF7A8, &qword_21CBAC6A8);
  v39 = v50;
  v36(v50, v37, v35);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7C8, &qword_21CBAC6C0);
  sub_21C6EDBAC(v38, &v39[*(v40 + 48)], &qword_27CDEF7A8, &qword_21CBAC6A8);
  sub_21C6EA794(v33, &qword_27CDEF7A8, &qword_21CBAC6A8);
  v41 = *(v34 + 8);
  v41(v19, v35);
  sub_21C6EA794(v38, &qword_27CDEF7A8, &qword_21CBAC6A8);
  return (v41)(v37, v35);
}

uint64_t sub_21C8AAF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v67 = sub_21CB81024();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v69 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7D8, &qword_21CBAC6D8);
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v72 = &v63[-v6];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7E0, &qword_21CBAC6E0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v78 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v77 = &v63[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7E8, &qword_21CBAC6E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7F0, &qword_21CBAC6F0);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v81 = &v63[-v17];
  v18 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32);
  v68 = a1;
  v19 = a1 + v18;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v82 = *v19;
  LOBYTE(v83) = v21;
  v84 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v87 == 255)
  {
    goto LABEL_5;
  }

  v23 = v86;
  if (v87 != 1)
  {
    sub_21C8ADEEC(v86, v87);
LABEL_5:
    v32 = 1;
    goto LABEL_6;
  }

  v82 = sub_21CB81A24();
  v83 = v24;
  sub_21C71F3FC();
  v66 = sub_21CB84054();
  v65 = v25;
  v64 = v26;
  v28 = v27;
  v82 = v20;
  LOBYTE(v83) = v21;
  v84 = v22;
  sub_21CB84D54();
  sub_21C8ADEEC(v23, 1u);
  v29 = v86;
  v30 = v87;
  v31 = v65;
  *v13 = v66;
  *(v13 + 1) = v31;
  v13[16] = v64 & 1;
  *(v13 + 3) = v28;
  *(v13 + 4) = v29;
  v13[40] = v30;
  v13[41] = 1;
  (*(v11 + 32))(v81, v13, v10);
  v32 = 0;
LABEL_6:
  v33 = v81;
  (*(v11 + 56))(v81, v32, 1, v10);
  v34 = sub_21CB81BD4();
  v35 = sub_21CB81AB4();

  v86 = v35;
  swift_getKeyPath(byte_21CBAC6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7F8, &qword_21CBAC710);
  sub_21C6EADEC(&qword_27CDEF800, &qword_27CDEF7F8, &qword_21CBAC710, MEMORY[0x277D83980]);
  sub_21C8AF988(&qword_27CDEF808, MEMORY[0x277CF03D0], MEMORY[0x277D85378]);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF690, &qword_21CBAC5C0);
  v37 = sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0, &unk_21CBAC1F8);
  v82 = MEMORY[0x277CE0BD8];
  v83 = v36;
  v84 = MEMORY[0x277CE0BC8];
  v85 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v77;
  v39 = v80;
  sub_21CB84FD4();
  v40 = v69;
  sub_21CB81014();
  v41 = sub_21CB81004();
  v43 = v42;
  (*(v70 + 8))(v40, v67);
  v82 = v41;
  v83 = v43;
  sub_21C71F3FC();
  v44 = sub_21CB84054();
  v45 = v72;
  *v72 = v44;
  v45[1] = v46;
  *(v45 + 16) = v47 & 1;
  v45[3] = v48;
  v45[4] = 0;
  *(v45 + 20) = 258;
  v49 = v76;
  sub_21C6EDBAC(v33, v76, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v50 = v71;
  v70 = *(v71 + 16);
  v51 = v78;
  v52 = v73;
  (v70)(v78, v38, v73);
  v53 = v74;
  v54 = *(v74 + 16);
  v54(v79, v45, v39);
  v55 = v75;
  sub_21C6EDBAC(v49, v75, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF810, &qword_21CBAC718);
  (v70)(v55 + *(v56 + 48), v51, v52);
  v57 = v55 + *(v56 + 64);
  v58 = v79;
  v59 = v80;
  v54(v57, v79, v80);
  v60 = *(v53 + 8);
  v60(v45, v59);
  v61 = *(v50 + 8);
  v61(v77, v52);
  sub_21C6EA794(v81, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v60(v58, v59);
  v61(v78, v52);
  return sub_21C6EA794(v76, &qword_27CDEF7F0, &qword_21CBAC6F0);
}

id sub_21C8AB760@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  sub_21CB81A24();
  sub_21C71F3FC();
  *a2 = sub_21CB84054();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = 256;

  return v7;
}

uint64_t sub_21C8AB7E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v15[0] = v10;
  v15[1] = v12;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v7 + 32))(a1, v9, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA540, &unk_21CB9E650);
  v14 = a1 + *(result + 36);
  *v14 = 2;
  *(v14 + 8) = 258;
  return result;
}

uint64_t sub_21C8AB9EC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_21CB81BD4();
  v9 = (v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 36));
  v10 = *(v9 + 2);
  v19 = *v9;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v11 = sub_21CB81B44();
  v13 = v12;

  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21CBA0690;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21C7C0050();
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  v16 = sub_21CB85594();

  return v16;
}

uint64_t sub_21C8ABC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v3 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81BD4();
  v7 = sub_21CB81AF4();

  v15[5] = v7;
  sub_21C8AEA48(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_21C8AE898(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5E8, &qword_21CBAC570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5F0, &qword_21CBAC578);
  sub_21C6EADEC(&qword_27CDEF5F8, &qword_27CDEF5E8, &qword_21CBAC570, MEMORY[0x277D83980]);
  v10 = sub_21C8AEF68(&qword_27CDEF5C8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA548, qword_21CBAC540);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
  v13 = sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540, MEMORY[0x277CDEFF0]);
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_21CB84FD4();
}

uint64_t sub_21C8ABECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA548, qword_21CBAC540);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v11 = *a1;
  v10 = a1[1];
  v18 = a2;
  v19 = v11;
  v20 = v10;
  v15 = a2;
  v16 = v11;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF600, &qword_21CBAC580);
  sub_21C8AF06C();
  sub_21CB84C84();
  (*(v7 + 32))(a3, v9, v6);
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA550, &qword_21CB9E660) + 36);
  *v12 = v11;
  *(v12 + 8) = v10;
  *(v12 + 16) = 1;
}

uint64_t sub_21C8AC060@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_21CB81BD4();
  sub_21CB81B44();

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8 & 1;
  *(a4 + 24) = v9;
  return result;
}

uint64_t sub_21C8AC0E8@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    sub_21CB855C4();
  }

  v3 = objc_opt_self();

  v4 = sub_21CB85584();

  [objc_opt_self() cellIconSize];
  v5 = [v3 iconForApplicationIdentifier:v4 size:?];

  if (v5)
  {
    result = sub_21CB84BA4();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_21C8AC1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21CB81604();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81BD4();
  v10 = (a1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 36));
  v11 = *(v10 + 2);
  v14 = *v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  sub_21CB81B14();

  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21C6EA794(v4, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_21CB05380();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21C8AC414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[8] = a2;
  v12[9] = a1;
  v3 = sub_21C8AC5D4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v15 = v5;
  v16 = v6;
  v13 = *(v2 + 8);
  v14 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v12[7] = v12;
  LOBYTE(v13) = *v2;
  v12[12] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF480, &qword_21CBAC390);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF488, &unk_21CBAC398);
  v8 = sub_21C6EADEC(&qword_27CDEF490, &qword_27CDEF480, &qword_21CBAC390, MEMORY[0x277CE04B0]);
  v9 = sub_21C71F3FC();
  v10 = sub_21C6EADEC(&qword_27CDEF498, &qword_27CDEF488, &unk_21CBAC398, MEMORY[0x277CE14C0]);
  v12[4] = v9;
  v12[5] = v10;
  v12[2] = &type metadata for UserInputAlert.Context;
  v12[3] = v8;
  v12[0] = MEMORY[0x277D837D0];
  v12[1] = v7;
  sub_21CB84734();
}

uint64_t sub_21C8AC5D4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 <= 1u || (v5 = 0, *v0 == 2))
  {
    sub_21CB81014();
    v5 = sub_21CB81004();
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t sub_21C8AC738@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = v97 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = v97 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v103);
  v117 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = v97 - v12;
  v102 = sub_21CB81024();
  v113 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4A0, &qword_21CBAC3A8);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = v97 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v20 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v22 = v97 - v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4A8, &qword_21CBAC3B8);
  MEMORY[0x28223BE20](v109);
  v100 = v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B0, &unk_21CBAC3C0);
  v120 = *(v27 - 8);
  v121 = v27;
  MEMORY[0x28223BE20](v27);
  v114 = v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v98 = v97 - v30;
  MEMORY[0x28223BE20](v31);
  v118 = v97 - v32;
  v110 = *a1;
  v33 = sub_21C8AE058(v110);
  v35 = v34;
  v125 = *(a2 + 3);
  v126 = *(a2 + 8);
  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  v123 = v33;
  v124 = v35;
  v111 = sub_21C71F3FC();
  sub_21CB85314();
  v36 = *a2;
  if (v36 == 3)
  {
    KeyPath = swift_getKeyPath(byte_21CBAC3D0);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = **(&unk_27831D020 + v36);
    KeyPath = swift_getKeyPath(byte_21CBAC3D0);
    v38 = sub_21CB855C4();
    v39 = v41;
  }

  (*(v20 + 32))(v26, v22, v101);
  v42 = &v26[*(v109 + 36)];
  *v42 = KeyPath;
  v42[1] = v38;
  v42[2] = v39;
  v97[2] = v36;
  v43 = v102;
  LODWORD(v38) = v110;
  sub_21C8AE240();
  sub_21CB841D4();
  sub_21C6EA794(v26, &qword_27CDEF4A8, &qword_21CBAC3B8);
  v44 = 1;
  if (!v38)
  {
    v45 = v112;
    sub_21CB81014();
    v46 = v43;
    v47 = v99;
    sub_21CB81014();
    v48 = sub_21CB80FF4();
    v50 = v49;
    v51 = *(v113 + 8);
    v52 = v47;
    v43 = v46;
    v51(v52, v46);
    v51(v45, v46);
    v125 = *(a2 + 72);
    v126 = *(a2 + 11);
    sub_21CB84D74();
    v123 = v48;
    v124 = v50;
    v53 = v109;
    v54 = v100;
    sub_21CB85314();
    v55 = swift_getKeyPath(byte_21CBAC3D0);
    v56 = sub_21CB855C4();
    v57 = (v54 + *(v53 + 36));
    *v57 = v55;
    v57[1] = v56;
    v57[2] = v58;
    v38 = v98;
    sub_21CB841D4();
    sub_21C6EA794(v54, &qword_27CDEF4A8, &qword_21CBAC3B8);
    (*(v120 + 32))(v122, v38, v121);
    v44 = 0;
    LOBYTE(v38) = v110;
  }

  (*(v120 + 56))(v122, v44, 1, v121);
  v59 = v112;
  sub_21CB81014();
  v60 = sub_21CB81004();
  v62 = v61;
  v63 = *(v113 + 8);
  v63(v59, v43);
  *&v125 = v60;
  *(&v125 + 1) = v62;
  v64 = swift_allocObject();
  v65 = *(a2 + 3);
  *(v64 + 48) = *(a2 + 2);
  *(v64 + 64) = v65;
  v66 = *(a2 + 5);
  *(v64 + 80) = *(a2 + 4);
  *(v64 + 96) = v66;
  v67 = *(a2 + 1);
  *(v64 + 16) = *a2;
  *(v64 + 32) = v67;
  *(v64 + 112) = v38;
  sub_21C8AE330(a2, &v123);
  v68 = v115;
  sub_21CB84DE4();
  LOBYTE(v62) = sub_21C8AD7E8();
  v69 = swift_getKeyPath(byte_21CBAC408);
  v70 = swift_allocObject();
  *(v70 + 16) = (v62 & 1) == 0;
  v71 = (v68 + *(v103 + 36));
  *v71 = v69;
  v71[1] = sub_21C735744;
  v71[2] = v70;
  sub_21CB81014();
  v72 = sub_21CB81004();
  v74 = v73;
  v63(v59, v43);
  *&v125 = v72;
  *(&v125 + 1) = v74;
  v75 = v104;
  sub_21CB81EF4();
  v76 = sub_21CB81F14();
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  v77 = swift_allocObject();
  v78 = *(a2 + 3);
  v77[3] = *(a2 + 2);
  v77[4] = v78;
  v79 = *(a2 + 5);
  v77[5] = *(a2 + 4);
  v77[6] = v79;
  v80 = *(a2 + 1);
  v77[1] = *a2;
  v77[2] = v80;
  sub_21C8AE330(a2, &v123);
  v81 = v116;
  sub_21CB84DC4();
  v82 = v121;
  v83 = *(v120 + 16);
  v84 = v114;
  v83(v114, v118, v121);
  sub_21C6EDBAC(v122, v119, &qword_27CDEF4A0, &qword_21CBAC3A8);
  sub_21C6EDBAC(v68, v117, &qword_27CDEDA98, &unk_21CBABCB0);
  v85 = v106;
  v86 = *(v106 + 16);
  v87 = v105;
  v88 = v81;
  v89 = v108;
  v86(v105, v88, v108);
  v90 = v107;
  v83(v107, v84, v82);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4D8, &qword_21CBAC438);
  sub_21C6EDBAC(v119, &v90[v91[12]], &qword_27CDEF4A0, &qword_21CBAC3A8);
  v92 = v117;
  sub_21C6EDBAC(v117, &v90[v91[16]], &qword_27CDEDA98, &unk_21CBABCB0);
  v86(&v90[v91[20]], v87, v89);
  v93 = *(v85 + 8);
  v93(v116, v89);
  sub_21C6EA794(v115, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v122, &qword_27CDEF4A0, &qword_21CBAC3A8);
  v94 = v121;
  v95 = *(v120 + 8);
  v95(v118, v121);
  v93(v87, v89);
  sub_21C6EA794(v92, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v119, &qword_27CDEF4A0, &qword_21CBAC3A8);
  return (v95)(v114, v94);
}

uint64_t sub_21C8AD454(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  v5 = type metadata accessor for UserInputAlert.Result(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 32);
  sub_21C8AD560(v3, v7);
  v8(v7);
  sub_21C8AE390(v7);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v10 = 0;
  v11 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v10 = 0;
  v11 = 0xE000000000000000;
  return sub_21CB84D64();
}

uint64_t sub_21C8AD560@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v20 = *(v2 + 48);
  v21 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v9 = sub_21CB85584();

  v10 = [v9 safari_stringByTrimmingWhitespace];

  v11 = sub_21CB855C4();
  v13 = v12;

  v20 = *(v3 + 72);
  v21 = *(v3 + 88);
  sub_21CB84D54();
  v14 = sub_21CB85584();

  v15 = [v14 safari_stringByTrimmingWhitespace];

  sub_21CB855C4();
  if (a1)
  {

    if (a1 == 1)
    {
      *a2 = v11;
      a2[1] = v13;
    }

    else
    {
      v17 = objc_allocWithZone(sub_21CB81A44());
      *a2 = sub_21CB81A14();
    }

    type metadata accessor for UserInputAlert.Result(0);
  }

  else
  {
    v16 = sub_21CB80A84();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_21CB80A64();
    type metadata accessor for UserInputAlert.Result(0);
  }

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_21C8AD7E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v2 = sub_21CB85584();

  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = v3;
  v5 = v3;
  if (!v3)
  {
    sub_21CB855C4();
    v5 = sub_21CB85584();

    sub_21CB855C4();
    v4 = sub_21CB85584();
  }

  v6 = sub_21CB855C4();
  v8 = v7;
  v9 = v3;
  sub_21CB84D54();
  v10 = sub_21CB85584();

  v11 = [v10 safari_stringByTrimmingWhitespace];

  v12 = sub_21CB855C4();
  v14 = v13;

  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {

      v17 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v17 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [objc_opt_self() isStringPhoneNumber_];

LABEL_19:

        return v18;
      }
    }

    else
    {
    }

LABEL_26:

    return 0;
  }

  if (*v1)
  {

    v19 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v19 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v18 = [objc_opt_self() isStringEmailAddress_];

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 1;
  }

  v20 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  return v20 != 0;
}

uint64_t sub_21C8ADA88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  return sub_21CB84D64();
}

uint64_t sub_21C8ADB60@<X0>(char *a1@<X8>)
{
  v29 = sub_21CB83B84();
  v26 = *(v29 - 8);
  v2 = v26;
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v25 = &v25 - v5;
  v7 = sub_21CB83B94();
  v27 = *(v7 - 8);
  v8 = v27;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_21CB83BA4();
  sub_21CB83BB4();
  v14 = *(v8 + 16);
  v14(v10, v13, v7);
  v30 = 1;
  v15 = *(v2 + 16);
  v16 = v28;
  v17 = v6;
  v18 = v29;
  v15(v28, v17, v29);
  v14(a1, v10, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4E8, &unk_21CBAC448);
  v20 = &a1[*(v19 + 48)];
  v21 = v30;
  *v20 = 0;
  v20[8] = v21;
  v15(&a1[*(v19 + 64)], v16, v18);
  v22 = *(v26 + 8);
  v22(v25, v18);
  v23 = *(v27 + 8);
  v23(v13, v7);
  v22(v16, v18);
  return (v23)(v10, v7);
}