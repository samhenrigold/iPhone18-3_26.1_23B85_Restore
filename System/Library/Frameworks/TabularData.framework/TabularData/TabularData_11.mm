uint64_t sub_21B2C8600(char *a1)
{
  v4 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v4 - 8);
  v163 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = *v1;
  v187 = *(v1 + 16);
  v6 = *(v186 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(&v186 + 1);
  sub_21B2A62E0(&v186, &v182);
  sub_21B254074(v7, v8, v9);
  sub_21B2A62E0(&v186, &v182);
  sub_21B254074(v7, v8, v9);
  sub_21B254074(v7, v8, v9);

  sub_21B23A9F4(v7, v8, v9);
  v11 = sub_21B2FB104(v7, v8, v9);
  v160 = v7;
  v159 = v8;
  v158 = v9;
  sub_21B23A9F4(v7, v8, v9);
  v12 = *(a1 + 2);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v13 = *(v11 + 16);
  if (v13 >= v12)
  {
    v13 = *(a1 + 2);
  }

  v14 = 2 * v13;
  if (v12)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = v163;
  sub_21B2CC710(v11 + 32, 0, v15, a1, v163);
  v156 = v11;
  v157 = v1;
  v17 = sub_21B2CD910(v11, v11 + 32, 0, v15, v16);
  v18 = v17;
  v19 = *(v17 + 2);
  v20 = v6 + a1[25];
  v170 = a1;
  v175 = v15;
  if (v19 >= v20)
  {
    v178 = (v17 + 16);
    v171 = 0;
    v173 = 0;
    v168 = 0;
    v169 = 0;
    v179 = 0;
    v172 = 0;
    v28 = 0;
    goto LABEL_17;
  }

  if (v19)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = sub_21B23A308(v18);
LABEL_12:
  v21 = *(v18 + 2);
  if (!v21)
  {
    __break(1u);
    goto LABEL_146;
  }

  v19 = (v21 - 1);
  v22 = &v18[48 * v21];
  v172 = *(v22 - 2);
  v23 = *v22;
  v179 = *(v22 - 1);
  v168 = v22[1];
  v25 = v22[2];
  v24 = v22[3];
  *(v18 + 2) = v19;
  v171 = v24;
  v28 = v24 + 2;
  v169 = v23;
  v178 = (v18 + 16);
  v173 = v25;
  if (__OFADD__(v24, 2))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (!v19)
  {
    v26 = MEMORY[0x277D84F90];
    v10 = 1;
    goto LABEL_23;
  }

LABEL_17:
  *&v182 = MEMORY[0x277D84F90];
  v1 = &v182;
  sub_21B254034(0, v19, 0);
  v29 = 72;
  v26 = v182;
  a1 = v19;
  v10 = v19;
  do
  {
    v30 = *&v18[v29];
    v31 = v30 + 2;
    if (__OFADD__(v30, 2))
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    *&v182 = v26;
    v33 = *(v26 + 16);
    v32 = *(v26 + 24);
    v11 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v1 = &v182;
      sub_21B254034((v32 > 1), v33 + 1, 1);
      v26 = v182;
    }

    *(v26 + 16) = v11;
    *(v26 + 8 * v33 + 32) = v31;
    v29 += 48;
    --v10;
  }

  while (v10);
  v19 = a1;
  a1 = v170;
LABEL_23:
  v11 = qword_282CA8E30;
  v162 = v26;
  v164 = v28;
  v1 = sub_21B340E7C(qword_282CA8E30, v26, 9278946, 0xA300000000000000, v28);
  v6 = v34;
  swift_arrayDestroy();
  v185[0] = v1;
  v185[1] = v6;
  v35 = sub_21B34ADA4();
  if (__OFSUB__(v35, 1))
  {
    goto LABEL_141;
  }

  v154 = v35 - 1;
  v36 = MEMORY[0x277D84F90];
  v161 = v18;
  if (v10)
  {
LABEL_41:
    if (!v179)
    {
      v2 = v168;
      goto LABEL_51;
    }

    v10 = v36;
    v11 = v179;

    v2 = v168;

    v1 = v172;
    v49 = sub_21B2A0B58(v172, v11);
    if (v171 < v49)
    {
LABEL_45:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v10;
        goto LABEL_47;
      }

      goto LABEL_142;
    }

    if (!__OFSUB__(v171, v49))
    {
      v50 = sub_21B34AE74();
      v52 = v51;
      *&v182 = v172;
      *(&v182 + 1) = v179;

      MEMORY[0x21CEED5E0](v50, v52);

      v11 = *(&v182 + 1);
      v1 = v182;
      goto LABEL_45;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v184 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v19, 0);
  v6 = 0;
  v36 = v184;
  v180 = v19;
  v181 = v18 + 32;
LABEL_26:
  a1 = v36;
  v37 = &v181[48 * v6];
  v2 = *v37;
  v11 = v37[1];
  v38 = v37[5];
  v39 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v39 = v2 & 0xFFFFFFFFFFFFLL;
  }

  *&v182 = v2;
  *(&v182 + 1) = v11;
  *v183 = 0;
  *&v183[8] = v39;
  swift_bridgeObjectRetain_n();

  v19 = 0;
  do
  {
    v1 = &v182;
    v40 = sub_21B34AE14();
    if (!v41)
    {

      if (v38 >= v19)
      {
        if (__OFSUB__(v38, v19))
        {
          goto LABEL_136;
        }

        v43 = sub_21B34AE74();
        v45 = v44;
        *&v182 = v2;
        *(&v182 + 1) = v11;

        MEMORY[0x21CEED5E0](v43, v45);

        v11 = *(&v182 + 1);
        v2 = v182;
      }

      else
      {
      }

      v36 = a1;
      v184 = a1;
      v47 = *(a1 + 2);
      v46 = *(a1 + 3);
      v10 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_21B231F10((v46 > 1), v47 + 1, 1);
        v36 = v184;
      }

      ++v6;
      *(v36 + 2) = v10;
      v48 = &v36[16 * v47];
      *(v48 + 4) = v2;
      *(v48 + 5) = v11;
      v19 = v180;
      if (v6 == v180)
      {
        a1 = v170;
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v10 = sub_21B2A0BE0(v40, v41);

    v42 = __OFADD__(v19, v10);
    v19 += v10;
  }

  while (!v42);
  __break(1u);
LABEL_65:
  v10 = v173;
  while (1)
  {
    v71 = v169;
    v173 = v10;
    if (!v179)
    {
      goto LABEL_75;
    }

    result = sub_21B2A0B58(v71, v2);
    if (v171 >= result)
    {
      break;
    }

    v11 = v71;
    v6 = v2;
LABEL_71:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_150:
      v19 = sub_21B231F84(0, *(v19 + 2) + 1, 1, v19);
    }

    v10 = *(v19 + 2);
    v75 = *(v19 + 3);
    if (v10 >= v75 >> 1)
    {
      v19 = sub_21B231F84((v75 > 1), v10 + 1, 1, v19);
    }

    *(v19 + 2) = v10 + 1;
    v76 = &v19[16 * v10];
    *(v76 + 4) = v11;
    *(v76 + 5) = v6;
LABEL_75:
    *&v182 = v19;
    v77 = sub_21B34AB74();
    v79 = v78;

    *&v182 = 32;
    *(&v182 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v77, v79);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v80 = v182;
    *&v182 = 8623330;
    *(&v182 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v80, *(&v80 + 1));

    MEMORY[0x21CEED5E0](v181, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v182, *(&v182 + 1));

    v63 = v164;
    do
    {
      v81 = sub_21B340E7C(qword_282CA8E90, v162, 9278946, 0xA300000000000000, v63);
      v83 = v82;
      swift_arrayDestroy();
      v1 = v185;
      MEMORY[0x21CEED5E0](v81, v83);

      v84 = (v175 >> 1);
      v85 = v173;
      if (v175 == 1)
      {
LABEL_77:
        sub_21B2CF938(v172, v179, v169, v2, v85);

        v19 = v186;
        v11 = v187;
        v86 = v160;
        v87 = v84;
        v88 = v159;
        v89 = v158;
        v6 = sub_21B2FB1D4(v160, v159, v158);

        sub_21B23A9F4(v86, v88, v89);
        if (v87 >= v6)
        {
          v126 = sub_21B340E7C(qword_282CA8F50, v162, 9213410, 0xA300000000000000, v164);
          v128 = v127;

          swift_arrayDestroy();
LABEL_127:
          MEMORY[0x21CEED5E0](v126, v128);

          v148 = v157;
          if (a1[26] == 1)
          {
            v149 = sub_21B2FB1D4(v160, v159, v158);
            v150 = v148[1];
            v182 = *v148;
            *v183 = v150;
            *&v183[9] = *(v148 + 25);
            v151 = *(DataFrame.Slice.columns.getter() + 16);

            *&v182 = sub_21B2CEA58(v149, v151, a1);
            *(&v182 + 1) = v152;

            MEMORY[0x21CEED5E0](10, 0xE100000000000000);

            MEMORY[0x21CEED5E0](v182, *(&v182 + 1));
            swift_unknownObjectRelease();

            sub_21B2B42B0(v163);
          }

          else
          {
            sub_21B2B42B0(v163);
            swift_unknownObjectRelease();
          }

          return v185[0];
        }

        v90 = v154 - 2;
        if (__OFSUB__(v154, 2))
        {
          goto LABEL_147;
        }

        v10 = v154 - 4;
        if (__OFSUB__(v90, 2))
        {
          goto LABEL_148;
        }

        if (v154 == 4)
        {
          v91 = 0;
          v97 = 0xE000000000000000;
          goto LABEL_120;
        }

        v91 = 3026478;
        if (v10 < 1)
        {
LABEL_119:
          sub_21B34ADC4();
          v129 = sub_21B34AEB4();
          v130 = MEMORY[0x21CEED540](v129);
          v132 = v131;

          *&v182 = v130;
          *(&v182 + 1) = v132;

          MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

          v97 = *(&v182 + 1);
          v91 = v182;
LABEL_120:
          result = sub_21B2A0B58(v91, v97);
          v133 = v10 - result;
          if (v10 >= result)
          {
            if (!__OFSUB__(v10, result))
            {
              v134 = sub_21B34AE74();
              v136 = v135;
              *&v182 = v91;
              *(&v182 + 1) = v97;

              MEMORY[0x21CEED5E0](v134, v136);

              v97 = *(&v182 + 1);
              v91 = v182;
              goto LABEL_123;
            }

            __break(1u);
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

LABEL_123:
          *&v182 = 32;
          *(&v182 + 1) = 0xE100000000000000;
          MEMORY[0x21CEED5E0](v91, v97, v133);

          MEMORY[0x21CEED5E0](32, 0xE100000000000000);

          v137 = *(&v182 + 1);
          v138 = v182;
          v139 = sub_21B340E7C(qword_282CA8EF0, v162, 9278946, 0xA300000000000000, v164);
          v141 = v140;

          swift_arrayDestroy();
          MEMORY[0x21CEED5E0](v139, v141);

          result = sub_21B2A0B58(v138, v137);
          v142 = v90 - result;
          if (v90 >= result)
          {
            if (__OFSUB__(v90, result))
            {
              goto LABEL_152;
            }

            v143 = sub_21B34AE74();
            v145 = v144;
            v182 = __PAIR128__(v137, v138);

            MEMORY[0x21CEED5E0](v143, v145);

            v137 = *(&v182 + 1);
            v138 = v182;
          }

          *&v182 = 8885474;
          *(&v182 + 1) = 0xA300000000000000;
          MEMORY[0x21CEED5E0](v138, v137, v142);

          MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

          MEMORY[0x21CEED5E0](10, 0xE100000000000000);

          MEMORY[0x21CEED5E0](v182, *(&v182 + 1));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21B351EA0;
          *(inited + 32) = v90;
          v126 = sub_21B33F0FC(inited);
          v128 = v147;
          swift_setDeallocating();
          goto LABEL_127;
        }

        v92 = 0;
        v1 = 15;
        while (1)
        {
          v93 = sub_21B34AE94();
          v11 = v94;
          v95 = sub_21B2A0BE0(v93, v94);

          v42 = __OFADD__(v92, v95);
          v92 += v95;
          if (v42)
          {
            break;
          }

          v96 = sub_21B34ADB4();
          v1 = v96;
          if (v96 >> 16 > 2 || v92 >= v10)
          {
            if ((v96 & 0xFFFFFFFFFFFFC000) != 0x30000)
            {
              goto LABEL_119;
            }

            v97 = 0xE300000000000000;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v11 = 0;
        v166 = v173 + 32;
        v98 = *v178;
        v99 = 8819938;
        v175 = 8557794;
        if (!v164)
        {
          v99 = 8557794;
        }

        v174 = v99;
        v167 = (v161 + 72);
        v180 = v98;
        v165 = v84;
        while (v11 < v84)
        {
          if (__OFADD__(v11, 1))
          {
            goto LABEL_134;
          }

          v178 = (v11 + 1);
          if (v98)
          {
            v184 = MEMORY[0x277D84F90];
            sub_21B231F10(0, v98, 0);
            v1 = v184;
            v2 = v167;
            v90 = v98;
            v181 = v11;
            do
            {
              v105 = *(v2 - 8);
              if (v11 >= *(v105 + 16))
              {
                __break(1u);
                goto LABEL_119;
              }

              a1 = *(v2 - 16);
              v106 = *v2;
              v107 = v105 + 16 * v11;
              v10 = *(v107 + 32);
              v11 = *(v107 + 40);

              v108 = sub_21B2A0B58(v10, v11);
              if (v106 >= v108)
              {
                if (__OFSUB__(v106, v108))
                {
                  __break(1u);
                  goto LABEL_132;
                }

                v109 = sub_21B34AE74();
                v111 = v110;
                *&v182 = v10;
                *(&v182 + 1) = v11;

                v112 = v109;
                v98 = v180;
                MEMORY[0x21CEED5E0](v112, v111);

                v11 = *(&v182 + 1);
                v10 = v182;
              }

              else
              {
              }

              v184 = v1;
              v114 = *(v1 + 16);
              v113 = *(v1 + 24);
              if (v114 >= v113 >> 1)
              {
                sub_21B231F10((v113 > 1), v114 + 1, 1);
                v1 = v184;
              }

              v2 += 48;
              *(v1 + 16) = v114 + 1;
              v115 = v1 + 16 * v114;
              *(v115 + 32) = v10;
              *(v115 + 40) = v11;
              --v90;
              v11 = v181;
            }

            while (v90);
            a1 = v170;
            v85 = v173;
            v2 = v168;
            v84 = v165;
            if (v179)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v1 = MEMORY[0x277D84F90];
            if (v179)
            {
LABEL_108:
              if (v11 >= *(v85 + 16))
              {
                goto LABEL_135;
              }

              v116 = a1;
              a1 = v1;
              v117 = (v166 + 16 * v11);
              v1 = *v117;
              v11 = v117[1];
              v118 = v171;
              sub_21B2CF988(v172, v179, v169, v2, v85);

              v119 = sub_21B2A0B58(v1, v11);
              if (v118 >= v119)
              {
                if (__OFSUB__(v118, v119))
                {
                  goto LABEL_139;
                }

                v120 = sub_21B34AE74();
                v122 = v121;
                *&v182 = v1;
                *(&v182 + 1) = v11;

                MEMORY[0x21CEED5E0](v120, v122);
                v123 = *(&v182 + 1);
                v1 = v182;
                v98 = v180;

                v11 = v123;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_21B231F84(0, *(a1 + 2) + 1, 1, a1);
              }

              v125 = *(a1 + 2);
              v124 = *(a1 + 3);
              if (v125 >= v124 >> 1)
              {
                a1 = sub_21B231F84((v124 > 1), v125 + 1, 1, a1);
              }

              *(a1 + 2) = v125 + 1;
              v100 = &a1[16 * v125];
              *(v100 + 4) = v1;
              *(v100 + 5) = v11;
              v1 = a1;
              a1 = v116;
            }
          }

          *&v182 = v1;
          v10 = v1;
          v101 = sub_21B34AB74();
          v103 = v102;

          *&v182 = 32;
          *(&v182 + 1) = 0xE100000000000000;
          MEMORY[0x21CEED5E0](v101, v103);

          MEMORY[0x21CEED5E0](32, 0xE100000000000000);

          v104 = v182;
          *&v182 = v175;
          *(&v182 + 1) = 0xA300000000000000;
          MEMORY[0x21CEED5E0](v104, *(&v104 + 1));

          MEMORY[0x21CEED5E0](v174, 0xA300000000000000);

          MEMORY[0x21CEED5E0](10, 0xE100000000000000);

          v1 = v185;
          MEMORY[0x21CEED5E0](v182, *(&v182 + 1));

          v11 = v178;
          if (v178 == v84)
          {
            goto LABEL_77;
          }
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
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
      v36 = sub_21B231F84(0, *(v10 + 16) + 1, 1, v10);
LABEL_47:
      v54 = *(v36 + 2);
      v53 = *(v36 + 3);
      if (v54 >= v53 >> 1)
      {
        v36 = sub_21B231F84((v53 > 1), v54 + 1, 1, v36);
      }

      *(v36 + 2) = v54 + 1;
      v55 = &v36[16 * v54];
      *(v55 + 4) = v1;
      *(v55 + 5) = v11;
LABEL_51:
      *&v182 = v36;
      v56 = v36;

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
      v58 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
      v177 = v57;
      v176 = v58;
      v59 = sub_21B34AB74();
      v61 = v60;
      v155 = v56;

      *&v182 = 32;
      *(&v182 + 1) = 0xE100000000000000;
      MEMORY[0x21CEED5E0](v59, v61);

      MEMORY[0x21CEED5E0](32, 0xE100000000000000);

      v62 = v182;
      v63 = v164;
      if (v164)
      {
        v10 = 8885474;
      }

      else
      {
        v10 = 8623330;
      }

      *&v182 = 8623330;
      *(&v182 + 1) = 0xA300000000000000;
      MEMORY[0x21CEED5E0](v62, *(&v62 + 1));

      MEMORY[0x21CEED5E0](v10, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      MEMORY[0x21CEED5E0](v182, *(&v182 + 1));
    }

    while (a1[24] != 1);
    v181 = v10;
    v64 = *v178;
    v19 = MEMORY[0x277D84F90];
    if (!*v178)
    {
      goto LABEL_65;
    }

    v184 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v64, 0);
    v19 = v184;
    v2 = (v161 + 72);
    do
    {
      v10 = *(v2 - 24);
      v11 = *(v2 - 16);
      v1 = *v2;
      swift_bridgeObjectRetain_n();

      v65 = sub_21B2A0B58(v10, v11);
      if (v1 >= v65)
      {
        if (__OFSUB__(v1, v65))
        {
          goto LABEL_138;
        }

        a1 = sub_21B34AE74();
        v67 = v66;
        *&v182 = v10;
        *(&v182 + 1) = v11;

        MEMORY[0x21CEED5E0](a1, v67);

        swift_bridgeObjectRelease_n();

        v11 = *(&v182 + 1);
        v10 = v182;
      }

      else
      {
      }

      v184 = v19;
      v69 = *(v19 + 2);
      v68 = *(v19 + 3);
      if (v69 >= v68 >> 1)
      {
        sub_21B231F10((v68 > 1), v69 + 1, 1);
        v19 = v184;
      }

      v2 += 48;
      *(v19 + 2) = v69 + 1;
      v70 = &v19[16 * v69];
      *(v70 + 4) = v10;
      *(v70 + 5) = v11;
      --v64;
    }

    while (v64);
    a1 = v170;
    v10 = v173;
    v2 = v168;
  }

  if (!__OFSUB__(v171, result))
  {
    v72 = sub_21B34AE74();
    v74 = v73;
    *&v182 = v71;
    *(&v182 + 1) = v2;

    MEMORY[0x21CEED5E0](v72, v74);

    v6 = *(&v182 + 1);
    v11 = v182;
    goto LABEL_71;
  }

LABEL_153:
  __break(1u);
  return result;
}

void *DataFrameProtocol.description(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v176 = a1;
  v7 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v7 - 8);
  v164 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 24);
  v9(&v187, a2, a3);
  v10 = v187;

  v11 = *(v10 + 16);

  if (!v11)
  {
    return 0;
  }

  v183 = v9;
  v12 = *(a3 + 32);
  v159 = a3 + 32;
  v158 = v12;
  v12(&v187, a2, a3);
  v13 = v189;
  v14 = v190;
  v15 = v191;
  v16 = v192;
  sub_21B254074(v190, v191, v192);

  sub_21B23A9F4(v14, v15, v16);
  v17 = sub_21B2FB104(v14, v15, v16);
  sub_21B23A9F4(v14, v15, v16);
  v18 = *(v176 + 16);
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_138;
  }

  v19 = *(v17 + 16);
  if (v19 >= v18)
  {
    v19 = *(v176 + 16);
  }

  v20 = 2 * v19;
  v21 = v17 + 32;
  v187 = v17;
  v188 = v17 + 32;
  v182 = a3 + 24;
  v22 = a3;
  if (v18)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = 1;
  }

  v189 = 0;
  v190 = v23;
  v16 = v17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
  v25 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0, MEMORY[0x277D83FB0]);
  v15 = v164;
  v26 = v4;
  v4 = v176;
  sub_21B2CCB50(&v187, v176, a2, v24, v22, v25, v164);
  v157[2] = v16;
  v187 = v16;
  v188 = v21;
  v189 = 0;
  v190 = v23;
  v180 = v23;
  v27 = sub_21B2CE214(&v187, v15, a2, v24, v22, v25);
  v13 = *(v27 + 2);
  v161 = v26;
  v160 = a2;
  v162 = v22;
  v183(&v187, a2, v22);
  v17 = v187;

  v28 = *(v17 + 16);

  v29 = *(v4 + 25);
  v53 = __OFADD__(v28, v29);
  v18 = v28 + v29;
  if (v53)
  {
    goto LABEL_139;
  }

  v166 = v27;
  v30 = *(v27 + 2);
  if (v13 >= v18)
  {
    v38 = 0;
    v171 = 0;
    v15 = 0;
    v169 = 0;
    v179 = 0;
    v13 = 0;
    v170 = 0;
    goto LABEL_17;
  }

  if (!v30)
  {
    goto LABEL_141;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = &v193;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_142;
  }

  v32 = v166;
  v33 = *(v166 + 2);
  if (!v33)
  {
    goto LABEL_143;
  }

  while (1)
  {
    v30 = v33 - 1;
    v34 = &v32[48 * v33];
    v15 = *(v34 - 1);
    v171 = *(v34 - 2);
    v35 = *v34;
    v36 = v34[1];
    v13 = v34[2];
    v37 = v34[3];
    *(v32 + 2) = v30;
    v170 = v37;
    v38 = v37 + 2;
    if (__OFADD__(v37, 2))
    {
      goto LABEL_144;
    }

    v179 = v36;
    v169 = v35;
    v166 = v32;
LABEL_17:
    v40 = MEMORY[0x277D84F90];
    v165 = v38;
    v172 = v15;
    v181 = v13;
    if (v30)
    {
      v187 = MEMORY[0x277D84F90];
      sub_21B254034(0, v30, 0);
      v40 = v187;
      v41 = (v166 + 72);
      v15 = v30;
      while (1)
      {
        v42 = *v41;
        v41 += 6;
        v18 = v42;
        v13 = (v42 + 2);
        if (__OFADD__(v42, 2))
        {
          break;
        }

        v187 = v40;
        v16 = *(v40 + 16);
        v43 = *(v40 + 24);
        v17 = v16 + 1;
        if (v16 >= v43 >> 1)
        {
          sub_21B254034((v43 > 1), v16 + 1, 1);
          v40 = v187;
        }

        *(v40 + 16) = v17;
        *(v40 + 8 * v16 + 32) = v13;
        if (!--v15)
        {
          v38 = v165;
          v15 = v172;
          v13 = v181;
          goto LABEL_24;
        }
      }

LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

LABEL_24:
    v17 = qword_282CA91F8;
    v163 = v40;
    v44 = sub_21B340E7C(qword_282CA91F8, v40, 9278946, 0xA300000000000000, v38);
    v46 = v45;
    swift_arrayDestroy();
    v185 = v44;
    v186 = v46;
    v47 = sub_21B34ADA4();
    v18 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
      goto LABEL_140;
    }

    v157[0] = v47 - 1;
    v16 = MEMORY[0x277D84F90];
    if (v30)
    {
      v184 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v30, 0);
      v17 = 0;
      v16 = v184;
      v182 = v30;
      v183 = (v166 + 32);
      do
      {
        v4 = v16;
        v48 = (v183 + 48 * v17);
        v49 = *v48;
        v46 = v48[1];
        v15 = v48[3];
        a2 = v48[4];
        v30 = v48[5];
        v50 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v50 = v49 & 0xFFFFFFFFFFFFLL;
        }

        v187 = v49;
        v188 = v46;
        v189 = 0;
        v190 = v50;
        swift_bridgeObjectRetain_n();

        v13 = 0;
        while (1)
        {
          v51 = sub_21B34AE14();
          if (!v52)
          {
            break;
          }

          v16 = sub_21B2A0BE0(v51, v52);

          v53 = __OFADD__(v13, v16);
          v13 += v16;
          if (v53)
          {
            __break(1u);
            goto LABEL_67;
          }
        }

        if (v30 >= v13)
        {
          if (__OFSUB__(v30, v13))
          {
            goto LABEL_133;
          }

          v54 = sub_21B34AE74();
          v56 = v55;
          v187 = v49;
          v188 = v46;

          MEMORY[0x21CEED5E0](v54, v56);

          v49 = v187;
          v46 = v188;
        }

        else
        {
        }

        v16 = v4;
        v184 = v4;
        v58 = *(v4 + 16);
        v57 = *(v4 + 24);
        v30 = v182;
        if (v58 >= v57 >> 1)
        {
          sub_21B231F10((v57 > 1), v58 + 1, 1);
          v16 = v184;
        }

        ++v17;
        *(v16 + 16) = v58 + 1;
        v59 = v16 + 16 * v58;
        *(v59 + 32) = v49;
        *(v59 + 40) = v46;
      }

      while (v17 != v30);
      v4 = v176;
      v15 = v172;
    }

    if (v15)
    {

      v17 = v171;
      v60 = sub_21B2A0B58(v171, v15);
      v13 = v15;
      if (v170 >= v60)
      {
        if (__OFSUB__(v170, v60))
        {
          goto LABEL_148;
        }

        v61 = sub_21B34AE74();
        v63 = v62;
        v187 = v171;
        v188 = v15;

        MEMORY[0x21CEED5E0](v61, v63);

        v17 = v187;
        v13 = v188;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_145:
        v16 = sub_21B231F84(0, *(v16 + 16) + 1, 1, v16);
      }

      v65 = *(v16 + 16);
      v64 = *(v16 + 24);
      if (v65 >= v64 >> 1)
      {
        v16 = sub_21B231F84((v64 > 1), v65 + 1, 1, v16);
      }

      *(v16 + 16) = v65 + 1;
      v66 = v16 + 16 * v65;
      *(v66 + 32) = v17;
      *(v66 + 40) = v13;
    }

    v30 = 0x208394E220;
    v187 = v16;

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    v177 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
    v178 = v67;
    v68 = sub_21B34AB74();
    v70 = v69;
    v157[1] = v16;

    v187 = 32;
    v188 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v68, v70);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v71 = v187;
    v72 = v188;
    v73 = v165;
    if (v165)
    {
      a2 = 8885474;
    }

    else
    {
      a2 = 8623330;
    }

    v187 = 8623330;
    v188 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v71, v72);

    MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v187, v188);

    if (*(v4 + 24) == 1)
    {
      v74 = v166;
      v15 = *(v166 + 2);
      v13 = MEMORY[0x277D84F90];
      if (v15)
      {
        v183 = a2;
        v184 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v15, 0);
        v13 = v184;
        v4 = (v74 + 72);
        do
        {
          v16 = *(v4 - 32);
          a2 = *(v4 - 24);
          v75 = *(v4 - 16);
          v17 = *v4;
          swift_bridgeObjectRetain_n();

          v76 = sub_21B2A0B58(a2, v75);
          if (v17 >= v76)
          {
            if (__OFSUB__(v17, v76))
            {
              goto LABEL_136;
            }

            v77 = sub_21B34AE74();
            v79 = v78;
            v187 = a2;
            v188 = v75;

            MEMORY[0x21CEED5E0](v77, v79);

            swift_bridgeObjectRelease_n();

            a2 = v187;
            v75 = v188;
          }

          else
          {
          }

          v184 = v13;
          v81 = *(v13 + 2);
          v80 = *(v13 + 3);
          v16 = v81 + 1;
          if (v81 >= v80 >> 1)
          {
            sub_21B231F10((v80 > 1), v81 + 1, 1);
            v13 = v184;
          }

          v4 += 48;
          *(v13 + 2) = v16;
          v82 = &v13[16 * v81];
          *(v82 + 4) = a2;
          *(v82 + 5) = v75;
          --v15;
        }

        while (v15);
        v4 = v176;
        v30 = 0x208394E220;
        a2 = v183;
      }

      v15 = v172;
      if (v172)
      {

        v16 = v179;

        v17 = v169;
        result = sub_21B2A0B58(v169, v16);
        v53 = __OFSUB__(v170, result);
        if (v170 >= result)
        {
LABEL_67:
          if (v53)
          {
            goto LABEL_152;
          }

          v83 = sub_21B34AE74();
          v85 = v84;
          v16 = v179;
          v187 = v169;
          v188 = v179;

          MEMORY[0x21CEED5E0](v83, v85);

          v17 = v187;
          v46 = v188;
        }

        else
        {

          v46 = v16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_149:
          v13 = sub_21B231F84(0, *(v13 + 2) + 1, 1, v13);
        }

        v87 = *(v13 + 2);
        v86 = *(v13 + 3);
        if (v87 >= v86 >> 1)
        {
          v13 = sub_21B231F84((v86 > 1), v87 + 1, 1, v13);
        }

        *(v13 + 2) = v87 + 1;
        v88 = &v13[16 * v87];
        *(v88 + 4) = v17;
        *(v88 + 5) = v46;
        v15 = v172;
      }

      v187 = v13;
      v89 = sub_21B34AB74();
      v91 = v90;

      v187 = 32;
      v188 = 0xE100000000000000;
      MEMORY[0x21CEED5E0](v89, v91);

      MEMORY[0x21CEED5E0](32, 0xE100000000000000);

      v92 = v187;
      v93 = v188;
      v187 = 8623330;
      v188 = 0xA300000000000000;
      MEMORY[0x21CEED5E0](v92, v93);

      MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      MEMORY[0x21CEED5E0](v187, v188);

      v73 = v165;
    }

    v17 = qword_282CA9258;
    v94 = sub_21B340E7C(qword_282CA9258, v163, 9278946, 0xA300000000000000, v73);
    v96 = v95;
    swift_arrayDestroy();
    MEMORY[0x21CEED5E0](v94, v96);

    v13 = v181;
    v18 = v180 >> 1;
    if (v180 != 1)
    {
      v104 = 0;
      v167 = v181 + 32;
      a2 = *(v166 + 2);
      v175 = v180 >> 1;
      v105 = 8819938;
      v174 = 8557794;
      if (!v165)
      {
        v105 = 8557794;
      }

      v173 = v105;
      v18 = v175;
      v168 = (v166 + 72);
      v182 = a2;
      while (v104 < v18)
      {
        v18 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_132;
        }

        v180 = v104 + 1;
        if (a2)
        {
          v184 = MEMORY[0x277D84F90];
          sub_21B231F10(0, a2, 0);
          v107 = v184;
          v4 = v168;
          v15 = a2;
          v183 = v104;
          do
          {
            v13 = *(v4 - 8);
            if (v104 >= *(v13 + 2))
            {
              __break(1u);
              goto LABEL_117;
            }

            v16 = *(v4 - 32);
            v30 = *(v4 - 16);
            v17 = *v4;
            v113 = &v13[16 * v104];
            v115 = *(v113 + 4);
            v114 = *(v113 + 5);

            v116 = sub_21B2A0B58(v115, v114);
            if (v17 >= v116)
            {
              if (__OFSUB__(v17, v116))
              {
                __break(1u);
                goto LABEL_130;
              }

              v117 = sub_21B34AE74();
              v119 = v118;
              v187 = v115;
              v188 = v114;

              MEMORY[0x21CEED5E0](v117, v119);
              a2 = v182;

              v115 = v187;
              v114 = v188;
            }

            else
            {
            }

            v184 = v107;
            v17 = *(v107 + 16);
            v120 = *(v107 + 24);
            if (v17 >= v120 >> 1)
            {
              sub_21B231F10((v120 > 1), v17 + 1, 1);
              v107 = v184;
            }

            v4 += 48;
            *(v107 + 16) = v17 + 1;
            v121 = v107 + 16 * v17;
            *(v121 + 32) = v115;
            *(v121 + 40) = v114;
            --v15;
            v104 = v183;
          }

          while (v15);
          v4 = v176;
          v15 = v172;
          v13 = v181;
          if (v172)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v107 = MEMORY[0x277D84F90];
          if (v15)
          {
LABEL_106:
            v18 = *(v13 + 2);
            if (v104 >= v18)
            {
              goto LABEL_134;
            }

            v16 = v107;
            v122 = &v167[16 * v104];
            v123 = *v122;
            v124 = v122[1];
            v17 = v170;
            sub_21B2CF988(v171, v15, v169, v179, v13);

            v125 = sub_21B2A0B58(v123, v124);
            if (v17 >= v125)
            {
              if (__OFSUB__(v17, v125))
              {
                goto LABEL_137;
              }

              v126 = sub_21B34AE74();
              v128 = v127;
              v187 = v123;
              v188 = v124;

              MEMORY[0x21CEED5E0](v126, v128);
              v123 = v187;
              v129 = v188;

              v124 = v129;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_21B231F84(0, *(v16 + 16) + 1, 1, v16);
            }

            v131 = *(v16 + 16);
            v130 = *(v16 + 24);
            if (v131 >= v130 >> 1)
            {
              v16 = sub_21B231F84((v130 > 1), v131 + 1, 1, v16);
            }

            *(v16 + 16) = v131 + 1;
            v106 = v16 + 16 * v131;
            *(v106 + 32) = v123;
            *(v106 + 40) = v124;
            v107 = v16;
          }
        }

        v187 = v107;
        v108 = sub_21B34AB74();
        v110 = v109;

        v187 = 32;
        v188 = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v108, v110);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v111 = v187;
        v112 = v188;
        v187 = v174;
        v188 = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v111, v112);

        MEMORY[0x21CEED5E0](v173, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        v17 = v188;
        MEMORY[0x21CEED5E0](v187, v188);

        v13 = v181;
        v104 = v180;
        v18 = v175;
        if (v180 == v175)
        {
          goto LABEL_75;
        }
      }

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

