uint64_t sub_1E631F1D4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_1E631F568;
  }

  else
  {

    v4 = sub_1E631F300;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E631F300()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *v0[8];
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[8];
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v9 = *v7;
      v10 = sub_1E65D76A8();
      (*(*(v10 - 8) + 8))(&v7[v8], v10);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v0[8], &qword_1ED072910, &qword_1E65EC030);
  }

  v9 = 0;
LABEL_8:
  v11 = v0[3];
  v12 = v0[6];
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  *(v13 + 24) = v12;
  v14 = sub_1E6404CB8(sub_1E6321420, v13, v11);

  v15 = sub_1E600A848(v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1E631F568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E631F64C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E631EB78(a1, v1 + v5);
}

uint64_t sub_1E631F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v199 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v197 = &v165 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v196 = &v165 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v195 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v165 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v206 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v217 = &v165 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v208 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v165 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v179 = &v165 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v177 = &v165 - v26;
  v176 = sub_1E65DAC98();
  v174 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v171 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v178);
  v172 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1E65DA0B8();
  v173 = *(v175 - 8);
  v29 = MEMORY[0x1EEE9AC00](v175);
  v170 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v190 = &v165 - v31;
  v169 = sub_1E65D9D58();
  v168 = *(v169 - 8);
  v32 = MEMORY[0x1EEE9AC00](v169);
  v167 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v166 = &v165 - v34;
  v186 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v186);
  v187 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v201 = &v165 - v37;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v38 = MEMORY[0x1EEE9AC00](v189);
  v188 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v216 = (&v165 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v202 = &v165 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v210 = (&v165 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v215 = &v165 - v46;
  v221 = sub_1E65D72D8();
  v214 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v165 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v165 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v200 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v198 = (&v165 - v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v55 = &v165 - v54;
  v205 = sub_1E65D9AC8();
  v219 = *(v205 - 8);
  v56 = MEMORY[0x1EEE9AC00](v205);
  v185 = &v165 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v209 = &v165 - v58;
  v194 = sub_1E65D7848();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v222 = &v165 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for ItemContext(0);
  v60 = MEMORY[0x1EEE9AC00](v204);
  v203 = &v165 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v213 = (&v165 - v62);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v212 = &v165 - v63;
  v64 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v64);
  v211 = &v165 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = a1;
  if (a2)
  {
    v184 = v51;
    v183 = a2;
    v66 = sub_1E65D80B8();
    v68 = v67;
    v224 = v66;
    v225 = v67;
    v70 = v69 & 1;
    v226 = v69 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v66, v68, v70);
    if (v227 == 3)
    {
      v51 = v184;
    }

    else
    {
      v71 = sub_1E637CE70(v227, v183);
      v51 = v184;
      if ((v71 & 1) == 0)
      {
        v149 = 1;
        v148 = v199;
        goto LABEL_26;
      }
    }
  }

  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v72 = sub_1E65D8078();
  v73 = v213;
  *v213 = v72;
  v73[1] = v74;
  v75 = *MEMORY[0x1E699EC88];
  v76 = sub_1E65E3498();
  (*(*(v76 - 8) + 104))(v73, v75, v76);
  swift_storeEnumTagMultiPayload();
  v77 = a3 + *(type metadata accessor for AppComposer(0) + 20);
  LODWORD(v184) = *(v77 + 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  v78 = v198;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v55);
  sub_1E5DFE50C(v50, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v200 + 8))(v78, v51);
  v79 = v219;
  v80 = *(v219 + 48);
  v81 = v205;
  if (v80(v55, 1, v205) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v80(v55, 1, v81) != 1)
    {
      sub_1E5DFE50C(v55, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v79 + 32))(v209, v55, v81);
  }

  v82 = *(type metadata accessor for AppEnvironment(0) + 136);
  v83 = sub_1E5F9B6D0(&unk_1F5FA8BF0);
  v84 = sub_1E65D8248();
  v200 = v77;
  v198 = v82;
  sub_1E63C4134(v222, &v82[v77], v84, v220);

  v85 = sub_1E65D80A8();
  v86 = sub_1E65D9AA8();
  v88 = v87;
  v89 = v185;
  MEMORY[0x1E6941490]();
  v90 = sub_1E65D9AA8();
  v92 = v91;
  v93 = *(v219 + 8);
  v219 += 8;
  v185 = v93;
  (v93)(v89, v81);
  if (v86 == v90 && v88 == v92)
  {
  }

  else
  {
    v94 = sub_1E65E6C18();

    if ((v94 & 1) == 0)
    {
      v152 = sub_1E65D8198();
      v153 = sub_1E65D9AA8();
      v155 = sub_1E637CA94(v153, v154, v152);

      v95 = v222;
      if (v155)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v156 = *(sub_1E65DADF8() - 8);
        v157 = *(v156 + 72);
        v158 = (*(v156 + 80) + 32) & ~*(v156 + 80);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_1E65EB9E0;
        v160 = (v159 + v158);
        *v160 = sub_1E65D9AA8();
        v160[1] = v161;
        swift_storeEnumTagMultiPayload();
        *(v160 + v157) = 1;
        swift_storeEnumTagMultiPayload();
        v162 = sub_1E65D80A8();
        v224 = v159;
        sub_1E5FA9E2C(v162);
        v85 = v224;
      }

      goto LABEL_14;
    }
  }

  v95 = v222;
LABEL_14:
  v96 = v200;
  v97 = *(sub_1E65D8068() + 16);

  v98 = v215;
  if (v97)
  {
    v99 = sub_1E65D8068();
    sub_1E63C4134(v95, (v198 + v96), v99, v98);

    v100 = 0;
  }

  else
  {
    v100 = 1;
  }

  v183 = v85;
  v101 = *(v214 + 56);
  v181 = v214 + 56;
  v180 = v101;
  v101(v98, v100, 1, v221);
  v182 = sub_1E63B0704(v83);

  v102 = v201;
  sub_1E65D8128();
  v103 = v102;
  v104 = v187;
  sub_1E5E1D82C(v103, v187, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v105 = v173;
    v106 = v190;
    v107 = v175;
    (*(v173 + 32))(v190, v104, v175);
    v108 = v170;
    (*(v105 + 16))(v170, v106, v107);
    v109 = v171;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v110 = v109;
    v96 = v200;
    (*(v174 + 8))(v110, v176);
    sub_1E65DA0A8();
    sub_1E632143C(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v111 = v188;
    sub_1E65DC438();
    v112 = *(v105 + 8);
    v112(v108, v107);
    v112(v190, v107);
    v95 = v222;
  }

  else
  {
    v113 = v168;
    v114 = v166;
    v115 = v104;
    v116 = v169;
    (*(v168 + 32))(v166, v115, v169);
    v117 = v167;
    (*(v113 + 16))(v167, v114, v116);
    v111 = v188;
    sub_1E6134678(v117, v188);
    (*(v113 + 8))(v114, v116);
  }

  sub_1E6321560(v201, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v111, v216, &qword_1ED074530, &qword_1E65F0CA8);
  v118 = sub_1E65D81E8();
  v121 = v183;
  if (v120 == -1)
  {
    v125 = 4;
  }

  else
  {
    v224 = v118;
    v225 = v119;
    v226 = v120 & 1;
    v122 = v118;
    v123 = v119;
    v124 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v122, v123, v124);
    v125 = v227;
  }

  LODWORD(v200) = v125;
  v126 = v210;
  v127 = v221;
  (*(v214 + 16))(v210, v220, v221);
  v128 = 1;
  v129 = v126;
  v130 = v180;
  v180(v129, 0, 1, v127);
  sub_1E65D8158();
  v131 = v202;
  if (*(v121 + 16))
  {
    sub_1E63C4134(v95, (v198 + v96), v121, v202);
    v128 = 0;
  }

  v130(v131, v128, 1, v221);
  sub_1E65D8178();
  v132 = type metadata accessor for ActionButtonDescriptor(0);
  v201 = v132;
  v133 = *(*(v132 - 8) + 56);
  v134 = v207;
  v133();
  v135 = v195;
  (v133)(v195, 1, 1, v132);
  v136 = sub_1E65D8088();
  v138 = v137;
  v198 = v137;
  v139 = sub_1E65D80C8();
  v141 = v140;
  v143 = v142;
  v144 = sub_1E65D81B8();
  v143 &= 1u;
  v164 = v136;
  v163 = v134;
  v145 = v202;
  v146 = v206;
  sub_1E63A0574(v212, v216, v182, v200, v210, v217, v202, v206, v218, v215, v184, v163, v135, v164, v138, v139, v141, v143, v144, v147, 7u);

  sub_1E5F87058(v139, v141, v143);

  sub_1E5DFE50C(v135, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v207, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v146, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v145, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v217, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v210, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D82C(v213, v203, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v218, v208, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v196);
  sub_1E622BB88(v220, v197);
  type metadata accessor for ArtworkDescriptor(0);
  v223 = type metadata accessor for ContextMenu(0);
  v217 = type metadata accessor for ItemMetrics(0);
  v210 = type metadata accessor for ViewDescriptor(0);
  v207 = sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v148 = v199;
  sub_1E65E0488();
  sub_1E5DFE50C(v218, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v216, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v215, &qword_1ED072D90, &qword_1E66040F0);
  (*(v214 + 8))(v220, v221);
  (v185)(v209, v205);
  (*(v193 + 8))(v222, v194);
  sub_1E6321560(v213, type metadata accessor for ItemContext);
  (*(v191 + 8))(v212, v192);
  sub_1E6321560(v211, MEMORY[0x1E699D780]);
  v149 = 0;
LABEL_26:
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v150 - 8) + 56))(v148, v149, 1, v150);
}

uint64_t sub_1E63211E8(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E6321368(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E63211E8(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E632143C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6321484(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E6321560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LibraryItemContext.identifier.getter()
{
  v1 = v0;
  v2 = sub_1E65DF3B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E632172C(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_1E65DF378();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_1E632172C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryItemContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6321794(uint64_t a1)
{
  v2 = sub_1E6322D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63217D0(uint64_t a1)
{
  v2 = sub_1E6322D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632180C(uint64_t a1)
{
  v2 = sub_1E6322DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6321848(uint64_t a1)
{
  v2 = sub_1E6322DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63218A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6321930(uint64_t a1)
{
  v2 = sub_1E6322D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632196C(uint64_t a1)
{
  v2 = sub_1E6322D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783A0, &qword_1E65FC560);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - v3;
  v4 = sub_1E65DF3B8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783A8, &qword_1E65FC568);
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783B0, &qword_1E65FC570);
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6322D20();
  sub_1E65E6DA8();
  sub_1E632172C(v30, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v26;
    v16 = v24;
    v17 = v11;
    v18 = v27;
    (*(v26 + 32))(v24, v17, v27);
    v33 = 1;
    sub_1E6322D74();
    v19 = v25;
    v20 = v31;
    sub_1E65E6B18();
    sub_1E6322EC8(&qword_1ED0783C8, MEMORY[0x1E699E5F0], MEMORY[0x1E699E5F8]);
    v21 = v29;
    sub_1E65E6B78();
    (*(v28 + 8))(v19, v21);
    (*(v15 + 8))(v16, v18);
  }

  else
  {
    v32 = 0;
    sub_1E6322DC8();
    v20 = v31;
    sub_1E65E6B18();
    sub_1E65E6B48();

    (*(v23 + 8))(v8, v6);
  }

  return (*(v12 + 8))(v14, v20);
}

uint64_t LibraryItemContext.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65DF3B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E632172C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0], MEMORY[0x1E699E600]);
    sub_1E65E5B48();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }
}

uint64_t LibraryItemContext.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E65DF3B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E632172C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0], MEMORY[0x1E699E600]);
    sub_1E65E5B48();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t LibraryItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783D8, &qword_1E65FC578);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v46 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783E0, &qword_1E65FC580);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783E8, &unk_1E65FC588);
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v46 - v8;
  v10 = type metadata accessor for LibraryItemContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E6322D20();
  v20 = v58;
  sub_1E65E6D98();
  if (!v20)
  {
    v47 = v16;
    v48 = v13;
    v21 = v7;
    v23 = v53;
    v22 = v54;
    v58 = v18;
    v49 = v10;
    v24 = v55;
    v25 = v56;
    v26 = sub_1E65E6AF8();
    v27 = (2 * *(v26 + 16)) | 1;
    v60 = v26;
    v61 = v26 + 32;
    v62 = 0;
    v63 = v27;
    v28 = sub_1E5FBE3F0();
    if (v28 == 2 || v62 != v63 >> 1)
    {
      v35 = sub_1E65E68F8();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v37 = v49;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v57 + 8))(v9, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        v64 = 1;
        sub_1E6322D74();
        v29 = v24;
        sub_1E65E6A68();
        v30 = v25;
        v31 = v58;
        sub_1E65DF3B8();
        sub_1E6322EC8(&qword_1ED0783F0, MEMORY[0x1E699E5F0], MEMORY[0x1E699E608]);
        v32 = v48;
        v33 = v51;
        sub_1E65E6AD8();
        (*(v52 + 8))(v29, v33);
        (*(v57 + 8))(v9, v22);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v34 = v32;
      }

      else
      {
        v64 = 0;
        sub_1E6322DC8();
        sub_1E65E6A68();
        v39 = v9;
        v40 = sub_1E65E6AA8();
        v41 = v57;
        v42 = v40;
        v44 = v43;
        (*(v50 + 8))(v21, v23);
        (*(v41 + 8))(v39, v22);
        swift_unknownObjectRelease();
        v45 = v47;
        *v47 = v42;
        v45[1] = v44;
        swift_storeEnumTagMultiPayload();
        v34 = v45;
        v30 = v25;
        v31 = v58;
      }

      sub_1E6322E1C(v34, v31);
      sub_1E6322E1C(v31, v30);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1E632283C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E65DF3B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E632172C(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0], MEMORY[0x1E699E600]);
    sub_1E65E5B48();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard18LibraryItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF3B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LibraryItemContext(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078448, &qword_1E65FC9D0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_1E632172C(a1, &v26 - v16);
  sub_1E632172C(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E632172C(v17, v13);
    v22 = *v13;
    v21 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v18 && v21 == v18[1])
      {
      }

      else
      {
        v24 = sub_1E65E6C18();

        if ((v24 & 1) == 0)
        {
          sub_1E63232C0(v17);
          goto LABEL_8;
        }
      }

      sub_1E63232C0(v17);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_1E6323258(v17);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_1E632172C(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v18, v4);
  v19 = MEMORY[0x1E6946DB0](v11, v7);
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
  sub_1E63232C0(v17);
  return v19 & 1;
}

unint64_t sub_1E6322D20()
{
  result = qword_1ED0783B8;
  if (!qword_1ED0783B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783B8);
  }

  return result;
}

unint64_t sub_1E6322D74()
{
  result = qword_1ED0783C0;
  if (!qword_1ED0783C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783C0);
  }

  return result;
}

unint64_t sub_1E6322DC8()
{
  result = qword_1ED0783D0;
  if (!qword_1ED0783D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783D0);
  }

  return result;
}

uint64_t sub_1E6322E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryItemContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6322EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6322F44()
{
  result = qword_1ED078400;
  if (!qword_1ED078400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078400);
  }

  return result;
}

unint64_t sub_1E6322F9C()
{
  result = qword_1ED078408;
  if (!qword_1ED078408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078408);
  }

  return result;
}

unint64_t sub_1E6322FF4()
{
  result = qword_1ED078410;
  if (!qword_1ED078410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078410);
  }

  return result;
}

unint64_t sub_1E632304C()
{
  result = qword_1ED078418;
  if (!qword_1ED078418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078418);
  }

  return result;
}

unint64_t sub_1E63230A4()
{
  result = qword_1ED078420;
  if (!qword_1ED078420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078420);
  }

  return result;
}

unint64_t sub_1E63230FC()
{
  result = qword_1ED078428;
  if (!qword_1ED078428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078428);
  }

  return result;
}

unint64_t sub_1E6323154()
{
  result = qword_1ED078430;
  if (!qword_1ED078430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078430);
  }

  return result;
}

unint64_t sub_1E63231AC()
{
  result = qword_1ED078438;
  if (!qword_1ED078438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078438);
  }

  return result;
}

unint64_t sub_1E6323204()
{
  result = qword_1ED078440;
  if (!qword_1ED078440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078440);
  }

  return result;
}

