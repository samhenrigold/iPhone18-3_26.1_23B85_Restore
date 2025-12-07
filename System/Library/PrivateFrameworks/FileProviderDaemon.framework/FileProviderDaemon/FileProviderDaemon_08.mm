unint64_t sub_1CF080DBC()
{
  result = qword_1EDEAE330;
  if (!qword_1EDEAE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE330);
  }

  return result;
}

void sub_1CF080E10(_TtC18FileProviderDaemon8FSTester *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v220 = a1;
  v213 = a4;
  v217 = sub_1CF9E5CF8();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v214 = &v175 - v8;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v218);
  v10 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v175 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v175 - v21;
  LOBYTE(v227[0]) = 16;
  v23 = MEMORY[0x1E69E7668];
  sub_1CF0230AC(a2, MEMORY[0x1E69E7668]);
  v24 = v219;
  sub_1CF0230B4(v227, v23, a2, v23, a3);
  if (v24)
  {
    return;
  }

  v211 = a2;
  v212 = a3;
  v207 = v13;
  v208 = v10;
  v209 = v16;
  v219 = v19;
  v210 = v22;
  LOWORD(a3) = v236[0];
  if (LODWORD(v236[0]) >= 0x10000)
  {
    v25 = v212;
    v26 = v211;
    if (HIBYTE(LODWORD(v236[0])))
    {
      __break(1u);
      goto LABEL_12;
    }

    ResidencyReason.init(rawValue:)(BYTE2(v236[0]));
    LOBYTE(v16) = v227[0];
  }

  else
  {
    LOBYTE(v16) = 6;
    v25 = v212;
    v26 = v211;
  }

  EvictionUrgency.init(rawValue:)(a3);
  if (LOBYTE(v227[0]) == 6)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    LOBYTE(v13) = v227[0];
  }

  LOBYTE(v236[0]) = 0;
  sub_1CF0230AC(v26, &type metadata for FileItemKind);
  sub_1CF0230B4(v236, &type metadata for FileItemKind, v26, &type metadata for FileItemKind, v25);
  v27 = v245;
  LOBYTE(v227[0]) = 2;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6530], v26, MEMORY[0x1E69E6530], v25);
  v206 = v27;
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v29 = sub_1CF9E8198();

  LOBYTE(v227[0]) = 15;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6530], v26, MEMORY[0x1E69E6530], v25);
  v205 = v29;
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v31 = sub_1CF9E8198();

  LOBYTE(v236[0]) = 13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
  sub_1CF0230AC(v26, v32);
  sub_1CF0230B4(v236, v32, v26, v32, v25);
  v202 = v32;
  v203 = v31;
  v204 = v241;
  LODWORD(v31) = v242;
  LOBYTE(v236[0]) = 4;
  v33 = MEMORY[0x1E69E75F8];
  sub_1CF0230AC(v26, MEMORY[0x1E69E75F8]);
  sub_1CF0230B4(v236, v33, v26, v33, v25);
  v200 = v31;
  v201 = v240;
  LOBYTE(v236[0]) = 5;
  v34 = v218;
  a2 = 0;
  sub_1CF0230AC(v26, v218);
  sub_1CF0230B4(v236, v34, v26, v34, v25);
  LOBYTE(v236[0]) = 6;
  sub_1CF0230B4(v236, v34, v26, v34, v25);
  LOBYTE(v236[0]) = 3;
  a3 = MEMORY[0x1E69E6370];
  sub_1CF0230AC(v26, MEMORY[0x1E69E6370]);
  sub_1CF0230B4(v236, a3, v26, a3, v25);
  LOBYTE(a3) = v244;
  LOBYTE(v236[0]) = 11;
  sub_1CF0230B4(v236, MEMORY[0x1E69E6370], v26, MEMORY[0x1E69E6370], v25);
LABEL_12:
  v35 = v201;
  v199 = v243;
  LOBYTE(v236[0]) = 12;
  sub_1CF0230B4(v236, MEMORY[0x1E69E6370], v26, MEMORY[0x1E69E6370], v25);
  if (a2)
  {
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return;
  }

  v198 = v239;
  LOBYTE(v236[0]) = 7;
  sub_1CF0230B4(v236, v218, v211, v218, v212);
  LOBYTE(v236[0]) = 8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
  v37 = v211;
  v38 = v212;
  sub_1CF0230AC(v211, v36);
  sub_1CF0230B4(v236, v36, v37, v36, v38);
  v218 = v238;
  LOBYTE(v236[0]) = 9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
  v40 = v211;
  v41 = v212;
  sub_1CF0230AC(v211, v39);
  sub_1CF0230B4(v236, v39, v40, v39, v41);
  v196 = v236[3];
  v197 = v237;
  LOBYTE(v236[0]) = 14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
  sub_1CF0230B4(v236, v42, v211, v42, v212);
  v195 = v236[2];
  LOBYTE(v227[0]) = 20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  v51 = v211;
  v52 = v212;
  sub_1CF0230AC(v211, v50);
  sub_1CF0230B4(v227, v50, v51, v50, v52);
  v193 = v236[0];
  v194 = v236[1];
  LOBYTE(v227[0]) = 23;
  v53 = MEMORY[0x1E69E76D8];
  v54 = v211;
  v55 = v212;
  sub_1CF0230AC(v211, MEMORY[0x1E69E76D8]);
  sub_1CF0230B4(v227, v53, v54, v53, v55);
  v56 = v235;
  LOBYTE(v227[0]) = 21;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v192 = v234;
  LOBYTE(v227[0]) = 22;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v191 = v233;
  LOBYTE(v227[0]) = 27;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v190 = v232;
  LOBYTE(v227[0]) = 17;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v188 = v231;
  LOBYTE(v227[0]) = 18;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v187 = v230;
  LOBYTE(v227[0]) = 1;
  sub_1CF0230B4(v227, MEMORY[0x1E69E6370], v211, MEMORY[0x1E69E6370], v212);
  v189 = 0;
  v186 = v229;
  LOBYTE(v227[0]) = 10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v58 = v211;
  v59 = v212;
  sub_1CF0230AC(v211, v57);
  v60 = v189;
  sub_1CF0230B4(v227, v57, v58, v57, v59);
  v189 = v60;
  if (v60 || (v185 = v228, LOBYTE(v222[0]) = 19, v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90), v69 = v211, v70 = v212, sub_1CF0230AC(v211, v68), v71 = v189, sub_1CF0230B4(v222, v68, v69, v68, v70), (v189 = v71) != 0))
  {
    v218, v61, v62, v63, v64, v65, v66, v67;
    v195, v72, v73, v74, v75, v76, v77, v78;
    sub_1CEFE48D8(v193, v194);
LABEL_17:
    sub_1CEFCCC44(v209, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return;
  }

  v183 = v227[0];
  v184 = v227[1];
  LOBYTE(v222[0]) = 24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B0, &qword_1CF9FDDB8);
  v80 = v211;
  v81 = v212;
  sub_1CF0230AC(v211, v79);
  v82 = v189;
  sub_1CF0230B4(v222, v79, v80, v79, v81);
  if (v82)
  {
    v218, v83, v84, v85, v86, v87, v88, v89;
    v195, v90, v91, v92, v93, v94, v95, v96;
    sub_1CEFE48D8(v193, v194);
    v184, v43, v44, v45, v46, v47, v48, v49;
    sub_1CEFCCC44(v209, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return;
  }

  v182 = v225;
  v181 = v226;
  LOBYTE(v222[0]) = 25;
  sub_1CF0230B4(v222, v202, v211, v202, v212);
  v189 = 0;
  LODWORD(v202) = v223;
  v180 = v224;
  v221 = 26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  v98 = v211;
  v99 = v212;
  sub_1CF0230AC(v211, v97);
  v100 = v189;
  sub_1CF0230B4(&v221, v97, v98, v97, v99);
  v189 = v100;
  if (v100)
  {
    v218, v101, v102, v103, v104, v105, v106, v107;
    v195, v108, v109, v110, v111, v112, v113, v114;
    sub_1CEFE48D8(v193, v194);
    v184, v115, v116, v117, v118, v119, v120, v121;
    goto LABEL_17;
  }

  v211 = v222[0];
  v220 = v222[1];
  v122 = type metadata accessor for ItemMetadata(0);
  v123 = v213;
  v124 = &v213[v122[14]];
  *v124 = 0;
  v124[1] = 0;
  v178 = v124;
  v123[v122[17]] = 2;
  v179 = v122[23];
  v123[v179] = 6;
  v125 = &v123[v122[30]];
  v126 = *(v216 + 56);
  LODWORD(v212) = 1;
  v176 = v125;
  v126();
  v177 = &v123[v122[34]];
  *v177 = xmmword_1CF9F4E20;
  v127 = &v123[v122[38]];
  *v127 = 0;
  v127[1] = 0;
  v175 = v127;
  if (v206 > 1)
  {
    LODWORD(v212) = 0;
    goto LABEL_26;
  }

  if (!v206)
  {
LABEL_26:
    v128 = v185;
    goto LABEL_27;
  }

  LODWORD(v212) = 0;
  v128 = 1;
LABEL_27:
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v129 = v35 & 0x1BF | 0x40;
    if ((v128 & 1) == 0)
    {
      v129 = v35 & 0x1FF;
    }
  }

  else
  {
    v130 = v35 & 0x1FF | (v35 >> 2) & 0x40 | 0x80;
    if ((v128 & 1) == 0)
    {
      LOWORD(v130) = v35 & 0x1FF;
    }

    v129 = (4 * v130) & 0x100 | v130;
  }

  v131 = v213;
  *v213 = v206;
  v131[v122[20]] = v186;
  v132 = v185;
  v131[v122[28]] = v185 & 1;
  v131[v122[29]] = v132 & 1;
  *&v131[v122[26]] = v205;
  *&v131[v122[27]] = v203;
  v133 = *v131;
  v134 = v204;
  if (!((v133 == 1) | v132 & 1))
  {
    v134 = 0;
  }

  v135 = v200;
  *(v131 + 1) = v134;
  v131[8] = v135 & 1 | (((v133 == 1) | v132 & 1) == 0);
  v136 = &v131[v122[37]];
  v137 = (v133 != 0) | v132;
  v138 = v202;
  if (v137)
  {
    v138 = 0;
  }

  v139 = v180;
  *v136 = v138;
  v136[4] = (v137 | v139) & 1;
  *(v131 + 5) = v129;
  v140 = v207;
  sub_1CF06EAD4(v210, v207);
  v141 = *(v216 + 48);
  if (v141(v140, 1, v217) == 1)
  {
    sub_1CF9E5C88();
    if (v141(v207, 1, v217) != 1)
    {
      sub_1CEFCCC44(v207, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v216 + 32))(v214, v207, v217);
  }

  v142 = *(v216 + 32);
  v143 = &v213[v122[7]];
  v144 = v214;
  v145 = v217;
  v216 += 32;
  v214 = v142;
  (v142)(v143, v144, v217);
  v146 = v208;
  sub_1CF06EAD4(v219, v208);
  if (v141(v146, 1, v145) == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v141(v208, 1, v217) != 1)
    {
      sub_1CEFCCC44(v208, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v210, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (v214)(v215, v208, v217);
  }

  v147 = v122[31];
  v148 = v213;
  v149 = &v213[v122[32]];
  v219 = v122[33];
  v150 = &v213[v122[35]];
  (v214)(&v213[v122[8]], v215, v217);
  v148[v122[9]] = a3;
  v148[v122[10]] = v199;
  v148[v122[13]] = v198;
  *&v148[v122[19]] = v56;
  v148[v122[21]] = v13;
  v148[v122[15]] = v192;
  v148[v122[16]] = v191;
  v148[v122[11]] = v188;
  v148[v122[12]] = v187;
  v148[v122[18]] = v190;
  sub_1CEFE4804(v209, v176);
  v151 = v219;
  *&v148[v147] = v218;
  *v149 = v196;
  v149[8] = v197;
  *&v148[v151] = v195;
  v152 = v178;
  v178[1], v153, v154, v155, v156, v157, v158, v159;
  v160 = v184;
  *v152 = v183;
  v152[1] = v160;
  v161 = v177;
  sub_1CEFE48D8(*v177, v177[1]);
  v169 = v194;
  *v161 = v193;
  v161[1] = v169;
  *v150 = v182;
  v150[8] = v181;
  v148[v122[36]] = 0;
  if (v220)
  {
    v170 = (v220 >> 56) & 0xF;
    if ((v220 & 0x2000000000000000) == 0)
    {
      v170 = v211 & 0xFFFFFFFFFFFFLL;
    }

    if (v170)
    {
      v171 = v175;
      v172 = v220;
      *v175 = v211;
      v171[1] = v172;
    }

    else
    {
      v220, v162, v163, v164, v165, v166, v167, v168;
    }
  }

  v173 = v213;
  v213[v122[24]] = 0;
  v173[v122[25]] = 0;
  v173[v122[22]] = 0;
  if (v212)
  {
    v174 = v16;
  }

  else
  {
    v174 = 6;
  }

  v173[v179] = v174;
}

FileProviderDaemon::EvictionUrgency_optional __swiftcall EvictionUrgency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t storeEnumTagSinglePayload for Fields(uint64_t result, int a2, int a3)
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

double sub_1CF082390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = *a4;
  v46 = a4[1];
  v63 = a6[12];
  v64 = a6[13];
  v65 = a6[14];
  v66 = *(a6 + 30);
  v59 = a6[8];
  v60 = a6[9];
  v61 = a6[10];
  v62 = a6[11];
  v55 = a6[4];
  v56 = a6[5];
  v57 = a6[6];
  v58 = a6[7];
  v51 = *a6;
  v52 = a6[1];
  v53 = a6[2];
  v54 = a6[3];
  v11 = type metadata accessor for SnapshotItem(0, a7, a8, a4);
  v12 = (a9 + v11[13]);
  sub_1CEFE528C(v67);
  v13 = v67[13];
  v12[12] = v67[12];
  v12[13] = v13;
  v12[14] = v67[14];
  *(v12 + 30) = v68;
  v14 = v67[9];
  v12[8] = v67[8];
  v12[9] = v14;
  v15 = v67[11];
  v12[10] = v67[10];
  v12[11] = v15;
  v16 = v67[5];
  v12[4] = v67[4];
  v12[5] = v16;
  v17 = v67[7];
  v12[6] = v67[6];
  v12[7] = v17;
  v18 = v67[1];
  *v12 = v67[0];
  v12[1] = v18;
  v19 = v67[3];
  v12[2] = v67[2];
  v12[3] = v19;
  v20 = a9 + v11[14];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 1;
  v21 = a9 + v11[15];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 16);
  v25 = a1;
  v26 = AssociatedTypeWitness;
  v44 = AssociatedTypeWitness;
  v24(a9, v25);
  (v24)(a9 + v11[9], a2, v26);
  v43 = v11[10];
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  *&v69 = v27;
  *(&v69 + 1) = v28;
  *&v70 = AssociatedConformanceWitness;
  *(&v70 + 1) = v30;
  v31 = type metadata accessor for FileItemVersion(0, &v69);
  v32 = *(v31 - 8);
  (*(v32 + 16))(a9 + v43, a3, v31);
  v33 = (a9 + v11[11]);
  *v33 = v47;
  v33[1] = v46;
  sub_1CEFF4408(a5, a9 + v11[12]);
  v34 = v12[13];
  v81 = v12[12];
  v82 = v34;
  v83 = v12[14];
  v84 = *(v12 + 30);
  v35 = v12[9];
  v77 = v12[8];
  v78 = v35;
  v36 = v12[11];
  v79 = v12[10];
  v80 = v36;
  v37 = v12[5];
  v73 = v12[4];
  v74 = v37;
  v38 = v12[7];
  v75 = v12[6];
  v76 = v38;
  v39 = v12[1];
  v69 = *v12;
  v70 = v39;
  v40 = v12[3];
  v71 = v12[2];
  v72 = v40;
  sub_1CF06CF28(&v69);
  v12[12] = v63;
  v12[13] = v64;
  v12[14] = v65;
  *(v12 + 30) = v66;
  v12[8] = v59;
  v12[9] = v60;
  v12[10] = v61;
  v12[11] = v62;
  v12[4] = v55;
  v12[5] = v56;
  v12[6] = v57;
  v12[7] = v58;
  *v12 = v51;
  v12[1] = v52;
  v12[2] = v53;
  v12[3] = v54;
  sub_1CF06DA00(a5);
  (*(v32 + 8))(a3, v31);
  v41 = *(v23 + 8);
  v41(a2, v44);
  v41(a1, v44);
  *(a9 + v11[16]) = 0;
  result = 0.0;
  *(a9 + v11[17]) = xmmword_1CF9FEC20;
  return result;
}

uint64_t sub_1CF082780(char a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = (a1 & 1) == 0;
  if (a1)
  {
    v9 = 0x6465696669726576;
  }

  else
  {
    v9 = 0x676E69646E6570;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v11 = 0x6465696669726576;
  }

  else
  {
    v11 = 0x676E69646E6570;
  }

  if (a2)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1CF9E8048();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

uint64_t sub_1CF082824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  result = type metadata accessor for ItemReconciliation(0, v28);
  if (*(a1 + *(result + 56)) - 1 >= 4)
  {
    v18 = result;
    result = sub_1CF07CD80(result);
    if ((result & 1) == 0)
    {
      (*(v14 + 16))(v16, a1, v13);
      v19 = (*(*(AssociatedTypeWitness - 8) + 48))(v16, 1, AssociatedTypeWitness);
      result = (*(v14 + 8))(v16, v13);
      if (v19 == 1)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
        *(a1 + *(v18 + 72)) = v20;
        return result;
      }

      v21 = v25;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v23 = v22;
      result = (*(v26 + 8))(v21, v27);
      v24 = v23 * 1000000000.0;
      if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v24 > -9.22337204e18)
      {
        if (v24 < 9.22337204e18)
        {
          v20 = v24;
          goto LABEL_9;
        }

LABEL_13:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  return result;
}

BOOL sub_1CF082AE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ItemReconciliationHalf(0, a1[2], a1[4], a4);
  if (sub_1CF082B4C(v5))
  {
    return 1;
  }

  v8 = type metadata accessor for ItemReconciliationHalf(0, a1[3], a1[5], v6);
  return sub_1CF082B4C(v8);
}

BOOL sub_1CF082B4C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1, v4, v6);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v5 + 8))(v8, v4);
  return AssociatedTypeWitness != 1 && *(v1 + *(a1 + 64) + 16) == 1;
}