LABEL_75:
    a2 = v18;
    sub_21B2CF938(v171, v15, v169, v179, v13);

    v158(&v187, v160, v162);
    v17 = v187;
    v13 = v189;
    v46 = v190;
    v97 = v191;
    v16 = v192;
    v98 = sub_21B2FB1D4(v190, v191, v192);

    sub_21B23A9F4(v46, v97, v16);
    if (a2 >= v98)
    {
      v132 = sub_21B340E7C(qword_282CA9318, v163, 9213410, 0xA300000000000000, v165);
      v134 = v133;

      swift_arrayDestroy();
LABEL_125:
      MEMORY[0x21CEED5E0](v132, v134);

      if (*(v4 + 26) == 1)
      {
        v154 = (*(v162 + 64))(v160);
        v187 = sub_21B2CEA58(v154, v155, v4);
        v188 = v156;

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v187, v188);
        swift_unknownObjectRelease();

        sub_21B2B42B0(v164);
      }

      else
      {
        sub_21B2B42B0(v164);
        swift_unknownObjectRelease();
      }

      return v185;
    }

    v30 = v157[0] - 2;
    if (__OFSUB__(v157[0], 2))
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v15 = v157[0] - 4;
    if (__OFSUB__(v30, 2))
    {
      goto LABEL_147;
    }

    if (v157[0] == 4)
    {
      v17 = 0;
      v103 = 0xE000000000000000;
      goto LABEL_118;
    }

    v17 = 3026478;
    if (v15 < 1)
    {
      break;
    }

    v16 = 0;
    while (1)
    {
      v99 = sub_21B34AE94();
      v13 = v100;
      v101 = sub_21B2A0BE0(v99, v100);

      v53 = __OFADD__(v16, v101);
      v16 += v101;
      if (v53)
      {
        break;
      }

      v102 = sub_21B34ADB4();
      if (v102 >> 16 > 2 || v16 >= v15)
      {
        if ((v102 & 0xFFFFFFFFFFFFC000) != 0x30000)
        {
          goto LABEL_117;
        }

        v103 = 0xE300000000000000;
        goto LABEL_118;
      }
    }

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
    v32 = sub_21B23A308(*(v18 - 256));
    v33 = *(v32 + 2);
    if (!v33)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }
  }

LABEL_117:
  sub_21B34ADC4();
  v135 = sub_21B34AEB4();
  v136 = MEMORY[0x21CEED540](v135);
  v138 = v137;

  v187 = v136;
  v188 = v138;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v17 = v187;
  v103 = v188;