uint64_t sub_1E6323258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078448, &qword_1E65FC9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63232C0(uint64_t a1)
{
  v2 = type metadata accessor for LibraryItemContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E632331C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v57 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  sub_1E5E1DEAC(v4, &v48 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a1;
  v23[1] = a2;
  sub_1E65E5148();

  v49 = sub_1E65E5138();
  v56 = v4;
  sub_1E5E1DEAC(v4, v17);
  v24 = ((v20 + 32) & ~v20) + v9;
  v50 = v24;
  v51 = (v20 + 32) & ~v20;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1E65FC9F8;
  *(v25 + 24) = v22;
  v48 = &unk_1E65FC9F8;
  sub_1E5E1FA80(v57, v25 + ((v20 + 32) & ~v20));
  *(v25 + v24) = 0;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v57 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v49;
  *v27 = v49;
  v27[1] = v28;
  v30 = v52;
  sub_1E5E1DEAC(v4, v52);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65FC9F8;
  v34[3] = v22;
  v34[4] = v29;
  v35 = v29;
  v34[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v36 = v34 + v33;
  v37 = v56;
  *(v36 + 1) = v57;
  *(v36 + 2) = 0;
  v38 = v53;
  sub_1E5E1DEAC(v37, v53);
  v39 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v48;
  v40[2] = v48;
  v40[3] = v22;
  v40[4] = v35;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v38, v40 + v31);
  v42 = v40 + v39;
  v43 = v56;
  *v42 = v57;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v44 = v55;
  sub_1E5E1DEAC(v43, v55);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v22;
  sub_1E5E1FA80(v44, v45 + v51);
  swift_retain_n();
  result = swift_retain_n();
  v47 = v54;
  *v54 = v35;
  v47[1] = MEMORY[0x1E69AB380];
  v47[2] = &unk_1E65EB918;
  v47[3] = v25;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v40;
  v47[8] = &unk_1E65FA780;
  v47[9] = v45;
  return result;
}

uint64_t sub_1E632370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6323844, 0, 0);
}

uint64_t sub_1E6323844()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v0[2] = v5;
  v0[3] = v4;
  sub_1E65E4D78();
  (*(v2 + 8))(v1, v3);
  v7 = (v6 + *(type metadata accessor for AppComposer(0) + 36));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1E6323980;
  v11 = v0[4];

  return sub_1E6276C9C(v11, v9, v8);
}

uint64_t sub_1E6323980()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6323B38, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E6323B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6323BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65E3B68();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754F0, &qword_1E65F1B08);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078450, &qword_1E65FC9E0);
  v6[9] = swift_task_alloc();
  v8 = sub_1E65E2FB8();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for PageMetricsClick(0);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = sub_1E65E30D8();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6323DDC, 0, 0);
}

uint64_t sub_1E6323DDC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699EB18])
  {
    (*(v0[18] + 96))(v0[19], v0[17]);
    v5 = v0[19];
LABEL_5:
    v7 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    v11 = sub_1E65D74E8();
    v12 = *(v11 - 8);
    (*(v12 + 8))(v5, v11);
    sub_1E65E30A8();
    sub_1E60EFE64(v9);
    sub_1E5DFE50C(v10, &qword_1ED0754F0, &qword_1E65F1B08);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_1E5DFE50C(v0[9], &qword_1ED078450, &qword_1E65FC9E0);
      sub_1E65DE348();
      v13 = sub_1E65E3B48();
      v14 = sub_1E65E6328();
      v15 = os_log_type_enabled(v13, v14);
      v17 = v0[6];
      v16 = v0[7];
      v18 = v0[5];
      if (v15)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1E5DE9000, v13, v14, "Missing workout detail", v19, 2u);
        MEMORY[0x1E694F1C0](v19, -1, -1);
      }

      (*(v17 + 8))(v16, v18);
      goto LABEL_9;
    }

    v22 = v0[15];
    v23 = v0[13];
    v24 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v25 = sub_1E65D9D78();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = v23[5];
    v27 = *MEMORY[0x1E69CBA20];
    v28 = sub_1E65D8C68();
    (*(*(v28 - 8) + 104))(v22 + v26, v27, v28);
    (*(v12 + 56))(v22 + v23[6], 1, 1, v11);
    v29 = v23[8];
    v30 = sub_1E65DA208();
    (*(*(v30 - 8) + 56))(v22 + v29, 1, 1, v30);
    v31 = sub_1E65E2FA8();
    v33 = v32;
    v34 = v23[14];
    v35 = *MEMORY[0x1E69CBCC8];
    v36 = sub_1E65D8F28();
    (*(*(v36 - 8) + 104))(v22 + v34, v35, v36);
    v37 = v23[15];
    v38 = *MEMORY[0x1E69CC4B8];
    v39 = sub_1E65D9908();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v22 + v37, v38, v39);
    (*(v40 + 56))(v22 + v37, 0, 1, v39);
    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v22 + v23[7]) = v41;
    v43 = (v22 + v23[9]);
    *v43 = 0;
    v43[1] = 0;
    v44 = (v22 + v23[10]);
    *v44 = 0;
    v44[1] = 0;
    *(v22 + v23[11]) = v42;
    v45 = (v22 + v23[12]);
    *v45 = 0;
    v45[1] = 0;
    v46 = (v22 + v23[13]);
    *v46 = v31;
    v46[1] = v33;
    v100 = (*(v24 + 48) + **(v24 + 48));
    v47 = swift_task_alloc();
    v0[24] = v47;
    *v47 = v0;
    v47[1] = sub_1E6324E74;
    v48 = v0[15];
    goto LABEL_15;
  }

  if (v4 == *MEMORY[0x1E699EB10])
  {
    v6 = v0[19];
    (*(v0[18] + 96))(v6, v0[17]);

    v5 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078458, &qword_1E65FC9E8) + 48);
    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E699EB00])
  {
    v49 = v0[19];
    v51 = v0[13];
    v50 = v0[14];
    v52 = v0[3];
    (*(v0[18] + 96))(v49, v0[17]);
    v53 = *v49;
    v54 = v49[1];
    v55 = sub_1E65D9D78();
    (*(*(v55 - 8) + 56))(v50, 1, 1, v55);
    v56 = v51[5];
    v57 = *MEMORY[0x1E69CBAA0];
    v58 = sub_1E65D8C68();
    (*(*(v58 - 8) + 104))(v50 + v56, v57, v58);
    v59 = v51[6];
    v60 = sub_1E65D74E8();
    (*(*(v60 - 8) + 56))(v50 + v59, 1, 1, v60);
    v61 = v51[8];
    v62 = sub_1E65DA208();
    (*(*(v62 - 8) + 56))(v50 + v61, 1, 1, v62);
    v63 = v51[14];
    v64 = *MEMORY[0x1E69CBCC8];
    v65 = sub_1E65D8F28();
    (*(*(v65 - 8) + 104))(v50 + v63, v64, v65);
    v66 = v51[15];
    v67 = *MEMORY[0x1E69CC490];
    v68 = sub_1E65D9908();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v50 + v66, v67, v68);
    (*(v69 + 56))(v50 + v66, 0, 1, v68);
    v70 = MEMORY[0x1E69E7CC0];
    v71 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v50 + v51[7]) = v70;
    v72 = (v50 + v51[9]);
    *v72 = 0;
    v72[1] = 0;
    v73 = (v50 + v51[10]);
    *v73 = 0;
    v73[1] = 0;
    *(v50 + v51[11]) = v71;
    v74 = (v50 + v51[12]);
    *v74 = 0;
    v74[1] = 0;
    v75 = (v50 + v51[13]);
    *v75 = v53;
    v75[1] = v54;
    v100 = (*(v52 + 48) + **(v52 + 48));
    v76 = swift_task_alloc();
    v0[26] = v76;
    *v76 = v0;
    v76[1] = sub_1E6325078;
    v48 = v0[14];
LABEL_15:

    return v100(v48);
  }

  if (v4 != *MEMORY[0x1E699EB08])
  {
    if (v4 != *MEMORY[0x1E699EAF8])
    {
      (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_9:

      v20 = v0[1];

      return v20();
    }

    v78 = v0[16];
    v79 = v0[13];
    v80 = v0[3];
    v81 = sub_1E65D9D78();
    (*(*(v81 - 8) + 56))(v78, 1, 1, v81);
    v82 = v79[5];
    v83 = *MEMORY[0x1E69CBA18];
    v84 = sub_1E65D8C68();
    (*(*(v84 - 8) + 104))(v78 + v82, v83, v84);
    v85 = v79[6];
    v86 = sub_1E65D74E8();
    (*(*(v86 - 8) + 56))(v78 + v85, 1, 1, v86);
    v87 = v79[8];
    v88 = sub_1E65DA208();
    (*(*(v88 - 8) + 56))(v78 + v87, 1, 1, v88);
    v89 = v79[14];
    v90 = *MEMORY[0x1E69CBCC8];
    v91 = sub_1E65D8F28();
    (*(*(v91 - 8) + 104))(v78 + v89, v90, v91);
    v92 = v79[15];
    v93 = sub_1E65D9908();
    (*(*(v93 - 8) + 56))(v78 + v92, 1, 1, v93);
    v94 = MEMORY[0x1E69E7CC0];
    v95 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v78 + v79[7]) = v94;
    v96 = (v78 + v79[9]);
    *v96 = 0;
    v96[1] = 0;
    v97 = (v78 + v79[10]);
    *v97 = 0;
    v97[1] = 0;
    *(v78 + v79[11]) = v95;
    v98 = (v78 + v79[12]);
    *v98 = 0;
    v98[1] = 0;
    *(v78 + v79[13]) = xmmword_1E65F75A0;
    v100 = (*(v80 + 48) + **(v80 + 48));
    v99 = swift_task_alloc();
    v0[22] = v99;
    *v99 = v0;
    v99[1] = sub_1E6324C90;
    v48 = v0[16];
    goto LABEL_15;
  }

  v101 = (*(v0[3] + 16) + **(v0[3] + 16));
  v77 = swift_task_alloc();
  v0[20] = v77;
  *v77 = v0;
  v77[1] = sub_1E6324AB4;

  return v101();
}

