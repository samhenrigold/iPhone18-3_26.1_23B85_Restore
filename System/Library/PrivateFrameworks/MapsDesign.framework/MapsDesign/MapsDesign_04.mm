void sub_213E32434(uint64_t a1)
{
  sub_213E325FC(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_213DE22E8();
    if (v2 <= 0x3F)
    {
      sub_213E325FC(319, &qword_281186338, &qword_27C8F93C8, qword_213F578C0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213DE2394();
        if (v4 <= 0x3F)
        {
          sub_213DFE440();
          if (v5 <= 0x3F)
          {
            sub_213E325FC(319, &qword_281183508, &qword_27C8F8D50, &unk_213F5E0A0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_213DF29DC(319);
              if (v7 <= 0x3F)
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

void sub_213E325FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_213E32704(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_213F4D820();
  return v3;
}

uint64_t sub_213E3274C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v29 = sub_213F4D7F0();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4DEC0();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E0, &unk_213F57B80) + 36));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E8, &qword_213F61EA0);
  sub_213F4D520();
  v13 = *(sub_213F4D470() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_213F4D950();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = a4;
  v11[1] = a4;
  *(v11 + *(v12 + 36)) = 0;
  v16 = sub_213F4EEE0();
  v18 = v17;
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = sub_213F4E880();
    goto LABEL_8;
  }

  sub_213F4F520();
  v21 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();
  v22 = sub_213E053BC(a1, 0);
  (*(v8 + 8))(v10, v29, v22);
  if (v30 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_213F4DED0())
  {
    v19 = [objc_opt_self() systemGray4Color];
    v20 = sub_213F4E870();
  }

  else
  {
    v20 = sub_213F4E8D0();
  }

LABEL_8:
  v23 = v20;
  v24 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93F0, &qword_213F57B90) + 36);
  *v24 = v23;
  *(v24 + 8) = 256;
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  v25 = MEMORY[0x216052350](0.5, 1.0, 0.0);
  v26 = sub_213F4DED0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93F8, &qword_213F57B98);
  v28 = a3 + *(result + 36);
  *v28 = v25;
  *(v28 + 8) = v26 & 1;
  return result;
}

uint64_t sub_213E32A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  return v1;
}

uint64_t sub_213E32A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDE0();
  return v1;
}

uint64_t sub_213E32AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v4 = *(a1 + 16);
  v181 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v175 = &v137 - v7;
  v8 = sub_213F4D450();
  v174 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v171 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = a1;
  v165 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v163 = v11;
  v164 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = *(a1 + 24);
  v12 = sub_213F4EB20();
  v158 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v155 = &v137 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v14 = sub_213F4D400();
  v159 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v157 = &v137 - v15;
  v161 = v12;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v146 = WitnessTable;
  v229 = WitnessTable;
  v230 = v17;
  v18 = swift_getWitnessTable();
  v195 = v14;
  v196 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v153 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v150 = &v137 - v20;
  v156 = v21;
  v22 = sub_213F4D400();
  v154 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v151 = &v137 - v23;
  v195 = v14;
  v196 = v18;
  v145 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_213E37C44();
  v143 = OpaqueTypeConformance2;
  v227 = OpaqueTypeConformance2;
  v228 = v25;
  v26 = v4;
  v27 = swift_getWitnessTable();
  v28 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v186 = v22;
  v187 = v8;
  v195 = v22;
  v196 = v8;
  v184 = v28;
  v185 = v27;
  v197 = v27;
  v198 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v147 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v144 = &v137 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v148 = v29;
  v31 = sub_213F4D400();
  v152 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v149 = &v137 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v183 = v31;
  v33 = sub_213F4D400();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v162 = &v137 - v35;
  v182 = v36;
  v37 = sub_213F4D400();
  v167 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v160 = &v137 - v38;
  v39 = sub_213F4D400();
  v169 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v168 = &v137 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v41 = sub_213F4D400();
  v172 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v170 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v166 = &v137 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v137 - v46;
  v48 = sub_213F4DBB0();
  v176 = *(v48 - 8);
  v177 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v137 - v50;
  v52 = *v2;
  v178 = v37;
  v179 = v26;
  if (v52)
  {
    v141 = v39;
    v142 = v47;
    v181 = v51;
    v175 = v41;
    v138 = v34;
    v53 = *(v2 + 8);
    v54 = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v53;
    MEMORY[0x28223BE20](v55);
    v56 = v26;
    v57 = v188;
    *(&v137 - 4) = v26;
    *(&v137 - 3) = v57;
    *(&v137 - 2) = v2;
    v140 = v54;
    sub_213DD74C4(v54, v53);
    v139 = v53;

    v58 = v155;
    sub_213F4EB00();
    sub_213F4CDB0();
    v231 = v59;
    v232 = v60;
    v233 = v61;
    v234 = v62;
    v235 = 0;
    v63 = v157;
    v64 = v161;
    sub_213F4E4C0();
    (*(v158 + 8))(v58, v64);
    v137 = v2;
    sub_213E32A98();
    v65 = v14;
    v66 = v150;
    sub_213F4E780();

    (*(v159 + 8))(v63, v65);
    v67 = v164;
    v68 = v165;
    v69 = v173;
    (*(v165 + 16))(v164, v2, v173);
    v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v56;
    *(v71 + 24) = v57;
    (*(v68 + 32))(v71 + v70, v67, v69);
    v72 = v151;
    v73 = v156;
    sub_213F4E7B0();

    (*(v153 + 8))(v66, v73);
    v74 = v171;
    sub_213F4D440();
    v75 = v144;
    v77 = v186;
    v76 = v187;
    v79 = v184;
    v78 = v185;
    sub_213F4E3B0();
    (*(v174 + 1))(v74, v76);
    (*(v154 + 8))(v72, v77);
    v195 = v77;
    v196 = v76;
    v197 = v78;
    v198 = v79;
    v80 = swift_getOpaqueTypeConformance2();
    sub_213E37D5C();
    v81 = v148;
    v82 = v149;
    sub_213F4E460();
    (*(v147 + 8))(v75, v81);
    swift_getKeyPath();
    v83 = v137;
    LOBYTE(v195) = sub_213E32A38() & 1;
    v84 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    v203 = v80;
    v204 = v84;
    v85 = v183;
    v86 = swift_getWitnessTable();
    v87 = v162;
    sub_213F4E3F0();

    (*(v152 + 8))(v82, v85);
    swift_getKeyPath();
    v88 = *(v83 + 112);
    LOBYTE(v195) = *(v83 + 104);
    v196 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
    sub_213F4EAA0();
    LOBYTE(v195) = v202;
    v89 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
    v200 = v86;
    v201 = v89;
    v90 = v182;
    v91 = swift_getWitnessTable();
    v92 = v160;
    sub_213F4E3F0();

    (*(v138 + 8))(v87, v90);
    swift_getKeyPath();
    sub_213E37E5C(v83 + 32, &v195);
    v93 = v198;
    if (v198)
    {
      v94 = v199;
      __swift_project_boxed_opaque_existential_0(&v195, v198);
      v95 = (*(v94 + 104))(v93, v94);
      __swift_destroy_boxed_opaque_existential_1(&v195);
    }

    else
    {
      sub_213DE36FC(&v195, &qword_27C8F9318, &qword_213F57710);
      v95 = 0;
    }

    LOBYTE(v195) = v95 & 1;
    v193 = v91;
    v194 = v89;
    v115 = v178;
    v116 = swift_getWitnessTable();
    v117 = v168;
    sub_213F4E3F0();

    (*(v167 + 8))(v92, v115);
    v118 = sub_213E32A38();
    v191 = v116;
    v192 = v89;
    v119 = v141;
    v120 = swift_getWitnessTable();
    v121 = v166;
    View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)(1, 0, v118 & 1, v119, v120);
    (*(v169 + 8))(v117, v119);
    v122 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
    v189 = v120;
    v190 = v122;
    v123 = v175;
    v124 = swift_getWitnessTable();
    v125 = v142;
    sub_213DBFEEC(v121, v123, v124);
    v126 = *(v172 + 8);
    v126(v121, v123);
    v127 = v170;
    sub_213DBFEEC(v125, v123, v124);
    v51 = v181;
    sub_213E95440(v127, v123, v179, v124, v188);
    sub_213DD7558(v140, v139);
    v126(v127, v123);
    v126(v125, v123);
    v112 = v186;
    v111 = v187;
    v114 = v184;
    v113 = v185;
  }

  else
  {
    v96 = v142;
    (*(v2 + 16))(v49);
    v97 = v175;
    v98 = v26;
    v99 = v26;
    v100 = v188;
    sub_213DBFEEC(v96, v98, v188);
    v101 = *(v181 + 1);
    v181 += 8;
    v174 = v101;
    v101(v96, v99);
    sub_213DBFEEC(v97, v99, v100);
    v195 = v186;
    v196 = v187;
    v197 = v185;
    v198 = v184;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    v225 = v102;
    v226 = v103;
    v104 = swift_getWitnessTable();
    v105 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
    v223 = v104;
    v224 = v105;
    v221 = swift_getWitnessTable();
    v222 = v105;
    v219 = swift_getWitnessTable();
    v220 = v105;
    v106 = swift_getWitnessTable();
    v107 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
    v217 = v106;
    v218 = v107;
    v108 = swift_getWitnessTable();
    v109 = v179;
    sub_213DBFF2C(v96, v41, v179, v108, v188);
    v110 = v174;
    v174(v96, v109);
    v110(v175, v109);
    v112 = v186;
    v111 = v187;
    v114 = v184;
    v113 = v185;
  }

  v195 = v112;
  v196 = v111;
  v197 = v113;
  v198 = v114;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
  v215 = v128;
  v216 = v129;
  v130 = swift_getWitnessTable();
  v131 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
  v213 = v130;
  v214 = v131;
  v211 = swift_getWitnessTable();
  v212 = v131;
  v209 = swift_getWitnessTable();
  v210 = v131;
  v132 = swift_getWitnessTable();
  v133 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
  v207 = v132;
  v208 = v133;
  v205 = swift_getWitnessTable();
  v206 = v188;
  v134 = v177;
  v135 = swift_getWitnessTable();
  sub_213DBFEEC(v51, v134, v135);
  return (*(v176 + 8))(v51, v134);
}

void *sub_213E33F40@<X0>(_BYTE *a1@<X8>)
{
  sub_213E37ECC();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

double sub_213E33FDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v120 = a2;
  v121 = a1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4EDA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v109 - v12;
  sub_213EA868C(&v109 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_213DE36FC(v13, &qword_27C8F8D50, &unk_213F5E0A0);
    v15 = 0;
  }

  else
  {
    MEMORY[0x216052020](v14);
    sub_213DE36FC(v13, &qword_27C8F8FC8, &qword_213F61200);
    v15 = sub_213F4ED90();
    (*(v8 + 8))(v10, v7);
  }

  v16 = *v3;
  v17 = v121;
  if (!*v3 || (v15 & 1) != 0)
  {
    (*(v4 + 16))(&v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v121);
    v54 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v55 = swift_allocObject();
    v56 = *(v17 + 24);
    *(v55 + 16) = *(v17 + 16);
    *(v55 + 24) = v56;
    (*(v4 + 32))(v55 + v54, &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v57 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v58 = sub_213F4D400();
    v119 = sub_213E37CEC();
    v175 = v56;
    v176 = v119;
    v109 = MEMORY[0x277CDFAD8];
    WitnessTable = swift_getWitnessTable();
    v60 = sub_213F3CB80(sub_213E37F74, v55, v57);
    v62 = v61;
    *&v168 = v60;
    *(&v168 + 1) = v63;
    *&v169 = v61;
    *(&v169 + 1) = v64;
    v65 = type metadata accessor for BackgroundUIView(0, v58, WitnessTable, v64);
    *&v117 = &unk_213F64910;
    v66 = swift_getWitnessTable();
    v110 = v65;
    v111 = v66;
    v67 = v66;
    sub_213DBFEEC(&v168, v65, v66);

    v115 = v178;
    v116 = *(&v177 + 1);
    *&v118 = *(&v178 + 1);
    v168 = v177;
    v169 = v178;
    sub_213DBFEEC(&v168, v65, v67);
    v112 = v173;
    v113 = v172;
    v114 = v174;
    v164 = v171;
    v165 = v172;
    v166 = v173;
    v167 = v174;
    v68 = sub_213F4EB20();
    v69 = swift_getWitnessTable();
    v70 = sub_213E37C98();
    *&v168 = v68;
    *(&v168 + 1) = &type metadata for CellButtonStyle;
    *&v169 = v69;
    *(&v169 + 1) = v70;
    swift_getOpaqueTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
    v71 = sub_213F4D400();
    *&v168 = v68;
    *(&v168 + 1) = &type metadata for CellButtonStyle;
    *&v169 = v69;
    *(&v169 + 1) = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
    v162 = OpaqueTypeConformance2;
    v163 = v73;
    v74 = swift_getWitnessTable();
    *&v168 = v71;
    *(&v168 + 1) = v74;
    swift_getOpaqueTypeMetadata2();
    sub_213F4D400();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    v75 = sub_213F4D400();
    *&v168 = v71;
    *(&v168 + 1) = v74;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_213E37C44();
    v160 = v76;
    v161 = v77;
    v78 = swift_getWitnessTable();
    v79 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
    v158 = v78;
    v159 = v79;
    v156 = swift_getWitnessTable();
    v157 = v79;
    v154 = swift_getWitnessTable();
    v155 = v79;
    v152 = swift_getWitnessTable();
    v153 = v119;
    v80 = swift_getWitnessTable();
    v82 = type metadata accessor for BackgroundUIView(0, v75, v80, v81);
    v83 = swift_getWitnessTable();
    sub_213DBFF2C(&v164, v82, v110, v83, v111);
  }

  else
  {
    v119 = v3[1];
    v18 = v119;
    (*(v4 + 16))(&v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v121);
    v19 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    v20[2] = v22;
    v20[3] = v21;
    v115 = v20;
    v116 = v22;
    *&v117 = v21;
    v20[4] = v16;
    v20[5] = v18;
    (*(v4 + 32))(v20 + v19, v6, v17);
    v23 = objc_allocWithZone(MEMORY[0x277D75D18]);
    sub_213DD74C4(v16, v18);
    sub_213DD74C4(v16, v18);
    v114 = [v23 init];
    v24 = sub_213F4EB20();
    v25 = swift_getWitnessTable();
    v26 = sub_213E37C98();
    *&v118 = v16;
    v27 = v26;
    *&v168 = v24;
    *(&v168 + 1) = &type metadata for CellButtonStyle;
    *&v169 = v25;
    *(&v169 + 1) = v26;
    swift_getOpaqueTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
    v28 = sub_213F4D400();
    *&v168 = v24;
    *(&v168 + 1) = &type metadata for CellButtonStyle;
    *&v169 = v25;
    *(&v169 + 1) = v27;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
    v134 = v29;
    v135 = v30;
    v31 = swift_getWitnessTable();
    *&v168 = v28;
    *(&v168 + 1) = v31;
    swift_getOpaqueTypeMetadata2();
    sub_213F4D400();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    v32 = sub_213F4D400();
    *&v168 = v28;
    *(&v168 + 1) = v31;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_213E37C44();
    v132 = v33;
    v133 = v34;
    v35 = swift_getWitnessTable();
    v36 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
    v130 = v35;
    v131 = v36;
    v128 = swift_getWitnessTable();
    v129 = v36;
    v126 = swift_getWitnessTable();
    v127 = v36;
    v37 = swift_getWitnessTable();
    v113 = sub_213E37CEC();
    v124 = v37;
    v125 = v113;
    v38 = swift_getWitnessTable();
    v39 = sub_213F3CB80(sub_213E38010, v115, v114);
    v41 = v40;
    *&v168 = v39;
    *(&v168 + 1) = v42;
    *&v169 = v40;
    *(&v169 + 1) = v43;
    v44 = type metadata accessor for BackgroundUIView(0, v32, v38, v43);
    v114 = &unk_213F64910;
    v45 = swift_getWitnessTable();
    sub_213DBFEEC(&v168, v44, v45);

    v115 = *(&v178 + 1);
    v46 = v178;
    v168 = v177;
    v169 = v178;
    sub_213DBFEEC(&v168, v44, v45);
    v47 = v173;
    v164 = v171;
    v165 = v172;
    v166 = v173;
    v167 = v174;
    v48 = sub_213F4D400();
    v122 = v117;
    v123 = v113;

    v49 = v47;

    v50 = swift_getWitnessTable();
    v52 = type metadata accessor for BackgroundUIView(0, v48, v50, v51);
    v53 = swift_getWitnessTable();
    sub_213E95440(&v164, v44, v52, v45, v53);
    sub_213DD7558(v118, v119);
  }

  v117 = v168;
  v118 = v169;
  LODWORD(v119) = v170;
  v84 = *(v121 + 24);
  v116 = *(v121 + 16);
  v121 = v84;
  v85 = sub_213F4EB20();
  v86 = swift_getWitnessTable();
  v87 = sub_213E37C98();
  *&v177 = v85;
  *(&v177 + 1) = &type metadata for CellButtonStyle;
  *&v178 = v86;
  *(&v178 + 1) = v87;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v88 = sub_213F4D400();
  *&v177 = v85;
  *(&v177 + 1) = &type metadata for CellButtonStyle;
  *&v178 = v86;
  *(&v178 + 1) = v87;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v150 = v89;
  v151 = v90;
  v91 = swift_getWitnessTable();
  *&v177 = v88;
  *(&v177 + 1) = v91;
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  v92 = sub_213F4D400();
  *&v177 = v88;
  *(&v177 + 1) = v91;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_213E37C44();
  v148 = v93;
  v149 = v94;
  v95 = swift_getWitnessTable();
  v96 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
  v146 = v95;
  v147 = v96;
  v144 = swift_getWitnessTable();
  v145 = v96;
  v142 = swift_getWitnessTable();
  v143 = v96;
  v97 = swift_getWitnessTable();
  v98 = sub_213E37CEC();
  v140 = v97;
  v141 = v98;
  v99 = swift_getWitnessTable();
  type metadata accessor for BackgroundUIView(255, v92, v99, v100);
  v101 = sub_213F4D400();
  v138 = v121;
  v139 = v98;
  v102 = swift_getWitnessTable();
  type metadata accessor for BackgroundUIView(255, v101, v102, v103);
  v104 = sub_213F4DBB0();
  v105 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v136 = v105;
  v137 = v106;
  v107 = swift_getWitnessTable();
  sub_213DBFEEC(&v168, v104, v107);
  return sub_213E292E4(v117, *(&v117 + 1), v118, *(&v118 + 1));
}

uint64_t sub_213E34F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  v79 = a3;
  v78 = a2;
  v98 = a1;
  v97 = a7;
  v100 = a5;
  v99 = a6;
  v92 = type metadata accessor for CellButton(0, a5, a6, a4);
  v89 = *(v92 - 8);
  v91 = *(v89 + 64);
  MEMORY[0x28223BE20](v92);
  v88 = v67 - v7;
  v8 = sub_213F4EB20();
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = v67 - v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_213E37C98();
  KeyPath = v8;
  v109 = &type metadata for CellButtonStyle;
  v110 = WitnessTable;
  v111 = v11;
  v12 = WitnessTable;
  v67[1] = WitnessTable;
  v67[0] = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v67 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v15 = sub_213F4D400();
  v82 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = v67 - v16;
  KeyPath = v8;
  v109 = &type metadata for CellButtonStyle;
  v110 = v12;
  v111 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67[2] = OpaqueTypeConformance2;
  v18 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v118 = OpaqueTypeConformance2;
  v119 = v18;
  v86 = MEMORY[0x277CDFAD8];
  v68 = swift_getWitnessTable();
  KeyPath = v15;
  v109 = v68;
  v76 = MEMORY[0x277CDEEC0];
  v73 = swift_getOpaqueTypeMetadata2();
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v20 = v67 - v19;
  v21 = sub_213F4D400();
  v84 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v69 = v67 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v85 = sub_213F4D400();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v72 = v67 - v23;
  v24 = sub_213F4D400();
  v93 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v70 = v67 - v25;
  v95 = v26;
  v96 = sub_213F4D400();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = v67 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v78;
  *(v28 + 24) = v79;
  v101 = v100;
  v102 = v99;
  v29 = v81;
  v103 = v81;

  v30 = v74;
  sub_213F4EB00();
  v31 = *(v29 + 72);
  v32 = v29;
  KeyPath = swift_getKeyPath();
  LOBYTE(v109) = 0;
  v110 = v31;
  sub_213F4E3C0();

  (*(v83 + 8))(v30, v8);
  sub_213F4CDB0();
  v120 = v33;
  v121 = v34;
  v122 = v35;
  v123 = v36;
  v124 = 0;
  v37 = v71;
  v38 = OpaqueTypeMetadata2;
  sub_213F4E4C0();
  (*(v80 + 8))(v14, v38);
  sub_213E32A98();
  v39 = v68;
  sub_213F4E780();

  (*(v82 + 8))(v37, v15);
  v40 = v89;
  v41 = v88;
  v42 = v92;
  (*(v89 + 16))(v88, v32, v92);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v99;
  *(v44 + 16) = v100;
  *(v44 + 24) = v45;
  (*(v40 + 32))(v44 + v43, v41, v42);
  KeyPath = v15;
  v109 = v39;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v69;
  v48 = v73;
  sub_213F4E7B0();

  (*(v77 + 8))(v20, v48);
  swift_getKeyPath();
  LOBYTE(KeyPath) = sub_213E32A38() & 1;
  v49 = sub_213E37C44();
  v116 = v46;
  v117 = v49;
  v50 = swift_getWitnessTable();
  v51 = v72;
  sub_213F4E3F0();

  v52 = v21;
  v53 = v70;
  (*(v84 + 8))(v47, v52);
  swift_getKeyPath();
  v54 = *(v32 + 112);
  LOBYTE(KeyPath) = *(v32 + 104);
  v109 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  LOBYTE(KeyPath) = v115;
  v55 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
  v113 = v50;
  v114 = v55;
  v56 = v85;
  v57 = swift_getWitnessTable();
  sub_213F4E3F0();

  (*(v87 + 8))(v51, v56);
  swift_getKeyPath();
  sub_213E37E5C(v32 + 32, &KeyPath);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    __swift_project_boxed_opaque_existential_0(&KeyPath, v111);
    v60 = (*(v59 + 104))(v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&KeyPath);
  }

  else
  {
    sub_213DE36FC(&KeyPath, &qword_27C8F9318, &qword_213F57710);
    v60 = 0;
  }

  LOBYTE(KeyPath) = v60 & 1;
  v106 = v57;
  v107 = v55;
  v61 = v95;
  v62 = swift_getWitnessTable();
  v63 = v90;
  sub_213F4E3F0();

  (*(v93 + 8))(v53, v61);
  v104 = v62;
  v105 = v55;
  v64 = v96;
  v65 = swift_getWitnessTable();
  sub_213E31C34(v32 + 32, v98, v64, v65);
  return (*(v94 + 8))(v63, v64);
}