uint64_t sub_1CF082CB0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v272 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v256[-v8];
  (*(v6 + 16))(&v256[-v8], v1, v5, v7);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v9, v5);
  if (v10 == 1 && (v12 = v1 + *(a1 + 52), v13 = *(a1 + 24), v14 = *(a1 + 40), v15 = v12 + *(type metadata accessor for ItemReconciliationHalf(0, v13, v14, v11) + 64), !*(v15 + 16)) && *v15 == 2)
  {
    v262 = 0;
    v266 = 0;
    v263 = 2;
    v264 = 4;
    v265 = "🔍";
    v261 = "";
    v16 = v272;
  }

  else
  {
    v16 = v272;
    v18 = type metadata accessor for ItemReconciliationHalf(0, v272, v3, v11);
    if ((*(v1 + *(v18 + 36)) & 0x51) != 0 && sub_1CF07CD80(a1))
    {
      v266 = 0;
      v264 = 6;
      v265 = "⬆︎";
    }

    else
    {
      v19 = *(v1 + *(v18 + 40));
      v20 = v19 == 0;
      if (v19)
      {
        v21 = "⬆︎";
      }

      else
      {
        v21 = " ";
      }

      v265 = v21;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = 6;
      }

      v264 = v22;
      if (v20)
      {
        v23 = 2;
      }

      else
      {
        v23 = 0;
      }

      v266 = v23;
    }

    v24 = v1 + *(a1 + 52);
    v13 = *(a1 + 24);
    v14 = *(a1 + 40);
    v25 = type metadata accessor for ItemReconciliationHalf(0, v13, v14, v17);
    if ((*(v24 + *(v25 + 36)) & 0x51) != 0 && sub_1CF07CD80(a1) || *(v24 + *(v25 + 40)))
    {
      v263 = 0;
      v261 = "⬇︎";
      v26 = 6;
    }

    else
    {
      v263 = 2;
      v261 = " ";
      v26 = 1;
    }

    v262 = v26;
  }

  v267 = a1;
  v268 = v1;
  v27 = *(v1 + *(a1 + 60));
  v275 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = v16;
  v30 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v277 = AssociatedTypeWitness;
  v278 = v28;
  v279 = AssociatedConformanceWitness;
  v280 = v32;
  type metadata accessor for ReconciliationID(255, &v277);
  v33 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1CF9E7128();
  v269 = v30;
  if (v35)
  {
    v270 = 0;
    v271 = 0xE000000000000000;
    v257 = 2;
  }

  else
  {
    v277 = 0x6973696C6C6F633CLL;
    v278 = 0xEB000000003A6E6FLL;
    v275 = v27;
    MEMORY[0x1EEE9AC00](v35);
    *&v256[-32] = v29;
    *&v256[-24] = v13;
    *&v256[-16] = v30;
    *&v256[-8] = v14;
    KeyPath = swift_getKeyPath();
    v271 = v256;
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v256[-48] = v29;
    *&v256[-40] = v13;
    *&v256[-32] = v30;
    *&v256[-24] = v14;
    *&v256[-16] = v38;

    v40 = sub_1CF054A5C(sub_1CF95E9F0, &v256[-64], v33, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v39);
    v27, v41, v42, v43, v44, v45, v46, v47;

    v275 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
    v48 = sub_1CF9E67D8();
    v50 = v49;
    v40, v49, v51, v52, v53, v54, v55, v56;
    MEMORY[0x1D3868CC0](v48, v50);
    v50, v57, v58, v59, v60, v61, v62, v63;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v257 = 0;
    v270 = v277;
    v271 = v278;
  }

  v65 = v267;
  v64 = v268;
  v66 = *(v268 + *(v267 + 56));
  if (v66 == 4)
  {
    v258 = 0;
    v67 = 0xE000000000000000;
  }

  else
  {
    v277 = 32;
    v278 = 0xE100000000000000;
    if (v66 > 1)
    {
      if (v66 == 2)
      {
        v68 = 0xE700000000000000;
        v69 = 0x6B6E696C6D7973;
      }

      else
      {
        v68 = 0xE500000000000000;
        v69 = 0x7361696C61;
      }
    }

    else
    {
      v68 = 0xE300000000000000;
      if (v66)
      {
        v69 = 7498084;
      }

      else
      {
        v69 = 6516580;
      }
    }

    MEMORY[0x1D3868CC0](v69, v68);
    v68, v70, v71, v72, v73, v74, v75, v76;
    v67 = v278;
    v258 = v277;
  }

  v77 = *(v64 + v65[20]);
  if (v77)
  {
    v277 = 0x3A636570733C20;
    v278 = 0xE700000000000000;
    v78 = sub_1CF083800(v77);
    v80 = v79;
    MEMORY[0x1D3868CC0](v78);
    v80, v81, v82, v83, v84, v85, v86, v87;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v88 = v278;
    v260 = v277;
  }

  else
  {
    v260 = 0;
    v88 = 0xE000000000000000;
  }

  v259 = v88;
  v277 = 0;
  v278 = 0xE000000000000000;
  v89 = *(v64 + *(type metadata accessor for ItemReconciliationHalf(0, v272, v269, v36) + 76));
  if ((v89 & 3) != 0)
  {
    MEMORY[0x1D3868CC0](2425659376, 0xA400000000000000);
  }

  if ((v89 & 4) != 0)
  {
    MEMORY[0x1D3868CC0](9149666, 0xA300000000000000);
  }

  if ((v89 & 8) != 0)
  {
    MEMORY[0x1D3868CC0](2207555568, 0xA400000000000000);
  }

  LODWORD(v272) = sub_1CF083A1C(v65);
  LODWORD(v269) = *(v64 + v65[19]);
  v275 = sub_1CF9E7988();
  v276 = v90;
  v91 = sub_1CF9E7988();
  v93 = v92;
  MEMORY[0x1D3868CC0](v91);
  v93, v94, v95, v96, v97, v98, v99, v100;
  v101 = sub_1CF9E7988();
  v103 = v102;
  MEMORY[0x1D3868CC0](v101);
  v103, v104, v105, v106, v107, v108, v109, v110;
  v111 = v278;
  MEMORY[0x1D3868CC0](v277, v278);
  v111, v112, v113, v114, v115, v116, v117, v118;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v120 = v275;
  v119 = v276;
  v275 = 0;
  v276 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  type metadata accessor for ItemReconciliationHalf(0, v13, v14, v121);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v258, v67);
  v67, v122, v123, v124, v125, v126, v127, v128;
  MEMORY[0x1D3868CC0](0x3A646568637320, 0xE700000000000000);
  v273 = sub_1CF057488(*(v64 + v65[16]));
  v274 = v129;
  MEMORY[0x1D3868CC0](35, 0xE100000000000000);
  v130 = sub_1CF9E6F58();
  v132 = v131;
  MEMORY[0x1D3868CC0](v130);
  v132, v133, v134, v135, v136, v137, v138, v139;
  v140 = v274;
  MEMORY[0x1D3868CC0](v273, v274);
  v140, v141, v142, v143, v144, v145, v146, v147;
  v148 = v275;
  v149 = v276;
  v275 = v120;
  v276 = v119;

  MEMORY[0x1D3868CC0](v148, v149);
  v119, v150, v151, v152, v153, v154, v155, v156;
  v149, v157, v158, v159, v160, v161, v162, v163;
  v165 = v275;
  v164 = v276;
  v275 = 0;
  v276 = 0xE000000000000000;
  sub_1CF9E7948();
  v276, v166, v167, v168, v169, v170, v171, v172;
  v275 = 0x733C3A6B6E617220;
  v276 = 0xE90000000000003ALL;
  v273 = *(v64 + v65[17]);
  v173 = sub_1CF9E7F98();
  v175 = v174;
  MEMORY[0x1D3868CC0](v173);
  v175, v176, v177, v178, v179, v180, v181, v182;
  v183 = 0xE300000000000000;
  MEMORY[0x1D3868CC0](3826464, 0xE300000000000000);
  if (*(v64 + v65[18]) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v184 = 7889261;
  }

  else
  {
    v273 = *(v64 + v65[18]);
    v184 = sub_1CF9E7F98();
    v183 = v185;
  }

  MEMORY[0x1D3868CC0](v184, v183);
  v183, v186, v187, v188, v189, v190, v191, v192;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v193 = v275;
  v194 = v276;
  v275 = v165;
  v276 = v164;

  MEMORY[0x1D3868CC0](v193, v194);
  v164, v195, v196, v197, v198, v199, v200, v201;
  v194, v202, v203, v204, v205, v206, v207, v208;
  v210 = v275;
  v209 = v276;
  v275 = v260;
  v276 = v259;
  v211 = sub_1CF9E7988();
  v213 = v212;
  MEMORY[0x1D3868CC0](v211);
  v213, v214, v215, v216, v217, v218, v219, v220;
  v221 = sub_1CF9E7988();
  v223 = v222;
  MEMORY[0x1D3868CC0](v221);
  v223, v224, v225, v226, v227, v228, v229, v230;
  v231 = v271;
  MEMORY[0x1D3868CC0](v270, v271);
  v231, v232, v233, v234, v235, v236, v237, v238;
  v239 = v275;
  v240 = v276;
  v275 = v210;
  v276 = v209;

  MEMORY[0x1D3868CC0](v239, v240);
  v209, v241, v242, v243, v244, v245, v246, v247;
  v240, v248, v249, v250, v251, v252, v253, v254;
  return v275;
}

__n128 sub_1CF0837F4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF083800(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    switch(v2)
    {
      case 4:
        v3 = 0x646E49746F4E7369;
        v4 = 0xEE00656C62617865;
        break;
      case 2:
        v3 = 0xD000000000000010;
        v4 = 0x80000001CFA5D0A0;
        break;
      case 1:
        v3 = 0xD000000000000014;
        v4 = 0x80000001CFA5D0C0;
        break;
      default:
        sub_1CF056E98();
        v5 = sub_1CF9E6B28();
        v7 = v6;
        MEMORY[0x1D3868CC0](v5);
        v7, v8, v9, v10, v11, v12, v13, v14;
        v3 = 30768;
        v4 = 0xE200000000000000;
        break;
    }

    v16 = *(v21 + 16);
    v15 = *(v21 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1CEFE95CC((v15 > 1), v16 + 1, 1);
    }

    *(v21 + 16) = v16 + 1;
    v17 = v21 + 16 * v16;
    *(v17 + 32) = v3;
    *(v17 + 40) = v4;
    v18 = v1 == v2;
    v1 ^= v2;
  }

  while (!v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v19 = sub_1CF9E67D8();

  return v19;
}

BOOL sub_1CF083A1C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(a1 + 52), v4, v6);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v5 + 8))(v8, v4);
  return AssociatedTypeWitness != 1 && sub_1CF083B80(a1) != 0;
}

uint64_t sub_1CF083B80(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 40);
  v37 = *(a1 + 24);
  v38 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = *(a1 + 32);
  v35 = *(a1 + 16);
  v36 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  (*(v13 + 16))(&v35 - v15, v2, v12, v14);
  LODWORD(v11) = (*(*(v11 - 8) + 48))(v16, 1, v11);
  (*(v13 + 8))(v16, v12);
  v18 = *(a1 + 52);
  if (v11 == 1)
  {
    v19 = (v2 + v18 + *(type metadata accessor for ItemReconciliationHalf(0, v37, v38, v17) + 64));
    if (!v19[16] && (*v19 & 2) != 0)
    {
      return 0;
    }
  }

  v20 = v2 + v18;
  (*(v7 + 16))(v9, v2 + v18, v6);
  v21 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v9, v6);
  v23 = type metadata accessor for ItemReconciliationHalf(0, v37, v38, v22);
  if (v21 == 1)
  {
    if ((*(v20 + v23[9]) & 0x10) != 0)
    {
      return 0;
    }

    v25 = v23;
    v26 = type metadata accessor for ItemReconciliationHalf(0, v35, v36, v24);
    v23 = v25;
    if ((*(v2 + *(v26 + 36)) & 0x10) != 0)
    {
      return 0;
    }
  }

  v27 = v20 + v23[16];
  v28 = *(v27 + 16);
  if (v28 != 3 && (v28 != 4 || *v27 & 0xFFFFFFFFFFFFFFFELL | *(v27 + 8)))
  {
    return 5;
  }

  if (*(v20 + v23[10]))
  {
    return 6;
  }

  if (*(v20 + v23[9]))
  {
    return 7;
  }

  if (sub_1CF07F1A0(a1))
  {
    return 8;
  }

  v31 = type metadata accessor for ItemReconciliationHalf(0, v35, v36, v30);
  v32 = v2 + v31[16];
  v33 = *(v32 + 16);
  if (v33 != 3 && (v33 != 4 || *v32 & 0xFFFFFFFFFFFFFFFELL | *(v32 + 8)))
  {
    return 1;
  }

  if (*(v2 + v31[10]))
  {
    return 2;
  }

  if (*(v2 + v31[9]))
  {
    return 3;
  }

  v34 = *(v2 + v31[11]);
  if (v34 == 5)
  {
    return 0;
  }

  else
  {
    return 4 * ((v34 & 0xFB) == 0);
  }
}

uint64_t sub_1CF083F70(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *&v201 = swift_getAssociatedTypeWitness();
  *(&v201 + 1) = swift_getAssociatedTypeWitness();
  *&v202 = swift_getAssociatedConformanceWitness();
  *(&v202 + 1) = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FileItemVersion(255, &v201);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v192 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v192 = &v192 - v13;
  v193 = v14;
  *&v201 = 0;
  *(&v201 + 1) = 0xE000000000000000;
  v15 = v1 + *(a1 + 64);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v195 = v16;
  v196 = v17;
  v194 = v18;
  v20 = v19;
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v17)
      {
        v23 = 548966370;
      }

      else
      {
        v23 = 548376546;
      }
    }

    else
    {
      v23 = 548638690;
    }

    v21 = 0xA400000000000000;
  }

  else
  {
    if (v18 == 2)
    {
      v21 = 0xA700000000000000;
      v22 = -273246494;
      goto LABEL_8;
    }

    if (v18 == 3)
    {
      v21 = 0xA700000000000000;
      v22 = -272858910;
LABEL_8:
      v23 = v22 | 0x208FB800000000;
      goto LABEL_19;
    }

    if (v17 | v16)
    {
      v23 = 545627362;
    }

    else
    {
      v23 = 0x208FB8EFB49CE2;
    }

    if (v17 | v16)
    {
      v21 = 0xA400000000000000;
    }

    else
    {
      v21 = 0xA700000000000000;
    }
  }

LABEL_19:
  MEMORY[0x1D3868CC0](v23, v21, v12);
  v21, v24, v25, v26, v27, v28, v29, v30;
  v31 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  MEMORY[0x1EEE9AC00](v31);
  *(&v192 - 2) = v4;
  *(&v192 - 1) = v5;
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  sub_1CF06E1CC(sub_1CF08490C, (&v192 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v32, &v205);
  if (*(&v205 + 1))
  {
    v33 = v205;
  }

  else
  {
    v33 = 0x6E776F6E6B6E753CLL;
  }

  if (*(&v205 + 1))
  {
    v34 = *(&v205 + 1);
  }

  else
  {
    v34 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v33, v34);
  v34, v35, v36, v37, v38, v39, v40, v41;
  v205 = v201;
  v42 = *(v1 + *(a1 + 36));
  if (v42)
  {
    *&v201 = 0x3A6574656C656420;
    *(&v201 + 1) = 0xE800000000000000;
    v43 = sub_1CF7F4AF4(v42);
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));
    v53, v54, v55, v56, v57, v58, v59, v60;
  }

  v61 = *(v1 + *(a1 + 40));
  v62 = v8;
  if (v61)
  {
    *&v201 = 0x3A73646C65696620;
    *(&v201 + 1) = 0xE800000000000000;
    v63 = sub_1CF071470(v61);
    v65 = v64;
    MEMORY[0x1D3868CC0](v63);
    v65, v66, v67, v68, v69, v70, v71, v72;
    v73 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));
    v73, v74, v75, v76, v77, v78, v79, v80;
  }

  v81 = *(v1 + *(a1 + 44));
  v82 = v193;
  if (v81 != 5)
  {
    *&v201 = 32;
    *(&v201 + 1) = 0xE100000000000000;
    if (v81 <= 1)
    {
      if (v81)
      {
        v83 = 0xE500000000000000;
        v84 = 0x7463697665;
      }

      else
      {
        v83 = 0xEB00000000657A69;
        v84 = 0x6C6169726574616DLL;
      }
    }

    else if (v81 == 2)
    {
      v83 = 0x80000001CFA455D0;
      v84 = 0xD000000000000013;
    }

    else if (v81 == 3)
    {
      v83 = 0x80000001CFA455B0;
      v84 = 0xD000000000000016;
    }

    else
    {
      v83 = 0x80000001CFA45580;
      v84 = 0xD000000000000022;
    }

    MEMORY[0x1D3868CC0](v84, v83);
    v83, v85, v86, v87, v88, v89, v90, v91;
    v92 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));
    v92, v93, v94, v95, v96, v97, v98, v99;
  }

  v100 = *(v1 + *(a1 + 52));
  if (v100 <= 1)
  {
    if (!*(v1 + *(a1 + 52)))
    {
      goto LABEL_49;
    }

    v101 = 0x746E65746E6F6320;
    v102 = 0xED000070616E733ALL;
  }

  else if (v100 == 2)
  {
    v101 = 0x746E65746E6F6320;
    v102 = 0xEE0068637461773ALL;
  }

  else if (v100 == 3)
  {
    v101 = 0x746E65746E6F6320;
    v102 = 0xEF74726F706D693ALL;
  }

  else
  {
    v102 = 0x80000001CFA45560;
    v101 = 0xD000000000000010;
  }

  MEMORY[0x1D3868CC0](v101, v102);
LABEL_49:
  v103 = *(v1 + *(a1 + 56));
  if (v103 != 6)
  {
    v104 = 0xE800000000000000;
    *&v201 = 0x3A74726F706D6920;
    *(&v201 + 1) = 0xE800000000000000;
    if (v103 > 2)
    {
      if (v103 == 3)
      {
        v104 = 0xE400000000000000;
        v105 = 1802725732;
      }

      else if (v103 == 4)
      {
        v105 = 0x72656469766F7270;
      }

      else
      {
        v104 = 0xE700000000000000;
        v105 = 0x70756E61656C63;
      }
    }

    else if (v103)
    {
      v104 = 0xE600000000000000;
      if (v103 == 1)
      {
        v105 = 0x746E65726170;
      }

      else
      {
        v105 = 0x7463656C6573;
      }
    }

    else
    {
      v104 = 0xE700000000000000;
      v105 = 0x676E69646E6570;
    }

    MEMORY[0x1D3868CC0](v105, v104);
    v104, v106, v107, v108, v109, v110, v111, v112;
    v113 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));
    v113, v114, v115, v116, v117, v118, v119, v120;
  }

  if (*(v1 + *(a1 + 60)) == 1)
  {
    MEMORY[0x1D3868CC0](0x29736C6428, 0xE500000000000000);
  }

  (*(v62 + 16))(v10, v1 + *(a1 + 48), v20);
  if ((*(v82 + 48))(v10, 1, v6) == 1)
  {
    (*(v62 + 8))(v10, v20);
  }

  else
  {
    v121 = v192;
    (*(v82 + 32))(v192, v10, v6);
    *&v201 = 0;
    *(&v201 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v122 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));
    v122, v123, v124, v125, v126, v127, v128, v129;
    (*(v82 + 8))(v121, v6);
  }

  v130 = *(v1 + *(a1 + 72));
  if (v130)
  {
    *&v201 = 0x3A7265766D6F6420;
    *(&v201 + 1) = 0xE800000000000000;
    v131 = v130;
    v132 = [v131 description];
    v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v135 = v134;

    MEMORY[0x1D3868CC0](v133, v135);
    v135, v136, v137, v138, v139, v140, v141, v142;
    v143 = *(&v201 + 1);
    MEMORY[0x1D3868CC0](v201, *(&v201 + 1));

    v143, v144, v145, v146, v147, v148, v149, v150;
  }

  v151 = (v2 + *(a1 + 68));
  v152 = v151[1];
  v201 = *v151;
  v202 = v152;
  v153 = v151[3];
  v203 = v151[2];
  v204 = v153;
  if (*(&v152 + 1) >> 60 != 11)
  {
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    v154 = v201;
    sub_1CEFF05F4(v202, *(&v152 + 1));
    MEMORY[0x1D3868CC0](0x6572757470616320, 0xEA00000000003A64);
    v198 = 677669222;
    v199 = 0xE400000000000000;
    v197 = v154;
    v155 = sub_1CF9E7F98();
    v157 = v156;
    MEMORY[0x1D3868CC0](v155);
    v157, v158, v159, v160, v161, v162, v163, v164;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v165 = v199;
    MEMORY[0x1D3868CC0](v198, v199);
    v165, v166, v167, v168, v169, v170, v171, v172;
    v173 = *(&v200 + 1);
    MEMORY[0x1D3868CC0](v200, *(&v200 + 1));
    v173, v174, v175, v176, v177, v178, v179, v180;
    sub_1CEFCCC44(&v201, &unk_1EC4BF260, &unk_1CFA01B60);
  }

  v200 = v205;
  v181 = sub_1CF0534E8(v196, v195, v194);
  v183 = v182;
  MEMORY[0x1D3868CC0](v181);
  v183, v184, v185, v186, v187, v188, v189, v190;
  return v200;
}

uint64_t sub_1CF08492C@<X0>(void *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1CF9E7FE8();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

char *sub_1CF0849E8(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = (a1 >> 4) & 3;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return sub_1CF08692C(a1 & 1, a2, *(v4 + *(a3 + 64)), *(v4 + *(a3 + 64) + 8));
    }

    if (a1 <= 0x32u)
    {
      if (a1 == 48)
      {
        v20 = *(v4 + *(a3 + 56));
        if (v20 == 4)
        {
          v41 = 0u;
          v42 = 0u;
        }

        else
        {
          v27 = qword_1CFA03A90[v20];
          *(&v42 + 1) = MEMORY[0x1E69E6530];
          *&v41 = v27;
        }

        v28 = sub_1CEFF8EA0(&v41);
        v30 = v29;
        sub_1CEFCCC44(&v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v30)
        {
          return v28;
        }
      }

      else
      {
        if (a1 == 49)
        {
          v12 = *(v4 + *(a3 + 60));
          v43 = v12;
          *&v41 = swift_getAssociatedTypeWitness();
          *(&v41 + 1) = swift_getAssociatedTypeWitness();
          *&v42 = swift_getAssociatedConformanceWitness();
          *(&v42 + 1) = swift_getAssociatedConformanceWitness();
          type metadata accessor for ReconciliationID(255, &v41);
          v13 = sub_1CF9E6E58();
          swift_getWitnessTable();
          if (sub_1CF9E7128())
          {
            v14 = [a2 bindObjectParameter_];
            v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

            return v15;
          }

          else
          {
            *&v41 = v12;

            swift_getWitnessTable();
            WitnessTable = swift_getWitnessTable();
            v32 = sub_1CF4C0DE0(&v41, v13, WitnessTable);
            v12, v33, v34, v35, v36, v37, v38, v39;
            return v32;
          }
        }

        v21 = *(v4 + *(type metadata accessor for ItemReconciliationHalf(0, *(a3 + 16), *(a3 + 32), a4) + 76));
        *(&v42 + 1) = MEMORY[0x1E69E6530];
        *&v41 = v21;
        v22 = sub_1CEFF8EA0(&v41);
        v24 = v23;
        sub_1CEFCCC44(&v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v24)
        {
          return v22;
        }
      }
    }

    else
    {
      if (a1 <= 0x34u)
      {
        if (a1 == 51)
        {
          v11 = [a2 bindLongParameter_];
        }

        else
        {
          v11 = [a2 bindBooleanParameter_];
        }

        goto LABEL_26;
      }

      if (a1 != 53)
      {
        v11 = [a2 bindLongParameter_];
LABEL_26:
        v25 = v11;
        v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v26;
      }

      v16 = *(v4 + *(a3 + 80));
      *(&v42 + 1) = MEMORY[0x1E69E6530];
      *&v41 = v16;
      v17 = sub_1CEFF8EA0(&v41);
      v19 = v18;
      sub_1CEFCCC44(&v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v19)
      {
        return v17;
      }
    }

    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = type metadata accessor for ItemReconciliationHalf(0, *(a3 + 24), *(a3 + 40), a4);
    v9 = v5 & 0xFFFFFFCF;
  }

  else
  {
    v8 = type metadata accessor for ItemReconciliationHalf(0, *(a3 + 16), *(a3 + 32), a4);
    v9 = v5;
  }

  return sub_1CF084EE0(v9, a2, v8);
}