uint64_t sub_1E6324AB4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1E632525C;
  }

  else
  {
    v2 = sub_1E6324BC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6324BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6324C90()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E6325324;
  }

  else
  {
    v2 = sub_1E6324DA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6324DA4()
{
  sub_1E5FC0990(*(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6324E74()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1E63254C4;
  }

  else
  {
    v2 = sub_1E6324F88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6324F88()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1E5FC0990(v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6325078()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E63253F4;
  }

  else
  {
    v2 = sub_1E632518C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E632518C()
{
  sub_1E5FC0990(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E632525C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6325324()
{
  sub_1E5FC0990(*(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63253F4()
{
  sub_1E5FC0990(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63254C4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1E5FC0990(v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63255B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E632370C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E6325704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9DFE8;

  return sub_1E63257E0(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E63257E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 104) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = sub_1E65E1278();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63258A8, 0, 0);
}

uint64_t sub_1E63258A8()
{
  v24 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 24);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = v1;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    sub_1E5F059EC(v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136446210;
      *(v0 + 16) = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v10 = sub_1E65E5CE8();
      v12 = sub_1E5DFD4B0(v10, v11, &v23);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to purchase %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E694F1C0](v8, -1, -1);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 32);
    **(v0 + 72) = v1;
    (*(v15 + 104))();
    v17 = v1;
    v18 = sub_1E625E194(v16);
    if (!v18)
    {
      v18 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
    }

    *(v0 + 80) = v18;
    v19 = v18;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_1E6325B50;
    v21 = *(v0 + 72);
    v22 = *(v0 + 40);

    return sub_1E6326DDC(v22, v21, v19);
  }
}

uint64_t sub_1E6325B50()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6325D28, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E6325D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6325DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9DFE8;

  return sub_1E6325E9C(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E6325E9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 104) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = sub_1E65E1278();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6325F64, 0, 0);
}

uint64_t sub_1E6325F64()
{
  v24 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 24);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = v1;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    sub_1E5F059EC(v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136446210;
      *(v0 + 16) = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v10 = sub_1E65E5CE8();
      v12 = sub_1E5DFD4B0(v10, v11, &v23);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to purchase carrier link %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E694F1C0](v8, -1, -1);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 32);
    **(v0 + 72) = v1;
    (*(v15 + 104))();
    v17 = v1;
    v18 = sub_1E625E194(v16);
    if (!v18)
    {
      v18 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
    }

    *(v0 + 80) = v18;
    v19 = v18;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_1E632620C;
    v21 = *(v0 + 72);
    v22 = *(v0 + 40);

    return sub_1E6326DDC(v22, v21, v19);
  }
}

uint64_t sub_1E632620C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6327C78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E632644C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325DC0(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E63265A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D7158();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1E65D7428();
  sub_1E65D7138();

  v9 = *(v3 + 48);
  if (!v9(v8, 1, v2))
  {
    sub_1E65D7128();
  }

  if (v9(v8, 1, v2))
  {
    v10 = sub_1E65D74E8();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1E65D70F8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1E6327C08(v8);
}

void sub_1E63267A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1E65D74E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    (*(v6 + 16))(v8, a3, v5);
    v11 = a2;
    v12 = sub_1E65E3B48();
    v13 = sub_1E65E6328();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 141558530;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2080;
      sub_1E5FFE9E4();
      v16 = sub_1E65E6BC8();
      v18 = v17;
      (*(v6 + 8))(v8, v5);
      v19 = sub_1E5DFD4B0(v16, v18, &v25);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2082;
      v24 = a2;
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v21 = sub_1E65E5CE8();
      v23 = sub_1E5DFD4B0(v21, v22, &v25);

      *(v14 + 24) = v23;
      _os_log_impl(&dword_1E5DE9000, v12, v13, "Failed to load %{mask.hash}s: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v15, -1, -1);
      MEMORY[0x1E694F1C0](v14, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1E6326AC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v28[1] = a7;
  v29 = a8;
  v28[0] = a1;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v28 - v18;
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1E5E1DEAC(a3, v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DF650C(a5, v30);
  sub_1E65E6058();
  LOBYTE(a3) = a2 & 1;
  a6(a1, a2 & 1);

  v21 = sub_1E65E6048();
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v22 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  sub_1E5E1FA80(v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  v26 = v24 + ((v22 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v28[0];
  *(v26 + 8) = a3;
  *(v24 + v23) = a4;
  sub_1E5DF599C(v30, v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1E6059EAC(0, 0, v19, v29, v24);
}

uint64_t sub_1E6326D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9D470;

  return sub_1E63257E0(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E6326DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for RouteDestination(0);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for AppAction(0);
  v4[9] = swift_task_alloc();
  v5 = sub_1E65DB638();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6326F00, 0, 0);
}

uint64_t sub_1E6326F00()
{
  v1 = v0[12];
  v2 = v0[4];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v3 = MarketingService.publishServiceSubscriptionPurchased.getter();
  v0[13] = v4;
  sub_1E63B08E8(v1);
  if (v2 && (v5 = sub_1E625E194(v0[4])) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  v0[14] = v6;
  v10 = (v3 + *v3);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1E6327084;
  v8 = v0[12];

  return v10(v8, v6);
}

uint64_t sub_1E6327084()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E632721C, 0, 0);
}

uint64_t sub_1E632721C()
{
  v1 = *(v0 + 72);
  *(v0 + 128) = **(v0 + 40);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63272D4, v3, v2);
}

uint64_t sub_1E63272D4()
{
  v1 = *(v0 + 72);

  sub_1E65E4EE8();
  sub_1E60E7A9C(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6327364, 0, 0);
}

uint64_t sub_1E6327364()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 160));
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_1E6327488;
  v7 = *(v0 + 56);

  return RoutingContext.resolveDetours(_:priority:)(v7, (v0 + 160), v5, v4);
}

uint64_t sub_1E6327488()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 152) = v0;

  sub_1E60E7A9C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E632761C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E632761C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6327698(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325704(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E63277F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325DC0(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327950(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325704(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327AAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFA78C;

  return sub_1E6326D00(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6327C7C(uint64_t *a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_1E65E1188();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = sub_1E65E1458();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - v18;
  sub_1E65E1138();
  sub_1E60EF9DC(v12);
  sub_1E5DFE50C(v9, &qword_1ED0753A8, &qword_1E65F1A30);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1E5DFE50C(v12, &qword_1ED075868, &qword_1E65F1E60);
  }

  v33 = *(v14 + 32);
  v34 = v19;
  v21 = v19;
  v33(v19, v12, v13);
  v22 = sub_1E65E60A8();
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  v23 = v35;
  sub_1E632B070(v36, v35, MEMORY[0x1E699E780]);
  (*(v14 + 16))(v17, v21, v13);
  v24 = a1[3];
  v32[0] = *a1;
  v32[1] = v24;
  v25 = a1[7];
  v32[2] = a1[5];
  v32[3] = v25;
  v36 = a1[9];
  v26 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v27 = (v4 + *(v14 + 80) + v26) & ~*(v14 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1E632B0D8(v23, v28 + v26, MEMORY[0x1E699E780]);
  v33((v28 + v27), v17, v13);
  v29 = (v28 + ((v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = *(a1 + 3);
  v29[2] = *(a1 + 2);
  v29[3] = v30;
  v29[4] = *(a1 + 4);
  v31 = *(a1 + 1);
  *v29 = *a1;
  v29[1] = v31;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v38, &unk_1E65FCAC0, v28);

  return (*(v14 + 8))(v34, v13);
}

uint64_t sub_1E632810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v8 = sub_1E65D8F28();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = sub_1E65D8C68();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for PageMetricsClick(0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = sub_1E65E1478();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v11 = sub_1E65E1118();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();
  sub_1E65E1188();
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63284B0, 0, 0);
}

uint64_t sub_1E63284B0()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  sub_1E632B070(v0[2], v1, MEMORY[0x1E699E780]);
  if ((*(v3 + 48))(v1, 6, v2))
  {
LABEL_2:

    v4 = v0[1];

    return v4();
  }

  v6 = v0[29];
  v7 = v0[25];
  v8 = v0[26];
  (*(v0[31] + 32))(v0[32], v0[33], v0[30]);
  sub_1E65E1108();
  v9 = (*(v8 + 88))(v6, v7);
  if (v9 == *MEMORY[0x1E699E840])
  {
    v10 = v0[28];
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[21];
    v14 = v0[19];
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v81 = v0[13];
    v87 = v0[8];
    v94 = v0[6];
    v90 = v0[5];
    (*(v11 + 96))(v0[29], v12);
    v19 = sub_1E65D9D78();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    (*(v15 + 104))(v14, *MEMORY[0x1E69CBA08], v16);
    v20 = sub_1E65D74E8();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E65EB9E0;
    v98 = v21;
    sub_1E65E1108();
    sub_1E62FCDB4();
    v83 = *(v11 + 8);
    v83(v10, v12);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E10F8();
    v80 = *MEMORY[0x1E69CBCA0];
    v79 = *(v18 + 104);
    v79(v81);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E64C71B8(0);
    sub_1E65E13F8();
    v22 = sub_1E65E1778();
    (*(v94 + 8))(v87, v90);
    if (v22)
    {
      sub_1E65DA1D8();
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v39 = v0[27];
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[22];
    v82 = v0[19];
    v43 = v0[17];
    v77 = v0[21];
    v78 = v0[16];
    v88 = v0[15];
    v45 = v0[10];
    v44 = v0[11];
    v96 = v0[4];
    v46 = sub_1E65DA208();
    (*(*(v46 - 8) + 56))(v45, v23, 1, v46);
    v47 = sub_1E65D88A8();
    v92 = v48;
    sub_1E65E1108();
    v49 = sub_1E62FCDB4();
    v86 = v50;
    v83(v39, v41);
    (v79)(v40 + v42[14], v80, v44);
    v51 = v42[15];
    v52 = sub_1E65D9908();
    (*(*(v52 - 8) + 56))(v40 + v51, 1, 1, v52);
    v53 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v77, v40, &qword_1ED073578, &qword_1E65F0E60);
    (*(v43 + 32))(v40 + v42[5], v82, v78);
    sub_1E5FAB460(v88, v40 + v42[6], &qword_1ED072340, &qword_1E65EA410);
    *(v40 + v42[7]) = v98;
    sub_1E5FAB460(v45, v40 + v42[8], &qword_1ED073570, &unk_1E65F4570);
    v54 = (v40 + v42[9]);
    *v54 = 0;
    v54[1] = 0;
    v55 = (v40 + v42[10]);
    *v55 = 0;
    v55[1] = 0;
    *(v40 + v42[11]) = v53;
    v56 = (v40 + v42[12]);
    *v56 = v47;
    v56[1] = v92;
    v57 = (v40 + v42[13]);
    *v57 = v49;
    v57[1] = v86;
    v103 = (*(v96 + 48) + **(v96 + 48));
    v58 = swift_task_alloc();
    v0[34] = v58;
    *v58 = v0;
    v58[1] = sub_1E6329184;
    v59 = v0[24];
  }

  else
  {
    if (v9 != *MEMORY[0x1E699E838] && v9 != *MEMORY[0x1E699E848])
    {
      v24 = v0[29];
      v25 = v0[25];
      v26 = v0[26];
      (*(v0[31] + 8))(v0[32], v0[30]);
      (*(v26 + 8))(v24, v25);
      goto LABEL_2;
    }

    v27 = v0[20];
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[16];
    v31 = v0[14];
    v85 = v0[13];
    v32 = v0[12];
    v102 = v0[11];
    v91 = v0[7];
    v95 = v0[5];
    v99 = v0[6];
    (*(v0[26] + 8))(v0[29], v0[25]);
    v33 = sub_1E65D9D78();
    (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
    (*(v29 + 104))(v28, *MEMORY[0x1E69CB9D8], v30);
    v34 = sub_1E65D74E8();
    (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E65EB9E0;
    v101 = v35;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E10F8();
    v36 = *MEMORY[0x1E69CBCA0];
    v84 = *(v32 + 104);
    v84(v85, v36, v102);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E64C71B8(0);
    sub_1E65E13F8();
    v37 = sub_1E65E1778();
    (*(v99 + 8))(v91, v95);
    if (v37)
    {
      sub_1E65DA1D8();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v60 = v0[22];
    v61 = v0[23];
    v62 = v0[20];
    v63 = v0[17];
    v89 = v0[16];
    v93 = v0[18];
    v97 = v0[14];
    v64 = v0[11];
    v65 = v0[9];
    v66 = v0[4];
    v67 = sub_1E65DA208();
    (*(*(v67 - 8) + 56))(v65, v38, 1, v67);
    v68 = sub_1E65D88A8();
    v100 = v69;
    v84(v61 + v60[14], v36, v64);
    v70 = v60[15];
    v71 = sub_1E65D9908();
    (*(*(v71 - 8) + 56))(v61 + v70, 1, 1, v71);
    v72 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v62, v61, &qword_1ED073578, &qword_1E65F0E60);
    (*(v63 + 32))(v61 + v60[5], v93, v89);
    sub_1E5FAB460(v97, v61 + v60[6], &qword_1ED072340, &qword_1E65EA410);
    *(v61 + v60[7]) = v101;
    sub_1E5FAB460(v65, v61 + v60[8], &qword_1ED073570, &unk_1E65F4570);
    v73 = (v61 + v60[9]);
    *v73 = 0;
    v73[1] = 0;
    v74 = (v61 + v60[10]);
    *v74 = 0;
    v74[1] = 0;
    *(v61 + v60[11]) = v72;
    v75 = (v61 + v60[12]);
    *v75 = v68;
    v75[1] = v100;
    *(v61 + v60[13]) = xmmword_1E65FCA90;
    v103 = (*(v66 + 48) + **(v66 + 48));
    v76 = swift_task_alloc();
    v0[38] = v76;
    *v76 = v0;
    v76[1] = sub_1E6329628;
    v59 = v0[23];
  }

  return v103(v59);
}

uint64_t sub_1E6329184()
{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63298B8, 0, 0);
  }

  else
  {
    v5 = (*(v2[4] + 32) + **(v2[4] + 32));
    v3 = swift_task_alloc();
    v2[36] = v3;
    *v3 = v2;
    v3[1] = sub_1E6329354;

    return v5();
  }
}

uint64_t sub_1E6329354()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1E6329A80;
  }

  else
  {
    v2 = sub_1E6329468;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6329468()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6329628()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1E6329C48;
  }

  else
  {
    v2 = sub_1E632973C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E632973C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_1E632B010(v0[23], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63298B8()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6329A80()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6329C48()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_1E632B010(v0[23], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1E6329DCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v151 = a4;
  v147 = a2;
  v148 = a3;
  v138 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v143 = &v117 - v5;
  v6 = type metadata accessor for PageMetricsClick(0);
  v7 = *(v6 - 8);
  v134 = v6;
  v135 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v136 = v9;
  v137 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = &v117 - v12;
  v150 = sub_1E65D8F28();
  v131 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65D74E8();
  v139 = *(v14 - 8);
  v140 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v117 - v19;
  v20 = sub_1E65DA208();
  v141 = *(v20 - 8);
  v142 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v130 = &v117 - v23;
  v24 = sub_1E65D8C68();
  v145 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v117 - v28;
  v30 = sub_1E65D9D78();
  v144 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078460, &qword_1E65FCAA0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v117 - v35;
  v37 = sub_1E65E1578();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E632B070(v151, v39, MEMORY[0x1E699E8A8]);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E632B010(v39, MEMORY[0x1E699E8A8]);
  }

  else
  {
    v123 = v29;
    v124 = v32;
    v125 = v30;
    v126 = v26;
    v151 = v24;
    v40 = v149;
    v41 = v150;
    (*(v34 + 32))(v36, v39, v33);
    v42 = sub_1E65E1778();
    v43 = v36;
    if (v42)
    {
      v44 = v42;
      v45 = [v42 originalRequest];
      v46 = [v44 selectedActionIdentifier];
      if (!v46)
      {
        sub_1E65E5C78();
        v46 = sub_1E65E5C48();
      }

      v47 = [v45 locateActionWithIdentifier_];

      if (v47)
      {
        v118 = v44;
        v119 = v43;
        v120 = v34;
        v121 = v33;
        v122 = [v47 style];
        v48 = v123;
        sub_1E6378880(v123);
        v49 = v144;
        v50 = *(v144 + 48);
        v51 = v125;
        if (v50(v48, 1, v125) == 1)
        {
          (*(v49 + 104))(v124, *MEMORY[0x1E69CC910], v51);
          v52 = v50(v48, 1, v51);
          v53 = v41;
          v54 = v130;
          if (v52 != 1)
          {
            sub_1E5DFE50C(v48, &qword_1ED073578, &qword_1E65F0E60);
          }
        }

        else
        {
          (*(v49 + 32))(v124, v48, v51);
          v53 = v41;
          v54 = v130;
        }

        sub_1E6378AF8(v54);
        v55 = v145;
        v56 = *(v145 + 48);
        v57 = v151;
        v58 = v56(v54, 1, v151) == 1;
        v59 = v133;
        if (v58)
        {
          v60 = MEMORY[0x1E69CBA90];
          if (v122 != 2)
          {
            v60 = MEMORY[0x1E69CBAA0];
          }

          (*(v55 + 104))(v126, *v60, v57);
          v58 = v56(v54, 1, v57) == 1;
          v62 = v132;
          v61 = v54;
          v63 = v147;
          v64 = v148;
          if (!v58)
          {
            sub_1E5DFE50C(v61, &qword_1ED076458, &qword_1E65F56A8);
          }
        }

        else
        {
          (*(v55 + 32))(v126, v54, v57);
          v62 = v132;
          v63 = v147;
          v64 = v148;
        }

        v132 = v47;
        v65 = sub_1E6378D68();
        if (v66)
        {
          v63 = v65;
          v64 = v66;
        }

        else
        {
        }

        v67 = sub_1E6378FAC();
        v69 = v68;

        v123 = v69;
        v130 = v67;
        v147 = v63;
        sub_1E65DA1F8();
        v70 = sub_1E63791FC();
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0x65736F6C43;
        }

        if (v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = 0xE500000000000000;
        }

        if (v71)
        {
          v74 = v59;
        }

        else
        {
          v74 = v59;
          if (v122 != 2)
          {
            v75 = [v132 deepLink];
            v76 = v40;
            if (v75)
            {
              v77 = v127;
              v78 = v75;
              sub_1E65D7478();

              v79 = 0;
              v80 = v129;
              v81 = v128;
            }

            else
            {
              v79 = 1;
              v80 = v129;
              v81 = v128;
              v77 = v127;
            }

            v82 = v139;
            v83 = v140;
            (*(v139 + 56))(v77, v79, 1, v140);
            sub_1E5FAB460(v77, v81, &qword_1ED072340, &qword_1E65EA410);
            if ((*(v82 + 48))(v81, 1, v83))
            {
              sub_1E5DFE50C(v81, &qword_1ED072340, &qword_1E65EA410);
              v72 = 0;
              v73 = 0;
            }

            else
            {
              (*(v82 + 16))(v80, v81, v83);
              sub_1E5DFE50C(v81, &qword_1ED072340, &qword_1E65EA410);
              v72 = sub_1E65D7428();
              v73 = v84;
              (*(v82 + 8))(v80, v83);
            }

            v40 = v76;
            v53 = v150;
          }
        }

        v129 = v72;
        v148 = v64;
        sub_1E6379318(v74);
        v85 = v131;
        v86 = *(v131 + 48);
        v87 = v86(v74, 1, v53);
        v128 = v73;
        if (v87 == 1)
        {
          v88 = MEMORY[0x1E69CBCC8];
          if (v122 != 2)
          {
            v88 = MEMORY[0x1E69CBCF8];
          }

          (*(v85 + 104))(v40, *v88, v53);
          v89 = v86(v74, 1, v53);
          v90 = v143;
          v91 = v138;
          v92 = v53;
          v93 = v40;
          if (v89 != 1)
          {
            sub_1E5DFE50C(v74, &qword_1ED076450, &qword_1E65F56A0);
          }
        }

        else
        {
          (*(v85 + 32))(v40, v74, v53);
          v90 = v143;
          v91 = v138;
          v92 = v53;
          v93 = v40;
        }

        v94 = v144;
        v95 = v125;
        (*(v144 + 16))(v62, v124, v125);
        (*(v94 + 56))(v62, 0, 1, v95);
        v96 = v134;
        (*(v145 + 16))(&v62[v134[5]], v126, v151);
        (*(v139 + 56))(&v62[v96[6]], 1, 1, v140);
        v97 = v96[8];
        v98 = v142;
        v99 = v141;
        (*(v141 + 16))(&v62[v97], v146, v142);
        (*(v99 + 56))(&v62[v97], 0, 1, v98);
        (*(v85 + 16))(&v62[v96[14]], v93, v92);
        v100 = v96[15];
        v101 = sub_1E65D9908();
        (*(*(v101 - 8) + 56))(&v62[v100], 1, 1, v101);
        v102 = MEMORY[0x1E69E7CC0];
        v103 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *&v62[v96[7]] = v102;
        v104 = &v62[v96[9]];
        v105 = v123;
        *v104 = v130;
        *(v104 + 1) = v105;
        v106 = &v62[v96[10]];
        v107 = v148;
        *v106 = v147;
        v106[1] = v107;
        *&v62[v96[11]] = v103;
        v108 = &v62[v96[12]];
        *v108 = 0;
        *(v108 + 1) = 0;
        v109 = &v62[v96[13]];
        v110 = v128;
        *v109 = v129;
        *(v109 + 1) = v110;
        v111 = sub_1E65E60A8();
        (*(*(v111 - 8) + 56))(v90, 1, 1, v111);
        v148 = v91[9];
        v112 = v137;
        sub_1E632B070(v62, v137, type metadata accessor for PageMetricsClick);
        v113 = (*(v135 + 80) + 112) & ~*(v135 + 80);
        v114 = swift_allocObject();
        *(v114 + 16) = 0;
        *(v114 + 24) = 0;
        v115 = *(v91 + 3);
        *(v114 + 64) = *(v91 + 2);
        *(v114 + 80) = v115;
        *(v114 + 96) = *(v91 + 4);
        v116 = *(v91 + 1);
        *(v114 + 32) = *v91;
        *(v114 + 48) = v116;
        sub_1E632B0D8(v112, v114 + v113, type metadata accessor for PageMetricsClick);
        swift_unknownObjectRetain();

        sub_1E6059EAC(0, 0, v143, &unk_1E65FCAB0, v114);

        sub_1E632B010(v62, type metadata accessor for PageMetricsClick);
        (*(v85 + 8))(v149, v150);
        (*(v141 + 8))(v146, v142);
        (*(v145 + 8))(v126, v151);
        (*(v144 + 8))(v124, v125);
        (*(v120 + 8))(v119, v121);
      }

      else
      {
        (*(v34 + 8))(v43, v33);
      }
    }

    else
    {
      (*(v34 + 8))(v36, v33);
    }
  }
}

uint64_t sub_1E632AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a4 + 48) + **(a4 + 48));
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5DFA78C;

  return v9(a5);
}

uint64_t sub_1E632AF1C(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E632AE28(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E632B010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E632B070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E632B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E632B140(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E1188() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E1458() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E632810C(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E632B2D8()
{
  result = qword_1ED078468;
  if (!qword_1ED078468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078468);
  }

  return result;
}

uint64_t sub_1E632B32C(uint64_t a1)
{
  v40 = a1;
  v39 = sub_1E65E1518();
  v37 = *(v39 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078470, &qword_1E65FCC08);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v32 - v4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1E65E12B8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = sub_1E65E1228();
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v45 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v33 = v1;
  sub_1E5E1DEAC(v1, v10);
  v13 = *(v6 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  sub_1E5E1E2B8(v10, v15 + v14, type metadata accessor for AppComposer);
  v16 = v1;
  v17 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v16, v17);
  v18 = swift_allocObject();
  sub_1E5E1E2B8(v17, v18 + v14, type metadata accessor for AppComposer);
  sub_1E65E12A8();
  sub_1E65E1218();
  v19 = v37;
  v20 = v34;
  v21 = v39;
  (*(v37 + 16))(v34, v40, v39);
  sub_1E5E1DEAC(v33, v10);
  v22 = v19;
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = (v38 + v13 + v23) & ~v13;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v20, v21);
  sub_1E5E1E2B8(v10, v25 + v24, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E632E814(&qword_1EE2D6528, MEMORY[0x1E699E7B0], MEMORY[0x1E699E7A8]);
  v26 = v42;
  v27 = v36;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v28 = v45;
  v29 = v27;
  v30 = sub_1E65E4F08();
  (*(v43 + 8))(v26, v44);
  (*(v41 + 8))(v28, v29);
  return v30;
}

uint64_t sub_1E632B870(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E632B93C, 0, 0);
}

uint64_t sub_1E632B93C()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632B9EC, v3, v2);
}

uint64_t sub_1E632B9EC()
{

  sub_1E5E20198(13, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    *(v0 + 128) = *(v0 + 56);
    v1 = sub_1E611ECA8;
  }

  else
  {
    v1 = sub_1E632E954;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E632BAC4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E632BB90, 0, 0);
}

uint64_t sub_1E632BB90()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BC40, v3, v2);
}

uint64_t sub_1E632BC40()
{

  sub_1E5E20198(13, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    *(v0 + 128) = *(v0 + 56);
    v1 = sub_1E632BD18;
  }

  else
  {
    v1 = sub_1E611EC48;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E632BD18(uint64_t a1)
{
  *(v1 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BDA4, v3, v2);
}

uint64_t sub_1E632BDA4()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E632BE30, 0, 0);
}

uint64_t sub_1E632BE30(uint64_t a1)
{
  *(v1 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BEBC, v3, v2);
}

uint64_t sub_1E632BEBC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  sub_1E65E4E18();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E632BF54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v28 - v5;
  v6 = sub_1E65E1518();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E11E8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1E65D7848();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v18);
  sub_1E5DFE50C(v15, &qword_1ED071F78, &unk_1E65EA3F0);
  v23 = *(v20 + 48);
  if (v23(v18, 1, v19) == 1)
  {
    sub_1E65D77C8();
    if (v23(v18, 1, v19) != 1)
    {
      sub_1E5DFE50C(v18, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
  }

  v24 = sub_1E65E1508();
  v25 = type metadata accessor for AppComposer(0);
  sub_1E60E4340(v24, *(v30 + *(v25 + 20) + 8), v12);
  sub_1E65DAE08();
  v26 = sub_1E65E1508();
  sub_1E60E3EA8(v26, v29);
  (*(v31 + 16))(v33, a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  sub_1E65E4D78();
  return sub_1E65E1178();
}

uint64_t sub_1E632C3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a4;
  v100 = a3;
  v108 = a1;
  v118 = a5;
  v107 = sub_1E65E1518();
  v104 = *(v107 - 8);
  v106 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v88 - v9;
  v10 = sub_1E65E1398();
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v95 = &v88 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v88 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v93 = &v88 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  v26 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v88 - v27;
  v29 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v96 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E65E1208();
  v109 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v124 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E65E1168();
  v103 = *(v102 - 8);
  v111 = *(v103 + 64);
  v32 = MEMORY[0x1EEE9AC00](v102);
  v112 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v105 = &v88 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v123 = &v88 - v36;
  (*(v37 + 104))();
  v38 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v99 = *a2;
  v92 = v28;
  sub_1E5E1DEAC(a2, v28);
  sub_1E5DF650C(a3, &v128);
  v39 = *(v13 + 80);
  v40 = (v39 + 24) & ~v39;
  v91 = v26;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  sub_1E5E1E2B8(v28, v41 + v40, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v128, v41 + ((v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = a2;
  sub_1E5E1DEAC(a2, v24);
  v43 = (v39 + 16) & ~v39;
  v89 = swift_allocObject();
  sub_1E5E1E2B8(v24, v89 + v43, type metadata accessor for AppComposer);
  v44 = v93;
  sub_1E5E1DEAC(v42, v93);
  v88 = swift_allocObject();
  sub_1E5E1E2B8(v44, v88 + v43, type metadata accessor for AppComposer);
  v45 = v94;
  sub_1E5E1DEAC(v42, v94);
  v93 = swift_allocObject();
  sub_1E5E1E2B8(v45, v93 + v43, type metadata accessor for AppComposer);
  v46 = v42;
  v47 = v42;
  v120 = v42;
  v48 = v95;
  sub_1E5E1DEAC(v46, v95);
  v90 = v43 + v26;
  v49 = swift_allocObject();
  v122 = v43;
  v119 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v48, v49 + v43, type metadata accessor for AppComposer);
  v50 = v47;
  v51 = v97;
  sub_1E5E1DEAC(v50, v97);
  v121 = v39 | 7;
  v52 = swift_allocObject();
  sub_1E5E1E2B8(v51, v52 + v43, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v53 = v104;
  v54 = v101;
  v55 = v107;
  (*(v104 + 16))(v101, v108, v107);
  v56 = v120;
  v57 = v92;
  sub_1E5E1DEAC(v120, v92);
  v58 = v53;
  v59 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v60 = (v106 + v39 + v59) & ~v39;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v54, v55);
  v62 = v57;
  v63 = v119;
  sub_1E5E1E2B8(v57, v61 + v60, v119);
  type metadata accessor for AppFeature(0);
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v108 = sub_1E632E814(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v64 = v110;
  v65 = v98;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v56, v62);
  v107 = v113[7];
  v66 = (v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = v113[9];
  v67 = v113;
  v68 = swift_allocObject();
  sub_1E5E1E2B8(v62, v68 + v122, v63);
  v69 = (v68 + v66);
  v70 = v67[3];
  v69[2] = v67[2];
  v69[3] = v70;
  v69[4] = v67[4];
  v71 = v67[1];
  *v69 = *v67;
  v69[1] = v71;
  swift_unknownObjectRetain();

  v73 = v124;
  v72 = v125;
  v74 = sub_1E65E4F08();

  (*(v116 + 8))(v64, v117);
  (*(v114 + 8))(v72, v115);
  (*(v109 + 8))(v73, v65);
  v75 = v103;
  v76 = *(v103 + 16);
  v77 = v123;
  v78 = v102;
  v76(v105, v123, v102);
  sub_1E5E1DEAC(v120, v62);
  sub_1E5DF650C(v100, &v128);
  v79 = swift_allocObject();
  sub_1E5E1E2B8(v62, v79 + v122, v119);
  sub_1E5DF599C(&v128, v79 + v66);
  v80 = v112;
  v76(v112, v77, v78);
  v81 = v75;
  v82 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v83 = (v111 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  (*(v81 + 32))(v84 + v82, v80, v78);
  *(v84 + v83) = v74;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E632E814(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v126 = v85;
  v127 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  return (*(v81 + 8))(v123, v78);
}

uint64_t sub_1E632D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v65 = a4;
  v61 = a2;
  v62 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v54 - v11;
  v63 = type metadata accessor for ArtworkContent(0);
  v12 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = type metadata accessor for ArtworkDescriptor(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v54 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_1E65E14B8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v62, v24, &qword_1ED077088, &qword_1E65F9540);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1E5DFE50C(v24, &qword_1ED077088, &qword_1E65F9540);
    swift_storeEnumTagMultiPayload();
    if (sub_1E65E4B48())
    {
      v29 = 8.0;
    }

    else
    {
      v29 = 4.0;
    }

    sub_1E5E1E2B8(v15, v21, type metadata accessor for ArtworkContent);
    *(v21 + v16[5]) = MEMORY[0x1E69E7CD0];
    v30 = (v21 + v16[6]);
    *v30 = 0.0;
    v30[1] = v29;
    v30[2] = v29;
    v30[3] = 8.0;
    *(v21 + v16[7]) = 1;
    v31 = (v21 + v16[8]);
    *v31 = 0;
    v31[1] = 0;
    v32 = v64;
    v33 = v65;
    sub_1E64D2DD0(v21, v64, v65);
    v34 = sub_1E65E4B98();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
    sub_1E64D54B4(v21, v32, v33 + v37);
    sub_1E61BF8AC(v21);
  }

  else
  {
    v54 = v25;
    v55 = v26;
    (*(v26 + 32))(v28, v24, v25);
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    v38 = v57;
    sub_1E65E14A8();
    v39 = v58;
    sub_1E65E1498();
    sub_1E5DFD1CC(v38, v56, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v39, v59, &qword_1ED072340, &qword_1E65EA410);
    v40 = v60;
    sub_1E65DB248();
    sub_1E5DFE50C(v39, &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFE50C(v38, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v61, v40 + v62, &qword_1ED073548, &qword_1E65ED508);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AppComposer(0);
    v41 = v64;
    v42 = sub_1E65DAE38();
    v43 = sub_1E65DAE38();
    v44 = sub_1E65E4B48();
    v45 = 4.0;
    if (v44)
    {
      v45 = 8.0;
    }

    v46 = 16.0;
    if (v44)
    {
      v46 = 18.0;
    }

    if (v42 == v43)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    if (v42 == v43)
    {
      v48 = 12.0;
    }

    else
    {
      v48 = 8.0;
    }

    sub_1E5E1E2B8(v40, v19, type metadata accessor for ArtworkContent);
    *(v19 + v16[5]) = MEMORY[0x1E69E7CD0];
    v49 = (v19 + v16[6]);
    *v49 = 0.0;
    v49[1] = v47;
    v49[2] = v47;
    v49[3] = v48;
    *(v19 + v16[7]) = 1;
    v50 = (v19 + v16[8]);
    *v50 = 0;
    v50[1] = 0;
    v33 = v65;
    sub_1E64D2DD0(v19, v41, v65);
    v34 = sub_1E65E4B98();
    v36 = v51;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
    sub_1E64D54B4(v19, v41, v33 + v37);
    sub_1E61BF8AC(v19);
    (*(v55 + 8))(v28, v54);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v53 = (v33 + v37 + *(result + 36));
  *v53 = v34;
  v53[1] = v36;
  return result;
}

uint64_t sub_1E632D754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E1458();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_1E6223910(v6, a2);
}

uint64_t sub_1E632D820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a4;
  v100 = a3;
  v108 = a1;
  v118 = a5;
  v107 = sub_1E65E1518();
  v104 = *(v107 - 8);
  v106 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v88 - v9;
  v10 = sub_1E65E1398();
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v95 = &v88 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v88 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v93 = &v88 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  v26 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v88 - v27;
  v29 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v96 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E65E1208();
  v109 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v124 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E65E1168();
  v103 = *(v102 - 8);
  v111 = *(v103 + 64);
  v32 = MEMORY[0x1EEE9AC00](v102);
  v112 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v105 = &v88 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v123 = &v88 - v36;
  (*(v37 + 104))();
  v38 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v99 = *a2;
  v92 = v28;
  sub_1E5E1DEAC(a2, v28);
  sub_1E5DF650C(a3, &v128);
  v39 = *(v13 + 80);
  v40 = (v39 + 24) & ~v39;
  v91 = v26;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  sub_1E5E1E2B8(v28, v41 + v40, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v128, v41 + ((v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = a2;
  sub_1E5E1DEAC(a2, v24);
  v43 = (v39 + 16) & ~v39;
  v89 = swift_allocObject();
  sub_1E5E1E2B8(v24, v89 + v43, type metadata accessor for AppComposer);
  v44 = v93;
  sub_1E5E1DEAC(v42, v93);
  v88 = swift_allocObject();
  sub_1E5E1E2B8(v44, v88 + v43, type metadata accessor for AppComposer);
  v45 = v94;
  sub_1E5E1DEAC(v42, v94);
  v93 = swift_allocObject();
  sub_1E5E1E2B8(v45, v93 + v43, type metadata accessor for AppComposer);
  v46 = v42;
  v47 = v42;
  v120 = v42;
  v48 = v95;
  sub_1E5E1DEAC(v46, v95);
  v90 = v43 + v26;
  v49 = swift_allocObject();
  v122 = v43;
  v119 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v48, v49 + v43, type metadata accessor for AppComposer);
  v50 = v47;
  v51 = v97;
  sub_1E5E1DEAC(v50, v97);
  v121 = v39 | 7;
  v52 = swift_allocObject();
  sub_1E5E1E2B8(v51, v52 + v43, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v53 = v104;
  v54 = v101;
  v55 = v107;
  (*(v104 + 16))(v101, v108, v107);
  v56 = v120;
  v57 = v92;
  sub_1E5E1DEAC(v120, v92);
  v58 = v53;
  v59 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v60 = (v106 + v39 + v59) & ~v39;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v54, v55);
  v62 = v57;
  v63 = v119;
  sub_1E5E1E2B8(v57, v61 + v60, v119);
  type metadata accessor for AppFeature(0);
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v108 = sub_1E632E814(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v64 = v110;
  v65 = v98;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v56, v62);
  v107 = v113[7];
  v66 = (v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = v113[9];
  v67 = v113;
  v68 = swift_allocObject();
  sub_1E5E1E2B8(v62, v68 + v122, v63);
  v69 = (v68 + v66);
  v70 = v67[3];
  v69[2] = v67[2];
  v69[3] = v70;
  v69[4] = v67[4];
  v71 = v67[1];
  *v69 = *v67;
  v69[1] = v71;
  swift_unknownObjectRetain();

  v73 = v124;
  v72 = v125;
  v74 = sub_1E65E4F08();

  (*(v116 + 8))(v64, v117);
  (*(v114 + 8))(v72, v115);
  (*(v109 + 8))(v73, v65);
  v75 = v103;
  v76 = *(v103 + 16);
  v77 = v123;
  v78 = v102;
  v76(v105, v123, v102);
  sub_1E5E1DEAC(v120, v62);
  sub_1E5DF650C(v100, &v128);
  v79 = swift_allocObject();
  sub_1E5E1E2B8(v62, v79 + v122, v119);
  sub_1E5DF599C(&v128, v79 + v66);
  v80 = v112;
  v76(v112, v77, v78);
  v81 = v75;
  v82 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v83 = (v111 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  (*(v81 + 32))(v84 + v82, v80, v78);
  *(v84 + v83) = v74;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E632E814(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v126 = v85;
  v127 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  return (*(v81 + 8))(v123, v78);
}

__n128 sub_1E632E544@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1E65E4998();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  *&v5[6] = v6;
  *&v5[22] = v7;
  *&v5[38] = v8;
  *&v5[54] = v9;
  *&v5[86] = v11;
  *&v5[102] = v12;
  *&v5[70] = v10;
  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 58) = *&v5[48];
  *(a2 + 42) = *&v5[32];
  *(a2 + 26) = *&v5[16];
  *(a2 + 10) = *v5;
  result = *&v5[64];
  *(a2 + 120) = *(&v12 + 1);
  *(a2 + 106) = *&v5[96];
  *(a2 + 90) = *&v5[80];
  *(a2 + 74) = *&v5[64];
  return result;
}

uint64_t sub_1E632E64C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E632B870(a1, v1 + v5);
}

uint64_t sub_1E632E724(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E632BAC4(a1, v1 + v5);
}

uint64_t sub_1E632E814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E632E85C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E65E1518() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

unint64_t sub_1E632E960(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6373627553746F6ELL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000029;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000024;
    }

    v4 = 0xD000000000000013;
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 9)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 8)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 6)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 5)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingDetourError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingDetourError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E632EC40()
{
  result = qword_1ED078478;
  if (!qword_1ED078478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078478);
  }

  return result;
}

uint64_t SearchItemContext.referenceIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1E65DCCE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DCF98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = sub_1E65DCCB8();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v13 = sub_1E65DCED8();
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

uint64_t SearchItemContext.referenceType.getter()
{
  v1 = v0;
  v2 = sub_1E65DCF98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DCCE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    v13 = sub_1E65DCCA8();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = sub_1E65DCE68();
    (*(v3 + 8))(v5, v2);
  }

  return v13;
}

uint64_t sub_1E632F0FC()
{
  if (*v0)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1701603700;
  }
}

uint64_t sub_1E632F138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603700 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E632F218(uint64_t a1)
{
  v2 = sub_1E633071C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F254(uint64_t a1)
{
  v2 = sub_1E633071C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632F290(uint64_t a1)
{
  v2 = sub_1E6330770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F2CC(uint64_t a1)
{
  v2 = sub_1E6330770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701603700 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E632F3A0(uint64_t a1)
{
  v2 = sub_1E63307C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F3DC(uint64_t a1)
{
  v2 = sub_1E63307C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078480, &qword_1E65FCD50);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v27 - v3;
  v4 = sub_1E65DCCE8();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078488, &qword_1E65FCD58);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1E65DCF98();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078490, &qword_1E65FCD60);
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E633071C();
  sub_1E65E6DA8();
  sub_1E63306B8(v38, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v34;
    v18 = v35;
    v20 = v32;
    (*(v34 + 32))(v32, v14, v35);
    v41 = 1;
    sub_1E6330770();
    v21 = v33;
    sub_1E65E6B18();
    sub_1E6330860(&qword_1ED0784A8, MEMORY[0x1E699EED0], MEMORY[0x1E699EED8]);
    v22 = v37;
    sub_1E65E6B78();
    (*(v36 + 8))(v21, v22);
    (*(v19 + 8))(v20, v18);
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 32))(v11, v14, v29);
    v40 = 0;
    sub_1E63307C4();
    sub_1E65E6B18();
    sub_1E6330860(&qword_1ED0784B8, MEMORY[0x1E699EF00], MEMORY[0x1E699EF08]);
    v25 = v31;
    sub_1E65E6B78();
    (*(v30 + 8))(v8, v25);
    (*(v24 + 8))(v11, v23);
  }

  return (*(v39 + 8))(v17, v15);
}

uint64_t SearchItemContext.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65DCCE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DCF98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6330860(&qword_1ED0784C0, MEMORY[0x1E699EED0], MEMORY[0x1E699EEE0]);
    sub_1E65E5B48();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1E694E740](0);
    sub_1E6330860(&qword_1ED0784C8, MEMORY[0x1E699EF00], MEMORY[0x1E699EF10]);
    sub_1E65E5B48();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t SearchItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t SearchItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784D0, &qword_1E65FCD68);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784D8, &qword_1E65FCD70);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784E0, &unk_1E65FCD78);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for SearchItemContext(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E633071C();
  v19 = v51;
  sub_1E65E6D98();
  if (!v19)
  {
    v40 = v12;
    v41 = v15;
    v21 = v49;
    v20 = v50;
    v42 = 0;
    v39 = v17;
    v51 = v9;
    v22 = v48;
    v23 = sub_1E65E6AF8();
    v24 = (2 * *(v23 + 16)) | 1;
    v53 = v23;
    v54 = v23 + 32;
    v55 = 0;
    v56 = v24;
    v25 = sub_1E5FBE3F0();
    v26 = v6;
    v27 = v8;
    if (v25 == 2 || v55 != v56 >> 1)
    {
      v32 = sub_1E65E68F8();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v34 = v51;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
    }

    else if (v25)
    {
      v57 = 1;
      sub_1E6330770();
      v28 = v20;
      v29 = v42;
      sub_1E65E6A68();
      if (!v29)
      {
        sub_1E65DCCE8();
        sub_1E6330860(&qword_1ED0784E8, MEMORY[0x1E699EED0], MEMORY[0x1E699EEE8]);
        v30 = v40;
        v31 = v44;
        sub_1E65E6AD8();
        (*(v47 + 8))(v28, v31);
        (*(v22 + 8))(v27, v26);
        swift_unknownObjectRelease();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        v38 = v39;
        sub_1E628C4E4(v30, v39);
        sub_1E628C4E4(v38, v43);
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }
    }

    else
    {
      v57 = 0;
      sub_1E63307C4();
      v36 = v42;
      sub_1E65E6A68();
      if (!v36)
      {
        sub_1E65DCF98();
        sub_1E6330860(&qword_1ED0784F0, MEMORY[0x1E699EF00], MEMORY[0x1E699EF18]);
        v30 = v41;
        v37 = v46;
        sub_1E65E6AD8();
        (*(v45 + 8))(v21, v37);
        (*(v22 + 8))(v8, v6);
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1E63302C4()
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6330308(uint64_t a1)
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17SearchItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = sub_1E65DCCE8();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DCF98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchItemContext(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078548, &qword_1E65FD1C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_1E63306B8(v27, &v25 - v17);
  sub_1E63306B8(v28, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E63306B8(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v18[v19], v26);
      v21 = MEMORY[0x1E69446D0](v12, v4);
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_9:
      sub_1E6330C58(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v26);
  }

  else
  {
    sub_1E63306B8(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v21 = MEMORY[0x1E6944940](v14, v8);
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_1E6330BF0(v18);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1E63306B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItemContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E633071C()
{
  result = qword_1ED078498;
  if (!qword_1ED078498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078498);
  }

  return result;
}

unint64_t sub_1E6330770()
{
  result = qword_1ED0784A0;
  if (!qword_1ED0784A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0784A0);
  }

  return result;
}

unint64_t sub_1E63307C4()
{
  result = qword_1ED0784B0;
  if (!qword_1ED0784B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0784B0);
  }

  return result;
}

uint64_t sub_1E6330860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E63308DC()
{
  result = qword_1ED078500;
  if (!qword_1ED078500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078500);
  }

  return result;
}

unint64_t sub_1E6330934()
{
  result = qword_1ED078508;
  if (!qword_1ED078508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078508);
  }

  return result;
}

unint64_t sub_1E633098C()
{
  result = qword_1ED078510;
  if (!qword_1ED078510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078510);
  }

  return result;
}

unint64_t sub_1E63309E4()
{
  result = qword_1ED078518;
  if (!qword_1ED078518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078518);
  }

  return result;
}