uint64_t sub_213E35BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  (*(v9 + 16))();
  sub_213DBFEEC(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_213DBFEEC(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_213E35D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v9);
  sub_213E31C34(a2 + 32, a1, a3, a4);
  return (*(v8 + 8))(v11, a3);
}

uint64_t sub_213E35E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v2 = *(a1 + 16);
  v63 = *(a1 + 24);
  v68 = v2;
  sub_213F4EB20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v54 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v116 = WitnessTable;
  v117 = v54;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  v67 = sub_213F4D450();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_213E37C44();
  v114 = OpaqueTypeConformance2;
  v115 = v55;
  swift_getWitnessTable();
  v62 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v57 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v58 = sub_213F4D400();
  v61 = sub_213F4D400();
  v60 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  sub_213F4D400();
  v56 = sub_213F4DBB0();
  sub_213E37C98();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v54;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  v5 = sub_213F4D400();
  v106 = swift_getOpaqueTypeConformance2();
  v107 = v55;
  v104 = swift_getWitnessTable();
  v105 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
  v102 = swift_getWitnessTable();
  v103 = v105;
  v100 = swift_getWitnessTable();
  v101 = v105;
  v98 = swift_getWitnessTable();
  v99 = sub_213E37CEC();
  v6 = swift_getWitnessTable();
  type metadata accessor for BackgroundUIView(255, v5, v6, v7);
  v8 = sub_213F4D400();
  v9 = v63;
  v96 = v63;
  v97 = v99;
  v10 = swift_getWitnessTable();
  type metadata accessor for BackgroundUIView(255, v8, v10, v11);
  v55 = sub_213F4DBB0();
  v70 = sub_213F4DBB0();
  v12 = sub_213F4E9C0();
  sub_213F4DF60();
  v13 = sub_213F4D400();
  v94 = swift_getOpaqueTypeConformance2();
  v95 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
  v92 = swift_getWitnessTable();
  v93 = v105;
  v90 = swift_getWitnessTable();
  v91 = v105;
  v88 = swift_getWitnessTable();
  v89 = v105;
  v86 = swift_getWitnessTable();
  v87 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
  v84 = swift_getWitnessTable();
  v85 = v63;
  v14 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v80 = v14;
  v81 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v79 = v59;
  v15 = swift_getWitnessTable();
  v77 = v63;
  v78 = sub_213E38728(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v110 = v12;
  v111 = v13;
  v66 = v13;
  v71 = v15;
  v112 = v15;
  v113 = swift_getWitnessTable();
  v69 = v113;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v54 - v20;
  v21 = sub_213F4DBB0();
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v67 = &v54 - v23;
  v60 = *(v12 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v54 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v54 - v30;
  v32 = v68;
  v72 = v68;
  v73 = v9;
  v33 = v64;
  v74 = v64;
  sub_213F4E9B0();
  v34 = v33;
  v35 = *v33;
  if (v35)
  {
    v36 = MEMORY[0x28223BE20](v34[1]);
    *(&v54 - 6) = v32;
    *(&v54 - 5) = v9;
    *(&v54 - 4) = v37;
    *(&v54 - 3) = v35;
    v70 = v36;
    *(&v54 - 2) = v36;

    v38 = swift_checkMetadataState();
    v39 = v71;
    v40 = v69;
    v56 = v31;
    sub_213F4E6F0();
    v110 = v12;
    v111 = v38;
    v112 = v39;
    v113 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = v57;
    sub_213DBFEEC(v19, OpaqueTypeMetadata2, v41);
    v43 = *(v58 + 8);
    v43(v19, OpaqueTypeMetadata2);
    sub_213DBFEEC(v42, OpaqueTypeMetadata2, v41);
    sub_213E95440(v19, OpaqueTypeMetadata2, v12, v41, v39);
    sub_213DD7558(v35, v70);
    v44 = v19;
    v45 = v66;
    v43(v44, OpaqueTypeMetadata2);
    v43(v42, OpaqueTypeMetadata2);
    (*(v60 + 8))(v56, v12);
  }

  else
  {
    v46 = v71;
    sub_213DBFEEC(v31, v12, v71);
    sub_213DBFEEC(v29, v12, v46);
    v45 = v66;
    v110 = v12;
    v111 = v66;
    v112 = v46;
    v113 = v69;
    v47 = swift_getOpaqueTypeConformance2();
    sub_213DBFF2C(v26, OpaqueTypeMetadata2, v12, v47, v46);
    v48 = *(v60 + 8);
    v48(v26, v12);
    v48(v29, v12);
    v48(v31, v12);
  }

  v110 = v12;
  v111 = v45;
  v49 = v71;
  v112 = v71;
  v113 = v69;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v49;
  v50 = v62;
  v51 = swift_getWitnessTable();
  v52 = v67;
  sub_213DBFEEC(v67, v50, v51);
  return (*(v61 + 8))(v52, v50);
}

uint64_t sub_213E36AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v98 = a1;
  v101 = a4;
  v93 = a2;
  v4 = sub_213F4EB20();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v103 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v196 = WitnessTable;
  v197 = v103;
  v6 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v102 = MEMORY[0x277CDEEC0];
  swift_getOpaqueTypeMetadata2();
  v7 = sub_213F4D400();
  v8 = sub_213F4D450();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = sub_213E37C44();
  v194 = OpaqueTypeConformance2;
  v195 = v104;
  v100 = v6;
  v113 = v8;
  v114 = v7;
  v175 = v7;
  v176 = v8;
  v111 = swift_getWitnessTable();
  v177 = v111;
  v106 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v178 = v106;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v10 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v109 = v10;
  v107 = sub_213F4D400();
  v108 = sub_213F4D400();
  v11 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v110 = v11;
  v112 = sub_213F4D400();
  v116 = sub_213F4DBB0();
  v92 = *(v116 - 8);
  v12 = MEMORY[0x28223BE20](v116);
  v91 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v89 - v14;
  v15 = sub_213F4D290();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v95 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v94 = &v89 - v18;
  v19 = sub_213E37C98();
  v175 = v4;
  v176 = &type metadata for CellButtonStyle;
  v177 = WitnessTable;
  v178 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_213F4D400();
  v175 = v4;
  v176 = &type metadata for CellButtonStyle;
  v177 = WitnessTable;
  v178 = v19;
  v192 = swift_getOpaqueTypeConformance2();
  v193 = v103;
  v21 = swift_getWitnessTable();
  v175 = v20;
  v176 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  v22 = sub_213F4D400();
  v175 = v20;
  v176 = v21;
  v190 = swift_getOpaqueTypeConformance2();
  v191 = v104;
  v23 = swift_getWitnessTable();
  v24 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
  v188 = v23;
  v189 = v24;
  v186 = swift_getWitnessTable();
  v187 = v24;
  v184 = swift_getWitnessTable();
  v185 = v24;
  v25 = v115;
  v26 = swift_getWitnessTable();
  v27 = sub_213E37CEC();
  v182 = v26;
  v183 = v27;
  v28 = swift_getWitnessTable();
  v30 = type metadata accessor for BackgroundUIView(255, v22, v28, v29);
  v31 = v93;
  v32 = sub_213F4D400();
  v180 = v25;
  v181 = v27;
  v33 = swift_getWitnessTable();
  v35 = type metadata accessor for BackgroundUIView(255, v32, v33, v34);
  v105 = v30;
  v102 = v35;
  v104 = sub_213F4DBB0();
  v36 = sub_213F4DBB0();
  v99 = *(v36 - 8);
  v100 = v36;
  MEMORY[0x28223BE20](v36);
  v103 = &v89 - v37;
  v39 = type metadata accessor for CellButton(0, v31, v25, v38);
  v40 = v94;
  sub_213DBBD08(v94);
  v41 = v95;
  sub_213F4D280();
  LOBYTE(v32) = sub_213F4D270();
  Description = v96->Description;
  v43 = v41;
  v44 = v97;
  Description(v43, v97);
  Description(v40, v44);
  if (v32)
  {
    v45 = v91;
    sub_213E32AFC(v39, v91);
    v175 = v114;
    v176 = v113;
    v177 = v111;
    v178 = v106;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    v129 = v46;
    v130 = v47;
    v127 = swift_getWitnessTable();
    v128 = v24;
    v125 = swift_getWitnessTable();
    v126 = v24;
    v123 = swift_getWitnessTable();
    v124 = v24;
    v48 = swift_getWitnessTable();
    v49 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
    v121 = v48;
    v122 = v49;
    v119 = swift_getWitnessTable();
    v120 = v115;
    v98 = v24;
    v50 = v116;
    v51 = swift_getWitnessTable();
    v52 = v90;
    sub_213DBFEEC(v45, v50, v51);
    v53 = *(v92 + 8);
    v53(v45, v50);
    sub_213DBFEEC(v52, v50, v51);
    v54 = swift_getWitnessTable();
    v55 = swift_getWitnessTable();
    v117 = v54;
    v118 = v55;
    v56 = v104;
    v57 = swift_getWitnessTable();
    sub_213E95440(v45, v50, v56, v51, v57);
    v53(v45, v50);
    v58 = v50;
    v24 = v98;
    v53(v52, v58);
  }

  else
  {
    sub_213E33FDC(v39, &v170);
    v59 = v170;
    v60 = v171;
    v61 = v172;
    v62 = v173;
    v165 = v170;
    v166 = v171;
    v167 = v172;
    v168 = v173;
    v169 = v174;
    v63 = swift_getWitnessTable();
    v64 = swift_getWitnessTable();
    v163 = v63;
    v164 = v64;
    v98 = MEMORY[0x277CE0340];
    v65 = v104;
    v66 = swift_getWitnessTable();
    v92 = v66;
    sub_213DBFEEC(&v165, v65, v66);
    sub_213E292E4(v59, v60, v61, v62);
    v96 = v176;
    v97 = v175;
    v94 = v178;
    v95 = v177;
    LODWORD(v93) = v179;
    v165 = v175;
    v166 = v176;
    v167 = v177;
    v168 = v178;
    v169 = v179;
    sub_213DBFEEC(&v165, v65, v66);
    v67 = v170;
    v91 = v171;
    v68 = v172;
    v69 = v173;
    v165 = v170;
    v166 = v171;
    v167 = v172;
    v168 = v173;
    v169 = v174;
    v159 = v114;
    v160 = v113;
    v161 = v111;
    v162 = v106;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    v157 = v70;
    v158 = v71;
    v155 = swift_getWitnessTable();
    v156 = v24;
    v153 = swift_getWitnessTable();
    v154 = v24;
    v151 = swift_getWitnessTable();
    v152 = v24;
    v72 = swift_getWitnessTable();
    v73 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
    v149 = v72;
    v150 = v73;
    v74 = v115;
    v75 = v116;
    v147 = swift_getWitnessTable();
    v148 = v74;
    v76 = swift_getWitnessTable();
    sub_213DBFF2C(&v165, v75, v65, v76, v92);
    sub_213E292E4(v67, v91, v68, v69);
    sub_213E292E4(v97, v96, v95, v94);
  }

  v175 = v114;
  v176 = v113;
  v177 = v111;
  v178 = v106;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
  v145 = v77;
  v146 = v78;
  v143 = swift_getWitnessTable();
  v144 = v24;
  v141 = swift_getWitnessTable();
  v142 = v24;
  v139 = swift_getWitnessTable();
  v140 = v24;
  v79 = swift_getWitnessTable();
  v80 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
  v137 = v79;
  v138 = v80;
  v135 = swift_getWitnessTable();
  v136 = v115;
  v81 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v133 = v82;
  v134 = v83;
  v84 = swift_getWitnessTable();
  v131 = v81;
  v132 = v84;
  v85 = v100;
  v86 = swift_getWitnessTable();
  v87 = v103;
  sub_213DBFEEC(v103, v85, v86);
  return (*(v99 + 8))(v87, v85);
}

uint64_t sub_213E378FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v29 = a2;
  v34 = a6;
  v9 = sub_213F4DDD0();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4DF60();
  v15 = sub_213F4D400();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v29 - v21;
  (*(a1 + 16))(v20);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a3;

  sub_213F4DDC0();
  v24 = v31;
  sub_213F4E610();

  (*(v32 + 8))(v12, v33);
  (*(v30 + 8))(v14, a4);
  v25 = sub_213E38728(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v35 = v24;
  v36 = v25;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v19, v15, WitnessTable);
  v27 = *(v16 + 8);
  v27(v19, v15);
  sub_213DBFEEC(v22, v15, WitnessTable);
  return (v27)(v22, v15);
}

unint64_t sub_213E37C44()
{
  result = qword_2811829A8;
  if (!qword_2811829A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829A8);
  }

  return result;
}

unint64_t sub_213E37C98()
{
  result = qword_281186B50[0];
  if (!qword_281186B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281186B50);
  }

  return result;
}

unint64_t sub_213E37CEC()
{
  result = qword_2811855B0;
  if (!qword_2811855B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811855B0);
  }

  return result;
}

unint64_t sub_213E37D5C()
{
  result = qword_2811825A8;
  if (!qword_2811825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811825A8);
  }

  return result;
}

void *keypath_get_12Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_213F4D820();
  *a3 = v5;
  return result;
}

uint64_t sub_213E37E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9318, &qword_213F57710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E37ECC()
{
  result = qword_281184C30;
  if (!qword_281184C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281184C30);
  }

  return result;
}

unint64_t sub_213E37F20()
{
  result = qword_281184748[0];
  if (!qword_281184748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184748);
  }

  return result;
}

uint64_t sub_213E37F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CellButton(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_213E35D74(a1, v9, v6, v7);
}

uint64_t sub_213E38010@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(type metadata accessor for CellButton(0, v6, v7, a2) - 8);
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_213E34F4C(a1, v9, v10, v11, v6, v7, a3);
}

uint64_t objectdestroy_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CellButton(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)));
  if (*v6)
  {
  }

  if (*(v6 + 7))
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
  }

  v7 = &v6[*(v5 + 56)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      v9 = *(v8 + 32);
      v10 = sub_213F4EDA0();
      (*(*(v10 - 8) + 8))(&v7[v9], v10);
    }
  }

  else
  {
  }

  v11 = *(v5 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4D290();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_213E38388()
{
  result = qword_2811850B8[0];
  if (!qword_2811850B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811850B8);
  }

  return result;
}

uint64_t sub_213E38418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213E38460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213E384D0()
{
  result = qword_281182EE0;
  if (!qword_281182EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93F8, &qword_213F57B98);
    sub_213E38588();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EE0);
  }

  return result;
}

unint64_t sub_213E38588()
{
  result = qword_281183098;
  if (!qword_281183098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93F0, &qword_213F57B90);
    sub_213E38640();
    sub_213DE3AE4(&qword_281182C00, &qword_27C8F9400, &unk_213F57BA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183098);
  }

  return result;
}

unint64_t sub_213E38640()
{
  result = qword_281183350;
  if (!qword_281183350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93E0, &unk_213F57B80);
    sub_213E38728(&qword_281182908, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_213DE3AE4(&qword_2811828D8, &qword_27C8F93E8, &qword_213F61EA0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183350);
  }

  return result;
}

uint64_t sub_213E38728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CityTileViewModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CityTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CityTileViewModel.init(id:title:subtitle:imageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return sub_213DD7500(a7, (a8 + 6));
}

uint64_t sub_213E38820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 CityTile.init(model:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CityTile(0);
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 10) = *(a1 + 80);
  result = *a1;
  v12 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v12;
  v13 = (a4 + *(v8 + 24));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_213E38AC4@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9490, &qword_213F57DB0) - 8;
  v2 = MEMORY[0x28223BE20](v90);
  v91 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v88 = &v79 - v4;
  v5 = type metadata accessor for MapsDesignImage(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9498, &qword_213F57DB8);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - v13;
  v86 = v1 + *(type metadata accessor for CityTile(0) + 20);
  sub_213DEBAA8(v86 + 48, &v8[v6[10]]);
  v15 = sub_213F4EEE0();
  v80 = v16;
  v81 = v15;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v17 = v6[7];
  *&v8[v17] = swift_getKeyPath();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v18 = v6[8];
  *&v8[v18] = swift_getKeyPath();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v19 = v6[9];
  *&v8[v19] = swift_getKeyPath();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v20 = &v8[v6[14]];
  v21 = &v8[v6[15]];
  v22 = &v8[v6[16]];
  v102 = 0uLL;
  *(&v103 + 7) = 0;
  *&v103 = 0;
  sub_213F4EA90();
  v23 = v106;
  v24 = BYTE8(v106);
  v25 = BYTE9(v106);
  v26 = BYTE10(v106);
  v27 = *v107;
  *v22 = v105;
  *(v22 + 2) = v23;
  v22[24] = v24;
  v22[25] = v25;
  v22[26] = v26;
  *(v22 + 4) = v27;
  v28 = v6[17];
  *&v102 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v8[v28] = v105;
  v8[v6[11]] = 1;
  v29 = &v8[v6[12]];
  v30 = v80;
  *v29 = v81;
  v29[1] = v30;
  v8[v6[13]] = 1;
  *v20 = 0;
  *(v20 + 1) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v81 = type metadata accessor for MapsDesignImage;
  sub_213E3AEA0(v8, v14, type metadata accessor for MapsDesignImage);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0);
  v31 = &v14[*(v80 + 36)];
  v32 = *&v94[23];
  *(v31 + 4) = *&v94[21];
  *(v31 + 5) = v32;
  *(v31 + 6) = *&v94[25];
  v33 = *&v94[15];
  *v31 = *&v94[13];
  *(v31 + 1) = v33;
  v34 = *&v94[19];
  *(v31 + 2) = *&v94[17];
  *(v31 + 3) = v34;
  sub_213DEBB74(v8);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A8, &qword_213F57E60) + 36);
  v87 = v14;
  *&v14[v35] = 256;
  v14[*(v10 + 44)] = 0;
  sub_213DEBAA8(v86 + 48, &v8[v6[10]]);
  v36 = sub_213F4EEE0();
  v38 = v37;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v39 = v6[7];
  *&v8[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v40 = v6[8];
  *&v8[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v6[9];
  *&v8[v41] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v42 = &v8[v6[14]];
  v43 = &v8[v6[15]];
  v44 = &v8[v6[16]];
  v102 = 0uLL;
  *(&v103 + 7) = 0;
  *&v103 = 0;
  sub_213F4EA90();
  v45 = v106;
  v46 = BYTE8(v106);
  v47 = BYTE9(v106);
  v48 = BYTE10(v106);
  v49 = *v107;
  *v44 = v105;
  *(v44 + 2) = v45;
  v44[24] = v46;
  v44[25] = v47;
  v44[26] = v48;
  *(v44 + 4) = v49;
  v50 = v6[17];
  *&v102 = 0;
  sub_213F4EA90();
  *&v8[v50] = v105;
  v8[v6[11]] = 1;
  v51 = &v8[v6[12]];
  *v51 = v36;
  v51[1] = v38;
  v8[v6[13]] = 1;
  *v42 = 0;
  *(v42 + 1) = 0;
  *v43 = 0;
  *(v43 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v52 = v88;
  sub_213E3AEA0(v8, v88, v81);
  v53 = (v52 + *(v80 + 36));
  v54 = *&v94[37];
  v53[4] = *&v94[35];
  v53[5] = v54;
  v53[6] = *&v94[39];
  v55 = *&v94[29];
  *v53 = *&v94[27];
  v53[1] = v55;
  v56 = *&v94[33];
  v53[2] = *&v94[31];
  v53[3] = v56;
  sub_213DEBB74(v8);
  v57 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94B0, &qword_213F57E68) + 36);
  *v57 = 0x4000000000000000;
  *(v57 + 8) = 1;
  v58 = sub_213F4EEE0();
  v60 = v59;
  sub_213F4E8C0();
  v61 = sub_213F4E900();

  v62 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94B8, &unk_213F57E70) + 36));
  *v62 = v61;
  v62[1] = v58;
  v62[2] = v60;
  v63 = sub_213F4EEE0();
  v65 = v64;
  v66 = sub_213F4DA40();
  v93[0] = 0;
  sub_213E393EC(&v105);
  v97 = *v107;
  v98 = *&v107[16];
  v99 = *&v107[32];
  v100 = *&v107[48];
  v95 = v105;
  v96 = v106;
  v101[2] = *v107;
  v101[3] = *&v107[16];
  v101[4] = *&v107[32];
  v101[5] = *&v107[48];
  v101[0] = v105;
  v101[1] = v106;
  sub_213DE3164(&v95, &v102, &qword_27C8F94C0, &unk_213F5A7B0);
  sub_213DE36FC(v101, &qword_27C8F94C0, &unk_213F5A7B0);
  *(&v94[4] + 7) = v97;
  *(&v94[6] + 7) = v98;
  *(&v94[8] + 7) = v99;
  *(&v94[10] + 7) = v100;
  *(v94 + 7) = v95;
  *(&v94[2] + 7) = v96;
  LOBYTE(v61) = v93[0];
  *&v102 = v63;
  *(&v102 + 1) = v65;
  v103 = v66;
  v104[0] = v93[0];
  *&v104[33] = *&v94[4];
  *&v104[17] = *&v94[2];
  *&v104[1] = *v94;
  *&v104[96] = *(&v100 + 1);
  *&v104[81] = *&v94[10];
  *&v104[65] = *&v94[8];
  *&v104[49] = *&v94[6];
  v67 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94C8, &qword_213F57E80) + 36);
  v68 = *&v104[80];
  *(v67 + 96) = *&v104[64];
  *(v67 + 112) = v68;
  v69 = *&v104[16];
  *(v67 + 32) = *v104;
  *(v67 + 48) = v69;
  v70 = *&v104[48];
  *(v67 + 64) = *&v104[32];
  *(v67 + 80) = v70;
  v71 = v103;
  *v67 = v102;
  *(v67 + 16) = v71;
  v72 = *&v94[4];
  *&v107[49] = *&v94[6];
  v108 = *&v94[8];
  *v109 = *&v94[10];
  *&v107[1] = *v94;
  *&v107[17] = *&v94[2];
  *(v67 + 128) = *&v104[96];
  *&v105 = v63;
  *(&v105 + 1) = v65;
  v106 = v66;
  v107[0] = v61;
  *&v109[15] = *(&v94[11] + 7);
  *&v107[33] = v72;
  sub_213DE3164(&v102, v93, &qword_27C8F94D0, &qword_213F57E88);
  sub_213DE36FC(&v105, &qword_27C8F94D0, &qword_213F57E88);
  *(v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94D8, &qword_213F57E90) + 36)) = 256;
  v73 = v89;
  *(v52 + *(v90 + 44)) = 0;
  v74 = v87;
  sub_213DE3164(v87, v73, &qword_27C8F9498, &qword_213F57DB8);
  v75 = v91;
  sub_213DE3164(v52, v91, &qword_27C8F9490, &qword_213F57DB0);
  v76 = v92;
  sub_213DE3164(v73, v92, &qword_27C8F9498, &qword_213F57DB8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94E0, &qword_213F57E98);
  sub_213DE3164(v75, v76 + *(v77 + 48), &qword_27C8F9490, &qword_213F57DB0);
  sub_213DE36FC(v52, &qword_27C8F9490, &qword_213F57DB0);
  sub_213DE36FC(v74, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v75, &qword_27C8F9490, &qword_213F57DB0);
  return sub_213DE36FC(v73, &qword_27C8F9498, &qword_213F57DB8);
}