LABEL_118:
  result = sub_21B2A0B58(v17, v103);
  v139 = v15 - result;
  if (v15 < result)
  {
LABEL_121:
    v187 = 32;
    v188 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v17, v103, v139);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v144 = v187;
    v143 = v188;
    v145 = sub_21B340E7C(qword_282CA92B8, v163, 9278946, 0xA300000000000000, v165);
    v147 = v146;

    swift_arrayDestroy();
    MEMORY[0x21CEED5E0](v145, v147);

    result = sub_21B2A0B58(v144, v143);
    v148 = v30 - result;
    if (v30 >= result)
    {
      if (__OFSUB__(v30, result))
      {
        goto LABEL_151;
      }

      v149 = sub_21B34AE74();
      v151 = v150;
      v187 = v144;
      v188 = v143;

      MEMORY[0x21CEED5E0](v149, v151);

      v144 = v187;
      v143 = v188;
    }

    v187 = 8885474;
    v188 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v144, v143, v148);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v187, v188);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v30;
    v132 = sub_21B33F0FC(inited);
    v134 = v153;
    swift_setDeallocating();
    goto LABEL_125;
  }

  if (!__OFSUB__(v15, result))
  {
    v140 = sub_21B34AE74();
    v142 = v141;
    v187 = v17;
    v188 = v103;

    MEMORY[0x21CEED5E0](v140, v142);

    v17 = v187;
    v103 = v188;
    goto LABEL_121;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_21B2CB3D0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2CB408@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_21B2CFA3C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_21B2CF9D8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_21B34A714();
    v15 = v14;
    result = sub_21B234324(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B2CB554()
{
  v1 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  FormattingOptions.init()(v3);
  v7 = sub_21B2C6E78(v3, v4, v5, v6);
  sub_21B2B42B0(v3);
  return v7;
}

uint64_t DataFrame.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B34BC44();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - v6;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v47 = v8;
  v48 = v7;
  v49 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21B352080;
  strcpy((v10 + 32), "column names");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  v11 = *(v8 + 16);
  if (!v11)
  {

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    *(v10 + 48) = MEMORY[0x277D84F90];
    *(v10 + 72) = v31;
    strcpy((v10 + 80), "number of rows");
    *(v10 + 95) = -18;
LABEL_11:

    goto LABEL_12;
  }

  v36 = v3;
  v39 = a1;
  v46 = MEMORY[0x277D84F90];

  v38 = v7;

  v37 = v9;

  sub_21B231F10(0, v11, 0);
  v12 = v46;
  v13 = v8 + 32;
  v35 = v8 + 32;
  do
  {
    sub_21B233A74(v13, v43);
    v15 = v44;
    v14 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v16 = (*(*(v14 + 8) + 8))(v15);
    v18 = v17;
    sub_21B233960(v43);
    v46 = v12;
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21B231F10((v19 > 1), v20 + 1, 1);
      v12 = v46;
    }

    *(v12 + 16) = v20 + 1;
    v21 = v12 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v13 += 40;
    --v11;
  }

  while (v11);
  v22 = *(v8 + 16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  *(v10 + 48) = v12;
  *(v10 + 72) = v23;
  strcpy((v10 + 80), "number of rows");
  *(v10 + 95) = -18;
  v3 = v36;
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_21B233A74(v35, v43);
  v24 = v44;
  v25 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v26 = *(v25 + 8);
  v27 = *(v26 + 48);

  v28 = v27(v24, v26);
  result = sub_21B233960(v43);
  if ((v28 & 0x8000000000000000) == 0)
  {
    if (v28)
    {
      v30 = 0;
LABEL_13:
      v32 = sub_21B2FB1D4(0, v28, v30);
      *(v10 + 120) = MEMORY[0x277D83B88];
      *(v10 + 96) = v32;

      sub_21B23A9F4(0, v28, v30);
      v33 = sub_21B34BC34();
      (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
      (*(v42 + 104))(v41, *MEMORY[0x277D84C38], v3);
      return sub_21B34BC54();
    }

LABEL_12:
    v28 = 0;
    v30 = 2;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2CBAA0()
{
  v1 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[1];
  v7 = *v0;
  v8[0] = v4;
  *(v8 + 9) = *(v0 + 25);
  FormattingOptions.init()(v3);
  v5 = sub_21B2C8600(v3);
  sub_21B2B42B0(v3);
  return v5;
}

uint64_t DataFrame.Slice.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_21B34BC44();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + 40);
  v13 = v1[4];
  v45 = v9;
  v46 = v8;
  v47 = v10;
  v48 = v11;
  v49 = v13;
  v50 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B352080;
  strcpy((v14 + 32), "column names");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  v15 = *(v9 + 16);
  if (v15)
  {
    v36 = v7;
    v37 = v4;

    v34 = v13;
    v35 = v11;
    v33 = v12;
    sub_21B254074(v11, v13, v12);
    v44 = MEMORY[0x277D84F90];

    v32[2] = v8;

    v32[1] = v10;

    sub_21B231F10(0, v15, 0);
    v16 = v44;
    v17 = v9 + 32;
    do
    {
      sub_21B233A74(v17, v41);
      v18 = v42;
      v19 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v20 = (*(*(v19 + 8) + 8))(v18);
      v22 = v21;
      sub_21B233960(v41);
      v44 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21B231F10((v23 > 1), v24 + 1, 1);
        v16 = v44;
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += 40;
      --v15;
    }

    while (v15);
    v7 = v36;
    v4 = v37;
    v27 = v34;
    v26 = v35;
    LOBYTE(v12) = v33;
  }

  else
  {

    sub_21B254074(v11, v13, v12);

    v27 = v13;
    v26 = v11;
    v16 = MEMORY[0x277D84F90];
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  *(v14 + 48) = v16;
  *(v14 + 72) = v28;
  strcpy((v14 + 80), "number of rows");
  *(v14 + 95) = -18;
  v29 = sub_21B2FB1D4(v26, v27, v12);
  *(v14 + 120) = MEMORY[0x277D83B88];
  *(v14 + 96) = v29;
  sub_21B254074(v26, v27, v12);

  sub_21B23A9F4(v26, v27, v12);
  v30 = sub_21B34BC34();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  (*(v38 + 104))(v4, *MEMORY[0x277D84C38], v39);
  return sub_21B34BC54();
}

uint64_t DataFrame.Row.description(options:)(char *a1)
{
  sub_21B2C6C8C(*(v1 + 24), *(v1 + 24), *v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = sub_21B2C8600(a1);
  sub_21B2A63AC(v5);
  return v3;
}

uint64_t _s11TabularData0B5FrameV3RowV11descriptionSSvg_0()
{
  v1 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B2C6C8C(*(v0 + 24), *(v0 + 24), *v0, *(v0 + 8), *(v0 + 16), v6);
  FormattingOptions.init()(v3);
  v4 = sub_21B2C8600(v3);
  sub_21B2A63AC(v6);
  sub_21B2B42B0(v3);
  return v4;
}

uint64_t DataFrame.Row.customMirror.getter()
{
  v1 = sub_21B34BC44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v9 = *v0;
  v8 = v0[1];
  v11 = v0[2];
  v10 = v0[3];
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = v11;
  v16[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21B352080;
  *(v12 + 32) = 0x7865646E69;
  *(v12 + 40) = 0xE500000000000000;
  v13 = MEMORY[0x277D83B88];
  *(v12 + 48) = v10;
  *(v12 + 72) = v13;
  *(v12 + 80) = 1702060386;
  *(v12 + 112) = v11;
  *(v12 + 120) = &type metadata for DataFrame;
  *(v12 + 88) = 0xE400000000000000;
  *(v12 + 96) = v9;
  *(v12 + 104) = v8;
  v14 = sub_21B34BC34();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_21B34BC54();
}

uint64_t sub_21B2CC2D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_21B34A6A4();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = sub_21B34A874();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = *(a5 + 16);
  if (v19)
  {
    v20 = sub_21B3418EC(a1, a2, a3);
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      *&v45 = v20;
      sub_21B34B944();
      v24 = sub_21B34ADA4();

      if (*(a4 + 8) >= v24)
      {
        v22 = v24;
      }

      else
      {
        v22 = *(a4 + 8);
      }
    }

    result = sub_21B2CEC7C(v19 - 1, a4);
    v25 = v22 + 1;
    v26 = __OFADD__(v22, 1);
    if (!result)
    {
      goto LABEL_25;
    }

    if (v26)
    {
      __break(1u);
    }

    else if (!__OFADD__(v25, 2))
    {
      v27 = v22 + 4;
      if (!__OFADD__(v22 + 3, 1))
      {
        v28 = __OFADD__(v27, result);
        v29 = v27 + result;
        if (!v28)
        {
          v28 = __OFADD__(v29, 2);
          v30 = v29 + 2;
          if (!v28)
          {
            v28 = __OFADD__(v30, 1);
            v31 = v30 + 1;
            if (!v28)
            {
              v28 = __OFADD__(v31, 2);
              v32 = v31 + 2;
              if (!v28)
              {
                v28 = __OFADD__(v32, 2);
                v33 = v32 + 2;
                if (!v28)
                {
                  v28 = __OFADD__(v33, 1);
                  v25 = v33 + 1;
                  if (!v28)
                  {
LABEL_31:
                    if (*a4 >= v25)
                    {
                      return sub_21B2CFBB8(a4, a6);
                    }

                    v38 = *(a4 + 24);
                    *(a6 + 25) = 257;
                    *a6 = v25;
                    *(a6 + 8) = *(a4 + 8);
                    *(a6 + 24) = v38;
                    type metadata accessor for FormattingOptions(0);
                    sub_21B34A864();
                    sub_21B2CFAF0();
                    sub_21B34A634();
                    sub_21B34A864();
                    sub_21B2CFB44();
                    sub_21B34A674();
                    v45 = xmmword_21B354DD0;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
                    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
                    sub_21B34A694();
                    v39 = v42;
                    MEMORY[0x21CEECE60](v14, v42);
                    (*(v43 + 8))(v14, v44);
                    v40 = (*(v41 + 8))(v17, v39);
                    return MEMORY[0x21CEECE20](v40);
                  }

                  __break(1u);
LABEL_25:
                  if (!v26)
                  {
                    v28 = __OFADD__(v25, 2);
                    v34 = v25 + 2;
                    if (!v28)
                    {
                      v28 = __OFADD__(v34, 1);
                      v35 = v34 + 1;
                      if (!v28)
                      {
                        v28 = __OFADD__(v35, 2);
                        v36 = v35 + 2;
                        if (!v28)
                        {
                          v28 = __OFADD__(v36, 2);
                          v37 = v36 + 2;
                          if (!v28)
                          {
                            v28 = __OFADD__(v37, 1);
                            v25 = v37 + 1;
                            if (!v28)
                            {
                              goto LABEL_31;
                            }

LABEL_48:
                            __break(1u);
                            return result;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return sub_21B2CFBB8(a4, a6);
}

uint64_t sub_21B2CC710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = sub_21B34A6A4();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = sub_21B34A874();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = *(*v5 + 16);
  if (v18)
  {
    v19 = sub_21B3418EC(a1, a2, a3);
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      *&v44 = v19;
      sub_21B34B944();
      v23 = sub_21B34ADA4();

      if (*(a4 + 8) >= v23)
      {
        v21 = v23;
      }

      else
      {
        v21 = *(a4 + 8);
      }
    }

    result = sub_21B2CEC7C(v18 - 1, a4);
    v24 = v21 + 1;
    v25 = __OFADD__(v21, 1);
    if (!result)
    {
      goto LABEL_25;
    }

    if (v25)
    {
      __break(1u);
    }

    else if (!__OFADD__(v24, 2))
    {
      v26 = v21 + 4;
      if (!__OFADD__(v21 + 3, 1))
      {
        v27 = __OFADD__(v26, result);
        v28 = v26 + result;
        if (!v27)
        {
          v27 = __OFADD__(v28, 2);
          v29 = v28 + 2;
          if (!v27)
          {
            v27 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (!v27)
            {
              v27 = __OFADD__(v30, 2);
              v31 = v30 + 2;
              if (!v27)
              {
                v27 = __OFADD__(v31, 2);
                v32 = v31 + 2;
                if (!v27)
                {
                  v27 = __OFADD__(v32, 1);
                  v24 = v32 + 1;
                  if (!v27)
                  {
LABEL_31:
                    if (*a4 >= v24)
                    {
                      return sub_21B2CFBB8(a4, a5);
                    }

                    v37 = *(a4 + 24);
                    *(a5 + 25) = 257;
                    *a5 = v24;
                    *(a5 + 8) = *(a4 + 8);
                    *(a5 + 24) = v37;
                    type metadata accessor for FormattingOptions(0);
                    sub_21B34A864();
                    sub_21B2CFAF0();
                    sub_21B34A634();
                    sub_21B34A864();
                    sub_21B2CFB44();
                    sub_21B34A674();
                    v44 = xmmword_21B354DD0;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
                    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
                    sub_21B34A694();
                    v38 = v41;
                    MEMORY[0x21CEECE60](v13, v41);
                    (*(v42 + 8))(v13, v43);
                    v39 = (*(v40 + 8))(v16, v38);
                    return MEMORY[0x21CEECE20](v39);
                  }

                  __break(1u);
LABEL_25:
                  if (!v25)
                  {
                    v27 = __OFADD__(v24, 2);
                    v33 = v24 + 2;
                    if (!v27)
                    {
                      v27 = __OFADD__(v33, 1);
                      v34 = v33 + 1;
                      if (!v27)
                      {
                        v27 = __OFADD__(v34, 2);
                        v35 = v34 + 2;
                        if (!v27)
                        {
                          v27 = __OFADD__(v35, 2);
                          v36 = v35 + 2;
                          if (!v27)
                          {
                            v27 = __OFADD__(v36, 1);
                            v24 = v36 + 1;
                            if (!v27)
                            {
                              goto LABEL_31;
                            }

LABEL_48:
                            __break(1u);
                            return result;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return sub_21B2CFBB8(a4, a5);
}

uint64_t sub_21B2CCB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a1;
  v47 = a6;
  v45 = a4;
  v11 = sub_21B34A6A4();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v39 = &v38 - v14;
  v15 = sub_21B34A874();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = *(a5 + 24);
  v16(&v48, a3, a5);
  v17 = v48;

  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_17;
  }

  sub_21B34AF44();
  v19 = sub_21B2CFCB8(v48, SBYTE8(v48), a2);
  v16(&v48, a3, a5);
  v20 = v48;

  v21 = *(v20 + 16);

  result = sub_21B2CFD34(v21 - 1, a2);
  v23 = v19 + 1;
  v24 = __OFADD__(v19, 1);
  if (!result)
  {
    if (!v24)
    {
      if (!__OFADD__(v23, 2))
      {
        if (!__OFADD__(v19 + 3, 1))
        {
          if (!__OFADD__(v19 + 4, 2))
          {
            if (!__OFADD__(v19 + 6, 2))
            {
              v32 = v19 + 9;
              if (!__OFADD__(v19 + 8, 1))
              {
                goto LABEL_26;
              }

LABEL_43:
              __break(1u);
              return result;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v24)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(v23, 2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v19 + 4;
  if (__OFADD__(v19 + 3, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = __OFADD__(v25, result);
  v27 = v25 + result;
  if (v26)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = __OFADD__(v27, 2);
  v28 = v27 + 2;
  if (v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v26)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = __OFADD__(v29, 2);
  v30 = v29 + 2;
  if (v26)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = __OFADD__(v30, 2);
  v31 = v30 + 2;
  if (v26)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v26)
  {
LABEL_26:
    if (*a2 >= v32)
    {
      return sub_21B2CFBB8(a2, a7);
    }

    v33 = *(a2 + 24);
    *(a7 + 25) = 257;
    *a7 = v32;
    *(a7 + 8) = *(a2 + 8);
    *(a7 + 24) = v33;
    type metadata accessor for FormattingOptions(0);
    sub_21B34A864();
    sub_21B2CFAF0();
    sub_21B34A634();
    sub_21B34A864();
    sub_21B2CFB44();
    v34 = v39;
    sub_21B34A674();
    v48 = xmmword_21B354DD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
    v35 = v42;
    sub_21B34A694();
    v36 = v41;
    MEMORY[0x21CEECE60](v35, v41);
    (*(v43 + 8))(v35, v44);
    v37 = (*(v40 + 8))(v34, v36);
    return MEMORY[0x21CEECE20](v37);
  }

  __break(1u);
LABEL_17:

  return sub_21B2CFBB8(a2, a7);
}

char *sub_21B2CD000(uint64_t *a1, uint64_t a2, _OWORD *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67[1] = a7;
  v67[2] = a8;
  v78 = sub_21B34A6A4();
  v14 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v16 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v67 - v17;
  v18 = sub_21B34A874();
  MEMORY[0x28223BE20](v18 - 8);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FormattingOptions(0);
  v20 = MEMORY[0x28223BE20](v73);
  v72 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92[0] = a1;
  v92[1] = a2;
  v92[2] = a3;
  v92[3] = a4;
  v68 = a6;
  v22 = *(a6 + 16);
  if (*(a5 + 25) != 1)
  {
    goto LABEL_7;
  }

  a1 = v67;
  MEMORY[0x28223BE20](v20);
  v67[-2] = a5;
  v23 = sub_21B3329E0(sub_21B2CFEC8, &v67[-4], a2, a3, a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v23, v93);
  v24 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  a4 = *(v24 + 2);
  v25 = *(v24 + 3);
  v88 = v24;
  a3 = (a4 + 1);
  if (a4 >= v25 >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v26 = v88;
    *(v88 + 2) = a3;
    v27 = &v26[48 * a4];
    v28 = v93[2];
    *(v27 + 3) = v93[1];
    *(v27 + 4) = v28;
    *(v27 + 2) = v93[0];
    v29 = *(v26 + 9);
    v30 = __OFADD__(v29, 2);
    v31 = v29 + 2;
    if (v30)
    {
      __break(1u);
LABEL_64:
      v88 = sub_21B2498F0(0, *(v88 + 2) + 1, 1, v88);
LABEL_45:
      v61 = *(v88 + 2);
      v60 = *(v88 + 3);
      if (v61 >= v60 >> 1)
      {
        v88 = sub_21B2498F0((v60 > 1), v61 + 1, 1, v88);
      }

      v62 = v88;
      *(v88 + 2) = v61 + 1;
      v63 = &v62[48 * v61];
      v64 = *(a1 + 3);
      v65 = *(a1 + 5);
      *(v63 + 3) = *(a1 + 4);
      *(v63 + 4) = v65;
      *(v63 + 2) = v64;
      sub_21B233960(&v89);
      return v88;
    }

    v30 = __OFADD__(v31, 1);
    v25 = v31 + 1;
    if (v30)
    {
      __break(1u);
LABEL_7:
      v88 = MEMORY[0x277D84F90];
      v25 = 1;
    }

    v32 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v88 = sub_21B2498F0((v25 > 1), a3, 1, v88);
  }

  if (v22)
  {
    a4 = 0;
    a3 = v94;
    v33 = v68 + 32;
    v81 = (v22 - 1);
    v70 = (v16 + 8);
    v71 = (v14 + 8);
    v69 = xmmword_21B354DD0;
    v83 = a5;
    v80 = v22;
    do
    {
      *v97 = a4;
      sub_21B233A74(v33, &v97[8]);
      if (!v99)
      {
        break;
      }

      a1 = *v97;
      v25 = v98;
      v89 = *&v97[8];
      v90 = v98;
      v91 = v99;
      v14 = v22 - *v97;
      if (__OFSUB__(v22, *v97))
      {
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
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v25 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_50;
      }

      if (v14 != 1)
      {
        if (*(a5 + 24))
        {
          *v97 = v14 - 1;
          sub_21B34B944();
          v16 = v34;
          a3 = sub_21B34ADA4();

          v35 = sub_21B34ADA4();
          if (v35 <= a3)
          {
            v25 = a3;
          }

          else
          {
            v25 = v35;
          }
        }

        else
        {
          *v97 = v14 - 1;
          sub_21B34B944();
          v16 = v36;
          a3 = sub_21B34ADA4();

          v37 = sub_21B34ADA4();
          v25 = a3 + v37;
          if (__OFADD__(a3, v37))
          {
            goto LABEL_60;
          }
        }

        if (*(a5 + 8) < v25)
        {
          v25 = *(a5 + 8);
        }
      }

      v30 = __OFADD__(v25, 2);
      v25 += 2;
      if (v30)
      {
        goto LABEL_51;
      }

      v30 = __OFADD__(v25++, 1);
      if (v30)
      {
        goto LABEL_52;
      }

      v38 = *a5 - v32;
      if (__OFSUB__(*a5, v32))
      {
        goto LABEL_53;
      }

      if (a1 == v81)
      {
        v25 = 0;
      }

      v30 = __OFSUB__(v38, v25);
      v25 = v38 - v25;
      if (v30)
      {
        goto LABEL_54;
      }

      v30 = __OFSUB__(v25, 2);
      v25 -= 2;
      if (v30)
      {
        goto LABEL_55;
      }

      a3 = (v25 - 1);
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_56;
      }

      v79 = v22 - a1;
      v84 = a4;
      v85 = v33;
      v86 = v32;
      v40 = *(&v91 + 1);
      v39 = v91;
      __swift_project_boxed_opaque_existential_1(&v89, v91);
      v41 = *(v40 + 8);
      v87 = *(v41 + 112);
      v42 = a5;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
      a4 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0, MEMORY[0x277D83FB0]);
      v44 = v94;
      v82 = v43;
      (v87)(v94, v92, v42, v43, a4, v39, v41);
      a1 = v96;
      if (a3 < v96)
      {
        a1 = v94;
        v103 = v94[0];
        sub_21B2B421C(&v103);
        v102 = v94[1];
        sub_21B2B421C(&v102);
        v101 = v95;
        sub_21B261664(&v101, &qword_27CD7E840, &qword_21B352A68);
        if (*(v88 + 2) != 1)
        {
          sub_21B2CED60(v79, v83, v68, v97);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_45;
        }

        v79 = *(&v91 + 1);
        v45 = v91;
        v87 = __swift_project_boxed_opaque_existential_1(&v89, v91);
        v46 = *(v83 + 8);
        v47 = *(v83 + 16);
        if (v46 >= a3)
        {
          v46 = a3;
        }

        v48 = *(v83 + 24);
        v49 = v72;
        *(v72 + 25) = 257;
        *v49 = a3;
        *(v49 + 8) = v46;
        *(v49 + 16) = v47;
        *(v49 + 24) = v48;
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        sub_21B34A864();
        sub_21B2CFB44();
        v50 = v75;
        sub_21B34A674();
        *v97 = v69;
        v51 = a4;
        a4 = &qword_27CD7E978;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
        v52 = v77;
        sub_21B34A694();
        v53 = v76;
        MEMORY[0x21CEECE60](v52, v76);
        (*v71)(v52, v78);
        v54 = (*v70)(v50, v53);
        MEMORY[0x21CEECE20](v54);
        v44 = v100;
        (*(*(v79 + 8) + 112))(v100, v92, v49, v82, v51, v45);
        sub_21B2B42B0(v49);
        a1 = v100[5];
      }

      v22 = v44[3];
      a3 = v44[4];
      v14 = v44[1];
      v55 = v44[2];
      a5 = *v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21B2498F0(0, *(v88 + 2) + 1, 1, v88);
      }

      v57 = *(v88 + 2);
      v56 = *(v88 + 3);
      v16 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v88 = sub_21B2498F0((v56 > 1), v57 + 1, 1, v88);
      }

      v58 = v88;
      *(v88 + 2) = v16;
      v59 = &v58[48 * v57];
      *(v59 + 4) = a5;
      *(v59 + 5) = v14;
      *(v59 + 6) = v55;
      *(v59 + 7) = v22;
      *(v59 + 8) = a3;
      *(v59 + 9) = a1;
      v25 = a1 + 2;
      if (__OFADD__(a1, 2))
      {
        goto LABEL_57;
      }

      v30 = __OFADD__(v25, 1);
      v25 = a1 + 3;
      if (v30)
      {
        goto LABEL_58;
      }

      v32 = v86 + v25;
      if (__OFADD__(v86, v25))
      {
        goto LABEL_59;
      }

      a4 = v84 + 1;
      sub_21B233960(&v89);
      v33 = v85 + 40;
      v22 = v80;
      a5 = v83;
      a3 = v94;
    }

    while (v80 != a4);
  }

  return v88;
}

char *sub_21B2CD910(uint64_t a1, uint64_t a2, _OWORD *a3, unint64_t a4, uint64_t a5)
{
  v74 = sub_21B34A6A4();
  v11 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v84 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - v13;
  v14 = sub_21B34A874();
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FormattingOptions(0);
  v16 = MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[0] = a1;
  v88[1] = a2;
  v88[2] = a3;
  v88[3] = a4;
  v64 = v5;
  v19 = *v5;
  v20 = *(*v5 + 16);
  if (*(a5 + 25) != 1)
  {
    v24 = MEMORY[0x277D84F90];
    v23 = 1;
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v16);
  *(&v63 - 2) = a5;
  v21 = sub_21B3329E0(sub_21B2CFB98, (&v63 - 4), a2, a3, a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v21, v89);
  v22 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v17 = v22;
  a3 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    *(v17 + 2) = a3;
    v25 = &v17[48 * v24];
    v26 = v89[2];
    *(v25 + 3) = v89[1];
    *(v25 + 4) = v26;
    *(v25 + 2) = v89[0];
    v27 = *(v17 + 9);
    v28 = __OFADD__(v27, 2);
    v29 = v27 + 2;
    if (v28)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v24 = sub_21B2498F0(0, *(v24 + 2) + 1, 1, v24);
LABEL_45:
      v55 = v24;
      v56 = *(v24 + 2);
      v57 = v55;
      v58 = *(v55 + 3);
      if (v56 >= v58 >> 1)
      {
        v57 = sub_21B2498F0((v58 > 1), v56 + 1, 1, v57);
      }

      *(v57 + 2) = v56 + 1;
      v59 = &v57[48 * v56];
      v24 = v57;
      v60 = a3[3];
      v61 = a3[5];
      *(v59 + 3) = a3[4];
      *(v59 + 4) = v61;
      *(v59 + 2) = v60;
      sub_21B233960(&v85);
      return v24;
    }

    v28 = __OFADD__(v29, 1);
    v23 = v29 + 1;
    if (v28)
    {
      goto LABEL_64;
    }

    v24 = v17;
LABEL_7:
    v30 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v17 = sub_21B2498F0((v23 > 1), a3, 1, v17);
  }

  if (v20)
  {
    a3 = 0;
    v31 = v19 + 32;
    v77 = v20 - 1;
    v66 = (v84 + 8);
    v67 = (v11 + 8);
    v65 = xmmword_21B354DD0;
    v79 = a5;
    v76 = v20;
    do
    {
      *v93 = a3;
      sub_21B233A74(v31, &v93[8]);
      if (!v95)
      {
        break;
      }

      v81 = v31;
      v82 = a3;
      v19 = *v93;
      v23 = v94;
      v85 = *&v93[8];
      v86 = v94;
      v87 = v95;
      v32 = v20 - *v93;
      if (__OFSUB__(v20, *v93))
      {
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
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v23 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_50;
      }

      if (v32 != 1)
      {
        if (*(a5 + 24))
        {
          *v93 = v32 - 1;
          sub_21B34B944();
          a3 = sub_21B34ADA4();

          v33 = sub_21B34ADA4();
          if (v33 <= a3)
          {
            v23 = a3;
          }

          else
          {
            v23 = v33;
          }
        }

        else
        {
          *v93 = v32 - 1;
          sub_21B34B944();
          a3 = sub_21B34ADA4();

          v34 = sub_21B34ADA4();
          v23 = a3 + v34;
          if (__OFADD__(a3, v34))
          {
            goto LABEL_60;
          }
        }

        if (*(a5 + 8) < v23)
        {
          v23 = *(a5 + 8);
        }
      }

      v28 = __OFADD__(v23, 2);
      v23 += 2;
      if (v28)
      {
        goto LABEL_51;
      }

      v28 = __OFADD__(v23++, 1);
      if (v28)
      {
        goto LABEL_52;
      }

      v35 = *a5 - v30;
      if (__OFSUB__(*a5, v30))
      {
        goto LABEL_53;
      }

      if (v19 == v77)
      {
        v23 = 0;
      }

      v28 = __OFSUB__(v35, v23);
      v23 = v35 - v23;
      if (v28)
      {
        goto LABEL_54;
      }

      v28 = __OFSUB__(v23, 2);
      v23 -= 2;
      if (v28)
      {
        goto LABEL_55;
      }

      v11 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_56;
      }

      v75 = (v20 - v19);
      v80 = v30;
      v84 = v24;
      v36 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, v87);
      v37 = *(*(&v36 + 1) + 8);
      v83 = *(v37 + 112);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
      v39 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0, MEMORY[0x277D83FB0]);
      v40 = v90;
      v78 = v38;
      v83(v90, v88, a5, v38, v39, v36, v37);
      v19 = v92;
      if (v11 >= v92)
      {
        v24 = v84;
      }

      else
      {
        a3 = v90;
        v99 = v90[0];
        sub_21B2B421C(&v99);
        v98 = v90[1];
        sub_21B2B421C(&v98);
        v97 = v91;
        sub_21B261664(&v97, &qword_27CD7E840, &qword_21B352A68);
        v24 = v84;
        if (*(v84 + 2) != 1)
        {
          sub_21B2CF1C8(v75, v79, v93);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_45;
        }

        v83 = v39;
        v41 = v87;
        v75 = __swift_project_boxed_opaque_existential_1(&v85, v87);
        v42 = *(v79 + 8);
        v43 = *(v79 + 16);
        if (v42 >= v11)
        {
          v42 = v11;
        }

        v44 = *(v79 + 24);
        v45 = v68;
        *(v68 + 25) = 257;
        *v45 = v11;
        *(v45 + 8) = v42;
        *(v45 + 16) = v43;
        *(v45 + 24) = v44;
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        sub_21B34A864();
        sub_21B2CFB44();
        v46 = v71;
        sub_21B34A674();
        *v93 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
        v47 = v73;
        sub_21B34A694();
        v48 = v72;
        MEMORY[0x21CEECE60](v47, v72);
        v49 = v47;
        v24 = v84;
        (*v67)(v49, v74);
        v50 = (*v66)(v46, v48);
        MEMORY[0x21CEECE20](v50);
        v40 = v96;
        (*(*(*(&v41 + 1) + 8) + 112))(v96, v88, v45, v78, v83, v41);
        sub_21B2B42B0(v45);
        v19 = v96[5];
      }

      v11 = v40[3];
      a3 = v40[4];
      a5 = v40[1];
      v51 = v40[2];
      v52 = *v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_21B2498F0(0, *(v24 + 2) + 1, 1, v24);
      }

      v20 = *(v24 + 2);
      v53 = *(v24 + 3);
      if (v20 >= v53 >> 1)
      {
        v24 = sub_21B2498F0((v53 > 1), v20 + 1, 1, v24);
      }

      *(v24 + 2) = v20 + 1;
      v54 = &v24[48 * v20];
      *(v54 + 4) = v52;
      *(v54 + 5) = a5;
      *(v54 + 6) = v51;
      *(v54 + 7) = v11;
      *(v54 + 8) = a3;
      *(v54 + 9) = v19;
      v23 = v19 + 2;
      if (__OFADD__(v19, 2))
      {
        goto LABEL_57;
      }

      v28 = __OFADD__(v23, 1);
      v23 = v19 + 3;
      if (v28)
      {
        goto LABEL_58;
      }

      v30 = v80 + v23;
      if (__OFADD__(v80, v23))
      {
        goto LABEL_59;
      }

      a3 = (v82 + 1);
      sub_21B233960(&v85);
      v31 = v81 + 40;
      v20 = v76;
      a5 = v79;
    }

    while (v76 != a3);
  }

  return v24;
}

char *sub_21B2CE214(uint64_t a1, int64_t a2, int64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), int64_t a5, uint64_t a6)
{
  v83 = a6;
  v71 = sub_21B34A6A4();
  v85 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v84 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - v13;
  v14 = sub_21B34A874();
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 24);
  v61 = v6;
  (v17)(v96, a3, a5);
  v18 = v96[0];

  v79 = *(v18 + 16);

  v20 = *(a2 + 25);
  v81 = a1;
  v82 = a4;
  if (v20 != 1)
  {
    goto LABEL_7;
  }

  sub_21B2CFE1C(a2, a4, v83, v19, v90);
  v21 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v86 = v21;
  v18 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v24 = v86;
    *(v86 + 2) = v18;
    v25 = &v24[48 * v23];
    v26 = v90[2];
    *(v25 + 3) = v90[1];
    *(v25 + 4) = v26;
    *(v25 + 2) = v90[0];
    v27 = *(v24 + 9);
    v28 = __OFADD__(v27, 2);
    v29 = v27 + 2;
    if (v28)
    {
      __break(1u);
LABEL_57:
      v86 = sub_21B2498F0(0, *(v86 + 2) + 1, 1, v86);
LABEL_39:
      v55 = *(v86 + 2);
      v54 = *(v86 + 3);
      if (v55 >= v54 >> 1)
      {
        v86 = sub_21B2498F0((v54 > 1), v55 + 1, 1, v86);
      }

      v56 = v86;
      *(v86 + 2) = v55 + 1;
      v57 = &v56[48 * v55];
      v58 = *v94;
      v59 = v95;
      *(v57 + 3) = *&v94[16];
      *(v57 + 4) = v59;
      *(v57 + 2) = v58;
      sub_21B233960(&v87);
      return v86;
    }

    v28 = __OFADD__(v29, 1);
    v22 = v29 + 1;
    if (v28)
    {
      __break(1u);
LABEL_7:
      v86 = MEMORY[0x277D84F90];
      v22 = 1;
    }

    v23 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v86 = sub_21B2498F0((v22 > 1), v18, 1, v86);
  }

  (v17)(v96, a3, a5);
  v17 = v96[0];
  v18 = v96[1];

  v78 = *(v17 + 16);
  if (v78)
  {
    v30 = 0;
    v31 = v17 + 32;
    v77 = v79 - 1;
    v63 = (v84 + 8);
    v64 = (v85 + 8);
    v62 = xmmword_21B354DD0;
    v74 = a5;
    v75 = v17;
    v76 = a3;
    v80 = a2;
    do
    {
      v22 = *(v17 + 16);
      if (v30 >= v22)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      *v94 = v30;
      sub_21B233A74(v31, &v94[8]);
      if (!v95)
      {
        break;
      }

      v18 = *v94;
      v87 = *&v94[8];
      v88 = *&v94[24];
      v89 = v95;
      v22 = v79;
      v32 = v79 - *v94;
      if (__OFSUB__(v79, *v94))
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v32, 1))
      {
        goto LABEL_44;
      }

      v33 = sub_21B2CFD34(v32 - 1, a2);
      v22 = v33 + 2;
      if (__OFADD__(v33, 2))
      {
        goto LABEL_45;
      }

      v28 = __OFADD__(v22, 1);
      v22 = v33 + 3;
      if (v28)
      {
        goto LABEL_46;
      }

      v34 = *a2 - v23;
      if (__OFSUB__(*a2, v23))
      {
        goto LABEL_47;
      }

      if (v18 == v77)
      {
        v22 = 0;
      }

      v28 = __OFSUB__(v34, v22);
      v22 = v34 - v22;
      if (v28)
      {
        goto LABEL_48;
      }

      v28 = __OFSUB__(v22, 2);
      v22 -= 2;
      if (v28)
      {
        goto LABEL_49;
      }

      v85 = v31;
      v35 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_50;
      }

      v84 = v23;
      v36 = v89;
      __swift_project_boxed_opaque_existential_1(&v87, v89);
      v37 = a2;
      v38 = v91;
      (*(*(*(&v36 + 1) + 8) + 112))(v91, v81, v37, v82, v83, v36);
      a3 = v93;
      if (v35 < v93)
      {
        v99 = v91[0];
        sub_21B2B421C(&v99);
        v98 = v91[1];
        sub_21B2B421C(&v98);
        v97 = v92;
        sub_21B261664(&v97, &qword_27CD7E840, &qword_21B352A68);
        if (*(v86 + 2) != 1)
        {

          sub_21B2CF548(v32, v80, v76, a5, v94);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_39;
        }

        v72 = *(&v89 + 1);
        v39 = v89;
        v73 = __swift_project_boxed_opaque_existential_1(&v87, v89);
        v40 = *(v80 + 8);
        v41 = *(v80 + 16);
        if (v40 >= v35)
        {
          v40 = v35;
        }

        v42 = *(v80 + 24);
        v43 = v65;
        *(v65 + 25) = 257;
        *v43 = v35;
        *(v43 + 8) = v40;
        *(v43 + 16) = v41;
        *(v43 + 24) = v42;
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        sub_21B34A864();
        sub_21B2CFB44();
        v44 = v68;
        sub_21B34A674();
        *v94 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
        v45 = v70;
        sub_21B34A694();
        v46 = v69;
        MEMORY[0x21CEECE60](v45, v69);
        (*v64)(v45, v71);
        v47 = (*v63)(v44, v46);
        MEMORY[0x21CEECE20](v47);
        v38 = v96;
        (*(*(v72 + 8) + 112))(v96, v81, v43, v82, v83, v39);
        sub_21B2B42B0(v43);
        a3 = v96[5];
      }

      v48 = v38[3];
      v17 = v38[4];
      a5 = v38[1];
      v49 = v38[2];
      a2 = *v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_21B2498F0(0, *(v86 + 2) + 1, 1, v86);
      }

      v23 = *(v86 + 2);
      v50 = *(v86 + 3);
      v18 = v23 + 1;
      if (v23 >= v50 >> 1)
      {
        v86 = sub_21B2498F0((v50 > 1), v23 + 1, 1, v86);
      }

      v51 = v86;
      *(v86 + 2) = v18;
      v52 = &v51[48 * v23];
      *(v52 + 4) = a2;
      *(v52 + 5) = a5;
      *(v52 + 6) = v49;
      *(v52 + 7) = v48;
      *(v52 + 8) = v17;
      *(v52 + 9) = a3;
      v22 = a3 + 2;
      if (__OFADD__(a3, 2))
      {
        goto LABEL_51;
      }

      v28 = __OFADD__(v22, 1);
      v22 = a3 + 3;
      if (v28)
      {
        goto LABEL_52;
      }

      v23 = v84 + v22;
      if (__OFADD__(v84, v22))
      {
        goto LABEL_53;
      }

      ++v30;
      sub_21B233960(&v87);
      v31 = v85 + 40;
      a5 = v74;
      v17 = v75;
      a3 = v76;
      a2 = v80;
    }

    while (v78 != v30);
  }

  return v86;
}

uint64_t sub_21B2CEA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1)
  {
    type metadata accessor for FormattingOptions(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B2CFAF0();
    sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0, MEMORY[0x277CC8CE8]);
    sub_21B34B504();
    MEMORY[0x21CEED5E0](0x202C73776F7220, 0xE700000000000000);
    MEMORY[0x21CEED5E0]();

    if (a2 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x21CEED5E0](0x6E6D756C6F632031, 0xE800000000000000);
    return 0;
  }

  MEMORY[0x21CEED5E0](0x202C776F722031, 0xE700000000000000, a3);
  if (a2 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for FormattingOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  sub_21B2CFAF0();
  sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0, MEMORY[0x277CC8CE8]);
  sub_21B34B504();
  MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE800000000000000);
  MEMORY[0x21CEED5E0]();

  return 0;
}

uint64_t sub_21B2CEC7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 24))
    {
      sub_21B34B944();
      v3 = sub_21B34ADA4();

      v4 = sub_21B34ADA4();
      if (v4 <= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      sub_21B34B944();
      v6 = sub_21B34ADA4();

      result = sub_21B34ADA4();
      v5 = v6 + result;
      if (__OFADD__(v6, result))
      {
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 8) >= v5)
    {
      return v5;
    }

    else
    {
      return *(a2 + 8);
    }
  }

  return result;
}

void *sub_21B2CED60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  if (*(a2 + 24) != 1)
  {
    *&v54 = sub_21B34B944();
    *(&v54 + 1) = v23;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v24 = sub_21B2A11F8(*(a2 + 8), v54, *(&v54 + 1));
    v26 = v25;

    if (*(a3 + 16))
    {
      sub_21B233A74(a3 + 32, &v54);
      v28 = *(&v56 + 1);
      v27 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v56);
      v29 = *(v28 + 8);
      v30 = *(v29 + 48);

      v31 = v30(v27, v29);
      result = sub_21B233960(&v54);
      if (v31 < 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v31)
      {
        v32 = 0;
LABEL_19:
        v33 = sub_21B2FB1D4(0, v31, v32);

        sub_21B23A9F4(0, v31, v32);
        v34 = sub_21B27400C(0, 0xE000000000000000, v33);
        v35 = v24;
        v36 = v26;
        v37 = 0;
        v38 = 0xE000000000000000;
LABEL_26:
        result = sub_21B3419B8(v35, v36, v37, v38, v34, &v54);
        v49 = v57;
        v50 = v55;
        v51 = v56;
        *a6 = v54;
        *(a6 + 16) = v50;
        *(a6 + 24) = v51;
        *(a6 + 40) = v49;
        return result;
      }
    }

    else
    {
    }

    v31 = 0;
    v32 = 2;
    goto LABEL_19;
  }

  *&v54 = a1;
  v9 = sub_21B34B944();
  v10 = *(a2 + 8);
  v12 = sub_21B2A11F8(v10, v9, v11);
  v52 = v13;
  v53 = v12;

  if (!v10)
  {
    v14 = 0;
    v22 = 0xE000000000000000;
    if (*(a3 + 16))
    {
      goto LABEL_21;
    }

LABEL_16:

    goto LABEL_24;
  }

  v14 = 1701998445;
  if (v10 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_21B34AE94();
      v18 = sub_21B2A0BE0(v16, v17);

      v20 = __OFADD__(v15, v18);
      v15 += v18;
      if (v20)
      {
        __break(1u);
        goto LABEL_28;
      }

      v21 = sub_21B34ADB4();
    }

    while (!(v21 >> 18) && v15 < v10);
    if ((v21 & 0xFFFFFFFFFFFFC000) != 0x40000)
    {
      goto LABEL_20;
    }

    v22 = 0xE400000000000000;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_21B34ADC4();
  v39 = sub_21B34AEB4();
  v40 = MEMORY[0x21CEED540](v39);
  v42 = v41;

  *&v54 = v40;
  *(&v54 + 1) = v42;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v14 = v40;
  v22 = *(&v54 + 1);
  if (!*(a3 + 16))
  {
    goto LABEL_16;
  }

LABEL_21:
  sub_21B233A74(a3 + 32, &v54);
  v43 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  v44 = *(*(&v43 + 1) + 8);
  v45 = *(v44 + 48);

  v46 = v45(v43, v44);
  result = sub_21B233960(&v54);
  if ((v46 & 0x8000000000000000) == 0)
  {
    if (v46)
    {
      v47 = 0;
LABEL_25:
      v48 = sub_21B2FB1D4(0, v46, v47);

      sub_21B23A9F4(0, v46, v47);
      v34 = sub_21B27400C(0, 0xE000000000000000, v48);
      v36 = v52;
      v35 = v53;
      v37 = v14;
      v38 = v22;
      goto LABEL_26;
    }

LABEL_24:
    v46 = 0;
    v47 = 2;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_21B2CF1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (*(a2 + 24) == 1)
  {
    *&v44 = a1;
    v7 = sub_21B34B944();
    v8 = *(a2 + 8);
    v10 = sub_21B2A11F8(v8, v7, v9);
    v12 = v11;

    if (v8)
    {
      v13 = 1701998445;
      if (v8 < 1)
      {
LABEL_12:
        sub_21B34ADC4();
        v34 = sub_21B34AEB4();
        v35 = MEMORY[0x21CEED540](v34);
        v37 = v36;

        *&v44 = v35;
        *(&v44 + 1) = v37;

        MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

        v13 = v35;
        v21 = v37;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = sub_21B34AE94();
          v17 = sub_21B2A0BE0(v15, v16);

          v19 = __OFADD__(v14, v17);
          v14 += v17;
          if (v19)
          {
            __break(1u);
            return result;
          }

          v20 = sub_21B34ADB4();
        }

        while (!(v20 >> 18) && v14 < v8);
        if ((v20 & 0xFFFFFFFFFFFFC000) != 0x40000)
        {
          goto LABEL_12;
        }

        v21 = 0xE400000000000000;
      }
    }

    else
    {
      v13 = 0;
      v21 = 0xE000000000000000;
    }

    v50 = *v4;
    v51 = *(v4 + 2);
    v48 = *(v4 + 24);
    v38 = *(v4 + 40);
    v49 = v38;
    v39 = v48;
    v40 = sub_21B2FB1D4(v48, *(&v48 + 1), v38);
    sub_21B2A62E0(&v50, &v44);
    sub_21B2A633C(&v48, &v44);

    sub_21B23A9F4(v39, *(&v39 + 1), v38);
    v29 = sub_21B27400C(0, 0xE000000000000000, v40);
    v31 = v12;
    v30 = v10;
    v32 = v13;
    v33 = v21;
  }

  else
  {
    *&v50 = a1;
    *&v44 = sub_21B34B944();
    *(&v44 + 1) = v22;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v23 = sub_21B2A11F8(*(a2 + 8), v44, *(&v44 + 1));
    v25 = v24;

    v50 = *v4;
    v51 = *(v4 + 2);
    v48 = *(v4 + 24);
    v26 = *(v4 + 40);
    v49 = v26;
    v27 = v48;
    v28 = sub_21B2FB1D4(v48, *(&v48 + 1), v26);
    sub_21B2A62E0(&v50, &v44);
    sub_21B2A633C(&v48, &v44);

    sub_21B23A9F4(v27, *(&v27 + 1), v26);
    v29 = sub_21B27400C(0, 0xE000000000000000, v28);
    v30 = v23;
    v31 = v25;
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  result = sub_21B3419B8(v30, v31, v32, v33, v29, &v44);
  v41 = v47;
  v42 = v45;
  v43 = v46;
  *a3 = v44;
  *(a3 + 16) = v42;
  *(a3 + 24) = v43;
  *(a3 + 40) = v41;
  return result;
}

void *sub_21B2CF548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 24) == 1)
  {
    *&v47 = a1;
    v9 = sub_21B34B944();
    v10 = *(a2 + 8);
    v12 = sub_21B2A11F8(v10, v9, v11);
    v45 = v13;
    v46 = v12;

    if (v10)
    {
      v14 = 1701998445;
      if (v10 < 1)
      {
LABEL_12:
        sub_21B34ADC4();
        v35 = sub_21B34AEB4();
        v36 = MEMORY[0x21CEED540](v35);
        v38 = v37;

        *&v47 = v36;
        *(&v47 + 1) = v38;

        MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

        v14 = v36;
        v22 = v38;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = sub_21B34AE94();
          v18 = sub_21B2A0BE0(v16, v17);

          v20 = __OFADD__(v15, v18);
          v15 += v18;
          if (v20)
          {
            __break(1u);
            return result;
          }

          v21 = sub_21B34ADB4();
        }

        while (!(v21 >> 18) && v15 < v10);
        if ((v21 & 0xFFFFFFFFFFFFC000) != 0x40000)
        {
          goto LABEL_12;
        }

        v22 = 0xE400000000000000;
      }
    }

    else
    {
      v14 = 0;
      v22 = 0xE000000000000000;
    }

    (*(a4 + 32))(&v47, a3, a4);
    v39 = v49;
    v40 = v50;
    v41 = sub_21B2FB1D4(v49, *(&v49 + 1), v50);

    sub_21B23A9F4(v39, *(&v39 + 1), v40);
    v30 = sub_21B27400C(0, 0xE000000000000000, v41);
    v32 = v45;
    v31 = v46;
    v33 = v14;
    v34 = v22;
  }

  else
  {
    *&v47 = sub_21B34B944();
    *(&v47 + 1) = v23;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v24 = sub_21B2A11F8(*(a2 + 8), v47, *(&v47 + 1));
    v26 = v25;

    (*(a4 + 32))(&v47, a3, a4);
    v27 = v49;
    v28 = v50;
    v29 = sub_21B2FB1D4(v49, *(&v49 + 1), v50);

    sub_21B23A9F4(v27, *(&v27 + 1), v28);
    v30 = sub_21B27400C(0, 0xE000000000000000, v29);
    v31 = v24;
    v32 = v26;
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  result = sub_21B3419B8(v31, v32, v33, v34, v30, &v47);
  v42 = v50;
  v43 = v48;
  v44 = v49;
  *a5 = v47;
  *(a5 + 16) = v43;
  *(a5 + 24) = v44;
  *(a5 + 40) = v42;
  return result;
}

uint64_t sub_21B2CF8B0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_21B34B944();
  v6 = sub_21B2A11F8(*(a1 + 8), v4, v5);
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  return result;
}

void sub_21B2CF938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_21B2CF988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_21B2CF9D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21B2CFA3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B2CFAF0()
{
  result = qword_27CD7EDC8;
  if (!qword_27CD7EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EDC8);
  }

  return result;
}

unint64_t sub_21B2CFB44()
{
  result = qword_280C83778;
  if (!qword_280C83778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C83778);
  }

  return result;
}

uint64_t sub_21B2CFBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormattingOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2CFC1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B34ADD4();

    return sub_21B34AEB4();
  }

  return result;
}