unint64_t sub_1E6330A3C()
{
  result = qword_1ED078520;
  if (!qword_1ED078520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078520);
  }

  return result;
}

unint64_t sub_1E6330A94()
{
  result = qword_1ED078528;
  if (!qword_1ED078528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078528);
  }

  return result;
}

unint64_t sub_1E6330AEC()
{
  result = qword_1ED078530;
  if (!qword_1ED078530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078530);
  }

  return result;
}

unint64_t sub_1E6330B44()
{
  result = qword_1ED078538;
  if (!qword_1ED078538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078538);
  }

  return result;
}

unint64_t sub_1E6330B9C()
{
  result = qword_1ED078540;
  if (!qword_1ED078540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078540);
  }

  return result;
}

uint64_t sub_1E6330BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078548, &qword_1E65FD1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6330C58(uint64_t a1)
{
  v2 = type metadata accessor for SearchItemContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double AppComposer.onboardingModalityPickerViewBuilder(currentRoutingContext:onDismissed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078550, &qword_1E65FD1C8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  sub_1E64DB20C(&v30);
  sub_1E6331084(v4, a1, &v30, a2, a3, v17);
  v18 = sub_1E65E4FD8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1E65E5018();
  __swift_project_value_buffer(v19, qword_1EE2D49E8);
  v20 = sub_1E65E2E78();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1E633284C(&qword_1ED078558, &qword_1ED078550, &qword_1E65FD1C8, sub_1E6331A3C);
  sub_1E65E4728();
  sub_1E5DFE50C(v11, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v14, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v17, &qword_1ED078550, &qword_1E65FD1C8);
  v21 = swift_allocObject();
  v22 = v33;
  v21[3] = v32;
  v21[4] = v22;
  v21[5] = v34;
  v23 = v31;
  v21[1] = v30;
  v21[2] = v23;
  v24 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
  *v24 = 0;
  v24[1] = 0;
  v24[2] = sub_1E5F99E38;
  v24[3] = v21;
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 3) = v32;
  *(v25 + 4) = v26;
  *(v25 + 5) = v34;
  v27 = v31;
  *(v25 + 1) = v30;
  *(v25 + 2) = v27;
  v28 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0) + 36));
  *v28 = sub_1E6332608;
  v28[1] = v25;
  v28[2] = 0;
  v28[3] = 0;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_1E6331084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v73 = a5;
  v70 = a2;
  v82 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078598, &unk_1E65FD7C0);
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785C0, &qword_1E65FD1F8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785C8, &qword_1E65FD200);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v61 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078578, &unk_1E65FD7B0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v61 - v15;
  v16 = type metadata accessor for AppComposer(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v71 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078588, &qword_1E65FD1D8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  v28 = *(a1 + *(v17 + 28) + 8);
  v80 = v13;
  v81 = v8;
  v79 = v11;
  v75 = v24;
  v69 = a1;
  if (v28 >= 2)
  {
    v45 = v70;
    v67 = v10;
    if (v28 == 3)
    {
      v62 = type metadata accessor for AppComposer;
      sub_1E5E1D5BC(a1, v22, type metadata accessor for AppComposer);
      sub_1E5DF650C(v45, v83);
      v63 = *a3;
      v64 = a3[3];
      v65 = a3[5];
      v66 = a3[7];
      v70 = a3[9];
      v46 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v47 = (v46 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = (v47 + 47) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_1E5E1E2B8(v22, v49 + v46, type metadata accessor for AppComposer);
      sub_1E5DF599C(v83, v49 + v47);
      v50 = (v49 + v48);
      v51 = *(a3 + 3);
      v50[2] = *(a3 + 2);
      v50[3] = v51;
      v50[4] = *(a3 + 4);
      v52 = *(a3 + 1);
      *v50 = *a3;
      v50[1] = v52;
      v53 = (v49 + ((v48 + 87) & 0xFFFFFFFFFFFFFFF8));
      v54 = v73;
      *v53 = v72;
      v53[1] = v54;
      v55 = v71;
      sub_1E5E1D5BC(v69, v71, v62);
      v56 = swift_allocObject();
      sub_1E5E1E2B8(v55, v56 + v46, type metadata accessor for AppComposer);

      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      sub_1E5FEB2FC();
      v57 = v67;
      sub_1E65E1BD8();
      v58 = v68;
      v59 = v81;
      (*(v68 + 16))(v76, v57, v81);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8, MEMORY[0x1E699E960]);
      sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0, MEMORY[0x1E699EA28]);
      v60 = v78;
      sub_1E65E4138();
      sub_1E5F06030(v60, v80);
      swift_storeEnumTagMultiPayload();
      sub_1E6331AC8();
      sub_1E65E4138();
      sub_1E5DFE50C(v60, &qword_1ED078578, &unk_1E65FD7B0);
      return (*(v58 + 8))(v57, v59);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v62 = type metadata accessor for AppComposer;
    v67 = v27;
    v68 = v25;
    sub_1E5E1D5BC(a1, v22, type metadata accessor for AppComposer);
    sub_1E5DF650C(v70, v83);
    v63 = *a3;
    v64 = a3[3];
    v65 = a3[5];
    v66 = a3[7];
    v70 = a3[9];
    v29 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v30 = (v29 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    sub_1E5E1E2B8(v22, v32 + v29, type metadata accessor for AppComposer);
    sub_1E5DF599C(v83, v32 + v30);
    v33 = (v32 + v31);
    v34 = *(a3 + 3);
    v33[2] = *(a3 + 2);
    v33[3] = v34;
    v33[4] = *(a3 + 4);
    v35 = *(a3 + 1);
    *v33 = *a3;
    v33[1] = v35;
    v36 = (v32 + ((v31 + 87) & 0xFFFFFFFFFFFFFFF8));
    v37 = v73;
    *v36 = v72;
    v36[1] = v37;
    v38 = v71;
    sub_1E5E1D5BC(v69, v71, v62);
    v39 = swift_allocObject();
    sub_1E5E1E2B8(v38, v39 + v29, type metadata accessor for AppComposer);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    sub_1E5FEB2FC();
    v40 = v67;
    sub_1E65E1938();
    v41 = v68;
    v42 = v75;
    (*(v68 + 16))(v76, v40, v75);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8, MEMORY[0x1E699E960]);
    sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0, MEMORY[0x1E699EA28]);
    v43 = v78;
    sub_1E65E4138();
    sub_1E5F06030(v43, v80);
    swift_storeEnumTagMultiPayload();
    sub_1E6331AC8();
    sub_1E65E4138();
    sub_1E5DFE50C(v43, &qword_1ED078578, &unk_1E65FD7B0);
    return (*(v41 + 8))(v40, v42);
  }

  return result;
}