void sub_213E393EC(uint64_t a2@<X8>)
{
  v3 = sub_213F4E8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_213F53CC0;
  *(v4 + 32) = sub_213F4E8D0();
  *(v4 + 40) = sub_213F4E8F0();
  *(v4 + 48) = sub_213F4E8F0();
  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v4);
  sub_213F4D2C0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v5 = v19;
  v21 = v19;
  *(a2 + 88) = v19;
  v6 = v17;
  v7 = v16;
  v8 = v16;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  *(a2 + 72) = v18;
  *(a2 + 56) = v6;
  *(a2 + 40) = v7;
  v9 = v14;
  v10 = v14;
  *(a2 + 8) = v14;
  v11 = v15;
  v12 = v15;
  v20[0] = v9;
  v20[1] = v15;
  *a2 = v3;
  *(a2 + 24) = v11;
  v23 = v5;
  v22[3] = v17;
  v22[4] = v18;
  v22[1] = v12;
  v22[2] = v8;
  v22[0] = v10;

  sub_213DE3164(v20, &v13, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v22, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E3958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9458, &qword_213F57D50) - 8;
  MEMORY[0x28223BE20](v68);
  v67 = v65 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9460, &qword_213F57D58);
  MEMORY[0x28223BE20](v72);
  v69 = v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9468, &qword_213F57D60);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v73 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9470, &qword_213F57D68);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v70 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = v65 - v12;
  v66 = (a1 + *(type metadata accessor for CityTile(0) + 20));
  v13 = v66[3];
  *&v87 = v66[2];
  *(&v87 + 1) = v13;
  v65[1] = sub_213DBC9EC();

  v14 = sub_213F4E310();
  v16 = v15;
  v18 = v17;
  *&v87 = sub_213F4E8F0();
  v19 = sub_213F4E2B0();
  v21 = v20;
  v23 = v22;
  sub_213DBCA40(v14, v16, v18 & 1);

  sub_213F4E0D0();
  sub_213F4E110();
  sub_213F4E1D0();

  v24 = sub_213F4E2E0();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_213DBCA40(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v91[55] = v98;
  *&v91[71] = v99;
  *&v91[103] = v101;
  *&v90[7] = *(&v101 + 1);
  *&v91[87] = v100;
  *&v91[7] = v95;
  *&v91[23] = v96;
  *&v91[39] = v97;
  *(v90 + 1) = *v91;
  *(&v90[1] + 1) = *&v91[16];
  *(&v90[2] + 1) = *&v91[32];
  *(&v90[6] + 1) = *&v91[96];
  *(&v90[5] + 1) = *&v91[80];
  v94 = v28 & 1;
  v92 = 0;
  *&v87 = v24;
  *(&v87 + 1) = v26;
  LOBYTE(v88) = v28 & 1;
  DWORD1(v88) = *&v93[3];
  *(&v88 + 1) = *v93;
  *(&v88 + 1) = v30;
  *&v89 = KeyPath;
  *(&v89 + 1) = 2;
  LOBYTE(v90[0]) = 0;
  *(&v90[4] + 1) = *&v91[64];
  *(&v90[3] + 1) = *&v91[48];
  v84 = v90[5];
  v85 = v90[6];
  v86 = *&v90[7];
  v80 = v90[1];
  v81 = v90[2];
  v82 = v90[3];
  v83 = v90[4];
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v79 = v90[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9478, &qword_213F57DA0);
  sub_213E3AD64(&qword_281183048, &qword_27C8F9478, &qword_213F57DA0, sub_213E0C270);
  sub_213F4E6D0();
  sub_213DE36FC(&v87, &qword_27C8F9478, &qword_213F57DA0);
  v32 = v66[5];
  *&v76 = v66[4];
  *(&v76 + 1) = v32;

  v33 = sub_213F4E310();
  v35 = v34;
  LOBYTE(v26) = v36;
  *&v76 = sub_213F4E8F0();
  *(&v76 + 1) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9480, &unk_213F5A6C0);
  sub_213DE3AE4(&qword_2811828B0, &qword_27C8F9480, &unk_213F5A6C0, MEMORY[0x277CE0848]);
  v37 = sub_213F4E2B0();
  v39 = v38;
  LOBYTE(v24) = v40;
  sub_213DBCA40(v33, v35, v26 & 1);

  sub_213F4E0C0();
  sub_213F4E170();
  sub_213F4E1D0();

  v41 = sub_213F4E2E0();
  v43 = v42;
  LOBYTE(v26) = v44;
  v46 = v45;

  sub_213DBCA40(v37, v39, v24 & 1);

  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290) + 36);
  v48 = *MEMORY[0x277CE13B8];
  v49 = sub_213F4EF90();
  v50 = v67;
  (*(*(v49 - 8) + 104))(&v67[v47], v48, v49);
  *v50 = v41;
  *(v50 + 8) = v43;
  *(v50 + 16) = v26 & 1;
  *(v50 + 24) = v46;
  v51 = swift_getKeyPath();
  v52 = v50 + *(v68 + 44);
  *v52 = v51;
  *(v52 + 8) = 1;
  *(v52 + 16) = 0;
  sub_213F4EEB0();
  sub_213F4D4E0();
  v53 = v69;
  sub_213E3ACF4(v50, v69);
  v54 = (v53 + *(v72 + 36));
  v55 = v81;
  v54[4] = v80;
  v54[5] = v55;
  v54[6] = v82;
  v56 = v77;
  *v54 = v76;
  v54[1] = v56;
  v57 = v79;
  v54[2] = v78;
  v54[3] = v57;
  sub_213E3AD64(&qword_281182EC8, &qword_27C8F9460, &qword_213F57D58, sub_213E3ADE8);
  v58 = v71;
  sub_213F4E6D0();
  sub_213DE36FC(v53, &qword_27C8F9460, &qword_213F57D58);
  v59 = v75;
  v60 = v70;
  sub_213DE3164(v75, v70, &qword_27C8F9470, &qword_213F57D68);
  v61 = v73;
  sub_213DE3164(v58, v73, &qword_27C8F9468, &qword_213F57D60);
  v62 = v74;
  sub_213DE3164(v60, v74, &qword_27C8F9470, &qword_213F57D68);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9488, &qword_213F57DA8);
  sub_213DE3164(v61, v62 + *(v63 + 48), &qword_27C8F9468, &qword_213F57D60);
  sub_213DE36FC(v58, &qword_27C8F9468, &qword_213F57D60);
  sub_213DE36FC(v59, &qword_27C8F9470, &qword_213F57D68);
  sub_213DE36FC(v61, &qword_27C8F9468, &qword_213F57D60);
  return sub_213DE36FC(v60, &qword_27C8F9470, &qword_213F57D68);
}

uint64_t CityTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CityTile(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9408, &qword_213F57BF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E3AEA0(v1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CityTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E3A908(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00);
  sub_213E3A978();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182760, &qword_27C8F9408, &qword_213F57BF8, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

double sub_213E3A070@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  *a2 = sub_213F4EEE0();
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9428, &qword_213F57D20);
  sub_213E3A27C(a1, a2 + *(v12 + 44));
  sub_213E38820(v10);
  sub_213F4D280();
  sub_213F4D270();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9418, &qword_213F57C08) + 36);
  v15 = *(sub_213F4D470() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #26.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00) + 36);
  *&result = 2037672259;
  *v23 = xmmword_213F57BB0;
  v23[16] = 12;
  return result;
}

uint64_t sub_213E3A27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9430, &qword_213F57D28);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9438, &qword_213F57D30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v45 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  sub_213E38AC4(&v44 - v19);
  *v15 = sub_213F4DA40();
  *(v15 + 1) = 0x4000000000000000;
  v15[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9440, &qword_213F57D38);
  sub_213E3958C(a1, &v15[*(v21 + 44)]);
  v22 = sub_213F4E040();
  sub_213E38820(v9);
  sub_213F4D280();
  sub_213F4D270();
  v23 = *(v4 + 8);
  v23(v7, v3);
  v23(v9, v3);
  sub_213F4CDA0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9448, &qword_213F57D40) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_213F4E070();
  sub_213E38820(v9);
  sub_213F4D280();
  sub_213F4D270();
  v23(v7, v3);
  v23(v9, v3);
  sub_213F4CDA0();
  v34 = &v15[*(v11 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v45;
  sub_213DE3164(v20, v45, &qword_27C8F9438, &qword_213F57D30);
  v40 = v46;
  sub_213DE3164(v15, v46, &qword_27C8F9430, &qword_213F57D28);
  v41 = v47;
  sub_213DE3164(v39, v47, &qword_27C8F9438, &qword_213F57D30);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9450, &qword_213F57D48);
  sub_213DE3164(v40, v41 + *(v42 + 48), &qword_27C8F9430, &qword_213F57D28);
  sub_213DE36FC(v15, &qword_27C8F9430, &qword_213F57D28);
  sub_213DE36FC(v20, &qword_27C8F9438, &qword_213F57D30);
  sub_213DE36FC(v40, &qword_27C8F9430, &qword_213F57D28);
  return sub_213DE36FC(v39, &qword_27C8F9438, &qword_213F57D30);
}

uint64_t sub_213E3A66C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9408, &qword_213F57BF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E3AEA0(v2, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CityTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E3A908(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00);
  sub_213E3A978();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182760, &qword_27C8F9408, &qword_213F57BF8, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t type metadata accessor for CityTile(uint64_t a1)
{
  result = qword_2811837E0;
  if (!qword_2811837E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213E3A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CityTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E3A978()
{
  result = qword_281182F30;
  if (!qword_281182F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9410, &qword_213F57C00);
    sub_213E3AA04();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F30);
  }

  return result;
}

unint64_t sub_213E3AA04()
{
  result = qword_281183150;
  if (!qword_281183150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9418, &qword_213F57C08);
    sub_213DE3AE4(&qword_281182638, &qword_27C8F9420, &unk_213F57C10, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183150);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213E3AB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_213E3AB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E3ABFC(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    sub_213DE22E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213E3ACF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9458, &qword_213F57D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E3AD64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E3ADE8()
{
  result = qword_281183078;
  if (!qword_281183078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9458, &qword_213F57D50);
    sub_213E2F46C();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183078);
  }

  return result;
}

uint64_t sub_213E3AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DateCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t DateCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  sub_213E3B1D8(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  *(v6 + 16) = v16[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v16[2];
  *(v6 + 64) = v17;
  sub_213DEBAA8(v2, a1 + 32);
  sub_213DD74C4(v4, v5);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9 & 1;
  sub_213F4EA90();
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94F0, &qword_213F57EB0);
  v11 = *(v10 + 56);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 60);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E3B210;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

double sub_213E3B0CC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(a1, a2 + v4[8]);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a2 + v4[7]) = 8;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9500, &unk_213F58050) + 36);
  *&result = 1702125892;
  *v7 = xmmword_213F57EA0;
  v7[16] = 2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213E3B254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E3B29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E3B2F8()
{
  result = qword_27C8F94F8;
  if (!qword_27C8F94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F94F0, &qword_213F57EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F94F8);
  }

  return result;
}

uint64_t EmptyStateViewModel.ButtonConfig.init(systemImage:label:tapAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 EmptyStateViewModel.init(icon:title:details:button:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a6 + 16);
  *(a7 + 56) = *a6;
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 72) = v7;
  result = *(a6 + 32);
  *(a7 + 88) = result;
  return result;
}

__n128 EmptyStateView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_213E3B3C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v76 = a2;
  v74 = a1;
  v84 = a4;
  v72 = sub_213F4DA20();
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9560, &qword_213F583C8);
  MEMORY[0x28223BE20](v68);
  v64 = &v63 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9568, &qword_213F583D0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v63 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9570, &qword_213F583D8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v65 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9578, &qword_213F583E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9580, &qword_213F583E8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v82 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9588, &qword_213F583F0);
  MEMORY[0x28223BE20](v75);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9590, &qword_213F583F8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v79 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v73 = &v63 - v27;
  sub_213E3BED4(a1, &v92);
  v28 = v92;
  v29 = BYTE9(v92);
  v30 = BYTE8(v92);
  sub_213F4E160();
  v31 = sub_213F4E0F0();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  v32 = sub_213F4E190();
  sub_213DE36FC(v21, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v34 = [objc_opt_self() secondaryLabelColor];
  v35 = sub_213F4E870();
  *&v92 = v28;
  BYTE8(v92) = v30;
  BYTE9(v92) = v29;
  *&v93 = KeyPath;
  *(&v93 + 1) = v32;
  *&v94 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9598, &qword_213F58430);
  sub_213E3D1B8();
  sub_213F4E620();
  j__swift_release(v28);

  sub_213E3D4B8();
  v36 = v73;
  sub_213F4E6D0();
  sub_213DE36FC(v23, &qword_27C8F9588, &qword_213F583F0);
  *v18 = sub_213F4DA40();
  *(v18 + 1) = 0x4000000000000000;
  v18[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95F0, &qword_213F58458);
  v38 = v74;
  v39 = sub_213E3C088(v74, v77, &v18[*(v37 + 44)]);
  v40 = *(v38 + 9);
  v89 = *(v38 + 7);
  v90 = v40;
  v91 = *(v38 + 11);
  if (*(&v89 + 1))
  {
    v92 = v89;
    v93 = v90;
    v94 = v91;
    MEMORY[0x28223BE20](v39);
    *(&v63 - 2) = &v92;
    sub_213DE3164(&v89, &v85, &qword_27C8F9600, &qword_213F58468);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9608, &qword_213F58470);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9610, &unk_213F58478);
    v42 = sub_213E3D57C();
    v85 = v41;
    v86 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v64;
    sub_213F4EB00();
    v44 = v68;
    v45 = (v43 + *(v68 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9620, &qword_213F58488);
    sub_213F4D4F0();
    *v45 = swift_getKeyPath();
    v46 = v66;
    sub_213F4DA10();
    v47 = sub_213E3D728();
    v48 = sub_213E3D80C(&qword_281182C20, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v49 = v69;
    v50 = v72;
    sub_213F4E3B0();
    (*(v67 + 8))(v46, v50);
    sub_213DE36FC(v43, &qword_27C8F9560, &qword_213F583C8);
    v85 = 0x7263537974706D45;
    v86 = 0xEB000000006E6565;
    MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
    v85 = v44;
    v86 = v50;
    v87 = v47;
    v88 = v48;
    swift_getOpaqueTypeConformance2();
    v51 = v65;
    v52 = v71;
    sub_213F4E6D0();

    sub_213DE36FC(&v89, &qword_27C8F9600, &qword_213F58468);
    (*(v70 + 8))(v49, v52);
    v53 = v78;
    sub_213DC55F0(v51, v78);
    v54 = 0;
  }

  else
  {
    v53 = v78;
    v54 = 1;
  }

  (*(v80 + 56))(v53, v54, 1, v81);
  v55 = v36;
  v56 = v79;
  sub_213DE3164(v36, v79, &qword_27C8F9590, &qword_213F583F8);
  v57 = v18;
  v58 = v82;
  sub_213DE3164(v18, v82, &qword_27C8F9580, &qword_213F583E8);
  v59 = v83;
  sub_213DE3164(v53, v83, &qword_27C8F9578, &qword_213F583E0);
  v60 = v84;
  sub_213DE3164(v56, v84, &qword_27C8F9590, &qword_213F583F8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95F8, &qword_213F58460);
  sub_213DE3164(v58, v60 + *(v61 + 48), &qword_27C8F9580, &qword_213F583E8);
  sub_213DE3164(v59, v60 + *(v61 + 64), &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v53, &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v57, &qword_27C8F9580, &qword_213F583E8);
  sub_213DE36FC(v55, &qword_27C8F9590, &qword_213F583F8);
  sub_213DE36FC(v59, &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v58, &qword_27C8F9580, &qword_213F583E8);
  return sub_213DE36FC(v56, &qword_27C8F9590, &qword_213F583F8);
}

void sub_213E3BED4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      sub_213E3D90C(*a1, v3, 2u);
      v5 = v4;
      sub_213F4E9D0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95E0, &qword_213F58450);
      sub_213E3D438();
      sub_213F4DBA0();
      sub_213E3D934(v4, v3, 2u);
      goto LABEL_7;
    }

    sub_213F4E9F0();
  }

  else
  {

    sub_213F4EA10();
  }

  sub_213F4DBA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95E0, &qword_213F58450);
  sub_213E3D438();
  sub_213F4DBA0();
LABEL_7:

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 9) = v8;
}

uint64_t sub_213E3C088@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v63 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v55 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v55 - v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v56 = v15;
  v64 = v13;
  v65 = v14;
  v55 = sub_213DBC9EC();

  v17 = sub_213F4E310();
  v19 = v18;
  v21 = v20;
  v22 = sub_213F4E2E0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_213DBCA40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v64 = v22;
  v65 = v24;
  v66 = v26 & 1;
  v67 = v28;
  v68 = KeyPath;
  v69 = 1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v22, v24, v26 & 1);

  v64 = v56;
  v65 = v16;

  v30 = sub_213F4E310();
  v32 = v31;
  v34 = v33;
  v35 = [objc_opt_self() secondaryLabelColor];
  v64 = sub_213F4E870();
  v36 = sub_213F4E2B0();
  v38 = v37;
  v40 = v39;
  sub_213DBCA40(v30, v32, v34 & 1);

  v41 = sub_213F4E2E0();
  v43 = v42;
  LOBYTE(v30) = v44;
  v46 = v45;
  sub_213DBCA40(v36, v38, v40 & 1);

  v47 = swift_getKeyPath();
  v64 = v41;
  v65 = v43;
  v66 = v30 & 1;
  v67 = v46;
  v68 = v47;
  v69 = 1;
  v48 = v60;
  sub_213F4E6D0();
  sub_213DBCA40(v41, v43, v30 & 1);

  v49 = v58;
  v50 = v61;
  sub_213DE3164(v58, v61, &qword_27C8F9640, &qword_213F584C8);
  v51 = v62;
  sub_213DE3164(v48, v62, &qword_27C8F9640, &qword_213F584C8);
  v52 = v63;
  sub_213DE3164(v50, v63, &qword_27C8F9640, &qword_213F584C8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9650, &unk_213F58510);
  sub_213DE3164(v51, v52 + *(v53 + 48), &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v48, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v49, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v51, &qword_27C8F9640, &qword_213F584C8);
  return sub_213DE36FC(v50, &qword_27C8F9640, &qword_213F584C8);
}

uint64_t sub_213E3C4FC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9610, &unk_213F58478);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  v10 = *(a1 + 1);
  v11 = v10;
  sub_213E32160(&v11, v9);
  sub_213DBC9EC();

  sub_213F4EA80();
  v5 = sub_213F4E0D0();
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(v2 + 36)];
  *v7 = KeyPath;
  v7[1] = v5;
  sub_213F4E180();
  sub_213E3D57C();
  sub_213F4E370();
  return sub_213DE36FC(v4, &qword_27C8F9610, &unk_213F58478);
}

uint64_t EmptyStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_213F4DC00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9508, &qword_213F58070);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = *(v1 + 80);
  v16[4] = *(v1 + 64);
  v16[5] = v10;
  v17 = *(v1 + 96);
  v11 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v11;
  v12 = *(v1 + 48);
  v16[2] = *(v1 + 32);
  v16[3] = v12;
  v15[4] = v16;
  sub_213F4E030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9510, &qword_213F58078);
  sub_213DE3AE4(&qword_27C8F9518, &qword_27C8F9510, &qword_213F58078, MEMORY[0x277CE11A8]);
  sub_213F4CE50();
  sub_213F4DBF0();
  v13 = sub_213F4E030();
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v13)
  {
    sub_213F4E020();
  }

  sub_213DE3AE4(&qword_27C8F9520, &qword_27C8F9508, &qword_213F58070, MEMORY[0x277CDD6E0]);
  sub_213F4E660();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_213E3C8E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9528, &unk_213F58388);
  return sub_213E3C958(a1, a2 + *(v5 + 44));
}