char *sub_1CF084EE0(int a1, char *a2, int *a3)
{
  v209 = a2;
  LODWORD(v194) = a1;
  v192 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v180 = sub_1CF9E75D8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v186 = &v168 - v4;
  v5 = swift_getAssociatedTypeWitness();
  v178 = sub_1CF9E75D8();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v183 = &v168 - v6;
  v190 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v168 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v168 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v171 = &v168 - v14;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v185 = type metadata accessor for ItemStateVersion(0, v15, AssociatedConformanceWitness, v16);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v168 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v168 - v19;
  v182 = v15;
  v187 = sub_1CF9E75D8();
  v176 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v181 = &v168 - v20;
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v204 = v5;
  *(&v204 + 1) = AssociatedTypeWitness;
  v189 = AssociatedTypeWitness;
  v175 = v21;
  v205 = v21;
  v206 = v22;
  v174 = v22;
  v191 = type metadata accessor for FileItemVersion(255, &v204);
  v23 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v168 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v168 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v168 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v168 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v168 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v168 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v168 - v51;
  v61 = MEMORY[0x1EEE9AC00](v53);
  v63 = &v168 - v62;
  if ((v194 >> 6) <= 1u)
  {
    if (v194 >> 6)
    {
      v82 = v195;
      v83 = sub_1CF086728(v194 & 0x3F, v209, *(v193 + v192[16]), *(v193 + v192[16] + 8), *(v193 + v192[16] + 16));
      if (!v82)
      {
        return v83;
      }

      return v52;
    }

    v64 = (v193 + v192[17]);
    v65 = *(v64 + 3);
    v66 = v195;
    v52 = v209;
    if (v65 >> 60 != 11)
    {
      v200 = *v64;
      *&v201 = *(v64 + 2);
      *(&v201 + 1) = v65;
      v85 = v64[3];
      v202 = v64[2];
      v203 = v85;
      v204 = v200;
      v205 = v201;
      v206 = v65;
      v207 = v202;
      v208 = v85;
      v86 = v194;
      sub_1CF1AE1DC(&v204, &v196);
      v87 = sub_1CF356DB8(v86, v52);
      if (v66)
      {
        v196 = v200;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        sub_1CF1AE25C(&v196);
      }

      else
      {
        v52 = v87;
        v196 = v200;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        sub_1CF1AE25C(&v196);
      }

      return v52;
    }

    v67 = [v209 bindObjectParameter_];
    goto LABEL_71;
  }

  if (v194 >> 6 == 3)
  {
    if (v194 > 0xC2u)
    {
      v68 = v191;
      v69 = v190;
      if (v194 <= 0xC4u)
      {
        if (v194 == 195)
        {
          v70 = v54;
          v71 = v59;
          v72 = v56;
          (*(v59 + 16))(v56, v193 + v192[12], v54, v61);
          v73 = *(v68 - 8);
          if ((*(v73 + 48))(v72, 1, v68) == 1)
          {
            (*(v71 + 8))(v72, v70);
            v80 = 0;
            v81 = 0;
          }

          else
          {
            v147 = v172;
            v148 = v189;
            (*(v69 + 16))(v172, v72 + *(v68 + 56), v189);
            (*(v73 + 8))(v72, v68);
            (*(v69 + 32))(v173, v147, v148);
            v149 = v168;
            v150 = v185;
            swift_dynamicCast();
            v151 = &v149[*(v150 + 36)];
            v80 = *v151;
            v81 = v151[1];
            v152 = *(v184 + 8);

            v152(v149, v150);
          }

          v52 = sub_1CF074DF4(v80, v81, v74, v75, v76, v77, v78, v79);
          v81, v153, v154, v155, v156, v157, v158, v159;
        }

        else
        {
          v120 = v60;
          v121 = v58;
          v122 = v59;
          v123 = v55;
          v124 = v54;
          (*(v59 + 16))(v55, v193 + v192[12], v54, v61);
          v125 = *(v68 - 8);
          v126 = 1;
          v127 = (*(v125 + 48))(v123, 1, v68);
          if (v127 == 1)
          {
            v125 = v122;
            v128 = v124;
            v129 = v183;
          }

          else
          {
            v129 = v183;
            (*(v120 + 16))(v183, v123, v121);
            v126 = 0;
            v128 = v68;
          }

          (*(v125 + 8))(v123, v128);
          (*(v120 + 56))(v129, v126, 1, v121);
          v162 = v178;
          v52 = Optional<A>.encode(_:)(v209, v178, *(v175 + 8));
          (*(v177 + 8))(v129, v162);
        }

        return v52;
      }

      v96 = v209;
      if (v194 == 197)
      {
        v97 = v192[12];
        v194 = v59;
        v98 = v54;
        (*(v59 + 16))(v25, v193 + v97, v61);
        v99 = *(v68 - 8);
        v100 = 1;
        if ((*(v99 + 48))(v25, 1, v68) == 1)
        {
          v101 = v189;
          v99 = v194;
          v102 = v98;
          v103 = v186;
        }

        else
        {
          v103 = v186;
          v101 = v189;
          (*(v69 + 16))(v186, &v25[*(v68 + 56)], v189);
          v100 = 0;
          v102 = v68;
        }

        (*(v99 + 8))(v25, v102);
        (*(v69 + 56))(v103, v100, 1, v101);
        v160 = v96;
        v161 = v180;
        v52 = Optional<A>.encode(_:)(v160, v180, *(v174 + 8));
        (*(v179 + 8))(v103, v161);
        return v52;
      }

      v130 = *(v193 + v192[18]);
      if (v130)
      {
        v131 = [v130 version];
      }

      else
      {
        v131 = 0;
      }

      v67 = [v96 bindLongParameter_];
      goto LABEL_71;
    }

    v89 = v191;
    if (v194 == 192)
    {
      v105 = v60;
      v106 = v58;
      v107 = v54;
      v108 = v59;
      (*(v59 + 16))(v34, v193 + v192[12], v54, v61);
      v109 = *(v89 - 8);
      if ((*(v109 + 48))(v34, 1, v89) == 1)
      {
        (*(v108 + 8))(v34, v107);
        v95 = 0;
      }

      else
      {
        (*(v105 + 16))(v46, v34, v106);
        (*(v109 + 8))(v34, v89);
        (*(v105 + 32))(v49, v46, v106);
        swift_dynamicCast();
        LODWORD(v204) = DWORD2(v204);
        v95 = sub_1CF9E8028();
      }
    }

    else
    {
      v90 = v54;
      if (v194 != 193)
      {
        v110 = v54;
        v111 = v59;
        v112 = v57;
        (*(v59 + 16))(v57, v193 + v192[12], v54, v61);
        v113 = *(v89 - 8);
        v114 = (*(v113 + 48))(v112, 1, v89);
        v115 = v209;
        if (v114 == 1)
        {
          (*(v111 + 8))(v112, v110);
          v116 = v182;
          v117 = *(v182 - 8);
          v118 = 1;
          v119 = v181;
        }

        else
        {
          v141 = v190;
          v142 = v170;
          v143 = v189;
          (*(v190 + 16))(v170, v112 + *(v89 + 56), v189);
          (*(v113 + 8))(v112, v89);
          (*(v141 + 32))(v171, v142, v143);
          v144 = v169;
          v145 = v185;
          swift_dynamicCast();
          v116 = v182;
          v117 = *(v182 - 8);
          v119 = v181;
          (*(v117 + 16))(v181, v144, v182);
          (*(v184 + 8))(v144, v145);
          v118 = 0;
        }

        (*(v117 + 56))(v119, v118, 1, v116);
        v146 = v187;
        v52 = Optional<A>.encode(_:)(v115, v187, *(AssociatedConformanceWitness + 8));
        (*(v176 + 8))(v119, v146);
        return v52;
      }

      v91 = v60;
      v92 = v58;
      v93 = v59;
      (*(v59 + 16))(v31, v193 + v192[12], v54, v61);
      v94 = *(v89 - 8);
      if ((*(v94 + 48))(v31, 1, v89) == 1)
      {
        (*(v93 + 8))(v31, v90);
        v95 = 0;
      }

      else
      {
        (*(v91 + 16))(v40, v31, v92);
        (*(v94 + 8))(v31, v89);
        (*(v91 + 32))(v43, v40, v92);
        swift_dynamicCast();
        if (v206)
        {
          v95 = 0;
        }

        else
        {
          v95 = sub_1CF9E81A8();
        }
      }
    }

    v165 = [v209 bindObjectParameter_];
    goto LABEL_74;
  }

  v84 = v209;
  if (v194 > 0x83u)
  {
    if (v194 > 0x85u)
    {
      if (v194 == 134)
      {
        v67 = [v209 bindBooleanParameter_];
LABEL_71:
        v166 = v67;
LABEL_75:
        v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v52;
      }

      v190 = v60;
      v194 = v58;
      v136 = v54;
      v137 = v59;
      (*(v59 + 16))(v37, v193 + v192[12], v54, v61);
      v138 = v191;
      v139 = *(v191 - 8);
      if ((*(v139 + 48))(v37, 1, v191) == 1)
      {
        (*(v137 + 8))(v37, v136);
        v140 = 0;
      }

      else
      {
        v163 = v190;
        v164 = v194;
        (*(v190 + 16))(v52, v37, v194);
        (*(v139 + 8))(v37, v138);
        (*(v163 + 32))(v63, v52, v164);
        swift_dynamicCast();
        v140 = sub_1CF9E8028();
      }

      v165 = [v84 bindObjectParameter_];
LABEL_74:
      v166 = v165;
      swift_unknownObjectRelease();
      goto LABEL_75;
    }

    if (v194 == 132)
    {
      v88 = *(v193 + v192[13]);
LABEL_46:
      v206 = MEMORY[0x1E69E6530];
      *&v204 = v88;
      goto LABEL_52;
    }

    v132 = *(v193 + v192[14]);
    if (v132 != 6)
    {
LABEL_50:
      v133 = MEMORY[0x1E69E6530];
      goto LABEL_51;
    }
  }

  else
  {
    if (v194 <= 0x81u)
    {
      if (v194 == 128)
      {
        return Optional<A>.encode(_:)(v209, v187, *(AssociatedConformanceWitness + 8));
      }

      v104 = v192[9];
      goto LABEL_45;
    }

    if (v194 == 130)
    {
      v104 = v192[10];
LABEL_45:
      v88 = *(v193 + v104);
      goto LABEL_46;
    }

    v132 = *(v193 + v192[11]);
    if (v132 != 5)
    {
      goto LABEL_50;
    }
  }

  v132 = 0;
  v133 = 0;
  *(&v204 + 1) = 0;
  v205 = 0;
LABEL_51:
  *&v204 = v132;
  v206 = v133;
LABEL_52:
  v52 = sub_1CEFF8EA0(&v204);
  v135 = v134;
  sub_1CEFCCC44(&v204, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v135)
  {
    return v52;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t Optional<A>.encode(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, v10);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    v15 = [a1 bindObjectParameter_];
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    v16 = (*(a3 + 32))(a1, v5, a3);
    (*(v6 + 8))(v8, v5);
  }

  return v16;
}

id sub_1CF086728(char a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a2;
  if (!a1)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
        v8 = 1;
      }

      else
      {
        v8 = a5;
      }

      goto LABEL_25;
    }

    if (a5 != 2)
    {
      if (a5 == 3)
      {
        v8 = 3;
      }

      else if (a3 | a4)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      goto LABEL_25;
    }

LABEL_21:
    v8 = 2;
LABEL_25:
    v7 = [v6 bindLongParameter_];
    goto LABEL_26;
  }

  if (a1 != 1)
  {
    if (a5 == 2 || a5 == 1)
    {
      v9 = a3;
      if (!a3)
      {
LABEL_13:
        v7 = [a2 bindObjectParameter_];
        goto LABEL_26;
      }
    }

    else
    {
      if (a5)
      {
        goto LABEL_13;
      }

      v9 = a4;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    sub_1CF03C530(a3, a4, a5);
    v6 = sub_1CF1DF708(v9);
    sub_1CF03D7A8(a3, a4, a5);
    return v6;
  }

  if (a5)
  {
    v7 = [a2 bindLongParameter_];
LABEL_26:
    v14 = v7;
    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v6;
  }

  v18[3] = MEMORY[0x1E69E6530];
  v18[0] = a3;
  v6 = sub_1CEFF8EA0(v18);
  v13 = v12;
  sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v13)
  {
    LODWORD(v17) = 0;
    v16 = 213;
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_21;
  }

  return v6;
}