unint64_t sub_1E6331A3C()
{
  result = qword_1ED078560;
  if (!qword_1ED078560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078568, &qword_1E65FD1D0);
    sub_1E6331AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078560);
  }

  return result;
}

unint64_t sub_1E6331AC8()
{
  result = qword_1ED078570;
  if (!qword_1ED078570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078578, &unk_1E65FD7B0);
    sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8, MEMORY[0x1E699E960]);
    sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0, MEMORY[0x1E699EA28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078570);
  }

  return result;
}

uint64_t sub_1E6331BAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785D0, &qword_1E65FD208);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v37 - v9;
  v52 = sub_1E65E1A28();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E1A68();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v37 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_1E5DF650C(a1, v53);
  v21 = swift_allocObject();
  sub_1E5DF599C(v53, v21 + 16);
  v41 = type metadata accessor for AppComposer;
  v22 = v42;
  sub_1E5E1D5BC(v42, v14, type metadata accessor for AppComposer);
  v23 = *(v12 + 80);
  v38 = ((v23 + 16) & ~v23) + v13;
  v40 = (v23 + 16) & ~v23;
  v24 = swift_allocObject();
  v39 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v14, v24 + ((v23 + 16) & ~v23), type metadata accessor for AppComposer);

  v25 = v47;
  sub_1E65E1A58();
  v43 = *v22;
  (*(v48 + 16))(v18, v25, v49);
  sub_1E65E1A18();
  type metadata accessor for AppFeature(0);
  sub_1E6334C40(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v37 = sub_1E6334C40(&qword_1ED0785D8, MEMORY[0x1E699E9D8], MEMORY[0x1E699E9D0]);
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v22, v14, v41);
  v26 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1E5E1E2B8(v14, v27 + v40, v39);
  v28 = (v27 + v26);
  v29 = *(a2 + 3);
  v28[2] = *(a2 + 2);
  v28[3] = v29;
  v28[4] = *(a2 + 4);
  v30 = *(a2 + 1);
  *v28 = *a2;
  v28[1] = v30;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E6334C88;
  *(v31 + 24) = v27;

  v33 = v50;
  v32 = v51;
  v34 = v52;
  v35 = sub_1E65E4F08();

  (*(v45 + 8))(v32, v46);
  (*(v44 + 8))(v33, v34);
  (*(v48 + 8))(v47, v49);
  return v35;
}

uint64_t sub_1E633218C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtworkDescriptor(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E1B48();
  sub_1E65E1B38();
  sub_1E65DB248();
  sub_1E62E2700(a1, &v9[v14]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v15 = sub_1E65DAE38();
  v16 = sub_1E65DAE38();
  v17 = sub_1E65E4B48();
  v18 = 4.0;
  if (v17)
  {
    v18 = 8.0;
  }

  v19 = 16.0;
  if (v17)
  {
    v19 = 18.0;
  }

  if (v15 == v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (v15 == v16)
  {
    v21 = 12.0;
  }

  else
  {
    v21 = 8.0;
  }

  sub_1E5E1E2B8(v9, v13, type metadata accessor for ArtworkContent);
  *(v13 + v11[7]) = MEMORY[0x1E69E7CD0];
  v22 = (v13 + v11[8]);
  *v22 = 0.0;
  v22[1] = v20;
  v22[2] = v20;
  v22[3] = v21;
  *(v13 + v11[9]) = 1;
  v23 = (v13 + v11[10]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v32;
  sub_1E64D2DD0(v13, a2, v32);
  v25 = sub_1E65E4B98();
  v27 = v26;
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v13, a2, v28);
  sub_1E6335008(v13, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v30 = (v28 + *(result + 36));
  *v30 = v25;
  v30[1] = v27;
  return result;
}

uint64_t sub_1E63324A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(a1 + 3);
  *(v6 + 64) = *(a1 + 2);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a1 + 4);
  v8 = *(a1 + 1);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v4, &unk_1E65FD1F0, v6);
}

unint64_t sub_1E6332610()
{
  result = qword_1ED0785B0;
  if (!qword_1ED0785B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0785A8, &unk_1E65FD7A0);
    sub_1E633269C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0785B0);
  }

  return result;
}

unint64_t sub_1E633269C()
{
  result = qword_1ED0785B8;
  if (!qword_1ED0785B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0785A0, &qword_1E65FD1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078550, &qword_1E65FD1C8);
    sub_1E633284C(&qword_1ED078558, &qword_1ED078550, &qword_1E65FD1C8, sub_1E6331A3C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0785B8);
  }

  return result;
}

uint64_t sub_1E6332798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E633284C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t objectdestroy_13Tm_0()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E63335F0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6331BAC(v0 + v2, (v0 + ((v2 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1E6333714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for RouteSource(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63337AC, 0, 0);
}

uint64_t sub_1E63337AC()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v6 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v7 = (type metadata accessor for RouteDestination(0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v0 + 88) = v9;
  *(v9 + 16) = xmmword_1E65EA670;
  v10 = (v9 + v8);
  swift_storeEnumTagMultiPayload();
  *v10 = v4;
  v10[1] = v3;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v1, v10 + v7[7], type metadata accessor for RouteSource);
  *(v10 + v7[8]) = MEMORY[0x1E69E7CD0];

  sub_1E6335008(v1, type metadata accessor for RouteSource);
  sub_1E611D1C0(v0 + 16);
  v11 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v11;
  sub_1E600F5B0((v0 + 25));
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_1E63339E0;

  return RoutingContext.presentDestinations(_:style:priority:)(v9, (v0 + 32), (v0 + 25), v6, v5);
}

uint64_t sub_1E63339E0()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6333B54, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6333B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6333BB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E65D76A8();
  v2[4] = swift_task_alloc();
  v3 = sub_1E65D76F8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1E65D9958();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6333D00, 0, 0);
}

uint64_t sub_1E6333D00(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_1E65D76E8();
  sub_1E65D76C8();
  (*(v3 + 8))(v2, v4);
  sub_1E65D7698();

  sub_1E65D9938();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v5 = RecommendationService.updateOnboardingSurveyResult.getter();
  v1[11] = v6;
  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v1;
  v7[1] = sub_1E6333E9C;
  v8 = v1[10];

  return v10(v8);
}