uint64_t sub_21B2CFCB8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  sub_21B34B944();
  v5 = sub_21B34ADA4();

  if (*(a3 + 8) >= v5)
  {
    return v5;
  }

  else
  {
    return *(a3 + 8);
  }
}

uint64_t sub_21B2CFD34(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 24) == 1)
    {
      sub_21B34B944();
      v3 = sub_21B34ADA4();

      v4 = sub_21B34ADA4();
      if (v4 <= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      sub_21B34B944();
      v6 = sub_21B34ADA4();

      result = sub_21B34ADA4();
      v5 = v6 + result;
      if (__OFADD__(v6, result))
      {
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 8) >= v5)
    {
      return v5;
    }

    else
    {
      return *(a2 + 8);
    }
  }

  return result;
}

double sub_21B2CFE1C@<D0>(uint64_t a1@<X1>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, _OWORD *a5@<X8>)
{
  v9[2] = a1;
  v6 = sub_21B23CCA8(sub_21B2CFEC8, v9, a2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v6, v10);
  v7 = v10[1];
  *a5 = v10[0];
  a5[1] = v7;
  result = *&v11;
  a5[2] = v11;
  return result;
}

uint64_t sub_21B2CFEEC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B34AD44();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[1];
  v23 = *a2;
  v24 = v11;
  v25[0] = a2[2];
  *(v25 + 13) = *(a2 + 45);
  v12 = (a1 + 32);
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_24;
  }

  if (*v12 != byte_282CA9150)
  {
    goto LABEL_16;
  }

  if (v13 == 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 33) != byte_282CA9151 || v13 == 2 || *(a1 + 34) != byte_282CA9152 || v13 == 3 || *(a1 + 35) != byte_282CA9153)
  {
LABEL_16:
    if (*v12 == byte_282CA9178 && v13 != 1 && *(a1 + 33) == byte_282CA9179 && v13 != 2 && *(a1 + 34) == byte_282CA917A && v13 != 3 && *(a1 + 35) == byte_282CA917B)
    {
      v14 = result;
      sub_21B34AD24();
      goto LABEL_28;
    }

LABEL_18:
    if (*v12 == byte_282CA91A0)
    {
      if (v13 == 1)
      {
LABEL_24:
        v15 = 0;
LABEL_25:
        v16 = a2[1];
        *(a3 + 8) = *a2;
        *a3 = a1;
        *(a3 + 24) = v16;
        *(a3 + 40) = a2[2];
        *(a3 + 53) = *(a2 + 45);
        *(a3 + 64) = v12;
        *(a3 + 72) = v13;
        *(a3 + 80) = v15;
        *(a3 + 88) = 0;
        *(a3 + 96) = v12;
        *(a3 + 104) = v13;
        *(a3 + 112) = 0;
        *(a3 + 120) = 0;
        *(a3 + 128) = MEMORY[0x277D84F90];
        return result;
      }

      if (*(a1 + 33) == byte_282CA91A1)
      {
        v14 = result;
        sub_21B34ACF4();
        goto LABEL_28;
      }
    }

    if (*v12 == byte_282CA91C8)
    {
      if (v13 == 1)
      {
        goto LABEL_24;
      }

      if (*(a1 + 33) == byte_282CA91C9)
      {
        v14 = result;
        sub_21B34AD14();
        goto LABEL_28;
      }
    }

    v15 = 0;
    if (*v12 == byte_282CA91F0 && v13 != 1)
    {
      v15 = 0;
      if (*(a1 + 33) == byte_282CA91F1 && v13 != 2)
      {
        v15 = 3;
        if (*(a1 + 34) != byte_282CA91F2)
        {
          v15 = 0;
        }
      }
    }

    goto LABEL_25;
  }

  v14 = result;
  sub_21B34AD04();