uint64_t sub_1CF08692C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v9 = MEMORY[0x1E69E6530];
    v8[0] = a4;
  }

  else
  {
    v9 = MEMORY[0x1E69E6810];
    v8[0] = a3;
  }

  v4 = sub_1CEFF8EA0(v8);
  v6 = v5;
  sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v6)
  {
    return v4;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF086A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ItemReconciliationHalf(0, *(a1 + 16), *(a1 + 32), a4);
  if ((*(v4 + *(v6 + 76)) & 4) != 0)
  {
    return 2;
  }

  v8 = v6;
  v9 = v4 + *(a1 + 52);
  v10 = type metadata accessor for ItemReconciliationHalf(0, *(a1 + 24), *(a1 + 40), v7);
  if ((*(v9 + v10[19]) & 4) != 0 || *(v4 + *(a1 + 56)) == 1)
  {
    return 2;
  }

  if ((*(v4 + v8[10]) & 8) != 0)
  {
    if (*(v4 + v8[14]))
    {
      v11 = v4 + v8[16];
      if ((*(v11 + 16) || (*(v11 + 2) & 4) == 0) && *(v11 + 16) != 2 && (*(v4 + v8[9]) & 0x10) == 0)
      {
        return 0;
      }
    }
  }

  if ((*(v4 + *(a1 + 56)) - 1) < 4u || (*(v9 + v10[10]) & 8) == 0 || !*(v9 + v10[13]))
  {
    return 2;
  }

  v13 = v10;
  v14 = sub_1CF07CD80(a1);
  v15 = v9 + v13[16];
  if (!v14)
  {
    if (!*(v15 + 16))
    {
      if (*v15 == 2)
      {
        return 2;
      }

      goto LABEL_21;
    }

    return 1;
  }

  if (*(v15 + 16))
  {
    return 1;
  }

LABEL_21:
  if ((*(v15 + 2) & 4) == 0)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1CF086B78(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1CF086BF8(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF086BF8(uint64_t a1)
{
  swift_getObjectType();
  sub_1CEFF95C8(a1, v5);
  if (!v6)
  {
    sub_1CF0248E0(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1CF9E6868();

  return v2 & 1;
}

void sub_1CF086D1C(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1CF086D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v116 = a3;
  v117 = a4;
  v118 = a2;
  v115 = a1;
  v6 = *v4;
  v7 = v6[77];
  v8 = v6[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v6[78];
  v11 = v6[76];
  v121 = AssociatedTypeWitness;
  v122 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v124 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID(0, &v121);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v113 - v14;
  v113 = v8;
  v114 = v7;
  v121 = v8;
  v122 = v11;
  v16 = v11;
  AssociatedConformanceWitness = v7;
  v124 = v10;
  v17 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(0, &v121);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v113 - v19;
  (*(v21 + 16))(&v113 - v19, v115, v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v76 = (*(v13 + 32))(v15, v20, v12);
        MEMORY[0x1EEE9AC00](v76);
        v24 = &v113 - 6;
        v78 = v116;
        v77 = v117;
        *(&v113 - 4) = v5;
        *(&v113 - 3) = v78;
        v27 = v118;
        *(&v113 - 2) = v77;
        *(&v113 - 1) = v27;
        v28 = sub_1CF24CFA4;
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v51 = &v20[*(swift_getTupleTypeMetadata2() + 48)];
      v52 = *v51;
      v53 = v51[1];
      v54 = (*(v13 + 32))(v15, v20, v12);
      MEMORY[0x1EEE9AC00](v54);
      v55 = &v113 - 8;
      *(&v113 - 6) = v5;
      *(&v113 - 5) = v52;
      v56 = v118;
      *(&v113 - 4) = v53;
      *(&v113 - 3) = v56;
      v57 = v117;
      *(&v113 - 2) = v116;
      *(&v113 - 1) = v57;
      v58 = sub_1CF24CFD4;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v13 + 32))(v15, v20, v12);
        v121 = 0;
        v122 = 0xE000000000000000;
        sub_1CF9E7948();
        v119 = v121;
        v120 = v122;
        MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
        MEMORY[0x1D3868CC0](*(v5 + *(*v5 + 656)), *(v5 + *(*v5 + 656) + 8));
        MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA369F0);
        AssociatedConformanceWitness = 3044466;
        v124 = 0xE300000000000000;
        v29 = v118;
        v30 = sub_1CF01DAF0(v15, v118, sub_1CF01DEA4, &v121, v113, v11, v114, v10);
        v32 = v31;
        MEMORY[0x1D3868CC0](v30);
        v32, v33, v34, v35, v36, v37, v38, v39;
        MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
        v40 = v116(v29);
        v42 = v41;
        MEMORY[0x1D3868CC0](v40);
        v42, v43, v44, v45, v46, v47, v48, v49;
        v50 = v119;
LABEL_20:
        (*(v13 + 8))(v15, v12);
        return v50;
      }

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v65 = &v20[*(swift_getTupleTypeMetadata2() + 48)];
      v66 = *v65;
      v53 = v65[1];
      v67 = (*(v13 + 32))(v15, v20, v12);
      MEMORY[0x1EEE9AC00](v67);
      v55 = &v113 - 8;
      *(&v113 - 6) = v5;
      *(&v113 - 5) = v66;
      v56 = v118;
      *(&v113 - 4) = v53;
      *(&v113 - 3) = v56;
      v68 = v117;
      *(&v113 - 2) = v116;
      *(&v113 - 1) = v68;
      v58 = sub_1CF24CFEC;
    }

    v50 = sub_1CF01DAF0(v15, v56, v58, v55, v113, v16, v114, v10);
    v53, v69, v70, v71, v72, v73, v74, v75;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v59 = (*(v13 + 32))(v15, v20, v12);
      MEMORY[0x1EEE9AC00](v59);
      v24 = &v113 - 6;
      v61 = v116;
      v60 = v117;
      *(&v113 - 4) = v5;
      *(&v113 - 3) = v61;
      v27 = v118;
      *(&v113 - 2) = v60;
      *(&v113 - 1) = v27;
      v28 = sub_1CF24CF8C;
    }

    else
    {
      v109 = (*(v13 + 32))(v15, v20, v12);
      MEMORY[0x1EEE9AC00](v109);
      v24 = &v113 - 6;
      v111 = v116;
      v110 = v117;
      *(&v113 - 4) = v5;
      *(&v113 - 3) = v111;
      v27 = v118;
      *(&v113 - 2) = v110;
      *(&v113 - 1) = v27;
      v28 = sub_1CF24CF74;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v62 = (*(v13 + 32))(v15, v20, v12);
    MEMORY[0x1EEE9AC00](v62);
    v24 = &v113 - 6;
    v64 = v116;
    v63 = v117;
    *(&v113 - 4) = v5;
    *(&v113 - 3) = v64;
    v27 = v118;
    *(&v113 - 2) = v63;
    *(&v113 - 1) = v27;
    v28 = sub_1CF24CF5C;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v23 = (*(v13 + 32))(v15, v20, v12);
    MEMORY[0x1EEE9AC00](v23);
    v24 = &v113 - 6;
    v26 = v116;
    v25 = v117;
    *(&v113 - 4) = v5;
    *(&v113 - 3) = v26;
    v27 = v118;
    *(&v113 - 2) = v25;
    *(&v113 - 1) = v27;
    v28 = sub_1CF24CF44;
LABEL_19:
    v50 = sub_1CF01DAF0(v15, v27, v28, v24, v113, v11, v114, v10);
    goto LABEL_20;
  }

  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(v5 + *(*v5 + 656)), *(v5 + *(*v5 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA36A20);
  v119 = 34;
  v79 = sub_1CF9E7F98();
  v81 = v80;
  MEMORY[0x1D3868CC0](v79);
  v81, v82, v83, v84, v85, v86, v87, v88;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v119 = 2;
  v89 = sub_1CF9E7F98();
  v91 = v90;
  MEMORY[0x1D3868CC0](v89);
  v91, v92, v93, v94, v95, v96, v97, v98;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v99 = v116(v118);
  v101 = v100;
  MEMORY[0x1D3868CC0](v99);
  v101, v102, v103, v104, v105, v106, v107, v108;
  return v121;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF087658(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E80, &qword_1CFA18038);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v35 - v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
    v10 = *(*(v9 - 8) + 56);
    v38 = v6;
    v10(v6, 1, 1, v9);
    v35 = v8;
    result = sub_1CF0878B4();
    v11 = result;
    v12 = *result->tree;
    if (v12)
    {
      v13 = 0;
      anon_8 = result[1]._anon_8;
      while (v13 < *v11->tree)
      {
        v15 = *anon_8;
        swift_unknownObjectRetain();
        v16 = objc_autoreleasePoolPush();
        ObjectType = swift_getObjectType();
        v18 = MEMORY[0x1EEE9AC00](ObjectType);
        v20 = v36;
        v19 = v37;
        *(&v35 - 4) = v38;
        *(&v35 - 3) = v20;
        *(&v35 - 2) = v19;
        (*(v15 + 24))(sub_1CF088E5C, v18);
        if (v3)
        {
          v11, v21, v22, v23, v24, v25, v26, v27;
          objc_autoreleasePoolPop(v16);
          swift_unknownObjectRelease();

          return sub_1CEFCCC44(v38, &unk_1EC4C4E80, &qword_1CFA18038);
        }

        ++v13;
        objc_autoreleasePoolPop(v16);
        result = swift_unknownObjectRelease();
        anon_8 += 16;
        if (v12 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v11, v28, v29, v30, v31, v32, v33, v34;
      return sub_1CEFCCC44(v38, &unk_1EC4C4E80, &qword_1CFA18038);
    }
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF0878B4()
{
  isUniquelyReferenced_nonNull_native = objc_sync_enter(v0);
  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_22:
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v48 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v47, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1CEFF6FC0(*(v3 + 56) + ((v8 << 10) | (16 * v10)), v50);
      Strong = swift_unknownObjectWeakLoadStrong();
      v12 = v51;
      isUniquelyReferenced_nonNull_native = sub_1CEFF70F4(v50);
      if (Strong)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1CF087B64(0, (*v9->tree + 1), 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v15 = *v9->tree;
    v14 = *v9->tester;
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v49 = v15 + 1;
      v18 = v9;
      v19 = v15;
      isUniquelyReferenced_nonNull_native = sub_1CF087B64((v14 > 1), (v15 + 1), 1, v18);
      v15 = v19;
      v16 = v49;
      v9 = isUniquelyReferenced_nonNull_native;
    }

    *v9->tree = v16;
    v17 = v9 + 16 * v15;
    *(v17 + 4) = Strong;
    *(v17 + 5) = v12;
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v13);
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_5;
    }
  }

  v3, v20, v21, v22, v23, v24, v25, v26;
  v27 = *&v0[v2];
  if (*v9->tree != *v27->tree)
  {

    v29 = sub_1CF8DF014(v28);
    v27, v30, v31, v32, v33, v34, v35, v36;
    v37 = *&v0[v2];
    *&v0[v2] = v29;
    v37, v38, v39, v40, v41, v42, v43, v44;
  }

  v45 = objc_sync_exit(v0);
  if (v45)
  {
    MEMORY[0x1EEE9AC00](v45);
    v48 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v47, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

void (*sub_1CF087B88(uint64_t (*a1)(__n128)))(uint64_t *, void)
{
  v180 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4860, &qword_1CFA16E18);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v174 = &v162 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v178 = (&v162 - v4);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4868, &qword_1CFA16E20);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v172 = &v162 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v9 = *(v8 - 8);
  v176 = v8;
  v177 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v170 = &v162 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v162 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v162 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v162 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v162 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v162 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v162 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v162 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v162 - v40;
  v42 = v183;
  result = v180(v39);
  if (!v42)
  {
    v162 = v31;
    v164 = v34;
    v163 = v22;
    v165 = v25;
    v180 = v28;
    v166 = v37;
    v167 = v41;
    v183 = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
    if ((*(*(v44 - 8) + 48))(v19, 1, v44) == 1)
    {
      v45 = &unk_1EC4C4870;
      v46 = &unk_1CFA18040;
      v47 = v19;
      return sub_1CEFCCC44(v47, v45, v46);
    }

    v48 = *(v44 + 48);
    v49 = v19[*(v44 + 64)];
    v50 = v167;
    sub_1CEFE55D0(v19, v167, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v51 = v166;
    sub_1CEFE55D0(&v19[v48], v166, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v52 = v178;
    v53 = v179;
    sub_1CF7AD800(v51, v178);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
    v55 = *(*(v54 - 8) + 48);
    if (v55(v52, 1, v54) == 1)
    {
      sub_1CEFCCC44(v52, &qword_1EC4C4860, &qword_1CFA16E18);
      v56 = v174;
      sub_1CF7AD800(v50, v174);
      if (v55(v56, 1, v54) == 1)
      {
        sub_1CEFCCC44(v51, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v50, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v45 = &qword_1EC4C4860;
        v46 = &qword_1CFA16E18;
        v47 = v56;
        return sub_1CEFCCC44(v47, v45, v46);
      }

      v77 = v56;
      v78 = v168;
      sub_1CEFE55D0(v77, v168, &unk_1EC4BE360, &qword_1CF9FE650);
      v79 = v171;
      sub_1CEFE55D0(v78, v171, &unk_1EC4BE360, &qword_1CF9FE650);
      v80 = v169;
      sub_1CEFCCBDC(v79, v169, &unk_1EC4BE360, &qword_1CF9FE650);
      v81 = v165;
      sub_1CEFCCBDC(v51, v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v82 = v53;
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E7298();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v181[0] = v179;
        *v85 = 138412802;
        *(v85 + 4) = v82;
        v178 = v86;
        *v86 = v82;
        *(v85 + 12) = 2080;
        v87 = v82;
        v88 = sub_1CF814758();
        v90 = v89;
        sub_1CEFCCC44(v80, &unk_1EC4BE360, &qword_1CF9FE650);
        v91 = sub_1CEFD0DF0(v88, v90, v181);
        v90, v92, v93, v94, v95, v96, v97, v98;
        *(v85 + 14) = v91;
        *(v85 + 22) = 2080;
        v99 = v163;
        sub_1CEFCCBDC(v81, v163, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v100 = v176;
        if ((*(v177 + 48))(v99, 1, v176) == 1)
        {
          v101 = 0x3E6C696E3CLL;
          sub_1CEFCCC44(v99, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v102 = 0xE500000000000000;
        }

        else
        {
          v101 = sub_1CF814758();
          v102 = v120;
          sub_1CEFCCC44(v99, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        sub_1CEFCCC44(v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v121 = sub_1CEFD0DF0(v101, v102, v181);
        v102, v122, v123, v124, v125, v126, v127, v128;
        *(v85 + 24) = v121;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "📖  %@: registering item deletion %s -> %s", v85, 0x20u);
        v129 = v178;
        sub_1CEFCCC44(v178, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v129, -1, -1);
        v130 = v179;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v130, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);

        v51 = v166;
        v116 = v167;
        v79 = v171;
      }

      else
      {

        sub_1CEFCCC44(v81, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v80, &unk_1EC4BE360, &qword_1CF9FE650);
        v100 = v176;
        v116 = v167;
      }

      v131 = *v79;
      v132 = *(v79 + 8);
      v133 = v180;
      (*(v177 + 56))(v180, 1, 1, v100);
      swift_beginAccess();
      sub_1CF1C9A6C(v133, v131, v132);
      swift_endAccess();
      v134 = *v79;
      v135 = *(v79 + 8);
      swift_beginAccess();
      sub_1CF6E9500(v182, v134, v135);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_1CF9E6288();
      if (*v136 != -1)
      {
        ++*v136;
        result(v181, 0);

        sub_1CEFCCC44(v79, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v51, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v47 = v116;
LABEL_30:
        v45 = &qword_1EC4C1B40;
        v46 = &unk_1CF9FCB70;
        return sub_1CEFCCC44(v47, v45, v46);
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v57 = *(v52 + *(v54 + 48));
    v59 = v172;
    v58 = v173;
    v60 = *(v173 + 48);
    sub_1CEFE55D0(v52, v172, &unk_1EC4BE360, &qword_1CF9FE650);
    *(v59 + v60) = v57;
    v61 = *(v59 + *(v58 + 48));
    v62 = v175;
    sub_1CEFE55D0(v59, v175, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v61 & v49)
    {
      v63 = v53;
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v167;
      if (v66)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        *(v68 + 4) = v63;
        *v69 = v63;
        v70 = v63;
        _os_log_impl(&dword_1CEFC7000, v64, v65, "📖  %@: item get updated and we're ask to invalidate the children, reset", v68, 0xCu);
        sub_1CEFCCC44(v69, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v68, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v72 = v166;
      if (Strong)
      {
        v73 = Strong;
        v74 = swift_allocObject();
        *(v74 + 16) = v63;
        v75 = v63;
        sub_1CEFD4024("reset()", 7, 2, nullsub_1, 0, sub_1CF7BA9C8, v74);
      }

      sub_1CEFCCC44(v62, &unk_1EC4BE360, &qword_1CF9FE650);
      v76 = v72;
    }

    else
    {
      v67 = v167;
      v103 = v164;
      sub_1CEFCCBDC(v167, v164, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v104 = v170;
      sub_1CEFCCBDC(v62, v170, &unk_1EC4BE360, &qword_1CF9FE650);
      v105 = v53;
      v106 = sub_1CF9E6108();
      v107 = sub_1CF9E7298();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v181[0] = v110;
        *v108 = 138412802;
        *(v108 + 4) = v105;
        *v109 = v105;
        *(v108 + 12) = 2080;
        v111 = v162;
        sub_1CEFCCBDC(v103, v162, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v112 = (*(v177 + 48))(v111, 1, v176);
        v113 = v105;
        if (v112 == 1)
        {
          v114 = 0x3E6C696E3CLL;
          sub_1CEFCCC44(v111, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v115 = 0xE500000000000000;
        }

        else
        {
          v114 = sub_1CF814758();
          v115 = v137;
          sub_1CEFCCC44(v111, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        sub_1CEFCCC44(v164, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v138 = sub_1CEFD0DF0(v114, v115, v181);
        v115, v139, v140, v141, v142, v143, v144, v145;
        *(v108 + 14) = v138;
        *(v108 + 22) = 2080;
        v146 = v170;
        v147 = sub_1CF814758();
        v149 = v148;
        sub_1CEFCCC44(v146, &unk_1EC4BE360, &qword_1CF9FE650);
        v150 = sub_1CEFD0DF0(v147, v149, v181);
        v149, v151, v152, v153, v154, v155, v156, v157;
        *(v108 + 24) = v150;
        _os_log_impl(&dword_1CEFC7000, v106, v107, "📖  %@: registering item update %s -> %s", v108, 0x20u);
        sub_1CEFCCC44(v109, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v109, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v110, -1, -1);
        MEMORY[0x1D386CDC0](v108, -1, -1);

        v119 = v166;
        v67 = v167;
        v62 = v175;
        v117 = v176;
        v118 = v180;
      }

      else
      {

        sub_1CEFCCC44(v104, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v103, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v117 = v176;
        v118 = v180;
        v119 = v166;
      }

      v158 = *v62;
      v159 = *(v62 + 8);
      sub_1CEFCCBDC(v62, v118, &unk_1EC4BE360, &qword_1CF9FE650);
      (*(v177 + 56))(v118, 0, 1, v117);
      swift_beginAccess();
      sub_1CF1C9A6C(v118, v158, v159);
      swift_endAccess();
      v160 = *v62;
      LOBYTE(v159) = *(v62 + 8);
      swift_beginAccess();
      sub_1CF8DD3D8(v160, v159, v182);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_1CF9E6288();
      if (*v161 == -1)
      {
        goto LABEL_34;
      }

      ++*v161;
      result(v181, 0);

      sub_1CEFCCC44(v62, &unk_1EC4BE360, &qword_1CF9FE650);
      v76 = v119;
    }

    sub_1CEFCCC44(v76, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v47 = v67;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1CF088BB8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF088C14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E80, &qword_1CFA18038);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v20 = a1;
  sub_1CEFCCBDC(a1, &v20 - v12, &unk_1EC4C4E80, &qword_1CFA18038);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    v17 = sub_1CEFCCC44(v13, &unk_1EC4C4E80, &qword_1CFA18038);
    result = v21(v17);
    if (v3)
    {
      return result;
    }

    (*(v15 + 56))(v10, 0, 1, v14);
    v19 = v20;
    sub_1CEFDA9E0(v10, v20, &unk_1EC4C4E80, &qword_1CFA18038);
    sub_1CEFCCBDC(v19, v7, &unk_1EC4C4E80, &qword_1CFA18038);
    result = v16(v7, 1, v14);
    v13 = v7;
    if (result == 1)
    {
      __break(1u);
      return result;
    }
  }

  return sub_1CEFE55D0(v13, v22, &unk_1EC4C4870, &unk_1CFA18040);
}

void sub_1CF088EA0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + *a2);
    v5 = Strong;
    swift_unknownObjectRetain();

    if (v4)
    {
      ObjectType = swift_getObjectType();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_7_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 34) = 0;
}

void sub_1CF088FC8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 indexer];

      if (v5)
      {
        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF0892D0;
        aBlock[3] = &block_descriptor_2016;
        v6 = _Block_copy(aBlock);
        [v5 signalChangesWithCompletionHandler_];

        _Block_release(v6);
        v2 = v5;
      }
    }
  }
}

id schedulers(uint64_t a1)
{
  if (schedulers_onceToken != -1)
  {
    schedulers_cold_1();
  }

  v2 = schedulers_allSchedulers;

  return v2;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1CF0892D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1CF089324(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *a1;
  v10 = sub_1CF03D760();
  return sub_1CF03E148(v10, 0, 0, 0, a1 + *(*a1 + 576), a3, a4, a2, *(v9 + 544), *(v9 + 552), *(v8 + 560), *(v8 + 568));
}

uint64_t sub_1CF089430(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1CF9E5CC8();
  v25 = *MEMORY[0x1E6967298];
  (*(v7 + 16))(v9, v12, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v7 + 32))(v16 + v13, v9, v6);
  v17 = (v16 + v14);
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;
  v20 = v28;
  v19 = v29;
  *(v16 + v15) = v28;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v21 = v19;

  v22 = v20;
  sub_1CF08972C(v25, 0, sub_1CF03F710, v16);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1CF089628()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF08972C(void *a1, void *a2, void (*a3)(uint64_t, id, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong session];
  }

  else
  {
    v11 = 0;
  }

  objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v12 = a2;
  v13 = a1;
  v14 = sub_1CF089C88(v13, a2, 0, 1);

  if (v11)
  {
    [v11 registerLifetimeExtensionForObject_];
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 userEnabled];

    if (v17)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
      v19 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v5 + 280) itemIdentifier:v13];
      v41 = v18;
      [v18 setEnumeratedItemID_];

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        if ([v20 userEnabled])
        {
          v22 = [v21 session];
          v23 = [objc_opt_self() defaultStore];
          if ([v23 hasUpcallExecutionTimeLimits])
          {
            goto LABEL_14;
          }

          if (qword_1EC4BCCF0 != -1)
          {
            swift_once();
          }

          v24 = -1.0;
          if (byte_1EC4BF020 == 1)
          {
LABEL_14:
            [v23 upcallExecutionTimeLimitBase];
            v24 = v25;
          }

          v26 = [v22 newFileProviderProxyWithTimeout:0 pid:v24];
          swift_unknownObjectRelease();
          goto LABEL_21;
        }
      }

      v26 = sub_1CF2F1F6C();
LABEL_21:
      v30 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31 && (v32 = v31, v33 = [v31 session], v32, v33))
      {
        v34 = v12;
        if (!a2)
        {
          v34 = [objc_opt_self() requestForSelf];
        }

        v35 = v12;
        v36 = [v34 nsfpRequestForSession:v33 isSpeculative:0];

        [v36 setDomainVersion_];
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
      }

      v37 = swift_allocObject();
      v37[2] = v11;
      v37[3] = v14;
      v37[4] = v13;
      v37[5] = a3;
      v37[6] = a4;
      aBlock[4] = sub_1CF2F66FC;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_832;
      v38 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v39 = v14;

      v40 = v13;

      [v26 fetchAndStartEnumeratingWithSettings:v41 observer:v30 request:v36 completionHandler:v38];
      _Block_release(v38);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }
  }

  v27 = sub_1CF2F20BC();
  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  *(v28 + 24) = v14;
  swift_unknownObjectRetain();
  v29 = v14;
  a3(v27, v29, sub_1CF2F6590, v28);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id sub_1CF089C88(void *a1, void *a2, uint64_t a3, char a4)
{
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = a1;
  if (a2)
  {
    v9 = a1;
    v10 = a2;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = a1;
    v10 = [v11 requestForSelf];
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v10;
  v13 = a2;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = sub_1CF089D74(a3, a4 & 1);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FPFileTreeLifetimeExtender();
  return objc_msgSendSuper2(&v15, sel_init);
}

double sub_1CF089D74(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultStore];
  if ([v4 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_5;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4BF020)
  {
LABEL_5:
    [v4 upcallExecutionTimeLimitBase];
    v6 = v5;
    if (a2)
    {
    }

    else
    {
      [v4 upcallExecutionTimeLimitPerKiloByte];
      v8 = v7;

      return v6 + a1 / 1000.0 * v8;
    }
  }

  else
  {

    return -1.0;
  }

  return v6;
}

uint64_t getEnumTagSinglePayload for Fields(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for JobSchedulingOrder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JobSchedulingOrder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1CF08A090(_DWORD *a1, int *a2)
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

BOOL sub_1CF08A14C(void *a1, uint64_t *a2)
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

void *sub_1CF08A17C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1CF08A1A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1CF08A2A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CF08A2D8@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1CF08A310@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CF08A3C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF9E5B88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CF08A4C8()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF08A500(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08A548(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A568(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1CF08A630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A650(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A670(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1CF08A698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1CF08A6F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1CF08A744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  return sub_1CF0160C0(v3 + v4, a2);
}

uint64_t sub_1CF08A7A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1CF08A7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1CF08A994(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF08AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF08AF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF08B03C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  sub_1CF8E3958(v0);

  return swift_deallocObject();
}

uint64_t sub_1CF08B094()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF08B0CC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B1E0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF08B294()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B360()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B424(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08B4B0()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF08B500()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF08B540()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B604()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B63C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B6B8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B6F8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B738()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B770()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF08B7A8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08B7E0()
{
  v1 = sub_1CF9E5CF8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B868()
{

  return swift_deallocObject();
}

void *sub_1CF08B944()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4BF1040;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1CF08B99C(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CF08B9D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF08BA54(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

unint64_t sub_1CF08BAD4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1CF08BB00()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08BC10()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF08BC58()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08BCA0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08BCD8(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08BD10()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08BD48()
{
  v83 = *(v0 + 40);
  v85 = *(v0 + 16);
  v82 = v85;
  v86 = v83;
  v84 = type metadata accessor for ItemReconciliation(0, &v85);
  v79 = *(*(v84 - 8) + 64);
  v80 = *(*(v84 - 8) + 80);
  v81 = v0;
  v78 = (v80 + 64) & ~v80;
  v1 = v0 + v78;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(v0 + v78, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v1, AssociatedTypeWitness);
  }

  v5 = type metadata accessor for ItemReconciliationHalf(0, v82, v83, v4);
  v6 = v1 + v5[12];
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v85 = v7;
  *(&v85 + 1) = v8;
  *&v86 = AssociatedConformanceWitness;
  *(&v86 + 1) = v10;
  v11 = type metadata accessor for FileItemVersion(0, &v85);
  if (!(*(*(v11 - 1) + 48))(v6, 1, v11))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
    *(v6 + v11[13]), v12, v13, v14, v15, v16, v17, v18;
    (*(*(v8 - 8) + 8))(v6 + v11[14], v8);
    *(v6 + v11[15]), v19, v20, v21, v22, v23, v24, v25;
    *(v6 + v11[16] + 8), v26, v27, v28, v29, v30, v31, v32;
  }

  sub_1CF03D7A8(*(v1 + v5[16]), *(v1 + v5[16] + 8), *(v1 + v5[16] + 16));
  v33 = v1 + v5[17];
  v34 = *(v33 + 24);
  if (v34 >> 60 != 15 && (v34 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v33 + 16), v34);
  }

  v36 = v1 + *(v84 + 52);
  v37 = swift_getAssociatedTypeWitness();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v36, 1, v37))
  {
    (*(v38 + 8))(v36, v37);
  }

  v40 = type metadata accessor for ItemReconciliationHalf(0, *(&v82 + 1), *(&v83 + 1), v39);
  v41 = v36 + v40[12];
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  *&v85 = v42;
  *(&v85 + 1) = v43;
  *&v86 = v44;
  *(&v86 + 1) = v45;
  v46 = type metadata accessor for FileItemVersion(0, &v85);
  if (!(*(*(v46 - 1) + 48))(v41, 1, v46))
  {
    (*(*(v42 - 8) + 8))(v41, v42);
    *(v41 + v46[13]), v47, v48, v49, v50, v51, v52, v53;
    (*(*(v43 - 8) + 8))(v41 + v46[14], v43);
    *(v41 + v46[15]), v54, v55, v56, v57, v58, v59, v60;
    *(v41 + v46[16] + 8), v61, v62, v63, v64, v65, v66, v67;
  }

  sub_1CF03D7A8(*(v36 + v40[16]), *(v36 + v40[16] + 8), *(v36 + v40[16] + 16));
  v68 = v36 + v40[17];
  v69 = *(v68 + 24);
  if (v69 >> 60 != 15 && (v69 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v68 + 16), v69);
  }

  *(v1 + *(v84 + 60)), v70, v71, v72, v73, v74, v75, v76;
  return swift_deallocObject();
}

uint64_t sub_1CF08C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 464);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  v16 = v15 <= 0;
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_1CF08C44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 464) = (a2 + 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF08C57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF08C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF08C670()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);

  if (*(v0 + 128))
  {
    *(v0 + 96), v4, v5, v6, v7, v8, v9, v10;
    *(v0 + 128), v11, v12, v13, v14, v15, v16, v17;
    *(v0 + 136), v18, v19, v20, v21, v22, v23, v24;
    *(v0 + 152), v25, v26, v27, v28, v29, v30, v31;
  }

  v32 = v3 & 0xFFFFFFFFFFFFFFF8;
  v33 = v0 + v2;
  v34 = type metadata accessor for VFSItem(0);
  if (!(*(*(v34 - 1) + 48))(v33, 1, v34))
  {
    v165 = v32;
    *(v33 + 40), v35, v36, v37, v38, v39, v40, v41;
    v42 = v33 + v34[7];
    v43 = type metadata accessor for ItemMetadata(0);
    v44 = v43[7];
    v45 = sub_1CF9E5CF8();
    v46 = *(v45 - 8);
    v47 = *(v46 + 8);
    v47(v42 + v44, v45);
    v47(v42 + v43[8], v45);
    *(v42 + v43[14] + 8), v48, v49, v50, v51, v52, v53, v54;
    v55 = v43[30];
    if (!(*(v46 + 48))(v42 + v55, 1, v45))
    {
      v47(v42 + v55, v45);
    }

    *(v42 + v43[31]), v56, v57, v58, v59, v60, v61, v62;
    *(v42 + v43[33]), v63, v64, v65, v66, v67, v68, v69;
    v76 = (v42 + v43[34]);
    v77 = v76[1];
    if (v77 >> 60 != 15)
    {
      sub_1CEFE4714(*v76, v77);
    }

    *(v42 + v43[38] + 8), v77, v70, v71, v72, v73, v74, v75;
    v78 = v33 + v34[8];
    v79 = *(v78 + 16);
    v32 = v165;
    if (v79 != 1)
    {

      *(v78 + 48), v80, v81, v82, v83, v84, v85, v86;
      *(v78 + 64), v87, v88, v89, v90, v91, v92, v93;
      *(v78 + 88), v94, v95, v96, v97, v98, v99, v100;

      *(v78 + 120), v101, v102, v103, v104, v105, v106, v107;
      *(v78 + 136), v108, v109, v110, v111, v112, v113, v114;
      *(v78 + 152), v115, v116, v117, v118, v119, v120, v121;
      *(v78 + 168), v122, v123, v124, v125, v126, v127, v128;
      *(v78 + 184), v129, v130, v131, v132, v133, v134, v135;
      v143 = *(v78 + 192);
      if (v143)
      {
        v143, v136, v137, v138, v139, v140, v141, v142;
        *(v78 + 200), v144, v145, v146, v147, v148, v149, v150;
      }

      *(v78 + 224), v136, v137, v138, v139, v140, v141, v142;
      *(v78 + 240), v151, v152, v153, v154, v155, v156, v157;
    }

    v158 = v34[12];
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v159 - 8) + 48))(v33 + v158, 1, v159))
    {
      v160 = sub_1CF9E5A58();
      v161 = *(v160 - 8);
      if (!(*(v161 + 48))(v33 + v158, 1, v160))
      {
        (*(v161 + 8))(v33 + v158, v160);
      }
    }
  }

  v162 = *(v0 + v32 + 32);
  if (v162 >> 60 != 15 && (v162 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v32 + 24), v162);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08CABC()
{

  v0[9], v1, v2, v3, v4, v5, v6, v7;
  v0[13], v8, v9, v10, v11, v12, v13, v14;
  v0[14], v15, v16, v17, v18, v19, v20, v21;
  v0[16], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1CF08CB38()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 24) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08CEA4()
{
  v1 = type metadata accessor for VFSItem(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08D20C()
{
  sub_1CF2B0310(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF08D244()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08D27C()
{

  v0[9], v1, v2, v3, v4, v5, v6, v7;
  v0[13], v8, v9, v10, v11, v12, v13, v14;
  v0[14], v15, v16, v17, v18, v19, v20, v21;
  v0[16], v22, v23, v24, v25, v26, v27, v28;

  v0[25], v29, v30, v31, v32, v33, v34, v35;
  v0[29], v36, v37, v38, v39, v40, v41, v42;
  v0[30], v43, v44, v45, v46, v47, v48, v49;
  v0[32], v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

uint64_t sub_1CF08D2FC()
{

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 104), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 112), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 128), v22, v23, v24, v25, v26, v27, v28;

  *(v0 + 192), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 224), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 232), v43, v44, v45, v46, v47, v48, v49;
  *(v0 + 248), v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

uint64_t sub_1CF08D38C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08D480()
{

  *(v0 + 88), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 120), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 128), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 144), v22, v23, v24, v25, v26, v27, v28;
  v29 = *(v0 + 184);
  if (v29 >> 60 != 15 && (v29 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 176), v29);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08D51C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v160 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v3 = (((v160 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  *(v4 + 24), v5, v6, v7, v8, v9, v10, v11;
  v12 = v4 + v1[12];
  v13 = type metadata accessor for ItemMetadata(0);
  v14 = v13[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + v13[8], v15);
  *(v12 + v13[14] + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v13[30];
  if (!(*(v16 + 48))(v12 + v25, 1, v15))
  {
    v17(v12 + v25, v15);
  }

  *(v12 + v13[31]), v26, v27, v28, v29, v30, v31, v32;
  *(v12 + v13[33]), v33, v34, v35, v36, v37, v38, v39;
  v46 = (v12 + v13[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  v48 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v13[38] + 8), v47, v40, v41, v42, v43, v44, v45;

  *(v0 + v160 + 32), v49, v50, v51, v52, v53, v54, v55;
  *(v0 + v160 + 64), v56, v57, v58, v59, v60, v61, v62;
  *(v0 + v160 + 72), v63, v64, v65, v66, v67, v68, v69;
  *(v0 + v160 + 88), v70, v71, v72, v73, v74, v75, v76;
  v77 = *(v0 + v3 + 24);
  if (v77 >> 60 != 15 && (v77 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v3 + 16), v77);
  }

  v79 = v0 + v48;
  v80 = *(v0 + v48 + 16);
  if (v80 != 1)
  {

    *(v79 + 48), v81, v82, v83, v84, v85, v86, v87;
    *(v79 + 64), v88, v89, v90, v91, v92, v93, v94;
    *(v79 + 88), v95, v96, v97, v98, v99, v100, v101;

    *(v79 + 120), v102, v103, v104, v105, v106, v107, v108;
    *(v79 + 136), v109, v110, v111, v112, v113, v114, v115;
    *(v79 + 152), v116, v117, v118, v119, v120, v121, v122;
    *(v79 + 168), v123, v124, v125, v126, v127, v128, v129;
    *(v79 + 184), v130, v131, v132, v133, v134, v135, v136;
    v144 = *(v79 + 192);
    if (v144)
    {
      v144, v137, v138, v139, v140, v141, v142, v143;
      *(v79 + 200), v145, v146, v147, v148, v149, v150, v151;
    }

    *(v79 + 224), v137, v138, v139, v140, v141, v142, v143;
    *(v79 + 240), v152, v153, v154, v155, v156, v157, v158;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08D820(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 72), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1CF08D870()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v157 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v3 = v0 + v2;
  *(v0 + v2 + 24), v4, v5, v6, v7, v8, v9, v10;
  v11 = v3 + v1[12];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  v32 = (((((((v157 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v33, v34, v35, v36, v37, v38, v39;
  v46 = (v11 + v12[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  *(v11 + v12[38] + 8), v47, v40, v41, v42, v43, v44, v45;

  *(v0 + v157 + 32), v48, v49, v50, v51, v52, v53, v54;
  *(v0 + v157 + 64), v55, v56, v57, v58, v59, v60, v61;
  *(v0 + v157 + 72), v62, v63, v64, v65, v66, v67, v68;
  *(v0 + v157 + 88), v69, v70, v71, v72, v73, v74, v75;

  v76 = v0 + v32;
  v77 = *(v0 + v32 + 16);
  if (v77 != 1)
  {

    *(v76 + 48), v78, v79, v80, v81, v82, v83, v84;
    *(v76 + 64), v85, v86, v87, v88, v89, v90, v91;
    *(v76 + 88), v92, v93, v94, v95, v96, v97, v98;

    *(v76 + 120), v99, v100, v101, v102, v103, v104, v105;
    *(v76 + 136), v106, v107, v108, v109, v110, v111, v112;
    *(v76 + 152), v113, v114, v115, v116, v117, v118, v119;
    *(v76 + 168), v120, v121, v122, v123, v124, v125, v126;
    *(v76 + 184), v127, v128, v129, v130, v131, v132, v133;
    v141 = *(v76 + 192);
    if (v141)
    {
      v141, v134, v135, v136, v137, v138, v139, v140;
      *(v76 + 200), v142, v143, v144, v145, v146, v147, v148;
    }

    *(v76 + 224), v134, v135, v136, v137, v138, v139, v140;
    *(v76 + 240), v149, v150, v151, v152, v153, v154, v155;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08DB88(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8[6], a2, a3, a4, a5, a6, a7, a8;
  v8[10], v9, v10, v11, v12, v13, v14, v15;
  v8[11], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1CF08DBD8()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 40) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08DF60(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08DF98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v2 = (*(v1 + 80) + 112) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v389 = *(*(v4 - 8) + 80);
  v388 = (((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + v389 + 8) & ~v389;
  v5 = (((v388 + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(v6 - 8);
  v392 = *(v7 + 80);

  v8 = v0 + v2;
  v390 = v5;
  v391 = v6;
  if (!(*(v7 + 48))(v8, 1, v6))
  {
    v387 = v4;
    *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
    v16 = v8 + *(v6 + 28);
    v17 = type metadata accessor for ItemMetadata(0);
    v18 = v17[7];
    v19 = sub_1CF9E5CF8();
    v20 = *(v19 - 8);
    v21 = *(v20 + 8);
    v21(v16 + v18, v19);
    v21(v16 + v17[8], v19);
    *(v16 + v17[14] + 8), v22, v23, v24, v25, v26, v27, v28;
    v29 = v17[30];
    if (!(*(v20 + 48))(v16 + v29, 1, v19))
    {
      v21(v16 + v29, v19);
    }

    *(v16 + v17[31]), v30, v31, v32, v33, v34, v35, v36;
    *(v16 + v17[33]), v37, v38, v39, v40, v41, v42, v43;
    v50 = (v16 + v17[34]);
    v51 = v50[1];
    if (v51 >> 60 != 15)
    {
      sub_1CEFE4714(*v50, v51);
    }

    *(v16 + v17[38] + 8), v51, v44, v45, v46, v47, v48, v49;
    v5 = v390;
    v52 = v8 + v391[8];
    v53 = *(v52 + 16);
    v4 = v387;
    if (v53 != 1)
    {

      *(v52 + 48), v54, v55, v56, v57, v58, v59, v60;
      *(v52 + 64), v61, v62, v63, v64, v65, v66, v67;
      *(v52 + 88), v68, v69, v70, v71, v72, v73, v74;

      *(v52 + 120), v75, v76, v77, v78, v79, v80, v81;
      *(v52 + 136), v82, v83, v84, v85, v86, v87, v88;
      *(v52 + 152), v89, v90, v91, v92, v93, v94, v95;
      *(v52 + 168), v96, v97, v98, v99, v100, v101, v102;
      *(v52 + 184), v103, v104, v105, v106, v107, v108, v109;
      v117 = *(v52 + 192);
      if (v117)
      {
        v117, v110, v111, v112, v113, v114, v115, v116;
        *(v52 + 200), v118, v119, v120, v121, v122, v123, v124;
      }

      *(v52 + 224), v110, v111, v112, v113, v114, v115, v116;
      *(v52 + 240), v125, v126, v127, v128, v129, v130, v131;
    }

    v132 = v391[12];
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v133 - 8) + 48))(v8 + v132, 1, v133))
    {
      v134 = sub_1CF9E5A58();
      v135 = *(v134 - 8);
      if (!(*(v135 + 48))(v8 + v132, 1, v134))
      {
        (*(v135 + 8))(v8 + v132, v134);
      }
    }
  }

  v136 = v392 + v5;

  *(v0 + v388 + 24), v137, v138, v139, v140, v141, v142, v143;
  v144 = v0 + v388 + *(v4 + 40);
  v145 = type metadata accessor for ItemMetadata(0);
  v146 = v145[7];
  v147 = sub_1CF9E5CF8();
  v148 = *(v147 - 8);
  v149 = *(v148 + 8);
  v149(v144 + v146, v147);
  v149(v144 + v145[8], v147);
  *(v144 + v145[14] + 8), v150, v151, v152, v153, v154, v155, v156;
  v157 = v145[30];
  v158 = *(v148 + 48);
  if (!v158(v144 + v157, 1, v147))
  {
    v149(v144 + v157, v147);
  }

  v166 = v136 + 248;
  *(v144 + v145[31]), v159, v160, v161, v162, v163, v164, v165;
  *(v144 + v145[33]), v167, v168, v169, v170, v171, v172, v173;
  v180 = (v144 + v145[34]);
  v181 = v180[1];
  if (v181 >> 60 != 15)
  {
    sub_1CEFE4714(*v180, v181);
  }

  v182 = v166 & ~v392;
  *(v144 + v145[38] + 8), v181, v174, v175, v176, v177, v178, v179;

  v190 = v0 + v390;
  v191 = *(v0 + v390 + 16);
  if (v191 != 1)
  {

    *(v190 + 48), v192, v193, v194, v195, v196, v197, v198;
    *(v190 + 64), v199, v200, v201, v202, v203, v204, v205;
    *(v190 + 88), v206, v207, v208, v209, v210, v211, v212;

    *(v190 + 120), v213, v214, v215, v216, v217, v218, v219;
    *(v190 + 136), v220, v221, v222, v223, v224, v225, v226;
    *(v190 + 152), v227, v228, v229, v230, v231, v232, v233;
    *(v190 + 168), v234, v235, v236, v237, v238, v239, v240;
    *(v190 + 184), v241, v242, v243, v244, v245, v246, v247;
    v255 = *(v190 + 192);
    if (v255)
    {
      v255, v248, v249, v250, v251, v252, v253, v254;
      *(v190 + 200), v256, v257, v258, v259, v260, v261, v262;
    }

    *(v190 + 224), v248, v249, v250, v251, v252, v253, v254;
    *(v190 + 240), v263, v264, v265, v266, v267, v268, v269;
  }

  v270 = v0 + v182;
  *(v0 + v182 + 40), v183, v184, v185, v186, v187, v188, v189;
  v271 = v0 + v182 + v391[7];
  v149(v271 + v145[7], v147);
  v149(v271 + v145[8], v147);
  *(v271 + v145[14] + 8), v272, v273, v274, v275, v276, v277, v278;
  v279 = v145[30];
  if (!v158(v271 + v279, 1, v147))
  {
    v149(v271 + v279, v147);
  }

  *(v271 + v145[31]), v280, v281, v282, v283, v284, v285, v286;
  *(v271 + v145[33]), v287, v288, v289, v290, v291, v292, v293;
  v300 = (v271 + v145[34]);
  v301 = v300[1];
  if (v301 >> 60 != 15)
  {
    sub_1CEFE4714(*v300, v301);
  }

  *(v271 + v145[38] + 8), v301, v294, v295, v296, v297, v298, v299;
  v302 = v270 + v391[8];
  v303 = *(v302 + 16);
  if (v303 != 1)
  {

    *(v302 + 48), v304, v305, v306, v307, v308, v309, v310;
    *(v302 + 64), v311, v312, v313, v314, v315, v316, v317;
    *(v302 + 88), v318, v319, v320, v321, v322, v323, v324;

    *(v302 + 120), v325, v326, v327, v328, v329, v330, v331;
    *(v302 + 136), v332, v333, v334, v335, v336, v337, v338;
    *(v302 + 152), v339, v340, v341, v342, v343, v344, v345;
    *(v302 + 168), v346, v347, v348, v349, v350, v351, v352;
    *(v302 + 184), v353, v354, v355, v356, v357, v358, v359;
    v367 = *(v302 + 192);
    if (v367)
    {
      v367, v360, v361, v362, v363, v364, v365, v366;
      *(v302 + 200), v368, v369, v370, v371, v372, v373, v374;
    }

    *(v302 + 224), v360, v361, v362, v363, v364, v365, v366;
    *(v302 + 240), v375, v376, v377, v378, v379, v380, v381;
  }

  v382 = v391[12];
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v383 - 8) + 48))(v270 + v382, 1, v383))
  {
    v384 = sub_1CF9E5A58();
    v385 = *(v384 - 8);
    if (!(*(v385 + 48))(v270 + v382, 1, v384))
    {
      (*(v385 + 8))(v270 + v382, v384);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08E878()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15 && (v1 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08E8CC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08E91C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  *(v0 + v2 + 24), v5, v6, v7, v8, v9, v10, v11;
  v12 = v4 + v1[12];
  v13 = type metadata accessor for ItemMetadata(0);
  v14 = v13[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + v13[8], v15);
  *(v12 + v13[14] + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v13[30];
  if (!(*(v16 + 48))(v12 + v25, 1, v15))
  {
    v17(v12 + v25, v15);
  }

  *(v12 + v13[31]), v26, v27, v28, v29, v30, v31, v32;
  *(v12 + v13[33]), v33, v34, v35, v36, v37, v38, v39;
  v46 = (v12 + v13[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  v48 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v13[38] + 8), v47, v40, v41, v42, v43, v44, v45;

  v49 = *(v0 + v3 + 24);
  if (v49 >> 60 != 15 && (v49 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v3 + 16), v49);
  }

  v51 = v0 + v48;
  v52 = *(v0 + v48 + 16);
  if (v52 != 1)
  {

    *(v51 + 48), v53, v54, v55, v56, v57, v58, v59;
    *(v51 + 64), v60, v61, v62, v63, v64, v65, v66;
    *(v51 + 88), v67, v68, v69, v70, v71, v72, v73;

    *(v51 + 120), v74, v75, v76, v77, v78, v79, v80;
    *(v51 + 136), v81, v82, v83, v84, v85, v86, v87;
    *(v51 + 152), v88, v89, v90, v91, v92, v93, v94;
    *(v51 + 168), v95, v96, v97, v98, v99, v100, v101;
    *(v51 + 184), v102, v103, v104, v105, v106, v107, v108;
    v116 = *(v51 + 192);
    if (v116)
    {
      v116, v109, v110, v111, v112, v113, v114, v115;
      *(v51 + 200), v117, v118, v119, v120, v121, v122, v123;
    }

    *(v51 + 224), v109, v110, v111, v112, v113, v114, v115;
    *(v51 + 240), v124, v125, v126, v127, v128, v129, v130;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08EBEC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2 + 7;

  v4 = v0 + v2;
  *(v4 + 24), v5, v6, v7, v8, v9, v10, v11;
  v12 = v4 + v1[12];
  v13 = type metadata accessor for ItemMetadata(0);
  v14 = v13[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + v13[8], v15);
  *(v12 + v13[14] + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v13[30];
  if (!(*(v16 + 48))(v12 + v25, 1, v15))
  {
    v17(v12 + v25, v15);
  }

  v33 = v3 & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v13[31]), v26, v27, v28, v29, v30, v31, v32;
  *(v12 + v13[33]), v34, v35, v36, v37, v38, v39, v40;
  v47 = (v12 + v13[34]);
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    sub_1CEFE4714(*v47, v48);
  }

  *(v12 + v13[38] + 8), v48, v41, v42, v43, v44, v45, v46;
  v49 = v0 + v33;
  v50 = *(v0 + v33 + 16);
  if (v50 != 1)
  {

    *(v49 + 48), v51, v52, v53, v54, v55, v56, v57;
    *(v49 + 64), v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 88), v65, v66, v67, v68, v69, v70, v71;

    *(v49 + 120), v72, v73, v74, v75, v76, v77, v78;
    *(v49 + 136), v79, v80, v81, v82, v83, v84, v85;
    *(v49 + 152), v86, v87, v88, v89, v90, v91, v92;
    *(v49 + 168), v93, v94, v95, v96, v97, v98, v99;
    *(v49 + 184), v100, v101, v102, v103, v104, v105, v106;
    v114 = *(v49 + 192);
    if (v114)
    {
      v114, v107, v108, v109, v110, v111, v112, v113;
      *(v49 + 200), v115, v116, v117, v118, v119, v120, v121;
    }

    *(v49 + 224), v107, v108, v109, v110, v111, v112, v113;
    *(v49 + 240), v122, v123, v124, v125, v126, v127, v128;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08EE78()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08EEC8()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_1CF9E6068();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 16);
  if (v7 != 1)
  {

    *(v6 + 48), v8, v9, v10, v11, v12, v13, v14;
    *(v6 + 64), v15, v16, v17, v18, v19, v20, v21;
    *(v6 + 88), v22, v23, v24, v25, v26, v27, v28;

    *(v6 + 120), v29, v30, v31, v32, v33, v34, v35;
    *(v6 + 136), v36, v37, v38, v39, v40, v41, v42;
    *(v6 + 152), v43, v44, v45, v46, v47, v48, v49;
    *(v6 + 168), v50, v51, v52, v53, v54, v55, v56;
    *(v6 + 184), v57, v58, v59, v60, v61, v62, v63;
    v71 = *(v6 + 192);
    if (v71)
    {
      v71, v64, v65, v66, v67, v68, v69, v70;
      *(v6 + 200), v72, v73, v74, v75, v76, v77, v78;
    }

    *(v6 + 224), v64, v65, v66, v67, v68, v69, v70;
    *(v6 + 240), v79, v80, v81, v82, v83, v84, v85;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F0A0()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v131 + 16) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F414(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (*(v8 + 80))
  {
    *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 80), v9, v10, v11, v12, v13, v14, v15;
    *(v8 + 88), v16, v17, v18, v19, v20, v21, v22;
    *(v8 + 104), v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = *(v8 + 184);
  if (v30 >> 60 != 15 && (v30 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v8 + 176), v30);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F4B0()
{

  v0[9], v1, v2, v3, v4, v5, v6, v7;
  v0[13], v8, v9, v10, v11, v12, v13, v14;
  v0[14], v15, v16, v17, v18, v19, v20, v21;
  v0[16], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1CF08F510(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (v8[10])
  {
    v8[6], a2, a3, a4, a5, a6, a7, a8;
    v8[10], v9, v10, v11, v12, v13, v14, v15;
    v8[11], v16, v17, v18, v19, v20, v21, v22;
    v8[13], v23, v24, v25, v26, v27, v28, v29;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F578()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 41) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F8EC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF08F934()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF08F97C()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF08F9C4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08F9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FA3C()
{

  if (v0[14])
  {
    v0[10], v1, v2, v3, v4, v5, v6, v7;
    v0[14], v8, v9, v10, v11, v12, v13, v14;
    v0[15], v15, v16, v17, v18, v19, v20, v21;
    v0[17], v22, v23, v24, v25, v26, v27, v28;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08FB5C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FB94()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FC28()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FC60()
{
  v1 = type metadata accessor for VFSItem(0);
  v139 = *(*(v1 - 8) + 80);
  v2 = (v139 + 32) & ~v139;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(v137 - 8);
  v5 = *(v4 + 80);

  v140 = v0;
  v6 = v0 + v2;
  *(v6 + 40), v7, v8, v9, v10, v11, v12, v13;
  v138 = v1;
  v14 = v6 + *(v1 + 28);
  v15 = type metadata accessor for ItemMetadata(0);
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  *(v14 + v15[14] + 8), v20, v21, v22, v23, v24, v25, v26;
  v27 = v15[30];
  if (!(*(v18 + 48))(v14 + v27, 1, v17))
  {
    v19(v14 + v27, v17);
  }

  *(v14 + v15[31]), v28, v29, v30, v31, v32, v33, v34;
  *(v14 + v15[33]), v35, v36, v37, v38, v39, v40, v41;
  v48 = (v14 + v15[34]);
  v49 = v48[1];
  if (v49 >> 60 != 15)
  {
    sub_1CEFE4714(*v48, v49);
  }

  *(v14 + v15[38] + 8), v49, v42, v43, v44, v45, v46, v47;
  v50 = v6 + *(v138 + 32);
  v51 = *(v50 + 16);
  if (v51 != 1)
  {

    *(v50 + 48), v52, v53, v54, v55, v56, v57, v58;
    *(v50 + 64), v59, v60, v61, v62, v63, v64, v65;
    *(v50 + 88), v66, v67, v68, v69, v70, v71, v72;

    *(v50 + 120), v73, v74, v75, v76, v77, v78, v79;
    *(v50 + 136), v80, v81, v82, v83, v84, v85, v86;
    *(v50 + 152), v87, v88, v89, v90, v91, v92, v93;
    *(v50 + 168), v94, v95, v96, v97, v98, v99, v100;
    *(v50 + 184), v101, v102, v103, v104, v105, v106, v107;
    v115 = *(v50 + 192);
    if (v115)
    {
      v115, v108, v109, v110, v111, v112, v113, v114;
      *(v50 + 200), v116, v117, v118, v119, v120, v121, v122;
    }

    *(v50 + 224), v108, v109, v110, v111, v112, v113, v114;
    *(v50 + 240), v123, v124, v125, v126, v127, v128, v129;
  }

  v130 = (v3 + v5 + 9) & ~v5;
  v131 = *(v138 + 48);
  if (!(*(v4 + 48))(v6 + v131, 1, v137))
  {
    v132 = sub_1CF9E5A58();
    v133 = *(v132 - 8);
    if (!(*(v133 + 48))(v6 + v131, 1, v132))
    {
      (*(v133 + 8))(v6 + v131, v132);
    }
  }

  v134 = sub_1CF9E5A58();
  v135 = *(v134 - 8);
  if (!(*(v135 + 48))(v140 + v130, 1, v134))
  {
    (*(v135 + 8))(v140 + v130, v134);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF090090()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09015C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF090238()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for VFSItem(0);
  v136 = *(*(v5 - 1) + 80);

  v134 = v2;
  v135 = v1;
  v133 = *(v2 + 8);
  v133(v0 + v3, v1);

  v6 = v0 + ((v4 + v136 + 8) & ~v136);
  *(v6 + 40), v7, v8, v9, v10, v11, v12, v13;
  v14 = v6 + v5[7];
  v15 = type metadata accessor for ItemMetadata(0);
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  *(v14 + v15[14] + 8), v20, v21, v22, v23, v24, v25, v26;
  v27 = v15[30];
  if (!(*(v18 + 48))(v14 + v27, 1, v17))
  {
    v19(v14 + v27, v17);
  }

  *(v14 + v15[31]), v28, v29, v30, v31, v32, v33, v34;
  *(v14 + v15[33]), v35, v36, v37, v38, v39, v40, v41;
  v48 = (v14 + v15[34]);
  v49 = v48[1];
  if (v49 >> 60 != 15)
  {
    sub_1CEFE4714(*v48, v49);
  }

  *(v14 + v15[38] + 8), v49, v42, v43, v44, v45, v46, v47;
  v50 = v6 + v5[8];
  v51 = *(v50 + 16);
  if (v51 != 1)
  {

    *(v50 + 48), v52, v53, v54, v55, v56, v57, v58;
    *(v50 + 64), v59, v60, v61, v62, v63, v64, v65;
    *(v50 + 88), v66, v67, v68, v69, v70, v71, v72;

    *(v50 + 120), v73, v74, v75, v76, v77, v78, v79;
    *(v50 + 136), v80, v81, v82, v83, v84, v85, v86;
    *(v50 + 152), v87, v88, v89, v90, v91, v92, v93;
    *(v50 + 168), v94, v95, v96, v97, v98, v99, v100;
    *(v50 + 184), v101, v102, v103, v104, v105, v106, v107;
    v115 = *(v50 + 192);
    if (v115)
    {
      v115, v108, v109, v110, v111, v112, v113, v114;
      *(v50 + 200), v116, v117, v118, v119, v120, v121, v122;
    }

    *(v50 + 224), v108, v109, v110, v111, v112, v113, v114;
    *(v50 + 240), v123, v124, v125, v126, v127, v128, v129;
  }

  v130 = v5[12];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v131 - 8) + 48))(v6 + v130, 1, v131) && !(*(v134 + 48))(v6 + v130, 1, v135))
  {
    v133(v6 + v130, v135);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0905E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF090618()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0906DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF090714()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09074C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09078C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0907C4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF090894()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4 + 8), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

uint64_t sub_1CF090C4C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF090C84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF090CBC()
{

  *(v0 + 96), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF090D38()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF090D70()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090DB8()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF090E10()
{

  sub_1CEFE4714(*(v0 + 32), *(v0 + 40));
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  sub_1CEFE4714(*(v0 + 56), *(v0 + 64));
  *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 88), v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1CF090E88()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090EE8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090F50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;

  v4 = *(v0 + 64);
  if (v4 >> 60 != 15 && (v4 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 56), v4);
  }

  v6 = v3 + 7;
  v7 = v0 + v2;

  *(v7 + 16), v8, v9, v10, v11, v12, v13, v14;
  v15 = v7 + *(v1 + 40);
  v16 = type metadata accessor for ItemMetadata(0);
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(v15 + v17, v18);
  v20(v15 + v16[8], v18);
  *(v15 + v16[14] + 8), v21, v22, v23, v24, v25, v26, v27;
  v28 = v16[30];
  if (!(*(v19 + 48))(v15 + v28, 1, v18))
  {
    v20(v15 + v28, v18);
  }

  v36 = v6 & 0xFFFFFFFFFFFFFFF8;
  *(v15 + v16[31]), v29, v30, v31, v32, v33, v34, v35;
  *(v15 + v16[33]), v37, v38, v39, v40, v41, v42, v43;
  v50 = (v15 + v16[34]);
  v51 = v50[1];
  if (v51 >> 60 != 15)
  {
    sub_1CEFE4714(*v50, v51);
  }

  *(v15 + v16[38] + 8), v51, v44, v45, v46, v47, v48, v49;
  v52 = v0 + v36;
  v53 = *(v0 + v36 + 16);
  if (v53 != 1)
  {

    *(v52 + 48), v54, v55, v56, v57, v58, v59, v60;
    *(v52 + 64), v61, v62, v63, v64, v65, v66, v67;
    *(v52 + 88), v68, v69, v70, v71, v72, v73, v74;

    *(v52 + 120), v75, v76, v77, v78, v79, v80, v81;
    *(v52 + 136), v82, v83, v84, v85, v86, v87, v88;
    *(v52 + 152), v89, v90, v91, v92, v93, v94, v95;
    *(v52 + 168), v96, v97, v98, v99, v100, v101, v102;
    *(v52 + 184), v103, v104, v105, v106, v107, v108, v109;
    v117 = *(v52 + 192);
    if (v117)
    {
      v117, v110, v111, v112, v113, v114, v115, v116;
      *(v52 + 200), v118, v119, v120, v121, v122, v123, v124;
    }

    *(v52 + 224), v110, v111, v112, v113, v114, v115, v116;
    *(v52 + 240), v125, v126, v127, v128, v129, v130, v131;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0911FC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09124C()
{
  v1 = *(v0 + 16);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v79 = v1;
  v3 = (*(*v2 + 80) + 56) & ~*(*v2 + 80);
  v77 = *(*v2 + 64) + v3 + 7;
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v78 = *(v4 + 64);

  v6 = v0 + v3;

  *(v6 + 16), v7, v8, v9, v10, v11, v12, v13;
  v14 = v6 + v2[12];
  v15 = type metadata accessor for ItemMetadata(0);
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  *(v14 + v15[14] + 8), v20, v21, v22, v23, v24, v25, v26;
  v27 = v15[30];
  if (!(*(v18 + 48))(v14 + v27, 1, v17))
  {
    v19(v14 + v27, v17);
  }

  v35 = v77 & 0xFFFFFFFFFFFFFFF8;
  *(v14 + v15[31]), v28, v29, v30, v31, v32, v33, v34;
  *(v14 + v15[33]), v36, v37, v38, v39, v40, v41, v42;
  v49 = (v14 + v15[34]);
  v50 = v49[1];
  if (v50 >> 60 != 15)
  {
    sub_1CEFE4714(*v49, v50);
  }

  *(v14 + v15[38] + 8), v50, v43, v44, v45, v46, v47, v48;
  v51 = v0 + v35;
  v52 = *(v0 + v35);
  if (v52)
  {

    sub_1CEFE4714(*(v51 + 8), *(v51 + 16));
    *(v51 + 24), v53, v54, v55, v56, v57, v58, v59;
    sub_1CEFE4714(*(v51 + 32), *(v51 + 40));
    *(v51 + 48), v60, v61, v62, v63, v64, v65, v66;
    *(v51 + 64), v67, v68, v69, v70, v71, v72, v73;
  }

  v74 = (v35 + v5 + 72) & ~v5;
  v75 = (((v74 + v78) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v74, v79);

  return swift_deallocObject();
}

uint64_t sub_1CF091544()
{
  v1 = *(v0 + 16);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v51 = *(*v2 + 64);
  v52 = *(*v2 + 80);
  v53 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);

  v50 = (v52 + 64) & ~v52;
  *(v0 + v50 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = v0 + v50 + v2[12];
  v13 = type metadata accessor for ItemMetadata(0);
  v14 = v13[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + v13[8], v15);
  *(v12 + v13[14] + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v13[30];
  if (!(*(v16 + 48))(v12 + v25, 1, v15))
  {
    v17(v12 + v25, v15);
  }

  *(v12 + v13[31]), v26, v27, v28, v29, v30, v31, v32;
  *(v12 + v13[33]), v33, v34, v35, v36, v37, v38, v39;
  v46 = (v12 + v13[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  v48 = (((((((v51 + v50 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v13[38] + 8), v47, v40, v41, v42, v43, v44, v45;

  (*(v3 + 8))(v0 + ((v4 + v48 + 8) & ~v4), v53);

  return swift_deallocObject();
}

uint64_t sub_1CF091828(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0918DC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ItemMetadata(0);
  v46 = *(*(v6 - 1) + 80);
  v43 = *(*(v6 - 1) + 64);

  v47 = v1;
  v44 = *(v2 + 8);
  v44(v0 + v4, v1);
  v45 = (v4 + v5 + v46) & ~v46;
  v7 = v0 + v45;
  v8 = v6[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v45 + v8, v9);
  v11(v0 + v45 + v6[8], v9);
  *(v0 + v45 + v6[14] + 8), v12, v13, v14, v15, v16, v17, v18;
  v19 = v6[30];
  if (!(*(v10 + 48))(v0 + v45 + v19, 1, v9))
  {
    v11(v7 + v19, v9);
  }

  *(v7 + v6[31]), v20, v21, v22, v23, v24, v25, v26;
  *(v7 + v6[33]), v27, v28, v29, v30, v31, v32, v33;
  v40 = (v7 + v6[34]);
  v41 = v40[1];
  if (v41 >> 60 != 15)
  {
    sub_1CEFE4714(*v40, v41);
  }

  *(v7 + v6[38] + 8), v41, v34, v35, v36, v37, v38, v39;
  v44(v0 + ((v43 + v3 + v45) & ~v3), v47);

  return swift_deallocObject();
}

uint64_t sub_1CF091B70()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v57 = (((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + v57 + 8) & ~v6;
  v56 = *(v5 + 64);
  v8 = type metadata accessor for ItemMetadata(0);
  v54 = *(*(v8 - 1) + 64);
  v55 = *(*(v8 - 1) + 80);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  *(v0 + v3 + 8), v9, v10, v11, v12, v13, v14, v15;

  v58 = v4;
  v52 = *(v5 + 8);
  v52(v0 + v7, v4);

  v53 = (v55 + ((v56 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v55;
  v16 = v0 + v53;
  v17 = v8[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(v0 + v53 + v17, v18);
  v20(v0 + v53 + v8[8], v18);
  *(v0 + v53 + v8[14] + 8), v21, v22, v23, v24, v25, v26, v27;
  v28 = v8[30];
  if (!(*(v19 + 48))(v0 + v53 + v28, 1, v18))
  {
    v20(v16 + v28, v18);
  }

  *(v16 + v8[31]), v29, v30, v31, v32, v33, v34, v35;
  *(v16 + v8[33]), v36, v37, v38, v39, v40, v41, v42;
  v49 = (v16 + v8[34]);
  v50 = v49[1];
  if (v50 >> 60 != 15)
  {
    sub_1CEFE4714(*v49, v50);
  }

  *(v16 + v8[38] + 8), v50, v43, v44, v45, v46, v47, v48;
  v52(v0 + ((v54 + v6 + v53) & ~v6), v58);

  return swift_deallocObject();
}

uint64_t sub_1CF091F0C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF091F4C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF091FBC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;

  v4 = *(v0 + 64);
  if (v4 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 56), v4);
  }

  v5 = v3 + 7;
  v6 = v0 + v2;

  *(v6 + 16), v7, v8, v9, v10, v11, v12, v13;
  v14 = v6 + *(v1 + 40);
  v15 = type metadata accessor for ItemMetadata(0);
  v16 = v15[7];
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(v14 + v16, v17);
  v19(v14 + v15[8], v17);
  *(v14 + v15[14] + 8), v20, v21, v22, v23, v24, v25, v26;
  v27 = v15[30];
  if (!(*(v18 + 48))(v14 + v27, 1, v17))
  {
    v19(v14 + v27, v17);
  }

  v35 = v5 & 0xFFFFFFFFFFFFFFF8;
  *(v14 + v15[31]), v28, v29, v30, v31, v32, v33, v34;
  *(v14 + v15[33]), v36, v37, v38, v39, v40, v41, v42;
  v49 = (v14 + v15[34]);
  v50 = v49[1];
  if (v50 >> 60 != 15)
  {
    sub_1CEFE4714(*v49, v50);
  }

  *(v14 + v15[38] + 8), v50, v43, v44, v45, v46, v47, v48;
  v51 = v0 + v35;
  v52 = *(v0 + v35 + 16);
  if (v52 != 1)
  {

    *(v51 + 48), v53, v54, v55, v56, v57, v58, v59;
    *(v51 + 64), v60, v61, v62, v63, v64, v65, v66;
    *(v51 + 88), v67, v68, v69, v70, v71, v72, v73;

    *(v51 + 120), v74, v75, v76, v77, v78, v79, v80;
    *(v51 + 136), v81, v82, v83, v84, v85, v86, v87;
    *(v51 + 152), v88, v89, v90, v91, v92, v93, v94;
    *(v51 + 168), v95, v96, v97, v98, v99, v100, v101;
    *(v51 + 184), v102, v103, v104, v105, v106, v107, v108;
    v116 = *(v51 + 192);
    if (v116)
    {
      v116, v109, v110, v111, v112, v113, v114, v115;
      *(v51 + 200), v117, v118, v119, v120, v121, v122, v123;
    }

    *(v51 + 224), v109, v110, v111, v112, v113, v114, v115;
    *(v51 + 240), v124, v125, v126, v127, v128, v129, v130;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0922E4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v78 = *(*v1 + 64);

  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2 + v1[12];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  v46 = (((v78 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (((((v46 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  *(v0 + v46), v48, v49, v50, v51, v52, v53, v54;

  v55 = v0 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  sub_1CEFE4714(*v55, *(v55 + 8));
  *(v55 + 16), v56, v57, v58, v59, v60, v61, v62;
  sub_1CEFE4714(*(v55 + 24), *(v55 + 32));
  *(v55 + 40), v63, v64, v65, v66, v67, v68, v69;
  *(v55 + 56), v70, v71, v72, v73, v74, v75, v76;

  return swift_deallocObject();
}

uint64_t sub_1CF092584()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v71 = *(*v1 + 64);

  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2 + v1[12];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  v46 = (v71 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (((v46 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (((v47 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;

  sub_1CEFE4714(*(v0 + v47), *(v0 + v47 + 8));
  *(v0 + v47 + 16), v49, v50, v51, v52, v53, v54, v55;
  sub_1CEFE4714(*(v0 + v47 + 24), *(v0 + v47 + 32));
  *(v0 + v47 + 40), v56, v57, v58, v59, v60, v61, v62;
  *(v0 + v47 + 56), v63, v64, v65, v66, v67, v68, v69;

  return swift_deallocObject();
}

uint64_t sub_1CF092828()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0928C8()
{

  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 64), v1);
  }

  sub_1CEFE4714(*(v0 + 112), *(v0 + 120));
  *(v0 + 128), v2, v3, v4, v5, v6, v7, v8;
  sub_1CEFE4714(*(v0 + 136), *(v0 + 144));
  *(v0 + 152), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + 168), v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1CF092960()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 88), v1);
  }

  sub_1CEFE4714(*(v0 + 136), *(v0 + 144));
  *(v0 + 152), v2, v3, v4, v5, v6, v7, v8;
  sub_1CEFE4714(*(v0 + 160), *(v0 + 168));
  *(v0 + 176), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + 192), v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1CF092A0C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 120);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 112), v1);
  }

  sub_1CEFE4714(*(v0 + 160), *(v0 + 168));
  *(v0 + 176), v2, v3, v4, v5, v6, v7, v8;
  sub_1CEFE4714(*(v0 + 184), *(v0 + 192));
  *(v0 + 200), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + 216), v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1CF092ACC()
{
  v1 = sub_1CF9E5A58();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF092B68()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  v4 = *(v0 + 64);
  if (v4 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 56), v4);
  }

  sub_1CEFE4714(*(v0 + 104), *(v0 + 112));
  *(v0 + 120), v5, v6, v7, v8, v9, v10, v11;
  sub_1CEFE4714(*(v0 + 128), *(v0 + 136));
  *(v0 + 144), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + 160), v19, v20, v21, v22, v23, v24, v25;

  (*(v2 + 8))(v0 + ((v3 + 192) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF092C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF092CC4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF092DA4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092E14()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092EA4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF092F70()
{

  v7 = *(v0 + 48);
  if (v7 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 40), v7);
  }

  *(v0 + 96), v7, v1, v2, v3, v4, v5, v6;

  sub_1CEFE4714(*(v0 + 128), *(v0 + 136));
  *(v0 + 144), v8, v9, v10, v11, v12, v13, v14;
  sub_1CEFE4714(*(v0 + 152), *(v0 + 160));
  *(v0 + 168), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 184), v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1CF093000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 88) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;

  v4 = *(v0 + 48);
  if (v4 >> 60 != 15 && (v4 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 40), v4);
  }

  v6 = v3 + 7;
  v7 = v0 + v2;

  *(v7 + 16), v8, v9, v10, v11, v12, v13, v14;
  v15 = v7 + *(v1 + 40);
  v16 = type metadata accessor for ItemMetadata(0);
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(v15 + v17, v18);
  v20(v15 + v16[8], v18);
  *(v15 + v16[14] + 8), v21, v22, v23, v24, v25, v26, v27;
  v28 = v16[30];
  if (!(*(v19 + 48))(v15 + v28, 1, v18))
  {
    v20(v15 + v28, v18);
  }

  v36 = v6 & 0xFFFFFFFFFFFFFFF8;
  *(v15 + v16[31]), v29, v30, v31, v32, v33, v34, v35;
  *(v15 + v16[33]), v37, v38, v39, v40, v41, v42, v43;
  v50 = (v15 + v16[34]);
  v51 = v50[1];
  if (v51 >> 60 != 15)
  {
    sub_1CEFE4714(*v50, v51);
  }

  *(v15 + v16[38] + 8), v51, v44, v45, v46, v47, v48, v49;
  v52 = v0 + v36;
  v53 = *(v0 + v36 + 16);
  if (v53 != 1)
  {

    *(v52 + 48), v54, v55, v56, v57, v58, v59, v60;
    *(v52 + 64), v61, v62, v63, v64, v65, v66, v67;
    *(v52 + 88), v68, v69, v70, v71, v72, v73, v74;

    *(v52 + 120), v75, v76, v77, v78, v79, v80, v81;
    *(v52 + 136), v82, v83, v84, v85, v86, v87, v88;
    *(v52 + 152), v89, v90, v91, v92, v93, v94, v95;
    *(v52 + 168), v96, v97, v98, v99, v100, v101, v102;
    *(v52 + 184), v103, v104, v105, v106, v107, v108, v109;
    v117 = *(v52 + 192);
    if (v117)
    {
      v117, v110, v111, v112, v113, v114, v115, v116;
      *(v52 + 200), v118, v119, v120, v121, v122, v123, v124;
    }

    *(v52 + 224), v110, v111, v112, v113, v114, v115, v116;
    *(v52 + 240), v125, v126, v127, v128, v129, v130, v131;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0932B8()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF093338()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0933A0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF093400()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093460()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0934DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093690()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0936C8(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF093710()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 32), v5, v6, v7, v8, v9, v10, v11;

  (*(v2 + 8))(v0 + v3, v1);

  *(v0 + v4), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1CF093850()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0938C8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0939B4()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = (v0 + v2);

  v4 = v1[7];
  v5 = sub_1CF9E5A58();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1CF093AC0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093B08()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF093B60()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093BB0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF093C0C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF093C44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF093D9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093E24()
{

  return swift_deallocObject();
}

uint64_t sub_1CF093E60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);

  swift_unknownObjectRelease();
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF093FB8()
{
  v1 = sub_1CF9E5A58();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF094040()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094078()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  *(v0 + v2), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2 + v1[7];
  *(v10 + 24), v11, v12, v13, v14, v15, v16, v17;
  *(v10 + 40), v18, v19, v20, v21, v22, v23, v24;
  v25 = *(type metadata accessor for LocalDomain(0) + 32);
  v26 = sub_1CF9E5A58();
  (*(*(v26 - 8) + 8))(v10 + v25, v26);
  if (*(v0 + v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF094298(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0942E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094318(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF094370()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0943A8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0943E0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7A8, &qword_1CFA02E48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF09448C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF094504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF094584()
{

  return swift_deallocObject();
}

__n128 sub_1CF0945D0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0945DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09461C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF094654()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09468C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0946CC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1CF094810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }

  return result;
}

uint64_t sub_1CF0948DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094914()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09494C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094984(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF094AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF094B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5A58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF094C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF094CD8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094F00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF094F4C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF094F84()
{

  if (*(v0 + 128))
  {
    *(v0 + 96), v1, v2, v3, v4, v5, v6, v7;
    *(v0 + 128), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 136), v15, v16, v17, v18, v19, v20, v21;
    *(v0 + 152), v22, v23, v24, v25, v26, v27, v28;
  }

  sub_1CF03D7A8(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v29 = *(v0 + 216);
  if (v29 >> 60 != 15 && (v29 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 208), v29);
  }

  if (*(v0 + 320) != 1)
  {
    sub_1CEFE4714(*(v0 + 304), *(v0 + 312));
    *(v0 + 320), v31, v32, v33, v34, v35, v36, v37;
    sub_1CEFE4714(*(v0 + 328), *(v0 + 336));
    *(v0 + 344), v38, v39, v40, v41, v42, v43, v44;
    *(v0 + 360), v45, v46, v47, v48, v49, v50, v51;
  }

  sub_1CF03D7A8(*(v0 + 376), *(v0 + 384), *(v0 + 392));
  v52 = *(v0 + 424);
  if (v52 >> 60 != 15 && (v52 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 416), v52);
  }

  *(v0 + 488), v53, v54, v55, v56, v57, v58, v59;

  return swift_deallocObject();
}

uint64_t sub_1CF09509C()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0950EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;

  v5 = (v0 + v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v7 = *(*(v6 - 1) + 48);
  if (!v7(v5, 1, v6))
  {
    v312 = v7;
    v313 = v4;
    v314 = v0;
    v5[8], v8, v9, v10, v11, v12, v13, v14;
    v5[12], v15, v16, v17, v18, v19, v20, v21;
    v5[13], v22, v23, v24, v25, v26, v27, v28;
    v5[15], v29, v30, v31, v32, v33, v34, v35;
    v5[17], v36, v37, v38, v39, v40, v41, v42;
    v43 = v5 + v6[12];
    v44 = type metadata accessor for ItemMetadata(0);
    v45 = v44[7];
    v46 = sub_1CF9E5CF8();
    v47 = *(v46 - 8);
    v48 = *(v47 + 8);
    v48(&v43[v45], v46);
    v48(&v43[v44[8]], v46);
    *&v43[v44[14] + 8], v49, v50, v51, v52, v53, v54, v55;
    v56 = v44[30];
    if (!(*(v47 + 48))(&v43[v56], 1, v46))
    {
      v48(&v43[v56], v46);
    }

    *&v43[v44[31]], v57, v58, v59, v60, v61, v62, v63;
    *&v43[v44[33]], v64, v65, v66, v67, v68, v69, v70;
    v77 = &v43[v44[34]];
    v78 = v77[1];
    if (v78 >> 60 != 15)
    {
      sub_1CEFE4714(*v77, v78);
    }

    *&v43[v44[38] + 8], v78, v71, v72, v73, v74, v75, v76;
    v79 = v5 + v6[13];
    v80 = *(v79 + 2);
    v0 = v314;
    v7 = v312;
    v4 = v313;
    if (v80 != 1)
    {

      *(v79 + 6), v81, v82, v83, v84, v85, v86, v87;
      *(v79 + 8), v88, v89, v90, v91, v92, v93, v94;
      *(v79 + 11), v95, v96, v97, v98, v99, v100, v101;

      *(v79 + 15), v102, v103, v104, v105, v106, v107, v108;
      *(v79 + 17), v109, v110, v111, v112, v113, v114, v115;
      *(v79 + 19), v116, v117, v118, v119, v120, v121, v122;
      *(v79 + 21), v123, v124, v125, v126, v127, v128, v129;
      *(v79 + 23), v130, v131, v132, v133, v134, v135, v136;
      v144 = *(v79 + 24);
      if (v144)
      {
        v144, v137, v138, v139, v140, v141, v142, v143;
        *(v79 + 25), v145, v146, v147, v148, v149, v150, v151;
      }

      *(v79 + 28), v137, v138, v139, v140, v141, v142, v143;
      *(v79 + 30), v152, v153, v154, v155, v156, v157, v158;
    }

    sub_1CF07638C(*(v5 + v6[17]), *(v5 + v6[17] + 8));
  }

  v159 = (v0 + v4);
  if (!v7(v0 + v4, 1, v6))
  {
    v159[8], v160, v161, v162, v163, v164, v165, v166;
    v159[12], v167, v168, v169, v170, v171, v172, v173;
    v159[13], v174, v175, v176, v177, v178, v179, v180;
    v159[15], v181, v182, v183, v184, v185, v186, v187;
    v159[17], v188, v189, v190, v191, v192, v193, v194;
    v195 = v159 + v6[12];
    v196 = type metadata accessor for ItemMetadata(0);
    v197 = v196[7];
    v198 = sub_1CF9E5CF8();
    v199 = *(v198 - 8);
    v200 = *(v199 + 8);
    v200(&v195[v197], v198);
    v200(&v195[v196[8]], v198);
    *&v195[v196[14] + 8], v201, v202, v203, v204, v205, v206, v207;
    v208 = v196[30];
    if (!(*(v199 + 48))(&v195[v208], 1, v198))
    {
      v200(&v195[v208], v198);
    }

    *&v195[v196[31]], v209, v210, v211, v212, v213, v214, v215;
    *&v195[v196[33]], v216, v217, v218, v219, v220, v221, v222;
    v229 = &v195[v196[34]];
    v230 = v229[1];
    if (v230 >> 60 != 15)
    {
      sub_1CEFE4714(*v229, v230);
    }

    *&v195[v196[38] + 8], v230, v223, v224, v225, v226, v227, v228;
    v231 = v159 + v6[13];
    v232 = *(v231 + 2);
    if (v232 != 1)
    {

      *(v231 + 6), v233, v234, v235, v236, v237, v238, v239;
      *(v231 + 8), v240, v241, v242, v243, v244, v245, v246;
      *(v231 + 11), v247, v248, v249, v250, v251, v252, v253;

      *(v231 + 15), v254, v255, v256, v257, v258, v259, v260;
      *(v231 + 17), v261, v262, v263, v264, v265, v266, v267;
      *(v231 + 19), v268, v269, v270, v271, v272, v273, v274;
      *(v231 + 21), v275, v276, v277, v278, v279, v280, v281;
      *(v231 + 23), v282, v283, v284, v285, v286, v287, v288;
      v296 = *(v231 + 24);
      if (v296)
      {
        v296, v289, v290, v291, v292, v293, v294, v295;
        *(v231 + 25), v297, v298, v299, v300, v301, v302, v303;
      }

      *(v231 + 28), v289, v290, v291, v292, v293, v294, v295;
      *(v231 + 30), v304, v305, v306, v307, v308, v309, v310;
    }

    sub_1CF07638C(*(v159 + v6[17]), *(v159 + v6[17] + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1CF095618()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF09575C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1CF095774(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

__n128 sub_1CF09579C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0957B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v2[8], v3, v4, v5, v6, v7, v8, v9;
  v2[12], v10, v11, v12, v13, v14, v15, v16;
  v2[13], v17, v18, v19, v20, v21, v22, v23;
  v2[15], v24, v25, v26, v27, v28, v29, v30;
  v2[17], v31, v32, v33, v34, v35, v36, v37;
  v38 = v2 + v1[12];
  v39 = type metadata accessor for ItemMetadata(0);
  v40 = v39[7];
  v41 = sub_1CF9E5CF8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  v43(&v38[v40], v41);
  v43(&v38[v39[8]], v41);
  *&v38[v39[14] + 8], v44, v45, v46, v47, v48, v49, v50;
  v51 = v39[30];
  if (!(*(v42 + 48))(&v38[v51], 1, v41))
  {
    v43(&v38[v51], v41);
  }

  *&v38[v39[31]], v52, v53, v54, v55, v56, v57, v58;
  *&v38[v39[33]], v59, v60, v61, v62, v63, v64, v65;
  v72 = &v38[v39[34]];
  v73 = v72[1];
  if (v73 >> 60 != 15)
  {
    sub_1CEFE4714(*v72, v73);
  }

  *&v38[v39[38] + 8], v73, v66, v67, v68, v69, v70, v71;
  v74 = v2 + v1[13];
  v75 = *(v74 + 2);
  if (v75 != 1)
  {

    *(v74 + 6), v76, v77, v78, v79, v80, v81, v82;
    *(v74 + 8), v83, v84, v85, v86, v87, v88, v89;
    *(v74 + 11), v90, v91, v92, v93, v94, v95, v96;

    *(v74 + 15), v97, v98, v99, v100, v101, v102, v103;
    *(v74 + 17), v104, v105, v106, v107, v108, v109, v110;
    *(v74 + 19), v111, v112, v113, v114, v115, v116, v117;
    *(v74 + 21), v118, v119, v120, v121, v122, v123, v124;
    *(v74 + 23), v125, v126, v127, v128, v129, v130, v131;
    v139 = *(v74 + 24);
    if (v139)
    {
      v139, v132, v133, v134, v135, v136, v137, v138;
      *(v74 + 25), v140, v141, v142, v143, v144, v145, v146;
    }

    *(v74 + 28), v132, v133, v134, v135, v136, v137, v138;
    *(v74 + 30), v147, v148, v149, v150, v151, v152, v153;
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF095A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_1CEFE4714(*(v2 + 16), *(v2 + 24));
  *(v2 + 32), v3, v4, v5, v6, v7, v8, v9;
  sub_1CEFE4714(*(v2 + 40), *(v2 + 48));
  *(v2 + 56), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 72), v17, v18, v19, v20, v21, v22, v23;
  *(v2 + 88), v24, v25, v26, v27, v28, v29, v30;
  v31 = v2 + v1[12];
  v32 = type metadata accessor for ItemMetadata(0);
  v33 = v32[7];
  v34 = sub_1CF9E5CF8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v36(v31 + v33, v34);
  v36(v31 + v32[8], v34);
  *(v31 + v32[14] + 8), v37, v38, v39, v40, v41, v42, v43;
  v44 = v32[30];
  if (!(*(v35 + 48))(v31 + v44, 1, v34))
  {
    v36(v31 + v44, v34);
  }

  *(v31 + v32[31]), v45, v46, v47, v48, v49, v50, v51;
  *(v31 + v32[33]), v52, v53, v54, v55, v56, v57, v58;
  v65 = (v31 + v32[34]);
  v66 = v65[1];
  if (v66 >> 60 != 15)
  {
    sub_1CEFE4714(*v65, v66);
  }

  *(v31 + v32[38] + 8), v66, v59, v60, v61, v62, v63, v64;
  v67 = v2 + v1[13];
  v68 = *(v67 + 16);
  if (v68 != 1)
  {

    *(v67 + 48), v69, v70, v71, v72, v73, v74, v75;
    *(v67 + 64), v76, v77, v78, v79, v80, v81, v82;
    *(v67 + 88), v83, v84, v85, v86, v87, v88, v89;

    *(v67 + 120), v90, v91, v92, v93, v94, v95, v96;
    *(v67 + 136), v97, v98, v99, v100, v101, v102, v103;
    *(v67 + 152), v104, v105, v106, v107, v108, v109, v110;
    *(v67 + 168), v111, v112, v113, v114, v115, v116, v117;
    *(v67 + 184), v118, v119, v120, v121, v122, v123, v124;
    v132 = *(v67 + 192);
    if (v132)
    {
      v132, v125, v126, v127, v128, v129, v130, v131;
      *(v67 + 200), v133, v134, v135, v136, v137, v138, v139;
    }

    *(v67 + 224), v125, v126, v127, v128, v129, v130, v131;
    *(v67 + 240), v140, v141, v142, v143, v144, v145, v146;
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF095D28(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (*(v8 + 120))
  {
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 120), v9, v10, v11, v12, v13, v14, v15;
    *(v8 + 128), v16, v17, v18, v19, v20, v21, v22;
    *(v8 + 144), v23, v24, v25, v26, v27, v28, v29;
  }

  sub_1CF03D7A8(*(v8 + 160), *(v8 + 168), *(v8 + 176));
  v30 = *(v8 + 208);
  if (v30 >> 60 != 15 && (v30 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v8 + 200), v30);
  }

  if (*(v8 + 312) != 1)
  {
    sub_1CEFE4714(*(v8 + 296), *(v8 + 304));
    *(v8 + 312), v32, v33, v34, v35, v36, v37, v38;
    sub_1CEFE4714(*(v8 + 320), *(v8 + 328));
    *(v8 + 336), v39, v40, v41, v42, v43, v44, v45;
    *(v8 + 352), v46, v47, v48, v49, v50, v51, v52;
  }

  sub_1CF03D7A8(*(v8 + 368), *(v8 + 376), *(v8 + 384));
  v53 = *(v8 + 416);
  if (v53 >> 60 != 15 && (v53 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v8 + 408), v53);
  }

  *(v8 + 480), v54, v55, v56, v57, v58, v59, v60;

  return swift_deallocObject();
}

uint64_t sub_1CF095E58()
{

  return swift_deallocObject();
}

uint64_t sub_1CF095EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF095EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 52);
  v5 = sub_1CF9E6448();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  *(v3 + *(v2 + 64)), v6, v7, v8, v9, v10, v11, v12;

  return swift_deallocObject();
}

uint64_t sub_1CF095FF4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = v1[15];
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  *(v4 + v1[16]), v7, v8, v9, v10, v11, v12, v13;

  return swift_deallocObject();
}

uint64_t sub_1CF096134()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF09616C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  sub_1CEFD0A98(*(v0 + v2));

  v3 = v1[22];
  v4 = sub_1CF9E6448();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF096288()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF481340(*(v0 + 16), *(v0 + 24), v4, v5, v6, v7, v8, v9);

  v10 = v0 + v2;
  v11 = v1[15];
  v12 = sub_1CF9E6448();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  *(v10 + v1[16]), v13, v14, v15, v16, v17, v18, v19;

  return swift_deallocObject();
}

uint64_t sub_1CF0963E4()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09641C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09645C()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09655C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF096594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 52);
  v5 = sub_1CF9E6448();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  *(v3 + *(v2 + 64)), v6, v7, v8, v9, v10, v11, v12;

  return swift_deallocObject();
}

uint64_t sub_1CF0966AC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0966FC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF096784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF343AF8();
  *a1 = result;
  return result;
}

uint64_t sub_1CF0967E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF096824()
{
  if (*(v0 + 24) != 255)
  {
    sub_1CF2F6594(*(v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1CF096878()
{
  v80 = *(v0 + 40);
  v82 = *(v0 + 16);
  v79 = v82;
  v83 = v80;
  v81 = type metadata accessor for ItemReconciliation(0, &v82);
  v78 = *(*(v81 - 8) + 80);

  v1 = v0 + ((v78 + 72) & ~v78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(v1, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v1, AssociatedTypeWitness);
  }

  v5 = type metadata accessor for ItemReconciliationHalf(0, v79, v80, v4);
  v6 = v1 + v5[12];
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v82 = v7;
  *(&v82 + 1) = v8;
  *&v83 = AssociatedConformanceWitness;
  *(&v83 + 1) = v10;
  v11 = type metadata accessor for FileItemVersion(0, &v82);
  if (!(*(*(v11 - 1) + 48))(v6, 1, v11))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
    *(v6 + v11[13]), v12, v13, v14, v15, v16, v17, v18;
    (*(*(v8 - 8) + 8))(v6 + v11[14], v8);
    *(v6 + v11[15]), v19, v20, v21, v22, v23, v24, v25;
    *(v6 + v11[16] + 8), v26, v27, v28, v29, v30, v31, v32;
  }

  sub_1CF03D7A8(*(v1 + v5[16]), *(v1 + v5[16] + 8), *(v1 + v5[16] + 16));
  v33 = v1 + v5[17];
  v34 = *(v33 + 24);
  if (v34 >> 60 != 15 && (v34 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v33 + 16), v34);
  }

  v36 = v1 + *(v81 + 52);
  v37 = swift_getAssociatedTypeWitness();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v36, 1, v37))
  {
    (*(v38 + 8))(v36, v37);
  }

  v40 = type metadata accessor for ItemReconciliationHalf(0, *(&v79 + 1), *(&v80 + 1), v39);
  v41 = v36 + v40[12];
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  *&v82 = v42;
  *(&v82 + 1) = v43;
  *&v83 = v44;
  *(&v83 + 1) = v45;
  v46 = type metadata accessor for FileItemVersion(0, &v82);
  if (!(*(*(v46 - 1) + 48))(v41, 1, v46))
  {
    (*(*(v42 - 8) + 8))(v41, v42);
    *(v41 + v46[13]), v47, v48, v49, v50, v51, v52, v53;
    (*(*(v43 - 8) + 8))(v41 + v46[14], v43);
    *(v41 + v46[15]), v54, v55, v56, v57, v58, v59, v60;
    *(v41 + v46[16] + 8), v61, v62, v63, v64, v65, v66, v67;
  }

  sub_1CF03D7A8(*(v36 + v40[16]), *(v36 + v40[16] + 8), *(v36 + v40[16] + 16));
  v68 = v36 + v40[17];
  v69 = *(v68 + 24);
  if (v69 >> 60 != 15 && (v69 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v68 + 16), v69);
  }

  *(v1 + *(v81 + 60)), v70, v71, v72, v73, v74, v75, v76;
  return swift_deallocObject();
}

uint64_t sub_1CF096E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for SnapshotItem(255, *(v4 + 16), *(v4 + 40), a4);
  v7 = *(sub_1CF9E75D8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 72) & ~v8;
  v10 = (*(v7 + 64) + v8 + v9) & ~v8;

  v11 = v5 + v9;
  v12 = *(*(v6 - 1) + 48);
  if (!v12(v11, 1, v6))
  {
    v317 = v12;
    v318 = v10;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(*(AssociatedTypeWitness - 8) + 8);
    v14(v11, AssociatedTypeWitness);
    v14(v11 + v6[9], AssociatedTypeWitness);
    v15 = v11 + v6[10];
    v16 = swift_getAssociatedTypeWitness();
    (*(*(v16 - 8) + 8))(v15, v16);
    v17 = swift_getAssociatedTypeWitness();
    v319 = v16;
    v320 = v17;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v322 = swift_getAssociatedConformanceWitness();
    v18 = type metadata accessor for FileItemVersion(0, &v319);
    *(v15 + v18[13]), v19, v20, v21, v22, v23, v24, v25;
    (*(*(v17 - 8) + 8))(v15 + v18[14], v17);
    *(v15 + v18[15]), v26, v27, v28, v29, v30, v31, v32;
    *(v15 + v18[16] + 8), v33, v34, v35, v36, v37, v38, v39;
    *(v11 + v6[11] + 8), v40, v41, v42, v43, v44, v45, v46;
    v47 = v11 + v6[12];
    v48 = type metadata accessor for ItemMetadata(0);
    v49 = v48[7];
    v50 = sub_1CF9E5CF8();
    v51 = *(v50 - 8);
    v52 = *(v51 + 8);
    v52(v47 + v49, v50);
    v52(v47 + v48[8], v50);
    *(v47 + v48[14] + 8), v53, v54, v55, v56, v57, v58, v59;
    v60 = v48[30];
    if (!(*(v51 + 48))(v47 + v60, 1, v50))
    {
      v52(v47 + v60, v50);
    }

    *(v47 + v48[31]), v61, v62, v63, v64, v65, v66, v67;
    *(v47 + v48[33]), v68, v69, v70, v71, v72, v73, v74;
    v81 = (v47 + v48[34]);
    v82 = v81[1];
    if (v82 >> 60 != 15)
    {
      sub_1CEFE4714(*v81, v82);
    }

    *(v47 + v48[38] + 8), v82, v75, v76, v77, v78, v79, v80;
    v83 = v11 + v6[13];
    v84 = *(v83 + 16);
    v10 = v318;
    v12 = v317;
    if (v84 != 1)
    {

      *(v83 + 48), v85, v86, v87, v88, v89, v90, v91;
      *(v83 + 64), v92, v93, v94, v95, v96, v97, v98;
      *(v83 + 88), v99, v100, v101, v102, v103, v104, v105;

      *(v83 + 120), v106, v107, v108, v109, v110, v111, v112;
      *(v83 + 136), v113, v114, v115, v116, v117, v118, v119;
      *(v83 + 152), v120, v121, v122, v123, v124, v125, v126;
      *(v83 + 168), v127, v128, v129, v130, v131, v132, v133;
      *(v83 + 184), v134, v135, v136, v137, v138, v139, v140;
      v148 = *(v83 + 192);
      if (v148)
      {
        v148, v141, v142, v143, v144, v145, v146, v147;
        *(v83 + 200), v149, v150, v151, v152, v153, v154, v155;
      }

      *(v83 + 224), v141, v142, v143, v144, v145, v146, v147;
      *(v83 + 240), v156, v157, v158, v159, v160, v161, v162;
    }

    sub_1CF07638C(*(v11 + v6[17]), *(v11 + v6[17] + 8));
  }

  v163 = v5 + v10;
  if (!v12(v5 + v10, 1, v6))
  {
    v164 = swift_getAssociatedTypeWitness();
    v165 = *(*(v164 - 8) + 8);
    v165(v163, v164);
    v165(v163 + v6[9], v164);
    v166 = v163 + v6[10];
    v167 = swift_getAssociatedTypeWitness();
    (*(*(v167 - 8) + 8))(v166, v167);
    v168 = swift_getAssociatedTypeWitness();
    v169 = swift_getAssociatedConformanceWitness();
    v170 = swift_getAssociatedConformanceWitness();
    v319 = v167;
    v320 = v168;
    AssociatedConformanceWitness = v169;
    v322 = v170;
    v171 = type metadata accessor for FileItemVersion(0, &v319);
    *(v166 + v171[13]), v172, v173, v174, v175, v176, v177, v178;
    (*(*(v168 - 8) + 8))(v166 + v171[14], v168);
    *(v166 + v171[15]), v179, v180, v181, v182, v183, v184, v185;
    *(v166 + v171[16] + 8), v186, v187, v188, v189, v190, v191, v192;
    *(v163 + v6[11] + 8), v193, v194, v195, v196, v197, v198, v199;
    v200 = v163 + v6[12];
    v201 = type metadata accessor for ItemMetadata(0);
    v202 = v201[7];
    v203 = sub_1CF9E5CF8();
    v204 = *(v203 - 8);
    v205 = *(v204 + 8);
    v205(v200 + v202, v203);
    v205(v200 + v201[8], v203);
    *(v200 + v201[14] + 8), v206, v207, v208, v209, v210, v211, v212;
    v213 = v201[30];
    if (!(*(v204 + 48))(v200 + v213, 1, v203))
    {
      v205(v200 + v213, v203);
    }

    *(v200 + v201[31]), v214, v215, v216, v217, v218, v219, v220;
    *(v200 + v201[33]), v221, v222, v223, v224, v225, v226, v227;
    v234 = (v200 + v201[34]);
    v235 = v234[1];
    if (v235 >> 60 != 15)
    {
      sub_1CEFE4714(*v234, v235);
    }

    *(v200 + v201[38] + 8), v235, v228, v229, v230, v231, v232, v233;
    v236 = v163 + v6[13];
    v237 = *(v236 + 16);
    if (v237 != 1)
    {

      *(v236 + 48), v238, v239, v240, v241, v242, v243, v244;
      *(v236 + 64), v245, v246, v247, v248, v249, v250, v251;
      *(v236 + 88), v252, v253, v254, v255, v256, v257, v258;

      *(v236 + 120), v259, v260, v261, v262, v263, v264, v265;
      *(v236 + 136), v266, v267, v268, v269, v270, v271, v272;
      *(v236 + 152), v273, v274, v275, v276, v277, v278, v279;
      *(v236 + 168), v280, v281, v282, v283, v284, v285, v286;
      *(v236 + 184), v287, v288, v289, v290, v291, v292, v293;
      v301 = *(v236 + 192);
      if (v301)
      {
        v301, v294, v295, v296, v297, v298, v299, v300;
        *(v236 + 200), v302, v303, v304, v305, v306, v307, v308;
      }

      *(v236 + 224), v294, v295, v296, v297, v298, v299, v300;
      *(v236 + 240), v309, v310, v311, v312, v313, v314, v315;
    }

    sub_1CF07638C(*(v163 + v6[17]), *(v163 + v6[17] + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1CF097668()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF097740()
{
  v1 = sub_1CF9E5CF8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0977F8()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF097924()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF097A50()
{

  return swift_deallocObject();
}

uint64_t sub_1CF097A8C()
{

  sub_1CF2F63CC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));

  return swift_deallocObject();
}

uint64_t sub_1CF097ADC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF097B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF097BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5A58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF098114()
{

  return swift_deallocObject();
}

__n128 sub_1CF098188(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1CF0981A0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0983B0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0983EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalDomain(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CF0984F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalDomain(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CF9E5D98();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF098604()
{

  return swift_deallocObject();
}

uint64_t sub_1CF098644(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF098690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CF9E5A58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CF09873C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CF0987E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF098828(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF098860()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0988A0()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  *(v0 + v2), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2 + v1[7];
  *(v10 + 24), v11, v12, v13, v14, v15, v16, v17;
  *(v10 + 40), v18, v19, v20, v21, v22, v23, v24;
  v25 = *(type metadata accessor for LocalDomain(0) + 32);
  v26 = sub_1CF9E5A58();
  (*(*(v26 - 8) + 8))(v10 + v25, v26);
  if (*(v0 + v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

void sub_1CF098A00(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1CF098A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CF098B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CF098C80()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1CF50E9C0(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF098CC8(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (v8[10])
  {
    v8[6], a2, a3, a4, a5, a6, a7, a8;
    v8[10], v9, v10, v11, v12, v13, v14, v15;
    v8[11], v16, v17, v18, v19, v20, v21, v22;
    v8[13], v23, v24, v25, v26, v27, v28, v29;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF098E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6098();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF098EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E6098();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF09903C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF099074()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 104) & ~*(*v1 + 80);

  *(v0 + 80), v3, v4, v5, v6, v7, v8, v9;

  v10 = v0 + v2;
  v11 = sub_1CF9E6068();
  (*(*(v11 - 8) + 8))(v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1CF09919C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x74616761706F7270;
  }

  return 0xD000000000000010;
}

uint64_t sub_1CF09937C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF540FDC(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF099460()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(sub_1CF9E75D8() - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v0 + v7, 1, v5))
  {
    (*(v8 + 8))(v0 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF099638()
{

  sub_1CF540FDC(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF099690()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0996D8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF0997B4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099890()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v1;
  v2 = (_s20ParentIDLookupResultVMa(0, &v9) - 8);
  v3 = (*(*v2 + 80) + 97) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);

  sub_1CF540FDC(*(v0 + 80));

  v5 = v2[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v0 + v3 + v5, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF099A24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  v4 = sub_1CF540FDC(*(v0 + 72));
  (*(v2 + 8))(v0 + v3, v1, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF099B04()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF099B3C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099C20()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1CF9E6448();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + v5 + 8) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF540FDC(*(v0 + v4));

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1CF099DCC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF099EBC()
{

  sub_1CF540FDC(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF099F14()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF540FDC(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF099FF4()
{

  sub_1CF540FDC(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF09A034()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (((((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_1CF540FDC(*(v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_1CF09A0F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_1CF540FDC(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF09A1DC()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1CF518C00(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09A224()
{

  sub_1CF540FDC(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF09A274()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CF540FDC(*(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF09A364()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09A3B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CF540FDC(*(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF09A494()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09A4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09A5A0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09A5DC()
{

  sub_1CF540FDC(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF09A62C()
{

  sub_1CF540FDC(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF09A684()
{

  sub_1CF540FDC(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF09A6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_1CF540FDC(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF09A7D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_1CF540FDC(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF09A8C0()
{

  sub_1CF540FDC(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF09A908()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v5 = sub_1CF9E6098();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09AA68()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_1CF540FDC(*(v0 + 48));
  v4 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v6 = sub_1CF9E6098();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09AC1C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_1CF540FDC(*(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09AD0C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_1CF540FDC(*(v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_1CF09ADFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);

  sub_1CF540FDC(*(v0 + 96));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09AEE0()
{
  sub_1CF540FDC(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF09AF18()
{
  v1 = type metadata accessor for VFSItem(0);
  v133 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);

  v132 = (v133 + 24) & ~v133;
  v2 = v0 + v132;
  *(v0 + v132 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v132 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  sub_1CF540FDC(*(v0 + ((v132 + v131 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09B2A8()
{
  v1 = type metadata accessor for VFSItem(0);
  v261 = *(*(v1 - 8) + 80);
  v2 = (v261 + 24) & ~v261;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v4 = *(*(v260 - 8) + 80);

  v262 = v0;
  v5 = v0 + v2;
  *(v5 + 40), v6, v7, v8, v9, v10, v11, v12;
  v259 = v1;
  v13 = v5 + *(v1 + 28);
  v14 = type metadata accessor for ItemMetadata(0);
  v15 = v14[7];
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v18(v13 + v15, v16);
  v18(v13 + v14[8], v16);
  *(v13 + v14[14] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = v14[30];
  v258 = *(v17 + 48);
  if (!v258(v13 + v26, 1, v16))
  {
    v18(v13 + v26, v16);
  }

  *(v13 + v14[31]), v27, v28, v29, v30, v31, v32, v33;
  *(v13 + v14[33]), v34, v35, v36, v37, v38, v39, v40;
  v47 = (v13 + v14[34]);
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    sub_1CEFE4714(*v47, v48);
  }

  *(v13 + v14[38] + 8), v48, v41, v42, v43, v44, v45, v46;
  v49 = v5 + v259[8];
  v50 = *(v49 + 16);
  if (v50 != 1)
  {

    *(v49 + 48), v51, v52, v53, v54, v55, v56, v57;
    *(v49 + 64), v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 88), v65, v66, v67, v68, v69, v70, v71;

    *(v49 + 120), v72, v73, v74, v75, v76, v77, v78;
    *(v49 + 136), v79, v80, v81, v82, v83, v84, v85;
    *(v49 + 152), v86, v87, v88, v89, v90, v91, v92;
    *(v49 + 168), v93, v94, v95, v96, v97, v98, v99;
    *(v49 + 184), v100, v101, v102, v103, v104, v105, v106;
    v114 = *(v49 + 192);
    if (v114)
    {
      v114, v107, v108, v109, v110, v111, v112, v113;
      *(v49 + 200), v115, v116, v117, v118, v119, v120, v121;
    }

    *(v49 + 224), v107, v108, v109, v110, v111, v112, v113;
    *(v49 + 240), v122, v123, v124, v125, v126, v127, v128;
  }

  v263 = (v3 + v4 + 16) & ~v4;
  v129 = v259[12];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v256 = *(*(v130 - 8) + 48);
  v257 = v130;
  if (!v256(v5 + v129, 1))
  {
    v131 = sub_1CF9E5A58();
    v132 = *(v131 - 8);
    if (!(*(v132 + 48))(v5 + v129, 1, v131))
    {
      (*(v132 + 8))(v5 + v129, v131);
    }
  }

  v133 = v262 + v263;
  *(v262 + v263 + 40), v134, v135, v136, v137, v138, v139, v140;
  v141 = v262 + v263 + v259[7];
  v18(v141 + v14[7], v16);
  v18(v141 + v14[8], v16);
  *(v141 + v14[14] + 8), v142, v143, v144, v145, v146, v147, v148;
  v149 = v14[30];
  if (!v258(v141 + v149, 1, v16))
  {
    v18(v141 + v149, v16);
  }

  *(v141 + v14[31]), v150, v151, v152, v153, v154, v155, v156;
  *(v141 + v14[33]), v157, v158, v159, v160, v161, v162, v163;
  v170 = (v141 + v14[34]);
  v171 = v170[1];
  if (v171 >> 60 != 15)
  {
    sub_1CEFE4714(*v170, v171);
  }

  *(v141 + v14[38] + 8), v171, v164, v165, v166, v167, v168, v169;
  v172 = v133 + v259[8];
  v173 = *(v172 + 16);
  if (v173 != 1)
  {

    *(v172 + 48), v174, v175, v176, v177, v178, v179, v180;
    *(v172 + 64), v181, v182, v183, v184, v185, v186, v187;
    *(v172 + 88), v188, v189, v190, v191, v192, v193, v194;

    *(v172 + 120), v195, v196, v197, v198, v199, v200, v201;
    *(v172 + 136), v202, v203, v204, v205, v206, v207, v208;
    *(v172 + 152), v209, v210, v211, v212, v213, v214, v215;
    *(v172 + 168), v216, v217, v218, v219, v220, v221, v222;
    *(v172 + 184), v223, v224, v225, v226, v227, v228, v229;
    v237 = *(v172 + 192);
    if (v237)
    {
      v237, v230, v231, v232, v233, v234, v235, v236;
      *(v172 + 200), v238, v239, v240, v241, v242, v243, v244;
    }

    *(v172 + 224), v230, v231, v232, v233, v234, v235, v236;
    *(v172 + 240), v245, v246, v247, v248, v249, v250, v251;
  }

  v252 = v259[12];
  if (!(v256)(v133 + v252, 1, v257))
  {
    v253 = sub_1CF9E5A58();
    v254 = *(v253 - 8);
    if (!(*(v254 + 48))(v133 + v252, 1, v253))
    {
      (*(v254 + 8))(v133 + v252, v253);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09B8E0()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v131 + 16) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09BC80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09BCD0()
{
  v1 = type metadata accessor for VFSItem(0);
  v261 = *(*(v1 - 8) + 80);
  v2 = (v261 + 16) & ~v261;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v4 = *(*(v260 - 8) + 80);
  v5 = v0 + v2;
  *(v5 + 40), v6, v7, v8, v9, v10, v11, v12;
  v259 = v1;
  v258 = v5;
  v13 = v5 + *(v1 + 28);
  v14 = type metadata accessor for ItemMetadata(0);
  v15 = v14[7];
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v18(v13 + v15, v16);
  v263 = v18;
  v18(v13 + v14[8], v16);
  *(v13 + v14[14] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = v14[30];
  v257 = *(v17 + 48);
  if (!v257(v13 + v26, 1, v16))
  {
    v18(v13 + v26, v16);
  }

  v262 = v0;
  *(v13 + v14[31]), v27, v28, v29, v30, v31, v32, v33;
  *(v13 + v14[33]), v34, v35, v36, v37, v38, v39, v40;
  v47 = (v13 + v14[34]);
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    sub_1CEFE4714(*v47, v48);
  }

  *(v13 + v14[38] + 8), v48, v41, v42, v43, v44, v45, v46;
  v49 = v258 + v259[8];
  v50 = *(v49 + 16);
  if (v50 != 1)
  {

    *(v49 + 48), v51, v52, v53, v54, v55, v56, v57;
    *(v49 + 64), v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 88), v65, v66, v67, v68, v69, v70, v71;

    *(v49 + 120), v72, v73, v74, v75, v76, v77, v78;
    *(v49 + 136), v79, v80, v81, v82, v83, v84, v85;
    *(v49 + 152), v86, v87, v88, v89, v90, v91, v92;
    *(v49 + 168), v93, v94, v95, v96, v97, v98, v99;
    *(v49 + 184), v100, v101, v102, v103, v104, v105, v106;
    v114 = *(v49 + 192);
    if (v114)
    {
      v114, v107, v108, v109, v110, v111, v112, v113;
      *(v49 + 200), v115, v116, v117, v118, v119, v120, v121;
    }

    *(v49 + 224), v107, v108, v109, v110, v111, v112, v113;
    *(v49 + 240), v122, v123, v124, v125, v126, v127, v128;
  }

  v264 = (v3 + v4 + 8) & ~v4;
  v129 = v259[12];
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v256 = *(*(v255 - 8) + 48);
  if (!v256(v258 + v129, 1))
  {
    v130 = sub_1CF9E5A58();
    v131 = *(v130 - 8);
    if (!(*(v131 + 48))(v258 + v129, 1, v130))
    {
      (*(v131 + 8))(v258 + v129, v130);
    }
  }

  v132 = v262 + v264;
  *(v262 + v264 + 40), v133, v134, v135, v136, v137, v138, v139;
  v140 = v262 + v264 + v259[7];
  v263(v140 + v14[7], v16);
  v263(v140 + v14[8], v16);
  *(v140 + v14[14] + 8), v141, v142, v143, v144, v145, v146, v147;
  v148 = v14[30];
  if (!v257(v140 + v148, 1, v16))
  {
    v263(v140 + v148, v16);
  }

  *(v140 + v14[31]), v149, v150, v151, v152, v153, v154, v155;
  *(v140 + v14[33]), v156, v157, v158, v159, v160, v161, v162;
  v169 = (v140 + v14[34]);
  v170 = v169[1];
  if (v170 >> 60 != 15)
  {
    sub_1CEFE4714(*v169, v170);
  }

  *(v140 + v14[38] + 8), v170, v163, v164, v165, v166, v167, v168;
  v171 = v132 + v259[8];
  v172 = *(v171 + 16);
  if (v172 != 1)
  {

    *(v171 + 48), v173, v174, v175, v176, v177, v178, v179;
    *(v171 + 64), v180, v181, v182, v183, v184, v185, v186;
    *(v171 + 88), v187, v188, v189, v190, v191, v192, v193;

    *(v171 + 120), v194, v195, v196, v197, v198, v199, v200;
    *(v171 + 136), v201, v202, v203, v204, v205, v206, v207;
    *(v171 + 152), v208, v209, v210, v211, v212, v213, v214;
    *(v171 + 168), v215, v216, v217, v218, v219, v220, v221;
    *(v171 + 184), v222, v223, v224, v225, v226, v227, v228;
    v236 = *(v171 + 192);
    if (v236)
    {
      v236, v229, v230, v231, v232, v233, v234, v235;
      *(v171 + 200), v237, v238, v239, v240, v241, v242, v243;
    }

    *(v171 + 224), v229, v230, v231, v232, v233, v234, v235;
    *(v171 + 240), v244, v245, v246, v247, v248, v249, v250;
  }

  v251 = v259[12];
  if (!(v256)(v132 + v251, 1, v255))
  {
    v252 = sub_1CF9E5A58();
    v253 = *(v252 - 8);
    if (!(*(v253 + 48))(v132 + v251, 1, v252))
    {
      (*(v253 + 8))(v132 + v251, v252);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09C34C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C38C()
{
  sub_1CF540FDC(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF09C4FC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C554()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C598(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalDomain(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CF09C644(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalDomain(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CF09C6E8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09C7C0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF09C7F8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C838()
{
  v1 = (type metadata accessor for FSDirectoryEnumerator(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  *(v0 + v2), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2 + v1[7];
  *(v10 + 24), v11, v12, v13, v14, v15, v16, v17;
  *(v10 + 40), v18, v19, v20, v21, v22, v23, v24;
  v25 = *(type metadata accessor for LocalDomain(0) + 32);
  v26 = sub_1CF9E5A58();
  (*(*(v26 - 8) + 8))(v10 + v25, v26);
  if (*(v0 + v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09C978()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09C9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09CA00()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09CA38()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for VFSItem(0);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
    {
      *(v3 + 40), v5, v6, v7, v8, v9, v10, v11;
      v133 = v4;
      v12 = v3 + *(v4 + 28);
      v13 = type metadata accessor for ItemMetadata(0);
      v14 = v13[7];
      v15 = sub_1CF9E5CF8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v12 + v14, v15);
      v17(v12 + v13[8], v15);
      *(v12 + v13[14] + 8), v18, v19, v20, v21, v22, v23, v24;
      v25 = v13[30];
      if (!(*(v16 + 48))(v12 + v25, 1, v15))
      {
        v17(v12 + v25, v15);
      }

      *(v12 + v13[31]), v26, v27, v28, v29, v30, v31, v32;
      *(v12 + v13[33]), v33, v34, v35, v36, v37, v38, v39;
      v46 = (v12 + v13[34]);
      v47 = v46[1];
      if (v47 >> 60 != 15)
      {
        sub_1CEFE4714(*v46, v47);
      }

      *(v12 + v13[38] + 8), v47, v40, v41, v42, v43, v44, v45;
      v48 = v3 + *(v133 + 32);
      v49 = *(v48 + 16);
      if (v49 != 1)
      {

        *(v48 + 48), v50, v51, v52, v53, v54, v55, v56;
        *(v48 + 64), v57, v58, v59, v60, v61, v62, v63;
        *(v48 + 88), v64, v65, v66, v67, v68, v69, v70;

        *(v48 + 120), v71, v72, v73, v74, v75, v76, v77;
        *(v48 + 136), v78, v79, v80, v81, v82, v83, v84;
        *(v48 + 152), v85, v86, v87, v88, v89, v90, v91;
        *(v48 + 168), v92, v93, v94, v95, v96, v97, v98;
        *(v48 + 184), v99, v100, v101, v102, v103, v104, v105;
        v113 = *(v48 + 192);
        if (v113)
        {
          v113, v106, v107, v108, v109, v110, v111, v112;
          *(v48 + 200), v114, v115, v116, v117, v118, v119, v120;
        }

        *(v48 + 224), v106, v107, v108, v109, v110, v111, v112;
        *(v48 + 240), v121, v122, v123, v124, v125, v126, v127;
      }

      v128 = *(v133 + 48);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
      if (!(*(*(v129 - 8) + 48))(v3 + v128, 1, v129))
      {
        v130 = sub_1CF9E5A58();
        v131 = *(v130 - 8);
        if (!(*(v131 + 48))(v3 + v128, 1, v130))
        {
          (*(v131 + 8))(v3 + v128, v130);
        }
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF09CE98()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1CF9E75D8() - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(AssociatedTypeWitness - 8);
  if (!(*(v5 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  sub_1CF574B84(*(v0 + ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09D0B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(*(v2 - 8) + 80) + ((((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(*(v2 - 8) + 80);
  v9 = *(*(v2 - 8) + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = *(AssociatedTypeWitness - 8);
    if (!(*(v6 + 48))(v0 + v4, 1, AssociatedTypeWitness))
    {
      (*(v6 + 8))(v0 + v4, AssociatedTypeWitness);
    }
  }

  v7 = *(AssociatedTypeWitness - 8);
  if (!(*(v7 + 48))(v0 + v5, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v0 + v5, AssociatedTypeWitness);
  }

  sub_1CF574B84(*(v0 + ((((v9 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF09D374()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D3C8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D408()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D440()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D478(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF09D4B0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D4E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D540()
{
  sub_1CF518C00(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF09D65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CF09D71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E6448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 52);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}