uint64_t sub_1E6333E9C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E6334068;
  }

  else
  {
    v2 = sub_1E6333FCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6333FCC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6334068()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6334104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E65E19E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25[1] = v25 - v6;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v7 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v25 - v14;
  v16 = sub_1E65D7848();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v15);
  sub_1E5DFE50C(v12, &qword_1ED071F78, &unk_1E65EA3F0);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_1E65D77C8();
    if (v21(v15, 1, v16) != 1)
    {
      sub_1E5DFE50C(v15, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  v22 = a1 + *(v20 + 220);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  (*(v7 + 16))(v9, v22 + *(v23 + 28), v25[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E65E1AC8();
  sub_1E65E1A98();
  sub_1E65E1AE8();
  sub_1E642AC60(v26);
  return sub_1E65E1978();
}

uint64_t sub_1E633450C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E65E1958();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E65E1AD8();
  sub_1E65E1968();
  sub_1E65E1AA8();
  sub_1E65E1988();
  return sub_1E65E1AF8();
}

uint64_t sub_1E63345FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a3;
  v48 = a1;
  v6 = type metadata accessor for AppComposer(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65E19C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v45 = &v32 - v12;
  v50 = sub_1E65E60A8();
  v14 = *(v50 - 8);
  v49 = *(v14 + 56);
  v51 = v14 + 56;
  v49(v13, 1, 1, v50);
  v47 = *(v9 + 16);
  v39 = v8;
  v47(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v46 = type metadata accessor for AppComposer;
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D5BC(v52, v36, type metadata accessor for AppComposer);
  v15 = a4[3];
  v34 = *a4;
  v35 = v15;
  v16 = a4[7];
  v37 = a4[5];
  v38 = v16;
  v40 = a4[9];
  v17 = *(v9 + 80);
  v18 = (v17 + 32) & ~v17;
  v19 = *(v44 + 80);
  v20 = (v10 + v19 + v18) & ~v19;
  v44 = v20 + v7;
  v42 = v18;
  v43 = v17 | v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v41 = *(v9 + 32);
  v22 = v21 + v18;
  v23 = v33;
  v41(v22, v33, v8);
  sub_1E5E1E2B8(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for AppComposer);
  v24 = (v21 + ((v20 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = *(a4 + 3);
  v24[2] = *(a4 + 2);
  v24[3] = v25;
  v24[4] = *(a4 + 4);
  v26 = *(a4 + 1);
  *v24 = *a4;
  v24[1] = v26;
  swift_unknownObjectRetain();

  v27 = v45;
  sub_1E6059EAC(0, 0, v45, &unk_1E65FD240, v21);

  v49(v27, 1, 1, v50);
  v28 = v39;
  v47(v23, v48, v39);
  v29 = v36;
  sub_1E5E1D5BC(v52, v36, v46);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v41(v30 + v42, v23, v28);
  sub_1E5E1E2B8(v29, v30 + v20, type metadata accessor for AppComposer);
  sub_1E6059EAC(0, 0, v27, &unk_1E65FD248, v30);
}

uint64_t sub_1E6334A28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61BBA24(v2, v3);
}

uint64_t sub_1E6334AC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6333714(a1, a2, v2 + 16);
}

uint64_t sub_1E6334B68(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6333BB8(a1, v1 + v5);
}

uint64_t sub_1E6334C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6334C88(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63345FC(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6334D34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E19C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E64DB910(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E6334EB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E19C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FBF804(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6335008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6335070@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AppState(0);
  v4 = (v1 + *(result + 248));
  v6 = *v4;
  v5 = v4[1];
  if (v5 != 6)
  {
    v7 = *(v1 + *(result + 252));
    sub_1E5E05374(v6, v5);
    result = sub_1E5E25298(v6, v5, v7);
    if ((result & 1) == 0)
    {
      result = sub_1E5E07DA0(v6, v5);
      v6 = 0;
      v5 = 6;
    }
  }

  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E63350F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v8 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1E5E2575C(v5, v6), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for NavigationControllerRoutingContext(0);
    v15 = *(v14 - 8);
    sub_1E5E246F0(v13 + *(v15 + 72) * v12, a2, type metadata accessor for NavigationControllerRoutingContext);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NavigationControllerRoutingContext(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_1E63352D0(unsigned int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    sub_1E60787D4(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E633534C()
{
  swift_unknownObjectRelease();
  sub_1E5E263A0(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext, type metadata accessor for NavigationControllerRoutingContext);

  sub_1E5E263A0(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, type metadata accessor for AppComposer);
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, &unk_1ED072050, &unk_1E65EEAB0);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E6335448()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for AppAction(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63354DC, 0, 0);
}

uint64_t sub_1E63354DC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v0[5] = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v0[6] = *(v1 + v3);
  swift_storeEnumTagMultiPayload();
  v0[7] = sub_1E65E6058();
  v0[8] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1FAE4, v5, v4);
}

uint64_t sub_1E6335624()
{

  sub_1E5E1FC4C();

  return MEMORY[0x1EEE6DFA0](sub_1E6335690, 0, 0);
}

uint64_t sub_1E6335690()
{

  *(v0 + 88) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6335720, v2, v1);
}

uint64_t sub_1E6335720()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  swift_allocObject();
  *(v0 + 96) = sub_1E65E4D18();

  return MEMORY[0x1EEE6DFA0](sub_1E63357C0, 0, 0);
}

uint64_t sub_1E63357C0()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver;
  v0[13] = OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver;
  *(v2 + v3) = v1;

  v4 = *(v2 + v3);
  v0[14] = v4;
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    *swift_task_alloc() = KeyPath;
    v0[15] = swift_getKeyPath();

    v0[16] = swift_allocObject();
    swift_weakInit();

    v0[17] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6335934, v7, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E6335934()
{

  sub_1E63381C4();
  sub_1E65E4D08();

  return MEMORY[0x1EEE6DFA0](sub_1E63359E8, 0, 0);
}

uint64_t sub_1E63359E8()
{
  v1 = *(v0[2] + v0[13]);
  v0[18] = v1;
  if (v1)
  {

    v0[19] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5E224F8, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E6335B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v8 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1E5E2575C(v5, v6), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for NavigationControllerRoutingContext(0);
    v15 = *(v14 - 8);
    sub_1E5E246F0(v13 + *(v15 + 72) * v12, a2, type metadata accessor for NavigationControllerRoutingContext);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NavigationControllerRoutingContext(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_1E6335D04(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_1E64B80F8(0, 0, v12, &unk_1E65FD2E8, v16);
}

uint64_t sub_1E6335F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 321) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 + 64);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v6 + 104) = v8;
  v9 = *(v8 - 8);
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 + 64);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E8, &qword_1E65FD2F0);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = sub_1E65E6058();
  *(v6 + 176) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v6 + 184) = v11;
  *(v6 + 192) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E63360F4, v11, v10);
}

uint64_t sub_1E63360F4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1E65E3B68();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v0 + 208) = v4;
  v5 = *(v4 + 32);
  *(v0 + 322) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);

  if (v8)
  {
    v10 = 0;
LABEL_10:
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = (v8 - 1) & v8;
    v16 = __clz(__rbit64(v8)) | (v10 << 6);
    v17 = (*(v9 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_1E5E246F0(*(v9 + 56) + *(*(v0 + 112) + 72) * v16, v13, type metadata accessor for NavigationControllerRoutingContext);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
    v21 = *(v20 + 48);
    *v14 = v18;
    v14[1] = v19;
    sub_1E5E24844(v13, v14 + v21, type metadata accessor for NavigationControllerRoutingContext);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    sub_1E5E05374(v18, v19);
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 72 + 8 * v11++);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v30 = *(v0 + 152);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v15 = 0;
  }

  *(v0 + 216) = v15;
  *(v0 + 224) = v12;
  v22 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v22, &qword_1ED0785E8, &qword_1E65FD2F0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
    sub_1E65E5FF8();

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 136);
    *(v0 + 232) = *v26;
    *(v0 + 240) = v26[1];
    sub_1E5E24844(v26 + *(v23 + 48), v27, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v29 = sub_1E65E5FC8();
    *(v0 + 256) = v29;
    *(v0 + 264) = v28;

    return MEMORY[0x1EEE6DFA0](sub_1E6336544, v29, v28);
  }
}

uint64_t sub_1E6336544()
{
  v1 = v0[12];
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[34] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v0[35] = v4;
  v0[36] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E6336614, v4, v3);
}

uint64_t sub_1E6336614()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v14 = *(v0 + 321);
  v16 = *(v2 + *(*(v0 + 104) + 24) + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 320) = 0;
  sub_1E5DFD1CC(v5, v6, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E246F0(v2, v1, type metadata accessor for NavigationControllerRoutingContext);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v7 + *(v3 + 80) + v9) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v0 + 296) = v11;
  sub_1E5FAB460(v6, v11 + v9, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E24844(v1, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10 + v4) = v14;
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_1E63367E0;

  return sub_1E61261B8((v0 + 320), &unk_1E65EA888, v11, ObjectType, v16);
}

uint64_t sub_1E63367E0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {

    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_1E6336DAC;
  }

  else
  {
    sub_1E5E0476C(v2[29], v2[30]);

    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_1E6336910;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E6336910()
{
  v1 = v0[12];

  sub_1E5DFE50C(v1, &unk_1ED072040, &qword_1E65F0860);
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1E6336990, v2, v3);
}

uint64_t sub_1E6336990()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E63369F4, v1, v2);
}

uint64_t sub_1E63369F4()
{
  v1 = sub_1E5E263A0(*(v0 + 136), type metadata accessor for NavigationControllerRoutingContext);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  if (!v4)
  {
    v7 = ((1 << *(v0 + 322)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 322)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v28 = *(v0 + 152);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v13 = 0;
        goto LABEL_12;
      }

      v6 = *(v0 + 208);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v6 = *(v0 + 208);
LABEL_11:
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = (v4 - 1) & v4;
  v14 = __clz(__rbit64(v4)) | (v5 << 6);
  v15 = (*(v6 + 48) + 16 * v14);
  v16 = *v15;
  v17 = v15[1];
  sub_1E5E246F0(*(v6 + 56) + *(*(v0 + 112) + 72) * v14, v11, type metadata accessor for NavigationControllerRoutingContext);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  v19 = *(v18 + 48);
  *v12 = v16;
  v12[1] = v17;
  sub_1E5E24844(v11, v12 + v19, type metadata accessor for NavigationControllerRoutingContext);
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  sub_1E5E05374(v16, v17);
  v9 = v5;
LABEL_12:
  *(v0 + 216) = v13;
  *(v0 + 224) = v9;
  v20 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v20, &qword_1ED0785E8, &qword_1E65FD2F0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) != 1)
  {
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    *(v0 + 232) = *v24;
    *(v0 + 240) = v24[1];
    sub_1E5E24844(v24 + *(v21 + 48), v25, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v26 = sub_1E65E5FC8();
    v3 = v27;
    *(v0 + 256) = v26;
    *(v0 + 264) = v27;
    v1 = sub_1E6336544;
    v2 = v26;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  sub_1E65E5FF8();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E6336DAC()
{
  v1 = v0[12];

  sub_1E5DFE50C(v1, &unk_1ED072040, &qword_1E65F0860);
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1E6336E2C, v2, v3);
}

uint64_t sub_1E6336E2C()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E6336E90, v1, v2);
}

uint64_t sub_1E6336E90()
{
  v47 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  sub_1E5E05374(v2, v1);
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();
  sub_1E5E0476C(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    *(v0 + 40) = v7;
    *(v0 + 48) = v6;
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v46);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to reset %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    v14 = v8;
  }

  else
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 136);
    sub_1E5E0476C(*(v0 + 232), *(v0 + 240));

    v14 = v16;
  }

  v17 = sub_1E5E263A0(v14, type metadata accessor for NavigationControllerRoutingContext);
  v20 = *(v0 + 216);
  v21 = *(v0 + 224);
  if (!v20)
  {
    v23 = ((1 << *(v0 + 322)) + 63) >> 6;
    if (v23 <= (v21 + 1))
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = ((1 << *(v0 + 322)) + 63) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v44 = *(v0 + 152);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        v29 = 0;
        goto LABEL_15;
      }

      v22 = *(v0 + 208);
      v20 = *(v22 + 8 * v26 + 64);
      ++v21;
      if (v20)
      {
        v21 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  v22 = *(v0 + 208);
LABEL_14:
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v29 = (v20 - 1) & v20;
  v30 = __clz(__rbit64(v20)) | (v21 << 6);
  v31 = (*(v22 + 48) + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  sub_1E5E246F0(*(v22 + 56) + *(*(v0 + 112) + 72) * v30, v27, type metadata accessor for NavigationControllerRoutingContext);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  v35 = *(v34 + 48);
  *v28 = v32;
  v28[1] = v33;
  sub_1E5E24844(v27, v28 + v35, type metadata accessor for NavigationControllerRoutingContext);
  (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
  sub_1E5E05374(v32, v33);
  v25 = v21;
LABEL_15:
  *(v0 + 216) = v29;
  *(v0 + 224) = v25;
  v36 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v36, &qword_1ED0785E8, &qword_1E65FD2F0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
  {
    v40 = *(v0 + 160);
    v41 = *(v0 + 136);
    *(v0 + 232) = *v40;
    *(v0 + 240) = v40[1];
    sub_1E5E24844(v40 + *(v37 + 48), v41, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v42 = sub_1E65E5FC8();
    v19 = v43;
    *(v0 + 256) = v42;
    *(v0 + 264) = v43;
    v17 = sub_1E6336544;
    v18 = v42;

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  sub_1E65E5FF8();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1E6337384(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 + 64);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 89) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E6337454, 0, 0);
}

uint64_t sub_1E6337454()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v11 = *(*(v0 + 24) + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 88) = v1;
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  swift_weakInit();
  sub_1E5E246F0(v4, v2, type metadata accessor for RouteDestination);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  *(v8 + 16) = v6;
  sub_1E5E24844(v2, v8 + v7, type metadata accessor for RouteDestination);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1E63375FC;

  return sub_1E61261B8((v0 + 88), &unk_1E65F6EF8, v8, ObjectType, v11);
}

uint64_t sub_1E63375FC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6180EA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6337758(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v2[17] = type metadata accessor for RouteDestination(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6337804, 0, 0);
}

uint64_t sub_1E6337804()
{
  v26 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1E5DFD1CC(Strong + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, v0 + 56, &unk_1ED072050, &unk_1E65EEAB0);

    if (*(v0 + 80))
    {
      sub_1E5DF599C((v0 + 56), v0 + 16);
      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 160);
      v3 = *(v0 + 128);
      v4 = sub_1E65E3B68();
      __swift_project_value_buffer(v4, qword_1EE2EA2A0);
      sub_1E5E246F0(v3, v2, type metadata accessor for RouteDestination);
      v5 = sub_1E65E3B48();
      v6 = sub_1E65E6338();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 160);
      if (v7)
      {
        v9 = *(v0 + 152);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v25 = v11;
        *v10 = 141558274;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2080;
        sub_1E5E246F0(v8, v9, type metadata accessor for RouteDestination);
        v12 = sub_1E65E5CE8();
        v14 = v13;
        sub_1E5E263A0(v8, type metadata accessor for RouteDestination);
        v15 = sub_1E5DFD4B0(v12, v14, &v25);

        *(v10 + 14) = v15;
        _os_log_impl(&dword_1E5DE9000, v5, v6, "Resolving detours for %{mask.hash}s", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E694F1C0](v11, -1, -1);
        MEMORY[0x1E694F1C0](v10, -1, -1);
      }

      else
      {

        sub_1E5E263A0(v8, type metadata accessor for RouteDestination);
      }

      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
      v24 = (*(v20 + 16) + **(v20 + 16));
      v21 = swift_task_alloc();
      *(v0 + 168) = v21;
      *v21 = v0;
      v21[1] = sub_1E6337C24;
      v22 = *(v0 + 144);
      v23 = *(v0 + 128);

      return v24(v22, v23, v19, v20);
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_1E5DFE50C(v0 + 56, &unk_1ED072050, &unk_1E65EEAB0);
  sub_1E6060374();
  swift_allocError();
  *v16 = 3;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1E6337C24()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1E6337DE0;
  }

  else
  {
    sub_1E5E263A0(*(v2 + 144), type metadata accessor for RouteDestination);
    v3 = sub_1E6337D54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6337D54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6337DE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6337E68(char a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6337E90, 0, 0);
}

uint64_t sub_1E6337E90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1E6337F8C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E6337F8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5F87068, 0, 0);
}

uint64_t sub_1E63380B0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6335F1C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1E63381C4()
{
  result = qword_1EE2D4708;
  if (!qword_1EE2D4708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4708);
  }

  return result;
}