LABEL_28:
  v17 = sub_21B34ACE4();
  v19 = v18;
  sub_21B27A934();
  swift_allocError();
  *v20 = v17;
  *(v20 + 8) = v19;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = 0;
  *(v20 + 40) = 1;
  swift_willThrow();
  (*(v7 + 8))(v10, v14);

  v21[0] = v23;
  v21[1] = v24;
  v22[0] = v25[0];
  *(v22 + 13) = *(v25 + 13);
  return sub_21B233788(v21);
}

uint64_t sub_21B2D026C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(v0 + 57);
  v5 = *(v0 + 58);
  v6 = *(v0 + 59);
  v7 = *(v0 + 60);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
LABEL_3:
  while (2)
  {
    while (2)
    {
      v10 = 0;
      v11 = ~v8;
      result = v9 + v8;
      while (1)
      {
        v14 = *result++;
        v13 = v14;
        if ((v10 & 1) == 0)
        {
          if (((v13 == 34) & v4) == 1)
          {
            if (v1 + v11)
            {
              v3 ^= 1u;
              v8 = -v11;
              goto LABEL_3;
            }

LABEL_19:
            v16 = v1 - v2;
            if (v1 < v2)
            {
              __break(1u);
LABEL_51:
              __break(1u);
            }

            else
            {
              v17 = (v9 + v2);
              result = 1;
              while (1)
              {
                v18 = *v17++;
                v19 = (1 << v18) & 0x100002600;
                if (v18 > 0x20 || v19 == 0)
                {
                  break;
                }

                if (!--v16)
                {
                  return 0;
                }
              }
            }

            return result;
          }

          if (((v7 == v13) & v5) != 1)
          {
            break;
          }
        }

        if (!(v1 + v11))
        {
          goto LABEL_19;
        }

        v10 ^= 1u;
        --v11;
      }

      v15 = v1 + v11;
      if (v3)
      {
        if (v15)
        {
          v3 = 1;
          v8 = -v11;
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

    if (v6 != v13)
    {
      if (v13 != 10 && v13 != 13 && v15)
      {
        v3 = 0;
        v8 = -v11;
        continue;
      }

      goto LABEL_19;
    }

    break;
  }

  if (!(v1 + v11))
  {
    return 2;
  }

  v21 = -v11;
  v22 = -v1;
  result = 2;
  do
  {
    for (i = 0; ; i = 0)
    {
      while (1)
      {
        while (1)
        {
          v24 = 0;
          v25 = ~v21;
          v26 = (v9 + v21);
          v29 = *v26;
          v28 = v26 + 1;
          v27 = v29;
LABEL_31:
          if (((v27 == 34) & v4) != 1)
          {
            break;
          }

          if (v22 == v25)
          {
            return result;
          }

          i ^= 1u;
          v21 = -v25;
        }

        if (((v7 == v27) & v5) == 1)
        {
          while (v22 != v25)
          {
            v24 ^= 1u;
            --v25;
            v30 = *v28++;
            v27 = v30;
            if ((v24 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          return result;
        }

        if ((i & 1) == 0)
        {
          break;
        }

        if (v22 == v25)
        {
          return result;
        }

        i = 1;
        v21 = -v25;
      }

      if (v6 == v27)
      {
        break;
      }

      if (v27 == 10 || v27 == 13 || v22 == v25)
      {
        return result;
      }

      v21 = -v25;
    }

    if (__OFADD__(result++, 1))
    {
      goto LABEL_51;
    }

    v21 = -v25;
  }

  while (v22 != v25);
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21B2D04D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_21B2D051C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D058C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2D05D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21B2D062C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B34A764();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_21B234324(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_21B2E183C(v10, 0);
      v14 = sub_21B34A6F4();
      sub_21B234324(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t CSVReadingError.row.getter()
{
  result = 0;
  if (((1 << v0[40]) & 0x5D) != 0)
  {
    return *v0;
  }

  return result;
}

uint64_t CSVReadingError.column.getter()
{
  v1 = v0 + 8;
  v2 = *(v0 + 40);
  result = 0;
  if (((1 << v2) & 0x6A) == 0)
  {
    if (((1 << v2) & 0x15) == 0)
    {
      v1 = v0;
    }

    return *v1;
  }

  return result;
}

unint64_t CSVReadingError.description.getter()
{
  v1 = sub_21B34AD44();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (v6 <= 3)
  {
    if (*(v0 + 40) <= 1u)
    {
      if (*(v0 + 40))
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_21B34B634();
        MEMORY[0x21CEED5E0](0xD000000000000014, 0x800000021B34D160);
        MEMORY[0x21CEED5E0](v3, v2);
        v35 = 0xD000000000000022;
        v36 = 0x800000021B34D180;
LABEL_20:
        MEMORY[0x21CEED5E0](v35, v36);
        return v49;
      }

      sub_21B34B634();

      v49 = 0xD000000000000019;
      v50 = 0x800000021B34D1B0;
      v7 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v7);

      MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
      v47 = v2;
      v8 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v8);

      MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
      sub_21B260DC0(v4, v5);
      sub_21B2CB408(1024, v4, v5, &v47);
      sub_21B2D062C(v47, v48);
      v9 = MEMORY[0x21CEED760]();
      v11 = v10;

      MEMORY[0x21CEED5E0](v9, v11);
      goto LABEL_18;
    }

    if (v6 != 2)
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001FLL, 0x800000021B34D120);
      v37 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v37);

      MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
      v38 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v38);

      MEMORY[0x21CEED5E0](0x756F662074756220, 0xEB0000000020646ELL);
      v47 = v2;
      goto LABEL_17;
    }

    sub_21B34B634();

    v49 = 0xD000000000000017;
    v50 = 0x800000021B34D140;
    v47 = v3;
    v31 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v31);

    v32 = 0x206E6D756C6F6320;
    v33 = 0xE800000000000000;
LABEL_13:
    MEMORY[0x21CEED5E0](v32, v33);
    v47 = v2;
LABEL_17:
    v39 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v39);
LABEL_18:

    goto LABEL_19;
  }

  v12 = *(v0 + 32);
  if (*(v0 + 40) > 5u)
  {
    if (v6 != 6)
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000018, 0x800000021B34CFE0);
      MEMORY[0x21CEED5E0](v5, v12);
      MEMORY[0x21CEED5E0](0xD000000000000017, 0x800000021B34D000);
      MEMORY[0x21CEED5E0](v2, v4);
      MEMORY[0x21CEED5E0](0x646E692074612022, 0xEB00000000207865);
      v47 = v3;
      v41 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v41);

      MEMORY[0x21CEED5E0](8238, 0xE200000000000000);

      MEMORY[0x21CEED5E0](0xD000000000000044, 0x800000021B34D020);

      return v49;
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000012, 0x800000021B34D070);
    v47 = v3;
    v34 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v34);

    v32 = 0xD00000000000002ALL;
    v33 = 0x800000021B34D090;
    goto LABEL_13;
  }

  if (v6 != 4)
  {
    sub_21B34B634();

    v49 = 0xD000000000000018;
    v50 = 0x800000021B34D0C0;
    MEMORY[0x21CEED5E0](v3, v2);
LABEL_19:
    v35 = 46;
    v36 = 0xE100000000000000;
    goto LABEL_20;
  }

  sub_21B34AD34();
  v13 = sub_21B34ACA4();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34D0E0);
    v17 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v17);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
    v47 = v2;
    v18 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v18);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    LOBYTE(v47) = v4;
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v19 = sub_21B2CFC1C(1024, v15, v16);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = MEMORY[0x21CEED540](v19, v21, v23, v25);
    v28 = v27;

    MEMORY[0x21CEED5E0](v26, v28);

    MEMORY[0x21CEED5E0](11815, 0xE200000000000000);
    v29 = 0xD000000000000013;
    v30 = 0x800000021B34CEC0;
  }

  else
  {
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34D0E0);
    v42 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v42);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
    v47 = v2;
    v43 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v43);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    LOBYTE(v47) = v4;
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v49 = 0xD000000000000018;
    v50 = 0x800000021B34D100;
    sub_21B260DC0(v5, v12);
    sub_21B2CB408(1024, v5, v12, &v47);
    sub_21B2D062C(v47, v48);
    v44 = MEMORY[0x21CEED760]();
    v46 = v45;

    MEMORY[0x21CEED5E0](v44, v46);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v29 = v49;
    v30 = v50;
  }

  v49 = 0;
  v50 = 0xE000000000000000;

  MEMORY[0x21CEED5E0](v29, v30);

  return v49;
}

uint64_t sub_21B2D1204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B2D124C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2D12C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_21B34A834();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if (v3[2])
  {
    goto LABEL_6;
  }

  v19 = v3[1];
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v19 >= *(*v3 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v20 = *(*v3 + 16 * v19 + 32);
  v38 = a1;
  v39 = v37;

  v20(&v38);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_21B27DF7C(v11);
LABEL_6:
    v35 = a3;
    v36 = v13;
    v33 = v3;
    v21 = *v3;
    v22 = *(*v3 + 16);
    if (!v22)
    {
      return (*(v36 + 56))(v35, 1, 1, v12);
    }

    v23 = 0;
    v24 = (v36 + 48);
    v25 = v21 + 40;
    while (v23 < *(v21 + 16))
    {
      v26 = *(v25 - 8);
      v38 = a1;
      v39 = v37;

      v26(&v38);

      if ((*v24)(v9, 1, v12) != 1)
      {
        v13 = v36;
        v27 = *(v36 + 32);
        v30 = v34;
        v27(v34, v9, v12);
        v31 = v33;
        v33[1] = v23;
        *(v31 + 16) = 0;
        a3 = v35;
        v28 = v35;
        v29 = v30;
        goto LABEL_14;
      }

      ++v23;
      result = sub_21B27DF7C(v9);
      v25 += 16;
      if (v22 == v23)
      {
        return (*(v36 + 56))(v35, 1, 1, v12);
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v27 = *(v13 + 32);
  v27(v18, v11, v12);
  v28 = a3;
  v29 = v18;
LABEL_14:
  v27(v28, v29, v12);
  return (*(v13 + 56))(a3, 0, 1, v12);
}

uint64_t sub_21B2D160C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21B2D1654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D16A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x277D84F90];
      while (a4 != v7)
      {
        v11 = v7;
        result = v8(&v11);
        if (v4)
        {

          return v5;
        }

        if (result)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v12 = v5;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v5 + 16) + 1, 1);
            v5 = v12;
          }

          v10 = *(v5 + 16);
          v9 = *(v5 + 24);
          if (v10 >= v9 >> 1)
          {
            result = sub_21B254034((v9 > 1), v10 + 1, 1);
            v5 = v12;
          }

          *(v5 + 16) = v10 + 1;
          *(v5 + 8 * v10 + 32) = v7;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static Column./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1990(a1, a2, a3, a4, sub_21B2D237C, sub_21B2D1930);
}