uint64_t sub_213E3C958@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_213F4E230();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9530, &qword_213F58398);
  v9 = MEMORY[0x28223BE20](v49);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = (&v45 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9538, &unk_213F583A0);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v56 = 0;
  v57 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v18 = sub_213F4E010();
  *(inited + 32) = v18;
  v19 = sub_213F4E030();
  *(inited + 33) = v19;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v18)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v19)
  {
    sub_213F4E020();
  }

  sub_213F4EEE0();
  sub_213F4E6C0();
  v20 = *MEMORY[0x277CE0A90];
  v47 = v16;
  v21 = *(v6 + 104);
  v21(v8, v20, v5);
  v22 = sub_213F4E0F0();
  v23 = *(*(v22 - 8) + 56);
  v23(v4, 1, 1, v22);
  sub_213F4E180();
  v46 = sub_213F4E1A0();
  sub_213DE36FC(v4, &qword_27C8F7668, &qword_213F52190);
  v24 = *(v6 + 8);
  v24(v8, v5);
  v21(v8, *MEMORY[0x277CE0A68], v5);
  v23(v4, 1, 1, v22);
  sub_213F4E170();
  v25 = sub_213F4E1A0();
  sub_213DE36FC(v4, &qword_27C8F7668, &qword_213F52190);
  v24(v8, v5);
  v26 = sub_213F4DA40();
  v27 = v48;
  *v48 = v26;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9548, &qword_213F583B0);
  sub_213E3B3C0(v50, v46, v25, v27 + *(v28 + 44));

  v29 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9550, &qword_213F583B8) + 36);
  *v29 = xmmword_213F58060;
  *(v29 + 16) = 16;
  LOBYTE(v21) = sub_213F4E040();
  sub_213F4CDA0();
  v30 = v27 + *(v49 + 36);
  *v30 = v21;
  *(v30 + 8) = v31;
  *(v30 + 16) = v32;
  *(v30 + 24) = v33;
  *(v30 + 32) = v34;
  *(v30 + 40) = 0;
  v36 = v51;
  v35 = v52;
  v37 = *(v52 + 16);
  v38 = v47;
  v39 = v53;
  v37(v51, v47, v53);
  v40 = v54;
  sub_213DE3164(v27, v54, &qword_27C8F9530, &qword_213F58398);
  v41 = v55;
  v37(v55, v36, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9558, &qword_213F583C0);
  sub_213DE3164(v40, &v41[*(v42 + 48)], &qword_27C8F9530, &qword_213F58398);
  sub_213DE36FC(v27, &qword_27C8F9530, &qword_213F58398);
  v43 = *(v35 + 8);
  v43(v38, v39);
  sub_213DE36FC(v40, &qword_27C8F9530, &qword_213F58398);
  return (v43)(v36, v39);
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign19EmptyStateViewModelV12ButtonConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213E3CFC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213E3D008(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_213E3D064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_213E3D0AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E3D108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_213E3D150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E3D1B8()
{
  result = qword_27C8F95A0;
  if (!qword_27C8F95A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9598, &qword_213F58430);
    sub_213E3D270();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95A0);
  }

  return result;
}

unint64_t sub_213E3D270()
{
  result = qword_27C8F95A8;
  if (!qword_27C8F95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95B0, &qword_213F58438);
    sub_213E3D328();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95A8);
  }

  return result;
}

unint64_t sub_213E3D328()
{
  result = qword_27C8F95B8;
  if (!qword_27C8F95B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95C0, &qword_213F58440);
    sub_213E3D3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95B8);
  }

  return result;
}

unint64_t sub_213E3D3AC()
{
  result = qword_27C8F95C8;
  if (!qword_27C8F95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95D0, &qword_213F58448);
    sub_213E3D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95C8);
  }

  return result;
}

unint64_t sub_213E3D438()
{
  result = qword_27C8F95D8;
  if (!qword_27C8F95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95E0, &qword_213F58450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95D8);
  }

  return result;
}

unint64_t sub_213E3D4B8()
{
  result = qword_27C8F95E8;
  if (!qword_27C8F95E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9588, &qword_213F583F0);
    sub_213E3D1B8();
    sub_213E3D80C(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95E8);
  }

  return result;
}

unint64_t sub_213E3D57C()
{
  result = qword_27C8F9618;
  if (!qword_27C8F9618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9610, &unk_213F58478);
    sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850, MEMORY[0x277CDEFF0]);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9618);
  }

  return result;
}

uint64_t sub_213E3D660(uint64_t a1)
{
  v2 = sub_213F4D500();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D680();
}

unint64_t sub_213E3D728()
{
  result = qword_27C8F9628;
  if (!qword_27C8F9628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9560, &qword_213F583C8);
    sub_213DE3AE4(&qword_27C8F9630, &qword_27C8F9638, &qword_213F584C0, MEMORY[0x277CDF028]);
    sub_213DE3AE4(&qword_281182878, &qword_27C8F9620, &qword_213F58488, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9628);
  }

  return result;
}

uint64_t sub_213E3D80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213E3D854()
{
  result = qword_281183328;
  if (!qword_281183328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9648, &unk_213F58500);
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183328);
  }

  return result;
}

id sub_213E3D90C(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_213E3D934(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

void sub_213E3D964(uint64_t a1, double a2)
{
  if (*MEMORY[0x277D74438] == a2)
  {
    MEMORY[0x282132658](a1);
    return;
  }

  if (*MEMORY[0x277D74428] == a2)
  {
    MEMORY[0x282132688](a1);
    return;
  }

  if (*MEMORY[0x277D74408] == a2)
  {
    MEMORY[0x2821326B8](a1);
    return;
  }

  if (*MEMORY[0x277D74418] == a2)
  {
    goto LABEL_8;
  }

  if (*MEMORY[0x277D74410] == a2)
  {
    sub_213F4E160();
  }

  else if (*MEMORY[0x277D74420] == a2)
  {
    sub_213F4E180();
  }

  else if (*MEMORY[0x277D743F8] == a2)
  {
    sub_213F4E110();
  }

  else if (*MEMORY[0x277D74400] == a2)
  {
    MEMORY[0x2821326A0](a1);
  }

  else
  {
    if (*MEMORY[0x277D743E8] != a2)
    {
LABEL_8:
      sub_213F4E170();
      return;
    }

    MEMORY[0x282132690](a1);
  }
}

uint64_t sub_213E3DA3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4F250();
  v6 = v5;
  if (v4 == sub_213F4F250() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_213F4F830();

  if (v9)
  {

LABEL_8:
    v10 = MEMORY[0x277CE0A50];
    goto LABEL_9;
  }

  v15 = sub_213F4F250();
  v17 = v16;
  if (v15 == sub_213F4F250() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = sub_213F4F830();

  if (v20)
  {

LABEL_19:
    v10 = MEMORY[0x277CE0A70];
    goto LABEL_9;
  }

  v21 = sub_213F4F250();
  v23 = v22;
  if (v21 == sub_213F4F250() && v23 == v24)
  {

LABEL_25:
    v10 = MEMORY[0x277CE0A80];
    goto LABEL_9;
  }

  v25 = sub_213F4F830();

  if (v25)
  {

    goto LABEL_25;
  }

  v26 = sub_213F4F250();
  v28 = v27;
  if (v26 == sub_213F4F250() && v28 == v29)
  {

LABEL_31:
    v10 = MEMORY[0x277CE0A90];
    goto LABEL_9;
  }

  v30 = sub_213F4F830();

  if (v30)
  {

    goto LABEL_31;
  }

  v31 = sub_213F4F250();
  v33 = v32;
  if (v31 == sub_213F4F250() && v33 == v34)
  {

LABEL_37:
    v10 = MEMORY[0x277CE0AC0];
    goto LABEL_9;
  }

  v35 = sub_213F4F830();

  if (v35)
  {

    goto LABEL_37;
  }

  v36 = sub_213F4F250();
  v38 = v37;
  if (v36 == sub_213F4F250() && v38 == v39)
  {

LABEL_43:
    v10 = MEMORY[0x277CE0A58];
    goto LABEL_9;
  }

  v40 = sub_213F4F830();

  if (v40)
  {

    goto LABEL_43;
  }

  v41 = sub_213F4F250();
  v43 = v42;
  if (v41 == sub_213F4F250() && v43 == v44)
  {

LABEL_49:
    v10 = MEMORY[0x277CE0A68];
    goto LABEL_9;
  }

  v45 = sub_213F4F830();

  if (v45)
  {

    goto LABEL_49;
  }

  v46 = sub_213F4F250();
  v48 = v47;
  if (v46 == sub_213F4F250() && v48 == v49)
  {

LABEL_55:
    v10 = MEMORY[0x277CE0A98];
    goto LABEL_9;
  }

  v50 = sub_213F4F830();

  if (v50)
  {

    goto LABEL_55;
  }

  v51 = sub_213F4F250();
  v53 = v52;
  if (v51 == sub_213F4F250() && v53 == v54)
  {

LABEL_61:
    v10 = MEMORY[0x277CE0AB0];
    goto LABEL_9;
  }

  v55 = sub_213F4F830();

  if (v55)
  {

    goto LABEL_61;
  }

  v56 = sub_213F4F250();
  v58 = v57;
  if (v56 == sub_213F4F250() && v58 == v59)
  {

LABEL_67:
    v10 = MEMORY[0x277CE0AA0];
    goto LABEL_9;
  }

  v60 = sub_213F4F830();

  if (v60)
  {

    goto LABEL_67;
  }

  v61 = sub_213F4F250();
  v63 = v62;
  if (v61 == sub_213F4F250() && v63 == v64)
  {

    v10 = MEMORY[0x277CE0AA8];
  }

  else
  {
    v65 = sub_213F4F830();

    v10 = MEMORY[0x277CE0A68];
    if (v65)
    {
      v10 = MEMORY[0x277CE0AA8];
    }
  }

LABEL_9:
  v11 = *v10;
  v12 = sub_213F4E230();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

double sub_213E3E0C8()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 objectForKey_];

  if (v2)
  {
    sub_213F4F6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9728, &qword_213F588B0);
    if ((swift_dynamicCast() & 1) != 0 && v6)
    {
      if (*(v6 + 16) && (v3 = sub_213F4B920(), (v4 & 1) != 0))
      {
        sub_213E426EC(*(v6 + 56) + 32 * v3, v9);

        if (swift_dynamicCast())
        {
          return *&v7;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_213DE36FC(v9, &unk_27C8F8BC0, &qword_213F563F0);
  }

  return *MEMORY[0x277D74418];
}

double sub_213E3E230()
{
  swift_getKeyPath();
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
  sub_213F4CB80();

  return *(v0 + 16);
}

double sub_213E3E2D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
  sub_213F4CB80();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_213E3E378(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
    sub_213F4CB70();
  }
}

uint64_t sub_213E3E490()
{
  v1 = OBJC_IVAR____TtC10MapsDesign12LabelMetrics___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_213E3E52C()
{
  v1 = v0;
  v2 = sub_213F4D3B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = type metadata accessor for UILabelView(0);
  [v9 setAttributedText_];
  [v9 setFont_];
  sub_213E15130(0, &qword_27C8F9680, 0x277D75348);

  v11 = sub_213F4F5F0();
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  [v9 setLineBreakMode_];
  v12 = v1 + v10[8];
  if (*(v12 + 8) == 1)
  {
    sub_213EA8464(v8);
    (*(v3 + 104))(v6, *MEMORY[0x277CDFA88], v2);
    v13 = sub_213F4D3A0();
    v14 = *(v3 + 8);
    v14(v6, v2);
    v14(v8, v2);
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = *v12;
  }

  [v9 setTextAlignment_];
  [v9 setAdjustsFontForContentSizeCategory_];
  LODWORD(v16) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v17];
  LODWORD(v18) = 1132068864;
  [v9 setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1132068864;
  [v9 setContentCompressionResistancePriority:0 forAxis:v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
  sub_213F4ED40();
  v20 = v27;
  result = [v9 font];
  if (result)
  {
    v22 = result;
    [result lineHeight];
    v24 = v23;

    if (*(v20 + 16) == v24)
    {
      *(v20 + 16) = v24;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v26 - 2) = v20;
      *(&v26 - 1) = v24;
      v27 = v20;
      sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
      sub_213F4CB70();
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_213E3E950(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UILabelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
  sub_213F4ED40();
  result = [a1 font];
  if (result)
  {
    v6 = result;
    [result lineHeight];
    v8 = v7;

    if (*(v10 + 16) == v8)
    {
      *(v10 + 16) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
      sub_213F4CB70();
    }

    return [a1 setPreferredMaxLayoutWidth_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E3EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView, &unk_213F586C4);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E3EBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView, &unk_213F586C4);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E3EC38(uint64_t a1)
{
  sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView, &unk_213F586C4);
  sub_213F4DB60();
  __break(1u);
}

uint64_t FadingLabelViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FadingLabelViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *FadingLabelViewModel.init(text:symbols:lineLimit:showMore:suffixLabel:font:color:textAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, char a11)
{
  sub_213F4CB30();
  result = type metadata accessor for FadingLabelViewModel(0);
  v19 = (a8 + result[5]);
  *v19 = a1;
  v19[1] = a2;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = a4;
  v20 = (a8 + result[8]);
  *v20 = a5;
  v20[1] = a6;
  *(a8 + result[9]) = a7;
  *(a8 + result[10]) = a9;
  v21 = a8 + result[11];
  *v21 = a10;
  *(v21 + 8) = a11 & 1;
  return result;
}

uint64_t sub_213E3EE68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D3B0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t FadingLabelView.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for FadingLabelView(0);
  v9 = (a4 + v8[7]);
  type metadata accessor for LabelMetrics(0);
  *(swift_allocObject() + 16) = 0;
  sub_213F4CBB0();
  sub_213F4EA90();
  *v9 = v16;
  v10 = a4 + v8[8];
  type metadata accessor for CGSize(0);
  sub_213F4EA90();
  *v10 = v16;
  *(v10 + 2) = v17;
  v11 = a4 + v8[9];
  sub_213F4EA90();
  *v11 = v16;
  *(v11 + 2) = v17;
  v12 = a4 + v8[10];
  sub_213F4EA90();
  *v12 = v16;
  *(v12 + 2) = v17;
  v13 = a4 + v8[11];
  sub_213F4EA90();
  *v13 = v16;
  *(v13 + 1) = *(&v16 + 1);
  result = sub_213E4266C(a1, a4 + v8[5], type metadata accessor for FadingLabelViewModel);
  v15 = (a4 + v8[6]);
  *v15 = a2;
  v15[1] = a3;
  return result;
}

void sub_213E3F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9770, &unk_213F5C6C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v8 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v9 = sub_213F4F220();
  v10 = [v8 initWithString_];

  v11 = *MEMORY[0x277D740C0];
  v71 = a4;
  v65 = a4;

  v12 = sub_213F4F850();
  v13 = v10;
  v14 = &off_278174000;
  [v13 addAttribute:v11 value:v12 range:{0, objc_msgSend(v13, sel_length)}];
  swift_unknownObjectRelease();
  v15 = &off_278174000;
  if ([v13 length] >= 1)
  {
    v16 = 0;
    v67 = 0;
    v64 = v68 + 32;
LABEL_3:
    v66 = v64 + 16 * v67;
    while (1)
    {
      if (v67 >= *(v68 + 16))
      {
        goto LABEL_12;
      }

      v17 = [v13 *(v15 + 445)];
      v18 = sub_213F4F250();
      v20 = v19;

      v71 = v18;
      v72 = v20;
      v69 = 16421;
      v70 = 0xE200000000000000;
      if (__OFSUB__([v13 v14[443]], v16))
      {
        break;
      }

      v21 = v15;
      v22 = [v13 *(v15 + 445)];
      sub_213F4F250();

      sub_213F4F500();

      v23 = sub_213F4CB60();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      sub_213DBC9EC();
      v24 = sub_213F4F6D0();
      v26 = v25;
      v28 = v27;
      sub_213DE36FC(v7, &qword_27C8F9770, &unk_213F5C6C0);

      if ((v28 & 1) == 0)
      {

        v29 = sub_213F4F220();

        v30 = [objc_opt_self() systemImageNamed_];

        if (v30)
        {
          sub_213E15130(0, &qword_27C8F9680, 0x277D75348);

          v31 = sub_213F4F5F0();
          v32 = [v30 imageWithTintColor:v31 renderingMode:1];

          v14 = &off_278174000;
          if (v32)
          {
            v33 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
            [v33 setImage_];
            v34 = [objc_opt_self() attributedStringWithAttachment_];
            v71 = v24;
            v72 = v26;
            v35 = [v13 v21 + 376];
            v36 = sub_213F4F250();
            v38 = v37;

            v69 = v36;
            v70 = v38;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9778, &unk_213F58930);
            sub_213DE3AE4(&qword_27C8F9780, &qword_27C8F9778, &unk_213F58930, MEMORY[0x277D83D30]);
            v39 = sub_213F4F6A0();
            [v13 replaceCharactersInRange:v39 withAttributedString:{v40, v34}];
            v41 = [v34 length];

            v16 = v41 + v39;
            if (!__OFADD__(v39, v41))
            {
              ++v67;
              v14 = &off_278174000;
              v15 = v21;
              if (v16 < [v13 length])
              {
                goto LABEL_3;
              }

              goto LABEL_12;
            }

LABEL_16:
            __break(1u);
            return;
          }
        }
      }

      ++v16;
      v15 = v21;
      if (v16 >= [v13 v14[443]])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  while (1)
  {
    v42 = [v13 *(v15 + 445)];
    v43 = sub_213F4F250();
    v45 = v44;

    v71 = v43;
    v72 = v45;
    v69 = 16421;
    v70 = 0xE200000000000000;
    [v13 length];
    v46 = [v13 *(v15 + 445)];
    sub_213F4F250();

    sub_213F4F500();

    v47 = sub_213F4CB60();
    (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
    sub_213DBC9EC();
    v48 = sub_213F4F6D0();
    v50 = v49;
    v52 = v51;
    sub_213DE36FC(v7, &qword_27C8F9770, &unk_213F5C6C0);

    if (v52)
    {
      break;
    }

    v71 = v48;
    v72 = v50;
    v53 = [v13 *(v15 + 445)];
    v54 = sub_213F4F250();
    v56 = v55;

    v69 = v54;
    v70 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9778, &unk_213F58930);
    sub_213DE3AE4(&qword_27C8F9780, &qword_27C8F9778, &unk_213F58930, MEMORY[0x277D83D30]);
    v57 = sub_213F4F6A0();
    v59 = v58;
    v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v61 = sub_213F4F220();
    v62 = [v60 initWithString_];

    [v13 replaceCharactersInRange:v57 withAttributedString:{v59, v62}];
  }
}

uint64_t sub_213E3F9B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FadingLabelView(0);
  v5 = (v4 - 8);
  v59 = *(v4 - 8);
  v64 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + v5[7];
  v8 = type metadata accessor for FadingLabelViewModel(0);
  v9 = v8[6];
  v10 = (v7 + v8[5]);
  v11 = *v10;
  v62 = v10[1];
  v63 = v11;
  v61 = *(v7 + v9);
  v12 = *(v7 + v8[10]);
  sub_213E3F23C(v11, v62, v61, v12);
  v14 = v13;
  v50 = *(v7 + v8[7]);
  v15 = v7 + v8[11];
  v52 = *v15;
  v16 = v52;
  v17 = *(v15 + 8);
  v51 = v17;
  v18 = (v1 + v5[12]);
  v19 = *v18;
  v20 = v18[1];
  v60 = v18[2];
  v66 = v19;
  v67 = v20;
  v68 = v60;

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  v21 = v65;
  v22 = (v1 + v5[9]);
  v47 = v1;
  v23 = *v22;
  v56 = v22[1];
  v57 = v23;
  v66 = v23;
  v67 = v56;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
  sub_213F4EAA0();
  v24 = *(v7 + v8[9]);
  *a1 = swift_getKeyPath();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for UILabelView(0);
  *(a1 + v25[5]) = v14;
  *(a1 + v25[6]) = v50;
  *(a1 + v25[7]) = v12;
  v26 = a1 + v25[8];
  *v26 = v16;
  v26[8] = v17;
  *(a1 + v25[9]) = v21;
  v50 = type metadata accessor for LabelMetrics(0);
  v49 = sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
  v27 = v24;

  v28 = v27;
  v48 = v28;
  sub_213F4ED60();
  *(a1 + v25[11]) = v28;
  KeyPath = swift_getKeyPath();
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9748, &qword_213F58900) + 36);
  *v30 = KeyPath;
  v30[8] = 0;
  v31 = v55;
  sub_213E42608(v2, v55);
  v32 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v33 = swift_allocObject();
  sub_213E4266C(v31, v33 + v32, type metadata accessor for FadingLabelView);
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9750, &qword_213F58908) + 36));
  *v34 = sub_213E42A54;
  v34[1] = 0;
  v34[2] = sub_213E42988;
  v34[3] = v33;
  sub_213E3F23C(v63, v62, v61, v12);
  v36 = v35;
  v66 = v19;
  v67 = v20;
  v68 = v60;
  sub_213F4EAA0();
  v37 = v65;
  v66 = v57;
  v67 = v56;
  sub_213F4EAA0();
  v38 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9758, &qword_213F58910) + 36));
  *v38 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v38 + v25[5]) = v36;
  *(v38 + v25[6]) = 0;
  *(v38 + v25[7]) = v12;
  v39 = v38 + v25[8];
  *v39 = v52;
  v39[8] = v51;
  *(v38 + v25[9]) = v37;
  sub_213F4ED60();
  *(v38 + v25[11]) = v48;
  sub_213E42608(v47, v31);
  v40 = swift_allocObject();
  sub_213E4266C(v31, v40 + v32, type metadata accessor for FadingLabelView);
  v41 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9760, &qword_213F58918) + 36));
  *v41 = sub_213E42A54;
  v41[1] = 0;
  v41[2] = sub_213E42A24;
  v41[3] = v40;
  v42 = sub_213F4EEE0();
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9768, &unk_213F58920);
  v46 = (v38 + *(result + 36));
  *v46 = v42;
  v46[1] = v44;
  return result;
}

uint64_t sub_213E3FF18(double *a1, uint64_t a2)
{
  type metadata accessor for FadingLabelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAB0();
  sub_213F4EAA0();
  sub_213F4EAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E4004C(double *a1, uint64_t a2)
{
  type metadata accessor for FadingLabelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAB0();
  sub_213F4EAA0();
  sub_213F4EAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E40180(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_213F4E230();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 fontDescriptor];
  v10 = [v9 objectForKey_];

  if (v10)
  {
    sub_213F4F6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_213DE36FC(v23, &unk_27C8F8BC0, &qword_213F563F0);
    goto LABEL_8;
  }

  type metadata accessor for TextStyle(0);
  if (!swift_dynamicCast())
  {
LABEL_8:
    v11 = *MEMORY[0x277D76918];
    goto LABEL_9;
  }

  v11 = v20[1];
LABEL_9:
  v12 = v11;
  sub_213E3DA3C(v12, v8);
  v13 = sub_213E3E0C8();
  sub_213E3D964(v14, v13);
  v15 = *MEMORY[0x277CE0990];
  v16 = sub_213F4E0F0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v4, v15, v16);
  (*(v17 + 56))(v4, 0, 1, v16);
  sub_213F4E1A0();
  sub_213DE36FC(v4, &qword_27C8F7668, &qword_213F52190);
  v18 = sub_213F4E1D0();

  (*(v6 + 8))(v8, v5);
  return v18;
}

uint64_t FadingLabelView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4DA60();
  v4 = sub_213F4D860();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9658, &qword_213F58558);
  return sub_213E404C0(v1, a1 + *(v5 + 44));
}