unint64_t *sub_1E6338228(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v30 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v34 = a3 + 56;
  v31 = a5;
LABEL_2:
  v29 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v32 = *v12;
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      sub_1E65E6D28();
      if (v13 > 2)
      {
        if (v13 == 3 || v13 == 4 || v13 == 5)
        {
          goto LABEL_19;
        }
      }

      else if (v13 <= 2)
      {
        goto LABEL_19;
      }

      sub_1E5E05374(v32, v13);
      MEMORY[0x1E694D7C0](v32, v13);
LABEL_19:
      sub_1E65E5D78();

      v14 = sub_1E65E6D78();
      v15 = -1 << *(a3 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v34 + 8 * (v16 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1E5E0476C(v32, v13);
        a5 = v31;
        continue;
      }

      v33 = ~v15;
      while (1)
      {
        v19 = (*(a3 + 48) + 16 * v16);
        v20 = *v19;
        v21 = v19[1];
        if (v21 > 2)
        {
          if (v21 == 3)
          {
            v22 = 0xE600000000000000;
            v23 = 0x686372616573;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          if (v21 != 4)
          {
            if (v21 == 5)
            {
              v22 = 0xE500000000000000;
              v23 = 0x736E616C70;
              if (v13 <= 2)
              {
                goto LABEL_47;
              }

              goto LABEL_39;
            }

            goto LABEL_36;
          }

          v22 = 0xE600000000000000;
          v23 = 0x7478654E7075;
          if (v13 <= 2)
          {
LABEL_47:
            if (v13)
            {
              if (v13 == 1)
              {
                v24 = 0xE600000000000000;
                if (v23 != 0x756F59726F66)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if (v13 != 2)
                {
                  goto LABEL_54;
                }

                v24 = 0xE700000000000000;
                if (v23 != 0x7972617262696CLL)
                {
                  goto LABEL_60;
                }
              }
            }

            else
            {
              v24 = 0xE700000000000000;
              if (v23 != 0x65726F6C707865)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_59;
          }
        }

        else
        {
          if (!v21)
          {
            v22 = 0xE700000000000000;
            v23 = 0x65726F6C707865;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          if (v21 != 1)
          {
            if (v21 == 2)
            {
              v22 = 0xE700000000000000;
              v23 = 0x7972617262696CLL;
              if (v13 <= 2)
              {
                goto LABEL_47;
              }

              goto LABEL_39;
            }

LABEL_36:
            sub_1E5E05374(v20, v21);
            MEMORY[0x1E694D7C0](v20, v21);
            v23 = 0x7974696C61646F6DLL;
            v22 = 0xE90000000000003ALL;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          v22 = 0xE600000000000000;
          v23 = 0x756F59726F66;
          if (v13 <= 2)
          {
            goto LABEL_47;
          }
        }

LABEL_39:
        switch(v13)
        {
          case 3:
            v24 = 0xE600000000000000;
            if (v23 != 0x686372616573)
            {
              goto LABEL_60;
            }

            break;
          case 4:
            v24 = 0xE600000000000000;
            if (v23 != 0x7478654E7075)
            {
              goto LABEL_60;
            }

            break;
          case 5:
            v24 = 0xE500000000000000;
            if (v23 != 0x736E616C70)
            {
              goto LABEL_60;
            }

            break;
          default:
LABEL_54:
            MEMORY[0x1E694D7C0](v32, v13);
            v24 = 0xE90000000000003ALL;
            if (v23 != 0x7974696C61646F6DLL)
            {
              goto LABEL_60;
            }

            break;
        }

LABEL_59:
        if (v22 == v24)
        {
          sub_1E5E0476C(v20, v21);

LABEL_64:
          result = sub_1E5E0476C(v32, v13);
          a5 = v31;
          v26 = v30[v17];
          v30[v17] = v26 & ~v18;
          if ((v26 & v18) != 0)
          {
            v6 = v29 - 1;
            if (__OFSUB__(v29, 1))
            {
LABEL_73:
              __break(1u);
              return result;
            }

            if (v29 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_60:
        v25 = sub_1E65E6C18();
        sub_1E5E0476C(v20, v21);

        if (v25)
        {
          goto LABEL_64;
        }

        v16 = (v16 + 1) & v33;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if ((*(v34 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10 <= v7 + 1)
  {
    v27 = v7 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_1E6089080(v30, a2, v29, a3);
}

uint64_t sub_1E63387E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 56) = 0;
  v12 = (*(a4 + 32) + **(a4 + 32));
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_1E633892C;

  return v12(v5 + 56, a1, a2, a3, a4);
}

uint64_t sub_1E633892C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6338A78, v4, v3);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1E6338A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 56) = 2;
  v12 = (*(a4 + 32) + **(a4 + 32));
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_1E6338BE0;

  return v12(v5 + 56, a1, a2, a3, a4);
}

uint64_t sub_1E6338BE0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6339054, v4, v3);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t TaskSchedulerPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6338DB8()
{
  result = qword_1ED078630;
  if (!qword_1ED078630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078630);
  }

  return result;
}

uint64_t dispatch thunk of TaskScheduling.scheduleTask(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1E6338F84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1E6338FD8(uint64_t a1)
{
  result = sub_1E6339000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E6339000()
{
  result = qword_1ED078638;
  if (!qword_1ED078638)
  {
    type metadata accessor for NullTaskScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078638);
  }

  return result;
}

void sub_1E63390F8()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v4 = sub_1E65E6528();
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 addSubview_];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    sub_1E65E64F8();

    sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
    v10 = sub_1E65E5EF8();

    [v9 activateConstraints_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E6339270(void *a1)
{
  v1 = a1;
  sub_1E63390F8();
}

uint64_t sub_1E63392B8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1E65E4F98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v11 = sub_1E65E63C8();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  LOBYTE(ObjectType) = sub_1E65E4FC8();
  result = (*(v9 + 8))(v11, v8);
  if (ObjectType)
  {
    if (!*&v2[qword_1ED078660])
    {
      *&v2[qword_1ED078660] = 1;
      v13 = sub_1E65E60A8();
      v14 = *(*(v13 - 8) + 56);
      v14(v7, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v2;
      v16 = v2;
      sub_1E63399BC(0, 0, v7, &unk_1E65FD5C8, v15);

      sub_1E5DF4CF4(v7);
      v14(v7, 1, 1, v13);
      sub_1E65E6058();
      v17 = v16;
      v18 = sub_1E65E6048();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      *(v19 + 32) = v17;
      *(v19 + 40) = a1 & 1;
      sub_1E64B80F8(0, 0, v7, &unk_1E65FD5D8, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63395A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1E633963C;
  v6.n128_u64[0] = 1.0;

  return MEMORY[0x1EEE34840](v6);
}

uint64_t sub_1E633963C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E633976C, 0, 0);
  }
}

uint64_t sub_1E633976C()
{
  sub_1E65E6058();
  *(v0 + 32) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6339800, v2, v1);
}

uint64_t sub_1E6339800()
{

  sub_1E633986C();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1E633986C()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v5 = sub_1E65E63C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + qword_1ED078660) == 1)
    {
      return [*(v1 + qword_1ED078640) startAnimating];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63399BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5DF4C84(a3, v22 - v9);
  v11 = sub_1E65E60A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E5DF4CF4(v10);
  }

  else
  {
    sub_1E65E6098();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E65E5FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E65E5D18() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E6339C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 16) = a4;
  sub_1E65E6058();
  *(v5 + 24) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6339CA4, v7, v6);
}

uint64_t sub_1E6339CA4()
{
  v3 = (*(*(v0 + 16) + qword_1ED078650) + **(*(v0 + 16) + qword_1ED078650));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1E6339D9C;

  return v3();
}

uint64_t sub_1E6339D9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E6339F44;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E6339EC4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E6339EC4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_1E6339FB8(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6339F44()
{
  v1 = *(v0 + 56);

  sub_1E633A358();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6339FB8(void *a1, int a2)
{
  v23 = a2;
  v4 = sub_1E65E4F38();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E65E4F68();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E65E4F98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v13 = sub_1E65E63C8();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1E65E4FC8();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (*&v2[qword_1ED078660] == 1)
    {
      *&v2[qword_1ED078660] = a1;
      v16 = a1;
      v17 = sub_1E65E63C8();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v16;
      *(v18 + 32) = v23 & 1;
      aBlock[4] = sub_1E633BA90;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E5E05AB0;
      aBlock[3] = &block_descriptor_15;
      v19 = _Block_copy(aBlock);
      v20 = v16;
      v21 = v2;

      sub_1E65E4F48();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E623B174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
      sub_1E5E05A4C();
      sub_1E65E6738();
      MEMORY[0x1E694DDE0](0, v9, v6, v19);
      _Block_release(v19);

      (*(v26 + 8))(v6, v4);
      return (*(v24 + 8))(v9, v25);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E633A358()
{
  v1 = *&v0[qword_1ED078658];
  if (v1)
  {
    v1();
  }

  v2 = [v0 presentingViewController];
  if (v2)
  {
    v4 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return;
    }

    v4 = v3;
  }
}

void sub_1E633A438(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E63392B8(a3);
}

uint64_t sub_1E633A48C(void *a1, void *a2, char a3)
{
  v6 = sub_1E65E4F38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E4F68();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 addChildViewController_];
  [a2 didMoveToParentViewController_];
  [a1 setNeedsUpdateOfSupportedInterfaceOrientations];
  [a1 setNeedsStatusBarAppearanceUpdate];
  [a1 setNeedsUpdateOfHomeIndicatorAutoHidden];
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v13 = sub_1E65E63C8();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  *(v14 + 32) = a3;
  aBlock[4] = sub_1E633BA9C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_15;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = a1;

  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E623B174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v20);
}

void sub_1E633A788(void *a1, void *a2, char a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *a2;
  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 setAlpha_];

  v9 = [a1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [a2 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [a1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v12 addSubview_];

  v15 = [a1 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [a2 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = objc_opt_self();
  sub_1E65E6518();

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v20 = sub_1E65E5EF8();

  [v19 activateConstraints_];

  v21 = [a1 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setNeedsLayout];

  [*(a2 + qword_1ED078640) stopAnimating];
  if (a3)
  {
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = *(v6 + 80);
    *(v25 + 24) = v24;
    aBlock[4] = sub_1E633BAA8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5E05AB0;
    aBlock[3] = &block_descriptor_24_0;
    v26 = _Block_copy(aBlock);

    [v23 animateWithDuration:v26 animations:0.2];
    _Block_release(v26);
    return;
  }

  v27 = [a1 view];
  if (!v27)
  {
    goto LABEL_21;
  }

  v28 = v27;
  [v27 setAlpha_];
}

void sub_1E633AB38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];

    if (v3)
    {
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1E633ABC0(void *a1)
{
  v1 = a1;
  v2 = sub_1E633ABF4();

  return v2;
}

id sub_1E633ABF4()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v5 = sub_1E65E63C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + qword_1ED078660);
    if (v8 >= 2)
    {
      return [v8 supportedInterfaceOrientations];
    }

    else
    {
      return *(v1 + qword_1ED078648);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633AD48(void *a1)
{
  v1 = a1;
  v2 = sub_1E633ADC8();

  if (v2)
  {
    sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
    v3 = sub_1E65E5EF8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E633ADC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *&v1[qword_1ED078660];
    if (v9 >= 2)
    {
      v13 = [v9 keyCommands];
      if (v13)
      {
        v11 = v13;
        sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
        v12 = sub_1E65E5F18();
        sub_1E6257A80(v9);
        goto LABEL_7;
      }

      sub_1E6257A80(v9);
    }

    else
    {
      v14.receiver = v1;
      v14.super_class = ObjectType;
      v10 = objc_msgSendSuper2(&v14, sel_keyCommands);
      if (v10)
      {
        v11 = v10;
        sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
        v12 = sub_1E65E5F18();
LABEL_7:

        return v12;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1E633AFC8(void *a1)
{
  v1 = a1;
  sub_1E633B038();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v2 = sub_1E65E5EF8();

  return v2;
}

uint64_t sub_1E633B038()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *&v1[qword_1ED078660];
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E65EA660;
      *(v11 + 32) = v9;
      v12 = v9;
    }

    else
    {
      v13.receiver = v1;
      v13.super_class = ObjectType;
      v10 = objc_msgSendSuper2(&v13, sel_preferredFocusEnvironments);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
      v11 = sub_1E65E5F18();
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633B208(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForStatusBarStyle);

  return v2;
}

id sub_1E633B254(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForStatusBarHidden);

  return v2;
}

id sub_1E633B2A0(SEL *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E65E4F98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v8 = sub_1E65E63C8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = sub_1E65E4FC8();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *&v3[qword_1ED078660];
    if (v11 >= 2)
    {
      v12 = *&v3[qword_1ED078660];
      v13 = v11;
      return v12;
    }

    else
    {
      v14.receiver = v3;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, *a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E633B41C(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B450();

  return v2 & 1;
}

id sub_1E633B450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *&v1[qword_1ED078660];
    if (v9 >= 2)
    {
      return [v9 prefersHomeIndicatorAutoHidden];
    }

    else
    {
      v10.receiver = v1;
      v10.super_class = ObjectType;
      return objc_msgSendSuper2(&v10, sel_prefersHomeIndicatorAutoHidden);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633B5BC(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForHomeIndicatorAutoHidden);

  return v2;
}

void sub_1E633B608(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E633B8E8();
}

uint64_t sub_1E633B660(uint64_t a1)
{

  sub_1E5E29474(*(a1 + qword_1ED078658), *(a1 + qword_1ED078658 + 8));
  sub_1E6257A80(*(a1 + qword_1ED078660));

  return swift_unknownObjectRelease();
}

uint64_t sub_1E633B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard31RouteInterstitialViewControllerC5StateOyx_G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E633B75C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1E633B7B0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1E633B80C(void *result, int a2)
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

void sub_1E633B844()
{
  v1 = qword_1ED078640;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *(v0 + qword_1ED078660) = 0;
  v2 = (v0 + qword_1ED078668);
  *v2 = 0;
  v2[1] = 0;
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E633B918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63395A4(a1, v4, v5, v6);
}

uint64_t sub_1E633B9CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6339C08(a1, v4, v5, v6, v7);
}

int *sub_1E633BAC0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E3598();
  sub_1E633BD64();
  sub_1E65DC298();
  sub_1E65DC288();
  sub_1E65DB248();
  v9 = *MEMORY[0x1E699DC58];
  v10 = sub_1E65DC488();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = sub_1E65DAE38();
  v12 = sub_1E65DAE38();
  v13 = sub_1E65E4B48();
  v14 = 4.0;
  if (v13)
  {
    v14 = 8.0;
  }

  v15 = 16.0;
  if (v13)
  {
    v15 = 18.0;
  }

  if (v11 == v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v11 == v12)
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 8.0;
  }

  sub_1E617BA04(v7, a2);
  result = type metadata accessor for ArtworkDescriptor(0);
  *(a2 + result[5]) = MEMORY[0x1E69E7CD0];
  v19 = a2 + result[6];
  *v19 = 0;
  *(v19 + 8) = v16;
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(a2 + result[7]) = 1;
  v20 = (a2 + result[8]);
  *v20 = 0;
  v20[1] = 0;
  return result;
}

unint64_t sub_1E633BD64()
{
  result = qword_1ED078778;
  if (!qword_1ED078778)
  {
    sub_1E65E3598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078778);
  }

  return result;
}

uint64_t sub_1E633BDBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078780, &qword_1E65FD5E0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v23 - v3;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = sub_1E65E3858();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65E3828();
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v0;
  sub_1E5E1DEAC(v0, v10);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1E5E1E6C8(v10, v17 + v16, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v1, v8);
  v18 = swift_allocObject();
  sub_1E5E1E6C8(v8, v18 + v16, type metadata accessor for AppComposer);
  sub_1E65E3848();
  sub_1E65E3818();
  type metadata accessor for AppFeature(0);
  sub_1E633C9C8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E633C9C8(&qword_1ED075748, MEMORY[0x1E699ED58], MEMORY[0x1E699ED50]);
  v19 = v26;
  v20 = v24;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v21 = sub_1E65E4F08();
  (*(v27 + 8))(v19, v28);
  (*(v25 + 8))(v15, v20);
  return v21;
}

uint64_t sub_1E633C1D0()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611E778(v0 + v3);
}

uint64_t sub_1E633C29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633C2BC, 0, 0);
}

uint64_t sub_1E633C2BC()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AppStateService.makeAppIdleOccurredStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E6220F94();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE47FC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E633C414(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E633C29C(a1, v1 + v5);
}

uint64_t sub_1E633C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_1E65E3838();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for BrowsingIdentity(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v26 = a1;
  sub_1E65E4C98();
  sub_1E60EE7BC(v10);
  sub_1E5DFE50C(v7, &qword_1ED071E58, &qword_1E65EA150);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    if (v19(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E6C8(v10, v17, type metadata accessor for BrowsingIdentity);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v17, v15);
  sub_1E633CA10(v15);
  sub_1E633CA10(v17);
  v22 = v26 + *(v18 + 240);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  (*(v25 + 16))(v4, v22 + *(v23 + 28), v27);
  return sub_1E65E37F8();
}

uint64_t sub_1E633C8CC(uint64_t a1)
{
  v2 = sub_1E65E3838();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E3808();
  v6 = a1 + *(type metadata accessor for AppState(0) + 240);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  return (*(v3 + 40))(v6 + *(v7 + 28), v5, v2);
}

uint64_t sub_1E633C9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E633CA10(uint64_t a1)
{
  v2 = type metadata accessor for BrowsingIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E633CA6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633CA8C, 0, 0);
}

uint64_t sub_1E633CA8C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[5] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Query current network conditions...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = ContentAvailabilityService.queryNetworkConditions.getter();
  v0[6] = v6;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E633CC44;

  return v9();
}

uint64_t sub_1E633CC44(char a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1E633CEAC;
  }

  else
  {
    v4 = sub_1E633CD5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E633CD5C()
{
  v11 = v0;

  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = sub_1E65D8D58();
    v7 = sub_1E5DFD4B0(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Network Conditions: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E694F1C0](v4, -1, -1);
    MEMORY[0x1E694F1C0](v3, -1, -1);
  }

  **(v0 + 24) = *(v0 + 72);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E633CEAC()
{
  v15 = v0;
  v1 = v0[8];

  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to query current network conditions: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1E633D034(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E633CA6C(a1, v1 + v5);
}

uint64_t sub_1E633D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E633D244, 0, 0);
}

uint64_t sub_1E633D244()
{
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[12] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E633D364;
  v4 = v0[11];

  return v6(v4);
}

uint64_t sub_1E633D364()
{

  return MEMORY[0x1EEE6DFA0](sub_1E633D47C, 0, 0);
}

uint64_t sub_1E633D47C()
{
  sub_1E65E60F8();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E633D530;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6D9C8](v0 + 25, 0, 0, v2);
}