{
  return sub_21B2D1990(a1, a2, a3, a4, sub_21B2D1B34, sub_21B2D1BF8);
}

uint64_t sub_21B2D1990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v23 = *a1;
  v24 = *(a1 + 1);
  type metadata accessor for Column(0, a3, a3, a4);
  swift_getWitnessTable();
  sub_21B34B194();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = sub_21B2D16A4(a5, v17, v21, v22);
  v16[5] = a2;
  v14 = type metadata accessor for PackedOptionalsArray(0, a3, v12, v13);
  sub_21B32ABE8(a6, v16, v14, MEMORY[0x277D84F78] + 8);
}

BOOL sub_21B2D1A98(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for Column(0, a3, a3, a4);
  v5 = Column.isNil(at:)(v4);

  return !v5;
}

uint64_t *sub_21B2D1B58(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v11 = *result;
    v12 = (a2 + 32);
    v13 = *(*(a4 - 8) + 72);
    do
    {
      v14 = *v12++;
      result = a6(v11 + v13 * v14, a3, a4, a5);
      --v6;
    }

    while (v6);
  }

  return result;
}

void *static ColumnSlice./= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1CA4(a1, a2, a3, a4, MEMORY[0x277D83F50]);
}

{
  return sub_21B2D1CA4(a1, a2, a3, a4, MEMORY[0x277D83558]);
}

void *sub_21B2D1CA4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a4;
  v24 = a5;
  v22 = a2;
  v21 = sub_21B34B474();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v21 - v8;
  v10 = *(a1 + 2);
  v27 = *a1;
  v28 = v10;
  v29 = *(a1 + 24);
  v13 = type metadata accessor for ColumnSlice(0, a3, v11, v12);
  swift_getWitnessTable();
  result = sub_21B34B194();
  v16 = v25;
  v15 = v26;
  if (v25 != v26)
  {
    if (v26 >= v25)
    {
      while (v16 < v15)
      {
        v18 = *(a1 + 2);
        v17 = *(a1 + 3);
        v19 = *(a1 + 4);
        v27 = *a1;
        v28 = v18;
        *&v29 = v17;
        *(&v29 + 1) = v19;

        LOBYTE(v19) = ColumnSlice.isNil(at:)(v16);

        if ((v19 & 1) == 0)
        {
          v20 = *(a1 + 2);
          v27 = *a1;
          v28 = v20;
          v29 = *(a1 + 24);
          ColumnSlice.subscript.getter(v16, v13);
          result = (*(*(a3 - 8) + 48))(v9, 1, a3);
          if (result == 1)
          {
            goto LABEL_12;
          }

          v24(v9, v22, a3, v23);
          sub_21B29318C(v9, v16, v13);
          result = (*(v7 + 8))(v9, v21);
        }

        if (v15 == ++v16)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t static DiscontiguousColumnSlice./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1F84(a1, a2, a3, a4, MEMORY[0x277D83F50]);
}

{
  return sub_21B2D1F84(a1, a2, a3, a4, MEMORY[0x277D83558]);
}

uint64_t sub_21B2D1F84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v34 = a4;
  v35 = a5;
  v33 = a2;
  v32 = sub_21B34B474();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = v31 - v8;
  v37 = a3;
  v9 = *(a1 + 40);
  v50 = *a1;
  v51 = *(a1 + 1);
  v52 = *(a1 + 3);
  v53 = v9;
  v12 = type metadata accessor for DiscontiguousColumnSlice(0, a3, v10, v11);
  swift_getWitnessTable();
  sub_21B34B2E4();
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v59[0] = v48[0];
  v59[1] = v48[1];
  v59[2] = v48[2];
  v59[3] = v49;
  v54 = v48[0];
  v55 = v48[1];
  v56 = v48[2];
  v57 = v49;
  v13 = sub_21B34AAF4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v60, v59, v13);
  sub_21B34AAC4();
  v60[0] = v44;
  v60[1] = v45;
  v60[2] = v46;
  v60[3] = v47;
  (*(v14 + 8))(v60, v13);
  sub_21B34AAD4();
  v15 = v58;
  if (v58 == *&v48[0])
  {
LABEL_2:
    v16 = *(&v55 + 1);
    v17 = v56;
    v18 = BYTE8(v56);

    return sub_21B23A9F4(v16, v17, v18);
  }

  v31[0] = v7 + 8;
  v31[1] = v37 - 8;
  v38 = v13;
  v39 = a1;
  while (1)
  {
    v40 = v15;
    sub_21B34AAE4();
    v20 = a1[1];
    v22 = a1[2];
    v21 = a1[3];
    v23 = a1[4];
    v24 = *(a1 + 40);
    *&v48[0] = *a1;
    *(&v48[0] + 1) = v20;
    *&v48[1] = v22;
    *(&v48[1] + 1) = v21;
    *&v48[2] = v23;
    BYTE8(v48[2]) = v24;
    v43 = DiscontiguousColumnSlice.isNil(at:)(v15);
    v25 = *&v48[2];
    v42 = *(&v48[1] + 1);
    v41 = BYTE8(v48[2]);

    sub_21B254074(v21, v23, v24);

    v26 = v25;
    a1 = v39;
    sub_21B23A9F4(v42, v26, v41);
    if (!v43)
    {
      break;
    }

LABEL_4:
    sub_21B34AAD4();
    v15 = v58;
    if (v58 == *&v48[0])
    {
      goto LABEL_2;
    }
  }

  v27 = *(a1 + 40);
  *&v48[0] = *a1;
  *(v48 + 8) = *(a1 + 1);
  *(&v48[1] + 8) = *(a1 + 3);
  BYTE8(v48[2]) = v27;
  v28 = v36;
  v29 = v40;
  DiscontiguousColumnSlice.subscript.getter(v40, v12, v36);
  v30 = v37;
  result = (*(*(v37 - 8) + 48))(v28, 1, v37);
  if (result != 1)
  {
    v35(v28, v33, v30, v34);
    sub_21B2D8534(v28, v29, v12);
    (*v31[0])(v28, v32);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2D2398(unsigned __int8 **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2;
  if ((a4 & 8) != 0)
  {
    v9 = *(*a1)++;
  }

  else
  {
    v9 = 0;
  }

  result = sub_21B270D34(a1, a2);
  if (v4)
  {
    return v5;
  }

  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (result + 32);
    do
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_44;
      }

      --v12;
    }

    while (v12);
    if (!v9)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
LABEL_39:
      result = sub_21B34A3DC(a1, v13, a3, v5);
      goto LABEL_12;
    }
  }

  if (v9 != 1)
  {

    sub_21B34B634();

    v31 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v31);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    sub_21B239564();
    swift_allocError();
    *v32 = 0xD000000000000024;
    *(v32 + 8) = 0x800000021B34D1D0;
    *(v32 + 16) = 3;
    swift_willThrow();
    return v5;
  }

  result = sub_21B34A1DC(a1, v13);