uint64_t sub_213E404C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_213F4DCA0();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9690, &qword_213F58798);
  MEMORY[0x28223BE20](v56);
  v57 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9698, &qword_213F587A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96A0, &qword_213F587A8);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v63 = a1;
  sub_213E3F9B0((&v55 - v14));
  v16 = sub_213F4EEE0();
  v62 = v17;
  v61 = sub_213F4DA40();
  LOBYTE(v69[0]) = 0;
  sub_213E40CD8(a1, &v89);
  v83 = *&v91[160];
  v84 = *&v91[176];
  v79 = *&v91[96];
  v80 = *&v91[112];
  v81 = *&v91[128];
  v82 = *&v91[144];
  v75 = *&v91[32];
  v76 = *&v91[48];
  v77 = *&v91[64];
  v78 = *&v91[80];
  v71 = v89;
  v72 = v90;
  v73 = *v91;
  v74 = *&v91[16];
  v86[12] = *&v91[160];
  v86[13] = *&v91[176];
  v86[8] = *&v91[96];
  v86[9] = *&v91[112];
  v86[10] = *&v91[128];
  v86[11] = *&v91[144];
  v86[4] = *&v91[32];
  v86[5] = *&v91[48];
  v86[6] = *&v91[64];
  v86[7] = *&v91[80];
  v86[0] = v89;
  v86[1] = v90;
  v85 = *&v91[192];
  v87 = *&v91[192];
  v86[2] = *v91;
  v86[3] = *&v91[16];
  sub_213DE3164(&v71, v88, &qword_27C8F96A8, &qword_213F587B0);
  sub_213DE36FC(v86, &qword_27C8F96A8, &qword_213F587B0);
  *(&v70[11] + 7) = v82;
  *(&v70[12] + 7) = v83;
  *(&v70[13] + 7) = v84;
  *(&v70[14] + 7) = v85;
  *(&v70[7] + 7) = v78;
  *(&v70[8] + 7) = v79;
  *(&v70[9] + 7) = v80;
  *(&v70[10] + 7) = v81;
  *(&v70[3] + 7) = v74;
  *(&v70[4] + 7) = v75;
  *(&v70[5] + 7) = v76;
  *(&v70[6] + 7) = v77;
  *(v70 + 7) = v71;
  *(&v70[1] + 7) = v72;
  *(&v70[2] + 7) = v73;
  *(&v88[13] + 1) = v70[11];
  *(&v88[14] + 1) = v70[12];
  *(&v88[15] + 1) = v70[13];
  v88[16] = *(&v70[13] + 15);
  *(&v88[9] + 1) = v70[7];
  *(&v88[10] + 1) = v70[8];
  *(&v88[11] + 1) = v70[9];
  *(&v88[12] + 1) = v70[10];
  *(&v88[5] + 1) = v70[3];
  *(&v88[6] + 1) = v70[4];
  *(&v88[7] + 1) = v70[5];
  *(&v88[8] + 1) = v70[6];
  *(&v88[2] + 1) = v70[0];
  *(&v88[3] + 1) = v70[1];
  v18 = v69[0];
  v19 = v16;
  *&v88[0] = v16;
  v21 = v61;
  v20 = v62;
  *(&v88[0] + 1) = v62;
  v88[1] = v61;
  LOBYTE(v88[2]) = v69[0];
  *(&v88[4] + 1) = v70[2];
  v22 = *(v11 + 44);
  v23 = v15;
  memcpy(&v15[v22], v88, 0x110uLL);
  *&v91[177] = v70[11];
  *&v91[193] = v70[12];
  v92[0] = v70[13];
  *(v92 + 15) = *(&v70[13] + 15);
  *&v91[113] = v70[7];
  *&v91[129] = v70[8];
  *&v91[145] = v70[9];
  *&v91[161] = v70[10];
  *&v91[49] = v70[3];
  *&v91[65] = v70[4];
  *&v91[81] = v70[5];
  *&v91[97] = v70[6];
  *&v91[1] = v70[0];
  *&v91[17] = v70[1];
  *&v89 = v19;
  *(&v89 + 1) = v20;
  v90 = v21;
  v24 = v63;
  v91[0] = v18;
  *&v91[33] = v70[2];
  sub_213DE3164(v88, v69, &qword_27C8F96B0, &qword_213F587B8);
  sub_213DE36FC(&v89, &qword_27C8F96B0, &qword_213F587B8);
  v25 = type metadata accessor for FadingLabelView(0);
  v26 = v24 + v25[5];
  v27 = (v26 + *(type metadata accessor for FadingLabelViewModel(0) + 32));
  v28 = v27[1];
  if (v28 && (v29 = *v27, v30 = v24 + v25[11], v31 = *v30, v32 = *(v30 + 8), LOBYTE(v69[0]) = v31, v69[1] = v32, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0), sub_213F4EAA0(), v68 == 1) && (v33 = (v24 + v25[6]), (v34 = *v33) != 0))
  {
    v35 = v33[1];
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    MEMORY[0x28223BE20](v36);
    *(&v55 - 4) = v24;
    *(&v55 - 3) = v29;
    *(&v55 - 2) = v28;
    sub_213DD74C4(v34, v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C8, &qword_213F587D8);
    sub_213E422BC();
    v37 = v15;
    v38 = v57;
    sub_213F4EB00();
    v39 = [objc_opt_self() labelColor];
    v40 = sub_213F4E870();
    KeyPath = swift_getKeyPath();
    v69[0] = v40;
    v42 = sub_213F4D0D0();
    v43 = &v38[*(v56 + 36)];
    *v43 = KeyPath;
    v43[1] = v42;
    v44 = v58;
    sub_213F4DC90();
    sub_213E42524();
    sub_213E42258(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v45 = v65;
    v46 = v60;
    sub_213F4E3B0();
    sub_213DD7558(v34, v35);
    (*(v59 + 8))(v44, v46);
    v47 = v38;
    v23 = v37;
    sub_213DE36FC(v47, &qword_27C8F9690, &qword_213F58798);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v45 = v65;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96B8, &qword_213F587C0);
  (*(*(v49 - 8) + 56))(v45, v48, 1, v49);
  v50 = v64;
  sub_213DE3164(v23, v64, &qword_27C8F96A0, &qword_213F587A8);
  v51 = v66;
  sub_213DC5D00(v45, v66);
  v52 = v67;
  sub_213DE3164(v50, v67, &qword_27C8F96A0, &qword_213F587A8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C0, &unk_213F587C8);
  sub_213DC5D00(v51, v52 + *(v53 + 48));
  sub_213DE36FC(v45, &qword_27C8F9698, &qword_213F587A0);
  sub_213DE36FC(v23, &qword_27C8F96A0, &qword_213F587A8);
  sub_213DE36FC(v51, &qword_27C8F9698, &qword_213F587A0);
  return sub_213DE36FC(v50, &qword_27C8F96A0, &qword_213F587A8);
}

double sub_213E40CD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4E8F0();
  v5 = type metadata accessor for FadingLabelView(0);
  v6 = (a1 + *(v5 + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v57) = v7;
  *(&v57 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v52 == 1)
  {
    v26 = sub_213F4D8A0();
    sub_213E4110C(a1, &v57);
    v34 = v63;
    v35 = v64;
    v36 = v65;
    v30 = v59;
    v31 = v60;
    v32 = v61;
    v33 = v62;
    v28 = v57;
    v29 = v58;
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v37 = v66;
    *&v47 = v66;
    v38 = v57;
    v39 = v58;
    sub_213DE3164(&v28, &v52, &qword_27C8F9738, &qword_213F588C0);
    sub_213DE36FC(&v38, &qword_27C8F9738, &qword_213F588C0);
    *&v27[23] = v29;
    *&v27[87] = v33;
    *&v27[71] = v32;
    *&v27[55] = v31;
    *&v27[39] = v30;
    *&v27[135] = v36;
    *&v27[119] = v35;
    *&v27[103] = v34;
    *&v27[151] = v37;
    *&v27[7] = v28;
    v9 = (a1 + *(v5 + 28));
    v11 = *v9;
    v10 = v9[1];
    *&v57 = v11;
    *(&v57 + 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
    sub_213F4EAA0();
    v12 = v52;
    swift_getKeyPath();
    *&v57 = v12;
    sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
    sub_213F4CB80();

    sub_213F4EEE0();
    sub_213F4D0C0();
    *(&v53[6] + 1) = *&v27[96];
    *(&v53[7] + 1) = *&v27[112];
    *(&v53[8] + 1) = *&v27[128];
    v53[9] = *&v27[143];
    *(&v53[2] + 1) = *&v27[32];
    *(&v53[3] + 1) = *&v27[48];
    *(&v53[4] + 1) = *&v27[64];
    *(&v53[5] + 1) = *&v27[80];
    *(v53 + 1) = *v27;
    v52 = v26;
    LOBYTE(v53[0]) = 0;
    *(&v53[1] + 1) = *&v27[16];
    nullsub_1();
    v67 = v53[9];
    v68 = v54;
    v69 = v55;
    v70 = v56;
    v63 = v53[5];
    v64 = v53[6];
    v65 = v53[7];
    v66 = v53[8];
    v59 = v53[1];
    v60 = v53[2];
    v61 = v53[3];
    v62 = v53[4];
    v57 = v52;
    v58 = v53[0];
  }

  else
  {
    sub_213E42748(&v57);
  }

  v13 = v66;
  v53[9] = v67;
  v54 = v68;
  v14 = v68;
  v15 = v69;
  v55 = v69;
  v56 = v70;
  v16 = v63;
  v17 = v62;
  v53[5] = v63;
  v53[6] = v64;
  v18 = v64;
  v19 = v65;
  v53[7] = v65;
  v53[8] = v66;
  v20 = v59;
  v21 = v58;
  v53[1] = v59;
  v53[2] = v60;
  v22 = v60;
  v23 = v61;
  v53[3] = v61;
  v53[4] = v62;
  v24 = v57;
  v52 = v57;
  v53[0] = v58;
  v48 = v67;
  v49 = v68;
  v50 = v69;
  v51 = v70;
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  v40 = v59;
  v41 = v60;
  v42 = v61;
  v43 = v62;
  v38 = v57;
  v39 = v58;
  *(a2 + 168) = v67;
  *(a2 + 184) = v14;
  *(a2 + 200) = v15;
  *(a2 + 216) = v70;
  *(a2 + 104) = v16;
  *(a2 + 120) = v18;
  *(a2 + 136) = v19;
  *(a2 + 152) = v13;
  *(a2 + 40) = v20;
  *(a2 + 56) = v22;
  *(a2 + 72) = v23;
  *(a2 + 88) = v17;
  *(a2 + 8) = v24;
  *a2 = v4;
  *(a2 + 24) = v21;

  sub_213DE3164(&v38, &v28, &qword_27C8F9730, &qword_213F588B8);
  sub_213DE36FC(&v52, &qword_27C8F9730, &qword_213F588B8);

  return result;
}

void sub_213E4110C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D3B0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-v9];
  v11 = sub_213F4E8F0();
  sub_213E3EE68(v10);
  (*(v5 + 104))(v8, *MEMORY[0x277CDFA90], v4);
  v12 = sub_213F4D3A0();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_213F51DE0;
  if (v12)
  {
    *(v14 + 32) = sub_213F4E8D0();
    v15 = sub_213F4E8F0();
  }

  else
  {
    *(v14 + 32) = sub_213F4E8F0();
    v15 = sub_213F4E8D0();
  }

  *(v14 + 40) = v15;
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v14);
  sub_213F4D2C0();
  v16 = type metadata accessor for FadingLabelView(0);
  v17 = (a1 + v16[7]);
  v19 = *v17;
  v18 = v17[1];
  *&v37 = v19;
  *(&v37 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
  sub_213F4EAA0();
  v20 = *&v35[0];
  swift_getKeyPath();
  *&v37 = v20;
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics, &unk_213F58754);
  sub_213F4CB80();

  sub_213F4EEE0();
  sub_213F4D0C0();
  v43 = v49;
  v44 = v50;
  *&v45 = v51;
  v21 = sub_213F4E8D0();
  v22 = a1 + v16[5];
  if (*(v22 + *(type metadata accessor for FadingLabelViewModel(0) + 32) + 8))
  {
    v23 = (a1 + v16[8]);
    v24 = *(v23 + 2);
    v37 = *v23;
    *&v38 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
    sub_213F4EAA0();
  }

  sub_213F4EEE0();
  sub_213F4D0C0();
  v25 = v45;
  v26 = v46;
  v35[2] = v45;
  v35[3] = v46;
  v27 = v47;
  v35[4] = v47;
  v28 = v43;
  v35[0] = v43;
  v35[1] = v44;
  *(a2 + 24) = v44;
  *(a2 + 8) = v28;
  v29 = v52;
  v30 = v53;
  v31 = v54;
  v32 = v48;
  v36 = v48;
  v34[8] = v53;
  v34[0] = v55;
  v33 = v55;
  *a2 = v11;
  *(a2 + 72) = v27;
  *(a2 + 56) = v26;
  *(a2 + 40) = v25;
  *(a2 + 88) = v32;
  *(a2 + 96) = v21;
  *(a2 + 104) = v29;
  *(a2 + 112) = v30;
  *(a2 + 120) = v31;
  *(a2 + 128) = v33;
  *(a2 + 136) = v56;

  sub_213DE3164(v35, &v37, &qword_27C8F94E8, &unk_213F65730);
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  sub_213DE36FC(&v37, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E4157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v45 = a4;
  v7 = type metadata accessor for FadingLabelView(0);
  v8 = v7 - 8;
  v48 = *(v7 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96E8, &qword_213F587E8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9718, &qword_213F58840);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = &v39 - v13;
  v15 = a1 + *(v8 + 28);
  v16 = type metadata accessor for FadingLabelViewModel(0);
  v41 = sub_213E40180(*(v15 + *(v16 + 36)));
  v49 = a2;
  v50 = a3;
  sub_213DBC9EC();

  v17 = sub_213F4E310();
  v39 = v18;
  v40 = v19;
  v21 = v20;
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D10, &qword_213F587F0) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D28, &qword_213F5CC80) + 28);
  v24 = *MEMORY[0x277CE0B48];
  v25 = sub_213F4E2D0();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  (*(v26 + 56))(v22 + v23, 0, 1, v25);
  *v22 = swift_getKeyPath();
  v27 = v39;
  *v12 = v17;
  *(v12 + 1) = v27;
  v12[16] = v21 & 1;
  *(v12 + 3) = v40;
  KeyPath = swift_getKeyPath();
  v29 = &v12[*(v10 + 36)];
  v30 = v41;
  *v29 = KeyPath;
  v29[1] = v30;

  sub_213F4E180();
  v31 = sub_213E4246C();
  sub_213F4E370();
  sub_213DE36FC(v12, &qword_27C8F96E8, &qword_213F587E8);
  v49 = 0x7478655465726F4DLL;
  v50 = 0xE800000000000000;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  v49 = v10;
  v50 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v42;
  sub_213F4E6D0();

  (*(v44 + 8))(v14, v33);
  v34 = v46;
  sub_213E42608(v43, v46);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  sub_213E4266C(v34, v36 + v35, type metadata accessor for FadingLabelView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C8, &qword_213F587D8);
  v38 = (v32 + *(result + 36));
  *v38 = sub_213E42A54;
  v38[1] = 0;
  v38[2] = sub_213E426D4;
  v38[3] = v36;
  return result;
}

uint64_t sub_213E41A00(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for FadingLabelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t sub_213E41A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4DA60();
  v4 = sub_213F4D860();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9658, &qword_213F58558);
  return sub_213E404C0(v1, a1 + *(v5 + 44));
}

