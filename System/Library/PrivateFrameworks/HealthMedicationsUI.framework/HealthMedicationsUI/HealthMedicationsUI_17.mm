uint64_t sub_2283314E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v167 = sub_22838F6C0();
  v8 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_228391060();
  v11 = *(v163 - 8);
  v12 = MEMORY[0x28223BE20](v163);
  v155 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v144 = &v134 - v17;
  MEMORY[0x28223BE20](v16);
  v143 = &v134 - v18;
  v19 = type metadata accessor for WeekdaysAndDosages(0);
  v149 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v141 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v159 = &v134 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v134 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v165 = &v134 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v153 = &v134 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v150 = &v134 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v134 = &v134 - v33;
  result = MEMORY[0x28223BE20](v32);
  v36 = *(a3 + 8);
  v152 = a3;
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_111:
    a4 = *v139;
    if (!*v139)
    {
      goto LABEL_153;
    }

    v8 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    result = v8;
LABEL_114:
    v169 = result;
    v8 = *(result + 16);
    if (v8 >= 2)
    {
      while (1)
      {
        v130 = *a3;
        if (!*a3)
        {
          goto LABEL_151;
        }

        a3 = *(result + 16 * v8);
        v131 = result;
        v132 = *(result + 16 * (v8 - 1) + 40);
        sub_2283329FC(v130 + *(v149 + 72) * a3, v130 + *(v149 + 72) * *(result + 16 * (v8 - 1) + 32), v130 + *(v149 + 72) * v132, a4);
        if (v5)
        {
        }

        if (v132 < a3)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_2283406C0(v131);
        }

        if (v8 - 2 >= *(v131 + 2))
        {
          goto LABEL_141;
        }

        v133 = &v131[16 * v8];
        *v133 = a3;
        *(v133 + 1) = v132;
        v169 = v131;
        sub_228340634(v8 - 1);
        result = v169;
        v8 = *(v169 + 16);
        a3 = v152;
        if (v8 <= 1)
        {
        }
      }
    }
  }

  v135 = &v134 - v35;
  v37 = 0;
  v166 = (v8 + 8);
  v161 = v11 + 8;
  v162 = v11 + 16;
  v38 = MEMORY[0x277D84F90];
  v138 = a4;
  v160 = v11;
  v156 = v19;
  while (1)
  {
    v142 = v38;
    if (v37 + 1 >= v36)
    {
      v47 = v37 + 1;
      goto LABEL_31;
    }

    v151 = v36;
    v39 = *a3;
    v8 = *(v149 + 72);
    v40 = v37;
    v41 = *a3 + v8 * (v37 + 1);
    v164 = type metadata accessor for WeekdaysAndDosages;
    v42 = v135;
    sub_228336908(v41, v135, type metadata accessor for WeekdaysAndDosages);
    v158 = v39;
    v43 = v39 + v8 * v40;
    v44 = v134;
    sub_228336908(v43, v134, v164);
    LODWORD(v157) = sub_22832FCE0(v42, v44);
    if (v5)
    {
      sub_228335E3C(v44, type metadata accessor for WeekdaysAndDosages);
      sub_228335E3C(v135, type metadata accessor for WeekdaysAndDosages);
    }

    v137 = 0;
    sub_228335E3C(v44, type metadata accessor for WeekdaysAndDosages);
    result = sub_228335E3C(v135, type metadata accessor for WeekdaysAndDosages);
    v136 = v40;
    v45 = v40 + 2;
    v46 = v158 + v8 * (v40 + 2);
    v47 = v151;
    a3 = v152;
    v158 = v8;
    while (v47 != v45)
    {
      sub_228336908(v46, v150, type metadata accessor for WeekdaysAndDosages);
      sub_228336908(v41, v153, type metadata accessor for WeekdaysAndDosages);
      sub_22838F680();
      v52 = sub_228391030();
      v53 = *v166;
      (*v166)(v10, v167);
      if (*(v52 + 16))
      {
        v54 = v143;
        v55 = v163;
        (*(v11 + 16))(v143, v52 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v163);

        v164 = sub_228391050();
        (*(v11 + 8))(v54, v55);
      }

      else
      {

        v164 = 0;
      }

      sub_22838F680();
      v56 = sub_228391030();
      v53(v10, v167);
      if (*(v56 + 16))
      {
        v48 = v144;
        v49 = v163;
        (*(v11 + 16))(v144, v56 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v163);

        v50 = sub_228391050();
        (*(v11 + 8))(v48, v49);
      }

      else
      {

        v50 = 0;
      }

      v47 = v151;
      a3 = v152;
      sub_228335E3C(v153, type metadata accessor for WeekdaysAndDosages);
      result = sub_228335E3C(v150, type metadata accessor for WeekdaysAndDosages);
      v51 = v164 >= v50;
      ++v45;
      v8 = v158;
      v46 += v158;
      v41 += v158;
      if (((v157 ^ v51) & 1) == 0)
      {
        v47 = v45 - 1;
        break;
      }
    }

    v5 = v137;
    a4 = v138;
    v37 = v136;
    if (v157)
    {
      if (v47 < v136)
      {
        goto LABEL_146;
      }

      if (v136 < v47)
      {
        v57 = v8 * (v47 - 1);
        v58 = v47;
        v59 = v47 * v8;
        v151 = v58;
        v60 = v58;
        v61 = v136;
        v62 = v136 * v8;
        do
        {
          if (v61 != --v60)
          {
            v63 = *a3;
            if (!v63)
            {
              goto LABEL_150;
            }

            sub_228336ACC(v63 + v62, v141, type metadata accessor for WeekdaysAndDosages);
            if (v62 < v57 || v63 + v62 >= v63 + v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_228336ACC(v141, v63 + v57, type metadata accessor for WeekdaysAndDosages);
            a3 = v152;
            v8 = v158;
          }

          ++v61;
          v57 -= v8;
          v59 -= v8;
          v62 += v8;
        }

        while (v61 < v60);
        v5 = v137;
        a4 = v138;
        v37 = v136;
        v47 = v151;
      }
    }

LABEL_31:
    v64 = *(a3 + 8);
    if (v47 >= v64)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v47, v37))
    {
      goto LABEL_143;
    }

    if (v47 - v37 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v37, a4))
    {
      goto LABEL_144;
    }

    if ((v37 + a4) >= v64)
    {
      a4 = *(a3 + 8);
    }

    else
    {
      a4 += v37;
    }

    if (a4 < v37)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      result = sub_2283406C0(v8);
      goto LABEL_114;
    }

    if (v47 == a4)
    {
LABEL_40:
      a4 = v47;
      if (v47 < v37)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    v137 = v5;
    v110 = *a3;
    v111 = *(v149 + 72);
    v112 = *a3 + v111 * (v47 - 1);
    v157 = -v111;
    v136 = v37;
    v113 = v37 - v47;
    v158 = v110;
    v140 = v111;
    v114 = v110 + v47 * v111;
    v145 = a4;
LABEL_94:
    v151 = v47;
    v146 = v114;
    v147 = v113;
    v115 = v113;
    v148 = v112;
LABEL_95:
    sub_228336908(v114, v165, type metadata accessor for WeekdaysAndDosages);
    sub_228336908(v112, v168, type metadata accessor for WeekdaysAndDosages);
    sub_22838F680();
    v116 = sub_228391030();
    v117 = *v166;
    (*v166)(v10, v167);
    if (*(v116 + 16))
    {
      v118 = *(v11 + 16);
      v119 = v116 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v120 = v154;
      v121 = v10;
      v122 = v11;
      v123 = v163;
      v118(v154, v119, v163);

      v164 = sub_228391050();
      v124 = *(v122 + 8);
      v10 = v121;
      v124(v120, v123);
    }

    else
    {

      v164 = 0;
    }

    sub_22838F680();
    v125 = sub_228391030();
    v117(v10, v167);
    if (*(v125 + 16))
    {
      v11 = v160;
      v126 = v155;
      v127 = v163;
      (*(v160 + 16))(v155, v125 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v163);

      v8 = sub_228391050();
      (*(v11 + 8))(v126, v127);
    }

    else
    {

      v8 = 0;
      v11 = v160;
    }

    a3 = type metadata accessor for WeekdaysAndDosages;
    sub_228335E3C(v168, type metadata accessor for WeekdaysAndDosages);
    result = sub_228335E3C(v165, type metadata accessor for WeekdaysAndDosages);
    if (v164 < v8)
    {
      break;
    }

LABEL_93:
    v47 = v151 + 1;
    v112 = v148 + v140;
    v113 = v147 - 1;
    v114 = v146 + v140;
    a4 = v145;
    if (v151 + 1 != v145)
    {
      goto LABEL_94;
    }

    v5 = v137;
    v37 = v136;
    if (v145 < v136)
    {
      goto LABEL_142;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    v145 = a4;
    if (result)
    {
      v38 = v142;
    }

    else
    {
      result = sub_228198978(0, *(v142 + 2) + 1, 1, v142);
      v38 = result;
    }

    a4 = *(v38 + 2);
    v65 = *(v38 + 3);
    v8 = a4 + 1;
    if (a4 >= v65 >> 1)
    {
      result = sub_228198978((v65 > 1), a4 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v8;
    v66 = &v38[16 * a4];
    v67 = v145;
    *(v66 + 4) = v37;
    *(v66 + 5) = v67;
    if (!*v139)
    {
      goto LABEL_152;
    }

    if (a4)
    {
      a3 = *v139;
      while (1)
      {
        v68 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v69 = *(v38 + 4);
          v70 = *(v38 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_61:
          if (v72)
          {
            goto LABEL_131;
          }

          v85 = &v38[16 * v8];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_134;
          }

          v91 = &v38[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_138;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v8 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v95 = &v38[16 * v8];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_75:
        if (v90)
        {
          goto LABEL_133;
        }

        v98 = &v38[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_136;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_82:
        a4 = v68 - 1;
        if (v68 - 1 >= v8)
        {
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
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v152)
        {
          goto LABEL_149;
        }

        v106 = v38;
        v8 = *&v38[16 * a4 + 32];
        v107 = *&v38[16 * v68 + 40];
        sub_2283329FC(*v152 + *(v149 + 72) * v8, *v152 + *(v149 + 72) * *&v38[16 * v68 + 32], *v152 + *(v149 + 72) * v107, a3);
        if (v5)
        {
        }

        if (v107 < v8)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = v106;
        }

        else
        {
          v108 = sub_2283406C0(v106);
        }

        if (a4 >= *(v108 + 2))
        {
          goto LABEL_128;
        }

        v109 = &v108[16 * a4];
        *(v109 + 4) = v8;
        *(v109 + 5) = v107;
        v169 = v108;
        result = sub_228340634(v68);
        v38 = v169;
        v8 = *(v169 + 16);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v38[16 * v8 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_129;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v80 = &v38[16 * v8];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_132;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_135;
      }

      if (v84 >= v76)
      {
        v102 = &v38[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_139;
        }

        if (v71 < v105)
        {
          v68 = v8 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    a3 = v152;
    v36 = v152[1];
    v37 = v145;
    a4 = v138;
    if (v145 >= v36)
    {
      goto LABEL_111;
    }
  }

  if (v158)
  {
    v8 = type metadata accessor for WeekdaysAndDosages;
    v128 = v159;
    sub_228336ACC(v114, v159, type metadata accessor for WeekdaysAndDosages);
    swift_arrayInitWithTakeFrontToBack();
    sub_228336ACC(v128, v112, type metadata accessor for WeekdaysAndDosages);
    v112 += v157;
    v114 += v157;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

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
  return result;
}

uint64_t sub_228332428(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Dosage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v46 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_59;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = v8;
      v27 = -v14;
      v28 = v25;
      v41 = a1;
      v42 = a4;
      v40 = -v14;
      do
      {
        v38 = v25;
        v29 = a2 + v27;
        v44 = a2;
        v45 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v38;
            goto LABEL_57;
          }

          v31 = a3;
          v39 = v25;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v46;
          sub_228336908(v28 + v27, v46, type metadata accessor for Dosage);
          v34 = v47;
          sub_228336908(v29, v47, type metadata accessor for Dosage);
          sub_22838F440();
          v35 = v26;
          sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v36 = sub_228391FA0();
          sub_228335E3C(v34, type metadata accessor for Dosage);
          sub_228335E3C(v33, type metadata accessor for Dosage);
          if (v36)
          {
            break;
          }

          v25 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            v26 = v35;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v41;
          }

          else
          {
            v26 = v35;
            a1 = v41;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v30 = v32 > v42;
          a2 = v44;
          v29 = v45;
          v27 = v40;
          if (!v30)
          {
            goto LABEL_55;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          v26 = v35;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
          v25 = v39;
        }

        else
        {
          v26 = v35;
          a2 = v45;
          a1 = v41;
          v25 = v39;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v40;
      }

      while (v28 > v42);
    }

LABEL_55:
    v50 = a2;
    v48 = v25;
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

    v45 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v43 = v8;
      v44 = a3;
      do
      {
        v20 = v46;
        sub_228336908(a2, v46, type metadata accessor for Dosage);
        v21 = a2;
        v22 = v47;
        sub_228336908(a4, v47, type metadata accessor for Dosage);
        sub_22838F440();
        sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v23 = sub_228391FA0();
        sub_228335E3C(v22, type metadata accessor for Dosage);
        sub_228335E3C(v20, type metadata accessor for Dosage);
        if (v23)
        {
          a2 = v21 + v14;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
          }

          else
          {
            v24 = v44;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
            a2 = v21;
          }

          else
          {
            v24 = v44;
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v45 && a2 < v24);
    }
  }

LABEL_57:
  sub_2283333F0(&v50, &v49, &v48, type metadata accessor for Dosage);
  return 1;
}

uint64_t sub_2283329FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v94 = sub_22838F6C0();
  v7 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391060();
  v11 = *(v10 - 8);
  v91 = v10;
  v92 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v77 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v80 = &v77 - v18;
  v95 = type metadata accessor for WeekdaysAndDosages(0);
  v19 = MEMORY[0x28223BE20](v95);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v89 = (&v77 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v77 - v25;
  result = MEMORY[0x28223BE20](v24);
  v90 = &v77 - v27;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v30 = a2;
  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_73;
  }

  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_74;
  }

  v32 = (a2 - a1) / v29;
  v98 = a1;
  v33 = v83;
  v97 = v83;
  v86 = v29;
  if (v32 >= v31 / v29)
  {
    v36 = v31 / v29 * v29;
    if (v83 < v30 || v30 + v36 <= v83)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v83 != v30)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = v33 + v36;
    if (v36 < 1)
    {
      v58 = v30;
    }

    else
    {
      v56 = -v86;
      v86 = v21;
      v87 = (v7 + 8);
      v85 = v92 + 16;
      v82 = (v92 + 8);
      v57 = v33 + v36;
      v58 = v30;
      v88 = v56;
      do
      {
        v80 = v55;
        v59 = v58 + v56;
        v93 = v58 + v56;
        v84 = v58;
        while (1)
        {
          if (v58 <= a1)
          {
            v98 = v58;
            v96 = v80;
            goto LABEL_71;
          }

          v61 = a3;
          v81 = v55;
          v90 = v57 + v56;
          sub_228336908(v57 + v56, v89, type metadata accessor for WeekdaysAndDosages);
          sub_228336908(v59, v21, type metadata accessor for WeekdaysAndDosages);
          sub_22838F680();
          v62 = sub_228391030();
          v63 = *v87;
          (*v87)(v9, v94);
          if (*(v62 + 16))
          {
            v65 = v91;
            v64 = v92;
            v66 = v78;
            (*(v92 + 16))(v78, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v91);

            v67 = sub_228391050();
            v68 = v65;
            v21 = v86;
            (*(v64 + 8))(v66, v68);
          }

          else
          {

            v67 = 0;
          }

          sub_22838F680();
          v69 = sub_228391030();
          v63(v9, v94);
          if (*(v69 + 16))
          {
            v70 = v91;
            v71 = v92;
            v72 = v79;
            (*(v92 + 16))(v79, v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v91);

            v73 = sub_228391050();
            v74 = v72;
            v21 = v86;
            (*(v71 + 8))(v74, v70);
          }

          else
          {

            v73 = 0;
          }

          a3 = v61 + v88;
          sub_228335E3C(v21, type metadata accessor for WeekdaysAndDosages);
          sub_228335E3C(v89, type metadata accessor for WeekdaysAndDosages);
          if (v67 < v73)
          {
            break;
          }

          v55 = v90;
          v59 = v93;
          v75 = v83;
          if (v61 < v57 || a3 >= v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v55;
          v60 = v90 > v75;
          v56 = v88;
          v58 = v84;
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        v76 = v83;
        v58 = v93;
        if (v61 < v84 || a3 >= v84)
        {
          swift_arrayInitWithTakeFrontToBack();
          v55 = v81;
        }

        else
        {
          v55 = v81;
          if (v61 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = v88;
      }

      while (v57 > v76);
    }

LABEL_69:
    v98 = v58;
    v96 = v55;
  }

  else
  {
    v34 = v32 * v29;
    if (v83 < a1 || a1 + v34 <= v83)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = v82;
    }

    else
    {
      v35 = v82;
      if (v83 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v85 = v33 + v34;
    v96 = (v33 + v34);
    if (v34 >= 1 && v30 < a3)
    {
      v38 = v33;
      v88 = v92 + 16;
      v89 = (v7 + 8);
      v87 = (v92 + 8);
      v84 = a3;
      do
      {
        v93 = v30;
        sub_228336908(v30, v90, type metadata accessor for WeekdaysAndDosages);
        v39 = v38;
        sub_228336908(v38, v35, type metadata accessor for WeekdaysAndDosages);
        sub_22838F680();
        v40 = sub_228391030();
        v41 = *v89;
        (*v89)(v9, v94);
        if (*(v40 + 16))
        {
          v42 = v91;
          v43 = v92;
          v44 = v80;
          (*(v92 + 16))(v80, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v91);

          v45 = sub_228391050();
          v46 = v44;
          v35 = v82;
          (*(v43 + 8))(v46, v42);
        }

        else
        {

          v45 = 0;
        }

        sub_22838F680();
        v47 = sub_228391030();
        v41(v9, v94);
        if (*(v47 + 16))
        {
          v48 = v91;
          v49 = v92;
          v50 = v81;
          (*(v92 + 16))(v81, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v91);

          v51 = sub_228391050();
          (*(v49 + 8))(v50, v48);
        }

        else
        {

          v51 = 0;
        }

        v52 = v86;
        sub_228335E3C(v35, type metadata accessor for WeekdaysAndDosages);
        sub_228335E3C(v90, type metadata accessor for WeekdaysAndDosages);
        if (v45 >= v51)
        {
          v54 = v39;
          v38 = v39 + v52;
          v30 = v93;
          if (a1 < v39 || a1 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v53 = v84;
          }

          else
          {
            v53 = v84;
            if (a1 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v97 = v38;
        }

        else
        {
          v30 = v93 + v52;
          v38 = v39;
          if (a1 < v93 || a1 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v53 = v84;
          }

          else
          {
            v53 = v84;
            if (a1 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v52;
        v98 = a1;
      }

      while (v38 < v85 && v30 < v53);
    }
  }

LABEL_71:
  sub_2283333F0(&v98, &v97, &v96, type metadata accessor for WeekdaysAndDosages);
  return 1;
}

uint64_t sub_2283333F0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2283334D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22819A62C(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s19HealthMedicationsUI28MedicationScheduleDataSourceC19PresentationContextO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v7)
    {
      v10 = v2 == v6 && v3 == v7;
      if (v10 || (sub_228393460() & 1) != 0)
      {
        if (v5 != v9 || v4 != v8)
        {
          v12 = sub_228393460();
          sub_228267888(v6, v7, v9, v8);
          sub_228267888(v2, v3, v5, v4);
          sub_228267618(v2, v3, v5, v4);
          sub_228267618(v6, v7, v9, v8);
          return v12 & 1;
        }

        sub_228267888(v6, v7, v5, v4);
        sub_228267888(v2, v3, v5, v4);
        sub_228267618(v2, v3, v5, v4);
        v14 = v6;
        v15 = v7;
        v16 = v5;
        v17 = v4;
        goto LABEL_17;
      }
    }

LABEL_14:
    sub_228267888(v6, v7, v9, v8);
    sub_228267888(v2, v3, v5, v4);
    sub_228267618(v2, v3, v5, v4);
    sub_228267618(v6, v7, v9, v8);
    return 0;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  sub_228267618(*a1, 0, v5, v4);
  v14 = v6;
  v15 = 0;
  v16 = v9;
  v17 = v8;
LABEL_17:
  sub_228267618(v14, v15, v16, v17);
  return 1;
}

void *sub_228333744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a5;
  v29 = a3;
  v10 = sub_22838FDE0();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_27D826F50, 0x277D86200);
  v13 = sub_228392ED0();
  v14 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v15 = sub_228391FC0();
  v16 = [v14 initWithName:v15 loggingCategory:v13];

  v6[2] = v16;
  v6[11] = 0;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2283931D0();

  v31 = 0xD000000000000012;
  v32 = 0x80000002283B12C0;

  v18 = sub_228329654(v17);

  v30 = v18;
  sub_228336B34(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2281BF13C();
  v19 = sub_228391F90();
  v21 = v20;

  MEMORY[0x22AAB5C80](v19, v21);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v22 = v32;
  v6[3] = v31;
  v6[4] = v22;
  v6[8] = a1;
  v6[9] = a2;

  sub_228391870();
  v6[10] = v31;
  if (v29)
  {
    v23 = v29;
    v24 = v28;
  }

  else
  {
    sub_2283903A0();
    sub_22838FDD0();
    sub_22838FD80();
    (*(v26 + 8))(v12, v27);
    v23 = sub_228390370();
    v24 = MEMORY[0x277D10F80];
    a4 = MEMORY[0x277D110F0];
  }

  v6[5] = v23;
  v6[6] = a4;
  v6[7] = v24;
  v6[12] = v23;
  v6[13] = a4;
  v6[14] = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22832A084();
  sub_228336A38(0);
  sub_228335C58(&qword_27D827F78, sub_228336A38, &protocol conformance descriptor for DynamicDataSource<A>);
  sub_22838FD00();
  sub_228329E68();
  return v6;
}

uint64_t sub_228333ABC(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  v199 = *v5;
  v10 = sub_22838F4A0();
  *&v219 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v209 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22838FDE0();
  v217 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v215 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22838F6C0();
  MEMORY[0x28223BE20](v13 - 8);
  v201 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228336994(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v203 = (&v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v225 = (&v193 - v18);
  v196 = type metadata accessor for WeekdaysAndDosages(0);
  v193 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_2283911B0();
  v200 = *(v204 - 1);
  MEMORY[0x28223BE20](v204);
  v224 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228301654(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v218 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v202 = &v193 - v25;
  MEMORY[0x28223BE20](v24);
  v221 = &v193 - v26;
  v222 = sub_22838F440();
  v220 = *(v222 - 8);
  v27 = MEMORY[0x28223BE20](v222);
  v205 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v230 = &v193 - v29;
  sub_2283356B0(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a4;
  v231 = a4[1];
  v34 = a4[2];
  v35 = a4[3];
  v227 = v34;
  *&v228 = v33;
  v36 = qword_27D827ED8;
  *(v5 + qword_27D827ED8) = 0;
  *(v5 + qword_27D828F88) = 0;
  *(v5 + qword_27D828F90) = 0;
  *(v5 + qword_27D828F98) = 0;
  *(v5 + qword_27D828FA0) = 0;
  *(v5 + qword_27D828FA8) = 0;
  *(v5 + qword_27D828FB0) = 0;
  *(v5 + qword_27D828FB8) = 0;
  *(v5 + qword_27D828FC0) = 0;
  *(v5 + qword_27D828FC8) = 0;
  *(v5 + qword_27D828FD0) = 0;
  v37 = qword_27D828FE8;
  *(v5 + v37) = [objc_allocWithZone(MEMORY[0x277CCD0A0]) init];
  v216 = qword_27D827EC8;
  *(v5 + qword_27D827EC8) = a2;
  v213 = qword_27D827ED0;
  *(v5 + qword_27D827ED0) = a3;
  v211 = a3;
  v208 = a3;
  v207 = a2;
  sub_228391870();
  v38 = *(v5 + v36);
  v226 = v36;
  *(v5 + v36) = v232[0];

  sub_228391870();
  v39 = v232[0];
  if (v232[0])
  {
    v40 = [v232[0] UUID];

    sub_22838F480();
    (*(v219 + 56))(v32, 0, 1, v10);
  }

  else
  {
    (*(v219 + 56))(v32, 1, 1, v10);
  }

  sub_228336ACC(v32, v5 + qword_27D828F40, sub_2283356B0);
  sub_228391870();
  v232[2] = v232[0];
  sub_2281BC72C(0);
  swift_allocObject();
  v41 = sub_228391890();
  v206 = qword_27D828F28;
  *(v5 + qword_27D828F28) = v41;
  v42 = (v5 + qword_27D828FE0);
  v44 = v227;
  v43 = v228;
  v46 = v230;
  v45 = v231;
  *v42 = v228;
  v42[1] = v45;
  v42[2] = v44;
  v42[3] = v35;
  v47 = *(v5 + v226);
  v48 = v224;
  v210 = a1;
  v229 = v5;
  v212 = v10;
  v214 = v35;
  if (!v47)
  {
    v63 = 2;
    v64 = 4;
    if (v45)
    {
      v64 = 2;
    }

    v204 = v64;
    sub_228267888(v43, v45, v44, v35);
    sub_22838F430();
    v65 = v220;
    v66 = v221;
    v67 = v222;
    (*(v220 + 56))(v221, 1, 1, v222);
    LODWORD(v198) = 0;
    v201 = 0;
    v224 = 0;
    LODWORD(v196) = 255;
    v68 = MEMORY[0x277D84F90];
    v203 = MEMORY[0x277D84F90];
    LODWORD(v200) = 255;
    v69 = v46;
    goto LABEL_40;
  }

  sub_228267888(v43, v45, v44, v35);
  v49 = v47;
  sub_228391150();
  v50 = sub_2283911A0();
  v51 = sub_2283925A0();
  v52 = os_log_type_enabled(v50, v51);
  v197 = v47;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v232[0] = v54;
    *v53 = 136315138;
    v55 = sub_228393600();
    v57 = sub_2281C96FC(v55, v56, v232);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_22816B000, v50, v51, "[%s] Previous schedule found. Parsing values to populate Edit Schedule UI.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x22AAB7B80](v54, -1, -1);
    MEMORY[0x22AAB7B80](v53, -1, -1);
  }

  (*(v200 + 8))(v48, v204);
  v58 = v203;
  v59 = [v49 scheduleType];
  v60 = [v49 scheduleType];
  sub_22830F590(v232);
  v61 = v201;
  if (v232[1])
  {
    v62 = 2;
  }

  else
  {
    v70 = v232[0];
    v71 = [v49 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v72 = sub_2283921A0();

    if (v72 >> 62)
    {
      v73 = sub_2283930D0();
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v203;

    v62 = 2;
    if (v73)
    {
      v62 = v70;
    }
  }

  v195 = v62;
  v74 = [v49 scheduleType];
  v75 = MEMORY[0x277D84F90];
  v76 = v225;
  v198 = v59;
  if (v74 > 8)
  {
    v199 = MEMORY[0x277D84F90];
  }

  else if (((1 << v74) & 0x186) != 0)
  {
    v77 = sub_2281C89A0();
    if (v77[2])
    {
      v78 = v194;
      sub_228336908(v77 + ((*(v193 + 80) + 32) & ~*(v193 + 80)), v194, type metadata accessor for WeekdaysAndDosages);

      v199 = *(v78 + *(v196 + 24));

      sub_228335E3C(v78, type metadata accessor for WeekdaysAndDosages);
      v75 = MEMORY[0x277D84F90];
    }

    else
    {

      v75 = MEMORY[0x277D84F90];
      v199 = MEMORY[0x277D84F90];
    }

    v76 = v225;
  }

  else
  {
    v199 = MEMORY[0x277D84F90];
    if (((1 << v74) & 0x28) != 0)
    {
      v79 = sub_2281C89A0();
      v76 = v225;
      v75 = v79;
      v199 = MEMORY[0x277D84F90];
    }
  }

  v203 = v75;
  v80 = v49;
  sub_22838F620();
  sub_2282CD948(v80, v61, v76);
  v81 = type metadata accessor for CycleData(0);
  v82 = *(*(v81 - 8) + 48);
  v83 = v82(v76, 1, v81);
  v84 = sub_228336994;
  v204 = v60;
  if (v83 == 1)
  {
    v224 = 0;
    LODWORD(v200) = 255;
  }

  else
  {
    active = CycleData.calculateTotalActiveDays()();
    v76 = v225;
    v224 = active;
    v86 = [*v225 scheduleType];
    v84 = type metadata accessor for CycleData;
    if (v86 == 7)
    {
      LODWORD(v200) = 1;
    }

    else
    {
      if (v86 != 8)
      {
        goto LABEL_47;
      }

      LODWORD(v200) = 0;
      v224 /= 7;
      v84 = type metadata accessor for CycleData;
    }
  }

  sub_228335E3C(v76, v84);
  v87 = v80;
  sub_22838F620();
  sub_2282CD948(v87, v61, v58);
  v88 = v82(v58, 1, v81);
  v89 = sub_228336994;
  if (v88 != 1)
  {
    v93 = CycleData.calculateTotalPauseDays()();
    v94 = [*v58 scheduleType];
    v89 = type metadata accessor for CycleData;
    v66 = v221;
    v67 = v222;
    v92 = v202;
    if (v94 == 7)
    {
      v90 = v93;
      v91 = 1;
      goto LABEL_36;
    }

    if (v94 == 8)
    {
      v91 = 0;
      v90 = v93 / 7;
      v89 = type metadata accessor for CycleData;
      goto LABEL_36;
    }

LABEL_47:
    result = sub_228393300();
    __break(1u);
    return result;
  }

  v90 = 0;
  v91 = 255;
  v66 = v221;
  v67 = v222;
  v92 = v202;
LABEL_36:
  sub_228335E3C(v58, v89);
  v95 = [v87 startDateTime];
  sub_22838F3E0();

  v96 = [v87 endDateTime];
  if (v96)
  {
    v97 = v96;
    sub_22838F3E0();

    v98 = 0;
    v87 = v97;
  }

  else
  {
    v98 = 1;
  }

  v47 = v197;
  LODWORD(v196) = v91;

  v65 = v220;
  (*(v220 + 56))(v92, v98, 1, v67);
  sub_228336ACC(v92, v66, sub_228301654);
  v68 = v199;
  LODWORD(v198) = v198 == 4;
  v69 = v230;
  v63 = v195;
  v201 = v90;
LABEL_40:
  LODWORD(v197) = v47 == 0;
  v232[0] = v63;
  LOBYTE(v232[1]) = 0;
  sub_228335CA8(0, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);
  swift_allocObject();
  v99 = sub_228391890();
  v100 = qword_27D828F48;
  v101 = v229;
  *(v229 + qword_27D828F48) = v99;
  v232[0] = v68;
  sub_228335D24(0);
  swift_allocObject();
  v102 = sub_228391890();
  v103 = qword_27D828F50;
  *(v101 + qword_27D828F50) = v102;
  (*(v65 + 16))(v205, v69, v67);
  sub_228241D38(0);
  swift_allocObject();
  v104 = sub_228391890();
  v225 = qword_27D828F60;
  *(v101 + qword_27D828F60) = v104;
  sub_228336908(v66, v218, sub_228301654);
  sub_228241DA0(0);
  swift_allocObject();
  v105 = sub_228391890();
  v199 = qword_27D828F68;
  *(v101 + qword_27D828F68) = v105;
  v232[0] = v224;
  v106 = v200;
  LOBYTE(v232[1]) = v200;
  sub_228335CA8(0, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  swift_allocObject();
  v107 = sub_228391890();
  v202 = qword_27D828F78;
  *(v101 + qword_27D828F78) = v107;
  v232[0] = v201;
  LOBYTE(v232[1]) = v196;
  swift_allocObject();
  v108 = sub_228391890();
  v201 = qword_27D828F80;
  *(v101 + qword_27D828F80) = v108;
  LOBYTE(v232[0]) = (v106 & 1) == 0;
  sub_228335CA8(0, &qword_27D825858, &qword_27D825860, &type metadata for DisplayUnit);
  swift_allocObject();
  v109 = sub_228391890();
  v110 = qword_27D828F70;
  *(v101 + qword_27D828F70) = v109;
  v200 = v110;
  v232[0] = v203;
  sub_2282ABC18(0);
  swift_allocObject();
  v111 = sub_228391890();
  v203 = qword_27D828F58;
  *(v101 + qword_27D828F58) = v111;
  v232[0] = v204;
  sub_228297C40(0);
  swift_allocObject();
  v112 = sub_228391890();
  v113 = qword_27D828F38;
  *(v101 + qword_27D828F38) = v112;
  v114 = v113;
  v218 = v113;
  v115 = *(v101 + v226);
  v116 = v115 == 0;
  v117 = v115 != 0;
  v118 = v197;
  if (!v116)
  {
    v118 = 1;
  }

  if (!v118)
  {
    v117 = v198;
  }

  LOBYTE(v232[0]) = v117;
  sub_22817D780();
  swift_allocObject();
  *(v101 + qword_27D828F30) = sub_228391890();
  v119 = *(v101 + v216);
  v120 = *(v101 + v213);
  v121 = *(v101 + v103);
  type metadata accessor for DosagesPerDaySectionDataSource(0);
  swift_allocObject();
  v122 = v120;

  v216 = sub_228260844(v119, v120, v121);
  v123 = *(v101 + v114);
  v124 = *(v101 + v100);
  v125 = *(v101 + v110);
  type metadata accessor for FrequencyPickerDataSource(0);
  v126 = swift_allocObject();
  v127 = (v126 + qword_27D826C08);
  v232[0] = sub_228392000();
  v232[1] = v128;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v129 = v232[1];
  *v127 = v232[0];
  v127[1] = v129;
  *(v126 + qword_27D826C10) = 0;
  *(v126 + qword_27D826C18) = v123;
  *(v126 + qword_27D826C20) = v124;
  *(v126 + qword_27D826C28) = v125;
  v130 = (v126 + qword_27D826C30);
  v131 = v231;
  *v130 = v228;
  v130[1] = v131;
  v132 = v214;
  v130[2] = v227;
  v130[3] = v132;

  v205 = sub_228390380();

  v133 = sub_228296ABC();
  sub_228194894(v133);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  v134 = *(v225 + v101);
  v135 = *(v101 + v199);
  type metadata accessor for StartDateDataSource(0);
  swift_allocObject();

  v226 = sub_228250CD0(v134, v135);
  sub_2283903A0();
  v136 = v215;
  sub_22838FDD0();
  sub_22838FD80();
  (*(v217 + 8))(v136, v223);
  v217 = sub_228390370();
  v224 = sub_2283901F0();
  v137 = MEMORY[0x277D84560];
  v204 = MEMORY[0x277D84560];
  sub_228335D78(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v231 = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_22839A470;
  v140 = MEMORY[0x277D10F80];
  *(v139 + 32) = v216;
  *(v139 + 40) = v140;
  v141 = v140;
  v225 = type metadata accessor for NotificationFooterDataSource(0);
  *(swift_allocObject() + qword_27D8248B8) = 0;
  sub_228335D78(0, &qword_27D823910, MEMORY[0x277D10F78], v137);
  v227 = v142;
  v143 = *(sub_22838FEF0() - 8);
  v144 = *(v143 + 72);
  v214 = *(v143 + 80);
  v215 = v144;
  v213 = (v214 + 32) & ~v214;
  v145 = swift_allocObject();
  v228 = xmmword_228397F40;
  *(v145 + 16) = xmmword_228397F40;

  sub_22838FEB0();
  v223 = sub_2281CD0A0;
  *(v139 + 48) = sub_228390380();
  *(v139 + 56) = v141;
  v146 = v101;
  v147 = *(v101 + v200);
  v148 = *&v202[v101];
  v149 = *&v201[v146];
  v150 = *(v146 + v218);
  type metadata accessor for PauseDataSource(0);
  v151 = swift_allocObject();
  *(v151 + qword_27D8257E0) = 0;
  *(v151 + qword_27D8257D0) = v148;
  *(v151 + qword_27D8257D8) = v149;
  *(v151 + qword_27D8257C0) = v147;
  *(v151 + qword_27D8257C8) = v150;
  v232[0] = 0;
  v232[1] = 0xE000000000000000;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_2283931D0();

  strcpy(v232, "MutableArray<");
  HIWORD(v232[1]) = -4864;
  v152 = v209;
  sub_22838F490();
  v153 = sub_22838F450();
  v155 = v154;
  (*(v219 + 8))(v152, v212);
  MEMORY[0x22AAB5C80](v153, v155);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v156 = sub_22838FF30();

  sub_2282287A8();

  *(v139 + 64) = v156;
  v157 = MEMORY[0x277D10F80];
  *(v139 + 72) = MEMORY[0x277D10F80];
  v158 = v229;
  type metadata accessor for NextPauseDataSource(0);
  swift_allocObject();

  v160 = sub_228229C24(v159);

  v161 = sub_228335C58(&qword_27D827F58, type metadata accessor for NextPauseDataSource, MEMORY[0x277D10F40]);
  *(v139 + 80) = v160;
  *(v139 + 88) = v161;
  v162 = v226;
  *(v139 + 96) = v226;
  *(v139 + 104) = v157;
  v163 = v157;
  v164 = v162;

  v212 = sub_228390220();
  v165 = swift_allocObject();
  v219 = xmmword_228398270;
  *(v165 + 16) = xmmword_228398270;
  v166 = *(v203 + v158);
  type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
  swift_allocObject();
  v167 = v207;
  v168 = v208;

  *(v165 + 32) = sub_2282A3DAC(v167, v211, v166);
  *(v165 + 40) = v163;
  *(swift_allocObject() + qword_27D8248B8) = 1;
  *(swift_allocObject() + 16) = v228;
  sub_22838FEB0();
  *(v165 + 48) = sub_228390380();
  *(v165 + 56) = v163;
  *(v165 + 64) = v164;
  *(v165 + 72) = v163;

  v211 = sub_228390220();
  sub_228335D78(0, &qword_27D827F60, sub_2283369C8, v204);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2283A48C0;
  *(inited + 32) = 4;
  v209 = (inited + 32);
  v170 = MEMORY[0x277D110F0];
  *(inited + 40) = v217;
  *(inited + 48) = v170;
  *(inited + 56) = v163;
  *(inited + 64) = 2;
  v171 = swift_allocObject();
  *(v171 + 16) = v219;
  v172 = v216;
  *(v171 + 32) = v216;
  *(v171 + 40) = v163;
  *(swift_allocObject() + qword_27D8248B8) = 0;
  *(swift_allocObject() + 16) = v228;

  sub_22838FEB0();
  *(v171 + 48) = sub_228390380();
  v173 = MEMORY[0x277D10F80];
  v174 = v226;
  *(v171 + 56) = MEMORY[0x277D10F80];
  *(v171 + 64) = v174;
  *(v171 + 72) = v173;
  v175 = v173;

  v176 = sub_228390220();
  v177 = MEMORY[0x277D11048];
  *(inited + 72) = v176;
  *(inited + 80) = v177;
  v178 = MEMORY[0x277D11040];
  *(inited + 88) = MEMORY[0x277D11040];
  *(inited + 96) = 3;
  v179 = v211;
  v180 = v212;
  *(inited + 104) = v211;
  *(inited + 112) = v177;
  *(inited + 120) = v178;
  *(inited + 128) = 5;
  *(inited + 136) = v179;
  *(inited + 144) = v177;
  *(inited + 152) = v178;
  *(inited + 160) = 7;
  *(inited + 168) = v180;
  *(inited + 176) = v177;
  *(inited + 184) = v178;
  *(inited + 192) = 8;
  *(inited + 200) = v180;
  *(inited + 208) = v177;
  *(inited + 216) = v178;
  *(inited + 224) = 1;
  v181 = swift_allocObject();
  *(v181 + 16) = v219;
  *(v181 + 32) = v172;
  *(v181 + 40) = v175;
  *(swift_allocObject() + qword_27D8248B8) = 0;
  *(swift_allocObject() + 16) = v228;
  swift_retain_n();
  swift_retain_n();

  sub_22838FEB0();
  *(v181 + 48) = sub_228390380();
  v182 = MEMORY[0x277D10F80];
  v183 = v226;
  *(v181 + 56) = MEMORY[0x277D10F80];
  *(v181 + 64) = v183;
  *(v181 + 72) = v182;
  v184 = v182;

  *(inited + 232) = sub_228390220();
  *(inited + 240) = MEMORY[0x277D11048];
  *(inited + 248) = v178;
  v185 = sub_2281A8584(inited);
  swift_setDeallocating();
  sub_2283369C8(0);
  swift_arrayDestroy();
  v186 = v229;
  v187 = *(v229 + v218);
  sub_228336A38(0);
  swift_allocObject();

  v188 = sub_228333744(v185, v187, 0, 0, 0);

  *(v186 + qword_27D828FD8) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_228397F30;
  *(v189 + 32) = v205;
  *(v189 + 40) = v184;
  v190 = sub_228335C58(&qword_27D827F78, sub_228336A38, &protocol conformance descriptor for DynamicDataSource<A>);
  *(v189 + 48) = v188;
  *(v189 + 56) = v190;

  v191 = sub_228390210();

  sub_22832A3C4();

  sub_228335E3C(v221, sub_228301654);
  (*(v220 + 8))(v230, v222);
  return v191;
}

unint64_t sub_2283356E8()
{
  result = qword_27D827EE0;
  if (!qword_27D827EE0)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827EE0);
  }

  return result;
}

uint64_t type metadata accessor for MedicationScheduleDataSource(uint64_t a1)
{
  result = qword_27D827EE8;
  if (!qword_27D827EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22833579C(uint64_t a1)
{
  sub_2283356B0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI28MedicationScheduleDataSourceC19PresentationContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_228335A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_228335A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_228335AB0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_228335AE4(uint64_t a1)
{
  if (!qword_27D827EF8)
  {
    sub_228335CA8(255, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
    sub_228335B9C(&qword_27D827F10, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827EF8);
    }
  }
}

uint64_t sub_228335B9C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228335CA8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228335BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228335C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228335CA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_228336B34(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228335D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228335E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228335E9C(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v9 = sub_2283909E0();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5 >> 1;
  v34 = a4;
  v12 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v39 = MEMORY[0x277D84F90];
  sub_2281C9DEC(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v13 = v39;
    v28 = v35 + 16;
    v29 = (v35 + 8);
    v26 = v9;
    v27 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v34 + v14) >= v33 || v14 >= v12)
      {
        goto LABEL_14;
      }

      (*(v35 + 16))(v11, v32 + *(v35 + 72) * (v34 + v14), v9);
      v30(v36, v11);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      (*v29)(v11, v9);
      v39 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2281C9DEC((v16 > 1), v17 + 1, 1);
      }

      v18 = v37;
      v19 = v38;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      MEMORY[0x28223BE20](v20);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22);
      sub_2283334D8(v17, v22, &v39, v18, v19);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v13 = v39;
      ++v14;
      v9 = v26;
      v11 = v27;
      if (v15 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v29)(v11, v9);

  __break(1u);
  return result;
}

unint64_t sub_22833618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v58 = a2;
  v56 = sub_22838F440();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22838F700();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22838F080();
  v49 = *(v59 - 8);
  v10 = MEMORY[0x28223BE20](v59);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v45 - v14;
  v16 = *(a4 + 8);
  if (v16 == 255)
  {
    goto LABEL_27;
  }

  v47 = *a3;
  v48 = *(a3 + 8);
  v17 = *a4;
  if ((v16 & 1) != 0 || (v18 = (v17 * 7) >> 64, v17 *= 7, v18 == v17 >> 63))
  {
    v62 = MEMORY[0x277D84F90];
    if (v17 >= -6)
    {
      v19 = v17 / 7;
      if ((v17 + 6) < 0xD)
      {
        a4 = MEMORY[0x277D84F90];
LABEL_13:
        sub_228336B34(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        result = swift_initStackObject();
        v6 = result;
        *(result + 16) = xmmword_228396260;
        if ((a4 & 0xC000000000000001) == 0)
        {
          if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(a4 + 32);

            v34 = v33;
            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_26;
        }

LABEL_24:

        v34 = MEMORY[0x22AAB6D80](0, a4);
LABEL_16:
        v35 = v34;
        v36 = [v34 startTimeComponent];

        sub_22838EFD0();
        v37 = sub_2283924E0();
        if (v48 != 255)
        {
          v38 = v47;
          if (v48)
          {
            goto LABEL_21;
          }

          v38 = 7 * v47;
          if ((v47 * 7) >> 64 == (7 * v47) >> 63)
          {
            goto LABEL_21;
          }

          __break(1u);
        }

        v38 = 0;
LABEL_21:
        v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v41 = objc_allocWithZone(MEMORY[0x277D11580]);
        v42 = sub_22838EFB0();
        v43 = [v41 initWithStartTimeComponent:v42 daysOfWeek:0 cycleIndex:v37 cycleIntervalDays:v39 dose:v40];

        (*(v49 + 8))(v12, v59);
        *(v6 + 32) = v43;
        v61 = a4;
        sub_2281D5FC8(v6);
        v44 = v61;

        return v44;
      }

      v46 = v12;
      a4 = 0;
      v51 = (v8 + 8);
      v52 = (v6 + 8);
      v50 = (v49 + 8);
      v20 = 0x4000000000000000;
      v45[1] = v17 / 7;
      v6 = 1;
      while (v20)
      {
        v21 = sub_2283924E0();
        v22 = sub_2283924E0();
        v23 = v53;
        v24 = v58;
        sub_22838F690();
        v25 = v55;
        sub_22838F3F0();
        sub_22838F5B0();
        (*v52)(v25, v56);
        v26 = (*v51)(v23, v54);
        MEMORY[0x28223BE20](v26);
        v45[-4] = v24;
        v45[-3] = v21;
        v60 = v21;
        v45[-2] = 1;
        v27 = sub_228329A58(sub_228336970, &v45[-6], v57);
        sub_2281D5FC8(v27);
        v12 = v22;
        v28 = sub_2283924E0();
        v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v30 = v15;
        v31 = objc_allocWithZone(MEMORY[0x277D11580]);
        v32 = sub_22838EFB0();
        [v31 initWithStartTimeComponent:v32 daysOfWeek:0 cycleIndex:v12 cycleIntervalDays:v28 dose:v29];

        MEMORY[0x22AAB5D20]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();

        (*v50)(v30, v59);
        --v20;
        v6 += 2;
        --v19;
        v15 = v30;
        if (!v19)
        {
          a4 = v62;
          v12 = v46;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_228336870(uint64_t a1)
{
  if (!qword_27D827F50)
  {
    sub_2283368D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827F50);
    }
  }
}

uint64_t sub_228336908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2283369C8(uint64_t a1)
{
  if (!qword_27D827F68)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A92A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827F68);
    }
  }
}

void sub_228336A38(uint64_t a1)
{
  if (!qword_27D827F70)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    v3 = v2;
    v4 = sub_228335C58(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType, &unk_228396CB8);
    v6 = type metadata accessor for DynamicDataSource(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27D827F70);
    }
  }
}

uint64_t sub_228336ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228336B34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for MedicationSourceListCell(uint64_t a1)
{
  result = qword_27D827F80;
  if (!qword_27D827F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228336C48()
{
  v0 = MEMORY[0x277D83D88];
  sub_228337BF8(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v24 = sub_2283912A0();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391220();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228337BF8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], v0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_22838FC90();
  v17 = sub_22838FCA0();
  v18 = v17();
  MEMORY[0x22AAB6410](v18);
  v19 = sub_2283913A0();
  if ((*(*(v19 - 8) + 48))(v16, 1, v19))
  {
    sub_228205274(v16, v14);
    MEMORY[0x22AAB6420](v14);
    sub_228337B88(v16, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v20 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    MEMORY[0x22AAB6420](v16);
  }

  sub_228337BF8(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  (*(v8 + 104))(v10, *MEMORY[0x277D74A98], v7);
  v21 = sub_228391230();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_228391290();
  sub_228391260();
  (*(v4 + 8))(v6, v24);
  (*(v8 + 8))(v10, v7);
  return sub_2283928F0();
}

void sub_2283370D8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (v23[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationSourceListItem();
    if (swift_dynamicCast())
    {
      v5 = v22;
      v6 = [v22[3] source];
      v7 = [v6 name];

      sub_228392000();
      sub_22838FAC0();
      v8 = sub_22838FAB0();
      sub_22838FC70();

      v9 = [objc_opt_self() sharedImageManager];
      v10 = [*(v5 + 24) source];
      v11 = [v9 iconForSource:v10 productType:0];

      if (v11)
      {
        v12 = [*(v5 + 24) source];
        v13 = [v12 name];

        sub_228392000();
        v14 = v11;
        sub_22838FC70();
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    sub_228337B88(v23, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391190();
  v15 = sub_2283911A0();
  v16 = sub_2283925D0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    v23[0] = ObjectType;
    *v17 = 136446210;
    swift_getMetatypeMetadata();
    v19 = sub_228392020();
    v21 = sub_2281C96FC(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22816B000, v15, v16, "[%{public}s] item is not an MedicationSourceListItem", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

id sub_228337470(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_2283374E0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_228337588()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228337604()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_228337638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

unint64_t sub_2283376A0()
{
  result = qword_27D823E50;
  if (!qword_27D823E50)
  {
    type metadata accessor for MedicationSourceListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823E50);
  }

  return result;
}

void sub_2283376F4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (!v37[3])
  {
    sub_228337B88(v37, &qword_280DDCD50, sub_22817A700);
    goto LABEL_7;
  }

  sub_22817A700();
  type metadata accessor for MedicationSourceListItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_228391190();
    v27 = sub_2283911A0();
    v28 = sub_2283925D0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      v37[0] = ObjectType;
      *v29 = 136446210;
      swift_getMetatypeMetadata();
      v31 = sub_228392020();
      v33 = sub_2281C96FC(v31, v32, &v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22816B000, v27, v28, "[%{public}s] item is not an MedicationSourceListItem", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return;
  }

  v9 = v36;
  v10 = [objc_opt_self() sharedInstanceForHealthStore_];
  v11 = [v10 profile];

  v12 = [v11 displayTypeController];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() medicationDoseEventType];
    v15 = [v13 displayTypeForObjectType_];

    if (v15)
    {
      v16 = objc_opt_self();
      v17 = [*(v9 + 24) source];
      v18 = [v16 predicateForObjectsFromSource_];

      v19 = *(v9 + 16);
      v20 = type metadata accessor for MedicationListAllDataProvider();
      v21 = objc_allocWithZone(v20);
      v22 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
      *&v21[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
      *&v21[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = v19;
      *&v21[v22] = v18;
      v35.receiver = v21;
      v35.super_class = v20;
      v23 = v19;
      v24 = v18;
      v25 = objc_msgSendSuper2(&v35, sel_initWithDisplayType_profile_, v15, v11);
      v26 = [objc_allocWithZone(MEMORY[0x277D12540]) initWithDisplayType:v15 profile:v11 dataProvider:v25 usingInsetStyling:1];
      [a1 showViewController:v26 sender:v2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_2283931D0();
  swift_getObjectType();
  v34 = sub_228393600();
  MEMORY[0x22AAB5C80](v34);

  MEMORY[0x22AAB5C80](0xD000000000000039, 0x80000002283B3BB0);
  sub_228393300();
  __break(1u);
}

uint64_t sub_228337B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228337BF8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228337BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ScheduleStepViewController(uint64_t a1)
{
  result = qword_27D827F90;
  if (!qword_27D827F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228337CF4()
{
  swift_beginAccess();
  sub_22817D780();
  sub_228337E40();
  return sub_228391990();
}

id sub_228337E00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228337E40()
{
  result = qword_27D8237F8;
  if (!qword_27D8237F8)
  {
    sub_22817D780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8237F8);
  }

  return result;
}

void *sub_228337EB8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for MedicationsDayHistoryItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v48 = v3;
  v49 = a3;
  v43 = v9;
  v11 = type metadata accessor for MedicationsDayHistoryHeaderItem(0);
  v12 = swift_allocObject();
  sub_22838F490();
  v13 = (v12 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228338A78(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  *v13 = sub_22838FBB0();
  v13[1] = v14;
  *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = a2;
  v15 = MEMORY[0x277D84F90];
  v16 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = v16[2];
  v17 = v16[3];
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
LABEL_13:
    v16 = sub_228198710((v17 > 1), v19, 1, v16);
  }

  v54 = v11;
  v55 = sub_228338A78(&qword_27D827FA0, type metadata accessor for MedicationsDayHistoryHeaderItem, &protocol conformance descriptor for MedicationsDayHistoryHeaderItem);
  *&v53 = v12;
  v16[2] = v19;
  sub_22816DFFC(&v53, &v16[5 * v18 + 4]);
  v56 = v16;
  v52 = v15;
  v15 = &v52;
  sub_2281C9DB4(0, v10, 0);
  v18 = a1 + 32;
  a1 = v52;
  v42 = type metadata accessor for MedicationsDayHistoryCell();
  v17 = *(v48 + *v49);
  v41 = v17;
  do
  {
    if (!v10)
    {
      __break(1u);
      goto LABEL_13;
    }

    v49 = v10;
    sub_228180FB0(v18, &v53);
    sub_228180FB0(&v53, v51);
    sub_228338A14();
    sub_22819A174(0);
    v20 = swift_dynamicCast();
    v21 = v50;
    if (!v20)
    {
      v21 = 0;
    }

    v47 = v21;
    v22 = v54;
    v23 = v55;
    __swift_project_boxed_opaque_existential_0(&v53, v54);
    v24 = (*(v23 + 8))(v22, v23);
    v45 = v25;
    v46 = v24;
    v48 = v18;
    v26 = v54;
    v27 = v55;
    __swift_project_boxed_opaque_existential_0(&v53, v54);
    v44 = (*(v27 + 16))(v26, v27);
    v12 = v54;
    v11 = v55;
    __swift_project_boxed_opaque_existential_0(&v53, v54);
    v28 = v7;
    v29 = *(v11 + 24);
    v30 = a2;
    v31 = v41;
    v19 = v43;
    v29(v12, v11);
    sub_22838F490();
    v32 = (v19 + *(v7 + 44));
    sub_228338A78(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell, &unk_2283A69C4);
    v15 = v42;
    *v32 = sub_22838FBB0();
    v32[1] = v33;
    v7 = v28;
    v34 = (v19 + v28[5]);
    v35 = v45;
    *v34 = v46;
    v34[1] = v35;
    *(v19 + v28[6]) = v44;
    *(v19 + v28[7]) = v47;
    *(v19 + v28[8]) = v31;
    a2 = v30;
    *(v19 + v28[10]) = v30;
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v52 = a1;
    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v16 = (v37 + 1);
    if (v37 >= v36 >> 1)
    {
      v15 = &v52;
      sub_2281C9DB4((v36 > 1), v37 + 1, 1);
      a1 = v52;
    }

    v54 = v28;
    v55 = sub_228338A78(&qword_27D824D28, type metadata accessor for MedicationsDayHistoryItem, &unk_22839B018);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
    sub_228338918(v19, boxed_opaque_existential_1);
    *(a1 + 16) = v16;
    sub_22816DFFC(&v53, a1 + 40 * v37 + 32);
    sub_22833897C(v19);
    v18 = v48 + 40;
    v10 = v49 - 1;
  }

  while (v49 != 1);
  sub_2281D5710(a1);
  return v56;
}

void *HistoryItemsProviderDataSource.makeHistoryItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = type metadata accessor for MedicationsDayHistoryItem(0);
  MEMORY[0x28223BE20](v29);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(a3 + 16);
  v28[1] = v3;
  v11 = a2;
  v12 = a3;
  v10(&v31, a2, a3);
  v13 = v31;
  v14 = type metadata accessor for MedicationsDayHistoryHeaderItem(0);
  v15 = swift_allocObject();
  sub_22838F490();
  v16 = (v15 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228338A78(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  *v16 = sub_22838FBB0();
  v16[1] = v17;
  *(v15 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = v13;
  v18 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = v18[2];
  v19 = v18[3];
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v18 = sub_228198710((v19 > 1), v21, 1, v18);
  }

  v32 = v14;
  v33 = sub_228338A78(&qword_27D827FA0, type metadata accessor for MedicationsDayHistoryHeaderItem, &protocol conformance descriptor for MedicationsDayHistoryHeaderItem);
  *&v31 = v15;
  v18[2] = v21;
  sub_22816DFFC(&v31, &v18[5 * v20 + 4]);
  v34 = v18;
  v30 = MEMORY[0x277D84F90];
  sub_2281C9DB4(0, v9, 0);
  v22 = v30;
  v23 = (a1 + 32);
  do
  {
    sub_2283386E8(v23, v11, v12, v8);
    v30 = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2281C9DB4((v24 > 1), v25 + 1, 1);
      v22 = v30;
    }

    v32 = v29;
    v33 = sub_228338A78(&qword_27D824D28, type metadata accessor for MedicationsDayHistoryItem, &unk_22839B018);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
    sub_228338918(v8, boxed_opaque_existential_1);
    *(v22 + 16) = v25 + 1;
    sub_22816DFFC(&v31, v22 + 40 * v25 + 32);
    sub_22833897C(v8);
    v23 += 5;
    --v9;
  }

  while (v9);
  sub_2281D5710(v22);
  return v34;
}

uint64_t sub_2283386E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_228180FB0(a1, v31);
  sub_228338A14();
  sub_22819A174(0);
  v8 = swift_dynamicCast();
  v9 = v30;
  if (!v8)
  {
    v9 = 0;
  }

  v29 = v9;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v27 = v13;
  v28 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v14);
  v26 = (*(v15 + 16))(v14, v15);
  v25 = (*(a3 + 8))(a2, a3);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v16);
  v18 = *(v17 + 24);
  v19 = type metadata accessor for MedicationsDayHistoryItem(0);
  v18(v16, v17);
  (*(a3 + 16))(v31, a2, a3);
  v20 = v31[0];
  sub_22838F490();
  v21 = (a4 + v19[11]);
  type metadata accessor for MedicationsDayHistoryCell();
  sub_228338A78(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell, &unk_2283A69C4);
  result = sub_22838FBB0();
  *v21 = result;
  v21[1] = v23;
  v24 = (a4 + v19[5]);
  *v24 = v28;
  v24[1] = v27;
  *(a4 + v19[6]) = v26;
  *(a4 + v19[7]) = v29;
  *(a4 + v19[8]) = v25;
  *(a4 + v19[10]) = v20;
  return result;
}

uint64_t sub_228338918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22833897C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsDayHistoryItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228338A14()
{
  result = qword_27D8247C8;
  if (!qword_27D8247C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8247C8);
  }

  return result;
}

uint64_t sub_228338A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228338AF4(uint64_t (*a1)(uint64_t, void))
{
  v3 = [v1 localizedOntologyEducationContent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v6 = a1(v5, MEMORY[0x277D12530]);

  return v6;
}

uint64_t _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE16doseFormStrengthSSSgvg_0()
{
  v0 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22833BD7C(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_228397F30;
      v9 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v10 = sub_22818E210();
      *(v8 + 32) = v2;
      *(v8 + 40) = v3;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = v6;
      *(v8 + 80) = v7;
      v11 = sub_22838F0C0();
      if (*(v8 + 16))
      {
        v12 = sub_228391FD0();
      }

      else
      {
        v12 = v11;
      }

      return v12;
    }
  }

  result = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (!v14)
  {
    return _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  }

  return result;
}

BOOL HKMedicationUserDomainConcept.isOntologyBacked.getter()
{
  v1 = [v0 firstOntologyCoding];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id HKMedicationUserDomainConcept.educationContentProviding.getter@<X0>(void *a1@<X8>)
{
  a1[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  a1[4] = sub_22818C470(&qword_27D827FA8, &qword_280DDB9E0, 0x277D115B8, &protocol conformance descriptor for HKMedicationUserDomainConcept);
  *a1 = v3;

  return v3;
}

uint64_t HKMedicationUserDomainConcept.hasEducation.getter()
{
  v1 = [v0 localizedOntologyEducationContent];
  if (v1)
  {
    v2 = v1;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    v3 = sub_22838FAA0();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id HKMedicationUserDomainConcept.attributions.getter()
{
  result = [v0 localizedOntologyEducationContent];
  if (result)
  {
    v2 = result;
    v3 = [result primarySection];

    if (v3)
    {
      sub_228392A90();

      sub_228231DFC();
      sub_228339034(&qword_27D825080, sub_228231DFC, MEMORY[0x277D83958]);
      v4 = sub_228391F90();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_228339034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKMedicationUserDomainConcept.isPregnancyDescriptionCritical.getter()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_228392A10();
  v3 = sub_228390F60();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22833BE54(v2, &unk_280DDBD10, MEMORY[0x277D11720]);
    v5 = 0;
  }

  else
  {
    v5 = sub_228390F40();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t HKMedicationUserDomainConcept.isLactationDescriptionCritical.getter()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_228392A10();
  v3 = sub_228390F60();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22833BE54(v2, &unk_280DDBD10, MEMORY[0x277D11720]);
    return 2;
  }

  else
  {
    v6 = sub_228390F50();
    (*(v4 + 8))(v2, v3);
    return v6 & 1;
  }
}

uint64_t HKMedicationUserDomainConcept.uniqueIdentifier.getter()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v4 = sub_22838F450();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2283393D0()
{
  v1 = [*v0 localizedOntologyEducationContent];
  if (v1)
  {
    v2 = v1;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    v3 = sub_22838FAA0();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_2283394E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = [*v3 localizedOntologyEducationContent];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v8 = a3(v7, MEMORY[0x277D12530]);

  return v8;
}

uint64_t sub_228339598()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_228392A10();
  v3 = sub_228390F60();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22833BE54(v2, &unk_280DDBD10, MEMORY[0x277D11720]);
    v5 = 0;
  }

  else
  {
    v5 = sub_228390F40();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t sub_2283396F0()
{
  sub_22833BD28(0, &unk_280DDBD10, MEMORY[0x277D11720]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_228392A10();
  v3 = sub_228390F60();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22833BE54(v2, &unk_280DDBD10, MEMORY[0x277D11720]);
    return 2;
  }

  else
  {
    v6 = sub_228390F50();
    (*(v4 + 8))(v2, v3);
    return v6 & 1;
  }
}

uint64_t sub_228339854()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v4 = sub_22838F450();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL sub_22833993C()
{
  v1 = [*v0 firstOntologyCoding];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_2283399F0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  a1[4] = sub_22818C470(&qword_27D827FA8, &qword_280DDB9E0, 0x277D115B8, &protocol conformance descriptor for HKMedicationUserDomainConcept);
  *a1 = v4;

  return v4;
}

uint64_t MedicationCompactEducationDataSource.init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v5 = qword_27D827FB0;
  *(v2 + qword_27D827FB0) = 0;
  *(v2 + qword_27D827FB8) = MEMORY[0x277D84FA0];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v6 = sub_22838F0C0();
  v7 = (v2 + qword_27D827FC0);
  *v7 = v6;
  v7[1] = v8;
  *(v2 + v5) = a1;

  *(v2 + qword_27D827FC8) = a2;

  v9 = sub_22838F920();

  sub_228339CD4(a1);
  sub_228391870();
  sub_22833A7D8(v11, v9);

  return v9;
}

uint64_t MedicationCompactEducationDataSource.__allocating_init(with:analyticsManager:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_22833BA48(a1, a2);

  return v4;
}

uint64_t MedicationCompactEducationDataSource.init(with:analyticsManager:)(void *a1, uint64_t a2)
{
  v2 = sub_22833BA48(a1, a2);

  return v2;
}

uint64_t sub_228339CD4(uint64_t a1)
{
  v17[0] = a1;
  v2 = MEMORY[0x277D85248];
  sub_22833BD28(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  sub_228232114(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = a1;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v11 = sub_228392790();
  v17[5] = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_2281A65B4(0);
  sub_228339034(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  sub_228391A70();
  sub_22833BE54(v5, &qword_280DDBAD0, v2);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v17[0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  sub_228339034(&unk_27D8259C0, sub_228232114, MEMORY[0x277CBCD60]);

  sub_228391AC0();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22833A020(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_228391870();
    sub_22833A7D8(v4, v3);
  }

  return result;
}

uint64_t sub_22833A094(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_22833A1E0()
{
}

uint64_t MedicationCompactEducationDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t MedicationCompactEducationDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationCompactEducationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228339034(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell, &protocol conformance descriptor for MedicationComponentsItemCell);
  sub_2283926B0();
  type metadata accessor for MedicationEducationItemCell();
  sub_228339034(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
  sub_2283926B0();
}

uint64_t sub_22833A494()
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228339034(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell, &protocol conformance descriptor for MedicationComponentsItemCell);
  sub_2283926B0();
  type metadata accessor for MedicationEducationItemCell();
  sub_228339034(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
  return sub_2283926B0();
}

uint64_t MedicationCompactEducationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  MEMORY[0x28223BE20](v2 - 8);

  sub_228391500();
  v3 = sub_22838FB60();
  swift_allocObject();
  v4 = sub_22838FB50();
  a1[3] = v3;
  result = sub_228339034(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_22833A6AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  MEMORY[0x28223BE20](v2 - 8);

  sub_228391500();
  v3 = sub_22838FB60();
  swift_allocObject();
  v4 = sub_22838FB50();
  a1[3] = v3;
  result = sub_228339034(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_22833A7D8(void *a1, uint64_t a2)
{
  v56 = a2;
  v55 = sub_22838F4A0();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22833BD28(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_22838FEF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v67[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v67[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v67[0] = a1;
  sub_228180FB0(v67, v63);
  v17 = a1;
  sub_22832642C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22833BE54(v6, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = v11;
    v19 = *(v8 + 32);
    v19(v16, v6, v7);
    (*(v8 + 16))(v14, v16, v7);
    v18 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_228198AA0((v20 > 1), v21 + 1, 1, v18);
    }

    (*(v8 + 8))(v16, v7);
    *(v18 + 2) = v21 + 1;
    v19(&v18[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21], v14, v7);
    v11 = v52;
  }

  sub_2283266DC(1, &v59);
  if (v60)
  {
    sub_22816DFFC(&v59, v62);
    sub_228180FB0(v62, &v59);
    v22 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
    v66 = v22;
    v24 = v22[2];
    v23 = v22[3];
    if (v24 >= v23 >> 1)
    {
      v22 = sub_228198710((v23 > 1), v24 + 1, 1, v22);
      v66 = v22;
    }

    __swift_destroy_boxed_opaque_existential_0(v62);
    v25 = v60;
    v26 = v61;
    v27 = __swift_mutable_project_boxed_opaque_existential_1(&v59, v60);
    MEMORY[0x28223BE20](v27);
    v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_228199BA4(v24, v29, &v66, v25, v26);
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    sub_22833BDE4(&v59, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v22 = MEMORY[0x277D84F90];
  }

  v31 = *(v56 + qword_27D827FC8);
  LOBYTE(v62[0]) = 0;
  sub_228327428(v62, v31, &v59);
  if (v60)
  {
    sub_22816DFFC(&v59, v62);
  }

  else
  {
    sub_22833BDE4(&v59, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    LOBYTE(v59) = 0;
    sub_228326FA8(v62);
  }

  sub_228180FB0(v62, &v59);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_228198710(0, v22[2] + 1, 1, v22);
    v66 = v22;
  }

  v34 = v22[2];
  v33 = v22[3];
  if (v34 >= v33 >> 1)
  {
    v22 = sub_228198710((v33 > 1), v34 + 1, 1, v22);
    v66 = v22;
  }

  v35 = v60;
  v36 = v61;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(&v59, v60);
  MEMORY[0x28223BE20](v37);
  v39 = &v52 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39);
  sub_228199BA4(v34, v39, &v66, v35, v36);
  __swift_destroy_boxed_opaque_existential_0(&v59);
  sub_228326D54(&v57);
  if (!v58)
  {
    v45 = &qword_280DDCD50;
    v46 = &qword_280DDCD60;
    v47 = MEMORY[0x277D10D48];
LABEL_27:
    sub_22833BDE4(&v57, v45, v46, v47);
    goto LABEL_28;
  }

  sub_22816DFFC(&v57, &v59);
  v41 = v64;
  v42 = v65;
  __swift_project_boxed_opaque_existential_0(v63, v64);
  (*(v42 + 48))(&v57, v41, v42);
  if (!v58)
  {
    __swift_destroy_boxed_opaque_existential_0(&v59);
    v45 = &qword_27D825988;
    v46 = &qword_27D825990;
    v47 = MEMORY[0x277D12508];
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(&v57, v58);
  v43 = sub_22838F960();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  if (v43)
  {
    sub_228180FB0(&v59, &v57);
    v66 = v22;
    v44 = v22[2];
    if (v44 >= v22[3] >> 1)
    {
      v22 = sub_228198710(1, v44 + 1, 1, v22);
      v66 = v22;
    }

    sub_2282C4FF4(0, 0, 1, &v57);
  }

  __swift_destroy_boxed_opaque_existential_0(&v59);
LABEL_28:
  sub_228194894(v22);

  v48 = v53;
  sub_22838F490();
  sub_22838F450();
  (*(v54 + 8))(v48, v55);
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_228198AA0(0, *(v18 + 2) + 1, 1, v18);
  }

  v50 = *(v18 + 2);
  v49 = *(v18 + 3);
  if (v50 >= v49 >> 1)
  {
    v18 = sub_228198AA0((v49 > 1), v50 + 1, 1, v18);
  }

  *(v18 + 2) = v50 + 1;
  (*(v8 + 32))(&v18[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v50], v11, v7);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  __swift_destroy_boxed_opaque_existential_0(v62);
  sub_228231D60(v63);
  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_22833B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v59 = sub_22838F4A0();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22833BD28(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_22838FEF0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v71[3] = a3;
  v71[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_228180FB0(v71, v67);
  sub_22832642C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22833BE54(v10, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = v15;
    v23 = *(v12 + 32);
    v23(v20, v10, v11);
    (*(v12 + 16))(v18, v20, v11);
    v22 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_228198AA0((v24 > 1), v25 + 1, 1, v22);
    }

    (*(v12 + 8))(v20, v11);
    *(v22 + 2) = v25 + 1;
    v23(&v22[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25], v18, v11);
    v15 = v56;
  }

  sub_2283266DC(1, &v63);
  if (v64)
  {
    sub_22816DFFC(&v63, v66);
    sub_228180FB0(v66, &v63);
    v26 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
    v70 = v26;
    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_228198710((v27 > 1), v28 + 1, 1, v26);
      v70 = v26;
    }

    __swift_destroy_boxed_opaque_existential_0(v66);
    v29 = v64;
    v30 = v65;
    v31 = __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
    MEMORY[0x28223BE20](v31);
    v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    sub_228199BA4(v28, v33, &v70, v29, v30);
    __swift_destroy_boxed_opaque_existential_0(&v63);
  }

  else
  {
    sub_22833BDE4(&v63, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v26 = MEMORY[0x277D84F90];
  }

  v35 = *(v60 + qword_27D827FC8);
  LOBYTE(v66[0]) = 0;
  sub_228327428(v66, v35, &v63);
  if (v64)
  {
    sub_22816DFFC(&v63, v66);
  }

  else
  {
    sub_22833BDE4(&v63, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    LOBYTE(v63) = 0;
    sub_228326FA8(v66);
  }

  sub_228180FB0(v66, &v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_228198710(0, v26[2] + 1, 1, v26);
    v70 = v26;
  }

  v38 = v26[2];
  v37 = v26[3];
  if (v38 >= v37 >> 1)
  {
    v26 = sub_228198710((v37 > 1), v38 + 1, 1, v26);
    v70 = v26;
  }

  v39 = v64;
  v40 = v65;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
  MEMORY[0x28223BE20](v41);
  v43 = &v56 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v43);
  sub_228199BA4(v38, v43, &v70, v39, v40);
  __swift_destroy_boxed_opaque_existential_0(&v63);
  sub_228326D54(&v61);
  if (!v62)
  {
    v49 = &qword_280DDCD50;
    v50 = &qword_280DDCD60;
    v51 = MEMORY[0x277D10D48];
LABEL_27:
    sub_22833BDE4(&v61, v49, v50, v51);
    goto LABEL_28;
  }

  sub_22816DFFC(&v61, &v63);
  v45 = v68;
  v46 = v69;
  __swift_project_boxed_opaque_existential_0(v67, v68);
  (*(v46 + 48))(&v61, v45, v46);
  if (!v62)
  {
    __swift_destroy_boxed_opaque_existential_0(&v63);
    v49 = &qword_27D825988;
    v50 = &qword_27D825990;
    v51 = MEMORY[0x277D12508];
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(&v61, v62);
  v47 = sub_22838F960();
  __swift_destroy_boxed_opaque_existential_0(&v61);
  if (v47)
  {
    sub_228180FB0(&v63, &v61);
    v70 = v26;
    v48 = v26[2];
    if (v48 >= v26[3] >> 1)
    {
      v26 = sub_228198710(1, v48 + 1, 1, v26);
      v70 = v26;
    }

    sub_2282C4FF4(0, 0, 1, &v61);
  }

  __swift_destroy_boxed_opaque_existential_0(&v63);
LABEL_28:
  sub_228194894(v26);

  v52 = v57;
  sub_22838F490();
  sub_22838F450();
  (*(v58 + 8))(v52, v59);
  sub_22838FED0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_228198AA0(0, *(v22 + 2) + 1, 1, v22);
  }

  v54 = *(v22 + 2);
  v53 = *(v22 + 3);
  if (v54 >= v53 >> 1)
  {
    v22 = sub_228198AA0((v53 > 1), v54 + 1, 1, v22);
  }

  *(v22 + 2) = v54 + 1;
  (*(v12 + 32))(&v22[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v54], v15, v11);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  __swift_destroy_boxed_opaque_existential_0(v66);
  sub_228231D60(v67);
  return __swift_destroy_boxed_opaque_existential_0(v71);
}

uint64_t sub_22833BA48(void *a1, uint64_t a2)
{
  *(v2 + qword_27D827FB0) = 0;
  *(v2 + qword_27D827FB8) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D827FC8) = a2;
  v4 = qword_280DDCF18;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  v6 = (v2 + qword_27D827FC0);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_22838F920();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);

  sub_22833B104(v11, v8, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t type metadata accessor for MedicationCompactEducationDataSource(uint64_t a1)
{
  result = qword_27D827FD8;
  if (!qword_27D827FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MedicationCompactEducationDataSource.__allocating_init(with:analyticsManager:)()
{
  return (*(v0 + class metadata base offset for MedicationCompactEducationDataSource + 104))();
}

{
  return (*(v0 + class metadata base offset for MedicationCompactEducationDataSource + 112))();
}

void sub_22833BD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22833BD7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22833BDE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_22833BD7C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22833BE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22833BD28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedicationFormsDataSource(uint64_t a1)
{
  result = qword_27D828000;
  if (!qword_27D828000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22833BF7C()
{
  sub_228340E88(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  sub_228340EEC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = *(v0 + qword_27D8252A8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v9 = sub_228392790();
  v12[5] = v9;
  v10 = sub_228392730();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_228212A9C(0);
  sub_2283414B8(&qword_27D828030, sub_228212A9C, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_228340468(v3, &qword_280DDBAD0, v12[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2283414B8(&qword_27D828038, sub_228340EEC, MEMORY[0x277CBCD60]);
  sub_228391AC0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22833C29C()
{
  sub_228340E88(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  sub_2283413B0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = *(v0 + qword_27D8252A8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v9 = sub_228392790();
  v12[5] = v9;
  v10 = sub_228392730();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_2281CC9A0(0);
  sub_2283414B8(&qword_27D824868, sub_2281CC9A0, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_228340468(v3, &qword_280DDBAD0, v12[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2283414B8(&qword_27D828048, sub_2283413B0, MEMORY[0x277CBCD60]);
  sub_228391AC0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void *sub_22833C5BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*(*result + class metadata base offset for MedicationOptionsDataSource + 80))();
    sub_228194894(v4);

    sub_22838FF60();

    v6 = (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 88))(v5);
    sub_228194894(v6);

    sub_22838FF60();

    v8 = (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 96))(v7);
    sub_228194894(v8);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22833C75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_228390040();
  (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 104))(a1);
  if (v11)
  {

    sub_228390010();
    (*(v5 + 8))(v10, v4);
    (*(v5 + 32))(v10, v8, v4);
  }

  (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 112))(a1);
  if (v12)
  {

    sub_228390000();
    (*(v5 + 8))(v10, v4);
    (*(v5 + 32))(v10, v8, v4);
  }

  v13 = sub_228390090();
  *(v14 + 16) = 0;
  v13(v17, 0);
  v15 = sub_2283900C0();
  (*(v5 + 8))(v10, v4);
  return v15;
}

uint64_t sub_22833CA0C()
{
  v1 = qword_27D827FF8;
  if (*(v0 + qword_27D827FF8))
  {
    v2 = *(v0 + qword_27D827FF8);
  }

  else
  {
    v2 = sub_22833CA74(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22833CA74(uint64_t a1)
{
  v2 = sub_228390FB0();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390B70();
  v28 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = MEMORY[0x277D83D88];
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, v11);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  sub_228340E08(a1 + qword_27D828B70, v14, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v21 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
  {
    sub_228340468(v14, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    v22 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    sub_228340468(v20, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source);
  }

  else
  {
    sub_2283404D8(v14, v20, type metadata accessor for MedicationSearchItem.Source);
    sub_228340540(v14, type metadata accessor for MedicationSearchItem);
    v23 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
    sub_2283405A0(v20, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v28;
      (*(v28 + 32))(v10, v18, v5);
      (*(v24 + 16))(v8, v10, v5);
      sub_228390FC0();
      v31 = sub_228390F80();
      swift_getKeyPath();
      sub_228340E88(0, &qword_27D828018, MEMORY[0x277D116A0], MEMORY[0x277D83940]);
      sub_228340CF0();
      v25 = sub_228392150();

      (*(v29 + 8))(v4, v30);
      (*(v24 + 8))(v10, v5);
      return v25;
    }

    sub_228340540(v18, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

void *sub_22833D010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v5 = sub_228390C30();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormStepResult(0);
  v7 = *(v46 - 8);
  v8 = MEMORY[0x28223BE20](v46);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - v10;
  v44 = type metadata accessor for FormStepResult;
  v11 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  *(v3 + qword_27D827FE8) = 0;
  v21 = (v3 + qword_27D827FF0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v3 + qword_27D829030);
  v47 = sub_228392000();
  v48 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B4CD0);

  v24 = v48;
  *v22 = v47;
  v22[1] = v24;
  v25 = v45;
  *(v3 + qword_27D827FF8) = 0;
  v26 = v17;
  sub_228340E08(v25, v20, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  v27 = sub_228340F48(v20, a2, sub_22833BF7C);

  sub_228391870();
  v28 = v46;
  sub_228340E08(v17, v15, &unk_27D827790, v44);
  if ((*(v7 + 48))(v15, 1, v28) == 1)
  {

    sub_228340468(v25, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  }

  else
  {
    v29 = v43;
    sub_2282F7010(v15, v43);
    v30 = v42;
    sub_2283404D8(v29, v42, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v39;
      v33 = v40;
      v35 = v41;
      (*(v40 + 32))(v39, v30, v41);
      v31 = sub_228390C10();
      v32 = v36;

      sub_228340468(v25, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
      (*(v33 + 8))(v34, v35);
      sub_228340540(v29, type metadata accessor for FormStepResult);
      sub_228340468(v26, &unk_27D827790, type metadata accessor for FormStepResult);
      goto LABEL_7;
    }

    sub_228340468(v25, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    sub_228340540(v29, type metadata accessor for FormStepResult);
  }

  sub_228340468(v17, &unk_27D827790, type metadata accessor for FormStepResult);
  v31 = 0;
  v32 = 0;
LABEL_7:
  v37 = (v27 + qword_27D827FF0);
  *v37 = v31;
  v37[1] = v32;

  return v27;
}

void *sub_22833D578(unint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    return sub_22833C75C(a1, a2);
  }

  if (a1 == 2)
  {
    result = sub_22833C75C(2, a2);
    if (result)
    {
      v10 = result;
      v11 = result;
      [v11 contentInsets];
      [v11 setContentInsets_];

      return v10;
    }
  }

  else
  {
    v12 = v6;
    sub_228390040();
    v13 = sub_2283900C0();
    (*(v5 + 8))(v8, v12);
    return v13;
  }

  return result;
}

void *sub_22833D6C0()
{
  v0 = sub_228390C30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22833CA0C();
  swift_weakInit();
  v21 = *(v4 + 16);
  if (v21)
  {
    v5 = 0;
    v19 = v1 + 16;
    v20 = (v1 + 8);
    v6 = MEMORY[0x277D84F90];
    v17 = v4;
    v18 = v0;
    while (v5 < *(v4 + 16))
    {
      (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);
      sub_22833DA00(v3, &v22);
      (*v20)(v3, v0);
      if (v23)
      {
        sub_22816DFFC(&v22, v25);
        sub_22816DFFC(v25, &v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_228198710(0, v6[2] + 1, 1, v6);
          v26 = v6;
        }

        v9 = v6[2];
        v8 = v6[3];
        if (v9 >= v8 >> 1)
        {
          v6 = sub_228198710((v8 > 1), v9 + 1, 1, v6);
          v26 = v6;
        }

        v10 = v23;
        v11 = v24;
        v12 = __swift_mutable_project_boxed_opaque_existential_1(&v22, v23);
        MEMORY[0x28223BE20](v12);
        v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14);
        sub_228199BA4(v9, v14, &v26, v10, v11);
        __swift_destroy_boxed_opaque_existential_0(&v22);
        v4 = v17;
        v0 = v18;
      }

      else
      {
        sub_228340468(&v22, &qword_280DDCD50, sub_22817A700);
      }

      if (v21 == ++v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v20)(v3, v0);

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_13:

    swift_weakDestroy();
    return v6;
  }

  return result;
}

uint64_t sub_22833DA00@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v73 = a1;
  v5 = sub_228390460();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v62 - v10;
  v11 = sub_22838FFC0();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_228390C30();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v13;
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_228391220();
  v14 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v72 = sub_228391250();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_228391590();
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v64 = v14;
    v68 = v7;
    v69 = a3;
    v70 = v3;
    v25 = v73;
    v87 = result;
    v26 = sub_228390C00();
    v28 = v27;
    sub_228391520();

    v66 = v26;
    v67 = v28;
    sub_228391540();
    v63 = objc_opt_self();
    v29 = [v63 labelColor];
    v30 = sub_228391450();
    sub_228391420();
    v30(v91, 0);
    v31 = sub_228390C10();
    v33 = *(v87 + qword_27D827FF0 + 8);
    v34 = v25;
    v85 = v32;
    v86 = v31;
    if (v33 && (v31 != *(v87 + qword_27D827FF0) || v33 != v32))
    {
      sub_228393460();
    }

    v35 = v64;
    v36 = v92;
    v91[3] = v92;
    v91[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
    v38 = *(v88 + 16);
    v65 = v23;
    v38(boxed_opaque_existential_1, v23, v36);
    sub_228340E88(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    sub_2283912F0();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_228397F40;
    v64 = v39;
    v40 = sub_228391230();
    (*(*(v40 - 8) + 56))(v19, 1, 1, v40);
    sub_228391240();
    v41 = v74;
    (*(v35 + 104))(v16, *MEMORY[0x277D74A98], v74);
    sub_2283912E0();
    (*(v35 + 8))(v16, v41);
    (*(v71 + 8))(v21, v72);
    v42 = swift_allocObject();
    v43 = v87;
    swift_weakInit();
    v44 = v77;
    v45 = v76;
    v46 = v78;
    (*(v77 + 16))(v76, v34, v78);
    v47 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v48 = swift_allocObject();
    v50 = v85;
    v49 = v86;
    *(v48 + 2) = v42;
    *(v48 + 3) = v49;
    *(v48 + 4) = v50;
    (*(v44 + 32))(&v48[v47], v45, v46);
    v51 = v80;
    v52 = v81;
    *v81 = 1;
    (*(v79 + 104))(v52, *MEMORY[0x277D10F90], v51);

    v53 = v84;
    sub_228391390();
    v54 = [v63 secondarySystemBackgroundColor];
    sub_228391370();
    v55 = sub_2283913A0();
    (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
    v57 = *(v43 + qword_27D829030);
    v56 = *(v43 + qword_27D829030 + 8);
    v89 = 46;
    v90 = 0xE100000000000000;

    MEMORY[0x22AAB5C80](v66, v67);

    v58 = v89;
    v59 = v90;
    v89 = v57;
    v90 = v56;

    MEMORY[0x22AAB5C80](v58, v59);

    (*(v82 + 104))(v68, *MEMORY[0x277D11140], v83);
    v60 = sub_228390170();
    v61 = v69;
    *(v69 + 24) = v60;
    v61[4] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    __swift_allocate_boxed_opaque_existential_1(v61);
    sub_228390160();

    (*(v88 + 8))(v65, v92);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22833E414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = (Strong + qword_27D827FF0);
    *v12 = a3;
    v12[1] = a4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = sub_228390C30();
    (*(*(v14 - 8) + 16))(v10, a5, v14);
    v15 = type metadata accessor for FormStepResult(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    sub_228391850();

    return sub_228340468(v10, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t *sub_22833E624()
{
  v1 = sub_228390460();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838FFC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (*(v0 + qword_27D827FE8) == 1)
  {

    return sub_22833EA50();
  }

  else
  {
    sub_228340E88(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    v19 = v4;
    v14 = v13;
    *(v13 + 16) = xmmword_228397F40;
    v20 = "INGREDIENTS_SUBTITLE_PREFIX";
    sub_22833EF94(v23);
    swift_allocObject();
    swift_weakInit();

    sub_228391390();
    v15 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v16 = sub_2283913A0();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    v17 = *(v0 + qword_27D829030 + 8);
    v21 = *(v0 + qword_27D829030);
    v22 = v17;

    MEMORY[0x22AAB5C80](0x726F4D776F68532ELL, 0xE900000000000065);
    (*(v6 + 104))(v8, *MEMORY[0x277D10F98], v5);
    (*(v2 + 104))(v19, *MEMORY[0x277D11140], v1);
    v14[7] = sub_228390170();
    v14[8] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    __swift_allocate_boxed_opaque_existential_1(v14 + 4);
    sub_228390160();

    return v14;
  }
}

uint64_t sub_22833EA50()
{
  v1 = v0;
  v45 = *v0;
  v55 = sub_228390C30();
  v43 = *(v55 - 8);
  v2 = MEMORY[0x28223BE20](v55);
  v54 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = MEMORY[0x22AAB6620](v2);

  v4 = 0;
  sub_2282F4D1C(v57);

  v5 = v57[0];
  v6 = MEMORY[0x277D84F90];
  v46 = *(v57[0] + 2);
  if (v46)
  {
    v7 = 0;
    v44 = v57[0] + 32;
    v52 = (v43 + 8);
    v53 = v43 + 16;
    v8 = MEMORY[0x277D84F90];
    v42 = v0;
    v41 = v57[0];
    do
    {
      if (v7 >= *(v5 + 2))
      {
        __break(1u);
        goto LABEL_29;
      }

      v51 = *&v44[8 * v7];
      v11 = sub_22833CA0C();
      v12 = *(v11 + 16);
      if (v12)
      {
        v48 = v7;
        v49 = v8;
        v50 = v4;
        v57[0] = v6;
        sub_2281C9E44(0, v12, 0);
        v13 = v57[0];
        v14 = *(v43 + 80);
        v47 = v11;
        v15 = v11 + ((v14 + 32) & ~v14);
        v16 = *(v43 + 72);
        v17 = *(v43 + 16);
        do
        {
          v18 = v54;
          v19 = v55;
          v17(v54, v15, v55);
          v20 = sub_228390C00();
          v22 = v21;
          (*v52)(v18, v19);
          v57[0] = v13;
          v24 = *(v13 + 2);
          v23 = *(v13 + 3);
          if (v24 >= v23 >> 1)
          {
            sub_2281C9E44((v23 > 1), v24 + 1, 1);
            v13 = v57[0];
          }

          *(v13 + 2) = v24 + 1;
          v25 = &v13[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
          v15 += v16;
          --v12;
        }

        while (v12);

        v1 = v42;
        v8 = v49;
        v4 = v50;
        v6 = MEMORY[0x277D84F90];
        v5 = v41;
        v7 = v48;
      }

      else
      {

        v13 = v6;
      }

      v57[0] = sub_228392A50();
      v57[1] = v26;
      MEMORY[0x28223BE20](v57[0]);
      *(&v41 - 2) = v57;
      v27 = sub_22830884C(sub_228340C90, (&v41 - 4), v13);

      if ((v27 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60[0] = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2281C9E64(0, *(v8 + 16) + 1, 1);
          v8 = v60[0];
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_2281C9E64((v9 > 1), v10 + 1, 1);
          v8 = v60[0];
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v51;
      }

      ++v7;
    }

    while (v7 != v46);

    v29 = *(v8 + 16);
    if (!v29)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (!v29)
    {
LABEL_26:

      return MEMORY[0x277D84F90];
    }
  }

  v60[0] = v6;
  sub_2281C9DB4(0, v29, 0);
  v30 = 0;
  v31 = v60[0];
  while (v30 < *(v8 + 16))
  {
    v56 = *(v8 + 8 * v30 + 32);
    sub_22833F1B8(&v56, v1, v45, v57);
    v60[0] = v31;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_2281C9DB4((v32 > 1), v33 + 1, 1);
    }

    ++v30;
    v34 = v58;
    v35 = v59;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    MEMORY[0x28223BE20](v36);
    v38 = &v41 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    sub_2282E841C(v33, v38, v60, v34, v35);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v31 = v60[0];
    if (v29 == v30)
    {

      return v31;
    }
  }

LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22833EF94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = MEMORY[0x277D74C30];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228391520();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v4 = [objc_opt_self() tintColor];
  v5 = sub_228391450();
  sub_228391420();
  return v5(v7, 0);
}

uint64_t sub_22833F0B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27D827FE8) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = sub_22833EA50();
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_228194894(v4);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22833F1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v75 = a2;
  v70 = a4;
  v5 = sub_228390460();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228340E88(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v52 - v9;
  v63 = sub_22838FFC0();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v65 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_228391220();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v7);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = v52 - v14;
  v59 = sub_228391250();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, v7);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v52 - v18;
  v71 = sub_228391590();
  v64 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_228391520();
  sub_228392A60();
  sub_228391540();
  v55 = objc_opt_self();
  v23 = [v55 labelColor];
  v24 = v21;
  v25 = sub_228391450();
  sub_228391420();
  v25(v74, 0);
  sub_228391870();
  v26 = type metadata accessor for FormStepResult(0);
  if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
  {
    sub_228340468(v19, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    sub_228234030();
    sub_228340540(v19, type metadata accessor for FormStepResult);
  }

  sub_228393520();
  MEMORY[0x22AAB7100](v22);
  sub_228393570();
  v72 = sub_228393600();
  v73 = v27;
  MEMORY[0x22AAB5C80](0x6D726F665FLL, 0xE500000000000000);
  sub_228393520();
  MEMORY[0x22AAB7100](v22);
  v74[0] = sub_228393570();
  v28 = sub_228393420();
  MEMORY[0x22AAB5C80](v28);

  v56 = v72;
  v54 = v73;
  v29 = v71;
  v74[3] = v71;
  v74[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  v31 = v64;
  v32 = *(v64 + 16);
  v53 = v24;
  v32(boxed_opaque_existential_1, v24, v29);
  sub_228340E88(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_228397F40;
  v52[1] = v33;
  v34 = sub_228391230();
  (*(*(v34 - 8) + 56))(v57, 1, 1, v34);
  sub_228391240();
  v35 = v60;
  v36 = v61;
  (*(v60 + 104))(v12, *MEMORY[0x277D74A98], v61);
  sub_2283912E0();
  (*(v35 + 8))(v12, v36);
  (*(v58 + 8))(v16, v59);
  v37 = swift_allocObject();
  v38 = v75;
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v22;
  v40 = v65;
  *v65 = 1;
  (*(v62 + 104))(v40, *MEMORY[0x277D10F90], v63);

  v41 = v68;
  sub_228391390();
  v42 = [v55 secondarySystemBackgroundColor];
  sub_228391370();
  v43 = sub_2283913A0();
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
  v45 = *(v38 + qword_27D829030);
  v44 = *(v38 + qword_27D829030 + 8);
  v72 = 46;
  v73 = 0xE100000000000000;

  v46 = sub_228392A60();
  MEMORY[0x22AAB5C80](v46);

  v47 = v72;
  v48 = v73;
  v72 = v45;
  v73 = v44;

  MEMORY[0x22AAB5C80](v47, v48);

  (*(v66 + 104))(v69, *MEMORY[0x277D11140], v67);
  v49 = sub_228390170();
  v50 = v70;
  v70[3] = v49;
  v50[4] = sub_2283414B8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  __swift_allocate_boxed_opaque_existential_1(v50);
  sub_228390160();
  (*(v31 + 8))(v53, v71);
}

uint64_t sub_22833FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228340E88(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = (Strong + qword_27D827FF0);
    *v8 = 0;
    v8[1] = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    *v6 = a3;
    v10 = type metadata accessor for FormStepResult(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    sub_228391850();

    return sub_228340468(v6, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t sub_22833FD8C()
{
  v1 = sub_22838F4A0();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228390B70();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228340E88(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, v7);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  sub_228340E08(v0 + qword_27D828B70, v10, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v17 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_228340468(v10, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    v18 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    sub_228340468(v16, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source);
  }

  else
  {
    sub_2283404D8(v10, v16, type metadata accessor for MedicationSearchItem.Source);
    sub_228340540(v10, type metadata accessor for MedicationSearchItem);
    v19 = type metadata accessor for MedicationSearchItem.Source(0);
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
    sub_2283405A0(v16, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v29;
      (*(v29 + 32))(v6, v14, v4);
      sub_228340E88(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_228397F40;
      v22 = sub_228390B50();
      sub_2283408CC(v22, v23);

      v30 = 0x74497265746F6F46;
      v31 = 0xEB000000005F6D65;
      sub_22838F490();
      v24 = sub_22838F450();
      v26 = v25;
      (*(v28 + 8))(v3, v1);
      MEMORY[0x22AAB5C80](v24, v26);

      *(v21 + 56) = sub_228390330();
      *(v21 + 64) = sub_2283414B8(&qword_27D8258C8, MEMORY[0x277D110D8], MEMORY[0x277D110D0]);
      __swift_allocate_boxed_opaque_existential_1((v21 + 32));
      sub_228390310();
      (*(v20 + 8))(v6, v4);
      return v21;
    }

    sub_228340540(v14, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228340300()
{
}

uint64_t sub_228340358()
{
  v0 = sub_22838FFB0();

  sub_228340468(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  return swift_deallocClassInstance();
}

uint64_t sub_228340468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228340E88(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2283404D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228340540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283405A0(uint64_t a1, uint64_t a2)
{
  sub_228340E88(0, &qword_27D828010, type metadata accessor for MedicationSearchItem.Source, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228340634(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2283406C0(v3);
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

char *sub_2283406D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228340E88(0, &qword_27D823E20, sub_22819A00C, MEMORY[0x277D84560]);
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

uint64_t sub_228340874(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

id sub_2283408CC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76968];
  result = [v2 _preferredFontForTextStyle_weight_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  result = [v2 _preferredFontForTextStyle_weight_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = result;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228340E88(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  *(inited + 64) = v8;
  *(inited + 40) = v5;
  v19 = v7;
  v20 = v5;
  sub_2281A859C(inited);
  swift_setDeallocating();
  sub_228340540(inited + 32, sub_2281D50E8);
  v9 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v10 = sub_228391FC0();

  type metadata accessor for Key(0);
  sub_2283414B8(&qword_280DDBA40, type metadata accessor for Key, &unk_22839759C);
  v11 = sub_228391F10();

  v12 = [v9 initWithString:v10 attributes:{v11, 0xE000000000000000}];

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_228397F40;
  *(v13 + 32) = v19;
  *(v13 + 64) = v8;
  *(v13 + 40) = v21;
  v14 = v21;
  sub_2281A859C(v13);
  swift_setDeallocating();
  sub_228340540(v13 + 32, sub_2281D50E8);
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_228391FC0();
  v17 = sub_228391F10();

  v18 = [v15 initWithString:v16 attributes:v17];

  [v12 appendAttributedString_];
  return v12;
}

uint64_t sub_228340C90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

unint64_t sub_228340CF0()
{
  result = qword_27D828020;
  if (!qword_27D828020)
  {
    sub_228340E88(255, &qword_27D828018, MEMORY[0x277D116A0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828020);
  }

  return result;
}

uint64_t sub_228340D78(uint64_t a1)
{
  v3 = *(sub_228390C30() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_22833E414(a1, v4, v5, v6, v7);
}

uint64_t sub_228340E08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228340E88(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228340E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_228340F48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v24 = a1;
  v25 = a3;
  v4 = v3;
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_27D8252B0) = MEMORY[0x277D84FA0];
  sub_228340E08(a1, v4 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  *(v4 + qword_27D8252A8) = a2;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v26, "MutableArray<");
  HIWORD(v26[1]) = -4864;
  sub_22838F490();
  v11 = sub_22838F450();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x22AAB5C80](v11, v13);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v14 = sub_22838FF30();
  sub_228340E88(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228398270;
  v15 = *(*v14 + class metadata base offset for MedicationOptionsDataSource + 80);

  v17 = v15(v16);
  sub_228194894(v17);

  v18 = sub_22838FED0();
  v19 = (*(*v14 + class metadata base offset for MedicationOptionsDataSource + 88))(v18);
  sub_228194894(v19);

  v20 = sub_22838FED0();
  v21 = (*(*v14 + class metadata base offset for MedicationOptionsDataSource + 96))(v20);
  sub_228194894(v21);

  sub_22838FED0();
  sub_22838FF50();

  v25(v22);

  sub_228340468(v24, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v14;
}

void sub_2283413EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2283414B8(a4, a5, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v8 = sub_2283917D0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2283414B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_228341500(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = (*(*result + class metadata base offset for MedicationOptionsDataSource + 80))();
    sub_228194894(v3);

    sub_22838FF60();

    v5 = (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 88))(v4);
    sub_228194894(v5);

    sub_22838FF60();

    v7 = (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 96))(v6);
    sub_228194894(v7);

    sub_22838FF60();
  }

  return result;
}

uint64_t InteractionFactorsInfoItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InteractionFactorsInfoItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InteractionFactorsInfoItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InteractionFactorsInfoItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2283417B0(uint64_t a1)
{
  v2 = sub_228343C2C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2283417FC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_228341860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2283418B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_228341978()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager;
  if (*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v2 = sub_228390700();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_228341AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    MEMORY[0x22AAB5C80](a2, a3);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v11 = sub_228391FC0();

    [v10 setText_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v12 = sub_228392AD0();
    [v10 setFont_];

    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setNumberOfLines_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v13 = *(v9 + v4);
    *(v9 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

id sub_228341CF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_2283437C0(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_228341D6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] = 0;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for InteractionFactorsInfoCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  sub_22834212C();
  sub_228342588();

  return v11;
}

id sub_228341E9C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___settingsManager] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionFactorsInfoCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_228341FCC()
{
  sub_22834212C();
  sub_228342588();
  v2 = sub_228392000();
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000028, 0x80000002283B4F90);

  sub_228343218(v2, v3);
}

void sub_22834212C()
{
  v1 = v0;
  [v0 setUserInteractionEnabled_];
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22839F000;
  *(inited + 32) = sub_228341A4C();
  *(inited + 40) = sub_228341A5C();
  *(inited + 48) = sub_228341A7C();
  *(inited + 56) = sub_228341A8C();
  *(inited + 64) = sub_228341CB0();
  *(inited + 72) = sub_228341CC0();
  v3 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v5 = i;
    v6 = [v1 contentView];
    [v6 addSubview_];

    if (v3)
    {
      v7 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_30;
      }

      v7 = *(inited + 40);
    }

    v8 = v7;
    v9 = [v1 contentView];
    [v9 addSubview_];

    if (v3)
    {
      v10 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_30;
      }

      v10 = *(inited + 48);
    }

    v11 = v10;
    v12 = [v1 contentView];
    [v12 addSubview_];

    if (v3)
    {
      v13 = MEMORY[0x22AAB6D80](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_30;
      }

      v13 = *(inited + 56);
    }

    v14 = v13;
    v15 = [v1 contentView];
    [v15 addSubview_];

    if (v3)
    {
      v16 = MEMORY[0x22AAB6D80](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_30;
      }

      v16 = *(inited + 64);
    }

    v17 = v16;
    v18 = [v1 contentView];
    [v18 addSubview_];

    if (v3)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v19 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v19 = MEMORY[0x22AAB6D80](5, inited);
LABEL_19:
  v20 = v19;
  v21 = [v1 contentView];
  [v21 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_228341978();
  v22 = sub_228390730();

  if (v22)
  {
    v23 = [objc_opt_self() sharedBehavior];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 isAppleInternalInstall];

      if (v25)
      {
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_228397F20;
        *(v26 + 32) = sub_228341CE0();
        *(v26 + 40) = sub_228341D50();
        if ((v26 & 0xC000000000000001) != 0)
        {
          goto LABEL_38;
        }

        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        for (j = *(v26 + 32); ; j = MEMORY[0x22AAB6D80](0, v26))
        {
          v28 = j;
          v29 = [v1 contentView];
          [v29 addSubview_];

          if ((v26 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v30 = *(v26 + 40);
            goto LABEL_28;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          ;
        }

        v30 = MEMORY[0x22AAB6D80](1, v26);
LABEL_28:
        v31 = v30;
        v32 = [v1 contentView];
        [v32 addSubview_];

        swift_setDeallocating();
        swift_arrayDestroy();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_228342588()
{
  v1 = v0;
  v112 = objc_opt_self();
  sub_228180ED0();
  v111 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22839A9E0;
  v4 = sub_228341A4C();
  v5 = [v4 leadingAnchor];

  v6 = [v1 contentView];
  v7 = [v6 layoutMarginsGuide];

  v8 = [v7 &selRef_logTimeChanged_ + 1];
  v9 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel;
  v11 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalHeaderLabel] trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor_];

  *(v3 + 40) = v15;
  v16 = [*&v1[v10] topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v3 + 48) = v19;
  v20 = sub_228341A5C();
  v21 = [v20 leadingAnchor];

  v22 = [*&v1[v10] leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v3 + 56) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel;
  v25 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___criticalBodyLabel] trailingAnchor];
  v26 = [*&v1[v10] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v3 + 64) = v27;
  v28 = [*&v1[v24] topAnchor];
  v29 = [*&v1[v10] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v3 + 72) = v30;
  v31 = sub_228341A7C();
  v32 = [v31 leadingAnchor];

  v33 = [*&v1[v10] leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v3 + 80) = v34;
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel;
  v36 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousHeaderLabel] trailingAnchor];
  v37 = [*&v1[v10] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v3 + 88) = v38;
  v39 = v35;
  v40 = [*&v1[v35] topAnchor];
  v41 = [*&v1[v24] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];

  *(v3 + 96) = v42;
  v43 = sub_228341A8C();
  v44 = [v43 leadingAnchor];

  v45 = [*&v1[v10] leadingAnchor];
  v46 = [v44 &selRef_freeTextMedicationName + 5];

  *(v3 + 104) = v46;
  v47 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel;
  v48 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___seriousBodyLabel] trailingAnchor];
  v49 = [*&v1[v10] trailingAnchor];
  v50 = [v48 &selRef_freeTextMedicationName + 5];

  *(v3 + 112) = v50;
  v51 = [*&v1[v47] topAnchor];
  v52 = [*&v1[v39] bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:8.0];

  *(v3 + 120) = v53;
  v54 = sub_228341CB0();
  v55 = [v54 leadingAnchor];

  v56 = [*&v1[v10] leadingAnchor];
  v57 = [v55 &selRef_freeTextMedicationName + 5];

  *(v3 + 128) = v57;
  v58 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel;
  v59 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateHeaderLabel] trailingAnchor];
  v60 = [*&v1[v10] trailingAnchor];
  v61 = [v59 &selRef_freeTextMedicationName + 5];

  *(v3 + 136) = v61;
  v62 = [*&v1[v58] topAnchor];
  v63 = [*&v1[v47] bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:16.0];

  *(v3 + 144) = v64;
  v65 = sub_228341CC0();
  v66 = [v65 leadingAnchor];

  v67 = [*&v1[v10] leadingAnchor];
  v68 = [v66 &selRef_freeTextMedicationName + 5];

  *(v3 + 152) = v68;
  v69 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel];
  v70 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___moderateBodyLabel] trailingAnchor];
  v71 = [*&v1[v10] trailingAnchor];
  v72 = [v70 &selRef_freeTextMedicationName + 5];

  *(v3 + 160) = v72;
  v73 = [*v69 topAnchor];
  v74 = [*&v1[v58] bottomAnchor];
  v75 = [v73 &selRef_resignFirstResponder + 6];

  v76 = v112;
  *(v3 + 168) = v75;
  v77 = sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v78 = sub_228392190();

  v79 = &off_2785F4000;
  [v112 activateConstraints_];

  sub_228341978();
  LOBYTE(v3) = sub_228390730();

  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v80 = [objc_opt_self() sharedBehavior];
  if (!v80)
  {
    __break(1u);
    return;
  }

  v81 = v80;
  v82 = [v80 isAppleInternalInstall];

  if (v82)
  {
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_228399E10;
    v84 = sub_228341CE0();
    v85 = [v84 leadingAnchor];

    v86 = [*&v1[v10] &selRef_logTimeChanged_ + 1];
    v87 = [v85 constraintEqualToAnchor_];

    *(v83 + 32) = v87;
    v111 = v77;
    v88 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel;
    v89 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorHeaderLabel] trailingAnchor];
    v90 = [*&v1[v10] trailingAnchor];
    v91 = [v89 constraintEqualToAnchor_];

    *(v83 + 40) = v91;
    v92 = [*&v1[v88] topAnchor];
    v93 = [*v69 bottomAnchor];
    v94 = [v92 constraintEqualToAnchor:v93 constant:16.0];

    *(v83 + 48) = v94;
    v95 = sub_228341D50();
    v96 = [v95 leadingAnchor];

    v97 = [*&v1[v10] leadingAnchor];
    v98 = [v96 constraintEqualToAnchor_];

    *(v83 + 56) = v98;
    v69 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel];
    v99 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell____lazy_storage___minorBodyLabel] trailingAnchor];
    v100 = [*&v1[v10] trailingAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    *(v83 + 64) = v101;
    v102 = [*v69 topAnchor];
    v79 = &off_2785F4000;
    v103 = [*&v1[v88] bottomAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:8.0];

    *(v83 + 72) = v104;
    v76 = v112;
    v105 = (v83 + 80);
  }

  else
  {
LABEL_5:
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_228396260;
    v105 = (v106 + 32);
  }

  v107 = [v1 contentView];
  v108 = [v107 bottomAnchor];

  v109 = [*v69 bottomAnchor];
  v110 = [v108 &selRef_resignFirstResponder + 6];

  *v105 = v110;
  v113 = sub_228392190();

  [v76 v79[123]];
}

void sub_228343218(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = sub_228341A5C();
    v21 = a1;
    v22 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B4D30);
    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_228341A8C();
    v21 = a1;
    v22 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B4D50);
    v11 = sub_228391FC0();

    [v10 setAccessibilityIdentifier_];

    v12 = sub_228341CC0();
    v21 = a1;
    v22 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B4D70);
    v13 = sub_228391FC0();

    [v12 setAccessibilityIdentifier_];

    v14 = sub_228341D50();
    v21 = a1;
    v22 = a2;

    MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283B4D90);
    v20 = sub_228391FC0();

    [v14 setAccessibilityIdentifier_];

    v15 = v20;
  }

  else
  {
    sub_228391190();
    v16 = sub_2283911A0();
    v17 = sub_2283925E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22816B000, v16, v17, "Could not set Interaction Factors Info Cell AXIDs because base ID was unexpectedly nil.", v18, 2u);
      MEMORY[0x22AAB7B80](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

id InteractionFactorsInfoCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2283437C0(uint64_t a1)
{
  sub_228343BD8(0, &qword_27D825628, MEMORY[0x277D12720]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (a1 == 1)
  {
    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
    v6 = [objc_opt_self() labelColor];
    v7 = sub_228392800();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v11[0] = 0xD000000000000015;
    v11[1] = 0x80000002283AFAD0;
    MEMORY[0x22AAB5C80](0x4C41434954495243, 0xE800000000000000);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    sub_228392AD0();
    v8 = sub_2283927E0();
    [v5 setAttributedText_];
  }

  else
  {
    sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, a1);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v9 = sub_228391FC0();

    [v5 setText_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = sub_228392AD0();
    [v5 setFont_];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  return v5;
}

void sub_228343BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228343C2C()
{
  result = qword_27D8280A0;
  if (!qword_27D8280A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8280A0);
  }

  return result;
}

uint64_t sub_228343CB0(uint64_t a1)
{
  v2 = sub_228390E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v3 + 16);
  v10 = v3 + 16;
  v11 = v12;
  v23 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v13 = a1 + v23;
  v14 = *(v10 + 56);
  v22 = (v10 - 8);
  v27 = (v10 + 16);
  v15 = MEMORY[0x277D84F90];
  v25 = v6;
  v26 = v10;
  v24 = v12;
  do
  {
    v11(v8, v13, v2);
    if (sub_228390E10())
    {
      v16 = *v27;
      (*v27)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2281CA104(0, *(v15 + 16) + 1, 1);
        v15 = v28;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2281CA104((v18 > 1), v19 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v19 + 1;
      v6 = v25;
      v16((v15 + v23 + v19 * v14), v25, v2);
      v11 = v24;
    }

    else
    {
      (*v22)(v8, v2);
    }

    v13 += v14;
    --v9;
  }

  while (v9);
  return v15;
}

uint64_t VisualizationDataSourceDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_228343F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D8280A8;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_22834401C(uint64_t a1)
{
  v3 = qword_27D8280A8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_2283440D4(char *a1, void *a2, unsigned __int8 a3)
{
  v52 = a1;
  v5 = sub_2283900D0();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v8 = [a2 traitCollection];
  v9 = sub_2283927D0();

  if (((v9 > 2) & a3) != 0)
  {
    v10 = 44.0;
  }

  else
  {
    v10 = 4.0;
  }

  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension_];
  v13 = [v11 fractionalHeightDimension_];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = objc_opt_self();
  v49 = v15;
  v17 = [v16 itemWithLayoutSize_];
  sub_2283928D0();
  [v17 setContentInsets_];
  v18 = [v11 fractionalWidthDimension_];
  v19 = [v11 fractionalWidthDimension_];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  sub_228180ED0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228396260;
  *(v22 + 32) = v17;
  sub_22817A958(0, &qword_27D824F40, 0x277CFB860);
  v47 = v17;
  v23 = sub_228392190();

  v48 = v20;
  v24 = [v21 horizontalGroupWithLayoutSize:v20 subitems:v23];

  sub_228390010();
  if (!v52 && (a3 & 1) != 0)
  {
    v25 = sub_228390020();
    if (v25)
    {
      v26 = v25;
      [v25 dimension];
      v28 = v27;
    }

    else
    {
      v28 = 30.0;
    }

    v29 = [v11 absoluteDimension_];
    sub_228390030();
  }

  v52 = v7;
  v30 = sub_2283900C0();
  [v30 contentInsets];
  v32 = v31;
  [v30 contentInsets];
  v34 = v33;
  v35 = objc_opt_self();
  v46 = v24;
  v36 = [v35 sectionWithGroup_];
  [v36 setContentInsets_];
  v53 = v30;
  v37 = [v30 boundarySupplementaryItems];
  if (!v37)
  {
    sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
    sub_2283921A0();
    v37 = sub_228392190();
  }

  [v36 setBoundarySupplementaryItems_];

  [v36 setSupplementaryContentInsetsReference_];
  v38 = [v36 boundarySupplementaryItems];
  sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
  v39 = sub_2283921A0();

  if (v39 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v41 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x22AAB6D80](v41, v39);
      }

      else
      {
        if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      [v42 contentInsets];
      [v43 setContentInsets_];
      [v43 contentInsets];
      [v43 setContentInsets_];

      ++v41;
      if (v44 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  (*(v50 + 8))(v52, v51);
  return v36;
}

uint64_t sub_228344684()
{
  v27 = *v0;
  sub_228279E50(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228346EC4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22834702C(0);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283909E0();
  v24 = swift_allocBox();
  v13 = qword_27D8280B0;

  sub_228391870();

  v14 = *(v0 + qword_27D8280B8);
  v28 = *(v0 + v13);
  v30 = *(v0 + qword_27D8280C0);
  v31 = v14;
  v29 = *(v0 + qword_27D8280C8);
  sub_228208C98(0);
  sub_228346FB4(0);
  v15 = MEMORY[0x277CBCE48];
  sub_228346894(&qword_27D828108, sub_228208C98, MEMORY[0x277CBCE48]);
  sub_228346894(&qword_27D828110, sub_228346FB4, v15);
  sub_2283919D0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v16 = sub_228392790();
  v28 = v16;
  v17 = sub_228392730();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  sub_228346894(&qword_27D828120, sub_228346EC4, MEMORY[0x277CBCB00]);
  sub_2281A1504();
  sub_228391A70();
  sub_228348778(v3, sub_228279E50);

  (*(v6 + 8))(v8, v5);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v24;
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v27;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2283470F8;
  *(v21 + 24) = v19;
  sub_228346894(&qword_27D828128, sub_22834702C, MEMORY[0x277CBCD60]);

  v22 = v25;
  sub_228391AC0();

  (*(v26 + 8))(v12, v22);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228344B94(uint64_t a1, uint64_t (*a2)(char *, char *, uint64_t), void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v87 = a4;
  v88 = a3;
  v86 = a2;
  sub_2281A99B0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_228390FD0();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281CBD18(0);
  v71 = v10;
  v84 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228390D50();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v82 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2283909E0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v76 = v13;
    v77 = v12;
    swift_beginAccess();
    v25 = *(v16 + 16);
    v73 = v16 + 16;
    v72 = v25;
    v25(v21, v22, v15);
    sub_228346894(&qword_27D824F00, MEMORY[0x277D11640], MEMORY[0x277D11650]);
    v26 = sub_228391FB0();
    v27 = *(v16 + 8);
    v74 = v21;
    v27(v21, v15);
    v85 = a1;
    v75 = v24;
    v28 = v86;
    if (v26)
    {
      sub_228345954(a1, v86, v88, v87);
    }

    else
    {
      sub_2283478F0(a1, v86, v88, v87);
      sub_22838FF50();
      a1 = v85;
    }

    swift_beginAccess();
    (*(v16 + 24))(v22, a1, v15);
    (*(v16 + 104))(v19, *MEMORY[0x277D11638], v15);
    sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640], MEMORY[0x277D11658]);
    sub_228392170();
    sub_228392170();
    if (v89 == v91 && v90 == v92)
    {
      v27(v19, v15);
    }

    else
    {
      v29 = sub_228393460();
      v27(v19, v15);

      if ((v29 & 1) == 0)
      {
        v55 = v85;
        v57 = sub_2283909D0();
        v58 = sub_228343CB0(v57);

        sub_2283488A8(0, &qword_27D824758, sub_2281CBD18, MEMORY[0x277D84560]);
        v59 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_228397F40;
        sub_22817A958(0, &qword_280DDB990, 0x277D75348);
        v61 = v88;
        sub_228391E50();
        sub_228199F10(0);
        (*(*(v62 - 8) + 56))(v60 + v59, 0, 1, v62);
        v51 = sub_2283471EC(v58, v60);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v54 = v76;
        v53 = v28;
        v56 = v74;
        v52 = v83;
LABEL_23:
        v72(v56, v55, v15);
        v63 = sub_2283909D0();
        v64 = sub_228345720(v63);

        v89 = v51;
        sub_2281D5FE0(v64);
        (*(v79 + 104))(v80, *MEMORY[0x277D11728], v81);
        v65 = v53;
        v66 = v82;
        sub_228390D20();
        swift_beginAccess();
        v67 = v77;
        (*(v54 + 16))(v52, v66, v77);
        (*(v54 + 56))(v52, 0, 1, v67);

        sub_228391850();

        sub_228348778(v52, sub_2281A99B0);
        return (*(v54 + 8))(v66, v67);
      }
    }

    v30 = sub_2283909D0();
    v70 = sub_228343CB0(v30);

    sub_228180ED0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228397F20;
    v32 = v88;
    *(inited + 32) = v88;
    v71 = (inited + 32);
    v33 = v87;
    *(inited + 40) = v87;
    v89 = MEMORY[0x277D84F90];
    v34 = v32;
    v35 = v33;
    result = sub_2281CA31C(0, 2, 0);
    v36 = v89;
    v69 = inited & 0xFFFFFFFFFFFFFF8;
    v88 = (inited & 0xC000000000000001);
    if ((inited & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x22AAB6D80](0, inited);
      v38 = v78;
    }

    else
    {
      v38 = v78;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v37 = *v71;
    }

    v39 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v40 = v37;
    v87 = v39;
    sub_228391E50();
    sub_228199F10(0);
    v42 = v41;
    v78 = *(*(v41 - 8) + 56);
    (v78)(v38, 0, 1, v41);

    v89 = v36;
    v44 = *(v36 + 16);
    v43 = *(v36 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_2281CA31C((v43 > 1), v44 + 1, 1);
      v36 = v89;
    }

    *(v36 + 16) = v44 + 1;
    v45 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v46 = *(v84 + 72);
    result = sub_228348840(v38, v36 + v45 + v46 * v44, sub_2281CBD18);
    if (v88)
    {
      v47 = MEMORY[0x22AAB6D80](1, inited);
LABEL_19:
      v48 = v47;
      sub_228391E50();
      (v78)(v38, 0, 1, v42);

      v89 = v36;
      v50 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2281CA31C((v49 > 1), v50 + 1, 1);
        v36 = v89;
      }

      *(v36 + 16) = v50 + 1;
      sub_228348840(v38, v36 + v45 + v46 * v50, sub_2281CBD18);
      swift_setDeallocating();
      swift_arrayDestroy();
      v51 = sub_2283471EC(v70, v36);

      v52 = v83;
      v53 = v86;
      v54 = v76;
      v55 = v85;
      v56 = v74;
      goto LABEL_23;
    }

    if (*(v69 + 16) >= 2uLL)
    {
      v47 = *(inited + 40);
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_228345720(uint64_t a1)
{
  sub_228199E70(0);
  v21 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228346900(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2281C9E84(0, v7, 0);
    v8 = v22;
    v20 = sub_228390E20();
    v9 = *(v20 - 8);
    v10 = *(v9 + 16);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v19 = v6;
    v12 = v6 + v11;
    v13 = *(v9 + 72);
    do
    {
      v10(v5, v12, v20);
      v14 = *(v21 + 48);
      sub_228199F10(0);
      (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
      v22 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2281C9E84((v16 > 1), v17 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v17 + 1;
      sub_228348840(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, sub_228199E70);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

unint64_t sub_228345954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v90 = a2;
  v91 = a3;
  v93 = sub_2283908E0();
  v6 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F78(0);
  v83 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v92 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = v75 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v75 - v14;
  v16 = sub_2283909E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2283908A0();
  v20 = *(v19 + 16);
  v80 = v4;
  v84 = v6;
  if (v20)
  {
    v76 = v17;
    v77 = v16;
    v78 = a1;
    v94 = MEMORY[0x277D84F90];
    v21 = v19;
    sub_2281C9DEC(0, v20, 0);
    v22 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v23 = v94;
    v88 = 0x80000002283AA970;
    v89 = v22;
    v25 = *(v6 + 16);
    v24 = v6 + 16;
    v87 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v75[1] = v21;
    v27 = v21 + v26;
    v28 = *(v24 + 56);
    v85 = (v24 - 8);
    v86 = v28;
    v29 = v83;
    do
    {
      v30 = v93;
      v31 = v87;
      v87(v8, v27, v93);
      v31(v15, v8, v30);
      v32 = sub_2283908D0();
      LOBYTE(v31) = sub_228392C60();

      (*v85)(v8, v30);
      v15[*(v29 + 36)] = v31 & 1;
      v33 = &v15[*(v29 + 40)];
      *v33 = 0xD000000000000011;
      *(v33 + 1) = v88;
      v94 = v23;
      v35 = *(v23 + 16);
      v34 = *(v23 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2281C9DEC((v34 > 1), v35 + 1, 1);
        v29 = v83;
        v23 = v94;
      }

      v97 = v29;
      v98 = sub_228346894(&qword_27D823E18, sub_228199F78, &protocol conformance descriptor for MedmojiConfigItem<A>);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
      sub_2283487D8(v15, boxed_opaque_existential_1, sub_228199F78);
      *(v23 + 16) = v35 + 1;
      sub_22819A62C(&v96, v23 + 40 * v35 + 32);
      sub_228348778(v15, sub_228199F78);
      v27 += v86;
      --v20;
    }

    while (v20);

    v16 = v77;
    v17 = v76;
  }

  else
  {
  }

  sub_22838FF60();

  v37 = v79;
  (*(v17 + 104))(v79, *MEMORY[0x277D11638], v16);
  sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640], MEMORY[0x277D11658]);
  sub_228392170();
  sub_228392170();
  if (v96 == v94 && *(&v96 + 1) == v95)
  {
    (*(v17 + 8))(v37, v16);

    v38 = v84;
  }

  else
  {
    v39 = sub_228393460();
    (*(v17 + 8))(v37, v16);

    v38 = v84;
    if ((v39 & 1) == 0)
    {
LABEL_20:
      sub_22838FF60();

      v57 = sub_2283908B0();
      v58 = *(v57 + 16);
      if (v58)
      {
        v94 = MEMORY[0x277D84F90];
        sub_2281C9DEC(0, v58, 0);
        v91 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v60 = *(v38 + 16);
        v59 = v38 + 16;
        v61 = v94;
        v62 = v57 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
        v88 = *(v59 + 56);
        v89 = v60;
        v86 = v57;
        v87 = (v59 - 8);
        v63 = v83;
        v64 = v92;
        v65 = v60;
        do
        {
          v66 = v93;
          v65(v8, v62, v93);
          v67 = v59;
          v65(v64, v8, v66);
          v68 = sub_2283908D0();
          v69 = sub_228392C60();

          (*v87)(v8, v66);
          v70 = v69 & 1;
          v64 = v92;
          v92[*(v63 + 36)] = v70;
          v71 = (v64 + *(v63 + 40));
          *v71 = 0x756F72676B636162;
          v71[1] = 0xEF726F6C6F43646ELL;
          v94 = v61;
          v73 = *(v61 + 16);
          v72 = *(v61 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_2281C9DEC((v72 > 1), v73 + 1, 1);
            v64 = v92;
            v63 = v83;
            v61 = v94;
          }

          v97 = v63;
          v98 = sub_228346894(&qword_27D823E18, sub_228199F78, &protocol conformance descriptor for MedmojiConfigItem<A>);
          v74 = __swift_allocate_boxed_opaque_existential_1(&v96);
          sub_2283487D8(v64, v74, sub_228199F78);
          *(v61 + 16) = v73 + 1;
          sub_22819A62C(&v96, v61 + 40 * v73 + 32);
          sub_228348778(v64, sub_228199F78);
          v62 += v88;
          --v58;
          v59 = v67;
        }

        while (v58);
      }

      sub_22838FF60();
    }
  }

  v40 = sub_2283908A0();
  v41 = *(v40 + 16);
  if (!v41)
  {

    goto LABEL_20;
  }

  v94 = MEMORY[0x277D84F90];
  sub_2281C9DEC(0, v41, 0);
  v89 = v40 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v42 = v94;
  result = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v44 = v38;
  v45 = 0;
  v87 = 0x80000002283AA990;
  v88 = result;
  v85 = (v44 + 8);
  v86 = v44 + 16;
  v91 = v40;
  v46 = v84;
  while (v45 < *(v40 + 16))
  {
    v47 = *(v46 + 16);
    v48 = v93;
    v47(v8, v89 + *(v46 + 72) * v45, v93);
    v49 = v82;
    v47(v82, v8, v48);
    v50 = sub_2283908D0();
    LOBYTE(v47) = sub_228392C60();

    v51 = v83;
    *(v49 + *(v83 + 36)) = v47 & 1;
    v52 = (v49 + *(v51 + 40));
    v53 = v87;
    *v52 = 0xD000000000000012;
    v52[1] = v53;
    (*(v46 + 8))(v8, v48);
    v94 = v42;
    v55 = *(v42 + 16);
    v54 = *(v42 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_2281C9DEC((v54 > 1), v55 + 1, 1);
      v49 = v82;
      v42 = v94;
    }

    ++v45;
    v97 = v51;
    v98 = sub_228346894(&qword_27D823E18, sub_228199F78, &protocol conformance descriptor for MedmojiConfigItem<A>);
    v56 = __swift_allocate_boxed_opaque_existential_1(&v96);
    sub_2283487D8(v49, v56, sub_228199F78);
    *(v42 + 16) = v55 + 1;
    sub_22819A62C(&v96, v42 + 40 * v55 + 32);
    result = sub_228348778(v49, sub_228199F78);
    v40 = v91;
    if (v41 == v45)
    {

      v38 = v84;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228346400()
{
}

uint64_t VisualizationModificationDataSource.deinit()
{
  v0 = sub_2283903B0();

  return v0;
}

uint64_t VisualizationModificationDataSource.__deallocating_deinit()
{
  sub_2283903B0();

  return swift_deallocClassInstance();
}

unint64_t VisualizationModificationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  sub_2283488A8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_22838FEF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FF40();
  result = sub_22838F750();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v5);

  sub_22838FEE0();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    v13 = sub_228390130();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    a1[3] = sub_228390150();
    a1[4] = sub_228346894(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_228390140();
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228346894(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }
}

uint64_t sub_228346894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228346900(uint64_t a1)
{
  v2 = sub_228390E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v3 + 16);
  v10 = v3 + 16;
  v11 = v12;
  v25 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v13 = a1 + v25;
  v14 = *(v10 + 56);
  v28 = (v10 + 16);
  v23 = (v10 - 8);
  v15 = MEMORY[0x277D84F90];
  v26 = v6;
  v27 = v10;
  v24 = v14;
  v12(v8, a1 + v25, v2);
  while (1)
  {
    if (sub_228390E10())
    {
      (*v23)(v8, v2);
    }

    else
    {
      v16 = *v28;
      (*v28)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2281CA104(0, *(v15 + 16) + 1, 1);
        v15 = v29;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2281CA104((v18 > 1), v19 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v24;
      v6 = v26;
      v16((v15 + v25 + v19 * v24), v26, v2);
      v14 = v20;
    }

    v13 += v14;
    if (!--v9)
    {
      break;
    }

    v11(v8, v13, v2);
  }

  return v15;
}

Swift::Void __swiftcall VisualizationModificationDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ColorCell();
  sub_228346894(&qword_27D8280D8, type metadata accessor for ColorCell, &unk_2283A607C);
  sub_2283926B0();
  sub_228390120();
  sub_2283926D0();
}

unint64_t sub_228346BC0()
{
  result = qword_27D8280E0;
  if (!qword_27D8280E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8280E0);
  }

  return result;
}

uint64_t sub_228346C5C()
{
  type metadata accessor for ColorCell();
  sub_228346894(&qword_27D8280D8, type metadata accessor for ColorCell, &unk_2283A607C);
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t type metadata accessor for VisualizationModificationDataSource(uint64_t a1)
{
  result = qword_27D8280E8;
  if (!qword_27D8280E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228346EC4(uint64_t a1)
{
  if (!qword_27D828100)
  {
    sub_228208C98(255);
    sub_228346FB4(255);
    v1 = MEMORY[0x277CBCE48];
    sub_228346894(&qword_27D828108, sub_228208C98, MEMORY[0x277CBCE48]);
    sub_228346894(&qword_27D828110, sub_228346FB4, v1);
    v2 = sub_2283916A0();
    if (!v3)
    {
      atomic_store(v2, &qword_27D828100);
    }
  }
}

void sub_228346FB4(uint64_t a1)
{
  if (!qword_27D824BC8)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824BC8);
    }
  }
}

void sub_22834702C(uint64_t a1)
{
  if (!qword_27D828118)
  {
    sub_228346EC4(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228346894(&qword_27D828120, sub_228346EC4, MEMORY[0x277CBCB00]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D828118);
    }
  }
}

uint64_t sub_228347104(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_22834715C(0);
  return v3(a1, *(a1 + v4[12]), *(a1 + v4[16]), *(a1 + v4[20]));
}

void sub_22834715C(uint64_t a1)
{
  if (!qword_27D828130)
  {
    sub_2283909E0();
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D828130);
    }
  }
}

uint64_t sub_2283471EC(uint64_t a1, uint64_t a2)
{
  v71 = sub_228390E20();
  v75 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v66 - v7;
  sub_228199E70(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v72 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = v10;
  v77 = &v66 - v16;
  v17 = *(a1 + 16);
  v84 = a2;
  v18 = *(a2 + 16);
  v73 = v17;
  v74 = v18;
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v70 = a1;
  v83 = v19;
  if (v19)
  {
    sub_2283488A8(0, &qword_27D823DE8, sub_228199E70, MEMORY[0x277D84560]);
    v20 = *(v10 + 72);
    v21 = *(v10 + 80);
    v22 = (v21 + 32) & ~v21;
    v69 = v21;
    v67 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v67);
    v82 = v20;
    if (!v20)
    {
      goto LABEL_56;
    }

    if (result - v22 == 0x8000000000000000 && v82 == -1)
    {
      goto LABEL_58;
    }

    v25 = 0;
    v26 = (result - v22) / v82;
    v27 = v67;
    *(v67 + 2) = v83;
    v27[3] = 2 * v26;
    v66 = v26 & 0x7FFFFFFFFFFFFFFFLL;
    v68 = v22;
    v28 = v27 + v22;
    v80 = *(v75 + 16);
    v81 = v75 + 16;
    v29 = (v75 + 32);
    v30 = a1 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v79 = *(v75 + 72);
    v31 = v71;
    do
    {
      v32 = v25 + 1;
      (v80)(v6, v30, v31);
      sub_2281CBD18(0);
      v34 = v84 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)) + *(*(v33 - 8) + 72) * v25;
      v35 = *(v9 + 48);
      (*v29)(v13, v6, v31);
      sub_2283487D8(v34, &v13[v35], sub_2281CBD18);
      result = sub_228348840(v13, v28, sub_228199E70);
      v28 += v82;
      v30 += v79;
      v25 = v32;
    }

    while (v83 != v32);
    v36 = v67;
    v37 = v66 - v32;
    v17 = v73;
  }

  else
  {
    v38 = *(v10 + 80);
    v36 = MEMORY[0x277D84F90];
    v39 = *(MEMORY[0x277D84F90] + 24);

    v37 = v39 >> 1;
    v68 = (v38 + 32) & ~v38;
    v69 = v38;
    v28 = v36 + v68;
  }

  v40 = v74;
  v41 = v71;
  v42 = v83;
  if (v17 <= v74)
  {
LABEL_44:
    v49 = v36;
LABEL_45:
    v63 = v49[3];
    if (v63 >= 2)
    {
      v64 = v63 >> 1;
      v62 = __OFSUB__(v64, v37);
      v65 = v64 - v37;
      if (v62)
      {
        goto LABEL_57;
      }

      v49[2] = v65;
    }

    return v49;
  }

  v81 = v75 + 16;
  v82 = v9;
  v80 = (v75 + 32);
  v43 = v70;
  while (v42 < v17)
  {
    result = (*(v75 + 16))(v78, v43 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v42, v41);
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_50;
    }

    if (v40 == v42)
    {
      result = (*(v75 + 8))(v78, v41);
      goto LABEL_44;
    }

    if (v42 >= v40)
    {
      goto LABEL_51;
    }

    sub_2281CBD18(0);
    v46 = v84 + ((*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80)) + *(*(v45 - 8) + 72) * v42;
    v47 = *(v82 + 48);
    v48 = v72;
    (*v80)(v72, v78, v41);
    sub_2283487D8(v46, v48 + v47, sub_2281CBD18);
    result = sub_228348840(v48, v77, sub_228199E70);
    if (v37)
    {
      v49 = v36;
      v17 = v73;
      goto LABEL_40;
    }

    v50 = v36[3];
    v17 = v73;
    if (((v50 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_53;
    }

    v51 = v50 & 0xFFFFFFFFFFFFFFFELL;
    if (v51 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51;
    }

    sub_2283488A8(0, &qword_27D823DE8, sub_228199E70, MEMORY[0x277D84560]);
    v53 = *(v76 + 72);
    v54 = v68;
    v49 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v49);
    if (!v53)
    {
      goto LABEL_54;
    }

    v55 = result - v54;
    if (result - v54 == 0x8000000000000000 && v53 == -1)
    {
      goto LABEL_55;
    }

    v57 = v55 / v53;
    v49[2] = v52;
    v49[3] = 2 * (v55 / v53);
    v58 = v49 + v54;
    v59 = v36;
    v60 = v36[3] >> 1;
    v61 = v60 * v53;
    if (v36[2])
    {
      if (v49 < v36 || v58 >= v36 + v54 + v61)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_37:
        v59 = v36;
      }

      else if (v49 != v36)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_37;
      }

      v59[2] = 0;
    }

    v28 = &v58[v61];
    v37 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v60;

    v43 = v70;
    v41 = v71;
LABEL_40:
    v62 = __OFSUB__(v37--, 1);
    v40 = v74;
    if (v62)
    {
      goto LABEL_52;
    }

    result = sub_228348840(v77, v28, sub_228199E70);
    v28 += *(v76 + 72);
    ++v42;
    v36 = v49;
    if (v44 == v17)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
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
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_2283478F0(uint64_t a1, uint64_t (*a2)(char *, char *, uint64_t), unint64_t a3, uint64_t a4)
{
  v105 = a4;
  v109 = a2;
  v110 = a3;
  v115 = sub_2283908E0();
  v106 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F78(0);
  v113 = *(v7 - 8);
  v114 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v87 - v11;
  MEMORY[0x28223BE20](v10);
  v111 = &v87 - v12;
  v13 = sub_2283909E0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = *(v14 + 104);
  v101 = *MEMORY[0x277D11638];
  v102 = v14 + 104;
  v100 = v22;
  v22(&v87 - v20);
  v23 = sub_228346894(&qword_27D8280F8, MEMORY[0x277D11640], MEMORY[0x277D11658]);
  sub_228392170();
  v99 = v23;
  sub_228392170();
  if (v117 == v116)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_228393460();
  }

  v98 = *(v14 + 8);
  v98(v21, v13);

  v103 = v14 + 8;
  if (v24)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v25 = qword_280DDCF20;
    v26 = *algn_280DDCF28;
    v27 = qword_280DDCF30;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v25 = qword_280DDCF20;
    v26 = *algn_280DDCF28;
    v27 = qword_280DDCF30;
  }

  v97 = v27;
  v94 = sub_22838F0C0();
  v93 = v28;
  v100(v19, v101, v13);
  sub_228392170();
  v104 = v13;
  sub_228392170();
  v96 = v25;
  v95 = v26;
  if (v117 == v116)
  {
    v98(v19, v104);
  }

  else
  {
    v29 = sub_228393460();
    v98(v19, v104);

    if ((v29 & 1) == 0)
    {
      v90 = 0;
      v89 = 0xE000000000000000;
      goto LABEL_18;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v90 = sub_22838F0C0();
  v89 = v30;
LABEL_18:
  v92 = a1;
  v31 = sub_2283908B0();
  v32 = *(v31 + 16);
  if (v32)
  {
    *&v117 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v32, 0);
    v108 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v33 = v117;
    v34 = *(v106 + 16);
    v35 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v87 = v31;
    v36 = v31 + v35;
    v107 = *(v106 + 72);
    v37 = (v106 + 8);
    v38 = v111;
    do
    {
      v39 = v115;
      v34(v6, v36, v115);
      v34(v38, v6, v39);
      v40 = sub_2283908D0();
      v41 = sub_228392C60();

      (*v37)(v6, v39);
      v42 = v114;
      v43 = v41 & 1;
      v38 = v111;
      v111[*(v114 + 36)] = v43;
      v44 = (v38 + *(v42 + 40));
      *v44 = 0x756F72676B636162;
      v44[1] = 0xEF726F6C6F43646ELL;
      *&v117 = v33;
      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2281C9ED4((v45 > 1), v46 + 1, 1);
        v38 = v111;
        v33 = v117;
      }

      *(v33 + 16) = v46 + 1;
      sub_228348840(v38, v33 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v46, sub_228199F78);
      v36 += v107;
      --v32;
    }

    while (v32);
    v107 = v33;
  }

  else
  {

    v107 = MEMORY[0x277D84F90];
  }

  v47 = sub_2283908A0();
  v48 = *(v47 + 16);
  if (v48)
  {
    *&v117 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v48, 0);
    v111 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v49 = v117;
    v109 = 0x80000002283AA970;
    v50 = *(v106 + 16);
    v51 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v87 = v47;
    v52 = v47 + v51;
    v108 = *(v106 + 72);
    v53 = (v106 + 8);
    v54 = v112;
    do
    {
      v55 = v115;
      v50(v6, v52, v115);
      v50(v54, v6, v55);
      v56 = sub_2283908D0();
      v57 = sub_228392C60();

      (*v53)(v6, v55);
      v58 = v114;
      v59 = v57 & 1;
      v54 = v112;
      v112[*(v114 + 36)] = v59;
      v60 = (v54 + *(v58 + 40));
      *v60 = 0xD000000000000011;
      v60[1] = v109;
      *&v117 = v49;
      v62 = *(v49 + 16);
      v61 = *(v49 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_2281C9ED4((v61 > 1), v62 + 1, 1);
        v54 = v112;
        v49 = v117;
      }

      *(v49 + 16) = v62 + 1;
      sub_228348840(v54, v49 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v62, sub_228199F78);
      v52 += v108;
      --v48;
    }

    while (v48);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v63 = v91;
  v64 = v104;
  v100(v91, v101, v104);
  sub_228392170();
  sub_228392170();
  if (v117 == v116)
  {
    v98(v63, v64);
  }

  else
  {
    v65 = sub_228393460();
    v98(v63, v64);

    if ((v65 & 1) == 0)
    {
      v69 = MEMORY[0x277D84F90];
      goto LABEL_43;
    }
  }

  v66 = sub_2283908A0();
  v67 = *(v66 + 16);
  if (v67)
  {
    v112 = v6;
    *&v117 = MEMORY[0x277D84F90];
    sub_2281C9ED4(0, v67, 0);
    v68 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    v69 = v117;
    v110 = 0x80000002283AA990;
    v111 = v68;
    v70 = *(v106 + 16);
    v71 = *(v106 + 80);
    v104 = v66;
    v72 = (v66 + ((v71 + 32) & ~v71));
    v108 = *(v106 + 72);
    v109 = v70;
    v106 += 16;
    v73 = (v106 - 8);
    v74 = v88;
    do
    {
      v75 = v112;
      v76 = v115;
      v77 = v109;
      v109(v112, v72, v115);
      v77(v74, v75, v76);
      v78 = sub_2283908D0();
      v79 = sub_228392C60();

      (*v73)(v75, v76);
      v80 = v114;
      *(v74 + *(v114 + 36)) = v79 & 1;
      v81 = (v74 + *(v80 + 40));
      v82 = v110;
      *v81 = 0xD000000000000012;
      v81[1] = v82;
      *&v117 = v69;
      v84 = *(v69 + 16);
      v83 = *(v69 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_2281C9ED4((v83 > 1), v84 + 1, 1);
        v74 = v88;
        v69 = v117;
      }

      *(v69 + 16) = v84 + 1;
      sub_228348840(v74, v69 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v84, sub_228199F78);
      v72 += v108;
      --v67;
    }

    while (v67);
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
  }

LABEL_43:
  sub_2283488A8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_228398270;
  sub_228194C70(v49);

  sub_22838FED0();
  sub_228194C70(v69);

  sub_22838FED0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228194C70(v107);

  sub_22838FED0();
  return v85;
}

uint64_t sub_228348778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283487D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228348840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2283488A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228348930(uint64_t a1)
{
  v2 = sub_22834A0E4(&qword_27D828160, &unk_2283A518C);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228348998()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for DayPickerItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v0 + v13, v25, &qword_280DDCD50, sub_22817A700);
  if (v25[3])
  {
    sub_22817A700();
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_228349E40(v8, v12);
      sub_22834925C(v12);
      return sub_228349EA4(v12);
    }
  }

  else
  {
    sub_228349DE4(v25, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_228349DE4(v8, &qword_27D828148, type metadata accessor for DayPickerItem);
  sub_228391150();
  v16 = sub_2283911A0();
  v17 = sub_2283925C0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    v25[0] = ObjectType;
    swift_getMetatypeMetadata();
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22816B000, v16, v17, "[%{public}s]: Unexpected view model.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_228348D68()
{
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23[-v2];
  sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = sub_2283913A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v0 + v14, v24, &qword_280DDCD50, sub_22817A700);
  if (!v25)
  {
    sub_228349DE4(v24, &qword_280DDCD50, sub_22817A700);
    v18 = type metadata accessor for DayPickerItem(0);
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    goto LABEL_6;
  }

  sub_22817A700();
  v15 = type metadata accessor for DayPickerItem(0);
  v16 = swift_dynamicCast();
  v17 = *(v15 - 8);
  (*(v17 + 56))(v3, v16 ^ 1u, 1, v15);
  if ((*(v17 + 48))(v3, 1, v15) == 1)
  {
LABEL_6:
    sub_228349DE4(v3, &qword_27D828148, type metadata accessor for DayPickerItem);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  sub_228349F54(&v3[*(v15 + 28)], v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  sub_228349EA4(v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    sub_228349DE4(v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    v19 = [v0 contentView];
    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor_];

    goto LABEL_8;
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  MEMORY[0x22AAB6420](v7);
  (*(v11 + 8))(v13, v10);
LABEL_8:
  v21 = [v0 contentView];
  [v21 setPreservesSuperviewLayoutMargins_];

  v22 = [v0 contentView];
  [v22 setLayoutMargins_];
}

void sub_22834925C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_228391130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = type metadata accessor for DayPickerItem(0);
  v12 = *(v5 + 16);
  v12(v10, a1 + *(v11 + 20), v4);
  v12(v8, a1 + *(v11 + 24), v4);
  v13 = type metadata accessor for DayPicker(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews] = MEMORY[0x277D84F90];
  v12(&v14[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays], v10, v4);
  v12(&v14[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_disabledDays], v8, v4);
  v29.receiver = v14;
  v29.super_class = v13;
  v15 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281EA860();
  sub_2281EAEC0();
  [v15 setLayoutMargins_];

  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  [v15 addTarget:v2 action:sel_selectedDaysDidChange_ forControlEvents:4096];
  v17 = [v2 contentView];
  [v17 addSubview_];

  v18 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker;
  v19 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker];
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker] = v15;
  if (v19)
  {
    v20 = v15;
    [v19 removeFromSuperview];
  }

  else
  {
    v21 = v15;
  }

  sub_228348D68();
  v22 = *&v2[v18];
  if (v22)
  {
    v23 = v22;
    v24 = [v2 contentView];
    v25 = [v24 layoutMarginsGuide];

    UIView.alignConstraints(to:)(v25);
    v28[0] = sub_228392000();
    v28[1] = v26;

    MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283B5110);

    v27 = sub_228391FC0();

    [v23 setAccessibilityIdentifier_];
  }
}

uint64_t sub_228349600(uint64_t a1)
{
  v3 = sub_228391130();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228349F00(0, &qword_27D828148, type metadata accessor for DayPickerItem);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for DayPickerItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_228349F54(v1 + v14, v20, &qword_280DDCD50, sub_22817A700);
  if (v21)
  {
    sub_22817A700();
    v15 = swift_dynamicCast();
    (*(v11 + 56))(v9, v15 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_228349E40(v9, v13);
      v16 = *&v13[*(v10 + 32)];
      v17 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays;
      swift_beginAccess();
      (*(v4 + 16))(v6, a1 + v17, v3);
      v16(v6);
      (*(v4 + 8))(v6, v3);
      return sub_228349EA4(v13);
    }
  }

  else
  {
    sub_228349DE4(v20, &qword_280DDCD50, sub_22817A700);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  return sub_228349DE4(v9, &qword_27D828148, type metadata accessor for DayPickerItem);
}

id sub_228349AD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DayPickerCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228349B90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_228349F54(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228349C04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228348998();
  return sub_228349DE4(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_228349C8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228349CF0;
}

uint64_t sub_228349CF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228348998();
  }

  return result;
}

uint64_t type metadata accessor for DayPickerItem(uint64_t a1)
{
  result = qword_27D828150;
  if (!qword_27D828150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228349DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228349F00(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228349E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228349EA4(uint64_t a1)
{
  v2 = type metadata accessor for DayPickerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228349F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228349F54(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228349F00(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228349FE8(uint64_t a1)
{
  sub_228391130();
  if (v1 <= 0x3F)
  {
    sub_228349F00(319, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    if (v2 <= 0x3F)
    {
      sub_2281C35D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22834A0E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayPickerItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22834A2FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MedicationsHistoryViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22834A388()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828170));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828180));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D828198));
}

uint64_t InteractionDetailDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  __swift_destroy_boxed_opaque_existential_0((v1 + qword_27D828170));

  __swift_destroy_boxed_opaque_existential_0((v1 + qword_27D828180));

  __swift_destroy_boxed_opaque_existential_0((v1 + qword_27D828198));

  return v1;
}

uint64_t InteractionDetailDataSource.__deallocating_deinit(uint64_t a1)
{
  InteractionDetailDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionDetailDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionResultDetailCell();
  sub_22834B168(&qword_27D824078, type metadata accessor for InteractionResultDetailCell, &protocol conformance descriptor for InteractionResultDetailCell);
  sub_2283926B0();
  type metadata accessor for InteractionResultDetailEducationCell();
  sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell, &protocol conformance descriptor for InteractionResultDetailEducationCell);
  sub_2283926B0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_22834A644()
{
  type metadata accessor for InteractionResultDetailCell();
  sub_22834B168(&qword_27D824078, type metadata accessor for InteractionResultDetailCell, &protocol conformance descriptor for InteractionResultDetailCell);
  sub_2283926B0();
  type metadata accessor for InteractionResultDetailEducationCell();
  sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell, &protocol conformance descriptor for InteractionResultDetailEducationCell);
  sub_2283926B0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t InteractionDetailDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_228393460();

    if ((v12 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22834B168(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281BC044(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F40;
  v15 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v15;
  *(v14 + 32) = 1;
  sub_22838F0C0();
  if (*(v14 + 16))
  {
    sub_228391FD0();
  }

  v19[0] = 0x74497265746F6F46;
  v19[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v16 = sub_22838F450();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v16, v18);

  a3[3] = sub_228390330();
  a3[4] = sub_22834B168(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

void *sub_22834AA74(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    v26 = *(a1 + 16);
    v3 = sub_2283930D0();
    v2 = v26;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v31 = MEMORY[0x277D84F90];
  v5 = v2;

  result = sub_2281C9DB4(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v31;
    type metadata accessor for InteractionResultDetailEducationCell();
    v7 = 0;
    v8 = v5;
    v27 = v5 & 0xC000000000000001;
    v9 = v3;
    v10 = v8;
    do
    {
      if (v27)
      {
        v11 = MEMORY[0x22AAB6D80](v7);
      }

      else
      {
        v11 = *(v8 + 8 * v7 + 32);
      }

      v12 = v11;
      sub_22834B070(0);
      v14 = v13;
      v15 = swift_allocObject();
      sub_22838F490();
      v16 = (v15 + qword_27D828D58);
      sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell, &protocol conformance descriptor for InteractionResultDetailEducationCell);
      *v16 = sub_22838FBB0();
      v16[1] = v17;
      *(v15 + *(*v15 + 120)) = v12;
      v29 = v14;
      v18 = sub_22834B168(&qword_27D8281D0, sub_22834B070, &protocol conformance descriptor for InteractionResultItem<A, B>);
      v30 = v18;
      v31 = v4;
      v28[0] = v15;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2281C9DB4((v19 > 1), v20 + 1, 1);
        v14 = v29;
        v21 = v30;
      }

      else
      {
        v21 = v18;
      }

      ++v7;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v28, v14);
      MEMORY[0x28223BE20](v22);
      v24 = &v28[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      sub_2282E841C(v20, v24, &v31, v14, v21);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v4 = v31;
      v8 = v10;
    }

    while (v9 != v7);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22834AD78(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_228390040();
  if (a1)
  {
    sub_228390000();
    v10 = *(v4 + 8);
    v10(v7, v3);
    sub_228390070();
    v11 = sub_2283900C0();
    v10(v9, v3);
  }

  else
  {
    v12 = sub_228390090();
    *v13 = 0x4034000000000000;
    v12(v15, 0);
    v11 = sub_2283900C0();
    (*(v4 + 8))(v9, v3);
  }

  return v11;
}

uint64_t type metadata accessor for InteractionDetailDataSource(uint64_t a1)
{
  result = qword_27D8281B8;
  if (!qword_27D8281B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22834B070(uint64_t a1)
{
  if (!qword_27D8281C8)
  {
    v2 = type metadata accessor for InteractionResultDetailEducationCell();
    v3 = sub_22834B11C();
    v4 = sub_22834B168(&qword_27D8281A8, type metadata accessor for InteractionResultDetailEducationCell, &protocol conformance descriptor for InteractionResultDetailEducationCell);
    v5 = type metadata accessor for InteractionResultItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8281C8);
    }
  }
}

unint64_t sub_22834B11C()
{
  result = qword_280DDBA10;
  if (!qword_280DDBA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBA10);
  }

  return result;
}

uint64_t sub_22834B168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MedicationsDayHistoryDataSource.init(doseEventPublisher:healthStore:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v25 = a1;
  sub_22834B818(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  sub_22834B694(0);
  v27 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F4A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D8281F8) = 0;
  *(v3 + qword_27D8281D8) = a2;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  v26 = a2;
  sub_2283931D0();

  strcpy(v29, "MutableArray<");
  HIWORD(v29[1]) = -4864;
  sub_22838F490();
  v16 = sub_22838F450();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x22AAB5C80](v16, v18);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v19 = sub_22838FF30();
  v29[0] = v25;
  sub_22820FD30();
  swift_retain_n();
  v20 = sub_228392790();
  v28 = v20;
  v21 = sub_228392730();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_22834B780(0);
  sub_22834BC90(&qword_27D8281F0, sub_22834B780, MEMORY[0x277CBCD90]);
  sub_22834BC90(&qword_280DDBAC0, sub_22820FD30, MEMORY[0x277D85228]);
  sub_228391A70();
  sub_2281A16F0(v7);

  swift_allocObject();
  swift_weakInit();

  sub_22834BC90(&qword_27D828200, sub_22834B694, MEMORY[0x277CBCD60]);
  v22 = v27;
  v23 = sub_228391AC0();

  (*(v9 + 8))(v11, v22);
  *(v19 + qword_27D8281F8) = v23;

  return v19;
}

void sub_22834B694(uint64_t a1)
{
  if (!qword_27D8281E0)
  {
    sub_22834B780(255);
    sub_22820FD30();
    sub_22834BC90(&qword_27D8281F0, sub_22834B780, MEMORY[0x277CBCD90]);
    sub_22834BC90(&qword_280DDBAC0, sub_22820FD30, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8281E0);
    }
  }
}

void sub_22834B780(uint64_t a1)
{
  if (!qword_27D8281E8)
  {
    sub_22834B818(255, &qword_27D825AF0, sub_228338A14, MEMORY[0x277D83940]);
    v1 = sub_2283917F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8281E8);
    }
  }
}

void sub_22834B818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22834B87C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_228337EA8(v2);
    sub_228194894(v4);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22834B918()
{
  type metadata accessor for MedicationsDayHistoryCell();
  sub_22834BC90(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell, &unk_2283A69C4);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryEmptyCell();
  sub_22834BC90(&qword_27D828208, type metadata accessor for MedicationsDayHistoryEmptyCell, &unk_22839F9D8);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_22834BC90(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  return sub_2283926B0();
}

uint64_t sub_22834BA28(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v7 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_22834BB50()
{

  v1 = *(v0 + qword_27D8281D8);
}

uint64_t MedicationsDayHistoryDataSource.deinit()
{
  v0 = sub_22838FFB0();

  return v0;
}

uint64_t MedicationsDayHistoryDataSource.__deallocating_deinit()
{
  v0 = sub_22838FFB0();

  v1 = *(v0 + qword_27D8281D8);

  return swift_deallocClassInstance();
}

uint64_t sub_22834BC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicationsDayHistoryDataSource(uint64_t a1)
{
  result = qword_27D828218;
  if (!qword_27D828218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22834BEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22834BF68(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v2 + v4);
  swift_endAccess();
  sub_22834D104();
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD000000000000032, 0x80000002283B52B0);

  v5 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_22834C070(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22834C0D4;
}

void sub_22834C0D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_22834D104();
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD000000000000032, 0x80000002283B52B0);

    v5 = sub_228391FC0();

    [v4 setAccessibilityIdentifier_];
  }
}

id sub_22834C1B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  v2 = [objc_opt_self() systemCyanColor];
  [v0 setTextColor_];

  v3 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v4 = v0;
  LODWORD(v5) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B53B0);

  MEMORY[0x22AAB5C80](0x656C7469542ELL, 0xE600000000000000);

  v6 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  return v4;
}

id sub_22834C450()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for InteractionSummaryContentView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22834C5C4(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_titleLabel;
  *&v2[v5] = sub_22834C1B8();
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_chevronView;
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  *&v2[v6] = MEMORY[0x22AAB6680]();
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for InteractionSummaryItemCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

void sub_22834C754()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_titleLabel];
  [v1 addSubview_];

  v3 = [v0 &selRef_didTapDay_];
  v4 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_chevronView];
  [v3 addSubview_];

  v5 = [v0 &selRef_didTapDay_];
  v6 = sub_22834C450();
  [v5 addSubview_];

  v46 = objc_opt_self();
  sub_228180ED0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2283A25D0;
  v8 = [v2 leadingAnchor];
  v9 = [v0 &selRef_didTapDay_];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 &selRef_logTimeChanged_ + 1];
  v12 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 &selRef_didTapDay_];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:13.0];
  *(v7 + 40) = v16;
  v17 = [v4 &selRef_logTimeChanged_ + 1];
  v18 = [v2 trailingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:8.0];

  *(v7 + 48) = v19;
  v20 = [v4 trailingAnchor];
  v21 = [v0 &selRef_didTapDay_];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 trailingAnchor];
  v24 = [v20 constraintEqualToAnchor_];

  *(v7 + 56) = v24;
  v25 = [v4 centerYAnchor];
  v26 = [v2 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v7 + 64) = v27;
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView;
  v29 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView] leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 &selRef_freeTextMedicationName + 5];

  *(v7 + 72) = v33;
  v34 = [*&v0[v28] topAnchor];
  v35 = [v2 lastBaselineAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:18.0];

  *(v7 + 80) = v36;
  v37 = [*&v0[v28] trailingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor_];

  *(v7 + 88) = v41;
  v42 = [*&v0[v28] bottomAnchor];
  v43 = [v0 contentView];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-12.0];
  *(v7 + 96) = v45;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();

  [v46 activateConstraints_];
}

uint64_t sub_22834CD70()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for InteractionSummaryItemCell();
  v20.receiver = v1;
  v20.super_class = v12;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v13 = sub_2283913A0();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_22817A890(v10, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v10;
      return sub_22817A8FC(v15, &unk_280DDBCD0, v14);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v10;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v5, 1, v16))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_22817A890(v5, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v5;
      return sub_22817A8FC(v15, &unk_280DDBCD0, v14);
    }

    v19 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v18 = v5;
  }

  return MEMORY[0x22AAB6420](v18);
}

void sub_22834D104()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  sub_22817A890(v1 + v6, v20, &qword_280DDCD50, sub_22817A700);
  if (v21)
  {
    sub_22817A700();
    type metadata accessor for InteractionSummaryItem();
    if (swift_dynamicCast())
    {
      v7 = v19;
      v8 = sub_22834C450();
      sub_22834DD5C(v7);

      return;
    }
  }

  else
  {
    sub_22817A8FC(v20, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v9 = v1;
  v10 = sub_2283911A0();
  v11 = sub_2283925C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v2;
    v19 = v13;
    v14 = v13;
    *v12 = 136446210;
    sub_22817A890(v1 + v6, v20, &qword_280DDCD50, sub_22817A700);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v15 = sub_228392040();
    v17 = sub_2281C96FC(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22816B000, v10, v11, "Incorrect view model for InteractionSummaryItemCell: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v3 + 8))(v5, v18);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

id InteractionSummaryItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id InteractionSummaryContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_22834D614()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = sub_228392000();
    v13 = v6;

    MEMORY[0x22AAB5C80](0xD00000000000001ELL, 0x80000002283B5450);

    MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

    v7 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    [v5 setNumberOfLines_];
    [v5 setAdjustsFontForContentSizeCategory_];
    [v5 setLineBreakMode_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = sub_228392AD0();
    [v5 setFont_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id InteractionSummaryContentView.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel] = 0;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for InteractionSummaryContentView();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = sub_22834D614();
  [v10 addSubview_];

  sub_22834DB00();
  return v10;
}

id InteractionSummaryContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InteractionSummaryContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  sub_228393300();
  __break(1u);
}

void sub_22834DB00()
{
  v1 = objc_opt_self();
  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_22834D614();
  v4 = [v3 leadingAnchor];

  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel;
  v8 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:8.0];

  *(v2 + 48) = v13;
  v14 = [*&v0[v7] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v17 = sub_228392190();

  [v1 activateConstraints_];
}

void sub_22834DD5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22834D614();
  v5 = [v4 font];

  if (v5)
  {
    v6 = sub_22834DF80(v5);

    v7 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
    if (v6)
    {
      [v7 setAttributedText_];
    }

    else
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = v7;
        if (v8 != 1)
        {
          Array<A>.interactionSummaryTitle()(v8);
        }
      }

      else
      {
        v10 = qword_280DDCF18;
        v9 = v7;
        if (v10 != -1)
        {
          swift_once();
        }

        v16 = 0xE000000000000000;
        sub_22838F0C0();
      }

      v6 = sub_228391FC0();

      [v9 setText_];
    }

    v11 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel);
    v12 = *(a1 + 16);
    v13 = objc_opt_self();
    v14 = v11;
    v15 = &selRef_secondaryLabelColor;
    if (v12)
    {
      v15 = &selRef_labelColor;
    }

    v17 = [v13 *v15];
    [v14 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22834DF80(void *a1)
{
  result = *(v1 + 16);
  if (result)
  {
    if (result == 1)
    {
      goto LABEL_3;
    }

    v15 = MEMORY[0x277D84F98];
    sub_2281FF388(result, &v15);
    v7 = v15;
    if (*(v15 + 16) && (v8 = v1, v9 = sub_2281A9BCC(), (v10 & 1) != 0))
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      if (v11 > 0)
      {
        v12 = *(v8 + 16);
        if (!v12)
        {
          if (qword_280DDCF18 != -1)
          {
            swift_once();
          }

          v4 = sub_22838F0C0();
          v5 = v14;
          goto LABEL_4;
        }

        if (v12 != 1)
        {
          v4 = Array<A>.interactionSummaryTitle()(v12);
          v5 = v13;
          goto LABEL_4;
        }

LABEL_3:
        v4 = 0x6C616E7265746E49;
        v5 = 0xEE00726F72724520;
LABEL_4:
        v6 = sub_22834E1C4(v4, v5, a1);

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}