LABEL_12:
  v17 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(v11 + 16) >= v7)
  {
    v18 = 0;
    v33 = result + 32;
    v5 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 8)
    {
      v20 = *(v11 + i);
      v16 = __OFADD__(v18, v20);
      v21 = v18 + v20;
      if (v16)
      {
        break;
      }

      v22 = v21 - v18;
      if (v21 < v18)
      {
        goto LABEL_45;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v23 = *(v17 + 16);
      if (v23 < v18 || v23 < v21)
      {
        goto LABEL_47;
      }

      if (v23 == v22)
      {

        v25 = v17;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (v21 != v18)
        {
          if (v22 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
            v25 = swift_allocObject();
            v29 = _swift_stdlib_malloc_size(v25);
            v30 = v29 - 32;
            if (v29 < 32)
            {
              v30 = v29 - 25;
            }

            v25[2] = v22;
            v25[3] = 2 * (v30 >> 3);
          }

          memcpy(v25 + 4, (v33 + 8 * v18), 8 * v22);
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B24A5D8(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v27 = v5[2];
      v26 = v5[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_21B24A5D8((v26 > 1), v27 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v27 + 1;
      v5[v27 + 4] = v25;
      v28 = *(v11 + i);
      v16 = __OFADD__(v18, v28);
      v18 += v28;
      if (v16)
      {
        goto LABEL_48;
      }

      if (!--v7)
      {

        return v5;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_21B2D2700(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    goto LABEL_6;
  }

  v3 = *a1;
  if (v3 == 45)
  {
    v4 = 1;
    goto LABEL_8;
  }

  if (v3 != 43)
  {
LABEL_6:
    v4 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
LABEL_8:
  v5 = 1;
LABEL_9:
  result = 0;
  v7 = &a1[v5];
  for (i = a2 - v5; i; --i)
  {
    if ((*v7 - 58) < 0xF6u)
    {
      return 0;
    }

    v9 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v10 = *v7 - 48;
    result = v9 + v10;
    ++v7;
    if (__OFADD__(v9, v10))
    {
      __break(1u);
      return 0;
    }
  }

  if (v4)
  {
    v11 = __OFSUB__(0, result);
    result = -result;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_21B2D27BC(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = HIBYTE(a2) & 0xF;
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v10;
    goto LABEL_7;
  }

  a1 = sub_21B2E1664(a1, a2);
  v7 = v6;

  a2 = v7;
  if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21B34B6F4();
  }

LABEL_7:
  v8 = sub_21B2D2700(v4, v5);

  return v8;
}

uint64_t sub_21B2D2874@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v67 = a1;
  v68 = a2;
  v48 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v47 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = sub_21B34B424();
  v71 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v14;
  v72 = swift_getAssociatedTypeWitness();
  v65 = *(v72 - 8);
  v15 = MEMORY[0x28223BE20](v72);
  v17 = &v47 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v76 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v47 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v70 = AssociatedConformanceWitness;
  v59 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
  v47 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v27 = &v47 - v26;
  if (sub_21B34B214())
  {
    return sub_21B296B94();
  }

  v54 = v27;
  sub_21B296B94();
  sub_21B34B1B4();
  v73 = (v18 + 8);
  v64 = (v65 + 2);
  ++v65;
  v52 = (v18 + 16);
  v51 = (v74 + 16);
  v61 = (v18 + 32);
  v50 = (v74 + 32);
  v49 = (v71 + 8);
  v62 = a3;
  v63 = a4;
  v53 = v17;
  while (1)
  {
    v30 = v69;
    sub_21B34B234();
    v31 = sub_21B34AC54();
    v74 = *v73;
    (v74)(v30, AssociatedTypeWitness);
    if (v31)
    {
      (v74)(v24, AssociatedTypeWitness);
      return (*(v47 + 32))(v48, v54, v59);
    }

    sub_21B34B1E4();
    v32 = sub_21B34B314();
    (*v64)(v17);
    v32(v75, 0);
    v33 = v67(v17);
    if (v6)
    {
      (*v65)(v17, v72);
      v46 = v74;
      (v74)(v76, AssociatedTypeWitness);
      v46(v24, AssociatedTypeWitness);
      return (*(v47 + 8))(v54, v59);
    }

    v34 = v33;
    (*v65)(v17, v72);
    v71 = 0;
    if ((v34 & 1) == 0)
    {
      (v74)(v24, AssociatedTypeWitness);
      v29 = *v61;
      goto LABEL_5;
    }

    v35 = v76;
    result = sub_21B34ABB4();
    if ((result & 1) == 0)
    {
      break;
    }

    v36 = *v52;
    v37 = v66;
    (*v52)(v66, v24, AssociatedTypeWitness);
    v38 = TupleTypeMetadata2;
    v36(&v37[*(TupleTypeMetadata2 + 48)], v35, AssociatedTypeWitness);
    v39 = v57;
    (*v51)(v57, v37, v38);
    v40 = *(v38 + 48);
    v60 = *v61;
    v41 = v55;
    v60(v55, v39, AssociatedTypeWitness);
    (v74)(&v39[v40], AssociatedTypeWitness);
    v29 = v60;
    (*v50)(v39, v66, v38);
    v42 = *(v38 + 48);
    v43 = v56;
    v29(v41 + *(v56 + 36), &v39[v42], AssociatedTypeWitness);
    v44 = v74;
    (v74)(v39, AssociatedTypeWitness);
    sub_21B296B98(v41, v59);
    v45 = v41;
    v17 = v53;
    (*v49)(v45, v43);
    v44(v24, AssociatedTypeWitness);
LABEL_5:
    v29(v24, v76, AssociatedTypeWitness);
    v6 = v71;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2D3090@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = v6;
  v45 = a1;
  v46 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v36 - v12;
  v43 = swift_getAssociatedTypeWitness();
  v13 = *(v43 - 8);
  v14 = MEMORY[0x28223BE20](v43);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = sub_21B34B1D4();
  v51 = a5;
  v48 = a4;
  v49 = v5;
  v47 = a3;
  result = sub_21B34B1B4();
  if (v18 >= 1)
  {
    v20 = (v11 + 16);
    v21 = (v11 + 8);
    v41 = (v13 + 8);
    v42 = v20;
    v37 = (v13 + 32);
    v22 = AssociatedTypeWitness;
    while (1)
    {
      sub_21B34B1F4();
      v29 = sub_21B34B314();
      v30 = v44;
      (*v42)(v44);
      v29(v50, 0);
      v31 = v45(v30);
      if (v7)
      {
        break;
      }

      v32 = v31;
      (*v21)(v30, v22);
      if (v32)
      {
        result = (*v41)(v17, v43);
        v18 = v18 >> 1;
      }

      else
      {
        v40 = 0;
        v23 = v21;
        v24 = v38;
        sub_21B34B1E4();
        v25 = *v41;
        v26 = v43;
        (*v41)(v17, v43);
        v27 = v51;
        v25(v51, v26);
        v28 = v24;
        v21 = v23;
        v22 = AssociatedTypeWitness;
        v7 = v40;
        result = (*v37)(v27, v28, v26);
        v18 += ~(v18 >> 1);
      }

      if (v18 <= 0)
      {
        return result;
      }
    }

    (*v21)(v30, v22);
    v33 = *v41;
    v34 = v17;
    v35 = v43;
    (*v41)(v34, v43);
    return v33(v51, v35);
  }

  return result;
}

uint64_t ShapedData.init(shape:strides:contents:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = a1[2];
  if (v9)
  {
    v10 = a1 + 4;
    v11 = 1;
    v12 = a1[2];
    while (1)
    {
      v13 = *v10++;
      v14 = v11 * v13;
      if ((v11 * v13) >> 64 != (v11 * v13) >> 63)
      {
        break;
      }

      v11 = v14;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
LABEL_7:
    result = sub_21B34B004();
    if (v14 == result)
    {
      *a5 = a1;
      a5[1] = a2;
      a5[2] = a3;
      return result;
    }
  }

  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000022, 0x800000021B34D200);
  v16 = MEMORY[0x21CEED760](a1, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v16);

  MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
  if (v9)
  {
    v17 = a1[2];
    if (v17)
    {
      v18 = a1[4];
      v19 = a1 + 5;
      v20 = 1;
      while (v9 != v20)
      {
        if (v20 >= v17)
        {
          goto LABEL_17;
        }

        ++v20;
        v21 = *v19++;
        v22 = (v18 * v21) >> 64;
        v18 *= v21;
        if (v22 != v18 >> 63)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }
  }

  v23 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v23);

  MEMORY[0x21CEED5E0](0x746E656D656C6520, 0xEF20747562202C73);
  v24 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v24);

  MEMORY[0x21CEED5E0](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t ShapedData.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B2D370C(a1);

  return sub_21B34B094();
}

uint64_t sub_21B2D370C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  if (v3 == *(v2 + 16))
  {
    result = 0;
    v6 = (a1 + 32);
    v7 = (v2 + 32);
    while (v3)
    {
      v8 = *v6 * *v7;
      if ((*v6 * *v7) >> 64 != v8 >> 63)
      {
        __break(1u);
        goto LABEL_10;
      }

      ++v7;
      ++v6;
      --v3;
      v9 = __OFADD__(result, v8);
      result += v8;
      if (v9)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
LABEL_10:
    sub_21B34B634();

    v10 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v10);

    MEMORY[0x21CEED5E0](0x73656369646E6920, 0xEA0000000000202CLL);
    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](0x656469766F727020, 0xEA00000000002E64);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t static ShapedData<A>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);
  if (v6 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v8 = a2[1];
  if (v6)
  {
    v9 = v4 == v5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (sub_21B247340(result, v8))
    {

      return sub_21B34B074();
    }

    return 0;
  }

  v10 = (v4 + 32);
  v11 = (v5 + 32);
  while (v6)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShapedData<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  MEMORY[0x21CEEE3B0](*(*v4 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    do
    {
      v13 = *v12++;
      MEMORY[0x21CEEE3B0](v13);
      --v11;
    }

    while (v11);
  }

  MEMORY[0x21CEEE3B0](*(v8 + 16));
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = (v8 + 32);
    do
    {
      v16 = *v15++;
      MEMORY[0x21CEEE3B0](v16);
      --v14;
    }

    while (v14);
  }

  v17 = *(a2 + 16);

  return MEMORY[0x2821FC380](a1, v10, v17, a3);
}

uint64_t ShapedData<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v8 = *v2;
  v9 = v5;
  sub_21B34BBC4();
  ShapedData<A>.hash(into:)(v7, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2D3AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  ShapedData<A>.hash(into:)(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2D3B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_21B2D3BC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_21B2D3BE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return 0;
  }

  if (a4 != 1)
  {
    v4 = 1;
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
LABEL_6:
    v5 = 0;
    while (1)
    {
      v6 = v4 >> 1;
      v7 = v5 + (v4 >> 1);
      if (__OFADD__(v5, v4 >> 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (a4)
      {
        if (v7 > *(a2 + 16))
        {
          goto LABEL_34;
        }
      }

      else if (v7 > 1)
      {
        goto LABEL_34;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_39;
        }

        if (v7 >= *(a2 + 16))
        {
          goto LABEL_35;
        }

        if (*(a2 + 32 + 16 * v7 + 8) > a1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v7)
        {
          goto LABEL_36;
        }

        if (a3 > a1)
        {
          goto LABEL_9;
        }
      }

      if (a4)
      {
        v5 = *(a2 + 16);
        if (v7 >= v5)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          if (a4)
          {
            goto LABEL_26;
          }

          if (v5 == 1)
          {
            return 0;
          }

          if (v5)
          {
            goto LABEL_38;
          }

          return a2 <= a1;
        }
      }

      else
      {
        v5 = 1;
        if (v7)
        {
          goto LABEL_24;
        }
      }

      v5 = v7 + 1;
      v6 = v4 + ~v6;
LABEL_9:
      v4 = v6;
      if (v6 <= 0)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = 0;
LABEL_26:
  v8 = *(a2 + 16);
  if (v5 == v8)
  {
    return 0;
  }

  if (v5 < v8)
  {
    a2 = *(a2 + 16 * v5 + 32);
    return a2 <= a1;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

__n128 sub_21B2D3D88@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v10 = a1[1];
  v11 = a1[2];
  v22 = *a1;
  v23 = v10;
  v24 = v11;
  v16[0] = a2;
  v16[1] = a3;
  v17 = a4;
  v12 = type metadata accessor for Column(0, a5, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v16, v12, WitnessTable, &v18);
  sub_21B23A9F4(a2, a3, v6);

  v14 = v21;
  *a6 = v18;
  result = v20;
  *(a6 + 8) = v19;
  *(a6 + 24) = result;
  *(a6 + 40) = v14;
  return result;
}

uint64_t DiscontiguousColumnSlice.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Column(255, *(a1 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for _DiscontiguousSlice(0, v4, WitnessTable, v6);
  return sub_21B285500(v7);
}

void *DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_21B2D3BE8(a1, *(v3 + 24), *(v3 + 32), *(v3 + 40)))
  {
    v9 = type metadata accessor for Column(0, *(a2 + 16), v7, v8);
    return Column.subscript.getter(a1, v9, a3);
  }

  else
  {
    sub_21B34B634();

    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

__n128 DiscontiguousColumnSlice.init(column:ranges:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v21 = 0;
  *&v22 = 0;
  BYTE8(v22) = 2;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 40);
    do
    {
      sub_21B28DFBC(*(v10 - 1), *v10);
      v10 += 2;
      --v9;
    }

    while (v9);

    v9 = v21;
    v13 = v22;
    v14 = BYTE8(v22);
  }

  else
  {

    v13 = 0;
    v14 = 2;
  }

  v25 = v7;
  v26 = v6;
  v27 = v8;
  v19[0] = v9;
  v19[1] = v13;
  v20 = v14;
  v15 = type metadata accessor for Column(0, a3, v11, v12);
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v19, v15, WitnessTable, &v21);
  sub_21B23A9F4(v9, v13, v14);

  v17 = v24;
  *a4 = v21;
  result = v23;
  *(a4 + 8) = v22;
  *(a4 + 24) = result;
  *(a4 + 40) = v17;
  return result;
}

unint64_t sub_21B2D4178(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return 0;
  }

  if (a4 != 1)
  {
    v4 = 1;
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
LABEL_6:
    v5 = 0;
    while (1)
    {
      v6 = v4 >> 1;
      v7 = v5 + (v4 >> 1);
      if (__OFADD__(v5, v4 >> 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (a4)
      {
        if (v7 > *(a2 + 16))
        {
          goto LABEL_36;
        }
      }

      else if (v7 > 1)
      {
        goto LABEL_36;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_42;
        }

        if (v7 >= *(a2 + 16))
        {
          goto LABEL_37;
        }

        if (*(a2 + 32 + 16 * v7 + 8) > a1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v7)
        {
          goto LABEL_38;
        }

        if (a3 > a1)
        {
          goto LABEL_7;
        }
      }

      if (a4)
      {
        if (v7 >= *(a2 + 16))
        {
          goto LABEL_41;
        }
      }

      else if (v7)
      {
        goto LABEL_41;
      }

      v5 = v7 + 1;
      v6 = v4 + ~v6;
LABEL_7:
      v4 = v6;
      if (v6 <= 0)
      {
        if (a4)
        {
          goto LABEL_26;
        }

        if (v5 == 1)
        {
          return 0;
        }

        if (v5)
        {
          goto LABEL_40;
        }

LABEL_32:
        if (a2 <= a1)
        {
          return v5;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v5 = 0;
LABEL_26:
  v8 = *(a2 + 16);
  if (v5 == v8)
  {
    return 0;
  }

  if (v5 < v8)
  {
    a2 = *(a2 + 16 * v5 + 32);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DiscontiguousColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B2D8534(a1, a2, a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t DiscontiguousColumnSlice.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t sub_21B2D43D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for DiscontiguousColumnSlice(0, *(a1 + a2 - 8), a2, a4);
  *a3 = sub_21B233AD0();
  a3[1] = v5;
}

uint64_t sub_21B2D4450(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DiscontiguousColumnSlice.name.setter(v1, v2);
}

uint64_t DiscontiguousColumnSlice.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*DiscontiguousColumnSlice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;

  return sub_21B2D4518;
}

uint64_t sub_21B2D4518(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *v4 = v3;
    v4[1] = v2;
  }

  else
  {

    *v4 = v3;
    v4[1] = v2;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.prototype.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  nullsub_14();
  v5 = v4;
  v7 = v6;
  a2[3] = type metadata accessor for ColumnPrototype(0, v3, v8, v9);
  a2[4] = &off_282CA94D8;
  *a2 = v5;
  a2[1] = v7;
}

uint64_t DiscontiguousColumnSlice.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v18 = *a1;
  *&v19 = v6;
  *(&v19 + 1) = v8;
  v9 = type metadata accessor for Column(0, a2, a3, a4);
  result = Column.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v22 = v7;
    v23 = v6;
    v24 = v8;
    v16[0] = 0;
    v16[1] = result;
    v12 = 2 * (result == 0);
    v17 = v12;
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(v16, v9, WitnessTable, &v18);
    sub_21B23A9F4(0, v11, v12);

    v14 = v21;
    *a5 = v18;
    v15 = v20;
    *(a5 + 8) = v19;
    *(a5 + 24) = v15;
    *(a5 + 40) = v14;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v30 = v8;
  v37[0] = v8;
  v37[1] = v9;
  v37[2] = v10;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v33 = *(a3 + 16);
  v34 = a4;
  v35 = a1;
  v36 = a2;
  swift_bridgeObjectRetain_n();

  sub_21B254074(v11, v12, v13);
  v16 = type metadata accessor for Column(255, v33, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for _DiscontiguousSlice(0, v16, WitnessTable, v18);
  v20 = sub_21B34B474();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  v22 = swift_getWitnessTable();
  v23 = sub_21B2FCC28(sub_21B2D8668, v32, v19, v20, v21, v22, MEMORY[0x277D84950], &v41);
  v24 = v38;
  v25 = v39;
  v26 = v40;

  sub_21B23A9F4(v24, v25, v26);
  if (v6)
  {
  }

  v37[0] = v23;
  v28 = sub_21B34B054();
  v29 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v30, v9, v37, a4, v28, v29, a5);
}

void DiscontiguousColumnSlice.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v39 = a2;
  v7 = *(a3 + 16);
  v35 = a4;
  v36 = v7;
  v8 = sub_21B34B474();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v88 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21B34B474();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v33 - v13);
  v16 = *v4;
  v15 = v4[1];
  v18 = v4[2];
  v17 = v4[3];
  *&v43 = v4[4];
  *(&v43 + 1) = v17;
  LODWORD(v42) = *(v4 + 40);
  v84 = 0;
  v85 = 0;
  v86 = 2;
  v69 = v16;
  v70 = v15;
  v71 = v18;
  v72 = v17;
  v73 = v43;
  v74 = v42;
  WitnessTable = swift_getWitnessTable();
  sub_21B34B2E4();
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  *&v33 = v16;
  *(&v33 + 1) = v15;
  v59 = v16;
  v60 = v15;
  v34 = v18;
  v61 = v18;
  v62 = *(&v43 + 1);
  v63 = v43;
  v64 = v42;
  v19 = a3;
  v20 = sub_21B34AAF4();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  sub_21B34BA54();
  v87[0] = v65;
  v87[1] = v66;
  v87[2] = v67;
  v87[3] = v68;
  (*(*(v20 - 8) + 8))(v87, v20);
  v57 = v49;
  v58[0] = v50[0];
  *(v58 + 9) = *(v50 + 9);
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  *&v43 = v20;
  *(&v43 + 1) = v19;
  *&v65 = v20;
  *(&v65 + 1) = v19;
  WitnessTable = v22;
  v42 = v21;
  *&v66 = v21;
  *(&v66 + 1) = v22;
  sub_21B34B674();
  sub_21B34B644();
  v40 = TupleTypeMetadata2 - 8;
  v23 = (v37 + 32);
  for (i = (v37 + 8); ; (*i)(v44, v88))
  {
    v45 = v43;
    *&v46 = v42;
    *(&v46 + 1) = WitnessTable;
    v25 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      v50[1] = v81;
      v51 = v82;
      v52 = v83;
      v47 = v77;
      v48 = v78;
      v49 = v79;
      v50[0] = v80;
      v45 = v75;
      v46 = v76;
      (*(*(v25 - 8) + 8))(&v45, v25);
      v53 = v33;
      *&v54 = v34;
      v31 = v84;
      v30 = v85;
      v32 = v86;

      sub_21B2D3D88(&v53, v31, v30, v32, v36, v35);
      return;
    }

    v26 = *v14;
    v27 = v44;
    (*v23)(v44, v14 + *(TupleTypeMetadata2 + 48), v88);
    v28 = v38(v27);
    if (v5)
    {
      (*i)(v44, v88);
      v50[1] = v81;
      v51 = v82;
      v52 = v83;
      v47 = v77;
      v48 = v78;
      v49 = v79;
      v50[0] = v80;
      v45 = v75;
      v46 = v76;
      (*(*(v25 - 8) + 8))(&v45, v25);
      sub_21B23A9F4(v84, v85, v86);
      return;
    }

    if ((v28 & 1) == 0)
    {
      continue;
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 < v26)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v26, v29);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t DiscontiguousColumnSlice.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  a2[3] = a1;
  a2[4] = &off_282CAB618;
  v9 = *(v2 + 40);
  v10 = swift_allocObject();
  *a2 = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;

  return sub_21B254074(v7, v8, v9);
}

void (*sub_21B2D4EA8(void *a1))(void *a1)
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
  v2[4] = DiscontiguousColumnSlice.name.modify(v2);
  return sub_21B28A810;
}

uint64_t sub_21B2D4F48(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 40);
  v12[2] = *v4;
  v13 = *(v4 + 8);
  v14 = *(v4 + 24);
  v15 = v6;
  v7 = type metadata accessor for Column(255, *(a1 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for _DiscontiguousSlice(0, v7, WitnessTable, v9);
  a2(v12, v10);
  return v12[1];
}

Swift::Int __swiftcall DiscontiguousColumnSlice.index(after:)(Swift::Int after)
{
  v3 = v1;
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = sub_21B2D4178(after, v6, v5, *(v2 + 40));
  if (v9)
  {
    goto LABEL_23;
  }

  v12 = v8;
  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v7)
  {
    if (!v12)
    {
      if (result < v6 || result >= v5)
      {
        return DiscontiguousColumnSlice.endIndex.getter(v3, v9, v10, v11);
      }

      return result;
    }

    goto LABEL_20;
  }

  if (v7 != 1)
  {
LABEL_23:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (v12 >= *(v6 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v6 + 16 * v12;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  if (result < v16 || result >= v15)
  {
    v18 = v12 + 1;
    if (v18 < *(v6 + 16))
    {
      return *(v6 + 16 * v18 + 32);
    }

    return DiscontiguousColumnSlice.endIndex.getter(v3, v9, v10, v11);
  }

  return result;
}

Swift::Int __swiftcall DiscontiguousColumnSlice.index(before:)(Swift::Int before)
{
  v5 = v1;
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  if (DiscontiguousColumnSlice.startIndex.getter(v1, v1, v2, v3) >= before)
  {
    goto LABEL_32;
  }

  if (DiscontiguousColumnSlice.endIndex.getter(v5, v10, v11, v12) == before)
  {
    sub_21B2A6400();
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = v13 - 1;
    if (!__OFSUB__(v13, 1))
    {
      return result;
    }

    __break(1u);
  }

  v16 = sub_21B2D4178(before, v7, v8, v9);
  if (v17)
  {
LABEL_32:
    while (1)
    {
LABEL_28:
      sub_21B34B824();
      __break(1u);
    }
  }

  if (!v9)
  {
    if (v16)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v7 != before)
    {
      return before - 1;
    }

    __break(1u);
  }

  if (v9 != 1)
  {
    goto LABEL_28;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v18 = *(v7 + 16);
  if (v16 >= v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v7 + 32 + 16 * v16) != before)
  {
    return before - 1;
  }

  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 - 1 >= v18)
  {
    goto LABEL_25;
  }

  v19 = *(v7 + 32 + 16 * (v16 - 1) + 8);
  result = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
    return before - 1;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.missingCount.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getWitnessTable();
  sub_21B34B2E4();
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v4 = sub_21B34AAF4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v16, v15, v4);
  sub_21B34AAC4();
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  (*(v5 + 8))(v16, v4);
  v6 = 0;
  while (1)
  {
    sub_21B34AAD4();
    if (v14 == v10)
    {
      break;
    }

    sub_21B34AAE4();
    v7 = sub_21B32A318(v14, v3, *(a1 + 16));
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  sub_21B23A9F4(*(&v11 + 1), v12, SBYTE8(v12));
  return v6;
}

void *sub_21B2D5590@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for DiscontiguousColumnSlice(0, *(a2 + a3 - 8), a3, x3_0);
  return DiscontiguousColumnSlice.subscript.getter(v6, v7, a4);
}

void (*DiscontiguousColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_21B34B474();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  DiscontiguousColumnSlice.subscript.getter(a2, a3, v13);
  return sub_21B2D5760;
}

void sub_21B2D5760(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_21B2D8534(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_21B2D8534((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = a1 == a2;
  if (a1 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (a1 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v4 + 40);
  sub_21B254074(*(v4 + 24), *(v4 + 32), v10);
  v11 = 2 * v7;
  v12 = sub_21B248CCC(v8, v9, 2 * v7, v5, v6, v10);
  v14 = v13;
  v16 = v15;
  sub_21B23A9F4(v8, v9, v11);
  sub_21B2D5A98(v12, v14, v16, a3, a4);

  return sub_21B23A9F4(v12, v14, v16);
}

double sub_21B2D5958@<D0>(char **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>, uint64_t a5@<X3>)
{
  v6 = *(a1 + a2 - 8);
  v7 = *(a4 + 40);
  v8 = *a1;
  v9 = a1[1];
  v17 = *a4;
  v18 = *(a4 + 1);
  v19 = *(a4 + 3);
  v20 = v7;
  v10 = type metadata accessor for DiscontiguousColumnSlice(0, v6, a2, a5);
  DiscontiguousColumnSlice.subscript.getter(v8, v9, v10, &v13);
  v11 = v16;
  *a3 = v13;
  *(a3 + 8) = v14;
  result = *&v15;
  *(a3 + 24) = v15;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_21B2D59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14[0] = *a1;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v15 = v9;

  sub_21B254074(v7, v8, v9);
  v12 = type metadata accessor for DiscontiguousColumnSlice(0, v4, v10, v11);
  return sub_21B2D868C(v14, v12);
}

__n128 sub_21B2D5A98@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v12 = v5[3];
  v13 = v5[4];
  v14 = *(v5 + 40);
  sub_21B254074(v12, v13, v14);
  v15 = sub_21B248CCC(a1, a2, a3, v12, v13, v14);
  v17 = v16;
  LOBYTE(a1) = v18;
  v30 = v11;
  v31 = *(v5 + 1);
  v24[0] = v15;
  v24[1] = v16;
  v25 = v18;
  v20 = type metadata accessor for Column(0, *(a4 + 16), v18, v19);
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v24, v20, WitnessTable, &v26);
  sub_21B23A9F4(v15, v17, a1);
  v22 = v29;
  *a5 = v26;
  result = v28;
  *(a5 + 8) = v27;
  *(a5 + 24) = result;
  *(a5 + 40) = v22;
  return result;
}

void (*DiscontiguousColumnSlice.subscript.modify(uint64_t *a1, char *a2, char *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  *a1 = v9;
  *(v9 + 48) = a4;
  *(v9 + 56) = v4;
  DiscontiguousColumnSlice.subscript.getter(a2, a3, a4, v9);
  return sub_21B2D5C7C;
}

void sub_21B2D5C7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v2 + 40);
  v9 = v2[6];
  v13[0] = v4;
  v13[1] = v3;
  v13[2] = v6;
  v13[3] = v5;
  v13[4] = v7;
  v14 = v8;
  if (a2)
  {

    sub_21B254074(v5, v7, v8);
    sub_21B2D868C(v13, v9);
    v10 = v2[3];
    v11 = v2[4];
    v12 = *(v2 + 40);

    sub_21B23A9F4(v10, v11, v12);
  }

  else
  {
    sub_21B2D868C(v13, v9);
  }

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  return DiscontiguousColumnSlice.subscript.getter(v8, v9, a2, x8_0);
}

double sub_21B2D5DFC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>, uint64_t a5@<X3>)
{
  v6 = *(a1 + a2 - 24);
  v7 = *(a4 + 40);
  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *(a4 + 3);
  v18 = v7;
  v8 = type metadata accessor for DiscontiguousColumnSlice(0, v6, a2, a5);
  DiscontiguousColumnSlice.subscript.getter(v8, &v11);
  v9 = v14;
  *a3 = v11;
  *(a3 + 8) = v12;
  result = *&v13;
  *(a3 + 24) = v13;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_21B2D5EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17[0] = *a1;
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  v18 = v12;

  sub_21B254074(v10, v11, v12);
  v15 = type metadata accessor for DiscontiguousColumnSlice(0, v5, v13, v14);
  return sub_21B2D8B60(v17, a3, v15, v6, v7);
}

uint64_t DiscontiguousColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B2D8B60(a1, a2, a3, a4, a5);
  v7 = *(*(a4 - 8) + 8);

  return v7(a2, a4);
}

void (*DiscontiguousColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x60uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[8] = a5;
  v11[9] = v5;
  v11[6] = a3;
  v11[7] = a4;
  v13 = *(a4 - 8);
  v14 = v13;
  v11[10] = v13;
  if (v10)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  *(v12 + 88) = v15;
  (*(v14 + 16))();
  DiscontiguousColumnSlice.subscript.getter(a3, v12);
  return sub_21B2D60FC;
}

void sub_21B2D60FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v2 + 8);
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    v11 = *(v2 + 32);
    v16[0] = *v2;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v11;
    v17 = *(v2 + 40);
    v12 = v5;

    sub_21B254074(v10, v11, v17);
    sub_21B2D8B60(v16, v3, v7, v6, v12);
    (*(v4 + 8))(v3, v6);
    v13 = *(v2 + 24);
    v14 = *(v2 + 32);
    v15 = *(v2 + 40);

    sub_21B23A9F4(v13, v14, v15);
  }

  else
  {
    sub_21B2D8B60(*a1, v3, v7, v6, v5);
    (*(v4 + 8))(v3, v6);
  }

  free(v3);

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  DiscontiguousColumnSlice.startIndex.getter(a3, a2, a3, x3_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0D0, &qword_21B351970);
  sub_21B2D8C5C();
  return DiscontiguousColumnSlice.subscript.getter(a3, a4);
}

void (*DiscontiguousColumnSlice.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  *(v7 + 48) = a4;
  *(v7 + 56) = v4;
  DiscontiguousColumnSlice.subscript.getter(v8, a4, v9, v7);
  return sub_21B2D6338;
}

void sub_21B2D6338(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[4];
    v14[0] = *v4;
    v14[1] = v6;
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v15 = *(v4 + 40);

    sub_21B254074(v8, v9, v15);
    sub_21B2D8CC0(v14, v5, v10, v11);
    v12 = v4[3];
    v13 = v4[4];
    LOBYTE(v8) = *(v4 + 40);

    sub_21B23A9F4(v12, v13, v8);
  }

  else
  {
    sub_21B2D8CC0(*a1, v5, a3, a4);
  }

  free(v4);
}

Swift::Int sub_21B2D6414@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DiscontiguousColumnSlice.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21B2D6440(Swift::Int *a1)
{
  result = DiscontiguousColumnSlice.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B2D646C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B2D8534(a1, *a2, a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*sub_21B2D64E8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousColumnSlice.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B2D6578(uint64_t **a1, char **a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousColumnSlice.subscript.modify(v6, *a2, a2[1], a3);
  return sub_21B28EF30;
}

uint64_t sub_21B2D6680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = DiscontiguousColumnSlice.startIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_21B2D66A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = DiscontiguousColumnSlice.endIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

void (*sub_21B2D66D0(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2D6758(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B2D6758(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_21B34B474();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  DiscontiguousColumnSlice.subscript.getter(a2, a3, v8);
  return sub_21B2854A4;
}

uint64_t sub_21B2D6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21B34AB54();
}

uint64_t sub_21B2D68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_21B34AB44();
}

uint64_t sub_21B2D6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21B34AB64();
}

Swift::Int sub_21B2D69AC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DiscontiguousColumnSlice.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21B2D69D8(Swift::Int *a1)
{
  result = DiscontiguousColumnSlice.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B2D6A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v2 + 40);
  *(a2 + 40) = v9;

  sub_21B254074(v7, v8, v9);
  v13 = DiscontiguousColumnSlice.startIndex.getter(a1, v10, v11, v12);

  result = sub_21B23A9F4(v7, v8, v9);
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_21B2D6AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2D6B04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);

  sub_21B23A9F4(v5, v6, v7);
  return v4;
}

uint64_t static DiscontiguousColumnSlice<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v68 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v60 - v9;
  v10 = sub_21B34B474();
  v67 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v76 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v79 = &v60 - v17;
  v66 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_21B34B474();
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v60 - v21;
  v22 = *a1;
  v23 = *(a1 + 1);
  v24 = a1[3];
  v25 = a1[4];
  v26 = *(a1 + 40);
  v27 = *a2;
  v70 = *(a2 + 1);
  v71 = v23;
  v28 = a2[3];
  v69 = a2[4];
  v29 = *(a2 + 40);
  v78 = a3;
  v75 = type metadata accessor for DiscontiguousColumnSlice(0, a3, v30, v31);
  if (v22 != v27 || (vmovn_s64(vceqq_s64(v71, v70)).u8[0] & 1) == 0)
  {
    v32 = sub_21B34B9F4();
    result = 0;
    if ((v32 & 1) == 0)
    {
      return result;
    }
  }

  v72 = TupleTypeMetadata2;
  *(v87 + 8) = v71;
  *&v87[0] = v22;
  *(&v87[1] + 1) = v24;
  *&v88 = v25;
  BYTE8(v88) = v26;
  v92 = v70;
  v91 = v27;
  v93 = v28;
  v94 = v69;
  v95 = v29;
  v34 = v75;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v88 = v82;
  v89 = v83;
  v90[0] = v84[0];
  *(v90 + 9) = *(v84 + 9);
  v36 = v72;
  v87[0] = v80;
  v87[1] = v81;
  v91 = v34;
  v92.i64[0] = v34;
  v92.i64[1] = WitnessTable;
  v93 = WitnessTable;
  v71.i64[0] = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v37 = v66;
  v69 = (v67 + 32);
  v70.i64[0] = v36 - 8;
  v38 = (v68 + 6);
  v64 = (v67 + 16);
  v60 = (v68 + 4);
  v61 = v68 + 1;
  v68 = (v67 + 8);
  v39 = v77;
  while (1)
  {
    *&v80 = v75;
    *(&v80 + 1) = v75;
    *&v81 = v71.i64[0];
    *(&v81 + 1) = v71.i64[0];
    v41 = sub_21B34B664();
    v42 = v74;
    sub_21B34B654();
    if ((*(*(v36 - 8) + 48))(v42, 1, v36) == 1)
    {
      v84[0] = v100;
      v84[1] = v101;
      v85 = v102;
      v86 = v103;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      (*(*(v41 - 8) + 8))(&v80, v41);
      return 1;
    }

    v67 = v41;
    v43 = *(v36 + 48);
    v44 = *v69;
    v45 = v79;
    (*v69)(v79, v42, v37);
    v44(v39, &v42[v43], v37);
    v46 = v78;
    v47 = *v38;
    v48 = v73;
    if ((*v38)(v45, 1, v78) == 1 && v47(v39, 1, v46) == 1)
    {
      goto LABEL_5;
    }

    v49 = v37;
    v50 = *v64;
    (*v64)(v48, v79, v49);
    if (v47(v48, 1, v46) == 1)
    {
      v84[0] = v100;
      v84[1] = v101;
      v85 = v102;
      v86 = v103;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      (*(*(v67 - 8) + 8))(&v80);
      v59 = *v68;
      (*v68)(v48, v49);
      goto LABEL_16;
    }

    v51 = *v60;
    v52 = v65;
    (*v60)(v65, v48, v78);
    v53 = v76;
    v50(v76, v77, v49);
    v54 = v78;
    if (v47(v53, 1, v78) == 1)
    {
      break;
    }

    v55 = v62;
    v51(v62, v76, v54);
    v56 = sub_21B34AC54();
    v57 = *v61;
    (*v61)(v55, v54);
    v57(v52, v54);
    v37 = v66;
    v39 = v77;
    if ((v56 & 1) == 0)
    {
      v84[0] = v100;
      v84[1] = v101;
      v85 = v102;
      v86 = v103;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      (*(*(v67 - 8) + 8))(&v80);
      v58 = *v68;
      (*v68)(v79, v37);
      v58(v39, v37);
      return 0;
    }

LABEL_5:
    v40 = *v68;
    (*v68)(v79, v37);
    v40(v39, v37);
    v36 = v72;
  }

  (*v61)(v52, v54);
  v84[0] = v100;
  v84[1] = v101;
  v85 = v102;
  v86 = v103;
  v80 = v96;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  (*(*(v67 - 8) + 8))(&v80);
  v59 = *v68;
  v49 = v66;
  (*v68)(v76, v66);
LABEL_16:
  v59(v79, v49);
  v59(v77, v49);
  return 0;
}

uint64_t DiscontiguousColumnSlice<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *(a2 + 16);
  v4 = sub_21B34B474();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + 40);

  sub_21B34AD94();

  *&v30 = v7;
  *(&v30 + 1) = v8;
  v31 = v10;
  v32 = v9;
  v33 = v11;
  v34 = v12;
  v35 = v7;
  v36 = v8;
  v37 = v10;
  v38 = v9;
  v39 = v11;
  v40 = v12;

  sub_21B254074(v9, v11, v12);

  sub_21B254074(v9, v11, v12);
  v15 = type metadata accessor for Column(255, v29, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for _DiscontiguousSlice(0, v15, WitnessTable, v17);
  sub_21B2841AC(v18, &v41);
  v19 = v33;
  v29 = v32;
  v28 = v34;

  sub_21B23A9F4(v29, v19, v28);
  sub_21B2844B4(v18, &v30);
  if ((sub_21B283ED0(&v41, &v30, v15, WitnessTable) & 1) == 0)
  {
    v21 = (v27 + 8);
    do
    {
      sub_21B284B54(v18, v6, v20);
      v30 = v41;
      sub_21B28469C(&v30, v18, &v41);
      sub_21B34B484();
      (*v21)(v6, v4);
      sub_21B2844B4(v18, &v30);
    }

    while ((sub_21B283ED0(&v41, &v30, v15, WitnessTable) & 1) == 0);
  }

  v22 = v38;
  v23 = v39;
  v24 = v40;

  return sub_21B23A9F4(v22, v23, v24);
}

void DiscontiguousColumnSlice<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  WitnessTable = a2;
  v4 = *(a1 + 16);
  v42 = a3;
  v43 = v4;
  v5 = sub_21B34B474();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_21B34B474();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v42 - v14);
  v17 = *(v3 + 8);
  *&v44 = *v3;
  v16 = v44;
  *(&v44 + 1) = v17;
  v18 = *(v3 + 24);
  v45 = *(v3 + 16);
  v52 = v18;
  v19 = *(v3 + 32);
  v20 = *(v3 + 40);
  LODWORD(v51) = v20;
  v90 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v91 = sub_21B34A994();
  v87 = 0;
  v88 = 0;
  v89 = 2;
  v72 = v16;
  v73 = v17;
  v21 = v45;
  v74 = v45;
  v75 = v18;
  v76 = v19;
  v77 = v20;
  v22 = v53;
  swift_getWitnessTable();
  sub_21B34B2E4();
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v67[2] = v44;
  v68 = v21;
  v69 = v52;
  v70 = v19;
  v71 = v51;
  v23 = v22;
  v24 = sub_21B34AAF4();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  sub_21B34BA54();
  v92[0] = v62;
  v92[1] = v63;
  v92[2] = v64;
  v92[3] = v65;
  (*(*(v24 - 8) + 8))(v92, v24);
  v66 = v59;
  v67[0] = v60[0];
  *(v67 + 9) = *(v60 + 9);
  v62 = v55;
  v63 = v56;
  v64 = v57;
  v65 = v58;
  *&v78 = v24;
  *(&v78 + 1) = v23;
  *&v79 = v25;
  *(&v79 + 1) = v26;
  sub_21B34B674();
  sub_21B34B644();
  v51 = (v50 + 4);
  v52 = TupleTypeMetadata2 - 8;
  v46 = (v50 + 2);
  v47 = v26;
  ++v50;
  while (1)
  {
    while (1)
    {
      *&v55 = v24;
      *(&v55 + 1) = v53;
      *&v56 = v25;
      *(&v56 + 1) = v26;
      v27 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
      {
        v60[1] = v84;
        v60[2] = v85;
        v61 = v86;
        v57 = v80;
        v58 = v81;
        v59 = v82;
        v60[0] = v83;
        v55 = v78;
        v56 = v79;
        (*(*(v27 - 8) + 8))(&v55, v27);

        v62 = v44;
        *&v63 = v45;
        v39 = v87;
        v40 = v88;
        v41 = v89;

        sub_21B2D3D88(&v62, v39, v40, v41, v43, v42);
        return;
      }

      v28 = *v15;
      (*v51)(v11, v15 + *(TupleTypeMetadata2 + 48), v5);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v50)(v11, v5);
    }

    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 < v28)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v28, v29);
    (*v46)(v49, v11, v5);
    sub_21B34B124();
    v30 = v25;
    v31 = v15;
    v32 = v5;
    v33 = v11;
    v34 = TupleTypeMetadata2;
    v35 = v24;
    v36 = v48;
    sub_21B34B104();
    v37 = *v50;
    v38 = v36;
    v24 = v35;
    TupleTypeMetadata2 = v34;
    v11 = v33;
    v5 = v32;
    v15 = v31;
    v25 = v30;
    v26 = v47;
    (*v50)(v38, v5);
    v37(v11, v5);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t DiscontiguousColumnSlice<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = *(v2 + 3);
  v11 = v5;
  sub_21B34BBC4();
  DiscontiguousColumnSlice<A>.hash(into:)(v7, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2D7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  DiscontiguousColumnSlice<A>.hash(into:)(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2D7D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v17[1] = *v3;
  v18 = *(v3 + 8);
  v13 = type metadata accessor for Column(0, v6, v11, v12);
  Column.subscript.getter(a1, v13, v10);
  v14 = *(v6 - 8);
  if ((*(v14 + 48))(v10, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v14 + 32))(boxed_opaque_existential_1, v10, v6);
  }

  return result;
}