uint64_t sub_213E41B84(uint64_t a1)
{
  result = sub_213F4CBC0();
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

void sub_213E41C4C(uint64_t a1)
{
  sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    sub_213E41FDC(319, &qword_281182498, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_213E41FDC(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213E15130(319, &qword_281182338, 0x277D74300);
        if (v4 <= 0x3F)
        {
          sub_213E41F78(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E41DD8(uint64_t a1)
{
  sub_213E41F78(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FadingLabelViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_213E0C0F8(319);
      if (v3 <= 0x3F)
      {
        sub_213E41F78(319, &qword_2811827D8, type metadata accessor for LabelMetrics, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213E41F78(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213E41FDC(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E41F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213E41FDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E42074(uint64_t a1)
{
  sub_213E41F78(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E15130(319, &qword_2811823E0, 0x277CCA898);
    if (v2 <= 0x3F)
    {
      sub_213E41F78(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213E41F78(319, &qword_2811825F0, type metadata accessor for LabelMetrics, MEMORY[0x277CE12F8]);
        if (v4 <= 0x3F)
        {
          sub_213E15130(319, &qword_281182338, 0x277D74300);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213E42258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_213E422A0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

unint64_t sub_213E422BC()
{
  result = qword_27C8F96D0;
  if (!qword_27C8F96D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96C8, &qword_213F587D8);
    sub_213E42374();
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96D0);
  }

  return result;
}

unint64_t sub_213E42374()
{
  result = qword_27C8F96D8;
  if (!qword_27C8F96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E0, &qword_213F587E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E8, &qword_213F587E8);
    sub_213E4246C();
    swift_getOpaqueTypeConformance2();
    sub_213E42258(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96D8);
  }

  return result;
}

unint64_t sub_213E4246C()
{
  result = qword_27C8F96F0;
  if (!qword_27C8F96F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E8, &qword_213F587E8);
    sub_213DEEABC();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96F0);
  }

  return result;
}

unint64_t sub_213E42524()
{
  result = qword_27C8F9700;
  if (!qword_27C8F9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9690, &qword_213F58798);
    sub_213DE3AE4(&qword_27C8F9708, &qword_27C8F9710, &unk_213F58830, MEMORY[0x277CDF028]);
    sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9700);
  }

  return result;
}

uint64_t sub_213E42608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FadingLabelView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E4266C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E426EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_213E42748(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for FadingLabelView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_213F4D3B0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);
  v6 = sub_213F4CB40();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for FadingLabelViewModel(0);

  if (*(v3 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213E429A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FadingLabelView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t FilterBarOption.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FilterBarOption.displayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FilterBarOption.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FilterBarOption.SubOption.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FilterBarOption.SubOption.isSelected.setter(char a1)
{
  result = type metadata accessor for FilterBarOption.SubOption(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for FilterBarOption.SubOption(0);
  v11 = *(v10 + 24);
  v12 = sub_213F4CA10();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  a7[*(v10 + 28)] = a6;
  return result;
}

uint64_t FilterBarOption.subOptions.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

void __swiftcall FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)(MapsDesign::FilterBarOption *__return_ptr retstr, Swift::String id, Swift::String_optional systemImageName, Swift::String_optional displayName, Swift::String_optional accessibilityIdentifier, Swift::String_optional accessibilityLabel, Swift::Bool showDropdown, Swift::Bool isSelected, Swift::OpaquePointer subOptions)
{
  object = accessibilityIdentifier.value._object;
  countAndFlagsBits = accessibilityIdentifier.value._countAndFlagsBits;
  v11 = displayName.value._object;
  v12 = displayName.value._countAndFlagsBits;
  v13 = systemImageName.value._countAndFlagsBits;
  v14 = id._object;
  v15 = id._countAndFlagsBits;
  rawValue = subOptions._rawValue;
  v18 = accessibilityLabel.value._object;
  if (accessibilityLabel.value._object)
  {
    v19 = accessibilityLabel.value._countAndFlagsBits;
  }

  else
  {
    v22 = systemImageName.value._object;

    systemImageName.value._object = v22;
    rawValue = subOptions._rawValue;
    v19 = v12;
    v18 = v11;
  }

  v20 = 0xEF6E6F6974704F72;
  if (object)
  {
    v20 = object;
  }

  retstr->id._countAndFlagsBits = v15;
  retstr->id._object = v14;
  v21 = 0x61427265746C6946;
  if (object)
  {
    v21 = countAndFlagsBits;
  }

  retstr->systemImageName.value._countAndFlagsBits = v13;
  retstr->systemImageName.value._object = systemImageName.value._object;
  retstr->displayName.value._countAndFlagsBits = v12;
  retstr->displayName.value._object = v11;
  retstr->showDropdown = showDropdown;
  retstr->isSelected = isSelected;
  retstr->accessibilityIdentifier.value._countAndFlagsBits = v21;
  retstr->accessibilityIdentifier.value._object = v20;
  retstr->accessibilityLabel.value._countAndFlagsBits = v19;
  retstr->accessibilityLabel.value._object = v18;
  retstr->subOptions._rawValue = rawValue;
}

MapsDesign::FilterBarViewModel __swiftcall FilterBarViewModel.init(options:accessibilityIdentifier:)(Swift::OpaquePointer options, Swift::String_optional accessibilityIdentifier)
{
  *v2 = options;
  *(v2 + 8) = accessibilityIdentifier;
  result.accessibilityIdentifier = accessibilityIdentifier;
  result.options = options;
  return result;
}

void sub_213E42E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = sub_213F4CA10();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97C8, &qword_213F58D20);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v44 = &v35 - v11;
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v36 = a1;
    v50 = MEMORY[0x277D84F90];
    sub_213F4F780();
    v42 = type metadata accessor for FilterBarOption.SubOption(0);
    v43 = a2;
    v14 = *(v42 - 8);
    v15 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = sub_213E15130(0, &qword_281182308, 0x277D750C8);
    v16 = sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
    v17 = 0;
    v39 = "12LabelMetrics";
    v40 = v16;
    v38 = *(v14 + 72);
    v37 = (v6 + 16);
    do
    {
      v31 = v44;
      v30 = v45;
      v32 = *(v45 + 48);
      sub_213E45C70(v15, &v44[v32], type metadata accessor for FilterBarOption.SubOption);
      *v10 = v17;
      v33 = v10 + *(v30 + 48);
      sub_213E45CD8(&v31[v32], v33, type metadata accessor for FilterBarOption.SubOption);
      if (*(v33 + 24))
      {
        v18 = sub_213F4F220();
        v19 = [objc_opt_self() _systemImageNamed_];
      }

      else
      {
        v19 = 0;
      }

      v20 = swift_allocObject();
      v21 = v48;
      v22 = v49;
      v20[2] = v43;
      v20[3] = v21;
      v20[4] = v22;
      v20[5] = v17;
      v23 = v19;

      v24 = sub_213F4F630();
      v25 = v42;
      (*v37)(v46, v33 + *(v42 + 24), v47);
      v26 = v24;
      v27 = sub_213F4F5A0();
      [v26 setAttributedTitle_];

      ++v17;
      [v26 setState_];
      v28 = v26;
      v29 = sub_213F4F220();
      [v28 setAccessibilityIdentifier_];

      sub_213DE36FC(v10, &qword_27C8F97C8, &qword_213F58D20);
      sub_213F4F760();
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v15 += v38;
    }

    while (v12 != v17);
    v13 = v50;
    a1 = v36;
  }

  if (v13 >> 62)
  {
    sub_213E15130(0, &unk_281182428, 0x277D75720);

    sub_213F4F7D0();
  }

  else
  {

    sub_213F4F840();
    sub_213E15130(0, &unk_281182428, 0x277D75720);
  }

  sub_213E15130(0, &qword_281182330, 0x277D75710);
  v34 = sub_213F4F5D0();
  [a1 setMenu_];
}

id sub_213E43348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = sub_213F4F650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4F680();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_213F4F670();
  (*(v7 + 104))(v9, *MEMORY[0x277D74FD8], v6);
  sub_213F4F660();
  v17 = [objc_opt_self() clearColor];
  v18 = sub_213F4F640();
  sub_213F4CCF0();
  v18(v25, 0);
  sub_213E15130(0, &qword_281182300, 0x277D75220);
  (*(v11 + 16))(v14, v16, v10);
  v19 = sub_213F4F690();
  v20 = sub_213F4F220();
  [v19 setAccessibilityIdentifier_];

  v21 = sub_213F4F220();
  [v19 setTitle:v21 forState:0];

  [v19 setShowsMenuAsPrimaryAction_];
  [v19 setAccessibilityTraits_];

  sub_213E42E0C(v19, a2, a3, v24);
  (*(v11 + 8))(v16, v10);
  return v19;
}

void sub_213E43658(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    sub_213E42E0C(v7, v3, v4, v5);
  }
}

uint64_t sub_213E43700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E45D70();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E43764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E45D70();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E437C8(uint64_t a1)
{
  sub_213E45D70();
  sub_213F4DB60();
  __break(1u);
}

double FilterBarButton.init(model:allowGlass:tapHandler:)@<D0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  HIDWORD(v26) = a2;
  v7 = sub_213F4E230();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v32 = a1[2];
  v33 = v11;
  v12 = a1[5];
  v34 = a1[4];
  v35 = v12;
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for FilterBarButton(0);
  v15 = a5 + v14[5];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v14[6];
  *(a5 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v17 = (a5 + v14[9]);
  v29 = 0x4031000000000000;
  v18 = *MEMORY[0x277CE0A68];
  v19 = *(v8 + 104);
  v19(v10, v18, v7);
  sub_213DEC3D4();
  sub_213F4CFE0();
  v29 = 0x4046000000000000;
  v19(v10, v18, v7);
  sub_213F4CFE0();
  v20 = (a5 + v14[7]);
  v21 = v33;
  v20[2] = v32;
  v20[3] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = v22;
  result = *&v30;
  v24 = v31;
  *v20 = v30;
  v20[1] = v24;
  *(a5 + v14[8]) = BYTE4(v26);
  v25 = v28;
  *v17 = v27;
  v17[1] = v25;
  return result;
}

__n128 FilterBarButton.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FilterBarButton(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  v6 = v1 + *(MEMORY[0x28223BE20](v4) + 28);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v33 = *(v6 + 16);
  v34 = v8;
  if (*(v6 + 49) == 1)
  {
    v10 = objc_opt_self();

    v31 = [v10 systemBlueColor];
    if (v9)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
      sub_213F4CFF0();
      v29 = v35;
      sub_213F4E170();
      goto LABEL_6;
    }
  }

  else
  {

    v31 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v29 = 0x4026000000000000;
  sub_213F4E160();
LABEL_6:
  v12 = v11;
  v13 = *(v6 + 64);
  v32 = v7;
  if (v13)
  {
    v14 = *(v6 + 56);
    v27 = v13;
    v28 = v14;
  }

  else
  {
    v27 = 0xEF6E6F7474754272;
    v28 = 0x61427265746C6946;
  }

  v26 = *(v6 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
  sub_213F4CFF0();
  v15 = v35;
  sub_213E45C70(v2, &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FilterBarButton);
  v16 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v17 = swift_allocObject();
  sub_213E45CD8(&v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for FilterBarButton);
  LOBYTE(v35) = 0;
  v37 = 0;
  v36 = 0;
  v18 = *(v2 + *(v4 + 32));
  v19 = *(type metadata accessor for CardButton(0) + 24);
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v20 = v32;
  *a1 = v33;
  *(a1 + 8) = v20;
  v21 = MEMORY[0x277D768C8];
  *(a1 + 16) = v34;
  *(a1 + 24) = v9;
  result = *v21;
  v23 = *(v21 + 16);
  *(a1 + 32) = *v21;
  *(a1 + 48) = v23;
  *(a1 + 64) = v29;
  *(a1 + 72) = 0;
  *(a1 + 80) = v31;
  *(a1 + 88) = 1;
  *(a1 + 96) = sub_213E454B8;
  *(a1 + 104) = v17;
  v24 = v27;
  *(a1 + 112) = v28;
  *(a1 + 120) = v24;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = v26;
  *(a1 + 152) = v12;
  *(a1 + 160) = 0;
  *(a1 + 168) = v15;
  *(a1 + 176) = 0;
  *(a1 + 177) = v18;
  return result;
}

double FilterBar.init(model:allowGlass:tapHandler:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = sub_213F4D2F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  *v21 = *a1;
  v16 = *(a1 + 16);
  v17 = type metadata accessor for FilterBar(0);
  sub_213F4D2D0();
  (*(v10 + 16))(v13, v15, v9);
  sub_213F4EA90();
  (*(v10 + 8))(v15, v9);
  v18 = *(v17 + 32);
  *(a5 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  result = v21[0];
  *a5 = *v21;
  *(a5 + 16) = v16;
  *(a5 + 24) = a2;
  v20 = v22;
  *(a5 + 32) = a3;
  *(a5 + 40) = v20;
  return result;
}

uint64_t FilterBar.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  sub_213E45554();
  return sub_213F4DD40();
}

uint64_t sub_213E43FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97D0, &qword_213F58D28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97A0, &qword_213F589E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9798, &qword_213F589E0);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97D8, &qword_213F58D30);
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  MEMORY[0x28223BE20](v26);
  v18 = &v26 - v17;
  sub_213F4E010();
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97E0, &qword_213F58D38);
  sub_213E45DCC();
  sub_213F4CE50();
  v19 = sub_213DE3AE4(&qword_27C8F97A8, &qword_27C8F97A0, &qword_213F589E8, MEMORY[0x277CDD6E0]);
  sub_213F4E5E0();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for FilterBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
  v20 = a1;
  sub_213F4EAC0();
  v33 = v6;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_213F4E540();
  sub_213DE36FC(v5, &qword_27C8F97D0, &qword_213F58D28);
  (*(v28 + 8))(v13, v21);
  if (*(v20 + 16))
  {
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
  }

  else
  {
    v23 = 0x8000000213FA5660;
    v22 = 0xD000000000000013;
  }

  (*(v29 + 32))(v18, v16, v30);
  v24 = &v18[*(v26 + 36)];
  *v24 = v22;
  *(v24 + 1) = v23;
  v24[16] = 11;
  sub_213DC6810(v18, v31);
}

uint64_t sub_213E443E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FilterBar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *a2 = sub_213F4D8A0();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97F0, &qword_213F58D48);
  v19[1] = *a1;
  sub_213E45C70(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FilterBar);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_213E45CD8(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FilterBar);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97F8, &qword_213F58D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9800, &qword_213F58D58);
  sub_213DE3AE4(&qword_2811824D8, &qword_27C8F97F8, &qword_213F58D50, MEMORY[0x277D83980]);
  sub_213E45F04();
  sub_213E4617C();
  sub_213F4ECD0();
  LOBYTE(a1) = sub_213F4E040();
  sub_213F4CDA0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97E0, &qword_213F58D38);
  v18 = a2 + *(result + 36);
  *v18 = a1;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_213E44634@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9810, &qword_213F58D68);
  MEMORY[0x28223BE20](v81);
  v74 = &v73 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9820, &qword_213F58D78);
  MEMORY[0x28223BE20](v79);
  v80 = &v73 - v6;
  v77 = sub_213F4E230();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FilterBar(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = type metadata accessor for FilterBarButton(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v73 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9808, &qword_213F58D60);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = a1[5];
  v89 = a1[4];
  v90 = v23;
  v24 = a1[3];
  v87 = a1[2];
  v88 = v24;
  v25 = a1[1];
  v85 = *a1;
  v86 = v25;
  v26 = *(*(&v90 + 1) + 16);
  v76 = a2;
  v75 = *(a2 + 24);
  v78 = v20;
  if (v26)
  {
    *v16 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v27 = v16 + v13[5];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v13[6];
    *(v16 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v73 = (v16 + v13[9]);
    v84 = 0x4031000000000000;
    v29 = *MEMORY[0x277CE0A68];
    v30 = *(v7 + 104);
    v31 = v77;
    v30(v9, v29, v77);
    sub_213E461D0(&v85, v83);
    sub_213DEC3D4();
    sub_213F4CFE0();
    *&v83[0] = 0x4046000000000000;
    v30(v9, v29, v31);
    sub_213F4CFE0();
    v32 = (v16 + v13[7]);
    v33 = v88;
    v32[2] = v87;
    v32[3] = v33;
    v34 = v90;
    v32[4] = v89;
    v32[5] = v34;
    v35 = v86;
    *v32 = v85;
    v32[1] = v35;
    *(v16 + v13[8]) = v75;
    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton, &protocol conformance descriptor for FilterBarButton);
    v36 = v73;
    *v73 = 0;
    v36[1] = 0;
    v37 = v74;
    sub_213F4E620();
    sub_213E46208(v16);
    v38 = sub_213F4EEE0();
    v40 = v39;
    v41 = v37 + *(v81 + 36);
    sub_213E44FE8(&v85, v76);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9818, &qword_213F58D70) + 36));
    *v42 = v38;
    v42[1] = v40;
    sub_213DE3164(v37, v80, &qword_27C8F9810, &qword_213F58D68);
    swift_storeEnumTagMultiPayload();
    sub_213E45F90();
    sub_213E460C4();
    sub_213F4DBA0();
    v43 = v37;
    v44 = &qword_27C8F9810;
    v45 = &qword_213F58D68;
  }

  else
  {
    v74 = v22;
    sub_213E45C70(v76, &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FilterBar);
    v46 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v47 = swift_allocObject();
    v76 = v47;
    sub_213E45CD8(&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for FilterBar);
    v48 = (v47 + ((v12 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
    v49 = v88;
    v48[2] = v87;
    v48[3] = v49;
    v50 = v90;
    v48[4] = v89;
    v48[5] = v50;
    v51 = v86;
    *v48 = v85;
    v48[1] = v51;
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v52 = v18 + v13[5];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = v13[6];
    *(v18 + v53) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v73 = (v18 + v13[9]);
    v84 = 0x4031000000000000;
    v54 = *MEMORY[0x277CE0A68];
    v55 = *(v7 + 104);
    v56 = v77;
    v55(v9, v54, v77);
    sub_213E461D0(&v85, v83);
    sub_213E461D0(&v85, v83);
    sub_213DEC3D4();
    sub_213F4CFE0();
    *&v83[0] = 0x4046000000000000;
    v55(v9, v54, v56);
    sub_213F4CFE0();
    v57 = (v18 + v13[7]);
    v58 = v88;
    v57[2] = v87;
    v57[3] = v58;
    v59 = v90;
    v57[4] = v89;
    v57[5] = v59;
    v60 = v86;
    *v57 = v85;
    v57[1] = v60;
    *(v18 + v13[8]) = v75;
    v61 = v73;
    v62 = v76;
    *v73 = sub_213E46264;
    v61[1] = v62;
    if (v90)
    {
      v83[0] = __PAIR128__(v90, *(&v89 + 1));
      sub_213DBC9EC();

      v63 = sub_213F4E310();
      v65 = v64;
      v67 = v66;
      v68 = v80;
    }

    else
    {
      v63 = *(&v87 + 1);
      v68 = v80;
      if (*(&v87 + 1))
      {
        v83[0] = v87;
        sub_213DBC9EC();

        v63 = sub_213F4E310();
        v65 = v69;
        v67 = v70;
      }

      else
      {
        v67 = 0;
        v65 = 0xE000000000000000;
      }
    }

    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton, &protocol conformance descriptor for FilterBarButton);
    v71 = v74;
    sub_213F4E5B0();
    sub_213DBCA40(v63, v65, v67 & 1);

    sub_213E46208(v18);
    sub_213DE3164(v71, v68, &qword_27C8F9808, &qword_213F58D60);
    swift_storeEnumTagMultiPayload();
    sub_213E45F90();
    sub_213E460C4();
    sub_213F4DBA0();
    v43 = v71;
    v44 = &qword_27C8F9808;
    v45 = &qword_213F58D60;
  }

  return sub_213DE36FC(v43, v44, v45);
}

uint64_t sub_213E44FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterBar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + 88);
  sub_213E45C70(a2, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FilterBar);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_213E45CD8(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9 + v8, type metadata accessor for FilterBar);
  v10 = (v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v11;
  v12 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v12;
  v13 = *(a1 + 16);
  *v10 = *a1;
  v10[1] = v13;
  v23 = v7;
  v24 = sub_213E464D4;
  v25 = v9;
  v26 = *(a1 + 72);
  if (*(&v26 + 1))
  {
    v21 = v26;

    sub_213E461D0(a1, v22);
    sub_213DE3164(&v26, v22, &qword_27C8F9828, &qword_213F58D80);
    sub_213DBC9EC();
  }

  else
  {
    v14 = *(a1 + 40);
    if (!v14)
    {

      sub_213E461D0(a1, v22);
      v15 = 0;
      v19 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_6;
    }

    *&v21 = *(a1 + 32);
    *(&v21 + 1) = v14;

    sub_213E461D0(a1, v22);
    sub_213DBC9EC();
  }

  v15 = sub_213F4E310();
  v17 = v16;
  v19 = v18;
LABEL_6:
  sub_213E45C1C();
  sub_213F4E5B0();
  sub_213DBCA40(v15, v17, v19 & 1);
}

unint64_t sub_213E45274(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = a3[11];
  if (*(v4 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(a2 + 32);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(type metadata accessor for FilterBarOption.SubOption(0) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3);
  v10 = *v9;
  v11 = v9[1];

  v5(v6, v7, v10, v11);
}

Swift::Void __swiftcall FilterBar.resetScrollPosition()()
{
  v0 = sub_213F4D2F0();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for FilterBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
  sub_213F4EAA0();
  sub_213F4D2E0();
  sub_213F4EAB0();
}

uint64_t sub_213E45420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  sub_213E45554();
  return sub_213F4DD40();
}

uint64_t sub_213E454B8()
{
  v1 = type metadata accessor for FilterBarButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 44) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_213E45554()
{
  result = qword_27C8F9790;
  if (!qword_27C8F9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9788, &qword_213F589D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9798, &qword_213F589E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F97A0, &qword_213F589E8);
    sub_213DE3AE4(&qword_27C8F97A8, &qword_27C8F97A0, &qword_213F589E8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9790);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_213E456E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_213E45730(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_213E457C0(uint64_t a1)
{
  sub_213E45A18(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_213F4CA10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213E458B0(uint64_t a1)
{
  sub_213E45BA4(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E45A18(319, &qword_281183530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213E45BA4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213E0C0F8(319);
        if (v4 <= 0x3F)
        {
          sub_213DEEDC8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E45A18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E45A90(uint64_t a1)
{
  sub_213DE22E8();
  if (v1 <= 0x3F)
  {
    sub_213E45BA4(319, &qword_2811827C0, MEMORY[0x277CDF8A8], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_213E45BA4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E45BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213E45C1C()
{
  result = qword_281187EB0;
  if (!qword_281187EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281187EB0);
  }

  return result;
}

uint64_t sub_213E45C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E45CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E45D70()
{
  result = qword_281187EB8[0];
  if (!qword_281187EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187EB8);
  }

  return result;
}

unint64_t sub_213E45DCC()
{
  result = qword_2811831E8;
  if (!qword_2811831E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F97E0, &qword_213F58D38);
    sub_213DE3AE4(&qword_2811826F8, &qword_27C8F97E8, &qword_213F58D40, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831E8);
  }

  return result;
}

uint64_t sub_213E45E84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FilterBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213E44634(a1, v6, a2);
}

unint64_t sub_213E45F04()
{
  result = qword_281182B40;
  if (!qword_281182B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9800, &qword_213F58D58);
    sub_213E45F90();
    sub_213E460C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B40);
  }

  return result;
}

unint64_t sub_213E45F90()
{
  result = qword_281183428;
  if (!qword_281183428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9808, &qword_213F58D60);
    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton, &protocol conformance descriptor for FilterBarButton);
    sub_213E4607C(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183428);
  }

  return result;
}

uint64_t sub_213E4607C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213E460C4()
{
  result = qword_281183108;
  if (!qword_281183108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9810, &qword_213F58D68);
    sub_213E45F90();
    sub_213DE3AE4(&qword_281182C58, &qword_27C8F9818, &qword_213F58D70, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183108);
  }

  return result;
}

unint64_t sub_213E4617C()
{
  result = qword_281186940[0];
  if (!qword_281186940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281186940);
  }

  return result;
}

uint64_t sub_213E46208(uint64_t a1)
{
  v2 = type metadata accessor for FilterBarButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E46264()
{
  v1 = *(type metadata accessor for FilterBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + v2 + 32))(*(v0 + v3), *(v0 + v3 + 8), 0, 0);
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for FilterBar(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  v4 = sub_213F4D2F0();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D290();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_213E464D4(unint64_t a1)
{
  v3 = *(type metadata accessor for FilterBar(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_213E45274(a1, v1 + v4, v5);
}

uint64_t sub_213E46574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9880, &qword_213F59310);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9888, &qword_213F59318);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  sub_213F4DEC0();
  if (sub_213F4DED0())
  {
    v14 = 0.5;
  }

  else
  {
    v14 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v14;
  if (sub_213F4DED0())
  {
    v15 = 0.98;
  }

  else
  {
    v15 = 1.0;
  }

  sub_213F4F040();
  v17 = v16;
  v19 = v18;
  v20 = sub_213DE2B44(v9, v13, &qword_27C8F9880, &qword_213F59310);
  v21 = &v13[*(v11 + 44)];
  *v21 = v15;
  *(v21 + 1) = v15;
  *(v21 + 2) = v17;
  *(v21 + 3) = v19;
  v22 = MEMORY[0x216052350](v20, 0.5, 1.0, 0.0);
  v23 = sub_213F4DED0();
  sub_213DE2B44(v13, a1, &qword_27C8F9888, &qword_213F59318);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9890, &qword_213F59320);
  v25 = a1 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23 & 1;
  return result;
}

uint64_t sub_213E46818@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_213E468D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_213E469FC(v1, v2);
}

uint64_t sub_213E46918()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_213E469FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_213F4F830() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213E46B50(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004(v4);
  return sub_213E46C88;
}

uint64_t sub_213E46C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_213E46D6C()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_213E46E30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB70();
}

uint64_t (*sub_213E46F94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDEB98(v4);
  return sub_213E470CC;
}

uint64_t sub_213E470D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213E471F8()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_213E472BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E47420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

uint64_t (*sub_213E474AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDF100(v4);
  return sub_213E475E4;
}

uint64_t sub_213E47640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_213E47734@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 80);
  return result;
}

double sub_213E477F0(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 80) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E4790C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

uint64_t (*sub_213E47960(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E475F0(v4);
  return sub_213E47A98;
}

uint64_t sub_213E47AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_213E47BE8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 81);
  return result;
}

double sub_213E47CA4(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 81) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E47DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 81) = v2;
  return result;
}

uint64_t (*sub_213E47E14(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E47AA4(v4);
  return sub_213E47F4C;
}

uint64_t sub_213E47FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 82);
  return result;
}

uint64_t sub_213E4808C()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 82);
}

void sub_213E48140(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 82) == v2)
  {
    *(v1 + 82) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213E48264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 82) = v2;
  return result;
}

uint64_t (*sub_213E482B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E47F58(v4);
  return sub_213E483F0;
}

uint64_t sub_213E4844C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_213E48538()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213E485F0(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_213F4E890();

  if (v3)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

void sub_213E48738(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

uint64_t (*sub_213E487BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E483FC(v4);
  return sub_213E488F4;
}

uint64_t sub_213E48950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  v5 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_213E48A48()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 96);
}

double sub_213E48B00(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((*(v2 + 104) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 96);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 96) = *&a1;
    *(v2 + 104) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB70();

  return result;
}

uint64_t sub_213E48C4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

uint64_t (*sub_213E48CA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E48900(v4);
  return sub_213E48DDC;
}

uint64_t sub_213E48E38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 105);
  return result;
}

uint64_t sub_213E48F1C()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 105);
}

void sub_213E48FD0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 105) == v2)
  {
    *(v1 + 105) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213E490F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 105) = v2;
  return result;
}

uint64_t (*sub_213E49148(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E48DE8(v4);
  return sub_213E49280;
}

uint64_t sub_213E492DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  v5 = *(v3 + 120);
  *a2 = *(v3 + 112);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_213E493D4()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 112);
}

double sub_213E4948C(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((*(v2 + 120) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 112) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 112) = a1;
    *(v2 + 120) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB70();

  return result;
}

uint64_t sub_213E495D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

uint64_t (*sub_213E4962C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E4928C(v4);
  return sub_213E49764;
}

uint64_t GridButtonViewModel.__allocating_init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17)
{
  v22 = swift_allocObject();
  v23 = *a9;
  v24 = *a10;
  *(v22 + 96) = 0;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 104) = 1;
  *(v22 + 112) = 0;
  *(v22 + 120) = 1;
  sub_213F4CBB0();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  *(v22 + 48) = a5;
  *(v22 + 56) = a6;

  *(v22 + 64) = a7;
  *(v22 + 72) = a8;
  *(v22 + 80) = v23;
  *(v22 + 81) = v24;
  *(v22 + 82) = a11;
  *(v22 + 88) = a12;
  *(v22 + 96) = a13;
  *(v22 + 104) = a14 & 1;
  *(v22 + 105) = a15;

  sub_213E4948C(a16, a17 & 1);

  return v22;
}

uint64_t GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17)
{
  v23 = *a9;
  v24 = *a10;
  *(v17 + 96) = 0;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 104) = 1;
  *(v17 + 112) = 0;
  *(v17 + 120) = 1;
  sub_213F4CBB0();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  *(v17 + 48) = a5;
  *(v17 + 56) = a6;

  *(v17 + 64) = a7;
  *(v17 + 72) = a8;
  *(v17 + 80) = v23;
  *(v17 + 81) = v24;
  *(v17 + 82) = a11;
  *(v17 + 88) = a12;
  *(v17 + 96) = a13;
  *(v17 + 104) = a14 & 1;
  *(v17 + 105) = a15;

  sub_213E4948C(a16, a17 & 1);

  return v17;
}