uint64_t sub_1E633D530()
{

  return MEMORY[0x1EEE6DFA0](sub_1E633D62C, 0, 0);
}

uint64_t sub_1E633D62C()
{
  v18 = v0;
  v1 = *(v0 + 25);
  if (v1 == 3)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = sub_1E65E3B68();
    __swift_project_value_buffer(v7, qword_1EE2EA2A0);
    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6338();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = sub_1E65D8D58();
      v14 = sub_1E5DFD4B0(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "Network Conditions: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    sub_1E65E6058();
    *(v0 + 120) = sub_1E65E6048();
    v16 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E633D880, v16, v15);
  }
}

uint64_t sub_1E633D880()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  sub_1E65E4E38();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E633D530;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6D9C8](v0 + 25, 0, 0, v2);
}

uint64_t sub_1E633D954(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E633D110(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E633DA6C(void *a1, uint64_t a2)
{
  v148 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v141 = &v121 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v153 = &v121 - v6;
  v7 = sub_1E65D8F28();
  v160 = *(v7 - 8);
  v161 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v137 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v158 = &v121 - v14;
  v15 = sub_1E65D8C68();
  v156 = *(v15 - 8);
  v157 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v154 = &v121 - v18;
  v19 = type metadata accessor for PageMetricsClick(0);
  v20 = *(v19 - 8);
  v144 = v19;
  v145 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v121 - v23;
  v24 = sub_1E65D76F8();
  v150 = *(v24 - 8);
  v151 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v142 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v121 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v143 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v140 = &v121 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v121 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v121 - v36;
  v38 = sub_1E65E20A8();
  v159 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v121 - v45;
  v47 = sub_1E65E2118();
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v121 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E633F02C(a2, v49, MEMORY[0x1E699F1F8]);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078798, &qword_1E65FD658);
  result = (*(*(v50 - 8) + 48))(v49, 2, v50);
  if (!result)
  {
    v133 = v35;
    v134 = v21;
    v162 = v40;
    v52 = *&v49[*(v50 + 48)];
    sub_1E5FAB460(v49, v46, &qword_1ED073718, &qword_1E65ED978);
    sub_1E633EE38(v46, v44);
    v53 = v159;
    if ((*(v159 + 48))(v44, 1, v38) == 1)
    {
      sub_1E5DFE50C(v46, &qword_1ED073718, &qword_1E65ED978);
      v54 = v44;
    }

    else
    {
      v125 = v52;
      v128 = v46;
      v129 = v38;
      (*(v53 + 32))(v162, v44, v38);
      sub_1E65E2068();
      v55 = sub_1E65E1FC8();
      v56 = *(v55 - 8);
      v135 = *(v56 + 48);
      v136 = v56 + 48;
      v57 = v135(v37, 1, v55);
      v127 = v55;
      if (v57 == 1)
      {
        sub_1E5DFE50C(v37, &unk_1ED077750, &unk_1E66011C0);
        v58 = 0;
        v59 = 0xE000000000000000;
      }

      else
      {
        v60 = v149;
        sub_1E65E1FB8();
        (*(v56 + 8))(v37, v55);
        v58 = sub_1E65D76C8();
        v59 = v61;
        (*(v150 + 8))(v60, v151);
      }

      v62 = v160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA670;
      *(inited + 32) = sub_1E65D9228();
      *(inited + 40) = v64;
      *(inited + 48) = v58;
      *(inited + 56) = v59;
      v132 = sub_1E6427498(inited);
      swift_setDeallocating();
      sub_1E5DFE50C(inited + 32, &qword_1ED072378, &qword_1E65EABA8);
      v65 = sub_1E65D9D78();
      (*(*(v65 - 8) + 56))(v154, 1, 1, v65);
      (*(v156 + 104))(v155, *MEMORY[0x1E69CBAA0], v157);
      v66 = sub_1E65D74E8();
      (*(*(v66 - 8) + 56))(v158, 1, 1, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v67 = *(sub_1E65D86A8() - 8);
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v124 = *(v67 + 72);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1E65EB9E0;
      v126 = v69;
      v131 = v69 + v68;
      v70 = sub_1E65E2088();
      if (v70)
      {
        v71 = v70 == 1;
        if (v70 == 1)
        {
          v72 = 0xD000000000000015;
        }

        else
        {
          v72 = 0xD000000000000012;
        }

        v123 = v72;
        if (v71)
        {
          v73 = 0x80000001E66155E0;
        }

        else
        {
          v73 = 0x80000001E66155C0;
        }

        v122 = v73;
      }

      else
      {
        v122 = 0xED00006E616C5072;
        v123 = 0x756F59646C697542;
      }

      v137 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v75 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v76 = *(v62 + 104);
      LODWORD(v138) = *MEMORY[0x1E69CBCC8];
      v139 = v76;
      v76(v152);

      sub_1E65D8678();
      sub_1E65E2088();
      v130 = v56;
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65E2058();
      v139(v152, *MEMORY[0x1E69CBCD8], v161);
      sub_1E65D8678();
      v77 = sub_1E65DA208();
      (*(*(v77 - 8) + 56))(v153, 1, 1, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v78 = swift_initStackObject();
      *(v78 + 16) = xmmword_1E65EA190;
      *(v78 + 32) = 0;
      v152 = (v78 + 32);
      v79 = v133;
      sub_1E65E2068();
      v80 = v127;
      v81 = v135(v79, 1, v127);
      v160 = v62 + 104;
      if (v81 == 1)
      {
        sub_1E5DFE50C(v79, &unk_1ED077750, &unk_1E66011C0);
        v82 = 0;
      }

      else
      {
        v82 = sub_1E65E1FA8();
        (*(v130 + 8))(v79, v80);
      }

      v83 = v150;
      v84 = v151;
      v85 = v149;
      v163 = v82;
      LOBYTE(v164) = v81 == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762B8, &qword_1E65F52F8);
      sub_1E61D2F88(&qword_1ED0787A0, &qword_1ED0762B8, &qword_1E65F52F8);
      sub_1E65E6848();
      *(v78 + 80) = 3;
      v86 = v140;
      sub_1E65E2068();
      if (v135(v86, 1, v80) == 1)
      {
        sub_1E5DFE50C(v86, &unk_1ED077750, &unk_1E66011C0);
        v87 = 0;
        v88 = 0;
      }

      else
      {
        sub_1E65E1FB8();
        (*(v130 + 8))(v86, v80);
        v87 = sub_1E65D76C8();
        v88 = v89;
        (*(v83 + 8))(v85, v84);
      }

      v163 = v87;
      v164 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      v90 = sub_1E65E6848();
      *(v78 + 128) = 9;
      v91 = v142;
      MEMORY[0x1E6949A30](v90);
      v92 = sub_1E65D76C8();
      v94 = v93;
      (*(v83 + 8))(v91, v84);
      v163 = v92;
      v164 = v94;
      sub_1E65E6848();
      *(v78 + 176) = 7;
      v95 = v143;
      sub_1E65E2068();
      if (v135(v95, 1, v80) == 1)
      {
        sub_1E5DFE50C(v95, &unk_1ED077750, &unk_1E66011C0);
        v96 = 0;
      }

      else
      {
        sub_1E65E1F88();
        (*(v130 + 8))(v95, v80);
        v96 = sub_1E65E5F78();
      }

      v163 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787A8, &qword_1E65FD688);
      sub_1E633EEA8();
      sub_1E65E6848();
      v151 = sub_1E6427784(v78);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v97 = sub_1E65E2088();
      if (v97)
      {
        v99 = v146;
        v98 = v147;
        v100 = v161;
        v101 = v144;
        if (v97 == 1)
        {
          v102 = 0x80000001E66155E0;
          v103 = 0xD000000000000015;
        }

        else
        {
          v102 = 0x80000001E66155C0;
          v103 = 0xD000000000000012;
        }
      }

      else
      {
        v99 = v146;
        v98 = v147;
        v100 = v161;
        v101 = v144;
        v102 = 0xED00006E616C5072;
        v103 = 0x756F59646C697542;
      }

      v139((v98 + v101[14]), v138, v100);
      v104 = v101[15];
      v105 = *MEMORY[0x1E69CC448];
      v106 = sub_1E65D9908();
      v107 = *(v106 - 8);
      (*(v107 + 104))(v98 + v104, v105, v106);
      (*(v107 + 56))(v98 + v104, 0, 1, v106);
      sub_1E5FAB460(v154, v98, &qword_1ED073578, &qword_1E65F0E60);
      (*(v156 + 32))(v98 + v101[5], v155, v157);
      sub_1E5FAB460(v158, v98 + v101[6], &qword_1ED072340, &qword_1E65EA410);
      *(v98 + v101[7]) = v126;
      sub_1E5FAB460(v153, v98 + v101[8], &qword_1ED073570, &unk_1E65F4570);
      v108 = (v98 + v101[9]);
      *v108 = 0;
      v108[1] = 0;
      v109 = (v98 + v101[10]);
      *v109 = 0;
      v109[1] = 0;
      *(v98 + v101[11]) = v151;
      v110 = (v98 + v101[12]);
      *v110 = 0;
      v110[1] = 0;
      v111 = (v98 + v101[13]);
      *v111 = v103;
      v111[1] = v102;
      v112 = sub_1E65E60A8();
      v113 = v141;
      (*(*(v112 - 8) + 56))(v141, 1, 1, v112);
      v114 = v148;
      v161 = v148[9];
      sub_1E633F02C(v98, v99, type metadata accessor for PageMetricsClick);
      v115 = (*(v145 + 80) + 112) & ~*(v145 + 80);
      v116 = swift_allocObject();
      v117 = v99;
      v118 = v116;
      *(v116 + 16) = 0;
      *(v116 + 24) = 0;
      v119 = v114[3];
      *(v116 + 64) = v114[2];
      *(v116 + 80) = v119;
      *(v116 + 96) = v114[4];
      v120 = v114[1];
      *(v116 + 32) = *v114;
      *(v116 + 48) = v120;
      sub_1E633F094(v117, v116 + v115);
      swift_unknownObjectRetain();

      sub_1E6059EAC(0, 0, v113, &unk_1E65FD6A0, v118);

      sub_1E5FC0990(v98);
      (*(v159 + 8))(v162, v129);
      v54 = v128;
    }

    return sub_1E5DFE50C(v54, &qword_1ED073718, &qword_1E65ED978);
  }

  return result;
}

uint64_t sub_1E633EE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E633EEA8()
{
  result = qword_1ED0787B0;
  if (!qword_1ED0787B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0787A8, &qword_1E65FD688);
    sub_1E633EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787B0);
  }

  return result;
}

unint64_t sub_1E633EF2C()
{
  result = qword_1ED0787B8;
  if (!qword_1ED0787B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0787C0, &qword_1E65FD690);
    sub_1E633EFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787B8);
  }

  return result;
}

unint64_t sub_1E633EFB0()
{
  result = qword_1ED0787C8;
  if (!qword_1ED0787C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0735C0, &qword_1E65EABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787C8);
  }

  return result;
}

uint64_t sub_1E633F02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E633F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsClick(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E633F0F8(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E632AE28(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E633F21C(uint64_t a1, uint64_t *a2, unsigned int *a3, char a4)
{
  v7 = sub_1E65DDE68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13[15] = a4;
  return sub_1E65DDC88();
}

uint64_t sub_1E633F354()
{
  sub_1E6344CC8(v0 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, type metadata accessor for OnboardingDetour.State);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E633F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633F3FC, a2, 0);
}

uint64_t sub_1E633F3FC()
{
  v1 = *(v0 + 56);
  v2 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour, &unk_1E65FD720);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E6344DD4, v3, v6);
}

uint64_t sub_1E633F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v48 = a5;
  v52 = a1;
  v53 = a4;
  v8 = type metadata accessor for RouteDestination(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v44 - v13;
  v14 = type metadata accessor for OnboardingDetour.State(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v20 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(a2 + v20, v19, type metadata accessor for OnboardingDetour.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  sub_1E6344CC8(v19, type metadata accessor for OnboardingDetour.State);
  if (v23 == 1)
  {
    v24 = &v17[*(v21 + 48)];
    v25 = a3;
    v26 = *(v21 + 64);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v27 - 8) + 16))(v17, v52, v27);
    v44 = v25;
    v28 = v53;
    *v24 = v25;
    v24[1] = v28;
    v52 = v9;
    v29 = v48;
    sub_1E5E1D894(v48, &v17[v26], type metadata accessor for RouteDestination);
    (*(v22 + 56))(v17, 0, 1, v21);
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1E6344D28(v17, a2 + v20);
    swift_endAccess();
    v30 = sub_1E65E60A8();
    v31 = v50;
    (*(*(v30 - 8) + 56))(v50, 1, 1, v30);
    v32 = v47;
    sub_1E5E1D894(v46, v47, type metadata accessor for AppComposer);
    v33 = v51;
    sub_1E5E1D894(v29, v51, type metadata accessor for RouteDestination);
    v34 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour, &unk_1E65FD720);
    v35 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v36 = (v11 + *(v49 + 80) + v35) & ~*(v49 + 80);
    v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = v34;
    v38[4] = a2;
    sub_1E5E1E048(v32, v38 + v35, type metadata accessor for AppComposer);
    sub_1E5E1E048(v33, v38 + v36, type metadata accessor for RouteDestination);
    v39 = (v38 + v37);
    v40 = v53;
    *v39 = v44;
    v39[1] = v40;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v31, &unk_1E65FD780, v38);
  }

  else
  {
    sub_1E6344DE4();
    v42 = swift_allocError();
    *v43 = 0;
    v54 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E633FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(type metadata accessor for RouteDestination(0) - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v8[10] = v11;
  v8[11] = *(v11 + 64);
  v8[12] = swift_task_alloc();
  v12 = sub_1E65E1B28();
  v8[13] = v12;
  v8[14] = *(v12 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E633FC54, a4, 0);
}

uint64_t sub_1E633FC54()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  sub_1E65E1BB8();
  v10 = v9;
  sub_1E5E1D894(v7, v1, type metadata accessor for AppComposer);
  sub_1E5E1D894(v6, v3, type metadata accessor for RouteDestination);
  v11 = *(v4 + 80);
  *(v0 + 176) = v11;
  v12 = (v11 + 24) & ~v11;
  v13 = (v12 + v2 + *(v5 + 80)) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v0 + 128) = v14;
  *(v14 + 16) = v8;
  sub_1E5E1E048(v1, v14 + v12, type metadata accessor for AppComposer);
  sub_1E5E1E048(v3, v14 + v13, type metadata accessor for RouteDestination);

  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_1E633FE1C;
  v16.n128_u64[0] = v10;

  return MEMORY[0x1EEE343F0](v16);
}

uint64_t sub_1E633FE1C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1E63402C8;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1E633FF44;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E633FF44()
{
  v1 = *(v0 + 96);
  v12 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = (*(v0 + 176) + 24) & ~*(v0 + 176);
  ObjectType = swift_getObjectType();
  sub_1E5E1D894(v2, v1, type metadata accessor for AppComposer);
  v6 = swift_allocObject();
  *(v0 + 152) = v6;
  *(v6 + 16) = v3;
  sub_1E5E1E048(v1, v6 + v4, type metadata accessor for AppComposer);
  v7 = *(v12 + 24);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1E634010C;
  v9 = *(v0 + 48);

  return v11(sub_1E6347618, v6, ObjectType, v9);
}

uint64_t sub_1E634010C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6340238, v1, 0);
}

uint64_t sub_1E6340238()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63402C8()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[Onboarding] Skipping onboarding detour activation: %{public}@", v7, 0xCu);
    sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1E6340498;
  v12 = v0[3];

  return sub_1E63438EC(0, v12);
}