uint64_t sub_21B2D7EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  sub_21B2832C0(a2, &v19);
  if (v20)
  {
    sub_21B261720(&v19, v21);
    sub_21B2616C4(v21, &v19);
    swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
    v12 = type metadata accessor for Column(0, v5, v10, v11);
    sub_21B28E8DC(v9, a1, v12, v13);
    (*(v7 + 8))(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_21B28EEB4(&v19);
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    v17 = type metadata accessor for Column(0, v5, v15, v16);
    sub_21B28E8DC(v9, a1, v17, v18);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_21B2D80B4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = a1 == a2;
  if (a1 == a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(v4 + 40);
  sub_21B254074(*(v4 + 24), *(v4 + 32), v12);
  v13 = 2 * v9;
  v14 = sub_21B248CCC(v10, v11, v13, v7, v8, v12);
  v16 = v15;
  v18 = v17;
  sub_21B23A9F4(v10, v11, v13);
  a4[3] = a3;
  a4[4] = &off_282CAB618;
  v19 = swift_allocObject();
  *a4 = v19;
  v22 = type metadata accessor for Column(0, *(a3 + 16), v20, v21);
  sub_21B28B2B8(v14, v16, v18, v22, v19 + 16);

  return sub_21B23A9F4(v14, v16, v18);
}

uint64_t sub_21B2D81E0(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = a1 == a2;
  if (a1 == a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(v4 + 40);
  sub_21B254074(*(v4 + 24), *(v4 + 32), v12);
  v13 = 2 * v9;
  v14 = sub_21B248CCC(v10, v11, v13, v7, v8, v12);
  v16 = v15;
  v18 = v17;
  sub_21B23A9F4(v10, v11, v13);
  sub_21B233A10(a3, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  swift_dynamicCast();
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v21 = type metadata accessor for Column(0, *(a4 + 16), v19, v20);
  return sub_21B28B360(&v23, v14, v16, v18, v21);
}

uint64_t sub_21B2D8304@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  sub_21B254074(v11, v12, v13);
  v14 = sub_21B248CCC(a1, a2, a3, v11, v12, v13);
  v16 = v15;
  v18 = v17;
  a5[3] = a4;
  a5[4] = &off_282CAB618;
  v19 = swift_allocObject();
  *a5 = v19;
  v22 = type metadata accessor for Column(0, *(a4 + 16), v20, v21);
  sub_21B28B2B8(v14, v16, v18, v22, v19 + 16);

  return sub_21B23A9F4(v14, v16, v18);
}

uint64_t sub_21B2D8418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v17 = v12;
  v13 = *(a1 + 16);
  a4[3] = type metadata accessor for Column(0, v13, a2, a3);
  a4[4] = &off_282CAA128;
  swift_bridgeObjectRetain_n();

  sub_21B254074(v10, v11, v12);
  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v7, v8, v16, v13, a1, WitnessTable, a4);
}

void *sub_21B2D8534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21B2D3BE8(a2, *(v3 + 24), *(v3 + 32), *(v3 + 40)))
  {
    v9 = type metadata accessor for Column(0, *(a3 + 16), v7, v8);

    return sub_21B28E8DC(a1, a2, v9, v10);
  }

  else
  {
    sub_21B34B634();

    v12 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v12);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D868C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v44 = sub_21B34B474();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v38 - v6;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v49 = a1[2];
  v46 = a1[4];
  v10 = *(a1 + 40);
  v11 = *(v3 + 40);
  *&v86[0] = *v3;
  *(v86 + 8) = *(v3 + 1);
  *(&v86[1] + 8) = *(v3 + 3);
  BYTE8(v86[2]) = v11;
  v15 = DiscontiguousColumnSlice.count.getter(a2, v12, v13, v14);
  v42 = v8;
  *&v50 = v8;
  *(&v50 + 1) = v7;
  v47 = v7;
  v48 = v9;
  v16 = v49;
  *&v51 = v49;
  *(&v51 + 1) = v9;
  v17 = v10;
  v18 = v46;
  *&v52 = v46;
  BYTE8(v52) = v17;
  if (v15 == DiscontiguousColumnSlice.count.getter(a2, v19, v20, v21))
  {
    v22 = *(v3 + 40);
    v82 = *v3;
    v83 = *(v3 + 1);
    v45 = v3;
    v84 = *(v3 + 3);
    v85 = v22;
    swift_getWitnessTable();
    sub_21B34B2E4();
    v60 = v86[0];
    v61 = v86[1];
    v62 = v86[2];
    v63 = v87;
    v76 = v42;
    v77 = v47;
    v78 = v16;
    v23 = v48;
    v79 = v48;
    v80 = v18;
    v81 = v17;
    sub_21B34B2E4();
    v68 = v72;
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v41 = a2;
    v24 = sub_21B34AAF4();
    WitnessTable = swift_getWitnessTable();
    sub_21B34BA54();
    v94[0] = v68;
    v94[1] = v69;
    v94[2] = v70;
    v94[3] = v71;
    v26 = *(*(v24 - 8) + 8);
    v26(v94, v24);
    v95[0] = v60;
    v95[1] = v61;
    v95[2] = v62;
    v95[3] = v63;
    v26(v95, v24);
    v64 = v54;
    v65 = v55;
    v66 = v56;
    v67 = v57;
    v60 = v50;
    v61 = v51;
    v62 = v52;
    v63 = v53;
    *&v86[0] = v24;
    *(&v86[0] + 1) = v24;
    *&v86[1] = WitnessTable;
    *(&v86[1] + 1) = WitnessTable;
    sub_21B34B674();
    sub_21B34B644();
    *&v50 = v24;
    *(&v50 + 1) = v24;
    *&v51 = WitnessTable;
    *(&v51 + 1) = WitnessTable;
    v38 = WitnessTable;
    v27 = sub_21B34B664();
    sub_21B34B654();
    if (v61)
    {
      v28 = v23;
      v29 = v18;
    }

    else
    {
      v30 = *(&v60 + 1);
      v31 = v60;
      v43 = v17;
      v32 = v40;
      v33 = (v39 + 8);
      v34 = v41;
      v35 = v42;
      v36 = v38;
      do
      {
        *&v50 = v35;
        *(&v50 + 1) = v47;
        *&v51 = v49;
        *(&v51 + 1) = v48;
        *&v52 = v46;
        BYTE8(v52) = v43;
        DiscontiguousColumnSlice.subscript.getter(v30, v34, v32);
        sub_21B2D8534(v32, v31, v34);
        (*v33)(v32, v44);
        *&v50 = v24;
        *(&v50 + 1) = v24;
        *&v51 = v36;
        *(&v51 + 1) = v36;
        v27 = sub_21B34B664();
        sub_21B34B654();
        v30 = *(&v60 + 1);
        v31 = v60;
      }

      while (v61 != 1);
      v28 = v48;
      v29 = v46;
      LOBYTE(v17) = v43;
    }

    v56 = v90;
    v57 = v91;
    v58 = v92;
    v59 = v93;
    v52 = v86[2];
    v53 = v87;
    v54 = v88;
    v55 = v89;
    v50 = v86[0];
    v51 = v86[1];
    (*(*(v27 - 8) + 8))(&v50, v27);

    return sub_21B23A9F4(v28, v29, v17);
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D8B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12[0] = *a1;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  LOBYTE(a1) = *(a1 + 40);
  v13 = a1;

  sub_21B254074(v9, v10, a1);
  sub_21B2D868C(v12, a3);

  return sub_21B23A9F4(v9, v10, a1);
}

unint64_t sub_21B2D8C5C()
{
  result = qword_27CD7EE68[0];
  if (!qword_27CD7EE68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0D0, &qword_21B351970);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7EE68);
  }

  return result;
}

uint64_t sub_21B2D8CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DiscontiguousColumnSlice.startIndex.getter(a2, a2, a3, a4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v15[0] = *a1;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  LOBYTE(a1) = *(a1 + 40);
  v16 = a1;
  v14 = v6;

  sub_21B254074(v9, v10, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0D0, &qword_21B351970);
  v12 = sub_21B2D8C5C();
  sub_21B2D8B60(v15, &v14, a2, v11, v12);

  return sub_21B23A9F4(v9, v10, a1);
}

uint64_t sub_21B2D8DBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2D8DF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2D8F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2D8F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21B2D8FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D9010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _RangeSetStorage._Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2D90B0(uint64_t a1)
{
  result = sub_21B34B424();
  if (v2 <= 0x3F)
  {
    result = sub_21B34B054();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2D91CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = type metadata accessor for _RangeSetStorage._Storage(0, *(a2 + 16), *(a2 + 24), a3);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v5, v8);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v13 = sub_21B34B424();
    result = (*(*(v13 - 8) + 32))(a4, v10, v13);
    if (!a1)
    {
      return result;
    }

    __break(1u);
  }

  if (result == 1)
  {
    sub_21B34B424();
    sub_21B34B094();
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

void (*sub_21B2D9394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_21B34BB44();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_21B34B424();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_21B2D9760(a2, a3, a4, v16);
  return sub_21B2D95B8;
}

void sub_21B2D95B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_21B34B934();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_21B34B934();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_21B2D9760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_21B34B424();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v36 - v18;
  sub_21B34B1B4();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_21B34B234();
  result = sub_21B34ABB4();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_21B34B1C4();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_21B34BB44();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D9BF0(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3)
{
  type metadata accessor for _RangeSetStorage._Storage(0, a1, a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21B34B424();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  type metadata accessor for _RangeSetStorage._Storage(0, a2, a3, v9);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for _RangeSetStorage._Storage(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _RangeSetStorage._Storage(0, *(a1 + 16), *(a1 + 24), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v10 = EnumCaseMultiPayload;
    result = 0;
    if (v10 == 1)
    {
      sub_21B34B424();
      v12 = sub_21B34B004();

      return v12;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return 1;
  }

  return result;
}