char *GridButtonViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GridButtonViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_213E49B50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213E49D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GridButton(0);
  sub_213DE3164(v1 + *(v10 + 20), v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GridButton.init(model:tapHandler:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for GridButton(0);
  v8 = v7[5];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for GridButtonViewModel(0);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  result = sub_213F4ED60();
  v11 = (a4 + v7[8]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

double sub_213E4A0B0()
{
  v14 = sub_213F4D290();
  v0 = *(v14 - 8);
  v1 = MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v6 = v16;
  swift_getKeyPath();
  v16 = v6;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v7 = *(v6 + 56);

  if (v7)
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 10.0;
  }

  sub_213F4ED40();
  v9 = v15;
  swift_getKeyPath();
  v15 = v9;
  sub_213F4CB80();

  sub_213E49B50(v5);
  sub_213F4D280();
  sub_213F4D270();
  v10 = *(v0 + 8);
  v11 = v14;
  v10(v3, v14);
  v10(v5, v11);
  return v8;
}

uint64_t sub_213E4A314()
{
  v0 = sub_213F4CEA0();
  v15 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v6 = v17;
  swift_getKeyPath();
  v17 = v6;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v7 = *(v6 + 81);

  if (!v7)
  {
    return sub_213F4E8F0();
  }

  if (v7 == 1)
  {
    sub_213F4ED40();
    v8 = v16;
    swift_getKeyPath();
    v16 = v8;
    sub_213F4CB80();

    swift_beginAccess();
    v9 = *(v8 + 88);

    return v9;
  }

  sub_213E49D50(v5);
  v11 = v15;
  (*(v15 + 104))(v3, *MEMORY[0x277CDF3D0], v0);
  v12 = sub_213F4CE90();
  v13 = *(v11 + 8);
  v13(v3, v0);
  v13(v5, v0);
  if (v12)
  {
    return sub_213F4E8C0();
  }

  else
  {
    return sub_213F4E8F0();
  }
}

uint64_t sub_213E4A5C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_213F4E230();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v7 = v15;
  swift_getKeyPath();
  v15 = v7;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v8 = *(v7 + 80);

  v9 = *(v4 + 104);
  if (v8)
  {
    v9(v6, *MEMORY[0x277CE0A68], v3);
    v10 = sub_213F4E0F0();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    sub_213F4E180();
  }

  else
  {
    v9(v6, *MEMORY[0x277CE0A80], v3);
    v11 = sub_213F4E0F0();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_213F4E110();
  }

  v12 = sub_213F4E1A0();
  sub_213DE36FC(v2, &qword_27C8F7668, &qword_213F52190);
  (*(v4 + 8))(v6, v3);
  return v12;
}

double sub_213E4A8A8()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v7 = v12;
  swift_getKeyPath();
  v12 = v7;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v8 = *(v7 + 80);

  sub_213E49B50(v6);
  sub_213F4D280();
  sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  return dbl_213F59588[v8];
}

uint64_t sub_213E4AA94@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = sub_213F4CEA0();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = &v52 - v4;
  v5 = sub_213F4EC90();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99F8, &qword_213F59570);
  MEMORY[0x28223BE20](v66);
  v67 = &v52 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A00, &qword_213F59578);
  MEMORY[0x28223BE20](v57);
  v60 = &v52 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A08, &qword_213F59580);
  MEMORY[0x28223BE20](v65);
  v63 = &v52 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v12 = MEMORY[0x28223BE20](v64);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v52 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v54 = &v52 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v24 = v70;
  swift_getKeyPath();
  v70 = v24;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v25 = *(v24 + 81);

  v26 = *MEMORY[0x277CE0118];
  v27 = sub_213F4D950();
  v28 = *(*(v27 - 8) + 104);
  if (v25)
  {
    if (v25 == 1)
    {
      v29 = v56;
      v28(v56, v26, v27);
      sub_213F4ED40();
      v30 = v69;
      swift_getKeyPath();
      v69 = v30;
      sub_213F4CB80();

      swift_beginAccess();

      v31 = v59;
      sub_213E49D50(v59);
      v33 = v61;
      v32 = v62;
      v34 = v58;
      (*(v61 + 104))(v58, *MEMORY[0x277CDF3D0], v62);
      sub_213F4CE90();
      v35 = *(v33 + 8);
      v35(v34, v32);
      v35(v31, v32);
      v36 = sub_213F4E900();

      sub_213E510B0(v29, v19, MEMORY[0x277CE1260]);
      *&v19[*(v64 + 36)] = v36;
      v37 = v54;
      sub_213DE2B44(v19, v54, &qword_27C8F7A28, &qword_213F529B0);
      sub_213DE3164(v37, v60, &qword_27C8F7A28, &qword_213F529B0);
      swift_storeEnumTagMultiPayload();
      sub_213DE551C();
      v38 = v63;
      sub_213F4DBA0();
      sub_213DE3164(v38, v67, &qword_27C8F9A08, &qword_213F59580);
      swift_storeEnumTagMultiPayload();
      sub_213E51118();
      sub_213F4DBA0();
      sub_213DE36FC(v38, &qword_27C8F9A08, &qword_213F59580);
      v23 = v37;
    }

    else
    {
      v42 = v55;
      v28(v55, v26, v27);
      v43 = [objc_opt_self() labelColor];
      sub_213F4E870();
      v44 = v59;
      sub_213E49D50(v59);
      v46 = v61;
      v45 = v62;
      v47 = v58;
      (*(v61 + 104))(v58, *MEMORY[0x277CDF3D0], v62);
      sub_213F4CE90();
      v48 = *(v46 + 8);
      v48(v47, v45);
      v48(v44, v45);
      v49 = sub_213F4E900();

      sub_213E510B0(v42, v14, MEMORY[0x277CE1260]);
      *&v14[*(v64 + 36)] = v49;
      v50 = v53;
      sub_213DE2B44(v14, v53, &qword_27C8F7A28, &qword_213F529B0);
      sub_213DE3164(v50, v67, &qword_27C8F7A28, &qword_213F529B0);
      swift_storeEnumTagMultiPayload();
      sub_213E51118();
      sub_213DE551C();
      sub_213F4DBA0();
      v23 = v50;
    }
  }

  else
  {
    v28(v23, v26, v27);
    sub_213F4ED40();
    v39 = v69;
    swift_getKeyPath();
    v69 = v39;
    sub_213F4CB80();

    swift_beginAccess();
    v40 = *(v39 + 88);

    *&v23[*(v64 + 36)] = v40;
    sub_213DE3164(v23, v60, &qword_27C8F7A28, &qword_213F529B0);
    swift_storeEnumTagMultiPayload();
    sub_213DE551C();
    v41 = v63;
    sub_213F4DBA0();
    sub_213DE3164(v41, v67, &qword_27C8F9A08, &qword_213F59580);
    swift_storeEnumTagMultiPayload();
    sub_213E51118();
    sub_213F4DBA0();
    sub_213DE36FC(v41, &qword_27C8F9A08, &qword_213F59580);
  }

  return sub_213DE36FC(v23, &qword_27C8F7A28, &qword_213F529B0);
}

uint64_t sub_213E4B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v101 = a2;
  v102 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98E0, &qword_213F59388);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = (v86 - v5);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98E8, &qword_213F59390);
  MEMORY[0x28223BE20](v95);
  v98 = v86 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98F0, &qword_213F59398);
  v7 = MEMORY[0x28223BE20](v97);
  v100 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v96 = v86 - v10;
  MEMORY[0x28223BE20](v9);
  v99 = v86 - v11;
  v93 = sub_213F4D290();
  v92 = *(v93 - 8);
  v12 = MEMORY[0x28223BE20](v93);
  v91 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98F8, &qword_213F593A0);
  v88 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v87 = (v86 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9900, &qword_213F593A8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v94 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v86 - v20;
  v22 = *(type metadata accessor for GridButton(0) + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v24 = v106;
  swift_getKeyPath();
  v106 = v24;
  v25 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v26 = *(v24 + 105);

  v27 = 1;
  v103 = v21;
  if (v26 == 1)
  {
    v86[3] = v22;
    v86[2] = v23;
    sub_213F4ED40();
    v28 = v105;
    swift_getKeyPath();
    v105 = v28;
    v86[1] = v25;
    sub_213F4CB80();

    swift_beginAccess();
    v29 = *(v28 + 72);

    v27 = 1;
    if (v29)
    {
      v30 = sub_213F4D8A0();
      v31 = v87;
      *v87 = v30;
      *(v31 + 8) = 0;
      *(v31 + 16) = 1;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9918, &qword_213F593C0);
      sub_213E4BDB0(v102, v31 + *(v32 + 44));

      v33 = sub_213F4E040();
      v34 = v90;
      sub_213E49B50(v90);
      v35 = v91;
      sub_213F4D280();
      sub_213F4D270();
      v36 = *(v92 + 8);
      v37 = v35;
      v38 = v93;
      v36(v37, v93);
      v36(v34, v38);
      sub_213F4CDA0();
      v39 = v31 + *(v15 + 36);
      *v39 = v33;
      *(v39 + 8) = v40;
      *(v39 + 16) = v41;
      *(v39 + 24) = v42;
      *(v39 + 32) = v43;
      *(v39 + 40) = 0;
      v21 = v103;
      sub_213DE2B44(v31, v103, &qword_27C8F98F8, &qword_213F593A0);
      v27 = 0;
    }

    else
    {
      v21 = v103;
    }
  }

  (*(v88 + 56))(v21, v27, 1, v15);
  v44 = sub_213F4D8A0();
  v45 = v89;
  *v89 = v44;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9908, &qword_213F593B0);
  sub_213E4C6F0(v3, v102, (v45 + *(v46 + 44)));
  v47 = sub_213F4E040();
  sub_213F4ED40();
  v48 = v105;
  swift_getKeyPath();
  v105 = v48;
  sub_213F4CB80();

  swift_beginAccess();
  v49 = *(v48 + 72);

  if (!v49 || (, sub_213F4ED40(), v50 = v104, swift_getKeyPath(), v104 = v50, sub_213F4CB80(), , swift_beginAccess(), v51 = *(v50 + 105), , (v51 & 1) == 0))
  {
    v52 = v90;
    sub_213E49B50(v90);
    v53 = v91;
    sub_213F4D280();
    sub_213F4D270();
    v54 = *(v92 + 8);
    v55 = v53;
    v56 = v93;
    v54(v55, v93);
    v54(v52, v56);
  }

  sub_213F4CDA0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v98;
  sub_213DE2B44(v45, v98, &qword_27C8F98E0, &qword_213F59388);
  v66 = v65 + *(v95 + 36);
  *v66 = v47;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = sub_213F4E0B0();
  sub_213E4A0B0();
  sub_213F4CDA0();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v65;
  v77 = v96;
  sub_213DE2B44(v76, v96, &qword_27C8F98E8, &qword_213F59390);
  v78 = v77 + *(v97 + 36);
  *v78 = v67;
  *(v78 + 8) = v69;
  *(v78 + 16) = v71;
  *(v78 + 24) = v73;
  *(v78 + 32) = v75;
  *(v78 + 40) = 0;
  v79 = v99;
  sub_213DE2B44(v77, v99, &qword_27C8F98F0, &qword_213F59398);
  v80 = v103;
  v81 = v94;
  sub_213DE3164(v103, v94, &qword_27C8F9900, &qword_213F593A8);
  v82 = v100;
  sub_213DE3164(v79, v100, &qword_27C8F98F0, &qword_213F59398);
  v83 = v101;
  sub_213DE3164(v81, v101, &qword_27C8F9900, &qword_213F593A8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9910, &qword_213F593B8);
  sub_213DE3164(v82, v83 + *(v84 + 48), &qword_27C8F98F0, &qword_213F59398);
  sub_213DE36FC(v79, &qword_27C8F98F0, &qword_213F59398);
  sub_213DE36FC(v80, &qword_27C8F9900, &qword_213F593A8);
  sub_213DE36FC(v82, &qword_27C8F98F0, &qword_213F59398);
  return sub_213DE36FC(v81, &qword_27C8F9900, &qword_213F593A8);
}

uint64_t sub_213E4BDB0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v5 = MEMORY[0x28223BE20](v63);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - v7;
  v69 = sub_213F4D390();
  v68 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v64);
  v56 = &v54 - v12;
  v13 = sub_213F4D290();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9920, &qword_213F593C8);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9928, &qword_213F593D0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v62 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v59 = &v54 - v24;

  v66 = sub_213F4EA10();
  type metadata accessor for GridButton(0);
  v25 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v26 = *&v75[0];
  swift_getKeyPath();
  *&v75[0] = v26;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v27 = *(v26 + 80);

  if (v27)
  {
    sub_213F4E1C0();
    sub_213F4E180();
  }

  else
  {
    sub_213F4E1B0();
    sub_213F4E110();
  }

  v28 = sub_213F4E1D0();

  KeyPath = swift_getKeyPath();
  sub_213E49B50(v19);
  sub_213F4D280();
  sub_213F4D270();
  v30 = *(v14 + 8);
  v30(v17, v13);
  v30(v19, v13);
  sub_213E49B50(v19);
  sub_213F4D280();
  sub_213F4D270();
  v30(v17, v13);
  v30(v19, v13);
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v70 = v66;
  *(&v70 + 1) = v25;
  *&v71 = KeyPath;
  *(&v71 + 1) = v28;
  v31 = v68;
  v32 = *(v68 + 104);
  v33 = v11;
  v34 = v69;
  v32(v11, *MEMORY[0x277CDF9E8], v69);
  v35 = v67;
  v32(v67, *MEMORY[0x277CDF9F0], v34);
  sub_213E50898(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_213F4F1E0();
  if (result)
  {
    v37 = *(v31 + 32);
    v38 = v55;
    v37(v55, v33, v34);
    v39 = v63;
    v37((v38 + *(v63 + 48)), v35, v34);
    v40 = v58;
    sub_213DE3164(v38, v58, &qword_27C8F9228, &unk_213F5A640);
    v41 = *(v39 + 48);
    v42 = v56;
    v37(v56, v40, v34);
    v43 = *(v31 + 8);
    v43(v40 + v41, v34);
    sub_213DE2B44(v38, v40, &qword_27C8F9228, &unk_213F5A640);
    v44 = v64;
    v37((v42 + *(v64 + 36)), (v40 + *(v39 + 48)), v34);
    v43(v40, v34);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9930, &qword_213F610E0);
    v46 = sub_213E508E0();
    v47 = sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v48 = v57;
    sub_213F4E570();
    sub_213DE36FC(v42, &qword_27C8F9230, &qword_213F57250);
    v75[2] = v72;
    v75[3] = v73;
    v75[4] = v74;
    v75[0] = v70;
    v75[1] = v71;
    sub_213DE36FC(v75, &qword_27C8F9930, &qword_213F610E0);
    *&v70 = v45;
    *(&v70 + 1) = v44;
    *&v71 = v46;
    *(&v71 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    v49 = v59;
    v50 = v61;
    sub_213F4E6D0();
    (*(v60 + 8))(v48, v50);
    v51 = v62;
    sub_213DE3164(v49, v62, &qword_27C8F9928, &qword_213F593D0);
    v52 = v65;
    sub_213DE3164(v51, v65, &qword_27C8F9928, &qword_213F593D0);
    v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9948, &qword_213F59420) + 48);
    *v53 = 0;
    *(v53 + 8) = 1;
    sub_213DE36FC(v49, &qword_27C8F9928, &qword_213F593D0);
    return sub_213DE36FC(v51, &qword_27C8F9928, &qword_213F593D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E4C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9950, &qword_213F59428);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = (&v49 - v8);
  v9 = sub_213F4D290();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  v59 = v15;
  sub_213F4ED40();
  v16 = v85;
  swift_getKeyPath();
  *&v85 = v16;
  v58 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LODWORD(v15) = *(v16 + 105);

  v52 = v14;
  v53 = v12;
  if (v15 == 1 && (sub_213F4ED40(), v17 = v85, swift_getKeyPath(), *&v85 = v17, sub_213F4CB80(), , swift_beginAccess(), v18 = *(v17 + 72), , , v18))
  {

    v19 = sub_213F4EEE0();
    v50 = v20;
    v51 = v19;
    sub_213E49B50(v14);
    sub_213F4D280();
    sub_213F4D270();
    v21 = v55;
    v22 = *(v54 + 8);
    v22(v12, v55);
    v22(v14, v21);
    sub_213E49B50(v14);
    sub_213F4D280();
    sub_213F4D270();
    v22(v12, v21);
    v22(v14, v21);
    sub_213F4EEE0();
    sub_213F4D4E0();
    *&v77 = v51;
    *(&v77 + 1) = v50;
    *&v84[1] = 0x4000000000000000;
    sub_213E50B00(&v77);
    v91 = v83;
    v92[0] = v84[0];
    *(v92 + 9) = *(v84 + 9);
    v87 = v79;
    v88 = v80;
    v89 = v81;
    v90 = v82;
    v85 = v77;
    v86 = v78;
  }

  else
  {
    sub_213E50ADC(&v85);
  }

  v23 = sub_213F4DA40();
  v24 = v60;
  *v60 = v23;
  v24[1] = 0;
  *(v24 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9958, &qword_213F59430);
  sub_213E4CEA0(a1, v56, v24 + *(v25 + 44));
  sub_213F4ED40();
  v26 = v77;
  swift_getKeyPath();
  *&v77 = v26;
  sub_213F4CB80();

  swift_beginAccess();
  LODWORD(v24) = *(v26 + 105);

  if (v24 == 1 && (sub_213F4ED40(), v27 = v77, swift_getKeyPath(), *&v77 = v27, sub_213F4CB80(), , swift_beginAccess(), v28 = *(v27 + 72), , , v28))
  {

    v29 = sub_213F4EEE0();
    v30 = v54;
    v59 = v31;
    v32 = v52;
    sub_213E49B50(v52);
    v33 = v53;
    sub_213F4D280();
    sub_213F4D270();
    v34 = *(v30 + 8);
    v35 = v55;
    v34(v33, v55);
    v34(v32, v35);
    sub_213E49B50(v32);
    sub_213F4D280();
    sub_213F4D270();
    v34(v33, v35);
    v34(v32, v35);
    sub_213F4EEE0();
    sub_213F4D4E0();
    *&v69 = v29;
    *(&v69 + 1) = v59;
    *&v76[1] = 0;
    sub_213E50B00(&v69);
    v83 = v75;
    v84[0] = v76[0];
    *(v84 + 9) = *(v76 + 9);
    v79 = v71;
    v80 = v72;
    v81 = v73;
    v82 = v74;
    v77 = v69;
    v78 = v70;
  }

  else
  {
    sub_213E50ADC(&v77);
  }

  v67 = v91;
  v68[0] = v92[0];
  *(v68 + 9) = *(v92 + 9);
  v63 = v87;
  v64 = v88;
  v65 = v89;
  v66 = v90;
  v61 = v85;
  v62 = v86;
  v36 = v60;
  v37 = v57;
  sub_213DE3164(v60, v57, &qword_27C8F9950, &qword_213F59428);
  v75 = v83;
  v76[0] = v84[0];
  *(v76 + 9) = *(v84 + 9);
  v71 = v79;
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v69 = v77;
  v70 = v78;
  v38 = v68[0];
  a3[6] = v67;
  a3[7] = v38;
  *(a3 + 121) = *(v68 + 9);
  v39 = v64;
  a3[2] = v63;
  a3[3] = v39;
  v40 = v66;
  a3[4] = v65;
  a3[5] = v40;
  v41 = v62;
  *a3 = v61;
  a3[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9960, &qword_213F59438);
  sub_213DE3164(v37, a3 + *(v42 + 48), &qword_27C8F9950, &qword_213F59428);
  v43 = (a3 + *(v42 + 64));
  v44 = v76[0];
  v43[6] = v75;
  v43[7] = v44;
  *(v43 + 121) = *(v76 + 9);
  v45 = v72;
  v43[2] = v71;
  v43[3] = v45;
  v46 = v74;
  v43[4] = v73;
  v43[5] = v46;
  v47 = v70;
  *v43 = v69;
  v43[1] = v47;
  sub_213DE36FC(v36, &qword_27C8F9950, &qword_213F59428);
  return sub_213DE36FC(v37, &qword_27C8F9950, &qword_213F59428);
}

uint64_t sub_213E4CEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v155 = a2;
  v140 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9968, &qword_213F59440);
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4);
  v132 = &v125 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9970, &qword_213F59448);
  v136 = *(v6 - 8);
  v137 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v125 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9978, &qword_213F59450);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v138 = &v125 - v11;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9980, &unk_213F59458);
  MEMORY[0x28223BE20](v148);
  v149 = &v125 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v152);
  v154 = &v125 - v13;
  v14 = sub_213F4D910();
  MEMORY[0x28223BE20](v14 - 8);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9988, &qword_213F59468);
  MEMORY[0x28223BE20](v151);
  v16 = &v125 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9990, &qword_213F59470);
  v142 = *(v17 - 8);
  v143 = v17;
  MEMORY[0x28223BE20](v17);
  v141 = &v125 - v18;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9998, &qword_213F59478);
  MEMORY[0x28223BE20](v145);
  v144 = &v125 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A0, &qword_213F59480);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v135 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v156 = &v125 - v23;
  v24 = *(type metadata accessor for GridButton(0) + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v26 = v165;
  swift_getKeyPath();
  *&v165 = v26;
  v27 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v28 = *(v26 + 64);
  v29 = *(v26 + 72);

  v150 = a1;
  v146 = v25;
  v147 = v24;
  v153 = v27;
  if (!v29)
  {
    goto LABEL_4;
  }

  v130 = v28;
  sub_213F4ED40();
  v30 = v165;
  swift_getKeyPath();
  *&v165 = v30;
  sub_213F4CB80();

  swift_beginAccess();
  v31 = *(v30 + 105);

  if (v31)
  {

LABEL_4:
    sub_213F4ED40();
    v32 = v165;
    swift_getKeyPath();
    *&v165 = v32;
    sub_213F4CB80();

    swift_beginAccess();
    v34 = *(v32 + 32);
    v33 = *(v32 + 40);

    *&v165 = v34;
    *(&v165 + 1) = v33;
    sub_213DBC9EC();
    v35 = sub_213F4E310();
    v128 = v36;
    v129 = v35;
    v38 = v37;
    v130 = v39;
    sub_213F4ED40();
    v40 = v165;
    swift_getKeyPath();
    *&v165 = v40;
    sub_213F4CB80();

    swift_beginAccess();
    v127 = *(v40 + 112);
    LOBYTE(v32) = *(v40 + 120);

    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v43 = v38 & 1;
    LOBYTE(v165) = v38 & 1;
    LOBYTE(v157) = v32;
    v126 = sub_213E4A5C4();
    v44 = swift_getKeyPath();
    v45 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A8, &unk_213F594E8) + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v47 = *MEMORY[0x277CE1058];
    v48 = sub_213F4EA30();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = swift_getKeyPath();
    v49 = v128;
    *v16 = v129;
    *(v16 + 1) = v49;
    v16[16] = v43;
    *(v16 + 17) = v157;
    *(v16 + 5) = *(&v157 + 3);
    *(v16 + 3) = v130;
    *(v16 + 4) = KeyPath;
    *(v16 + 5) = v127;
    v16[48] = v32;
    *(v16 + 49) = v172[0];
    *(v16 + 13) = *(v172 + 3);
    *(v16 + 7) = v42;
    v50 = v154;
    v16[64] = 1;
    *(v16 + 65) = v164[0];
    *(v16 + 17) = *(v164 + 3);
    v51 = v126;
    *(v16 + 9) = v44;
    *(v16 + 10) = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99B0, &qword_213F59528);
    *&v16[*(v52 + 36)] = v155;
    v53 = v151;
    *&v16[*(v151 + 36)] = 0x3FF0000000000000;
    v54 = *MEMORY[0x277CDF998];
    v55 = sub_213F4D390();
    (*(*(v55 - 8) + 104))(v50, v54, v55);
    sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);

    result = sub_213F4F1F0();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v57 = sub_213E50B08();
    v58 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    v59 = v141;
    v60 = v53;
    v61 = v152;
    sub_213F4E570();
    sub_213DE36FC(v50, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v16, &qword_27C8F9988, &qword_213F59468);
    *&v165 = v60;
    *(&v165 + 1) = v61;
    *&v166 = v57;
    *(&v166 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v62 = v143;
    v63 = v144;
    sub_213F4E6D0();
    (*(v142 + 8))(v59, v62);
    sub_213DE3164(v63, v149, &qword_27C8F9998, &qword_213F59478);
    swift_storeEnumTagMultiPayload();
    sub_213E50EA0();
    sub_213F4DBA0();
    sub_213DE36FC(v63, &qword_27C8F9998, &qword_213F59478);
LABEL_8:
    sub_213F4ED40();
    v94 = v165;
    swift_getKeyPath();
    *&v165 = v94;
    sub_213F4CB80();

    swift_beginAccess();
    v96 = *(v94 + 48);
    v95 = *(v94 + 56);

    if (!v95)
    {
      v119 = v138;
      (*(v136 + 56))(v138, 1, 1, v137);
      goto LABEL_12;
    }

    *&v165 = v96;
    *(&v165 + 1) = v95;
    sub_213DBC9EC();
    v151 = sub_213F4E310();
    v149 = v97;
    v99 = v98;
    v101 = v100;
    sub_213F4ED40();
    v102 = v165;
    swift_getKeyPath();
    *&v165 = v102;
    sub_213F4CB80();

    swift_beginAccess();
    v103 = *(v102 + 112);
    v104 = *(v102 + 120);

    v105 = swift_getKeyPath();
    v106 = swift_getKeyPath();
    LOBYTE(v165) = v99 & 1;
    LOBYTE(v157) = v104;
    sub_213F4E210();
    sub_213F4E180();
    v107 = sub_213F4E1D0();

    v108 = swift_getKeyPath();
    *&v157 = v151;
    *(&v157 + 1) = v149;
    LOBYTE(v158) = v99 & 1;
    *(&v158 + 1) = v101;
    *&v159 = v105;
    *(&v159 + 1) = v103;
    LOBYTE(v160) = v104;
    *(&v160 + 1) = v106;
    LOBYTE(v161) = 1;
    *(&v161 + 1) = v108;
    *&v162 = v107;
    v109 = v154;
    *(&v162 + 1) = v155;
    v163 = 1;
    v110 = *MEMORY[0x277CDF998];
    v111 = sub_213F4D390();
    (*(*(v111 - 8) + 104))(v109, v110, v111);
    sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);

    result = sub_213F4F1F0();
    if (result)
    {
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99D8, &qword_213F59558);
      v113 = sub_213E50FF8();
      v114 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
      v115 = v132;
      v116 = v152;
      sub_213F4E570();
      sub_213DE36FC(v109, &qword_27C8F75C0, &qword_213F54760);
      v168 = v160;
      v169 = v161;
      v170 = v162;
      v171 = v163;
      v165 = v157;
      v166 = v158;
      v167 = v159;
      sub_213DE36FC(&v165, &qword_27C8F99D8, &qword_213F59558);
      *&v157 = v112;
      *(&v157 + 1) = v116;
      *&v158 = v113;
      *(&v158 + 1) = v114;
      swift_getOpaqueTypeConformance2();
      v117 = v131;
      v118 = v134;
      sub_213F4E6D0();
      (*(v133 + 8))(v115, v118);
      v119 = v138;
      sub_213DE2B44(v117, v138, &qword_27C8F9970, &qword_213F59448);
      (*(v136 + 56))(v119, 0, 1, v137);
LABEL_12:
      v120 = v156;
      v121 = v135;
      sub_213DE3164(v156, v135, &qword_27C8F99A0, &qword_213F59480);
      v122 = v139;
      sub_213DE3164(v119, v139, &qword_27C8F9978, &qword_213F59450);
      v123 = v140;
      sub_213DE3164(v121, v140, &qword_27C8F99A0, &qword_213F59480);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99D0, &qword_213F59550);
      sub_213DE3164(v122, v123 + *(v124 + 48), &qword_27C8F9978, &qword_213F59450);
      sub_213DE36FC(v119, &qword_27C8F9978, &qword_213F59450);
      sub_213DE36FC(v120, &qword_27C8F99A0, &qword_213F59480);
      sub_213DE36FC(v122, &qword_27C8F9978, &qword_213F59450);
      return sub_213DE36FC(v121, &qword_27C8F99A0, &qword_213F59480);
    }

    goto LABEL_14;
  }

  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4EA10();
  sub_213F4D8D0();

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4ED40();
  v64 = v165;
  swift_getKeyPath();
  *&v165 = v64;
  sub_213F4CB80();

  swift_beginAccess();

  sub_213F4D8E0();

  sub_213F4D8F0();
  sub_213F4D930();
  v65 = sub_213F4E2F0();
  v129 = v66;
  v130 = v65;
  v68 = v67;
  v128 = v69;
  sub_213F4ED40();
  v70 = v165;
  swift_getKeyPath();
  *&v165 = v70;
  sub_213F4CB80();

  swift_beginAccess();
  v127 = *(v70 + 112);
  v71 = *(v70 + 120);

  v126 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v68 &= 1u;
  LOBYTE(v165) = v68;
  LOBYTE(v157) = v71;
  v73 = sub_213E4A5C4();
  v74 = swift_getKeyPath();
  v75 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A8, &unk_213F594E8) + 36)];
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v77 = *MEMORY[0x277CE1058];
  v78 = sub_213F4EA30();
  (*(*(v78 - 8) + 104))(v75 + v76, v77, v78);
  *v75 = swift_getKeyPath();
  v79 = v154;
  v80 = v129;
  *v16 = v130;
  *(v16 + 1) = v80;
  v16[16] = v68;
  v82 = v126;
  v81 = v127;
  *(v16 + 3) = v128;
  *(v16 + 4) = v82;
  *(v16 + 5) = v81;
  v16[48] = v71;
  *(v16 + 7) = v72;
  v16[64] = 1;
  *(v16 + 9) = v74;
  *(v16 + 10) = v73;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99B0, &qword_213F59528);
  *&v16[*(v83 + 36)] = v155;
  v84 = v151;
  *&v16[*(v151 + 36)] = 0x3FF0000000000000;
  v85 = *MEMORY[0x277CDF998];
  v86 = sub_213F4D390();
  (*(*(v86 - 8) + 104))(v79, v85, v86);
  sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);

  result = sub_213F4F1F0();
  if (result)
  {
    v87 = sub_213E50B08();
    v88 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    v89 = v141;
    v90 = v84;
    v91 = v152;
    sub_213F4E570();
    sub_213DE36FC(v79, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v16, &qword_27C8F9988, &qword_213F59468);
    *&v165 = v90;
    *(&v165 + 1) = v91;
    *&v166 = v87;
    *(&v166 + 1) = v88;
    swift_getOpaqueTypeConformance2();
    v92 = v143;
    v93 = v144;
    sub_213F4E6D0();
    (*(v142 + 8))(v89, v92);
    sub_213DE3164(v93, v149, &qword_27C8F9998, &qword_213F59478);
    swift_storeEnumTagMultiPayload();
    sub_213E50EA0();
    sub_213F4DBA0();
    sub_213DE36FC(v93, &qword_27C8F9998, &qword_213F59478);
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_213E4E32C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B8, &qword_213F59348);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_213F4D950();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v16 = v23;
  swift_getKeyPath();
  v23 = v16;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v17 = *(v16 + 88);

  *&v13[*(v8 + 44)] = v17;
  v18 = sub_213F4E8F0();
  sub_213E4B424(v18, v6);

  sub_213DE3164(v13, v11, &qword_27C8F7A28, &qword_213F529B0);
  sub_213DE3164(v6, v4, &qword_27C8F98B8, &qword_213F59348);
  v19 = v22;
  sub_213DE3164(v11, v22, &qword_27C8F7A28, &qword_213F529B0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98D8, &qword_213F59380);
  sub_213DE3164(v4, v19 + *(v20 + 48), &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v6, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v13, &qword_27C8F7A28, &qword_213F529B0);
  sub_213DE36FC(v4, &qword_27C8F98B8, &qword_213F59348);
  return sub_213DE36FC(v11, &qword_27C8F7A28, &qword_213F529B0);
}

uint64_t sub_213E4E654@<X0>(uint64_t a2@<X8>)
{
  v5 = sub_213F4E8F0();
  sub_213F4EEF0();
  sub_213F4D0C0();
  result = sub_213F4E8D0();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = result;
  return result;
}

__n128 sub_213E4E714@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9860, &qword_213F59018);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9858, &qword_213F59010);
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-v14];
  *v12 = sub_213F4EEE0();
  v12[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98A0, &qword_213F59330);
  sub_213E4EACC(a1, a2 & 1, a3, a4 & 1, v12 + *(v17 + 44));
  sub_213E4A8A8();
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v12, v15, &qword_27C8F9860, &qword_213F59018);
  v18 = &v15[*(v13 + 36)];
  v19 = v33;
  v18[4] = v32;
  v18[5] = v19;
  v18[6] = v34;
  v20 = v29;
  *v18 = v28;
  v18[1] = v20;
  v21 = v31;
  v18[2] = v30;
  v18[3] = v21;
  type metadata accessor for GridButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v22 = v35[0].n128_u64[0];
  swift_getKeyPath();
  v35[0].n128_u64[0] = v22;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();

  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v15, a5, &qword_27C8F9858, &qword_213F59010);
  v23 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9850, &qword_213F59008) + 36));
  v24 = v35[5];
  v23[4] = v35[4];
  v23[5] = v24;
  v23[6] = v35[6];
  v25 = v35[1];
  *v23 = v35[0];
  v23[1] = v25;
  result = v35[3];
  v23[2] = v35[2];
  v23[3] = result;
  return result;
}

uint64_t sub_213E4EACC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(v54) = a4;
  v51 = a1;
  v52 = a3;
  v59 = a5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98A8, &qword_213F59338);
  v6 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = (&v50 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B0, &qword_213F59340);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B8, &qword_213F59348);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98C0, &qword_213F59350);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v50 - v23;
  sub_213E4AA94(&v50 - v23);
  v24 = sub_213E4A314();
  v56 = v19;
  sub_213E4B424(v24, v19);

  if (a2 & 1) != 0 || (v54)
  {
    (*(v6 + 56))(v13, 1, 1, v58);
    v25 = v13;
  }

  else
  {
    v26 = sub_213F4EEE0();
    v27 = v53;
    *v53 = v26;
    *(v27 + 8) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98D0, &unk_213F59360);
    sub_213E4E32C(v27 + *(v29 + 44));
    v30 = sub_213F4EEE0();
    v52 = v31;
    v51 = sub_213F4D8A0();
    v60[0] = 0;
    sub_213E4E654(&v70);
    v62 = v70;
    v63 = v71;
    v64 = *v72;
    v65 = *&v72[16];
    v66[0] = v70;
    v66[1] = v71;
    v66[2] = *v72;
    v66[3] = *&v72[16];
    v54 = v13;
    sub_213DE3164(&v62, &v67, &qword_27C8F7750, &unk_213F51940);
    sub_213DE36FC(v66, &qword_27C8F7750, &unk_213F51940);
    *&v61[55] = v65;
    *&v61[39] = v64;
    *&v61[23] = v63;
    *&v61[7] = v62;
    v32 = v60[0];
    v34 = v51;
    v33 = v52;
    *&v67 = v30;
    *(&v67 + 1) = v52;
    v68 = v51;
    v69[0] = v60[0];
    v35 = *v61;
    *&v69[1] = *v61;
    *&v69[64] = *(&v65 + 1);
    v36 = *&v61[32];
    *&v69[49] = *&v61[48];
    *&v69[33] = *&v61[32];
    v37 = *&v61[16];
    *&v69[17] = *&v61[16];
    v38 = v58;
    v39 = v27 + *(v58 + 36);
    v40 = *&v69[48];
    *(v39 + 64) = *&v69[32];
    *(v39 + 80) = v40;
    v41 = v68;
    *v39 = v67;
    *(v39 + 16) = v41;
    v42 = *&v69[16];
    *(v39 + 32) = *v69;
    *(v39 + 48) = v42;
    *(v39 + 96) = *&v69[64];
    *&v70 = v30;
    *(&v70 + 1) = v33;
    v71 = v34;
    v72[0] = v32;
    *&v72[1] = v35;
    *&v73[15] = *&v61[63];
    *v73 = *&v61[48];
    *&v72[33] = v36;
    *&v72[17] = v37;
    sub_213DE3164(&v67, v60, &qword_27C8F7758, &unk_213F59370);
    v25 = v54;
    sub_213DE36FC(&v70, &qword_27C8F7758, &unk_213F59370);
    sub_213DE2B44(v27, v25, &qword_27C8F98A8, &qword_213F59338);
    (*(v6 + 56))(v25, 0, 1, v38);
  }

  v43 = v55;
  v44 = v57;
  sub_213DE3164(v55, v57, &qword_27C8F98C0, &qword_213F59350);
  v45 = v56;
  v46 = v17;
  sub_213DE3164(v56, v17, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE3164(v25, v11, &qword_27C8F98B0, &qword_213F59340);
  v47 = v59;
  sub_213DE3164(v44, v59, &qword_27C8F98C0, &qword_213F59350);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98C8, &qword_213F59358);
  sub_213DE3164(v46, v47 + *(v48 + 48), &qword_27C8F98B8, &qword_213F59348);
  sub_213DE3164(v11, v47 + *(v48 + 64), &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v25, &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v45, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v43, &qword_27C8F98C0, &qword_213F59350);
  sub_213DE36FC(v11, &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v46, &qword_27C8F98B8, &qword_213F59348);
  return sub_213DE36FC(v44, &qword_27C8F98C0, &qword_213F59350);
}

double GridButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GridButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9830, &qword_213F58FE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-v9];
  sub_213E4F9C0(v2, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213E510B0(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for GridButton);
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9840, &qword_213F58FF8);
  sub_213E4FA30();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8, MEMORY[0x277CDF028]);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v8 + 8))(v10, v7);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9868, &qword_213F59020) + 36);
  *&result = 1684632135;
  *v13 = xmmword_213F58DA0;
  *(v13 + 16) = 1;
  return result;
}

uint64_t sub_213E4F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for GridButton(0);
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9898, &qword_213F59328);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9850, &qword_213F59008);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v11 = v20;
  swift_getKeyPath();
  v20 = v11;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel, &protocol conformance descriptor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v12 = *(v11 + 96);
  v13 = *(v11 + 104);

  if (v13)
  {
    sub_213E4E714(v12, 1, 0, 1, v10);
    sub_213DE3164(v10, v7, &qword_27C8F9850, &qword_213F59008);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9848, &qword_213F59000);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000, MEMORY[0x277CDF7D8]);
    sub_213E4FAE8();
    sub_213F4DBA0();
    return sub_213DE36FC(v10, &qword_27C8F9850, &qword_213F59008);
  }

  else
  {
    sub_213E4F9C0(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v16 = swift_allocObject();
    sub_213E510B0(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for GridButton);
    *(v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
    *v7 = sub_213E507DC;
    v7[1] = v16;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9848, &qword_213F59000);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000, MEMORY[0x277CDF7D8]);
    sub_213E4FAE8();
    return sub_213F4DBA0();
  }
}

double sub_213E4F720@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9830, &qword_213F58FE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-v9];
  sub_213E4F9C0(v3, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213E510B0(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for GridButton);
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9840, &qword_213F58FF8);
  sub_213E4FA30();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8, MEMORY[0x277CDF028]);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v8 + 8))(v10, v7);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9868, &qword_213F59020) + 36);
  *&result = 1684632135;
  *v13 = xmmword_213F58DA0;
  *(v13 + 16) = 1;
  return result;
}

uint64_t sub_213E4F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E4FA30()
{
  result = qword_281182AC8;
  if (!qword_281182AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9840, &qword_213F58FF8);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000, MEMORY[0x277CDF7D8]);
    sub_213E4FAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AC8);
  }

  return result;
}

unint64_t sub_213E4FAE8()
{
  result = qword_281182F40;
  if (!qword_281182F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9850, &qword_213F59008);
    sub_213E4FB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F40);
  }

  return result;
}

unint64_t sub_213E4FB74()
{
  result = qword_281183168;
  if (!qword_281183168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9858, &qword_213F59010);
    sub_213DE3AE4(&qword_281182648, &qword_27C8F9860, &qword_213F59018, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183168);
  }

  return result;
}

unint64_t sub_213E4FC2C()
{
  result = qword_281185C38;
  if (!qword_281185C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281185C38);
  }

  return result;
}

unint64_t sub_213E4FC84()
{
  result = qword_27C8F9870;
  if (!qword_27C8F9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9870);
  }

  return result;
}

unint64_t sub_213E4FCDC()
{
  result = qword_27C8F9878;
  if (!qword_27C8F9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9878);
  }

  return result;
}

uint64_t sub_213E4FD54(uint64_t a1)
{
  result = sub_213F4CBC0();
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

void sub_213E50444(uint64_t a1)
{
  sub_213E505D0(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E505D0(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213E505D0(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213E505D0(319, &qword_2811825C8, type metadata accessor for GridButtonViewModel, MEMORY[0x277CE12F8]);
        if (v4 <= 0x3F)
        {
          sub_213DE22E8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E505D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213E50634()
{
  result = qword_2811832B8;
  if (!qword_2811832B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9868, &qword_213F59020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9830, &qword_213F58FE8);
    sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8, MEMORY[0x277CDF028]);
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832B8);
  }

  return result;
}

double sub_213E507DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridButton(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_213F4D140();
  *&result = sub_213E4E714(v4, 0, v5, 0, a1).n128_u64[0];
  return result;
}

uint64_t sub_213E50898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213E508E0()
{
  result = qword_281182E40;
  if (!qword_281182E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9930, &qword_213F610E0);
    sub_213E5096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E40);
  }

  return result;
}

unint64_t sub_213E5096C()
{
  result = qword_281182FD0;
  if (!qword_281182FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9938, &unk_213F59410);
    sub_213E50A24();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FD0);
  }

  return result;
}

unint64_t sub_213E50A24()
{
  result = qword_281183230;
  if (!qword_281183230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9940, &qword_213F5CFE0);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183230);
  }

  return result;
}

double sub_213E50ADC(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

unint64_t sub_213E50B08()
{
  result = qword_281182CD0;
  if (!qword_281182CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9988, &qword_213F59468);
    sub_213E50BC0();
    sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CD0);
  }

  return result;
}

unint64_t sub_213E50BC0()
{
  result = qword_281182D20;
  if (!qword_281182D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99B0, &qword_213F59528);
    sub_213E50C78();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D20);
  }

  return result;
}

unint64_t sub_213E50C78()
{
  result = qword_281182DB0;
  if (!qword_281182DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99A8, &unk_213F594E8);
    sub_213E50D30();
    sub_213DE3AE4(&qword_281182850, &qword_27C8F76B0, &qword_213F518C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DB0);
  }

  return result;
}

unint64_t sub_213E50D30()
{
  result = qword_281182E98;
  if (!qword_281182E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99B8, &qword_213F59530);
    sub_213E50DE8();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E98);
  }

  return result;
}

unint64_t sub_213E50DE8()
{
  result = qword_281183040;
  if (!qword_281183040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C0, &unk_213F59538);
    sub_213E0C270();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183040);
  }

  return result;
}

unint64_t sub_213E50EA0()
{
  result = qword_281183298;
  if (!qword_281183298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9998, &qword_213F59478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9988, &qword_213F59468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213E50B08();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_213E50898(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183298);
  }

  return result;
}

unint64_t sub_213E50FF8()
{
  result = qword_27C8F99E0;
  if (!qword_27C8F99E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99D8, &qword_213F59558);
    sub_213E50D30();
    sub_213DE3AE4(&qword_27C8F99E8, &qword_27C8F99F0, &unk_213F59560, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F99E0);
  }

  return result;
}

uint64_t sub_213E510B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E51118()
{
  result = qword_281182B28;
  if (!qword_281182B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A08, &qword_213F59580);
    sub_213DE551C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B28);
  }

  return result;
}

unint64_t sub_213E5119C()
{
  result = qword_281182ED8;
  if (!qword_281182ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9890, &qword_213F59320);
    sub_213E51254();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182ED8);
  }

  return result;
}

unint64_t sub_213E51254()
{
  result = qword_281183088;
  if (!qword_281183088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9888, &qword_213F59318);
    sub_213E512E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183088);
  }

  return result;
}

unint64_t sub_213E512E0()
{
  result = qword_281183340;
  if (!qword_281183340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9880, &qword_213F59310);
    sub_213E50898(&qword_281182908, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183340);
  }

  return result;
}